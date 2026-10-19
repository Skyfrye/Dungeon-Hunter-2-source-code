// ===== 475ce4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,AnimationSet>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>>,std::pair<int const,AnimationSet> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 476058 std::map<int,AnimationSet,std::less<int>,std::allocator<std::pair<int const,AnimationSet>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,AnimationSet>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r7
  int v4; // r3
  int v5; // r1
  bool v6; // cc
  _DWORD *v7; // r1
  _DWORD *v8; // r0
  _DWORD *v9; // r4
  int v11; // [sp+4h] [bp-90h] BYREF
  _DWORD v12[2]; // [sp+8h] [bp-8Ch] BYREF
  _DWORD v13[13]; // [sp+10h] [bp-84h] BYREF
  char v14; // [sp+44h] [bp-50h]
  _DWORD v15[2]; // [sp+48h] [bp-4Ch] BYREF
  char v16[4]; // [sp+50h] [bp-44h] BYREF
  int v17; // [sp+54h] [bp-40h]
  char *v18; // [sp+58h] [bp-3Ch]
  char *v19; // [sp+5Ch] [bp-38h]
  int v20; // [sp+60h] [bp-34h]
  int v21; // [sp+68h] [bp-2Ch]
  int v22; // [sp+6Ch] [bp-28h]
  int v23; // [sp+70h] [bp-24h]
  int v24; // [sp+74h] [bp-20h]
  int v25; // [sp+78h] [bp-1Ch]
  int v26; // [sp+7Ch] [bp-18h]
  int v27; // [sp+80h] [bp-14h]
  char v28; // [sp+84h] [bp-10h]
  _DWORD *v29; // [sp+88h] [bp-Ch] BYREF
  _DWORD *v30; // [sp+8Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  v3 = a1;
  if ( v2 )
  {
    v4 = *a2;
    while ( 1 )
    {
      v5 = v2[4];
      v6 = v5 < v4;
      if ( v5 >= v4 )
        v7 = (_DWORD *)v2[2];
      else
        v7 = (_DWORD *)v2[3];
      if ( v6 )
        v2 = a1;
      a1 = v2;
      if ( !v7 )
        break;
      v2 = v7;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( v3 == v2 || (v8 = v2, v4 < v2[4]) )
  {
    v23 = 3;
    v25 = 10;
    v26 = 6;
    v28 = 0;
    v11 = v4;
    v12[0] = off_9623B8;
    v15[0] = off_9623B8;
    v17 = 0;
    v16[0] = 0;
    v18 = v16;
    v19 = v16;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v27 = 60000;
    v12[1] = 1;
    v15[1] = 1;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_Rb_tree(
      (int)v13,
      (int)v16);
    v13[6] = v21;
    v13[7] = v22;
    v14 = v28;
    v13[8] = v23;
    v29 = v2;
    v13[9] = v24;
    v13[10] = v25;
    v13[11] = v26;
    v13[12] = v27;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
      &v30,
      v3,
      &v29,
      &v11);
    v9 = v30;
    AnimationSet::~AnimationSet((AnimationSet *)v12);
    AnimationSet::~AnimationSet((AnimationSet *)v15);
    v8 = v9;
  }
  return v8 + 5;
}


// ===== 4761cc AnimSetManager::GetSynchronizedAnimator(int) =====
int __fastcall AnimSetManager::GetSynchronizedAnimator(AnimSetManager *this, int a2)
{
  int v3; // r4
  _DWORD *v5; // r0
  _BYTE *v6; // r3
  _DWORD *v7; // r5
  int v8; // r7
  int v9; // [sp+4h] [bp-18h] BYREF
  glitch::IReferenceCounted *v10[3]; // [sp+8h] [bp-14h] BYREF
  glitch::IReferenceCounted *v11; // [sp+14h] [bp-8h]

  v9 = a2;
  v3 = AnimSetManager::Exists(this, a2);
  if ( v3 )
  {
    v5 = std::map<int,AnimationSet>::operator[]<int>((_DWORD *)this + 1, &v9);
    v6 = (_BYTE *)v5[8];
    v7 = v5;
    if ( v6[112] )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 56))(v5[8]);
    memset(v10, 0, sizeof(v10));
    v11 = (glitch::IReferenceCounted *)v7[8];
    if ( v11 )
      ++*((_DWORD *)v11 + 1);
    v3 = operator new(0xC8u, 0);
    AnimatorSynchronizedSet::AnimatorSynchronizedSet((_DWORD *)v3);
    if ( v11 )
      glitch::IReferenceCounted::drop(v11);
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 68))(v3);
    AnimationSet::CalculateCacheSize(v7);
    if ( v8 )
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 64))(v8, 0);
    std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v10);
  }
  return v3;
}


// ===== 4762c4 AnimSetManager::GetAnimator(int) =====
int __fastcall AnimSetManager::GetAnimator(AnimSetManager *this, int a2)
{
  int v3; // r4
  glitch::IReferenceCounted *v5; // r0
  _BYTE *v6; // r3
  glitch::IReferenceCounted *v7; // r5
  int v8; // r6
  int v9; // [sp+4h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v10; // [sp+Ch] [bp-4h] BYREF

  v9 = a2;
  v3 = AnimSetManager::Exists(this, a2);
  if ( v3 )
  {
    v5 = (glitch::IReferenceCounted *)std::map<int,AnimationSet>::operator[]<int>((_DWORD *)this + 1, &v9);
    v6 = *((_BYTE **)v5 + 8);
    v7 = v5;
    if ( v6[112] )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 56))(*((_DWORD *)v5 + 8));
    v10 = v7;
    ++*((_DWORD *)v7 + 1);
    v3 = operator new(0xA4u, 0);
    AnimatorSet::AnimatorSet((_DWORD *)v3, (int *)&v10);
    if ( v10 )
      glitch::IReferenceCounted::drop(v10);
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 68))(v3);
    AnimationSet::CalculateCacheSize(v7);
    if ( v8 )
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 64))(v8, 0);
  }
  return v3;
}


// ===== 476398 AnimSetManager::AddTemplateAnim(int,int) =====
void __fastcall AnimSetManager::AddTemplateAnim(AnimSetManager *this, int a2, int a3)
{
  _DWORD *v5; // r5
  AnimationSet *v6; // r8
  AnimationSet *v7; // r5
  const char **Animation; // r0
  glitch::collada::CDynamicAnimationSet *v9; // r5
  int v10; // [sp+4h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+8h] [bp-8h] BYREF

  v10 = a2;
  if ( AnimSetManager::Exists(this, a2) )
  {
    v5 = (_DWORD *)((char *)this + 4);
  }
  else
  {
    if ( v10 < 0 )
      return;
    v5 = (_DWORD *)((char *)this + 4);
    v6 = (AnimationSet *)std::map<int,AnimationSet>::operator[]<int>(v5, &v10);
    AnimationSet::CreateAnimSet(v6);
    if ( LG_DEVICES )
      *((_BYTE *)v6 + 60) = 1;
  }
  v7 = (AnimationSet *)std::map<int,AnimationSet>::operator[]<int>(v5, &v10);
  Animation = (const char **)AnimationSet::LoadAnimation(v7, a3);
  v9 = *((glitch::collada::CDynamicAnimationSet **)v7 + 8);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v11,
    Animation[5],
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(v9, (const glitch::collada::CColladaDatabase *)v11);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v11);
}


// ===== 476464 AnimSetManager::Create(void) =====
int __fastcall AnimSetManager::Create(AnimSetManager *this)
{
  int v2; // r1
  AnimationSet *v3; // r6

  v2 = *((_DWORD *)this + 7) - 1;
  *((_DWORD *)this + 7) = v2;
  if ( AnimSetManager::Exists(this, v2) )
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
        "Exists(m_nextSetId) == false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\AnimSetManager.cpp",
        72);
    }
  }
  v3 = (AnimationSet *)std::map<int,AnimationSet>::operator[]<int>((_DWORD *)this + 1, (int *)this + 7);
  AnimationSet::CreateAnimSet(v3);
  if ( LG_DEVICES )
    *((_BYTE *)v3 + 60) = 1;
  return *((_DWORD *)this + 7);
}


// ===== 47653c AnimSetManager::AddAnim(int,int) =====
void __fastcall AnimSetManager::AddAnim(AnimSetManager *this, int a2, int a3)
{
  char *v5; // r7
  AnimationSet *v6; // r10
  AnimationSet *v7; // r0
  _DWORD v8[2]; // [sp+4h] [bp-28h] BYREF
  std::string v9; // [sp+Ch] [bp-20h] BYREF

  v8[0] = a2;
  if ( AnimSetManager::Exists(this, a2) )
  {
    v5 = (char *)this + 4;
  }
  else
  {
    if ( v8[0] < 0 )
      return;
    v5 = (char *)this + 4;
    v6 = (AnimationSet *)std::map<int,AnimationSet>::operator[]<int>(v5, v8);
    AnimationSet::CreateAnimSet(v6);
    if ( LG_DEVICES )
      *((_BYTE *)v6 + 60) = 1;
  }
  v7 = (AnimationSet *)std::map<int,AnimationSet>::operator[]<int>(v5, v8);
  if ( !*((_BYTE *)v7 + 60) )
  {
    AnimationSet::LoadAnimation(v7, a3);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v9._M_finish = (char *)&v9;
    v9._M_start_of_storage._M_data = (char *)&v9;
    std::string::_M_range_initialize(&v9, "isTracingAnimSetManager", "");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
    if ( (std::string *)v9._M_start_of_storage._M_data != &v9 )
    {
      if ( v9._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v9._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v9._M_start_of_storage._M_data,
            v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
      }
    }
  }
}


// ===== 476680 BlendedAnimSetController::HasClip(char const*,uint) =====
int __fastcall BlendedAnimSetController::HasClip(BlendedAnimSetController *this, const char *a2, unsigned int a3)
{
  return 0;
}


// ===== 476688 BlendedAnimSetController::GetClipDuration(uint) =====
int __fastcall BlendedAnimSetController::GetClipDuration(BlendedAnimSetController *this, unsigned int a2)
{
  return -1;
}


// ===== 476690 BlendedAnimSetController::PlayClip(char const*,bool,int,uint) =====
int __fastcall BlendedAnimSetController::PlayClip(
        BlendedAnimSetController *this,
        const char *a2,
        bool a3,
        int a4,
        unsigned int a5)
{
  return 0;
}


// ===== 476698 BlendedAnimSetController::GetAnimationSet(void) =====
BlendedAnimSetController *__fastcall BlendedAnimSetController::GetAnimationSet(
        BlendedAnimSetController *this,
        glitch::scene::ISceneNode **a2)
{
  int Anim; // r0
  int v4; // r3
  int v5; // r3

  Anim = AnimController::GetAnim(a2, 0);
  if ( Anim && (v4 = *(_DWORD *)(*(_DWORD *)(Anim + 40) + 4 * *(_DWORD *)(Anim + 112))) != 0 )
  {
    v5 = *(_DWORD *)(v4 + 148);
    *(_DWORD *)this = v5;
    if ( v5 )
      ++*(_DWORD *)(v5 + 4);
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 4766fc BlendedAnimSetController::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall BlendedAnimSetController::SetCallbacks(glitch::scene::ISceneNode **a1, int a2, int a3, int a4, int a5)
{
  int result; // r0

  result = AnimController::GetAnim(a1, 0);
  if ( result )
    return AnimatorBlender::SetCallbacks(result, a2, a3, a4, a5);
  return result;
}


// ===== 47673c BlendedAnimSetController::SetScale(float,uint) =====
glitch::scene::ISceneNode **__fastcall BlendedAnimSetController::SetScale(
        glitch::scene::ISceneNode **this,
        float a2,
        unsigned int a3)
{
  _DWORD *Anim; // r0

  if ( AnimController::s_scalingEnabled )
  {
    Anim = (_DWORD *)AnimController::GetAnim(this, a3);
    return (glitch::scene::ISceneNode **)AnimatorBlender::SetScale(Anim, a2);
  }
  return this;
}


// ===== 476780 BlendedAnimSetController::StopClip(bool,uint) =====
_DWORD *__fastcall BlendedAnimSetController::StopClip(glitch::scene::ISceneNode **this, int a2, unsigned int a3)
{
  _DWORD *Anim; // r0
  int v5; // r2
  _DWORD *v6; // r6
  int v7; // r3
  int v8; // r5
  _DWORD *result; // r0
  int (__fastcall *v10)(int, int); // r4
  int v11; // r0

  Anim = (_DWORD *)AnimController::GetAnim(this, a3);
  v5 = Anim[28];
  v6 = Anim;
  v7 = *(_DWORD *)(Anim[10] + 4 * v5);
  if ( !v7 )
    return AnimatorBlender::SetScale(Anim, 0.0);
  v8 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 68))(*(_DWORD *)(Anim[10] + 4 * v5));
  result = AnimatorBlender::SetScale(v6, 0.0);
  if ( v8 )
  {
    if ( a2 )
    {
      v10 = *(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 12);
      v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 48))(v8);
      return (_DWORD *)v10(v8, v11);
    }
  }
  return result;
}


// ===== 47680c BlendedAnimSetController::PlayClip(uint,bool,int,uint) =====
int __fastcall BlendedAnimSetController::PlayClip(
        BlendedAnimSetController *this,
        int a2,
        int a3,
        int a4,
        unsigned int a5)
{
  AnimatorBlender *Anim; // r0
  AnimatorBlender *v9; // r6
  glitch::collada::CSceneNodeAnimatorSet *v10; // r5
  _DWORD *v11; // r8
  int CurrentAnimation; // r9
  int Applicator; // r11
  int v14; // r4

  Anim = (AnimatorBlender *)AnimController::GetAnim((glitch::scene::ISceneNode **)this, a5);
  v9 = Anim;
  if ( !Anim )
    return 0;
  AnimatorBlender::Blend(Anim, *((_DWORD *)this + 5));
  if ( a2 == -1 )
    return 0;
  v10 = *(glitch::collada::CSceneNodeAnimatorSet **)(*((_DWORD *)v9 + 10) + 4 * *((_DWORD *)v9 + 28));
  if ( !v10 )
  {
    glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(nullptr);
    GetApplicator((int)v9);
    return 0;
  }
  v11 = (_DWORD *)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSet *))(*(_DWORD *)v10 + 68))(v10);
  CurrentAnimation = glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(v10);
  Applicator = GetApplicator((int)v9);
  v14 = AnimatorSet::SetCurrentAnimation((AnimationSet **)v10, a2);
  if ( v14 == -1 )
    return 0;
  if ( v11[13] )
    (*(void (__fastcall **)(glitch::collada::CSceneNodeAnimatorSet *, _DWORD))(*(_DWORD *)v10 + 48))(
      v10,
      *((_DWORD *)this + 3));
  if ( CurrentAnimation == v14 && !(*(int (__fastcall **)(_DWORD *))(*v11 + 68))(v11) )
  {
    if ( Applicator )
      Applicator = *(_DWORD *)(Applicator + 16);
    (*(void (__fastcall **)(_DWORD *, int))(*v11 + 12))(v11, Applicator + v11[4]);
  }
  (*(void (__fastcall **)(_DWORD *, int))(*v11 + 64))(v11, a3);
  (*(void (__fastcall **)(_DWORD *, int))(*v11 + 72))(v11, 1065353216);
  RootSceneNode::NewAnim(*((RootSceneNode **)this + 1), *((_BYTE *)this + 16));
  AnimatorBlender::BlendPost(v9);
  return 1;
}


// ===== 47695c BlendedAnimSetController::GetNumClip(uint) =====
int __fastcall BlendedAnimSetController::GetNumClip(glitch::scene::ISceneNode **this, unsigned int a2)
{
  int Anim; // r0
  glitch::collada::CSceneNodeAnimatorSet *v3; // r0

  Anim = AnimController::GetAnim(this, a2);
  if ( Anim
    && (v3 = *(glitch::collada::CSceneNodeAnimatorSet **)(*(_DWORD *)(Anim + 40) + 4 * *(_DWORD *)(Anim + 112))) != nullptr )
  {
    return glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(v3);
  }
  else
  {
    return 0;
  }
}


// ===== 476990 BlendedAnimSetController::~BlendedAnimSetController() =====
void __fastcall BlendedAnimSetController::~BlendedAnimSetController(BlendedAnimSetController *this)
{
  *(_DWORD *)this = off_9690E0;
  AnimController::~AnimController(this);
}


// ===== 4769c4 BlendedAnimSetController::~BlendedAnimSetController() =====
void __fastcall BlendedAnimSetController::~BlendedAnimSetController(BlendedAnimSetController *this)
{
  BlendedAnimSetController::~BlendedAnimSetController(this);
  CustomFree(this);
}


// ===== 4769e0 BlendedAnimSetController::~BlendedAnimSetController() =====
void __fastcall BlendedAnimSetController::~BlendedAnimSetController(BlendedAnimSetController *this)
{
  *(_DWORD *)this = off_9690E0;
  AnimController::~AnimController(this);
}


