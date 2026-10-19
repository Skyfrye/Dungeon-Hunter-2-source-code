// ===== 393ae4 GameObject::GetLookAtVec(Point3D<float> &) =====
unsigned int __fastcall GameObject::GetLookAtVec(int a1, float *a2)
{
  float v2; // r4
  float v4; // r6
  unsigned int result; // r0

  v2 = *(float *)(a1 + 372);
  v4 = sinf(v2);
  result = ((int (*)(float))cosf)(v2) + 0x80000000;
  *a2 = v4;
  a2[2] = 0.0;
  *((_DWORD *)a2 + 1) = result;
  return result;
}


// ===== 393b1c GameObject::LookTowards(Point3D<float> const&) =====
float __fastcall GameObject::LookTowards(int a1, float *a2)
{
  float v2; // r5
  float v5; // r4
  float result; // r0
  float v7; // r0
  float v8; // r5
  float v9; // r0

  v2 = a2[1];
  if ( v2 == 0.0 )
  {
    v5 = *a2;
    LODWORD(result) = *a2 > 0.0;
    if ( *a2 > 0.0 )
    {
      *(_DWORD *)(a1 + 376) = 1070141403;
    }
    else
    {
      LODWORD(result) = v5 < 0.0;
      if ( v5 < 0.0 )
        *(_DWORD *)(a1 + 376) = 1083624420;
    }
  }
  else
  {
    v7 = atanf(*a2 / COERCE_FLOAT(LODWORD(v2) + 0x80000000));
    *(float *)(a1 + 376) = v7;
    v8 = v7;
    LODWORD(result) = a2[1] > 0.0;
    if ( a2[1] > 0.0 )
    {
      LOWORD(v9) = 4059;
      if ( *a2 > 0.0 )
        HIWORD(v9) = 16457;
      else
        HIWORD(v9) = -16311;
      result = v9 + v8;
      *(float *)(a1 + 376) = result;
    }
  }
  return result;
}


// ===== 393be8 GameObject::SetHeadingDirection(Point3D<float> const&,bool) =====
float __fastcall GameObject::SetHeadingDirection(int a1, float *a2, int a3)
{
  float v3; // r3
  float v5; // r7
  float v8; // r7
  int v9; // r6
  float result; // r0
  float v11; // r0

  v3 = *a2;
  *(float *)(a1 + 440) = *a2;
  v5 = a2[1];
  *(_DWORD *)(a1 + 448) = 0;
  *(float *)(a1 + 444) = v5;
  v8 = (float)((float)(v3 * v3) + (float)(v5 * v5)) + 0.0;
  v9 = v8 > 0.0001;
  *(_BYTE *)(a1 + 437) = v9;
  LODWORD(result) = v8 > 1.0;
  if ( v8 > 1.0 )
  {
    v11 = 1.0 / sqrtf(v8);
    *(float *)(a1 + 440) = *(float *)(a1 + 440) * v11;
    *(float *)(a1 + 444) = *(float *)(a1 + 444) * v11;
    result = *(float *)(a1 + 448) * v11;
    v9 = *(unsigned __int8 *)(a1 + 437);
    *(float *)(a1 + 448) = result;
  }
  if ( v9 )
  {
    if ( a3 )
      return COERCE_FLOAT(GameObject::LookTowards(a1, a2));
  }
  return result;
}


// ===== 393cec GameObject::LookAt(Point3D<float> const&) =====
int __fastcall GameObject::LookAt(float *a1, float *a2)
{
  float v2; // r7
  float v3; // r6
  float v5[4]; // [sp+4h] [bp-10h] BYREF

  v2 = a2[1] - a1[89];
  v3 = a2[2] - a1[90];
  v5[0] = *a2 - a1[88];
  v5[1] = v2;
  v5[2] = v3;
  return GameObject::LookTowards(a1, v5);
}


// ===== 393d48 GameObject::LookAt(GameObject*) =====
int __fastcall GameObject::LookAt(int this, GameObject *a2)
{
  int v2; // r4
  char *TargetPosition; // r1

  v2 = this;
  if ( a2 )
  {
    TargetPosition = GameObject::GetTargetPosition(a2);
    return GameObject::LookAt(v2, TargetPosition);
  }
  return this;
}


// ===== 393d74 GameObject::UpdateTargetPosition(void) =====
_DWORD *__fastcall GameObject::UpdateTargetPosition(_DWORD *this)
{
  _DWORD *v1; // r1
  _DWORD *v2; // r4
  int v3; // r3
  int v4; // r1
  _DWORD v5[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = (_DWORD *)*(this + 96);
  v2 = this;
  if ( v1 )
  {
    this = glitch::scene::ISceneNode::getAbsolutePosition(v5, v1);
    v3 = v5[2];
    v4 = v5[0];
    v2[98] = v5[1];
    v2[99] = v3;
    v2[97] = v4;
  }
  return this;
}


// ===== 393db4 GameObject::SetPosition(Point3D<float> const&,bool) =====
VisualObject *__fastcall GameObject::SetPosition(GameObject *this, float *a2, int a3)
{
  float *v3; // r5
  float v7; // r10
  float v8; // r0
  PhysicalObject *v9; // r0
  VisualObject *result; // r0

  v3 = *((float **)this + 184);
  if ( v3 )
  {
    v7 = a2[1] - *((float *)this + 89);
    v8 = a2[2] - *((float *)this + 90);
    v3[3] = v3[3] + (float)(*a2 - *((float *)this + 88));
    v3[4] = v3[4] + v7;
    v3[5] = v3[5] + v8;
  }
  *((float *)this + 88) = *a2;
  *((float *)this + 89) = a2[1];
  *((float *)this + 90) = a2[2];
  GameObject::UpdateAbsoluteAABB(this);
  v9 = *((PhysicalObject **)this + 183);
  if ( v9 )
    PhysicalObject::setPosition(v9, *((float *)this + 88), *((float *)this + 89));
  result = *((VisualObject **)this + 182);
  if ( result )
    result = (VisualObject *)VisualObject::SyncPosition(result);
  if ( a3 )
    return (VisualObject *)GameObject::SetDestination(this, a2);
  return result;
}


// ===== 393e90 GameObject::ForceUpdatePosition(void) =====
VisualObject *__fastcall GameObject::ForceUpdatePosition(GameObject *this)
{
  VisualObject *result; // r0

  result = *((VisualObject **)this + 182);
  if ( result )
    return (VisualObject *)VisualObject::ForceUpdatePosition(result);
  return result;
}


// ===== 393ea0 GameObject::UpdatePFObject(void) =====
float __fastcall GameObject::UpdatePFObject(float this)
{
  float v1; // r4
  PhysicalObject *v2; // r0
  float v3; // r5
  int v4; // r7
  float v5; // r6
  float v6; // r0

  v1 = this;
  if ( *(_DWORD *)(LODWORD(this) + 456) )
  {
    if ( (*(int (__fastcall **)(float))(*(_DWORD *)LODWORD(this) + 180))(COERCE_FLOAT(LODWORD(this))) )
    {
      v4 = *(_DWORD *)(LODWORD(v1) + 732);
      v5 = COERCE_FLOAT((*(int (__fastcall **)(float))(*(_DWORD *)LODWORD(v1) + 184))(COERCE_FLOAT(LODWORD(v1))));
      v6 = COERCE_FLOAT((*(int (__fastcall **)(float))(*(_DWORD *)LODWORD(v1) + 188))(COERCE_FLOAT(LODWORD(v1))));
      PFWorld::InitObstacle((PFWorld *)&Singleton<PFWorld>::s_inst, (PFObject *)(LODWORD(v1) + 456), v4 != 0, v5, v6);
    }
    v2 = *(PhysicalObject **)(LODWORD(v1) + 732);
    if ( v2 )
    {
      this = COERCE_FLOAT(PhysicalObject::getRadius(v2));
      *(float *)(LODWORD(v1) + 464) = this;
    }
    else
    {
      v3 = *(float *)(LODWORD(v1) + 336) - *(float *)(LODWORD(v1) + 324);
      if ( v3 < (float)(*(float *)(LODWORD(v1) + 340) - *(float *)(LODWORD(v1) + 328)) )
        v3 = *(float *)(LODWORD(v1) + 340) - *(float *)(LODWORD(v1) + 328);
      *(float *)(LODWORD(v1) + 464) = v3 * 0.5;
      return v3 * 0.5;
    }
  }
  return this;
}


// ===== 393f90 `global constructor keyed to'.._.._sources_Game_Objects_GameObject_MoveLookPath.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_GameObject_MoveLookPath.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A279C = 1056964608;
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
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 3940c0 GameObject::UpdatePath(void) =====
void __fastcall GameObject::UpdatePath(GameObject *this)
{
  int v1; // r2
  int v2; // r1
  int v3; // r3
  GameObject *v5; // r4
  GameObject *v6; // r3
  int v7; // r3
  int v8; // r2
  float v9; // r1
  float v10; // r0
  float v11; // r8
  char v12; // r8
  float v13[3]; // [sp+0h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+Ch] [bp-20h] BYREF
  int v15; // [sp+24h] [bp-8h]

  v1 = *((_DWORD *)this + 89);
  v2 = _stack_chk_guard;
  v3 = *((_DWORD *)this + 90);
  *((_DWORD *)this + 120) = *((_DWORD *)this + 88);
  v15 = v2;
  *((_DWORD *)this + 122) = v3;
  *((_DWORD *)this + 121) = v1;
  if ( !(*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 92))(this) )
    return;
  v5 = *((GameObject **)this + 128);
  if ( v5 != (GameObject *)((char *)this + 512) )
  {
    do
      v5 = *(GameObject **)v5;
    while ( (GameObject *)((char *)this + 512) != v5 );
    PFWorld::MovePath(&Singleton<PFWorld>::s_inst, (char *)this + 456, (char *)this + 424);
    GameObject::SetDestination(this, (char *)this + 424);
  }
  if ( GameObject::IsAtDestination(this) )
  {
    if ( *((_BYTE *)this + 436) )
    {
      v6 = *((GameObject **)this + 128);
      if ( v6 == v5 )
      {
        GameObject::Stop(this);
      }
      else
      {
        do
          v6 = *(GameObject **)v6;
        while ( v6 != v5 );
      }
    }
LABEL_9:
    v7 = *((unsigned __int8 *)this + 437);
    goto LABEL_10;
  }
  v9 = *((float *)this + 89);
  v10 = *((float *)this + 107);
  *((_BYTE *)this + 436) = 1;
  v11 = *((float *)this + 108) - *((float *)this + 90);
  v13[0] = *((float *)this + 106) - *((float *)this + 88);
  v13[1] = v10 - v9;
  v13[2] = v11;
  GameObject::SetHeadingDirection((int)this, v13, 1);
  if ( !*((_BYTE *)this + 437) )
    goto LABEL_13;
  if ( !(*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 124))(this) )
    goto LABEL_9;
  PFWorld::AvoidObstacles(&Singleton<PFWorld>::s_inst, (char *)this + 456, (char *)this + 440);
  GameObject::SetHeadingDirection((int)this, (float *)this + 110, 1);
  v7 = *((unsigned __int8 *)this + 437);
LABEL_10:
  if ( !v7 )
  {
LABEL_13:
    *((_DWORD *)this + 115) &= ~2u;
    return;
  }
  v8 = *((unsigned __int8 *)this + 452);
  *((_DWORD *)this + 115) |= 2u;
  if ( v8 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v14._M_finish = (char *)&v14;
    v14._M_start_of_storage._M_data = (char *)&v14;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v14, 0x15u);
    v14._M_finish = (char *)memcpy(v14._M_start_of_storage._M_data, "DisableWallAvoidance", 0x14u) + 20;
    *v14._M_finish = 0;
    v12 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14) ^ 1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
    if ( v12 )
    {
      PFWorld::ValidateDirection(&Singleton<PFWorld>::s_inst, (char *)this + 440, (char *)this + 456);
      GameObject::SetHeadingDirection((int)this, (float *)this + 110, 1);
    }
  }
}


// ===== 394338 GameObject::SetVisualObject(VisualObject *) =====
int __fastcall GameObject::SetVisualObject(int result, int a2)
{
  int v2; // r3
  int v3; // r4

  v2 = *(_DWORD *)(result + 728);
  v3 = result;
  if ( v2 != a2 )
  {
    if ( v2 )
    {
      result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(_DWORD *)(result + 728));
      *(_DWORD *)(v3 + 728) = 0;
    }
    *(_DWORD *)(v3 + 728) = a2;
  }
  return result;
}


// ===== 394378 GameObject::SetCameraAnchorObject(AnchorBase *) =====
int __fastcall GameObject::SetCameraAnchorObject(int result, int a2)
{
  int v2; // r3
  int v3; // r4

  v2 = *(_DWORD *)(result + 736);
  v3 = result;
  if ( v2 != a2 )
  {
    if ( v2 )
    {
      result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(_DWORD *)(result + 736));
      *(_DWORD *)(v3 + 736) = 0;
    }
    *(_DWORD *)(v3 + 736) = a2;
  }
  return result;
}


// ===== 3943b8 GameObject::GetCameraAnchorPosition(void) =====
char *__fastcall GameObject::GetCameraAnchorPosition(GameObject *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 184);
  if ( v1 )
    return (char *)(v1 + 12);
  else
    return (char *)this + 352;
}


// ===== 3943cc GameObject::UpdateSubObjects(void) =====
float __fastcall GameObject::UpdateSubObjects(GameObject *this)
{
  int v1; // r3
  int v3; // r3
  int v4; // r7
  int v5; // r8
  int v6; // r0
  int v7; // r1
  int v8; // r6
  int v9; // r10
  float v10; // r9
  float v11; // r0
  float v12; // r8
  VisualObject *v13; // r0
  PhysicalObject *v14; // r0
  int v15; // r7
  int v16; // r0
  VisualObject *v17; // r0
  int v18; // r2
  int v19; // r3
  float result; // r0
  int v21; // r3
  int v22; // r3
  PhysicalObject *v23; // r0
  int v24; // r3
  __int16 *v25; // r3
  __int16 v26; // r2
  int v27; // r3
  int v28; // r5
  float *v29; // r4
  float v30; // r0
  float v31; // r6
  float v32; // r4
  float v33; // r2
  int v34; // r3
  char *v35; // r7
  PhysicalObject *v36; // r0
  VisualObject *v37; // r0
  float v38; // r9
  int CurrentLevel; // r0
  int v40; // r2
  int v41; // r3
  int v42; // r0
  float v43; // [sp+0h] [bp-24h] BYREF
  float v44; // [sp+4h] [bp-20h]
  float v45; // [sp+8h] [bp-1Ch]
  float v46; // [sp+Ch] [bp-18h] BYREF
  float v47; // [sp+10h] [bp-14h]
  float v48; // [sp+14h] [bp-10h]
  float v49; // [sp+18h] [bp-Ch] BYREF
  float v50; // [sp+1Ch] [bp-8h]

  v1 = *((_DWORD *)this + 182);
  if ( v1 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 8))(*((_DWORD *)this + 182));
  v3 = *((_DWORD *)this + 183);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 32))(*((_DWORD *)this + 183));
  v4 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 96))(this);
  v5 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 100))(this);
  v6 = GameObject::IsAtDestination(this);
  v7 = *((_DWORD *)this + 183);
  v8 = v6;
  if ( v7 )
  {
    if ( (**(_WORD **)(v7 + 20) & 8) != 0
      || (PhysicalObject::getPosition((PhysicalObject *)&v49), fabs(v49 - *((float *)this + 88)) <= 1.0)
      && fabs(v50 - *((float *)this + 89)) <= 1.0 )
    {
      v9 = 0;
    }
    else
    {
      v33 = v50;
      v34 = *(_DWORD *)this;
      *((float *)this + 88) = v49;
      *((float *)this + 89) = v33;
      if ( (*(int (__fastcall **)(GameObject *))(v34 + 116))(this) == 1 )
      {
        v9 = PFWorld::ValidatePosition((int)&Singleton<PFWorld>::s_inst, (int)this + 352, (int)this + 456);
        if ( !v9 )
          PhysicalObject::setPosition(*((PhysicalObject **)this + 183), *((float *)this + 88), *((float *)this + 89));
      }
      else
      {
        v9 = 1;
      }
    }
    if ( v5 )
    {
      v10 = *((float *)this + 107) - *((float *)this + 89);
      v11 = *((float *)this + 108) - *((float *)this + 90);
      v46 = *((float *)this + 106) - *((float *)this + 88);
      v47 = v10;
      v48 = v11;
      v12 = (float)((float)(v46 * v46) + (float)(v10 * v10)) + (float)(v11 * v11);
      if ( v12 > 0.0 )
      {
        v38 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 168))(this));
        if ( v12 <= 400.0 )
        {
          PhysicalObject::setLinearVelocity(*((PhysicalObject **)this + 183), 0.0, 0.0);
          PhysicalObject::setPosition(*((PhysicalObject **)this + 183), *((float *)this + 88), *((float *)this + 89));
        }
        else
        {
          Point3D<float>::normalize(&v46);
          v46 = v38 * v46;
          v47 = v38 * v47;
          v48 = v48 * v38;
          PhysicalObject::setLinearVelocity(*((PhysicalObject **)this + 183), v46, v47);
        }
      }
    }
    else
    {
      PhysicalObject::setLinearVelocity(*((PhysicalObject **)this + 183), 0.0, 0.0);
    }
  }
  else
  {
    v9 = 0;
  }
  if ( v4 )
  {
    v13 = *((VisualObject **)this + 182);
    if ( !v13 )
      goto LABEL_15;
    if ( v9 )
      goto LABEL_14;
    VisualObject::ApplyPosition(v13);
    v24 = *((_DWORD *)this + 183);
    if ( v24 )
    {
      v25 = *(__int16 **)(v24 + 20);
      v26 = *v25;
      *((_DWORD *)v25 + 35) = 0;
      *v25 = v26 & 0xFFF7;
    }
  }
  v13 = *((VisualObject **)this + 182);
  if ( v13 )
LABEL_14:
    VisualObject::SyncPosition(v13);
LABEL_15:
  v14 = *((PhysicalObject **)this + 183);
  if ( v14 )
    PhysicalObject::setPosition(v14, *((float *)this + 88), *((float *)this + 89));
  v15 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 104))(this);
  v16 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 108))(this);
  if ( v15 && *((_DWORD *)this + 182) )
  {
    VisualObject::ApplyRotation(*((VisualObject **)this + 182));
  }
  else if ( v16 )
  {
    v23 = *((PhysicalObject **)this + 183);
    if ( v23 )
    {
      if ( (**((_WORD **)v23 + 5) & 8) == 0 )
        *((_DWORD *)this + 93) = PhysicalObject::getAngle(v23);
    }
  }
  if ( *((_DWORD *)this + 182) )
  {
    if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 112))(this) )
      VisualObject::SyncRotation(*((VisualObject **)this + 182));
    v17 = *((VisualObject **)this + 182);
    if ( v17 )
      VisualObject::SyncScaling(v17);
  }
  if ( !(*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 116))(this) )
  {
    if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 120))(this)
      && (CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)) != 0 )
    {
      v35 = (char *)this + 352;
      if ( !Level::CanMoveTowards(CurrentLevel, (float *)this + 88, (float *)this + 110) )
      {
        v40 = *((_DWORD *)this + 121);
        v41 = *((_DWORD *)this + 122);
        *((_DWORD *)this + 88) = *((_DWORD *)this + 120);
        *((_DWORD *)this + 89) = v40;
        *((_DWORD *)this + 90) = v41;
        goto LABEL_54;
      }
    }
    else
    {
      v35 = (char *)this + 352;
    }
    if ( PFWorld::ValidatePosition((int)&Singleton<PFWorld>::s_inst, (int)v35, (int)this + 456) )
    {
LABEL_56:
      v37 = *((VisualObject **)this + 182);
      if ( v37 )
        VisualObject::SyncPosition(v37);
      goto LABEL_26;
    }
LABEL_54:
    v36 = *((PhysicalObject **)this + 183);
    if ( v36 )
      PhysicalObject::setPosition(v36, *((float *)this + 88), *((float *)this + 89));
    goto LABEL_56;
  }
LABEL_26:
  if ( v8 )
  {
    v18 = *((_DWORD *)this + 89);
    v19 = *((_DWORD *)this + 90);
    *((_DWORD *)this + 106) = *((_DWORD *)this + 88);
    *((_DWORD *)this + 107) = v18;
    *((_DWORD *)this + 108) = v19;
  }
  result = GameObject::UpdateAbsoluteAABB(this);
  v21 = *((_DWORD *)this + 184);
  if ( v21 )
  {
    result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 12))(*((_DWORD *)this + 184)));
    v22 = *((_DWORD *)this + 184);
    if ( *(_DWORD *)(v22 + 4) == 2 )
    {
      v27 = *(_DWORD *)(v22 + 60);
      if ( v27 == 3 )
      {
        v42 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        return COERCE_FLOAT(CameraTarget::EnableDamping(*(_DWORD *)(v42 + 296), 1));
      }
      else if ( v27 == 4 || v27 == 1 )
      {
        result = COERCE_FLOAT(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst));
        v28 = *(_DWORD *)(LODWORD(result) + 296);
        if ( *(_BYTE *)(v28 + 37) )
        {
          v29 = *((float **)this + 184);
          glitch::scene::ISceneNode::getAbsolutePosition(&v43, *(_DWORD **)(v28 + 4));
          v30 = v29[5] - v45;
          v31 = v30;
          v32 = (float)((float)(v29[3] - v43) * (float)(v29[3] - v43))
              + (float)((float)(v29[4] - v44) * (float)(v29[4] - v44));
          LODWORD(result) = (float)(v32 + (float)(v30 * v30)) <= 3.0;
          if ( (float)(v32 + (float)(v31 * v31)) <= 3.0 )
            return COERCE_FLOAT(CameraTarget::EnableDamping(v28, 0));
        }
      }
    }
  }
  return result;
}


// ===== 3949b0 GameObject::DisableCollisions(void) =====
int __fastcall GameObject::DisableCollisions(GameObject *this)
{
  int v2; // r0
  int result; // r0
  float v4; // r5
  float v5; // r0

  v2 = *((_DWORD *)this + 183);
  if ( v2 )
    PhysicalObject::disableFilter(v2);
  result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 180))(this);
  if ( result )
  {
    v4 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 184))(this));
    v5 = (*(float (__fastcall **)(GameObject *))(*(_DWORD *)this + 188))(this);
    return PFWorld::InitObstacle((PFWorld *)&Singleton<PFWorld>::s_inst, (GameObject *)((char *)this + 456), 0, v4, v5);
  }
  return result;
}


// ===== 394a3c GameObject::EnableCollisions(void) =====
int __fastcall GameObject::EnableCollisions(GameObject *this)
{
  PhysicalObject *v2; // r0
  int result; // r0
  float v4; // r5
  float v5; // r0

  v2 = *((PhysicalObject **)this + 183);
  if ( v2 )
    PhysicalObject::enableFilter(v2);
  result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 180))(this);
  if ( result )
  {
    v4 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 184))(this));
    v5 = (*(float (__fastcall **)(GameObject *))(*(_DWORD *)this + 188))(this);
    return PFWorld::InitObstacle((PFWorld *)&Singleton<PFWorld>::s_inst, (GameObject *)((char *)this + 456), 1, v4, v5);
  }
  return result;
}


// ===== 394ac8 `global constructor keyed to'.._.._sources_Game_Objects_GameObject_SubObjects.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_GameObject_SubObjects.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27A8 = 1056964608;
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
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 394bf8 GameObject::SetPhysicalObject(PhysicalObject *,bool) =====
void __fastcall GameObject::SetPhysicalObject(GameObject *this, PhysicalObject *a2, int a3)
{
  int Switch; // r8
  PhysicalObject *v7; // r3
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v8, 0xDu);
  v8._M_finish = (char *)memcpy(v8._M_start_of_storage._M_data, "MP_NoPhysics", 0xCu) + 12;
  *v8._M_finish = 0;
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  if ( Switch )
  {
    if ( a2 )
      (*(void (__fastcall **)(PhysicalObject *))(*(_DWORD *)a2 + 4))(a2);
  }
  else
  {
    v7 = *((PhysicalObject **)this + 183);
    if ( v7 == a2 )
      goto LABEL_10;
    if ( v7 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)this + 183));
      *((_DWORD *)this + 183) = 0;
    }
    *((_DWORD *)this + 183) = a2;
    if ( a2 && a3 )
    {
      PhysicalObject::pin(a2);
      GameObject::UpdatePFObject(*(float *)&this);
    }
    else
    {
LABEL_10:
      GameObject::UpdatePFObject(*(float *)&this);
    }
  }
}


// ===== 394d34 GameObject::SetVisualObject(char const*,char const*,bool) =====
int __fastcall GameObject::SetVisualObject(const char **this, const char *a2, const char *a3, int a4)
{
  std::string *v7; // r8
  size_t v8; // r0
  bool v9; // zf
  std::string *v10; // r7
  const char *v11; // r2
  VisualObject *v12; // r5
  int result; // r0

  if ( a4 )
  {
    v7 = (std::string *)(this + 164);
    if ( a2 )
    {
LABEL_3:
      v8 = LC_API_STRLEN_0(a2);
      std::string::_M_assign(v7, a2, &a2[v8]);
      v9 = a3 == nullptr;
      if ( a3 )
        v9 = a2 == nullptr;
      v10 = (std::string *)(this + 170);
      if ( v9 )
      {
        std::string::_M_assign((std::string *const)(this + 170), "", "");
        if ( *(this + 168) != *(this + 169) )
        {
LABEL_8:
          v12 = (VisualObject *)operator new(172, 0);
          VisualObject::VisualObject(v12, (GameObject *)this, v7, v10);
          if ( !*((_DWORD *)v12 + 2) )
            return (*(int (__fastcall **)(VisualObject *))(*(_DWORD *)v12 + 4))(v12);
          result = GameObject::SetVisualObject((GameObject *)this, v12);
          *(_DWORD *)(*((_DWORD *)v12 + 2) + 516) = this;
          return result;
        }
        return GameObject::SetVisualObject((GameObject *)this, nullptr);
      }
      v11 = &a3[LC_API_STRLEN_0(a3)];
LABEL_7:
      std::string::_M_assign(v10, a3, v11);
      if ( *(this + 168) != *(this + 169) )
        goto LABEL_8;
      return GameObject::SetVisualObject((GameObject *)this, nullptr);
    }
LABEL_19:
    v10 = (std::string *)(this + 170);
    std::string::_M_assign(v7, "", "");
    a3 = "";
    v11 = "";
    goto LABEL_7;
  }
  if ( !a2 )
  {
    v7 = (std::string *)(this + 164);
    goto LABEL_19;
  }
  result = LC_API_STRCMP_0(a2, *(this + 169));
  if ( result || a3 && (result = LC_API_STRCMP_0(a3, *(this + 175))) != 0 )
  {
    v7 = (std::string *)(this + 164);
    goto LABEL_3;
  }
  return result;
}


// ===== 394eb0 GameObject::LoadVisualObject(void) =====
int __fastcall GameObject::LoadVisualObject(const char **this)
{
  return GameObject::SetVisualObject((GameObject *)this, *(this + 169), *(this + 175), 1);
}


// ===== 394ec0 SoundEmitter::Draw(void) =====
void __fastcall SoundEmitter::Draw(SoundEmitter *this)
{
  ;
}


// ===== 394ec4 SoundEmitter::IsZonable(void) =====
int __fastcall SoundEmitter::IsZonable(SoundEmitter *this)
{
  return 1;
}


// ===== 394ecc SoundEmitter::IsUpdatable(void) =====
int __fastcall SoundEmitter::IsUpdatable(SoundEmitter *this)
{
  return 1;
}


// ===== 394ed4 SimpleTypeProperty<float>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<float>::IsDefaultValue(int a1, int a2)
{
  return *(float *)(a2 + *(_DWORD *)(a1 + 4)) == *(float *)(a1 + 32);
}


// ===== 394f00 SimpleTypeProperty<float>::SetToDefaultValue(void *) =====
int __fastcall SimpleTypeProperty<float>::SetToDefaultValue(int result, int a2)
{
  *(_DWORD *)(a2 + *(_DWORD *)(result + 4)) = *(_DWORD *)(result + 32);
  return result;
}


// ===== 394f10 SimpleTypeProperty<std::string>::SimpleTypeProperty(void) =====
_DWORD *__fastcall SimpleTypeProperty<std::string>::SimpleTypeProperty(_DWORD *a1)
{
  _DWORD *v2; // r0

  *a1 = &off_95C5E8;
  v2 = a1 + 2;
  a1[6] = v2;
  a1[7] = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  *(_BYTE *)a1[6] = 0;
  *a1 = &off_95C5C8;
  a1[12] = a1 + 8;
  a1[13] = a1 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 8, 0x10u);
  *(_BYTE *)a1[12] = 0;
  return a1;
}


// ===== 394f98 SimpleTypeProperty<float>::Clone(void) =====
int __fastcall SimpleTypeProperty<float>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x24u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)v2 = &off_964898;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  return v2;
}


// ===== 39503c PropertyMap::AddProperty<float>(char const*,float &,float) =====
_DWORD *__fastcall PropertyMap::AddProperty<float>(PropertyMap *a1, char *a2, int a3, int a4)
{
  int v8; // r8

  v8 = operator new(0x24u, 0);
  *(_DWORD *)v8 = &off_95C5E8;
  std::string::string((std::string *)(v8 + 8), a2);
  *(_DWORD *)(v8 + 4) = a3 - (_DWORD)a1;
  *(_DWORD *)(v8 + 32) = a4;
  *(_DWORD *)v8 = &off_964898;
  return PropertyMap::AddProperty(a1, a2, (Property *)v8);
}


// ===== 3950c8 SimpleTypeProperty<float>::SetDefaultValueFromString(char const*) =====
float __fastcall SimpleTypeProperty<float>::SetDefaultValueFromString(int a1, char *a2)
{
  *(_DWORD *)(a1 + 32) = 0;
  return StrToObj(a2, (float *)(a1 + 32));
}


// ===== 3950e0 SimpleTypeProperty<float>::FromString(void *,char const*) =====
float __fastcall SimpleTypeProperty<float>::FromString(int a1, int a2, char *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)(a2 + v3) = 0;
  return StrToObj(a3, (float *)(a2 + v3));
}


// ===== 3950fc SimpleTypeProperty<float>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<float>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (float *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 395144 SoundEmitter::InitPost(void) =====
int __fastcall SoundEmitter::InitPost(int this)
{
  int v1; // r8
  const char *v2; // r6
  int v3; // r5
  int v4; // r4
  int v5; // r7

  v1 = this;
  v2 = *(const char **)(this + 908);
  v3 = Arrays::Sounds::size;
  if ( Arrays::Sounds::size )
  {
    v4 = 0;
    v5 = Arrays::Sounds::m_memberNames;
    while ( 1 )
    {
      this = LC_API_STRCMP_0(v2, *(const char **)(v5 + 4 * v4));
      if ( !this )
        break;
      if ( ++v4 == v3 )
        goto LABEL_6;
    }
    *(_DWORD *)(v1 + 912) = v4;
  }
  else
  {
LABEL_6:
    *(_DWORD *)(v1 + 912) = -1;
  }
  return this;
}


// ===== 3951c0 SoundEmitter::Update(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall SoundEmitter::Update(SoundEmitter *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  float *character_660; // r3
  float v4; // r0
  float v5; // r0
  float v6; // r7
  float v7; // r6
  int v8; // r3
  int v9; // r1
  float v10; // r6
  float v11; // r4
  float v12[3]; // [sp+10h] [bp-1Ch] BYREF
  float v13; // [sp+1Ch] [bp-10h] BYREF
  float v14; // [sp+20h] [bp-Ch]
  float v15; // [sp+24h] [bp-8h]

  result = (DH2_PlayerInfoCharacterPrefix *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !result )
    return result;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  if ( !result->character_660 )
    return result;
  result = (DH2_PlayerInfoCharacterPrefix *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( *(_DWORD *)&result->unknown_000[304] != 38 )
    return result;
  character_660 = (float *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  v4 = *((float *)this + 88);
  v13 = character_660[88];
  v14 = character_660[89];
  v15 = character_660[90];
  v5 = sqrt((float)((float)((float)((float)(v4 - v13) * (float)(v4 - v13))
                          + (float)((float)(*((float *)this + 89) - v14) * (float)(*((float *)this + 89) - v14)))
                  + (float)((float)(*((float *)this + 90) - v15) * (float)(*((float *)this + 90) - v15))));
  v6 = v5;
  if ( *((_BYTE *)this + 924) )
  {
    v7 = *((float *)this + 230);
    result = (DH2_PlayerInfoCharacterPrefix *)(v7 <= v5);
    if ( !result )
      return result;
    result = (DH2_PlayerInfoCharacterPrefix *)(v7 > 0.0);
    if ( v7 <= 0.0 )
      return result;
    *((_BYTE *)this + 924) = 0;
    if ( !VoxSoundManager::s_instance )
      goto LABEL_11;
    result = (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::Stop3D(
                                                VoxSoundManager::s_instance,
                                                *((_DWORD *)this + 228),
                                                250,
                                                &v13,
                                                v7);
    if ( *((_BYTE *)this + 924) )
      return result;
  }
  v7 = *((float *)this + 230);
LABEL_11:
  result = (DH2_PlayerInfoCharacterPrefix *)(v7 > v6);
  if ( v7 > v6 )
  {
    result = (DH2_PlayerInfoCharacterPrefix *)(v7 > 0.0);
    if ( v7 > 0.0 )
    {
      *((_BYTE *)this + 924) = 1;
      result = (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::s_instance;
      if ( VoxSoundManager::s_instance )
      {
        v8 = *((unsigned __int8 *)this + 884);
        v9 = *((_DWORD *)this + 228);
        v10 = *((float *)this + 89);
        v11 = *((float *)this + 90);
        v12[0] = *((float *)this + 88);
        v12[1] = v10;
        v12[2] = v11;
        return (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::Play3D(
                                                  VoxSoundManager::s_instance,
                                                  v9,
                                                  v12,
                                                  v8,
                                                  COERCE_FLOAT(1),
                                                  -1.0,
                                                  -1.0);
      }
    }
  }
  return result;
}


// ===== 3953d8 `non-virtual thunk to'SoundEmitter::~SoundEmitter() =====
void __fastcall `non-virtual thunk to'SoundEmitter::~SoundEmitter(SoundEmitter *this)
{
  SoundEmitter::~SoundEmitter((SoundEmitter *)((char *)this - 36));
}


// ===== 3953e0 SoundEmitter::~SoundEmitter() =====
None

// ===== 39546c `non-virtual thunk to'SoundEmitter::~SoundEmitter() =====
void __fastcall `non-virtual thunk to'SoundEmitter::~SoundEmitter(SoundEmitter *this)
{
  SoundEmitter::~SoundEmitter((SoundEmitter *)((char *)this - 36));
}


// ===== 395474 SoundEmitter::~SoundEmitter() =====
void __fastcall SoundEmitter::~SoundEmitter(SoundEmitter *this)
{
  SoundEmitter::~SoundEmitter(this);
  CustomFree(this);
}


// ===== 395490 SoundEmitter::~SoundEmitter() =====
None

// ===== 39551c SoundEmitter::SoundEmitter(ObjectBase::GO_IDS) =====
int __fastcall SoundEmitter::SoundEmitter(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_964988;
  *(_DWORD *)(a1 + 36) = off_964994;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)a1 = off_9648B8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 888), 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_BYTE *)(a1 + 924) = 0;
  *(_DWORD *)(a1 + 912) = -1;
  *(_DWORD *)(a1 + 920) = -1082130432;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 916) = -1082130432;
  return a1;
}


// ===== 3955a8 SoundEmitter::SoundEmitter(ObjectBase::GO_IDS) =====
int __fastcall SoundEmitter::SoundEmitter(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_964988;
  *(_DWORD *)(a1 + 36) = off_964994;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)a1 = off_9648B8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 888), 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_BYTE *)(a1 + 924) = 0;
  *(_DWORD *)(a1 + 912) = -1;
  *(_DWORD *)(a1 + 920) = -1082130432;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 916) = -1082130432;
  return a1;
}


// ===== 395634 `global constructor keyed to'.._.._sources_Game_Objects_SoundEmitter.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_SoundEmitter.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27B4 = 1056964608;
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


// ===== 395710 `non-virtual thunk to'SoundEmitter::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'SoundEmitter::DeclareProperties(SoundEmitter *this)
{
  return SoundEmitter::DeclareProperties((SoundEmitter *)((char *)this - 4));
}


// ===== 395718 SoundEmitter::DeclareProperties(void) =====
_DWORD *__fastcall SoundEmitter::DeclareProperties(SoundEmitter *this)
{
  PropertyMap *v1; // r4
  char *v3; // r10
  int v4; // r7
  int v5; // r7
  int Constant; // r0
  int v7; // r0
  std::string v9; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+2Ch] [bp-20h] BYREF

  v1 = (SoundEmitter *)((char *)this + 4);
  v3 = (char *)this + 884;
  GameObject::DeclareProperties(this);
  v4 = operator new(0x24u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "loop");
  *(_DWORD *)(v4 + 4) = v3 - (char *)v1;
  *(_DWORD *)v4 = &off_95C608;
  *(_BYTE *)(v4 + 32) = 1;
  PropertyMap::AddProperty(v1, "loop", (Property *)v4);
  v10._M_finish = (char *)&v10;
  v10._M_start_of_storage._M_data = (char *)&v10;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v10, 0x10u);
  *v10._M_finish = 0;
  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::string::_M_range_initialize(&v9, v10._M_start_of_storage._M_data, v10._M_finish);
  v5 = operator new(0x38u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "sound");
  *(_DWORD *)(v5 + 4) = (SoundEmitter *)((char *)this + 888) - v1;
  *(_DWORD *)v5 = &off_95C5C8;
  *(_DWORD *)(v5 + 48) = v5 + 32;
  *(_DWORD *)(v5 + 52) = v5 + 32;
  std::string::_M_range_initialize((std::string *)(v5 + 32), v9._M_start_of_storage._M_data, v9._M_finish);
  PropertyMap::AddProperty(v1, "sound", (Property *)v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AudioConstants", "CameraReferenceDistance");
  PropertyMap::AddProperty<float>(v1, "distMin", (int)this + 916, COERCE_INT((float)Constant));
  v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AudioConstants", "CameraMaxDistance");
  return PropertyMap::AddProperty<float>(v1, "distMax", (int)this + 920, COERCE_INT((float)v7));
}


// ===== 395940 Zone::OnCollision(GameObject *) =====
void __fastcall Zone::OnCollision(Zone *this, GameObject *a2)
{
  ;
}


// ===== 395944 Zone::OnCollisionPersists(GameObject *) =====
void __fastcall Zone::OnCollisionPersists(Zone *this, GameObject *a2)
{
  ;
}


// ===== 395948 Zone::OnCollisionEnds(GameObject *) =====
void __fastcall Zone::OnCollisionEnds(Zone *this, GameObject *a2)
{
  ;
}


// ===== 39594c CheckpointZone::CheckpointZone(ObjectBase::GO_IDS) =====
int __fastcall CheckpointZone::CheckpointZone(int a1, int a2)
{
  Zone::Zone(a1, a2, 1, 1);
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 36) = off_964A9C;
  *(_DWORD *)a1 = off_9649B0;
  *(_DWORD *)(a1 + 4) = &off_964A90;
  *(_BYTE *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 916) = a1 + 904;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 912) = a1 + 904;
  return a1;
}


// ===== 3959b4 CheckpointZone::CheckpointZone(ObjectBase::GO_IDS) =====
int __fastcall CheckpointZone::CheckpointZone(int a1, int a2)
{
  Zone::Zone(a1, a2, 1, 1);
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 36) = off_964A9C;
  *(_DWORD *)a1 = off_9649B0;
  *(_DWORD *)(a1 + 4) = &off_964A90;
  *(_BYTE *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 916) = a1 + 904;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 912) = a1 + 904;
  return a1;
}


// ===== 395a1c `global constructor keyed to'.._.._sources_Game_Objects_Zones_CheckpointZone.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Zones_CheckpointZone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27C4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27C0 = 1056964608;
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


// ===== 395af8 std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_erase(
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
      std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 395b30 `non-virtual thunk to'CheckpointZone::~CheckpointZone() =====
void __fastcall `non-virtual thunk to'CheckpointZone::~CheckpointZone(CheckpointZone *this)
{
  CheckpointZone::~CheckpointZone((CheckpointZone *)((char *)this - 36));
}


// ===== 395b38 CheckpointZone::~CheckpointZone() =====
void __fastcall CheckpointZone::~CheckpointZone(CheckpointZone *this)
{
  bool v1; // zf
  char *v3; // r5

  v1 = *((_DWORD *)this + 230) == 0;
  *(_DWORD *)this = off_9649B0;
  *((_DWORD *)this + 1) = &off_964A90;
  *((_DWORD *)this + 9) = off_964A9C;
  if ( !v1 )
  {
    v3 = (char *)this + 904;
    std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_erase(
      (int)this + 904,
      *((_DWORD **)this + 227));
    *((_DWORD *)this + 229) = v3;
    *((_DWORD *)this + 230) = 0;
    *((_DWORD *)this + 228) = v3;
    *((_DWORD *)this + 227) = 0;
  }
  Zone::~Zone(this);
}


// ===== 395bac `non-virtual thunk to'CheckpointZone::~CheckpointZone() =====
void __fastcall `non-virtual thunk to'CheckpointZone::~CheckpointZone(CheckpointZone *this)
{
  CheckpointZone::~CheckpointZone((CheckpointZone *)((char *)this - 36));
}


// ===== 395bb4 CheckpointZone::~CheckpointZone() =====
void __fastcall CheckpointZone::~CheckpointZone(CheckpointZone *this)
{
  CheckpointZone::~CheckpointZone(this);
  CustomFree(this);
}


// ===== 395bd0 CheckpointZone::~CheckpointZone() =====
void __fastcall CheckpointZone::~CheckpointZone(CheckpointZone *this)
{
  bool v1; // zf
  char *v3; // r5

  v1 = *((_DWORD *)this + 230) == 0;
  *(_DWORD *)this = off_9649B0;
  *((_DWORD *)this + 1) = &off_964A90;
  *((_DWORD *)this + 9) = off_964A9C;
  if ( !v1 )
  {
    v3 = (char *)this + 904;
    std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_erase(
      (int)this + 904,
      *((_DWORD **)this + 227));
    *((_DWORD *)this + 229) = v3;
    *((_DWORD *)this + 230) = 0;
    *((_DWORD *)this + 228) = v3;
    *((_DWORD *)this + 227) = 0;
  }
  Zone::~Zone(this);
}


// ===== 395c44 std::allocator<std::priv::_Rb_tree_node<Character *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<Character *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 395c64 std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_insert(std::priv::_Rb_tree_node_base *,Character * const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r1
  _DWORD *v13; // r0
  int v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<Character *>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[4] = v11;
    v8[2] = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || (unsigned int)*a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<Character *>>::allocate();
    v8 = v7;
    v9 = *a4;
    v7[3] = 0;
    v7[4] = v9;
    v7[2] = 0;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<Character *>>::allocate();
    v8 = v13;
    v14 = *a4;
    v13[3] = 0;
    v13[2] = 0;
    v13[4] = v14;
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


// ===== 395d84 std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::insert_unique(Character * const&) =====
int __fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::insert_unique(
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
    std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_insert(
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
      if ( (unsigned int)*a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::_M_insert(
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


// ===== 395f04 CheckpointZone::OnCollisionBegins(GameObject *) =====
char *__fastcall CheckpointZone::OnCollisionBegins(CheckpointZone *this, GameObject *a2)
{
  char *result; // r0
  Character *character_660; // r5
  int CurrentLevel; // r7
  char *v7; // r3
  char *v8; // r1
  unsigned int v9; // r2
  bool v10; // cc
  char *v11; // r2
  _BYTE v12[12]; // [sp+8h] [bp-1Ch] BYREF
  _BYTE v13[8]; // [sp+14h] [bp-10h] BYREF
  unsigned int v14; // [sp+1Ch] [bp-8h]

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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\CheckpointZone.cpp",
        38);
    }
  }
  result = (char *)(*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2);
  if ( result )
  {
    ObjectBase::GetHandle((ObjectBase *)v12);
    v14 = ObjectHandle::operator Character *(v12);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "l",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\CheckpointZone.cpp",
          46);
      }
    }
    result = (char *)(*(int (__fastcall **)(unsigned int))(*(_DWORD *)v14 + 40))(v14);
    if ( result )
    {
      if ( (Character *)v14 == character_660 )
      {
        result = (char *)Point3D<float>::operator==((char *)this + 352);
        if ( !result )
          result = (char *)Level::CheckpointSave(CurrentLevel, (_DWORD *)this + 88, 0);
      }
    }
    v7 = *((char **)this + 227);
    v8 = (char *)this + 904;
    if ( !v7 )
      goto LABEL_17;
    result = (char *)this + 904;
    while ( 1 )
    {
      v9 = *((_DWORD *)v7 + 4);
      v10 = v14 > v9;
      v11 = v14 <= v9 ? *((char **)v7 + 2) : *((char **)v7 + 3);
      if ( v10 )
        v7 = result;
      result = v7;
      if ( !v11 )
        break;
      v7 = v11;
    }
    if ( v8 == v7 )
      return (char *)std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::insert_unique(v13);
    if ( v14 < *((_DWORD *)v7 + 4) )
LABEL_17:
      v7 = (char *)this + 904;
    if ( v8 != v7 )
      return result;
    return (char *)std::priv::_Rb_tree<Character *,std::less<Character *>,Character *,std::priv::_Identity<Character *>,std::priv::_SetTraitsT<Character *>,std::allocator<Character *>>::insert_unique(v13);
  }
  return result;
}


// ===== 39611c QuestEvent::~QuestEvent() =====
void __fastcall QuestEvent::~QuestEvent(QuestEvent *this)
{
  ;
}


// ===== 396120 QuestMoveInZone::OnCollisionBegins(GameObject *) =====
void __fastcall QuestMoveInZone::OnCollisionBegins(QuestMoveInZone *this, GameObject *a2)
{
  EventManager *CurrentLevel; // r7
  int v5; // r8
  _DWORD v6[4]; // [sp+Ch] [bp-1Ch] BYREF
  char v7; // [sp+1Ch] [bp-Ch]
  char v8; // [sp+1Dh] [bp-Bh]
  int v9; // [sp+20h] [bp-8h]
  QuestMoveInZone *v10; // [sp+24h] [bp-4h]

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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\QuestMoveInZone.cpp",
        38);
    }
  }
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2) )
  {
    CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
    {
      v5 = *((_DWORD *)this + 25);
      v6[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "MoveInZone");
      v6[2] = a2;
      v6[3] = v5;
      v8 = 0;
      v9 = -1;
      v6[0] = off_969988;
      v10 = this;
      v7 = 0;
      EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v6);
    }
  }
}


// ===== 396250 QuestEvent::~QuestEvent() =====
void __fastcall QuestEvent::~QuestEvent(QuestEvent *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 396284 `non-virtual thunk to'QuestMoveInZone::~QuestMoveInZone() =====
void __fastcall `non-virtual thunk to'QuestMoveInZone::~QuestMoveInZone(QuestMoveInZone *this)
{
  QuestMoveInZone::~QuestMoveInZone((QuestMoveInZone *)((char *)this - 36));
}


// ===== 39628c QuestMoveInZone::~QuestMoveInZone() =====
void __fastcall QuestMoveInZone::~QuestMoveInZone(QuestMoveInZone *this)
{
  *(_DWORD *)this = off_964AD0;
  *((_DWORD *)this + 1) = &off_964BB0;
  *((_DWORD *)this + 9) = off_964BBC;
  Zone::~Zone(this);
}


// ===== 3962cc `non-virtual thunk to'QuestMoveInZone::~QuestMoveInZone() =====
void __fastcall `non-virtual thunk to'QuestMoveInZone::~QuestMoveInZone(QuestMoveInZone *this)
{
  QuestMoveInZone::~QuestMoveInZone((QuestMoveInZone *)((char *)this - 36));
}


// ===== 3962d4 QuestMoveInZone::~QuestMoveInZone() =====
void __fastcall QuestMoveInZone::~QuestMoveInZone(QuestMoveInZone *this)
{
  QuestMoveInZone::~QuestMoveInZone(this);
  CustomFree(this);
}


// ===== 3962f0 QuestMoveInZone::~QuestMoveInZone() =====
void __fastcall QuestMoveInZone::~QuestMoveInZone(QuestMoveInZone *this)
{
  *(_DWORD *)this = off_964AD0;
  *((_DWORD *)this + 1) = &off_964BB0;
  *((_DWORD *)this + 9) = off_964BBC;
  Zone::~Zone(this);
}


// ===== 396330 QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS) =====
_DWORD *__fastcall QuestMoveInZone::QuestMoveInZone(_DWORD *a1, int a2)
{
  Zone::Zone(a1, a2, 1, 0);
  *a1 = off_964AD0;
  a1[1] = &off_964BB0;
  a1[9] = off_964BBC;
  return a1;
}


// ===== 396378 QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS) =====
_DWORD *__fastcall QuestMoveInZone::QuestMoveInZone(_DWORD *a1, int a2)
{
  Zone::Zone(a1, a2, 1, 0);
  *a1 = off_964AD0;
  a1[1] = &off_964BB0;
  a1[9] = off_964BBC;
  return a1;
}


// ===== 3963c0 `global constructor keyed to'.._.._sources_Game_Objects_Zones_QuestMoveInZone.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Zones_QuestMoveInZone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27CC = 1056964608;
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


// ===== 39649c Zone::OnCollisionBegins(GameObject *) =====
void __fastcall Zone::OnCollisionBegins(Zone *this, GameObject *a2)
{
  ;
}


// ===== 3964a0 RoomZone::IsZonable(void) =====
int __fastcall RoomZone::IsZonable(RoomZone *this)
{
  return 0;
}


// ===== 3964a8 RoomZone::HasBeenVisited(void) =====
int __fastcall RoomZone::HasBeenVisited(RoomZone *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 227);
  if ( v1 )
    return *(unsigned __int8 *)(v1 + 1020);
  else
    return 1;
}


// ===== 3964bc RoomZone::SetVisited(bool) =====
int __fastcall RoomZone::SetVisited(int this, bool a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 908);
  if ( v2 )
    *(_BYTE *)(v2 + 1020) = a2;
  return this;
}


// ===== 3964cc RoomZone::HasInside(Point3D<float> const&) =====
bool __fastcall RoomZone::HasInside(float *a1, float *a2)
{
  return a1[75] <= *a2 && *a2 <= a1[78] && a1[76] <= a2[1] && a2[1] <= a1[79];
}


// ===== 396544 RoomZone::Draw(void) =====
void __fastcall RoomZone::Draw(RoomZone *this)
{
  ;
}


// ===== 396548 RoomZone::InitPost(void) =====
// attributes: thunk
void __fastcall RoomZone::InitPost(Zone *this)
{
  Zone::InitPost(this);
}


// ===== 39654c `non-virtual thunk to'RoomZone::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'RoomZone::DeclareProperties(RoomZone *this)
{
  return RoomZone::DeclareProperties((RoomZone *)((char *)this - 4));
}


// ===== 396554 RoomZone::DeclareProperties(void) =====
// attributes: thunk
int __fastcall RoomZone::DeclareProperties(Zone *this)
{
  return Zone::DeclareProperties(this);
}


// ===== 396558 RoomZone::RoomZone(ObjectBase::GO_IDS) =====
int __fastcall RoomZone::RoomZone(int a1, int a2)
{
  Zone::Zone(a1, a2, 0, 1);
  *(_BYTE *)(a1 + 905) = 1;
  *(_DWORD *)(a1 + 4) = &off_964CB8;
  *(_DWORD *)(a1 + 36) = off_964CC4;
  *(_DWORD *)a1 = off_964BD8;
  *(_BYTE *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 920) = a1 + 916;
  *(_BYTE *)(a1 + 904) = 1;
  *(_DWORD *)(a1 + 916) = a1 + 916;
  return a1;
}


// ===== 3965c4 RoomZone::RoomZone(ObjectBase::GO_IDS) =====
int __fastcall RoomZone::RoomZone(int a1, int a2)
{
  Zone::Zone(a1, a2, 0, 1);
  *(_BYTE *)(a1 + 905) = 1;
  *(_DWORD *)(a1 + 4) = &off_964CB8;
  *(_DWORD *)(a1 + 36) = off_964CC4;
  *(_DWORD *)a1 = off_964BD8;
  *(_BYTE *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 920) = a1 + 916;
  *(_BYTE *)(a1 + 904) = 1;
  *(_DWORD *)(a1 + 916) = a1 + 916;
  return a1;
}


// ===== 396630 `global constructor keyed to'.._.._sources_Game_Objects_Zones_RoomZone.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Zones_RoomZone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27D8 = 1056964608;
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


// ===== 39670c std::allocator<std::priv::_List_node<GameObject *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<GameObject *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 39672c RoomZone::AddObject(GameObject *) =====
_DWORD *__fastcall RoomZone::AddObject(_DWORD *this, GameObject *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r3

  v3 = this + 229;
  v2 = (_DWORD *)*(this + 229);
  v4 = this;
  if ( v2 != this + 229 )
  {
    while ( a2 != (GameObject *)v2[2] )
    {
      v2 = (_DWORD *)*v2;
      if ( v3 == v2 )
      {
        v2 = this + 229;
        break;
      }
    }
  }
  if ( v3 == v2 )
  {
    this = (_DWORD *)std::allocator<std::priv::_List_node<GameObject *>>::allocate(this + 229);
    *(this + 2) = a2;
    v5 = (_DWORD *)v4[230];
    *this = v3;
    *(this + 1) = v5;
    *v5 = this;
    v4[230] = this;
  }
  return this;
}


// ===== 3967a0 RoomZone::~RoomZone() =====
void __fastcall RoomZone::~RoomZone(RoomZone *this)
{
  RoomZone **v2; // r0
  RoomZone *v3; // r4

  v2 = *((RoomZone ***)this + 229);
  *(_DWORD *)this = off_964BD8;
  *((_DWORD *)this + 1) = &off_964CB8;
  *((_DWORD *)this + 9) = off_964CC4;
  if ( v2 != (RoomZone **)((char *)this + 916) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == (RoomZone *)((char *)this + 916) )
        break;
      v2 = (RoomZone **)v3;
    }
    v2 = (RoomZone **)((char *)this + 916);
  }
  *((_DWORD *)this + 229) = v2;
  *((_DWORD *)this + 230) = v2;
  Zone::~Zone(this);
}


// ===== 396820 `non-virtual thunk to'RoomZone::~RoomZone() =====
void __fastcall `non-virtual thunk to'RoomZone::~RoomZone(RoomZone *this)
{
  RoomZone::~RoomZone((RoomZone *)((char *)this - 36));
}


// ===== 396828 RoomZone::~RoomZone() =====
void __fastcall RoomZone::~RoomZone(RoomZone *this)
{
  RoomZone **v2; // r0
  RoomZone *v3; // r4

  v2 = *((RoomZone ***)this + 229);
  *(_DWORD *)this = off_964BD8;
  *((_DWORD *)this + 1) = &off_964CB8;
  *((_DWORD *)this + 9) = off_964CC4;
  if ( v2 != (RoomZone **)((char *)this + 916) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == (RoomZone *)((char *)this + 916) )
        break;
      v2 = (RoomZone **)v3;
    }
    v2 = (RoomZone **)((char *)this + 916);
  }
  *((_DWORD *)this + 229) = v2;
  *((_DWORD *)this + 230) = v2;
  Zone::~Zone(this);
}


// ===== 3968a8 `non-virtual thunk to'RoomZone::~RoomZone() =====
void __fastcall `non-virtual thunk to'RoomZone::~RoomZone(RoomZone *this)
{
  RoomZone::~RoomZone((RoomZone *)((char *)this - 36));
}


// ===== 3968b0 RoomZone::~RoomZone() =====
void __fastcall RoomZone::~RoomZone(RoomZone *this)
{
  RoomZone::~RoomZone(this);
  CustomFree(this);
}


// ===== 3968cc RoomZone::RemoveObject(GameObject *) =====
void __fastcall RoomZone::RemoveObject(RoomZone *this, GameObject *a2)
{
  char *v2; // r0
  GameObject **v3; // r12
  char *v4; // t1
  GameObject *v5; // r3
  GameObject **v6; // r2

  v4 = *((char **)this + 229);
  v2 = (char *)this + 916;
  v3 = (GameObject **)v4;
  if ( v4 != v2 )
  {
    while ( v3[2] != a2 )
    {
      v3 = (GameObject **)*v3;
      if ( v2 == (char *)v3 )
      {
        v3 = (GameObject **)v2;
        break;
      }
    }
  }
  if ( v2 != (char *)v3 )
  {
    v5 = *v3;
    v6 = (GameObject **)v3[1];
    *v6 = *v3;
    *((_DWORD *)v5 + 1) = v6;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0xCu);
  }
}


// ===== 396918 RoomZone::DeActivate(void) =====
int __fastcall RoomZone::DeActivate(RoomZone *this)
{
  char *v2; // r4
  char *v3; // r8
  char *v4; // t1
  GameObject *v5; // r0
  int v7; // [sp+4h] [bp-48h]
  std::string v8; // [sp+14h] [bp-38h] BYREF
  std::string v9; // [sp+2Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingRoomZoneTransition");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v9._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v9._M_start_of_storage._M_data,
        v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
  }
  v4 = *((char **)this + 229);
  v3 = (char *)this + 916;
  v2 = v4;
  v7 = dword_99F764;
  while ( v3 != v2 )
  {
    v5 = *((GameObject **)v2 + 2);
    if ( v5 )
      GameObject::ZoneExited(v5);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v8, "isTracingRoomZoneTransitionFull");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    if ( (std::string *)v8._M_start_of_storage._M_data != &v8 && v8._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data) > 0x80 )
      {
        CustomFree(v8._M_start_of_storage._M_data);
        v2 = *(char **)v2;
        continue;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v8._M_start_of_storage._M_data,
        v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data);
    }
    v2 = *(char **)v2;
  }
  return ObjectManager::DelRoomObjects(v7, v3);
}


// ===== 396a90 RoomZone::AddInitialObject(GameObject *) =====
int __fastcall RoomZone::AddInitialObject(RoomZone *this, GameObject *a2)
{
  RoomZone *v5; // r0
  _DWORD *v6; // r0
  _DWORD *v7; // r2
  _DWORD *v8; // r3
  std::string v9; // [sp+Ch] [bp-38h] BYREF
  std::string v10; // [sp+24h] [bp-20h] BYREF

  if ( !a2
    || !(*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 196))(a2)
    || *((float *)this + 75) > *((float *)a2 + 88)
    || *((float *)a2 + 88) > *((float *)this + 78)
    || *((float *)this + 76) > *((float *)a2 + 89)
    || *((float *)a2 + 89) > *((float *)this + 79) )
  {
    return 0;
  }
  if ( *((_BYTE *)a2 + 751) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v10, "isTracingRoomZoneInit");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
    std::string::~string(&v10);
    v5 = *((RoomZone **)a2 + 189);
    if ( v5 )
      RoomZone::RemoveObject(v5, a2);
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v9, "isTracingRoomZoneInit");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
    std::string::~string(&v9);
  }
  *((_DWORD *)a2 + 189) = this;
  *((_BYTE *)a2 + 751) = 1;
  GameObject::ZoneEntered(a2);
  v6 = (_DWORD *)std::allocator<std::priv::_List_node<GameObject *>>::allocate((char *)this + 916);
  v6[2] = a2;
  v7 = *((_DWORD **)this + 230);
  v8 = v6;
  *v6 = (char *)this + 916;
  v6[1] = v7;
  *v7 = v8;
  *((_DWORD *)this + 230) = v8;
  return 1;
}


// ===== 396c44 RoomZone::InitObjectList(void) =====
RoomZone *__fastcall RoomZone::InitObjectList(RoomZone *this)
{
  RoomZone *v1; // r6
  _DWORD *v2; // r4
  int v3; // r7
  GameObject *v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  _BYTE v7[16]; // [sp+4h] [bp-10h] BYREF

  v1 = this;
  if ( !*((_BYTE *)this + 912) )
  {
    v2 = *(_DWORD **)(dword_99F764 + 20);
    v3 = dword_99F764 + 12;
    while ( (_DWORD *)v3 != v2 )
    {
      while ( 1 )
      {
        v4 = (GameObject *)v2[11];
        if ( v4 )
        {
          ObjectBase::GetHandle((ObjectBase *)v7);
          v4 = (GameObject *)ObjectHandle::operator GameObject *(v7);
        }
        this = (RoomZone *)RoomZone::AddInitialObject(v1, v4);
        v5 = (_DWORD *)v2[3];
        if ( !v5 )
          break;
        while ( v5[2] )
          v5 = (_DWORD *)v5[2];
        v2 = v5;
        if ( (_DWORD *)v3 == v5 )
          goto LABEL_11;
      }
      v6 = v2[1];
      if ( v2 == *(_DWORD **)(v6 + 12) )
      {
        do
        {
          v2 = (_DWORD *)v6;
          v6 = *(_DWORD *)(v6 + 4);
        }
        while ( *(_DWORD **)(v6 + 12) == v2 );
        v5 = (_DWORD *)v2[3];
      }
      if ( (_DWORD *)v6 != v5 )
        v2 = (_DWORD *)v6;
    }
LABEL_11:
    *((_BYTE *)v1 + 912) = 1;
  }
  return this;
}


// ===== 396d24 RoomZone::Activate(void) =====
_DWORD *__fastcall RoomZone::Activate(RoomZone *this)
{
  char *v2; // r4
  char *v3; // r8
  char *v4; // t1
  GameObject *v5; // r0
  int v7; // [sp+4h] [bp-48h]
  std::string v8; // [sp+14h] [bp-38h] BYREF
  std::string v9; // [sp+2Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingRoomZoneTransition");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v9._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v9._M_start_of_storage._M_data,
        v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
  }
  v4 = *((char **)this + 229);
  v3 = (char *)this + 916;
  v2 = v4;
  v7 = dword_99F764;
  while ( v3 != v2 )
  {
    v5 = *((GameObject **)v2 + 2);
    if ( v5 )
      GameObject::ZoneEntered(v5);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v8, "isTracingRoomZoneTransitionFull");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    if ( (std::string *)v8._M_start_of_storage._M_data != &v8 && v8._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data) > 0x80 )
      {
        CustomFree(v8._M_start_of_storage._M_data);
        v2 = *(char **)v2;
        continue;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v8._M_start_of_storage._M_data,
        v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data);
    }
    v2 = *(char **)v2;
  }
  return ObjectManager::AddRoomObjects(v7, (int)v3);
}


// ===== 396e9c RoomZone::Update(void) =====
int __fastcall RoomZone::Update(RoomZone *this)
{
  int CurrentLevel; // r0
  float *v3; // r5
  float v4; // r11
  float v5; // r6
  float v6; // r9
  float v7; // r10
  float v8; // r7
  int result; // r0
  _DWORD *v10; // r3
  int v11; // r12
  int v12; // r2
  int v13; // r3
  int v14; // [sp+4h] [bp-38h]
  float v15; // [sp+Ch] [bp-30h]
  float v16; // [sp+10h] [bp-2Ch]
  float v17; // [sp+14h] [bp-28h]
  float v18; // [sp+18h] [bp-24h]
  float v19; // [sp+1Ch] [bp-20h]
  float v20; // [sp+20h] [bp-1Ch]
  _DWORD v21[4]; // [sp+2Ch] [bp-10h] BYREF

  v20 = *((float *)this + 75);
  v19 = *((float *)this + 76);
  v18 = *((float *)this + 77);
  v17 = *((float *)this + 78);
  v16 = *((float *)this + 79);
  v15 = *((float *)this + 80);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v14 = 0;
  v3 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(CurrentLevel + 296) + 8) + 324))(*(_DWORD *)(*(_DWORD *)(CurrentLevel + 296) + 8));
  do
  {
    if ( v3[3] >= 0.0 )
      v4 = v20;
    else
      v4 = v17;
    if ( v3[4] >= 0.0 )
      v6 = v19;
    else
      v6 = v16;
    if ( v3[5] >= 0.0 )
      v7 = v18;
    else
      v7 = v15;
    v8 = (float)(v3[3] * v4) + (float)(v3[4] * v6);
    v5 = v3[5];
    result = (float)((float)(v8 + (float)(v5 * v7)) + v3[6]) > 0.0;
    if ( (float)((float)(v8 + (float)(v5 * v7)) + v3[6]) > 0.0 )
    {
      if ( *((_BYTE *)this + 905) || *((_BYTE *)this + 904) )
        result = RoomZone::DeActivate(this);
      *((_BYTE *)this + 905) = 0;
      goto LABEL_16;
    }
    v3 += 4;
    ++v14;
  }
  while ( v14 != 6 );
  if ( !*((_BYTE *)this + 905) || *((_BYTE *)this + 904) )
    RoomZone::Activate(this);
  *((_BYTE *)this + 905) = 1;
  ++*(_DWORD *)(dword_99F764 + 248);
  result = RoomZone::HasBeenVisited(this);
  if ( !result )
  {
    result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    v10 = *(_DWORD **)(result + 1632);
    if ( v10 )
    {
      v11 = v10[88];
      v12 = v10[89];
      v13 = v10[90];
      v21[0] = v11;
      v21[1] = v12;
      v21[2] = v13;
      result = RoomZone::HasInside(this, v21);
      if ( result )
        result = RoomZone::SetVisited(this, 1);
    }
  }
LABEL_16:
  *((_BYTE *)this + 904) = 0;
  return result;
}


// ===== 3970c8 Zone::IsInside(GameObject *) =====
bool __fastcall Zone::IsInside(Zone *this, GameObject *a2)
{
  PhysicalObject *v4; // r7
  _DWORD *v5; // r8
  float v6; // r1
  float v7; // r9
  float v8; // r7
  float v9; // r0
  int v10; // r3
  _DWORD *v11; // r0
  int v12; // r10
  int (__fastcall *v13)(int, float *, int, float *, _DWORD *); // r8
  int v14; // r0
  int v15; // r8
  int Switch; // r10
  int v17; // r1
  int v18; // r0
  int v19; // r5
  void *v20; // r0
  glitch::scene::ISceneNode *Parent; // r6
  float v23; // r10
  float v24; // r0
  float v25; // r6
  _DWORD v26[9]; // [sp+1Ch] [bp-78h] BYREF
  float v27[6]; // [sp+40h] [bp-54h] BYREF
  void *p; // [sp+58h] [bp-3Ch] BYREF
  int v29; // [sp+5Ch] [bp-38h]
  int v30; // [sp+60h] [bp-34h]
  float v31; // [sp+64h] [bp-30h] BYREF
  float v32; // [sp+68h] [bp-2Ch]
  float v33; // [sp+6Ch] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v34; // [sp+74h] [bp-20h] BYREF

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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\Zone.cpp",
        152);
    }
  }
  v4 = *((PhysicalObject **)a2 + 183);
  if ( !v4 )
    return 0;
  v5 = *((_DWORD **)this + 225);
  if ( !v5 )
  {
    v23 = *((float *)this + 89) - *((float *)a2 + 89);
    v31 = *((float *)this + 88) - *((float *)a2 + 88);
    v33 = 0.0;
    v32 = v23;
    Point3D<float>::normalize(&v31);
    v24 = COERCE_FLOAT(PhysicalObject::getRadius(v4));
    v31 = v31 * v24;
    v32 = v32 * v24;
    v33 = v33 * v24;
    if ( *((float *)this + 75) <= *((float *)a2 + 88)
      && *((float *)a2 + 88) <= *((float *)this + 78)
      && *((float *)this + 76) <= *((float *)a2 + 89)
      && *((float *)a2 + 89) <= *((float *)this + 79) )
    {
      v25 = *((float *)a2 + 90);
      if ( *((float *)this + 77) <= v25 )
        return v25 <= *((float *)this + 80);
    }
    return 0;
  }
  v6 = *((float *)this + 89);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  memset(v26, 0, sizeof(v26));
  v7 = *((float *)a2 + 89) - v6;
  v8 = *((float *)a2 + 90) - *((float *)this + 90);
  v9 = *((float *)a2 + 88) - *((float *)this + 88);
  v27[0] = v9 + (float)(*(float *)&Vec3f_K * 100.0);
  v27[1] = v7 + (float)(*(float *)&dword_99F87C * 100.0);
  v27[2] = v8 + (float)(*(float *)&dword_99F880 * 100.0);
  v27[3] = v9 + (float)(*(float *)&Vec3f_K * -100.0);
  v27[4] = v7 + (float)(*(float *)&dword_99F87C * -100.0);
  v27[5] = v8 + (float)(*(float *)&dword_99F880 * -100.0);
  v10 = *v5;
  v11 = v5;
  v12 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 44);
  v13 = *(int (__fastcall **)(int, float *, int, float *, _DWORD *))(*(_DWORD *)v12 + 12);
  v14 = (*(int (__fastcall **)(_DWORD *))(v10 + 176))(v11);
  v15 = v13(v12, v27, v14, &v31, v26);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v34, "DisplayColZoneWhenColliding");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v34);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
  if ( !Switch )
    return v15;
  v17 = *((_DWORD *)this + 225);
  v18 = *(_DWORD *)(dword_99F73C + 28);
  p = nullptr;
  v29 = 0;
  v30 = 0;
  v19 = *((_DWORD *)this + 182);
  SceneManager::SearchByType(v18, v17, &p, 1835360612);
  v20 = p;
  if ( (v29 - (int)p) >> 2 == 1 )
  {
    if ( v15 )
    {
      SetNodeVisibleRecur(*(glitch::scene::ISceneNode **)(v19 + 8), 0);
      v20 = p;
      Parent = *(glitch::scene::ISceneNode **)p;
      if ( !*(_DWORD *)p )
        goto LABEL_6;
      do
      {
        (*(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)Parent + 72))(Parent, 1);
        if ( Parent == *(glitch::scene::ISceneNode **)(v19 + 8) )
          break;
        Parent = (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::getParent(Parent);
      }
      while ( Parent );
      v20 = p;
    }
    else
    {
      SetNodeVisibleRecur(*(glitch::scene::ISceneNode **)(v19 + 8), 1);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)p + 72))(*(_DWORD *)p, 0);
      v20 = p;
    }
    if ( !v20 )
      return v15;
    goto LABEL_7;
  }
LABEL_6:
  if ( v20 )
LABEL_7:
    GlitchFree(v20);
  return v15;
}


// ===== 397594 Zone::InitWithBoundingBox(glitch::core::aabbox3d<float> const&) =====
VisualObject *__fastcall Zone::InitWithBoundingBox(int a1, float *a2)
{
  float v4; // r5
  float v5; // r0
  float v6; // r7
  float v7; // r6
  VisualObject *result; // r0
  PhysicalWorld *v9; // r10
  PhysicalObject *v10; // r0
  unsigned __int16 v11; // r8
  PhysicalObject *v12; // r7
  float v13[4]; // [sp+24h] [bp-10h] BYREF

  v4 = a2[5] - a2[2];
  v5 = a2[3] - *a2;
  *(float *)(a1 + 888) = a2[4] - a2[1];
  *(float *)(a1 + 892) = v4;
  *(float *)(a1 + 884) = v5;
  *(float *)(a1 + 324) = *a2;
  *(float *)(a1 + 328) = a2[1];
  *(float *)(a1 + 332) = a2[2];
  *(float *)(a1 + 336) = a2[3];
  *(float *)(a1 + 340) = a2[4];
  *(float *)(a1 + 344) = a2[5];
  v6 = (float)(a2[1] + a2[4]) * 0.5;
  v7 = (float)(a2[2] + a2[5]) * 0.5;
  v13[0] = (float)(*a2 + a2[3]) * 0.5;
  v13[1] = v6;
  v13[2] = v7;
  result = GameObject::SetPosition((GameObject *)a1, v13, 1);
  if ( *(_BYTE *)(a1 + 896) )
  {
    v9 = (PhysicalWorld *)dword_99F770;
    v10 = (PhysicalObject *)operator new(40, 0);
    if ( *(_BYTE *)(a1 + 897) )
      v11 = 4;
    else
      v11 = 1310;
    v12 = v10;
    PhysicalObject::PhysicalObject(v10, v9, (GameObject *)a1, 1, 0, 1, 0, -5, 0x800u, v11, 0);
    *(_DWORD *)v12 = off_969018;
    return (VisualObject *)GameObject::SetPhysicalObject((GameObject *)a1, v12, 0);
  }
  return result;
}


// ===== 39771c Zone::InitPost(void) =====
void __fastcall Zone::InitPost(Zone *this)
{
  float v2; // r1
  float v3; // r8
  float v4; // r0
  float v5; // r1
  float v6; // r6
  float v7; // r0
  VisualObject *v8; // r0
  _DWORD *SpecificNode; // r0
  int v10; // r1
  int v11; // r0
  void *v12; // r0
  int *v13; // r2
  PhysicalWorld *v14; // r10
  PhysicalObject *v15; // r0
  unsigned __int16 v16; // r8
  PhysicalObject *v17; // r7
  int v18; // r5
  float v19; // r8
  float v20; // r6
  float *v21; // r0
  glitch::IReferenceCounted *v22; // r5
  float v23; // [sp+20h] [bp-3Ch]
  float v24; // [sp+24h] [bp-38h]
  float v25; // [sp+2Ch] [bp-30h] BYREF
  float v26; // [sp+30h] [bp-2Ch]
  float v27; // [sp+34h] [bp-28h]
  float v28; // [sp+38h] [bp-24h]
  float v29; // [sp+3Ch] [bp-20h]
  float v30; // [sp+40h] [bp-1Ch]
  void *p; // [sp+44h] [bp-18h] BYREF
  int v32; // [sp+48h] [bp-14h]
  int v33; // [sp+4Ch] [bp-10h]
  glitch::IReferenceCounted *v34; // [sp+50h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v35; // [sp+54h] [bp-8h] BYREF

  if ( GameObject::CheckSpawnProbability(this) < *((_DWORD *)this + 157) )
  {
    GameObject::InitPost(this);
    v2 = *((float *)this + 73);
    v3 = *((float *)this + 221) * *((float *)this + 72);
    *((float *)this + 221) = v3;
    v4 = *((float *)this + 222) * v2;
    v5 = *((float *)this + 74);
    *((float *)this + 222) = v4;
    v6 = *((float *)this + 223) * v5;
    *((float *)this + 223) = v6;
    *((_DWORD *)this + 81) = COERCE_INT(v3 * 0.5) + 0x80000000;
    *((float *)this + 84) = v3 * 0.5;
    v7 = v4 * 0.5;
    *((_DWORD *)this + 82) = LODWORD(v7) + 0x80000000;
    *((float *)this + 85) = v7;
    *((float *)this + 86) = v6 * 0.5;
    *((_DWORD *)this + 83) = COERCE_INT(v6 * 0.5) + 0x80000000;
    (*(void (__fastcall **)(Zone *, char *, _DWORD))(*(_DWORD *)this + 156))(this, (char *)this + 324, 0);
    if ( *((_BYTE *)this + 896) )
    {
      v14 = (PhysicalWorld *)dword_99F770;
      v15 = (PhysicalObject *)operator new(40, 0);
      if ( *((_BYTE *)this + 897) )
        v16 = 4;
      else
        v16 = 1310;
      v17 = v15;
      PhysicalObject::PhysicalObject(v15, v14, this, 1, 0, 1, 0, -5, 0x800u, v16, 0);
      *(_DWORD *)v17 = off_969018;
      GameObject::SetPhysicalObject(this, v17, 0);
    }
    if ( !*((_DWORD *)this + 225) )
    {
      v8 = *((VisualObject **)this + 182);
      if ( v8 )
      {
        SpecificNode = (_DWORD *)VisualObject::GetSpecificNode(v8, "_colzone");
        *((_DWORD *)this + 225) = SpecificNode;
        if ( SpecificNode )
        {
          ++*(_DWORD *)((char *)SpecificNode + *(_DWORD *)(*SpecificNode - 12) + 4);
          v10 = *((_DWORD *)this + 225);
          v11 = *(_DWORD *)(dword_99F73C + 28);
          p = nullptr;
          v32 = 0;
          v33 = 0;
          SceneManager::SearchByType(v11, v10, &p, 1835360612);
          v12 = p;
          v13 = (int *)p;
          if ( (v32 - (int)p) >> 2 != 1 )
          {
            if ( gAssertLevel == 2 )
            {
              dword_0 = 0;
LABEL_11:
              if ( v12 )
                GlitchFree(v12);
              return;
            }
            if ( gAssertLevel != 1 )
              goto LABEL_11;
            fprintf(
              (FILE *)&_sF + 2,
              "ASSERT(%s) FAILED: %s:%d\n",
              "meshes.size() == 1",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\Zone.cpp",
              96);
            v13 = (int *)p;
            v12 = p;
            if ( (v32 - (int)p) >> 2 != 1 )
              goto LABEL_11;
          }
          v18 = *v13;
          if ( *v13 )
          {
            v19 = *((float *)this + 88);
            v20 = *((float *)this + 89);
            v24 = *((float *)this + 90);
            v21 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v18 + 48))(v18);
            v25 = *v21;
            v26 = v21[1];
            v27 = v21[2];
            v28 = v21[3];
            v29 = v21[4];
            v23 = v21[5];
            v25 = v19 + v25;
            v26 = v20 + v26;
            v27 = v24 + v27;
            v28 = v19 + v28;
            v29 = v20 + v29;
            v30 = v24 + v23;
            Zone::InitWithBoundingBox((int)this, &v25);
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v18 + 72))(v18, 0);
            (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v18 + 248))(&v35, v18);
            v34 = v35;
            if ( v35 )
              ++*((_DWORD *)v35 + 1);
            v22 = (glitch::IReferenceCounted *)operator new(172, 0);
            glitch::scene::CTriangleSelector::CTriangleSelector(v22, &v34, 0, 1);
            if ( v34 )
              glitch::IReferenceCounted::drop(v34);
            if ( v35 )
              glitch::IReferenceCounted::drop(v35);
            (*(void (__fastcall **)(_DWORD, glitch::IReferenceCounted *))(**((_DWORD **)this + 225) + 180))(
              *((_DWORD *)this + 225),
              v22);
            glitch::IReferenceCounted::drop(v22);
            v12 = p;
          }
          else
          {
            v12 = v13;
          }
          goto LABEL_11;
        }
      }
    }
  }
}


// ===== 397b30 `non-virtual thunk to'Zone::~Zone() =====
void __fastcall `non-virtual thunk to'Zone::~Zone(Zone *this)
{
  Zone::~Zone((Zone *)((char *)this - 36));
}


// ===== 397b38 Zone::~Zone() =====
void __fastcall Zone::~Zone(Zone *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 225);
  *(_DWORD *)this = off_964CE0;
  *((_DWORD *)this + 1) = &off_964DC0;
  *((_DWORD *)this + 9) = off_964DCC;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 225) = 0;
  }
  GameObject::~GameObject(this);
}


// ===== 397ba0 `non-virtual thunk to'Zone::~Zone() =====
void __fastcall `non-virtual thunk to'Zone::~Zone(Zone *this)
{
  Zone::~Zone((Zone *)((char *)this - 36));
}


// ===== 397ba8 Zone::~Zone() =====
void __fastcall Zone::~Zone(Zone *this)
{
  Zone::~Zone(this);
  CustomFree(this);
}


// ===== 397bc4 Zone::~Zone() =====
void __fastcall Zone::~Zone(Zone *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 225);
  *(_DWORD *)this = off_964CE0;
  *((_DWORD *)this + 1) = &off_964DC0;
  *((_DWORD *)this + 9) = off_964DCC;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 225) = 0;
  }
  GameObject::~GameObject(this);
}


// ===== 397c2c Zone::Zone(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall Zone::Zone(int a1, int a2, char a3, char a4)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 892) = 0;
  *(_BYTE *)(a1 + 896) = a3;
  *(_DWORD *)(a1 + 4) = &off_964DC0;
  *(_DWORD *)(a1 + 900) = 0;
  *(_DWORD *)a1 = off_964CE0;
  *(_DWORD *)(a1 + 36) = off_964DCC;
  *(_BYTE *)(a1 + 897) = a4;
  *(_BYTE *)(a1 + 132) = 1;
  *(_DWORD *)(a1 + 884) = 0;
  *(_DWORD *)(a1 + 888) = 0;
  return a1;
}


// ===== 397ca0 Zone::Zone(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall Zone::Zone(int a1, int a2, char a3, char a4)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 892) = 0;
  *(_BYTE *)(a1 + 896) = a3;
  *(_DWORD *)(a1 + 4) = &off_964DC0;
  *(_DWORD *)(a1 + 900) = 0;
  *(_DWORD *)a1 = off_964CE0;
  *(_DWORD *)(a1 + 36) = off_964DCC;
  *(_BYTE *)(a1 + 897) = a4;
  *(_BYTE *)(a1 + 132) = 1;
  *(_DWORD *)(a1 + 884) = 0;
  *(_DWORD *)(a1 + 888) = 0;
  return a1;
}


// ===== 397d14 `global constructor keyed to'.._.._sources_Game_Objects_Zones_Zone.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Zones_Zone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27E4 = 1056964608;
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


// ===== 397df0 `non-virtual thunk to'Zone::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'Zone::DeclareProperties(Zone *this)
{
  return Zone::DeclareProperties((Zone *)((char *)this - 4));
}


// ===== 397df8 Zone::DeclareProperties(void) =====
int __fastcall Zone::DeclareProperties(Zone *this)
{
  Property *v2; // r4

  GameObject::DeclareProperties(this);
  v2 = (Property *)operator new(44, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string((int)v2 + 8, "dimensions");
  *((_DWORD *)v2 + 1) = 880;
  *(_DWORD *)v2 = off_964038;
  *((_DWORD *)v2 + 10) = 1128792064;
  *((_DWORD *)v2 + 8) = 1128792064;
  *((_DWORD *)v2 + 9) = 1128792064;
  return PropertyMap::AddProperty((Zone *)((char *)this + 4), "dimensions", v2);
}


// ===== 397e9c ZoneEx::GetNumCharacters(void) =====
int __fastcall ZoneEx::GetNumCharacters(ZoneEx *this)
{
  return *((_DWORD *)this + 232);
}


// ===== 397ea4 ZoneEx::GetNumPlayers(void) =====
int __fastcall ZoneEx::GetNumPlayers(ZoneEx *this)
{
  return *((_DWORD *)this + 233);
}


// ===== 397eac ZoneEx::GetNumObjects(void) =====
int __fastcall ZoneEx::GetNumObjects(ZoneEx *this)
{
  int v1; // r4

  v1 = *((_DWORD *)this + 230);
  return v1 - ZoneEx::GetNumCharacters(this);
}


// ===== 397ec0 ZoneEx::ZoneEx(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall ZoneEx::ZoneEx(int a1, int a2, char a3, char a4)
{
  Zone::Zone(a1, a2, a3, a4);
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 36) = off_964ED4;
  *(_DWORD *)a1 = off_964DE8;
  *(_DWORD *)(a1 + 4) = &off_964EC8;
  *(_BYTE *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 916) = a1 + 904;
  *(_DWORD *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 912) = a1 + 904;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 928) = 0;
  return a1;
}


// ===== 397f28 ZoneEx::ZoneEx(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall ZoneEx::ZoneEx(int a1, int a2, char a3, char a4)
{
  Zone::Zone(a1, a2, a3, a4);
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 36) = off_964ED4;
  *(_DWORD *)a1 = off_964DE8;
  *(_DWORD *)(a1 + 4) = &off_964EC8;
  *(_BYTE *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 916) = a1 + 904;
  *(_DWORD *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 912) = a1 + 904;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 928) = 0;
  return a1;
}


// ===== 397f90 `global constructor keyed to'.._.._sources_Game_Objects_Zones_ZoneEx.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Zones_ZoneEx.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A27F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27F0 = 1056964608;
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


// ===== 39806c std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::erase(std::priv::_Rb_tree_iterator<GameObject *,std::priv::_SetTraitsT<GameObject *>>) =====
void __fastcall std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x14u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 3980a8 ZoneEx::Update(void) =====
void __fastcall ZoneEx::Update(ZoneEx *this)
{
  int v1; // r5
  char *v3; // r7
  int IsInside; // r0
  int v5; // r4
  int v6; // r10
  int v7; // r2
  int v8; // r3
  int v9; // r3
  unsigned __int8 *v10; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 228);
  v3 = (char *)this + 904;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      IsInside = Zone::IsInside(this, *(GameObject **)(v1 + 16));
      if ( IsInside )
        break;
      v5 = *(_DWORD *)(v1 + 12);
      if ( v5 )
      {
        while ( *(_DWORD *)(v5 + 8) )
          v5 = *(_DWORD *)(v5 + 8);
      }
      else
      {
        v9 = *(_DWORD *)(v1 + 4);
        if ( v1 == *(_DWORD *)(v9 + 12) )
        {
          do
          {
            v5 = v9;
            v9 = *(_DWORD *)(v9 + 4);
          }
          while ( *(_DWORD *)(v9 + 12) == v5 );
          IsInside = *(_DWORD *)(v5 + 12);
        }
        else
        {
          v5 = v1;
        }
        if ( v9 != IsInside )
          v5 = v9;
      }
      v6 = *(_DWORD *)(v1 + 16);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6) )
      {
        --*((_DWORD *)this + 232);
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 40))(v6) )
          --*((_DWORD *)this + 233);
      }
      v10 = (unsigned __int8 *)v1;
      v1 = v5;
      std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::erase(
        (int)v3,
        &v10);
      if ( v3 == (char *)v5 )
        return;
    }
    v7 = *(_DWORD *)(v1 + 12);
    if ( v7 )
    {
      while ( *(_DWORD *)(v7 + 8) )
        v7 = *(_DWORD *)(v7 + 8);
      v1 = v7;
    }
    else
    {
      v8 = *(_DWORD *)(v1 + 4);
      if ( v1 == *(_DWORD *)(v8 + 12) )
      {
        do
        {
          v1 = v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(_DWORD *)(v8 + 12) == v1 );
        v7 = *(_DWORD *)(v1 + 12);
      }
      if ( v8 != v7 )
        v1 = v8;
    }
  }
}


// ===== 398200 ZoneEx::OnCollisionEnds(GameObject *) =====
int __fastcall ZoneEx::OnCollisionEnds(ZoneEx *this, GameObject *a2)
{
  int result; // r0
  char *v5; // r3
  char *v6; // r1
  unsigned int v7; // r2
  bool v8; // cc
  char *v9; // r2
  char *v10; // [sp+4h] [bp-8h] BYREF

  result = Zone::IsInside(this, a2);
  if ( !result )
  {
    v5 = *((char **)this + 227);
    if ( v5 )
    {
      result = (int)this + 904;
      v6 = (char *)this + 904;
      while ( 1 )
      {
        v7 = *((_DWORD *)v5 + 4);
        v8 = (unsigned int)a2 > v7;
        if ( (unsigned int)a2 <= v7 )
          v9 = *((char **)v5 + 2);
        else
          v9 = *((char **)v5 + 3);
        if ( v8 )
          v5 = v6;
        v6 = v5;
        if ( !v9 )
          break;
        v5 = v9;
      }
      if ( (char *)result != v5 && (unsigned int)a2 >= *((_DWORD *)v5 + 4) )
      {
        v10 = v5;
        std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::erase(
          result,
          (unsigned __int8 **)&v10);
        result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2);
        if ( result )
        {
          --*((_DWORD *)this + 232);
          result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 40))(a2);
          if ( result )
            --*((_DWORD *)this + 233);
        }
      }
    }
  }
  return result;
}


// ===== 3982cc std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3982ec std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(std::priv::_Rb_tree_node_base *,GameObject * const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r1
  _DWORD *v13; // r0
  int v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[4] = v11;
    v8[2] = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || (unsigned int)*a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v8 = v7;
    v9 = *a4;
    v7[3] = 0;
    v7[4] = v9;
    v7[2] = 0;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v8 = v13;
    v14 = *a4;
    v13[3] = 0;
    v13[2] = 0;
    v13[4] = v14;
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


// ===== 39840c std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::insert_unique(GameObject * const&) =====
int __fastcall std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::insert_unique(
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
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(
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
      if ( (unsigned int)*a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(
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


// ===== 39858c ZoneEx::OnCollisionBegins(GameObject *) =====
int __fastcall ZoneEx::OnCollisionBegins(ZoneEx *this, GameObject *a2)
{
  int result; // r0
  GameObject *v4; // r3
  GameObject *v5; // [sp+4h] [bp-Ch] BYREF
  _BYTE v6[8]; // [sp+8h] [bp-8h] BYREF

  v5 = a2;
  result = Zone::IsInside(this, a2);
  if ( result )
  {
    result = std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::insert_unique(
               v6,
               (char *)this + 904,
               &v5);
    if ( v6[4] )
    {
      result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)v5 + 36))(v5);
      if ( result )
      {
        v4 = v5;
        ++*((_DWORD *)this + 232);
        result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)v4 + 40))(v4);
        if ( result )
          ++*((_DWORD *)this + 233);
      }
    }
  }
  return result;
}


// ===== 39861c std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
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
      std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 398654 `non-virtual thunk to'ZoneEx::~ZoneEx() =====
void __fastcall `non-virtual thunk to'ZoneEx::~ZoneEx(ZoneEx *this)
{
  ZoneEx::~ZoneEx((ZoneEx *)((char *)this - 36));
}


// ===== 39865c ZoneEx::~ZoneEx() =====
void __fastcall ZoneEx::~ZoneEx(ZoneEx *this)
{
  bool v1; // zf
  char *v3; // r5

  v1 = *((_DWORD *)this + 230) == 0;
  *(_DWORD *)this = off_964DE8;
  *((_DWORD *)this + 1) = &off_964EC8;
  *((_DWORD *)this + 9) = off_964ED4;
  if ( !v1 )
  {
    v3 = (char *)this + 904;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 904,
      *((_DWORD **)this + 227));
    *((_DWORD *)this + 229) = v3;
    *((_DWORD *)this + 230) = 0;
    *((_DWORD *)this + 228) = v3;
    *((_DWORD *)this + 227) = 0;
  }
  Zone::~Zone(this);
}


// ===== 3986d0 `non-virtual thunk to'ZoneEx::~ZoneEx() =====
void __fastcall `non-virtual thunk to'ZoneEx::~ZoneEx(ZoneEx *this)
{
  ZoneEx::~ZoneEx((ZoneEx *)((char *)this - 36));
}


// ===== 3986d8 ZoneEx::~ZoneEx() =====
void __fastcall ZoneEx::~ZoneEx(ZoneEx *this)
{
  ZoneEx::~ZoneEx(this);
  CustomFree(this);
}


// ===== 3986f4 ZoneEx::~ZoneEx() =====
void __fastcall ZoneEx::~ZoneEx(ZoneEx *this)
{
  bool v1; // zf
  char *v3; // r5

  v1 = *((_DWORD *)this + 230) == 0;
  *(_DWORD *)this = off_964DE8;
  *((_DWORD *)this + 1) = &off_964EC8;
  *((_DWORD *)this + 9) = off_964ED4;
  if ( !v1 )
  {
    v3 = (char *)this + 904;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 904,
      *((_DWORD **)this + 227));
    *((_DWORD *)this + 229) = v3;
    *((_DWORD *)this + 230) = 0;
    *((_DWORD *)this + 228) = v3;
    *((_DWORD *)this + 227) = 0;
  }
  Zone::~Zone(this);
}


// ===== 398768 Trigger::IsZonable(void) =====
int __fastcall Trigger::IsZonable(Trigger *this)
{
  return 1;
}


// ===== 398770 Trigger::IsRemotelyUpdated(void) =====
int __fastcall Trigger::IsRemotelyUpdated(Trigger *this)
{
  if ( *((_BYTE *)this + 956) )
    return 0;
  if ( *((_DWORD *)this + 68) == -1 )
    return *((unsigned __int8 *)this + 280);
  return 1;
}


// ===== 398794 Trigger::Activate(void) =====
_DWORD *__fastcall Trigger::Activate(_DWORD *this)
{
  int v1; // r3

  v1 = *(this + 237) + 1;
  *(this + 238) = *(this + 235);
  *(this + 237) = v1;
  return this;
}


// ===== 3987ac Trigger::CanActivate(void) =====
int __fastcall Trigger::CanActivate(Trigger *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 234);
  if ( v1 >= 0 && v1 <= *((_DWORD *)this + 237) || *((int *)this + 238) > 0 )
    return 0;
  else
    return *((unsigned __int8 *)this + 138);
}


// ===== 3987dc Trigger::InterpretIncomingNetStruct(bool) =====
_DWORD *__fastcall Trigger::InterpretIncomingNetStruct(_DWORD *this, bool a2)
{
  int v2; // r2
  int v3; // r3

  v2 = *(this + 442);
  v3 = *(this + 452);
  *(this + 238) = *(this + 432);
  *(this + 237) = v2;
  *(this + 240) = v3;
  return this;
}


// ===== 3987f8 Trigger::GetNumPlayerActivating(void) =====
// attributes: thunk
int __fastcall Trigger::GetNumPlayerActivating(GameObject *this)
{
  return GameObject::GetNumPlayerTouching(this);
}


// ===== 3987fc Trigger::UpdateTimer(void) =====
int __fastcall Trigger::UpdateTimer(int this)
{
  int v1; // r5
  int v2; // r4

  v1 = *(_DWORD *)(this + 952);
  v2 = this;
  if ( v1 > 0 )
  {
    this = v1 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    *(_DWORD *)(v2 + 952) = this;
  }
  return this;
}


// ===== 398838 Trigger::Update(void) =====
int __fastcall Trigger::Update(Trigger *this)
{
  int result; // r0

  ZoneEx::Update(this);
  Trigger::UpdateTimer((int)this);
  result = GameObject::RequireOnlineUpdate(this);
  if ( *((__int16 *)this + 440) >= 0 )
    return GameObject::UpdateIdleSound(this);
  return result;
}


// ===== 398874 Trigger::InitPost(void) =====
// attributes: thunk
void __fastcall Trigger::InitPost(Zone *this)
{
  Zone::InitPost(this);
}


// ===== 398878 PropertyMap::AddProperty<int>(char const*,int &,int) =====
_DWORD *__fastcall PropertyMap::AddProperty<int>(PropertyMap *a1, char *a2, int a3, int a4)
{
  Property *v8; // r8

  v8 = (Property *)operator new(0x24u, 0);
  *(_DWORD *)v8 = &off_95C5E8;
  std::string::string((int)v8 + 8, a2);
  *((_DWORD *)v8 + 1) = a3 - (_DWORD)a1;
  *((_DWORD *)v8 + 8) = a4;
  *(_DWORD *)v8 = &off_964708;
  return PropertyMap::AddProperty(a1, a2, v8);
}


// ===== 398904 `non-virtual thunk to'Trigger::Deserialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Trigger::Deserialize(VisualObject **this, IStreamBase *a2)
{
  return Trigger::Deserialize(this - 9, a2);
}


// ===== 39890c Trigger::Deserialize(IStreamBase *) =====
int __fastcall Trigger::Deserialize(VisualObject **this, IStreamBase *a2)
{
  int result; // r0

  GameObject::Deserialize(this, a2);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !*(_BYTE *)(result + 243) || !*((_BYTE *)this + 944) )
  {
    IStreamBase::readAs<int>(a2, this + 238);
    return IStreamBase::readAs<int>(a2, this + 237);
  }
  return result;
}


// ===== 398970 `non-virtual thunk to'Trigger::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Trigger::Serialize(Trigger *this, IStreamBase *a2)
{
  return Trigger::Serialize((Trigger *)((char *)this - 36), a2);
}


// ===== 398978 Trigger::Serialize(IStreamBase *) =====
int __fastcall Trigger::Serialize(Trigger *this, IStreamBase *a2)
{
  GameObject::Serialize(this, a2);
  IStreamBase::writeAs<int>(a2, (char *)this + 952);
  return IStreamBase::writeAs<int>(a2, (char *)this + 948);
}


// ===== 3989a4 `global constructor keyed to'.._.._sources_Game_Objects_Triggers_Trigger.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Triggers_Trigger.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2800 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A27FC = 1056964608;
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


// ===== 398a80 `non-virtual thunk to'Trigger::DeclareProperties(void) =====
_DWORD *__fastcall `non-virtual thunk to'Trigger::DeclareProperties(Trigger *this)
{
  return Trigger::DeclareProperties((Trigger *)((char *)this - 4));
}


// ===== 398a88 Trigger::DeclareProperties(void) =====
_DWORD *__fastcall Trigger::DeclareProperties(Trigger *this)
{
  int v2; // r6

  Zone::DeclareProperties(this);
  PropertyMap::AddProperty<int>((Trigger *)((char *)this + 4), "triggercount", (int)this + 936, 1);
  PropertyMap::AddProperty<int>((Trigger *)((char *)this + 4), "triggerdelay", (int)this + 940, 0);
  v2 = operator new(0x24u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string(v2 + 8, "resetonhubchange");
  *(_DWORD *)(v2 + 4) = 940;
  *(_DWORD *)v2 = &off_95C608;
  *(_BYTE *)(v2 + 32) = 0;
  return PropertyMap::AddProperty((Trigger *)((char *)this + 4), "resetonhubchange", (Property *)v2);
}


// ===== 398b5c Trigger::NetStructTrigger::~NetStructTrigger() =====
void __fastcall Trigger::NetStructTrigger::~NetStructTrigger(Trigger::NetStructTrigger *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_963648;
  if ( v2 )
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


// ===== 398bd8 Trigger::PopulateOutgoingNetStruct(bool) =====
int __fastcall Trigger::PopulateOutgoingNetStruct(Trigger *this, bool a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r3
  int v6; // r3
  _DWORD v8[7]; // [sp+0h] [bp-7Ch] BYREF
  char v9; // [sp+1Ch] [bp-60h]
  int v10; // [sp+20h] [bp-5Ch] BYREF
  _DWORD v11[7]; // [sp+28h] [bp-54h] BYREF
  char v12; // [sp+44h] [bp-38h]
  int v13; // [sp+48h] [bp-34h] BYREF
  _DWORD v14[7]; // [sp+50h] [bp-2Ch] BYREF
  char v15; // [sp+6Ch] [bp-10h]
  _DWORD v16[3]; // [sp+70h] [bp-Ch] BYREF

  v2 = *((_DWORD *)this + 238);
  v14[1] = 32;
  v14[2] = 0;
  v14[3] = 0;
  v14[5] = -1;
  v15 = 0;
  v14[0] = &off_963618;
  v14[4] = -1;
  v14[6] = 0;
  if ( v2 != v16[0] )
  {
    v16[0] = v2;
    NetStructMember::SetChanged((NetStructMember *)v14);
  }
  v14[0] = &off_9635E8;
  (*(void (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 318) + 28))((char *)this + 1272, v16);
  v4 = *((_DWORD *)this + 237);
  v14[0] = &off_963648;
  v11[2] = 0;
  v11[3] = 0;
  v11[1] = 32;
  v11[5] = -1;
  v12 = 0;
  v11[0] = &off_963618;
  v11[4] = -1;
  v11[6] = 0;
  if ( v4 != v13 )
  {
    v13 = v4;
    NetStructMember::SetChanged((NetStructMember *)v11);
  }
  v5 = *((_DWORD *)this + 328);
  v11[0] = &off_9635E8;
  (*(void (__fastcall **)(char *, int *))(v5 + 28))((char *)this + 1312, &v13);
  v6 = *((_DWORD *)this + 240);
  v11[0] = &off_963648;
  v8[1] = 32;
  v8[2] = 0;
  v8[3] = 0;
  v8[5] = -1;
  v9 = 0;
  v8[0] = &off_963618;
  v8[4] = -1;
  v8[6] = 0;
  if ( v6 != v10 )
  {
    v10 = v6;
    NetStructMember::SetChanged((NetStructMember *)v8);
  }
  v8[0] = &off_9635E8;
  return (*(int (__fastcall **)(char *, int *))(*((_DWORD *)this + 338) + 28))((char *)this + 1352, &v10);
}


// ===== 398da4 Trigger::NetStructTrigger::NetStructTrigger(void) =====
Trigger::NetStructTrigger *__fastcall Trigger::NetStructTrigger::NetStructTrigger(Trigger::NetStructTrigger *this)
{
  int v2; // r2
  int v3; // r3
  int v4; // r3

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_964EF0;
  *((_DWORD *)this + 77) = 32;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((Trigger::NetStructTrigger *)((char *)this + 304));
  }
  v3 = *((_DWORD *)this + 94);
  *((_QWORD *)this + 44) = 0;
  *((_DWORD *)this + 76) = &off_9635E8;
  *((_DWORD *)this + 87) = 32;
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 86) = &off_963618;
  *((_DWORD *)this + 90) = -1;
  *((_DWORD *)this + 92) = 0;
  *((_BYTE *)this + 372) = 0;
  if ( v3 )
  {
    *((_DWORD *)this + 94) = 0;
    NetStructMember::SetChanged((Trigger::NetStructTrigger *)((char *)this + 344));
  }
  v4 = *((_DWORD *)this + 104);
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 86) = &off_9635E8;
  *((_DWORD *)this + 97) = 32;
  *((_DWORD *)this + 101) = -1;
  *((_DWORD *)this + 96) = &off_963618;
  *((_DWORD *)this + 100) = -1;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 0;
  if ( v4 )
  {
    *((_DWORD *)this + 104) = 0;
    NetStructMember::SetChanged((Trigger::NetStructTrigger *)((char *)this + 384));
  }
  *((_DWORD *)this + 96) = &off_9635E8;
  NetStruct::DeclareMember(this, (Trigger::NetStructTrigger *)((char *)this + 304));
  NetStruct::DeclareMember(this, (Trigger::NetStructTrigger *)((char *)this + 344));
  NetStruct::DeclareMember(this, (Trigger::NetStructTrigger *)((char *)this + 384));
  return this;
}


// ===== 398f44 Trigger::Trigger(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall Trigger::Trigger(int a1)
{
  ZoneEx::ZoneEx();
  *(_DWORD *)(a1 + 960) = 0;
  *(_DWORD *)(a1 + 940) = 0;
  *(_BYTE *)(a1 + 944) = 0;
  *(_DWORD *)(a1 + 948) = 0;
  *(_DWORD *)(a1 + 952) = 0;
  *(_BYTE *)(a1 + 956) = 0;
  *(_DWORD *)a1 = off_964F40;
  *(_DWORD *)(a1 + 4) = &off_965020;
  *(_DWORD *)(a1 + 36) = off_96502C;
  *(_DWORD *)(a1 + 936) = 1;
  Trigger::NetStructTrigger::NetStructTrigger((Trigger::NetStructTrigger *)(a1 + 968));
  Trigger::NetStructTrigger::NetStructTrigger((Trigger::NetStructTrigger *)(a1 + 1392));
  *(_DWORD *)(a1 + 256) = a1 + 968;
  *(_DWORD *)(a1 + 260) = a1 + 1392;
  *(_BYTE *)(a1 + 40) = 1;
  *(_BYTE *)(a1 + 248) = 4;
  return a1;
}


// ===== 398fd4 Trigger::Trigger(ObjectBase::GO_IDS,bool,bool) =====
int __fastcall Trigger::Trigger(int a1, int a2, char a3, char a4)
{
  ZoneEx::ZoneEx(a1, a2, a3, a4);
  *(_DWORD *)(a1 + 960) = 0;
  *(_DWORD *)(a1 + 940) = 0;
  *(_BYTE *)(a1 + 944) = 0;
  *(_DWORD *)(a1 + 948) = 0;
  *(_DWORD *)(a1 + 952) = 0;
  *(_BYTE *)(a1 + 956) = 0;
  *(_DWORD *)a1 = off_964F40;
  *(_DWORD *)(a1 + 4) = &off_965020;
  *(_DWORD *)(a1 + 36) = off_96502C;
  *(_DWORD *)(a1 + 936) = 1;
  Trigger::NetStructTrigger::NetStructTrigger((Trigger::NetStructTrigger *)(a1 + 968));
  Trigger::NetStructTrigger::NetStructTrigger((Trigger::NetStructTrigger *)(a1 + 1392));
  *(_DWORD *)(a1 + 256) = a1 + 968;
  *(_DWORD *)(a1 + 260) = a1 + 1392;
  *(_BYTE *)(a1 + 40) = 1;
  *(_BYTE *)(a1 + 248) = 4;
  return a1;
}


// ===== 399064 Trigger::NetStructTrigger::~NetStructTrigger() =====
void __fastcall Trigger::NetStructTrigger::~NetStructTrigger(Trigger::NetStructTrigger *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_963648;
  if ( v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = (char *)this + 268;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = (char *)this + 268;
    *((_DWORD *)this + 68) = 0;
  }
  CustomFree(this);
}


// ===== 3990e8 `non-virtual thunk to'Trigger::~Trigger() =====
void __fastcall `non-virtual thunk to'Trigger::~Trigger(Trigger *this)
{
  Trigger::~Trigger((Trigger *)((char *)this - 36));
}


// ===== 3990f0 Trigger::~Trigger() =====
void __fastcall Trigger::~Trigger(Trigger *this)
{
  bool v2; // zf
  int v3; // r1

  v2 = *((_DWORD *)this + 419) == 0;
  *(_DWORD *)this = off_964F40;
  *((_DWORD *)this + 1) = &off_965020;
  *((_DWORD *)this + 9) = off_96502C;
  *((_DWORD *)this + 424) = &off_963648;
  *((_DWORD *)this + 348) = off_9924D8;
  *((_DWORD *)this + 444) = &off_963648;
  *((_DWORD *)this + 434) = &off_963648;
  if ( !v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1660,
      *((_DWORD *)this + 416));
    *((_DWORD *)this + 417) = (char *)this + 1660;
    *((_DWORD *)this + 416) = 0;
    *((_DWORD *)this + 418) = (char *)this + 1660;
    *((_DWORD *)this + 419) = 0;
  }
  v3 = *((_DWORD *)this + 313);
  *((_DWORD *)this + 318) = &off_963648;
  *((_DWORD *)this + 242) = off_9924D8;
  *((_DWORD *)this + 338) = &off_963648;
  *((_DWORD *)this + 328) = &off_963648;
  if ( v3 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1236,
      *((_DWORD *)this + 310));
    *((_DWORD *)this + 311) = (char *)this + 1236;
    *((_DWORD *)this + 310) = 0;
    *((_DWORD *)this + 312) = (char *)this + 1236;
    *((_DWORD *)this + 313) = 0;
  }
  ZoneEx::~ZoneEx(this);
}


// ===== 3991f0 `non-virtual thunk to'Trigger::~Trigger() =====
void __fastcall `non-virtual thunk to'Trigger::~Trigger(Trigger *this)
{
  Trigger::~Trigger((Trigger *)((char *)this - 36));
}


// ===== 3991f8 Trigger::~Trigger() =====
void __fastcall Trigger::~Trigger(Trigger *this)
{
  Trigger::~Trigger(this);
  CustomFree(this);
}


// ===== 399214 Trigger::~Trigger() =====
void __fastcall Trigger::~Trigger(Trigger *this)
{
  bool v2; // zf
  int v3; // r1

  v2 = *((_DWORD *)this + 419) == 0;
  *(_DWORD *)this = off_964F40;
  *((_DWORD *)this + 1) = &off_965020;
  *((_DWORD *)this + 9) = off_96502C;
  *((_DWORD *)this + 424) = &off_963648;
  *((_DWORD *)this + 348) = off_9924D8;
  *((_DWORD *)this + 444) = &off_963648;
  *((_DWORD *)this + 434) = &off_963648;
  if ( !v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1660,
      *((_DWORD *)this + 416));
    *((_DWORD *)this + 417) = (char *)this + 1660;
    *((_DWORD *)this + 416) = 0;
    *((_DWORD *)this + 418) = (char *)this + 1660;
    *((_DWORD *)this + 419) = 0;
  }
  v3 = *((_DWORD *)this + 313);
  *((_DWORD *)this + 318) = &off_963648;
  *((_DWORD *)this + 242) = off_9924D8;
  *((_DWORD *)this + 338) = &off_963648;
  *((_DWORD *)this + 328) = &off_963648;
  if ( v3 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1236,
      *((_DWORD *)this + 310));
    *((_DWORD *)this + 311) = (char *)this + 1236;
    *((_DWORD *)this + 310) = 0;
    *((_DWORD *)this + 312) = (char *)this + 1236;
    *((_DWORD *)this + 313) = 0;
  }
  ZoneEx::~ZoneEx(this);
}


// ===== 399314 QE_TriggerOn::~QE_TriggerOn() =====
void __fastcall QE_TriggerOn::~QE_TriggerOn(QE_TriggerOn *this)
{
  ;
}


// ===== 399318 TriggerObject::IsUpdatable(void) =====
int __fastcall TriggerObject::IsUpdatable(TriggerObject *this)
{
  return 1;
}


// ===== 399320 TriggerObject::IsZonable(void) =====
int __fastcall TriggerObject::IsZonable(TriggerObject *this)
{
  return 1;
}


// ===== 399328 TriggerObject::IsAnimated(void) =====
int __fastcall TriggerObject::IsAnimated(TriggerObject *this)
{
  return 1;
}


// ===== 399330 TriggerObject::GetInteractionType(GameObject *) =====
int __fastcall TriggerObject::GetInteractionType(TriggerObject *this, GameObject *a2)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerObjects::members + 24 * result + 4);
  return result;
}


// ===== 399368 QE_TriggerOn::~QE_TriggerOn() =====
void __fastcall QE_TriggerOn::~QE_TriggerOn(QE_TriggerOn *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 39939c TriggerObject::InterpretIncomingNetStruct(bool) =====
_DWORD *__fastcall TriggerObject::InterpretIncomingNetStruct(TriggerObject *this, _BOOL4 a2)
{
  _DWORD *result; // r0

  result = Trigger::InterpretIncomingNetStruct(this, a2);
  if ( a2 )
    *((_BYTE *)this + 1924) = 0;
  return result;
}


// ===== 3993bc TriggerObject::TestInteractiveCond(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall TriggerObject::TestInteractiveCond(TriggerObject *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r3
  int v4; // r3
  int v5; // r3

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = result->character_660;
  if ( !character_660 || (v4 = *((_DWORD *)character_660 + 1338)) != 0 && *(_BYTE *)(v4 + 20) )
  {
    result = *((DH2_PlayerInfoCharacterPrefix **)this + 482);
    if ( !result || (result = (DH2_PlayerInfoCharacterPrefix *)ConditionList::Eval((ConditionList *)result)) != nullptr )
    {
      v5 = *((_DWORD *)this + 182);
      *((_BYTE *)this + 1924) = 1;
      if ( v5 )
        result = (DH2_PlayerInfoCharacterPrefix *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v5 + 56) + 32))(
                                                    *(_DWORD *)(v5 + 56),
                                                    "unlock",
                                                    0);
      *((_BYTE *)this + 883) = 0;
    }
    else
    {
      *((_BYTE *)this + 1924) = 0;
    }
  }
  else
  {
    *((_BYTE *)this + 1924) = 0;
  }
  return result;
}


// ===== 399490 TriggerObject::IsInteractive(GameObject *) =====
int __fastcall TriggerObject::IsInteractive(TriggerObject *this, GameObject *a2)
{
  int result; // r0

  result = Trigger::CanActivate(this);
  if ( result )
    return *((unsigned __int8 *)this + 1924);
  return result;
}


// ===== 3994a8 TriggerObject::Update(void) =====
VisualObject *__fastcall TriggerObject::Update(TriggerObject *this)
{
  int v2; // r5
  VisualObject *result; // r0

  v2 = *((_DWORD *)this + 238);
  Trigger::Update(this);
  if ( *((_BYTE *)this + 1924) )
  {
    if ( v2 > 0 && Trigger::CanActivate(this) )
    {
      result = *((VisualObject **)this + 182);
      if ( result )
      {
        (*(void (__fastcall **)(_DWORD *, const char *, int, _DWORD, _DWORD))(**((_DWORD **)result + 14) + 32))(
          *((_DWORD **)result + 14),
          "idle",
          1,
          0,
          0);
        result = *((VisualObject **)this + 182);
      }
      *((_BYTE *)this + 883) = 0;
    }
    else
    {
      result = *((VisualObject **)this + 182);
    }
  }
  else
  {
    TriggerObject::TestInteractiveCond(this);
    result = *((VisualObject **)this + 182);
  }
  if ( result )
    result = (VisualObject *)VisualObject::Sync(result);
  if ( *((_DWORD *)this + 185) )
  {
    result = (VisualObject *)(*(int (__fastcall **)(TriggerObject *))(*(_DWORD *)this + 152))(this);
    *((_DWORD *)this + 185) = 0;
  }
  return result;
}


// ===== 399578 `non-virtual thunk to'TriggerObject::Deserialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'TriggerObject::Deserialize(VisualObject **this, IStreamBase *a2)
{
  return TriggerObject::Deserialize(this - 9, a2);
}


// ===== 399580 TriggerObject::Deserialize(IStreamBase *) =====
int __fastcall TriggerObject::Deserialize(VisualObject **this, IStreamBase *a2)
{
  int result; // r0

  Trigger::Deserialize(this, a2);
  result = TriggerObject::TestInteractiveCond((TriggerObject *)this);
  if ( *(this + 182) )
  {
    if ( Trigger::CanActivate((Trigger *)this) )
    {
      if ( *((_BYTE *)this + 1924) )
        return (*(int (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**((_DWORD **)*(this + 182) + 14) + 32))(
                 *((_DWORD *)*(this + 182) + 14),
                 "idle",
                 1,
                 0,
                 0);
      else
        return (*(int (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**((_DWORD **)*(this + 182) + 14) + 32))(
                 *((_DWORD *)*(this + 182) + 14),
                 "idlelocked",
                 1,
                 *((unsigned __int8 *)this + 1924),
                 *((unsigned __int8 *)this + 1924));
    }
    else
    {
      result = (*(int (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**((_DWORD **)*(this + 182) + 14) + 32))(
                 *((_DWORD *)*(this + 182) + 14),
                 "idleactive",
                 1,
                 0,
                 0);
      if ( !result )
        return (*(int (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD, _DWORD))(**((_DWORD **)*(this + 182) + 14)
                                                                                   + 32))(
                 *((_DWORD *)*(this + 182) + 14),
                 "activate",
                 0,
                 0,
                 0);
    }
  }
  return result;
}


// ===== 39969c `non-virtual thunk to'TriggerObject::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'TriggerObject::Serialize(TriggerObject *this, IStreamBase *a2)
{
  return TriggerObject::Serialize((TriggerObject *)((char *)this - 36), a2);
}


// ===== 3996a4 TriggerObject::Serialize(IStreamBase *) =====
// attributes: thunk
int __fastcall TriggerObject::Serialize(Trigger *this, IStreamBase *a2)
{
  return Trigger::Serialize(this, a2);
}


// ===== 3996a8 `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerObject.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerObject.cpp(CMessage *a1)
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

  dword_9A280C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2808 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2811 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2812 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2813 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2814 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2815 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2816 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2817 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2818 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2819 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A281A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A281B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A281C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A281D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A281E = result;
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


// ===== 399934 `non-virtual thunk to'TriggerObject::~TriggerObject() =====
void __fastcall `non-virtual thunk to'TriggerObject::~TriggerObject(TriggerObject *this)
{
  TriggerObject::~TriggerObject((TriggerObject *)((char *)this - 36));
}


// ===== 39993c TriggerObject::~TriggerObject() =====
void __fastcall TriggerObject::~TriggerObject(TriggerObject *this)
{
  ConditionList *v1; // r5

  v1 = *((ConditionList **)this + 482);
  *(_DWORD *)this = off_965060;
  *((_DWORD *)this + 1) = &off_965140;
  *((_DWORD *)this + 9) = off_96514C;
  if ( v1 )
  {
    ConditionList::~ConditionList(v1);
    CustomFree(v1);
    *((_DWORD *)this + 482) = 0;
  }
  std::string::~string((std::string *)((char *)this + 1900));
  std::string::~string((std::string *)this + 78);
  std::string::~string((std::string *)((char *)this + 1844));
  std::string::~string((std::string *)((char *)this + 1816));
  Trigger::~Trigger(this);
}


// ===== 3999d0 `non-virtual thunk to'TriggerObject::~TriggerObject() =====
void __fastcall `non-virtual thunk to'TriggerObject::~TriggerObject(TriggerObject *this)
{
  TriggerObject::~TriggerObject((TriggerObject *)((char *)this - 36));
}


// ===== 3999d8 TriggerObject::~TriggerObject() =====
void __fastcall TriggerObject::~TriggerObject(TriggerObject *this)
{
  TriggerObject::~TriggerObject(this);
  CustomFree(this);
}


// ===== 3999f4 TriggerObject::~TriggerObject() =====
void __fastcall TriggerObject::~TriggerObject(TriggerObject *this)
{
  ConditionList *v1; // r5

  v1 = *((ConditionList **)this + 482);
  *(_DWORD *)this = off_965060;
  *((_DWORD *)this + 1) = &off_965140;
  *((_DWORD *)this + 9) = off_96514C;
  if ( v1 )
  {
    ConditionList::~ConditionList(v1);
    CustomFree(v1);
    *((_DWORD *)this + 482) = 0;
  }
  std::string::~string((std::string *)((char *)this + 1900));
  std::string::~string((std::string *)this + 78);
  std::string::~string((std::string *)((char *)this + 1844));
  std::string::~string((std::string *)((char *)this + 1816));
  Trigger::~Trigger(this);
}


// ===== 399a88 Property::Property(char const*,void *,void *) =====
void __fastcall Property::Property(Property *this, const char *a2, _BYTE *a3, _BYTE *a4)
{
  std::string *v6; // r5
  size_t v9; // r0

  *(_DWORD *)this = &off_95C5E8;
  v6 = (std::string *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  v9 = LC_API_STRLEN_0(a2);
  std::string::_M_range_initialize(v6, a2, &a2[v9]);
  *((_DWORD *)this + 1) = a4 - a3;
}


// ===== 399af0 TriggerObject::Interact(GameObject *) =====
void __fastcall TriggerObject::Interact(TriggerObject *this, GameObject *a2)
{
  int v4; // r3
  int v5; // r3
  float v6; // r6
  float v7; // r7
  int v8; // r1
  int v9; // r1
  int v10; // r1
  EventManager *CurrentLevel; // r7
  int v12; // r6
  int v13; // r8
  _DWORD v14[4]; // [sp+10h] [bp-30h] BYREF
  char v15; // [sp+20h] [bp-20h]
  char v16; // [sp+21h] [bp-1Fh]
  int v17; // [sp+24h] [bp-1Ch]
  int v18; // [sp+28h] [bp-18h]
  float v19[3]; // [sp+2Ch] [bp-14h] BYREF
  _BYTE v20[8]; // [sp+38h] [bp-8h] BYREF

  if ( *((_DWORD *)this + 192) && Trigger::CanActivate(this) )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v20);
    sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v20, a2);
    LuaScript::Call(*((LuaScript **)this + 192), (glitch::core *)"OnTrigger", (const sfc::script::lua::Arguments *)v20);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v20);
  }
  Trigger::Activate(this);
  v4 = *((_DWORD *)this + 182);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v4 + 56) + 32))(
      *(_DWORD *)(v4 + 56),
      "activate",
      0);
  v5 = *((_DWORD *)this + 460);
  if ( v5 != -1 )
  {
    v6 = *((float *)this + 89);
    v7 = *((float *)this + 88);
    v8 = *(_DWORD *)(Arrays::TriggerObjects::members + 24 * v5 + 16);
    v19[2] = *((float *)this + 90);
    v19[0] = v7;
    v19[1] = v6;
    VoxSoundManager::Play3D(VoxSoundManager::s_instance, v8, v19, 0, COERCE_FLOAT(1), -1.0, -1.0);
  }
  v9 = *((_DWORD *)this + 474);
  if ( v9 == -1 || (*((_DWORD *)this + 237) & 1) == 0 )
  {
    v10 = *((_DWORD *)this + 467);
    if ( v10 != -1 )
      ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v10, *((_DWORD *)this + 25), 0);
    CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "level",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerObject.cpp",
          286);
      }
    }
    v12 = *((_DWORD *)this + 460);
    v13 = *((_DWORD *)this + 25);
    v14[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "TriggerOn");
    v14[0] = off_965048;
    v16 = 0;
    v14[2] = 0;
    v15 = 0;
    v14[3] = v13;
    v17 = -1;
    v18 = v12;
    EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v14);
    *((_BYTE *)this + 883) = 1;
  }
  else
  {
    ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v9, *((_DWORD *)this + 25), 0);
  }
}


// ===== 399d68 `non-virtual thunk to'TriggerObject::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'TriggerObject::DeclareProperties(TriggerObject *this)
{
  return TriggerObject::DeclareProperties((TriggerObject *)((char *)this - 4));
}


// ===== 399d70 TriggerObject::DeclareProperties(void) =====
void __fastcall TriggerObject::DeclareProperties(TriggerObject *this)
{
  Trigger::DeclareProperties(this);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"data", (int)this + 1816);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script", (int)this + 1844);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"scriptOff", (int)this + 1872);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"unlock_cond", (int)this + 1900);
}


// ===== 399df0 TriggerObject::TriggerObject(void) =====
void __fastcall TriggerObject::TriggerObject(TriggerObject *this)
{
  Trigger::Trigger(this, 20, 0, 1);
  *(_DWORD *)this = off_965060;
  *((_DWORD *)this + 1) = &off_965140;
  *((_DWORD *)this + 9) = off_96514C;
  *((_DWORD *)this + 458) = (char *)this + 1816;
  *((_DWORD *)this + 459) = (char *)this + 1816;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 1816, 0x10u);
  **((_BYTE **)this + 458) = 0;
  *((_DWORD *)this + 460) = -1;
  *((_DWORD *)this + 465) = (char *)this + 1844;
  *((_DWORD *)this + 466) = (char *)this + 1844;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 1844, 0x10u);
  **((_BYTE **)this + 465) = 0;
  *((_DWORD *)this + 472) = (char *)this + 1872;
  *((_DWORD *)this + 473) = (char *)this + 1872;
  *((_DWORD *)this + 467) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 1872, 0x10u);
  **((_BYTE **)this + 472) = 0;
  *((_DWORD *)this + 479) = (char *)this + 1900;
  *((_DWORD *)this + 480) = (char *)this + 1900;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 1900, 0x10u);
  **((_BYTE **)this + 479) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 1;
  *((_BYTE *)this + 1924) = 0;
  *((_DWORD *)this + 482) = 0;
  *((_BYTE *)this + 40) = 1;
}


// ===== 399ef4 TriggerObject::TriggerObject(void) =====
void __fastcall TriggerObject::TriggerObject(TriggerObject *this)
{
  Trigger::Trigger((int)this, 20, 0, 1);
  *(_DWORD *)this = off_965060;
  *((_DWORD *)this + 1) = &off_965140;
  *((_DWORD *)this + 9) = off_96514C;
  *((_DWORD *)this + 458) = (char *)this + 1816;
  *((_DWORD *)this + 459) = (char *)this + 1816;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 454, 0x10u);
  **((_BYTE **)this + 458) = 0;
  *((_DWORD *)this + 460) = -1;
  *((_DWORD *)this + 465) = (char *)this + 1844;
  *((_DWORD *)this + 466) = (char *)this + 1844;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 461, 0x10u);
  **((_BYTE **)this + 465) = 0;
  *((_DWORD *)this + 472) = (char *)this + 1872;
  *((_DWORD *)this + 473) = (char *)this + 1872;
  *((_DWORD *)this + 467) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 468, 0x10u);
  **((_BYTE **)this + 472) = 0;
  *((_DWORD *)this + 479) = (char *)this + 1900;
  *((_DWORD *)this + 480) = (char *)this + 1900;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 475, 0x10u);
  **((_BYTE **)this + 479) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 1;
  *((_BYTE *)this + 1924) = 0;
  *((_DWORD *)this + 482) = 0;
  *((_BYTE *)this + 40) = 1;
}


// ===== 399ff8 TriggerObject::InitPost(void) =====
int __fastcall TriggerObject::InitPost(TriggerObject *this)
{
  int result; // r0
  const char *v3; // r8
  int v4; // r7
  int v5; // r6
  int v6; // r10
  int v7; // r3
  const char *v8; // r6
  size_t v9; // r0
  int IDFromName; // r0
  const char *v11; // r1
  const char *v12; // r7
  int v13; // r8
  int v14; // r6
  int v15; // r10
  ConditionList *v16; // r7
  int v17; // r3
  PhysicalWorld *v18; // r8
  PhysicalObject *v19; // r7

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    v3 = *((const char **)this + 459);
    v4 = Arrays::TriggerObjects::size;
    if ( Arrays::TriggerObjects::size )
    {
      v5 = 0;
      v6 = Arrays::TriggerObjects::m_memberNames;
      while ( LC_API_STRCMP_0(v3, *(const char **)(v6 + 4 * v5)) )
      {
        if ( ++v5 == v4 )
          goto LABEL_28;
      }
      *((_DWORD *)this + 460) = v5;
      if ( v5 != -1 )
      {
        v7 = *(_DWORD *)(Arrays::TriggerObjects::members + 24 * v5 + 20);
        if ( v7 != -1 )
        {
          v8 = *(const char **)(Arrays::GameObjectDict::members + 12 * v7 + 8);
          v9 = LC_API_STRLEN_0(v8);
          std::string::_M_assign((std::string *const)((char *)this + 656), v8, &v8[v9]);
        }
      }
    }
    else
    {
LABEL_28:
      *((_DWORD *)this + 460) = -1;
    }
    IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, *((const char **)this + 466), 0);
    v11 = *((const char **)this + 473);
    *((_DWORD *)this + 467) = IDFromName;
    *((_DWORD *)this + 474) = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v11, 0);
    Trigger::InitPost(this);
    v12 = *((const char **)this + 480);
    if ( *((const char **)this + 479) == v12 || !LC_API_STRCMP_0(*((const char **)this + 480), "Invalid") )
    {
      *((_BYTE *)this + 1924) = 1;
    }
    else
    {
      v13 = Arrays::v2Conditions::size;
      if ( Arrays::v2Conditions::size )
      {
        v14 = 0;
        v15 = Arrays::v2Conditions::m_memberNames;
        while ( LC_API_STRCMP_0(v12, *(const char **)(v15 + 4 * v14)) )
        {
          if ( ++v14 == v13 )
            goto LABEL_17;
        }
        if ( v14 != -1 )
        {
          v16 = (ConditionList *)operator new(12, 0);
          ConditionList::ConditionList(v16);
          *((_DWORD *)this + 482) = v16;
          ConditionList::AssignPyData(
            v16,
            *(Structs::v2ConditionStub **)(Arrays::v2Conditions::members + 16 * v14 + 8),
            *(_DWORD *)(Arrays::v2Conditions::members + 16 * v14 + 4));
        }
      }
    }
LABEL_17:
    if ( *((_DWORD *)this + 460) == -1 || !GameObject::MeetCondition(this) )
    {
      return (*(int (__fastcall **)(TriggerObject *, _DWORD))(*(_DWORD *)this + 64))(this, 0);
    }
    else
    {
      v17 = *((_DWORD *)this + 182);
      if ( v17 )
      {
        if ( *((_BYTE *)this + 1924) )
          (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**(_DWORD **)(v17 + 56) + 32))(
            *(_DWORD *)(v17 + 56),
            "idle",
            1,
            0,
            0);
        else
          (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**(_DWORD **)(v17 + 56) + 32))(
            *(_DWORD *)(v17 + 56),
            "idlelocked",
            1,
            *((unsigned __int8 *)this + 1924),
            *((unsigned __int8 *)this + 1924));
      }
      v18 = (PhysicalWorld *)dword_99F770;
      v19 = (PhysicalObject *)operator new(40, 0);
      PhysicalObject::PhysicalObject(v19, v18, this, 1, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
      *(_DWORD *)v19 = off_968F88;
      GameObject::SetPhysicalObject(this, v19, 0);
      if ( VoxSoundManager::s_instance )
        VoxSoundManager::LoadSound(
          (VoxSoundManager *)VoxSoundManager::s_instance,
          *(_DWORD *)(Arrays::TriggerObjects::members + 24 * *((_DWORD *)this + 460) + 16));
      return GameObject::LoadExternalScript(
               this,
               *(const char **)(Arrays::TriggerObjects::members + 24 * *((_DWORD *)this + 460) + 12),
               "data/scripts/objects/");
    }
  }
  return result;
}


// ===== 39a390 QE_TriggerPlate::~QE_TriggerPlate() =====
void __fastcall QE_TriggerPlate::~QE_TriggerPlate(QE_TriggerPlate *this)
{
  ;
}


// ===== 39a394 TriggerPlate::IsAnimated(void) =====
int __fastcall TriggerPlate::IsAnimated(TriggerPlate *this)
{
  return 1;
}


// ===== 39a39c TriggerPlate::IsUpdatable(void) =====
int __fastcall TriggerPlate::IsUpdatable(TriggerPlate *this)
{
  return 1;
}


// ===== 39a3a4 TriggerPlate::GetVisual(void) =====
int __fastcall TriggerPlate::GetVisual(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 28);
  return result;
}


// ===== 39a3d8 TriggerPlate::GetSoundOn(void) =====
int __fastcall TriggerPlate::GetSoundOn(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 16);
  return result;
}


// ===== 39a40c TriggerPlate::GetSoundOff(void) =====
int __fastcall TriggerPlate::GetSoundOff(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 12);
  return result;
}


// ===== 39a440 TriggerPlate::GetTriggerType(void) =====
int __fastcall TriggerPlate::GetTriggerType(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 24);
  return result;
}


// ===== 39a474 TriggerPlate::GetBehavior(void) =====
int __fastcall TriggerPlate::GetBehavior(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 4);
  return result;
}


// ===== 39a4a8 TriggerPlate::GetSpecificObject(void) =====
int __fastcall TriggerPlate::GetSpecificObject(TriggerPlate *this)
{
  int result; // r0

  result = *((_DWORD *)this + 460);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerPlates::members + 32 * result + 20);
  return result;
}


// ===== 39a4dc QE_TriggerPlate::~QE_TriggerPlate() =====
void __fastcall QE_TriggerPlate::~QE_TriggerPlate(QE_TriggerPlate *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 39a510 TriggerPlate::IsObjectActivating(int) =====
int __fastcall TriggerPlate::IsObjectActivating(TriggerPlate *this, int a2)
{
  char *v3; // r4
  char *v4; // r6
  char *Object; // r0
  char *v6; // r2
  int v8; // r3
  char *v9[4]; // [sp+4h] [bp-10h] BYREF

  if ( a2 == -1 )
    return 0;
  v3 = *((char **)this + 228);
  v4 = (char *)this + 904;
  if ( (char *)this + 904 == v3 )
    return 0;
  while ( 1 )
  {
    ObjectBase::GetHandle((ObjectBase *)v9, *((_DWORD *)v3 + 4));
    Object = ObjectHandle::GetObject(v9, 0);
    if ( Object )
    {
      if ( *((_DWORD *)Object + 61) == 6 && (*(int (__fastcall **)(char *))(*(_DWORD *)Object + 200))(Object) == a2 )
        break;
    }
    v6 = *((char **)v3 + 3);
    if ( v6 )
    {
      while ( *((_DWORD *)v6 + 2) )
        v6 = *((char **)v6 + 2);
      v3 = v6;
    }
    else
    {
      v8 = *((_DWORD *)v3 + 1);
      if ( *(char **)(v8 + 12) == v3 )
      {
        do
        {
          v3 = (char *)v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(char **)(v8 + 12) == v3 );
        v6 = *((char **)v3 + 3);
      }
      if ( v6 != (char *)v8 )
        v3 = (char *)v8;
    }
    if ( v4 == v3 )
      return 0;
  }
  return 1;
}


// ===== 39a5ec TriggerPlate::GetNumValidContactsActivating(void) =====
int __fastcall TriggerPlate::GetNumValidContactsActivating(TriggerPlate *this)
{
  int v2; // r0
  int result; // r0

  switch ( (*(int (__fastcall **)(TriggerPlate *))(*(_DWORD *)this + 232))(this) )
  {
    case 0:
      result = *((_DWORD *)this + 230);
      break;
    case 1:
    case 2:
      result = ZoneEx::GetNumPlayers(this);
      break;
    case 3:
      result = ZoneEx::GetNumObjects(this);
      break;
    case 4:
      v2 = (*(int (__fastcall **)(TriggerPlate *))(*(_DWORD *)this + 240))(this);
      result = TriggerPlate::IsObjectActivating(this, v2);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 39a668 TriggerPlate::Update(void) =====
char *__fastcall TriggerPlate::Update(char *this)
{
  int v1; // r4
  int NumValidContactsActivating; // r6
  int v3; // r3
  int v4; // r2
  int v5; // r10
  int v6; // r0
  float v7; // r7
  float v8; // r8
  int v9; // r3
  int v10; // r1
  EventManager *CurrentLevel; // r8
  int v12; // r10
  int v13; // r7
  int v14; // r2
  int v15; // r9
  int v16; // r0
  float v17; // r7
  float v18; // r10
  int v19; // r3
  int v20; // r1
  _DWORD v21[4]; // [sp+14h] [bp-34h] BYREF
  char v22; // [sp+24h] [bp-24h]
  char v23; // [sp+25h] [bp-23h]
  int v24; // [sp+28h] [bp-20h]
  int v25; // [sp+2Ch] [bp-1Ch]
  float v26[3]; // [sp+30h] [bp-18h] BYREF
  float v27[3]; // [sp+3Ch] [bp-Ch] BYREF

  v1 = (int)this;
  if ( *(this + 1913) )
  {
    if ( !*(this + 1912)
      || (this = (char *)(*(int (__fastcall **)(char *))(*(_DWORD *)this + 236))(this), this != &byte_5) )
    {
      ZoneEx::Update((ZoneEx *)v1);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 232))(v1) == 2 )
        *(_DWORD *)(v1 + 1844) = PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C);
      if ( *(_BYTE *)(GetOnline() + 5) && (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 84))(v1) )
      {
        NumValidContactsActivating = *(_DWORD *)(v1 + 960);
      }
      else
      {
        NumValidContactsActivating = TriggerPlate::GetNumValidContactsActivating((TriggerPlate *)v1);
        *(_DWORD *)(v1 + 960) = NumValidContactsActivating;
      }
      if ( *(_DWORD *)(v1 + 1844) <= NumValidContactsActivating
        || (this = (char *)Trigger::UpdateTimer(v1), *(int *)(v1 + 952) <= 0) )
      {
        if ( Trigger::CanActivate((Trigger *)v1) )
        {
          v3 = *(_DWORD *)(v1 + 1908);
          if ( v3 != NumValidContactsActivating )
          {
            v4 = *(_DWORD *)(v1 + 1844);
            if ( v4 <= NumValidContactsActivating )
            {
              if ( v3 < v4 && !*(_BYTE *)(v1 + 1912) )
              {
                Trigger::Activate((_DWORD *)v1);
                CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
                if ( !CurrentLevel )
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
                      "level",
                      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerPlate.cpp",
                      230);
                  }
                }
                v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 216))(v1);
                v13 = *(_DWORD *)(v1 + 100);
                v21[1] = PyDataConstants::getConstant(
                           (PyDataConstants *)dword_99F758,
                           "v2QuestObjectiveType",
                           "TriggerPlate");
                v21[0] = off_965168;
                v24 = -1;
                v21[3] = v13;
                v25 = v12;
                v21[2] = 0;
                v22 = 0;
                v23 = 0;
                EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v21);
                v14 = *(_DWORD *)(v1 + 1840);
                v21[0] = off_95B458;
                if ( v14 != -1 )
                {
                  v15 = VoxSoundManager::s_instance;
                  v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 224))(v1);
                  v17 = *(float *)(v1 + 360);
                  v18 = *(float *)(v1 + 352);
                  v26[1] = *(float *)(v1 + 356);
                  v26[0] = v18;
                  v26[2] = v17;
                  VoxSoundManager::Play3D(v15, v16, v26, 0, COERCE_FLOAT(1), -1.0, -1.0);
                }
                v19 = *(_DWORD *)(v1 + 728);
                if ( v19 )
                  (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v19 + 56) + 32))(
                    *(_DWORD *)(v19 + 56),
                    "activate",
                    0);
                v20 = *(_DWORD *)(v1 + 1900);
                if ( v20 != -1 )
                  ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v20, *(_DWORD *)(v1 + 100), 0);
                *(_BYTE *)(v1 + 1912) = 1;
                *(_DWORD *)(v1 + 1908) = NumValidContactsActivating;
                return (char *)GameObject::RequireOnlineUpdate((GameObject *)v1);
              }
            }
            else if ( v3 >= v4 )
            {
              if ( *(_DWORD *)(v1 + 1840) != -1 )
              {
                v5 = VoxSoundManager::s_instance;
                v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 228))(v1);
                v7 = *(float *)(v1 + 356);
                v8 = *(float *)(v1 + 352);
                v27[2] = *(float *)(v1 + 360);
                v27[0] = v8;
                v27[1] = v7;
                VoxSoundManager::Play3D(v5, v6, v27, 0, COERCE_FLOAT(1), -1.0, -1.0);
              }
              v9 = *(_DWORD *)(v1 + 728);
              if ( v9 )
                (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v9 + 56) + 32))(
                  *(_DWORD *)(v9 + 56),
                  "deactivate",
                  0);
              v10 = *(_DWORD *)(v1 + 1904);
              if ( v10 != -1 )
                ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v10, *(_DWORD *)(v1 + 100), 0);
              *(_BYTE *)(v1 + 1912) = 0;
            }
            *(_DWORD *)(v1 + 1908) = NumValidContactsActivating;
          }
        }
        return (char *)GameObject::RequireOnlineUpdate((GameObject *)v1);
      }
    }
  }
  return this;
}


// ===== 39aa68 TriggerPlate::GetDataId(void) =====
int __fastcall TriggerPlate::GetDataId(TriggerPlate *this)
{
  const char *v1; // r6
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v1 = *((const char **)this + 459);
  v2 = Arrays::TriggerPlates::size;
  if ( !Arrays::TriggerPlates::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TriggerPlates::m_memberNames;
  while ( LC_API_STRCMP_0(v1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 39aadc `non-virtual thunk to'TriggerPlate::~TriggerPlate() =====
void __fastcall `non-virtual thunk to'TriggerPlate::~TriggerPlate(TriggerPlate *this)
{
  TriggerPlate::~TriggerPlate((TriggerPlate *)((char *)this - 36));
}


// ===== 39aae4 TriggerPlate::~TriggerPlate() =====
void __fastcall TriggerPlate::~TriggerPlate(TriggerPlate *this)
{
  *(_DWORD *)this = off_965180;
  *((_DWORD *)this + 1) = &off_96527C;
  *((_DWORD *)this + 9) = off_965288;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 78);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 77);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1816));
  Trigger::~Trigger(this);
}


// ===== 39ab48 `non-virtual thunk to'TriggerPlate::~TriggerPlate() =====
void __fastcall `non-virtual thunk to'TriggerPlate::~TriggerPlate(TriggerPlate *this)
{
  TriggerPlate::~TriggerPlate((TriggerPlate *)((char *)this - 36));
}


// ===== 39ab50 TriggerPlate::~TriggerPlate() =====
void __fastcall TriggerPlate::~TriggerPlate(TriggerPlate *this)
{
  TriggerPlate::~TriggerPlate(this);
  CustomFree(this);
}


// ===== 39ab6c TriggerPlate::~TriggerPlate() =====
void __fastcall TriggerPlate::~TriggerPlate(TriggerPlate *this)
{
  *(_DWORD *)this = off_965180;
  *((_DWORD *)this + 1) = &off_96527C;
  *((_DWORD *)this + 9) = off_965288;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 78);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 77);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1816));
  Trigger::~Trigger(this);
}


// ===== 39abd0 `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerPlate.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerPlate.cpp(CMessage *a1)
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

  dword_9A2828 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2824 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A282D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A282E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A282F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2830 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2831 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2832 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2833 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2834 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2835 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2836 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2837 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2838 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2839 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A283A = result;
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


// ===== 39ae5c `non-virtual thunk to'TriggerPlate::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'TriggerPlate::DeclareProperties(TriggerPlate *this)
{
  return TriggerPlate::DeclareProperties((TriggerPlate *)((char *)this - 4));
}


// ===== 39ae64 TriggerPlate::DeclareProperties(void) =====
_DWORD *__fastcall TriggerPlate::DeclareProperties(TriggerPlate *this)
{
  Trigger::DeclareProperties(this);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"data", (int)this + 1816);
  PropertyMap::AddProperty<int>((TriggerPlate *)((char *)this + 4), "number_of_objects", (int)this + 1844, 1);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script_on", (int)this + 1848);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script_off", (int)this + 1872);
  return PropertyMap::AddProperty<int>((TriggerPlate *)((char *)this + 4), "trigger_type", (int)this + 1896, 0);
}


// ===== 39af04 TriggerPlate::TriggerPlate(ObjectBase::GO_IDS) =====
int __fastcall TriggerPlate::TriggerPlate(int a1, int a2)
{
  Trigger::Trigger(a1, a2, 1, 0);
  *(_DWORD *)a1 = off_965180;
  *(_DWORD *)(a1 + 4) = &off_96527C;
  *(_DWORD *)(a1 + 36) = off_965288;
  *(_DWORD *)(a1 + 1832) = a1 + 1816;
  *(_DWORD *)(a1 + 1836) = a1 + 1816;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1816), 0x10u);
  **(_BYTE **)(a1 + 1832) = 0;
  *(_DWORD *)(a1 + 1844) = 1;
  *(_DWORD *)(a1 + 1864) = a1 + 1848;
  *(_DWORD *)(a1 + 1868) = a1 + 1848;
  *(_DWORD *)(a1 + 1840) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1848), 0x10u);
  **(_BYTE **)(a1 + 1864) = 0;
  *(_DWORD *)(a1 + 1888) = a1 + 1872;
  *(_DWORD *)(a1 + 1892) = a1 + 1872;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1872), 0x10u);
  **(_BYTE **)(a1 + 1888) = 0;
  *(_DWORD *)(a1 + 1904) = -1;
  *(_BYTE *)(a1 + 1912) = 0;
  *(_DWORD *)(a1 + 1896) = -1;
  *(_DWORD *)(a1 + 1900) = -1;
  *(_DWORD *)(a1 + 1908) = 0;
  return a1;
}


// ===== 39afe0 TriggerPlate::TriggerPlate(ObjectBase::GO_IDS) =====
int __fastcall TriggerPlate::TriggerPlate(int a1, int a2)
{
  Trigger::Trigger(a1, a2, 1, 0);
  *(_DWORD *)a1 = off_965180;
  *(_DWORD *)(a1 + 4) = &off_96527C;
  *(_DWORD *)(a1 + 36) = off_965288;
  *(_DWORD *)(a1 + 1832) = a1 + 1816;
  *(_DWORD *)(a1 + 1836) = a1 + 1816;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1816), 0x10u);
  **(_BYTE **)(a1 + 1832) = 0;
  *(_DWORD *)(a1 + 1844) = 1;
  *(_DWORD *)(a1 + 1864) = a1 + 1848;
  *(_DWORD *)(a1 + 1868) = a1 + 1848;
  *(_DWORD *)(a1 + 1840) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1848), 0x10u);
  **(_BYTE **)(a1 + 1864) = 0;
  *(_DWORD *)(a1 + 1888) = a1 + 1872;
  *(_DWORD *)(a1 + 1892) = a1 + 1872;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1872), 0x10u);
  **(_BYTE **)(a1 + 1888) = 0;
  *(_DWORD *)(a1 + 1904) = -1;
  *(_BYTE *)(a1 + 1912) = 0;
  *(_DWORD *)(a1 + 1896) = -1;
  *(_DWORD *)(a1 + 1900) = -1;
  *(_DWORD *)(a1 + 1908) = 0;
  return a1;
}


// ===== 39b0bc TriggerPlate::InitPost(void) =====
int __fastcall TriggerPlate::InitPost(TriggerPlate *this)
{
  int result; // r0
  int v3; // r6
  int v4; // r7
  const char *v5; // r8
  int v6; // r10
  int v7; // r3
  const char *v8; // r6
  size_t v9; // r0
  int IDFromName; // r0
  const char *v11; // r1
  int v12; // r0
  int v13; // r3
  int v14; // r3

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    v3 = 0;
    *((_DWORD *)this + 234) = -1;
    *((_BYTE *)this + 897) = 0;
    v4 = Arrays::TriggerPlates::size;
    v5 = *((const char **)this + 459);
    if ( Arrays::TriggerPlates::size )
    {
      v6 = Arrays::TriggerPlates::m_memberNames;
      while ( LC_API_STRCMP_0(v5, *(const char **)(v6 + 4 * v3)) )
      {
        if ( ++v3 == v4 )
          goto LABEL_16;
      }
      *((_DWORD *)this + 460) = v3;
      if ( v3 != -1 )
      {
        v7 = *(_DWORD *)(Arrays::TriggerPlates::members + 32 * v3 + 28);
        if ( v7 != -1 )
        {
          v8 = *(const char **)(Arrays::GameObjectDict::members + 12 * v7 + 8);
          v9 = LC_API_STRLEN_0(v8);
          std::string::_M_assign((std::string *const)((char *)this + 656), v8, &v8[v9]);
        }
      }
    }
    else
    {
LABEL_16:
      *((_DWORD *)this + 460) = -1;
    }
    Trigger::InitPost(this);
    IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, *((const char **)this + 467), 0);
    v11 = *((const char **)this + 473);
    *((_DWORD *)this + 475) = IDFromName;
    v12 = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v11, 0);
    v13 = *((_DWORD *)this + 182);
    *((_DWORD *)this + 476) = v12;
    if ( v13 )
      (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**(_DWORD **)(v13 + 56) + 32))(
        *(_DWORD *)(v13 + 56),
        "idle",
        1,
        0,
        0);
    v14 = *((_DWORD *)this + 460);
    if ( v14 >= 0 )
      *((_BYTE *)this + 1913) = *(_BYTE *)(Arrays::TriggerPlates::members + 32 * v14 + 8);
    result = (*(int (__fastcall **)(TriggerPlate *))(*(_DWORD *)this + 232))(this);
    if ( result == 1 )
      *((_DWORD *)this + 461) = 1;
  }
  return result;
}


// ===== 39b26c TriggerZone::setUpdating(bool) =====
int __fastcall TriggerZone::setUpdating(int this, int a2)
{
  *(_BYTE *)(this + 133) = a2;
  if ( !a2 )
    *(_BYTE *)(this + 1972) = 0;
  return this;
}


// ===== 39b27c TriggerZone::IsDoorClosedActivated(void) =====
int __fastcall TriggerZone::IsDoorClosedActivated(TriggerZone *this)
{
  int result; // r0
  int v2; // r0
  bool v3; // zf

  result = *((_DWORD *)this + 494);
  if ( result )
  {
    v2 = *(_DWORD *)(result + 936);
    v3 = v2 == 1;
    if ( v2 != 1 )
      return v2 == 3;
    return v3;
  }
  return result;
}


// ===== 39b2a0 TriggerZone::SafeStartScriptOnlyOnce(int) =====
int __fastcall TriggerZone::SafeStartScriptOnlyOnce(int this, int a2)
{
  int v3; // r6

  v3 = this;
  if ( a2 != -1 )
  {
    this = ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, a2);
    if ( !this )
      return ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, a2, *(_DWORD *)(v3 + 100), 0);
  }
  return this;
}


// ===== 39b2f4 TriggerZone::HideMarker(void) =====
int __fastcall TriggerZone::HideMarker(int this)
{
  int v1; // r3
  int v2; // r5
  int v3; // r0

  v1 = *(_DWORD *)(this + 1968);
  v2 = this;
  if ( v1 )
  {
    v3 = *(_DWORD *)(this + 1968);
    *(_DWORD *)(v1 + 40) = 0;
    AnimatedFX::SyncIrrData(v3, 1);
    AnimatedFX::SetVisible(*(_DWORD *)(v2 + 1968), 0);
    this = VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(v2 + 1968));
    *(_DWORD *)(v2 + 1968) = 0;
  }
  return this;
}


// ===== 39b354 TriggerZone::ShowMarker(void) =====
AnimatedFX *__fastcall TriggerZone::ShowMarker(AnimatedFX *this)
{
  int v1; // r1
  AnimatedFX *v2; // r4
  int Animator; // r0
  int v4; // r0

  v1 = *((_DWORD *)this + 491);
  v2 = this;
  if ( v1 != -1 )
  {
    if ( *((_DWORD *)this + 492) )
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
          "m_effectOnePlayerFX == 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerZone.cpp",
          298);
        v1 = *((_DWORD *)v2 + 491);
      }
    }
    this = VisualFXManager::GrabAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, v1, nullptr);
    *((_DWORD *)v2 + 492) = this;
    if ( this )
    {
      *((_DWORD *)this + 10) = v2;
      AnimatedFX::SyncIrrData((int)this, 1);
      AnimatedFX::SetVisible(*((_DWORD *)v2 + 492), 1);
      Animator = AnimatedFX::GetAnimator(*((AnimatedFX **)v2 + 492));
      v4 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
      return (AnimatedFX *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 64))(v4, 1);
    }
  }
  return this;
}


// ===== 39b458 TriggerZone::Update(void) =====
int __fastcall TriggerZone::Update(TriggerZone *this)
{
  int v2; // r7
  int result; // r0
  int v4; // r3
  int v5; // r7
  int NumPlayerActivating; // r9
  int v7; // r3
  int v8; // r10
  int v9; // r11
  _BOOL4 v10; // r8
  _BOOL4 v11; // r6
  const GameObject *v12; // r4
  int v13; // r3
  int v14; // r1
  _BOOL4 v15; // r9

  v2 = dword_99F76C;
  result = (int)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v4 = *(_DWORD *)(result + 1632);
  if ( v4 && *(_BYTE *)(v4 + 5248) )
    return result;
  result = TriggerZone::IsDoorClosedActivated(this);
  if ( result )
    return result;
  result = Trigger::CanActivate(this);
  if ( !result )
    return result;
  result = GameObject::MeetCondition(this);
  if ( !result )
    return result;
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    result = (*(int (__fastcall **)(TriggerZone *))(*(_DWORD *)this + 84))(this);
    if ( result )
      return result;
  }
  Trigger::Update(this);
  v5 = *(_DWORD *)(v2 + 1732);
  if ( *(_BYTE *)(GetOnline() + 5) && (*(int (__fastcall **)(TriggerZone *))(*(_DWORD *)this + 84))(this) )
  {
    NumPlayerActivating = *((_DWORD *)this + 240);
  }
  else
  {
    NumPlayerActivating = Trigger::GetNumPlayerActivating(this);
    *((_DWORD *)this + 240) = NumPlayerActivating;
  }
  v7 = *((_DWORD *)this + 477);
  v8 = *((_DWORD *)this + 484);
  if ( v7 == -1 )
    v9 = *((_DWORD *)this + 463);
  else
    v9 = *((_DWORD *)this + 477);
  if ( v8 == -1 )
    v8 = *((_DWORD *)this + 470);
  if ( v7 == -1 )
    v10 = NumPlayerActivating > 0;
  else
    v10 = NumPlayerActivating == v5;
  result = (int)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v11 = NumPlayerActivating == 0;
  v12 = *(const GameObject **)(result + 1632);
  if ( !v10 )
    goto LABEL_40;
  if ( *((_BYTE *)this + 956) )
  {
    if ( !v12 )
    {
      v11 = 0;
      goto LABEL_29;
    }
    result = GameObject::IsTouching(this, v12);
    if ( !result )
    {
      v13 = *((unsigned __int8 *)this + 956);
      v10 = 0;
      goto LABEL_23;
    }
LABEL_40:
    v13 = *((unsigned __int8 *)this + 956);
LABEL_23:
    if ( v13 )
    {
      v11 = false;
      if ( v12 )
      {
        result = GameObject::IsTouching(this, v12);
        if ( !result )
          v11 = true;
      }
    }
    if ( !v10 )
      goto LABEL_29;
  }
  if ( *((_BYTE *)this + 1972) )
    goto LABEL_42;
  *((_BYTE *)this + 1972) = 1;
  TriggerZone::SafeStartScriptOnlyOnce(this, v9);
  *((_DWORD *)this + 238) = *((_DWORD *)this + 235);
  result = TriggerZone::HideMarker(this);
  if ( v8 == -1 )
    result = (int)Trigger::Activate(this);
LABEL_29:
  if ( *((_BYTE *)this + 1972) )
  {
LABEL_42:
    if ( v11 )
    {
      *((_BYTE *)this + 1972) = 0;
      if ( v8 != -1 )
      {
        TriggerZone::SafeStartScriptOnlyOnce(this, v8);
        result = (int)Trigger::Activate(this);
      }
    }
  }
  if ( v5 > 1 && !*((_BYTE *)this + 956) && *((_DWORD *)this + 477) != -1 )
  {
    v14 = *((_DWORD *)this + 463);
    if ( v14 != -1 )
    {
      v15 = NumPlayerActivating > 0;
      if ( *((_BYTE *)this + 1973) )
      {
        if ( !v15 )
        {
          *((_BYTE *)this + 1973) = 0;
          TriggerZone::SafeStartScriptOnlyOnce(this, *((_DWORD *)this + 470));
          return TriggerZone::HideMarker(this);
        }
      }
      else if ( v15 )
      {
        TriggerZone::SafeStartScriptOnlyOnce(this, v14);
        *((_BYTE *)this + 1973) = 1;
        return TriggerZone::ShowMarker(this);
      }
    }
  }
  return result;
}


// ===== 39b74c `non-virtual thunk to'TriggerZone::~TriggerZone() =====
void __fastcall `non-virtual thunk to'TriggerZone::~TriggerZone(TriggerZone *this)
{
  TriggerZone::~TriggerZone((TriggerZone *)((char *)this - 36));
}


// ===== 39b754 TriggerZone::~TriggerZone() =====
void __fastcall TriggerZone::~TriggerZone(TriggerZone *this)
{
  *(_DWORD *)this = off_9652A0;
  *((_DWORD *)this + 1) = &off_965380;
  *((_DWORD *)this + 9) = off_96538C;
  TriggerZone::HideMarker((int)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1980));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1940));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1912));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1884));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1856));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1828));
  Trigger::~Trigger(this);
}


// ===== 39b7e0 `non-virtual thunk to'TriggerZone::~TriggerZone() =====
void __fastcall `non-virtual thunk to'TriggerZone::~TriggerZone(TriggerZone *this)
{
  TriggerZone::~TriggerZone((TriggerZone *)((char *)this - 36));
}


// ===== 39b7e8 TriggerZone::~TriggerZone() =====
void __fastcall TriggerZone::~TriggerZone(TriggerZone *this)
{
  TriggerZone::~TriggerZone(this);
  CustomFree(this);
}


// ===== 39b804 TriggerZone::~TriggerZone() =====
void __fastcall TriggerZone::~TriggerZone(TriggerZone *this)
{
  *(_DWORD *)this = off_9652A0;
  *((_DWORD *)this + 1) = &off_965380;
  *((_DWORD *)this + 9) = off_96538C;
  TriggerZone::HideMarker(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1980));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1940));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1912));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1884));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1856));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1828));
  Trigger::~Trigger(this);
}


// ===== 39b890 TriggerZone::TriggerZone(ObjectBase::GO_IDS) =====
int __fastcall TriggerZone::TriggerZone(int a1, int a2)
{
  Trigger::Trigger(a1, a2, 0, 1);
  *(_DWORD *)(a1 + 4) = &off_965380;
  *(_DWORD *)a1 = off_9652A0;
  *(_DWORD *)(a1 + 36) = off_96538C;
  std::string::string(a1 + 1828, "");
  *(_DWORD *)(a1 + 1852) = -1;
  std::string::string(a1 + 1856, "");
  *(_DWORD *)(a1 + 1880) = -1;
  std::string::string(a1 + 1884, "");
  *(_DWORD *)(a1 + 1908) = -1;
  std::string::string(a1 + 1912, "");
  *(_DWORD *)(a1 + 1936) = -1;
  std::string::string(a1 + 1940, "");
  *(_DWORD *)(a1 + 1964) = -1;
  *(_DWORD *)(a1 + 1976) = 0;
  *(_DWORD *)(a1 + 1968) = 0;
  *(_BYTE *)(a1 + 1972) = 0;
  *(_BYTE *)(a1 + 1973) = 0;
  std::string::string(a1 + 1980, "");
  return a1;
}


// ===== 39b990 TriggerZone::TriggerZone(ObjectBase::GO_IDS) =====
int __fastcall TriggerZone::TriggerZone(int a1, int a2)
{
  Trigger::Trigger(a1, a2, 0, 1);
  *(_DWORD *)(a1 + 4) = &off_965380;
  *(_DWORD *)a1 = off_9652A0;
  *(_DWORD *)(a1 + 36) = off_96538C;
  std::string::string(a1 + 1828, "");
  *(_DWORD *)(a1 + 1852) = -1;
  std::string::string(a1 + 1856, "");
  *(_DWORD *)(a1 + 1880) = -1;
  std::string::string(a1 + 1884, "");
  *(_DWORD *)(a1 + 1908) = -1;
  std::string::string(a1 + 1912, "");
  *(_DWORD *)(a1 + 1936) = -1;
  std::string::string(a1 + 1940, "");
  *(_DWORD *)(a1 + 1964) = -1;
  *(_DWORD *)(a1 + 1976) = 0;
  *(_DWORD *)(a1 + 1968) = 0;
  *(_BYTE *)(a1 + 1972) = 0;
  *(_BYTE *)(a1 + 1973) = 0;
  std::string::string(a1 + 1980, "");
  return a1;
}


// ===== 39ba90 `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerZone.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerZone.cpp(CMessage *a1)
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

  dword_9A2844 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2840 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2849 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A284A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A284B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A284C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A284D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A284E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A284F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2850 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2851 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2852 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2853 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2854 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2855 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A2856 = result;
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


// ===== 39bd70 TriggerZone::Draw(void) =====
void __fastcall TriggerZone::Draw(TriggerZone *this)
{
  int Switch; // r8
  int v3; // r8
  int v4; // r9
  int v5; // r2
  int Technique; // r2
  int v7; // r9
  int v8; // r10
  int v9; // r8
  int v10; // lr
  int v11; // r0
  int v12; // r12
  int v13; // r1
  void (__fastcall *v14)(int, _DWORD *, int); // r3
  _DWORD v15[7]; // [sp+0h] [bp-40h] BYREF
  glitch::video::CMaterial *v16; // [sp+1Ch] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+24h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v17, "isDisplayingBoundingBox");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  if ( Switch && !*((_DWORD *)this + 237) && GameObject::MeetCondition(this) )
  {
    v3 = *(_DWORD *)(dword_99F73C + 16);
    v4 = *(_DWORD *)(v3 + 220);
    v5 = *(unsigned __int16 *)(v4 + 46);
    if ( v5 == 0xFFFF )
      LOBYTE(v5) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(v3 + 220), 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v16,
      v4,
      v5);
    if ( v16 )
      Technique = glitch::video::CMaterial::getTechnique(v16);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(v3, &v16, Technique, 0);
    v7 = *((_DWORD *)this + 75);
    v8 = *((_DWORD *)this + 76);
    v9 = *((_DWORD *)this + 77);
    v10 = *((_DWORD *)this + 78);
    v11 = *(_DWORD *)(dword_99F73C + 16);
    v12 = *((_DWORD *)this + 79);
    v13 = *((_DWORD *)this + 80);
    v14 = *(void (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v11 + 40);
    v15[6] = -256;
    v15[5] = v13;
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v15[4] = v12;
    v14(v11, v15, -256);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
  }
}


// ===== 39bf10 PropertyMap::AddProperty<int>(char const*,int &,int) [clone] =====
_DWORD *__fastcall PropertyMap::AddProperty<int>(PropertyMap *a1, char *a2, int a3)
{
  Property *v6; // r4

  v6 = (Property *)operator new(0x24u, 0);
  *(_DWORD *)v6 = &off_95C5E8;
  std::string::string((int)v6 + 8, a2);
  *((_DWORD *)v6 + 8) = -1;
  *((_DWORD *)v6 + 1) = a3 - (_DWORD)a1;
  *(_DWORD *)v6 = &off_964708;
  return PropertyMap::AddProperty(a1, a2, v6);
}


// ===== 39bf9c `non-virtual thunk to'TriggerZone::DeclareProperties(void) =====
void __fastcall `non-virtual thunk to'TriggerZone::DeclareProperties(TriggerZone *this)
{
  TriggerZone::DeclareProperties((TriggerZone *)((char *)this - 4));
}


// ===== 39bfa4 TriggerZone::DeclareProperties(void) =====
void __fastcall TriggerZone::DeclareProperties(TriggerZone *this)
{
  Trigger::DeclareProperties(this);
  PropertyMap::AddProperty<int>((TriggerZone *)((char *)this + 4), "scope", (int)this + 1816);
  PropertyMap::AddProperty<int>((TriggerZone *)((char *)this + 4), "triggertype", (int)this + 1820);
  PropertyMap::AddProperty<int>((TriggerZone *)((char *)this + 4), "cineID", (int)this + 1824);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script", (int)this + 1828);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script_move_out", (int)this + 1856);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script_all_player", (int)this + 1884);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"script_all_player_move_out", (int)this + 1912);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"effect_one_player", (int)this + 1940);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"is_door_closed", (int)this + 1980);
}


// ===== 39c0a8 TriggerZone::InitPost(void) =====
int __fastcall TriggerZone::InitPost(TriggerZone *this)
{
  int result; // r0
  const char *v3; // r1
  bool v4; // zf
  const char *v5; // r1
  const char *v6; // r3
  const char *v7; // r1
  const char *v8; // r3
  const char *v9; // r1
  const char *v10; // r3
  const char *v11; // r7
  const char *v12; // r3
  int v13; // r8
  int v14; // r6
  int v15; // r10
  char *v16; // r2
  char *v17; // r1
  char v18; // r3
  int v19; // r3
  _BYTE v20[16]; // [sp+Ch] [bp-10h] BYREF

  result = Trigger::InitPost(this);
  v3 = *((const char **)this + 462);
  v4 = *((_DWORD *)this + 461) == (_DWORD)v3;
  *((_DWORD *)this + 463) = -1;
  if ( !v4 )
  {
    result = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v3, 0);
    *((_DWORD *)this + 463) = result;
  }
  v5 = *((const char **)this + 469);
  v6 = *((const char **)this + 468);
  *((_DWORD *)this + 470) = -1;
  if ( v6 != v5 )
  {
    result = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v5, 0);
    *((_DWORD *)this + 470) = result;
  }
  v7 = *((const char **)this + 476);
  v8 = *((const char **)this + 475);
  *((_DWORD *)this + 477) = -1;
  if ( v8 != v7 )
  {
    result = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v7, 0);
    *((_DWORD *)this + 477) = result;
  }
  v9 = *((const char **)this + 483);
  v10 = *((const char **)this + 482);
  *((_DWORD *)this + 484) = -1;
  if ( v10 != v9 )
  {
    result = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, v9, 0);
    *((_DWORD *)this + 484) = result;
  }
  v11 = *((const char **)this + 490);
  v12 = *((const char **)this + 489);
  *((_DWORD *)this + 491) = -1;
  if ( v12 != v11 )
  {
    v13 = Arrays::AnimatedEffectTable::size;
    if ( Arrays::AnimatedEffectTable::size )
    {
      v14 = 0;
      v15 = Arrays::AnimatedEffectTable::m_memberNames;
      while ( 1 )
      {
        result = LC_API_STRCMP_0(v11, *(const char **)(v15 + 4 * v14));
        if ( !result )
          break;
        if ( ++v14 == v13 )
          goto LABEL_27;
      }
      *((_DWORD *)this + 491) = v14;
    }
    else
    {
LABEL_27:
      *((_DWORD *)this + 491) = -1;
    }
  }
  v16 = *((char **)this + 500);
  v17 = *((char **)this + 499);
  *((_DWORD *)this + 238) = *((_DWORD *)this + 235);
  if ( v16 != v17 )
  {
    ObjectManager::GetObjectByName((ObjectManager *)v20, (const char *)dword_99F764, v16, -1, nullptr, 0);
    result = ObjectHandle::GetObject((ObjectHandle *)v20, 0);
    if ( result )
    {
      result = ObjectHandle::GetObject((ObjectHandle *)v20, 0);
      if ( !result || *(_DWORD *)(result + 244) != 2 )
        result = 0;
      *((_DWORD *)this + 494) = result;
    }
  }
  if ( *((_DWORD *)this + 477) == -1 && *((_DWORD *)this + 484) == -1 && (v19 = *((_DWORD *)this + 463), v19 >= 0) )
    v18 = *(_BYTE *)(dword_9A5FF4 + 12 * v19 + 4);
  else
    v18 = 0;
  *((_BYTE *)this + 956) = v18;
  return result;
}


// ===== 39c2c8 Arrays::GetMemberIDByString<Arrays::LevelList>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::LevelList>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::LevelList::size;
  if ( !Arrays::LevelList::size )
    return -1;
  v3 = 0;
  v4 = Arrays::LevelList::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 39c33c TriggerZoneExitLevel::Update(void) =====
int __fastcall TriggerZoneExitLevel::Update(TriggerZoneExitLevel *this)
{
  int result; // r0
  const GameObject *v3; // r7
  int v4; // r0
  const char *v5; // r0
  const char *v6; // r1
  int v7; // r0
  RenderFX *v8; // r9
  RenderFX *v9; // r0
  gameswf::root *v10; // r0
  gameswf::character *v11; // r0
  int v12; // r0
  const char *String; // r0
  const char *v14; // r1
  int v15; // r0
  RenderFX *HUDRoot; // r9
  RenderFX *v17; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  _BYTE v20[12]; // [sp+8h] [bp-68h] BYREF
  _BYTE v21[12]; // [sp+14h] [bp-5Ch] BYREF
  _BYTE v22[12]; // [sp+20h] [bp-50h] BYREF
  _BYTE v23[4]; // [sp+2Ch] [bp-44h] BYREF
  double v24; // [sp+30h] [bp-40h]
  _BYTE v25[12]; // [sp+38h] [bp-38h] BYREF
  _BYTE v26[12]; // [sp+44h] [bp-2Ch] BYREF
  _BYTE v27[12]; // [sp+50h] [bp-20h] BYREF
  _BYTE v28[4]; // [sp+5Ch] [bp-14h] BYREF
  double v29; // [sp+60h] [bp-10h]
  double v30; // [sp+68h] [bp-8h]

  if ( *((__int16 *)this + 440) >= 0 )
    GameObject::UpdateIdleSound(this);
  if ( !*(_BYTE *)(GetOnline() + 5) || !(*(int (__fastcall **)(TriggerZoneExitLevel *))(*(_DWORD *)this + 84))(this) )
    *((_DWORD *)this + 240) = Trigger::GetNumPlayerActivating(this);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !result || *(_BYTE *)(result + 324) )
  {
    result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    v3 = *(const GameObject **)(result + 1632);
    if ( !v3 )
      goto LABEL_24;
    if ( *((_DWORD *)this + 240) && !*((_BYTE *)this + 2072) )
    {
      Character::SG_SetFastTravelIdUnlocked(*(Character **)(result + 1632), *((const char **)this + 517), 1, -1);
      *((_BYTE *)this + 2072) = 1;
    }
    result = GameObject::IsTouching(this, v3);
    if ( result
      && (result = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)) != 0
      && (result = GameObject::MeetCondition(this)) != 0 )
    {
      result = GameObject::RequireOnlineUpdate(this);
      if ( *((_DWORD *)this + 501) != -1 && !*((_BYTE *)this + 2073) )
      {
        v12 = Arrays::GetMemberIDByString<Arrays::LevelList>(*((char **)this + 508));
        v25[0] = 0;
        v25[1] = 1;
        v25[4] = 1;
        String = (const char *)StringManager::getString(
                                 (StringManager *)dword_99F760,
                                 *(_DWORD *)(Arrays::LevelList::members + 72 * v12 + 36));
        v26[0] = 0;
        v26[1] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v26, String);
        v14 = *((const char **)this + 508);
        v27[0] = 0;
        v27[1] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v27, v14);
        v15 = *((_DWORD *)this + 509);
        v28[0] = 0;
        v28[1] = 2;
        v30 = (double)v15;
        v29 = (double)v15;
        HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
        v17 = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
        Root = (gameswf::root *)RenderFX::GetRoot(v17);
        root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
        RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayFastTravel", (const gameswf::as_value *)v25, 4);
        *((_BYTE *)this + 2073) = 1;
        gameswf::as_value::drop_refs((gameswf::as_value *)v28);
        gameswf::as_value::drop_refs((gameswf::as_value *)v27);
        gameswf::as_value::drop_refs((gameswf::as_value *)v26);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v25);
      }
    }
    else
    {
LABEL_24:
      if ( *((_BYTE *)this + 2073) )
      {
        v4 = Arrays::GetMemberIDByString<Arrays::LevelList>(*((char **)this + 508));
        v20[1] = 1;
        v20[0] = 0;
        v20[4] = 0;
        v5 = (const char *)StringManager::getString(
                             (StringManager *)dword_99F760,
                             *(_DWORD *)(Arrays::LevelList::members + 72 * v4 + 36));
        v21[0] = 0;
        v21[1] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v21, v5);
        v6 = *((const char **)this + 508);
        v22[0] = 0;
        v22[1] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v22, v6);
        v7 = *((_DWORD *)this + 509);
        v23[1] = 2;
        v23[0] = 0;
        v30 = (double)v7;
        v24 = (double)v7;
        v8 = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
        v9 = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
        v10 = (gameswf::root *)RenderFX::GetRoot(v9);
        v11 = (gameswf::character *)gameswf::root::get_root_movie(v10);
        RenderFX::InvokeASCallback(v8, v11, "DisplayFastTravel", (const gameswf::as_value *)v20, 4);
        *((_BYTE *)this + 2073) = 0;
        gameswf::as_value::drop_refs((gameswf::as_value *)v23);
        gameswf::as_value::drop_refs((gameswf::as_value *)v22);
        gameswf::as_value::drop_refs((gameswf::as_value *)v21);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v20);
      }
    }
  }
  return result;
}


// ===== 39c684 `non-virtual thunk to'TriggerZoneExitLevel::~TriggerZoneExitLevel() =====
void __fastcall `non-virtual thunk to'TriggerZoneExitLevel::~TriggerZoneExitLevel(TriggerZoneExitLevel *this)
{
  TriggerZoneExitLevel::~TriggerZoneExitLevel((TriggerZoneExitLevel *)((char *)this - 36));
}


// ===== 39c68c TriggerZoneExitLevel::~TriggerZoneExitLevel() =====
void __fastcall TriggerZoneExitLevel::~TriggerZoneExitLevel(TriggerZoneExitLevel *this)
{
  *(_DWORD *)this = off_9653A8;
  *((_DWORD *)this + 1) = &off_965488;
  *((_DWORD *)this + 9) = off_965494;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2048));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2012));
  TriggerZone::~TriggerZone(this);
}


// ===== 39c6e4 `non-virtual thunk to'TriggerZoneExitLevel::~TriggerZoneExitLevel() =====
void __fastcall `non-virtual thunk to'TriggerZoneExitLevel::~TriggerZoneExitLevel(TriggerZoneExitLevel *this)
{
  TriggerZoneExitLevel::~TriggerZoneExitLevel((TriggerZoneExitLevel *)((char *)this - 36));
}


// ===== 39c6ec TriggerZoneExitLevel::~TriggerZoneExitLevel() =====
void __fastcall TriggerZoneExitLevel::~TriggerZoneExitLevel(TriggerZoneExitLevel *this)
{
  TriggerZoneExitLevel::~TriggerZoneExitLevel(this);
  CustomFree(this);
}


// ===== 39c708 TriggerZoneExitLevel::~TriggerZoneExitLevel() =====
void __fastcall TriggerZoneExitLevel::~TriggerZoneExitLevel(TriggerZoneExitLevel *this)
{
  *(_DWORD *)this = off_9653A8;
  *((_DWORD *)this + 1) = &off_965488;
  *((_DWORD *)this + 9) = off_965494;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2048));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2012));
  TriggerZone::~TriggerZone(this);
}


// ===== 39c760 `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerZoneExitLevel.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Triggers_TriggerZoneExitLevel.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2860 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A285C = 1056964608;
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


// ===== 39c83c PropertyMap::AddProperty<int>(char const*,int &,int) [clone] =====
_DWORD *__fastcall PropertyMap::AddProperty<int>(PropertyMap *a1, char *a2, int a3)
{
  Property *v6; // r4

  v6 = (Property *)operator new(0x24u, 0);
  *(_DWORD *)v6 = &off_95C5E8;
  std::string::string((int)v6 + 8, a2);
  *((_DWORD *)v6 + 8) = -1;
  *((_DWORD *)v6 + 1) = a3 - (_DWORD)a1;
  *(_DWORD *)v6 = &off_964708;
  return PropertyMap::AddProperty(a1, a2, v6);
}


// ===== 39c8c8 TriggerZoneExitLevel::InitPost(void) =====
char *__fastcall TriggerZoneExitLevel::InitPost(char **this)
{
  char *result; // r0

  TriggerZone::InitPost((TriggerZone *)this);
  result = *(this + 508);
  if ( *(this + 507) != result )
  {
    result = (char *)Arrays::GetMemberIDByString<Arrays::LevelList>(result);
    *(this + 501) = result;
  }
  return result;
}


// ===== 39c8f0 `non-virtual thunk to'TriggerZoneExitLevel::DeclareProperties(void) =====
void __fastcall `non-virtual thunk to'TriggerZoneExitLevel::DeclareProperties(TriggerZoneExitLevel *this)
{
  TriggerZoneExitLevel::DeclareProperties((TriggerZoneExitLevel *)((char *)this - 4));
}


// ===== 39c8f8 TriggerZoneExitLevel::DeclareProperties(void) =====
void __fastcall TriggerZoneExitLevel::DeclareProperties(TriggerZoneExitLevel *this)
{
  TriggerZone::DeclareProperties(this);
  PropertyMap::AddProperty<int>((char *)this + 4, "levelID", (char *)this + 2008);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"levelName", (int)this + 2012);
  PropertyMap::AddProperty<int>((char *)this + 4, "entrypointID", (char *)this + 2036);
  PropertyMap::AddProperty<int>((char *)this + 4, "maploc", (char *)this + 2040);
  PropertyMap::AddProperty<int>((char *)this + 4, "question", (char *)this + 2044);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"fasttravel", (int)this + 2048);
}


// ===== 39c9a4 TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS) =====
int __fastcall TriggerZoneExitLevel::TriggerZoneExitLevel(int a1)
{
  TriggerZone::TriggerZone();
  *(_DWORD *)(a1 + 2028) = a1 + 2012;
  *(_DWORD *)(a1 + 4) = &off_965488;
  *(_DWORD *)a1 = off_9653A8;
  *(_DWORD *)(a1 + 36) = off_965494;
  *(_DWORD *)(a1 + 2004) = -1;
  *(_DWORD *)(a1 + 2032) = a1 + 2012;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 2012, 0x10u);
  **(_BYTE **)(a1 + 2028) = 0;
  *(_DWORD *)(a1 + 2064) = a1 + 2048;
  *(_DWORD *)(a1 + 2068) = a1 + 2048;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 2048, 0x10u);
  **(_BYTE **)(a1 + 2064) = 0;
  *(_BYTE *)(a1 + 2073) = 0;
  *(_BYTE *)(a1 + 2072) = 0;
  return a1;
}


// ===== 39ca40 TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS) =====
int __fastcall TriggerZoneExitLevel::TriggerZoneExitLevel(int a1)
{
  TriggerZone::TriggerZone();
  *(_DWORD *)(a1 + 2028) = a1 + 2012;
  *(_DWORD *)(a1 + 4) = &off_965488;
  *(_DWORD *)a1 = off_9653A8;
  *(_DWORD *)(a1 + 36) = off_965494;
  *(_DWORD *)(a1 + 2004) = -1;
  *(_DWORD *)(a1 + 2032) = a1 + 2012;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 2012, 0x10u);
  **(_BYTE **)(a1 + 2028) = 0;
  *(_DWORD *)(a1 + 2064) = a1 + 2048;
  *(_DWORD *)(a1 + 2068) = a1 + 2048;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 2048, 0x10u);
  **(_BYTE **)(a1 + 2064) = 0;
  *(_BYTE *)(a1 + 2073) = 0;
  *(_BYTE *)(a1 + 2072) = 0;
  return a1;
}


// ===== 39cadc TriggerTrap::IsUpdatable(void) =====
int __fastcall TriggerTrap::IsUpdatable(TriggerTrap *this)
{
  return 1;
}


// ===== 39cae4 TriggerTrap::IsAnimated(void) =====
int __fastcall TriggerTrap::IsAnimated(TriggerTrap *this)
{
  return 1;
}


// ===== 39caec TriggerTrap::IsInteractive(GameObject *) =====
int __fastcall TriggerTrap::IsInteractive(TriggerTrap *this, GameObject *a2)
{
  return 0;
}


// ===== 39caf4 TriggerTrap::IsZonable(void) =====
int __fastcall TriggerTrap::IsZonable(TriggerTrap *this)
{
  return 1;
}


// ===== 39cafc TriggerTrap::IsObstacle(void) =====
int __fastcall TriggerTrap::IsObstacle(TriggerTrap *this)
{
  return 1;
}


// ===== 39cb04 TriggerTrap::GetObstacleRadius(void) =====
int __fastcall TriggerTrap::GetObstacleRadius(TriggerTrap *this)
{
  return 1125515264;
}


// ===== 39cb10 TriggerTrap::GetObstacleStrength(void) =====
int __fastcall TriggerTrap::GetObstacleStrength(TriggerTrap *this)
{
  return 1092616192;
}


// ===== 39cb1c TriggerTrap::getUDTypeName(void) =====
const char *__fastcall TriggerTrap::getUDTypeName(TriggerTrap *this)
{
  return "TriggerTrap";
}


// ===== 39cb2c ProjectileTrap::GetScript(void) =====
char *__fastcall ProjectileTrap::GetScript(ProjectileTrap *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 240);
  if ( v1 == -1 )
    return "";
  else
    return *(char **)(Arrays::ProjectileTraps::members + 40 * v1 + 28);
}


// ===== 39cb74 ProjectileTrap::GetVisual(void) =====
int __fastcall ProjectileTrap::GetVisual(ProjectileTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::ProjectileTraps::members + 40 * result + 36);
  return result;
}


// ===== 39cbac ProjectileTrap::GetDamagerId(void) =====
int __fastcall ProjectileTrap::GetDamagerId(ProjectileTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::ProjectileTraps::members + 40 * result + 4);
  return result;
}


// ===== 39cbe4 ProjectileTrap::GetHurtChance(void) =====
int __fastcall ProjectileTrap::GetHurtChance(ProjectileTrap *this)
{
  int v2; // r1

  if ( *((_DWORD *)this + 255) != -1 )
    return *((_DWORD *)this + 255);
  v2 = *((_DWORD *)this + 240);
  if ( v2 == -1 )
    return *((_DWORD *)this + 255);
  else
    return *(_DWORD *)(Arrays::ProjectileTraps::members + 40 * v2 + 12);
}


// ===== 39cc34 ProjectileTrap::GetSound(void) =====
int __fastcall ProjectileTrap::GetSound(ProjectileTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::ProjectileTraps::members + 40 * result + 32);
  return result;
}


// ===== 39cc6c ProjectileTrap::GetDelay(void) =====
int __fastcall ProjectileTrap::GetDelay(ProjectileTrap *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 240);
  if ( v1 == -1 )
    return 0;
  else
    return *(_DWORD *)(Arrays::ProjectileTraps::members + 40 * v1 + 8);
}


// ===== 39cca8 ProjectileTrap::_HandleProjectile(Projectile *,void *) =====
int __fastcall ProjectileTrap::_HandleProjectile(ProjectileTrap *this, Projectile *a2, void *a3)
{
  int v4; // r1
  GameObject *v5; // r4
  char *v6; // r5
  int v7; // r7
  int v8; // r0
  _BYTE v10[40]; // [sp+Ch] [bp-38h] BYREF
  char *v11[4]; // [sp+34h] [bp-10h] BYREF

  if ( !this )
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
        "p",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\ProjectileTrap.cpp",
        233);
    }
  }
  v4 = *((_DWORD *)this + 243);
  v5 = *((GameObject **)this + 224);
  if ( !v4 )
    return 1;
  ObjectBase::GetHandle((ObjectBase *)v11, v4);
  v6 = ObjectHandle::operator Character *(v11);
  if ( !v6 )
    return 1;
  v7 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)v5 + 228))(v5);
  v8 = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)v5 + 232))(v5);
  Character::F_GOAttack(v10, v5, v6, v7, v8);
  Character::F_ApplyResult((int)v10, v5, (int)v6, 0);
  return 0;
}


// ===== 39cdc4 ProjectileTrap::SpecificUpdate(void) =====
Projectile *__fastcall ProjectileTrap::SpecificUpdate(Projectile *this)
{
  Projectile *v1; // r4
  int v2; // r6
  int v3; // r8
  int v4; // r10
  int v5; // r0
  float v6; // r6
  float v7; // r7
  float v8[4]; // [sp+14h] [bp-10h] BYREF

  v1 = this;
  if ( *((_BYTE *)this + 1036) )
  {
    if ( *((int *)this + 240) >= 0 )
    {
      v2 = *((_DWORD *)this + 257);
      this = (Projectile *)(v2 - Application::GetDt((Application *)&Singleton<Application>::s_inst));
      *((_DWORD *)v1 + 257) = this;
      if ( (int)this <= 0 )
      {
        v3 = *((unsigned __int8 *)v1 + 964);
        if ( *((_BYTE *)v1 + 964) )
        {
          *((_DWORD *)v1 + 257) = 0;
LABEL_5:
          if ( v3 )
            return (Projectile *)TriggerTrap::TransferVictims(v1);
          return this;
        }
        if ( *((int *)v1 + 240) >= 0 )
        {
          v4 = VoxSoundManager::s_instance;
          v5 = (*(int (__fastcall **)(Projectile *))(*(_DWORD *)v1 + 236))(v1);
          v6 = *((float *)v1 + 89);
          v7 = *((float *)v1 + 88);
          v8[2] = *((float *)v1 + 90);
          v8[0] = v7;
          v8[1] = v6;
          VoxSoundManager::Play3D(v4, v5, v8, v3, COERCE_FLOAT(1), -1.0, -1.0);
        }
        *((_DWORD *)v1 + 257) = (*(int (__fastcall **)(Projectile *))(*(_DWORD *)v1 + 248))(v1);
        this = ProjectileManager::Spawn(
                 (ProjectileManager *)&Singleton<ProjectileManager>::s_inst,
                 *((_DWORD *)v1 + 258),
                 v1,
                 nullptr,
                 nullptr,
                 (int (*)(Projectile *, void *))ProjectileTrap::_HandleProjectile,
                 nullptr,
                 1);
      }
    }
    v3 = *((unsigned __int8 *)v1 + 964);
    goto LABEL_5;
  }
  return this;
}


// ===== 39cf18 ProjectileTrap::Create(GameObject *,int,int) =====
GameObject *__fastcall ProjectileTrap::Create(ProjectileTrap *this, GameObject *a2, int a3, int a4)
{
  char *Object; // r0
  GameObject *v8; // r6
  const char *v10; // r8
  size_t v11; // r0
  int v12; // r3
  RoomZone *v13; // r0
  char *v14[3]; // [sp+Ch] [bp-24h] BYREF
  char s[20]; // [sp+18h] [bp-18h] BYREF

  if ( !this )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      return nullptr;
    }
    if ( gAssertLevel == 1 )
    {
      v8 = nullptr;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\ProjectileTrap.cpp",
        130);
      return v8;
    }
    return nullptr;
  }
  sprintf(s, "ProjectileTrap_%04u", ++ProjectileTrap::Create(GameObject *,int,int)::counter);
  ObjectManager::Spawn((ObjectManager *)v14, (ObjectBase *)dword_99F764, "ProjectileTrap", s, 1, 1);
  Object = ObjectHandle::GetObject(v14, 0);
  v8 = (GameObject *)Object;
  if ( !Object || *((_DWORD *)Object + 61) != 17 )
    return nullptr;
  *((_DWORD *)Object + 254) = this;
  *((_DWORD *)Object + 240) = a2;
  v10 = *(const char **)(Arrays::ProjectileTraps::m_memberNames + 4 * (_DWORD)a2);
  v11 = LC_API_STRLEN_0(v10);
  std::string::_M_assign((std::string *const)v8 + 39, v10, &v10[v11]);
  *((_DWORD *)v8 + 255) = a3;
  v12 = *(_DWORD *)v8;
  *((_DWORD *)v8 + 88) = *((_DWORD *)this + 88);
  *((_DWORD *)v8 + 89) = *((_DWORD *)this + 89);
  *((_DWORD *)v8 + 90) = *((_DWORD *)this + 90);
  (*(void (__fastcall **)(GameObject *))(v12 + 28))(v8);
  (*(void (__fastcall **)(GameObject *))(*(_DWORD *)v8 + 88))(v8);
  v13 = *((RoomZone **)this + 189);
  if ( v13 )
    RoomZone::AddInitialObject(v13, v8);
  return v8;
}


// ===== 39d0f8 ProjectileTrap::GetDataId(void) =====
int __fastcall ProjectileTrap::GetDataId(ProjectileTrap *this)
{
  const char *v1; // r6
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v1 = *((const char **)this + 239);
  v2 = Arrays::ProjectileTraps::size;
  if ( !Arrays::ProjectileTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ProjectileTraps::m_memberNames;
  while ( LC_API_STRCMP_0(v1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 39d16c ProjectileTrap::InitPost(void) =====
int __fastcall ProjectileTrap::InitPost(ProjectileTrap *this)
{
  int result; // r0
  int v3; // r2
  int v4; // r2

  result = TimerTrap::InitPost(this);
  v3 = *((_DWORD *)this + 240);
  if ( v3 >= 0 )
  {
    v4 = 40 * v3;
    *((_DWORD *)this + 258) = *(_DWORD *)(Arrays::ProjectileTraps::members + v4 + 20);
    *((_BYTE *)this + 1036) = *(_BYTE *)(Arrays::ProjectileTraps::members + v4 + 16);
  }
  return result;
}


// ===== 39d1c8 `non-virtual thunk to'ProjectileTrap::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'ProjectileTrap::DeclareProperties(ProjectileTrap *this)
{
  return ProjectileTrap::DeclareProperties((ProjectileTrap *)((char *)this - 4));
}


// ===== 39d1d0 ProjectileTrap::DeclareProperties(void) =====
// attributes: thunk
int __fastcall ProjectileTrap::DeclareProperties(ProjectileTrap *this)
{
  return TimerTrap::DeclareProperties(this);
}


// ===== 39d1d4 `non-virtual thunk to'ProjectileTrap::~ProjectileTrap() =====
void __fastcall `non-virtual thunk to'ProjectileTrap::~ProjectileTrap(ProjectileTrap *this)
{
  ProjectileTrap::~ProjectileTrap((ProjectileTrap *)((char *)this - 36));
}


// ===== 39d1dc ProjectileTrap::~ProjectileTrap() =====
void __fastcall ProjectileTrap::~ProjectileTrap(ProjectileTrap *this)
{
  *(_DWORD *)this = off_9654B0;
  *((_DWORD *)this + 1) = &off_9655B4;
  *((_DWORD *)this + 9) = off_9655C0;
  TimerTrap::~TimerTrap(this);
}


// ===== 39d21c `non-virtual thunk to'ProjectileTrap::~ProjectileTrap() =====
void __fastcall `non-virtual thunk to'ProjectileTrap::~ProjectileTrap(ProjectileTrap *this)
{
  ProjectileTrap::~ProjectileTrap((ProjectileTrap *)((char *)this - 36));
}


// ===== 39d224 ProjectileTrap::~ProjectileTrap() =====
void __fastcall ProjectileTrap::~ProjectileTrap(ProjectileTrap *this)
{
  ProjectileTrap::~ProjectileTrap(this);
  CustomFree(this);
}


// ===== 39d240 ProjectileTrap::~ProjectileTrap() =====
void __fastcall ProjectileTrap::~ProjectileTrap(ProjectileTrap *this)
{
  *(_DWORD *)this = off_9654B0;
  *((_DWORD *)this + 1) = &off_9655B4;
  *((_DWORD *)this + 9) = off_9655C0;
  TimerTrap::~TimerTrap(this);
}


// ===== 39d280 ProjectileTrap::ProjectileTrap(ObjectBase::GO_IDS) =====
_DWORD *__fastcall ProjectileTrap::ProjectileTrap(_DWORD *a1)
{
  TimerTrap::TimerTrap();
  *a1 = off_9654B0;
  a1[1] = &off_9655B4;
  a1[9] = off_9655C0;
  return a1;
}


// ===== 39d2c0 ProjectileTrap::ProjectileTrap(ObjectBase::GO_IDS) =====
_DWORD *__fastcall ProjectileTrap::ProjectileTrap(_DWORD *a1)
{
  TimerTrap::TimerTrap();
  *a1 = off_9654B0;
  a1[1] = &off_9655B4;
  a1[9] = off_9655C0;
  return a1;
}


// ===== 39d300 `global constructor keyed to'.._.._sources_Game_Objects_Traps_ProjectileTrap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Traps_ProjectileTrap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2870 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A286C = 1056964608;
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
  if ( (`guard variable for'Singleton<ProjectileManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<ProjectileManager>::s_inst = 1;
    ProjectileManager::ProjectileManager((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<ProjectileManager>::s_inst,
             (int)ProjectileManager::~ProjectileManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 39d430 ProjectileTrap::Activate(void) =====
void __fastcall ProjectileTrap::Activate(ProjectileTrap *this)
{
  int v1; // r6
  int v3; // r7
  int v4; // r0
  float v5; // r6
  float v6; // r5
  char *v7; // r7
  float v8[4]; // [sp+14h] [bp-10h] BYREF

  v1 = *((_DWORD *)this + 182);
  if ( v1 )
  {
    *((_BYTE *)this + 964) = 1;
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v1 + 56) + 28))(*(_DWORD *)(v1 + 56), 0);
  }
  else if ( *((_DWORD *)this + 252) )
  {
    v7 = (char *)this + 992;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 992,
      *((_DWORD **)this + 249));
    *((_DWORD *)this + 251) = v7;
    *((_DWORD *)this + 252) = 0;
    *((_DWORD *)this + 250) = v7;
    *((_DWORD *)this + 249) = 0;
  }
  if ( *((int *)this + 240) >= 0 )
  {
    v3 = VoxSoundManager::s_instance;
    v4 = (*(int (__fastcall **)(ProjectileTrap *))(*(_DWORD *)this + 236))(this);
    v5 = *((float *)this + 88);
    v6 = *((float *)this + 89);
    v8[2] = *((float *)this + 90);
    v8[0] = v5;
    v8[1] = v6;
    VoxSoundManager::Play3D(v3, v4, v8, 0, COERCE_FLOAT(1), -1.0, -1.0);
  }
}


// ===== 39d524 TimerTrap::GetScript(void) =====
char *__fastcall TimerTrap::GetScript(TimerTrap *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 240);
  if ( v1 == -1 )
    return "";
  else
    return *(char **)(Arrays::TimerTraps::members + 32 * v1 + 20);
}


// ===== 39d568 TimerTrap::GetVisual(void) =====
int __fastcall TimerTrap::GetVisual(TimerTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TimerTraps::members + 32 * result + 28);
  return result;
}


// ===== 39d59c TimerTrap::GetDamagerId(void) =====
int __fastcall TimerTrap::GetDamagerId(TimerTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TimerTraps::members + 32 * result + 4);
  return result;
}


// ===== 39d5d0 TimerTrap::GetHurtChance(void) =====
int __fastcall TimerTrap::GetHurtChance(TimerTrap *this)
{
  int v2; // r1

  if ( *((_DWORD *)this + 255) != -1 )
    return *((_DWORD *)this + 255);
  v2 = *((_DWORD *)this + 240);
  if ( v2 == -1 )
    return *((_DWORD *)this + 255);
  else
    return *(_DWORD *)(Arrays::TimerTraps::members + 32 * v2 + 12);
}


// ===== 39d61c TimerTrap::GetSound(void) =====
int __fastcall TimerTrap::GetSound(TimerTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TimerTraps::members + 32 * result + 24);
  return result;
}


// ===== 39d650 TimerTrap::GetDelay(void) =====
int __fastcall TimerTrap::GetDelay(TimerTrap *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 240);
  if ( v1 == -1 )
    return 0;
  else
    return *(_DWORD *)(Arrays::TimerTraps::members + 32 * v1 + 8);
}


// ===== 39d688 TimerTrap::SpecificUpdate(void) =====
int __fastcall TimerTrap::SpecificUpdate(int this)
{
  TriggerTrap *v1; // r4
  int v2; // r5
  int v3; // r3
  int v4; // r0
  int v5; // r3

  v1 = (TriggerTrap *)this;
  if ( *(int *)(this + 960) < 0 )
    goto LABEL_3;
  v2 = *(_DWORD *)(this + 1028);
  this = v2 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
  *((_DWORD *)v1 + 257) = this;
  if ( this > 0 )
    goto LABEL_3;
  v3 = *((unsigned __int8 *)v1 + 964);
  if ( !*((_BYTE *)v1 + 964) )
  {
    v4 = (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)v1 + 248))(v1);
    v5 = *(_DWORD *)v1;
    *((_DWORD *)v1 + 257) = v4;
    this = (*(int (__fastcall **)(TriggerTrap *))(v5 + 240))(v1);
LABEL_3:
    v3 = *((unsigned __int8 *)v1 + 964);
    goto LABEL_4;
  }
  *((_DWORD *)v1 + 257) = 0;
LABEL_4:
  if ( v3 )
    return TriggerTrap::TransferVictims(v1);
  return this;
}


// ===== 39d724 TimerTrap::Create(GameObject *,int,int) =====
GameObject *__fastcall TimerTrap::Create(TimerTrap *this, GameObject *a2, int a3, int a4)
{
  char *Object; // r0
  GameObject *v8; // r6
  const char *v10; // r8
  size_t v11; // r0
  int v12; // r3
  RoomZone *v13; // r0
  char *v14[3]; // [sp+Ch] [bp-24h] BYREF
  char s[20]; // [sp+18h] [bp-18h] BYREF

  if ( !this )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      return nullptr;
    }
    if ( gAssertLevel == 1 )
    {
      v8 = nullptr;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\TimerTrap.cpp",
        116);
      return v8;
    }
    return nullptr;
  }
  sprintf(s, "TimerTrap_%04u", ++TimerTrap::Create(GameObject *,int,int)::counter);
  ObjectManager::Spawn((ObjectManager *)v14, (ObjectBase *)dword_99F764, "TimerTrap", s, 1, 1);
  Object = ObjectHandle::GetObject(v14, 0);
  v8 = (GameObject *)Object;
  if ( !Object || *((_DWORD *)Object + 61) != 16 )
    return nullptr;
  *((_DWORD *)Object + 254) = this;
  *((_DWORD *)Object + 240) = a2;
  v10 = *(const char **)(Arrays::TimerTraps::m_memberNames + 4 * (_DWORD)a2);
  v11 = LC_API_STRLEN_0(v10);
  std::string::_M_assign((std::string *const)v8 + 39, v10, &v10[v11]);
  *((_DWORD *)v8 + 255) = a3;
  v12 = *(_DWORD *)v8;
  *((_DWORD *)v8 + 88) = *((_DWORD *)this + 88);
  *((_DWORD *)v8 + 89) = *((_DWORD *)this + 89);
  *((_DWORD *)v8 + 90) = *((_DWORD *)this + 90);
  (*(void (__fastcall **)(GameObject *))(v12 + 28))(v8);
  (*(void (__fastcall **)(GameObject *))(*(_DWORD *)v8 + 88))(v8);
  v13 = *((RoomZone **)this + 189);
  if ( v13 )
    RoomZone::AddInitialObject(v13, v8);
  return v8;
}


// ===== 39d904 TimerTrap::GetDataId(void) =====
int __fastcall TimerTrap::GetDataId(TimerTrap *this)
{
  const char *v1; // r6
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v1 = *((const char **)this + 239);
  v2 = Arrays::TimerTraps::size;
  if ( !Arrays::TimerTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TimerTraps::m_memberNames;
  while ( LC_API_STRCMP_0(v1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 39d978 TimerTrap::InitPost(void) =====
int __fastcall TimerTrap::InitPost(TimerTrap *this)
{
  int result; // r0

  TriggerTrap::InitPost(this);
  result = (*(int (__fastcall **)(TimerTrap *))(*(_DWORD *)this + 248))(this);
  *((_DWORD *)this + 257) = result;
  return result;
}


// ===== 39d99c `non-virtual thunk to'TimerTrap::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'TimerTrap::DeclareProperties(TimerTrap *this)
{
  return TimerTrap::DeclareProperties((TimerTrap *)((char *)this - 4));
}


// ===== 39d9a4 TimerTrap::DeclareProperties(void) =====
// attributes: thunk
int __fastcall TimerTrap::DeclareProperties(TimerTrap *this)
{
  return TriggerTrap::DeclareProperties(this);
}


// ===== 39d9a8 `non-virtual thunk to'TimerTrap::~TimerTrap() =====
void __fastcall `non-virtual thunk to'TimerTrap::~TimerTrap(TimerTrap *this)
{
  TimerTrap::~TimerTrap((TimerTrap *)((char *)this - 36));
}


// ===== 39d9b0 TimerTrap::~TimerTrap() =====
void __fastcall TimerTrap::~TimerTrap(TimerTrap *this)
{
  *(_DWORD *)this = off_9655D8;
  *((_DWORD *)this + 1) = &off_9656DC;
  *((_DWORD *)this + 9) = off_9656E8;
  TriggerTrap::~TriggerTrap(this);
}


// ===== 39d9f0 `non-virtual thunk to'TimerTrap::~TimerTrap() =====
void __fastcall `non-virtual thunk to'TimerTrap::~TimerTrap(TimerTrap *this)
{
  TimerTrap::~TimerTrap((TimerTrap *)((char *)this - 36));
}


// ===== 39d9f8 TimerTrap::~TimerTrap() =====
void __fastcall TimerTrap::~TimerTrap(TimerTrap *this)
{
  TimerTrap::~TimerTrap(this);
  CustomFree(this);
}


// ===== 39da14 TimerTrap::~TimerTrap() =====
void __fastcall TimerTrap::~TimerTrap(TimerTrap *this)
{
  *(_DWORD *)this = off_9655D8;
  *((_DWORD *)this + 1) = &off_9656DC;
  *((_DWORD *)this + 9) = off_9656E8;
  TriggerTrap::~TriggerTrap(this);
}


// ===== 39da54 TimerTrap::TimerTrap(ObjectBase::GO_IDS) =====
_DWORD *__fastcall TimerTrap::TimerTrap(_DWORD *a1)
{
  TriggerTrap::TriggerTrap();
  a1[257] = 0;
  *a1 = off_9655D8;
  a1[1] = &off_9656DC;
  a1[9] = off_9656E8;
  return a1;
}


// ===== 39da9c TimerTrap::TimerTrap(ObjectBase::GO_IDS) =====
_DWORD *__fastcall TimerTrap::TimerTrap(_DWORD *a1)
{
  TriggerTrap::TriggerTrap();
  a1[257] = 0;
  *a1 = off_9655D8;
  a1[1] = &off_9656DC;
  a1[9] = off_9656E8;
  return a1;
}


// ===== 39dae4 `global constructor keyed to'.._.._sources_Game_Objects_Traps_TimerTrap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Traps_TimerTrap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A28BC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28B8 = 1056964608;
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


// ===== 39dbc0 TriggerTrap::GetScript(void) =====
char *__fastcall TriggerTrap::GetScript(TriggerTrap *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 240);
  if ( v1 == -1 )
    return "";
  else
    return *(char **)(Arrays::TriggerTraps::members + 28 * v1 + 16);
}


// ===== 39dc08 TriggerTrap::GetVisual(void) =====
int __fastcall TriggerTrap::GetVisual(TriggerTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerTraps::members + 28 * result + 24);
  return result;
}


// ===== 39dc40 TriggerTrap::GetDamagerId(void) =====
int __fastcall TriggerTrap::GetDamagerId(TriggerTrap *this)
{
  int v2; // r1

  if ( *((_DWORD *)this + 255) != -1 )
    return *((_DWORD *)this + 255);
  v2 = *((_DWORD *)this + 240);
  if ( v2 == -1 )
    return *((_DWORD *)this + 255);
  else
    return *(_DWORD *)(Arrays::TriggerTraps::members + 28 * v2 + 4);
}


// ===== 39dc90 TriggerTrap::GetHurtChance(void) =====
int __fastcall TriggerTrap::GetHurtChance(TriggerTrap *this)
{
  int v2; // r1

  if ( *((_DWORD *)this + 255) != -1 )
    return *((_DWORD *)this + 255);
  v2 = *((_DWORD *)this + 240);
  if ( v2 == -1 )
    return *((_DWORD *)this + 255);
  else
    return *(_DWORD *)(Arrays::TriggerTraps::members + 28 * v2 + 8);
}


// ===== 39dce0 TriggerTrap::GetSound(void) =====
int __fastcall TriggerTrap::GetSound(TriggerTrap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 240);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::TriggerTraps::members + 28 * result + 20);
  return result;
}


// ===== 39dd18 TriggerTrap::_Remove(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall TriggerTrap::_Remove(int a1, int a2, int a3)
{
  int v3; // r3
  int result; // r0

  v3 = *(_DWORD *)(a3 + 728);
  *(_BYTE *)(a3 + 1024) = 1;
  if ( !v3
    || (result = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v3 + 56) + 32))(
                   *(_DWORD *)(v3 + 56),
                   "remove",
                   0)) == 0 )
  {
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a3 + 64))(a3, 0);
    return ObjectBase::Delete(a3);
  }
  return result;
}


// ===== 39dd98 TriggerTrap::createBindings(sfc::script::lua::Binder &) =====
int __fastcall TriggerTrap::createBindings(TriggerTrap *this, sfc::script::lua::Binder *a2)
{
  GameObject::createBindings(this, a2);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetOwner",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_GetOwner,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetOwner",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_GetOwner);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetDamager",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_GetDamager,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetDamager",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_GetDamager);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Remove",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_Remove,
    this);
  return sfc::script::lua::Binder::bindMethod(
           (int)a2,
           "Remove",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TriggerTrap::_Remove);
}


// ===== 39de6c TriggerTrap::GetDataId(void) =====
int __fastcall TriggerTrap::GetDataId(TriggerTrap *this)
{
  const char *v1; // r6
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v1 = *((const char **)this + 239);
  v2 = Arrays::TriggerTraps::size;
  if ( !Arrays::TriggerTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TriggerTraps::m_memberNames;
  while ( LC_API_STRCMP_0(v1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 39dee0 TriggerTrap::InitPost(void) =====
int __fastcall TriggerTrap::InitPost(TriggerTrap *this)
{
  int result; // r0
  int v3; // r0
  int v4; // r6
  const char *v5; // r6
  size_t v6; // r0
  int v7; // r6
  int v8; // r5
  int v9; // r0
  const char *v10; // r1

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    v3 = (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 216))(this);
    *((_DWORD *)this + 240) = v3;
    if ( v3 != -1 && (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 224))(this) != -1 )
    {
      v4 = Arrays::GameObjectDict::members;
      v5 = *(const char **)(v4 + 12 * (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 224))(this) + 8);
      v6 = LC_API_STRLEN_0(v5);
      std::string::_M_assign((std::string *const)((char *)this + 656), v5, &v5[v6]);
    }
    Zone::InitPost(this);
    if ( GameObject::MeetCondition(this) )
    {
      v7 = *((_DWORD *)this + 182);
      if ( v7 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD (*)(TriggerTrap *__hidden, glitch::scene::ITimelineController *, void *), TriggerTrap *, int (*)(), TriggerTrap *))(**(_DWORD **)(v7 + 56) + 44))(
          *(_DWORD *)(v7 + 56),
          TriggerTrap::__Callback,
          this,
          TriggerTrap::__EventCallback,
          this);
        if ( !(*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v7 + 56) + 32))(
                *(_DWORD *)(v7 + 56),
                "spawn",
                0) )
        {
          *((_BYTE *)this + 1025) = 1;
          (*(void (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(v7 + 56) + 32))(*(_DWORD *)(v7 + 56), "idle");
        }
      }
      v8 = VoxSoundManager::s_instance;
      if ( VoxSoundManager::s_instance )
      {
        v9 = (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 236))(this);
        VoxSoundManager::LoadSound(v8, v9);
      }
      v10 = (const char *)(*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 220))(this);
      return GameObject::LoadExternalScript((int)this, v10, "data/scripts/objects/");
    }
    else
    {
      return (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 64))(this);
    }
  }
  return result;
}


// ===== 39e0bc `global constructor keyed to'.._.._sources_Game_Objects_Traps_TriggerTrap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Traps_TriggerTrap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A28C8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28C4 = 1056964608;
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


// ===== 39e198 TriggerTrap::Activate(void) =====
void __fastcall TriggerTrap::Activate(TriggerTrap *this)
{
  int v1; // r6
  int v3; // r7
  int v4; // r0
  float v5; // r6
  float v6; // r5
  char *v7; // r7
  float v8[4]; // [sp+14h] [bp-10h] BYREF

  v1 = *((_DWORD *)this + 182);
  if ( v1 )
  {
    *((_BYTE *)this + 964) = 1;
    (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v1 + 56) + 32))(
      *(_DWORD *)(v1 + 56),
      "activate",
      0);
  }
  else if ( *((_DWORD *)this + 252) )
  {
    v7 = (char *)this + 992;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 992,
      *((_DWORD **)this + 249));
    *((_DWORD *)this + 251) = v7;
    *((_DWORD *)this + 252) = 0;
    *((_DWORD *)this + 250) = v7;
    *((_DWORD *)this + 249) = 0;
  }
  if ( *((int *)this + 240) >= 0 )
  {
    v3 = VoxSoundManager::s_instance;
    v4 = (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 236))(this);
    v5 = *((float *)this + 88);
    v6 = *((float *)this + 89);
    v8[2] = *((float *)this + 90);
    v8[0] = v5;
    v8[1] = v6;
    VoxSoundManager::Play3D(v3, v4, v8, 0, COERCE_FLOAT(1), -1.0, -1.0);
  }
}


// ===== 39e298 TriggerTrap::Create(GameObject *,int,int) =====
GameObject *__fastcall TriggerTrap::Create(TriggerTrap *this, GameObject *a2, int a3, int a4)
{
  char *Object; // r0
  GameObject *v8; // r6
  const char *v10; // r8
  size_t v11; // r0
  int v12; // r3
  RoomZone *v13; // r0
  char *v14[3]; // [sp+Ch] [bp-24h] BYREF
  char s[20]; // [sp+18h] [bp-18h] BYREF

  if ( !this )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      return nullptr;
    }
    if ( gAssertLevel == 1 )
    {
      v8 = nullptr;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\TriggerTrap.cpp",
        229);
      return v8;
    }
    return nullptr;
  }
  sprintf(s, "TriggerTrap_%04u", ++TriggerTrap::Create(GameObject *,int,int)::counter);
  ObjectManager::Spawn((ObjectManager *)v14, (ObjectBase *)dword_99F764, "TriggerTrap", s, 1, 1);
  Object = ObjectHandle::GetObject(v14, 0);
  v8 = (GameObject *)Object;
  if ( !Object || *((_DWORD *)Object + 61) != 15 )
    return nullptr;
  *((_DWORD *)Object + 254) = this;
  *((_DWORD *)Object + 240) = a2;
  v10 = *(const char **)(Arrays::TriggerTraps::m_memberNames + 4 * (_DWORD)a2);
  v11 = LC_API_STRLEN_0(v10);
  std::string::_M_assign((std::string *const)v8 + 39, v10, &v10[v11]);
  *((_DWORD *)v8 + 255) = a3;
  v12 = *(_DWORD *)v8;
  *((_DWORD *)v8 + 88) = *((_DWORD *)this + 88);
  *((_DWORD *)v8 + 89) = *((_DWORD *)this + 89);
  *((_DWORD *)v8 + 90) = *((_DWORD *)this + 90);
  (*(void (__fastcall **)(GameObject *))(v12 + 28))(v8);
  (*(void (__fastcall **)(GameObject *))(*(_DWORD *)v8 + 88))(v8);
  v13 = *((RoomZone **)this + 189);
  if ( v13 )
    RoomZone::AddInitialObject(v13, v8);
  return v8;
}


// ===== 39e478 `non-virtual thunk to'TriggerTrap::~TriggerTrap() =====
void __fastcall `non-virtual thunk to'TriggerTrap::~TriggerTrap(TriggerTrap *this)
{
  TriggerTrap::~TriggerTrap((TriggerTrap *)((char *)this - 36));
}


// ===== 39e480 TriggerTrap::~TriggerTrap() =====
void __fastcall TriggerTrap::~TriggerTrap(TriggerTrap *this)
{
  bool v1; // zf
  char *v3; // r5
  TriggerTrap *v4; // r0
  size_t v5; // r1

  v1 = *((_DWORD *)this + 252) == 0;
  *(_DWORD *)this = off_965700;
  *((_DWORD *)this + 1) = &off_965800;
  *((_DWORD *)this + 9) = off_96580C;
  if ( !v1 )
  {
    v3 = (char *)this + 992;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 992,
      *((_DWORD **)this + 249));
    *((_DWORD *)this + 251) = v3;
    *((_DWORD *)this + 252) = 0;
    *((_DWORD *)this + 250) = v3;
    *((_DWORD *)this + 249) = 0;
  }
  if ( *((_DWORD *)this + 246) )
  {
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 968,
      *((_DWORD **)this + 243));
    *((_DWORD *)this + 245) = (char *)this + 968;
    *((_DWORD *)this + 246) = 0;
    *((_DWORD *)this + 244) = (char *)this + 968;
    *((_DWORD *)this + 243) = 0;
  }
  v4 = *((TriggerTrap **)this + 239);
  if ( v4 == (TriggerTrap *)((char *)this + 936) || !v4 )
    goto LABEL_9;
  v5 = *((_DWORD *)this + 234) - (_DWORD)v4;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_9:
    ZoneEx::~ZoneEx(this);
    return;
  }
  CustomFree(v4);
  ZoneEx::~ZoneEx(this);
}


// ===== 39e564 `non-virtual thunk to'TriggerTrap::~TriggerTrap() =====
void __fastcall `non-virtual thunk to'TriggerTrap::~TriggerTrap(TriggerTrap *this)
{
  TriggerTrap::~TriggerTrap((TriggerTrap *)((char *)this - 36));
}


// ===== 39e56c TriggerTrap::~TriggerTrap() =====
void __fastcall TriggerTrap::~TriggerTrap(TriggerTrap *this)
{
  TriggerTrap::~TriggerTrap(this);
  CustomFree(this);
}


// ===== 39e588 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 39e58c TriggerTrap::~TriggerTrap() =====
void __fastcall TriggerTrap::~TriggerTrap(TriggerTrap *this)
{
  bool v1; // zf
  char *v3; // r5
  TriggerTrap *v4; // r0
  size_t v5; // r1

  v1 = *((_DWORD *)this + 252) == 0;
  *(_DWORD *)this = off_965700;
  *((_DWORD *)this + 1) = &off_965800;
  *((_DWORD *)this + 9) = off_96580C;
  if ( !v1 )
  {
    v3 = (char *)this + 992;
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 992,
      *((_DWORD **)this + 249));
    *((_DWORD *)this + 251) = v3;
    *((_DWORD *)this + 252) = 0;
    *((_DWORD *)this + 250) = v3;
    *((_DWORD *)this + 249) = 0;
  }
  if ( *((_DWORD *)this + 246) )
  {
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)this + 968,
      *((_DWORD **)this + 243));
    *((_DWORD *)this + 245) = (char *)this + 968;
    *((_DWORD *)this + 246) = 0;
    *((_DWORD *)this + 244) = (char *)this + 968;
    *((_DWORD *)this + 243) = 0;
  }
  v4 = *((TriggerTrap **)this + 239);
  if ( v4 == (TriggerTrap *)((char *)this + 936) || !v4 )
    goto LABEL_9;
  v5 = *((_DWORD *)this + 234) - (_DWORD)v4;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_9:
    ZoneEx::~ZoneEx(this);
    return;
  }
  CustomFree(v4);
  ZoneEx::~ZoneEx(this);
}


// ===== 39e670 TriggerTrap::TriggerTrap(ObjectBase::GO_IDS) =====
int __fastcall TriggerTrap::TriggerTrap(int a1, int a2)
{
  ZoneEx::ZoneEx(a1, a2, 1, 0);
  *(_DWORD *)(a1 + 952) = a1 + 936;
  *(_DWORD *)(a1 + 4) = &off_965800;
  *(_DWORD *)(a1 + 36) = off_96580C;
  *(_DWORD *)(a1 + 956) = a1 + 936;
  *(_DWORD *)a1 = off_965700;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 936), 0x10u);
  **(_BYTE **)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 960) = -1;
  *(_BYTE *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  *(_BYTE *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 980) = a1 + 968;
  *(_DWORD *)(a1 + 976) = a1 + 968;
  *(_DWORD *)(a1 + 984) = 0;
  *(_DWORD *)(a1 + 996) = 0;
  *(_BYTE *)(a1 + 992) = 0;
  *(_DWORD *)(a1 + 1004) = a1 + 992;
  *(_DWORD *)(a1 + 1020) = -1;
  *(_BYTE *)(a1 + 1025) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 1000) = a1 + 992;
  *(_DWORD *)(a1 + 1008) = 0;
  *(_DWORD *)(a1 + 1016) = 0;
  *(_BYTE *)(a1 + 1024) = 0;
  *(_BYTE *)(a1 + 132) = 1;
  return a1;
}


// ===== 39e738 TriggerTrap::__Callback(glitch::scene::ITimelineController *,void *) =====
void __fastcall TriggerTrap::__Callback(TriggerTrap *this, glitch::scene::ITimelineController *a2, void *a3)
{
  int v4; // r7
  int v5; // r3
  int v6; // r3
  int v7; // r3
  std::string v8; // [sp+Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingTriggerTrap");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  if ( (std::string *)v8._M_start_of_storage._M_data != &v8 && v8._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v8._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v8._M_start_of_storage._M_data,
        v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data);
  }
  v4 = *((unsigned __int8 *)a2 + 1024);
  if ( *((_BYTE *)a2 + 1024) )
  {
    (*(void (__fastcall **)(glitch::scene::ITimelineController *, _DWORD))(*(_DWORD *)a2 + 64))(a2, 0);
    ObjectBase::Delete((int)a2);
  }
  else if ( *((_BYTE *)a2 + 964) )
  {
    v6 = *((_DWORD *)a2 + 252);
    *((_BYTE *)a2 + 964) = v4;
    if ( v6 )
    {
      std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
        (int)a2 + 992,
        *((_DWORD **)a2 + 249));
      *((_DWORD *)a2 + 251) = (char *)a2 + 992;
      *((_DWORD *)a2 + 252) = v4;
      *((_DWORD *)a2 + 250) = (char *)a2 + 992;
      *((_DWORD *)a2 + 249) = v4;
    }
    v7 = *((_DWORD *)a2 + 182);
    if ( v7 )
      (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**(_DWORD **)(v7 + 56) + 32))(
        *(_DWORD *)(v7 + 56),
        "idle",
        1,
        0,
        0);
  }
  else if ( !*((_BYTE *)a2 + 1025) )
  {
    v5 = *((_DWORD *)a2 + 182);
    *((_BYTE *)a2 + 1025) = 1;
    if ( v5 )
      (*(void (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(v5 + 56) + 32))(*(_DWORD *)(v5 + 56), "idle");
  }
}


// ===== 39e8e4 `non-virtual thunk to'TriggerTrap::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'TriggerTrap::DeclareProperties(TriggerTrap *this)
{
  return TriggerTrap::DeclareProperties((TriggerTrap *)((char *)this - 4));
}


// ===== 39e8ec TriggerTrap::DeclareProperties(void) =====
void __fastcall TriggerTrap::DeclareProperties(TriggerTrap *this)
{
  PropertyMap *v1; // r10
  int v2; // r5
  char *v3; // r11
  std::string v4; // [sp+4h] [bp+0h] BYREF
  _DWORD v5[4]; // [sp+1Ch] [bp+18h] BYREF
  char *v6; // [sp+2Ch] [bp+28h]
  void *p; // [sp+30h] [bp+2Ch]

  v1 = this;
  Zone::DeclareProperties(this);
  v6 = (char *)v5;
  p = v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
  *v6 = 0;
  v4._M_finish = (char *)&v4;
  v4._M_start_of_storage._M_data = (char *)&v4;
  std::string::_M_range_initialize(&v4, (const char *)p, v6);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string((std::string *)(v2 + 8), "data");
  v3 = (char *)v1 + 936;
  v1 = (PropertyMap *)((char *)v1 + 4);
  *(_DWORD *)(v2 + 4) = v3 - (char *)v1;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v4._M_start_of_storage._M_data, v4._M_finish);
  PropertyMap::AddProperty(v1, "data", (Property *)v2);
  if ( (std::string *)v4._M_start_of_storage._M_data != &v4 && v4._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v4._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v4._M_start_of_storage._M_data,
        v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data);
  }
  if ( p != v5 && p )
  {
    if ( (unsigned int)(v5[0] - (_DWORD)p) > 0x80 )
      CustomFree(p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v5[0] - (_DWORD)p);
  }
}


// ===== 39ea64 TriggerTrap::_GetDamager(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall TriggerTrap::_GetDamager(
        TriggerTrap *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v5; // r1

  v5 = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 228))(a3);
  sfc::script::lua::ReturnValues::pushInteger(a2, v5);
}


// ===== 39ea90 TriggerTrap::_GetOwner(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall TriggerTrap::_GetOwner(
        TriggerTrap *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::UserData **a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushUserData(a2, a3[254]);
}


// ===== 39ea9c TriggerTrap::CanTrigger(GameObject *) =====
int __fastcall TriggerTrap::CanTrigger(LuaScript **this, GameObject *a2)
{
  sfc::script::lua::Value *v4; // r0
  _BYTE v6[8]; // [sp+4h] [bp-38h] BYREF
  _BYTE v7[36]; // [sp+Ch] [bp-30h] BYREF
  int v8; // [sp+30h] [bp-Ch]

  if ( *(this + 192) )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v6);
    sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v7);
    sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v6, a2);
    LuaScript::Call(
      *(this + 192),
      (glitch::core *)"OnTrigger",
      (const sfc::script::lua::Arguments *)v6,
      (sfc::script::lua::ReturnValues *)v7);
    v4 = *(sfc::script::lua::Value **)v8;
    if ( 1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)
      && *((_DWORD *)v4 + 1) == 1
      && !sfc::script::lua::Value::getBool(v4) )
    {
      sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v7);
      sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v6);
      return 0;
    }
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v7);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v6);
  }
  return 1;
}


// ===== 39eba8 sfc::script::lua::Arguments::pushNil(void) =====
void __fastcall sfc::script::lua::Arguments::pushNil(sfc::script::lua::Arguments *this)
{
  void **v1; // r6
  _BYTE v2[112]; // [sp+4h] [bp-74h] BYREF

  v1 = *((void ***)this + 1);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v2);
  std::vector<sfc::script::lua::Value>::push_back(v1, (const sfc::script::lua::Value *)v2);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v2);
}


// ===== 39ec10 sfc::script::lua::Arguments::pushString(char const*) =====
void __fastcall sfc::script::lua::Arguments::pushString(sfc::script::lua::Arguments *this, const char *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 1);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 39ec78 TriggerTrap::__EventCallback(glitch::collada::STriggeredEvent const&,void *) =====
void __fastcall TriggerTrap::__EventCallback(int a1, int a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  if ( *(_DWORD *)(a2 + 768) )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::pushString((sfc::script::lua::Arguments *)v4, *(const char **)(a1 + 4));
    LuaScript::Call(*(LuaScript **)(a2 + 768), (glitch::core *)"OnAnimEvent", (const sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
  }
}


// ===== 39ecd4 TriggerTrap::TriggerTrap(ObjectBase::GO_IDS) =====
int __fastcall TriggerTrap::TriggerTrap(int a1, int a2)
{
  ZoneEx::ZoneEx(a1, a2, 1, 0);
  *(_DWORD *)(a1 + 952) = a1 + 936;
  *(_DWORD *)(a1 + 4) = &off_965800;
  *(_DWORD *)(a1 + 36) = off_96580C;
  *(_DWORD *)(a1 + 956) = a1 + 936;
  *(_DWORD *)a1 = off_965700;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 936), 0x10u);
  **(_BYTE **)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 960) = -1;
  *(_BYTE *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  *(_BYTE *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 980) = a1 + 968;
  *(_DWORD *)(a1 + 976) = a1 + 968;
  *(_DWORD *)(a1 + 984) = 0;
  *(_DWORD *)(a1 + 996) = 0;
  *(_BYTE *)(a1 + 992) = 0;
  *(_DWORD *)(a1 + 1004) = a1 + 992;
  *(_DWORD *)(a1 + 1020) = -1;
  *(_BYTE *)(a1 + 1025) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 1000) = a1 + 992;
  *(_DWORD *)(a1 + 1008) = 0;
  *(_DWORD *)(a1 + 1016) = 0;
  *(_BYTE *)(a1 + 1024) = 0;
  *(_BYTE *)(a1 + 132) = 1;
  return a1;
}


// ===== 39ed9c std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 39edbc std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(std::priv::_Rb_tree_node_base *,GameObject * const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r1
  _DWORD *v13; // r0
  int v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[4] = v11;
    v8[2] = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || (unsigned int)*a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v8 = v7;
    v9 = *a4;
    v7[3] = 0;
    v7[4] = v9;
    v7[2] = 0;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<GameObject *>>::allocate();
    v8 = v13;
    v14 = *a4;
    v13[3] = 0;
    v13[2] = 0;
    v13[4] = v14;
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


// ===== 39eedc TriggerTrap::Update(void) =====
void __fastcall TriggerTrap::Update(LuaScript **this)
{
  VisualObject *v2; // r0
  int *v3; // r6
  int *i; // r4
  char *v5; // r8
  int *v6; // r10
  int v7; // r0
  int *v8; // r1
  int *j; // r4
  int v10; // r2
  int v11; // r3
  int *v12; // r3
  int v13; // r0
  int v14; // [sp+Ch] [bp-58h]
  char v15[12]; // [sp+18h] [bp-4Ch] BYREF
  _BYTE v16[40]; // [sp+24h] [bp-40h] BYREF
  char *v17[3]; // [sp+4Ch] [bp-18h] BYREF
  char v18[4]; // [sp+58h] [bp-Ch] BYREF
  int *v19; // [sp+5Ch] [bp-8h]

  ZoneEx::Update((ZoneEx *)this);
  v2 = *(this + 182);
  if ( v2 )
    VisualObject::Sync(v2);
  (*((void (__fastcall **)(LuaScript **))*this + 61))(this);
  if ( (int)*(this + 240) >= 0 )
  {
    i = (int *)*(this + 244);
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v18);
    sfc::script::lua::Arguments::pushNil((sfc::script::lua::Arguments *)v18);
    v3 = (int *)(this + 242);
    while ( v3 != i )
    {
      ObjectBase::GetHandle((ObjectBase *)v17, i[4]);
      v5 = ObjectHandle::operator Character *(v17);
      if ( v5 )
      {
        if ( *(this + 192) )
        {
          v6 = v19;
          v7 = *v19;
          if ( !(1227133513 * ((v19[1] - *v19) >> 4)) )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v7 = *v6;
          }
          sfc::script::lua::Value::setUserData(v7, (int)v5);
          LuaScript::Call(*(this + 192), (glitch::core *)"OnDamageRoll", (const sfc::script::lua::Arguments *)v18);
        }
        else
        {
          v14 = (*((int (__fastcall **)(LuaScript **))*this + 57))(this);
          v13 = (*((int (__fastcall **)(LuaScript **))*this + 58))(this);
          Character::F_GOAttack(v16, this, v5, v14, v13);
          Character::F_ApplyResult((int)v16, (GameObject *)this, (int)v5, 0);
        }
      }
      v8 = (int *)i[3];
      if ( v8 )
      {
        for ( i = (int *)i[3]; i[2]; i = (int *)i[2] )
          ;
      }
      else
      {
        v12 = (int *)i[1];
        if ( i == (int *)v12[3] )
        {
          while ( *(int **)(v12[1] + 12) == v12 )
            v12 = (int *)v12[1];
          i = v12;
          v8 = (int *)v12[3];
          v12 = (int *)v12[1];
        }
        if ( v12 != v8 )
          i = v12;
      }
    }
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v18);
  }
  else
  {
    v3 = (int *)(this + 242);
  }
  j = (int *)*(this + 244);
  while ( j != v3 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::insert_unique(
        (int)v15,
        this + 248,
        j + 4);
      v10 = j[3];
      if ( !v10 )
        break;
      for ( j = (int *)j[3]; j[2]; j = (int *)j[2] )
        ;
      if ( j == v3 )
        goto LABEL_23;
    }
    v11 = j[1];
    if ( *(int **)(v11 + 12) == j )
    {
      do
      {
        j = (int *)v11;
        v11 = *(_DWORD *)(v11 + 4);
      }
      while ( *(int **)(v11 + 12) == j );
      v10 = j[3];
    }
    if ( v11 != v10 )
      j = (int *)v11;
  }
LABEL_23:
  if ( *(this + 246) )
  {
    std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::_M_erase(
      (int)v3,
      *(this + 243));
    *(this + 246) = nullptr;
    *(this + 245) = (LuaScript *)j;
    *(this + 244) = (LuaScript *)j;
    *(this + 243) = nullptr;
  }
}


// ===== 39f168 TriggerTrap::TransferVictims(void) =====
int __fastcall TriggerTrap::TransferVictims(int this)
{
  _DWORD *i; // r4
  int v2; // r6
  _DWORD *v3; // r7
  _DWORD *v4; // r5
  _DWORD *v5; // r8
  _DWORD *v6; // r3
  GameObject *v7; // r1
  unsigned int v8; // r2
  bool v9; // cc
  _DWORD *v10; // r2
  _DWORD *v11; // r2
  _DWORD *v12; // r3
  unsigned int v13; // r2
  bool v14; // cc
  _DWORD *v15; // r2
  int v16; // r3
  _BYTE v17[8]; // [sp+4h] [bp-Ch] BYREF
  GameObject *v18; // [sp+Ch] [bp-4h] BYREF

  i = *(_DWORD **)(this + 912);
  v2 = this;
  v3 = (_DWORD *)(this + 904);
  v4 = (_DWORD *)(this + 992);
  v5 = (_DWORD *)(this + 968);
  while ( v3 != i )
  {
    while ( 1 )
    {
      v6 = *(_DWORD **)(v2 + 996);
      v7 = (GameObject *)i[4];
      v18 = v7;
      if ( !v6 )
        break;
      this = (int)v4;
      while ( 1 )
      {
        v8 = v6[4];
        v9 = (unsigned int)v7 > v8;
        if ( (unsigned int)v7 <= v8 )
          v10 = (_DWORD *)v6[2];
        else
          v10 = (_DWORD *)v6[3];
        if ( v9 )
          v6 = (_DWORD *)this;
        this = (int)v6;
        if ( !v10 )
          break;
        v6 = v10;
      }
      if ( v4 == v6 || (unsigned int)v7 < v6[4] || v4 == v6 )
        break;
LABEL_15:
      v11 = (_DWORD *)i[3];
      if ( !v11 )
        goto LABEL_36;
LABEL_16:
      for ( i = v11; i[2]; i = (_DWORD *)i[2] )
        ;
      if ( v3 == i )
        return this;
    }
    v12 = *(_DWORD **)(v2 + 972);
    if ( !v12 )
      goto LABEL_32;
    this = (int)v5;
    while ( 1 )
    {
      v13 = v12[4];
      v14 = (unsigned int)v7 > v13;
      if ( (unsigned int)v7 <= v13 )
        v15 = (_DWORD *)v12[2];
      else
        v15 = (_DWORD *)v12[3];
      if ( v14 )
        v12 = (_DWORD *)this;
      this = (int)v12;
      if ( !v15 )
        break;
      v12 = v15;
    }
    if ( v5 == v12 )
      goto LABEL_34;
    if ( (unsigned int)v7 < v12[4] )
LABEL_32:
      v12 = v5;
    if ( v5 != v12 )
      goto LABEL_15;
LABEL_34:
    this = TriggerTrap::CanTrigger((LuaScript **)v2, v7);
    if ( !this )
      goto LABEL_15;
    this = std::priv::_Rb_tree<GameObject *,std::less<GameObject *>,GameObject *,std::priv::_Identity<GameObject *>,std::priv::_SetTraitsT<GameObject *>,std::allocator<GameObject *>>::insert_unique(
             (int)v17,
             v5,
             (int *)&v18);
    v11 = (_DWORD *)i[3];
    if ( v11 )
      goto LABEL_16;
LABEL_36:
    v16 = i[1];
    if ( i == *(_DWORD **)(v16 + 12) )
    {
      do
      {
        i = (_DWORD *)v16;
        v16 = *(_DWORD *)(v16 + 4);
      }
      while ( *(_DWORD **)(v16 + 12) == i );
      v11 = (_DWORD *)i[3];
    }
    if ( v11 != (_DWORD *)v16 )
      i = (_DWORD *)v16;
  }
  return this;
}


// ===== 39f2e8 TriggerTrap::SpecificUpdate(void) =====
int __fastcall TriggerTrap::SpecificUpdate(TriggerTrap *this)
{
  int result; // r0

  result = TriggerTrap::TransferVictims((int)this);
  if ( *((_DWORD *)this + 246) )
  {
    if ( !*((_BYTE *)this + 964) )
      return (*(int (__fastcall **)(TriggerTrap *))(*(_DWORD *)this + 240))(this);
  }
  return result;
}


// ===== 39f320 NetStructUInt<32u>::~NetStructUInt() =====
void NetStructUInt<32u>::~NetStructUInt()
{
  ;
}


// ===== 39f324 Container::IsUpdatable(void) =====
int __fastcall Container::IsUpdatable(Container *this)
{
  return 0;
}


// ===== 39f32c Container::GetScript(void) =====
int __fastcall Container::GetScript(Container *this)
{
  return 0;
}


// ===== 39f334 Container::GetVisual(void) =====
int __fastcall Container::GetVisual(Container *this)
{
  return -1;
}


// ===== 39f33c Container::GetDataId(void) =====
int __fastcall Container::GetDataId(Container *this)
{
  return -1;
}


// ===== 39f344 Container::GetLoot(void) =====
int __fastcall Container::GetLoot(Container *this)
{
  return -1;
}


// ===== 39f34c Container::GetSound(void) =====
int __fastcall Container::GetSound(Container *this)
{
  return -1;
}


// ===== 39f354 Container::KeepPhysics(void) =====
int __fastcall Container::KeepPhysics(Container *this)
{
  return 0;
}


// ===== 39f35c Container::GetLootFixedNumPowers(void) =====
int __fastcall Container::GetLootFixedNumPowers(Container *this)
{
  return -1;
}


// ===== 39f364 Container::IsDead(void) =====
bool __fastcall Container::IsDead(Container *this)
{
  return (unsigned int)(*((_DWORD *)this + 229) - 3) <= 1;
}


// ===== 39f37c Container::IsAnimated(void) =====
int __fastcall Container::IsAnimated(Container *this)
{
  return 1;
}


// ===== 39f384 Container::IsInteractive(GameObject *) =====
bool __fastcall Container::IsInteractive(Container *this, GameObject *a2)
{
  return !*((_BYTE *)this + 129) && *((_DWORD *)this + 229) == 2;
}


// ===== 39f3a8 Container::IsObstacle(void) =====
int __fastcall Container::IsObstacle(Container *this)
{
  return 1;
}


// ===== 39f3b0 Container::GetObstacleRadius(void) =====
int __fastcall Container::GetObstacleRadius(Container *this)
{
  return 1125515264;
}


// ===== 39f3bc Container::GetObstacleStrength(void) =====
int __fastcall Container::GetObstacleStrength(Container *this)
{
  return 1092616192;
}


// ===== 39f3c8 NetStructUInt<1u>::~NetStructUInt() =====
void NetStructUInt<1u>::~NetStructUInt()
{
  ;
}


// ===== 39f3cc Container::SetState(Container::State) =====
int __fastcall Container::SetState(int result, int a2)
{
  int v2; // r3
  int v3; // r2
  unsigned int v4; // r2

  v2 = *(_DWORD *)(*(_DWORD *)(result + 728) + 8);
  v3 = *(_DWORD *)(v2 + 284);
  if ( a2 == 3 )
    v4 = v3 & 0xFFFFFBFF;
  else
    v4 = v3 | 0x400;
  *(_DWORD *)(v2 + 284) = v4;
  *(_DWORD *)(result + 916) = a2;
  return result;
}


// ===== 39f3f0 Container::Spawn(void) =====
int __fastcall Container::Spawn(int this)
{
  int v1; // r5

  v1 = *(_DWORD *)(this + 728);
  if ( v1 )
  {
    if ( !*(_DWORD *)(this + 916) )
    {
      Container::SetState(this, 1);
      return (*(int (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(v1 + 56) + 32))(
               *(_DWORD *)(v1 + 56),
               "spawn",
               0,
               0,
               0);
    }
  }
  return this;
}


// ===== 39f44c Container::__Callback(glitch::scene::ITimelineController *,void *) =====
int __fastcall Container::__Callback(int a1, int a2)
{
  int v2; // r3
  int result; // r0

  v2 = *(_DWORD *)(a2 + 916);
  if ( v2 == 1 )
  {
    Container::SetState(a2, 2);
    return (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(*(_DWORD *)(a2 + 728) + 56) + 32))(
             *(_DWORD *)(*(_DWORD *)(a2 + 728) + 56),
             "idle",
             0);
  }
  else if ( v2 == 3 )
  {
    Container::SetState(a2, 4);
    return (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(*(_DWORD *)(a2 + 728) + 56) + 32))(
             *(_DWORD *)(*(_DWORD *)(a2 + 728) + 56),
             "idleactive",
             0);
  }
  else
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 68))(a1);
    if ( !result )
      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 728) + 8) + 284) &= ~0x200u;
  }
  return result;
}


// ===== 39f518 NetStructUInt<1u>::TestValue(uint const&) =====
bool __fastcall NetStructUInt<1u>::TestValue(int a1, _DWORD *a2)
{
  return *a2 <= 1u;
}


// ===== 39f52c NetStructUInt<32u>::TestValue(uint const&) =====
int NetStructUInt<32u>::TestValue()
{
  return 1;
}


// ===== 39f534 Container::IsZonable(void) =====
// attributes: thunk
int __fastcall Container::IsZonable(GameObject *this)
{
  return GameObject::MeetCondition(this);
}


// ===== 39f538 NetStructUInt<1u>::~NetStructUInt() =====
_DWORD *__fastcall NetStructUInt<1u>::~NetStructUInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 39f56c NetStructUInt<32u>::~NetStructUInt() =====
_DWORD *__fastcall NetStructUInt<32u>::~NetStructUInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 39f5a0 NetStructUInt<1u>::Read(NetBitStream &) =====
int __fastcall NetStructUInt<1u>::Read(int a1, NetBitStream *this)
{
  int U32; // [sp+4h] [bp-4h] BYREF

  U32 = NetBitStream::ReadU32(this, 1u);
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 39f5d8 NetStructUInt<32u>::Read(NetBitStream &) =====
int __fastcall NetStructUInt<32u>::Read(int a1, NetBitStream *this)
{
  int U32; // [sp+4h] [bp-4h] BYREF

  U32 = NetBitStream::ReadU32(this, 0x20u);
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 39f610 NetStructUInt<1u>::Write(NetBitStream &) =====
int __fastcall NetStructUInt<1u>::Write(int a1, NetBitStream *this)
{
  return NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 32), 1u);
}


// ===== 39f624 NetStructUInt<32u>::Write(NetBitStream &) =====
int __fastcall NetStructUInt<32u>::Write(int a1, NetBitStream *this)
{
  return NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 32), 0x20u);
}


// ===== 39f638 IStreamBase::readAs<uchar>(uchar &) =====
int __fastcall IStreamBase::readAs<unsigned char>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 1, 0);
  if ( result != 1 || v3 )
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
               "bytesRead == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               69);
    }
  }
  return result;
}


// ===== 39f6e8 `non-virtual thunk to'Container::Deserialize(IStreamBase *) =====
void __fastcall `non-virtual thunk to'Container::Deserialize(VisualObject **this, IStreamBase *a2)
{
  Container::Deserialize(this - 9, a2);
}


// ===== 39f6f0 Container::Deserialize(IStreamBase *) =====
void __fastcall Container::Deserialize(VisualObject **this, IStreamBase *a2)
{
  int CurrentLevel; // r0
  int v5; // r3
  int v6; // r4
  _BYTE v7[5]; // [sp+Fh] [bp-5h] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( *((_BYTE *)this + 912) || !*(_BYTE *)(CurrentLevel + 243) && !*(_BYTE *)(CurrentLevel + 244) )
  {
    GameObject::Deserialize(this, a2);
    IStreamBase::readAs<unsigned char>(a2, v7);
    if ( *(this + 182) )
    {
      Container::SetState((int)this, v7[0]);
      v5 = (int)*(this + 229);
      v6 = (int)*(this + 182);
      if ( v5 == 4 )
      {
        if ( !(*((int (__fastcall **)(VisualObject **))*this + 55))(this) )
          GameObject::SetPhysicalObject((GameObject *)this, nullptr, 0);
        if ( v6 )
          (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v6 + 56) + 32))(
            *(_DWORD *)(v6 + 56),
            "idleactive",
            0);
      }
      else if ( v5 == 2 )
      {
        if ( v6 )
          (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v6 + 56) + 32))(
            *(_DWORD *)(v6 + 56),
            "idle",
            0);
      }
    }
  }
}


// ===== 39f828 IStreamBase::writeAs<uchar>(uchar const&) =====
int __fastcall IStreamBase::writeAs<unsigned char>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 1, 0);
  if ( result != 1 || v3 )
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
               "bytesWritten == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               77);
    }
  }
  return result;
}


// ===== 39f8d8 `non-virtual thunk to'Container::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Container::Serialize(Container *this, IStreamBase *a2)
{
  return Container::Serialize((Container *)((char *)this - 36), a2);
}


// ===== 39f8e0 Container::Serialize(IStreamBase *) =====
int __fastcall Container::Serialize(Container *this, IStreamBase *a2)
{
  char v5; // [sp+7h] [bp-5h] BYREF

  GameObject::Serialize(this, a2);
  v5 = *((_DWORD *)this + 229);
  return IStreamBase::writeAs<unsigned char>((int)a2, (int)&v5);
}


// ===== 39f910 Container::InitPost(void) =====
int __fastcall Container::InitPost(Container *this)
{
  int result; // r0
  int v3; // r0
  int v4; // r3
  int v5; // r0
  const char *v6; // r6
  size_t v7; // r0
  VisualObject *v8; // r8
  int v9; // r6
  VoxSoundManager *v10; // r5
  int v11; // r0
  const char *v12; // r1

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    v3 = (*(int (__fastcall **)(Container *))(*(_DWORD *)this + 208))(this);
    v4 = *(_DWORD *)this;
    *((_DWORD *)this + 221) = v3;
    v5 = (*(int (__fastcall **)(Container *))(v4 + 204))(this);
    if ( v5 != -1 && *((_DWORD *)this + 221) != -1 )
    {
      v6 = *(const char **)(Arrays::GameObjectDict::members + 12 * v5 + 8);
      v7 = LC_API_STRLEN_0(v6);
      std::string::_M_assign((std::string *const)((char *)this + 656), v6, &v6[v7]);
    }
    GameObject::InitPost(this);
    if ( GameObject::MeetCondition(this) )
    {
      v8 = *((VisualObject **)this + 182);
      if ( v8 )
      {
        v9 = *((_DWORD *)v8 + 14);
        (*(void (__fastcall **)(int, _DWORD (*)(Container *__hidden, glitch::scene::ITimelineController *, void *), Container *, int (*)(), Container *))(*(_DWORD *)v9 + 44))(
          v9,
          Container::__Callback,
          this,
          Container::__EventCallback,
          this);
        if ( (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v9 + 32))(
               v9,
               "prespawn",
               0,
               0,
               0) )
        {
          Container::SetState(this, 0);
        }
        else if ( (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v9 + 32))(
                    v9,
                    "spawn",
                    0,
                    0,
                    0) )
        {
          Container::SetState(this, 1);
        }
        else if ( (*(int (__fastcall **)(int, const char *, _DWORD))(*(_DWORD *)v9 + 32))(v9, "idle", 0) )
        {
          Container::SetState(this, 2);
        }
        VisualObject::ApplyMeshBox(v8);
      }
      v10 = (VoxSoundManager *)VoxSoundManager::s_instance;
      if ( VoxSoundManager::s_instance )
      {
        v11 = (*(int (__fastcall **)(Container *))(*(_DWORD *)this + 216))(this);
        VoxSoundManager::LoadSound(v10, v11);
      }
      v12 = (const char *)(*(int (__fastcall **)(Container *))(*(_DWORD *)this + 200))(this);
      return GameObject::LoadExternalScript(this, v12, "data/scripts/objects/");
    }
    else
    {
      (*(void (__fastcall **)(Container *))(*(_DWORD *)this + 64))(this);
      return Container::SetState(this, 4);
    }
  }
  return result;
}


// ===== 39fb50 `global constructor keyed to'.._.._sources_Game_Objects_Containers_Container.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Containers_Container.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A28D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28D4 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit(&Singleton<Application>::s_inst, Application::~Application, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    return _aeabi_atexit(&Singleton<PlayerStatManager>::s_inst, PlayerStatManager::~PlayerStatManager, &_dso_handle);
  }
  return result;
}


// ===== 39fc2c PODecor::PODecor(PhysicalWorld *,GameObject *,bool) [clone] =====
void __fastcall PODecor::PODecor(PODecor *this, PhysicalWorld *a2, GameObject *a3, bool a4)
{
  PhysicalObject::PhysicalObject(this, a2, a3, 1, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
  *(_DWORD *)this = off_968F88;
}


// ===== 39fc98 Container::InitFinal(void) =====
void __fastcall Container::InitFinal(Container *this)
{
  PhysicalWorld *v2; // r6
  PODecor *v3; // r5
  bool v4; // r3

  if ( GameObject::CheckSpawnProbability(this) < *((_DWORD *)this + 157) )
  {
    GameObject::InitFinal(this);
    if ( (unsigned int)(*((_DWORD *)this + 229) - 3) > 1 )
      (*(void (__fastcall **)(Container *))(*(_DWORD *)this + 44))(this);
    if ( GameObject::MeetCondition(this) )
    {
      v2 = (PhysicalWorld *)dword_99F770;
      v3 = (PODecor *)operator new(40, 0);
      PODecor::PODecor(v3, v2, this, v4);
      GameObject::SetPhysicalObject(this, v3, 0);
    }
  }
}


// ===== 39fd38 Container::InterpretIncomingNetStruct(bool) =====
void __fastcall Container::InterpretIncomingNetStruct(Container *this, int a2)
{
  int v2; // r6
  char *v5; // r0
  PhysicalWorld *v6; // r7
  PODecor *v7; // r5
  bool v8; // r3
  char *v9[4]; // [sp+Ch] [bp-10h] BYREF

  v2 = *((_DWORD *)this + 422);
  if ( v2 != 1 || (unsigned int)(*((_DWORD *)this + 229) - 3) <= 1 )
  {
    if ( !a2 )
      return;
    if ( (unsigned int)(*((_DWORD *)this + 229) - 3) <= 1 && !v2 )
    {
      Container::SetState((int)this, 2);
      v6 = (PhysicalWorld *)dword_99F770;
      v7 = (PODecor *)operator new(0x28u, 0);
      PODecor::PODecor(v7, v6, this, v8);
      GameObject::SetPhysicalObject(this, v7, 0);
      Container::SetState((int)this, 2);
      (*(void (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56)
                                                                           + 32))(
        *(_DWORD *)(*((_DWORD *)this + 182) + 56),
        "idle",
        0,
        0,
        0);
    }
    goto LABEL_4;
  }
  ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v9, dword_99F764, *((_DWORD *)this + 432));
  v5 = ObjectHandle::operator GameObject *(v9);
  if ( v5 && !a2 )
  {
    (*(void (__fastcall **)(Container *, char *))(*(_DWORD *)this + 152))(this, v5);
    return;
  }
  if ( (unsigned int)(*((_DWORD *)this + 229) - 3) > 1 )
  {
    *((_DWORD *)this + 230) = v5;
    Container::SetState((int)this, 4);
    if ( !(*(int (__fastcall **)(Container *))(*(_DWORD *)this + 220))(this) )
      GameObject::SetPhysicalObject(this, nullptr, 0);
    if ( *((_DWORD *)this + 182) )
    {
      if ( !a2 )
      {
        Container::SetState((int)this, 3);
        (*(void (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56)
                                                                             + 32))(
          *(_DWORD *)(*((_DWORD *)this + 182) + 56),
          "activate",
          0,
          0,
          0);
        return;
      }
      Container::SetState((int)this, 4);
      (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 32))(
        *(_DWORD *)(*((_DWORD *)this + 182) + 56),
        "idleactive",
        0);
      goto LABEL_4;
    }
  }
  if ( a2 )
LABEL_4:
    *((_DWORD *)this + 63) = *((_DWORD *)this + 442);
}


// ===== 39ff58 Container::NetStructContainer::NetStructContainer(void) =====
Container::NetStructContainer *__fastcall Container::NetStructContainer::NetStructContainer(
        Container::NetStructContainer *this)
{
  int v2; // r2
  int v3; // r1
  int v4; // r2

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_965888;
  *((_DWORD *)this + 77) = 1;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_9636A0;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((Container::NetStructContainer *)((char *)this + 304));
  }
  v3 = *((_DWORD *)this + 94);
  *((_QWORD *)this + 44) = 0;
  *((_DWORD *)this + 76) = &off_965828;
  *((_DWORD *)this + 87) = 16;
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 86) = &off_963618;
  *((_DWORD *)this + 90) = -1;
  *((_DWORD *)this + 92) = 0;
  *((_BYTE *)this + 372) = 0;
  if ( v3 )
  {
    *((_DWORD *)this + 94) = 0;
    NetStructMember::SetChanged((Container::NetStructContainer *)((char *)this + 344));
  }
  v4 = *((_DWORD *)this + 104);
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 86) = &off_963730;
  *((_DWORD *)this + 97) = 32;
  *((_DWORD *)this + 101) = -1;
  *((_DWORD *)this + 96) = &off_9636A0;
  *((_DWORD *)this + 100) = -1;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 0;
  if ( v4 )
  {
    *((_DWORD *)this + 104) = 0;
    NetStructMember::SetChanged((Container::NetStructContainer *)((char *)this + 384));
  }
  *((_DWORD *)this + 96) = &off_965858;
  NetStruct::DeclareMember(this, (Container::NetStructContainer *)((char *)this + 304));
  NetStruct::DeclareMember(this, (Container::NetStructContainer *)((char *)this + 344));
  NetStruct::DeclareMember(this, (Container::NetStructContainer *)((char *)this + 384));
  return this;
}


// ===== 3a0110 Container::PopulateOutgoingNetStruct(bool) =====
int __fastcall Container::PopulateOutgoingNetStruct(Container *this, int a2)
{
  int v2; // r3
  int v5; // r3
  const ObjectBase *v6; // r1
  int NetworkIdByObjectBase; // r3
  int v8; // r3
  int result; // r0
  int v10; // r3
  int v11; // r3
  _DWORD v12[7]; // [sp+0h] [bp-50h] BYREF
  char v13; // [sp+1Ch] [bp-34h]
  int v14; // [sp+20h] [bp-30h] BYREF
  _DWORD v15[7]; // [sp+28h] [bp-28h] BYREF
  char v16; // [sp+44h] [bp-Ch]
  int v17; // [sp+48h] [bp-8h] BYREF
  _DWORD v18[7]; // [sp+50h] [bp+0h] BYREF
  char v19; // [sp+6Ch] [bp+1Ch]
  _DWORD v20[3]; // [sp+70h] [bp+20h] BYREF

  v2 = (unsigned int)(*((_DWORD *)this + 229) - 3) <= 1;
  v18[2] = 0;
  v18[3] = 0;
  v18[1] = 1;
  v18[5] = -1;
  v19 = 0;
  v18[0] = &off_9636A0;
  v18[4] = -1;
  v18[6] = 0;
  if ( v20[0] != v2 )
  {
    v20[0] = v2;
    NetStructMember::SetChanged((NetStructMember *)v18);
  }
  v5 = *((_DWORD *)this + 308);
  v18[0] = &off_965828;
  (*(void (__fastcall **)(char *, _DWORD *))(v5 + 28))((char *)this + 1232, v20);
  v6 = *((const ObjectBase **)this + 230);
  v18[0] = &off_963648;
  NetworkIdByObjectBase = ObjectManager::GetNetworkIdByObjectBase((ObjectManager *)dword_99F764, v6);
  v15[2] = 0;
  v15[3] = 0;
  v15[1] = 16;
  v15[5] = -1;
  v16 = 0;
  v15[0] = &off_963618;
  v15[4] = -1;
  v15[6] = 0;
  if ( NetworkIdByObjectBase != v17 )
  {
    v17 = NetworkIdByObjectBase;
    NetStructMember::SetChanged((NetStructMember *)v15);
  }
  v8 = *((_DWORD *)this + 318);
  v15[0] = &off_963730;
  result = (*(int (__fastcall **)(char *, int *))(v8 + 28))((char *)this + 1272, &v17);
  if ( a2 )
  {
    v10 = *((_DWORD *)this + 63);
    v15[0] = &off_963648;
    v12[2] = 0;
    v12[3] = 0;
    v12[1] = 32;
    v12[5] = -1;
    v13 = 0;
    v12[0] = &off_9636A0;
    v12[4] = -1;
    v12[6] = 0;
    if ( v10 != v14 )
    {
      v14 = v10;
      NetStructMember::SetChanged((NetStructMember *)v12);
    }
    v11 = *((_DWORD *)this + 328);
    v12[0] = &off_965858;
    return (*(int (__fastcall **)(char *, int *))(v11 + 28))((char *)this + 1312, &v14);
  }
  return result;
}


// ===== 3a0324 Container::NetStructContainer::~NetStructContainer() =====
void __fastcall Container::NetStructContainer::~NetStructContainer(Container::NetStructContainer *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_963648;
  if ( v2 )
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


// ===== 3a03a0 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3a03a4 Container::NetStructContainer::~NetStructContainer() =====
void __fastcall Container::NetStructContainer::~NetStructContainer(Container::NetStructContainer *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_963648;
  if ( v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = (char *)this + 268;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = (char *)this + 268;
    *((_DWORD *)this + 68) = 0;
  }
  CustomFree(this);
}


// ===== 3a0428 `non-virtual thunk to'Container::~Container() =====
void __fastcall `non-virtual thunk to'Container::~Container(Container *this)
{
  Container::~Container((Container *)((char *)this - 36));
}


// ===== 3a0430 Container::~Container() =====
void __fastcall Container::~Container(Container *this)
{
  int v2; // r1
  Container *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_9658D8;
  *((_DWORD *)this + 1) = &off_9659C4;
  *((_DWORD *)this + 9) = off_9659D0;
  *((_DWORD *)this + 414) = &off_963648;
  *((_DWORD *)this + 338) = off_9924D8;
  *((_DWORD *)this + 434) = &off_963648;
  *((_DWORD *)this + 424) = &off_963648;
  if ( *((_DWORD *)this + 409) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1620,
      *((_DWORD *)this + 406));
    *((_DWORD *)this + 409) = 0;
    *((_DWORD *)this + 408) = (char *)this + 1620;
    *((_DWORD *)this + 407) = (char *)this + 1620;
    *((_DWORD *)this + 406) = 0;
  }
  v2 = *((_DWORD *)this + 303);
  *((_DWORD *)this + 308) = &off_963648;
  *((_DWORD *)this + 232) = off_9924D8;
  *((_DWORD *)this + 328) = &off_963648;
  *((_DWORD *)this + 318) = &off_963648;
  if ( v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1196,
      *((_DWORD *)this + 300));
    *((_DWORD *)this + 301) = (char *)this + 1196;
    *((_DWORD *)this + 300) = 0;
    *((_DWORD *)this + 302) = (char *)this + 1196;
    *((_DWORD *)this + 303) = 0;
  }
  v3 = *((Container **)this + 227);
  if ( v3 == (Container *)((char *)this + 888) || !v3 )
    goto LABEL_9;
  v4 = *((_DWORD *)this + 222) - (_DWORD)v3;
  if ( v4 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
LABEL_9:
    GameObject::~GameObject(this);
    return;
  }
  CustomFree(v3);
  GameObject::~GameObject(this);
}


// ===== 3a0574 `non-virtual thunk to'Container::~Container() =====
void __fastcall `non-virtual thunk to'Container::~Container(Container *this)
{
  Container::~Container((Container *)((char *)this - 36));
}


// ===== 3a057c Container::~Container() =====
void __fastcall Container::~Container(Container *this)
{
  Container::~Container(this);
  CustomFree(this);
}


// ===== 3a0598 Container::~Container() =====
void __fastcall Container::~Container(Container *this)
{
  int v2; // r1
  Container *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_9658D8;
  *((_DWORD *)this + 1) = &off_9659C4;
  *((_DWORD *)this + 9) = off_9659D0;
  *((_DWORD *)this + 414) = &off_963648;
  *((_DWORD *)this + 338) = off_9924D8;
  *((_DWORD *)this + 434) = &off_963648;
  *((_DWORD *)this + 424) = &off_963648;
  if ( *((_DWORD *)this + 409) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1620,
      *((_DWORD *)this + 406));
    *((_DWORD *)this + 409) = 0;
    *((_DWORD *)this + 408) = (char *)this + 1620;
    *((_DWORD *)this + 407) = (char *)this + 1620;
    *((_DWORD *)this + 406) = 0;
  }
  v2 = *((_DWORD *)this + 303);
  *((_DWORD *)this + 308) = &off_963648;
  *((_DWORD *)this + 232) = off_9924D8;
  *((_DWORD *)this + 328) = &off_963648;
  *((_DWORD *)this + 318) = &off_963648;
  if ( v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1196,
      *((_DWORD *)this + 300));
    *((_DWORD *)this + 301) = (char *)this + 1196;
    *((_DWORD *)this + 300) = 0;
    *((_DWORD *)this + 302) = (char *)this + 1196;
    *((_DWORD *)this + 303) = 0;
  }
  v3 = *((Container **)this + 227);
  if ( v3 == (Container *)((char *)this + 888) || !v3 )
    goto LABEL_9;
  v4 = *((_DWORD *)this + 222) - (_DWORD)v3;
  if ( v4 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
LABEL_9:
    GameObject::~GameObject(this);
    return;
  }
  CustomFree(v3);
  GameObject::~GameObject(this);
}


// ===== 3a06dc Container::Container(ObjectBase::GO_IDS) =====
int __fastcall Container::Container(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)a1 = off_9658D8;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_9659C4;
  *(_DWORD *)(a1 + 36) = off_9659D0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 888, 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_BYTE *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 916) = 2;
  *(_DWORD *)(a1 + 920) = 0;
  Container::NetStructContainer::NetStructContainer((Container::NetStructContainer *)(a1 + 928));
  Container::NetStructContainer::NetStructContainer((Container::NetStructContainer *)(a1 + 1352));
  *(_BYTE *)(a1 + 40) = 1;
  *(_BYTE *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 256) = a1 + 928;
  *(_DWORD *)(a1 + 260) = a1 + 1352;
  *(_BYTE *)(a1 + 248) = 2;
  return a1;
}


// ===== 3a0788 Container::Container(ObjectBase::GO_IDS) =====
int __fastcall Container::Container(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)a1 = off_9658D8;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_9659C4;
  *(_DWORD *)(a1 + 36) = off_9659D0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 888), 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_BYTE *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 916) = 2;
  *(_DWORD *)(a1 + 920) = 0;
  Container::NetStructContainer::NetStructContainer((Container::NetStructContainer *)(a1 + 928));
  Container::NetStructContainer::NetStructContainer((Container::NetStructContainer *)(a1 + 1352));
  *(_BYTE *)(a1 + 40) = 1;
  *(_BYTE *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 256) = a1 + 928;
  *(_DWORD *)(a1 + 260) = a1 + 1352;
  *(_BYTE *)(a1 + 248) = 2;
  return a1;
}


// ===== 3a0834 `non-virtual thunk to'Container::DeclareProperties(void) =====
_DWORD *__fastcall `non-virtual thunk to'Container::DeclareProperties(Container *this)
{
  return Container::DeclareProperties((Container *)((char *)this - 4));
}


// ===== 3a083c Container::DeclareProperties(void) =====
_DWORD *__fastcall Container::DeclareProperties(Container *this)
{
  PropertyMap *v1; // r5
  Property *v3; // r6
  int v4; // r6
  int v5; // r6
  std::string v7; // [sp+14h] [bp-38h] BYREF
  _DWORD v8[4]; // [sp+2Ch] [bp-20h] BYREF
  char *v9; // [sp+3Ch] [bp-10h]
  void *p; // [sp+40h] [bp-Ch]

  v1 = (Container *)((char *)this + 4);
  GameObject::DeclareProperties(this);
  v3 = (Property *)operator new(36, 0);
  *(_DWORD *)v3 = &off_95C5E8;
  std::string::string((int)v3 + 8, "data");
  *((_DWORD *)v3 + 1) = (Container *)((char *)this + 884) - v1;
  *(_DWORD *)v3 = &off_964708;
  *((_DWORD *)v3 + 8) = -1;
  PropertyMap::AddProperty(v1, "data", v3);
  v9 = (char *)v8;
  p = v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v8, 0x10u);
  *v9 = 0;
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::string::_M_range_initialize(&v7, (const char *)p, v9);
  v4 = operator new(56, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string(v4 + 8, "data_desc");
  *(_DWORD *)(v4 + 4) = (Container *)((char *)this + 888) - v1;
  *(_DWORD *)v4 = &off_95C5C8;
  *(_DWORD *)(v4 + 48) = v4 + 32;
  *(_DWORD *)(v4 + 52) = v4 + 32;
  std::string::_M_range_initialize((std::string *)(v4 + 32), v7._M_start_of_storage._M_data, v7._M_finish);
  PropertyMap::AddProperty(v1, "data_desc", (Property *)v4);
  if ( (std::string *)v7._M_start_of_storage._M_data != &v7 && v7._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v7._M_buffers._M_end_of_storage - v7._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v7._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v7._M_start_of_storage._M_data,
        v7._M_buffers._M_end_of_storage - v7._M_start_of_storage._M_data);
  }
  if ( p != v8 && p )
  {
    if ( (unsigned int)(v8[0] - (_DWORD)p) > 0x80 )
      CustomFree(p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v8[0] - (_DWORD)p);
  }
  v5 = operator new(36, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string(v5 + 8, "death_reset");
  *(_DWORD *)(v5 + 4) = (Container *)((char *)this + 912) - v1;
  *(_DWORD *)v5 = &off_95C608;
  *(_BYTE *)(v5 + 32) = 0;
  return PropertyMap::AddProperty(v1, "death_reset", (Property *)v5);
}


// ===== 3a0a98 Container::DoOpen(void) =====
void __fastcall Container::DoOpen(Container *this)
{
  ItemObject *v2; // r5
  const GameObject *v3; // r6
  const GameObject *v4; // r0
  sfc::script::lua::UserData *v5; // r1
  bool v6; // [sp+4h] [bp-Ch]
  _BYTE v7[8]; // [sp+8h] [bp-8h] BYREF

  v2 = (ItemObject *)(*(int (__fastcall **)(Container *))(*(_DWORD *)this + 212))(this);
  v3 = *((const GameObject **)this + 230);
  v4 = (const GameObject *)(*(int (__fastcall **)(Container *))(*(_DWORD *)this + 224))(this);
  ItemObject::DropLootTable(v2, (int)this, v3, v4, 0, v6);
  if ( *((_DWORD *)this + 192) )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v7);
    v5 = *((sfc::script::lua::UserData **)this + 230);
    if ( v5 )
      sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v7, v5);
    LuaScript::Call(*((LuaScript **)this + 192), "OnOpen", (const sfc::script::lua::Arguments *)v7);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v7);
  }
}


// ===== 3a0b38 Container::Interact(GameObject *) =====
int __fastcall Container::Interact(int this, GameObject *a2)
{
  int v2; // r4
  int v3; // r7
  int v4; // r0
  float v5; // r5
  float v6; // r6
  float v7[4]; // [sp+14h] [bp-10h] BYREF

  v2 = this;
  if ( (unsigned int)(*(_DWORD *)(this + 916) - 3) > 1 )
  {
    *(_DWORD *)(this + 920) = a2;
    Container::SetState(this, 4);
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v2 + 220))(v2) )
      GameObject::SetPhysicalObject((GameObject *)v2, nullptr, 0);
    if ( *(_DWORD *)(v2 + 728) )
    {
      Container::SetState(v2, 3);
      (*(void (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(*(_DWORD *)(v2 + 728) + 56) + 32))(
        *(_DWORD *)(*(_DWORD *)(v2 + 728) + 56),
        "activate",
        0);
    }
    else
    {
      Container::DoOpen((Container *)v2);
    }
    v3 = VoxSoundManager::s_instance;
    v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 216))(v2);
    v5 = *(float *)(v2 + 356);
    v6 = *(float *)(v2 + 352);
    v7[2] = *(float *)(v2 + 360);
    v7[0] = v6;
    v7[1] = v5;
    VoxSoundManager::Play3D(v3, v4, v7, 0, COERCE_FLOAT(1), -1.0, -1.0);
    return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
  }
  return this;
}


// ===== 3a0c64 Container::__EventCallback(glitch::collada::STriggeredEvent const&,void *) =====
void __fastcall Container::__EventCallback(int a1, LuaScript **a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  if ( LC_API_STRCMP_0(*(const char **)(a1 + 4), "opened") )
  {
    if ( a2[192] )
    {
      sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
      sfc::script::lua::Arguments::pushString((sfc::script::lua::Arguments *)v4, *(const char **)(a1 + 4));
      LuaScript::Call(a2[192], "OnAnimEvent", (const sfc::script::lua::Arguments *)v4);
      sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
    }
  }
  else
  {
    Container::DoOpen((Container *)a2);
  }
}


// ===== 3a0ce8 QE_DestroyGameObject::~QE_DestroyGameObject() =====
void __fastcall QE_DestroyGameObject::~QE_DestroyGameObject(QE_DestroyGameObject *this)
{
  ;
}


// ===== 3a0cec DestructibleContainer::GetScript(void) =====
int __fastcall DestructibleContainer::GetScript(DestructibleContainer *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 221);
  if ( v1 == -1 )
    return 0;
  else
    return *(_DWORD *)(Arrays::DestructibleContainers::members + 68 * v1 + 48);
}


// ===== 3a0d28 DestructibleContainer::GetVisual(void) =====
int __fastcall DestructibleContainer::GetVisual(DestructibleContainer *this)
{
  int result; // r0

  result = *((_DWORD *)this + 221);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::DestructibleContainers::members + 68 * result + 60);
  return result;
}


// ===== 3a0d60 DestructibleContainer::GetInteractionType(GameObject *) =====
int __fastcall DestructibleContainer::GetInteractionType(DestructibleContainer *this, GameObject *a2)
{
  return 8;
}


// ===== 3a0d68 DestructibleContainer::DoEffects(void) =====
void __fastcall DestructibleContainer::DoEffects(DestructibleContainer *this)
{
  ;
}


// ===== 3a0d6c QE_DestroyGameObject::~QE_DestroyGameObject() =====
void __fastcall QE_DestroyGameObject::~QE_DestroyGameObject(QE_DestroyGameObject *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 3a0da0 DestructibleContainer::Interact(GameObject *) =====
int __fastcall DestructibleContainer::Interact(DestructibleContainer *this, GameObject *a2)
{
  int v2; // r3
  int v5; // r2
  int v6; // r7
  int v7; // r0
  float v8; // r6
  float v9; // r5
  int result; // r0
  int CurrentLevel; // r8
  int v12; // r9
  int v13; // r10
  EventManager *v14; // r0
  int v15; // r8
  int v16; // r4
  TrophyManager *v17; // r6
  int v18; // r7
  int v19; // r4
  int v20; // r1
  _DWORD v21[4]; // [sp+14h] [bp-34h] BYREF
  char v22; // [sp+24h] [bp-24h]
  char v23; // [sp+25h] [bp-23h]
  int v24; // [sp+28h] [bp-20h]
  int v25; // [sp+2Ch] [bp-1Ch]
  float v26[3]; // [sp+30h] [bp-18h] BYREF
  _BYTE v27[12]; // [sp+3Ch] [bp-Ch] BYREF

  v2 = *((_DWORD *)this + 445);
  if ( v2 )
  {
    v5 = *((_DWORD *)this + 182);
    *((_DWORD *)this + 445) = v2 - 1;
    if ( v5 )
      (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(v5 + 56) + 28))(
        *(_DWORD *)(v5 + 56),
        *((_DWORD *)this + 444) - (v2 - 1),
        0);
    v6 = VoxSoundManager::s_instance;
    v7 = (*(int (__fastcall **)(DestructibleContainer *))(*(_DWORD *)this + 216))(this);
    v8 = *((float *)this + 88);
    v9 = *((float *)this + 89);
    v26[2] = *((float *)this + 90);
    v26[0] = v8;
    v26[1] = v9;
    return VoxSoundManager::Play3D(v6, v7, v26, 0, COERCE_FLOAT(1), -1.0, -1.0);
  }
  else
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "level",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Containers\\DestructibleContainer.cpp",
          231);
      }
    }
    v12 = (*(int (__fastcall **)(DestructibleContainer *))(*(_DWORD *)this + 208))(this);
    v13 = *((_DWORD *)this + 25);
    v21[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "DestroyGameObject");
    v14 = (EventManager *)CurrentLevel;
    v15 = 0;
    v21[0] = off_9659E8;
    v24 = -1;
    v21[3] = v13;
    v25 = v12;
    v21[2] = a2;
    v22 = 0;
    v23 = 0;
    EventManager::RaiseAsync(v14, (const IEvent *)v21);
    v21[0] = off_95B458;
    Container::Interact(this, a2);
    ObjectBase::GetHandle((ObjectBase *)v27);
    result = ObjectHandle::operator Character *(v27);
    v16 = result;
    if ( result )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 40))(result);
      if ( result )
      {
        CharProperties::PROPS_AddInt((CharProperties *)(v16 + 1376), 217, 1);
        v17 = (TrophyManager *)TrophyManager::s_instance;
        result = CharProperties::PROPS_GetInt((CharProperties *)(v16 + 1376), 217, 0);
        if ( result > 199 )
        {
          result = PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)v16);
          if ( result )
          {
            v18 = Arrays::TrophyTable::size;
            if ( Arrays::TrophyTable::size )
            {
              v19 = Arrays::TrophyTable::m_memberNames;
              while ( LC_API_STRCMP_0("destroy_200_breakables", *(const char **)(v19 + 4 * v15)) )
              {
                if ( ++v15 == v18 )
                  goto LABEL_21;
              }
              v20 = v15;
            }
            else
            {
LABEL_21:
              v20 = -1;
            }
            return TrophyManager::UnlockTrophy(v17, v20);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3a1084 Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::DestructibleContainers::size;
  if ( !Arrays::DestructibleContainers::size )
    return -1;
  v3 = 0;
  v4 = Arrays::DestructibleContainers::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 3a10f8 DestructibleContainer::KeepPhysics(void) =====
int __fastcall DestructibleContainer::KeepPhysics(char **this)
{
  int v1; // r0

  v1 = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(*(this + 227));
  if ( v1 == -1 )
    return 0;
  else
    return *(unsigned __int8 *)(Arrays::DestructibleContainers::members + 68 * v1 + 32);
}


// ===== 3a1140 DestructibleContainer::GetSound(void) =====
int __fastcall DestructibleContainer::GetSound(char **this)
{
  int result; // r0

  result = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(*(this + 227));
  if ( result != -1 )
    return *(_DWORD *)(Arrays::DestructibleContainers::members + 68 * result + 28);
  return result;
}


// ===== 3a1180 DestructibleContainer::GetLoot(void) =====
int __fastcall DestructibleContainer::GetLoot(char **this)
{
  int result; // r0

  result = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(*(this + 227));
  if ( result != -1 )
    return *(_DWORD *)(Arrays::DestructibleContainers::members + 68 * result + 40);
  return result;
}


// ===== 3a11c0 DestructibleContainer::GetDataId(void) =====
int __fastcall DestructibleContainer::GetDataId(DestructibleContainer *this)
{
  char *v1; // r3
  char *v2; // r0

  v1 = *((char **)this + 226);
  v2 = *((char **)this + 227);
  if ( v1 == v2 )
    return -1;
  else
    return Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(v2);
}


// ===== 3a11dc DestructibleContainer::InitPost(void) =====
unsigned int __fastcall DestructibleContainer::InitPost(DestructibleContainer *this)
{
  unsigned int result; // r0
  int v3; // r5

  result = Container::InitPost(this);
  v3 = *((_DWORD *)this + 182);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD (*)(Container *__hidden, glitch::scene::ITimelineController *, void *), DestructibleContainer *, int (*)(), DestructibleContainer *))(**(_DWORD **)(v3 + 56) + 44))(
      *(_DWORD *)(v3 + 56),
      Container::__Callback,
      this,
      DestructibleContainer::__EventCallback,
      this);
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v3 + 56) + 16))(*(_DWORD *)(v3 + 56), 0);
    if ( result > 3 )
    {
      result -= 3;
      *((_DWORD *)this + 445) = result;
      *((_DWORD *)this + 444) = result;
    }
  }
  return result;
}


// ===== 3a1268 `non-virtual thunk to'DestructibleContainer::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'DestructibleContainer::DeclareProperties(DestructibleContainer *this)
{
  return DestructibleContainer::DeclareProperties((DestructibleContainer *)((char *)this - 4));
}


// ===== 3a1270 DestructibleContainer::DeclareProperties(void) =====
// attributes: thunk
_DWORD *__fastcall DestructibleContainer::DeclareProperties(Container *this)
{
  return Container::DeclareProperties(this);
}


// ===== 3a1274 DestructibleContainer::__EventCallback(glitch::collada::STriggeredEvent const&,void *) =====
int __fastcall DestructibleContainer::__EventCallback(int a1, DestructibleContainer *a2)
{
  const char *v3; // r7
  EventManager *CurrentLevel; // r8
  int v6; // r10
  int v7; // r7
  _DWORD v9[4]; // [sp+Ch] [bp-20h] BYREF
  char v10; // [sp+1Ch] [bp-10h]
  char v11; // [sp+1Dh] [bp-Fh]
  int v12; // [sp+20h] [bp-Ch]
  int v13; // [sp+24h] [bp-8h]

  v3 = *(const char **)(a1 + 4);
  if ( !LC_API_STRCMP_0(v3, "fx") )
    return DestructibleContainer::DoEffects(a2);
  if ( LC_API_STRCMP_0(v3, "opened") )
    return Container::__EventCallback(a1, a2);
  CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel )
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
        "level",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Containers\\DestructibleContainer.cpp",
        69);
    }
  }
  v6 = (*(int (__fastcall **)(DestructibleContainer *))(*(_DWORD *)a2 + 208))(a2);
  v7 = *((_DWORD *)a2 + 25);
  v9[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "DestroyGameObject");
  v9[0] = off_9659E8;
  v11 = 0;
  v9[2] = 0;
  v10 = 0;
  v9[3] = v7;
  v12 = -1;
  v13 = v6;
  EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v9);
  v9[0] = off_95B458;
  return Container::__EventCallback(a1, a2);
}


// ===== 3a1410 `non-virtual thunk to'DestructibleContainer::~DestructibleContainer() =====
void __fastcall `non-virtual thunk to'DestructibleContainer::~DestructibleContainer(DestructibleContainer *this)
{
  DestructibleContainer::~DestructibleContainer((DestructibleContainer *)((char *)this - 36));
}


// ===== 3a1418 DestructibleContainer::~DestructibleContainer() =====
void __fastcall DestructibleContainer::~DestructibleContainer(DestructibleContainer *this)
{
  *(_DWORD *)this = off_965A00;
  *((_DWORD *)this + 1) = &off_965AEC;
  *((_DWORD *)this + 9) = off_965AF8;
  Container::~Container(this);
}


// ===== 3a1458 `non-virtual thunk to'DestructibleContainer::~DestructibleContainer() =====
void __fastcall `non-virtual thunk to'DestructibleContainer::~DestructibleContainer(DestructibleContainer *this)
{
  DestructibleContainer::~DestructibleContainer((DestructibleContainer *)((char *)this - 36));
}


// ===== 3a1460 DestructibleContainer::~DestructibleContainer() =====
void __fastcall DestructibleContainer::~DestructibleContainer(DestructibleContainer *this)
{
  DestructibleContainer::~DestructibleContainer(this);
  CustomFree(this);
}


// ===== 3a147c DestructibleContainer::~DestructibleContainer() =====
void __fastcall DestructibleContainer::~DestructibleContainer(DestructibleContainer *this)
{
  *(_DWORD *)this = off_965A00;
  *((_DWORD *)this + 1) = &off_965AEC;
  *((_DWORD *)this + 9) = off_965AF8;
  Container::~Container(this);
}


// ===== 3a14bc DestructibleContainer::DestructibleContainer(ObjectBase::GO_IDS) =====
_DWORD *__fastcall DestructibleContainer::DestructibleContainer(_DWORD *a1)
{
  Container::Container();
  a1[445] = 0;
  a1[444] = 0;
  *a1 = off_965A00;
  a1[1] = &off_965AEC;
  a1[9] = off_965AF8;
  return a1;
}


// ===== 3a1508 DestructibleContainer::DestructibleContainer(ObjectBase::GO_IDS) =====
_DWORD *__fastcall DestructibleContainer::DestructibleContainer(_DWORD *a1)
{
  Container::Container((int)a1);
  a1[445] = 0;
  a1[444] = 0;
  *a1 = off_965A00;
  a1[1] = &off_965AEC;
  a1[9] = off_965AF8;
  return a1;
}


// ===== 3a1554 `global constructor keyed to'.._.._sources_Game_Objects_Containers_DestructibleContainer.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Containers_DestructibleContainer.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A28E4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28E0 = 1056964608;
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


// ===== 3a1630 QE_OpenGameObject::~QE_OpenGameObject() =====
void __fastcall QE_OpenGameObject::~QE_OpenGameObject(QE_OpenGameObject *this)
{
  ;
}


// ===== 3a1634 OpenableContainer::GetScript(void) =====
int __fastcall OpenableContainer::GetScript(OpenableContainer *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 221);
  if ( v1 == -1 )
    return 0;
  else
    return *(_DWORD *)(Arrays::OpenableContainers::members + 40 * v1 + 24);
}


// ===== 3a1670 OpenableContainer::GetVisual(void) =====
int __fastcall OpenableContainer::GetVisual(OpenableContainer *this)
{
  int result; // r0

  result = *((_DWORD *)this + 221);
  if ( result != -1 )
    return *(_DWORD *)(Arrays::OpenableContainers::members + 40 * result + 36);
  return result;
}


// ===== 3a16a8 OpenableContainer::IsLocked(void) =====
bool __fastcall OpenableContainer::IsLocked(OpenableContainer *this)
{
  return (unsigned int)(*((_DWORD *)this + 229) - 3) > 1 && *((_DWORD *)this + 452) != -1;
}


// ===== 3a16cc OpenableContainer::GetInteractionType(GameObject *) =====
int __fastcall OpenableContainer::GetInteractionType(OpenableContainer *this, GameObject *a2)
{
  return 0;
}


// ===== 3a16d4 QE_OpenGameObject::~QE_OpenGameObject() =====
void __fastcall QE_OpenGameObject::~QE_OpenGameObject(QE_OpenGameObject *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 3a1708 Arrays::GetMemberIDByString<Arrays::OpenableContainers>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::OpenableContainers>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::OpenableContainers::size;
  if ( !Arrays::OpenableContainers::size )
    return -1;
  v3 = 0;
  v4 = Arrays::OpenableContainers::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 3a177c OpenableContainer::KeepPhysics(void) =====
int __fastcall OpenableContainer::KeepPhysics(char **this)
{
  int v1; // r0

  v1 = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(*(this + 227));
  if ( v1 == -1 )
    return 0;
  else
    return *(unsigned __int8 *)(Arrays::OpenableContainers::members + 40 * v1 + 12);
}


// ===== 3a17c4 OpenableContainer::GetSound(void) =====
int __fastcall OpenableContainer::GetSound(char **this)
{
  int result; // r0

  result = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(*(this + 227));
  if ( result != -1 )
    return *(_DWORD *)(Arrays::OpenableContainers::members + 40 * result + 8);
  return result;
}


// ===== 3a1804 OpenableContainer::GetLoot(void) =====
int __fastcall OpenableContainer::GetLoot(char **this)
{
  int result; // r0

  result = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(*(this + 227));
  if ( result != -1 )
    return *(_DWORD *)(Arrays::OpenableContainers::members + 40 * result + 16);
  return result;
}


// ===== 3a1844 OpenableContainer::GetDataId(void) =====
int __fastcall OpenableContainer::GetDataId(OpenableContainer *this)
{
  char *v1; // r3
  char *v2; // r0

  v1 = *((char **)this + 226);
  v2 = *((char **)this + 227);
  if ( v1 == v2 )
    return -1;
  else
    return Arrays::GetMemberIDByString<Arrays::OpenableContainers>(v2);
}


// ===== 3a1860 OpenableContainer::Unlock(Character *) =====
int __fastcall OpenableContainer::Unlock(OpenableContainer *this, Character *a2)
{
  ItemInventory *v3; // r5
  int Item; // r0
  int v5; // r2

  if ( a2
    && (v3 = (Character *)((char *)a2 + 892),
        (Item = ItemInventory::FindItem((Character *)((char *)a2 + 892), *((_DWORD *)this + 452))) != 0)
    && (v5 = *((_DWORD *)this + 450), v5 <= *(__int16 *)(Item + 80))
    && *((_BYTE *)this + 1804) )
  {
    return ItemInventory::TryConsuming(v3, *((_DWORD *)this + 452), v5);
  }
  else
  {
    return 0;
  }
}


// ===== 3a18bc OpenableContainer::TryUnlocking(GameObject *) =====
int __fastcall OpenableContainer::TryUnlocking(OpenableContainer *this, GameObject *a2)
{
  Character *v5; // r1

  if ( !OpenableContainer::IsLocked(this) )
    return 1;
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2) )
    v5 = a2;
  else
    v5 = nullptr;
  return OpenableContainer::Unlock(this, v5);
}


// ===== 3a1904 OpenableContainer::Interact(GameObject *) =====
int __fastcall OpenableContainer::Interact(OpenableContainer *this, GameObject *a2)
{
  int result; // r0
  EventManager *CurrentLevel; // r8
  int v6; // r5
  TrophyManager *v7; // r6
  int v8; // r8
  int v9; // r5
  int v10; // r4
  int v11; // r1
  int v12; // r9
  int v13; // r10
  _DWORD v14[4]; // [sp+8h] [bp-28h] BYREF
  char v15; // [sp+18h] [bp-18h]
  char v16; // [sp+19h] [bp-17h]
  int v17; // [sp+1Ch] [bp-14h]
  int v18; // [sp+20h] [bp-10h]
  _BYTE v19[12]; // [sp+24h] [bp-Ch] BYREF

  result = OpenableContainer::TryUnlocking(this, a2);
  if ( result )
  {
    CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "level",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Containers\\OpenableContainer.cpp",
          249);
      }
    }
    if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
    {
      v12 = (*(int (__fastcall **)(OpenableContainer *))(*(_DWORD *)this + 208))(this);
      v13 = *((_DWORD *)this + 25);
      v14[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "OpenGameObject");
      v14[0] = off_965B10;
      v16 = 0;
      v15 = 0;
      v14[3] = v13;
      v17 = -1;
      v18 = v12;
      v14[2] = a2;
      EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v14);
      v14[0] = off_95B458;
    }
    Container::Interact((int)this, a2);
    ObjectBase::GetHandle((ObjectBase *)v19);
    result = ObjectHandle::operator Character *(v19);
    v6 = result;
    if ( result )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 40))(result);
      if ( result )
      {
        CharProperties::PROPS_AddInt((CharProperties *)(v6 + 1376), 218, 1);
        v7 = (TrophyManager *)TrophyManager::s_instance;
        result = CharProperties::PROPS_GetInt((CharProperties *)(v6 + 1376), 218, 0);
        if ( result > 99 )
        {
          result = PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)v6);
          if ( result )
          {
            v8 = Arrays::TrophyTable::size;
            if ( Arrays::TrophyTable::size )
            {
              v9 = 0;
              v10 = Arrays::TrophyTable::m_memberNames;
              while ( LC_API_STRCMP_0("open_100_chests", *(const char **)(v10 + 4 * v9)) )
              {
                if ( ++v9 == v8 )
                  goto LABEL_20;
              }
              v11 = v9;
            }
            else
            {
LABEL_20:
              v11 = -1;
            }
            return TrophyManager::UnlockTrophy(v7, v11);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3a1b64 OpenableContainer::InitPost(void) =====
int __fastcall OpenableContainer::InitPost(const char **this)
{
  int result; // r0
  const char *v3; // r5
  int v4; // r6
  int v5; // r4
  int v6; // r7

  result = Container::InitPost((Container *)this);
  v3 = *(this + 449);
  if ( v3 != *(this + 448) )
  {
    v4 = Arrays::ItemTable::size;
    if ( Arrays::ItemTable::size )
    {
      v5 = 0;
      v6 = Arrays::ItemTable::m_memberNames;
      while ( 1 )
      {
        result = LC_API_STRCMP_0(v3, *(const char **)(v6 + 4 * v5));
        if ( !result )
          break;
        if ( ++v5 == v4 )
          goto LABEL_8;
      }
    }
    else
    {
LABEL_8:
      v5 = -1;
    }
    *(this + 452) = (const char *)v5;
  }
  return result;
}


// ===== 3a1bec `non-virtual thunk to'OpenableContainer::~OpenableContainer() =====
void __fastcall `non-virtual thunk to'OpenableContainer::~OpenableContainer(OpenableContainer *this)
{
  OpenableContainer::~OpenableContainer((OpenableContainer *)((char *)this - 36));
}


// ===== 3a1bf4 OpenableContainer::~OpenableContainer() =====
void __fastcall OpenableContainer::~OpenableContainer(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_965B28;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_965C14;
  *((_DWORD *)this + 9) = off_965C20;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 74);
  Container::~Container((Container *)this);
}


// ===== 3a1c40 `non-virtual thunk to'OpenableContainer::~OpenableContainer() =====
void __fastcall `non-virtual thunk to'OpenableContainer::~OpenableContainer(OpenableContainer *this)
{
  OpenableContainer::~OpenableContainer((OpenableContainer *)((char *)this - 36));
}


// ===== 3a1c48 OpenableContainer::~OpenableContainer() =====
void __fastcall OpenableContainer::~OpenableContainer(std::priv::_String_base<char,std::allocator<char> > *this)
{
  OpenableContainer::~OpenableContainer(this);
  CustomFree(this);
}


// ===== 3a1c64 OpenableContainer::~OpenableContainer() =====
void __fastcall OpenableContainer::~OpenableContainer(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_965B28;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_965C14;
  *((_DWORD *)this + 9) = off_965C20;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 74);
  Container::~Container((Container *)this);
}


// ===== 3a1cb0 OpenableContainer::OpenableContainer(ObjectBase::GO_IDS) =====
int __fastcall OpenableContainer::OpenableContainer(int a1)
{
  Container::Container();
  *(_DWORD *)(a1 + 1792) = a1 + 1776;
  *(_DWORD *)(a1 + 4) = &off_965C14;
  *(_DWORD *)(a1 + 36) = off_965C20;
  *(_DWORD *)(a1 + 1796) = a1 + 1776;
  *(_DWORD *)a1 = off_965B28;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 1776, 0x10u);
  **(_BYTE **)(a1 + 1792) = 0;
  *(_BYTE *)(a1 + 1804) = 1;
  *(_DWORD *)(a1 + 1808) = -1;
  *(_DWORD *)(a1 + 1800) = 1;
  return a1;
}


// ===== 3a1d2c OpenableContainer::OpenableContainer(ObjectBase::GO_IDS) =====
int __fastcall OpenableContainer::OpenableContainer(int a1)
{
  Container::Container(a1);
  *(_DWORD *)(a1 + 1792) = a1 + 1776;
  *(_DWORD *)(a1 + 4) = &off_965C14;
  *(_DWORD *)(a1 + 36) = off_965C20;
  *(_DWORD *)(a1 + 1796) = a1 + 1776;
  *(_DWORD *)a1 = off_965B28;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 1776), 0x10u);
  **(_BYTE **)(a1 + 1792) = 0;
  *(_BYTE *)(a1 + 1804) = 1;
  *(_DWORD *)(a1 + 1808) = -1;
  *(_DWORD *)(a1 + 1800) = 1;
  return a1;
}


// ===== 3a1da8 `global constructor keyed to'.._.._sources_Game_Objects_Containers_OpenableContainer.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Containers_OpenableContainer.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A28F0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28EC = 1056964608;
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


// ===== 3a1e84 `non-virtual thunk to'OpenableContainer::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'OpenableContainer::DeclareProperties(OpenableContainer *this)
{
  return OpenableContainer::DeclareProperties((OpenableContainer *)((char *)this - 4));
}


// ===== 3a1e8c OpenableContainer::DeclareProperties(void) =====
_DWORD *__fastcall OpenableContainer::DeclareProperties(OpenableContainer *this)
{
  OpenableContainer *v1; // r11
  int v2; // r6
  PropertyMap *v3; // r5
  int v4; // r6
  int v5; // r6
  std::string v7; // [sp+14h] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+2Ch] [bp+0h] BYREF

  v1 = this;
  Container::DeclareProperties(this);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v8, 0x10u);
  *v8._M_finish = 0;
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::string::_M_range_initialize(&v7, v8._M_start_of_storage._M_data, v8._M_finish);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string((std::string *)(v2 + 8), "key_name");
  v3 = (OpenableContainer *)((char *)v1 + 4);
  *(_DWORD *)(v2 + 4) = 1772;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v7._M_start_of_storage._M_data, v7._M_finish);
  PropertyMap::AddProperty((OpenableContainer *)((char *)v1 + 4), "key_name", (Property *)v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  v4 = operator new(0x24u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "key_qty");
  v1 = (OpenableContainer *)((char *)v1 + 1792);
  *(_DWORD *)(v4 + 4) = (OpenableContainer *)((char *)v1 + 8) - v3;
  *(_DWORD *)v4 = &off_964708;
  *(_DWORD *)(v4 + 32) = 1;
  PropertyMap::AddProperty(v3, "key_qty", (Property *)v4);
  v5 = operator new(0x24u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "key_consume");
  *(_DWORD *)(v5 + 4) = (OpenableContainer *)((char *)v1 + 12) - v3;
  *(_DWORD *)v5 = &off_95C608;
  *(_BYTE *)(v5 + 32) = 1;
  return PropertyMap::AddProperty(v3, "key_consume", (Property *)v5);
}


// ===== 3a2090 SlotContainer::IsUpdatable(void) =====
int __fastcall SlotContainer::IsUpdatable(SlotContainer *this)
{
  return 1;
}


// ===== 3a2098 SlotContainer::GetLootFixedNumPowers(void) =====
int __fastcall SlotContainer::GetLootFixedNumPowers(int this)
{
  int v1; // r1
  int v2; // r3
  int v3; // r2
  int v4; // r3
  bool v5; // zf

  v1 = *(_DWORD *)(this + 1844);
  v2 = (*(_DWORD *)(this + 1848) - v1) >> 2;
  v3 = 858993459 * v2;
  v4 = -858993459 * v2;
  v5 = v4 == 0;
  if ( v4 )
  {
    v4 = *(_DWORD *)(this + 1836);
    v3 = 20;
  }
  else
  {
    this = -1;
  }
  if ( !v5 )
    return *(_DWORD *)(v1 + v3 * v4);
  return this;
}


// ===== 3a20d8 SlotContainer::Update(void) =====
int __fastcall SlotContainer::Update(int this)
{
  _DWORD *v1; // r5
  int v2; // r7
  int v3; // r1
  int v4; // r3
  int v5; // r2
  int v6; // r2
  glitch::video::CMaterial *v7; // r3
  int v8; // r0
  float *v9; // r12
  float v10[3]; // [sp+8h] [bp-14h] BYREF
  glitch::video::CMaterial *v11[2]; // [sp+14h] [bp-8h] BYREF

  v1 = (_DWORD *)this;
  if ( -858993459 * ((*(_DWORD *)(this + 1848) - *(_DWORD *)(this + 1844)) >> 2) )
  {
    if ( (unsigned int)(*(_DWORD *)(this + 916) - 3) > 1 )
    {
      v2 = *(_DWORD *)(this + 1840);
      this = v2 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
      v1[460] = this;
      if ( this <= 0 )
      {
        v3 = v1[461];
        v4 = (v1[462] - v3) >> 2;
        v5 = v1[459] + 1;
        v1[459] = v5;
        this = 858993459 * v4;
        if ( v5 >= -858993459 * v4 )
        {
          v6 = 0;
          v1[459] = 0;
        }
        else
        {
          v6 = 20 * v5;
        }
        v7 = (glitch::video::CMaterial *)v1[464];
        v1[460] = *(_DWORD *)(v3 + v6 + 4);
        if ( v7 )
        {
          v8 = *(_DWORD *)(dword_99F73C + 28);
          v11[0] = v7;
          ++*(_DWORD *)v7;
          v9 = (float *)(v1[461] + 20 * v1[459]);
          v10[0] = v9[2];
          v10[1] = v9[3];
          v10[2] = v9[4];
          SceneManager::SetMaterialEffects(v8, v11, v10, 0.1, -1.0);
          return (int)boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v11);
        }
      }
    }
  }
  return this;
}


// ===== 3a2228 `global constructor keyed to'.._.._sources_Game_Objects_Containers_SlotContainer.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Containers_SlotContainer.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A28FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A28F8 = 1056964608;
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


// ===== 3a2304 std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
void __fastcall std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
        _DWORD *a1,
        _DWORD *a2,
        int a3)
{
  _BYTE *v3; // r3
  _BYTE *v7; // r2
  int v8; // r0
  int v9; // r12
  int v10; // r3
  _BYTE *v11; // r2
  std::ios_base *v12; // r0
  int v13; // r12
  int M_exception_mask; // r3

  v3 = (_BYTE *)a2[2];
  do
  {
    v7 = v3 + 1;
    if ( a2[3] <= (unsigned int)v3 )
    {
      v8 = (*(int (__fastcall **)(_DWORD *))(*a2 + 36))(a2);
      if ( v8 == -1 )
      {
        v9 = 6;
        goto LABEL_11;
      }
      v7 = (_BYTE *)a2[2];
    }
    else
    {
      a2[2] = v7;
      LOBYTE(v8) = *v3;
    }
    v3 = v7;
    v9 = *(_DWORD *)(*(_DWORD *)(a3 + 12) + 4 * (unsigned __int8)v8) & 1;
  }
  while ( v9 );
  if ( a2[1] < (unsigned int)v7 && (v10 = (unsigned __int8)*(v7 - 1), v11 = v7 - 1, (unsigned __int8)v8 == v10) )
  {
    a2[2] = v11;
  }
  else if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) == -1 )
  {
    v9 = 4;
  }
  else
  {
    v9 = 0;
  }
LABEL_11:
  v12 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v13 = v9 | v12->_M_iostate;
  M_exception_mask = v12->_M_exception_mask;
  if ( !v12[1]._M_iostate )
    v13 |= 1u;
  v12->_M_iostate = v13;
  if ( (v13 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v12);
}


// ===== 3a23e8 std::vector<SlotContainer::SlotInfo,std::allocator<SlotContainer::SlotInfo>>::~vector() =====
int __fastcall std::vector<SlotContainer::SlotInfo>::~vector(int a1)
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
  CustomFree(v2);
  return a1;
}


// ===== 3a2444 `non-virtual thunk to'SlotContainer::~SlotContainer() =====
void __fastcall `non-virtual thunk to'SlotContainer::~SlotContainer(SlotContainer *this)
{
  SlotContainer::~SlotContainer((SlotContainer *)((char *)this - 36));
}


// ===== 3a244c SlotContainer::~SlotContainer() =====
void __fastcall SlotContainer::~SlotContainer(SlotContainer *this)
{
  SlotContainer *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_965C38;
  *((_DWORD *)this + 1) = &off_965D24;
  *((_DWORD *)this + 9) = off_965D30;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 464);
  std::vector<SlotContainer::SlotInfo>::~vector((int)this + 1844);
  v2 = *((SlotContainer **)this + 458);
  if ( v2 == (SlotContainer *)((char *)this + 1812) || !v2 )
    goto LABEL_5;
  v3 = *((_DWORD *)this + 453) - (_DWORD)v2;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
LABEL_5:
    OpenableContainer::~OpenableContainer((std::priv::_String_base<char,std::allocator<char> > *)this);
    return;
  }
  CustomFree(v2);
  OpenableContainer::~OpenableContainer((std::priv::_String_base<char,std::allocator<char> > *)this);
}


// ===== 3a24e8 `non-virtual thunk to'SlotContainer::~SlotContainer() =====
void __fastcall `non-virtual thunk to'SlotContainer::~SlotContainer(SlotContainer *this)
{
  SlotContainer::~SlotContainer((SlotContainer *)((char *)this - 36));
}


// ===== 3a24f0 SlotContainer::~SlotContainer() =====
void __fastcall SlotContainer::~SlotContainer(SlotContainer *this)
{
  SlotContainer::~SlotContainer(this);
  CustomFree(this);
}


// ===== 3a250c SlotContainer::~SlotContainer() =====
void __fastcall SlotContainer::~SlotContainer(SlotContainer *this)
{
  *(_DWORD *)this = off_965C38;
  *((_DWORD *)this + 1) = &off_965D24;
  *((_DWORD *)this + 9) = off_965D30;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 464);
  std::vector<SlotContainer::SlotInfo>::~vector((int)this + 1844);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 1812));
  OpenableContainer::~OpenableContainer((std::priv::_String_base<char,std::allocator<char> > *)this);
}


// ===== 3a2570 std::allocator<SlotContainer::SlotInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<SlotContainer::SlotInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = CustomAlloc(20 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x14;
  return result;
}


// ===== 3a25f8 std::istream::sentry::sentry(std::istream &,bool) [clone] =====
std::istream::sentry *__fastcall std::istream::sentry::sentry(std::istream::sentry *this, std::istream *a2, bool a3)
{
  if ( (*(std::streamsize *)((_BYTE *)&a2->_M_gcount + *((_DWORD *)a2->_vptr.basic_istream - 3)) & 0x1000) != 0 )
    *(_BYTE *)this = std::_M_init_skip<char,std::char_traits<char>>(a2);
  else
    *(_BYTE *)this = std::_M_init_noskip<char,std::char_traits<char>>(a2);
  return this;
}


// ===== 3a2640 SlotContainer::InitPost(void) =====
glitch::video::CMaterial **__fastcall SlotContainer::InitPost(const char **this)
{
  glitch::video::CMaterial **result; // r0
  const char *v3; // r1
  const char *v4; // r2
  int v5; // r12
  size_t v6; // r2
  int Color; // r0
  int v8; // r3
  int v9; // r7
  bool v10; // r2
  bool v11; // r2
  int v12; // r1
  bool v13; // r2
  int v14; // r3
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *v16; // r2
  int v17; // r3
  unsigned int v18; // r2
  unsigned int v19; // r3
  _DWORD *v20; // r0
  _DWORD *v21; // r2
  _DWORD *v22; // r3
  int v23; // r7
  char *v24; // lr
  int v25; // r0
  _DWORD *v26; // r1
  int v27; // r12
  const char *v28; // r7
  _BYTE *v29; // r2
  _BYTE *v30; // r0
  size_t v31; // r1
  _DWORD *v32; // [sp+Ch] [bp-D8h]
  ItemInstance *v33; // [sp+20h] [bp-C4h] BYREF
  int v34; // [sp+24h] [bp-C0h] BYREF
  float v35; // [sp+28h] [bp-BCh]
  float v36; // [sp+2Ch] [bp-B8h]
  float v37; // [sp+30h] [bp-B4h]
  size_t v38; // [sp+34h] [bp-B0h] BYREF
  glitch::video::CMaterial *v39; // [sp+38h] [bp-ACh] BYREF
  glitch::video::CMaterial *v40; // [sp+3Ch] [bp-A8h] BYREF
  char v41; // [sp+43h] [bp-A1h] BYREF
  std::istream v42; // [sp+44h] [bp-A0h] BYREF
  char v43; // [sp+D0h] [bp-14h]
  int v44; // [sp+D4h] [bp-10h]
  int v45; // [sp+D8h] [bp-Ch]

  result = (glitch::video::CMaterial **)OpenableContainer::InitPost(this);
  if ( *(this + 457) != *(this + 458) )
  {
    __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)&v42.gap8[64]);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    *(_DWORD *)&v42.gap8[64] = off_964118;
    v42._M_gcount = 0;
    std::ios::init((int)&v42.gap8[64], 0, (int)off_964118, (int)off_964104);
    *(_DWORD *)v42.gap8 = off_96412C;
    *(_DWORD *)&v42.gap8[64] = off_964140;
    std::ios::init((int)&v42.gap8[64], 0, (int)off_96412C, (int)v42.gap8);
    *(_DWORD *)&v42.gap8[64] = off_9640EC;
    *(_DWORD *)v42.gap8 = off_9640D8;
    std::ios::init((int)&v42.gap8[64], 0, (int)&dword_48, (int)off_9640C4);
    v42._vptr.basic_istream = (int (**)(...))off_964084;
    *(_DWORD *)&v42.gap8[64] = off_9640AC;
    *(_DWORD *)v42.gap8 = off_964098;
    *(_DWORD *)&v42.gap8[4] = off_95B938;
    memset(&v42.gap8[8], 0, 24);
    __ZNSt6localeC1Ev_veneer((std::locale *const)&v42.gap8[32]);
    v3 = *(this + 458);
    v4 = *(this + 457);
    *(_DWORD *)&v42.gap8[4] = off_95B8F0;
    *(_DWORD *)&v42.gap8[56] = &v42.gap8[40];
    *(_DWORD *)&v42.gap8[60] = &v42.gap8[40];
    *(_DWORD *)&v42.gap8[36] = 8;
    std::string::_M_range_initialize((std::string *)&v42.gap8[40], v3, v4);
    if ( (v42.gap8[36] & 8) != 0 )
    {
      if ( (v42.gap8[36] & 2) != 0 )
        v5 = *(_DWORD *)&v42.gap8[56];
      else
        v5 = *(_DWORD *)&v42.gap8[60];
      *(_DWORD *)&v42.gap8[12] = v5;
      *(_DWORD *)&v42.gap8[8] = *(_DWORD *)&v42.gap8[60];
      *(_DWORD *)&v42.gap8[16] = *(_DWORD *)&v42.gap8[56];
    }
    if ( (v42.gap8[36] & 0x10) != 0 )
    {
      if ( (v42.gap8[36] & 3) != 0 )
      {
        *(_DWORD *)&v42.gap8[28] = *(_DWORD *)&v42.gap8[56];
        *(_DWORD *)&v42.gap8[20] = *(_DWORD *)&v42.gap8[56];
      }
      else
      {
        *(_DWORD *)&v42.gap8[20] = *(_DWORD *)&v42.gap8[60];
        *(_DWORD *)&v42.gap8[28] = *(_DWORD *)&v42.gap8[56];
      }
      *(_DWORD *)&v42.gap8[24] = *(_DWORD *)&v42.gap8[56];
    }
    std::ios::init((int)&v42.gap8[64], (int)&v42.gap8[4], *(int *)&v42.gap8[56], *(int *)&v42.gap8[36]);
    v33 = (ItemInstance *)-1;
    v34 = 0;
    v6 = (size_t)&v38;
    v37 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    while ( (v42.gap8[72] & 2) == 0 )
    {
      std::istream::operator>>(&v42, &v33, v6);
      std::istream::_M_formatted_get(&v42, &v41, v10);
      std::istream::operator>>(&v42, &v34, v11);
      if ( (v42.gap8[72] & 2) == 0 )
        std::istream::_M_formatted_get(&v42, &v41, v13);
      Color = ItemInstance::GetColor(v33, v12);
      v35 = (float)BYTE2(Color) / 255.0;
      v36 = (float)BYTE1(Color) / 255.0;
      v8 = (int)*(this + 462);
      v9 = (int)*(this + 463);
      v37 = (float)(unsigned __int8)Color / 255.0;
      if ( v8 == v9 )
      {
        v17 = (v9 - (int)*(this + 461)) >> 2;
        v18 = -858993459 * v17;
        if ( -858993459 * v17 )
          v19 = -1717986918 * v17;
        else
          v19 = 1;
        if ( v19 > 0xCCCCCCC || v18 > v19 )
          v19 = 214748364;
        v38 = v19;
        v20 = std::allocator<SlotContainer::SlotInfo>::_M_allocate((int)(this + 463), v19, &v38);
        v21 = *(this + 461);
        v22 = v20;
        v23 = (v9 - (int)v21) >> 2;
        if ( -858993459 * v23 > 0 )
        {
          v25 = -858993459 * v23;
          v26 = v22;
          do
          {
            --v25;
            *v26 = *v21;
            v26[1] = v21[1];
            v26[2] = v21[2];
            v26[3] = v21[3];
            v27 = v21[4];
            v21 += 5;
            v26[4] = v27;
            v26 += 5;
          }
          while ( v25 );
          v24 = (char *)&v22[v23];
        }
        else
        {
          v24 = (char *)v20;
        }
        v28 = v24 + 20;
        *(_DWORD *)v24 = v33;
        *((_DWORD *)v24 + 1) = v34;
        *((float *)v24 + 2) = v35;
        *((float *)v24 + 3) = v36;
        *((float *)v24 + 4) = v37;
        v29 = *(this + 462);
        v30 = *(this + 461);
        if ( v29 != v30 )
          v29 += -20 * ((214748365 * ((unsigned int)(v29 - 20 - v30) >> 2)) & 0x3FFFFFFF) - 20;
        if ( v29 )
        {
          v31 = 4 * ((*(this + 463) - v29) >> 2);
          v32 = v22;
          if ( v31 > 0x80 )
            CustomFree(v30);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v30, v31);
          v22 = v32;
        }
        v6 = v38;
        *(this + 461) = (const char *)v22;
        *(this + 462) = v28;
        *(this + 463) = (const char *)&v22[5 * v6];
      }
      else
      {
        *(_DWORD *)v8 = v33;
        *(_DWORD *)(v8 + 4) = v34;
        *(float *)(v8 + 8) = v35;
        *(float *)(v8 + 12) = v36;
        LOBYTE(v6) = LOBYTE(v37);
        *(float *)(v8 + 16) = v37;
        *(this + 462) += 20;
      }
    }
    result = (glitch::video::CMaterial **)std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)&v42);
  }
  v14 = (int)*(this + 182);
  if ( v14 )
  {
    SceneManager::GetMaterial(
      (SceneManager *)&v40,
      *(glitch::scene::ISceneNode **)(dword_99F73C + 28),
      *(const std::string **)(v14 + 8),
      "GL_",
      1);
    v15 = v40;
    v39 = v40;
    if ( v40 )
    {
      ++*(_DWORD *)v40;
      v15 = v39;
    }
    v16 = (glitch::video::CMaterial *)*(this + 464);
    *(this + 464) = (const char *)v15;
    v39 = v16;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v39);
    return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v40);
  }
  return result;
}


// ===== 3a2bcc SlotContainer::SlotContainer(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SlotContainer::SlotContainer(_DWORD *a1)
{
  OpenableContainer::OpenableContainer();
  a1[1] = &off_965D24;
  a1[9] = off_965D30;
  a1[457] = a1 + 453;
  a1[458] = a1 + 453;
  *a1 = off_965C38;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)(a1 + 453), 0x10u);
  *(_BYTE *)a1[457] = 0;
  a1[460] = -1;
  a1[464] = 0;
  a1[459] = -1;
  a1[461] = 0;
  a1[462] = 0;
  a1[463] = 0;
  return a1;
}


// ===== 3a2c54 SlotContainer::SlotContainer(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SlotContainer::SlotContainer(_DWORD *a1)
{
  OpenableContainer::OpenableContainer((int)a1);
  a1[1] = &off_965D24;
  a1[9] = off_965D30;
  a1[457] = a1 + 453;
  a1[458] = a1 + 453;
  *a1 = off_965C38;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 453, 0x10u);
  *(_BYTE *)a1[457] = 0;
  a1[460] = -1;
  a1[464] = 0;
  a1[459] = -1;
  a1[461] = 0;
  a1[462] = 0;
  a1[463] = 0;
  return a1;
}


// ===== 3a2cdc `non-virtual thunk to'SlotContainer::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'SlotContainer::DeclareProperties(SlotContainer *this)
{
  return SlotContainer::DeclareProperties((SlotContainer *)((char *)this - 4));
}


// ===== 3a2ce4 SlotContainer::DeclareProperties(void) =====
void __fastcall SlotContainer::DeclareProperties(SlotContainer *this)
{
  PropertyMap *v1; // r9
  int v2; // r4
  char *v3; // r10
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+1Ch] [bp+0h] BYREF

  v1 = this;
  OpenableContainer::DeclareProperties(this);
  v5._M_finish = (char *)&v5;
  v5._M_start_of_storage._M_data = (char *)&v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v5, 0x10u);
  *v5._M_finish = 0;
  v4._M_finish = (char *)&v4;
  v4._M_start_of_storage._M_data = (char *)&v4;
  std::string::_M_range_initialize((std::string *)&v4, v5._M_start_of_storage._M_data, v5._M_finish);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::string::_M_range_initialize((std::string *)(v2 + 8), "slots", "");
  v3 = (char *)v1 + 1812;
  v1 = (PropertyMap *)((char *)v1 + 4);
  *(_DWORD *)(v2 + 4) = v3 - (char *)v1;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v4._M_start_of_storage._M_data, v4._M_finish);
  PropertyMap::AddProperty(v1, "slots", (Property *)v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
}


// ===== 3a2e1c Character::IsCharacter(void) =====
int __fastcall Character::IsCharacter(Character *this)
{
  return 1;
}


// ===== 3a2e24 Character::GetFocusObject(void) =====
int __fastcall Character::GetFocusObject(Character *this)
{
  return *((_DWORD *)this + 258);
}


// ===== 3a2e2c Character::IsUpdatingPath(void) =====
int __fastcall Character::IsUpdatingPath(Character *this)
{
  return (*((_DWORD *)this + 328) >> 7) & 1;
}


// ===== 3a2e38 Character::IsUpdatingPositionFromVisual(void) =====
int __fastcall Character::IsUpdatingPositionFromVisual(Character *this)
{
  return *((_DWORD *)this + 328) & 1;
}


// ===== 3a2e44 Character::IsUpdatingPositionFromPhysics(void) =====
int __fastcall Character::IsUpdatingPositionFromPhysics(Character *this)
{
  return (*((_DWORD *)this + 328) >> 1) & 1;
}


// ===== 3a2e50 Character::IsUpdatingRotationFromVisual(void) =====
int __fastcall Character::IsUpdatingRotationFromVisual(Character *this)
{
  return (*((_DWORD *)this + 328) >> 2) & 1;
}


// ===== 3a2e5c Character::IsUpdatingRotationFromPhysics(void) =====
int __fastcall Character::IsUpdatingRotationFromPhysics(Character *this)
{
  return (*((_DWORD *)this + 328) >> 3) & 1;
}


// ===== 3a2e68 Character::IsUpdatingVisualWithRotation(void) =====
unsigned int __fastcall Character::IsUpdatingVisualWithRotation(Character *this)
{
  return ((*((_DWORD *)this + 328) ^ 0x10u) >> 4) & 1;
}


// ===== 3a2e78 Character::IsValidatingFloorPosition(void) =====
unsigned int __fastcall Character::IsValidatingFloorPosition(Character *this)
{
  return ((*((_DWORD *)this + 328) ^ 0x40u) >> 6) & 1;
}


// ===== 3a2e88 Character::IsValidatingCameraLimits(void) =====
int __fastcall Character::IsValidatingCameraLimits(Character *this)
{
  return (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this);
}


// ===== 3a2e9c Character::GetFXScale(void) =====
Character *__fastcall Character::GetFXScale(Character *this, int a2)
{
  float v3; // r0

  v3 = (float)*(int *)(a2 + 1456) * 0.01;
  *((float *)this + 2) = v3;
  *(float *)this = v3;
  *((float *)this + 1) = v3;
  return this;
}


// ===== 3a2ecc Character::GetFXScaleValue(void) =====
int __fastcall Character::GetFXScaleValue(Character *this)
{
  return *((_DWORD *)this + 364);
}


// ===== 3a2ed4 Character::IsDead(void) =====
int __fastcall Character::IsDead(Character *this)
{
  return *((unsigned __int8 *)this + 5193);
}


// ===== 3a2ee0 Character::IsAnimated(void) =====
int __fastcall Character::IsAnimated(Character *this)
{
  return 1;
}


// ===== 3a2ee8 Character::IsObstacle(void) =====
int __fastcall Character::IsObstacle(Character *this)
{
  return 1;
}


// ===== 3a2ef0 Character::GetObstacleRadius(void) =====
int __fastcall Character::GetObstacleRadius(Character *this)
{
  return 1112014848;
}


// ===== 3a2efc Character::GetObstacleStrength(void) =====
int __fastcall Character::GetObstacleStrength(Character *this)
{
  return 1101004800;
}


// ===== 3a2f08 Character::getUDTypeName(void) =====
const char *__fastcall Character::getUDTypeName(Character *this)
{
  return "Character";
}


// ===== 3a2f18 NetStructRangedFloat<18u,-200000,200000>::~NetStructRangedFloat() =====
void NetStructRangedFloat<18u,-200000,200000>::~NetStructRangedFloat()
{
  ;
}


// ===== 3a2f1c `non-virtual thunk to'NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat() =====
int __fastcall `non-virtual thunk to'NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat(
        int a1)
{
  return NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat(a1 - 36);
}


// ===== 3a2f24 NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat() =====
void NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat()
{
  ;
}


// ===== 3a2f28 NetStructRangedFloat<16u,-50000,50000>::~NetStructRangedFloat() =====
void NetStructRangedFloat<16u,-50000,50000>::~NetStructRangedFloat()
{
  ;
}


// ===== 3a2f2c `non-virtual thunk to'NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat() =====
int __fastcall `non-virtual thunk to'NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat(
        int a1)
{
  return NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat(a1 - 36);
}


// ===== 3a2f34 NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat() =====
void NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat()
{
  ;
}


// ===== 3a2f38 NetStructRangedFloat<16u,-1,1>::~NetStructRangedFloat() =====
void NetStructRangedFloat<16u,-1,1>::~NetStructRangedFloat()
{
  ;
}


// ===== 3a2f3c QE_TalkToNPC::~QE_TalkToNPC() =====
void __fastcall QE_TalkToNPC::~QE_TalkToNPC(QE_TalkToNPC *this)
{
  ;
}


// ===== 3a2f40 v2Controller::~v2Controller() =====
void __fastcall v2Controller::~v2Controller(v2Controller *this)
{
  ;
}


// ===== 3a2f44 v2Controller::Update(void) =====
void __fastcall v2Controller::Update(v2Controller *this)
{
  ;
}


// ===== 3a2f48 Character::HasCharOIDInCache(int) =====
int __fastcall Character::HasCharOIDInCache(Character *this, int a2)
{
  char *v2; // r4
  char *v3; // r1
  int v4; // r12
  bool v5; // cc
  char *v6; // r12

  v2 = &Character::s_cachedCharOIDs;
  v3 = (char *)dword_9A2930;
  if ( dword_9A2930 )
  {
    while ( 1 )
    {
      v4 = *((_DWORD *)v3 + 4);
      v5 = (int)this <= v4;
      if ( (int)this <= v4 )
        v6 = *((char **)v3 + 2);
      else
        v6 = *((char **)v3 + 3);
      if ( !v5 )
        v3 = v2;
      v2 = v3;
      if ( !v6 )
        break;
      v3 = v6;
    }
    if ( v3 != &Character::s_cachedCharOIDs && (int)this < *((_DWORD *)v3 + 4) )
      v3 = &Character::s_cachedCharOIDs;
  }
  else
  {
    v3 = &Character::s_cachedCharOIDs;
  }
  if ( v3 == &Character::s_cachedCharOIDs )
    return 0;
  else
    return *((_DWORD *)v3 + 5);
}


// ===== 3a2fcc Character::GetLoot(void) =====
int __fastcall Character::GetLoot(Character *this)
{
  return *((_DWORD *)this + 1031);
}


// ===== 3a2fd8 Character::HasLoot(void) =====
bool __fastcall Character::HasLoot(Character *this)
{
  return Character::GetLoot(this) != -1;
}


// ===== 3a2fec Character::GetCharAIId(void) =====
int __fastcall Character::GetCharAIId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1023);
  if ( result < 0 || result >= Arrays::AITable::size )
    return 8;
  return result;
}


// ===== 3a3024 Character::GetCharAI(void) =====
int __fastcall Character::GetCharAI(Character *this)
{
  int v1; // r4

  v1 = Arrays::AITable::members;
  return v1 + 68 * Character::GetCharAIId(this);
}


// ===== 3a3054 Character::GetCharType(void) =====
int __fastcall Character::GetCharType(Character *this)
{
  return *(_DWORD *)(Character::GetCharAI(this) + 56);
}


// ===== 3a3064 Character::IsMonster(void) =====
bool __fastcall Character::IsMonster(Character *this)
{
  return Character::GetCharType(this) == 4;
}


// ===== 3a307c Character::IsFollower(void) =====
bool __fastcall Character::IsFollower(Character *this)
{
  return Character::GetCharType(this) == 2;
}


// ===== 3a3094 Character::IsFaerie(void) =====
bool __fastcall Character::IsFaerie(Character *this)
{
  return Character::GetCharType(this) == 3;
}


// ===== 3a30ac Character::IsSummoned(void) =====
bool __fastcall Character::IsSummoned(Character *this)
{
  return Character::GetCharType(this) == 5;
}


// ===== 3a30c4 Character::IsMerchant(void) =====
bool __fastcall Character::IsMerchant(Character *this)
{
  return Character::GetCharType(this) == 7;
}


// ===== 3a30dc Character::IsInvisibleMan(void) =====
bool __fastcall Character::IsInvisibleMan(Character *this)
{
  return Character::GetCharType(this) == 9;
}


// ===== 3a30f4 Character::IsCleaner(void) =====
bool __fastcall Character::IsCleaner(Character *this)
{
  return Character::GetCharType(this) == 8;
}


// ===== 3a310c Character::IsNPC(void) =====
bool __fastcall Character::IsNPC(Character *this)
{
  return Character::GetCharType(this) == 6 || Character::IsMerchant(this) || Character::IsCleaner(this);
}


// ===== 3a3144 Character::IsMiniBoss(void) =====
int __fastcall Character::IsMiniBoss(Character *this)
{
  return (*(_DWORD *)(Character::GetCharAI(this) + 20) >> 1) & 1;
}


// ===== 3a3158 Character::IsBoss(void) =====
int __fastcall Character::IsBoss(Character *this)
{
  return (*(_DWORD *)(Character::GetCharAI(this) + 20) >> 2) & 1;
}


// ===== 3a316c Character::IsCharSitting(void) =====
int __fastcall Character::IsCharSitting(Character *this)
{
  return (*(_DWORD *)(Character::GetCharAI(this) + 20) >> 3) & 1;
}


// ===== 3a3180 Character::GetCharAIFactionId(void) =====
int __fastcall Character::GetCharAIFactionId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1022);
  if ( result < 0 || result >= Arrays::AIFactionTable::size )
    return 10;
  return result;
}


// ===== 3a31b8 Character::GetCharAIFaction(void) =====
int __fastcall Character::GetCharAIFaction(Character *this)
{
  int v1; // r4

  v1 = Arrays::AIFactionTable::members;
  return v1 + 12 * Character::GetCharAIFactionId(this);
}


// ===== 3a31e8 Character::GetCharModelId(void) =====
int __fastcall Character::GetCharModelId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1025);
  if ( result < 0 || result >= Arrays::ModelDict::size )
    return -1;
  return result;
}


// ===== 3a3228 Character::GetCharAnimTableId(void) =====
int __fastcall Character::GetCharAnimTableId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1024);
  if ( result < 0 || result >= Arrays::CharAnimTable::size )
    return 17;
  return result;
}


// ===== 3a3264 Character::GetCharAnimTable(void) =====
int __fastcall Character::GetCharAnimTable(Character *this)
{
  int v1; // r4

  v1 = Arrays::CharAnimTable::members;
  return v1 + 160 * Character::GetCharAnimTableId(this);
}


// ===== 3a3294 Character::GetCharSoundsId(void) =====
int __fastcall Character::GetCharSoundsId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1030);
  if ( result < 0 || result >= Arrays::CharSoundsTable::size )
    return 2;
  return result;
}


// ===== 3a32d0 Character::GetCharSounds(void) =====
int __fastcall Character::GetCharSounds(Character *this)
{
  int v1; // r4

  v1 = Arrays::CharSoundsTable::members;
  return v1 + 40 * Character::GetCharSoundsId(this);
}