// ===== 476a14 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_BlendedAnimSetController.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_BlendedAnimSetController.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<AnimSetManager>::s_inst;
  dword_9A614C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6148 = 1056964608;
  if ( (`guard variable for'Singleton<AnimSetManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<AnimSetManager>::s_inst = 1;
    AnimSetManager::AnimSetManager((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<AnimSetManager>::s_inst,
             (int)AnimSetManager::~AnimSetManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 476a9c std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::collada::ISceneNodeAnimator **,glitch::collada::ISceneNodeAnimator * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 476b4c BlendedAnimSetController::BlendedAnimSetController(RootSceneNode *,int) =====
void __fastcall BlendedAnimSetController::BlendedAnimSetController(
        BlendedAnimSetController *this,
        RootSceneNode *a2,
        int a3)
{
  glitch::collada::CSceneNodeAnimatorSet *Animator; // r5
  int v6; // r0
  _BOOL4 v7; // r10
  _DWORD *v8; // r6
  int v9; // r7
  _DWORD *v10; // r1
  _DWORD *v11; // r1
  _DWORD v12[2]; // [sp+Ch] [bp-8h] BYREF

  AnimController::AnimController(this, a2, 1);
  *(_DWORD *)this = off_9690E0;
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  Animator = (glitch::collada::CSceneNodeAnimatorSet *)AnimSetManager::GetAnimator(
                                                         (AnimSetManager *)&Singleton<AnimSetManager>::s_inst,
                                                         a3);
  v6 = AnimSetManager::GetAnimator((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *((_DWORD *)this + 2));
  v7 = v6 != 0;
  v8 = (_DWORD *)v6;
  if ( v7 && Animator != nullptr )
  {
    if ( (int)glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(Animator) <= 0 )
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
          "set1->getAnimationCount() > 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\BlendedAnimSetController.cpp",
          69);
      }
    }
    v9 = operator new(208, 0);
    AnimatorBlender::AnimatorBlender((AnimatorBlender *)v9);
    v12[0] = Animator;
    *(_BYTE *)(v9 + 36) = 1;
    ++*(_DWORD *)(v12[0] + *(_DWORD *)(*(_DWORD *)v12[0] - 12) + 4);
    v10 = *(_DWORD **)(v9 + 44);
    if ( v10 == *(_DWORD **)(v9 + 48) )
    {
      std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        v9 + 40,
        (int)v10,
        v12);
    }
    else
    {
      *v10 = v12[0];
      *(_DWORD *)(v9 + 44) += 4;
    }
    v12[0] = v8;
    *(_BYTE *)(v9 + 36) = 1;
    ++*(_DWORD *)(v12[0] + *(_DWORD *)(*(_DWORD *)v12[0] - 12) + 4);
    v11 = *(_DWORD **)(v9 + 44);
    if ( v11 == *(_DWORD **)(v9 + 48) )
    {
      std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        v9 + 40,
        (int)v11,
        v12);
    }
    else
    {
      *v11 = v12[0];
      *(_DWORD *)(v9 + 44) += 4;
    }
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v9 + 136))(v9, 0);
    **(_DWORD **)(v9 + 52) = 1065353216;
    *(_DWORD *)(*(_DWORD *)(v9 + 52) + 4) = 0;
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 1) + 108))(*((_DWORD *)this + 1), v9);
    glitch::IReferenceCounted::drop((glitch::collada::CSceneNodeAnimatorSet *)((char *)Animator
                                                                             + *(_DWORD *)(*(_DWORD *)Animator - 12)));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(v9 + *(_DWORD *)(*(_DWORD *)v9 - 12)));
  }
  else
  {
    if ( Animator )
      glitch::IReferenceCounted::drop((glitch::collada::CSceneNodeAnimatorSet *)((char *)Animator
                                                                               + *(_DWORD *)(*(_DWORD *)Animator - 12)));
    if ( v7 )
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
  }
}


// ===== 476ddc BlendedAnimSetController::BlendedAnimSetController(RootSceneNode *,int) =====
void __fastcall BlendedAnimSetController::BlendedAnimSetController(
        BlendedAnimSetController *this,
        RootSceneNode *a2,
        int a3)
{
  glitch::collada::CSceneNodeAnimatorSet *Animator; // r5
  int v6; // r0
  _BOOL4 v7; // r10
  _DWORD *v8; // r6
  int v9; // r7
  _DWORD *v10; // r1
  _DWORD *v11; // r1
  _DWORD v12[2]; // [sp+Ch] [bp-8h] BYREF

  AnimController::AnimController(this, a2, 1);
  *(_DWORD *)this = off_9690E0;
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  Animator = (glitch::collada::CSceneNodeAnimatorSet *)AnimSetManager::GetAnimator(
                                                         (AnimSetManager *)&Singleton<AnimSetManager>::s_inst,
                                                         a3);
  v6 = AnimSetManager::GetAnimator((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *((_DWORD *)this + 2));
  v7 = v6 != 0;
  v8 = (_DWORD *)v6;
  if ( v7 && Animator != nullptr )
  {
    if ( (int)glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(Animator) <= 0 )
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
          "set1->getAnimationCount() > 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\BlendedAnimSetController.cpp",
          69);
      }
    }
    v9 = operator new(208, 0);
    AnimatorBlender::AnimatorBlender((AnimatorBlender *)v9);
    v12[0] = Animator;
    *(_BYTE *)(v9 + 36) = 1;
    ++*(_DWORD *)(v12[0] + *(_DWORD *)(*(_DWORD *)v12[0] - 12) + 4);
    v10 = *(_DWORD **)(v9 + 44);
    if ( v10 == *(_DWORD **)(v9 + 48) )
    {
      std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        v9 + 40,
        (int)v10,
        v12);
    }
    else
    {
      *v10 = v12[0];
      *(_DWORD *)(v9 + 44) += 4;
    }
    v12[0] = v8;
    *(_BYTE *)(v9 + 36) = 1;
    ++*(_DWORD *)(v12[0] + *(_DWORD *)(*(_DWORD *)v12[0] - 12) + 4);
    v11 = *(_DWORD **)(v9 + 44);
    if ( v11 == *(_DWORD **)(v9 + 48) )
    {
      std::vector<glitch::collada::ISceneNodeAnimator *,glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        v9 + 40,
        (int)v11,
        v12);
    }
    else
    {
      *v11 = v12[0];
      *(_DWORD *)(v9 + 44) += 4;
    }
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v9 + 136))(v9, 0);
    **(_DWORD **)(v9 + 52) = 1065353216;
    *(_DWORD *)(*(_DWORD *)(v9 + 52) + 4) = 0;
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 1) + 108))(*((_DWORD *)this + 1), v9);
    glitch::IReferenceCounted::drop((glitch::collada::CSceneNodeAnimatorSet *)((char *)Animator
                                                                             + *(_DWORD *)(*(_DWORD *)Animator - 12)));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(v9 + *(_DWORD *)(*(_DWORD *)v9 - 12)));
  }
  else
  {
    if ( Animator )
      glitch::IReferenceCounted::drop((glitch::collada::CSceneNodeAnimatorSet *)((char *)Animator
                                                                               + *(_DWORD *)(*(_DWORD *)Animator - 12)));
    if ( v7 )
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
  }
}


// ===== 47706c AnchorBase::~AnchorBase() =====
void __fastcall AnchorBase::~AnchorBase(AnchorBase *this)
{
  ;
}


// ===== 477070 AnchorBase::~AnchorBase() =====
void __fastcall AnchorBase::~AnchorBase(AnchorBase *this)
{
  ;
}


// ===== 477074 AnchorBase::Reset(void) =====
_DWORD *__fastcall AnchorBase::Reset(_DWORD *this)
{
  _DWORD *v1; // r3

  v1 = (_DWORD *)*(this + 2);
  *(this + 3) = v1[88];
  *(this + 4) = v1[89];
  *(this + 5) = v1[90];
  return this;
}


// ===== 477094 AnchorBase::Update(void) =====
_DWORD *__fastcall AnchorBase::Update(_DWORD *this)
{
  _DWORD *v1; // r3

  v1 = (_DWORD *)*(this + 2);
  *(this + 3) = v1[88];
  *(this + 4) = v1[89];
  *(this + 5) = v1[90];
  return this;
}


// ===== 4770b4 AnchorBase::~AnchorBase() =====
void __fastcall AnchorBase::~AnchorBase(AnchorBase *this)
{
  AnchorBase::~AnchorBase(this);
  CustomFree(this);
}


// ===== 4770d0 AnchorBase::AnchorBase(GameObject *,AnchorBase::AnchorType) =====
void __fastcall AnchorBase::AnchorBase(AnchorBase *this, int a2, int a3)
{
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = off_969118;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
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
        "go",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorBase.cpp",
        24);
    }
  }
  AnchorBase::Reset(this);
}


// ===== 4771a0 AnchorBase::AnchorBase(GameObject *,AnchorBase::AnchorType) =====
void __fastcall AnchorBase::AnchorBase(AnchorBase *this, int a2, int a3)
{
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = off_969118;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
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
        "go",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorBase.cpp",
        24);
    }
  }
  AnchorBase::Reset(this);
}


// ===== 477270 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorBase.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6158 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6154 = 1056964608;
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


// ===== 47734c AnchorForward::Update(void) =====
float __fastcall AnchorForward::Update(float this)
{
  float v1; // r4
  int v2; // r5
  int v3; // r0
  float *v4; // r3
  float *v5; // r7
  float v6; // r12
  float v7; // r0
  float *v8; // r3
  float v9; // r11
  float v10; // r10
  float v11; // r8
  float v12; // r6
  float v13; // r9
  float v14; // r6
  float *v15; // r0
  float v16; // r9
  float v17; // r10
  float v18; // r8
  _BOOL4 v19; // r0
  float v20; // r11
  float v21; // r11
  float v22; // r11
  float v23; // r6
  float v24; // r0
  int v25; // r5
  float v26; // r6
  float v27; // r7
  float v28; // r10
  float v29; // r8
  float v30; // r6
  float v31; // r8
  float v32; // r0
  float v33; // r0
  float v34; // r0
  float v35; // r9
  float v36; // r11
  float v37; // r3
  float v38; // r10
  float v39; // r8
  int v40; // r6
  int Dt; // r0
  int v42; // r3
  float v43; // [sp+4h] [bp-28h]
  float v44; // [sp+Ch] [bp-20h]
  float v45; // [sp+Ch] [bp-20h]
  float v46; // [sp+10h] [bp-1Ch]
  float v47; // [sp+14h] [bp-18h]
  float v48; // [sp+1Ch] [bp-10h] BYREF
  float v49; // [sp+20h] [bp-Ch]
  float v50; // [sp+24h] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(LODWORD(this) + 24) )
  {
    if ( !*(_BYTE *)(LODWORD(this) + 56) )
    {
      v2 = *(_DWORD *)(LODWORD(this) + 8);
      *(_DWORD *)(LODWORD(this) + 60) = 5;
      if ( !*(_BYTE *)(v2 + 437) || (v3 = *(_DWORD *)(LODWORD(this) + 40)) == 0 )
      {
LABEL_31:
        v30 = *(float *)(LODWORD(v1) + 28) * 0.4;
        if ( *(float *)(LODWORD(v1) + 84) > v30 )
          *(float *)(LODWORD(v1) + 84) = v30;
        else
          v30 = *(float *)(LODWORD(v1) + 84);
        v31 = (float)(v30 * *(float *)(LODWORD(v1) + 92)) + *(float *)(v2 + 356);
        v32 = (float)(v30 * *(float *)(LODWORD(v1) + 88)) + *(float *)(v2 + 352);
        *(float *)(LODWORD(v1) + 20) = (float)(v30 * *(float *)(LODWORD(v1) + 96)) + *(float *)(v2 + 360);
        *(float *)(LODWORD(v1) + 16) = v31;
        *(float *)(LODWORD(v1) + 12) = v32;
        v5 = (float *)(LODWORD(v1) + 88);
LABEL_35:
        *(_DWORD *)(LODWORD(v1) + 44) = *(_DWORD *)(v2 + 352);
        *(_DWORD *)(LODWORD(v1) + 48) = *(_DWORD *)(v2 + 356);
        *(_DWORD *)(LODWORD(v1) + 52) = *(_DWORD *)(v2 + 360);
        return COERCE_FLOAT(GameObject::GetLookAtVec(v2, v5));
      }
      if ( !CharStateMachine::SM_IsMoving((CharStateMachine *)(v3 + 1276), 0)
        && !CharStateMachine::SM_IsAttacking((CharStateMachine *)(*(_DWORD *)(LODWORD(v1) + 40) + 1276)) )
      {
        v2 = *(_DWORD *)(LODWORD(v1) + 8);
        goto LABEL_31;
      }
      v4 = *(float **)(LODWORD(v1) + 8);
      v5 = (float *)(LODWORD(v1) + 88);
      v48 = v4[110];
      v6 = *(float *)(LODWORD(v1) + 28);
      v49 = v4[111];
      v44 = v6;
      v50 = v4[112];
      v7 = Point3D<float>::angle(LODWORD(v1) + 88, &v48);
      v8 = *(float **)(LODWORD(v1) + 8);
      v9 = v7;
      v10 = v8[90];
      v46 = *(float *)(LODWORD(v1) + 44);
      v47 = v8[88];
      v11 = *(float *)(LODWORD(v1) + 48);
      v12 = v8[89];
      v13 = *(float *)(LODWORD(v1) + 52);
      if ( CharStateMachine::SM_IsMoving((CharStateMachine *)(*(_DWORD *)(LODWORD(v1) + 40) + 1276), 0)
        && (float)((float)((float)((float)(v46 - v47) * (float)(v46 - v47))
                         + (float)((float)(v11 - v12) * (float)(v11 - v12)))
                 + (float)((float)(v13 - v10) * (float)(v13 - v10))) > 0.05 )
      {
        v14 = *(float *)(LODWORD(v1) + 28);
      }
      else
      {
        v14 = *(float *)(LODWORD(v1) + 28) * 0.5;
      }
      v15 = (float *)Point3D<float>::normalize(&v48);
      v2 = *(_DWORD *)(LODWORD(v1) + 8);
      v16 = (float)(v14 * *v15) + *(float *)(v2 + 352);
      v17 = (float)(v14 * v15[1]) + *(float *)(v2 + 356);
      v18 = (float)(v14 * v15[2]) + *(float *)(v2 + 360);
      v19 = v9 > 1.0;
      v20 = *(float *)(LODWORD(v1) + 32);
      if ( v19 )
      {
        v21 = *(float *)(LODWORD(v1) + 84) - (float)(v20 * 0.25);
        if ( v21 <= 0.0 )
          v21 = 0.0;
      }
      else
      {
        v33 = v44 * 0.5;
        v45 = *(float *)(LODWORD(v1) + 84);
        v43 = (float)(int)v33;
        if ( v45 < v43 )
        {
          *(float *)(LODWORD(v1) + 84) = v43;
          goto LABEL_12;
        }
        v21 = v20 + v45;
        if ( v14 < v21 )
          v21 = v14;
      }
      *(float *)(LODWORD(v1) + 84) = v21;
LABEL_12:
      if ( (float)((float)((float)((float)(v16 - *(float *)(LODWORD(v1) + 12))
                                 * (float)(v16 - *(float *)(LODWORD(v1) + 12)))
                         + (float)((float)(v17 - *(float *)(LODWORD(v1) + 16))
                                 * (float)(v17 - *(float *)(LODWORD(v1) + 16))))
                 + (float)((float)(v18 - *(float *)(LODWORD(v1) + 20)) * (float)(v18 - *(float *)(LODWORD(v1) + 20)))) <= 0.0
        || (v22 = *(float *)(LODWORD(v1) + 84), (float)(v14 - v22) <= 0.05) )
      {
        *(float *)(LODWORD(v1) + 12) = v16;
        *(float *)(LODWORD(v1) + 16) = v17;
        *(float *)(LODWORD(v1) + 20) = v18;
      }
      else
      {
        v23 = (float)(v22 * v50) + *(float *)(v2 + 360);
        v24 = (float)(v22 * v48) + *(float *)(v2 + 352);
        *(float *)(LODWORD(v1) + 16) = (float)(v22 * v49) + *(float *)(v2 + 356);
        *(float *)(LODWORD(v1) + 12) = v24;
        *(float *)(LODWORD(v1) + 20) = v23;
      }
      goto LABEL_35;
    }
    v25 = *(_DWORD *)(LODWORD(this) + 8);
    this = COERCE_FLOAT(CharStateMachine::SM_IsMoving((CharStateMachine *)(*(_DWORD *)(LODWORD(this) + 40) + 1276), 0));
    if ( this == 0.0 )
    {
      this = *(float *)(LODWORD(v1) + 28) * 0.5;
      v26 = this;
    }
    else
    {
      v26 = *(float *)(LODWORD(v1) + 28);
    }
    v27 = *(float *)(v25 + 440);
    v28 = *(float *)(v25 + 444);
    v29 = *(float *)(v25 + 448);
    if ( !*(_BYTE *)(*(_DWORD *)(LODWORD(v1) + 8) + 437)
      || (this = *(float *)(LODWORD(v1) + 40), this == 0.0)
      || !CharStateMachine::SM_IsMoving((CharStateMachine *)(LODWORD(this) + 1276), 0)
      && (LODWORD(this) = CharStateMachine::SM_IsAttacking((CharStateMachine *)(*(_DWORD *)(LODWORD(v1) + 40) + 1276)),
          this == 0.0) )
    {
      if ( *(_BYTE *)(LODWORD(v1) + 76) )
      {
        v40 = *(_DWORD *)(LODWORD(v1) + 80);
        Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
        LODWORD(this) = v40 - Dt;
        if ( SLODWORD(this) <= 0 )
        {
          *(_BYTE *)(LODWORD(v1) + 76) = 0;
          v42 = 4;
        }
        *(float *)(LODWORD(v1) + 80) = this;
        if ( SLODWORD(this) <= 0 )
          *(_DWORD *)(LODWORD(v1) + 60) = v42;
      }
      else
      {
        *(_DWORD *)(LODWORD(v1) + 60) = 1;
      }
      *(_DWORD *)(LODWORD(v1) + 64) = *(_DWORD *)(v25 + 352);
      *(_DWORD *)(LODWORD(v1) + 68) = *(_DWORD *)(v25 + 356);
      *(_DWORD *)(LODWORD(v1) + 72) = *(_DWORD *)(v25 + 360);
      goto LABEL_26;
    }
    if ( *(_BYTE *)(LODWORD(v1) + 76) )
    {
      *(_DWORD *)(LODWORD(v1) + 60) = 2;
    }
    else
    {
      v34 = *(float *)(v25 + 352) - *(float *)(LODWORD(v1) + 64);
      v35 = v34;
      v36 = *(float *)(v25 + 356) - *(float *)(LODWORD(v1) + 68);
      v37 = *(float *)(v25 + 360) - *(float *)(LODWORD(v1) + 72);
      LODWORD(this) = (float)((float)((float)(v34 * v34) + (float)(v36 * v36)) + (float)(v37 * v37)) >= 62500.0;
      if ( (float)((float)((float)(v35 * v35) + (float)(v36 * v36)) + (float)(v37 * v37)) < 62500.0 )
      {
        *(_DWORD *)(LODWORD(v1) + 60) = 0;
LABEL_26:
        *(_DWORD *)(LODWORD(v1) + 12) = *(_DWORD *)(v25 + 352);
        *(_DWORD *)(LODWORD(v1) + 16) = *(_DWORD *)(v25 + 356);
        *(_DWORD *)(LODWORD(v1) + 20) = *(_DWORD *)(v25 + 360);
        return this;
      }
      *(_DWORD *)(LODWORD(v1) + 60) = 3;
    }
    v38 = (float)(v26 * v28) + *(float *)(v25 + 356);
    v39 = (float)(v26 * v29) + *(float *)(v25 + 360);
    this = (float)(v26 * v27) + *(float *)(v25 + 352);
    *(_DWORD *)(LODWORD(v1) + 80) = 350;
    *(float *)(LODWORD(v1) + 12) = this;
    *(float *)(LODWORD(v1) + 16) = v38;
    *(float *)(LODWORD(v1) + 20) = v39;
    *(_BYTE *)(LODWORD(v1) + 76) = 1;
  }
  return this;
}


// ===== 4779dc AnchorForward::Reset(void) =====
int __fastcall AnchorForward::Reset(AnchorForward *this)
{
  int result; // r0

  result = AnchorBase::Reset(this);
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  return result;
}


// ===== 4779fc AnchorForward::~AnchorForward() =====
void __fastcall AnchorForward::~AnchorForward(AnchorForward *this)
{
  *(_DWORD *)this = off_969130;
  AnchorBase::~AnchorBase(this);
}


// ===== 477a30 AnchorForward::~AnchorForward() =====
void __fastcall AnchorForward::~AnchorForward(AnchorForward *this)
{
  AnchorForward::~AnchorForward(this);
  CustomFree(this);
}


// ===== 477a4c AnchorForward::~AnchorForward() =====
void __fastcall AnchorForward::~AnchorForward(AnchorForward *this)
{
  *(_DWORD *)this = off_969130;
  AnchorBase::~AnchorBase(this);
}


// ===== 477a80 AnchorForward::AnchorForward(GameObject *,float,float,float,AnchorBase::AnchorType) =====
int __fastcall AnchorForward::AnchorForward(int a1, int a2, float a3, float a4, int a5)
{
  _BYTE v10[16]; // [sp+Ch] [bp-10h] BYREF

  AnchorBase::AnchorBase((AnchorBase *)a1);
  *(_DWORD *)a1 = off_969130;
  *(float *)(a1 + 28) = a3;
  *(float *)(a1 + 32) = a4;
  *(_DWORD *)(a1 + 36) = a5;
  *(_DWORD *)(a1 + 60) = 5;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_BYTE *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  if ( a3 < 0.0 )
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
        "m_MAX_DISTANCE >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        48);
      a4 = *(float *)(a1 + 32);
    }
  }
  if ( a4 < 0.0 )
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
        "m_DIST_PERSEC >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        49);
    }
  }
  if ( *(float *)(a1 + 36) < 0.0 || *(float *)(a1 + 36) > 1.0 )
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
        "0.0f <= m_THRESHOLD && m_THRESHOLD <= 1.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        50);
    }
  }
  if ( a2 )
  {
    ObjectBase::GetHandle((ObjectBase *)v10);
    *(_DWORD *)(a1 + 40) = ObjectHandle::operator Character *(v10);
  }
  AnchorForward::Reset((AnchorForward *)a1);
  return a1;
}


// ===== 477cd4 AnchorForward::AnchorForward(GameObject *,float,float,float,AnchorBase::AnchorType) =====
int __fastcall AnchorForward::AnchorForward(int a1, int a2, float a3, float a4, int a5, int a6)
{
  char *v11[4]; // [sp+Ch] [bp-10h] BYREF

  AnchorBase::AnchorBase((AnchorBase *)a1, a2, a6);
  *(_DWORD *)a1 = off_969130;
  *(float *)(a1 + 28) = a3;
  *(float *)(a1 + 32) = a4;
  *(_DWORD *)(a1 + 36) = a5;
  *(_DWORD *)(a1 + 60) = 5;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_BYTE *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  if ( a3 < 0.0 )
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
        "m_MAX_DISTANCE >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        48);
      a4 = *(float *)(a1 + 32);
    }
  }
  if ( a4 < 0.0 )
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
        "m_DIST_PERSEC >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        49);
    }
  }
  if ( *(float *)(a1 + 36) < 0.0 || *(float *)(a1 + 36) > 1.0 )
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
        "0.0f <= m_THRESHOLD && m_THRESHOLD <= 1.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorForward.cpp",
        50);
    }
  }
  if ( a2 )
  {
    ObjectBase::GetHandle((ObjectBase *)v11, a2);
    *(_DWORD *)(a1 + 40) = ObjectHandle::operator Character *(v11);
  }
  AnchorForward::Reset((AnchorForward *)a1);
  return a1;
}


// ===== 477f28 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorForward.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorForward.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6164 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6160 = 1056964608;
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


// ===== 478004 AnchorGroup::_Update(AnchorGroup*) =====
float __fastcall AnchorGroup::_Update(float this, AnchorGroup *a2)
{
  float v2; // r6
  int *v3; // r4
  float v4; // r9
  float v5; // r11
  float v6; // r10
  float v7; // r8
  int v8; // r5
  float *v9; // r5
  float v10; // r6
  float v11; // r11
  float v12; // r8
  float v13; // r5
  float v14; // r6
  float v15; // r1
  float v16; // r5
  float v17; // [sp+0h] [bp-34h]
  float v18; // [sp+0h] [bp-34h]
  float v19; // [sp+8h] [bp-2Ch]
  float v20; // [sp+Ch] [bp-28h]
  int v21; // [sp+10h] [bp-24h]
  float v22; // [sp+14h] [bp-20h]

  v22 = this;
  if ( AnchorGroup::s_lastTick == dword_99F79C )
  {
    v14 = *(float *)&AnchorGroup::s_position;
  }
  else
  {
    AnchorGroup::s_lastTick = dword_99F79C;
    v2 = 0.0;
    v3 = (int *)AnchorGroup::s_anchors;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v17 = 0.0;
    v21 = 0;
    while ( v3 != &AnchorGroup::s_anchors )
    {
      v8 = v3[2];
      if ( !(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v8 + 8) + 52))(*(_DWORD *)(v8 + 8)) )
      {
        v9 = *(float **)(v8 + 8);
        if ( v21 )
        {
          v20 = v9[88];
          v15 = v9[89];
          if ( v20 < v4 )
            v4 = v9[88];
          v19 = v9[89];
          v16 = v9[90];
          if ( v15 < v6 )
            v6 = v19;
          if ( v16 < v7 )
            v7 = v16;
          if ( v20 > v2 )
            v2 = v20;
          if ( v19 > v5 )
            v5 = v19;
          if ( v16 > v17 )
            v17 = v16;
          v3 = (int *)*v3;
          continue;
        }
        v10 = (float)(v2 - v4) * 0.5;
        v11 = (float)(v5 - v6) * 0.5;
        v18 = (float)(v17 - v7) * 0.5;
        v21 = 1;
        v4 = v9[88] - v10;
        v12 = v9[89];
        v2 = v10 + v9[88];
        v6 = v12 - v11;
        v13 = v9[90];
        v5 = v11 + v12;
        v7 = v13 - v18;
        v17 = v18 + v13;
      }
      v3 = (int *)*v3;
    }
    v14 = v4 + (float)((float)(v2 - v4) * 0.5);
    AnchorGroup::s_position = LODWORD(v14);
    *(float *)&dword_9A6180 = v6 + (float)((float)(v5 - v6) * 0.5);
    this = v7 + (float)((float)(v17 - v7) * 0.5);
    *(float *)&dword_9A6184 = this;
  }
  *(float *)(LODWORD(v22) + 12) = v14;
  *(_DWORD *)(LODWORD(v22) + 16) = dword_9A6180;
  *(_DWORD *)(LODWORD(v22) + 20) = dword_9A6184;
  return this;
}


// ===== 4782f4 AnchorGroup::Update(void) =====
// attributes: thunk
float __fastcall AnchorGroup::Update(float this, AnchorGroup *a2)
{
  return AnchorGroup::_Update(this, a2);
}


// ===== 4782f8 AnchorGroup::Reset(void) =====
// attributes: thunk
_DWORD *__fastcall AnchorGroup::Reset(_DWORD *this)
{
  return AnchorBase::Reset(this);
}


// ===== 4782fc `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorGroup.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Anchors_AnchorGroup.cpp()
{
  int result; // r0

  dword_9A6170 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A616C = 1056964608;
  AnchorGroup::s_anchors = (int)&AnchorGroup::s_anchors;
  dword_9A6178 = (int)&AnchorGroup::s_anchors;
  _aeabi_atexit((int)&AnchorGroup::s_anchors, (int)std::list<AnchorGroup *>::~list, (int)&_dso_handle);
  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6184 = 0;
  AnchorGroup::s_position = 0;
  dword_9A6180 = 0;
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


// ===== 478420 AnchorGroup::_RemoveAnchor(AnchorGroup*) =====
AnchorGroup **__fastcall AnchorGroup::_RemoveAnchor(AnchorGroup *this, AnchorGroup *a2)
{
  AnchorGroup **result; // r0
  AnchorGroup *v4; // r4
  AnchorGroup *v5; // r3

  result = (AnchorGroup **)AnchorGroup::s_anchors;
  while ( result != (AnchorGroup **)&AnchorGroup::s_anchors )
  {
    v4 = *result;
    if ( this == result[2] )
    {
      v5 = result[1];
      *(_DWORD *)v5 = v4;
      *((_DWORD *)v4 + 1) = v5;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      result = (AnchorGroup **)v4;
    }
    else
    {
      result = (AnchorGroup **)*result;
    }
  }
  return result;
}


// ===== 47848c AnchorGroup::~AnchorGroup() =====
void __fastcall AnchorGroup::~AnchorGroup(AnchorGroup *this, AnchorGroup *a2)
{
  *(_DWORD *)this = off_969148;
  AnchorGroup::_RemoveAnchor(this, a2);
  AnchorBase::~AnchorBase(this);
}


// ===== 4784c8 AnchorGroup::~AnchorGroup() =====
void __fastcall AnchorGroup::~AnchorGroup(AnchorGroup *this, AnchorGroup *a2)
{
  AnchorGroup::~AnchorGroup(this, a2);
  CustomFree(this);
}


// ===== 4784e4 AnchorGroup::~AnchorGroup() =====
void __fastcall AnchorGroup::~AnchorGroup(AnchorGroup *this, AnchorGroup *a2)
{
  *(_DWORD *)this = off_969148;
  AnchorGroup::_RemoveAnchor(this, a2);
  AnchorBase::~AnchorBase(this);
}


// ===== 478520 AnchorGroup::_AddAnchor(AnchorGroup*) =====
_DWORD *__fastcall AnchorGroup::_AddAnchor(AnchorGroup *this, AnchorGroup *a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r2
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 12;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  result[2] = this;
  v4 = (_DWORD *)dword_9A6178;
  *result = &AnchorGroup::s_anchors;
  result[1] = v4;
  *v4 = result;
  dword_9A6178 = (int)result;
  return result;
}


// ===== 478578 AnchorGroup::AnchorGroup(GameObject *,AnchorBase::AnchorType) =====
AnchorBase *__fastcall AnchorGroup::AnchorGroup(AnchorBase *a1, int a2, int a3)
{
  AnchorGroup *v4; // r1

  AnchorBase::AnchorBase(a1, a2, a3);
  *(_DWORD *)a1 = off_969148;
  AnchorGroup::_AddAnchor(a1, v4);
  return a1;
}


// ===== 4785b4 AnchorGroup::AnchorGroup(GameObject *,AnchorBase::AnchorType) =====
AnchorBase *__fastcall AnchorGroup::AnchorGroup(AnchorBase *a1, int a2, int a3)
{
  AnchorGroup *v4; // r1

  AnchorBase::AnchorBase(a1, a2, a3);
  *(_DWORD *)a1 = off_969148;
  AnchorGroup::_AddAnchor(a1, v4);
  return a1;
}


// ===== 4785f0 std::list<AnchorGroup *,std::allocator<AnchorGroup *>>::~list() =====
_DWORD *__fastcall std::list<AnchorGroup *>::~list(_DWORD *a1)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r4

  v2 = (_DWORD *)*a1;
  if ( v2 != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == a1 )
        break;
      v2 = v3;
    }
    v2 = a1;
  }
  a1[1] = v2;
  *a1 = v2;
  return a1;
}


// ===== 478634 Condition::Compile(void) =====
void __fastcall Condition::Compile(Condition *this)
{
  ;
}


// ===== 478638 Condition_IsLevelInState::Eval(void) =====
int __fastcall Condition_IsLevelInState::Eval(Condition_IsLevelInState *this)
{
  return 1;
}


// ===== 478640 Condition_IsPlayerAtLevel::Eval(void) =====
int __fastcall Condition_IsPlayerAtLevel::Eval(Condition_IsPlayerAtLevel *this)
{
  return 1;
}


// ===== 478648 Condition::Condition(void) =====
void __fastcall Condition::Condition(Condition *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_969280;
}


// ===== 478674 Condition::Condition(void) =====
void __fastcall Condition::Condition(Condition *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_969280;
}


// ===== 4786a0 Condition::~Condition() =====
void __fastcall Condition::~Condition(Condition *this)
{
  ;
}


// ===== 4786a4 Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric() =====
void __fastcall Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric(
        Condition_IsQuestInStateGeneric *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
}


// ===== 4786d8 Condition::~Condition() =====
void __fastcall Condition::~Condition(Condition *this)
{
  ;
}


// ===== 4786dc ConditionList::ConditionList(void) =====
void __fastcall ConditionList::ConditionList(ConditionList *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 4786f0 ConditionList::ConditionList(void) =====
void __fastcall ConditionList::ConditionList(ConditionList *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 478704 ConditionList::Eval(void) =====
int __fastcall ConditionList::Eval(ConditionList *this)
{
  int v2; // r4
  int v3; // r3
  int result; // r0

  if ( *(int *)this <= 0 )
    return 1;
  v2 = 0;
  while ( 1 )
  {
    v3 = *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v2++);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 8))(v3);
    if ( !result )
      break;
    if ( *(_DWORD *)this <= v2 )
      return 1;
  }
  return result;
}


// ===== 47875c ConditionList::DBG_TraceDetailedConditionListInformation(__sFILE *) =====
int *__fastcall ConditionList::DBG_TraceDetailedConditionListInformation(int *this, __sFILE *a2)
{
  int *v2; // r5
  int v4; // r4
  int v5; // r3

  v2 = this;
  if ( *this > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v2[1] + 4 * v4++);
      this = (int *)(*(int (__fastcall **)(int, __sFILE *))(*(_DWORD *)v5 + 16))(v5, a2);
    }
    while ( *v2 > v4 );
  }
  return this;
}


// ===== 4787a8 Condition_IsEventInState::~Condition_IsEventInState() =====
void __fastcall Condition_IsEventInState::~Condition_IsEventInState(Condition_IsEventInState *this)
{
  *(_DWORD *)this = off_969160;
  Condition::~Condition(this);
}


// ===== 4787dc Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel() =====
void __fastcall Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel(Condition_IsPlayerInLevel *this)
{
  *(_DWORD *)this = off_9691C0;
  Condition::~Condition(this);
}


// ===== 478810 Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel() =====
void __fastcall Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel(Condition_IsPlayerAtLevel *this)
{
  *(_DWORD *)this = off_969180;
  Condition::~Condition(this);
}


// ===== 478844 Condition_IsLevelInState::~Condition_IsLevelInState() =====
void __fastcall Condition_IsLevelInState::~Condition_IsLevelInState(Condition_IsLevelInState *this)
{
  *(_DWORD *)this = off_9691A0;
  Condition::~Condition(this);
}


// ===== 478878 Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher() =====
void __fastcall Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher(Condition_IsQuestStateHigher *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
}


// ===== 4788ac Condition_IsQuestStateLower::~Condition_IsQuestStateLower() =====
void __fastcall Condition_IsQuestStateLower::~Condition_IsQuestStateLower(Condition_IsQuestStateLower *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
}


// ===== 4788e0 Condition_IsQuestInState::~Condition_IsQuestInState() =====
void __fastcall Condition_IsQuestInState::~Condition_IsQuestInState(Condition_IsQuestInState *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
}


// ===== 478914 ConditionList::AssignPyData(Structs::v2ConditionStub *,int) =====
int *__fastcall ConditionList::AssignPyData(int *result, int a2, int a3)
{
  int *v3; // r4
  int v4; // r5
  int v5; // r3
  int *v6; // r7
  int v7; // r6
  int v8; // r3

  v3 = result;
  result[2] = a2;
  v4 = a2;
  *result = a3;
  if ( a3 > 0 )
  {
    result = (int *)operator new[](4 * a3, 0);
    v5 = *v3;
    v6 = result;
    v3[1] = (int)result;
    if ( v5 > 0 )
    {
      v7 = 0;
      while ( 1 )
      {
        result = (int *)s_conditionImplDataMap[*(_DWORD *)(v4 + 4)]();
        v6[v7] = (int)result;
        v8 = *(_DWORD *)(v3[1] + 4 * v7++);
        *(_DWORD *)(v8 + 4) = v4;
        v4 += 16;
        if ( *v3 <= v7 )
          break;
        v6 = (int *)v3[1];
      }
    }
  }
  return result;
}


// ===== 47899c GetConditionImplInstance<Condition_IsEventInState>(void) =====
_DWORD *GetConditionImplInstance<Condition_IsEventInState>()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = (_DWORD *)operator new(8u, 0);
  v0[1] = 0;
  *v0 = 0;
  v1 = v0;
  Condition::Condition((Condition *)v0);
  *v1 = off_969160;
  return v1;
}


// ===== 4789e8 GetConditionImplInstance<Condition_IsPlayerAtLevel>(void) =====
_DWORD *GetConditionImplInstance<Condition_IsPlayerAtLevel>()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = (_DWORD *)operator new(8u, 0);
  v0[1] = 0;
  *v0 = 0;
  v1 = v0;
  Condition::Condition((Condition *)v0);
  *v1 = off_969180;
  return v1;
}


// ===== 478a34 GetConditionImplInstance<Condition_IsLevelInState>(void) =====
_DWORD *GetConditionImplInstance<Condition_IsLevelInState>()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = (_DWORD *)operator new(8u, 0);
  v0[1] = 0;
  *v0 = 0;
  v1 = v0;
  Condition::Condition((Condition *)v0);
  *v1 = off_9691A0;
  return v1;
}


// ===== 478a80 GetConditionImplInstance<Condition_IsPlayerInLevel>(void) =====
_DWORD *GetConditionImplInstance<Condition_IsPlayerInLevel>()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = (_DWORD *)operator new(8u, 0);
  v0[1] = 0;
  *v0 = 0;
  v1 = v0;
  Condition::Condition((Condition *)v0);
  *v1 = off_9691C0;
  return v1;
}


// ===== 478acc GetConditionImplInstance<Condition_IsQuestStateHigher>(void) =====
Condition *GetConditionImplInstance<Condition_IsQuestStateHigher>()
{
  Condition *v0; // r5

  v0 = (Condition *)operator new(0xCu, 0);
  Condition::Condition(v0);
  *((_DWORD *)v0 + 2) = 2;
  *(_DWORD *)v0 = off_9691E0;
  return v0;
}


// ===== 478b14 GetConditionImplInstance<Condition_IsQuestStateLower>(void) =====
Condition *GetConditionImplInstance<Condition_IsQuestStateLower>()
{
  Condition *v0; // r5

  v0 = (Condition *)operator new(0xCu, 0);
  Condition::Condition(v0);
  *((_DWORD *)v0 + 2) = 1;
  *(_DWORD *)v0 = off_969220;
  return v0;
}


// ===== 478b5c GetConditionImplInstance<Condition_IsQuestInState>(void) =====
Condition *GetConditionImplInstance<Condition_IsQuestInState>()
{
  Condition *v0; // r5

  v0 = (Condition *)operator new(0xCu, 0);
  Condition::Condition(v0);
  *((_DWORD *)v0 + 2) = 0;
  *(_DWORD *)v0 = off_969240;
  return v0;
}


// ===== 478ba4 Condition_IsPlayerInLevel::DBG_TraceDetailedConditionInformation(__sFILE *) =====
int __fastcall Condition_IsPlayerInLevel::DBG_TraceDetailedConditionInformation(
        Condition_IsPlayerInLevel *this,
        __sFILE *stream)
{
  int v2; // r2
  const char *v3; // r2

  v2 = *(_DWORD *)(*((_DWORD *)this + 1) + 8);
  if ( v2 < 0 || v2 >= (unsigned int)Arrays::LevelList::size )
    v3 = "na";
  else
    v3 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v2);
  return fprintf(stream, "\t    Level       : %s\n\n", v3);
}


// ===== 478c10 Condition_IsEventInState::DBG_TraceDetailedConditionInformation(__sFILE *) =====
int __fastcall Condition_IsEventInState::DBG_TraceDetailedConditionInformation(
        Condition_IsEventInState *this,
        __sFILE *stream)
{
  int v2; // r6
  int v4; // r3
  const char *v5; // r2
  char *ConstantName; // r2

  v2 = *((_DWORD *)this + 1);
  v4 = *(_DWORD *)(v2 + 8);
  if ( v4 < 0 || v4 >= (unsigned int)Arrays::v2Events::size )
    v5 = "na";
  else
    v5 = *(const char **)(Arrays::v2Events::m_memberNames + 4 * v4);
  fprintf(stream, "\t    Event       : %s\n", v5);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2EventState", *(_DWORD *)(v2 + 12));
  return fprintf(stream, "\t    State       : %s\n\n", ConstantName);
}


// ===== 478cc4 Condition_IsQuestInStateGeneric::DBG_TraceDetailedConditionInformation(__sFILE *) =====
int __fastcall Condition_IsQuestInStateGeneric::DBG_TraceDetailedConditionInformation(
        Condition_IsQuestInStateGeneric *this,
        __sFILE *stream)
{
  int v2; // r6
  int v4; // r3
  const char *v5; // r2
  char *ConstantName; // r2

  v2 = *((_DWORD *)this + 1);
  v4 = *(_DWORD *)(v2 + 8);
  if ( v4 < 0 || v4 >= (unsigned int)Arrays::v2Quests::size )
    v5 = "na";
  else
    v5 = *(const char **)(Arrays::v2Quests::m_memberNames + 4 * v4);
  fprintf(stream, "\t    Quest       : %s\n", v5);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestState", *(_DWORD *)(v2 + 12));
  return fprintf(stream, "\t    State       : %s\n\n", ConstantName);
}


// ===== 478d78 Condition_IsPlayerInLevel::Eval(void) =====
bool __fastcall Condition_IsPlayerInLevel::Eval(Condition_IsPlayerInLevel *this)
{
  int v1; // r4

  v1 = *((_DWORD *)this + 1);
  return *(_DWORD *)(v1 + 8) == *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                          + 60);
}


// ===== 478db4 Condition_IsEventInState::Eval(void) =====
bool __fastcall Condition_IsEventInState::Eval(Condition_IsEventInState *this)
{
  int v1; // r5
  int CurrentLevel; // r0

  v1 = *((_DWORD *)this + 1);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel )
    return 0;
  if ( *(_DWORD *)(CurrentLevel + 404) )
    return *(_DWORD *)(v1 + 12) == *(_DWORD *)GameEventManager::GetEventByID(
                                                *(GameEventManager **)(CurrentLevel + 404),
                                                *(_DWORD *)(v1 + 8));
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return 0;
  }
  if ( gAssertLevel != 1 )
    return 0;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "gEvtMgr != 0",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Condition.cpp",
    147);
  return 0;
}


// ===== 478e90 Condition::~Condition() =====
void __fastcall Condition::~Condition(Condition *this)
{
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 478eac ConditionList::~ConditionList() =====
void __fastcall ConditionList::~ConditionList(ConditionList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 478f20 ConditionList::~ConditionList() =====
void __fastcall ConditionList::~ConditionList(ConditionList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 478f94 Condition_IsPlayerAtLevel::DBG_TraceDetailedConditionInformation(__sFILE *) =====
size_t __fastcall Condition_IsPlayerAtLevel::DBG_TraceDetailedConditionInformation(
        Condition_IsPlayerAtLevel *this,
        __sFILE *s)
{
  return fwrite("\t  Condition_IsPlayerAtLevel\n", 1u, 0x1Du, s);
}


// ===== 478fb0 Condition_IsLevelInState::DBG_TraceDetailedConditionInformation(__sFILE *) =====
size_t __fastcall Condition_IsLevelInState::DBG_TraceDetailedConditionInformation(
        Condition_IsLevelInState *this,
        __sFILE *s)
{
  return fwrite("\t  Condition_IsLevelInState\n", 1u, 0x1Cu, s);
}


// ===== 478fcc Condition::DBG_TraceDetailedConditionInformation(__sFILE *) =====
size_t __fastcall Condition::DBG_TraceDetailedConditionInformation(Condition *this, __sFILE *s)
{
  return fwrite("\t  Unimplemented Trace for Condition\n", 1u, 0x25u, s);
}


// ===== 478fe8 Condition_IsQuestInStateGeneric::Eval(void) =====
bool __fastcall Condition_IsQuestInStateGeneric::Eval(Condition_IsQuestInStateGeneric *this)
{
  int v2; // r5
  Character *character_660; // r0
  PlayerSavegame *QuestByID; // r0
  int v5; // r3
  int v6; // r2

  v2 = *((_DWORD *)this + 1);
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( !character_660 )
    return 0;
  QuestByID = Character::SG_GetQuestByID(character_660, *(_DWORD *)(v2 + 8), -1);
  if ( !QuestByID )
    return 0;
  v5 = *((_DWORD *)this + 2);
  v6 = *(_DWORD *)QuestByID;
  if ( v5 != 1 )
  {
    if ( v5 == 2 )
      return *(_DWORD *)(v2 + 12) < v6;
    if ( !v5 )
      return *(_DWORD *)(v2 + 12) == v6;
    return 0;
  }
  return *(_DWORD *)(v2 + 12) > v6;
}


// ===== 4790a0 `global constructor keyed to'.._.._sources_Game_Progression_Condition.cpp =====
int `global constructor keyed to'.._.._sources_Game_Progression_Condition.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6194 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6190 = 1056964608;
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


// ===== 47917c Condition_IsLevelInState::~Condition_IsLevelInState() =====
void __fastcall Condition_IsLevelInState::~Condition_IsLevelInState(Condition_IsLevelInState *this)
{
  *(_DWORD *)this = off_9691A0;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 4791b8 Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric() =====
void __fastcall Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric(
        Condition_IsQuestInStateGeneric *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 4791f4 Condition_IsEventInState::~Condition_IsEventInState() =====
void __fastcall Condition_IsEventInState::~Condition_IsEventInState(Condition_IsEventInState *this)
{
  *(_DWORD *)this = off_969160;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 479230 Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel() =====
void __fastcall Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel(Condition_IsPlayerInLevel *this)
{
  *(_DWORD *)this = off_9691C0;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 47926c Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel() =====
void __fastcall Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel(Condition_IsPlayerAtLevel *this)
{
  *(_DWORD *)this = off_969180;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 4792a8 Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher() =====
void __fastcall Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher(Condition_IsQuestStateHigher *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 4792e4 Condition_IsQuestStateLower::~Condition_IsQuestStateLower() =====
void __fastcall Condition_IsQuestStateLower::~Condition_IsQuestStateLower(Condition_IsQuestStateLower *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 479320 Condition_IsQuestInState::~Condition_IsQuestInState() =====
void __fastcall Condition_IsQuestInState::~Condition_IsQuestInState(Condition_IsQuestInState *this)
{
  *(_DWORD *)this = off_969200;
  Condition::~Condition(this);
  CustomFree(this);
}


// ===== 47935c GameEvent::DBG_GetCurrentStateName(void) =====
char *__fastcall GameEvent::DBG_GetCurrentStateName(GameEvent *this)
{
  if ( *(_DWORD *)this <= 2u )
    return PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2EventState", *(_DWORD *)this);
  else
    return "unknown";
}


// ===== 4793a4 GameEvent::ExecScript(int) =====
Elf32_Dyn **__fastcall GameEvent::ExecScript(GameEvent *this, int a2)
{
  Elf32_Dyn **result; // r0

  result = &__GLOBAL_OFFSET_TABLE_;
  if ( a2 >= 0 )
    return (Elf32_Dyn **)ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, a2, -1, 0);
  return result;
}


// ===== 4793d0 GameEvent::SetState(int) =====
unsigned int *__fastcall GameEvent::SetState(unsigned int *this, unsigned int a2)
{
  GameEvent *v2; // r4
  int v3; // r1

  v2 = (GameEvent *)this;
  if ( a2 <= 2 )
  {
    *this = a2;
    if ( a2 == 2 )
    {
      v3 = TempHackScriptIDAreStrings(*(const char **)(*(this + 7) + 12));
      return (unsigned int *)GameEvent::ExecScript(v2, v3);
    }
  }
  return this;
}


// ===== 479408 GameEvent::Update(void) =====
int __fastcall GameEvent::Update(GameEvent *this)
{
  int v2; // r7
  int v3; // r7
  int result; // r0
  PyDataConstants *v5; // r0
  const char *v6; // r2
  int Constant; // r1

  v2 = *(_DWORD *)this;
  if ( v2 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2EventState", "Inactive") )
  {
    result = ObjectiveList::IsValid((GameEvent *)((char *)this + 12));
    if ( result )
    {
      v5 = (PyDataConstants *)dword_99F758;
      v6 = "Active";
      goto LABEL_9;
    }
  }
  else
  {
    v3 = *(_DWORD *)this;
    if ( v3 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2EventState", "Active") )
      return PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2EventState", "Completed");
    result = ObjectiveList::Eval((GameEvent *)((char *)this + 12));
    if ( result )
    {
      v5 = (PyDataConstants *)dword_99F758;
      v6 = "Completed";
LABEL_9:
      Constant = PyDataConstants::getConstant(v5, "v2EventState", v6);
      return GameEvent::SetState(this, Constant);
    }
  }
  return result;
}


// ===== 4794fc GameEvent::Compile(void) =====
int __fastcall GameEvent::Compile(GameEvent *this)
{
  ObjectiveList *v1; // r5
  int result; // r0

  v1 = (GameEvent *)((char *)this + 12);
  ObjectiveList::InvalidateCompile((GameEvent *)((char *)this + 12));
  result = ObjectiveList::Compile(v1);
  if ( !*((_BYTE *)this + 24) )
  {
    result = ObjectiveList::Register(v1);
    *((_BYTE *)this + 24) = 1;
  }
  return result;
}


// ===== 479538 GameEvent::ReInit(void) =====
int __fastcall GameEvent::ReInit(GameEvent *this)
{
  *(_DWORD *)this = 0;
  return ObjectiveList::_resetData((GameEvent *)((char *)this + 12));
}


// ===== 479544 GameEvent::DBG_TraceDetailedInformation(void) =====
int __fastcall GameEvent::DBG_TraceDetailedInformation(GameEvent *this)
{
  return ObjectiveList::DBG_TraceDetailedObjectiveListInformation((GameEvent *)((char *)this + 12), (__sFILE *)&_sF + 1);
}


// ===== 479568 GameEvent::AssignPyData(Structs::v2Event *) =====
int __fastcall GameEvent::AssignPyData(GameEvent *this, Structs::v2Event *a2)
{
  *((_DWORD *)this + 7) = a2;
  return ObjectiveList::AssignPyData(
           (GameEvent *)((char *)this + 12),
           *((Structs::v2QuestObjectiveStub **)a2 + 5),
           *((_DWORD *)a2 + 4));
}


// ===== 47957c GameEvent::~GameEvent() =====
void __fastcall GameEvent::~GameEvent(GameEvent *this)
{
  ObjectiveList::~ObjectiveList((GameEvent *)((char *)this + 12));
}


// ===== 479594 GameEvent::~GameEvent() =====
void __fastcall GameEvent::~GameEvent(GameEvent *this)
{
  ObjectiveList::~ObjectiveList((GameEvent *)((char *)this + 12));
}


// ===== 4795ac GameEvent::GameEvent(void) =====
void __fastcall GameEvent::GameEvent(GameEvent *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 2) = 0;
  ObjectiveList::ObjectiveList((GameEvent *)((char *)this + 12));
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 24) = 0;
}


// ===== 4795e0 GameEvent::GameEvent(void) =====
void __fastcall GameEvent::GameEvent(GameEvent *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 2) = 0;
  ObjectiveList::ObjectiveList((GameEvent *)((char *)this + 12));
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 24) = 0;
}


// ===== 479614 `global constructor keyed to'.._.._sources_Game_Progression_GameEvent.cpp =====
int `global constructor keyed to'.._.._sources_Game_Progression_GameEvent.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A61A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A619C = 1056964608;
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


// ===== 4796f0 GameEventManager::GetEventByID(int) =====
int __fastcall GameEventManager::GetEventByID(GameEventManager *this, int a2)
{
  if ( a2 < 0 || a2 >= (*((_DWORD *)this + 1) - *(_DWORD *)this) >> 2 )
    return 0;
  else
    return *(_DWORD *)(*(_DWORD *)this + 4 * a2);
}


// ===== 479718 GameEventManager::LoopOnAllEvents(void (GameEvent::*)(void)) =====
int __fastcall GameEventManager::LoopOnAllEvents(int result, int (__fastcall *a2)(int), int a3)
{
  int *v3; // r4
  int v4; // r5
  int v6; // r6
  int v7; // r8
  int v8; // r0
  int (__fastcall *v9)(int); // r3
  int v10; // r0

  v3 = *(int **)result;
  v4 = result;
  if ( *(_DWORD *)result != *(_DWORD *)(result + 4) )
  {
    v6 = a3 >> 1;
    v7 = a3 & 1;
    do
    {
      v8 = *v3;
      if ( v7 )
        v9 = *(int (__fastcall **)(int))(v8 + v6);
      else
        v9 = a2;
      v10 = v8 + v6;
      if ( v7 )
        v9 = *(int (__fastcall **)(int))((char *)a2 + (_DWORD)v9);
      result = v9(v10);
      ++v3;
    }
    while ( v3 != *(int **)(v4 + 4) );
  }
  return result;
}


// ===== 47977c GameEventManager::Compile(void) =====
int __fastcall GameEventManager::Compile(GameEventManager *this, int a2, int a3, int a4, int a5, int a6)
{
  return GameEventManager::LoopOnAllEvents(this, GameEvent::Compile, 0, GameEvent::Compile, a5, a6);
}


// ===== 4797b0 GameEventManager::LoopOnAllEvents(void (GameEvent::*)(void)) =====
int __fastcall GameEventManager::LoopOnAllEvents(int result, int (__fastcall *a2)(int), int a3)
{
  int *v3; // r4
  int v4; // r5
  int v6; // r6
  int v7; // r8
  int v8; // r0
  int (__fastcall *v9)(int); // r3
  int v10; // r0

  v3 = *(int **)result;
  v4 = result;
  if ( *(_DWORD *)result != *(_DWORD *)(result + 4) )
  {
    v6 = a3 >> 1;
    v7 = a3 & 1;
    do
    {
      v8 = *v3;
      if ( v7 )
        v9 = *(int (__fastcall **)(int))(v8 + v6);
      else
        v9 = a2;
      v10 = v8 + v6;
      if ( v7 )
        v9 = *(int (__fastcall **)(int))((char *)a2 + (_DWORD)v9);
      result = v9(v10);
      ++v3;
    }
    while ( v3 != *(int **)(v4 + 4) );
  }
  return result;
}


// ===== 479814 GameEventManager::DBG_TraceDetailedInformation(void) =====
int __fastcall GameEventManager::DBG_TraceDetailedInformation(GameEventManager *this)
{
  return GameEventManager::LoopOnAllEvents(
           (int)this,
           (int (__fastcall *)(int))GameEvent::DBG_TraceDetailedInformation,
           0);
}


// ===== 479848 GameEventManager::GetEventByName(char const*) =====
int __fastcall GameEventManager::GetEventByName(GameEventManager *this, const char *a2)
{
  int v4; // r5
  int v5; // r4
  int v6; // r7
  int v7; // r1

  v4 = Arrays::v2Events::size;
  if ( Arrays::v2Events::size )
  {
    v5 = 0;
    v6 = Arrays::v2Events::m_memberNames;
    while ( LC_API_STRCMP_0(a2, *(const char **)(v6 + 4 * v5)) )
    {
      if ( ++v5 == v4 )
        goto LABEL_6;
    }
    v7 = v5;
  }
  else
  {
LABEL_6:
    v7 = -1;
  }
  return GameEventManager::GetEventByID(this, v7);
}


// ===== 4798c8 GameEventManager::Update(void) =====
int __fastcall GameEventManager::Update(GameEventManager *this)
{
  PushProfilingContext("GameEventManager::Update");
  GameEventManager::LoopOnAllEvents(this, GameEvent::Update, 0, 0, GameEvent::Update, 0);
  return PopProfilingContext("GameEventManager::Update");
}


// ===== 47992c GameEventManager::ReInit(void) =====
GameEvent ***__fastcall GameEventManager::ReInit(GameEvent ***this)
{
  GameEvent **v1; // r4
  GameEvent ***i; // r6
  GameEvent *v3; // t1

  v1 = *this;
  for ( i = this; v1 != i[1]; this = (GameEvent ***)GameEvent::Compile(v3) )
  {
    v3 = *v1++;
    GameEvent::ReInit(v3);
  }
  return this;
}


// ===== 479968 GameEventManager::Unload(void) =====
void __fastcall GameEventManager::Unload(GameEvent ***this)
{
  GameEvent **v1; // r4
  GameEvent **v2; // r3
  GameEvent *v4; // r5

  v1 = *this;
  v2 = *(this + 1);
  if ( *this != v2 )
  {
    do
    {
      v4 = *v1++;
      if ( v4 )
      {
        GameEvent::~GameEvent(v4);
        CustomFree(v4);
        v2 = *(this + 1);
      }
    }
    while ( v1 != v2 );
    if ( v1 != *this )
      *(this + 1) = *this;
  }
}


// ===== 4799bc std::vector<GameEvent *,std::allocator<GameEvent *>>::_M_fill_insert_aux(GameEvent **,uint,GameEvent * const&,std::__false_type const&) =====
char *__fastcall std::vector<GameEvent *>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
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
      return (char *)std::vector<GameEvent *>::_M_fill_insert_aux(result);
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


// ===== 479b04 std::vector<GameEvent *,std::allocator<GameEvent *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<GameEvent *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 479b64 std::allocator<GameEvent *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<GameEvent *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = CustomAlloc(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 479bd0 std::allocator<GameEvent *>::deallocate(GameEvent **,uint) =====
void __fastcall std::allocator<GameEvent *>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 4 * a3);
  }
}


// ===== 479bec GameEventManager::~GameEventManager() =====
void __fastcall GameEventManager::~GameEventManager(GameEvent ***this)
{
  GameEventManager::Unload(this);
  if ( *this )
    std::allocator<GameEvent *>::deallocate((int)(this + 2), *this, *(this + 2) - *this);
}


// ===== 479c24 `global constructor keyed to'.._.._sources_Game_Progression_GameEventManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Progression_GameEventManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A61AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A61A8 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 479cac std::vector<GameEvent *,std::allocator<GameEvent *>>::vector(uint) [clone] =====
_DWORD *__fastcall std::vector<GameEvent *>::vector(_DWORD *a1)
{
  char *v2; // r0
  size_t v3; // r3
  size_t v5; // [sp+4h] [bp-4h] BYREF

  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = (char *)std::allocator<GameEvent *>::_M_allocate((int)(a1 + 2), 0, &v5);
  v3 = v5;
  *a1 = v2;
  a1[1] = v2;
  a1[2] = &v2[4 * v3];
  return a1;
}


// ===== 479cf4 GameEventManager::GameEventManager(void) =====
void __fastcall GameEventManager::GameEventManager(GameEventManager *this)
{
  std::vector<GameEvent *>::vector(this);
}


// ===== 479d08 GameEventManager::GameEventManager(void) =====
void __fastcall GameEventManager::GameEventManager(GameEventManager *this)
{
  std::vector<GameEvent *>::vector(this);
}


// ===== 479d1c std::vector<GameEvent *,std::allocator<GameEvent *>>::_M_fill_insert(GameEvent **,uint,GameEvent * const&) =====
void __fastcall std::vector<GameEvent *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r6
  size_t v14; // r5
  size_t v15; // r3
  size_t size; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<GameEvent *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
    }
    else
    {
      size = std::vector<GameEvent *>::_M_compute_next_size((_DWORD *)a1, a3);
      v8 = (char *)std::allocator<GameEvent *>::_M_allocate(a1 + 8, size, &size);
      v9 = v8;
      if ( a2 != *(char **)a1 )
      {
        v10 = (size_t)&a2[-*(_DWORD *)a1];
        v8 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
      }
      v11 = a3;
      v12 = 0;
      do
      {
        --v11;
        *(_DWORD *)&v8[v12] = *(_DWORD *)a4;
        v12 += 4;
      }
      while ( v11 );
      v13 = &v8[4 * a3];
      v14 = *(_DWORD *)(a1 + 4) - (_DWORD)a2;
      if ( v14 )
        v13 = (char *)memmove(v13, a2, v14) + v14;
      std::allocator<GameEvent *>::deallocate(a1 + 8, *(void **)a1, (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2);
      v15 = size;
      *(_DWORD *)a1 = v9;
      *(_DWORD *)(a1 + 4) = v13;
      *(_DWORD *)(a1 + 8) = &v9[4 * v15];
    }
  }
}


// ===== 479e18 std::vector<GameEvent *,std::allocator<GameEvent *>>::resize(uint,GameEvent * const&) =====
void __fastcall std::vector<GameEvent *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<GameEvent *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 479e5c GameEventManager::Load(void) =====
_DWORD *__fastcall GameEventManager::Load(_DWORD *this)
{
  int v1; // r10
  _DWORD *v2; // r5
  int v3; // r6
  int i; // r7
  int v5; // r9
  GameEvent *v6; // r8
  Structs::v2Event *v7; // r1
  int v8; // r3

  v1 = (*(this + 1) - *this) >> 2;
  v2 = this;
  if ( !v1 )
  {
    v3 = Arrays::v2Events::size;
    this = (_DWORD *)std::vector<GameEvent *>::resize();
    if ( v3 )
    {
      for ( i = 0; i != v3; ++i )
      {
        v5 = Arrays::v2Events::members;
        v6 = (GameEvent *)operator new(0x20u, 0);
        GameEvent::GameEvent(v6);
        v7 = (Structs::v2Event *)(v5 + v1);
        v1 += 24;
        v8 = *(_DWORD *)(Arrays::v2Events::m_memberNames + 4 * i);
        *((_DWORD *)v6 + 1) = i;
        *((_DWORD *)v6 + 2) = v8;
        GameEvent::AssignPyData(v6, v7);
        this = (_DWORD *)GameEvent::ReInit(v6);
        *(_DWORD *)(*v2 + 4 * i) = v6;
      }
    }
  }
  return this;
}


// ===== 479f34 GameEventManager::~GameEventManager() =====
void __fastcall GameEventManager::~GameEventManager(GameEvent ***this)
{
  GameEventManager::Unload(this);
  if ( *this )
    std::allocator<GameEvent *>::deallocate((int)(this + 2), *this, *(this + 2) - *this);
}


// ===== 479f6c Objective::Compile(void) =====
void __fastcall Objective::Compile(Objective *this)
{
  ;
}


// ===== 479f70 Objective::InvalidateCompile(void) =====
int __fastcall Objective::InvalidateCompile(int this)
{
  *(_BYTE *)(this + 20) = 0;
  *(_BYTE *)(this + 8) = 0;
  return this;
}


// ===== 479f80 Objective::InstallObjectiveMarker(int,int) =====
void __fastcall Objective::InstallObjectiveMarker(Objective *this, int a2, int a3)
{
  ;
}


// ===== 479f84 Objective::RemoveObjectiveMarker(void) =====
void __fastcall Objective::RemoveObjectiveMarker(Objective *this)
{
  ;
}


// ===== 479f88 Vector3DFList::operator[](int) =====
int __fastcall Vector3DFList::operator[](_DWORD *a1, int a2)
{
  return *a1 + 12 * a2;
}


// ===== 479f98 Vector3DFList::getCount(void) =====
int __fastcall Vector3DFList::getCount(Vector3DFList *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 479fa0 Vector3DFList::setCharacterPosition(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall Vector3DFList::setCharacterPosition(_DWORD *result, int *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r2

  v2 = *a2;
  result[5] = *a2;
  v3 = a2[1];
  result[6] = v3;
  v4 = a2[2];
  result[15] = v2;
  result[16] = v3;
  result[17] = v4;
  result[7] = v4;
  return result;
}


// ===== 479fc8 Vector3DFList::addClosest(glitch::core::vector3d<float> const&) =====
float __fastcall Vector3DFList::addClosest(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r5
  float result; // r0
  int v6; // r3
  int v7; // r8
  float v8; // r4
  float v9; // r6
  int v10; // r4
  int v11; // r11
  float v12; // r5
  float v13; // r2
  int v14; // r3
  int v15; // r3
  float v16; // r2
  int v17; // r3
  int v18; // r3
  float v19; // [sp+0h] [bp-Ch]
  float v20; // [sp+4h] [bp-8h]

  v19 = *a2;
  v3 = *a2 - a1[5];
  v4 = a2[1] - a1[6];
  result = a2[2] - a1[7];
  v6 = *((_DWORD *)a1 + 3);
  v7 = *((_DWORD *)a1 + 2);
  v8 = a2[2] - a1[7];
  if ( v6 < v7 )
  {
    v15 = 12 * v6;
    v16 = *a1;
    *(float *)(LODWORD(v16) + v15) = v19;
    v17 = LODWORD(v16) + v15;
    *(float *)(v17 + 4) = a2[1];
    *(float *)(v17 + 8) = a2[2];
    result = (float)((float)(v3 * v3) + (float)(v4 * v4)) + (float)(v8 * v8);
    v18 = *((_DWORD *)a1 + 3);
    *(float *)(*((_DWORD *)a1 + 1) + 4 * v18) = result;
    *((_DWORD *)a1 + 3) = v18 + 1;
  }
  else if ( v7 > 0 )
  {
    v20 = (float)((float)(v3 * v3) + (float)(v4 * v4)) + (float)(v8 * v8);
    v9 = v20;
    v10 = 0;
    v11 = -1;
    while ( 1 )
    {
      v12 = *(float *)(*((_DWORD *)a1 + 1) + 4 * v10);
      LODWORD(result) = v12 > v9;
      if ( v12 > v9 )
        v11 = v10;
      ++v10;
      if ( v12 <= v9 )
        v12 = v9;
      if ( v10 == v7 )
        break;
      v9 = v12;
    }
    if ( v11 != -1 )
    {
      v13 = *a1;
      *(float *)(LODWORD(v13) + 12 * v11) = v19;
      v14 = LODWORD(v13) + 12 * v11;
      *(float *)(v14 + 4) = a2[1];
      *(float *)(v14 + 8) = a2[2];
      *(float *)(*((_DWORD *)a1 + 1) + 4 * v11) = v20;
    }
  }
  return result;
}


// ===== 47a178 Vector3DFList::add(glitch::core::vector3d<float> const&) =====
int *__fastcall Vector3DFList::add(int *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  int v5; // r2
  int v6; // r3

  v2 = result[3];
  if ( v2 < result[2] )
  {
    v3 = *result;
    v4 = 12 * v2;
    *(_DWORD *)(v3 + v4) = *a2;
    v5 = v3 + v4;
    *(_DWORD *)(v5 + 4) = a2[1];
    *(_DWORD *)(v5 + 8) = a2[2];
    v6 = result[3];
    *(_DWORD *)(result[1] + 4 * v6) = 0;
    result[3] = v6 + 1;
  }
  return result;
}


// ===== 47a1d4 Objective_GatherLoot::GetPositions(Vector3DFList &) =====
void __fastcall Objective_GatherLoot::GetPositions(Objective_GatherLoot *this, Vector3DFList *a2)
{
  ;
}


// ===== 47a1d8 Objective_Automatic::GetPositions(Vector3DFList &) =====
void __fastcall Objective_Automatic::GetPositions(Objective_Automatic *this, Vector3DFList *a2)
{
  ;
}


// ===== 47a1dc Objective_Automatic::Register(void) =====
void __fastcall Objective_Automatic::Register(Objective_Automatic *this)
{
  ;
}


// ===== 47a1e0 Objective_Automatic::Unregister(void) =====
void __fastcall Objective_Automatic::Unregister(Objective_Automatic *this)
{
  ;
}


// ===== 47a1e4 Objective::~Objective() =====
void __fastcall Objective::~Objective(Objective *this)
{
  ;
}


// ===== 47a1e8 `non-virtual thunk to'Objective_GatherLoot::~Objective_GatherLoot() =====
void __fastcall `non-virtual thunk to'Objective_GatherLoot::~Objective_GatherLoot(Objective_GatherLoot *this)
{
  Objective_GatherLoot::~Objective_GatherLoot((Objective_GatherLoot *)((char *)this - 24));
}


// ===== 47a1f0 Objective_GatherLoot::~Objective_GatherLoot() =====
void __fastcall Objective_GatherLoot::~Objective_GatherLoot(Objective_GatherLoot *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47a238 `non-virtual thunk to'Objective_SavedQty::~Objective_SavedQty() =====
void __fastcall `non-virtual thunk to'Objective_SavedQty::~Objective_SavedQty(Objective_SavedQty *this)
{
  Objective_SavedQty::~Objective_SavedQty((Objective_SavedQty *)((char *)this - 24));
}


// ===== 47a240 Objective_SavedQty::~Objective_SavedQty() =====
void __fastcall Objective_SavedQty::~Objective_SavedQty(Objective_SavedQty *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47a288 `non-virtual thunk to'Objective_Qty::~Objective_Qty() =====
void __fastcall `non-virtual thunk to'Objective_Qty::~Objective_Qty(Objective_Qty *this)
{
  Objective_Qty::~Objective_Qty((Objective_Qty *)((char *)this - 24));
}


// ===== 47a290 Objective_Qty::~Objective_Qty() =====
void __fastcall Objective_Qty::~Objective_Qty(Objective_Qty *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47a2d8 `non-virtual thunk to'Objective_MoveInZone::~Objective_MoveInZone() =====
void __fastcall `non-virtual thunk to'Objective_MoveInZone::~Objective_MoveInZone(Objective_MoveInZone *this)
{
  Objective_MoveInZone::~Objective_MoveInZone((Objective_MoveInZone *)((char *)this - 24));
}


// ===== 47a2e0 Objective_MoveInZone::~Objective_MoveInZone() =====
void __fastcall Objective_MoveInZone::~Objective_MoveInZone(Objective_MoveInZone *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47a328 `non-virtual thunk to'Objective_EventReceiver::~Objective_EventReceiver() =====
void __fastcall `non-virtual thunk to'Objective_EventReceiver::~Objective_EventReceiver(Objective_EventReceiver *this)
{
  Objective_EventReceiver::~Objective_EventReceiver((Objective_EventReceiver *)((char *)this - 24));
}


// ===== 47a330 Objective_EventReceiver::~Objective_EventReceiver() =====
void __fastcall Objective_EventReceiver::~Objective_EventReceiver(Objective_EventReceiver *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47a378 Objective::~Objective() =====
void __fastcall Objective::~Objective(Objective *this)
{
  ;
}


// ===== 47a37c Objective::_resetData(void) =====
int __fastcall Objective::_resetData(int this)
{
  *(_BYTE *)(this + 20) = 0;
  return this;
}


// ===== 47a388 Objective_SavedQty::_resetData(void) =====
int __fastcall Objective_SavedQty::_resetData(Objective_SavedQty *this)
{
  int result; // r0

  result = Objective::_resetData((int)this);
  *((_DWORD *)this + 8) = 0;
  return result;
}


// ===== 47a3a0 Objective::GetDescStrId(void) =====
int __fastcall Objective::GetDescStrId(Objective *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 8);
}


// ===== 47a3ac GetPosition(void) =====
_DWORD *__fastcall GetPosition(_DWORD *result)
{
  result[2] = 0;
  *result = 0;
  result[1] = 0;
  return result;
}


// ===== 47a3c0 ObjectiveList::ObjectiveList(void) =====
void __fastcall ObjectiveList::ObjectiveList(ObjectiveList *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 47a3d4 ObjectiveList::ObjectiveList(void) =====
void __fastcall ObjectiveList::ObjectiveList(ObjectiveList *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 47a3e8 ObjectiveList::CreateObjectiveWithPyData(Structs::v2QuestObjectiveStub *) =====
int __fastcall ObjectiveList::CreateObjectiveWithPyData(int a1)
{
  int v1; // r4
  int result; // r0

  v1 = *(_DWORD *)(a1 + 4);
  result = s_ObjectiveImplDataMap[v1]();
  *(_DWORD *)(result + 12) = a1;
  *(_DWORD *)(result + 4) = v1;
  return result;
}


// ===== 47a414 ObjectiveList::SetOwner(Character *) =====
int *__fastcall ObjectiveList::SetOwner(int *this, Character *a2)
{
  int v2; // r3
  int v3; // r2

  if ( *this > 0 )
  {
    v2 = 0;
    do
    {
      v3 = *(_DWORD *)(*(this + 1) + 4 * v2++);
      *(_DWORD *)(v3 + 16) = a2;
    }
    while ( *this > v2 );
  }
  return this;
}


// ===== 47a444 ObjectiveList::Eval(void) =====
int __fastcall ObjectiveList::Eval(ObjectiveList *this)
{
  int v1; // r1
  int v2; // r0
  int v3; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this <= 0 )
    return 1;
  v2 = *((_DWORD *)this + 1);
  if ( *(_BYTE *)(*(_DWORD *)v2 + 20) )
  {
    v3 = 0;
    while ( ++v3 != v1 )
    {
      if ( !*(_BYTE *)(*(_DWORD *)(v2 + 4 * v3) + 20) )
        return 0;
    }
    return 1;
  }
  return 0;
}


// ===== 47a498 ObjectiveList::IsValid(void) =====
int __fastcall ObjectiveList::IsValid(ObjectiveList *this)
{
  int v1; // r1
  int v2; // r0
  int v3; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this <= 0 )
    return 1;
  v2 = *((_DWORD *)this + 1);
  if ( *(_BYTE *)(*(_DWORD *)v2 + 8) )
  {
    v3 = 0;
    while ( ++v3 != v1 )
    {
      if ( !*(_BYTE *)(*(_DWORD *)(v2 + 4 * v3) + 8) )
        return 0;
    }
    return 1;
  }
  return 0;
}


// ===== 47a4ec ObjectiveList::InstallObjectiveMarkers(int,int) =====
int *__fastcall ObjectiveList::InstallObjectiveMarkers(int *this, int a2, int a3)
{
  int *v3; // r5
  int v6; // r4
  int v7; // r3

  v3 = this;
  if ( *this > 0 )
  {
    v6 = 0;
    do
    {
      v7 = *(_DWORD *)(v3[1] + 4 * v6++);
      this = (int *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 16))(v7, a2, a3);
    }
    while ( *v3 > v6 );
  }
  return this;
}


// ===== 47a540 ObjectiveList::LoopOnAll(void (Objective::*)(void)) =====
int *__fastcall ObjectiveList::LoopOnAll(int *result, int (__fastcall *a2)(int), int a3)
{
  int *v3; // r4
  int v5; // r7
  int v6; // r8
  int v7; // r5
  int (__fastcall *v8)(int); // r3
  int v9; // r0

  v3 = result;
  if ( *result > 0 )
  {
    v5 = a3 >> 1;
    v6 = a3 & 1;
    v7 = 0;
    do
    {
      v8 = a2;
      v9 = *(_DWORD *)(v3[1] + 4 * v7++);
      if ( v6 )
        v8 = *(int (__fastcall **)(int))(v9 + v5);
      else
        v9 += v5;
      if ( v6 )
      {
        v9 += v5;
        v8 = *(int (__fastcall **)(int))((char *)a2 + (_DWORD)v8);
      }
      result = (int *)v8(v9);
    }
    while ( *v3 > v7 );
  }
  return result;
}


// ===== 47a5a8 ObjectiveList::_resetData(void) =====
int __fastcall ObjectiveList::_resetData(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll(this, 48, 1);
}


// ===== 47a5cc ObjectiveList::RemoveObjectiveMarkers(void) =====
int __fastcall ObjectiveList::RemoveObjectiveMarkers(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll(this, 20, 1);
}


// ===== 47a5f0 ObjectiveList::Unregister(void) =====
int *__fastcall ObjectiveList::Unregister(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll((int *)this, (int (__fastcall *)(int))&dword_1C, 1);
}


// ===== 47a614 ObjectiveList::Register(void) =====
int __fastcall ObjectiveList::Register(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll(this, 24, 1);
}


// ===== 47a638 ObjectiveList::InvalidateCompile(void) =====
int __fastcall ObjectiveList::InvalidateCompile(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll(this, Objective::InvalidateCompile, 0);
}


// ===== 47a66c ObjectiveList::Compile(void) =====
int __fastcall ObjectiveList::Compile(ObjectiveList *this)
{
  return ObjectiveList::LoopOnAll(this, 8, 1);
}


// ===== 47a690 ObjectiveList::LoopOnAll(void (Objective::*)(void)) =====
int *__fastcall ObjectiveList::LoopOnAll(int *result, int (__fastcall *a2)(int), int a3)
{
  int *v3; // r4
  int v5; // r7
  int v6; // r8
  int v7; // r5
  int (__fastcall *v8)(int); // r3
  int v9; // r0

  v3 = result;
  if ( *result > 0 )
  {
    v5 = a3 >> 1;
    v6 = a3 & 1;
    v7 = 0;
    do
    {
      v8 = a2;
      v9 = *(_DWORD *)(v3[1] + 4 * v7++);
      if ( v6 )
        v8 = *(int (__fastcall **)(int))(v9 + v5);
      else
        v9 += v5;
      if ( v6 )
      {
        v9 += v5;
        v8 = *(int (__fastcall **)(int))((char *)a2 + (_DWORD)v8);
      }
      result = (int *)v8(v9);
    }
    while ( *v3 > v7 );
  }
  return result;
}


// ===== 47a6f8 ObjectiveList::LoopOnAll(void (Objective::*)(IStreamBase *),IStreamBase *) =====
int __fastcall ObjectiveList::LoopOnAll(int *a1, char *a2, int a3, int a4)
{
  int result; // r0
  int v8; // r8
  int v9; // r10
  int v10; // r6
  char *v11; // r3
  int v12; // r0

  result = *a1;
  if ( result > 0 )
  {
    v8 = a3 >> 1;
    v9 = a3 & 1;
    v10 = 0;
    do
    {
      v11 = a2;
      v12 = *(_DWORD *)(a1[1] + 4 * v10++);
      if ( v9 )
        v11 = *(char **)(v12 + v8);
      else
        v12 += v8;
      if ( v9 )
      {
        v12 += v8;
        v11 = *(char **)&a2[(_DWORD)v11];
      }
      result = ((int (__fastcall *)(int, int))v11)(v12, a4);
    }
    while ( *a1 > v10 );
  }
  return result;
}


// ===== 47a76c ObjectiveList::_saveData(IStreamBase *) =====
int __fastcall ObjectiveList::_saveData(ObjectiveList *this, IStreamBase *a2)
{
  return ObjectiveList::LoopOnAll((int *)this, (char *)&word_2C, 1, (int)a2);
}


// ===== 47a798 ObjectiveList::_loadData(IStreamBase *) =====
int __fastcall ObjectiveList::_loadData(ObjectiveList *this, IStreamBase *a2)
{
  return ObjectiveList::LoopOnAll(this, 40, 1, a2);
}


// ===== 47a7c4 ObjectiveList::LoopOnAll(void (Objective::*)(__sFILE *),__sFILE *) =====
int __fastcall ObjectiveList::LoopOnAll(int *a1, char *a2, int a3, int a4)
{
  int result; // r0
  int v8; // r8
  int v9; // r10
  int v10; // r6
  char *v11; // r3
  int v12; // r0

  result = *a1;
  if ( result > 0 )
  {
    v8 = a3 >> 1;
    v9 = a3 & 1;
    v10 = 0;
    do
    {
      v11 = a2;
      v12 = *(_DWORD *)(a1[1] + 4 * v10++);
      if ( v9 )
        v11 = *(char **)(v12 + v8);
      else
        v12 += v8;
      if ( v9 )
      {
        v12 += v8;
        v11 = *(char **)&a2[(_DWORD)v11];
      }
      result = ((int (__fastcall *)(int, int))v11)(v12, a4);
    }
    while ( *a1 > v10 );
  }
  return result;
}


// ===== 47a838 ObjectiveList::DBG_TraceDetailedObjectiveListInformation(__sFILE *) =====
int __fastcall ObjectiveList::DBG_TraceDetailedObjectiveListInformation(ObjectiveList *this, __sFILE *a2)
{
  return ObjectiveList::LoopOnAll((int *)this, &byte_9[3], 1, (int)a2);
}


// ===== 47a864 Objective_Automatic::~Objective_Automatic() =====
void __fastcall Objective_Automatic::~Objective_Automatic(Objective_Automatic *this)
{
  *(_DWORD *)this = off_969610;
  Objective::~Objective(this);
}


// ===== 47a898 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::GetPositions()
{
  ;
}


// ===== 47a89c ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::GetPositions()
{
  ;
}


// ===== 47a8a0 ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::GetPositions()
{
  ;
}


// ===== 47a8a4 ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::GetPositions()
{
  ;
}


// ===== 47a8a8 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::GetPositions()
{
  ;
}


// ===== 47a8ac ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::GetPositions(Vector3DFList &) =====
void ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::GetPositions()
{
  ;
}


// ===== 47a8b0 Objective::~Objective() =====
void __fastcall Objective::~Objective(Objective *this)
{
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47a8cc ObjectiveList::~ObjectiveList() =====
void __fastcall ObjectiveList::~ObjectiveList(ObjectiveList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 47a940 ObjectiveList::~ObjectiveList() =====
void __fastcall ObjectiveList::~ObjectiveList(ObjectiveList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 47a9b4 Vector3DFList::setNew(int) =====
void *__fastcall Vector3DFList::setNew(Vector3DFList *this, int a2)
{
  void *v3; // r0
  void *v5; // r0
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  int v8; // r2
  void *result; // r0

  v3 = *(void **)this;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = 0;
  if ( v3 )
  {
    CustomFree(v3);
    *(_DWORD *)this = 0;
  }
  v5 = *((void **)this + 1);
  if ( v5 )
  {
    CustomFree(v5);
    *((_DWORD *)this + 1) = 0;
  }
  v6 = CustomAlloc(12 * a2);
  if ( a2 )
  {
    v7 = v6;
    v8 = 0;
    do
    {
      ++v8;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7 += 3;
    }
    while ( v8 != a2 );
  }
  *(_DWORD *)this = v6;
  result = CustomAlloc(4 * a2);
  *((_DWORD *)this + 1) = result;
  return result;
}


// ===== 47aa48 ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub *,int) =====
int *__fastcall ObjectiveList::AssignPyData(int *result, int a2, int a3)
{
  int *v3; // r4
  int v4; // r5
  int v5; // r3
  int *v6; // r7
  int v7; // r6

  v3 = result;
  result[2] = a2;
  v4 = a2;
  *result = a3;
  if ( a3 > 0 )
  {
    result = (int *)operator new[](4 * a3, 0);
    v5 = *v3;
    v6 = result;
    v3[1] = (int)result;
    if ( v5 > 0 )
    {
      v7 = 0;
      while ( 1 )
      {
        result = (int *)ObjectiveList::CreateObjectiveWithPyData(v4);
        v6[v7++] = (int)result;
        v4 += 44;
        if ( *v3 <= v7 )
          break;
        v6 = (int *)v3[1];
      }
    }
  }
  return result;
}


// ===== 47aab4 Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *this,
        __sFILE *stream)
{
  const char *v4; // r2
  const char *v5; // r2

  if ( *((_BYTE *)this + 8) )
    v4 = "true";
  else
    v4 = "false";
  fprintf(stream, "\t    isValid : %s(if false ==> means objective cannot be completed in this level.)\n", v4);
  if ( *((_BYTE *)this + 28) )
    v5 = "true";
  else
    v5 = "false";
  return fprintf(stream, "\t    isRegistered : %s\n\n", v5);
}


// ===== 47ab3c Objective::_loadData(IStreamBase *) =====
int __fastcall Objective::_loadData(Objective *this, IStreamBase *a2)
{
  int result; // r0

  result = StreamReader::readAs<bool>((int)a2);
  *((_BYTE *)this + 20) = result;
  return result;
}


// ===== 47ab54 Objective_SavedQty::_loadData(IStreamBase *) =====
int __fastcall Objective_SavedQty::_loadData(Objective_SavedQty *this, IStreamBase *a2)
{
  int result; // r0

  Objective::_loadData(this, a2);
  result = StreamReader::readAs<int>((int)a2);
  *((_DWORD *)this + 8) = result;
  return result;
}


// ===== 47ab74 Objective::_saveData(IStreamBase *) =====
int __fastcall Objective::_saveData(Objective *this, IStreamBase *a2)
{
  return StreamReader::writeAs<bool>((int)a2, *((_BYTE *)this + 20));
}


// ===== 47ab84 Objective_SavedQty::_saveData(IStreamBase *) =====
int __fastcall Objective_SavedQty::_saveData(Objective_SavedQty *this, IStreamBase *a2)
{
  Objective::_saveData(this, a2);
  return StreamReader::writeAs<int>((int)a2, *((_DWORD *)this + 8));
}


// ===== 47aba4 Objective_GatherLoot::InitWithCurrentQty(void) =====
ItemInstance *__fastcall Objective_GatherLoot::InitWithCurrentQty(Objective_GatherLoot *this)
{
  int v2; // r0
  int v3; // r5
  ItemInstance *result; // r0

  v2 = *((_DWORD *)this + 4);
  v3 = *((_DWORD *)this + 3);
  if ( !v2 )
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
        "m_owner != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
        1058);
      v2 = *((_DWORD *)this + 4);
    }
  }
  result = ItemInventory::FindItem((ItemInventory *)(v2 + 892), *(_DWORD *)(v3 + 36));
  if ( result )
    *((_DWORD *)this + 8) = *((__int16 *)result + 40);
  return result;
}


// ===== 47ac58 CMsgRaisedEvent::Create(QuestEvent *) =====
int __fastcall CMsgRaisedEvent::Create(CMsgRaisedEvent *this, QuestEvent *a2, bool a3)
{
  int Message; // r4

  Message = CMessage::CreateMessage((CMessage *)"CMsgRaisedEvent", (const char *)&dword_0 + 1, a3);
  (*(void (__fastcall **)(CMsgRaisedEvent *, int))(*(_DWORD *)this + 12))(this, Message + 80);
  return Message;
}


// ===== 47ac94 Objective_EventReceiver::CheckMustSendThroughNetwork(IEvent const*) =====
CMessaging *__fastcall Objective_EventReceiver::CheckMustSendThroughNetwork(
        Objective_EventReceiver *this,
        const IEvent *a2)
{
  CMessaging *result; // r0
  CMessaging *v4; // r6
  QuestEvent *v5; // r1
  bool v6; // r2
  CMessage *v7; // r0

  result = (CMessaging *)GetOnline();
  if ( *((_BYTE *)result + 5) && !*((_BYTE *)a2 + 17) )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      v4 = (CMessaging *)CMessaging::Get(result);
      v7 = (CMessage *)CMsgRaisedEvent::Create(a2, v5, v6);
      result = (CMessaging *)CMessaging::SendMsg(v4, v7);
      *((_BYTE *)a2 + 16) = 0;
    }
  }
  return result;
}


// ===== 47ace8 `non-virtual thunk to'Objective_EventReceiver::onEvent(IEvent const*,EventManager const*) =====
int __fastcall `non-virtual thunk to'Objective_EventReceiver::onEvent(
        Objective_EventReceiver *this,
        const IEvent *a2,
        const EventManager *a3)
{
  return Objective_EventReceiver::onEvent((Objective_EventReceiver *)((char *)this - 24), a2, a3);
}


// ===== 47acf0 Objective_EventReceiver::onEvent(IEvent const*,EventManager const*) =====
int __fastcall Objective_EventReceiver::onEvent(
        Objective_EventReceiver *this,
        const IEvent *a2,
        const EventManager *a3)
{
  int v3; // r4

  v3 = *((unsigned __int8 *)this + 8);
  if ( *((_BYTE *)this + 8) )
  {
    if ( !*((_BYTE *)this + 20) )
    {
      v3 = (*(int (__fastcall **)(Objective_EventReceiver *, const IEvent *, const EventManager *))(*(_DWORD *)this + 56))(
             this,
             a2,
             a3);
      Objective_EventReceiver::CheckMustSendThroughNetwork(this, a2);
      return v3;
    }
    return 0;
  }
  if ( gAssertLevel != 2 )
  {
    if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
        213);
      return v3;
    }
    return 0;
  }
  *(_DWORD *)v3 = v3;
  return v3;
}


// ===== 47adbc Objective_EventReceiver::Unregister(void) =====
EventManager *__fastcall Objective_EventReceiver::Unregister(Objective_EventReceiver *this)
{
  EventManager *result; // r0

  result = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    result = (EventManager *)EventManager::DelayedDetach(
                               result,
                               *((_DWORD *)this + 1),
                               (Objective_EventReceiver *)((char *)this + 24));
    *((_BYTE *)this + 28) = 0;
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return (EventManager *)fprintf(
                             (FILE *)&_sF + 2,
                             "ASSERT(%s) FAILED: %s:%d\n",
                             "level",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
                             366);
  }
  return result;
}


// ===== 47ae70 Objective_EventReceiver::Register(void) =====
EventManager *__fastcall Objective_EventReceiver::Register(EventManager *this)
{
  EventManager *v1; // r4

  v1 = this;
  if ( *((_BYTE *)this + 8) )
  {
    this = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( this )
    {
      this = (EventManager *)EventManager::Attach(this, *((_DWORD *)v1 + 1), (EventManager *)((char *)v1 + 24), 0);
      *((_BYTE *)v1 + 28) = 1;
    }
    else if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return (EventManager *)fprintf(
                               (FILE *)&_sF + 2,
                               "ASSERT(%s) FAILED: %s:%d\n",
                               "level",
                               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
                               354);
    }
  }
  return this;
}


// ===== 47af38 Objective_GatherLoot::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall Objective_GatherLoot::DBG_TraceDetailedObjectiveInformation(Objective_GatherLoot *this, __sFILE *s)
{
  _DWORD *v3; // r5
  int v5; // r3
  const char *v6; // r2
  int v7; // r3
  const char *v8; // r2

  v3 = *((_DWORD **)this + 3);
  fwrite("\t  Objective_GatherLoot\n", 1u, 0x18u, s);
  v5 = v3[9];
  if ( v5 >= 0 && v5 < (unsigned int)Arrays::ItemTable::size )
    v6 = *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v5);
  else
    v6 = "na";
  fprintf(s, "\t    Loot : %s\n", v6);
  fprintf(s, "\t    Qty : %d\n", v3[10]);
  v7 = v3[8];
  if ( v7 < 0 || v7 >= (unsigned int)Arrays::LevelList::size )
    v8 = "na";
  else
    v8 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v7);
  fprintf(s, "\t    Level : %s\n", v8);
  return fprintf(s, "\t    CurrentQty : %d\n", *((_DWORD *)this + 8));
}


// ===== 47b05c TestCharTemplate::Compare(int,Character *) =====
bool __fastcall TestCharTemplate::Compare(TestCharTemplate *this, Character *a2, Character *a3)
{
  return a2 && Character::SafeGetCharPropsTemplateId(a2) == (_DWORD)this;
}


// ===== 47b08c ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r7
  const char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v8; // r3
  const char *v9; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  ObjectiveTemplate_KillEnemies\n", 1u, 0x21u, s);
  ConstantName = (const char *)PyDataConstants::getConstantName(
                                 (PyDataConstants *)dword_99F758,
                                 "v2QuestObjectiveType",
                                 v4[1]);
  fprintf(s, "\t    Type      : %s\n", ConstantName);
  v6 = v4[8];
  if ( v6 >= 0 && v6 < (unsigned int)Arrays::LevelList::size )
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  else
    v7 = "na";
  fprintf(s, "\t    Level     : %s\n", v7);
  v8 = v4[9];
  if ( v8 < 0 || v8 >= (unsigned int)Arrays::Charater_Templates::size )
    v9 = "na";
  else
    v9 = *(const char **)(Arrays::Charater_Templates::m_memberNames + 4 * v8);
  fprintf(s, "\t    EnemyType : %s\n", v9);
  fprintf(s, "\t    Qty       : %d\n", *((_DWORD *)a1 + 11));
  fprintf(s, "\t    CurrQty   : %d\n\n", *((_DWORD *)a1 + 8));
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47b1f8 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r7
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v8; // r3
  const char *v9; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  ObjectiveTemplate_KillEnemies\n", 1u, 0x21u, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type      : %s\n", ConstantName);
  v6 = v4[9];
  if ( v6 >= 0 && v6 < (unsigned int)Arrays::LevelList::size )
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  else
    v7 = "na";
  fprintf(s, "\t    Level     : %s\n", v7);
  v8 = v4[8];
  if ( v8 < 0 || v8 >= (unsigned int)Arrays::Charater_Templates::size )
    v9 = "na";
  else
    v9 = *(const char **)(Arrays::Charater_Templates::m_memberNames + 4 * v8);
  fprintf(s, "\t    EnemyType : %s\n", v9);
  fprintf(s, "\t    Qty       : %d\n", *((_DWORD *)a1 + 11));
  fprintf(s, "\t    CurrQty   : %d\n\n", *((_DWORD *)a1 + 8));
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47b364 Objective_Automatic::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall Objective_Automatic::DBG_TraceDetailedObjectiveInformation(Objective_Automatic *this, __sFILE *s)
{
  char *ConstantName; // r2

  fwrite("\t  v2QuestAutomatic\n", 1u, 0x14u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestObjectiveType",
                   *(_DWORD *)(*((_DWORD *)this + 3) + 4));
  return fprintf(s, "\t    Type : %s\n\n", ConstantName);
}


// ===== 47b3dc Objective_MoveInZone::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall Objective_MoveInZone::DBG_TraceDetailedObjectiveInformation(Objective_MoveInZone *this, __sFILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2

  v4 = *((int **)this + 3);
  fwrite("\t  v2QuestMoveInZone\n", 1u, 0x15u, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  fprintf(s, "\t    Object      : %d\n", v4[7]);
  v6 = v4[8];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(this, s);
}


// ===== 47b4d4 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r7
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v8; // r3
  const char *v9; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  ObjectiveTemplate_KillEnemies\n", 1u, 0x21u, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type      : %s\n", ConstantName);
  v6 = v4[8];
  if ( v6 >= 0 && v6 < (unsigned int)Arrays::LevelList::size )
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  else
    v7 = "na";
  fprintf(s, "\t    Level     : %s\n", v7);
  v8 = v4[9];
  if ( v8 < 0 || v8 >= (unsigned int)Arrays::CharacterTable::size )
    v9 = "na";
  else
    v9 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v8);
  fprintf(s, "\t    EnemyType : %s\n", v9);
  fprintf(s, "\t    Qty       : %d\n", *((_DWORD *)a1 + 11));
  fprintf(s, "\t    CurrQty   : %d\n\n", *((_DWORD *)a1 + 8));
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47b640 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r7
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v8; // r3
  const char *v9; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  ObjectiveTemplate_KillEnemies\n", 1u, 0x21u, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type      : %s\n", ConstantName);
  v6 = v4[9];
  if ( v6 >= 0 && v6 < (unsigned int)Arrays::LevelList::size )
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  else
    v7 = "na";
  fprintf(s, "\t    Level     : %s\n", v7);
  v8 = v4[8];
  if ( v8 < 0 || v8 >= (unsigned int)Arrays::CharacterTable::size )
    v9 = "na";
  else
    v9 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v8);
  fprintf(s, "\t    EnemyType : %s\n", v9);
  fprintf(s, "\t    Qty       : %d\n", *((_DWORD *)a1 + 11));
  fprintf(s, "\t    CurrQty   : %d\n\n", *((_DWORD *)a1 + 8));
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47b7ac Objective::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall Objective::DBG_TraceDetailedObjectiveInformation(Objective *this, __sFILE *s)
{
  char *ConstantName; // r2

  fwrite("\t  Unimplemented Trace for Objective\n", 1u, 0x25u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestObjectiveType",
                   *((_DWORD *)this + 1));
  return fprintf(s, "\t    Type : %s\n\n", ConstantName);
}


// ===== 47b820 TestCharPropId::Compare(int,Character *) =====
bool __fastcall TestCharPropId::Compare(TestCharPropId *this, const char **a2, Character *a3)
{
  return a2 && Character::SafeGetCharPropsId(a2) == (_DWORD)this;
}


// ===== 47b850 Objective_MoveInZone::GetPositions(Vector3DFList &) =====
int *__fastcall Objective_MoveInZone::GetPositions(Objective_MoveInZone *this, Vector3DFList *a2)
{
  _DWORD *v2; // r4
  int v4; // r8
  int v5; // r2
  int v6; // r3
  int *result; // r0
  int v8; // r10
  _DWORD *v9; // r4
  int v10; // r1
  _DWORD *v11; // r2
  int v12; // r2
  int v13; // r3
  int v14; // r3
  _DWORD v15[3]; // [sp+4h] [bp-28h] BYREF
  char *v16[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v17[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = *((_DWORD **)this + 8);
  v4 = *((_DWORD *)this + 3);
  if ( v2 )
  {
    Vector3DFList::setNew(a2, 1);
    v5 = v2[89];
    v6 = v2[90];
    v17[0] = v2[88];
    v17[1] = v5;
    v17[2] = v6;
    return Vector3DFList::add((int *)a2, v17);
  }
  else
  {
    Vector3DFList::setNew(a2, 1);
    v8 = dword_99F764;
    Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    result = (int *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v9 = *(_DWORD **)(v8 + 20);
    while ( (_DWORD *)(v8 + 12) != v9 )
    {
      v10 = v9[11];
      if ( v10 )
      {
        ObjectBase::GetHandle((ObjectBase *)v16, v10);
        result = (int *)ObjectHandle::GetObject(v16, 0);
        if ( result )
        {
          if ( result[61] == 14 && *(_DWORD *)(v4 + 32) == result[501] )
          {
            v12 = result[89];
            v13 = result[90];
            v15[0] = result[88];
            v15[1] = v12;
            v15[2] = v13;
            return Vector3DFList::add((int *)a2, v15);
          }
        }
      }
      v11 = (_DWORD *)v9[3];
      if ( v11 )
      {
        while ( v11[2] )
          v11 = (_DWORD *)v11[2];
        v9 = v11;
      }
      else
      {
        v14 = v9[1];
        if ( v9 == *(_DWORD **)(v14 + 12) )
        {
          do
          {
            v9 = (_DWORD *)v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( *(_DWORD **)(v14 + 12) == v9 );
          v11 = (_DWORD *)v9[3];
        }
        if ( v11 != (_DWORD *)v14 )
          v9 = (_DWORD *)v14;
      }
    }
  }
  return result;
}


// ===== 47b9b8 Objective::GetDescStr(void) =====
char *__fastcall Objective::GetDescStr(Objective *this)
{
  Objective *v2; // r0
  StringManager *v3; // r4
  int DescStrId; // r1

  if ( (int)Objective::GetDescStrId(this) <= 0 )
    return "";
  v2 = this;
  v3 = (StringManager *)dword_99F760;
  DescStrId = Objective::GetDescStrId(v2);
  return (char *)StringManager::getString(v3, DescStrId);
}


// ===== 47ba10 Objective::SetIsCompleted(void) =====
int __fastcall Objective::SetIsCompleted(int this)
{
  int v1; // r2
  int v2; // r1

  if ( !*(_BYTE *)(this + 20) )
  {
    v1 = *(_DWORD *)(this + 12);
    *(_BYTE *)(this + 20) = 1;
    v2 = *(_DWORD *)(v1 + 12);
    if ( v2 >= 0 )
      return ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v2 + dword_9A5FE4, -1, 0);
  }
  return this;
}


// ===== 47ba5c Objective_GatherLoot::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall Objective_GatherLoot::handleEvent(Objective_GatherLoot *this, const IEvent *a2, const EventManager *a3)
{
  bool v5; // zf
  int v6; // r3
  int v7; // r2

  if ( *(_DWORD *)(*((_DWORD *)this + 3) + 36) == *((_DWORD *)a2 + 6) && *((_DWORD *)this + 4) == *((_DWORD *)a2 + 2) )
  {
    Objective_GatherLoot::InitWithCurrentQty(this);
    v5 = *((_BYTE *)a2 + 17) == 0;
    if ( *((_BYTE *)a2 + 17) )
    {
      v6 = *((_DWORD *)a2 + 5);
    }
    else
    {
      *((_BYTE *)a2 + 16) = 1;
      v6 = *((_DWORD *)this + 8);
    }
    if ( v5 )
      *((_DWORD *)a2 + 5) = v6;
    v7 = *((_DWORD *)this + 3);
    if ( v5 )
      v6 = *((_DWORD *)this + 8);
    else
      *((_DWORD *)this + 8) = v6;
    if ( *(_DWORD *)(v7 + 40) <= v6 )
      Objective::SetIsCompleted((int)this);
  }
  return 0;
}


// ===== 47bae4 Objective_GatherLoot::Compile(void) =====
ItemInstance *__fastcall Objective_GatherLoot::Compile(ItemInstance *this)
{
  _DWORD *v1; // r5
  int v2; // r3
  int v3; // r6
  ItemInstance *v4; // r7
  int v5; // r3
  int v6; // r3

  v1 = *((_DWORD **)this + 3);
  v2 = v1[9];
  v3 = (int)this;
  if ( v2 == -1 )
  {
    if ( gAssertLevel == 2 )
      goto LABEL_21;
    if ( gAssertLevel != 1 )
    {
LABEL_10:
      if ( gAssertLevel != 2 )
      {
        if ( gAssertLevel == 1 )
        {
          this = (ItemInstance *)fprintf(
                                   (FILE *)&_sF + 2,
                                   "ASSERT(%s) FAILED: %s:%d\n",
                                   "objData->Loot > 0",
                                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
                                   987);
          v2 = v1[9];
        }
LABEL_13:
        if ( v2 == -1 )
          return this;
        goto LABEL_3;
      }
LABEL_21:
      dword_0 = 0;
      v2 = v1[9];
      goto LABEL_13;
    }
    this = (ItemInstance *)fprintf(
                             (FILE *)&_sF + 2,
                             "ASSERT(%s) FAILED: %s:%d\n",
                             "objData->Loot != -1",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
                             986);
    v2 = v1[9];
  }
  if ( v2 <= 0 )
    goto LABEL_10;
LABEL_3:
  if ( (int)v1[10] > 0 )
  {
    this = (ItemInstance *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v4 = this;
    if ( !this )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        this = (ItemInstance *)fprintf(
                                 (FILE *)&_sF + 2,
                                 "ASSERT(%s) FAILED: %s:%d\n",
                                 "lvl != 0",
                                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp",
                                 995);
      }
    }
    v5 = v1[8];
    if ( v5 == -1 || v5 == *((_DWORD *)v4 + 15) )
    {
      this = Objective_GatherLoot::InitWithCurrentQty((Objective_GatherLoot *)v3);
      v6 = *(_DWORD *)(v3 + 12);
      *(_BYTE *)(v3 + 8) = 1;
      if ( *(_DWORD *)(v3 + 32) >= *(_DWORD *)(v6 + 40) )
        return (ItemInstance *)Objective::SetIsCompleted(v3);
    }
  }
  return this;
}


// ===== 47bcd4 Objective_MoveInZone::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall Objective_MoveInZone::handleEvent(Objective_MoveInZone *this, const IEvent *a2, const EventManager *a3)
{
  int v5; // r7
  Character *v6; // r6
  int v8; // r8

  v5 = *((_DWORD *)this + 3);
  v6 = *((Character **)a2 + 2);
  if ( *((_DWORD *)a2 + 6) != *((_DWORD *)this + 8) )
    return 0;
  if ( v6 || !*((_BYTE *)a2 + 17) )
  {
    v8 = *(_DWORD *)(v5 + 36);
    if ( v8 != -1 )
      goto LABEL_5;
    if ( !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 40))(*((_DWORD *)a2 + 2)) )
    {
      v8 = *(_DWORD *)(v5 + 36);
LABEL_5:
      if ( Character::SafeGetCharPropsId(v6) != v8 )
        return 0;
    }
  }
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective_MoveInZone *))(*(_DWORD *)this + 28))(this);
  if ( !*((_BYTE *)a2 + 17) )
    *((_BYTE *)a2 + 16) = 1;
  return 0;
}


// ===== 47bd80 Objective_Automatic::Compile(void) =====
int __fastcall Objective_Automatic::Compile(Objective_Automatic *this)
{
  *((_BYTE *)this + 8) = 1;
  return Objective::SetIsCompleted(this);
}


// ===== 47bd8c Objective::Objective(void) =====
void __fastcall Objective::Objective(Objective *this)
{
  *(_DWORD *)this = off_969948;
  *((_DWORD *)this + 1) = PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "v2QuestObjectiveType",
                            "Invalid");
  *((_BYTE *)this + 20) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
}


// ===== 47be00 Objective::Objective(void) =====
void __fastcall Objective::Objective(Objective *this)
{
  *(_DWORD *)this = off_969948;
  *((_DWORD *)this + 1) = PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "v2QuestObjectiveType",
                            "Invalid");
  *((_BYTE *)this + 20) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
}


// ===== 47be74 GetObjectiveImplInstance<Objective_GatherLoot>(void) =====
Objective *GetObjectiveImplInstance<Objective_GatherLoot>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x24u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_9692A0;
  *((_DWORD *)v0 + 6) = off_9692E4;
  return v0;
}


// ===== 47bec4 GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x30u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 11) = 0;
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969350;
  *((_DWORD *)v0 + 6) = off_969394;
  *((_DWORD *)v0 + 9) = 0;
  *((_DWORD *)v0 + 10) = 0;
  return v0;
}


// ===== 47bf20 GetObjectiveImplInstance<Objective_MoveInZone>(void) =====
Objective *GetObjectiveImplInstance<Objective_MoveInZone>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x24u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969700;
  *((_DWORD *)v0 + 6) = off_969744;
  return v0;
}


// ===== 47bf70 GetObjectiveImplInstance<Objective_Automatic>(void) =====
_DWORD *GetObjectiveImplInstance<Objective_Automatic>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x18u, 0);
  *(_BYTE *)(v0 + 20) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  v1 = (_DWORD *)v0;
  Objective::Objective((Objective *)v0);
  *v1 = off_969610;
  return v1;
}


// ===== 47bfcc Vector3DFList::~Vector3DFList() =====
void __fastcall Vector3DFList::~Vector3DFList(Vector3DFList *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *(void **)this;
  if ( v2 )
  {
    CustomFree(v2);
    *(_DWORD *)this = 0;
  }
  v3 = *((void **)this + 1);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
  PFObject::~PFObject((Vector3DFList *)((char *)this + 36));
}


// ===== 47c014 Vector3DFList::~Vector3DFList() =====
void __fastcall Vector3DFList::~Vector3DFList(Vector3DFList *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *(void **)this;
  if ( v2 )
  {
    CustomFree(v2);
    *(_DWORD *)this = 0;
  }
  v3 = *((void **)this + 1);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
  PFObject::~PFObject((Vector3DFList *)((char *)this + 36));
}


// ===== 47c05c Vector3DFList::Vector3DFList(int) =====
void __fastcall Vector3DFList::Vector3DFList(Vector3DFList *this, int a2)
{
  int v3; // r7
  _DWORD *v5; // r0
  _DWORD *v6; // r3

  v3 = 0;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  PFObject::PFObject((Vector3DFList *)((char *)this + 36));
  v5 = CustomAlloc(12 * a2);
  if ( a2 )
  {
    v6 = v5;
    do
    {
      ++v3;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
    }
    while ( v3 != a2 );
  }
  *(_DWORD *)this = v5;
  *((_DWORD *)this + 1) = CustomAlloc(4 * a2);
}


// ===== 47c0d8 Vector3DFList::Vector3DFList(int) =====
void __fastcall Vector3DFList::Vector3DFList(Vector3DFList *this, int a2)
{
  int v3; // r7
  _DWORD *v5; // r0
  _DWORD *v6; // r3

  v3 = 0;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  PFObject::PFObject((Vector3DFList *)((char *)this + 36));
  v5 = CustomAlloc(12 * a2);
  if ( a2 )
  {
    v6 = v5;
    do
    {
      ++v3;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
    }
    while ( v3 != a2 );
  }
  *(_DWORD *)this = v5;
  *((_DWORD *)this + 1) = CustomAlloc(4 * a2);
}


// ===== 47c154 Vector3DFList::Vector3DFList(void) =====
void __fastcall Vector3DFList::Vector3DFList(Vector3DFList *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  PFObject::PFObject((Vector3DFList *)((char *)this + 36));
}


// ===== 47c190 Vector3DFList::Vector3DFList(void) =====
void __fastcall Vector3DFList::Vector3DFList(Vector3DFList *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  PFObject::PFObject((Vector3DFList *)((char *)this + 36));
}


// ===== 47c1cc ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47c3d4 `global constructor keyed to'.._.._sources_Game_Progression_Objective.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Progression_Objective.cpp(CMessage *a1)
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

  dword_9A61B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A61B4 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A61BD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A61BE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A61BF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A61C0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A61C1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A61C2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A61C3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A61C4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A61C5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A61C6 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A61C7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A61C8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A61C9 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A61CA = result;
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
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<VisualFXManager>::s_inst,
             (int)VisualFXManager::~VisualFXManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 47c6b4 Objective_Automatic::~Objective_Automatic() =====
void __fastcall Objective_Automatic::~Objective_Automatic(Objective_Automatic *this)
{
  *(_DWORD *)this = off_969610;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47c6f0 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::GetPositions(Vector3DFList &) =====
float __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::GetPositions(
        float result,
        Vector3DFList *this)
{
  int v3; // r1
  int v4; // r4
  Character *character_660; // r3
  int v6; // r12
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r10
  int v11; // r8
  int v12; // r9
  bool v13; // zf
  float v14; // r2
  float v15; // r3
  float v16[3]; // [sp+0h] [bp-18h] BYREF
  int v17[3]; // [sp+Ch] [bp-Ch] BYREF

  v3 = *(_DWORD *)(LODWORD(result) + 44) - *(_DWORD *)(LODWORD(result) + 32);
  v4 = *(_DWORD *)(LODWORD(result) + 12);
  if ( v3 > 0 )
  {
    Vector3DFList::setNew(this, v3);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    v6 = *((_DWORD *)character_660 + 88);
    v7 = *((_DWORD *)character_660 + 89);
    v8 = *((_DWORD *)character_660 + 90);
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    result = COERCE_FLOAT(Vector3DFList::setCharacterPosition(this, v17));
    v10 = dword_99F764 + 96;
    v9 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) != v9 )
    {
      do
      {
        v11 = v9[2];
        v12 = *(_DWORD *)(v4 + 36);
        result = *(float *)&v11;
        if ( *(float *)&v11 != 0.0
          && (result = COERCE_FLOAT(Character::SafeGetCharPropsId((const char **)v11)), v12 == LODWORD(result))
          && (v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 52))(v11) == 0, result = *(float *)&this, v13) )
        {
          v14 = *(float *)(v11 + 356);
          v15 = *(float *)(v11 + 360);
          v16[0] = *(float *)(v11 + 352);
          v16[1] = v14;
          v16[2] = v15;
          result = Vector3DFList::addClosest((float *)this, v16);
          v9 = (_DWORD *)*v9;
        }
        else
        {
          v9 = (_DWORD *)*v9;
        }
      }
      while ( (_DWORD *)v10 != v9 );
    }
  }
  return result;
}


// ===== 47c7f4 Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(int,int) [clone] =====
int __fastcall Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(Character *this, int a2)
{
  int v3; // r7
  int *v4; // r4
  int v5; // r5

  v3 = 0;
  v5 = dword_99F764 + 96;
  v4 = *(int **)(dword_99F764 + 96);
  if ( v4 != (int *)(dword_99F764 + 96) )
  {
    do
    {
      if ( v4[2] && this == (Character *)Character::SafeGetCharPropsId((const char **)v4[2]) )
        ++v3;
      v4 = (int *)*v4;
    }
    while ( v4 != (int *)v5 );
  }
  if ( v3 )
    return v3;
  else
    return Character::HasCharOIDInCache(this, a2);
}


// ===== 47c868 Objective_MoveInZone::Compile(void) =====
Character *__fastcall Objective_MoveInZone::Compile(Objective_MoveInZone *this)
{
  int v1; // r6
  GameObject *v3; // r0
  Character *result; // r0
  int v5; // r1
  _BYTE v6[12]; // [sp+Ch] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 3);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v1 + 28), -1, nullptr, 0);
  v3 = (GameObject *)ObjectHandle::operator GameObject *(v6);
  if ( !v3 || (result = (Character *)GameObject::MeetCondition(v3)) != nullptr )
  {
    result = (Character *)ObjectHandle::GetObject((ObjectHandle *)v6, 0);
    *((_DWORD *)this + 8) = result;
    if ( result )
    {
      result = *(Character **)(v1 + 36);
      if ( result == (Character *)-1
        || (result = (Character *)Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(result, v5)) != nullptr )
      {
        *((_BYTE *)this + 8) = 1;
      }
    }
  }
  else
  {
    *((_DWORD *)this + 8) = 0;
  }
  return result;
}


// ===== 47c914 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::GetPositions(Vector3DFList &) =====
float __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::GetPositions(
        float result,
        Vector3DFList *this)
{
  int v3; // r1
  int v4; // r4
  Character *character_660; // r3
  int v6; // r12
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r10
  int v11; // r8
  int v12; // r9
  bool v13; // zf
  float v14; // r2
  float v15; // r3
  float v16[3]; // [sp+0h] [bp-18h] BYREF
  int v17[3]; // [sp+Ch] [bp-Ch] BYREF

  v3 = *(_DWORD *)(LODWORD(result) + 44) - *(_DWORD *)(LODWORD(result) + 32);
  v4 = *(_DWORD *)(LODWORD(result) + 12);
  if ( v3 > 0 )
  {
    Vector3DFList::setNew(this, v3);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    v6 = *((_DWORD *)character_660 + 88);
    v7 = *((_DWORD *)character_660 + 89);
    v8 = *((_DWORD *)character_660 + 90);
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    result = COERCE_FLOAT(Vector3DFList::setCharacterPosition(this, v17));
    v10 = dword_99F764 + 96;
    v9 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) != v9 )
    {
      do
      {
        v11 = v9[2];
        v12 = *(_DWORD *)(v4 + 36);
        result = *(float *)&v11;
        if ( *(float *)&v11 != 0.0
          && (result = COERCE_FLOAT(Character::SafeGetCharPropsTemplateId((Character *)v11)), v12 == LODWORD(result))
          && (v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 52))(v11) == 0, result = *(float *)&this, v13) )
        {
          v14 = *(float *)(v11 + 356);
          v15 = *(float *)(v11 + 360);
          v16[0] = *(float *)(v11 + 352);
          v16[1] = v14;
          v16[2] = v15;
          result = Vector3DFList::addClosest((float *)this, v16);
          v9 = (_DWORD *)*v9;
        }
        else
        {
          v9 = (_DWORD *)*v9;
        }
      }
      while ( (_DWORD *)v10 != v9 );
    }
  }
  return result;
}


// ===== 47ca18 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::GetPositions(Vector3DFList &) =====
float __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::GetPositions(
        float result,
        Vector3DFList *this)
{
  int v3; // r1
  int v4; // r4
  Character *character_660; // r3
  int v6; // r12
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r10
  int v11; // r8
  int v12; // r9
  bool v13; // zf
  float v14; // r2
  float v15; // r3
  float v16[3]; // [sp+0h] [bp-18h] BYREF
  int v17[3]; // [sp+Ch] [bp-Ch] BYREF

  v3 = *(_DWORD *)(LODWORD(result) + 44) - *(_DWORD *)(LODWORD(result) + 32);
  v4 = *(_DWORD *)(LODWORD(result) + 12);
  if ( v3 > 0 )
  {
    Vector3DFList::setNew(this, v3);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    v6 = *((_DWORD *)character_660 + 88);
    v7 = *((_DWORD *)character_660 + 89);
    v8 = *((_DWORD *)character_660 + 90);
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    result = COERCE_FLOAT(Vector3DFList::setCharacterPosition(this, v17));
    v10 = dword_99F764 + 96;
    v9 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) != v9 )
    {
      do
      {
        v11 = v9[2];
        v12 = *(_DWORD *)(v4 + 32);
        result = *(float *)&v11;
        if ( *(float *)&v11 != 0.0
          && (result = COERCE_FLOAT(Character::SafeGetCharPropsId((const char **)v11)), v12 == LODWORD(result))
          && (v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 52))(v11) == 0, result = *(float *)&this, v13) )
        {
          v14 = *(float *)(v11 + 356);
          v15 = *(float *)(v11 + 360);
          v16[0] = *(float *)(v11 + 352);
          v16[1] = v14;
          v16[2] = v15;
          result = Vector3DFList::addClosest((float *)this, v16);
          v9 = (_DWORD *)*v9;
        }
        else
        {
          v9 = (_DWORD *)*v9;
        }
      }
      while ( (_DWORD *)v10 != v9 );
    }
  }
  return result;
}


// ===== 47cb1c ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::GetPositions(Vector3DFList &) =====
float __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::GetPositions(
        float result,
        Vector3DFList *this)
{
  int v3; // r1
  int v4; // r4
  Character *character_660; // r3
  int v6; // r12
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r10
  int v11; // r8
  int v12; // r9
  bool v13; // zf
  float v14; // r2
  float v15; // r3
  float v16[3]; // [sp+0h] [bp-18h] BYREF
  int v17[3]; // [sp+Ch] [bp-Ch] BYREF

  v3 = *(_DWORD *)(LODWORD(result) + 44) - *(_DWORD *)(LODWORD(result) + 32);
  v4 = *(_DWORD *)(LODWORD(result) + 12);
  if ( v3 > 0 )
  {
    Vector3DFList::setNew(this, v3);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    v6 = *((_DWORD *)character_660 + 88);
    v7 = *((_DWORD *)character_660 + 89);
    v8 = *((_DWORD *)character_660 + 90);
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    result = COERCE_FLOAT(Vector3DFList::setCharacterPosition(this, v17));
    v10 = dword_99F764 + 96;
    v9 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) != v9 )
    {
      do
      {
        v11 = v9[2];
        v12 = *(_DWORD *)(v4 + 32);
        result = *(float *)&v11;
        if ( *(float *)&v11 != 0.0
          && (result = COERCE_FLOAT(Character::SafeGetCharPropsTemplateId((Character *)v11)), v12 == LODWORD(result))
          && (v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 52))(v11) == 0, result = *(float *)&this, v13) )
        {
          v14 = *(float *)(v11 + 356);
          v15 = *(float *)(v11 + 360);
          v16[0] = *(float *)(v11 + 352);
          v16[1] = v14;
          v16[2] = v15;
          result = Vector3DFList::addClosest((float *)this, v16);
          v9 = (_DWORD *)*v9;
        }
        else
        {
          v9 = (_DWORD *)*v9;
        }
      }
      while ( (_DWORD *)v10 != v9 );
    }
  }
  return result;
}


// ===== 47cc20 Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(int,int) [clone] =====
int __fastcall Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(Character *this, int a2)
{
  int v3; // r8
  int *v4; // r4
  int v5; // r5

  v3 = 0;
  v5 = dword_99F764 + 96;
  v4 = *(int **)(dword_99F764 + 96);
  if ( v4 != (int *)(dword_99F764 + 96) )
  {
    do
    {
      if ( v4[2] && this == (Character *)Character::SafeGetCharPropsTemplateId((Character *)v4[2]) )
        ++v3;
      v4 = (int *)*v4;
    }
    while ( v4 != (int *)v5 );
  }
  if ( v3 || TestCharTemplate::Compare != TestCharPropId::Compare )
    return v3;
  else
    return Character::HasCharOIDInCache(this, a2);
}


// ===== 47ccb4 `non-virtual thunk to'Objective_EventReceiver::~Objective_EventReceiver() =====
void __fastcall `non-virtual thunk to'Objective_EventReceiver::~Objective_EventReceiver(Objective_EventReceiver *this)
{
  Objective_EventReceiver::~Objective_EventReceiver((Objective_EventReceiver *)((char *)this - 24));
}


// ===== 47ccbc Objective_EventReceiver::~Objective_EventReceiver() =====
void __fastcall Objective_EventReceiver::~Objective_EventReceiver(Objective_EventReceiver *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47cd0c `non-virtual thunk to'Objective_TalkToNPC::~Objective_TalkToNPC() =====
void __fastcall `non-virtual thunk to'Objective_TalkToNPC::~Objective_TalkToNPC(Objective_TalkToNPC *this)
{
  Objective_TalkToNPC::~Objective_TalkToNPC((Objective_TalkToNPC *)((char *)this - 24));
}


// ===== 47cd14 Objective_TalkToNPC::~Objective_TalkToNPC() =====
void __fastcall Objective_TalkToNPC::~Objective_TalkToNPC(Objective_TalkToNPC *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47cd64 `non-virtual thunk to'Objective_Qty::~Objective_Qty() =====
void __fastcall `non-virtual thunk to'Objective_Qty::~Objective_Qty(Objective_Qty *this)
{
  Objective_Qty::~Objective_Qty((Objective_Qty *)((char *)this - 24));
}


// ===== 47cd6c Objective_Qty::~Objective_Qty() =====
void __fastcall Objective_Qty::~Objective_Qty(Objective_Qty *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47cdbc `non-virtual thunk to'Objective_MoveInZone::~Objective_MoveInZone() =====
void __fastcall `non-virtual thunk to'Objective_MoveInZone::~Objective_MoveInZone(Objective_MoveInZone *this)
{
  Objective_MoveInZone::~Objective_MoveInZone((Objective_MoveInZone *)((char *)this - 24));
}


// ===== 47cdc4 Objective_MoveInZone::~Objective_MoveInZone() =====
void __fastcall Objective_MoveInZone::~Objective_MoveInZone(Objective_MoveInZone *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47ce14 `non-virtual thunk to'Objective_GatherLoot::~Objective_GatherLoot() =====
void __fastcall `non-virtual thunk to'Objective_GatherLoot::~Objective_GatherLoot(Objective_GatherLoot *this)
{
  Objective_GatherLoot::~Objective_GatherLoot((Objective_GatherLoot *)((char *)this - 24));
}


// ===== 47ce1c Objective_GatherLoot::~Objective_GatherLoot() =====
void __fastcall Objective_GatherLoot::~Objective_GatherLoot(Objective_GatherLoot *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47ce6c `non-virtual thunk to'Objective_SavedQty::~Objective_SavedQty() =====
void __fastcall `non-virtual thunk to'Objective_SavedQty::~Objective_SavedQty(Objective_SavedQty *this)
{
  Objective_SavedQty::~Objective_SavedQty((Objective_SavedQty *)((char *)this - 24));
}


// ===== 47ce74 Objective_SavedQty::~Objective_SavedQty() =====
void __fastcall Objective_SavedQty::~Objective_SavedQty(Objective_SavedQty *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
  CustomFree(this);
}


// ===== 47cec4 GetObjectiveImplInstance<Objective_TalkToNPC>(void) =====
Objective *GetObjectiveImplInstance<Objective_TalkToNPC>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x2Cu, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 9) = -1;
  *(_DWORD *)v0 = off_969650;
  *((_DWORD *)v0 + 6) = off_969694;
  *((_DWORD *)v0 + 10) = 0;
  *((_DWORD *)v0 + 8) = 0;
  return v0;
}


// ===== 47cf20 GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x28u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969758;
  *((_DWORD *)v0 + 6) = off_96979C;
  *((_DWORD *)v0 + 9) = -1;
  return v0;
}


// ===== 47cf78 GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x28u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_9697B0;
  *((_DWORD *)v0 + 6) = off_9697F4;
  *((_DWORD *)v0 + 9) = -1;
  return v0;
}


// ===== 47cfd0 GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x30u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 11) = 0;
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969808;
  *((_DWORD *)v0 + 6) = off_96984C;
  *((_DWORD *)v0 + 9) = 0;
  *((_DWORD *)v0 + 10) = 0;
  return v0;
}


// ===== 47d02c GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x30u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 11) = 0;
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969860;
  *((_DWORD *)v0 + 6) = off_9698A4;
  *((_DWORD *)v0 + 9) = 0;
  *((_DWORD *)v0 + 10) = 0;
  return v0;
}


// ===== 47d088 GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x30u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 11) = 0;
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969458;
  *((_DWORD *)v0 + 6) = off_96949C;
  *((_DWORD *)v0 + 9) = 0;
  *((_DWORD *)v0 + 10) = 0;
  return v0;
}


// ===== 47d0e4 GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x28u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969508;
  *((_DWORD *)v0 + 6) = off_96954C;
  *((_DWORD *)v0 + 9) = -1;
  return v0;
}


// ===== 47d13c GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x28u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_969560;
  *((_DWORD *)v0 + 6) = off_9695A4;
  *((_DWORD *)v0 + 9) = -1;
  return v0;
}


// ===== 47d194 GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>>(void) =====
Objective *GetObjectiveImplInstance<ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>>()
{
  Objective *v0; // r4

  v0 = (Objective *)operator new(0x28u, 0);
  Objective::Objective(v0);
  *((_DWORD *)v0 + 8) = 0;
  *(_DWORD *)v0 = off_9695B8;
  *((_DWORD *)v0 + 6) = off_9695FC;
  *((_DWORD *)v0 + 9) = -1;
  return v0;
}


// ===== 47d1ec `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        int a1)
{
  return ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(a1 - 24);
}


// ===== 47d1f4 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
Objective *__fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d23c `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d244 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d28c `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d294 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d2dc `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        int a1)
{
  return ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(a1 - 24);
}


// ===== 47d2e4 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
Objective *__fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d32c `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d334 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d37c `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d384 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d3cc `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d3d4 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d41c `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d424 ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d46c `non-virtual thunk to'Objective_TalkToNPC::~Objective_TalkToNPC() =====
void __fastcall `non-virtual thunk to'Objective_TalkToNPC::~Objective_TalkToNPC(Objective_TalkToNPC *this)
{
  Objective_TalkToNPC::~Objective_TalkToNPC((Objective_TalkToNPC *)((char *)this - 24));
}


// ===== 47d474 Objective_TalkToNPC::~Objective_TalkToNPC() =====
void __fastcall Objective_TalkToNPC::~Objective_TalkToNPC(Objective_TalkToNPC *this)
{
  *(_DWORD *)this = off_9692F8;
  *((_DWORD *)this + 6) = off_95C330;
  Objective::~Objective(this);
}


// ===== 47d4bc `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d4c4 ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d50c `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d514 ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d55c `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d564 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d5ac `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d5b4 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  return a1;
}


// ===== 47d5fc ItemInventory::UnregisterQuestGatheringItemId(int) =====
void __fastcall ItemInventory::UnregisterQuestGatheringItemId(ItemInventory *this, int a2)
{
  char *v2; // r4
  char *v3; // r5
  int v4; // r3
  int v5; // r3
  _DWORD *v6; // r2

  v3 = (char *)this + 48;
  v2 = *((char **)this + 12);
  if ( v2 != (char *)this + 48 )
  {
    while ( a2 != *((_DWORD *)v2 + 2) )
    {
      v2 = *(char **)v2;
      if ( v3 == v2 )
      {
        v2 = (char *)this + 48;
        break;
      }
    }
  }
  if ( v3 != v2 )
    goto LABEL_6;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "iter != m_activeQuestGatheredItemIds.end()",
      "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Items/ItemInventory.h",
      335);
  }
  if ( v3 != v2 )
  {
LABEL_6:
    v4 = (unsigned __int8)(v2[12] - 1);
    v2[12] = v4;
    if ( !v4 )
    {
      v5 = *(_DWORD *)v2;
      v6 = *((_DWORD **)v2 + 1);
      *v6 = *(_DWORD *)v2;
      *(_DWORD *)(v5 + 4) = v6;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x10u);
    }
  }
}


// ===== 47d6fc Objective_GatherLoot::Unregister(void) =====
void __fastcall Objective_GatherLoot::Unregister(Objective_GatherLoot *this)
{
  Objective_EventReceiver::Unregister(this);
  if ( *((_BYTE *)this + 8) )
    ItemInventory::UnregisterQuestGatheringItemId(
      (ItemInventory *)(*((_DWORD *)this + 4) + 892),
      *(_DWORD *)(*((_DWORD *)this + 3) + 36));
}


// ===== 47d730 `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d738 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47d788 `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47d790 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47d7e0 `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d7e8 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47d838 `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47d840 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47d890 `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith((Objective *)(a1 - 24));
}


// ===== 47d898 ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47d8e8 Objective_TalkToNPC::InstallObjectiveMarker(int,int) =====
int __fastcall Objective_TalkToNPC::InstallObjectiveMarker(int this, int a2, int a3)
{
  AnimatedFX **v3; // r5
  int v6; // r9
  _DWORD *v7; // r8
  int v8; // r10
  int v9; // r4
  int v10; // r1
  AnimatedFX *v11; // r0
  int v12; // r3
  int Animator; // r0
  int v14; // r0

  v3 = (AnimatedFX **)this;
  if ( *(_BYTE *)(this + 8) )
  {
    if ( *(_DWORD *)(*(_DWORD *)(this + 12) + 4) == 5 )
    {
      v6 = *(_DWORD *)(this + 36);
      v8 = dword_99F764 + 96;
      v7 = *(_DWORD **)(dword_99F764 + 96);
      if ( (_DWORD *)(dword_99F764 + 96) != v7 )
      {
        while ( 1 )
        {
          v9 = v7[2];
          this = Character::SafeGetCharPropsId((const char **)v9);
          if ( v6 == this )
            break;
          v7 = (_DWORD *)*v7;
          if ( (_DWORD *)v8 == v7 )
            return this;
        }
        if ( v9 )
        {
          if ( v3[10] )
            (*((void (__fastcall **)(AnimatedFX **))*v3 + 5))(v3);
          *(_BYTE *)(v9 + 762) = 1;
          *(_BYTE *)(v9 + 763) = a2 == 3;
          if ( a3 > 7 )
          {
            if ( a2 == 1 )
              v10 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 112);
            else
              v10 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 104);
          }
          else if ( a2 == 1 )
          {
            v10 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 108);
          }
          else
          {
            v10 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 100);
          }
          this = VisualFXManager::GrabAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, v10, nullptr);
          v3[10] = (AnimatedFX *)this;
          if ( this )
          {
            *(_DWORD *)(this + 40) = v9;
            AnimatedFX::SyncIrrData((AnimatedFX *)this, 1);
            v11 = v3[10];
            v12 = *((_DWORD *)v11 + 11);
            if ( v12 )
            {
              *(_DWORD *)(*(_DWORD *)(v12 + 8) + 516) = v9;
              v11 = v3[10];
            }
            AnimatedFX::SetVisible(v11, 1);
            Animator = AnimatedFX::GetAnimator(v3[10]);
            v14 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
            return (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 64))(v14, 1);
          }
        }
      }
    }
  }
  return this;
}


// ===== 47da6c Objective_TalkToNPC::RemoveObjectiveMarker(void) =====
int __fastcall Objective_TalkToNPC::RemoveObjectiveMarker(int this)
{
  int v1; // r4
  int v2; // r8
  _DWORD *v3; // r5
  int v4; // r7
  int v5; // r6
  AnimatedFX *v6; // r0
  int v7; // r3

  v1 = this;
  if ( *(_BYTE *)(this + 8) )
  {
    if ( *(_DWORD *)(*(_DWORD *)(this + 12) + 4) == 5 )
    {
      v2 = *(_DWORD *)(this + 36);
      v4 = dword_99F764 + 96;
      v3 = *(_DWORD **)(dword_99F764 + 96);
      if ( (_DWORD *)(dword_99F764 + 96) != v3 )
      {
        while ( 1 )
        {
          v5 = v3[2];
          this = Character::SafeGetCharPropsId((const char **)v5);
          if ( v2 == this )
            break;
          v3 = (_DWORD *)*v3;
          if ( (_DWORD *)v4 == v3 )
            return this;
        }
        if ( v5 )
        {
          *(_BYTE *)(v5 + 763) = 0;
          *(_BYTE *)(v5 + 762) = 0;
          this = *(_DWORD *)(v1 + 40);
          if ( this )
          {
            *(_DWORD *)(this + 40) = 0;
            AnimatedFX::SyncIrrData((AnimatedFX *)this, 1);
            v6 = *(AnimatedFX **)(v1 + 40);
            v7 = *((_DWORD *)v6 + 11);
            if ( v7 )
            {
              *(_DWORD *)(*(_DWORD *)(v7 + 8) + 516) = 0;
              v6 = *(AnimatedFX **)(v1 + 40);
            }
            return AnimatedFX::SetVisible(v6, 0);
          }
        }
      }
    }
  }
  return this;
}


// ===== 47db34 Objective_TalkToNPC::Register(void) =====
int __fastcall Objective_TalkToNPC::Register(Objective_TalkToNPC *this)
{
  int result; // r0
  int v3; // r7
  _DWORD *v4; // r4
  int v5; // r6
  int v6; // r5

  result = Objective_EventReceiver::Register(this);
  if ( *((_BYTE *)this + 8) )
  {
    if ( *(_DWORD *)(*((_DWORD *)this + 3) + 4) == 5 )
    {
      v3 = *((_DWORD *)this + 9);
      v5 = dword_99F764 + 96;
      v4 = *(_DWORD **)(dword_99F764 + 96);
      if ( (_DWORD *)(dword_99F764 + 96) != v4 )
      {
        while ( 1 )
        {
          v6 = v4[2];
          result = Character::SafeGetCharPropsId((const char **)v6);
          if ( v3 == result )
            break;
          v4 = (_DWORD *)*v4;
          if ( (_DWORD *)v5 == v4 )
            return result;
        }
        if ( v6 )
          *(_BYTE *)(v6 + 762) = 1;
      }
    }
  }
  return result;
}


// ===== 47dbc4 Objective_TalkToNPC::Unregister(void) =====
int __fastcall Objective_TalkToNPC::Unregister(Objective_TalkToNPC *this)
{
  int result; // r0
  int v3; // r7
  _DWORD *v4; // r4
  int v5; // r6
  int v6; // r5

  result = Objective_EventReceiver::Unregister(this);
  if ( *((_BYTE *)this + 8) )
  {
    if ( *(_DWORD *)(*((_DWORD *)this + 3) + 4) == 5 )
    {
      v3 = *((_DWORD *)this + 9);
      v5 = dword_99F764 + 96;
      v4 = *(_DWORD **)(dword_99F764 + 96);
      if ( (_DWORD *)(dword_99F764 + 96) != v4 )
      {
        while ( 1 )
        {
          v6 = v4[2];
          result = Character::SafeGetCharPropsId((const char **)v6);
          if ( v3 == result )
            break;
          v4 = (_DWORD *)*v4;
          if ( (_DWORD *)v5 == v4 )
            return result;
        }
        if ( v6 )
          *(_BYTE *)(v6 + 762) = 0;
      }
    }
  }
  return result;
}


// ===== 47dc54 `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47dc5c ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47dcac `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(a1 - 24);
}


// ===== 47dcb4 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47dd04 `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall `non-virtual thunk to'ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith(
        int a1)
{
  return ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith((Objective *)(a1 - 24));
}


// ===== 47dd0c ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith() =====
Objective *__fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::~ObjectiveTemplate_InteractWith(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47dd5c ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47df64 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47e16c ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47e374 ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47e57c ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::DBG_TraceDetailedObjectiveInformation(__sFILE *) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::DBG_TraceDetailedObjectiveInformation(
        Objective_EventReceiver *a1,
        FILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  int v6; // r3
  const char *v7; // r2
  int v9; // r11
  _DWORD *v10; // r8
  int v11; // r9
  const char **v12; // r10
  int v13; // r3
  const char *v14; // r2
  int v15; // r3
  const char *v16; // r2

  v4 = *((int **)a1 + 3);
  fwrite("\t  Objective_InteractWith\n", 1u, 0x1Au, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  if ( v4[1] == 5 )
  {
    v9 = v4[8];
    v11 = dword_99F764 + 96;
    v10 = *(_DWORD **)(dword_99F764 + 96);
    if ( (_DWORD *)(dword_99F764 + 96) == v10 )
      goto LABEL_11;
    while ( 1 )
    {
      v12 = (const char **)v10[2];
      if ( v9 == Character::SafeGetCharPropsId(v12) )
        break;
      v10 = (_DWORD *)*v10;
      if ( (_DWORD *)v11 == v10 )
        goto LABEL_11;
    }
    if ( !v12 )
    {
LABEL_11:
      v13 = v4[8];
      if ( v13 < 0 || v13 >= (unsigned int)Arrays::CharacterTable::size )
        v14 = "na";
      else
        v14 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v13);
      fprintf(s, "\t    Object      : %s(%d) => ??\n", v14, v13);
    }
    else
    {
      v15 = v4[8];
      if ( v15 < 0 || v15 >= (unsigned int)Arrays::CharacterTable::size )
        v16 = "na";
      else
        v16 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v15);
      fprintf(s, "\t    Object      : %s(%d) => %s\n", v16, v15, v12[17]);
    }
  }
  else
  {
    fprintf(s, "\t    Object      : %d\n", v4[8]);
  }
  v6 = v4[9];
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::LevelList::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * v6);
  fprintf(s, "\t    Level (OID) : %s\n\n", v7);
  return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(a1, s);
}


// ===== 47e784 `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47e78c ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47e7dc `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        int a1)
{
  return ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(a1 - 24);
}


// ===== 47e7e4 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter() =====
Objective *__fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillCharacter(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47e834 `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        int a1)
{
  return ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(a1 - 24);
}


// ===== 47e83c ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
Objective *__fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47e88c `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
int __fastcall `non-virtual thunk to'ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        int a1)
{
  return ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(a1 - 24);
}


// ===== 47e894 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies() =====
Objective *__fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::~ObjectiveTemplate_KillEnemies(
        Objective *a1)
{
  *(_DWORD *)a1 = off_9692F8;
  *((_DWORD *)a1 + 6) = off_95C330;
  Objective::~Objective(a1);
  CustomFree(a1);
  return a1;
}


// ===== 47e8e4 Objective::GetDesc(void) =====
Objective *__fastcall Objective::GetDesc(Objective *this, Objective *a2)
{
  char *DescStr; // r0

  DescStr = (char *)Objective::GetDescStr(a2);
  std::string::string((int)this, DescStr);
  return this;
}


// ===== 47e914 ObjectiveList::GetDesc(void) =====
std::string *__fastcall ObjectiveList::GetDesc(std::string *this, int *a2)
{
  int v3; // r3
  int v5; // r4
  int v6; // r8
  char *M_data; // r1
  char *M_finish; // r2
  int v9; // r1
  _DWORD v11[5]; // [sp+Ch] [bp-50h] BYREF
  void *__p; // [sp+20h] [bp-3Ch]
  _DWORD v13[5]; // [sp+24h] [bp-38h] BYREF
  char *v14; // [sp+38h] [bp-24h]
  std::string v15; // [sp+3Ch] [bp-20h] BYREF
  int v16; // [sp+54h] [bp-8h]

  v3 = _stack_chk_guard;
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  v16 = v3;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this, 0x10u);
  v5 = 0;
  *this->_M_finish = 0;
  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v15, 0x10u);
  *v15._M_finish = 0;
  std::string::string((int)v13, "\n");
  if ( *a2 > 0 )
  {
    v6 = 1;
    do
    {
      v9 = *(_DWORD *)(a2[1] + 4 * v5);
      (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)v9 + 36))(v11, v9);
      std::string::_M_assign(&v15, (const char *)__p, (const char *)v11[4]);
      if ( __p != v11 && __p )
      {
        if ( (unsigned int)(v11[0] - (_DWORD)__p) <= 0x80 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v11[0] - (_DWORD)__p);
        else
          CustomFree(__p);
      }
      M_data = v15._M_start_of_storage._M_data;
      M_finish = v15._M_finish;
      if ( v15._M_start_of_storage._M_data != v15._M_finish )
      {
        if ( !v6 )
        {
          std::string::_M_append(this, v14, (const char *)v13[4]);
          M_data = v15._M_start_of_storage._M_data;
          M_finish = v15._M_finish;
        }
        std::string::_M_append(this, M_data, M_finish);
        v6 = 0;
      }
      ++v5;
    }
    while ( *a2 > v5 );
  }
  if ( v14 != (char *)v13 && v14 )
  {
    if ( (unsigned int)(v13[0] - (_DWORD)v14) > 0x80 )
      CustomFree(v14);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v14, v13[0] - (_DWORD)v14);
  }
  if ( (std::string *)v15._M_start_of_storage._M_data != &v15 && v15._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v15._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v15._M_start_of_storage._M_data,
        v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data);
  }
  return this;
}


// ===== 47eaec Objective_GatherLoot::Register(void) =====
EventManager *__fastcall Objective_GatherLoot::Register(Objective_GatherLoot *this)
{
  EventManager *result; // r0
  int v3; // r6
  int v4; // r2
  int *v5; // r3
  int *v6; // r4
  int v7; // r5
  EventManager **v8; // r3
  size_t v9; // [sp+4h] [bp-4h] BYREF

  result = Objective_EventReceiver::Register(this);
  if ( *((_BYTE *)this + 8) )
  {
    v3 = *((_DWORD *)this + 4);
    v4 = *((_DWORD *)this + 3);
    v6 = (int *)(v3 + 940);
    v5 = *(int **)(v3 + 940);
    v7 = *(_DWORD *)(v4 + 36);
    if ( v5 != (int *)(v3 + 940) )
    {
      while ( v7 != v5[2] )
      {
        v5 = (int *)*v5;
        if ( v6 == v5 )
        {
          v5 = (int *)(v3 + 940);
          break;
        }
      }
    }
    if ( v6 == v5 )
    {
      v9 = 16;
      result = (EventManager *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v9);
      *((_BYTE *)result + 12) = 1;
      *((_DWORD *)result + 2) = v7;
      v8 = *(EventManager ***)(v3 + 944);
      *(_DWORD *)result = v6;
      *((_DWORD *)result + 1) = v8;
      *v8 = result;
      *(_DWORD *)(v3 + 944) = result;
    }
    else
    {
      ++*((_BYTE *)v5 + 12);
    }
  }
  return result;
}


// ===== 47eb90 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::Compile(
        int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted(result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ebe0 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::Compile(int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted(result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ec30 ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::Compile(int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted(result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ec80 ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::Compile(int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted((Objective *)result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ecd0 ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::Compile(
        int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted(result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ed20 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::Compile(void) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::Compile(int result)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(result + 12);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 32);
  *(_DWORD *)(result + 36) = v3;
  if ( v3 != -1 )
  {
    *(_BYTE *)(result + 8) = 1;
    if ( *(_DWORD *)(result + 32) >= *(_DWORD *)(v1 + 40) )
    {
      Objective::SetIsCompleted(result);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 28))(v2);
    }
  }
  return result;
}


// ===== 47ed70 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::Compile(
        int a1,
        int a2)
{
  int v2; // r3
  int HasEnemyOfType; // r6
  int result; // r0
  int v6; // r3
  int v7; // r3
  bool v8; // cc
  int v9; // r2

  v2 = *(_DWORD *)(a1 + 12);
  *(_DWORD *)(a1 + 36) = v2;
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(v2 + 40);
  HasEnemyOfType = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(*(Character **)(v2 + 32), a2);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v6 = *(_DWORD *)(*(_DWORD *)(a1 + 36) + 36);
  if ( v6 != -1 && v6 != *(_DWORD *)(result + 60) )
    goto LABEL_3;
  v7 = *(_DWORD *)(a1 + 44);
  v8 = HasEnemyOfType <= 0;
  if ( HasEnemyOfType > 0 )
    v8 = v7 <= 0;
  if ( !v8 )
  {
    v9 = *(_DWORD *)(a1 + 32);
    *(_BYTE *)(a1 + 8) = 1;
    if ( v9 >= v7 )
    {
      Objective::SetIsCompleted(a1);
      return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
    }
  }
  else
  {
LABEL_3:
    *(_BYTE *)(a1 + 8) = 0;
  }
  return result;
}


// ===== 47ee18 ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(
        int a1,
        int a2)
{
  int v2; // r3
  int HasEnemyOfType; // r6
  int result; // r0
  int v6; // r3
  int v7; // r3
  bool v8; // cc
  int v9; // r2

  v2 = *(_DWORD *)(a1 + 12);
  *(_DWORD *)(a1 + 36) = v2;
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(v2 + 40);
  HasEnemyOfType = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(*(Character **)(v2 + 32), a2);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v6 = *(_DWORD *)(*(_DWORD *)(a1 + 36) + 36);
  if ( v6 != -1 && v6 != *(_DWORD *)(result + 60) )
    goto LABEL_3;
  v7 = *(_DWORD *)(a1 + 44);
  v8 = HasEnemyOfType <= 0;
  if ( HasEnemyOfType > 0 )
    v8 = v7 <= 0;
  if ( !v8 )
  {
    v9 = *(_DWORD *)(a1 + 32);
    *(_BYTE *)(a1 + 8) = 1;
    if ( v9 >= v7 )
    {
      Objective::SetIsCompleted((Objective *)a1);
      return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
    }
  }
  else
  {
LABEL_3:
    *(_BYTE *)(a1 + 8) = 0;
  }
  return result;
}


// ===== 47eec0 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(
        int a1)
{
  int result; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r3

  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 12);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v4 = *(_DWORD *)(a1 + 36);
  v5 = *(_DWORD *)(v4 + 36);
  if ( v5 == -1 || (v3 = *(_DWORD *)(result + 60), v5 == v3) )
  {
    result = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(*(Character **)(v4 + 32), v3);
    *(_DWORD *)(a1 + 44) = result;
    if ( result > 0 )
    {
      v6 = *(_DWORD *)(a1 + 32);
      *(_BYTE *)(a1 + 8) = 1;
      if ( result <= v6 )
      {
        Objective::SetIsCompleted(a1);
        return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
      }
    }
  }
  return result;
}


// ===== 47ef50 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::Compile(
        int a1)
{
  int result; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r3

  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 12);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v4 = *(_DWORD *)(a1 + 36);
  v5 = *(_DWORD *)(v4 + 32);
  if ( v5 == -1 || (v3 = *(_DWORD *)(result + 60), v5 == v3) )
  {
    result = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(*(Character **)(v4 + 36), v3);
    *(_DWORD *)(a1 + 44) = result;
    if ( result > 0 )
    {
      v6 = *(_DWORD *)(a1 + 32);
      *(_BYTE *)(a1 + 8) = 1;
      if ( result <= v6 )
      {
        Objective::SetIsCompleted((Objective *)a1);
        return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
      }
    }
  }
  return result;
}


// ===== 47efe0 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::Compile(
        int a1)
{
  int result; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r3

  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 12);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v4 = *(_DWORD *)(a1 + 36);
  v5 = *(_DWORD *)(v4 + 36);
  if ( v5 == -1 || (v3 = *(_DWORD *)(result + 60), v5 == v3) )
  {
    result = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(*(Character **)(v4 + 32), v3);
    *(_DWORD *)(a1 + 44) = result;
    if ( result > 0 )
    {
      v6 = *(_DWORD *)(a1 + 32);
      *(_BYTE *)(a1 + 8) = 1;
      if ( result <= v6 )
      {
        Objective::SetIsCompleted(a1);
        return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
      }
    }
  }
  return result;
}


// ===== 47f070 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::Compile(void) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::Compile(
        int a1)
{
  int result; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r3

  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 12);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v4 = *(_DWORD *)(a1 + 36);
  v5 = *(_DWORD *)(v4 + 32);
  if ( v5 == -1 || (v3 = *(_DWORD *)(result + 60), v5 == v3) )
  {
    result = Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(*(Character **)(v4 + 36), v3);
    *(_DWORD *)(a1 + 44) = result;
    if ( result > 0 )
    {
      v6 = *(_DWORD *)(a1 + 32);
      *(_BYTE *)(a1 + 8) = 1;
      if ( result <= v6 )
      {
        Objective::SetIsCompleted(a1);
        return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
      }
    }
  }
  return result;
}


// ===== 47f100 ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies,QE_KillEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(
        Objective *this,
        int a2)
{
  int v4; // r3

  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 32) != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v4 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v4 )
      return 0;
    *((_DWORD *)this + 8) = v4;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v4 = *((_DWORD *)this + 8);
  }
  if ( *((_DWORD *)this + 11) > v4 )
    return 0;
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f194 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate,QE_TriggerPlate>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted((int)this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f228 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies,QE_ClearEnemies,TestCharPropId,Objective_SavedQty>::handleEvent(
        Objective *this,
        int a2)
{
  int v4; // r3

  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 36) != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v4 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v4 )
      return 0;
    *((_DWORD *)this + 8) = v4;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v4 = *((_DWORD *)this + 8);
  }
  if ( *((_DWORD *)this + 11) > v4 )
    return 0;
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f2bc ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate,QE_KillEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(
        Objective *this,
        int a2)
{
  int v4; // r3

  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 32) != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v4 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v4 )
      return 0;
    *((_DWORD *)this + 8) = v4;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v4 = *((_DWORD *)this + 8);
  }
  if ( *((_DWORD *)this + 11) > v4 )
    return 0;
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f350 ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate,QE_ClearEnemyTemplate,TestCharTemplate,Objective_SavedQty>::handleEvent(
        Objective *this,
        int a2)
{
  int v4; // r3

  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 36) != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v4 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v4 )
      return 0;
    *((_DWORD *)this + 8) = v4;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v4 = *((_DWORD *)this + 8);
  }
  if ( *((_DWORD *)this + 11) > v4 )
    return 0;
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f3e4 ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject,QE_DestroyGameObject>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted((int)this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f478 ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject,QE_OpenGameObject>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted((int)this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f50c ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC,QE_TalkToNPC>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted(this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f5a0 ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable,QE_PickedUpLiftable>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted((int)this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f634 ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::handleEvent(IEvent const*,EventManager const*) =====
int __fastcall ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn,QE_TriggerOn>::handleEvent(
        Objective *this,
        int a2)
{
  int v2; // r2
  int v4; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  if ( v2 != *(_DWORD *)(a2 + 24) )
    return 0;
  if ( *(_BYTE *)(a2 + 17) )
  {
    v6 = *(_DWORD *)(a2 + 20);
    if ( *((_DWORD *)this + 8) >= v6 )
      return 0;
    *((_DWORD *)this + 8) = v6;
  }
  else
  {
    ++*((_DWORD *)this + 8);
    *(_BYTE *)(a2 + 16) = 1;
    *(_DWORD *)(a2 + 20) = *((_DWORD *)this + 8);
    v6 = *((_DWORD *)this + 8);
  }
  if ( *(_DWORD *)(v4 + 40) > v6 )
    return 0;
  Objective::SetIsCompleted((int)this);
  (*(void (__fastcall **)(Objective *))(*(_DWORD *)this + 28))(this);
  return 0;
}


// ===== 47f6c8 DBG_GetStateNameFromID(int) =====
const char *__fastcall DBG_GetStateNameFromID(unsigned int a1)
{
  if ( a1 > 0xD )
    return "unknown";
  else
    return (const char *)*(&s_DBGquestStateIDToName + a1);
}


// ===== 47f700 Quest::UpdatePostClosed(void) =====
void __fastcall Quest::UpdatePostClosed(Quest *this)
{
  ;
}


// ===== 47f704 Quest::DBG_GetCurrentStateName(void) =====
const char *__fastcall Quest::DBG_GetCurrentStateName(Quest *this)
{
  return DBG_GetStateNameFromID(*(_DWORD *)this);
}


// ===== 47f70c Quest::IsVolatileState(int) =====
int __fastcall Quest::IsVolatileState(Quest *this, int a2)
{
  if ( (unsigned int)(a2 - 2) <= 9 )
    return CSWTCH_6217[a2 - 2];
  else
    return 0;
}


// ===== 47f734 Quest::_saveQuestData(IStreamBase *) =====
int __fastcall Quest::_saveQuestData(Quest *this, IStreamBase *a2)
{
  StreamReader::writeAs<int>((int)a2, *(_DWORD *)this);
  (*(void (__fastcall **)(_DWORD, IStreamBase *))(**((_DWORD **)this + 6) + 44))(*((_DWORD *)this + 6), a2);
  (*(void (__fastcall **)(_DWORD, IStreamBase *))(**((_DWORD **)this + 7) + 44))(*((_DWORD *)this + 7), a2);
  return ObjectiveList::_saveData((Quest *)((char *)this + 44), a2);
}


// ===== 47f78c Quest::_loadQuestData(IStreamBase *,bool) =====
int __fastcall Quest::_loadQuestData(Quest *this, IStreamBase *a2, bool a3)
{
  int result; // r0

  StreamReader::readAs<int>((int)a2, (int)this);
  (*(void (__fastcall **)(_DWORD, IStreamBase *))(**((_DWORD **)this + 6) + 40))(*((_DWORD *)this + 6), a2);
  (*(void (__fastcall **)(_DWORD, IStreamBase *))(**((_DWORD **)this + 7) + 40))(*((_DWORD *)this + 7), a2);
  ObjectiveList::_loadData((Quest *)((char *)this + 44), a2);
  result = Quest::IsVolatileState(this, *(_DWORD *)this);
  if ( result )
    *((_BYTE *)this + 100) = 1;
  return result;
}


// ===== 47f7fc Quest::IsDialog(void) =====
bool __fastcall Quest::IsDialog(Quest *this)
{
  int v1; // r4

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 276);
  return v1 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestPriority", "Dialog");
}


// ===== 47f850 Quest::IsDebug(void) =====
bool __fastcall Quest::IsDebug(Quest *this)
{
  int v1; // r4

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 276);
  return v1 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestPriority", "Debug");
}


// ===== 47f8a4 Quest::IsSecondary(void) =====
bool __fastcall Quest::IsSecondary(Quest *this)
{
  int v1; // r4

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 276);
  return v1 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestPriority", "Secondary");
}


// ===== 47f8f8 Quest::IsPrimary(void) =====
bool __fastcall Quest::IsPrimary(Quest *this)
{
  int v1; // r4

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 276);
  return v1 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestPriority", "Primary");
}


// ===== 47f94c Quest::GetPostDescription(void) =====
char *__fastcall Quest::GetPostDescription(Quest *this)
{
  if ( *(_DWORD *)(*((_DWORD *)this + 26) + 12) == 1835016 )
    return "not specified";
  else
    return "";
}


// ===== 47f984 Quest::GetPreDescription(void) =====
const char *__fastcall Quest::GetPreDescription(Quest *this)
{
  int v1; // r1
  _BOOL4 v2; // r0

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 8);
  v2 = v1 != 1835016;
  if ( v1 < 0 )
    v2 = 0;
  if ( v2 )
    return (const char *)StringManager::getString((StringManager *)dword_99F760, v1);
  else
    return "not specified";
}


// ===== 47f9dc Quest::GetTitle(void) =====
const char *__fastcall Quest::GetTitle(Quest *this)
{
  int v1; // r1
  _BOOL4 v2; // r0

  v1 = *(_DWORD *)(*((_DWORD *)this + 26) + 4);
  v2 = v1 != 1835016;
  if ( v1 < 0 )
    v2 = 0;
  if ( v2 )
    return (const char *)StringManager::getString((StringManager *)dword_99F760, v1);
  else
    return "not specified";
}


// ===== 47fa34 TempHackScriptIDAreStrings(char const*) =====
int __fastcall TempHackScriptIDAreStrings(const char *a1)
{
  char *v2; // r0

  if ( a1 && (v2 = strchr(a1, 46)) != nullptr )
    return ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v2 + 1, 0);
  else
    return -1;
}


// ===== 47fa80 Quest::GetScriptIDFromID(int) =====
int __fastcall Quest::GetScriptIDFromID(Quest *this, int a2)
{
  int result; // r0

  switch ( a2 )
  {
    case 0:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 168));
      break;
    case 1:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 176));
      break;
    case 2:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 184));
      break;
    case 3:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 192));
      break;
    case 4:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 200));
      break;
    case 5:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 208));
      break;
    case 6:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 216));
      break;
    case 7:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 224));
      break;
    case 8:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 232));
      break;
    case 9:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 240));
      break;
    case 10:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 248));
      break;
    case 11:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 256));
      break;
    case 12:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 264));
      break;
    case 13:
      result = TempHackScriptIDAreStrings(*(const char **)(*((_DWORD *)this + 26) + 272));
      break;
    default:
      result = -1;
      break;
  }
  return result;
}


// ===== 47fb74 Quest::HandleSaveInStateTransitonIfNeeded(int) =====
int __fastcall Quest::HandleSaveInStateTransitonIfNeeded(Quest *this, int a2)
{
  int result; // r0
  int CurrentLevel; // r0
  Level *v6; // r6
  Character *v7; // r4
  int ScriptIDFromID; // r6
  int v9; // r0
  bool v10; // nf
  int v11; // r6
  int v12; // r0
  bool v13; // nf
  int v14; // r6
  int v15; // r0
  bool v16; // nf
  int v17; // r6
  int v18; // r0
  bool v19; // nf

  result = Quest::IsVolatileState(this, a2);
  if ( !result )
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
                 "IsVolatileState(state)",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp",
                 850);
    }
  }
  if ( !*((_BYTE *)this + 100) )
  {
    switch ( a2 )
    {
      case 2:
        ScriptIDFromID = Quest::GetScriptIDFromID(this, 11);
        v9 = Quest::GetScriptIDFromID(this, 1);
        v10 = ScriptIDFromID < 0;
        if ( ScriptIDFromID < 0 )
          v10 = v9 < 0;
        result = !v10;
        goto LABEL_10;
      case 4:
        result = Quest::GetScriptIDFromID(this, 6) >= 0;
        goto LABEL_10;
      case 5:
        v11 = Quest::GetScriptIDFromID(this, 10);
        v12 = Quest::GetScriptIDFromID(this, 0);
        v13 = v11 < 0;
        if ( v11 < 0 )
          v13 = v12 < 0;
        result = !v13;
        goto LABEL_10;
      case 7:
        result = Quest::GetScriptIDFromID(this, 5) >= 0;
        goto LABEL_10;
      case 8:
        v14 = Quest::GetScriptIDFromID(this, 13);
        v15 = Quest::GetScriptIDFromID(this, 3);
        v16 = v14 < 0;
        if ( v14 < 0 )
          v16 = v15 < 0;
        result = !v16;
        goto LABEL_10;
      case 10:
        result = Quest::GetScriptIDFromID(this, 8) >= 0;
        goto LABEL_10;
      case 11:
        v17 = Quest::GetScriptIDFromID(this, 12);
        v18 = Quest::GetScriptIDFromID(this, 2);
        v19 = v17 < 0;
        if ( v17 < 0 )
          v19 = v18 < 0;
        result = !v19;
        goto LABEL_10;
      case 13:
        result = Quest::GetScriptIDFromID(this, 7) >= 0;
LABEL_10:
        if ( result )
        {
          CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          v6 = (Level *)CurrentLevel;
          if ( CurrentLevel )
          {
            Level::SG_BlockLevel(CurrentLevel, 0);
            Level::QuickSave(v6, 0);
          }
          result = (int)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
          v7 = *(Character **)(result + 1632);
          if ( v7 )
          {
            Character::SG_Block(*(_DWORD *)(result + 1632), 0);
            result = (int)Character::SG_Save(v7);
          }
        }
        break;
      default:
        return result;
    }
  }
  return result;
}


// ===== 47fde4 Quest::TestIsScriptRunning(int) =====
bool __fastcall Quest::TestIsScriptRunning(Quest *this, int a2)
{
  int ScriptIDFromID; // r1

  if ( a2 >= 0 )
  {
    if ( a2 <= 13 )
      goto LABEL_6;
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "scriptID < Structs::v2QuestScripts::kSize",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp",
          744);
      goto LABEL_6;
    }
LABEL_9:
    dword_0 = 0;
    ScriptIDFromID = Quest::GetScriptIDFromID(this, a2);
    if ( ScriptIDFromID >= 0 )
      return ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, ScriptIDFromID);
    return 0;
  }
  if ( gAssertLevel == 2 )
    goto LABEL_9;
  if ( gAssertLevel == 1 )
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "scriptID >= 0",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp",
      743);
LABEL_6:
  ScriptIDFromID = Quest::GetScriptIDFromID(this, a2);
  if ( ScriptIDFromID >= 0 )
    return ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, ScriptIDFromID);
  return 0;
}


// ===== 47ff20 Quest::ExecScript(int) =====
void __fastcall Quest::ExecScript(Quest *this, int a2)
{
  int ScriptIDFromID; // r1

  if ( a2 >= 0 )
  {
    if ( a2 <= 13 )
      goto LABEL_6;
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "scriptID < Structs::v2QuestScripts::kSize",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp",
          730);
      goto LABEL_6;
    }
LABEL_9:
    dword_0 = 0;
    ScriptIDFromID = Quest::GetScriptIDFromID(this, a2);
    if ( ScriptIDFromID >= 0 )
      goto LABEL_7;
    return;
  }
  if ( gAssertLevel == 2 )
    goto LABEL_9;
  if ( gAssertLevel == 1 )
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "scriptID >= 0",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp",
      729);
LABEL_6:
  ScriptIDFromID = Quest::GetScriptIDFromID(this, a2);
  if ( ScriptIDFromID >= 0 )
LABEL_7:
    ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, ScriptIDFromID, -1, 1);
}


// ===== 480060 Quest::ReInit(void) =====
int __fastcall Quest::ReInit(int this)
{
  _DWORD *v1; // r4

  v1 = (_DWORD *)this;
  switch ( *(_DWORD *)this )
  {
    case 2:
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 24) + 20))(*(_DWORD *)(this + 24));
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
    case 3:
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 24) + 28))(*(_DWORD *)(this + 24));
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
    case 5:
      this = ObjectiveList::RemoveObjectiveMarkers((ObjectiveList *)(this + 44));
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
    case 6:
      this = ObjectiveList::Unregister((ObjectiveList *)(this + 44));
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
    case 8:
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 28) + 20))(*(_DWORD *)(this + 28));
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
    case 9:
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 28) + 28))(*(_DWORD *)(this + 28));
      goto LABEL_3;
    default:
LABEL_3:
      *v1 = *(_DWORD *)(v1[26] + 156);
      break;
  }
  return this;
}


// ===== 48015c Quest::GiveRewards(void) =====
int __fastcall Quest::GiveRewards(Quest *this)
{
  int result; // r0

  result = RewardList::Give((Quest *)((char *)this + 56));
  *((_BYTE *)this + 92) = 0;
  return result;
}


// ===== 480178 Quest::Compile(void) =====
int __fastcall Quest::Compile(Quest *this)
{
  int v1; // r3
  ObjectiveList *v2; // r6
  int v4; // r3
  int result; // r0
  int v6; // r3

  v1 = *((_DWORD *)this + 6);
  v2 = (Quest *)((char *)this + 44);
  *(_BYTE *)(v1 + 20) = 0;
  *(_BYTE *)(v1 + 8) = 0;
  ObjectiveList::InvalidateCompile((Quest *)((char *)this + 44));
  v4 = *((_DWORD *)this + 7);
  *(_BYTE *)(v4 + 20) = 0;
  *(_BYTE *)(v4 + 8) = 0;
  RewardList::InvalidateCompile((Quest *)((char *)this + 56));
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 8))(*((_DWORD *)this + 6));
  ObjectiveList::Compile(v2);
  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 8))(*((_DWORD *)this + 7));
  if ( !*((_BYTE *)this + 92) )
  {
    v6 = *(_DWORD *)this;
    if ( *(_DWORD *)this != 6 )
      goto LABEL_3;
LABEL_8:
    ObjectiveList::Register(v2);
    return ObjectiveList::InstallObjectiveMarkers(v2, *(_DWORD *)(*((_DWORD *)this + 26) + 276), *(_DWORD *)this);
  }
  result = RewardList::Compile((Quest *)((char *)this + 56));
  v6 = *(_DWORD *)this;
  if ( *(_DWORD *)this == 6 )
    goto LABEL_8;
LABEL_3:
  if ( v6 == 9 )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 24))(*((_DWORD *)this + 7));
    return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 7) + 16))(
             *((_DWORD *)this + 7),
             *(_DWORD *)(*((_DWORD *)this + 26) + 276),
             *(_DWORD *)this);
  }
  else if ( v6 == 3 )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 24))(*((_DWORD *)this + 6));
    return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 6) + 16))(
             *((_DWORD *)this + 6),
             *(_DWORD *)(*((_DWORD *)this + 26) + 276),
             *(_DWORD *)this);
  }
  return result;
}


// ===== 4802b4 Quest::Synchronize(Quest const*,bool) =====
int __fastcall Quest::Synchronize(int this, const Quest *a2, int a3)
{
  int v4; // r5

  v4 = this;
  if ( a3 )
  {
    this = Quest::IsPrimary((Quest *)this);
    if ( this )
    {
      if ( *(int *)a2 > 11 )
      {
        Quest::ReInit(v4);
        *(_DWORD *)v4 = *(_DWORD *)a2;
        *(_DWORD *)(v4 + 4) = *((_DWORD *)a2 + 1);
        *(_BYTE *)(v4 + 100) = *((_BYTE *)a2 + 100);
        return Quest::Compile((Quest *)v4);
      }
    }
  }
  else
  {
    *(_DWORD *)this = *(_DWORD *)a2;
    *(_DWORD *)(this + 4) = *((_DWORD *)a2 + 1);
    *(_BYTE *)(this + 100) = *((_BYTE *)a2 + 100);
  }
  return this;
}


// ===== 480328 Quest::DBG_TraceDetailedQuestInformation(__sFILE *) =====
int __fastcall Quest::DBG_TraceDetailedQuestInformation(Quest *this, __sFILE *s)
{
  int v4; // r3
  const char *v5; // r2
  int v6; // r1
  _BOOL4 v7; // r2
  const char *String; // r2
  int v9; // r1
  _BOOL4 v10; // r2
  const char *v11; // r2
  const char *v12; // r2
  char *ConstantName; // r0
  char *v14; // r0

  fwrite("=====================================================================\n", 1u, 0x46u, s);
  fwrite("Quest Information : \n", 1u, 0x15u, s);
  v4 = *((_DWORD *)this + 2);
  if ( v4 >= 0 && v4 < (unsigned int)Arrays::v2Quests::size )
    v5 = *(const char **)(Arrays::v2Quests::m_memberNames + 4 * v4);
  else
    v5 = "na";
  fprintf(s, "\tPyDataName : %s\n", v5);
  v6 = *(_DWORD *)(*((_DWORD *)this + 26) + 4);
  v7 = v6 != 1835016;
  if ( v6 < 0 )
    v7 = 0;
  if ( v7 )
    String = (const char *)StringManager::getString((StringManager *)dword_99F760, v6);
  else
    String = "not specified";
  fprintf(s, "\tName : %s\n", String);
  v9 = *(_DWORD *)(*((_DWORD *)this + 26) + 8);
  v10 = v9 != 1835016;
  if ( v9 < 0 )
    v10 = 0;
  if ( v10 )
    v11 = (const char *)StringManager::getString((StringManager *)dword_99F760, v9);
  else
    v11 = "not specified";
  fprintf(s, "\tDescription : %s\n", v11);
  fwrite("\tPreReqs :\n", 1u, 0xBu, s);
  ConditionList::DBG_TraceDetailedConditionListInformation((int *)this + 8, s);
  fwrite("\tObjectives : \n", 1u, 0xFu, s);
  ObjectiveList::DBG_TraceDetailedObjectiveListInformation((Quest *)((char *)this + 44), s);
  fwrite("\tRewards:\n", 1u, 0xAu, s);
  RewardList::DBG_TraceDetailedRewardListInformation((Quest *)((char *)this + 56), s);
  fwrite("\tAccept Type :\n", 1u, 0xFu, s);
  (*(void (__fastcall **)(_DWORD, __sFILE *))(**((_DWORD **)this + 6) + 12))(*((_DWORD *)this + 6), s);
  fwrite("\tEnd Type :\n", 1u, 0xCu, s);
  (*(void (__fastcall **)(_DWORD, __sFILE *))(**((_DWORD **)this + 7) + 12))(*((_DWORD *)this + 7), s);
  fprintf(s, "\tTargetLevel : %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 148));
  if ( *(_BYTE *)(*((_DWORD *)this + 26) + 152) )
    v12 = "true";
  else
    v12 = "false";
  fprintf(s, "\tRepeatable : %s\n", v12);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestState",
                   *(_DWORD *)(*((_DWORD *)this + 26) + 156));
  fprintf(s, "\tState : %s\n", ConstantName);
  v14 = PyDataConstants::getConstantName(
          (PyDataConstants *)dword_99F758,
          "v2QuestPriority",
          *(_DWORD *)(*((_DWORD *)this + 26) + 276));
  fprintf(s, "\tPriority : %s\n\n", v14);
  fprintf(s, "\tScripts OnActive: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 168));
  fprintf(s, "\tScripts OnAvailable: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 176));
  fprintf(s, "\tScripts OnClosed: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 184));
  fprintf(s, "\tScripts OnComplete: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 192));
  fprintf(s, "\tScripts OnFailed: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 200));
  fprintf(s, "\tScripts OnPostActive: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 208));
  fprintf(s, "\tScripts OnPostAvailable: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 216));
  fprintf(s, "\tScripts OnPostClosed: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 224));
  fprintf(s, "\tScripts OnPostComplete: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 232));
  fprintf(s, "\tScripts OnPostLocked: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 240));
  fprintf(s, "\tScripts OnPreActive: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 248));
  fprintf(s, "\tScripts OnPreAvailable: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 256));
  fprintf(s, "\tScripts OnPreClosed: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 264));
  fprintf(s, "\tScripts OnPreComplete: %d\n", *(_DWORD *)(*((_DWORD *)this + 26) + 272));
  return fputc(10, s);
}


// ===== 4807d8 Quest::SetOwnerToChildren(void) =====
int __fastcall Quest::SetOwnerToChildren(Quest *this)
{
  int result; // r0
  int v3; // r3
  int v4; // r3

  ObjectiveList::SetOwner((int *)this + 11, *((Character **)this + 24));
  result = RewardList::SetOwner((Quest *)((char *)this + 56), *((Character **)this + 24));
  v3 = *((_DWORD *)this + 6);
  if ( v3 )
    *(_DWORD *)(v3 + 16) = *((_DWORD *)this + 24);
  v4 = *((_DWORD *)this + 7);
  if ( v4 )
    *(_DWORD *)(v4 + 16) = *((_DWORD *)this + 24);
  return result;
}


// ===== 48081c Quest::AssignPyData(Structs::v2Quest *) =====
int __fastcall Quest::AssignPyData(Quest *this, Structs::v2Quest *a2)
{
  int v3; // r3
  int ObjectiveWithPyData; // r0
  int v5; // r3
  int result; // r0

  *((_DWORD *)this + 26) = a2;
  ConditionList::AssignPyData((int *)this + 8, *((_DWORD *)a2 + 6), *((_DWORD *)a2 + 5));
  ObjectiveList::AssignPyData(
    (int *)this + 11,
    *(_DWORD *)(*((_DWORD *)this + 26) + 32),
    *(_DWORD *)(*((_DWORD *)this + 26) + 28));
  v3 = *((_DWORD *)this + 4);
  switch ( v3 )
  {
    case 1:
      RewardList::AssignPyData(
        (Quest *)((char *)this + 56),
        *(Structs::v2QuestRewardStub **)(*((_DWORD *)this + 26) + 48),
        *(_DWORD *)(*((_DWORD *)this + 26) + 44));
      break;
    case 2:
      RewardList::AssignPyData(
        (Quest *)((char *)this + 56),
        *(Structs::v2QuestRewardStub **)(*((_DWORD *)this + 26) + 56),
        *(_DWORD *)(*((_DWORD *)this + 26) + 52));
      break;
    case 0:
      RewardList::AssignPyData(
        (Quest *)((char *)this + 56),
        *(Structs::v2QuestRewardStub **)(*((_DWORD *)this + 26) + 40),
        *(_DWORD *)(*((_DWORD *)this + 26) + 36));
      break;
  }
  ObjectiveWithPyData = ObjectiveList::CreateObjectiveWithPyData(*((_DWORD *)this + 26) + 60);
  v5 = *((_DWORD *)this + 26);
  *((_DWORD *)this + 6) = ObjectiveWithPyData;
  *((_DWORD *)this + 7) = ObjectiveList::CreateObjectiveWithPyData(v5 + 104);
  result = Quest::SetOwnerToChildren(this);
  *((_DWORD *)this + 3) = *(_DWORD *)(*((_DWORD *)this + 26) + 280);
  return result;
}


// ===== 4808e4 Quest::Quest(int) =====
void __fastcall Quest::Quest(Quest *this, int a2)
{
  *((_DWORD *)this + 4) = a2;
  *((_DWORD *)this + 2) = -1;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 1;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  ConditionList::ConditionList((Quest *)((char *)this + 32));
  ObjectiveList::ObjectiveList((Quest *)((char *)this + 44));
  RewardList::RewardList((Quest *)((char *)this + 56));
  *((_BYTE *)this + 92) = 1;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 93) = 0;
  *((_BYTE *)this + 100) = 0;
}


// ===== 480944 Quest::Quest(int) =====
void __fastcall Quest::Quest(Quest *this, int a2)
{
  *((_DWORD *)this + 4) = a2;
  *((_DWORD *)this + 2) = -1;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 1;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  ConditionList::ConditionList((Quest *)((char *)this + 32));
  ObjectiveList::ObjectiveList((Quest *)((char *)this + 44));
  RewardList::RewardList((Quest *)((char *)this + 56));
  *((_BYTE *)this + 92) = 1;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 93) = 0;
  *((_BYTE *)this + 100) = 0;
}


// ===== 4809a4 Quest::~Quest() =====
void __fastcall Quest::~Quest(Quest *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 6);
  if ( v1 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 4))(*((_DWORD *)this + 6));
    *((_DWORD *)this + 6) = 0;
  }
  v3 = *((_DWORD *)this + 7);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 7));
    *((_DWORD *)this + 7) = 0;
  }
  RewardList::~RewardList((Quest *)((char *)this + 56));
  ObjectiveList::~ObjectiveList((Quest *)((char *)this + 44));
  ConditionList::~ConditionList((Quest *)((char *)this + 32));
}


// ===== 480a14 Quest::~Quest() =====
void __fastcall Quest::~Quest(Quest *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 6);
  if ( v1 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 4))(*((_DWORD *)this + 6));
    *((_DWORD *)this + 6) = 0;
  }
  v3 = *((_DWORD *)this + 7);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 7));
    *((_DWORD *)this + 7) = 0;
  }
  RewardList::~RewardList((Quest *)((char *)this + 56));
  ObjectiveList::~ObjectiveList((Quest *)((char *)this + 44));
  ConditionList::~ConditionList((Quest *)((char *)this + 32));
}


// ===== 480a84 Quest::GetObjectiveDescription(void) =====
Quest *__fastcall Quest::GetObjectiveDescription(Quest *this, int a2)
{
  int v2; // r12
  char *String; // r1

  v2 = *(_DWORD *)(*(_DWORD *)(a2 + 104) + 16);
  if ( v2 == 1835016 )
  {
    ObjectiveList::GetDesc(this);
  }
  else
  {
    if ( v2 >= 0 )
      String = (char *)StringManager::getString((StringManager *)dword_99F760, *(_DWORD *)(*(_DWORD *)(a2 + 104) + 16));
    else
      String = "not specified";
    std::string::string((int)this, String);
  }
  return this;
}


// ===== 480b0c std::allocator<DialogMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<DialogMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 76;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 480b2c MenuMessageManager<DialogMsg,1>::EnqueueMessage(DialogMsg const&,int,bool) [clone] =====
int __fastcall MenuMessageManager<DialogMsg,1>::EnqueueMessage(int a1)
{
  int result; // r0
  const char *v2; // r7
  MenuManager *Instance; // r0
  RenderFX *v4; // r6
  void *v5; // r0
  gameswf::character *Char; // r0
  _DWORD v8[4]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v9[4]; // [sp+1Ch] [bp-18h] BYREF
  int v10; // [sp+20h] [bp-14h]
  int v11; // [sp+24h] [bp-10h]
  int v12; // [sp+28h] [bp-Ch]
  int v13; // [sp+2Ch] [bp-8h]

  std::deque<DialogMsg>::push_back(&dword_99FB8C, a1);
  v8[0] = dword_99FB8C;
  v8[1] = dword_99FB90;
  v8[2] = dword_99FB94;
  v8[3] = dword_99FB98;
  result = std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(&dword_99FB9C, v8);
  if ( result == 1 )
  {
    v2 = DialogMsg::s_StartFuncName[0];
    Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
    result = MenuManager::GetHUDRoot(Instance);
    v4 = (RenderFX *)result;
    if ( result )
    {
      if ( dword_9A5474 )
      {
        v5 = (void *)dword_9A5470;
        if ( *(_BYTE *)(dword_9A5470 + 4) )
        {
LABEL_10:
          Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar);
          v9[0] = 0;
          v12 = 0;
          v13 = 0;
          v9[1] = 2;
          v10 = 0;
          v11 = 0;
          RenderFX::InvokeASCallback(v4, Char, v2, (const gameswf::as_value *)v9, 1);
          return gameswf::as_value::drop_refs((gameswf::as_value *)v9);
        }
        if ( (*(_DWORD *)dword_9A5470)-- == 1 )
          gameswf::free_internal(v5);
        dword_9A5474 = 0;
        dword_9A5470 = 0;
      }
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
        DialogMsg::s_NodeName[0],
        v4,
        nullptr);
      goto LABEL_10;
    }
  }
  return result;
}


// ===== 480c78 Quest::SetState(int) =====
void __fastcall Quest::SetState(Quest *this, unsigned int a2)
{
  int v4; // r8
  int Constant; // r10
  int v6; // r9
  int v7; // r0
  int LocalPlayer; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r1
  char *String; // r0
  const char *v14; // r2
  const char *v15; // r1
  int v16; // r0
  _BYTE v17[76]; // [sp+14h] [bp-E4h] BYREF
  _BYTE v18[76]; // [sp+60h] [bp-98h] BYREF
  std::string v19; // [sp+ACh] [bp-4Ch] BYREF
  std::string v20; // [sp+C4h] [bp-34h] BYREF
  std::string v21; // [sp+DCh] [bp-1Ch] BYREF

  if ( a2 > 0xD )
    return;
  v4 = *(_DWORD *)this;
  *(_DWORD *)this = a2;
  if ( v4 != a2 )
  {
    *((_DWORD *)this + 1) = dword_99F79C;
    if ( v4 != 6 )
      goto LABEL_4;
LABEL_14:
    ObjectiveList::Unregister((Quest *)((char *)this + 44));
    if ( !Quest::IsVolatileState(this, a2) )
      goto LABEL_8;
    goto LABEL_15;
  }
  if ( !*((_BYTE *)this + 100) )
    return;
  *((_DWORD *)this + 1) = dword_99F79C;
  if ( v4 == 6 )
    goto LABEL_14;
LABEL_4:
  if ( v4 == 9 )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 28))(*((_DWORD *)this + 7));
  }
  else if ( v4 == 3 )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 28))(*((_DWORD *)this + 6));
  }
  if ( !Quest::IsVolatileState(this, a2) )
    goto LABEL_8;
LABEL_15:
  Quest::HandleSaveInStateTransitonIfNeeded(this, a2);
LABEL_8:
  switch ( *(_DWORD *)this )
  {
    case 1:
      Quest::ExecScript(this, 9);
      break;
    case 2:
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 6) + 16))(
        *((_DWORD *)this + 6),
        *(_DWORD *)(*((_DWORD *)this + 26) + 276),
        2);
      Quest::ExecScript(this, 11);
      break;
    case 3:
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 24))(*((_DWORD *)this + 6));
      if ( v4 == 6 )
        v12 = 4;
      else
        v12 = 1;
      Quest::ExecScript(this, v12);
      break;
    case 4:
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 20))(*((_DWORD *)this + 6));
      Quest::ExecScript(this, 6);
      break;
    case 5:
      ObjectiveList::InstallObjectiveMarkers((int *)this + 11, *(_DWORD *)(*((_DWORD *)this + 26) + 276), 5);
      Quest::ExecScript(this, 10);
      break;
    case 6:
      Quest::ExecScript(this, 0);
      ObjectiveList::Register((Quest *)((char *)this + 44));
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_QUEST_NEW");
      v6 = *(_DWORD *)(*((_DWORD *)this + 26) + 8);
      v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "DialogStyles", "QuestMsgDialog");
      DialogMsg::DialogMsg((DialogMsg *)v18, Constant, v6, v7, -1);
      MenuMessageManager<DialogMsg,1>::EnqueueMessage(v18);
      DialogMsg::~DialogMsg((DialogMsg *)v18);
      LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Character::SG_SetCurrentQuest(*(Character **)(LocalPlayer + 1632), *((_DWORD *)this + 2), -1);
      if ( Quest::IsPrimary(this) )
      {
        v9 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
        Character::SG_SetCurrentPrimaryQuest(*(Character **)(v9 + 1632), *((_DWORD *)this + 2), -1);
      }
      break;
    case 7:
      v10 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Character::SG_SetCurrentQuest(*(Character **)(v10 + 1632), -1, -1);
      Quest::ExecScript(this, 5);
      break;
    case 8:
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 7) + 16))(
        *((_DWORD *)this + 7),
        *(_DWORD *)(*((_DWORD *)this + 26) + 276),
        8);
      Quest::ExecScript(this, 13);
      break;
    case 9:
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 24))(*((_DWORD *)this + 7));
      ObjectiveList::RemoveObjectiveMarkers((Quest *)((char *)this + 44));
      Quest::ExecScript(this, 3);
      v11 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Character::SG_SetCurrentAct(*(Character **)(v11 + 1632), *((_DWORD *)this + 3), -1);
      break;
    case 0xA:
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 20))(*((_DWORD *)this + 7));
      Quest::ExecScript(this, 8);
      break;
    case 0xB:
      Quest::ExecScript(this, 12);
      break;
    case 0xC:
      Quest::ExecScript(this, 2);
      RewardList::CreateRewardString((Quest *)((char *)this + 56));
      String = (char *)StringManager::getString((StringManager *)dword_99F760, *(_DWORD *)(*((_DWORD *)this + 26) + 8));
      std::string::string((int)&v20, String);
      v14 = *((const char **)this + 20);
      v15 = *((const char **)this + 21);
      v21._M_finish = (char *)&v21;
      v21._M_start_of_storage._M_data = (char *)&v21;
      std::string::_M_range_initialize(&v21, v15, v14);
      std::string::string((int)&v19, v21._M_start_of_storage._M_data);
      v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "DialogStyles", "QuestCompletedMsgDialog");
      DialogMsg::DialogMsg((DialogMsg *)v17, &v20, &v19, v16, 1);
      MenuMessageManager<DialogMsg,1>::EnqueueMessage(v17);
      DialogMsg::~DialogMsg((DialogMsg *)v17);
      std::string::~string(&v19);
      std::string::~string(&v21);
      std::string::~string(&v20);
      break;
    case 0xD:
      Quest::ExecScript(this, 7);
      break;
    default:
      return;
  }
}


// ===== 481150 Quest::ReinitStateAfterLoading(void) =====
void __fastcall Quest::ReinitStateAfterLoading(Quest *this)
{
  Quest::SetState(this, *(_DWORD *)this);
}


// ===== 481158 Quest::DBG_IncState(void) =====
void __fastcall Quest::DBG_IncState(Quest *this)
{
  Quest::SetState(this, (*(_DWORD *)this + 1) % 14);
}


// ===== 481184 Quest::UpdatePreClosed(void) =====
void __fastcall Quest::UpdatePreClosed(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 12) )
  {
    *((_BYTE *)this + 93) = 1;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Closed");
    Quest::SetState(this, Constant);
  }
}


// ===== 4811f0 Quest::UpdatePostCompleted(void) =====
void __fastcall Quest::UpdatePostCompleted(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 8) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreClosed");
    Quest::SetState(this, Constant);
  }
}


// ===== 481254 Quest::UpdatePreCompleted(void) =====
void __fastcall Quest::UpdatePreCompleted(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 13) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Completed");
    Quest::SetState(this, Constant);
  }
}


// ===== 4812b8 Quest::UpdatePostActive(void) =====
void __fastcall Quest::UpdatePostActive(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 8) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreCompleted");
    Quest::SetState(this, Constant);
  }
}


// ===== 48131c Quest::UpdatePostAvailable(void) =====
void __fastcall Quest::UpdatePostAvailable(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 6) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreActive");
    Quest::SetState(this, Constant);
  }
}


// ===== 481380 Quest::UpdatePreAvailable(void) =====
void __fastcall Quest::UpdatePreAvailable(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 11) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Available");
    Quest::SetState(this, Constant);
  }
}


// ===== 4813e4 Quest::UpdatePostLocked(void) =====
void __fastcall Quest::UpdatePostLocked(Quest *this)
{
  unsigned int Constant; // r1

  if ( !Quest::TestIsScriptRunning(this, 9) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreAvailable");
    Quest::SetState(this, Constant);
  }
}


// ===== 481448 Quest::UpdateClosed(void) =====
void __fastcall Quest::UpdateClosed(Character **this)
{
  unsigned int Constant; // r0
  const Character *v3; // r1

  if ( !Quest::TestIsScriptRunning((Quest *)this, 2) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostClosed");
    Quest::SetState((Quest *)this, Constant);
    v3 = *(this + 24);
    *((_BYTE *)this + 93) = 1;
    if ( v3 )
    {
      if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, v3) )
        Character::CheckForAllQuestsTrophy(*(this + 24));
    }
  }
}


// ===== 4814d8 Quest::UpdateCompleted(void) =====
void __fastcall Quest::UpdateCompleted(Quest *this)
{
  int v1; // r3
  CMatching *Online; // r0
  unsigned int Constant; // r1
  int v5; // r6
  int v6; // r0
  int v7; // r0
  CMatching *AttributeInt; // r0
  int v9; // r0
  int v10; // r0
  CMatching *Instance; // r0
  CMatchingGLLive *v12; // r0

  v1 = *((_DWORD *)this + 7);
  if ( v1 && *(_BYTE *)(v1 + 20) && !Quest::TestIsScriptRunning(this, 3) )
  {
    Quest::GiveRewards(this);
    Online = (CMatching *)GetOnline();
    if ( *((_BYTE *)Online + 5) )
    {
      v5 = *((_DWORD *)this + 3);
      v6 = CMatching::Get(Online);
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 164))(v6);
      AttributeInt = (CMatching *)CRoomAttributes::GetAttributeInt(v7, 5);
      if ( v5 > (int)AttributeInt )
      {
        v9 = CMatching::Get(AttributeInt);
        v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 164))(v9);
        (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v10 + 8))(v10, 5, *((_DWORD *)this + 3));
        Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1 )
        {
          v12 = (CMatchingGLLive *)CMatching::Get(Instance);
          CMatchingGLLive::SendGameParameters(v12);
        }
      }
    }
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostCompleted");
    Quest::SetState(this, Constant);
  }
}


// ===== 4815d4 Quest::UpdatePreActive(void) =====
int __fastcall Quest::UpdatePreActive(Quest *this)
{
  int result; // r0
  unsigned int Constant; // r0
  int v4; // r0
  int v5; // r0
  CMatchingGLLive *v6; // r0

  result = Quest::TestIsScriptRunning(this, 10);
  if ( !result )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Active");
    Quest::SetState(this, Constant);
    result = GetOnline();
    if ( *(_BYTE *)(result + 5) )
    {
      v4 = CMatching::Get((CMatching *)result);
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 164))(v4);
      (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v5 + 8))(v5, 6, *((_DWORD *)this + 2));
      result = OnlineSingleton<OnlineGameState>::GetInstance();
      if ( (unsigned int)(*(_DWORD *)(result + 52) - 3) <= 1 )
      {
        v6 = (CMatchingGLLive *)CMatching::Get((CMatching *)result);
        return CMatchingGLLive::SendGameParameters(v6);
      }
    }
  }
  return result;
}


// ===== 481688 Quest::UpdateActive(void) =====
int __fastcall Quest::UpdateActive(Quest *this)
{
  int result; // r0
  int Constant; // r1

  result = ObjectiveList::Eval((Quest *)((char *)this + 44));
  if ( result )
  {
    result = Quest::TestIsScriptRunning(this, 0);
    if ( !result )
    {
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostActive");
      return Quest::SetState(this, Constant);
    }
  }
  return result;
}


// ===== 481700 Quest::UpdateAvailable(void) =====
void __fastcall Quest::UpdateAvailable(Quest *this)
{
  int v2; // r3
  const char *v3; // r2
  unsigned int Constant; // r1

  if ( !ConditionList::Eval((Quest *)((char *)this + 32)) )
  {
    v3 = "Locked";
LABEL_6:
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", v3);
    Quest::SetState(this, Constant);
    return;
  }
  v2 = *((_DWORD *)this + 6);
  if ( v2 && *(_BYTE *)(v2 + 20) && !Quest::TestIsScriptRunning(this, 1) )
  {
    v3 = "PostAvailable";
    goto LABEL_6;
  }
}


// ===== 4817b4 Quest::UpdateLocked(void) =====
void __fastcall Quest::UpdateLocked(Quest *this)
{
  unsigned int Constant; // r1

  if ( ConditionList::Eval((Quest *)((char *)this + 32)) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostLocked");
    Quest::SetState(this, Constant);
  }
}


// ===== 481818 Quest::Update(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall Quest::Update(Quest *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r3
  int v4; // r3
  int v5; // r7
  int v6; // r7
  int v7; // r7
  int v8; // r7
  int v9; // r7
  int v10; // r7
  int v11; // r7
  int v12; // r7
  int v13; // r7
  int v14; // r7
  int v15; // r7
  int v16; // r7
  int v17; // r7
  DH2_PlayerInfoCharacterPrefix *v18; // r4

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = result->character_660;
  if ( !character_660
    || (v4 = *((_DWORD *)character_660 + 1338)) != 0
    && *(_BYTE *)(v4 + 20)
    && (!*(_BYTE *)(GetOnline() + 5)
     || (result = (DH2_PlayerInfoCharacterPrefix *)PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)) != nullptr
     || *(_BYTE *)(dword_99F764 + 352)) )
  {
    if ( *((_BYTE *)this + 100) )
    {
      Quest::ReinitStateAfterLoading(this);
      *((_BYTE *)this + 100) = 0;
    }
    v5 = *(_DWORD *)this;
    if ( v5 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Locked") )
      Quest::UpdateLocked(this);
    v6 = *(_DWORD *)this;
    if ( v6 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostLocked") )
      Quest::UpdatePostLocked(this);
    v7 = *(_DWORD *)this;
    if ( v7 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreAvailable") )
      Quest::UpdatePreAvailable(this);
    v8 = *(_DWORD *)this;
    if ( v8 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Available") )
      Quest::UpdateAvailable(this);
    v9 = *(_DWORD *)this;
    if ( v9 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostAvailable") )
      Quest::UpdatePostAvailable(this);
    v10 = *(_DWORD *)this;
    if ( v10 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreActive") )
      Quest::UpdatePreActive(this);
    v11 = *(_DWORD *)this;
    if ( v11 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Active") )
      Quest::UpdateActive(this);
    v12 = *(_DWORD *)this;
    if ( v12 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostActive") )
      Quest::UpdatePostActive(this);
    v13 = *(_DWORD *)this;
    if ( v13 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreCompleted") )
      Quest::UpdatePreCompleted(this);
    v14 = *(_DWORD *)this;
    if ( v14 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Completed") )
      Quest::UpdateCompleted(this);
    v15 = *(_DWORD *)this;
    if ( v15 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PostCompleted") )
      Quest::UpdatePostCompleted(this);
    v16 = *(_DWORD *)this;
    if ( v16 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "PreClosed") )
      Quest::UpdatePreClosed(this);
    v17 = *(_DWORD *)this;
    if ( v17 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Closed") )
      Quest::UpdateClosed(this);
    v18 = *(DH2_PlayerInfoCharacterPrefix **)this;
    result = (DH2_PlayerInfoCharacterPrefix *)PyDataConstants::getConstant(
                                                (PyDataConstants *)dword_99F758,
                                                "v2QuestState",
                                                "Closed");
    if ( v18 == result )
      return (DH2_PlayerInfoCharacterPrefix *)Quest::UpdatePostClosed(this);
  }
  return result;
}


// ===== 481c0c `global constructor keyed to'.._.._sources_Game_Progression_Quest.cpp =====
int `global constructor keyed to'.._.._sources_Game_Progression_Quest.cpp()
{
  int result; // r0
  int *v1; // r4
  char *v2; // r0
  int v3; // r2
  void *v4; // r0
  int *v5; // r1
  int v6; // r0
  int v7; // r3
  _DWORD *v8; // r6
  unsigned int v9; // r7
  int v10; // r12
  int v11; // r3
  _DWORD *v12; // r6
  unsigned int v13; // r7
  int v14; // r12
  int v15; // r3
  _DWORD *v16; // r6
  unsigned int v17; // r7
  int v18; // r12
  int v19; // r3
  _DWORD *v20; // r6
  unsigned int v21; // r7
  int v22; // r12
  int v23; // r3
  _DWORD *v24; // r6
  unsigned int v25; // r7
  int v26; // r12
  int v27; // r3
  unsigned int v28; // [sp+0h] [bp-14h]
  char *v29; // [sp+4h] [bp-10h]
  size_t v30; // [sp+Ch] [bp-8h] BYREF

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A61D4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A61D0 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) != 0 )
  {
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  else
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  `guard variable for'Singleton<Application>::s_inst = 1;
  Application::Application((Application *)&Singleton<Application>::s_inst);
  result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
LABEL_3:
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v1 = &dword_99FA90;
    do
    {
      *v1 = 0;
      v1[1] = 0;
      v1[2] = 0;
      v1[3] = 0;
      v1[4] = 0;
      v1[5] = 0;
      v1[6] = 0;
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = 8;
      v2 = (char *)std::allocator<StatusMsg *>::allocate((int)(v1 + 8), 8u);
      v3 = v1[9];
      v1[8] = (int)v2;
      v28 = (unsigned int)(v3 - 1) >> 1;
      v29 = v2;
      v30 = 112;
      v4 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
      v5 = (int *)&v29[4 * v28];
      *v5 = (int)v4;
      v1[3] = (int)v5;
      v6 = *v5;
      v1[7] = (int)v5;
      v1[1] = v6;
      v1[2] = v6 + 112;
      v7 = *v5;
      *v1 = v6;
      v1[6] = v7 + 112;
      v1[4] = v7;
      v1[5] = v7;
      v1 += 10;
    }
    while ( v1 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               (int)MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    v8 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v30 = 112;
    dword_99FB54 = (int)v8;
    v9 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v8[v9] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB40 = (int)&v8[v9];
    v10 = v8[v9];
    dword_99FB50 = (int)&v8[v9];
    dword_99FB3C = v10 + 112;
    dword_99FB38 = v10;
    v11 = v8[v9];
    dword_99FB4C = v11 + 112;
    dword_99FB34 = v10;
    dword_99FB44 = v11;
    dword_99FB48 = v11;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               (int)MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)byte_8;
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
    v12 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v30 = 128;
    dword_99FB80 = (int)v12;
    v13 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v12[v13] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB6C = (int)&v12[v13];
    v14 = v12[v13];
    dword_99FB7C = (int)&v12[v13];
    dword_99FB68 = v14 + 128;
    dword_99FB64 = v14;
    v15 = v12[v13];
    dword_99FB78 = v15 + 128;
    dword_99FB60 = v14;
    dword_99FB70 = v15;
    dword_99FB74 = v15;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    dword_99FBB0 = (int)byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    v16 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    dword_99FBAC = (int)v16;
    v17 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v16[v17] = std::allocator<DialogMsg>::allocate();
    dword_99FB98 = (int)&v16[v17];
    v18 = v16[v17];
    dword_99FBA8 = (int)&v16[v17];
    dword_99FB94 = v18 + 76;
    dword_99FB90 = v18;
    v19 = v16[v17];
    dword_99FBA4 = v19 + 76;
    dword_99FB8C = v18;
    dword_99FB9C = v19;
    dword_99FBA0 = v19;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               (int)MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)byte_8;
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
    v20 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v30 = 104;
    dword_99FBD8 = (int)v20;
    v21 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v20[v21] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBC4 = (int)&v20[v21];
    v22 = v20[v21];
    dword_99FBD4 = (int)&v20[v21];
    dword_99FBC0 = v22 + 104;
    dword_99FBBC = v22;
    v23 = v20[v21];
    dword_99FBD0 = v23 + 104;
    dword_99FBB8 = v22;
    dword_99FBC8 = v23;
    dword_99FBCC = v23;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)byte_8;
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
    v24 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v30 = 120;
    dword_99FC04 = (int)v24;
    v25 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v24[v25] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBF0 = (int)&v24[v25];
    v26 = v24[v25];
    dword_99FC00 = (int)&v24[v25];
    dword_99FBEC = v26 + 120;
    dword_99FBE8 = v26;
    v27 = v24[v25];
    dword_99FBFC = v27 + 120;
    dword_99FBE4 = v26;
    dword_99FBF4 = v27;
    dword_99FBF8 = v27;
    return _aeabi_atexit(
             (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
             (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 4822cc QE_KillEnemies::~QE_KillEnemies() =====
void __fastcall QE_KillEnemies::~QE_KillEnemies(QE_KillEnemies *this)
{
  ;
}


// ===== 4822d0 QE_ClearEnemies::~QE_ClearEnemies() =====
void __fastcall QE_ClearEnemies::~QE_ClearEnemies(QE_ClearEnemies *this)
{
  ;
}


// ===== 4822d4 QE_KillEnemyTemplate::~QE_KillEnemyTemplate() =====
void __fastcall QE_KillEnemyTemplate::~QE_KillEnemyTemplate(QE_KillEnemyTemplate *this)
{
  ;
}


// ===== 4822d8 QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate() =====
void __fastcall QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate(QE_ClearEnemyTemplate *this)
{
  ;
}


// ===== 4822dc QE_InteractWith::~QE_InteractWith() =====
void __fastcall QE_InteractWith::~QE_InteractWith(QE_InteractWith *this)
{
  ;
}


// ===== 4822e0 QE_GatherLoot::~QE_GatherLoot() =====
void __fastcall QE_GatherLoot::~QE_GatherLoot(QE_GatherLoot *this)
{
  ;
}


// ===== 4822e4 QE_MoveInZone::~QE_MoveInZone() =====
void __fastcall QE_MoveInZone::~QE_MoveInZone(QE_MoveInZone *this)
{
  ;
}


// ===== 4822e8 QE_KillEnemies::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_KillEnemies::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 482320 QE_ClearEnemies::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_ClearEnemies::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 482358 QE_KillEnemyTemplate::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_KillEnemyTemplate::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 482390 QE_ClearEnemyTemplate::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_ClearEnemyTemplate::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 4823c8 QE_InteractWith::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_InteractWith::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 482400 QE_GatherLoot::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_GatherLoot::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  a2[4] = result[6];
  return result;
}


// ===== 482438 QE_MoveInZone::FillNetworkMsg(tMsgRaisedEventData &) =====
_DWORD *__fastcall QE_MoveInZone::FillNetworkMsg(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r3
  int v4; // r3

  *a2 = result[1];
  v2 = result[2];
  if ( v2 )
    v3 = *(_DWORD *)(v2 + 264);
  else
    v3 = -1;
  a2[1] = v3;
  a2[2] = result[3];
  a2[3] = result[5];
  v4 = result[6];
  if ( v4 )
    v4 = *(_DWORD *)(v4 + 264);
  a2[4] = v4;
  return result;
}


// ===== 482478 QE_KillEnemies::~QE_KillEnemies() =====
void __fastcall QE_KillEnemies::~QE_KillEnemies(QE_KillEnemies *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 4824ac QE_ClearEnemies::~QE_ClearEnemies() =====
void __fastcall QE_ClearEnemies::~QE_ClearEnemies(QE_ClearEnemies *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 4824e0 QE_KillEnemyTemplate::~QE_KillEnemyTemplate() =====
void __fastcall QE_KillEnemyTemplate::~QE_KillEnemyTemplate(QE_KillEnemyTemplate *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 482514 QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate() =====
void __fastcall QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate(QE_ClearEnemyTemplate *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 482548 QE_InteractWith::~QE_InteractWith() =====
void __fastcall QE_InteractWith::~QE_InteractWith(QE_InteractWith *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 48257c QE_GatherLoot::~QE_GatherLoot() =====
void __fastcall QE_GatherLoot::~QE_GatherLoot(QE_GatherLoot *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 4825b0 QE_MoveInZone::~QE_MoveInZone() =====
void __fastcall QE_MoveInZone::~QE_MoveInZone(QE_MoveInZone *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 4825e4 `global constructor keyed to'.._.._sources_Game_Progression_QuestEvent.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Progression_QuestEvent.cpp(CMessage *a1)
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

  dword_9A61E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A61DC = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A61E5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A61E6 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A61E7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A61E8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A61E9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A61EA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A61EB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A61EC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A61ED = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A61EE = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A61EF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A61F0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A61F1 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A61F2 = result;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<PlayerStatManager>::s_inst,
             (int)PlayerStatManager::~PlayerStatManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 482870 Reward::Compile(void) =====
void __fastcall Reward::Compile(Reward *this)
{
  ;
}


// ===== 482874 Reward::GetParam1(void) =====
int __fastcall Reward::GetParam1(Reward *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 8);
}


// ===== 482880 Reward_Gold::Compile(void) =====
int __fastcall Reward_Gold::Compile(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 12);
  *(_BYTE *)(this + 8) = 1;
  *(_DWORD *)(this + 20) = v1;
  return this;
}


// ===== 482894 Reward_XP::Compile(void) =====
int __fastcall Reward_XP::Compile(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 12);
  *(_BYTE *)(this + 8) = 1;
  *(_DWORD *)(this + 20) = v1;
  return this;
}


// ===== 4828a8 Reward_CharacterProps::Compile(void) =====
int __fastcall Reward_CharacterProps::Compile(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 12);
  *(_BYTE *)(this + 8) = 1;
  *(_DWORD *)(this + 20) = v1;
  return this;
}


// ===== 4828bc Reward_Loot::Compile(void) =====
int __fastcall Reward_Loot::Compile(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 12);
  *(_BYTE *)(this + 8) = 1;
  *(_DWORD *)(this + 20) = v1;
  return this;
}


// ===== 4828d0 Reward_ConsumeLoot::Compile(void) =====
int __fastcall Reward_ConsumeLoot::Compile(int this)
{
  if ( *(int *)(*(_DWORD *)(this + 12) + 12) >= 0 )
    *(_BYTE *)(this + 8) = 1;
  return this;
}


// ===== 4828e8 Reward::~Reward() =====
void __fastcall Reward::~Reward(Reward *this)
{
  ;
}


// ===== 4828ec Reward::~Reward() =====
void __fastcall Reward::~Reward(Reward *this)
{
  ;
}


// ===== 4828f0 RewardList::SetOwner(Character *) =====
int *__fastcall RewardList::SetOwner(int *this, Character *a2)
{
  int v2; // r3
  int v3; // r2

  if ( *this > 0 )
  {
    v2 = 0;
    do
    {
      v3 = *(_DWORD *)(*(this + 1) + 4 * v2++);
      *(_DWORD *)(v3 + 16) = a2;
    }
    while ( *this > v2 );
  }
  return this;
}


// ===== 482920 RewardList::Give(void) =====
int __fastcall RewardList::Give(RewardList *this)
{
  int v2; // r4
  int v3; // r3
  int result; // r0

  if ( *(int *)this <= 0 )
    return 1;
  v2 = 0;
  while ( 1 )
  {
    v3 = *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v2++);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 8))(v3);
    if ( !result )
      break;
    if ( *(_DWORD *)this <= v2 )
      return 1;
  }
  return result;
}


// ===== 482978 RewardList::Compile(void) =====
int *__fastcall RewardList::Compile(int *this)
{
  int *v1; // r5
  int v2; // r4
  int v3; // r3

  v1 = this;
  if ( *this > 0 )
  {
    v2 = 0;
    do
    {
      v3 = *(_DWORD *)(v1[1] + 4 * v2++);
      this = (int *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3);
    }
    while ( *v1 > v2 );
  }
  return this;
}


// ===== 4829bc RewardList::DBG_TraceDetailedRewardListInformation(__sFILE *) =====
int *__fastcall RewardList::DBG_TraceDetailedRewardListInformation(int *this, __sFILE *a2)
{
  int *v2; // r5
  int v4; // r4
  int v5; // r3

  v2 = this;
  if ( *this > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v2[1] + 4 * v4++);
      this = (int *)(*(int (__fastcall **)(int, __sFILE *))(*(_DWORD *)v5 + 16))(v5, a2);
    }
    while ( *v2 > v4 );
  }
  return this;
}


// ===== 482a08 Reward_ConsumeLoot::~Reward_ConsumeLoot() =====
void __fastcall Reward_ConsumeLoot::~Reward_ConsumeLoot(Reward_ConsumeLoot *this)
{
  *(_DWORD *)this = off_969A30;
  Reward::~Reward(this);
}


// ===== 482a3c Reward_Loot::~Reward_Loot() =====
void __fastcall Reward_Loot::~Reward_Loot(Reward_Loot *this)
{
  *(_DWORD *)this = off_969A50;
  Reward::~Reward(this);
}


// ===== 482a70 Reward_CharacterProps::~Reward_CharacterProps() =====
void __fastcall Reward_CharacterProps::~Reward_CharacterProps(Reward_CharacterProps *this)
{
  *(_DWORD *)this = off_969A70;
  Reward::~Reward(this);
}


// ===== 482aa4 Reward_XP::~Reward_XP() =====
void __fastcall Reward_XP::~Reward_XP(Reward_XP *this)
{
  *(_DWORD *)this = off_969A90;
  Reward::~Reward(this);
}


// ===== 482ad8 Reward_Gold::~Reward_Gold() =====
void __fastcall Reward_Gold::~Reward_Gold(Reward_Gold *this)
{
  *(_DWORD *)this = off_969AB0;
  Reward::~Reward(this);
}


// ===== 482b0c RewardList::RewardList(void) =====
void __fastcall RewardList::RewardList(RewardList *this)
{
  _DWORD *v2; // r0

  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 7) = v2;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
}


// ===== 482b4c RewardList::RewardList(void) =====
void __fastcall RewardList::RewardList(RewardList *this)
{
  _DWORD *v2; // r0

  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 7) = v2;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
}


// ===== 482b8c Reward::~Reward() =====
void __fastcall Reward::~Reward(Reward *this)
{
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 482ba8 RewardList::~RewardList() =====
void __fastcall RewardList::~RewardList(RewardList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 482c24 RewardList::~RewardList() =====
void __fastcall RewardList::~RewardList(RewardList *this)
{
  int v1; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = *((_DWORD **)this + 1);
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[v4]);
        v3[v4] = 0;
        v1 = *(_DWORD *)this;
        v3 = *((_DWORD **)this + 1);
      }
      ++v4;
    }
    while ( v1 > v4 );
  }
  else
  {
    v3 = *((_DWORD **)this + 1);
  }
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 1) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 482ca0 Reward::Reward(void) =====
void __fastcall Reward::Reward(Reward *this)
{
  *(_DWORD *)this = off_969AE8;
  *((_DWORD *)this + 1) = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestRewardType", "Invalid");
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
}


// ===== 482d10 Reward::Reward(void) =====
void __fastcall Reward::Reward(Reward *this)
{
  *(_DWORD *)this = off_969AE8;
  *((_DWORD *)this + 1) = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestRewardType", "Invalid");
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
}


// ===== 482d80 GetRewardImplInstance<Reward_ConsumeLoot>(void) =====
_DWORD *GetRewardImplInstance<Reward_ConsumeLoot>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x14u, 0);
  *(_DWORD *)(v0 + 16) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  v1 = (_DWORD *)v0;
  Reward::Reward((Reward *)v0);
  *v1 = off_969A30;
  return v1;
}


// ===== 482dd8 GetRewardImplInstance<Reward_Loot>(void) =====
_DWORD *GetRewardImplInstance<Reward_Loot>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x18u, 0);
  *(_DWORD *)(v0 + 20) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  v1 = (_DWORD *)v0;
  Reward::Reward((Reward *)v0);
  *v1 = off_969A50;
  return v1;
}


// ===== 482e34 GetRewardImplInstance<Reward_CharacterProps>(void) =====
_DWORD *GetRewardImplInstance<Reward_CharacterProps>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x1Cu, 0);
  *(_DWORD *)(v0 + 24) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  *(_DWORD *)(v0 + 20) = 0;
  v1 = (_DWORD *)v0;
  Reward::Reward((Reward *)v0);
  *v1 = off_969A70;
  return v1;
}


// ===== 482e94 GetRewardImplInstance<Reward_XP>(void) =====
_DWORD *GetRewardImplInstance<Reward_XP>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x18u, 0);
  *(_DWORD *)(v0 + 20) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  v1 = (_DWORD *)v0;
  Reward::Reward((Reward *)v0);
  *v1 = off_969A90;
  return v1;
}


// ===== 482ef0 GetRewardImplInstance<Reward_Gold>(void) =====
_DWORD *GetRewardImplInstance<Reward_Gold>()
{
  int v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x18u, 0);
  *(_DWORD *)(v0 + 20) = 0;
  *(_DWORD *)v0 = 0;
  *(_DWORD *)(v0 + 4) = 0;
  *(_BYTE *)(v0 + 8) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  v1 = (_DWORD *)v0;
  Reward::Reward((Reward *)v0);
  *v1 = off_969AB0;
  return v1;
}


// ===== 482f4c Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation(Reward_ConsumeLoot *this, __sFILE *s)
{
  int v2; // r5
  int v4; // r3
  const char *v5; // r2
  int v6; // r3
  const char *v7; // r2

  v2 = *((_DWORD *)this + 3);
  fwrite("\t  v2QuestRewardConsumeLoot\n", 1u, 0x1Cu, s);
  v4 = *(_DWORD *)(v2 + 12);
  if ( v4 >= 0 && v4 < (unsigned int)Arrays::ItemTable::size )
    v5 = *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v4);
  else
    v5 = "na";
  fprintf(s, "\t\t  Loot=ItemTable.%s\n", v5);
  v6 = *(_DWORD *)(v2 + 8);
  if ( v6 < 0 || v6 >= (unsigned int)Arrays::ItemTable::size )
    v7 = "na";
  else
    v7 = *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v6);
  return fprintf(s, "\t\t  Qty=%d\n", v7);
}


// ===== 483034 Reward_ConsumeLoot::Give(void) =====
int __fastcall Reward_ConsumeLoot::Give(Reward_ConsumeLoot *this)
{
  int v2; // r5

  v2 = *((_DWORD *)this + 3);
  if ( !*((_BYTE *)this + 8)
    || ItemInventory::TryConsuming(
         (ItemInventory *)(*((_DWORD *)this + 4) + 892),
         *(_DWORD *)(v2 + 12),
         *(_DWORD *)(v2 + 8)) )
  {
    return 0;
  }
  ItemInventory::FindItem((ItemInventory *)(*((_DWORD *)this + 4) + 892), *(_DWORD *)(v2 + 12));
  return 0;
}


// ===== 483088 Reward_Loot::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward_Loot::DBG_TraceDetailedRewardInformation(Reward_Loot *this, __sFILE *s)
{
  char *ConstantName; // r0
  int v5; // r3
  const char *v6; // r2

  fwrite("\t  v2QuestRewardGiveLoot\n", 1u, 0x19u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestRewardType",
                   *(_DWORD *)(*((_DWORD *)this + 5) + 4));
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  v5 = *(_DWORD *)(*((_DWORD *)this + 5) + 12);
  if ( v5 < 0 || v5 >= (unsigned int)Arrays::LootTable::size )
    v6 = "na";
  else
    v6 = *(const char **)(Arrays::LootTable::m_memberNames + 4 * v5);
  return fprintf(s, "\t    Loot        : %s \n", v6);
}


// ===== 483160 Reward_XP::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward_XP::DBG_TraceDetailedRewardInformation(Reward_XP *this, __sFILE *s)
{
  int v2; // r6
  char *ConstantName; // r0

  v2 = *((_DWORD *)this + 3);
  fwrite("\t  v2QuestRewardGiveXP\n", 1u, 0x17u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestRewardType",
                   *(_DWORD *)(v2 + 4));
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  return fprintf(s, "\t    XP          : %dXP\n\n", *(_DWORD *)(v2 + 8));
}


// ===== 4831ec Reward_Gold::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward_Gold::DBG_TraceDetailedRewardInformation(Reward_Gold *this, __sFILE *s)
{
  int v2; // r6
  char *ConstantName; // r0

  v2 = *((_DWORD *)this + 3);
  fwrite("\t  v2QuestRewardGiveGold\n", 1u, 0x19u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestRewardType",
                   *(_DWORD *)(v2 + 4));
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  return fprintf(s, "\t    Gold        : %dG\n\n", *(_DWORD *)(v2 + 8));
}


// ===== 483278 Reward::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward::DBG_TraceDetailedRewardInformation(Reward *this, __sFILE *s)
{
  char *ConstantName; // r2

  fwrite("\t  Unimplemented Trace for reward\n", 1u, 0x22u, s);
  ConstantName = PyDataConstants::getConstantName(
                   (PyDataConstants *)dword_99F758,
                   "v2QuestRewardType",
                   *((_DWORD *)this + 1));
  return fprintf(s, "\t    Type : %s\n\n", ConstantName);
}


// ===== 4832ec Reward_Loot::Give(void) =====
int __fastcall Reward_Loot::Give(Reward_Loot *this)
{
  int v2; // [sp+4h] [bp-8h]

  if ( !*((_BYTE *)this + 8) )
    return *((unsigned __int8 *)this + 8);
  ItemObject::DropLootTable(
    *(ItemObject **)(*((_DWORD *)this + 5) + 12),
    *((ItemInventory **)this + 4),
    *((const GameObject **)this + 4),
    *((const GameObject **)this + 4),
    (const Character *)0xFFFFFFFF,
    v2);
  return 1;
}


// ===== 483330 Reward_CharacterProps::DBG_TraceDetailedRewardInformation(__sFILE *) =====
int __fastcall Reward_CharacterProps::DBG_TraceDetailedRewardInformation(Reward_CharacterProps *this, __sFILE *s)
{
  int *v4; // r6
  char *ConstantName; // r0
  const char *Name; // r2

  v4 = *((int **)this + 3);
  fwrite("\t  v2QuestRewardGiveCharProps\n", 1u, 0x1Eu, s);
  ConstantName = PyDataConstants::getConstantName((PyDataConstants *)dword_99F758, "v2QuestRewardType", v4[1]);
  fprintf(s, "\t    Type        : %s\n", ConstantName);
  fprintf(s, "\t    Amount      : %d \n", v4[2]);
  Name = (const char *)CharProperties::DBG_PROPS_GetName((CharProperties *)(*((_DWORD *)this + 6) + 1376), v4[3]);
  return fprintf(s, "\t\t Property    : %s \n\n", Name);
}


// ===== 4833e8 Reward_CharacterProps::Give(void) =====
int __fastcall Reward_CharacterProps::Give(Reward_CharacterProps *this)
{
  if ( !*((_BYTE *)this + 8) )
    return *((unsigned __int8 *)this + 8);
  Character::ModifyCharProps(
    *((Character **)this + 6),
    *(_DWORD *)(*((_DWORD *)this + 5) + 12),
    *(_DWORD *)(*((_DWORD *)this + 5) + 8) << 8);
  return 1;
}


// ===== 483420 Reward_XP::Give(void) =====
int __fastcall Reward_XP::Give(Reward_XP *this)
{
  int result; // r0

  result = *((unsigned __int8 *)this + 8);
  if ( result )
  {
    if ( Character::_GiveXP(*((Character **)this + 4), *(_DWORD *)(*((_DWORD *)this + 5) + 8) << 8, 1) )
    {
      *(_DWORD *)(*((_DWORD *)this + 4) + 5380) = *(_DWORD *)(*((_DWORD *)this + 5) + 8) << 8;
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 483480 Reward_Gold::Give(void) =====
int __fastcall Reward_Gold::Give(Reward_Gold *this)
{
  int result; // r0

  result = *((unsigned __int8 *)this + 8);
  if ( result )
  {
    ItemInventory::AddGold((ItemInventory *)(*((_DWORD *)this + 4) + 892), *(_DWORD *)(*((_DWORD *)this + 5) + 8));
    *(_DWORD *)(*((_DWORD *)this + 4) + 5376) = *(_DWORD *)(*((_DWORD *)this + 5) + 8);
    return 1;
  }
  return result;
}


// ===== 4834c4 `global constructor keyed to'.._.._sources_Game_Progression_Reward.cpp =====
int `global constructor keyed to'.._.._sources_Game_Progression_Reward.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A61FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A61F8 = 1056964608;
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


// ===== 4835a0 RewardList::CreateRewardString(void) =====
void __fastcall RewardList::CreateRewardString(RewardList *this)
{
  int v1; // r1
  char *v3; // r7
  std::string *v4; // r9
  int v5; // r4
  const char *v6; // r2
  int Constant; // r0
  int String; // r0
  StringManager *v9; // r10
  int Param1; // r0
  int v11; // r3
  int v12; // r10
  StringManager *v13; // r4
  int v14; // r0
  const char *v15; // r4
  size_t v16; // r0
  StringManager *v17; // [sp+4h] [bp-40h]
  StringManager *v18; // [sp+4h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+24h] [bp-20h] BYREF

  v1 = *(_DWORD *)this;
  if ( *(int *)this > 0 )
  {
    v3 = (char *)&dword_0 + 1;
    v4 = (std::string *)((char *)this + 8);
    v5 = 0;
    while ( 1 )
    {
      v11 = *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v5);
      if ( !*(_BYTE *)(v11 + 8) )
        goto LABEL_7;
      v12 = *(_DWORD *)(v11 + 4);
      v19._M_finish = (char *)&v19;
      v19._M_start_of_storage._M_data = (char *)&v19;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 1u);
      v19._M_finish = v19._M_start_of_storage._M_data;
      *v19._M_start_of_storage._M_data = 0;
      if ( !v12 )
        break;
      if ( v12 == 1 )
      {
        v6 = "GAMEPLAYMENUS_REWARD_DETAIL_EXP";
LABEL_4:
        v17 = (StringManager *)dword_99F760;
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", v6);
        String = StringManager::getString(v17, Constant);
        v9 = (StringManager *)dword_99F760;
        v18 = (StringManager *)String;
        Param1 = Reward::GetParam1(*(Reward **)(*((_DWORD *)this + 1) + 4 * v5));
        StringManager::parse(v9, (std::string *)&v19, (const char *)v18, Param1);
        if ( !v3 )
          std::string::_M_append(v4, "\n", "");
      }
      std::string::_M_append(v4, v19._M_start_of_storage._M_data, v19._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
      v1 = *(_DWORD *)this;
      v3 = nullptr;
LABEL_7:
      if ( v1 <= ++v5 )
      {
        if ( v3 )
        {
          v13 = (StringManager *)dword_99F760;
          v14 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_AUTOTRANSMUTE_1");
          v15 = (const char *)StringManager::getString(v13, v14);
          v16 = LC_API_STRLEN_0(v15);
          std::string::_M_assign(v4, v15, &v15[v16]);
        }
        return;
      }
    }
    v6 = "GAMEPLAYMENUS_REWARD_DETAIL_GOLD";
    goto LABEL_4;
  }
}


// ===== 4837d0 Reward_Gold::~Reward_Gold() =====
void __fastcall Reward_Gold::~Reward_Gold(Reward_Gold *this)
{
  *(_DWORD *)this = off_969AB0;
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 48380c Reward_ConsumeLoot::~Reward_ConsumeLoot() =====
void __fastcall Reward_ConsumeLoot::~Reward_ConsumeLoot(Reward_ConsumeLoot *this)
{
  *(_DWORD *)this = off_969A30;
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 483848 Reward_Loot::~Reward_Loot() =====
void __fastcall Reward_Loot::~Reward_Loot(Reward_Loot *this)
{
  *(_DWORD *)this = off_969A50;
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 483884 Reward_CharacterProps::~Reward_CharacterProps() =====
void __fastcall Reward_CharacterProps::~Reward_CharacterProps(Reward_CharacterProps *this)
{
  *(_DWORD *)this = off_969A70;
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 4838c0 Reward_XP::~Reward_XP() =====
void __fastcall Reward_XP::~Reward_XP(Reward_XP *this)
{
  *(_DWORD *)this = off_969A90;
  Reward::~Reward(this);
  CustomFree(this);
}


// ===== 4838fc RewardList::InvalidateCompile(void) =====
std::string *__fastcall RewardList::InvalidateCompile(RewardList *this)
{
  std::string *result; // r0
  int v3; // r3
  int v4; // r2

  result = std::string::_M_assign((std::string *const)((char *)this + 8), "", "");
  if ( *(int *)this > 0 )
  {
    v3 = 0;
    do
    {
      v4 = *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v3++);
      *(_BYTE *)(v4 + 8) = 0;
    }
    while ( *(_DWORD *)this > v3 );
  }
  return result;
}


// ===== 483950 RewardList::AssignPyData(Structs::v2QuestRewardStub *,int) =====
int __fastcall RewardList::AssignPyData(int a1, int a2, int a3)
{
  int v4; // r5
  int result; // r0
  int v6; // r3
  int v7; // r7
  int v8; // r6
  int v9; // r2
  int v10; // r3

  *(_DWORD *)(a1 + 32) = a2;
  v4 = a2;
  *(_DWORD *)a1 = a3;
  std::string::_M_assign((std::string *const)(a1 + 8), "", "");
  result = *(_DWORD *)a1;
  if ( *(int *)a1 > 0 )
  {
    result = (int)operator new[](4 * result, 0);
    v6 = *(_DWORD *)a1;
    v7 = result;
    *(_DWORD *)(a1 + 4) = result;
    if ( v6 > 0 )
    {
      v8 = 0;
      while ( 1 )
      {
        result = s_RewardImplDataMap[*(_DWORD *)(v4 + 4)]();
        *(_DWORD *)(v7 + 4 * v8) = result;
        *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * v8) + 12) = v4;
        v9 = *(_DWORD *)(v4 + 4);
        v4 += 16;
        v10 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * v8++);
        *(_DWORD *)(v10 + 4) = v9;
        if ( *(_DWORD *)a1 <= v8 )
          break;
        v7 = *(_DWORD *)(a1 + 4);
      }
    }
  }
  return result;
}


// ===== 483a04 TiXmlVisitor::~TiXmlVisitor() =====
void __fastcall TiXmlVisitor::~TiXmlVisitor(TiXmlVisitor *this)
{
  ;
}


// ===== 483a08 TiXmlVisitor::VisitEnter(TiXmlDocument const&) =====
int TiXmlVisitor::VisitEnter()
{
  return 1;
}


// ===== 483a10 TiXmlVisitor::VisitExit(TiXmlDocument const&) =====
int TiXmlVisitor::VisitExit()
{
  return 1;
}


// ===== 483a18 TiXmlVisitor::VisitEnter(TiXmlElement const&,TiXmlAttribute const*) =====
int TiXmlVisitor::VisitEnter()
{
  return 1;
}


// ===== 483a20 TiXmlVisitor::VisitExit(TiXmlElement const&) =====
int TiXmlVisitor::VisitExit()
{
  return 1;
}


// ===== 483a28 TiXmlVisitor::Visit(TiXmlDeclaration const&) =====
int TiXmlVisitor::Visit()
{
  return 1;
}


// ===== 483a30 TiXmlVisitor::Visit(TiXmlText const&) =====
int TiXmlVisitor::Visit()
{
  return 1;
}


// ===== 483a38 TiXmlVisitor::Visit(TiXmlComment const&) =====
int TiXmlVisitor::Visit()
{
  return 1;
}


// ===== 483a40 TiXmlVisitor::Visit(TiXmlUnknown const&) =====
int TiXmlVisitor::Visit()
{
  return 1;
}


// ===== 483a48 TiXmlHandle::ToElement(void) =====
int __fastcall TiXmlHandle::ToElement(TiXmlHandle *this)
{
  if ( *(_DWORD *)this && (*(int (__fastcall **)(_DWORD))(**(_DWORD **)this + 44))(*(_DWORD *)this) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)this + 44))(*(_DWORD *)this);
  else
    return 0;
}


// ===== 483a94 rnd::RandomGenerator::NextInt(void) =====
int __fastcall rnd::RandomGenerator::NextInt(rnd::RandomGenerator *this)
{
  unsigned __int64 v1; // r2

  v1 = 279470273 * (unsigned __int64)(unsigned int)(*(_DWORD *)this + 1) % 0xFFFFFFFB;
  *(_DWORD *)this = v1;
  return v1;
}


// ===== 483ac8 rnd::RandomGenerator::GetInt(int,int) =====
rnd::RandomGenerator *__fastcall rnd::RandomGenerator::GetInt(
        rnd::RandomGenerator *this,
        rnd::RandomGenerator *a2,
        int a3)
{
  if ( (int)a2 < a3 )
    return (rnd::RandomGenerator *)((char *)a2 + rnd::RandomGenerator::NextInt(this) % (unsigned int)(a3 - (_DWORD)a2));
  else
    return a2;
}


// ===== 483af8 rnd::RandomGenerator::operator()(uint) =====
unsigned int __fastcall rnd::RandomGenerator::operator()(rnd::RandomGenerator *a1, unsigned int a2)
{
  return rnd::RandomGenerator::NextInt(a1) % a2;
}


// ===== 483b14 rnd::RandomGenerator::Hash(uchar *) =====
int __fastcall rnd::RandomGenerator::Hash(rnd::RandomGenerator *this, unsigned __int8 *a2)
{
  int v2; // r3
  int result; // r0
  int v4; // r2
  int v5; // t1

  v2 = *a2;
  if ( !*a2 )
    return 5381;
  result = 5381;
  do
  {
    v4 = v2 + 32 * result;
    v5 = *++a2;
    v2 = v5;
    result += v4;
  }
  while ( v5 );
  return result;
}


// ===== 483b40 std::priv::__find_if<std::reverse_iterator<char const*>,std::priv::_Eq_char_bound<std::char_traits<char>>>(std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_char_bound<std::char_traits<char>>,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find_if<std::reverse_iterator<char const*>,std::priv::_Eq_char_bound<std::char_traits<char>>>(
        _DWORD *result,
        int *a2,
        int *a3,
        char *a4)
{
  int v4; // r4
  int v5; // r12
  int v6; // r6
  int v7; // r5
  int v8; // r6
  int v9; // r7
  int v10; // r8
  int v11; // r4
  int v12; // t1

  v4 = *a3;
  v5 = *a2;
  v6 = *a2 - *a3;
  v7 = v6 >> 2;
  if ( v6 >> 2 <= 0 )
  {
LABEL_14:
    if ( v6 == 2 )
    {
      v4 = v5;
LABEL_19:
      v5 = v4 - 1;
      if ( *(char *)(v4 - 1) == *a4 )
        goto LABEL_17;
      *a2 = v5;
LABEL_22:
      if ( *(char *)(v5 - 1) != *a4 )
      {
        v4 = *a3;
        goto LABEL_17;
      }
      goto LABEL_24;
    }
    if ( v6 != 3 )
    {
      if ( v6 != 1 )
      {
LABEL_17:
        *result = v4;
        return result;
      }
      goto LABEL_22;
    }
    v4 = v5 - 1;
    if ( *(char *)(v5 - 1) != *a4 )
    {
      *a2 = v4;
      goto LABEL_19;
    }
LABEL_24:
    *result = v5;
    return result;
  }
  v8 = v5 - 1;
  if ( *(char *)(v5 - 1) == *a4 )
    goto LABEL_24;
  *a2 = v8;
  v9 = v5 - 2;
  if ( *(char *)(v5 - 2) == *a4 )
  {
LABEL_25:
    *result = v8;
  }
  else
  {
    *a2 = v9;
    v10 = v5 - 3;
    if ( *(char *)(v5 - 3) == *a4 )
    {
LABEL_26:
      *result = v9;
    }
    else
    {
      *a2 = v10;
      if ( *(char *)(v5 - 4) != *a4 )
      {
        v11 = v5 - 4;
        while ( 1 )
        {
          --v7;
          v5 = v11;
          *a2 = v11;
          if ( !v7 )
            break;
          v8 = v11 - 1;
          v9 = v11 - 2;
          if ( *(char *)(v11 - 1) == *a4 )
            goto LABEL_24;
          *a2 = v8;
          v10 = v11 - 3;
          if ( *(char *)(v11 - 2) == *a4 )
            goto LABEL_25;
          *a2 = v9;
          if ( *(char *)(v11 - 3) == *a4 )
            goto LABEL_26;
          *a2 = v10;
          v12 = *(char *)(v11 - 4);
          v11 -= 4;
          if ( *a4 == v12 )
            goto LABEL_27;
        }
        v4 = *a3;
        v6 = v5 - *a3;
        goto LABEL_14;
      }
LABEL_27:
      *result = v10;
    }
  }
  return result;
}


// ===== 483cbc std::priv::_Deque_iterator_base<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>::_M_subtract(std::priv::_Deque_iterator_base<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>> const&) =====
int __fastcall std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -858993459 * ((a2[2] - *a2) >> 3) - 858993459 * ((*a1 - a1[1]) >> 3) + 3 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 483d30 std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(std::priv::_Deque_iterator_base<rnd::Tile *> const&) =====
int __fastcall std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 483d74 std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(_DWORD *result, int a2)
{
  int v2; // r2
  int v4; // r1
  unsigned int v5; // r3
  unsigned int v6; // r2
  int v7; // r3

  v2 = a2 + ((*result - result[1]) >> 2);
  if ( v2 <= 31 && v2 >= 0 )
  {
    *result += 4 * a2;
  }
  else
  {
    v4 = result[3];
    if ( v2 <= 0 )
      v5 = ~((unsigned int)~v2 >> 5);
    else
      v5 = (unsigned int)v2 >> 5;
    result[3] = v4 + 4 * v5;
    v6 = v2 - 32 * v5;
    v7 = *(_DWORD *)(v4 + 4 * v5);
    *result = v7 + 4 * v6;
    result[2] = v7 + 128;
    result[1] = v7;
  }
  return result;
}


// ===== 483de8 std::uninitialized_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile * const&) =====
int __fastcall std::uninitialized_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int v3; // r7
  _DWORD *v4; // r4
  int v5; // lr
  _DWORD *v6; // r5
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int result; // r0
  _DWORD *v14; // t1
  _DWORD v15[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v16[5]; // [sp+10h] [bp-14h] BYREF

  v3 = *(_DWORD *)(a1 + 12);
  v4 = *(_DWORD **)a1;
  v5 = *(_DWORD *)(a1 + 4);
  v6 = *(_DWORD **)(a1 + 8);
  v8 = *a2;
  v12 = a2 + 1;
  v9 = a2[1];
  v10 = *++v12;
  v11 = v12[1];
  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v3;
  result = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(v16, v15);
  if ( result > 0 )
  {
    do
    {
      --result;
      *v4++ = *a3;
      if ( v4 == v6 )
      {
        v14 = *(_DWORD **)(v3 + 4);
        v3 += 4;
        v4 = v14;
        v6 = v14 + 32;
      }
    }
    while ( result );
  }
  return result;
}


// ===== 483e54 std::priv::_Deque_iterator_base<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(_DWORD *result, int a2)
{
  int v2; // r2
  unsigned int v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3

  v2 = a2 - 858993459 * ((*result - result[1]) >> 3);
  if ( v2 <= 2 && v2 >= 0 )
  {
    *result += 40 * a2;
  }
  else
  {
    if ( v2 <= 0 )
      v4 = (2863311531u * (unsigned __int64)(unsigned int)~v2) >> 32;
    else
      v4 = (2863311531u * (unsigned __int64)(unsigned int)v2) >> 32;
    if ( v2 > 0 )
      v4 >>= 1;
    v5 = result[3];
    if ( v2 <= 0 )
      v4 = ~(v4 >> 1);
    v6 = v2 - 3 * v4;
    result[3] = v5 + 4 * v4;
    v7 = *(_DWORD *)(v5 + 4 * v4);
    *result = v7 + 40 * v6;
    result[2] = v7 + 120;
    result[1] = v7;
  }
  return result;
}


// ===== 483f00 std::priv::__copy_backward<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__copy_backward<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        int *a1,
        int *a2,
        int *a3,
        int *a4)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // t0
  int v12; // r0
  _DWORD *v13; // r2
  int v14; // r3
  int v15; // r3
  int *v16; // r2
  int v17; // r2
  int v18; // r3
  int *v19; // r1
  int v20; // r1
  int v21; // r1
  int v22; // r2
  int v23; // r3
  _DWORD v25[4]; // [sp+0h] [bp-10h] BYREF

  v7 = *a2;
  v11 = a2 + 1;
  v8 = a2[1];
  v9 = *++v11;
  v10 = v11[1];
  v25[0] = v7;
  v25[1] = v8;
  v25[2] = v9;
  v25[3] = v10;
  v12 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a3, v25);
  if ( v12 > 0 )
  {
    while ( 1 )
    {
      v15 = *a4;
      if ( *a4 == a4[1] )
      {
        v16 = (int *)(a4[3] - 4);
        a4[3] = (int)v16;
        v17 = *v16;
        v18 = v17 + 128;
        a4[1] = v17;
        v13 = (_DWORD *)(v17 + 124);
        *a4 = v18;
        a4[2] = v18;
        *a4 = (int)v13;
        v14 = *a3;
        if ( *a3 == a3[1] )
          goto LABEL_7;
LABEL_4:
        *a3 = v14 - 4;
        --v12;
        *v13 = *(_DWORD *)(v14 - 4);
        if ( !v12 )
          break;
      }
      else
      {
        v13 = (_DWORD *)(v15 - 4);
        *a4 = v15 - 4;
        v14 = *a3;
        if ( *a3 != a3[1] )
          goto LABEL_4;
LABEL_7:
        --v12;
        v19 = (int *)(a3[3] - 4);
        a3[3] = (int)v19;
        v20 = *v19;
        a3[1] = v20;
        *a3 = v20 + 128;
        a3[2] = v20 + 128;
        *a3 = v20 + 124;
        *v13 = *(_DWORD *)(v20 + 124);
        if ( !v12 )
          break;
      }
    }
  }
  v21 = a4[1];
  v22 = a4[2];
  v23 = a4[3];
  *a1 = *a4;
  a1[1] = v21;
  a1[2] = v22;
  a1[3] = v23;
  return a1;
}


// ===== 483ffc std::priv::__copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r0
  int v14; // r2
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int *v18; // r2
  int v19; // r3
  int v20; // r2
  int v21; // r3
  int *v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD v28[4]; // [sp+0h] [bp-10h] BYREF

  v8 = *(_DWORD **)a2;
  v12 = (_DWORD *)(a2 + 4);
  v9 = *(_DWORD *)(a2 + 4);
  v10 = *++v12;
  v11 = v12[1];
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v11;
  v13 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a3, v28);
  if ( v13 > 0 )
  {
    while ( 1 )
    {
      **(_DWORD **)a4 = **(_DWORD **)a2;
      v16 = *(_DWORD *)(a2 + 8);
      v17 = *(_DWORD *)a2 + 4;
      *(_DWORD *)a2 = v17;
      if ( v17 == v16 )
      {
        v18 = (int *)(*(_DWORD *)(a2 + 12) + 4);
        *(_DWORD *)(a2 + 12) = v18;
        v19 = *v18;
        *(_DWORD *)(a2 + 8) = *v18 + 128;
        *(_DWORD *)a2 = v19;
        *(_DWORD *)(a2 + 4) = v19;
        v20 = *(_DWORD *)(a4 + 8);
        v21 = *(_DWORD *)a4 + 4;
        *(_DWORD *)a4 = v21;
        if ( v21 == v20 )
          goto LABEL_7;
LABEL_4:
        if ( !--v13 )
          break;
      }
      else
      {
        v14 = *(_DWORD *)(a4 + 8);
        v15 = *(_DWORD *)a4 + 4;
        *(_DWORD *)a4 = v15;
        if ( v15 != v14 )
          goto LABEL_4;
LABEL_7:
        --v13;
        v22 = (int *)(*(_DWORD *)(a4 + 12) + 4);
        *(_DWORD *)(a4 + 12) = v22;
        v23 = *v22;
        *(_DWORD *)(a4 + 8) = *v22 + 128;
        *(_DWORD *)a4 = v23;
        *(_DWORD *)(a4 + 4) = v23;
        if ( !v13 )
          break;
      }
    }
  }
  v24 = *(_DWORD *)(a4 + 4);
  v25 = *(_DWORD *)(a4 + 8);
  v26 = *(_DWORD *)(a4 + 12);
  *a1 = *(_DWORD *)a4;
  a1[1] = v24;
  a1[2] = v25;
  a1[3] = v26;
  return a1;
}


// ===== 4840f4 std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        int *a1,
        int a2,
        _DWORD *a3,
        int *a4)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r0
  int v15; // r2
  int v16; // r3
  int v17; // r2
  int v18; // r3
  int *v19; // r2
  int v20; // r3
  int v21; // r2
  int v22; // r3
  int *v23; // r2
  int v24; // r3
  _DWORD v26[5]; // [sp+0h] [bp-14h] BYREF

  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  v11 = *(_DWORD *)(a2 + 4);
  v12 = *(_DWORD *)(a2 + 8);
  v13 = *(_DWORD *)(a2 + 12);
  v26[0] = *(_DWORD *)a2;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v14 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a3, v26);
  if ( v14 > 0 )
  {
    while ( 1 )
    {
      *(_DWORD *)*a1 = **(_DWORD **)a2;
      v17 = *(_DWORD *)(a2 + 8);
      v18 = *(_DWORD *)a2 + 4;
      *(_DWORD *)a2 = v18;
      if ( v18 == v17 )
      {
        v19 = (int *)(*(_DWORD *)(a2 + 12) + 4);
        *(_DWORD *)(a2 + 12) = v19;
        v20 = *v19;
        *(_DWORD *)(a2 + 8) = *v19 + 128;
        *(_DWORD *)a2 = v20;
        *(_DWORD *)(a2 + 4) = v20;
        v21 = a1[2];
        v22 = *a1 + 4;
        *a1 = v22;
        if ( v22 == v21 )
          goto LABEL_7;
LABEL_4:
        if ( !--v14 )
          return a1;
      }
      else
      {
        v15 = a1[2];
        v16 = *a1 + 4;
        *a1 = v16;
        if ( v16 != v15 )
          goto LABEL_4;
LABEL_7:
        --v14;
        v23 = (int *)(a1[3] + 4);
        a1[3] = (int)v23;
        v24 = *v23;
        a1[2] = *v23 + 128;
        *a1 = v24;
        a1[1] = v24;
        if ( !v14 )
          return a1;
      }
    }
  }
  return a1;
}


// ===== 4841e8 std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile * const&,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(
        int *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int result; // r0
  int v10; // r2
  int v11; // r3
  int *v12; // r2
  int v13; // r3
  _DWORD v14[5]; // [sp+0h] [bp-14h] BYREF

  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v14[0] = *a1;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  result = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a2, v14);
  if ( result > 0 )
  {
    do
    {
      while ( 1 )
      {
        *(_DWORD *)*a1 = *a3;
        v10 = a1[2];
        v11 = *a1 + 4;
        *a1 = v11;
        if ( v11 == v10 )
          break;
        if ( !--result )
          return result;
      }
      --result;
      v12 = (int *)(a1[3] + 4);
      a1[3] = (int)v12;
      v13 = *v12;
      a1[2] = *v12 + 128;
      *a1 = v13;
      a1[1] = v13;
    }
    while ( result );
  }
  return result;
}


// ===== 48427c std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Const_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(std::priv::_Deque_iterator<rnd::Tile *,std::_Const_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Const_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::random_access_iterator_tag const&,int *) =====
int *std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Const_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        int *a1,
        ...)
{
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // r3
  int v9; // r2
  int v10; // r3
  int *v11; // r2
  int v12; // r3
  _DWORD *varg_r1; // [sp+Ch] [bp+Ch] BYREF
  va_list varg_r1a; // [sp+Ch] [bp+Ch]
  _DWORD *varg_r2; // [sp+10h] [bp+10h]
  int varg_r3; // [sp+14h] [bp+14h]
  _DWORD *v18; // [sp+18h] [bp+18h]
  int v19; // [sp+1Ch] [bp+1Ch] BYREF
  va_list va1; // [sp+1Ch] [bp+1Ch]
  int v21; // [sp+20h] [bp+20h]
  int v22; // [sp+24h] [bp+24h]
  int v23; // [sp+28h] [bp+28h]
  int *v24; // [sp+2Ch] [bp+2Ch]
  va_list va2; // [sp+30h] [bp+30h] BYREF

  va_start(va2, a1);
  va_start(va1, a1);
  va_start(varg_r1a, a1);
  varg_r1 = va_arg(va1, _DWORD *);
  varg_r2 = va_arg(va1, _DWORD *);
  varg_r3 = va_arg(va1, _DWORD);
  v18 = va_arg(va1, _DWORD *);
  va_copy(va2, va1);
  v19 = va_arg(va2, _DWORD);
  v21 = va_arg(va2, _DWORD);
  v22 = va_arg(va2, _DWORD);
  v23 = va_arg(va2, _DWORD);
  v24 = va_arg(va2, int *);
  v2 = v24[1];
  v3 = v24[2];
  v4 = v24[3];
  *a1 = *v24;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract((int *)&va1, (_DWORD **)&varg_r1a);
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      *(_DWORD *)*a1 = *varg_r1++;
      if ( varg_r1 == (_DWORD *)varg_r3 )
      {
        v8 = (_DWORD *)*++v18;
        varg_r3 = *v18 + 128;
        varg_r1 = v8;
        varg_r2 = v8;
        v9 = a1[2];
        v10 = *a1 + 4;
        *a1 = v10;
        if ( v10 == v9 )
          goto LABEL_7;
LABEL_4:
        if ( !--v5 )
          return a1;
      }
      else
      {
        v6 = a1[2];
        v7 = *a1 + 4;
        *a1 = v7;
        if ( v7 != v6 )
          goto LABEL_4;
LABEL_7:
        --v5;
        v11 = (int *)(a1[3] + 4);
        a1[3] = (int)v11;
        v12 = *v11;
        a1[2] = *v11 + 128;
        *a1 = v12;
        a1[1] = v12;
        if ( !v5 )
          return a1;
      }
    }
  }
  return a1;
}

