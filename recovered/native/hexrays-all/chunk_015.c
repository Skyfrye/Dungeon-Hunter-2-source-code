// ===== 45d650 Script_CloseDoor::Execute(bool,int) =====
int __fastcall Script_CloseDoor::Execute(Script_CloseDoor *this, int a2, int a3)
{
  int v6; // r7
  int result; // r0
  _BYTE v8[12]; // [sp+Ch] [bp-30h] BYREF
  std::string v9; // [sp+1Ch] [bp-20h] BYREF

  v6 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  ObjectManager::GetObjectByName((ObjectManager *)v8, (const char *)dword_99F764, *(char **)(v6 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v8, 0);
  if ( result && *(_DWORD *)(result + 244) == 2 )
  {
    *((_DWORD *)this + 4) = result;
    *((_BYTE *)this + 20) = *(_BYTE *)(v6 + 16);
    return Door::Close(result, a2);
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d75c Script_OpenDoor::Execute(bool,int) =====
int __fastcall Script_OpenDoor::Execute(Script_OpenDoor *this, int a2, int a3)
{
  int v6; // r7
  int result; // r0
  _BYTE v8[12]; // [sp+Ch] [bp-30h] BYREF
  std::string v9; // [sp+1Ch] [bp-20h] BYREF

  v6 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  ObjectManager::GetObjectByName((ObjectManager *)v8, (const char *)dword_99F764, *(char **)(v6 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v8, 0);
  if ( result && *(_DWORD *)(result + 244) == 2 )
  {
    *((_DWORD *)this + 4) = result;
    *((_BYTE *)this + 20) = *(_BYTE *)(v6 + 16);
    return Door::Open(result, a2);
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d868 Script_SetStatic::Execute(bool,int) =====
char *__fastcall Script_SetStatic::Execute(Script_SetStatic *this, bool a2, int a3)
{
  int v4; // r7
  char *result; // r0
  char *v6[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v7; // [sp+1Ch] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 16), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v6, 0);
  if ( result )
    result = ObjectHandle::operator Character *(v6);
  if ( *(_BYTE *)(v4 + 8) )
    result[132] = 1;
  return result;
}


// ===== 45d95c Script_ReEquipHands::Execute(bool,int) =====
_DWORD *__fastcall Script_ReEquipHands::Execute(Script_ReEquipHands *this, bool a2, int a3)
{
  int v4; // r10
  _DWORD *result; // r0
  _DWORD *v6; // r5
  _BYTE v7[12]; // [sp+Ch] [bp-10h] BYREF
  std::string v8; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = (_DWORD *)ObjectHandle::GetObject((ObjectHandle *)v7, 0);
  if ( result )
  {
    result = (_DWORD *)ObjectHandle::operator Character *(v7);
    v6 = result;
    if ( result )
    {
      if ( result[1341] != -1 )
        result = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*result + 316))(result, 1);
      if ( v6[1342] != -1 )
        return (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*v6 + 316))(v6, 2);
    }
  }
  return result;
}


// ===== 45da8c Script_UnEquipItemFromSlot::Execute(bool,int) =====
char *__fastcall Script_UnEquipItemFromSlot::Execute(Script_UnEquipItemFromSlot *this, bool a2, int a3)
{
  int v4; // r7
  char *result; // r0
  char *v6[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v7; // [sp+1Ch] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 16), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v6, 0);
  if ( result )
  {
    result = ObjectHandle::operator Character *(v6);
    if ( result )
      return (char *)(*(int (__fastcall **)(char *, _DWORD))(*(_DWORD *)result + 324))(result, *(_DWORD *)(v4 + 8));
  }
  return result;
}


// ===== 45db88 Script_AutoEquip::Execute(bool,int) =====
char *__fastcall Script_AutoEquip::Execute(Script_AutoEquip *this, bool a2, int a3)
{
  int v4; // r10
  char *result; // r0
  char *v6[3]; // [sp+Ch] [bp-10h] BYREF
  std::string v7; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v6, 0);
  if ( result )
  {
    result = ObjectHandle::operator Character *(v6);
    if ( result )
      return (char *)(*(int (__fastcall **)(char *))(*(_DWORD *)result + 312))(result);
  }
  return result;
}


// ===== 45dc80 Script_UnlockCharacter::Execute(bool,int) =====
char *__fastcall Script_UnlockCharacter::Execute(Script_UnlockCharacter *this, bool a2, int a3)
{
  int v4; // r10
  char *v5; // r6
  char *result; // r0
  char *v7[3]; // [sp+Ch] [bp-30h] BYREF
  std::string v8; // [sp+1Ch] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  v5 = *(char **)(v4 + 12);
  result = (char *)LC_API_STRCMP_0(v5, "All");
  if ( result )
  {
    ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, v5, a3, nullptr, 0);
    result = ObjectHandle::GetObject(v7, 0);
    if ( result )
    {
      result = ObjectHandle::operator Character *(v7);
      if ( result )
        *(_BYTE *)(*((_DWORD *)result + 222) + 8) = 0;
    }
  }
  else
  {
    v2Controller::s_blocked = 0;
  }
  return result;
}


// ===== 45dda0 Script_LockCharacter::Execute(bool,int) =====
int __fastcall Script_LockCharacter::Execute(int this, int a2, int a3)
{
  int v4; // r9
  char *v5; // r8
  _BYTE v6[12]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v7; // [sp+1Ch] [bp-1Ch] BYREF

  if ( !a2 )
  {
    v4 = *(_DWORD *)(this + 12);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v7, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
    std::string::~string(&v7);
    v5 = *(char **)(v4 + 12);
    this = LC_API_STRCASECMP_0(v5, "All");
    if ( this )
    {
      ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, v5, a3, nullptr, 0);
      this = ObjectHandle::GetObject((ObjectHandle *)v6, 0);
      if ( this )
      {
        this = ObjectHandle::operator Character *(v6);
        if ( this )
          *(_BYTE *)(*(_DWORD *)(this + 888) + 8) = 1;
      }
    }
    else
    {
      v2Controller::s_blocked = 1;
    }
  }
  return this;
}


// ===== 45ded0 Script_UnEquipHands::Execute(bool,int) =====
int __fastcall Script_UnEquipHands::Execute(Script_UnEquipHands *this, bool a2, int a3)
{
  int v4; // r10
  int result; // r0
  _DWORD *v6; // r5
  const ItemInstance *EquippedItem; // r0
  const ItemInstance *v8; // r0
  _BYTE v9[12]; // [sp+Ch] [bp-10h] BYREF
  std::string v10; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  ObjectManager::GetObjectByName((ObjectManager *)v9, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v9, 0);
  if ( result )
  {
    result = ObjectHandle::operator Character *(v9);
    v6 = (_DWORD *)result;
    if ( result )
    {
      EquippedItem = (const ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(result + 892), 1u);
      v6[1341] = ItemInventory::GetItemIndex((ItemInventory *)(v6 + 223), EquippedItem);
      v8 = (const ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(v6 + 223), 2u);
      v6[1342] = ItemInventory::GetItemIndex((ItemInventory *)(v6 + 223), v8);
      (*(void (__fastcall **)(_DWORD *, int))(*v6 + 324))(v6, 1);
      return (*(int (__fastcall **)(_DWORD *, int))(*v6 + 324))(v6, 2);
    }
  }
  return result;
}


// ===== 45e028 Script_HideActor::Execute(bool,int) =====
int __fastcall Script_HideActor::Execute(Script_HideActor *this, bool a2, int a3)
{
  int v4; // r10
  int result; // r0
  _BYTE v6[12]; // [sp+Ch] [bp-10h] BYREF
  std::string v7; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v6, 0);
  if ( result )
  {
    result = ObjectHandle::operator GameObject *(v6);
    if ( result )
      return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)result + 64))(result, 0);
  }
  return result;
}


// ===== 45e124 Script_PlayAnimByName::Execute(bool,int) =====
int __fastcall Script_PlayAnimByName::Execute(int this, int a2, int a3)
{
  int v4; // r7
  int v5; // r3
  int v6; // r12
  _BYTE v7[12]; // [sp+Ch] [bp-30h] BYREF
  std::string v8; // [sp+1Ch] [bp-20h] BYREF

  if ( !a2 )
  {
    v4 = *(_DWORD *)(this + 12);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v8, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    std::string::~string(&v8);
    ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v4 + 24), a3, nullptr, 0);
    this = ObjectHandle::GetObject((ObjectHandle *)v7, 0);
    if ( this )
    {
      this = ObjectHandle::operator GameObject *(v7);
      if ( this )
      {
        v5 = *(_DWORD *)(this + 728);
        if ( v5 )
        {
          v6 = *(_DWORD *)(v5 + 56);
          if ( v6 )
            return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 32))(
                     *(_DWORD *)(v5 + 56),
                     *(_DWORD *)(v4 + 12),
                     *(unsigned __int8 *)(v4 + 16),
                     0,
                     0);
        }
      }
    }
  }
  return this;
}


// ===== 45e24c Script_PlayAnimById::Execute(bool,int) =====
char *__fastcall Script_PlayAnimById::Execute(char *this, int a2, int a3)
{
  int v4; // r7
  int v5; // r3
  int v6; // r12
  char *v7[3]; // [sp+Ch] [bp-30h] BYREF
  std::string v8; // [sp+1Ch] [bp-20h] BYREF

  if ( !a2 )
  {
    v4 = *((_DWORD *)this + 3);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v8, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    std::string::~string(&v8);
    ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v4 + 20), a3, nullptr, 0);
    this = ObjectHandle::GetObject(v7, 0);
    if ( this )
    {
      this = ObjectHandle::operator GameObject *(v7);
      if ( this )
      {
        v5 = *((_DWORD *)this + 182);
        if ( v5 )
        {
          v6 = *(_DWORD *)(v5 + 56);
          if ( v6 )
            return (char *)(*(int (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 28))(
                             *(_DWORD *)(v5 + 56),
                             *(_DWORD *)(v4 + 8),
                             *(unsigned __int8 *)(v4 + 12),
                             0,
                             0);
        }
      }
    }
  }
  return this;
}


// ===== 45e374 Script_DropLoot::Execute(bool,int) =====
char *__fastcall Script_DropLoot::Execute(Script_DropLoot *this, bool a2, int a3)
{
  int v4; // r7
  char *Object; // r5
  char *result; // r0
  GameObject *v7; // r1
  char *v8[3]; // [sp+8h] [bp-38h] BYREF
  char *v9[3]; // [sp+14h] [bp-2Ch] BYREF
  std::string v10; // [sp+24h] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  ObjectManager::GetObjectByName((ObjectManager *)v9, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  Object = ObjectHandle::GetObject(v9, 0);
  if ( Object )
    Object = ObjectHandle::operator Character *(v9);
  ObjectManager::GetObjectByName((ObjectManager *)v8, (const char *)dword_99F764, *(char **)(v4 + 20), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v8, 0);
  v7 = (GameObject *)result;
  if ( result )
  {
    result = ObjectHandle::operator GameObject *(v8);
    v7 = (GameObject *)result;
  }
  if ( Object )
    return (char *)Character::DropLoot((Character *)Object, v7);
  return result;
}


// ===== 45e4b8 Script_SetActorMaster::Execute(bool,int) =====
char *__fastcall Script_SetActorMaster::Execute(Script_SetActorMaster *this, bool a2, int a3)
{
  int v4; // r7
  char *v5; // r8
  char *result; // r0
  bool v7; // zf
  char *v8[3]; // [sp+8h] [bp-38h] BYREF
  char *v9[3]; // [sp+14h] [bp-2Ch] BYREF
  std::string v10; // [sp+24h] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  ObjectManager::GetObjectByName((ObjectManager *)v9, (const char *)dword_99F764, *(char **)(v4 + 28), a3, nullptr, 0);
  v5 = ObjectHandle::operator Character *(v9);
  ObjectManager::GetObjectByName((ObjectManager *)v8, (const char *)dword_99F764, *(char **)(v4 + 16), a3, nullptr, 0);
  result = ObjectHandle::operator Character *(v8);
  v7 = result == nullptr;
  if ( result )
    v7 = v5 == nullptr;
  if ( !v7 )
    return (char *)CharAI::AI_SetMaster((int)(v5 + 968), (Character *)result);
  return result;
}


// ===== 45e5c8 Script_SetActorPosition::Execute(bool,int) =====
int __fastcall Script_SetActorPosition::Execute(Script_SetActorPosition *this, bool a2, int a3)
{
  int v4; // r7
  GameObject *v5; // r8
  int result; // r0
  bool v7; // zf
  float *v8; // r7
  int v9; // r0
  int v10; // r10
  GameObject *v11; // r5
  float v12; // r6
  float v13; // r10
  GameObject *v14; // r5
  float v15; // r6
  float v16; // r10
  GameObject *v17; // r5
  float v18; // r6
  float v19; // r10
  float v20[3]; // [sp+8h] [bp-6Ch] BYREF
  float v21[3]; // [sp+14h] [bp-60h] BYREF
  float v22[3]; // [sp+20h] [bp-54h] BYREF
  _BYTE v23[12]; // [sp+2Ch] [bp-48h] BYREF
  _BYTE v24[12]; // [sp+38h] [bp-3Ch] BYREF
  _BYTE v25[12]; // [sp+44h] [bp-30h] BYREF
  std::string v26; // [sp+54h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v26, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v26);
  std::string::~string(&v26);
  ObjectManager::GetObjectByName((ObjectManager *)v25, (const char *)dword_99F764, *(char **)(v4 + 20), a3, nullptr, 0);
  v5 = (GameObject *)ObjectHandle::operator GameObject *(v25);
  ObjectManager::GetObjectByName((ObjectManager *)v24, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ObjectHandle::operator GameObject *(v24);
  v7 = result == 0;
  if ( result )
    v7 = v5 == nullptr;
  v8 = (float *)result;
  if ( !v7 )
  {
    ObjectBase::GetHandle((ObjectBase *)v23);
    v9 = ObjectHandle::operator Character *(v23);
    v10 = v9;
    if ( v9 )
    {
      CharStateMachine::SM_SetIdleState((CharStateMachine *)(v9 + 1276), 0);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 40))(v10) )
      {
        v11 = *(GameObject **)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 1, 0) + 1632);
        if ( v11 )
        {
          v12 = v8[89] + 0.0;
          v13 = v8[90] + 0.0;
          v22[0] = v8[88] + -200.0;
          v22[1] = v12;
          v22[2] = v13;
          GameObject::SetPosition(v11, v22, 1);
          GameObject::ForceUpdatePosition(v11);
        }
        v14 = *(GameObject **)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 2, 0) + 1632);
        if ( v14 )
        {
          v15 = v8[89] + 0.0;
          v16 = v8[90] + 0.0;
          v21[0] = v8[88] + 200.0;
          v21[1] = v15;
          v21[2] = v16;
          GameObject::SetPosition(v14, v21, 1);
          GameObject::ForceUpdatePosition(v14);
        }
        v17 = *(GameObject **)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 3, 0) + 1632);
        if ( v17 )
        {
          v18 = v8[89] + -200.0;
          v19 = v8[90] + 0.0;
          v20[0] = v8[88] + 0.0;
          v20[1] = v18;
          v20[2] = v19;
          GameObject::SetPosition(v17, v20, 1);
          GameObject::ForceUpdatePosition(v17);
        }
      }
    }
    GameObject::SetPosition(v5, v8 + 88, 1);
    return GameObject::ForceUpdatePosition(v5);
  }
  return result;
}


// ===== 45e890 Script_PlayActorAnim::Execute(bool,int) =====
int __fastcall Script_PlayActorAnim::Execute(int this, int a2, int a3)
{
  _DWORD *v3; // r6
  int v5; // r8
  int v6; // r1
  int v7; // r3
  int v8; // r10
  ObjectHandle *v9; // [sp+Ch] [bp-38h]
  _DWORD v10[4]; // [sp+10h] [bp-34h] BYREF
  std::string v11; // [sp+24h] [bp-20h] BYREF

  v3 = (_DWORD *)this;
  if ( !a2 )
  {
    v5 = *(_DWORD *)(this + 12);
    v9 = (ObjectHandle *)(this + 16);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v11, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    ObjectManager::GetObjectByName(
      (ObjectManager *)v10,
      (const char *)dword_99F764,
      *(char **)(v5 + 24),
      a3,
      nullptr,
      0);
    v6 = v10[2];
    v7 = v10[1];
    v3[4] = v10[0];
    v3[6] = v6;
    v3[5] = v7;
    this = ObjectHandle::GetObject(v9, 0);
    if ( this )
    {
      this = ObjectHandle::operator Character *(v9);
      v8 = *(_DWORD *)(v5 + 16);
      if ( this )
      {
        *(_DWORD *)(*(_DWORD *)(Arrays::AnimTable::members + 20 * (v8 + 2) + 12) + 8) = *(_DWORD *)(v5 + 8);
        *(_DWORD *)(*(_DWORD *)(Arrays::AnimTable::members + 20 * (v8 + 8) + 12) + 8) = *(_DWORD *)(v5 + 12);
        return CharStateMachine::SM_SetAnimState((CharStateMachine *)(this + 1276), v8 + 2, 0, 1);
      }
    }
  }
  return this;
}


// ===== 45ea04 Script_KillActor::Execute(bool,int) =====
int __fastcall Script_KillActor::Execute(Script_KillActor *this, bool a2, int a3)
{
  int v4; // r10
  int result; // r0
  int v6; // r5
  _BYTE v7[12]; // [sp+Ch] [bp-10h] BYREF
  std::string v8; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v7, 0);
  if ( result )
  {
    result = ObjectHandle::operator Character *(v7);
    v6 = result;
    if ( result )
    {
      *(_BYTE *)(*(_DWORD *)(result + 888) + 9) = 1;
      result = v2Controller::Cmd_Kill(*(v2Controller **)(result + 888), nullptr, 0);
      *(_BYTE *)(*(_DWORD *)(v6 + 888) + 9) = 0;
    }
  }
  return result;
}


// ===== 45eb14 Script_ShowActor::Execute(bool,int) =====
GameObject *__fastcall Script_ShowActor::Execute(Script_ShowActor *this, bool a2, int a3)
{
  int v5; // r10
  GameObject *result; // r0
  GameObject *v7; // r6
  _BYTE v8[12]; // [sp+8h] [bp-48h] BYREF
  std::string v9; // [sp+1Ch] [bp-34h] BYREF
  std::string v10; // [sp+34h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  ObjectManager::GetObjectByName((ObjectManager *)v8, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  result = (GameObject *)ObjectHandle::GetObject((ObjectHandle *)v8, 0);
  if ( result )
  {
    result = (GameObject *)ObjectHandle::operator GameObject *(v8);
    v7 = result;
    if ( result )
    {
      GameObject::DisableZoning(result);
      return (GameObject *)(*(int (__fastcall **)(GameObject *, int))(*(_DWORD *)v7 + 64))(v7, 1);
    }
  }
  return result;
}


// ===== 45ec50 Script_LookActor::Execute(bool,int) =====
int __fastcall Script_LookActor::Execute(Script_LookActor *this, bool a2, int a3)
{
  int v4; // r6
  v2Controller **Object; // r7
  char *v6; // r8
  GameObject *v7; // r6
  int i; // r8
  int v10; // r9
  _DWORD v11[4]; // [sp+8h] [bp-4Ch] BYREF
  _DWORD v12[3]; // [sp+18h] [bp-3Ch] BYREF
  _BYTE v13[12]; // [sp+24h] [bp-30h] BYREF
  std::string v14; // [sp+34h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  ObjectManager::GetObjectByName((ObjectManager *)v13, (const char *)dword_99F764, *(char **)(v4 + 20), a3, nullptr, 0);
  Object = (v2Controller **)ObjectHandle::GetObject((ObjectHandle *)v13, 0);
  if ( Object )
    Object = (v2Controller **)ObjectHandle::operator Character *(v13);
  ObjectHandle::ObjectHandle((ObjectHandle *)v12, nullptr);
  v6 = *(char **)(v4 + 12);
  if ( LC_API_STRCMP_0(v6, "HighestThreatPlayer") )
    ObjectManager::GetObjectByName((ObjectManager *)v11, (const char *)dword_99F764, v6, a3, nullptr, 0);
  else
    ObjectManager::GetObjectByName(
      (ObjectManager *)v11,
      (const char *)dword_99F764,
      v6,
      a3,
      nullptr,
      *(_DWORD *)(v4 + 20));
  v12[2] = v11[2];
  v12[0] = v11[0];
  v12[1] = v11[1];
  v7 = (GameObject *)ObjectHandle::GetObject((ObjectHandle *)v12, 0);
  if ( v7 )
    v7 = (GameObject *)ObjectHandle::operator GameObject *(v12);
  if ( Object && ObjectHandle::GetObject((ObjectHandle *)v12, 0) )
  {
    if ( (*((int (__fastcall **)(v2Controller **))*Object + 10))(Object)
      && Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
    {
      for ( i = 1; i != 4; ++i )
      {
        v10 = *(_DWORD *)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, i, 0) + 1632);
        if ( v10 )
        {
          *(_BYTE *)(*(_DWORD *)(v10 + 888) + 9) = 1;
          v2Controller::Cmd_LookAt(*(v2Controller **)(v10 + 888), v7);
          *(_BYTE *)(*(_DWORD *)(v10 + 888) + 9) = 0;
        }
      }
    }
    *((_BYTE *)Object[222] + 9) = 1;
    v2Controller::Cmd_LookAt(Object[222], v7);
    *((_BYTE *)Object[222] + 9) = 0;
  }
  return ObjectHandle::GetObject((ObjectHandle *)v12, 0);
}


// ===== 45eec0 Script_StopActor::Execute(bool,int) =====
int __fastcall Script_StopActor::Execute(Script_StopActor *this, bool a2, int a3)
{
  int v4; // r10
  char *v5; // r6
  int result; // r0
  _DWORD *v7; // r6
  int v8; // r8
  int v9; // r11
  _DWORD *v10; // r2
  int v11; // r3
  int v12; // r7
  _BYTE v13[12]; // [sp+8h] [bp-3Ch] BYREF
  _BYTE v14[12]; // [sp+14h] [bp-30h] BYREF
  std::string v15; // [sp+24h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v15, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  v5 = *(char **)(v4 + 12);
  result = LC_API_STRCASECMP_0(v5, "All");
  if ( result )
  {
    ObjectManager::GetObjectByName((ObjectManager *)v13, (const char *)dword_99F764, v5, a3, nullptr, 0);
    result = ObjectHandle::GetObject((ObjectHandle *)v13, 0);
    if ( result )
    {
      result = ObjectHandle::operator Character *(v13);
      v12 = result;
      if ( result )
      {
        *(_BYTE *)(*(_DWORD *)(result + 888) + 9) = 1;
        result = v2Controller::Cmd_Stop(*(_DWORD *)(result + 888));
        *(_BYTE *)(*(_DWORD *)(v12 + 888) + 9) = 0;
      }
    }
  }
  else
  {
    v7 = *(_DWORD **)(dword_99F764 + 20);
    v8 = dword_99F764 + 12;
    while ( (_DWORD *)v8 != v7 )
    {
      while ( 1 )
      {
        if ( v7[11] )
        {
          ObjectBase::GetHandle((ObjectBase *)v14);
          result = ObjectHandle::operator Character *(v14);
          v9 = result;
          if ( result )
          {
            *(_BYTE *)(*(_DWORD *)(result + 888) + 9) = 1;
            result = v2Controller::Cmd_Stop(*(_DWORD *)(result + 888));
            *(_BYTE *)(*(_DWORD *)(v9 + 888) + 9) = 0;
          }
        }
        v10 = (_DWORD *)v7[3];
        if ( !v10 )
          break;
        while ( v10[2] )
          v10 = (_DWORD *)v10[2];
        v7 = v10;
        if ( (_DWORD *)v8 == v10 )
          return result;
      }
      v11 = v7[1];
      if ( v7 == *(_DWORD **)(v11 + 12) )
      {
        do
        {
          v7 = (_DWORD *)v11;
          v11 = *(_DWORD *)(v11 + 4);
        }
        while ( *(_DWORD **)(v11 + 12) == v7 );
        v10 = (_DWORD *)v7[3];
      }
      if ( v10 != (_DWORD *)v11 )
        v7 = (_DWORD *)v11;
    }
  }
  return result;
}


// ===== 45f0a8 Script_MoveActor::Execute(bool,int) =====
int __fastcall Script_MoveActor::Execute(Script_MoveActor *this, PhysicalObject *a2, int a3)
{
  int v5; // r7
  int Object; // r5
  int v7; // r0
  GameObject *v8; // r10
  char v9; // r3
  char v10; // r3
  _DWORD *v11; // r3
  int v13; // r0
  bool v14; // zf
  _BYTE v16[12]; // [sp+10h] [bp-3Ch] BYREF
  _BYTE v17[12]; // [sp+1Ch] [bp-30h] BYREF
  std::string v18; // [sp+2Ch] [bp-20h] BYREF

  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v18, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v18);
  std::string::~string(&v18);
  ObjectManager::GetObjectByName((ObjectManager *)v17, (const char *)dword_99F764, *(char **)(v5 + 24), a3, nullptr, 0);
  Object = ObjectHandle::GetObject((ObjectHandle *)v17, 0);
  if ( Object )
    Object = ObjectHandle::operator Character *(v17);
  ObjectManager::GetObjectByName((ObjectManager *)v16, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  v7 = ObjectHandle::GetObject((ObjectHandle *)v16, 0);
  if ( v7 )
  {
    v13 = ObjectHandle::operator GameObject *(v16);
    v14 = v13 == 0;
    if ( v13 )
      v14 = Object == 0;
    v8 = (GameObject *)v13;
    v7 = !v14;
  }
  else
  {
    v8 = nullptr;
  }
  v9 = *(_BYTE *)(v5 + 28);
  *((_DWORD *)this + 5) = Object;
  *((_BYTE *)this + 16) = v9;
  if ( Object )
    v10 = *(_BYTE *)(Object + 132);
  else
    v10 = 0;
  *((_BYTE *)this + 24) = v10;
  if ( v7 )
  {
    if ( *(_BYTE *)(v5 + 16) )
    {
      GameObject::DisableCollisions((GameObject *)Object);
      *(_BYTE *)(*(_DWORD *)(Object + 888) + 9) = 1;
      if ( a2 )
        goto LABEL_21;
    }
    else
    {
      *(_BYTE *)(*(_DWORD *)(Object + 888) + 9) = 1;
      if ( a2 )
        goto LABEL_21;
    }
    if ( *((_BYTE *)this + 24) )
    {
      if ( !*(_BYTE *)(v5 + 28) )
      {
LABEL_18:
        *(_BYTE *)(*(_DWORD *)(Object + 888) + 9) = 0;
        return ObjectHandle::GetObject((ObjectHandle *)v16, 0);
      }
      GameObject::SetPhysicalObject((GameObject *)Object, a2, (int)a2);
      *(_BYTE *)(Object + 132) = (_BYTE)a2;
    }
    v2Controller::Cmd_MoveTo(*(_DWORD *)(Object + 888), v8);
    v11 = *(_DWORD **)(Object + 512);
    if ( v11 != (_DWORD *)(Object + 512) )
    {
      do
        v11 = (_DWORD *)*v11;
      while ( (_DWORD *)(Object + 512) != v11 );
      goto LABEL_18;
    }
    *((_BYTE *)this + 16) = 0;
LABEL_21:
    v2Controller::Cmd_WarpTo(*(_DWORD *)(Object + 888));
    *(_BYTE *)(*(_DWORD *)(Object + 888) + 9) = 0;
    return ObjectHandle::GetObject((ObjectHandle *)v16, 0);
  }
  *((_BYTE *)this + 16) = 0;
  return ObjectHandle::GetObject((ObjectHandle *)v16, 0);
}


// ===== 45f2fc Script_AISetInt::Execute(bool,int) =====
char *__fastcall Script_AISetInt::Execute(Script_AISetInt *this, bool a2, int a3)
{
  int v4; // r7
  char *result; // r0
  char *v6; // r5
  char *v7[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v8; // [sp+1Ch] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v4 + 20), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v7, 0);
  v6 = result;
  if ( result )
  {
    result = (char *)(*(int (__fastcall **)(char *))(*(_DWORD *)result + 36))(result);
    if ( result )
    {
      result = *((char **)v6 + 249);
      if ( result )
        return (char *)LuaScript::SetInt((LuaScript *)result, *(glitch::core **)(v4 + 12), *(_DWORD *)(v4 + 24));
    }
  }
  return result;
}


// ===== 45f400 Script_SpawnCharacter::Execute(bool,int) =====
int __fastcall Script_SpawnCharacter::Execute(Script_SpawnCharacter *this, bool a2, bool a3)
{
  int v4; // r10
  int result; // r0
  _BYTE v6[12]; // [sp+Ch] [bp-10h] BYREF
  std::string v7; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr);
  result = ObjectHandle::operator Character *(v6);
  if ( result )
    return CharStateMachine::SM_SetSpawnState((CharStateMachine *)(result + 1276), 0, 0);
  return result;
}


// ===== 45f4e8 Script_PutCharacterInLimbus::Execute(bool,int) =====
int __fastcall Script_PutCharacterInLimbus::Execute(Script_PutCharacterInLimbus *this, bool a2, int a3)
{
  int v4; // r7
  int result; // r0
  _BYTE v6[12]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v7; // [sp+1Ch] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 16), a3, nullptr, 0);
  result = ObjectHandle::operator Character *(v6);
  if ( result )
    return CharStateMachine::SM_SetLimbusState((CharStateMachine *)(result + 1276), *(_BYTE *)(v4 + 8));
  return result;
}


// ===== 45f5cc Script_IncFaeryLevel::Execute(bool,int) =====
PlayerManager *__fastcall Script_IncFaeryLevel::Execute(Script_IncFaeryLevel *this, bool a2, int a3)
{
  int v3; // r8
  PlayerManager *result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  if ( !*(_BYTE *)(GetOnline() + 5) )
  {
    result = (PlayerManager *)dword_99F76C;
LABEL_3:
    result = PlayerManager::GetLocalPlayer(result, 0, 1)->character_660;
    if ( result )
      return (PlayerManager *)Character::IncFaeryLevel(result, *(_DWORD *)(v3 + 8));
    return result;
  }
  result = (PlayerManager *)PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
  if ( result )
  {
    result = (PlayerManager *)dword_99F76C;
    if ( !*(_BYTE *)(dword_99F76C + 1817) )
      goto LABEL_3;
  }
  return result;
}


// ===== 45f6c8 Script_SetFaeryState::Execute(bool,int) =====
Character *__fastcall Script_SetFaeryState::Execute(Script_SetFaeryState *this, bool a2, int a3)
{
  int v3; // r8
  Character *result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
    return (Character *)Character::SetFaeryState(result, *(_DWORD *)(v3 + 8), *(_DWORD *)(v3 + 12));
  return result;
}


// ===== 45f78c Script_HideFlash::Execute(bool,int) =====
char *__fastcall Script_HideFlash::Execute(Script_HideFlash *this, bool a2, int a3)
{
  int v4; // r8
  MenuManager *v5; // r0
  int v6; // r5
  char *result; // r0
  MenuManager *Instance; // r10
  RenderFX *HUDRoot; // r9
  RenderFX *v10; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  _BYTE v13[12]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v14; // [sp+1Ch] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  v6 = *((_DWORD *)this + 4);
  if ( v6 )
    return (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 16))(v6);
  Instance = (MenuManager *)MenuManager::GetInstance(v5);
  result = LC_API_STRSTR_0(*(const char **)(v4 + 16), "HUD");
  if ( result )
  {
    HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
    v10 = (RenderFX *)MenuManager::GetHUDRoot(Instance);
    Root = (gameswf::root *)RenderFX::GetRoot(v10);
    root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
    v13[4] = 0;
    v13[0] = 0;
    v13[1] = 1;
    RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayOfCurrentHud", (const gameswf::as_value *)v13, 1);
    result = (char *)gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  }
  v6 = *((_DWORD *)this + 4);
  if ( v6 )
    return (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 16))(v6);
  return result;
}


// ===== 45f8c8 Script_ShowFlash::Execute(bool,int) =====
char *__fastcall Script_ShowFlash::Execute(Script_ShowFlash *this, bool a2, int a3)
{
  int v4; // r8
  MenuManager *v5; // r0
  int v6; // r5
  char *result; // r0
  RenderFX *HUDRoot; // r8
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  gameswf::root *v11; // r0
  int v12; // r0
  gameswf::root *v13; // r0
  gameswf::character *v14; // r0
  MenuManager *v15; // [sp+Ch] [bp-48h]
  _BYTE v16[12]; // [sp+10h] [bp-44h] BYREF
  _BYTE v17[4]; // [sp+1Ch] [bp-38h] BYREF
  double v18; // [sp+20h] [bp-34h]
  double v19; // [sp+28h] [bp-2Ch]
  std::string v20; // [sp+34h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v20, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
  std::string::~string(&v20);
  v6 = *((_DWORD *)this + 4);
  if ( v6 )
    return (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 12))(v6);
  MenuManager::GetInstance(v5);
  result = LC_API_STRSTR_0(*(const char **)(v4 + 16), "HUD");
  if ( result )
  {
    HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
    Root = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
    root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
    RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayRightHud", nullptr, 0);
    v11 = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
    v15 = (MenuManager *)gameswf::root::get_root_movie(v11);
    v12 = *(_DWORD *)(MenuManager::GetInstance(v15) + 264);
    v17[1] = 2;
    v17[0] = 0;
    v19 = (double)v12;
    v18 = (double)v12;
    RenderFX::InvokeASCallback(HUDRoot, v15, "FillActionIcon", (const gameswf::as_value *)v17, 1);
    gameswf::as_value::drop_refs((gameswf::as_value *)v17);
    v13 = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
    v14 = (gameswf::character *)gameswf::root::get_root_movie(v13);
    v16[0] = 0;
    v16[1] = 1;
    v16[4] = 1;
    RenderFX::InvokeASCallback(HUDRoot, v14, "DisplayOfCurrentHud", (const gameswf::as_value *)v16, 1);
    result = (char *)gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  }
  v6 = *((_DWORD *)this + 4);
  if ( v6 )
    return (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 12))(v6);
  return result;
}


// ===== 45fa9c Script_PlayEffect::Execute(bool,int) =====
int __fastcall Script_PlayEffect::Execute(int this, int a2, int a3)
{
  int v4; // r6
  int v5; // r11
  int Object; // r10
  float v7; // r7
  float v8; // r8
  int v9[3]; // [sp+8h] [bp-3Ch] BYREF
  _BYTE v10[12]; // [sp+14h] [bp-30h] BYREF
  std::string v11; // [sp+24h] [bp-20h] BYREF

  if ( !a2 )
  {
    v4 = *(_DWORD *)(this + 12);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v11, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    ObjectManager::GetObjectByName(
      (ObjectManager *)v10,
      (const char *)dword_99F764,
      *(char **)(v4 + 32),
      a3,
      nullptr,
      0);
    v5 = *(_DWORD *)(v4 + 8);
    Object = ObjectHandle::GetObject((ObjectHandle *)v10, 0);
    if ( Object )
      Object = ObjectHandle::operator GameObject *(v10);
    v7 = (float)*(int *)(v4 + 20);
    v8 = (float)*(int *)(v4 + 24);
    *(float *)v9 = (float)*(int *)(v4 + 16);
    *(float *)&v9[1] = v7;
    *(float *)&v9[2] = v8;
    return VisualFXManager::PlayAnimFXSet((int)&Singleton<VisualFXManager>::s_inst, v5, v9, Object, 0);
  }
  return this;
}


// ===== 45fbe0 Script_LeaveSafeZone::Execute(bool,int) =====
void __fastcall Script_LeaveSafeZone::Execute(Script_LeaveSafeZone *this, bool a2, int a3)
{
  std::string v3; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v3, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  std::string::~string(&v3);
  VoxSoundManager::SetInSafeZoneMusic((VoxSoundManager *)VoxSoundManager::s_instance, 0);
}


// ===== 45fc80 Script_EnterSafeZone::Execute(bool,int) =====
void __fastcall Script_EnterSafeZone::Execute(Script_EnterSafeZone *this, bool a2, int a3)
{
  std::string v3; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v3, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  std::string::~string(&v3);
  VoxSoundManager::SetInSafeZoneMusic((VoxSoundManager *)VoxSoundManager::s_instance, 1);
}


// ===== 45fd20 Script_PlayLevelMusic::Execute(bool,int) =====
void __fastcall Script_PlayLevelMusic::Execute(Script_PlayLevelMusic *this, bool a2, int a3)
{
  int v3; // r8
  int CurrentLevel; // r0
  VoxSoundManager *v5; // r5
  std::string v6; // [sp+Ch] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v6, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  std::string::~string(&v6);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    v5 = (VoxSoundManager *)VoxSoundManager::s_instance;
    VoxSoundManager::PlayMusic(
      (VoxSoundManager *)VoxSoundManager::s_instance,
      *(_DWORD *)(CurrentLevel + 284),
      1,
      0,
      *(_DWORD *)(v3 + 8));
    if ( *((_BYTE *)v5 + 49) )
      VoxSoundManager::SetMusicState(v5, "ambient");
    else
      VoxSoundManager::SetMusicState(v5, "combat");
  }
}


// ===== 45fe2c Script_StopSound::Execute(bool,int) =====
int __fastcall Script_StopSound::Execute(Script_StopSound *this, bool a2, int a3)
{
  int v3; // r6
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  if ( *(_BYTE *)(v3 + 12) )
    return VoxSoundManager::StopMusic((VoxSoundManager *)VoxSoundManager::s_instance, *(_DWORD *)(v3 + 8));
  else
    return VoxSoundManager::Stop(
             (VoxSoundManager *)VoxSoundManager::s_instance,
             *(_DWORD *)(v3 + 16),
             *(_DWORD *)(v3 + 8));
}


// ===== 45fefc Script_PlaySound::Execute(bool,int) =====
void __fastcall Script_PlaySound::Execute(Script_PlaySound *this, int a2, int a3)
{
  int v3; // r6
  std::string v4; // [sp+Ch] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  if ( !a2 || *(_BYTE *)(v3 + 12) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v4, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v4);
    std::string::~string(&v4);
    if ( *(_BYTE *)(v3 + 12) )
      VoxSoundManager::PlayMusic(
        (VoxSoundManager *)VoxSoundManager::s_instance,
        *(_DWORD *)(v3 + 16),
        *(unsigned __int8 *)(v3 + 13),
        *(_DWORD *)(v3 + 8) != 0,
        2000);
    else
      VoxSoundManager::Play(
        (VoxSoundManager *)VoxSoundManager::s_instance,
        *(_DWORD *)(v3 + 16),
        *(unsigned __int8 *)(v3 + 13),
        *(_DWORD *)(v3 + 8),
        *(unsigned __int8 *)(v3 + 12),
        *(_BYTE *)(v3 + 12));
  }
}


// ===== 460004 Script_SetCameraTarget::Execute(bool,int) =====
int *__fastcall Script_SetCameraTarget::Execute(Script_SetCameraTarget *this, int a2, int a3)
{
  int v4; // r8
  int *result; // r0
  int *v6; // r5
  char *v7; // r1
  int v8; // r7
  int v9; // r2
  GameObject *character_660; // r1
  int v11; // r2
  std::string v12; // [sp+4h] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v12, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  result = (int *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    v6 = (int *)result[74];
    if ( v6 )
    {
      v7 = *(char **)(v4 + 16);
      v8 = (unsigned __int8)*v7;
      if ( *v7 )
      {
        if ( a2 )
          v9 = 0;
        else
          v9 = *(_DWORD *)(v4 + 8);
        return CameraTarget::SetTarget((CameraTarget *)result[74], v7, v9);
      }
      else
      {
        character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, (unsigned __int8)*v7, 1)->character_660;
        if ( a2 )
          v11 = v8;
        else
          v11 = *(_DWORD *)(v4 + 8);
        return CameraTarget::SetTarget(v6, character_660, v11);
      }
    }
  }
  return result;
}


// ===== 460110 Script_PlayCamera::Execute(bool,int) =====
CameraLevel *__fastcall Script_PlayCamera::Execute(Script_PlayCamera *this, int a2, int a3)
{
  int v4; // r10
  CameraLevel *result; // r0
  int v6; // r1
  std::string v7; // [sp+4h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  result = (CameraLevel *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    result = *((CameraLevel **)result + 74);
    if ( result )
    {
      if ( a2 )
        v6 = *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *((_DWORD *)result + 32) + 16);
      else
        v6 = *(_DWORD *)(v4 + 8);
      return (CameraLevel *)CameraLevel::PlayAnim(result, v6, 0, 0);
    }
  }
  return result;
}


// ===== 460204 ScriptManager::~ScriptManager() =====
void __fastcall ScriptManager::~ScriptManager(ScriptManager *this)
{
  void *v2; // r0
  size_t v3; // r1

  ScriptManager::UnLoadAllScripts(this);
  v2 = *((void **)this + 9);
  if ( !v2 )
    goto LABEL_4;
  v3 = (*((_DWORD *)this + 11) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
LABEL_4:
    std::vector<ScriptManager::ScriptCmds>::~vector((int)this + 24);
    std::vector<ScriptManager::ScriptContext>::~vector((int)this + 12);
    return;
  }
  CustomFree(v2);
  std::vector<ScriptManager::ScriptCmds>::~vector((int)this + 24);
  std::vector<ScriptManager::ScriptContext>::~vector((int)this + 12);
}


// ===== 46026c MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage(int,bool) [clone] =====
void MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage()
{
  int v0; // r1

  if ( dword_99FB70 != dword_99FB60 )
  {
    if ( dword_99FB60 == dword_99FB68 - 8 )
    {
      if ( dword_99FB64 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_99FB64, 0x80u);
      dword_99FB6C += 4;
      v0 = *(_DWORD *)dword_99FB6C + 128;
      dword_99FB60 = *(_DWORD *)dword_99FB6C;
      dword_99FB68 = v0;
      dword_99FB64 = dword_99FB60;
    }
    else
    {
      dword_99FB60 += 8;
    }
    if ( TutorialMsg::s_SkipFuncName[0] )
      MenuMessageManager<TutorialMsg,1>::Invoke((MenuManager *)TutorialMsg::s_SkipFuncName[0]);
    if ( dword_99FB70 != dword_99FB60 )
      MenuMessageManager<TutorialMsg,1>::Invoke((MenuManager *)TutorialMsg::s_StartFuncName[0]);
  }
}


// ===== 460338 Script_SkipTutorialMessage::Execute(bool,int) =====
// attributes: thunk
void __fastcall Script_SkipTutorialMessage::Execute(Script_SkipTutorialMessage *this, bool a2, int a3)
{
  MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage();
}


// ===== 46033c Script_SkipAllTutorialMessages::Execute(bool,int) =====
void __fastcall Script_SkipAllTutorialMessages::Execute(Script_SkipAllTutorialMessages *this, bool a2, int a3)
{
  int i; // r3

  for ( i = dword_99FB60; dword_99FB70 != i; dword_99FB60 = i )
  {
    while ( i == dword_99FB68 - 8 )
    {
      if ( dword_99FB64 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_99FB64, 0x80u);
      dword_99FB6C += 4;
      i = *(_DWORD *)dword_99FB6C;
      dword_99FB68 = *(_DWORD *)dword_99FB6C + 128;
      dword_99FB60 = i;
      dword_99FB64 = i;
      if ( dword_99FB70 == i )
        goto LABEL_8;
    }
    i += 8;
  }
LABEL_8:
  MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage();
}


// ===== 4603d0 Script_SkipCharMenuTutorialMessage::Execute(bool,int) =====
int *__fastcall Script_SkipCharMenuTutorialMessage::Execute(Script_SkipCharMenuTutorialMessage *this, bool a2, int a3)
{
  int *result; // r0

  result = &Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst;
  if ( dword_99FBC8 != dword_99FBB8 )
  {
    std::deque<CharMenuTutorialMsg>::pop_front(&dword_99FBB8);
    result = (int *)CharMenuTutorialMsg::s_SkipFuncName;
    if ( CharMenuTutorialMsg::s_SkipFuncName )
      return (int *)MenuMessageManager<CharMenuTutorialMsg,1>::Invoke((MenuManager *)CharMenuTutorialMsg::s_SkipFuncName);
  }
  return result;
}


// ===== 460428 Script_SkipAllCharMenuTutorialMessages::Execute(bool,int) =====
void __fastcall Script_SkipAllCharMenuTutorialMessages::Execute(
        Script_SkipAllCharMenuTutorialMessages *this,
        bool a2,
        int a3)
{
  while ( dword_99FBC8 != dword_99FBB8 )
    std::deque<CharMenuTutorialMsg>::pop_front(&dword_99FBB8);
}


// ===== 460474 MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(int) [clone] =====
int MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages()
{
  int result; // r0

  for ( ; dword_99FB9C != dword_99FB8C; result = std::deque<DialogMsg>::pop_front(&dword_99FB8C) )
    ;
  return result;
}


// ===== 4604c0 ScriptManager::SkipScript(int,bool) =====
void __fastcall ScriptManager::SkipScript(ScriptManager *this, int a2, int a3)
{
  CMessaging *Online; // r0
  CMessaging *v7; // r5
  bool v8; // r2
  CMessage *Message; // r0
  std::string v10; // [sp+4h] [bp-20h] BYREF

  MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
  Online = (CMessaging *)GetOnline();
  if ( *((_BYTE *)Online + 5) && !a3 )
  {
    v7 = (CMessaging *)CMessaging::Get(Online);
    Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgScriptCmd", (const char *)&dword_0 + 1, v8);
    *((_DWORD *)Message + 20) = 1;
    *((_DWORD *)Message + 22) = -1;
    *((_DWORD *)Message + 21) = a2;
    CMessaging::SendMsg(v7, Message);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  if ( *(_DWORD *)this == -1 )
    *(_DWORD *)this = a2;
}


// ===== 4605c0 ScriptManager::StartScript(int,int,bool) =====
void __fastcall ScriptManager::StartScript(ScriptManager *this, int a2, int a3, int a4)
{
  int Switch; // r11
  CMessaging *Online; // r0
  int v10; // r10
  CMessaging *v11; // r11
  bool v12; // r2
  CMessage *Message; // r0
  std::string v14; // [sp+14h] [bp-38h] BYREF
  std::string v15; // [sp+2Ch] [bp-20h] BYREF

  if ( a2 >= 0
    && a2 < -1431655765 * ((*((_DWORD *)this + 4) - *((_DWORD *)this + 3)) >> 2)
    && (!PlayerManager::AllPlayersDead((PlayerManager *)dword_99F76C)
     || *(_BYTE *)(GetOnline() + 5) && *(int *)(dword_99F76C + 1812) > 1) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v15, "SkipAllScripts");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
    std::string::~string(&v15);
    if ( Switch && *(_DWORD *)this == -1 )
      ScriptManager::SkipScript(this, a2, 0);
    Online = (CMessaging *)GetOnline();
    if ( !*((_BYTE *)Online + 5) )
      goto LABEL_16;
    if ( !a4 )
    {
      v10 = 12 * a2;
      if ( !*(_BYTE *)(*((_DWORD *)this + 6) + 12 * a2 + 4) )
      {
        v11 = (CMessaging *)CMessaging::Get(Online);
        Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgScriptCmd", (const char *)&dword_0 + 1, v12);
        *((_DWORD *)Message + 20) = 0;
        *((_DWORD *)Message + 21) = a2;
        *((_DWORD *)Message + 22) = a3;
        CMessaging::SendMsg(v11, Message);
      }
      goto LABEL_12;
    }
    if ( !ScriptManager::IsScriptRunning(this, a2) )
    {
LABEL_16:
      v10 = 12 * a2;
LABEL_12:
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v14, "isTracingScriptCmd");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
      std::string::~string(&v14);
      *(_DWORD *)(*((_DWORD *)this + 3) + v10 + 4) = 0;
      *(_DWORD *)(*((_DWORD *)this + 3) + v10 + 8) = 0;
      *(_DWORD *)(*((_DWORD *)this + 3) + v10) = a3;
      ++*((_DWORD *)this + 1);
    }
  }
}


// ===== 4607f4 Script_ExecScript::Execute(bool,int) =====
void __fastcall Script_ExecScript::Execute(Script_ExecScript *this, bool a2, int a3)
{
  int v3; // r6
  unsigned int v6; // r1
  int v7; // r5
  int v8; // r5
  signed int v9; // r1
  std::string v10; // [sp+4h] [bp-20h] BYREF

  v3 = *((_DWORD *)this + 3);
  v6 = *(_DWORD *)(v3 + 16);
  if ( v6 )
  {
    v8 = *(_DWORD *)(v3 + 20);
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    v9 = Random::s_seed % v6;
    if ( v9 < 0 )
      v9 = -v9;
    ++Random::s_debugRandomCounters;
    v7 = *(_DWORD *)(v8 + 4 * v9);
  }
  else
  {
    v7 = *(_DWORD *)(v3 + 12);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  if ( !*(_BYTE *)(v3 + 8) )
    v7 += dword_9A5FE4;
  *((_DWORD *)this + 4) = v7;
  ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v7, a3, 1);
}


// ===== 460950 Script_DoTutorial::Execute(bool,int) =====
Character *__fastcall Script_DoTutorial::Execute(Character *this, bool a2, int a3)
{
  int v3; // r7
  int v4; // r6
  int IDFromName; // r1

  v3 = *((_DWORD *)this + 3);
  if ( v3 )
  {
    this = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)->character_660;
    v4 = *(_DWORD *)(v3 + 16);
    if ( this )
    {
      this = (Character *)Character::SG_GetGameDifficulty(this);
      if ( !this )
      {
        if ( *(_BYTE *)(dword_99F778 + v4 + 41) )
        {
          this = (Character *)GetOnline();
          if ( !*((_BYTE *)this + 5) )
          {
            IDFromName = ScriptManager::GetIDFromName(
                           (ScriptManager *)&ScriptManager::s_inst,
                           *(const char **)(v3 + 12),
                           1);
            if ( IDFromName != -1 )
              ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 1);
            *(_BYTE *)(dword_99F778 + v4 + 41) = 0;
            if ( lastOpenMenuID == 17 )
              return (Character *)SavegameManager::saveSettings((SavegameManager *)dword_99F778);
            else
              return (Character *)updateJob_thread::Start2((updateJob_thread *)m_updateJobThread2);
          }
        }
      }
    }
  }
  return this;
}


// ===== 460a58 Script_FlushMessages::Execute(bool,int) =====
int __fastcall Script_FlushMessages::Execute(Script_FlushMessages *this, bool a2, int a3)
{
  int result; // r0

  MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
  while ( dword_99FBF4 != dword_99FBE4 )
    std::deque<AchievementMsg>::pop_front(&dword_99FBE4);
  for ( result = MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
        dword_99FAA0 != dword_99FA90;
        result = std::deque<StatusMsg>::pop_front(&dword_99FA90) )
  {
    ;
  }
  for ( ; dword_99FB44 != dword_99FB34; result = std::deque<OnlineStatusMsg>::pop_front(&dword_99FB34) )
    ;
  return result;
}


// ===== 460b1c Script_EnqueueCharMenuTutorialMessage::Execute(bool,int) =====
void __fastcall Script_EnqueueCharMenuTutorialMessage::Execute(
        Script_EnqueueCharMenuTutorialMessage *this,
        bool a2,
        int a3)
{
  _DWORD *v3; // r6
  const char *v4; // r9
  size_t v5; // r0
  const char *v6; // r6
  size_t v7; // r0
  const char *v8; // [sp+8h] [bp-34h] BYREF
  std::string v9; // [sp+Ch] [bp-30h] BYREF
  std::string v10; // [sp+24h] [bp-18h] BYREF
  std::string v11; // [sp+3Ch] [bp+0h] BYREF
  std::string v12; // [sp+54h] [bp+18h] BYREF

  v3 = *((_DWORD **)this + 3);
  std::string::string(&v12, "");
  std::string::string(&v11, "");
  CharMenuTutorialMsg::CharMenuTutorialMsg((CharMenuTutorialMsg *)&v8, -1, &v12, &v11);
  std::string::~string(&v11);
  std::string::~string(&v12);
  v8 = (const char *)v3[6];
  v4 = (const char *)v3[3];
  v5 = LC_API_STRLEN_0(v4);
  std::string::_M_assign(&v9, v4, &v4[v5]);
  v6 = (const char *)v3[5];
  v7 = LC_API_STRLEN_0(v6);
  std::string::_M_assign(&v10, v6, &v6[v7]);
  std::deque<CharMenuTutorialMsg>::push_back((int)&dword_99FBB8, &v8);
  std::string::~string(&v10);
  std::string::~string(&v9);
}


// ===== 460c30 std::deque<DialogMsg,std::allocator<DialogMsg>>::_M_push_back_aux_v(DialogMsg const&) =====
void __fastcall std::deque<DialogMsg>::_M_push_back_aux_v(int a1, const DialogMsg *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  int *v7; // r2
  int v8; // r3
  int v9; // r2
  char *v10; // r1
  int v11; // r7
  int v12; // r9
  char *v13; // r6
  signed int v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r2
  unsigned int v18; // r8
  char *v19; // r0
  const void *v20; // r1
  size_t v21; // r2
  char *v22; // r10
  void *v23; // r0
  size_t v24; // r1

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v10 = *(char **)(a1 + 12);
    v11 = ((v2 - v10) >> 2) + 1;
    v12 = ((v2 - v10) >> 2) + 2;
    if ( v4 <= 2 * v12 )
    {
      if ( v4 )
        v17 = *(_DWORD *)(a1 + 36);
      else
        v17 = 1;
      v18 = v4 + 2 + v17;
      v19 = (char *)std::allocator<DialogMsg *>::allocate(a1 + 32, v18);
      v20 = *(const void **)(a1 + 12);
      v21 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v20;
      v22 = v19;
      v13 = &v19[4 * ((v18 - v12) >> 1)];
      if ( v21 )
        memmove(&v19[4 * ((v18 - v12) >> 1)], v20, v21);
      v23 = *(void **)(a1 + 32);
      if ( v23 )
      {
        v24 = 4 * *(_DWORD *)(a1 + 36);
        if ( v24 > 0x80 )
          CustomFree(v23);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, v24);
      }
      *(_DWORD *)(a1 + 32) = v22;
      *(_DWORD *)(a1 + 36) = v18;
    }
    else
    {
      v13 = (char *)(v3 + 4 * ((v4 - v12) >> 1));
      if ( v10 > v13 )
      {
        if ( v2 + 4 != v10 )
          memmove(v13, v10, v2 + 4 - v10);
      }
      else
      {
        v14 = v2 + 4 - v10;
        if ( v14 > 0 )
          memmove(&v13[4 * v11 - v14], v10, v14);
      }
    }
    *(_DWORD *)(a1 + 12) = v13;
    v15 = *(_DWORD *)v13;
    v2 = &v13[4 * v11 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v13 + 76;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 28) = v2;
    v16 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 76;
    *(_DWORD *)(a1 + 20) = v16;
  }
  *((_DWORD *)v2 + 1) = std::allocator<DialogMsg>::allocate();
  DialogMsg::DialogMsg(*(DialogMsg **)(a1 + 16), a2);
  v7 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v7;
  v8 = *v7;
  v9 = *v7 + 76;
  *(_DWORD *)(a1 + 16) = v8;
  *(_DWORD *)(a1 + 24) = v9;
  *(_DWORD *)(a1 + 20) = v8;
}


// ===== 460db0 std::deque<DialogMsg,std::allocator<DialogMsg>>::push_back(DialogMsg const&) =====
void __fastcall std::deque<DialogMsg>::push_back(int a1, const DialogMsg *a2)
{
  if ( *(_DWORD *)(a1 + 16) == *(_DWORD *)(a1 + 24) - 76 )
  {
    std::deque<DialogMsg>::_M_push_back_aux_v(a1, a2);
  }
  else
  {
    DialogMsg::DialogMsg(*(DialogMsg **)(a1 + 16), a2);
    *(_DWORD *)(a1 + 16) += 76;
  }
}


// ===== 460dec MenuMessageManager<DialogMsg,1>::EnqueueMessage(DialogMsg const&,int,bool) [clone] =====
int __fastcall MenuMessageManager<DialogMsg,1>::EnqueueMessage(int a1, int a2)
{
  int result; // r0
  _DWORD v4[5]; // [sp+0h] [bp-14h] BYREF

  result = std::deque<DialogMsg>::push_back(&dword_99FB8C, a1);
  if ( a2 )
  {
    v4[0] = dword_99FB8C;
    v4[1] = dword_99FB90;
    v4[2] = dword_99FB94;
    v4[3] = dword_99FB98;
    result = std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(&dword_99FB9C, v4);
    if ( result == 1 )
      return MenuMessageManager<DialogMsg,1>::Invoke(DialogMsg::s_StartFuncName[0]);
  }
  return result;
}


// ===== 460e68 Script_CONSOLE::Execute(bool,int) =====
void __fastcall Script_CONSOLE::Execute(Script_CONSOLE *this, bool a2, int a3)
{
  int v3; // r8
  int Switch; // r6
  int Constant; // r0
  _BYTE v6[76]; // [sp+18h] [bp-7Ch] BYREF
  std::string v7; // [sp+64h] [bp-30h] BYREF
  std::string v8; // [sp+7Ch] [bp-18h] BYREF
  std::string v9; // [sp+94h] [bp+0h] BYREF
  std::string v10; // [sp+ACh] [bp+18h] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "DisplayScriptConsoleAsDialog");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  if ( Switch )
  {
    if ( *(_DWORD *)(v3 + 12) )
    {
      std::string::string((int)&v8, "Console Text");
      std::string::string((int)&v7, *(char **)(v3 + 12));
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "DialogStyles", "BottomBubbleAvatarLeft");
      DialogMsg::DialogMsg((DialogMsg *)v6, &v8, &v7, Constant, -1);
      std::string::~string(&v7);
      std::string::~string(&v8);
      MenuMessageManager<DialogMsg,1>::EnqueueMessage((int)v6, 1);
      DialogMsg::~DialogMsg((DialogMsg *)v6);
    }
  }
}


// ===== 460fe8 Script_StartDialog::Execute(bool,int) =====
void __fastcall Script_StartDialog::Execute(Script_StartDialog *this, int a2, int a3)
{
  int *v3; // r6
  int v4; // r7
  _BYTE v5[76]; // [sp+10h] [bp-68h] BYREF
  std::string v6; // [sp+5Ch] [bp-1Ch] BYREF

  if ( !a2 )
  {
    v3 = *((int **)this + 3);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v6, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
    v4 = v3[3];
    if ( v4 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "DialogStyles", "EnterLocationDialog")
      || dword_99FB9C == dword_99FB8C )
    {
      DialogMsg::DialogMsg((DialogMsg *)v5, 0, v3[4], v3[3], v3[2]);
      MenuMessageManager<DialogMsg,1>::EnqueueMessage(v5, 1);
      DialogMsg::~DialogMsg((DialogMsg *)v5);
    }
    else
    {
      MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
    }
  }
}


// ===== 461114 Script_StartDialogID::Execute(bool,int) =====
int __fastcall Script_StartDialogID::Execute(int this, int a2, int a3)
{
  int v3; // r9
  int v4; // r8
  int i; // r7
  int v6; // r0
  _DWORD v7[4]; // [sp+4h] [bp-3Ch] BYREF
  int v8; // [sp+14h] [bp-2Ch] BYREF
  int v9; // [sp+18h] [bp-28h]
  int v10; // [sp+1Ch] [bp-24h]
  std::string v11; // [sp+24h] [bp-1Ch] BYREF

  if ( !a2 )
  {
    v3 = *(_DWORD *)(this + 12);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v11, "isTracingScriptCmd");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    v10 = 0;
    v8 = 0;
    v9 = 0;
    if ( GetDialogMsgListById(*(_DWORD *)(v3 + 8), &v8) )
    {
      v4 = v9;
      for ( i = v8; v4 != i; i += 76 )
      {
        v6 = i;
        MenuMessageManager<DialogMsg,1>::EnqueueMessage(v6, 0);
      }
      v7[0] = dword_99FB8C;
      v7[1] = dword_99FB90;
      v7[2] = dword_99FB94;
      v7[3] = dword_99FB98;
      if ( std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(&dword_99FB9C, v7) == 1 )
        MenuMessageManager<DialogMsg,1>::Invoke(DialogMsg::s_StartFuncName[0]);
    }
    return std::vector<DialogMsg>::~vector(&v8);
  }
  return this;
}


// ===== 46124c std::deque<TutorialMsg,std::allocator<TutorialMsg>>::_M_push_back_aux_v(TutorialMsg const&) =====
void *__fastcall std::deque<TutorialMsg>::_M_push_back_aux_v(_DWORD *a1, _DWORD *a2)
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
  signed int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // r2
  unsigned int v20; // r8
  char *v21; // r0
  const void *v22; // r1
  size_t v23; // r2
  char *v24; // r10
  void *v25; // r0
  size_t v26; // r1

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
        v19 = a1[9];
      else
        v19 = 1;
      v20 = v4 + 2 + v19;
      v21 = (char *)std::allocator<TutorialMsg *>::allocate((int)(a1 + 8), v20);
      v22 = (const void *)a1[3];
      v23 = a1[7] + 4 - (_DWORD)v22;
      v24 = v21;
      v15 = &v21[4 * ((v20 - v14) >> 1)];
      if ( v23 )
        memmove(&v21[4 * ((v20 - v14) >> 1)], v22, v23);
      v25 = (void *)a1[8];
      if ( v25 )
      {
        v26 = 4 * a1[9];
        if ( v26 > 0x80 )
          CustomFree(v25);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v25, v26);
      }
      a1[8] = v24;
      a1[9] = v20;
    }
    else
    {
      v15 = (char *)(v3 + 4 * ((v4 - v14) >> 1));
      if ( v12 > v15 )
      {
        if ( v2 + 4 != v12 )
          memmove(v15, v12, v2 + 4 - v12);
      }
      else
      {
        v16 = v2 + 4 - v12;
        if ( v16 > 0 )
          memmove(&v15[4 * v13 - v16], v12, v16);
      }
    }
    a1[3] = v15;
    v17 = *(_DWORD *)v15;
    v2 = &v15[4 * v13 - 4];
    a1[2] = *(_DWORD *)v15 + 128;
    a1[1] = v17;
    a1[7] = v2;
    v18 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 128;
    a1[5] = v18;
  }
  result = std::allocator<TutorialMsg>::allocate();
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


// ===== 4613d4 Script_EnqueueTutorialMessage::Execute(bool,int) =====
int __fastcall Script_EnqueueTutorialMessage::Execute(int this, bool a2, int a3)
{
  int v3; // r3
  int v4; // r2
  int v5; // r3
  _DWORD v6[4]; // [sp+0h] [bp-1Ch] BYREF
  int v7; // [sp+10h] [bp-Ch] BYREF
  int v8; // [sp+14h] [bp-8h]

  v3 = *(_DWORD *)(this + 12);
  if ( *(int *)(v3 + 12) >= 0 )
  {
    v8 = *(_DWORD *)(v3 + 8);
    v4 = *(_DWORD *)(v3 + 12);
    v5 = dword_99FB70;
    v7 = v4;
    if ( dword_99FB70 == dword_99FB78 - 8 )
    {
      std::deque<TutorialMsg>::_M_push_back_aux_v(&dword_99FB60, &v7);
    }
    else
    {
      *(_DWORD *)dword_99FB70 = v4;
      *(_DWORD *)(v5 + 4) = v8;
      dword_99FB70 += 8;
    }
    v6[0] = dword_99FB60;
    v6[1] = dword_99FB64;
    v6[2] = dword_99FB68;
    v6[3] = dword_99FB6C;
    this = std::priv::_Deque_iterator_base<TutorialMsg>::_M_subtract(&dword_99FB70, v6);
    if ( this == 1 )
      return MenuMessageManager<TutorialMsg,1>::Invoke((MenuManager *)TutorialMsg::s_StartFuncName[0]);
  }
  return this;
}


// ===== 461498 LevelSavegame::~LevelSavegame() =====
void __fastcall LevelSavegame::~LevelSavegame(LevelSavegame *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_968E88;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 16));
}


// ===== 4614f4 LevelSavegame::~LevelSavegame() =====
void __fastcall LevelSavegame::~LevelSavegame(LevelSavegame *this)
{
  LevelSavegame::~LevelSavegame(this);
  CustomFree(this);
}


// ===== 461510 LevelSavegame::~LevelSavegame() =====
void __fastcall LevelSavegame::~LevelSavegame(LevelSavegame *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_968E88;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 16));
}


// ===== 46156c LevelSavegame::Load(void) =====
int __fastcall LevelSavegame::Load(Savegame **this)
{
  Savegame::load(
    *(this + 1),
    "INFO",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadLevelInfo,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveLevelInfo,
    this);
  return Savegame::load(
           *(this + 1),
           "OBJS",
           (void (*)(IStreamBase *, void *))LevelSavegame::__LoadObjects,
           (void (*)(IStreamBase *, void *))LevelSavegame::__SaveObjects,
           this);
}


// ===== 4615ec LevelSavegame::Save(void) =====
int __fastcall LevelSavegame::Save(int this)
{
  int v1; // r5

  v1 = this;
  if ( *(_DWORD *)(this + 4) )
  {
    if ( !*(_BYTE *)(this + 57) )
    {
      if ( !*(_BYTE *)(GetOnline() + 5) )
        return Savegame::saveAll(*(Savegame **)(v1 + 4));
      this = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
      if ( this )
      {
        if ( !*(_BYTE *)(dword_99F76C + 1817) )
          return Savegame::saveAll(*(Savegame **)(v1 + 4));
      }
    }
  }
  return this;
}


// ===== 461668 IStreamBase::writeAs(std::string const&) =====
int __fastcall IStreamBase::writeAs(IStreamBase *this, const std::string *a2)
{
  int v5; // [sp+4h] [bp-8h] BYREF

  v5 = a2->_M_finish - a2->_M_start_of_storage._M_data + 1;
  IStreamBase::writeAs<int>((int)this, (int)&v5);
  return (*(int (__fastcall **)(IStreamBase *, char *, int, int))(*(_DWORD *)this + 28))(
           this,
           a2->_M_start_of_storage._M_data,
           v5,
           v5 >> 31);
}


// ===== 4616b8 LevelSavegame::__SaveLevelInfo(IStreamBase *,void *) =====
int __fastcall LevelSavegame::__SaveLevelInfo(LevelSavegame *this, IStreamBase *a2, void *a3)
{
  return IStreamBase::writeAs<int>(this, (char *)a2 + 40);
}


// ===== 4616c0 IStreamBase::writeAs<ulong long>(ulong long const&) =====
int __fastcall IStreamBase::writeAs<unsigned long long>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 8, 0);
  if ( result != 8 || v3 )
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


// ===== 461770 IStreamBase::writeAs<uint>(uint const&) =====
int __fastcall IStreamBase::writeAs<unsigned int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
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


// ===== 461820 LevelSavegame::__LoadLevelInfo(IStreamBase *,void *) =====
int __fastcall LevelSavegame::__LoadLevelInfo(LevelSavegame *this, IStreamBase *a2, void *a3)
{
  return IStreamBase::readAs<int>(this, (char *)a2 + 44);
}


// ===== 461828 IStreamBase::readAs<ulong long>(ulong long &) =====
int __fastcall IStreamBase::readAs<unsigned long long>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 8, 0);
  if ( result != 8 || v3 )
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


// ===== 4618d8 `global constructor keyed to'.._.._sources_Game_SaveGames_LevelSavegame.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_SaveGames_LevelSavegame.cpp(CMessage *a1)
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

  dword_9A6018 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6014 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A601D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A601E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A601F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A6020 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A6021 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A6022 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A6023 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A6024 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A6025 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A6026 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A6027 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A6028 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A6029 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A602A = result;
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


// ===== 461b64 std::operator+<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,char const*) [clone] =====
std::string *__fastcall std::operator+<char>(std::string *a1, int a2)
{
  int v4; // r1
  _BYTE *M_end_of_storage; // r2
  std::string *M_data; // r3
  bool v7; // zf
  char *M_finish; // r3
  char *v9; // r2
  char *v11; // r0
  char *v12; // r1
  char *v13; // r6
  char *v14; // r5
  _BYTE *v15; // r0
  _BYTE *v16; // r6
  size_t v17; // r3
  size_t size; // [sp+4h] [bp-4h] BYREF

  v4 = *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20);
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1, v4 + 5);
  *a1->_M_finish = 0;
  std::string::_M_append(a1, *(char **)(a2 + 20), *(char **)(a2 + 16));
  M_data = (std::string *)a1->_M_start_of_storage._M_data;
  v7 = a1 == M_data;
  if ( a1 != M_data )
    M_end_of_storage = a1->_M_buffers._M_end_of_storage;
  M_finish = a1->_M_finish;
  if ( v7 )
    M_end_of_storage = &a1->_M_finish;
  if ( (unsigned int)(M_end_of_storage - M_finish) <= 4 )
  {
    size = std::string::_M_compute_next_size(a1, 4u);
    v11 = (char *)std::allocator<char>::_M_allocate((int)&a1->_M_start_of_storage, size, &size);
    v12 = a1->_M_start_of_storage._M_data;
    v13 = a1->_M_finish;
    v14 = v11;
    if ( v12 != v13 )
      v11 = (char *)memcpy(v11, v12, v13 - v12) + v13 - v12;
    v15 = memcpy(v11, ".bak", 4u);
    v15[4] = 0;
    v16 = v15;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(a1);
    v17 = size;
    a1->_M_start_of_storage._M_data = v14;
    a1->_M_finish = v16 + 4;
    a1->_M_buffers._M_end_of_storage = &v14[v17];
  }
  else
  {
    *M_finish = 46;
    v9 = a1->_M_finish;
    v9[1] = 98;
    v9[3] = 107;
    v9[2] = 97;
    a1->_M_finish[4] = 0;
    a1->_M_finish += 4;
  }
  return a1;
}


// ===== 461ca8 std::string::resize(uint,char) [clone] =====
void __fastcall std::string::resize(std::string *this, unsigned int a2, char a3)
{
  char *M_finish; // r3
  std::string *M_data; // r2
  int v6; // r0
  unsigned int v7; // r5
  _BYTE *p_M_finish; // r2
  char *v9; // r1
  size_t size; // r0

  M_finish = this->_M_finish;
  M_data = (std::string *)this->_M_start_of_storage._M_data;
  v6 = M_finish - (char *)M_data;
  if ( M_finish - (char *)M_data < a2 )
  {
    v7 = a2 - v6;
    if ( a2 != v6 )
    {
      if ( v7 > -2 - v6 )
      {
        __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
        M_data = (std::string *)this->_M_start_of_storage._M_data;
        M_finish = this->_M_finish;
      }
      if ( M_data == this )
        p_M_finish = &this->_M_finish;
      else
        p_M_finish = this->_M_buffers._M_end_of_storage;
      if ( v7 >= p_M_finish - M_finish )
      {
        size = std::string::_M_compute_next_size(this, v7);
        std::string::_M_reserve(this, size);
        M_finish = this->_M_finish;
      }
      if ( (int)(v7 - 1) > 0 )
      {
        v9 = &M_finish[v7 - 1];
        do
          *++M_finish = 0;
        while ( M_finish != v9 );
        M_finish = this->_M_finish;
      }
      M_finish[v7] = 0;
      *this->_M_finish = 0;
      this->_M_finish += v7;
    }
  }
  else if ( M_finish != (char *)M_data + a2 )
  {
    M_data->_M_buffers._M_static_buf[a2] = *M_finish;
    this->_M_finish += (char *)M_data + a2 - M_finish;
  }
}


// ===== 461da8 IStreamBase::readAs(std::string &) =====
void __fastcall IStreamBase::readAs(IStreamBase *this, std::string *a2)
{
  char v4; // r2
  int v5; // r1
  int v6; // [sp+Ch] [bp-8h] BYREF

  IStreamBase::readAs<int>((int)this, (int)&v6);
  v5 = v6;
  if ( v6 > 0 )
    goto LABEL_2;
  v4 = gAssertLevel;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
LABEL_7:
    std::string::resize(a2, 0, v4);
    return;
  }
  if ( gAssertLevel != 1 )
    goto LABEL_7;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "len > 0",
    "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
    87);
  v5 = v6;
  if ( v6 <= 0 )
    goto LABEL_7;
LABEL_2:
  std::string::resize(a2, v5 - 1, v4);
  (*(void (__fastcall **)(IStreamBase *, char *, int, int))(*(_DWORD *)this + 24))(
    this,
    a2->_M_start_of_storage._M_data,
    v6,
    v6 >> 31);
}


// ===== 461e90 LevelSavegame::__LoadObjects(IStreamBase *,void *) =====
int __fastcall LevelSavegame::__LoadObjects(LevelSavegame *this, IStreamBase *a2, void *a3)
{
  const char *v5; // r5
  const char *v6; // r10
  int Object; // r3
  __int64 v8; // r0
  __int64 v9; // r0
  char *M_data; // r11
  __int64 v11; // r6
  char *v13; // [sp+1Ch] [bp-68h]
  _BYTE v14[12]; // [sp+2Ch] [bp-58h] BYREF
  __int64 v15; // [sp+38h] [bp-4Ch] BYREF
  bool v16[4]; // [sp+44h] [bp-40h] BYREF
  unsigned int v17; // [sp+48h] [bp-3Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+4Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+64h] [bp-20h] BYREF

  v13 = (char *)dword_99F764;
  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v19, 0x10u);
  *v19._M_finish = 0;
  v18._M_finish = (char *)&v18;
  v18._M_start_of_storage._M_data = (char *)&v18;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v18, 0x10u);
  *v18._M_finish = 0;
  v5 = (const char *)*((unsigned __int8 *)a2 + 56);
  if ( !*((_BYTE *)a2 + 56) )
  {
    IStreamBase::readAs<unsigned int>(this, &v17);
    if ( v17 )
    {
      v6 = v5;
      do
      {
        IStreamBase::readAs(this, (std::string *)&v19);
        IStreamBase::readAs(this, (std::string *)&v18);
        IStreamBase::readAs<int>(this, v16);
        IStreamBase::readAs<unsigned long long>(this, &v15);
        v9 = ((__int64 (__fastcall *)(LevelSavegame *))*(_DWORD *)(*(_DWORD *)this + 36))(this);
        M_data = v18._M_start_of_storage._M_data;
        v11 = v9;
        if ( LC_API_STRCMP_0("PlayerCharacter_0", v18._M_start_of_storage._M_data) )
        {
          ObjectManager::GetObjectByName((ObjectManager *)v14, v13, M_data, v16[0], v6);
          Object = ObjectHandle::GetObject((ObjectHandle *)v14, (bool)v6);
        }
        else
        {
          Object = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
        }
        if ( Object )
        {
          (*(void (__fastcall **)(int, LevelSavegame *))(*(_DWORD *)Object + 20))(Object, this);
          LODWORD(v8) = (*(int (__fastcall **)(LevelSavegame *))(*(_DWORD *)this + 36))(this);
          if ( v8 == v15 + v11 )
            goto LABEL_9;
          (*(void (__fastcall **)(LevelSavegame *))(*(_DWORD *)this + 36))(this);
        }
        (*(void (__fastcall **)(LevelSavegame *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 32))(
          this,
          *(_DWORD *)this,
          v15 + v11,
          (unsigned __int64)(v15 + v11) >> 32);
LABEL_9:
        ++v5;
      }
      while ( v17 > (unsigned int)v5 );
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  return 16556;
}


// ===== 4620f4 LevelSavegame::DeleteAllLevelSave(uint) =====
int __fastcall LevelSavegame::DeleteAllLevelSave(LevelSavegame *this, unsigned int a2)
{
  std::priv::_String_base<char,std::allocator<char> > *v4[3]; // [sp+10h] [bp-414h] BYREF
  char v5[4]; // [sp+1Ch] [bp-408h] BYREF

  memset(v4, 0, sizeof(v4));
  (*(void (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(dword_99F73C + 52) + 124))(
    *(_DWORD *)(dword_99F73C + 52),
    "./");
  sprintf(v5, "%s%03u_", "dh2_", this);
  std::vector<std::string>::~vector(v4);
  return 1;
}


// ===== 4622c8 LevelSavegame::GetCheckpointFilename(uint,int,bool,std::string &) =====
std::string *__fastcall LevelSavegame::GetCheckpointFilename(
        LevelSavegame *this,
        unsigned int a2,
        int a3,
        std::string *a4,
        std::string *a5)
{
  size_t v6; // r0
  const char *v8; // lr
  char s[64]; // [sp+14h] [bp-44h] BYREF

  if ( a3 )
    v8 = "_multi";
  else
    v8 = "_single";
  sprintf(s, "%s%03u_%01u%s%s", "dh2_", this, a2, v8, "_level.checkpoint");
  v6 = LC_API_STRLEN_0(s);
  return std::string::_M_assign(a4, s, &s[v6]);
}


// ===== 462394 LevelSavegame::CheckpointExists(int) =====
int __fastcall LevelSavegame::CheckpointExists(LevelSavegame *this, LevelSavegame *a2)
{
  unsigned int v4; // r10
  int v5; // r2
  int v6; // r8
  int v8; // r8
  int (__fastcall *v9)(int, char *); // r10
  std::string *v10; // [sp+0h] [bp-38h]
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+4h] [bp-34h] BYREF
  std::string v12; // [sp+1Ch] [bp-1Ch] BYREF

  v12._M_finish = (char *)&v12;
  v12._M_start_of_storage._M_data = (char *)&v12;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v12, 0x10u);
  *v12._M_finish = 0;
  v4 = *((_DWORD *)this + 3);
  if ( !*(_BYTE *)(GetOnline() + 5) )
    goto LABEL_2;
  if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
  {
    if ( !*(_BYTE *)(dword_99F76C + 1817) )
    {
LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }
    v5 = 1;
  }
  else
  {
    v5 = 1;
  }
LABEL_3:
  LevelSavegame::GetCheckpointFilename(a2, v4, v5, &v12, v10);
  if ( (*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 176))(
         *(_DWORD *)(dword_99F73C + 52),
         v12._M_start_of_storage._M_data) )
  {
    v6 = 1;
  }
  else
  {
    v8 = *(_DWORD *)(dword_99F73C + 52);
    v9 = *(int (__fastcall **)(int, char *))(*(_DWORD *)v8 + 176);
    std::operator+<char>((std::string *)&v11, (int)&v12);
    v6 = v9(v8, v11._M_start_of_storage._M_data);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  return v6;
}


// ===== 4624e4 LevelSavegame::GetFilename(uint,int,int,int,std::string &) =====
std::string *__fastcall LevelSavegame::GetFilename(
        LevelSavegame *this,
        int a2,
        int a3,
        int a4,
        std::string *a5,
        std::string *a6)
{
  size_t v6; // r0
  char v8[4]; // [sp+14h] [bp-404h] BYREF

  sprintf(v8, "%s%03u_%01u_%03u_%03u%s", "dh2_", this, a4, a2 & ~(a2 >> 31), a3 & ~(a3 >> 31), "_level.savegame");
  v6 = LC_API_STRLEN_0(v8);
  return std::string::_M_assign(a5, v8, &v8[v6]);
}


// ===== 46259c LevelSavegame::LoadCheckPoint(int,int,int) =====
void __fastcall LevelSavegame::LoadCheckPoint(LevelSavegame *this, LevelSavegame *a2, int a3, int a4)
{
  unsigned int v8; // r11
  int v9; // r2
  char *M_data; // r11
  size_t v11; // r0
  char *v12; // r7
  size_t v13; // r0
  std::string *v14; // [sp+0h] [bp-34h]
  std::string *v15; // [sp+4h] [bp-30h]
  std::string v16; // [sp+14h] [bp-20h] BYREF

  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v16, 0x10u);
  *v16._M_finish = 0;
  v8 = *((_DWORD *)this + 3);
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
    {
      v9 = 1;
      goto LABEL_3;
    }
    if ( *(_BYTE *)(dword_99F76C + 1817) )
    {
      v9 = 1;
      goto LABEL_3;
    }
  }
  v9 = 0;
LABEL_3:
  LevelSavegame::GetCheckpointFilename(a2, v8, v9, (bool)&v16, v14);
  M_data = v16._M_start_of_storage._M_data;
  v11 = LC_API_STRLEN_0(v16._M_start_of_storage._M_data);
  std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), M_data, &M_data[v11]);
  Savegame::_cacheFile(*((Savegame **)this + 1), nullptr);
  LevelSavegame::Load((Savegame **)this);
  LevelSavegame::GetFilename(a2, a3, a4, *((_DWORD *)this + 3), &v16, v15);
  v12 = v16._M_start_of_storage._M_data;
  v13 = LC_API_STRLEN_0(v16._M_start_of_storage._M_data);
  std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), v12, &v12[v13]);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
}


// ===== 4626f4 LevelSavegame::Delete(uint,int,int,int,bool,bool) =====
int __fastcall LevelSavegame::Delete(LevelSavegame *this, int a2, int a3, unsigned int a4, char a5, bool a6, bool a7)
{
  char v10; // r8
  unsigned __int8 v11; // r8
  std::string *v13; // [sp+0h] [bp-34h]
  std::string *v14; // [sp+4h] [bp-30h]
  std::string v16; // [sp+14h] [bp-20h] BYREF

  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v16, 0x10u);
  *v16._M_finish = 0;
  if ( a5 )
    LevelSavegame::GetCheckpointFilename(this, a4, a6, &v16, v13);
  else
    LevelSavegame::GetFilename(this, a2, a3, a4, &v16, v14);
  v10 = (*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 156))(
          *(_DWORD *)(dword_99F73C + 52),
          v16._M_start_of_storage._M_data);
  std::string::_M_append(&v16, ".bak", "");
  v11 = (*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 156))(
          *(_DWORD *)(dword_99F73C + 52),
          v16._M_start_of_storage._M_data)
      | v10;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  return v11;
}


// ===== 462824 LevelSavegame::Exists(uint,int,int,int) =====
int __fastcall LevelSavegame::Exists(LevelSavegame *this, int a2, int a3, int a4, int a5)
{
  int v9; // r8
  int v11; // r8
  int (__fastcall *v12)(int, char *); // r10
  std::string *v13; // [sp+4h] [bp-3Ch]
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+Ch] [bp-34h] BYREF
  std::string v15; // [sp+24h] [bp-1Ch] BYREF

  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x10u);
  *v15._M_finish = 0;
  LevelSavegame::GetFilename(this, a2, a3, a4, &v15, v13);
  if ( (*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 176))(
         *(_DWORD *)(dword_99F73C + 52),
         v15._M_start_of_storage._M_data) )
  {
    v9 = 1;
  }
  else
  {
    v11 = *(_DWORD *)(dword_99F73C + 52);
    v12 = *(int (__fastcall **)(int, char *))(*(_DWORD *)v11 + 176);
    std::operator+<char>((std::string *)&v14, (int)&v15);
    v9 = v12(v11, v14._M_start_of_storage._M_data);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  return v9;
}


// ===== 462934 LevelSavegame::LevelSavegame(Level *,uint,int,int,int,bool) =====
void __fastcall LevelSavegame::LevelSavegame(
        LevelSavegame *this,
        Level *a2,
        LevelSavegame *a3,
        int a4,
        int a5,
        int a6,
        bool a7)
{
  int v8; // lr
  char *M_data; // r10
  Savegame *v12; // r7
  std::string *v13; // [sp+0h] [bp-2Ch]
  std::string *v14; // [sp+4h] [bp-28h]
  std::string v15; // [sp+Ch] [bp-20h] BYREF
  int v16; // [sp+24h] [bp-8h]

  v8 = _stack_chk_guard;
  *(_DWORD *)this = off_968E88;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = a6;
  *((_DWORD *)this + 8) = (char *)this + 16;
  *((_DWORD *)this + 9) = (char *)this + 16;
  *((_DWORD *)this + 1) = 0;
  v16 = v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 16, 0x10u);
  **((_BYTE **)this + 8) = 0;
  *((_DWORD *)this + 13) = -1;
  *((_BYTE *)this + 56) = 1;
  *((_DWORD *)this + 11) = -1;
  *((_DWORD *)this + 12) = -1;
  *((_DWORD *)this + 10) = a5;
  *((_BYTE *)this + 57) = 0;
  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v15, 0x10u);
  *v15._M_finish = 0;
  if ( a7 )
    LevelSavegame::GetCheckpointFilename(a3, *((_DWORD *)this + 3), 0, (bool)&v15, v13);
  else
    LevelSavegame::GetFilename(a3, a4, a5, *((_DWORD *)this + 3), &v15, v14);
  M_data = v15._M_start_of_storage._M_data;
  v12 = (Savegame *)operator new(60, 0);
  Savegame::Savegame(v12, M_data, 0);
  *((_DWORD *)this + 1) = v12;
  Savegame::initSectionInfo(
    v12,
    "INFO",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadLevelInfo,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveLevelInfo,
    this);
  Savegame::initSectionInfo(
    *((Savegame **)this + 1),
    "OBJS",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadObjects,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveObjects,
    this);
  *((_BYTE *)this + 56) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
}


// ===== 462ae8 LevelSavegame::LoadLevel(uint,int,int,int) =====
void __fastcall LevelSavegame::LoadLevel(LevelSavegame *this, unsigned int a2, LevelSavegame *a3, int a4, int a5)
{
  int v8; // [sp+0h] [bp-1F0h]
  _BYTE v9[408]; // [sp+18h] [bp-1D8h] BYREF
  _BYTE v10[36]; // [sp+1B0h] [bp-40h] BYREF
  char *v11; // [sp+1D4h] [bp-1Ch]
  int v12; // [sp+1E0h] [bp-10h]
  unsigned int v13; // [sp+1E4h] [bp-Ch]

  if ( LevelSavegame::Exists(this, a2, (int)a3, a4, v8) )
  {
    LevelSavegame::LevelSavegame((LevelSavegame *)v10, nullptr, a3, 0, 0, 0, 0);
    PlayerSavegame::PlayerSavegame((PlayerSavegame *)v9, (unsigned int)this, 1, 0);
    Application::LoadLevel(
      (Application *)&Singleton<Application>::s_inst,
      v11,
      (const char *)v12,
      v13,
      1,
      0,
      a4,
      0,
      0,
      0);
    PlayerSavegame::~PlayerSavegame((PlayerSavegame *)v9);
    LevelSavegame::~LevelSavegame((LevelSavegame *)v10);
  }
}


// ===== 462bd0 LevelSavegame::LevelSavegame(Level *,uint,int,int,int,bool) =====
void __fastcall LevelSavegame::LevelSavegame(
        LevelSavegame *this,
        Level *a2,
        LevelSavegame *a3,
        int a4,
        int a5,
        int a6,
        bool a7)
{
  int v8; // lr
  char *M_data; // r10
  Savegame *v12; // r7
  std::string *v13; // [sp+0h] [bp-2Ch]
  std::string *v14; // [sp+4h] [bp-28h]
  std::string v15; // [sp+Ch] [bp-20h] BYREF
  int v16; // [sp+24h] [bp-8h]

  v8 = _stack_chk_guard;
  *(_DWORD *)this = off_968E88;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 3) = a6;
  *((_DWORD *)this + 8) = (char *)this + 16;
  *((_DWORD *)this + 9) = (char *)this + 16;
  *((_DWORD *)this + 1) = 0;
  v16 = v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 4, 0x10u);
  **((_BYTE **)this + 8) = 0;
  *((_DWORD *)this + 13) = -1;
  *((_BYTE *)this + 56) = 1;
  *((_DWORD *)this + 11) = -1;
  *((_DWORD *)this + 12) = -1;
  *((_DWORD *)this + 10) = a5;
  *((_BYTE *)this + 57) = 0;
  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x10u);
  *v15._M_finish = 0;
  if ( a7 )
    LevelSavegame::GetCheckpointFilename(a3, *((_DWORD *)this + 3), 0, &v15, v13);
  else
    LevelSavegame::GetFilename(a3, a4, a5, *((_DWORD *)this + 3), &v15, v14);
  M_data = v15._M_start_of_storage._M_data;
  v12 = (Savegame *)operator new(0x3Cu, 0);
  Savegame::Savegame(v12, M_data, 0);
  *((_DWORD *)this + 1) = v12;
  Savegame::initSectionInfo(
    v12,
    "INFO",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadLevelInfo,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveLevelInfo,
    this);
  Savegame::initSectionInfo(
    *((Savegame **)this + 1),
    "OBJS",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadObjects,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveObjects,
    this);
  *((_BYTE *)this + 56) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
}


// ===== 462d84 LevelSavegame::__SaveObjects(IStreamBase *,void *) =====
int __fastcall LevelSavegame::__SaveObjects(LevelSavegame *this, IStreamBase *a2, void *a3)
{
  int v4; // r4
  int v5; // r6
  _BYTE *v6; // r8
  const char *v7; // r11
  size_t v8; // r0
  int v9; // r3
  int result; // r0
  int v11; // r2
  __int64 v12; // [sp+0h] [bp-54h]
  __int64 v13; // [sp+18h] [bp-3Ch]
  __int64 v14; // [sp+28h] [bp-2Ch] BYREF
  int v15; // [sp+34h] [bp-20h] BYREF
  int v16; // [sp+38h] [bp-1Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+3Ch] [bp-18h] BYREF
  std::string v18; // [sp+54h] [bp+0h] BYREF

  v4 = *(_DWORD *)(dword_99F764 + 20);
  v5 = dword_99F764 + 12;
  v16 = 0;
  v18._M_finish = (char *)&v18;
  v18._M_start_of_storage._M_data = (char *)&v18;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v18, 0x10u);
  *v18._M_finish = 0;
  v13 = ((__int64 (__fastcall *)(LevelSavegame *))*(_DWORD *)(*(_DWORD *)this + 48))(this);
  IStreamBase::writeAs<unsigned int>(this, &v16);
  while ( v5 != v4 )
  {
    while ( 1 )
    {
      v6 = *(_BYTE **)(v4 + 44);
      if ( v6
        && v6[40]
        && (!*(_BYTE *)(GetOnline() + 5)
         || !(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 36))(v6)
         || !(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 40))(v6)
         || PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)v6) && !v6[129]) )
      {
        ++v16;
        v7 = *((const char **)v6 + 23);
        v8 = LC_API_STRLEN_0(v7);
        std::string::_M_assign(&v18, v7, &v7[v8]);
        IStreamBase::writeAs(this, &v18);
        if ( (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 36))(v6)
          && (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 40))(v6)
          && LC_API_STRCMP_0("PlayerCharacter_0", *(const char **)(v4 + 40)) )
        {
          v17._M_finish = (char *)&v17;
          v17._M_start_of_storage._M_data = (char *)&v17;
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v17, 0x12u);
          v17._M_finish = (char *)memcpy(v17._M_start_of_storage._M_data, "PlayerCharacter_0", 0x11u) + 17;
          *v17._M_finish = 0;
          IStreamBase::writeAs(this, (const std::string *)&v17);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
        }
        else
        {
          IStreamBase::writeAs(this, (const std::string *)(v4 + 20));
        }
        v15 = *((_DWORD *)v6 + 25);
        IStreamBase::writeAs<int>(this, &v15);
        v14 = 0;
        v12 = ((__int64 (__fastcall *)(LevelSavegame *))*(_DWORD *)(*(_DWORD *)this + 48))(this);
        IStreamBase::writeAs<unsigned long long>(this, &v14);
        (*(void (__fastcall **)(_BYTE *, LevelSavegame *))(*(_DWORD *)v6 + 16))(v6, this);
        v14 = ((__int64 (__fastcall *)(LevelSavegame *))*(_DWORD *)(*(_DWORD *)this + 48))(this) - 8 - v12;
        (*(void (__fastcall **)(LevelSavegame *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 44))(
          this,
          *(_DWORD *)this,
          v12,
          HIDWORD(v12));
        IStreamBase::writeAs<unsigned long long>(this, &v14);
        (*(void (__fastcall **)(LevelSavegame *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 44))(
          this,
          *(_DWORD *)this,
          v14 + 8 + v12,
          (unsigned __int64)(v14 + 8 + v12) >> 32);
      }
      v9 = *(_DWORD *)(v4 + 12);
      if ( !v9 )
        break;
      while ( *(_DWORD *)(v9 + 8) )
        v9 = *(_DWORD *)(v9 + 8);
      v4 = v9;
      if ( v5 == v9 )
        goto LABEL_14;
    }
    v11 = *(_DWORD *)(v4 + 4);
    if ( *(_DWORD *)(v11 + 12) == v4 )
    {
      do
      {
        v4 = v11;
        v11 = *(_DWORD *)(v11 + 4);
      }
      while ( v4 == *(_DWORD *)(v11 + 12) );
      v9 = *(_DWORD *)(v4 + 12);
    }
    if ( v9 != v11 )
      v4 = v11;
  }
LABEL_14:
  (*(void (__fastcall **)(LevelSavegame *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 44))(
    this,
    *(_DWORD *)this,
    v13,
    HIDWORD(v13));
  IStreamBase::writeAs<unsigned int>(this, &v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  return result;
}


// ===== 463130 LevelSavegame::SaveCheckPoint(int,int,int) =====
void __fastcall LevelSavegame::SaveCheckPoint(LevelSavegame *this, LevelSavegame *a2, int a3, int a4)
{
  unsigned int v8; // r11
  int v9; // r2
  char *M_data; // r11
  size_t v11; // r0
  char *v12; // r8
  size_t v13; // r0
  std::string *v14; // [sp+0h] [bp-34h]
  std::string *v15; // [sp+4h] [bp-30h]
  std::string v16; // [sp+14h] [bp-20h] BYREF

  if ( *((_DWORD *)this + 1) )
  {
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v16, 0x10u);
    *v16._M_finish = 0;
    v8 = *((_DWORD *)this + 3);
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
      {
        v9 = 1;
        goto LABEL_4;
      }
      if ( *(_BYTE *)(dword_99F76C + 1817) )
      {
        v9 = 1;
        goto LABEL_4;
      }
    }
    v9 = 0;
LABEL_4:
    LevelSavegame::GetCheckpointFilename(a2, v8, v9, &v16, v14);
    M_data = v16._M_start_of_storage._M_data;
    v11 = LC_API_STRLEN_0(v16._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), M_data, &M_data[v11]);
    Savegame::saveAll(*((Savegame **)this + 1));
    LevelSavegame::GetFilename(a2, a3, a4, *((_DWORD *)this + 3), &v16, v15);
    v12 = v16._M_start_of_storage._M_data;
    v13 = LC_API_STRLEN_0(v16._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), v12, &v12[v13]);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  }
}


// ===== 463288 LevelSavegame::ValidateCheckpoint(int,int,int) =====
bool __fastcall LevelSavegame::ValidateCheckpoint(LevelSavegame *this, LevelSavegame *a2, int a3, int a4)
{
  unsigned int v7; // r11
  int v8; // r2
  char *M_data; // r10
  size_t v10; // r0
  LevelSavegame *v11; // r0
  _BOOL4 v12; // r8
  char *v13; // r10
  size_t v14; // r0
  int v16; // r10
  int (__fastcall *v17)(int, char *); // r11
  int v18; // r10
  char *v19; // r11
  size_t v20; // r0
  std::string *v21; // [sp+0h] [bp-64h]
  std::string *v22; // [sp+4h] [bp-60h]
  std::priv::_String_base<char,std::allocator<char> > *v23; // [sp+8h] [bp-5Ch]
  std::priv::_String_base<char,std::allocator<char> > v25; // [sp+14h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+2Ch] [bp-38h] BYREF
  std::string v27; // [sp+44h] [bp-20h] BYREF

  v27._M_finish = (char *)&v27;
  v27._M_start_of_storage._M_data = (char *)&v27;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v27, 0x10u);
  *v27._M_finish = 0;
  v7 = *((_DWORD *)this + 3);
  if ( !*(_BYTE *)(GetOnline() + 5) )
    goto LABEL_2;
  if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
  {
    if ( !*(_BYTE *)(dword_99F76C + 1817) )
    {
LABEL_2:
      v8 = 0;
      goto LABEL_3;
    }
    v8 = 1;
  }
  else
  {
    v8 = 1;
  }
LABEL_3:
  LevelSavegame::GetCheckpointFilename(a2, v7, v8, &v27, v21);
  if ( (*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 176))(
         *(_DWORD *)(dword_99F73C + 52),
         v27._M_start_of_storage._M_data) )
  {
    M_data = v27._M_start_of_storage._M_data;
    v10 = LC_API_STRLEN_0(v27._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), M_data, &M_data[v10]);
  }
  else
  {
    v16 = *(_DWORD *)(dword_99F73C + 52);
    v17 = *(int (__fastcall **)(int, char *))(*(_DWORD *)v16 + 176);
    std::operator+<char>((std::string *)&v26, (int)&v27);
    v18 = v17(v16, v26._M_start_of_storage._M_data);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
    if ( !v18 )
    {
      v12 = 0;
      goto LABEL_6;
    }
    v23 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 1);
    std::operator+<char>((std::string *)&v25, (int)&v27);
    v19 = v25._M_start_of_storage._M_data;
    v20 = LC_API_STRLEN_0(v25._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)&v23->_M_buffers._M_static_buf[4], v19, &v19[v20]);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  }
  Savegame::_cacheFile(*((Savegame **)this + 1), nullptr);
  Savegame::load(
    *((Savegame **)this + 1),
    "INFO",
    (void (*)(IStreamBase *, void *))LevelSavegame::__LoadLevelInfo,
    (void (*)(IStreamBase *, void *))LevelSavegame::__SaveLevelInfo,
    this);
  v11 = a2;
  v12 = *((_DWORD *)this + 11) == a4;
  LevelSavegame::GetFilename(v11, a3, a4, *((_DWORD *)this + 3), &v27, v22);
  v13 = v27._M_start_of_storage._M_data;
  v14 = LC_API_STRLEN_0(v27._M_start_of_storage._M_data);
  std::string::_M_assign((std::string *const)(*((_DWORD *)this + 1) + 4), v13, &v13[v14]);
  Savegame::_cacheFile(*((Savegame **)this + 1), nullptr);
LABEL_6:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
  return v12;
}


// ===== 4634e4 PlayerSavegame::SG_GetFilenamePrefix(void) =====
const char *__fastcall PlayerSavegame::SG_GetFilenamePrefix(PlayerSavegame *this)
{
  return "dh2_";
}


// ===== 4634f4 PlayerSavegame::SG_GetFilenameExtension(void) =====
const char *__fastcall PlayerSavegame::SG_GetFilenameExtension(PlayerSavegame *this)
{
  return ".savegame";
}


// ===== 463504 PlayerSavegame::SG_GetCheckpointFilenameExtension(void) =====
const char *__fastcall PlayerSavegame::SG_GetCheckpointFilenameExtension(PlayerSavegame *this)
{
  return ".checkpoint";
}


// ===== 463514 PlayerSavegame::SG_Exists(char const*) =====
int __fastcall PlayerSavegame::SG_Exists(PlayerSavegame *this, const char *a2)
{
  if ( this )
    return (*(int (__fastcall **)(_DWORD, PlayerSavegame *))(**(_DWORD **)(dword_99F73C + 52) + 176))(
             *(_DWORD *)(dword_99F73C + 52),
             this);
  else
    return 0;
}


// ===== 46355c PlayerSavegame::SG_Delete(char const*) =====
int __fastcall PlayerSavegame::SG_Delete(PlayerSavegame *this, const char *a2)
{
  if ( this )
    return (*(int (__fastcall **)(_DWORD, PlayerSavegame *))(**(_DWORD **)(dword_99F73C + 52) + 156))(
             *(_DWORD *)(dword_99F73C + 52),
             this);
  else
    return 0;
}


// ===== 4635a4 PlayerSavegame::SG_GetSavefileName(void) =====
int __fastcall PlayerSavegame::SG_GetSavefileName(PlayerSavegame *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 2) + 24);
}


// ===== 4635b0 std::priv::__uninitialized_move<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> *,std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> *,std::__false_type>(std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> *,std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> *,std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> *,std::__false_type,std::__true_type const&) =====
_DWORD *__fastcall std::priv::__uninitialized_move<std::map<int,int> *,std::map<int,int> *,std::__false_type>(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r12
  _DWORD *v4; // r8
  int v5; // r10
  int v6; // r7
  _DWORD *v7; // r4
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // r3
  int v12; // r3

  v3 = a1;
  v4 = a3;
  v5 = -1431655765 * ((a2 - (int)a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = -1431655765 * ((a2 - (int)a1) >> 3);
    v7 = a3;
    while ( 1 )
    {
      v8 = v3[1];
      v9 = v3[2];
      v10 = v3[3];
      *v7 = *v3;
      v7[1] = v8;
      v7[2] = v9;
      v7[3] = v10;
      if ( v8 )
        *(_DWORD *)(v8 + 4) = v7;
      v11 = (_DWORD *)v7[2];
      if ( v3 == (_DWORD *)v7[3] )
        v7[3] = v7;
      if ( v3 == v11 )
        v7[2] = v7;
      v12 = v3[4];
      --v6;
      *(_BYTE *)v3 = 0;
      v3[1] = 0;
      v3[2] = v3;
      v3[3] = v3;
      v7[4] = v12;
      v3[4] = 0;
      v7 += 6;
      if ( !v6 )
        break;
      v3 += 6;
    }
    v4 += 6 * v5;
  }
  return v4;
}


// ===== 463654 PlayerSavegame::SG_Synchronize(bool) =====
int __fastcall PlayerSavegame::SG_Synchronize(PlayerSavegame *this, _BOOL4 a2)
{
  if ( *((_DWORD *)this + 15) < PlayerSavegame::m_difficultyLevel && a2 )
    return 0;
  else
    return QuestSavegame::Synchronize(
             (PlayerSavegame *)((char *)this + 184),
             (PlayerSavegame *)((char *)this + 280),
             a2);
}


// ===== 4636a8 PlayerSavegame::SG_GetSlotFromFilename(char const*) =====
int __fastcall PlayerSavegame::SG_GetSlotFromFilename(PlayerSavegame *this, const char *a2)
{
  const char *FilenamePrefix; // r0
  const char *v4; // r0

  FilenamePrefix = PlayerSavegame::SG_GetFilenamePrefix(this);
  v4 = (char *)this + LC_API_STRLEN_0(FilenamePrefix);
  return LC_API_ATOI_0(v4);
}


// ===== 4636c4 PlayerSavegame::SG_Update(bool) =====
int __fastcall PlayerSavegame::SG_Update(PlayerSavegame *this, int a2)
{
  Character **QuestSG; // r0

  PlayerSavegame::SG_TryQuestSync(this);
  QuestSG = (Character **)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::UpdateQuests(QuestSG, a2);
}


// ===== 4636e8 std::vector<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>,std::allocator<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>>>::~vector() =====
void **__fastcall std::vector<std::map<int,int>>::~vector(void **a1)
{
  int v1; // r4
  void *v2; // r5
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (int)a1[1];
  v2 = *a1;
  if ( (void *)v1 != *a1 )
  {
    do
    {
      v1 -= 24;
      if ( *(_DWORD *)(v1 + 16) )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
          v1,
          *(_DWORD **)(v1 + 4));
        *(_DWORD *)(v1 + 8) = v1;
        *(_DWORD *)(v1 + 4) = 0;
        *(_DWORD *)(v1 + 12) = v1;
        *(_DWORD *)(v1 + 16) = 0;
      }
    }
    while ( v2 != (void *)v1 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * (((_BYTE *)a1[2] - v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 46378c PlayerSavegame::~PlayerSavegame() =====
void __fastcall PlayerSavegame::~PlayerSavegame(std::priv::_String_base<char,std::allocator<char> > *this)
{
  int v1; // r1
  int v3; // r6
  std::priv::_String_base<char,std::allocator<char> > *v4; // r4
  void *v5; // r0
  char *M_data; // r0
  void *v7; // r0
  void *v8; // r0

  v1 = *(_DWORD *)&this->_M_buffers._M_static_buf[8];
  this->_M_buffers._M_end_of_storage = (char *)off_968E98;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *(_DWORD *)&this->_M_buffers._M_static_buf[8] = 0;
  }
  v3 = 0;
  v4 = this;
  do
  {
    v5 = *(void **)&v4[4]._M_buffers._M_static_buf[8];
    ++v3;
    if ( v5 )
    {
      CustomFree(v5);
      *(_DWORD *)&v4[4]._M_buffers._M_static_buf[8] = 0;
    }
    M_data = v4[4]._M_start_of_storage._M_data;
    if ( M_data )
    {
      CustomFree(M_data);
      v4[4]._M_start_of_storage._M_data = nullptr;
    }
    v7 = *(void **)&v4[6]._M_buffers._M_static_buf[4];
    if ( v7 )
    {
      CustomFree(v7);
      *(_DWORD *)&v4[6]._M_buffers._M_static_buf[4] = 0;
    }
    v4 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v4 + 4);
  }
  while ( v3 != 3 );
  v8 = *((void **)this + 32);
  if ( v8 )
  {
    CustomFree(v8);
    *((_DWORD *)this + 32) = 0;
  }
  QuestSavegame::~QuestSavegame((QuestSavegame *)((char *)this + 280));
  QuestSavegame::~QuestSavegame((QuestSavegame *)((char *)this + 184));
  std::vector<std::map<int,int>>::~vector((char *)this + 136);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 1);
}


// ===== 463870 PlayerSavegame::~PlayerSavegame() =====
void __fastcall PlayerSavegame::~PlayerSavegame(std::priv::_String_base<char,std::allocator<char> > *this)
{
  PlayerSavegame::~PlayerSavegame(this);
  CustomFree(this);
}


// ===== 46388c PlayerSavegame::~PlayerSavegame() =====
void __fastcall PlayerSavegame::~PlayerSavegame(std::priv::_String_base<char,std::allocator<char> > *this)
{
  int v1; // r1
  int v3; // r6
  std::priv::_String_base<char,std::allocator<char> > *v4; // r4
  void *v5; // r0
  char *M_data; // r0
  void *v7; // r0
  void *v8; // r0

  v1 = *(_DWORD *)&this->_M_buffers._M_static_buf[8];
  this->_M_buffers._M_end_of_storage = (char *)off_968E98;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *(_DWORD *)&this->_M_buffers._M_static_buf[8] = 0;
  }
  v3 = 0;
  v4 = this;
  do
  {
    v5 = *(void **)&v4[4]._M_buffers._M_static_buf[8];
    ++v3;
    if ( v5 )
    {
      CustomFree(v5);
      *(_DWORD *)&v4[4]._M_buffers._M_static_buf[8] = 0;
    }
    M_data = v4[4]._M_start_of_storage._M_data;
    if ( M_data )
    {
      CustomFree(M_data);
      v4[4]._M_start_of_storage._M_data = nullptr;
    }
    v7 = *(void **)&v4[6]._M_buffers._M_static_buf[4];
    if ( v7 )
    {
      CustomFree(v7);
      *(_DWORD *)&v4[6]._M_buffers._M_static_buf[4] = 0;
    }
    v4 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v4 + 4);
  }
  while ( v3 != 3 );
  v8 = *((void **)this + 32);
  if ( v8 )
  {
    CustomFree(v8);
    *((_DWORD *)this + 32) = 0;
  }
  QuestSavegame::~QuestSavegame((QuestSavegame *)((char *)this + 280));
  QuestSavegame::~QuestSavegame((QuestSavegame *)((char *)this + 184));
  std::vector<std::map<int,int>>::~vector((void **)this + 34);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 1);
}


// ===== 463970 std::priv::__unguarded_partition<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string,std::less<std::string>) =====
int *__fastcall std::priv::__unguarded_partition<std::string *,std::string,std::less<std::string>>(
        int *a1,
        int *a2,
        int a3)
{
  const void *v3; // r6
  int i; // r8
  const void *v8; // r3
  int v9; // r4
  int v10; // r7
  size_t v11; // r2
  int v12; // r0
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0

  v3 = *(const void **)(a3 + 20);
  for ( i = *(_DWORD *)(a3 + 16); ; i = *(_DWORD *)(a3 + 16) )
  {
    while ( 1 )
    {
      v8 = (const void *)a1[5];
      v9 = i - (_DWORD)v3;
      v10 = a1[4] - (_DWORD)v8;
      v11 = i - (int)v3 >= v10 ? a1[4] - (_DWORD)v8 : i - (_DWORD)v3;
      v12 = memcmp(v8, v3, v11);
      if ( v12 )
        break;
      if ( v10 >= v9 )
        goto LABEL_7;
LABEL_15:
      a1 += 6;
    }
    if ( v12 < 0 )
      goto LABEL_15;
    do
    {
LABEL_7:
      while ( 1 )
      {
        a2 -= 6;
        v13 = (const void *)a2[5];
        v14 = a2[4] - (_DWORD)v13;
        v15 = v9 >= v14 ? a2[4] - (_DWORD)v13 : i - (_DWORD)v3;
        v16 = memcmp(v3, v13, v15);
        if ( v16 )
          break;
        if ( v9 >= v14 )
          goto LABEL_12;
      }
    }
    while ( v16 < 0 );
LABEL_12:
    if ( a2 <= a1 )
      break;
    std::priv::_String_base<char,std::allocator<char>>::_M_swap(a1, a2);
    a1 += 6;
    v3 = *(const void **)(a3 + 20);
  }
  return a1;
}


// ===== 463a38 std::priv::__unguarded_linear_insert<std::string *,std::string,std::less<std::string>>(std::string *,std::string,std::less<std::string>) =====
std::string *__fastcall std::priv::__unguarded_linear_insert<std::string *,std::string,std::less<std::string>>(
        std::string *a1,
        std::string *a2)
{
  char *M_data; // r6
  const char *M_finish; // r11
  std::string *v4; // r7
  std::string *i; // r4
  const char *v6; // r5
  const char *v7; // r8
  size_t v8; // r2
  std::string *result; // r0

  M_data = a2->_M_start_of_storage._M_data;
  M_finish = a2->_M_finish;
  v4 = a1;
  for ( i = a1 - 1; ; --i )
  {
    v6 = i->_M_start_of_storage._M_data;
    v7 = i->_M_finish;
    v8 = v7 - v6 >= M_finish - M_data ? M_finish - M_data : v7 - v6;
    result = (std::string *)memcmp(M_data, i->_M_start_of_storage._M_data, v8);
    if ( result )
      break;
    if ( M_finish - M_data >= v7 - v6 )
      goto LABEL_7;
LABEL_10:
    if ( i != v4 )
    {
      std::string::_M_assign(v4, v6, v7);
      M_data = a2->_M_start_of_storage._M_data;
      M_finish = a2->_M_finish;
    }
    v4 = i;
  }
  if ( (int)result < 0 )
    goto LABEL_10;
LABEL_7:
  if ( v4 != a2 )
    return std::string::_M_assign(v4, M_data, M_finish);
  return result;
}


// ===== 463aec std::__push_heap<std::string *,int,std::string,std::less<std::string>>(std::string *,int,int,std::string,std::less<std::string>) =====
std::string *__fastcall std::__push_heap<std::string *,int,std::string,std::less<std::string>>(
        std::string *result,
        int a2,
        int a3,
        std::string *a4)
{
  signed int v4; // r6
  int v5; // r9
  int i; // r6
  std::string *v9; // r5
  char *M_data; // r2
  char *M_finish; // r3
  const char *v12; // r8
  char *v13; // r11
  int v14; // r10
  size_t v15; // r2
  char *__l; // [sp+0h] [bp-Ch]
  std::string *v17; // [sp+4h] [bp-8h]

  if ( a2 > a3 )
    v4 = a2 - 1 + ((unsigned int)(a2 - 1) >> 31);
  v5 = a2;
  v17 = result;
  if ( a2 > a3 )
  {
    for ( i = v4 >> 1; ; i = (i - 1) / 2 )
    {
      v9 = &v17[i];
      M_data = a4->_M_start_of_storage._M_data;
      M_finish = v9->_M_finish;
      v12 = v9->_M_start_of_storage._M_data;
      v13 = (char *)(a4->_M_finish - M_data);
      v14 = M_finish - v12;
      if ( (int)v13 >= M_finish - v12 )
        v15 = M_finish - v12;
      else
        v15 = a4->_M_finish - M_data;
      __l = v9->_M_finish;
      result = (std::string *)memcmp(v9->_M_start_of_storage._M_data, a4->_M_start_of_storage._M_data, v15);
      if ( result )
      {
        if ( (int)result >= 0 )
        {
          v9 = &v17[v5];
          goto LABEL_6;
        }
      }
      else if ( v14 >= (int)v13 )
      {
        v9 = &v17[v5];
        if ( a4 == v9 )
          return result;
        return std::string::_M_assign(v9, a4->_M_start_of_storage._M_data, a4->_M_finish);
      }
      result = &v17[v5];
      if ( v9 != result )
        result = std::string::_M_assign(result, v12, __l);
      if ( a3 >= i )
        goto LABEL_6;
      v5 = i;
    }
  }
  v9 = &result[a2];
LABEL_6:
  if ( a4 != v9 )
    return std::string::_M_assign(v9, a4->_M_start_of_storage._M_data, a4->_M_finish);
  return result;
}


// ===== 463bfc std::allocator<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::map<int,int>>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xAAAAAAA )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 24 * a2;
  if ( 24 * a2 > 0x80 )
    result = CustomAlloc(24 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x18;
  return result;
}


// ===== 463c84 PlayerSavegame::SG_GetFilename(uint,std::string &,bool,bool) =====
std::string *__fastcall PlayerSavegame::SG_GetFilename(
        PlayerSavegame *this,
        std::string *a2,
        std::string *a3,
        int a4,
        bool a5)
{
  PlayerSavegame *FilenamePrefix; // r0
  const char *v10; // r9
  const char *v11; // r10
  const char *CheckpointFilenameExtension; // r12
  size_t v13; // r0
  char s[64]; // [sp+Ch] [bp-44h] BYREF

  FilenamePrefix = (PlayerSavegame *)PlayerSavegame::SG_GetFilenamePrefix(this);
  v10 = (const char *)FilenamePrefix;
  if ( a3 )
  {
    if ( a4 )
      v11 = "_multi";
    else
      v11 = "_single";
    CheckpointFilenameExtension = PlayerSavegame::SG_GetCheckpointFilenameExtension(FilenamePrefix);
  }
  else
  {
    CheckpointFilenameExtension = PlayerSavegame::SG_GetFilenameExtension(FilenamePrefix);
    v11 = "";
  }
  sprintf(s, "%s%03u%s%s", v10, this, v11, CheckpointFilenameExtension);
  v13 = LC_API_STRLEN_0(s);
  return std::string::_M_assign(a2, s, &s[v13]);
}


// ===== 463d6c `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame.cpp(CMessage *a1)
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

  dword_9A6034 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6030 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A6039 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A603A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A603B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A603C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A603D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A603E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A603F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A6040 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A6041 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A6042 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A6043 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A6044 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A6045 = (char)v14;
  byte_9A6046 = CMessage::TerminateMessageRegistration(v14);
  dword_9A6058 = (int)PlayerSavegame::s_playerNameTemp;
  dword_9A605C = (int)PlayerSavegame::s_playerNameTemp;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(PlayerSavegame::s_playerNameTemp, 0x10u);
  *(_BYTE *)dword_9A6058 = 0;
  result = _aeabi_atexit((int)PlayerSavegame::s_playerNameTemp, (int)std::string::~string, (int)&_dso_handle);
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


// ===== 46403c PlayerSavegame::SG_GetSavegameList(bool) =====
PlayerSavegame *__fastcall PlayerSavegame::SG_GetSavegameList(PlayerSavegame *this, int a2)
{
  int v3; // r2
  int v4; // r3
  std::priv::_String_base<char,std::allocator<char> > *v5; // r11
  const char *M_data; // r7
  const char *FilenameExtension; // r0
  char *v8; // r0
  const char *FilenamePrefix; // r0
  int v11; // r2
  int v12; // r11
  int v13; // r4
  unsigned int v14; // r7
  unsigned int v15; // r3
  int v16; // r5
  std::string *v17; // r0
  std::string *v18; // r3
  unsigned int v20; // [sp+4h] [bp-30h]
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+14h] [bp-20h] BYREF
  int v22; // [sp+2Ch] [bp-8h]

  v3 = _stack_chk_guard;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v22 = v3;
  v4 = *(_DWORD *)(dword_99F73C + 52);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD, const char *, PlayerSavegame *))(*(_DWORD *)v4 + 124))(
      *(_DWORD *)(dword_99F73C + 52),
      "./",
      this);
    v5 = *(std::priv::_String_base<char,std::allocator<char> > **)this;
    while ( v5 != *((std::priv::_String_base<char,std::allocator<char> > **)this + 1) )
    {
      M_data = v5->_M_start_of_storage._M_data;
      if ( LC_API_STRSTR_0(M_data, ".bak")
        || LC_API_STRSTR_0(M_data, "settings")
        || LC_API_STRSTR_0(M_data, "level")
        || (FilenameExtension = PlayerSavegame::SG_GetFilenameExtension(nullptr),
            (v8 = LC_API_STRSTR_0(M_data, FilenameExtension)) == nullptr)
        || (FilenamePrefix = PlayerSavegame::SG_GetFilenamePrefix((PlayerSavegame *)v8),
            !LC_API_STRSTR_0(M_data, FilenamePrefix)) )
      {
        v5 = std::vector<std::string>::_M_erase((int)this, v5);
      }
      else
      {
        ++v5;
      }
    }
    if ( a2 )
    {
      v11 = *(_DWORD *)this;
      v12 = (int)v5 - *(_DWORD *)this;
      if ( -1431655765 * (v12 >> 3) )
      {
        v20 = 0;
        do
        {
          v13 = 0;
          v14 = 0;
          while ( 1 )
          {
            v15 = -1431655765 * (v12 >> 3);
            if ( v15 - 1 <= v14 )
              break;
            v16 = v13 + 24;
            ++v14;
            if ( (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 180))(
                   *(_DWORD *)(dword_99F73C + 52),
                   *(_DWORD *)(v11 + v13 + 24 + 20),
                   *(_DWORD *)(v11 + v13 + 20)) )
            {
              std::string::string((std::string *)&v21, (const std::string *)(*(_DWORD *)this + v13));
              v17 = (std::string *)(*(_DWORD *)this + v13);
              v18 = (std::string *)(*(_DWORD *)this + v16);
              if ( v17 != v18 )
              {
                std::string::_M_assign(v17, v18->_M_start_of_storage._M_data, v18->_M_finish);
                v17 = (std::string *)(*(_DWORD *)this + v16);
              }
              if ( v17 != &v21 )
                std::string::_M_assign(v17, v21._M_start_of_storage._M_data, v21._M_finish);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
            }
            v11 = *(_DWORD *)this;
            v13 += 24;
            v12 = *((_DWORD *)this + 1) - *(_DWORD *)this;
          }
          ++v20;
        }
        while ( v20 < v15 );
      }
    }
  }
  return this;
}


// ===== 4642d8 std::__adjust_heap<std::string *,int,std::string,std::less<std::string>>(std::string *,int,int,std::string,std::less<std::string>) =====
int __fastcall std::__adjust_heap<std::string *,int,std::string,std::less<std::string>>(
        std::string *a1,
        int a2,
        int a3,
        const std::string *a4)
{
  int v4; // r4
  int v6; // r9
  int v7; // r11
  std::string *v8; // r2
  std::string *v9; // r6
  char *M_data; // r1
  char *v11; // r3
  int v12; // r8
  int v13; // r10
  size_t v14; // r2
  int v15; // r0
  std::string *v16; // r0
  int result; // r0
  int v18; // r4
  std::string *v19; // r0
  std::string *v20; // r3
  std::string v24; // [sp+24h] [bp-20h] BYREF

  v4 = 2 * (a2 + 1);
  if ( v4 < a3 )
  {
    v7 = a2;
    while ( 1 )
    {
      v6 = v4 - 1;
      v8 = &a1[v4 - 1];
      v9 = &a1[v4];
      M_data = v8->_M_start_of_storage._M_data;
      v11 = v9->_M_start_of_storage._M_data;
      v12 = v8->_M_finish - M_data;
      v13 = v9->_M_finish - v11;
      if ( v12 >= v13 )
        v14 = v9->_M_finish - v11;
      else
        v14 = v8->_M_finish - M_data;
      v15 = memcmp(v11, M_data, v14);
      if ( v15 )
      {
        if ( v15 < 0 )
        {
LABEL_16:
          v9 = &a1[v6];
          goto LABEL_10;
        }
      }
      else if ( v13 < v12 )
      {
        goto LABEL_16;
      }
      v6 = v4;
LABEL_10:
      v16 = &a1[v7];
      if ( v16 != v9 )
        std::string::_M_assign(v16, v9->_M_start_of_storage._M_data, v9->_M_finish);
      v4 = 2 * (v6 + 1);
      v7 = v6;
      if ( a3 <= v4 )
        goto LABEL_13;
    }
  }
  v6 = a2;
LABEL_13:
  if ( v4 == a3 )
  {
    v18 = v4 - 1;
    v19 = &a1[v6];
    v20 = &a1[v18];
    if ( v19 != v20 )
      std::string::_M_assign(v19, v20->_M_start_of_storage._M_data, v20->_M_finish);
    v6 = v18;
  }
  std::string::string(&v24, a4);
  std::__push_heap<std::string *,int,std::string,std::less<std::string>>(a1, v6, a2, &v24);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
  return result;
}


// ===== 464458 std::__make_heap<std::string *,std::less<std::string>,std::string,int>(std::string *,std::string *,std::less<std::string>,std::string *,int *) =====
void __fastcall std::__make_heap<std::string *,std::less<std::string>,std::string,int>(std::string *a1, int a2)
{
  int v2; // r1
  int v4; // r8
  int v5; // r4
  const std::string *v6; // r5
  std::string v7; // [sp+Ch] [bp-20h] BYREF

  v2 = a2 - (_DWORD)a1;
  if ( v2 > 47 )
  {
    v4 = -1431655765 * (v2 >> 3);
    v5 = (v4 - 2) >> 1;
    v6 = &a1[v5];
    while ( 1 )
    {
      std::string::string(&v7, v6);
      std::__adjust_heap<std::string *,int,std::string,std::less<std::string>>(a1, v5, v4, &v7);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
      --v6;
      if ( !v5 )
        break;
      --v5;
    }
  }
}


// ===== 464520 std::__pop_heap<std::string *,std::string,std::less<std::string>,int>(std::string *,std::string *,std::string *,std::string,std::less<std::string>,int *) =====
void __fastcall std::__pop_heap<std::string *,std::string,std::less<std::string>,int>(
        std::string *a1,
        int a2,
        std::string *this,
        std::string *a4)
{
  std::string v7; // [sp+Ch] [bp-20h] BYREF

  if ( this != a1 )
    std::string::_M_assign(this, a1->_M_start_of_storage._M_data, a1->_M_finish);
  std::string::string(&v7, a4);
  std::__adjust_heap<std::string *,int,std::string,std::less<std::string>>(
    a1,
    0,
    -1431655765 * ((a2 - (int)a1) >> 3),
    &v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
}


// ===== 4645d8 std::__pop_heap_aux<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string *,std::less<std::string>) =====
void __fastcall std::__pop_heap_aux<std::string *,std::string,std::less<std::string>>(std::string *a1, int a2)
{
  std::string *v2; // r6
  std::string v4; // [sp+Ch] [bp-20h] BYREF

  v2 = (std::string *)(a2 - 24);
  std::string::string(&v4, (const std::string *)(a2 - 24));
  std::__pop_heap<std::string *,std::string,std::less<std::string>,int>(a1, (int)v2, v2, &v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
}


// ===== 464660 std::priv::__partial_sort<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string *,std::string *,std::less<std::string>) =====
void __fastcall std::priv::__partial_sort<std::string *,std::string,std::less<std::string>>(
        std::string *a1,
        int a2,
        unsigned int a3)
{
  const std::string *v4; // r6
  const std::string *v6; // r4
  int v7; // r10
  char *M_data; // r3
  char *v9; // r1
  int v10; // r8
  int v11; // r6
  size_t v12; // r2
  int v13; // r0
  std::string *v14; // r2
  int v15; // r4
  int v16; // r1
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+1Ch] [bp-20h] BYREF

  v4 = (const std::string *)a2;
  std::__make_heap<std::string *,std::less<std::string>,std::string,int>(a1, a2);
  if ( (unsigned int)v4 < a3 )
  {
    v6 = v4;
    v7 = (int)v4;
    while ( 1 )
    {
      M_data = v6->_M_start_of_storage._M_data;
      v9 = a1->_M_start_of_storage._M_data;
      v10 = v6->_M_finish - M_data;
      v11 = a1->_M_finish - v9;
      if ( v11 >= v10 )
        v12 = v6->_M_finish - M_data;
      else
        v12 = a1->_M_finish - v9;
      v13 = memcmp(M_data, v9, v12);
      if ( v13 )
      {
        if ( v13 < 0 )
          goto LABEL_10;
LABEL_4:
        if ( a3 <= (unsigned int)++v6 )
          goto LABEL_11;
      }
      else
      {
        if ( v10 >= v11 )
          goto LABEL_4;
LABEL_10:
        std::string::string((std::string *)&v17, v6);
        v14 = (std::string *)v6++;
        std::__pop_heap<std::string *,std::string,std::less<std::string>,int>(a1, v7, v14, (std::string *)&v17);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
        if ( a3 <= (unsigned int)v6 )
        {
LABEL_11:
          v4 = (const std::string *)v7;
          break;
        }
      }
    }
  }
  if ( (char *)v4 - (char *)a1 > 47 )
  {
    v15 = 0;
    do
    {
      v16 = (int)&v4[v15--];
      std::__pop_heap_aux<std::string *,std::string,std::less<std::string>>(a1, v16);
    }
    while ( (char *)v4 - (char *)a1 + v15 * 24 > 47 );
  }
}


// ===== 4647bc std::priv::__unguarded_insertion_sort_aux<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string *,std::less<std::string>) =====
void __fastcall std::priv::__unguarded_insertion_sort_aux<std::string *,std::string,std::less<std::string>>(
        std::string *a1,
        std::string *a2)
{
  std::string *v3; // r4
  std::string v4; // [sp+4h] [bp-20h] BYREF

  if ( a1 != a2 )
  {
    v3 = a1;
    do
    {
      std::string::string(&v4, v3);
      std::priv::__unguarded_linear_insert<std::string *,std::string,std::less<std::string>>(v3++, &v4);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
    }
    while ( a2 != v3 );
  }
}


// ===== 46484c std::priv::__linear_insert<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string,std::less<std::string>) =====
void __fastcall std::priv::__linear_insert<std::string *,std::string,std::less<std::string>>(
        std::string *a1,
        std::string *a2,
        const std::string *a3)
{
  char *M_data; // r3
  char *v6; // r0
  int v7; // r5
  int v8; // r4
  size_t v9; // r2
  int v11; // r0
  int v12; // r5
  std::string v13; // [sp+4h] [bp-1Ch] BYREF

  M_data = a1->_M_start_of_storage._M_data;
  v6 = a3->_M_start_of_storage._M_data;
  v7 = a3->_M_finish - v6;
  v8 = a1->_M_finish - M_data;
  if ( v8 >= v7 )
    v9 = a3->_M_finish - v6;
  else
    v9 = a1->_M_finish - M_data;
  v11 = memcmp(v6, M_data, v9);
  if ( v11 )
  {
    if ( v11 >= 0 )
      goto LABEL_6;
  }
  else if ( v7 >= v8 )
  {
LABEL_6:
    std::string::string(&v13, a3);
    std::priv::__unguarded_linear_insert<std::string *,std::string,std::less<std::string>>(a2, &v13);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
    return;
  }
  v12 = -1431655765 * (((char *)a2 - (char *)a1) >> 3);
  if ( v12 > 0 )
  {
    while ( 1 )
    {
      std::string::_M_assign(a2, a2[-1]._M_start_of_storage._M_data, a2[-1]._M_finish);
      if ( !--v12 )
        break;
      --a2;
    }
  }
  if ( a3 != a1 )
    std::string::_M_assign(a1, a3->_M_start_of_storage._M_data, a3->_M_finish);
}


// ===== 46496c std::priv::__insertion_sort<std::string *,std::string,std::less<std::string>>(std::string *,std::string *,std::string *,std::less<std::string>) =====
void __fastcall std::priv::__insertion_sort<std::string *,std::string,std::less<std::string>>(
        std::string *a1,
        std::string *a2)
{
  std::string *i; // r4
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  if ( a1 != a2 )
  {
    for ( i = a1 + 1; a2 != i; ++i )
    {
      std::string::string(&v5, i);
      std::priv::__linear_insert<std::string *,std::string,std::less<std::string>>(a1, i, &v5);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
    }
  }
}


// ===== 464a0c std::priv::__final_insertion_sort<std::string *,std::less<std::string>>(std::string *,std::string *,std::less<std::string>) =====
void __fastcall std::priv::__final_insertion_sort<std::string *,std::less<std::string>>(
        std::string *a1,
        std::string *a2)
{
  std::string *v3; // r5

  if ( (char *)a2 - (char *)a1 < 408 )
  {
    std::priv::__insertion_sort<std::string *,std::string,std::less<std::string>>(a1, a2);
  }
  else
  {
    v3 = a1 + 16;
    std::priv::__insertion_sort<std::string *,std::string,std::less<std::string>>(a1, a1 + 16);
    std::priv::__unguarded_insertion_sort_aux<std::string *,std::string,std::less<std::string>>(v3, a2);
  }
}


// ===== 464a68 PlayerSavegame::SG_DeleteCheckpoint(uint,bool) =====
int __fastcall PlayerSavegame::SG_DeleteCheckpoint(PlayerSavegame *this, int a2, bool a3)
{
  const char *v5; // r1
  const char *v6; // r1
  bool v8; // [sp+0h] [bp-24h]
  std::string v9; // [sp+4h] [bp-20h] BYREF

  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0x10u);
  *v9._M_finish = 0;
  PlayerSavegame::SG_GetFilename(this, &v9, (std::string *)((char *)&dword_0 + 1), a2, v8);
  LOBYTE(this) = PlayerSavegame::SG_Delete((PlayerSavegame *)v9._M_start_of_storage._M_data, v5);
  std::string::_M_append(&v9, ".bak", "");
  LOBYTE(this) = PlayerSavegame::SG_Delete((PlayerSavegame *)v9._M_start_of_storage._M_data, v6) | (unsigned __int8)this;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  return (unsigned __int8)this;
}


// ===== 464b2c PlayerSavegame::SG_Save(void) =====
int __fastcall PlayerSavegame::SG_Save(int this)
{
  int v1; // r4
  void (*v2)(IStreamBase *, void *); // r5
  Savegame *v3; // r0
  bool v4; // r2
  bool savedregs; // [sp+8h] [bp+0h]

  v1 = this;
  if ( *(_DWORD *)(this + 8) && !*(_BYTE *)(this + 12) )
  {
    if ( *(_BYTE *)(GetOnline() + 5)
      && PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)
      && !*(_BYTE *)(dword_99F76C + 1817) )
    {
      *(_DWORD *)(v1 + 376) = 2;
    }
    else
    {
      *(_DWORD *)(v1 + 376) = 1;
    }
    if ( *(_BYTE *)(GetOnline() + 5)
      && (!PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) || *(_BYTE *)(dword_99F76C + 1817)) )
    {
      v2 = (void (*)(IStreamBase *, void *))PlayerSavegame::SG_Synchronize((PlayerSavegame *)v1, 1);
      PlayerSavegame::_SetupSavedSections((PlayerSavegame *)v1, 1, v2);
      v3 = *(Savegame **)(v1 + 8);
      if ( !*((_DWORD *)v3 + 7) )
      {
        Savegame::_cacheFile(v3, nullptr);
        v3 = *(Savegame **)(v1 + 8);
      }
      Savegame::saveAll(v3);
      PlayerSavegame::_SetupSavedSections((PlayerSavegame *)v1, 0, v2);
      if ( v2 )
      {
        LevelSavegame::Delete(*(LevelSavegame **)(v1 + 4), 0, 0, PlayerSavegame::m_difficultyLevel, 1, 0, savedregs);
        PlayerSavegame::SG_DeleteCheckpoint(*(PlayerSavegame **)(v1 + 4), 0, v4);
      }
    }
    else
    {
      Savegame::saveAll(*(Savegame **)(v1 + 8));
    }
    return PlayerSavegame::_SaveVolatileQuestsLog((PlayerSavegame *)v1);
  }
  return this;
}


// ===== 464ca0 PlayerSavegame::SG_Delete(uint) =====
int __fastcall PlayerSavegame::SG_Delete(PlayerSavegame *this, unsigned int a2)
{
  const char *v3; // r1
  const char *v4; // r1
  bool v6; // [sp+0h] [bp-20h]
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v7, 0x10u);
  *v7._M_finish = 0;
  PlayerSavegame::SG_GetFilename(this, &v7, nullptr, 0, v6);
  LOBYTE(this) = PlayerSavegame::SG_Delete((PlayerSavegame *)v7._M_start_of_storage._M_data, v3);
  std::string::_M_append(&v7, ".bak", "");
  LOBYTE(this) = PlayerSavegame::SG_Delete((PlayerSavegame *)v7._M_start_of_storage._M_data, v4) | (unsigned __int8)this;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  return (unsigned __int8)this;
}


// ===== 464d5c PlayerSavegame::SG_Exists(uint) =====
int __fastcall PlayerSavegame::SG_Exists(PlayerSavegame *this, unsigned int a2)
{
  const char *v3; // r1
  int v4; // r8
  void *p_M_finish; // r2
  char *M_finish; // r2
  const char *v8; // r1
  char *M_data; // r8
  unsigned int size; // r0
  unsigned int *v11; // r1
  char *v12; // r9
  char *v13; // r0
  int v14; // r10
  char *v15; // r0
  char *v16; // r10
  _BOOL4 v17; // [sp+0h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+4h] [bp-34h] BYREF
  std::string v19; // [sp+1Ch] [bp-1Ch] BYREF

  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 0x10u);
  *v19._M_finish = 0;
  PlayerSavegame::SG_GetFilename(this, &v19, nullptr, 0, v17);
  if ( PlayerSavegame::SG_Exists((PlayerSavegame *)v19._M_start_of_storage._M_data, v3) )
  {
    v4 = 1;
  }
  else
  {
    v18._M_finish = (char *)&v18;
    v18._M_start_of_storage._M_data = (char *)&v18;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
      &v18,
      v19._M_finish - v19._M_start_of_storage._M_data + 5);
    *v18._M_finish = 0;
    std::string::_M_append((std::string *)&v18, v19._M_start_of_storage._M_data, v19._M_finish);
    if ( (std::priv::_String_base<char,std::allocator<char> > *)v18._M_start_of_storage._M_data == &v18 )
      p_M_finish = &v18._M_finish;
    else
      p_M_finish = v18._M_buffers._M_end_of_storage;
    if ( (unsigned int)p_M_finish - (unsigned int)v18._M_finish <= 4 )
    {
      size = std::string::_M_compute_next_size((std::string *)&v18, 4u);
      v12 = (char *)size;
      if ( size )
      {
        v17 = size;
        M_data = (char *)std::__node_alloc::allocate((std::__node_alloc *)&v17, v11);
        v12 = &M_data[v17];
      }
      else
      {
        M_data = nullptr;
      }
      if ( v18._M_start_of_storage._M_data == v18._M_finish )
      {
        v13 = M_data;
      }
      else
      {
        v14 = v18._M_finish - v18._M_start_of_storage._M_data;
        v13 = (char *)memcpy(M_data, v18._M_start_of_storage._M_data, v18._M_finish - v18._M_start_of_storage._M_data)
            + v14;
      }
      v15 = (char *)memcpy(v13, ".bak", 4u);
      v15[4] = 0;
      v16 = v15 + 4;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
      v18._M_buffers._M_end_of_storage = v12;
      v18._M_finish = v16;
      v18._M_start_of_storage._M_data = M_data;
    }
    else
    {
      *v18._M_finish = 46;
      M_finish = v18._M_finish;
      v8 = (char *)&dword_60 + 2;
      v18._M_finish[1] = (unsigned __int8)&dword_60 + 2;
      M_finish[3] = 107;
      M_finish[2] = 97;
      v18._M_finish[4] = 0;
      M_data = v18._M_start_of_storage._M_data;
      v18._M_finish += 4;
    }
    v4 = PlayerSavegame::SG_Exists((PlayerSavegame *)M_data, v8);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  return v4;
}


// ===== 464f4c PlayerSavegame::_Load(int) =====
void __fastcall PlayerSavegame::_Load(PlayerSavegame *this, char a2)
{
  std::string *v2; // r8
  Savegame *v5; // r0
  Savegame *v6; // r0
  Savegame *v7; // r8
  void (*v8)(IStreamBase *, void *); // r2
  Savegame *v9; // r0
  Savegame *v10; // r0
  char *M_data; // r11
  Savegame *v12; // r9
  bool v13; // [sp+0h] [bp-2Ch]
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+Ch] [bp-20h] BYREF

  v2 = *((std::string **)this + 2);
  if ( *(_QWORD *)((char *)this + 4) < 0xFFFFFFFF )
  {
    v14._M_finish = (char *)&v14;
    v14._M_start_of_storage._M_data = (char *)&v14;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v14, 0x10u);
    *v14._M_finish = (char)v2;
    PlayerSavegame::SG_GetFilename(*((PlayerSavegame **)this + 1), (unsigned int)&v14, v2, (bool)v2, v13);
    M_data = v14._M_start_of_storage._M_data;
    v12 = (Savegame *)operator new(60, v2);
    Savegame::Savegame(v12, M_data, (bool)v2);
    *((_DWORD *)this + 2) = v12;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  }
  if ( (a2 & 1) != 0 )
  {
    v5 = *((Savegame **)this + 2);
    if ( v5 )
    {
      Savegame::load(
        v5,
        "PNAM",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadPlayerName,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SavePlayerName,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "PLVL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadPlayerLevel,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SavePlayerLevel,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "PCLS",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadPlayerClass,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SavePlayerClass,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "PDFL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadDifficultyLevel,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveDifficultyLevel,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "LNAM",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelName,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelName,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "LEPT",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelEntryPoint,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelEntryPoint,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "LUSP",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadUseSpawnPoint,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveUseSpawnPoint,
        this);
    }
  }
  if ( (a2 & 2) != 0 )
  {
    PlayerSavegame::_InitLevelStates(this);
    PlayerSavegame::_InitSkills((int)this);
    PlayerSavegame::_InitFaeries(this);
    QuestSavegame::InitQuests((int)this + 184);
    QuestSavegame::InitQuests((int)this + 280);
  }
  if ( (a2 & 4) != 0 )
  {
    v6 = *((Savegame **)this + 2);
    if ( v6 )
    {
      Savegame::load(
        v6,
        "LVLS",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelStates,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelStates,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "SKIL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadSkills,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveSkills,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "FAES",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFaeries,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveFaeries,
        this);
      v7 = *((Savegame **)this + 2);
      if ( !*(_BYTE *)(GetOnline() + 5) || *(_BYTE *)(dword_99F76C + 1819) )
        v8 = nullptr;
      else
        v8 = (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadCurrentFaery;
      Savegame::load(v7, "CFEE", v8, (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveCurrentFaery, this);
      Savegame::load(
        *((Savegame **)this + 2),
        "QEST",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadQuests,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveQuests,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "PROP",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadProperties,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveProperties,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "GEAR",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadInventory,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveInventory,
        this);
      Savegame::load(
        *((Savegame **)this + 2),
        "FTVL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFastTravelList,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveFastTravelList,
        this);
    }
  }
  if ( (a2 & 8) != 0 )
  {
    v9 = *((Savegame **)this + 2);
    if ( v9 )
      Savegame::load(
        v9,
        "SKIL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadSkills,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveSkills,
        this);
  }
  if ( (a2 & 0x20) != 0 )
  {
    v10 = *((Savegame **)this + 2);
    if ( v10 )
      Savegame::load(
        v10,
        "PROP",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadProperties,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveProperties,
        this);
  }
  if ( (a2 & 0x10) != 0 )
  {
    if ( *((_DWORD *)this + 2) )
    {
      QuestSavegame::InitQuests((int)this + 184);
      QuestSavegame::InitQuests((int)this + 280);
      Savegame::load(
        *((Savegame **)this + 2),
        "QEST",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadQuests,
        (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveQuests,
        this);
    }
  }
}


// ===== 465430 PlayerSavegame::SG_Load(int) =====
int __fastcall PlayerSavegame::SG_Load(PlayerSavegame *this, int a2)
{
  PlayerSavegame::_Load(this, a2);
  return PlayerSavegame::_LoadVolatileQuestsLog(this, a2);
}


// ===== 465450 PlayerSavegame::SG_LoadCheckpoint(int) =====
void __fastcall PlayerSavegame::SG_LoadCheckpoint(PlayerSavegame **this, int a2)
{
  PlayerSavegame *v4; // r10
  bool v5; // r3
  char *M_data; // r10
  size_t v7; // r0
  char *v8; // r8
  size_t v9; // r0
  bool v10; // [sp+0h] [bp-20h]
  bool v11; // [sp+0h] [bp-20h]
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+4h] [bp-1Ch] BYREF

  if ( !*(this + 2) )
  {
    PlayerSavegame::SG_Load((PlayerSavegame *)this, a2);
    return;
  }
  v12._M_finish = (char *)&v12;
  v12._M_start_of_storage._M_data = (char *)&v12;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v12, 0x10u);
  *v12._M_finish = 0;
  v4 = *(this + 1);
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
    {
      v5 = 1;
      goto LABEL_4;
    }
    if ( *(_BYTE *)(dword_99F76C + 1817) )
    {
      v5 = 1;
      goto LABEL_4;
    }
  }
  v5 = 0;
LABEL_4:
  PlayerSavegame::SG_GetFilename(v4, (unsigned int)&v12, (std::string *)((char *)&dword_0 + 1), v5, v10);
  M_data = v12._M_start_of_storage._M_data;
  v7 = LC_API_STRLEN_0(v12._M_start_of_storage._M_data);
  std::string::_M_assign((std::string *const)((char *)*(this + 2) + 4), M_data, &M_data[v7]);
  Savegame::_cacheFile(*(this + 2), nullptr);
  PlayerSavegame::SG_Load((PlayerSavegame *)this, a2);
  PlayerSavegame::SG_GetFilename(*(this + 1), (unsigned int)&v12, nullptr, 0, v11);
  v8 = v12._M_start_of_storage._M_data;
  v9 = LC_API_STRLEN_0(v12._M_start_of_storage._M_data);
  std::string::_M_assign((std::string *const)((char *)*(this + 2) + 4), v8, &v8[v9]);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
}


// ===== 4655ac PlayerSavegame::PlayerSavegame(uint,int,bool) =====
void __fastcall PlayerSavegame::PlayerSavegame(PlayerSavegame *this, unsigned int a2, int a3, bool a4)
{
  int v5; // r5
  _DWORD *v6; // r0
  char *v8; // r2
  char *v9; // r1
  int v10; // r1
  PlayerSavegame *v11; // r3

  v5 = 0;
  *(_DWORD *)this = off_968E98;
  *((_DWORD *)this + 1) = a2;
  v6 = (_DWORD *)((char *)this + 24);
  *((_DWORD *)this + 10) = v6;
  *((_DWORD *)this + 11) = v6;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 20) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 13) = -1;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 184));
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 280));
  v8 = (char *)this + 380;
  do
  {
    *(_DWORD *)&v8[v5] = 0;
    v9 = &v8[v5];
    v5 += 8;
    *((_DWORD *)v9 + 1) = 0;
  }
  while ( v5 != 24 );
  v10 = 0;
  *((_BYTE *)this + 404) = 0;
  v11 = this;
  do
  {
    ++v10;
    *((_DWORD *)v11 + 37) = 0;
    *((_DWORD *)v11 + 40) = 0;
    *((_DWORD *)v11 + 43) = 0;
    *((_DWORD *)v11 + 16) = 0;
    *((_DWORD *)v11 + 26) = 0;
    *((_DWORD *)v11 + 29) = 0;
    *((_DWORD *)v11 + 23) = 0;
    *((_DWORD *)v11 + 20) = 0;
    v11 = (PlayerSavegame *)((char *)v11 + 4);
  }
  while ( v10 != 3 );
  PlayerSavegame::SG_Load(this, a3);
}


// ===== 4656bc PlayerSavegame::PlayerSavegame(uint,int,bool) =====
void __fastcall PlayerSavegame::PlayerSavegame(PlayerSavegame *this, unsigned int a2, int a3, bool a4)
{
  int v5; // r5
  _DWORD *v6; // r0
  char *v8; // r2
  char *v9; // r1
  int v10; // r1
  PlayerSavegame *v11; // r3

  v5 = 0;
  *(_DWORD *)this = off_968E98;
  *((_DWORD *)this + 1) = a2;
  v6 = (_DWORD *)((char *)this + 24);
  *((_DWORD *)this + 10) = v6;
  *((_DWORD *)this + 11) = v6;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 20) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 13) = -1;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 184));
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 280));
  v8 = (char *)this + 380;
  do
  {
    *(_DWORD *)&v8[v5] = 0;
    v9 = &v8[v5];
    v5 += 8;
    *((_DWORD *)v9 + 1) = 0;
  }
  while ( v5 != 24 );
  v10 = 0;
  *((_BYTE *)this + 404) = 0;
  v11 = this;
  do
  {
    ++v10;
    *((_DWORD *)v11 + 37) = 0;
    *((_DWORD *)v11 + 40) = 0;
    *((_DWORD *)v11 + 43) = 0;
    *((_DWORD *)v11 + 16) = 0;
    *((_DWORD *)v11 + 26) = 0;
    *((_DWORD *)v11 + 29) = 0;
    *((_DWORD *)v11 + 23) = 0;
    *((_DWORD *)v11 + 20) = 0;
    v11 = (PlayerSavegame *)((char *)v11 + 4);
  }
  while ( v10 != 3 );
  PlayerSavegame::SG_Load(this, a3);
}


// ===== 4657cc std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4657ec std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *v6; // r10
  int v7; // r2
  char v8; // r3
  int v9; // r1
  int v10; // r5
  _DWORD *v11; // r6
  _DWORD *v12; // r4
  int v13; // r3

  v6 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate();
  v6[4] = *((_DWORD *)a2 + 4);
  v7 = *((_DWORD *)a2 + 5);
  v6[3] = 0;
  v6[2] = 0;
  v6[5] = v7;
  v8 = *a2;
  v6[1] = a3;
  *(_BYTE *)v6 = v8;
  v9 = *((_DWORD *)a2 + 3);
  if ( v9 )
    v6[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_copy(
              a1,
              v9,
              v6);
  v10 = *((_DWORD *)a2 + 2);
  if ( v10 )
  {
    v11 = v6;
    do
    {
      v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate();
      v12[4] = *(_DWORD *)(v10 + 16);
      v13 = *(_DWORD *)(v10 + 20);
      v12[2] = 0;
      v12[3] = 0;
      v12[5] = v13;
      *(_BYTE *)v12 = *(_BYTE *)v10;
      v11[2] = v12;
      v12[1] = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        v12[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_copy(
                   a1,
                   *(_DWORD *)(v10 + 12),
                   v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v6;
}


// ===== 4658c4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_Rb_tree(
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
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_copy(
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


// ===== 46593c std::vector<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>,std::allocator<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>>>::_M_insert_overflow_aux(std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>*,std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::map<int,int>>::_M_insert_overflow_aux(int a1, int a2, int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  _DWORD *v8; // r5
  _DWORD *v9; // r7
  void *v10; // r0
  size_t v11; // r3
  size_t v12; // [sp+8h] [bp-Ch] BYREF

  v6 = -1431655765 * ((*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 3);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0xAAAAAAA || v6 > v7 )
    v7 = 178956970;
  v12 = v7;
  v8 = std::allocator<std::map<int,int>>::_M_allocate(a1 + 8, v7, &v12);
  v9 = std::priv::__uninitialized_move<std::map<int,int> *,std::map<int,int> *,std::__false_type>(
         *(_DWORD **)a1,
         a2,
         v8);
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_Rb_tree(
    (int)v9,
    a3);
  v10 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    if ( (unsigned int)(8 * ((*(_DWORD *)(a1 + 8) - (int)v10) >> 3)) > 0x80 )
      CustomFree(v10);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, 8 * ((*(_DWORD *)(a1 + 8) - (int)v10) >> 3));
  }
  v11 = v12;
  *(_DWORD *)a1 = v8;
  *(_DWORD *)(a1 + 4) = v9 + 6;
  *(_DWORD *)(a1 + 8) = &v8[6 * v11];
}


// ===== 465a48 std::vector<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>,std::allocator<std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>>>>::push_back(std::map<int,int,std::less<int>,std::allocator<std::pair<int const,int>>> const&) =====
void __fastcall std::vector<std::map<int,int>>::push_back(unsigned int *a1, unsigned int a2)
{
  unsigned int v2; // r6
  _DWORD *v4[6]; // [sp+0h] [bp-18h] BYREF

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    if ( a2 < *a1 || v2 <= a2 )
    {
      std::vector<std::map<int,int>>::_M_insert_overflow_aux((int)a1, a1[1], a2);
    }
    else
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_Rb_tree(
        (int)v4,
        a2);
      std::vector<std::map<int,int>>::_M_insert_overflow_aux((int)a1, v2, (int)v4);
      if ( v4[4] )
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
          (int)v4,
          v4[1]);
    }
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_Rb_tree(
      a1[1],
      a2);
    a1[1] += 24;
  }
}


// ===== 465ae0 PlayerSavegame::PlayerSavegame(void) =====
void __fastcall PlayerSavegame::PlayerSavegame(PlayerSavegame *this)
{
  int v2; // r5
  char *v3; // r0
  int v4; // r3
  char *v5; // r1
  int v6; // r2
  char *v7; // r0
  int v8; // r1
  PlayerSavegame *v9; // r3
  _BYTE v10[4]; // [sp+0h] [bp-18h] BYREF
  int v11; // [sp+4h] [bp-14h]
  _BYTE *v12; // [sp+8h] [bp-10h]
  _BYTE *v13; // [sp+Ch] [bp-Ch]
  int v14; // [sp+10h] [bp-8h]

  v2 = 0;
  *(_DWORD *)this = off_968E98;
  v3 = (char *)this + 24;
  *((_DWORD *)this + 10) = v3;
  *((_DWORD *)this + 11) = v3;
  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 20) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v3, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 13) = -1;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 184));
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 280));
  v4 = 0;
  *((_DWORD *)this + 94) = 0;
  v5 = (char *)this + 380;
  v6 = 0;
  do
  {
    *(_DWORD *)&v5[v4] = 0;
    v7 = &v5[v4];
    v4 += 8;
    *((_DWORD *)v7 + 1) = 0;
  }
  while ( v4 != 24 );
  *((_BYTE *)this + 404) = 0;
  do
  {
    v11 = 0;
    v10[0] = 0;
    v12 = v10;
    v13 = v10;
    v14 = 0;
    std::vector<std::map<int,int>>::push_back((char *)this + 136, v10, v6);
    ++v2;
    if ( v14 )
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
        v10,
        v11);
  }
  while ( v2 != 2 );
  v8 = 0;
  v9 = this;
  do
  {
    ++v8;
    *((_DWORD *)v9 + 37) = 0;
    *((_DWORD *)v9 + 40) = 0;
    *((_DWORD *)v9 + 43) = 0;
    *((_DWORD *)v9 + 16) = 0;
    *((_DWORD *)v9 + 26) = 0;
    *((_DWORD *)v9 + 29) = 0;
    *((_DWORD *)v9 + 23) = 0;
    *((_DWORD *)v9 + 20) = 0;
    v9 = (PlayerSavegame *)((char *)v9 + 4);
  }
  while ( v8 != 3 );
}


// ===== 465c40 PlayerSavegame::PlayerSavegame(void) =====
void __fastcall PlayerSavegame::PlayerSavegame(PlayerSavegame *this)
{
  int v2; // r5
  _DWORD *v3; // r0
  int v4; // r3
  char *v5; // r1
  char *v6; // r0
  int v7; // r1
  PlayerSavegame *v8; // r3
  _BYTE v9[4]; // [sp+0h] [bp-18h] BYREF
  _DWORD *v10; // [sp+4h] [bp-14h]
  _BYTE *v11; // [sp+8h] [bp-10h]
  _BYTE *v12; // [sp+Ch] [bp-Ch]
  int v13; // [sp+10h] [bp-8h]

  v2 = 0;
  *(_DWORD *)this = off_968E98;
  v3 = (_DWORD *)((char *)this + 24);
  *((_DWORD *)this + 10) = v3;
  *((_DWORD *)this + 11) = v3;
  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 20) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 13) = -1;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 184));
  QuestSavegame::QuestSavegame((PlayerSavegame *)((char *)this + 280));
  v4 = 0;
  *((_DWORD *)this + 94) = 0;
  v5 = (char *)this + 380;
  do
  {
    *(_DWORD *)&v5[v4] = 0;
    v6 = &v5[v4];
    v4 += 8;
    *((_DWORD *)v6 + 1) = 0;
  }
  while ( v4 != 24 );
  *((_BYTE *)this + 404) = 0;
  do
  {
    v10 = nullptr;
    v9[0] = 0;
    v11 = v9;
    v12 = v9;
    v13 = 0;
    std::vector<std::map<int,int>>::push_back((unsigned int *)this + 34, (unsigned int)v9);
    ++v2;
    if ( v13 )
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
        (int)v9,
        v10);
  }
  while ( v2 != 2 );
  v7 = 0;
  v8 = this;
  do
  {
    ++v7;
    *((_DWORD *)v8 + 37) = 0;
    *((_DWORD *)v8 + 40) = 0;
    *((_DWORD *)v8 + 43) = 0;
    *((_DWORD *)v8 + 16) = 0;
    *((_DWORD *)v8 + 26) = 0;
    *((_DWORD *)v8 + 29) = 0;
    *((_DWORD *)v8 + 23) = 0;
    *((_DWORD *)v8 + 20) = 0;
    v8 = (PlayerSavegame *)((char *)v8 + 4);
  }
  while ( v7 != 3 );
}


// ===== 465da0 std::priv::__median<std::string,std::less<std::string>>(std::string const&,std::string const&,std::string const&,std::less<std::string>) =====
int __fastcall std::priv::__median<std::string,std::less<std::string>>(int a1, int a2, int a3)
{
  const void *v3; // r7
  const void *v4; // r6
  signed int v6; // r5
  signed int v7; // r9
  int v8; // r4
  size_t v10; // r2
  int v11; // r0
  const void *v12; // r11
  int v13; // r3
  const void *v14; // r0
  signed int v15; // r7
  size_t v16; // r2
  int v17; // r0
  size_t v18; // r2
  int v19; // r0
  const void *v20; // r11
  int v21; // r3
  const void *v22; // r0
  signed int v23; // r6
  size_t v24; // r2
  int v25; // r0
  size_t v26; // r2
  int v27; // r0

  v3 = *(const void **)(a1 + 20);
  v4 = *(const void **)(a2 + 20);
  v6 = *(_DWORD *)(a1 + 16) - (_DWORD)v3;
  v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v4;
  v8 = a2;
  if ( v7 >= v6 )
    v10 = *(_DWORD *)(a1 + 16) - (_DWORD)v3;
  else
    v10 = *(_DWORD *)(a2 + 16) - (_DWORD)v4;
  v11 = memcmp(v3, *(const void **)(a2 + 20), v10);
  if ( !v11 )
  {
    if ( v6 >= v7 )
      goto LABEL_6;
LABEL_18:
    v20 = *(const void **)(a3 + 20);
    v21 = *(_DWORD *)(a3 + 16);
    v22 = v4;
    v23 = v21 - (_DWORD)v20;
    if ( v7 >= v21 - (int)v20 )
      v24 = v21 - (_DWORD)v20;
    else
      v24 = v7;
    v25 = memcmp(v22, v20, v24);
    if ( v25 )
    {
      if ( v25 < 0 )
        return v8;
    }
    else if ( v7 < v23 )
    {
      return v8;
    }
    if ( v6 >= v23 )
      v26 = v23;
    else
      v26 = v6;
    v27 = memcmp(v3, v20, v26);
    if ( v27 )
    {
      if ( v27 < 0 )
        return a3;
    }
    else if ( v6 < v23 )
    {
      return a3;
    }
    return a1;
  }
  if ( v11 < 0 )
    goto LABEL_18;
LABEL_6:
  v12 = *(const void **)(a3 + 20);
  v13 = *(_DWORD *)(a3 + 16);
  v14 = v3;
  v15 = v13 - (_DWORD)v12;
  if ( v6 >= v13 - (int)v12 )
    v16 = v13 - (_DWORD)v12;
  else
    v16 = v6;
  v17 = memcmp(v14, v12, v16);
  if ( !v17 )
  {
    if ( v6 >= v15 )
      goto LABEL_11;
    return a1;
  }
  if ( v17 >= 0 )
  {
LABEL_11:
    if ( v7 >= v15 )
      v18 = v15;
    else
      v18 = v7;
    v19 = memcmp(v4, v12, v18);
    if ( v19 )
    {
      if ( v19 >= 0 )
        return v8;
    }
    else if ( v7 >= v15 )
    {
      return v8;
    }
    return a3;
  }
  return a1;
}


// ===== 465ef4 std::priv::__introsort_loop<std::string *,std::string,int,std::less<std::string>>(std::string *,std::string *,std::string *,int,std::less<std::string>) =====
int __fastcall std::priv::__introsort_loop<std::string *,std::string,int,std::less<std::string>>(
        int *a1,
        int *a2,
        int a3,
        int a4)
{
  int *v4; // r5
  int v5; // r1
  int v7; // r6
  const std::string *v8; // r0
  int *v9; // r7
  _BYTE v11[4]; // [sp+20h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+2Ch] [bp-20h] BYREF

  v4 = a2;
  v5 = (char *)a2 - (char *)a1;
  v7 = a4;
  if ( v5 > 407 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        --v7;
        v8 = (const std::string *)std::priv::__median<std::string,std::less<std::string>>(
                                    (int)a1,
                                    (int)&a1[6 * ((-1431655765 * (v5 >> 3)) >> 1)],
                                    (int)(v4 - 6));
        std::string::string((std::string *)&v12, v8);
        v9 = std::priv::__unguarded_partition<std::string *,std::string,std::less<std::string>>(a1, v4, (int)&v12);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
        std::priv::__introsort_loop<std::string *,std::string,int,std::less<std::string>>(v9, v4, 0, v7, v11);
        v5 = (char *)v9 - (char *)a1;
        if ( (char *)v9 - (char *)a1 <= 407 )
          break;
        v4 = v9;
        if ( !v7 )
          goto LABEL_7;
      }
    }
    else
    {
LABEL_7:
      std::priv::__partial_sort<std::string *,std::string,std::less<std::string>>(
        (std::string *)a1,
        (int)v4,
        (unsigned int)v4);
    }
  }
  return 16556;
}


// ===== 466040 std::sort<std::string *>(std::string *,std::string *) =====
void __fastcall std::sort<std::string *>(int *a1, int *a2)
{
  int v4; // r2
  int v5; // r3
  int v6; // r3

  if ( a1 != a2 )
  {
    v4 = -1431655765 * (((char *)a2 - (char *)a1) >> 3);
    if ( v4 == 1 )
    {
      v5 = 0;
    }
    else
    {
      v6 = 0;
      do
      {
        v4 >>= 1;
        ++v6;
      }
      while ( v4 != 1 );
      v5 = 2 * v6;
    }
    std::priv::__introsort_loop<std::string *,std::string,int,std::less<std::string>>(a1, a2, 0, v5);
    std::priv::__final_insertion_sort<std::string *,std::less<std::string>>((std::string *)a1, (std::string *)a2);
  }
}


// ===== 4660c8 PlayerSavegame::SG_GetNextFreeSlot(void) =====
unsigned int __fastcall PlayerSavegame::SG_GetNextFreeSlot(PlayerSavegame *this)
{
  const char *v1; // r1
  std::priv::_String_base<char,std::allocator<char> > *v2; // r3
  unsigned int v3; // r5
  int v4; // r6
  PlayerSavegame *SlotFromFilename; // r0
  unsigned int v6; // r1
  int v8; // r2
  std::priv::_String_base<char,std::allocator<char> > *v9; // [sp+4h] [bp-Ch] BYREF
  int *v10; // [sp+8h] [bp-8h]

  PlayerSavegame::SG_GetSavegameList((PlayerSavegame *)&v9, 0);
  std::sort<std::string *>((int *)v9, v10);
  v2 = v9;
  v3 = -1431655765 * (((char *)v10 - (char *)v9) >> 3);
  if ( v3 )
  {
    v4 = 0;
    v3 = 0;
    do
    {
      SlotFromFilename = (PlayerSavegame *)PlayerSavegame::SG_GetSlotFromFilename(
                                             (PlayerSavegame *)v2[v4]._M_start_of_storage._M_data,
                                             v1);
      if ( (PlayerSavegame *)v3 != SlotFromFilename )
        break;
      if ( !PlayerSavegame::SG_Exists(SlotFromFilename, v6) )
        break;
      v2 = v9;
      ++v3;
      ++v4;
      v8 = ((char *)v10 - (char *)v9) >> 3;
      v1 = (const char *)(1431655765 * v8);
    }
    while ( v3 < -1431655765 * v8 );
  }
  std::vector<std::string>::~vector(&v9);
  return v3;
}


// ===== 466184 PlayerSavegame::SG_SaveCheckpoint(void) =====
void __fastcall PlayerSavegame::SG_SaveCheckpoint(PlayerSavegame *this)
{
  PlayerSavegame *v2; // r8
  _BOOL4 v3; // r3
  char *M_data; // r8
  size_t v5; // r0
  Savegame *v6; // r0
  char *v7; // r8
  size_t v8; // r0
  bool v9; // [sp+0h] [bp-24h]
  bool v10; // [sp+0h] [bp-24h]
  std::string v11; // [sp+4h] [bp-20h] BYREF

  if ( *((_DWORD *)this + 2) && !*((_BYTE *)this + 12) )
  {
    v11._M_finish = (char *)&v11;
    v11._M_start_of_storage._M_data = (char *)&v11;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v11, 0x10u);
    *v11._M_finish = 0;
    v2 = *((PlayerSavegame **)this + 1);
    v3 = *(_BYTE *)(GetOnline() + 5)
      && (!PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) || *(_BYTE *)(dword_99F76C + 1817));
    PlayerSavegame::SG_GetFilename(v2, &v11, (std::string *)((char *)&dword_0 + 1), v3, v9);
    M_data = v11._M_start_of_storage._M_data;
    v5 = LC_API_STRLEN_0(v11._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)(*((_DWORD *)this + 2) + 4), M_data, &M_data[v5]);
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      *((_DWORD *)this + 94) = 2;
      PlayerSavegame::_SetupSavedSections(this, 1, nullptr);
      v6 = *((Savegame **)this + 2);
      if ( !*((_DWORD *)v6 + 7) )
      {
        Savegame::_cacheFile(v6, nullptr);
        v6 = *((Savegame **)this + 2);
      }
      Savegame::saveAll(v6);
      PlayerSavegame::_SetupSavedSections(this, 0, nullptr);
    }
    else
    {
      *((_DWORD *)this + 94) = 1;
      Savegame::saveAll(*((Savegame **)this + 2));
    }
    PlayerSavegame::SG_GetFilename(*((PlayerSavegame **)this + 1), &v11, nullptr, 0, v10);
    v7 = v11._M_start_of_storage._M_data;
    v8 = LC_API_STRLEN_0(v11._M_start_of_storage._M_data);
    std::string::_M_assign((std::string *const)(*((_DWORD *)this + 2) + 4), v7, &v7[v8]);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  }
}


// ===== 466330 std::bitset<64u>::set(uint,int) =====
int __fastcall std::bitset<64u>::set(int a1, unsigned int a2, int a3)
{
  unsigned int v6; // r3
  int v7; // r2
  char v8; // r5
  int v9; // r5

  if ( a2 > 0x3F )
    __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
  v6 = a2 >> 5;
  v7 = *(_DWORD *)(a1 + 4 * (a2 >> 5));
  v8 = a2 & 0x1F;
  if ( a3 )
    v9 = v7 | (1 << v8);
  else
    v9 = v7 & ~(1 << v8);
  *(_DWORD *)(a1 + 4 * v6) = v9;
  return a1;
}


// ===== 466384 PlayerSavegame::SG_UnlockAllFastTravels(void) =====
int __fastcall PlayerSavegame::SG_UnlockAllFastTravels(int this)
{
  int v1; // r9
  int i; // r8
  unsigned int v3; // r1
  unsigned int v4; // r4

  v1 = this;
  for ( i = 0; i != 3; ++i )
  {
    if ( Arrays::FastTravelList::size )
    {
      v3 = 0;
      v4 = 0;
      do
      {
        this = std::bitset<64u>::set(v1 + 8 * i + 380, v3, 1);
        v3 = ++v4;
      }
      while ( v4 < Arrays::FastTravelList::size );
    }
  }
  return this;
}


// ===== 4663f8 PlayerSavegame::SG_SetFastTravelIdUnlocked(char const*,bool,int) =====
int *__fastcall PlayerSavegame::SG_SetFastTravelIdUnlocked(PlayerSavegame *this, const char *a2, int a3, int a4)
{
  int *result; // r0
  unsigned int v9; // r6
  int v10; // r8
  int v11; // r10

  result = &Arrays::FastTravelList::size;
  v9 = Arrays::FastTravelList::size;
  if ( Arrays::FastTravelList::size )
  {
    v10 = 0;
    v11 = Arrays::FastTravelList::m_memberNames;
    while ( 1 )
    {
      result = (int *)LC_API_STRCMP_0(a2, *(const char **)(v11 + 4 * v10));
      if ( !result )
        break;
      if ( ++v10 == v9 )
        return result;
    }
    if ( v10 >= 0 && v9 > v10 )
      return (int *)std::bitset<64u>::set((char *)this + 8 * a4 + 380, v10, a3);
  }
  return result;
}


// ===== 46649c PlayerSavegame::SG_GetFastTravelIdUnlocked(char const*,int) =====
bool __fastcall PlayerSavegame::SG_GetFastTravelIdUnlocked(PlayerSavegame *this, const char *a2, int a3)
{
  unsigned int v6; // r7
  unsigned int v7; // r6
  int v8; // r8

  v6 = Arrays::FastTravelList::size;
  if ( !Arrays::FastTravelList::size )
    return 0;
  v7 = 0;
  v8 = Arrays::FastTravelList::m_memberNames;
  while ( LC_API_STRCMP_0(a2, *(const char **)(v8 + 4 * v7)) )
  {
    if ( ++v7 == v6 )
      return 0;
  }
  if ( (v7 & 0x80000000) != 0 || v7 >= v6 )
    return 0;
  if ( v7 > 0x3F )
    __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
  return (*((_DWORD *)this + 2 * a3 + (v7 >> 5) + 95) & (1 << (v7 & 0x1F))) != 0;
}


// ===== 466564 PlayerSavegame::SG_GetQuestSG(void) =====
char *__fastcall PlayerSavegame::SG_GetQuestSG(PlayerSavegame *this)
{
  if ( *(_BYTE *)(GetOnline() + 5) )
    return (char *)this + 280;
  else
    return (char *)this + 184;
}


// ===== 466584 PlayerSavegame::SG_GetQuestSG(void) =====
// attributes: thunk
int __fastcall PlayerSavegame::SG_GetQuestSG(PlayerSavegame *this)
{
  return _ZNK14PlayerSavegame13SG_GetQuestSGEv(this);
}


// ===== 466588 PlayerSavegame::SG_SetFaerieState(uint,int,int) =====
unsigned int __fastcall PlayerSavegame::SG_SetFaerieState(PlayerSavegame *this, unsigned int a2, char a3, int a4)
{
  unsigned int result; // r0

  result = *((_DWORD *)this + a4 + 40);
  if ( result <= a2 )
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
                 "faerieId < m_faeriesSize[diff]",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
                 330);
    }
  }
  *(_BYTE *)(*((_DWORD *)this + a4 + 37) + 4 * a2) = a3;
  return result;
}


// ===== 46663c PlayerSavegame::SG_SetFaerieLevel(uint,int,int) =====
unsigned int __fastcall PlayerSavegame::SG_SetFaerieLevel(PlayerSavegame *this, unsigned int a2, __int16 a3, int a4)
{
  int v4; // r7
  unsigned int result; // r0

  v4 = a4 + 40;
  result = *((_DWORD *)this + a4 + 40);
  if ( result > a2 )
    goto LABEL_7;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return result;
  }
  if ( gAssertLevel == 1 )
  {
    result = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "faerieId < m_faeriesSize[diff]",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               307);
    if ( a2 < *((_DWORD *)this + v4) )
LABEL_7:
      *(_WORD *)(*((_DWORD *)this + a4 + 37) + 4 * a2 + 2) = a3;
  }
  return result;
}


// ===== 466700 PlayerSavegame::SG_GetFaerieLevel(uint,int) =====
int __fastcall PlayerSavegame::SG_GetFaerieLevel(PlayerSavegame *this, unsigned int a2, int a3)
{
  int v3; // r7

  v3 = a3 + 40;
  if ( *((_DWORD *)this + a3 + 40) > a2 )
    return *(unsigned __int16 *)(*((_DWORD *)this + a3 + 37) + 4 * a2 + 2);
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return 0;
  }
  if ( gAssertLevel == 1
    && (fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "faerieId < m_faeriesSize[diff]",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
          296),
        a2 < *((_DWORD *)this + v3)) )
  {
    return *(unsigned __int16 *)(*((_DWORD *)this + a3 + 37) + 4 * a2 + 2);
  }
  else
  {
    return 0;
  }
}


// ===== 4667c4 PlayerSavegame::SG_SetSkillLevel(uint,int) =====
int __fastcall PlayerSavegame::SG_SetSkillLevel(int this, unsigned int a2, __int16 a3)
{
  int v3; // r5
  int v6; // r3

  v3 = this;
  if ( *(_DWORD *)(this + 132) <= a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "skillIdx < m_skillsSize",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               177);
    }
  }
  v6 = *(_DWORD *)(v3 + 128);
  if ( !v6 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "m_skills",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               178);
      v6 = *(_DWORD *)(v3 + 128);
    }
  }
  *(_WORD *)(v6 + 8 * a2 + 4) = a3;
  return this;
}


// ===== 4668dc PlayerSavegame::SG_GetSkillLevel(uint) =====
int __fastcall PlayerSavegame::SG_GetSkillLevel(PlayerSavegame *this, unsigned int a2)
{
  int v4; // r3

  if ( *((_DWORD *)this + 33) <= a2 )
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
        "skillIdx < m_skillsSize",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        165);
    }
  }
  v4 = *((_DWORD *)this + 32);
  if ( v4 )
    return *(unsigned __int16 *)(v4 + 8 * a2 + 4);
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return -1;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "m_skills",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
      166);
    v4 = *((_DWORD *)this + 32);
    if ( v4 )
      return *(unsigned __int16 *)(v4 + 8 * a2 + 4);
    return -1;
  }
  else
  {
    return -1;
  }
}


// ===== 466a08 PlayerSavegame::SG_GetSkillId(uint) =====
int __fastcall PlayerSavegame::SG_GetSkillId(PlayerSavegame *this, unsigned int a2)
{
  int v4; // r3

  if ( *((_DWORD *)this + 33) <= a2 )
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
        "skillIdx < m_skillsSize",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        155);
    }
  }
  v4 = *((_DWORD *)this + 32);
  if ( !v4 )
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
        "m_skills",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        156);
      v4 = *((_DWORD *)this + 32);
    }
  }
  return *(_DWORD *)(v4 + 8 * a2);
}


// ===== 466b18 PlayerSavegame::SG_SetMapLocState(int,int,int) =====
int __fastcall PlayerSavegame::SG_SetMapLocState(int this, int a2, int a3, int a4)
{
  int v5; // r8

  v5 = this;
  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "mapLocId >= 0",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               125);
    }
  }
  if ( a2 >= Arrays::WorldMap::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "mapLocId < (int)Arrays::WorldMap::size",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               126);
    }
  }
  if ( a3 >= 0 )
  {
    if ( a3 <= 2 )
      goto LABEL_12;
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        this = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "state < Constants::MapElementState::Count",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
                 128);
      goto LABEL_12;
    }
LABEL_20:
    dword_0 = 0;
    goto LABEL_12;
  }
  if ( gAssertLevel == 2 )
    goto LABEL_20;
  if ( gAssertLevel == 1 )
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "state >= 0",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
             127);
LABEL_12:
  *(_DWORD *)(*(_DWORD *)(v5 + 4 * a4 + 116) + 4 * a2) = a3;
  return this;
}


// ===== 466d10 PlayerSavegame::SG_GetMapLocState(int,int) =====
int __fastcall PlayerSavegame::SG_GetMapLocState(PlayerSavegame *this, int a2, int a3)
{
  if ( a2 < 0 )
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
        "mapLocId >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        115);
    }
  }
  if ( a2 >= Arrays::WorldMap::size )
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
        "mapLocId < (int)Arrays::WorldMap::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        116);
    }
  }
  return *(_DWORD *)(*((_DWORD *)this + a3 + 29) + 4 * a2);
}


// ===== 466e30 PlayerSavegame::SG_IsMapLocSeen(int,int) =====
bool __fastcall PlayerSavegame::SG_IsMapLocSeen(PlayerSavegame *this, int a2, int a3)
{
  return PlayerSavegame::SG_GetMapLocState(this, a2, a3) == 2;
}


// ===== 466e48 PlayerSavegame::SG_SetLevelState(int,int,int) =====
int __fastcall PlayerSavegame::SG_SetLevelState(int this, int a2, int a3, int a4)
{
  int v5; // r8

  v5 = this;
  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "levelId >= 0",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               91);
    }
  }
  if ( a2 >= Arrays::LevelList::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "levelId < (int)Arrays::LevelList::size",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
               92);
    }
  }
  if ( a3 >= 0 )
  {
    if ( a3 <= 1 )
      goto LABEL_12;
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        this = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "state < Constants::LevelState::Count",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
                 94);
      goto LABEL_12;
    }
LABEL_20:
    dword_0 = 0;
    goto LABEL_12;
  }
  if ( gAssertLevel == 2 )
    goto LABEL_20;
  if ( gAssertLevel == 1 )
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "state >= 0",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
             93);
LABEL_12:
  *(_DWORD *)(*(_DWORD *)(v5 + 4 * (a4 + 26)) + 4 * a2) = a3;
  return this;
}


// ===== 467040 PlayerSavegame::SG_GetLevelState(int,int) =====
int __fastcall PlayerSavegame::SG_GetLevelState(PlayerSavegame *this, int a2, int a3)
{
  if ( a2 < 0 )
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
        "levelId >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        81);
    }
  }
  if ( a2 >= Arrays::LevelList::size )
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
        "levelId < (int)Arrays::LevelList::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        82);
    }
  }
  return *(_DWORD *)(*((_DWORD *)this + a3 + 26) + 4 * a2);
}


// ===== 467160 PlayerSavegame::SG_UnpackQuestSync(StreamBuffer &) =====
char *__fastcall PlayerSavegame::SG_UnpackQuestSync(PlayerSavegame *this, StreamBuffer *a2)
{
  QuestSavegame *v2; // r5
  char *result; // r0

  v2 = (PlayerSavegame *)((char *)this + 280);
  QuestSavegame::InitQuests((PlayerSavegame *)((char *)this + 280));
  (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 32))(a2, *(_DWORD *)a2, 0, 0);
  QuestSavegame::UnpackQuests(v2, PlayerSavegame::m_difficultyLevel, a2, 1);
  result = QuestSavegame::CompileQuests(v2, 1);
  *((_BYTE *)this + 20) = 1;
  return result;
}


// ===== 4671d4 PlayerSavegame::SG_VerifyCurrentQuest(int) =====
int __fastcall PlayerSavegame::SG_VerifyCurrentQuest(PlayerSavegame *this, int a2)
{
  int QuestSG; // r0

  QuestSG = PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_VerifyCurrentQuest(QuestSG, a2);
}


// ===== 4671ec PlayerSavegame::SG_GetCurrentPrimaryQuest(int) =====
int __fastcall PlayerSavegame::SG_GetCurrentPrimaryQuest(PlayerSavegame *this, int a2)
{
  QuestSavegame *QuestSG; // r0

  QuestSG = (QuestSavegame *)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetCurrentPrimaryQuest(QuestSG, a2);
}


// ===== 467204 PlayerSavegame::SG_GetCurrentQuest(int) =====
int __fastcall PlayerSavegame::SG_GetCurrentQuest(PlayerSavegame *this, int a2)
{
  QuestSavegame *QuestSG; // r0

  QuestSG = (QuestSavegame *)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetCurrentQuest(QuestSG, a2);
}


// ===== 46721c PlayerSavegame::SG_GetPrevQuest(bool (*)(Quest const*),int,int) =====
int __fastcall PlayerSavegame::SG_GetPrevQuest(PlayerSavegame *this, bool (*a2)(const Quest *), int a3, int a4)
{
  char *QuestSG; // r0

  QuestSG = PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetPrevQuest(QuestSG, a2, a3, a4);
}


// ===== 467244 PlayerSavegame::SG_GetNextQuest(bool (*)(Quest const*),int,int) =====
int __fastcall PlayerSavegame::SG_GetNextQuest(PlayerSavegame *this, bool (*a2)(const Quest *), int a3, int a4)
{
  char *QuestSG; // r0

  QuestSG = PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetNextQuest(QuestSG, a2, a3, a4);
}


// ===== 46726c PlayerSavegame::SG_GetQuestByID(bool (*)(Quest const*),int,int) =====
int __fastcall PlayerSavegame::SG_GetQuestByID(PlayerSavegame *this, bool (*a2)(const Quest *), int a3, int a4)
{
  char *QuestSG; // r0

  QuestSG = PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetQuestByID(QuestSG, a2, a3, a4);
}


// ===== 467294 PlayerSavegame::SG_GetNumQuests(bool (*)(Quest const*),int) =====
int __fastcall PlayerSavegame::SG_GetNumQuests(PlayerSavegame *this, bool (*a2)(const Quest *), int a3)
{
  char *QuestSG; // r0

  QuestSG = PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetNumQuests(QuestSG, a2, a3);
}


// ===== 4672b4 PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE *,int,int) =====
Quest *__fastcall PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(
        PlayerSavegame *this,
        __sFILE *a2,
        int a3,
        int a4)
{
  QuestSavegame *QuestSG; // r0

  QuestSG = (QuestSavegame *)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_DBG_TraceDetailedQuestInformation(QuestSG, a2, a3, a4);
}


// ===== 4672dc PlayerSavegame::SG_GetQuestByName(char const*,int) =====
int __fastcall PlayerSavegame::SG_GetQuestByName(PlayerSavegame *this, const char *a2, int a3)
{
  QuestSavegame *QuestSG; // r0

  QuestSG = (QuestSavegame *)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetQuestByName(QuestSG, a2, a3);
}


// ===== 4672fc PlayerSavegame::SG_GetQuestByID(int,int,bool) =====
int __fastcall PlayerSavegame::SG_GetQuestByID(PlayerSavegame *this, int a2, int a3, int a4)
{
  QuestSavegame *QuestSG; // r0

  QuestSG = (QuestSavegame *)PlayerSavegame::SG_GetQuestSG(this);
  return QuestSavegame::SG_GetQuestByID(QuestSG, a2, a3, a4);
}


// ===== 467324 PlayerSavegame::SG_ReloadSkills(void) =====
int __fastcall PlayerSavegame::SG_ReloadSkills(PlayerSavegame *this)
{
  void *v2; // r0

  v2 = *((void **)this + 32);
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 32) = 0;
  }
  PlayerSavegame::_InitSkills((int)this);
  return PlayerSavegame::SG_Load(this, 8);
}


// ===== 46735c PlayerSavegame::SG_TellSlots(void (*)(int,uint,void *),void *) =====
int __fastcall PlayerSavegame::SG_TellSlots(PlayerSavegame *this, void (*a2)(int, unsigned int, void *), void *a3)
{
  int result; // r0
  int v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r2
  int v10; // r3

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
        "callback",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        273);
    }
  }
  result = ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1);
  v7 = *((_DWORD *)this + 34) + 24 * result;
  v8 = *(_DWORD **)(v7 + 8);
  while ( (_DWORD *)v7 != v8 )
  {
    result = ((int (__fastcall *)(_DWORD, _DWORD, void *))a2)(v8[4], v8[5], a3);
    v9 = (_DWORD *)v8[3];
    if ( v9 )
    {
      while ( v9[2] )
        v9 = (_DWORD *)v9[2];
      v8 = v9;
    }
    else
    {
      v10 = v8[1];
      if ( *(_DWORD **)(v10 + 12) == v8 )
      {
        do
        {
          v8 = (_DWORD *)v10;
          v10 = *(_DWORD *)(v10 + 4);
        }
        while ( *(_DWORD **)(v10 + 12) == v8 );
        v9 = (_DWORD *)v8[3];
      }
      if ( (_DWORD *)v10 != v9 )
        v8 = (_DWORD *)v10;
    }
  }
  return result;
}


// ===== 467488 PlayerSavegame::SG_GetSkillInSlot(int) =====
int __fastcall PlayerSavegame::SG_GetSkillInSlot(PlayerSavegame *this, int a2)
{
  int CurrentSkillSet; // r0
  int v5; // r3
  _DWORD *v6; // r4
  int v7; // r12
  int v8; // r1
  bool v9; // cc
  _DWORD *v10; // r1

  CurrentSkillSet = ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1);
  v5 = *((_DWORD *)this + 34) + 24 * CurrentSkillSet;
  v6 = *(_DWORD **)(v5 + 4);
  if ( !v6 )
    goto LABEL_12;
  v7 = *((_DWORD *)this + 34) + 24 * CurrentSkillSet;
  while ( 1 )
  {
    v8 = v6[4];
    v9 = a2 <= v8;
    if ( a2 <= v8 )
      v10 = (_DWORD *)v6[2];
    else
      v10 = (_DWORD *)v6[3];
    if ( !v9 )
      v6 = (_DWORD *)v7;
    v7 = (int)v6;
    if ( !v10 )
      break;
    v6 = v10;
  }
  if ( (_DWORD *)v5 != v6 && a2 < v6[4] )
LABEL_12:
    v6 = (_DWORD *)(*((_DWORD *)this + 34) + 24 * CurrentSkillSet);
  if ( v6 == (_DWORD *)(*((_DWORD *)this + 34)
                      + 24 * ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1)) )
    return -1;
  else
    return v6[5];
}


// ===== 46752c PlayerSavegame::SG_GetSkillSlot(uint) =====
int __fastcall PlayerSavegame::SG_GetSkillSlot(PlayerSavegame *this, unsigned int a2)
{
  int v4; // r3
  _DWORD *v5; // r1
  _DWORD *v6; // r12
  int v8; // r5

  if ( *((_DWORD *)this + 33) <= a2 )
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
        "skillIdx < m_skillsSize",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        192);
    }
  }
  if ( !*((_DWORD *)this + 32) )
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
        "m_skills",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        193);
    }
  }
  v4 = *((_DWORD *)this + 34)
     + 24 * ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1);
  v5 = *(_DWORD **)(v4 + 8);
  if ( v5 == (_DWORD *)v4 )
    return -1;
  while ( a2 != v5[5] )
  {
    v6 = (_DWORD *)v5[3];
    if ( v6 )
    {
      while ( v6[2] )
        v6 = (_DWORD *)v6[2];
      v5 = v6;
      if ( (_DWORD *)v4 == v6 )
        return -1;
    }
    else
    {
      v8 = v5[1];
      if ( *(_DWORD **)(v8 + 12) == v5 )
      {
        do
        {
          v5 = (_DWORD *)v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(_DWORD **)(v8 + 12) == v5 );
        v6 = (_DWORD *)v5[3];
      }
      if ( (_DWORD *)v8 != v6 )
        v5 = (_DWORD *)v8;
      if ( (_DWORD *)v4 == v5 )
        return -1;
    }
  }
  return v5[4];
}


// ===== 4676e4 PlayerSavegame::SG_HasSkillSlots(void) =====
bool __fastcall PlayerSavegame::SG_HasSkillSlots(PlayerSavegame *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 34)
                   + 24 * ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1)
                   + 16) != 0;
}


// ===== 467718 PlayerSavegame::SG_GenerateSeeds(void) =====
int __fastcall PlayerSavegame::SG_GenerateSeeds(PlayerSavegame *this)
{
  int result; // r0

  result = glitch::os::Timer::getRealTime(this);
  *((_DWORD *)this + 25) = result + 86186;
  *((_DWORD *)this + 23) = result;
  *((_DWORD *)this + 24) = result + 21371;
  return result;
}


// ===== 467744 PlayerSavegame::SG_SetSaveDate(void) =====
time_t __fastcall PlayerSavegame::SG_SetSaveDate(PlayerSavegame *this)
{
  time_t result; // r0

  result = time(nullptr);
  *((_DWORD *)this + 14) = result;
  return result;
}


// ===== 46775c `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame_Data.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame_Data.cpp(CMessage *a1)
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

  dword_9A606C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6068 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A6071 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A6072 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A6073 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A6074 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A6075 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A6076 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A6077 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A6078 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A6079 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A607A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A607B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A607C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A607D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A607E = result;
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


// ===== 4679e8 PlayerSavegame::SG_TryQuestSync(void) =====
void __fastcall PlayerSavegame::SG_TryQuestSync(PlayerSavegame *this)
{
  int Online; // r0
  int v3; // r3
  bool v4; // zf
  CMessaging *v5; // r0
  char v6; // r2
  CMessaging *v7; // r8
  size_t v8; // r7
  const void *v9; // r10
  CMessage *Message; // r0
  CMessage *v11; // r4
  void *v12; // r0
  int CurrentLevel; // r0
  _BYTE v14[16]; // [sp+8h] [bp-34h] BYREF
  size_t v15; // [sp+18h] [bp-24h]
  const void **v16; // [sp+24h] [bp-18h]
  unsigned __int8 v17; // [sp+34h] [bp-8h]

  Online = GetOnline();
  v3 = *(unsigned __int8 *)(Online + 5);
  v4 = v3 == 0;
  if ( !*(_BYTE *)(Online + 5) )
    LOBYTE(v3) = 1;
  if ( v4 )
  {
    *((_BYTE *)this + 20) = v3;
  }
  else
  {
    if ( !PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *((const Character **)this + 4)) )
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
          "Application::GetInstance()->GetPlayerManager()->IsLocalPlayer(m_player)",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
          438);
      }
    }
    if ( !*((_BYTE *)this + 20) )
    {
      if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
      {
        StreamBuffer::StreamBuffer((StreamBuffer *)v14);
        StreamBuffer::expand((StreamBuffer *)v14, 0x3E8u);
        v5 = (CMessaging *)QuestSavegame::PackQuests(
                             (PlayerSavegame *)((char *)this + 280),
                             PlayerSavegame::m_difficultyLevel,
                             (IStreamBase *)v14);
        v7 = (CMessaging *)CMessaging::Get(v5);
        v8 = v15;
        if ( !v17 )
        {
          v6 = gAssertLevel;
          if ( gAssertLevel == 2 )
          {
            *(_DWORD *)v17 = v17;
          }
          else if ( gAssertLevel == 1 )
          {
            fprintf(
              (FILE *)&_sF + 2,
              "ASSERT(%s) FAILED: %s:%d\n",
              "static_",
              "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamBuffer.h",
              130);
          }
        }
        v9 = *v16;
        Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgQuestsSync", (const char *)&dword_0 + 1, v6);
        *((_DWORD *)Message + 21) = 0;
        v11 = Message;
        *((_DWORD *)Message + 20) = v8;
        v12 = (void *)operator new[](v8, 2);
        *((_DWORD *)v11 + 22) = v12;
        memcpy(v12, v9, v8);
        CMessaging::SendMsg(v7, v11);
        *((_BYTE *)this + 20) = 1;
        StreamBuffer::~StreamBuffer((StreamBuffer *)v14);
      }
      else
      {
        CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( *(_BYTE *)(dword_99F76C + 1808) && CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 )
          PlayerManager::ReceiveQuestSync((PlayerManager *)dword_99F76C, this);
      }
    }
  }
}


// ===== 467c18 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,int>,std::priv::_MapTraitsT<std::pair<int const,int>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x18u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 467c54 PlayerSavegame::SG_GetFastTravelIdUnlocked(int,int) =====
bool __fastcall PlayerSavegame::SG_GetFastTravelIdUnlocked(PlayerSavegame *this, unsigned int a2, int a3)
{
  int v6; // [sp+4h] [bp-8h]

  if ( (a2 & 0x80000000) != 0 || a2 >= Arrays::FastTravelList::size )
    return 0;
  if ( a2 > 0x3F )
  {
    v6 = a3;
    __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
    a3 = v6;
  }
  return (*((_DWORD *)this + 2 * a3 + (a2 >> 5) + 95) & (1 << (a2 & 0x1F))) != 0;
}


// ===== 467ce4 PlayerSavegame::SG_IsFaerieUnlocked(uint,int) =====
bool __fastcall PlayerSavegame::SG_IsFaerieUnlocked(PlayerSavegame *this, unsigned int a2, int a3)
{
  int v3; // r7
  int Switch; // r10
  std::string v9; // [sp+Ch] [bp-20h] BYREF

  v3 = a3 + 40;
  if ( *((_DWORD *)this + a3 + 40) <= a2 )
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
        "faerieId < m_faeriesSize[diff]",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        316);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "UnlockAllFaeries");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v9._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v9._M_start_of_storage._M_data,
        v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
  }
  if ( Switch )
    return 1;
  if ( a2 < *((_DWORD *)this + v3) )
    return *(_BYTE *)(*((_DWORD *)this + a3 + 37) + 4 * a2) == 1;
  return 0;
}


// ===== 467e58 PlayerSavegame::SG_IsMapLocLocked(int,int) =====
bool __fastcall PlayerSavegame::SG_IsMapLocLocked(PlayerSavegame *this, int a2, int a3)
{
  int IsSavedOptionOn; // r7
  std::string v8; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "UnlockAllLevels");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8)
    || (IsSavedOptionOn = Application::IsSavedOptionOn((Application *)&Singleton<Application>::s_inst, "AllLevels")) != 0 )
  {
    IsSavedOptionOn = 1;
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
  return !IsSavedOptionOn && PlayerSavegame::SG_GetMapLocState(this, a2, a3) == 0;
}


// ===== 467f70 PlayerSavegame::SG_IsLevelLocked(int,int) =====
bool __fastcall PlayerSavegame::SG_IsLevelLocked(PlayerSavegame *this, int a2, int a3)
{
  int IsSavedOptionOn; // r7
  std::string v8; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "UnlockAllLevels");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8)
    || (IsSavedOptionOn = Application::IsSavedOptionOn((Application *)&Singleton<Application>::s_inst, "AllLevels")) != 0 )
  {
    IsSavedOptionOn = 1;
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
  return !IsSavedOptionOn && PlayerSavegame::SG_GetLevelState(this, a2, a3) == 0;
}


// ===== 468088 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4680a8 PlayerSavegame::SG_SetSkillInSlot(int,uint) =====
void __fastcall PlayerSavegame::SG_SetSkillInSlot(PlayerSavegame *this, int a2, unsigned int a3)
{
  _BOOL4 v4; // r2
  int CurrentSkillSet; // r7
  int v8; // r10
  int v9; // r0
  _DWORD *v10; // r8
  _DWORD *v11; // r3
  _DWORD *v12; // r2
  _DWORD *v13; // r1
  _DWORD *v14; // r12
  _DWORD *v15; // r2
  int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  int v20; // r0
  _DWORD *v21; // r7
  int v22; // r0
  int v23; // r1
  int v24; // r2
  _DWORD *v25; // r7
  int v26; // r1
  int v27; // r0
  _DWORD *v28; // r3
  int v29; // r1
  int v30; // r2
  bool v31; // cc
  _DWORD *v32; // r2
  _DWORD v33[2]; // [sp+8h] [bp-18h] BYREF
  _DWORD *v34; // [sp+10h] [bp-10h] BYREF
  _DWORD *v35; // [sp+14h] [bp-Ch] BYREF
  _DWORD v36[2]; // [sp+18h] [bp-8h] BYREF

  v4 = *((_DWORD *)this + 33) <= a3;
  if ( a3 == -1 )
    v4 = 0;
  if ( v4 )
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
        "skillIdx < m_skillsSize || skillIdx == (size_t)-1",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        225);
    }
  }
  if ( a2 < 0 )
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
        "slot >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        226);
    }
  }
  if ( !*((_DWORD *)this + 32) )
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
        "m_skills",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp",
        227);
    }
  }
  CurrentSkillSet = ItemInventory::GetCurrentSkillSet((ItemInventory *)(*((_DWORD *)this + 4) + 892), -1);
  PlayerSavegame::SG_GetSkillInSlot(this, a2);
  if ( a3 == -1 )
  {
    v27 = *((_DWORD *)this + 34) + 24 * CurrentSkillSet;
    v28 = *(_DWORD **)(v27 + 4);
    if ( v28 )
    {
      v29 = *((_DWORD *)this + 34) + 24 * CurrentSkillSet;
      while ( 1 )
      {
        v30 = v28[4];
        v31 = a2 <= v30;
        if ( a2 <= v30 )
          v32 = (_DWORD *)v28[2];
        else
          v32 = (_DWORD *)v28[3];
        if ( !v31 )
          v28 = (_DWORD *)v29;
        v29 = (int)v28;
        if ( !v32 )
          break;
        v28 = v32;
      }
      if ( (_DWORD *)v27 != v28 && a2 >= v28[4] )
      {
        v36[1] = v28;
        ((void (*)(void))std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::erase)();
      }
    }
  }
  else
  {
    v8 = 24 * CurrentSkillSet;
    v9 = *((_DWORD *)this + 34);
    v10 = (_DWORD *)(v9 + 24 * CurrentSkillSet);
    v11 = (_DWORD *)v10[2];
LABEL_12:
    while ( v10 != v11 )
    {
      while ( a3 != v11[5] )
      {
        v12 = (_DWORD *)v11[3];
        if ( !v12 )
        {
          v23 = v11[1];
          if ( v11 == *(_DWORD **)(v23 + 12) )
          {
            do
            {
              v11 = (_DWORD *)v23;
              v23 = *(_DWORD *)(v23 + 4);
            }
            while ( *(_DWORD **)(v23 + 12) == v11 );
            v12 = (_DWORD *)v11[3];
          }
          if ( v12 != (_DWORD *)v23 )
            v11 = (_DWORD *)v23;
          goto LABEL_12;
        }
        while ( v12[2] )
          v12 = (_DWORD *)v12[2];
        v11 = v12;
        if ( v10 == v12 )
          goto LABEL_19;
      }
      v21 = (_DWORD *)v11[3];
      v22 = v9 + v8;
      if ( v21 )
      {
        while ( v21[2] )
          v21 = (_DWORD *)v21[2];
        v36[0] = v11;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::erase(
          v22,
          v36);
        v11 = v21;
        v9 = *((_DWORD *)this + 34);
      }
      else
      {
        v24 = v11[1];
        if ( v11 == *(_DWORD **)(v24 + 12) )
        {
          do
          {
            v25 = (_DWORD *)v24;
            v24 = *(_DWORD *)(v24 + 4);
          }
          while ( *(_DWORD **)(v24 + 12) == v25 );
        }
        else
        {
          v25 = v11;
        }
        v26 = v25[3];
        v36[0] = v11;
        if ( v24 != v26 )
          v25 = (_DWORD *)v24;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::erase(
          v22,
          v36);
        v11 = v25;
        v9 = *((_DWORD *)this + 34);
      }
    }
LABEL_19:
    v13 = (_DWORD *)(v9 + v8);
    v14 = *(_DWORD **)(v9 + v8 + 4);
    if ( v14 )
    {
      v15 = (_DWORD *)(v9 + v8);
      while ( 1 )
      {
        v16 = v14[4];
        v17 = a2 <= v16;
        if ( a2 <= v16 )
          v18 = (_DWORD *)v14[2];
        else
          v18 = (_DWORD *)v14[3];
        if ( !v17 )
          v14 = v15;
        v15 = v14;
        if ( !v18 )
          break;
        v14 = v18;
      }
    }
    else
    {
      v14 = (_DWORD *)(v9 + v8);
    }
    if ( v13 == v14 || (v19 = v14, a2 < v14[4]) )
    {
      v33[0] = a2;
      v33[1] = 0;
      v35 = v14;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
        &v34,
        v13,
        &v35,
        v33);
      v19 = v34;
    }
    v19[5] = a3;
    v20 = *((_DWORD *)this + 4);
    if ( v20 )
      CharAI::UpdateSkills((Character **)(v20 + 968));
  }
}


// ===== 468470 PlayerSavegame::SG_GetPlayerName(uint) =====
int __fastcall PlayerSavegame::SG_GetPlayerName(PlayerSavegame *this, unsigned int a2)
{
  int result; // r0
  PlayerSavegame *v4; // r5
  const char *v5; // r6
  size_t v6; // r0

  result = PlayerSavegame::SG_Exists(this, a2);
  if ( result )
  {
    v4 = (PlayerSavegame *)operator new(0x198u, 0);
    PlayerSavegame::PlayerSavegame(v4, (unsigned int)this, 1, 0);
    v5 = *((const char **)v4 + 11);
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_assign((std::string *const)PlayerSavegame::s_playerNameTemp, v5, &v5[v6]);
    (*(void (__fastcall **)(PlayerSavegame *))(*(_DWORD *)v4 + 4))(v4);
    return dword_9A605C;
  }
  return result;
}


// ===== 4684f0 PlayerSavegame::_SaveVolatileQuestsLog(void) =====
int __fastcall PlayerSavegame::_SaveVolatileQuestsLog(PlayerSavegame *this)
{
  int result; // r0
  int v3; // r6
  StreamBuffer *v4; // r6

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    result = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
    if ( result )
    {
      v3 = dword_99F76C;
      if ( !*(_BYTE *)(dword_99F76C + 1817) )
        return result;
    }
    else
    {
      v3 = dword_99F76C;
    }
    v4 = (StreamBuffer *)(v3 + 1760);
    StreamBuffer::clear(v4);
    return QuestSavegame::PackQuests((PlayerSavegame *)((char *)this + 280), PlayerSavegame::m_difficultyLevel, v4);
  }
  return result;
}


// ===== 468574 PlayerSavegame::_LoadVolatileQuestsLog(int) =====
int __fastcall PlayerSavegame::_LoadVolatileQuestsLog(__int64 this)
{
  int v1; // r5
  int v2; // r7

  v1 = this;
  if ( (this & 0x1400000000LL) != 0 )
  {
    LODWORD(this) = GetOnline();
    if ( *(_BYTE *)(this + 5) )
    {
      LODWORD(this) = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
      if ( (_DWORD)this )
      {
        v2 = dword_99F76C;
        if ( !*(_BYTE *)(dword_99F76C + 1817) )
          return this;
      }
      else
      {
        v2 = dword_99F76C;
      }
      this = ((__int64 (__fastcall *)(int))*(_DWORD *)(*(_DWORD *)(v2 + 1760) + 8))(v2 + 1760);
      if ( this )
      {
        (*(void (__fastcall **)(int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)(v2 + 1760) + 32))(
          v2 + 1760,
          *(_DWORD *)(v2 + 1760),
          0,
          0);
        LODWORD(this) = QuestSavegame::UnpackQuests(
                          (QuestSavegame *)(v1 + 280),
                          PlayerSavegame::m_difficultyLevel,
                          (IStreamBase *)(v2 + 1760),
                          0);
      }
    }
  }
  return this;
}


// ===== 468630 PlayerSavegame::_SetupSavedSections(bool,bool) =====
char *__fastcall PlayerSavegame::_SetupSavedSections(char *this, int a2, void (*a3)(IStreamBase *, void *))
{
  Savegame **v3; // r5

  v3 = (Savegame **)this;
  if ( a2 )
  {
    if ( !a3 )
    {
      Savegame::initSectionInfo(
        *((Savegame **)this + 2),
        "PDFL",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadDifficultyLevel,
        nullptr,
        this);
      Savegame::initSectionInfo(v3[2], "LNAM", (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelName, a3, v3);
      Savegame::initSectionInfo(
        v3[2],
        "LEPT",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelEntryPoint,
        a3,
        v3);
      Savegame::initSectionInfo(
        v3[2],
        "LUSP",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadUseSpawnPoint,
        a3,
        v3);
      Savegame::initSectionInfo(
        v3[2],
        "LVLS",
        (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelStates,
        a3,
        v3);
      Savegame::initSectionInfo(v3[2], "FAES", (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFaeries, a3, v3);
      return Savegame::initSectionInfo(
               v3[2],
               "FTVL",
               (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFastTravelList,
               a3,
               v3);
    }
  }
  else if ( !a3 )
  {
    Savegame::initSectionInfo(
      *((Savegame **)this + 2),
      "PDFL",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadDifficultyLevel,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveDifficultyLevel,
      this);
    Savegame::initSectionInfo(
      v3[2],
      "LNAM",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelName,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelName,
      v3);
    Savegame::initSectionInfo(
      v3[2],
      "LEPT",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelEntryPoint,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelEntryPoint,
      v3);
    Savegame::initSectionInfo(
      v3[2],
      "LUSP",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadUseSpawnPoint,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveUseSpawnPoint,
      v3);
    Savegame::initSectionInfo(
      v3[2],
      "LVLS",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadLevelStates,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveLevelStates,
      v3);
    Savegame::initSectionInfo(
      v3[2],
      "FAES",
      (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFaeries,
      (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveFaeries,
      v3);
    return Savegame::initSectionInfo(
             v3[2],
             "FTVL",
             (void (*)(IStreamBase *, void *))PlayerSavegame::__LoadFastTravelList,
             (void (*)(IStreamBase *, void *))PlayerSavegame::__SaveFastTravelList,
             v3);
  }
  return this;
}


// ===== 4688c0 PlayerSavegame::__SavePlayerName(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SavePlayerName(PlayerSavegame *this, const std::string *a2, void *a3)
{
  return IStreamBase::writeAs(this, a2 + 1);
}


// ===== 4688c8 PlayerSavegame::__SaveLevelEntryPoint(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveLevelEntryPoint(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::writeAs<int>((int)this, (int)a2 + 64);
  IStreamBase::writeAs<int>((int)this, (int)a2 + 68);
  return IStreamBase::writeAs<int>((int)this, (int)a2 + 72);
}


// ===== 4688f8 PlayerSavegame::__SaveDifficultyLevel(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveDifficultyLevel(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::writeAs<int>((int)this, (int)&PlayerSavegame::m_difficultyLevel);
  return IStreamBase::writeAs<int>((int)this, (int)a2 + 60);
}


// ===== 468930 PlayerSavegame::__SavePlayerLevel(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SavePlayerLevel(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  return IStreamBase::writeAs<int>((int)this, (int)a2 + 48);
}


// ===== 468938 PlayerSavegame::__LoadLevelEntryPoint(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadLevelEntryPoint(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::readAs<int>((int)this, (int)a2 + 64);
  IStreamBase::readAs<int>((int)this, (int)a2 + 68);
  return IStreamBase::readAs<int>((int)this, (int)a2 + 72);
}


// ===== 468968 PlayerSavegame::__LoadDifficultyLevel(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadDifficultyLevel(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::readAs<int>((int)this, (int)&PlayerSavegame::m_difficultyLevel);
  return IStreamBase::readAs<int>((int)this, (int)a2 + 60);
}


// ===== 4689a0 PlayerSavegame::__LoadPlayerLevel(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadPlayerLevel(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  return IStreamBase::readAs<int>((int)this, (int)a2 + 48);
}


// ===== 4689a8 PlayerSavegame::__SaveUseSpawnPoint(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveUseSpawnPoint(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::writeAs<bool>((int)this, (int)a2 + 76);
  IStreamBase::writeAs<bool>((int)this, (int)a2 + 77);
  return IStreamBase::writeAs<bool>((int)this, (int)a2 + 78);
}


// ===== 4689d8 PlayerSavegame::__SaveProperties(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveProperties(int this, IStreamBase *a2, void *a3)
{
  int v3; // r7
  int v5; // r4
  int v6; // r7
  int i; // r5
  int v8; // r3
  int v9; // [sp+8h] [bp-Ch] BYREF
  int v10; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)a2 + 4);
  v5 = this;
  if ( v3 )
    goto LABEL_2;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return this;
  }
  if ( gAssertLevel == 1 )
  {
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_player",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             836);
    v3 = *((_DWORD *)a2 + 4);
    if ( v3 )
    {
LABEL_2:
      v10 = 224;
      IStreamBase::writeAs<int>(v5, &v10);
      if ( v10 > 0 )
      {
        v6 = v3 + 2284;
        for ( i = 0; i < v10; ++i )
        {
          v8 = *(_DWORD *)(v6 + Structs::CharacterProperties::m_dataOffsets[i] + 4);
          v9 = v8;
          IStreamBase::writeAs<int>(v5, &v9);
        }
      }
      return IStreamBase::writeAs<bool>(v5, (char *)a2 + 404);
    }
  }
  return this;
}


// ===== 468af0 PlayerSavegame::__LoadUseSpawnPoint(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadUseSpawnPoint(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase::readAs<bool>((int)this, (int)a2 + 76);
  IStreamBase::readAs<bool>((int)this, (int)a2 + 77);
  return IStreamBase::readAs<bool>((int)this, (int)a2 + 78);
}


// ===== 468b20 PlayerSavegame::__SaveLevelName(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveLevelName(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int i; // r4
  char *v6; // r1
  int result; // r0

  IStreamBase::writeAs<unsigned int>((int)this, (int)a2 + 56);
  for ( i = 0; i != 3; ++i )
  {
    IStreamBase::writeAs<int>((int)this, (int)a2 + 4 * i + 80);
    IStreamBase::writeAs<int>((int)this, (int)a2 + 4 * i + 92);
    v6 = (char *)a2 + 4 * i + 252;
    result = IStreamBase::writeAs<int>((int)this, (int)v6);
  }
  return result;
}


// ===== 468b78 PlayerSavegame::__LoadLevelName(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadLevelName(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  IStreamBase *v5; // r5
  int v6; // r4
  int result; // r0
  int v8; // [sp+4h] [bp-4h] BYREF

  IStreamBase::readAs<unsigned int>((int)this, (int)a2 + 56);
  v5 = a2;
  v6 = 0;
  do
  {
    IStreamBase::readAs<int>((int)this, (int)a2 + 4 * v6 + 80);
    IStreamBase::readAs<int>((int)this, (int)a2 + 4 * v6 + 92);
    result = IStreamBase::readAs<int>((int)this, (int)&v8);
    ++v6;
    *((_DWORD *)v5 + 63) = v8;
    *((_DWORD *)v5 + 87) = v8;
    v5 = (IStreamBase *)((char *)v5 + 4);
  }
  while ( v6 != 3 );
  return result;
}


// ===== 468bf0 PlayerSavegame::__SaveCurrentFaery(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveCurrentFaery(int this, IStreamBase *a2, void *a3)
{
  int v4; // r7
  IStreamBase *v5; // r5
  int v6; // r4
  char *v7; // r1

  v4 = this;
  v5 = a2;
  v6 = 0;
  while ( 1 )
  {
    if ( *((_DWORD *)v5 + 37) )
      goto LABEL_3;
    if ( gAssertLevel == 2 )
      break;
    if ( gAssertLevel != 1 )
      return this;
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_faeries[j]",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             596);
    if ( !*((_DWORD *)v5 + 37) )
      return this;
LABEL_3:
    v7 = (char *)a2 + 4 * v6++ + 172;
    this = IStreamBase::writeAs<int>(v4, (int)v7);
    v5 = (IStreamBase *)((char *)v5 + 4);
    if ( v6 == 3 )
      return this;
  }
  dword_0 = 0;
  return this;
}


// ===== 468cd4 PlayerSavegame::__LoadCurrentFaery(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadCurrentFaery(int this, IStreamBase *a2, void *a3)
{
  int v4; // r7
  IStreamBase *v5; // r5
  int v6; // r4
  char *v7; // r1

  v4 = this;
  v5 = a2;
  v6 = 0;
  while ( 1 )
  {
    if ( *((_DWORD *)v5 + 37) )
      goto LABEL_3;
    if ( gAssertLevel == 2 )
      break;
    if ( gAssertLevel != 1 )
      return this;
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_faeries[j]",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             581);
    if ( !*((_DWORD *)v5 + 37) )
      return this;
LABEL_3:
    v7 = (char *)a2 + 4 * v6++ + 172;
    this = IStreamBase::readAs<int>(v4, (int)v7);
    v5 = (IStreamBase *)((char *)v5 + 4);
    if ( v6 == 3 )
      return this;
  }
  dword_0 = 0;
  return this;
}


// ===== 468db8 IStreamBase::writeAs<ushort>(ushort const&) =====
int __fastcall IStreamBase::writeAs<unsigned short>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 2, 0);
  if ( result != 2 || v3 )
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


// ===== 468e68 IStreamBase::writeAs<signed char>(signed char const&) =====
int __fastcall IStreamBase::writeAs<signed char>(int a1, int a2)
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


// ===== 468f18 PlayerSavegame::__SaveFaeries(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveFaeries(int this, IStreamBase *a2, void *a3)
{
  int v4; // r5
  IStreamBase *v5; // r4
  int v6; // r6
  unsigned int i; // r9
  int v8; // r11
  unsigned int v9; // [sp+24h] [bp-8h] BYREF

  v4 = this;
  v5 = a2;
  v6 = 0;
  while ( *((_DWORD *)v5 + 37) )
  {
LABEL_3:
    IStreamBase::writeAs<int>(v4, (int)a2 + 4 * v6 + 172);
    v9 = *((_DWORD *)v5 + 40);
    this = IStreamBase::writeAs<unsigned int>(v4, (int)&v9);
    if ( v9 )
    {
      for ( i = 0; i < v9; ++i )
      {
        v8 = 4 * i;
        IStreamBase::writeAs<unsigned short>(v4, *((_DWORD *)v5 + 37) + 4 * i + 2);
        this = IStreamBase::writeAs<signed char>(v4, *((_DWORD *)v5 + 37) + v8);
      }
    }
    ++v6;
    v5 = (IStreamBase *)((char *)v5 + 4);
    if ( v6 == 3 )
      return this;
  }
  if ( gAssertLevel != 2 )
  {
    if ( gAssertLevel != 1 )
      return this;
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_faeries[j]",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             556);
    if ( !*((_DWORD *)v5 + 37) )
      return this;
    goto LABEL_3;
  }
  dword_0 = 0;
  return this;
}


// ===== 469070 IStreamBase::readAs<ushort>(ushort &) =====
int __fastcall IStreamBase::readAs<unsigned short>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 2, 0);
  if ( result != 2 || v3 )
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


// ===== 469120 IStreamBase::readAs<signed char>(signed char &) =====
int __fastcall IStreamBase::readAs<signed char>(int a1, int a2)
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


// ===== 4691d0 PlayerSavegame::__LoadFaeries(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadFaeries(int this, IStreamBase *a2, void *a3)
{
  int v4; // r5
  IStreamBase *v5; // r4
  int v6; // r6
  int v7; // r3
  unsigned int v8; // r9
  int v9; // r11
  unsigned int v10; // [sp+24h] [bp-8h] BYREF

  v4 = this;
  v5 = a2;
  v6 = 0;
  while ( *((_DWORD *)v5 + 37) )
  {
LABEL_3:
    IStreamBase::readAs<int>(v4, (int)a2 + 4 * v6 + 172);
    this = IStreamBase::readAs<unsigned int>(v4, (int)&v10);
    v7 = *((_DWORD *)v5 + 40);
    if ( v7 == v10 )
    {
      if ( v7 )
      {
        v8 = 0;
        do
        {
          v9 = 4 * v8;
          IStreamBase::readAs<unsigned short>(v4, *((_DWORD *)v5 + 37) + 4 * v8++ + 2);
          this = IStreamBase::readAs<signed char>(v4, *((_DWORD *)v5 + 37) + v9);
        }
        while ( v10 > v8 );
      }
      ++v6;
      v5 = (IStreamBase *)((char *)v5 + 4);
      if ( v6 != 3 )
        continue;
    }
    return this;
  }
  if ( gAssertLevel != 2 )
  {
    if ( gAssertLevel != 1 )
      return this;
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_faeries[j]",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             525);
    if ( !*((_DWORD *)v5 + 37) )
      return this;
    goto LABEL_3;
  }
  dword_0 = 0;
  return this;
}


// ===== 46932c PlayerSavegame::__LoadProperties(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadProperties(int this, IStreamBase *a2, void *a3)
{
  int v3; // r9
  int v5; // r4
  CharProperties *v6; // r8
  int v7; // r9
  int v8; // r7
  char Type; // r0
  int v10; // r2
  int v11; // r3
  int v12; // [sp+8h] [bp-Ch] BYREF
  int v13; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)a2 + 4);
  v5 = this;
  if ( v3 )
    goto LABEL_2;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return this;
  }
  if ( gAssertLevel == 1 )
  {
    this = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this->m_player",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
             794);
    v3 = *((_DWORD *)a2 + 4);
    if ( v3 )
    {
LABEL_2:
      this = IStreamBase::readAs<int>(v5, (int)&v13);
      v6 = (CharProperties *)(v3 + 1376);
      if ( v13 == 224 )
      {
        v7 = v3 + 2284;
        v8 = 0;
        do
        {
          IStreamBase::readAs<int>(v5, (int)&v12);
          Type = CharProperties::_GetType(v6, v8);
          if ( (Type & 0x20) != 0 )
          {
            v10 = v12;
            v11 = Structs::CharacterProperties::m_dataOffsets[v8];
          }
          ++v8;
          if ( (Type & 0x20) != 0 )
            *(_DWORD *)(v7 + v11 + 4) = v10;
        }
        while ( v13 > v8 );
        return IStreamBase::readAs<bool>(v5, (int)a2 + 404);
      }
    }
  }
  return this;
}


// ===== 469454 PlayerSavegame::__SaveQuests(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__SaveQuests(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v3; // r2
  QuestSavegame *v6; // r0

  v3 = *((_DWORD *)a2 + 94);
  if ( (v3 & 1) != 0 )
    v6 = (IStreamBase *)((char *)a2 + 184);
  else
    v6 = (IStreamBase *)((char *)a2 + 280);
  return QuestSavegame::SaveQuests(v6, this);
}


// ===== 469478 PlayerSavegame::__LoadQuests(IStreamBase *,void *) =====
int __fastcall PlayerSavegame::__LoadQuests(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v5; // r6

  v5 = (*(int (__fastcall **)(PlayerSavegame *, IStreamBase *, void *))(*(_DWORD *)this + 36))(this, a2, a3);
  QuestSavegame::LoadQuests((IStreamBase *)((char *)a2 + 184), this);
  (*(void (__fastcall **)(PlayerSavegame *, _DWORD, int, _DWORD))(*(_DWORD *)this + 32))(this, *(_DWORD *)this, v5, 0);
  return QuestSavegame::LoadQuests((IStreamBase *)((char *)a2 + 280), this);
}


// ===== 4694c8 PlayerSavegame::_InitFaeries(void) =====
char *__fastcall PlayerSavegame::_InitFaeries(char *this)
{
  int v1; // r5
  char *v2; // r4
  unsigned int v3; // r6
  int v4; // r3

  v1 = 0;
  v2 = this;
  do
  {
    v3 = *((_DWORD *)v2 + 37);
    if ( !v3 )
    {
      *((_DWORD *)v2 + 40) = 5;
      this = (char *)operator new[](0x14u, 0);
      v4 = *((_DWORD *)v2 + 40);
      *((_DWORD *)v2 + 37) = this;
      if ( v4 )
      {
        while ( 1 )
        {
          this += 4 * v3;
          *((_WORD *)this + 1) = 0;
          *(_BYTE *)(*((_DWORD *)v2 + 37) + 4 * v3++) = 0;
          if ( *((_DWORD *)v2 + 40) <= v3 )
            break;
          this = *((char **)v2 + 37);
        }
      }
    }
    ++v1;
    v2 += 4;
  }
  while ( v1 != 3 );
  return this;
}


// ===== 46954c PlayerSavegame::_InitLevelStates(void) =====
_DWORD *__fastcall PlayerSavegame::_InitLevelStates(_DWORD *this)
{
  int v1; // r12
  _DWORD *v2; // r4
  int i; // r5
  int v4; // r6
  int v5; // r6
  unsigned int v6; // r3
  int v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  int v10; // r1
  int v11; // [sp+4h] [bp-8h]
  int v12; // [sp+4h] [bp-8h]

  v1 = 15824;
  v2 = this;
  for ( i = 0; i != 3; ++i )
  {
    v4 = v2[26];
    if ( v4
      || (v11 = v1,
          this = operator new[](4 * Arrays::LevelList::size, 0),
          v2[26] = this,
          v1 = v11,
          !Arrays::LevelList::size) )
    {
      v5 = v2[29];
      if ( v5 )
        goto LABEL_4;
    }
    else
    {
      v6 = 0;
      while ( 1 )
      {
        v7 = *(_DWORD *)(Arrays::LevelList::members + v4 + 40);
        v4 += 72;
        *(this + v6++) = v7;
        if ( Arrays::LevelList::size <= v6 )
          break;
        this = (_DWORD *)v2[26];
      }
      v5 = v2[29];
      if ( v5 )
        goto LABEL_4;
    }
    v12 = v1;
    this = operator new[](4 * Arrays::WorldMap::size, v5);
    v2[29] = this;
    v1 = v12;
    if ( Arrays::WorldMap::size )
    {
      v8 = *(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v12);
      v9 = v5;
      while ( 1 )
      {
        v10 = *(_DWORD *)(*v8 + v5 + 8);
        v5 += 20;
        *(this + v9++) = v10;
        if ( Arrays::WorldMap::size <= v9 )
          break;
        this = (_DWORD *)v2[29];
      }
    }
LABEL_4:
    ++v2;
  }
  return this;
}


// ===== 469688 `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame_LoadSave.cpp =====
int `global constructor keyed to'.._.._sources_Game_SaveGames_PlayerSavegame_LoadSave.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6088 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6084 = 1056964608;
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


// ===== 469764 PlayerSavegame::_InitSkills(void) =====
int __fastcall PlayerSavegame::_InitSkills(int this)
{
  int v1; // r5
  _DWORD *v2; // r4
  int CharSkillList; // r6
  int v4; // r0
  int v5; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r1
  int v9; // r6
  unsigned int v10; // r7
  _DWORD *v11; // r5
  int v12; // r3

  v1 = *(_DWORD *)(this + 128);
  v2 = (_DWORD *)this;
  if ( !v1 )
  {
    CharSkillList = Character::GetCharSkillList(*(Character **)(this + 16));
    v4 = *(_DWORD *)(CharSkillList + 4);
    v2[33] = v4;
    v5 = operator new[](8 * v4, 0);
    v6 = v2[33];
    v2[32] = v5;
    if ( v6 )
    {
      while ( 1 )
      {
        v7 = v5 + 8 * v1;
        *(_DWORD *)v7 = *(_DWORD *)(*(_DWORD *)(CharSkillList + 8) + 4 * v1);
        *(_BYTE *)(v7 + 6) = 0;
        *(_WORD *)(v7 + 4) = 0;
        if ( v2[33] <= (unsigned int)++v1 )
          break;
        v5 = v2[32];
      }
    }
    v8 = v2[34];
    this = v2[35];
    if ( -1431655765 * ((this - v8) >> 3) )
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = (_DWORD *)(v8 + v9);
        v12 = *(_DWORD *)(v8 + v9 + 16);
        ++v10;
        v9 += 24;
        if ( v12 )
        {
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
            v11,
            v11[1]);
          v11[4] = 0;
          v11[2] = v11;
          v11[1] = 0;
          v11[3] = v11;
          v8 = v2[34];
          this = v2[35];
        }
      }
      while ( v10 < -1431655765 * ((this - v8) >> 3) );
    }
  }
  return this;
}


// ===== 469884 std::string::resize(uint,char) [clone] =====
std::string *__fastcall std::string::resize(std::string *this, unsigned int a2, char a3)
{
  char *M_finish; // r2
  char *M_data; // r12
  std::string *result; // r0
  char v7; // r4
  int v8; // r2

  M_finish = this->_M_finish;
  M_data = this->_M_start_of_storage._M_data;
  if ( M_finish - M_data < a2 )
    return std::string::append(this, a2 - (M_finish - M_data), 0);
  result = (std::string *)&M_data[a2];
  if ( M_finish != &M_data[a2] )
  {
    v7 = *M_finish;
    v8 = (char *)result - M_finish;
    M_data[a2] = v7;
    result = (std::string *)this->_M_finish;
    this->_M_finish = (char *)result + v8;
  }
  return result;
}


// ===== 4698dc PlayerSavegame::__LoadPlayerName(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__LoadPlayerName(PlayerSavegame *this, std::string *a2, void *a3)
{
  IStreamBase::readAs(this, a2 + 1);
}


// ===== 4698e4 PlayerSavegame::__SavePlayerClass(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__SavePlayerClass(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v4; // r3
  const char *v5; // r8
  size_t v6; // r0
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+4h] [bp-1Ch] BYREF

  v4 = *((_DWORD *)a2 + 13);
  if ( v4 >= 0 && v4 <= (unsigned int)Arrays::CharacterTable::size )
  {
    v5 = *(const char **)(Arrays::CharacterTable::m_memberNames + 4 * v4);
    v7._M_finish = (char *)&v7;
    v7._M_start_of_storage._M_data = (char *)&v7;
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_range_initialize((std::string *)&v7, v5, &v5[v6]);
    IStreamBase::writeAs(this, (const std::string *)&v7);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  }
}


// ===== 4699a0 std::bitset<64u>::_M_copy_to_string<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> &) =====
int __fastcall std::bitset<64u>::_M_copy_to_string<char,std::char_traits<char>,std::allocator<char>>(int a1, int *a2)
{
  int *v3; // r3
  size_t v4; // r2
  char *M_data; // r2
  int v7; // r3
  char *v8; // r0
  unsigned int v9; // r3
  int result; // r0
  int v11; // r1
  bool v12; // zf
  int v13; // r2
  int v14; // r2
  _BYTE *v15; // r3
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4h] [bp-1Ch] BYREF

  v3 = (int *)a2[5];
  v4 = a2[4] - (_DWORD)v3;
  if ( v4 > 0x3F )
  {
    LC_API_MEMSET_0(v3, 48, 0x40u);
    v14 = a2[5];
    v15 = (_BYTE *)a2[4];
    if ( (_BYTE *)(v14 + 64) != v15 )
    {
      *(_BYTE *)(v14 + 64) = *v15;
      a2[4] += v14 + 64 - (_DWORD)v15;
    }
  }
  else if ( v3 == a2 || (unsigned int)(*a2 - (_DWORD)v3 - 1) <= 0x40 )
  {
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v16, 0x41u);
    M_data = v16._M_start_of_storage._M_data;
    v7 = 0;
    v8 = v16._M_start_of_storage._M_data + 64;
    do
      M_data[v7++] = 48;
    while ( v7 != 64 );
    v16._M_finish = v8;
    M_data[64] = 0;
    std::priv::_String_base<char,std::allocator<char>>::_M_swap(a2, (int *)&v16);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  }
  else
  {
    LC_API_MEMSET_0(v3, 48, v4);
    std::string::append((std::string *)a2, 64 - (a2[4] - a2[5]), 48);
  }
  v9 = 0;
  result = 1;
  do
  {
    v11 = v9 & 0x1F;
    v13 = *(_DWORD *)(a1 + 4 * (v9 >> 5)) & (1 << (v9 & 0x1F));
    v12 = v13 == 0;
    if ( v13 )
    {
      v11 = a2[5];
      v13 = 63 - v9;
    }
    ++v9;
    if ( !v12 )
      *(_BYTE *)(v11 + v13) = 49;
  }
  while ( v9 != 64 );
  return result;
}


// ===== 469b18 PlayerSavegame::__LoadFastTravelList(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__LoadFastTravelList(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v4; // r8
  std::string *v5; // r4
  _DWORD *v6; // r9
  std::string *v7; // r1
  unsigned int v8; // r3
  int v9; // r2
  unsigned int v10; // r7
  int v11; // r9
  unsigned int v12; // r4
  IStreamBase *v13; // r8
  int v14; // r5
  int v15; // r3
  _BYTE *v16; // r3
  char v17; // r1
  std::priv::_String_base<char,std::allocator<char> > *v18; // [sp+4h] [bp-40h]
  _DWORD *v19; // [sp+8h] [bp-3Ch]
  _DWORD v21[2]; // [sp+1Ch] [bp-28h] BYREF
  char v22; // [sp+24h] [bp-20h] BYREF
  std::string *v23; // [sp+34h] [bp-10h]
  std::string *v24; // [sp+38h] [bp-Ch]
  _BYTE v25[4]; // [sp+40h] [bp-4h] BYREF

  v4 = 0;
  v5 = (std::string *)&v22;
  v6 = v21;
  while ( 1 )
  {
    v23 = v5;
    v24 = v5;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
    v23->_M_buffers._M_static_buf[0] = 0;
    IStreamBase::readAs(this, v5);
    v7 = v24;
    v8 = (char *)v23 - (char *)v24;
    if ( (unsigned int)((char *)v23 - (char *)v24) > 0x40 )
      break;
    if ( v8 == -1 )
      v8 = -1;
    v6[1] = 0;
    *v6 = 0;
    if ( v8 > 0x3F )
    {
      v9 = 63;
      v8 = 64;
LABEL_7:
      v18 = v5;
      v19 = v6;
      v10 = 0;
      v11 = v4;
      v12 = v8;
      v13 = a2;
      v14 = v9;
      while ( 1 )
      {
        v15 = (unsigned __int8)v7->_M_buffers._M_static_buf[v14 - v10];
        if ( v15 == 49 )
        {
          if ( v10 > 0x3F )
            __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
          v16 = &v25[4 * (v10 >> 5)];
          v17 = v10++ & 0x1F;
          *((_DWORD *)v16 - 9) |= 1 << v17;
          if ( v12 <= v10 )
            goto LABEL_16;
        }
        else
        {
          if ( v15 != 48 )
            __ZSt28__stl_throw_invalid_argumentPKc_veneer("bitset");
          if ( v12 <= ++v10 )
          {
LABEL_16:
            a2 = v13;
            v5 = (std::string *)v18;
            v4 = v11;
            v6 = v19;
            goto LABEL_17;
          }
        }
        v7 = v24;
      }
    }
    if ( v8 )
    {
      v9 = v8 - 1;
      goto LABEL_7;
    }
LABEL_17:
    ++v4;
    *((_DWORD *)a2 + 95) = v21[0];
    *((_DWORD *)a2 + 96) = v21[1];
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v5);
    a2 = (IStreamBase *)((char *)a2 + 8);
    if ( v4 == 3 )
      return;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v5);
}


// ===== 469cdc PlayerSavegame::__SaveFastTravelList(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__SaveFastTravelList(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int i; // r5
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+4h] [bp-20h] BYREF

  for ( i = 0; i != 3; ++i )
  {
    v6._M_finish = (char *)&v6;
    v6._M_start_of_storage._M_data = (char *)&v6;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v6, 0x10u);
    *v6._M_finish = 0;
    std::bitset<64u>::_M_copy_to_string<char,std::char_traits<char>,std::allocator<char>>(
      (int)a2 + 8 * i + 380,
      (int *)&v6);
    IStreamBase::writeAs(this, (const std::string *)&v6);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  }
}


// ===== 469d88 PlayerSavegame::__LoadPlayerClass(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__LoadPlayerClass(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v5; // r4
  char *M_data; // r6
  int v7; // r5
  int v8; // r7
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+4h] [bp-20h] BYREF

  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0x10u);
  v5 = 0;
  *v9._M_finish = 0;
  IStreamBase::readAs(this, (std::string *)&v9);
  M_data = v9._M_start_of_storage._M_data;
  v7 = Arrays::CharacterTable::size;
  if ( Arrays::CharacterTable::size )
  {
    v8 = Arrays::CharacterTable::m_memberNames;
    while ( LC_API_STRCMP_0(M_data, *(const char **)(v8 + 4 * v5)) )
    {
      if ( ++v5 == v7 )
        goto LABEL_6;
    }
  }
  else
  {
LABEL_6:
    v5 = -1;
  }
  *((_DWORD *)a2 + 13) = v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
}


// ===== 469e6c PlayerSavegame::__SaveSkills(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__SaveSkills(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v5; // r6
  int v6; // r8
  int v7; // r2
  const char *v8; // r11
  size_t v9; // r0
  int i; // r10
  int v11; // r8
  int v12; // r6
  int v13; // r2
  int v14; // r3
  int v15; // [sp+14h] [bp-28h] BYREF
  int v16; // [sp+18h] [bp-24h] BYREF
  std::string v17; // [sp+1Ch] [bp-20h] BYREF

  if ( *((_DWORD *)a2 + 32) )
    goto LABEL_2;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return;
  }
  if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "_this->m_skills",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
      463);
    if ( *((_DWORD *)a2 + 32) )
    {
LABEL_2:
      v16 = *((_DWORD *)a2 + 33);
      v17._M_finish = (char *)&v17;
      v17._M_start_of_storage._M_data = (char *)&v17;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v17, 0x10u);
      v5 = 0;
      *v17._M_finish = 0;
      IStreamBase::writeAs<int>((int)this, (int)&v16);
      if ( v16 > 0 )
      {
        do
        {
          v6 = 8 * v5;
          v7 = *(_DWORD *)(*((_DWORD *)a2 + 32) + 8 * v5++);
          v8 = *(const char **)(Arrays::SkillTable::m_memberNames + 4 * v7);
          v9 = LC_API_STRLEN_0(v8);
          std::string::_M_assign(&v17, v8, &v8[v9]);
          IStreamBase::writeAs(this, &v17);
          IStreamBase::writeAs<unsigned short>((int)this, *((_DWORD *)a2 + 32) + v6 + 4);
        }
        while ( v16 > v5 );
      }
      for ( i = 0; i != 48; i += 24 )
      {
        v15 = *(_DWORD *)(*((_DWORD *)a2 + 34) + i + 16);
        IStreamBase::writeAs<unsigned int>((int)this, (int)&v15);
        v11 = *((_DWORD *)a2 + 34) + i;
        v12 = *(_DWORD *)(v11 + 8);
        while ( v11 != v12 )
        {
          IStreamBase::writeAs<int>((int)this, v12 + 16);
          IStreamBase::writeAs<int>((int)this, v12 + 20);
          v13 = *(_DWORD *)(v12 + 12);
          if ( v13 )
          {
            while ( *(_DWORD *)(v13 + 8) )
              v13 = *(_DWORD *)(v13 + 8);
            v12 = v13;
          }
          else
          {
            v14 = *(_DWORD *)(v12 + 4);
            if ( v12 == *(_DWORD *)(v14 + 12) )
            {
              do
              {
                v12 = v14;
                v14 = *(_DWORD *)(v14 + 4);
              }
              while ( *(_DWORD *)(v14 + 12) == v12 );
              v13 = *(_DWORD *)(v12 + 12);
            }
            if ( v14 != v13 )
              v12 = v14;
          }
        }
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    }
  }
}


// ===== 46a0b4 PlayerSavegame::__SaveInventory(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__SaveInventory(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v3; // r3
  int CurrentEquipSet; // r0
  int v7; // r3
  int v8; // r3
  int **v9; // r10
  int *v10; // r5
  int v11; // r7
  int v12; // r8
  const char *v13; // r8
  size_t v14; // r0
  unsigned int v15; // r5
  int v16; // r11
  const char *v17; // r11
  size_t v18; // r0
  int **v19; // [sp+8h] [bp-6Ch]
  int v20; // [sp+30h] [bp-44h] BYREF
  int v21; // [sp+34h] [bp-40h] BYREF
  int v22; // [sp+38h] [bp-3Ch] BYREF
  int v23; // [sp+3Ch] [bp-38h] BYREF
  unsigned int NumPowers; // [sp+40h] [bp-34h] BYREF
  int v25; // [sp+44h] [bp-30h] BYREF
  int v26; // [sp+48h] [bp-2Ch] BYREF
  int v27; // [sp+4Ch] [bp-28h] BYREF
  char v28; // [sp+53h] [bp-21h] BYREF
  std::string v29; // [sp+54h] [bp-20h] BYREF

  v3 = *((_DWORD *)a2 + 4);
  if ( v3 )
    goto LABEL_2;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return;
  }
  if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "_this->m_player",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
      734);
    v3 = *((_DWORD *)a2 + 4);
    if ( v3 )
    {
LABEL_2:
      v27 = *(_DWORD *)(v3 + 924);
      CurrentEquipSet = ItemInventory::GetCurrentEquipSet((ItemInventory *)(v3 + 892), -1);
      v7 = *((_DWORD *)a2 + 4);
      v26 = CurrentEquipSet;
      v25 = (*(_DWORD *)(v7 + 904) - *(_DWORD *)(v7 + 900)) >> 2;
      IStreamBase::writeAs<unsigned int>((int)this, (int)&v27);
      IStreamBase::writeAs<unsigned int>((int)this, (int)&v26);
      IStreamBase::writeAs<unsigned int>((int)this, (int)&v25);
      v8 = *((_DWORD *)a2 + 4);
      v19 = *(int ***)(v8 + 904);
      v9 = *(int ***)(v8 + 900);
      v29._M_finish = (char *)&v29;
      v29._M_start_of_storage._M_data = (char *)&v29;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v29, 0x10u);
      for ( *v29._M_finish = 0; v9 != v19; ++v9 )
      {
        v10 = *v9;
        v11 = **v9;
        v12 = Arrays::ItemTable::m_memberNames;
        v13 = *(const char **)(v12 + 4 * ItemInstance::GetItemId((ItemInstance *)v11));
        v14 = LC_API_STRLEN_0(v13);
        std::string::_M_assign(&v29, v13, &v13[v14]);
        IStreamBase::writeAs(this, &v29);
        v23 = *((char *)v10 + 4);
        IStreamBase::writeAs<int>((int)this, (int)&v23);
        v22 = *((char *)v10 + 5);
        IStreamBase::writeAs<int>((int)this, (int)&v22);
        v21 = *(__int16 *)(v11 + 80);
        IStreamBase::writeAs<int>((int)this, (int)&v21);
        v20 = *(_DWORD *)(v11 + 84);
        IStreamBase::writeAs<int>((int)this, (int)&v20);
        v28 = *(_BYTE *)(v11 + 104);
        IStreamBase::writeAs<unsigned char>((int)this, (int)&v28);
        NumPowers = ItemInstance::GetNumPowers((ItemInstance *)v11);
        IStreamBase::writeAs<unsigned int>((int)this, (int)&NumPowers);
        if ( NumPowers )
        {
          v15 = 0;
          do
          {
            v16 = Arrays::ItemPowerTable::m_memberNames;
            v17 = *(const char **)(v16 + 4 * ItemInstance::GetPowerId((ItemInstance *)v11, v15++));
            v18 = LC_API_STRLEN_0(v17);
            std::string::_M_assign(&v29, v17, &v17[v18]);
            IStreamBase::writeAs(this, &v29);
          }
          while ( NumPowers > v15 );
        }
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
    }
  }
}


// ===== 46a3a0 PlayerSavegame::__LoadInventory(IStreamBase *,void *) =====
IStreamBase *__fastcall PlayerSavegame::__LoadInventory(IStreamBase *this, IStreamBase *a2, void *a3)
{
  IStreamBase *v3; // r5
  char *M_data; // r10
  int v5; // r7
  int v6; // r6
  int v7; // r8
  ItemInstance *v8; // r7
  char v9; // r3
  unsigned int j; // r6
  char *v11; // r9
  int v12; // r10
  int v13; // r8
  int v14; // r11
  int v15; // r1
  unsigned int v16; // r0
  unsigned int v17; // r6
  int v18; // r1
  char v19; // r7
  unsigned int v20; // r2
  int v21; // r1
  char v22; // r6
  unsigned int i; // [sp+18h] [bp-6Ch]
  unsigned int v25; // [sp+40h] [bp-44h] BYREF
  int v26; // [sp+44h] [bp-40h] BYREF
  unsigned int v27; // [sp+48h] [bp-3Ch] BYREF
  unsigned int v28; // [sp+4Ch] [bp-38h] BYREF
  unsigned int v29; // [sp+50h] [bp-34h] BYREF
  unsigned int v30; // [sp+54h] [bp-30h] BYREF
  int v31; // [sp+58h] [bp-2Ch] BYREF
  int v32; // [sp+5Ch] [bp-28h] BYREF
  char v33; // [sp+63h] [bp-21h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v34; // [sp+64h] [bp-20h] BYREF

  v3 = this;
  if ( *((_DWORD *)a2 + 4) )
    goto LABEL_2;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return this;
  }
  if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "_this->m_player",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
      655);
    this = a2;
    if ( *((_DWORD *)a2 + 4) )
    {
LABEL_2:
      v34._M_finish = (char *)&v34;
      v34._M_start_of_storage._M_data = (char *)&v34;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v34, 0x10u);
      *v34._M_finish = 0;
      IStreamBase::readAs<unsigned int>((int)v3, (int)&v32);
      IStreamBase::readAs<unsigned int>((int)v3, (int)&v31);
      IStreamBase::readAs<unsigned int>((int)v3, (int)&v30);
      ItemInventory::SetGold(*((_DWORD *)a2 + 4) + 892, v32);
      *(_BYTE *)(*((_DWORD *)a2 + 4) + 938) = v31;
      if ( v30 )
      {
        for ( i = 0; i < v30; ++i )
        {
          IStreamBase::readAs(v3, (std::string *)&v34);
          M_data = v34._M_start_of_storage._M_data;
          v5 = Arrays::ItemTable::size;
          if ( Arrays::ItemTable::size )
          {
            v6 = 0;
            v7 = Arrays::ItemTable::m_memberNames;
            while ( LC_API_STRCMP_0(M_data, *(const char **)(v7 + 4 * v6)) )
            {
              if ( ++v6 == v5 )
                goto LABEL_26;
            }
          }
          else
          {
LABEL_26:
            v6 = -1;
          }
          IStreamBase::readAs<int>((int)v3, (int)&v29);
          IStreamBase::readAs<int>((int)v3, (int)&v28);
          IStreamBase::readAs<int>((int)v3, (int)&v27);
          IStreamBase::readAs<int>((int)v3, (int)&v26);
          IStreamBase::readAs<unsigned char>((int)v3, (int)&v33);
          IStreamBase::readAs<unsigned int>((int)v3, (int)&v25);
          v8 = (ItemInstance *)operator new(0x6Cu, 0);
          ItemInstance::ItemInstance(v8, v6, v27);
          ItemInstance::SetValue(v8, v26);
          v9 = v33;
          if ( v33 )
            v9 = 1;
          *((_BYTE *)v8 + 104) = v9;
          if ( v25 )
          {
            for ( j = 0; j < v25; ++j )
            {
              IStreamBase::readAs(v3, (std::string *)&v34);
              v11 = v34._M_start_of_storage._M_data;
              v12 = Arrays::ItemPowerTable::size;
              if ( Arrays::ItemPowerTable::size )
              {
                v13 = 0;
                v14 = Arrays::ItemPowerTable::m_memberNames;
                while ( LC_API_STRCMP_0(v11, *(const char **)(v14 + 4 * v13)) )
                {
                  if ( ++v13 == v12 )
                    goto LABEL_25;
                }
                v15 = v13;
              }
              else
              {
LABEL_25:
                v15 = -1;
              }
              ItemInstance::AddPower(v8, v15, -1);
            }
          }
          v16 = ItemInventory::_AddItemInstance((ItemInventory *)(*((_DWORD *)a2 + 4) + 892), v8, 1u, 1);
          v17 = v16;
          if ( v29 != -1 )
          {
            v18 = *((_DWORD *)a2 + 4);
            v19 = *(_BYTE *)(v18 + 938);
            *(_BYTE *)(v18 + 938) = 0;
            ItemInventory::_EquipItemToSlot((ItemInventory *)(*((_DWORD *)a2 + 4) + 892), v29, v16, 1);
            *(_BYTE *)(*((_DWORD *)a2 + 4) + 938) = v19;
          }
          if ( v28 != -1 )
          {
            v20 = v17;
            v21 = *((_DWORD *)a2 + 4);
            v22 = *(_BYTE *)(v21 + 938);
            *(_BYTE *)(v21 + 938) = 1;
            ItemInventory::_EquipItemToSlot((ItemInventory *)(*((_DWORD *)a2 + 4) + 892), v28, v20, 1);
            *(_BYTE *)(*((_DWORD *)a2 + 4) + 938) = v22;
          }
        }
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
    }
  }
  return this;
}


// ===== 46a7a0 PlayerSavegame::__SaveLevelStates(IStreamBase *,void *) =====
IStreamBase *__fastcall PlayerSavegame::__SaveLevelStates(IStreamBase *this, IStreamBase *a2, void *a3)
{
  IStreamBase *v4; // r5
  int v5; // r8
  int i; // r4
  const char *v7; // r11
  size_t v8; // r0
  int j; // r8
  int k; // r4
  const char *v11; // r11
  size_t v12; // r0
  int LevelState; // [sp+1Ch] [bp-28h] BYREF
  int v14; // [sp+20h] [bp-24h] BYREF
  std::string v15; // [sp+24h] [bp-20h] BYREF

  v4 = this;
  if ( a2 != (IStreamBase *)-104 && a2 != (IStreamBase *)-116 )
  {
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x10u);
    v5 = 0;
    *v15._M_finish = 0;
    do
    {
      v14 = Arrays::LevelList::size;
      IStreamBase::writeAs<int>((int)v4, (int)&v14);
      if ( v14 > 0 )
      {
        for ( i = 0; i < v14; ++i )
        {
          v7 = *(const char **)(Arrays::LevelList::m_memberNames + 4 * i);
          v8 = LC_API_STRLEN_0(v7);
          std::string::_M_assign(&v15, v7, &v7[v8]);
          IStreamBase::writeAs(v4, &v15);
          LevelState = PlayerSavegame::SG_GetLevelState(a2, i, v5);
          IStreamBase::writeAs<int>((int)v4, (int)&LevelState);
        }
      }
      ++v5;
    }
    while ( v5 != 3 );
    for ( j = 0; j != 3; ++j )
    {
      v14 = Arrays::WorldMap::size;
      IStreamBase::writeAs<int>((int)v4, (int)&v14);
      if ( v14 > 0 )
      {
        for ( k = 0; k < v14; ++k )
        {
          v11 = *(const char **)(Arrays::WorldMap::m_memberNames + 4 * k);
          v12 = LC_API_STRLEN_0(v11);
          std::string::_M_assign(&v15, v11, &v11[v12]);
          IStreamBase::writeAs(v4, &v15);
          LevelState = PlayerSavegame::SG_GetMapLocState(a2, k, j);
          IStreamBase::writeAs<int>((int)v4, (int)&LevelState);
        }
      }
    }
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  }
  return this;
}


// ===== 46a9cc PlayerSavegame::__LoadLevelStates(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__LoadLevelStates(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int j; // r6
  char *M_data; // r9
  int v6; // r10
  int v7; // r8
  int v8; // r11
  int m; // r6
  char *v10; // r9
  int v11; // r10
  int v12; // r8
  int v13; // r11
  int i; // [sp+10h] [bp-3Ch]
  int k; // [sp+10h] [bp-3Ch]
  int v17; // [sp+24h] [bp-28h] BYREF
  int v18; // [sp+28h] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+2Ch] [bp-20h] BYREF

  if ( a2 != (IStreamBase *)-104 && a2 != (IStreamBase *)-116 )
  {
    v19._M_finish = (char *)&v19;
    v19._M_start_of_storage._M_data = (char *)&v19;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 0x10u);
    *v19._M_finish = 0;
    for ( i = 0; i != 3; ++i )
    {
      IStreamBase::readAs<int>((int)this, (int)&v18);
      if ( v18 > 0 )
      {
        for ( j = 0; j < v18; ++j )
        {
          IStreamBase::readAs(this, (std::string *)&v19);
          M_data = v19._M_start_of_storage._M_data;
          v6 = Arrays::LevelList::size;
          if ( Arrays::LevelList::size )
          {
            v7 = 0;
            v8 = Arrays::LevelList::m_memberNames;
            while ( LC_API_STRCMP_0(M_data, *(const char **)(v8 + 4 * v7)) )
            {
              if ( ++v7 == v6 )
                goto LABEL_28;
            }
            IStreamBase::readAs<int>((int)this, (int)&v17);
            if ( v7 != -1 )
              PlayerSavegame::SG_SetLevelState((int)a2, v7, v17, i);
          }
          else
          {
LABEL_28:
            IStreamBase::readAs<int>((int)this, (int)&v17);
          }
        }
      }
    }
    for ( k = 0; k != 3; ++k )
    {
      IStreamBase::readAs<int>((int)this, (int)&v18);
      if ( v18 > 0 )
      {
        for ( m = 0; m < v18; ++m )
        {
          IStreamBase::readAs(this, (std::string *)&v19);
          v10 = v19._M_start_of_storage._M_data;
          v11 = Arrays::WorldMap::size;
          if ( Arrays::WorldMap::size )
          {
            v12 = 0;
            v13 = Arrays::WorldMap::m_memberNames;
            while ( LC_API_STRCMP_0(v10, *(const char **)(v13 + 4 * v12)) )
            {
              if ( ++v12 == v11 )
                goto LABEL_27;
            }
            IStreamBase::readAs<int>((int)this, (int)&v17);
            if ( v12 != -1 )
              PlayerSavegame::SG_SetMapLocState((int)a2, v12, v17, k);
          }
          else
          {
LABEL_27:
            IStreamBase::readAs<int>((int)this, (int)&v17);
          }
        }
      }
    }
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  }
}


// ===== 46ac54 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 46ac74 PlayerSavegame::__LoadSkills(IStreamBase *,void *) =====
void __fastcall PlayerSavegame::__LoadSkills(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  int v5; // r11
  char *M_data; // r10
  int v7; // r8
  int v8; // r5
  int v9; // r9
  int v10; // r0
  _DWORD *v11; // r2
  int v12; // r3
  int v13; // t1
  int v14; // r8
  int i; // r5
  _DWORD *v16; // r1
  _DWORD *v17; // r12
  int v18; // lr
  _DWORD *v19; // r2
  int v20; // r3
  bool v21; // cc
  _DWORD *v22; // r3
  _DWORD *v23; // r3
  int v24[2]; // [sp+24h] [bp-40h] BYREF
  _DWORD *v25; // [sp+2Ch] [bp-38h] BYREF
  _DWORD *v26; // [sp+30h] [bp-34h] BYREF
  int v27; // [sp+34h] [bp-30h] BYREF
  int v28; // [sp+38h] [bp-2Ch] BYREF
  int v29; // [sp+3Ch] [bp-28h] BYREF
  char v30[2]; // [sp+42h] [bp-22h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+44h] [bp-20h] BYREF

  if ( !*((_DWORD *)a2 + 32) )
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
        "_this->m_skills",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
        402);
    }
  }
  if ( !*((_DWORD *)a2 + 4) )
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
        "_this->m_player",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp",
        403);
    }
  }
  if ( *((_DWORD *)a2 + 32) && *((_DWORD *)a2 + 4) )
  {
    v31._M_finish = (char *)&v31;
    v31._M_start_of_storage._M_data = (char *)&v31;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v31, 0x10u);
    v5 = 0;
    *v31._M_finish = 0;
    IStreamBase::readAs<int>((int)this, (int)&v29);
    if ( v29 > 0 )
    {
      do
      {
        IStreamBase::readAs(this, (std::string *)&v31);
        M_data = v31._M_start_of_storage._M_data;
        v7 = Arrays::SkillTable::size;
        if ( Arrays::SkillTable::size )
        {
          v8 = 0;
          v9 = Arrays::SkillTable::m_memberNames;
          while ( LC_API_STRCMP_0(M_data, *(const char **)(v9 + 4 * v8)) )
          {
            if ( ++v8 == v7 )
              goto LABEL_37;
          }
        }
        else
        {
LABEL_37:
          v8 = -1;
        }
        v10 = *((_DWORD *)a2 + 33);
        if ( v10 )
        {
          v11 = *((_DWORD **)a2 + 32);
          if ( *v11 == v8 )
          {
LABEL_38:
            IStreamBase::readAs<unsigned short>((int)this, (int)(v11 + 1));
            goto LABEL_17;
          }
          v12 = 0;
          while ( ++v12 != v10 )
          {
            v13 = v11[2];
            v11 += 2;
            if ( v13 == v8 )
              goto LABEL_38;
          }
        }
        IStreamBase::readAs<unsigned short>((int)this, (int)v30);
LABEL_17:
        ++v5;
      }
      while ( v29 > v5 );
    }
    v14 = 0;
    v28 = 0;
    v27 = 0;
    do
    {
      IStreamBase::readAs<int>((int)this, (int)&v28);
      if ( v28 > 0 )
      {
        for ( i = 0; i < v28; ++i )
        {
          IStreamBase::readAs<int>((int)this, (int)&v27);
          v16 = (_DWORD *)(*((_DWORD *)a2 + 34) + v14);
          v17 = (_DWORD *)v16[1];
          if ( v17 )
          {
            v18 = v27;
            v19 = (_DWORD *)(*((_DWORD *)a2 + 34) + v14);
            while ( 1 )
            {
              v20 = v17[4];
              v21 = v20 < v27;
              if ( v20 >= v27 )
                v22 = (_DWORD *)v17[2];
              else
                v22 = (_DWORD *)v17[3];
              if ( v21 )
                v17 = v19;
              if ( !v22 )
                break;
              v19 = v17;
              v17 = v22;
            }
          }
          else
          {
            v18 = v27;
            v17 = (_DWORD *)(*((_DWORD *)a2 + 34) + v14);
          }
          if ( v16 == v17 || (v23 = v17, v17[4] > v18) )
          {
            v26 = v17;
            v24[0] = v18;
            v24[1] = 0;
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
              &v25,
              v16,
              &v26,
              v24);
            v23 = v25;
          }
          IStreamBase::readAs<int>((int)this, (int)(v23 + 5));
        }
      }
      v14 += 24;
    }
    while ( v14 != 48 );
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
  }
}


// ===== 46b004 QuestSavegame::QuestSavegame(void) =====
void __fastcall QuestSavegame::QuestSavegame(QuestSavegame *this)
{
  int v1; // r12
  QuestSavegame *v2; // r2
  QuestSavegame *v3; // r1

  v1 = 0;
  *(_DWORD *)this = off_968EA8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  v2 = this;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 23) = 0;
  v3 = this;
  do
  {
    ++v1;
    *((_DWORD *)v2 + 11) = -1;
    *((_DWORD *)v2 + 14) = -1;
    *((_DWORD *)v2 + 17) = 1;
    *((_DWORD *)v2 + 20) = 1;
    *((_BYTE *)v3 + 40) = 0;
    v2 = (QuestSavegame *)((char *)v2 + 4);
    v3 = (QuestSavegame *)((char *)v3 + 1);
  }
  while ( v1 != 3 );
}


// ===== 46b0a4 QuestSavegame::QuestSavegame(void) =====
void __fastcall QuestSavegame::QuestSavegame(QuestSavegame *this)
{
  int v1; // r12
  QuestSavegame *v2; // r2
  QuestSavegame *v3; // r1

  v1 = 0;
  *(_DWORD *)this = off_968EA8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  v2 = this;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 23) = 0;
  v3 = this;
  do
  {
    ++v1;
    *((_DWORD *)v2 + 11) = -1;
    *((_DWORD *)v2 + 14) = -1;
    *((_DWORD *)v2 + 17) = 1;
    *((_DWORD *)v2 + 20) = 1;
    *((_BYTE *)v3 + 40) = 0;
    v2 = (QuestSavegame *)((char *)v2 + 4);
    v3 = (QuestSavegame *)((char *)v3 + 1);
  }
  while ( v1 != 3 );
}


// ===== 46b144 QuestSavegame::IsActCompatible(int,int) =====
bool __fastcall QuestSavegame::IsActCompatible(QuestSavegame *this, int a2, int a3)
{
  return *((_DWORD *)this + a3 + 20) <= a2 && a2 <= *((_DWORD *)this + a3 + 17);
}


// ===== 46b170 QuestSavegame::SG_GetNumQuests(bool (*)(Quest const*),int) =====
int __fastcall QuestSavegame::SG_GetNumQuests(int a1, int (__fastcall *a2)(_DWORD), int a3)
{
  int v3; // r3
  int v5; // r2
  int v6; // r6
  int v7; // r4
  int *v8; // r8
  int v9; // r5

  v3 = a1 + 12 * a3;
  v5 = *(_DWORD *)(v3 + 4);
  v6 = (*(_DWORD *)(v3 + 8) - v5) >> 2;
  if ( !v6 )
    return 0;
  v7 = 0;
  v8 = (int *)(v3 + 4);
  v9 = 0;
  while ( 1 )
  {
    if ( a2(*(_DWORD *)(v5 + 4 * v7++)) )
      ++v9;
    if ( v7 == v6 )
      break;
    v5 = *v8;
  }
  return v9;
}


// ===== 46b1d0 QuestSavegame::SG_GetQuestByID(bool (*)(Quest const*),int,int) =====
int __fastcall QuestSavegame::SG_GetQuestByID(int a1, int (__fastcall *a2)(_DWORD), int a3, int a4)
{
  int v5; // r3
  int v7; // r1
  int v10; // r10
  int v11; // r7
  int *v12; // r9
  int v13; // r8
  int v14; // r0
  int v15; // r3

  v5 = a1 + 12 * a4;
  v7 = *(_DWORD *)(v5 + 4);
  v10 = (*(_DWORD *)(v5 + 8) - v7) >> 2;
  if ( !v10 )
    return 0;
  v11 = 0;
  v12 = (int *)(v5 + 4);
  v13 = 0;
  while ( 1 )
  {
    v14 = a2(*(_DWORD *)(v7 + 4 * v11));
    v15 = 4 * v11++;
    if ( !v14 )
      goto LABEL_7;
    if ( v13 == a3 )
      return *(_DWORD *)(*(_DWORD *)(a1 + 12 * a4 + 4) + v15);
    ++v13;
LABEL_7:
    if ( v11 == v10 )
      return 0;
    v7 = *v12;
  }
}


// ===== 46b258 QuestSavegame::SG_GetNextQuest(bool (*)(Quest const*),int,int) =====
int __fastcall QuestSavegame::SG_GetNextQuest(int a1, int (__fastcall *a2)(_DWORD), int a3, int a4)
{
  int v5; // r3
  unsigned int v6; // r6
  int v7; // r2
  unsigned int v10; // r8
  int *v11; // r9
  int i; // r7

  v5 = a1 + 12 * a4;
  v6 = a3 & ~(a3 >> 31);
  v7 = *(_DWORD *)(v5 + 4);
  v10 = (*(_DWORD *)(v5 + 8) - v7) >> 2;
  if ( v6 >= v10 )
    return 0;
  v11 = (int *)(v5 + 4);
  for ( i = 4 * v6; ; i += 4 )
  {
    ++v6;
    if ( a2(*(_DWORD *)(v7 + i)) )
      break;
    if ( v6 >= v10 )
      return 0;
    v7 = *v11;
  }
  return *(_DWORD *)(*(_DWORD *)(a1 + 12 * a4 + 4) + i);
}


// ===== 46b2d4 QuestSavegame::SG_GetPrevQuest(bool (*)(Quest const*),int,int) =====
int __fastcall QuestSavegame::SG_GetPrevQuest(int a1, int (__fastcall *a2)(_DWORD), int a3, int a4)
{
  int v5; // r3
  int v7; // r1
  int v9; // r7
  int v10; // r8
  int *i; // r10

  v5 = a1 + 12 * a4;
  v7 = *(_DWORD *)(v5 + 4);
  v9 = (*(_DWORD *)(v5 + 8) - v7) >> 2;
  if ( a3 < v9 )
    v9 = a3;
  if ( !v9 )
    return 0;
  v10 = 4 * (v9 + 0x3FFFFFFF);
  for ( i = (int *)(v5 + 4); ; v7 = *i )
  {
    --v9;
    if ( a2(*(_DWORD *)(v7 + v10)) )
      break;
    v10 -= 4;
    if ( !v9 )
      return 0;
  }
  return *(_DWORD *)(*(_DWORD *)(a1 + 12 * a4 + 4) + v10);
}


// ===== 46b35c QuestSavegame::SG_GetCurrentPrimaryQuest(int) =====
int __fastcall QuestSavegame::SG_GetCurrentPrimaryQuest(QuestSavegame *this, int a2)
{
  return *((_DWORD *)this + a2 + 14);
}


// ===== 46b368 std::vector<Quest *,std::allocator<Quest *>>::_M_fill_insert_aux(Quest **,uint,Quest * const&,std::__false_type const&) =====
char *__fastcall std::vector<Quest *>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
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
      return (char *)std::vector<Quest *>::_M_fill_insert_aux(result);
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


// ===== 46b4b0 std::vector<Quest *,std::allocator<Quest *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<Quest *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 46b510 QuestSavegame::SG_VerifyCurrentQuest(int) =====
int __fastcall QuestSavegame::SG_VerifyCurrentQuest(int this, int a2)
{
  int v2; // r8
  int v3; // r2
  int v4; // r7
  int v5; // r3
  int v6; // r1
  int v7; // r6
  int *v8; // r5
  int v9; // r4

  v2 = a2 + 10;
  v3 = *(_DWORD *)(this + 4 * (a2 + 10) + 4);
  v4 = this;
  if ( v3 == -1 )
  {
    v5 = *(_DWORD *)(this + 12 * a2 + 4);
  }
  else
  {
    v5 = *(_DWORD *)(this + 12 * a2 + 4);
    if ( **(_DWORD **)(v5 + 4 * v3) == 6 )
      return this;
  }
  v6 = this + 12 * a2;
  v7 = (*(_DWORD *)(v6 + 8) - v5) >> 2;
  if ( v7 )
  {
    v8 = (int *)(v6 + 4);
    v9 = 0;
    while ( 1 )
    {
      this = Quest::IsPrimary(*(Quest **)(v5 + 4 * v9));
      if ( this )
      {
        if ( **(_DWORD **)(*v8 + 4 * v9) == 6 )
          break;
      }
      if ( ++v9 == v7 )
        return this;
      v5 = *v8;
    }
    *(_DWORD *)(v4 + 4 * v2 + 4) = v9;
  }
  return this;
}


// ===== 46b5c0 QuestSavegame::SG_GetCurrentQuest(int) =====
int __fastcall QuestSavegame::SG_GetCurrentQuest(QuestSavegame *this, int a2)
{
  char *v2; // r4

  v2 = (char *)this + 4 * a2;
  QuestSavegame::SG_VerifyCurrentQuest(this, a2);
  return *((_DWORD *)v2 + 11);
}


// ===== 46b5dc QuestSavegame::HasMainQuestUpdated(int) =====
int __fastcall QuestSavegame::HasMainQuestUpdated(QuestSavegame *this, int a2)
{
  char *v2; // r3
  int v3; // r2
  int v4; // r6
  int *v5; // r5
  int v6; // r4

  v2 = (char *)this + 12 * a2;
  v3 = *((_DWORD *)v2 + 1);
  v4 = (*((_DWORD *)v2 + 2) - v3) >> 2;
  if ( !v4 )
    return 0;
  v5 = (int *)(v2 + 4);
  v6 = 0;
  while ( !Quest::IsPrimary(*(Quest **)(v3 + 4 * v6)) || !*(_BYTE *)(*(_DWORD *)(*v5 + 4 * v6) + 93) )
  {
    if ( ++v6 == v4 )
      return 0;
    v3 = *v5;
  }
  return 1;
}


// ===== 46b644 QuestSavegame::Synchronize(QuestSavegame const&,bool) =====
int __fastcall QuestSavegame::Synchronize(QuestSavegame *this, const QuestSavegame *a2, int a3)
{
  Character *v3; // r0
  int v4; // r3
  int v5; // r9
  const QuestSavegame *v6; // r10
  QuestSavegame *v7; // r8
  QuestSavegame *v8; // r11
  int v9; // r3
  int v10; // r2
  int v11; // r6
  int v12; // r4
  Quest *v13; // r0
  const Quest *v14; // r1
  int GameDifficulty; // r4
  int v17; // r6
  int v18; // r3
  int v19; // r2
  int v20; // r6
  int *v21; // r7
  int v22; // r4
  _DWORD *v23; // r5
  Quest *v24; // r0
  const Quest *v25; // r1
  const QuestSavegame *v26; // [sp+4h] [bp-10h]

  v3 = *((Character **)this + 23);
  if ( v3 )
  {
    v4 = *((_DWORD *)a2 + 23);
    if ( v4 )
    {
      if ( !a3 )
      {
        v5 = 0;
        *((_DWORD *)this + 23) = v4;
        v6 = a2;
        v7 = this;
        v26 = a2;
        v8 = this;
        do
        {
          *((_DWORD *)v7 + 11) = *((_DWORD *)v6 + 11);
          *((_DWORD *)v7 + 14) = *((_DWORD *)v6 + 14);
          *((_DWORD *)v7 + 17) = *((_DWORD *)v6 + 17);
          v9 = *((unsigned __int8 *)v26 + 40);
          *((_BYTE *)v8 + 40) = v9;
          if ( v9 )
          {
            v10 = *(_DWORD *)((char *)this + v5 + 4);
            v11 = (*(_DWORD *)((char *)this + v5 + 8) - v10) >> 2;
            if ( v11 )
            {
              v12 = 0;
              while ( 1 )
              {
                v13 = *(Quest **)(v10 + 4 * v12);
                v14 = *(const Quest **)(*(_DWORD *)((char *)a2 + v5 + 4) + 4 * v12++);
                Quest::Synchronize(v13, v14, 0);
                if ( v12 == v11 )
                  break;
                v10 = *(_DWORD *)((char *)this + v5 + 4);
              }
            }
          }
          v5 += 12;
          v6 = (const QuestSavegame *)((char *)v6 + 4);
          v7 = (QuestSavegame *)((char *)v7 + 4);
          v26 = (const QuestSavegame *)((char *)v26 + 1);
          v8 = (QuestSavegame *)((char *)v8 + 1);
        }
        while ( v5 != 36 );
        return 1;
      }
      GameDifficulty = Character::SG_GetGameDifficulty(v3);
      if ( QuestSavegame::HasMainQuestUpdated(a2, GameDifficulty) )
      {
        v17 = 4 * (GameDifficulty + 16);
        if ( QuestSavegame::IsActCompatible(a2, *(_DWORD *)((char *)this + v17 + 4), GameDifficulty) )
        {
          *((_DWORD *)this + GameDifficulty + 11) = *((_DWORD *)a2 + GameDifficulty + 14);
          *((_DWORD *)this + GameDifficulty + 14) = *((_DWORD *)a2 + GameDifficulty + 14);
          v18 = 12 * GameDifficulty;
          *(_DWORD *)((char *)this + v17 + 4) = *(_DWORD *)((char *)a2 + v17 + 4);
          *((_BYTE *)this + GameDifficulty + 40) = *((_BYTE *)a2 + GameDifficulty + 40);
          v19 = *((_DWORD *)this + 3 * GameDifficulty + 1);
          v20 = (*((_DWORD *)this + 3 * GameDifficulty + 2) - v19) >> 2;
          if ( v20 )
          {
            v21 = (int *)((char *)this + 12 * GameDifficulty + 4);
            v22 = 0;
            v23 = (_DWORD *)((char *)a2 + v18 + 4);
            while ( 1 )
            {
              v24 = *(Quest **)(v19 + 4 * v22);
              v25 = *(const Quest **)(*v23 + 4 * v22++);
              Quest::Synchronize(v24, v25, 1);
              if ( v22 == v20 )
                break;
              v19 = *v21;
            }
          }
          return 1;
        }
      }
    }
  }
  return 0;
}


// ===== 46b824 QuestSavegame::CompileQuests(bool) =====
char *__fastcall QuestSavegame::CompileQuests(QuestSavegame *this, int a2)
{
  char *result; // r0
  int v4; // r6
  int i; // r4
  Quest *v6; // r0

  if ( a2 || (result = (char *)this + Character::SG_GetGameDifficulty(*((Character **)this + 23)), !result[40]) )
  {
    *((_BYTE *)this + Character::SG_GetGameDifficulty(*((Character **)this + 23)) + 40) = 1;
    result = (char *)this + 12 * Character::SG_GetGameDifficulty(*((Character **)this + 23));
    v4 = (*((_DWORD *)result + 2) - *((_DWORD *)result + 1)) >> 2;
    if ( v4 )
    {
      for ( i = 0; i != v4; ++i )
      {
        v6 = *(Quest **)(*((_DWORD *)this + 3 * Character::SG_GetGameDifficulty(*((Character **)this + 23)) + 1) + 4 * i);
        result = (char *)Quest::Compile(v6);
      }
    }
  }
  return result;
}


// ===== 46b8b0 QuestSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE *,int,int) =====
Quest *__fastcall QuestSavegame::SG_DBG_TraceDetailedQuestInformation(QuestSavegame *this, __sFILE *a2, int a3, int a4)
{
  Quest *result; // r0
  char *v9; // r5
  int v10; // r3
  int v11; // r10
  int v12; // r6
  int *v13; // r5
  int v14; // r7

  result = (Quest *)QuestSavegame::CompileQuests(this, 0);
  v9 = (char *)this + 12 * a4;
  v10 = *((_DWORD *)v9 + 1);
  v11 = (*((_DWORD *)v9 + 2) - v10) >> 2;
  if ( v11 )
  {
    v12 = 0;
    v13 = (int *)(v9 + 4);
    v14 = 0;
    while ( 1 )
    {
      if ( a3 >= 0 )
      {
        result = *(Quest **)(v10 + v12);
        if ( a3 != *(_DWORD *)result )
        {
          ++v14;
          v12 += 4;
          if ( v14 == v11 )
            return result;
          goto LABEL_5;
        }
      }
      else
      {
        result = *(Quest **)(v10 + v12);
      }
      ++v14;
      result = (Quest *)Quest::DBG_TraceDetailedQuestInformation(result, a2);
      v12 += 4;
      if ( v14 == v11 )
        return result;
LABEL_5:
      v10 = *v13;
    }
  }
  return result;
}


// ===== 46b940 QuestSavegame::SG_GetQuestByID(int,int,bool) =====
int __fastcall QuestSavegame::SG_GetQuestByID(QuestSavegame *this, int a2, int a3, int a4)
{
  char *v8; // r3
  int v9; // r2
  int v10; // r3
  char *v11; // r3
  int v12; // r2

  if ( a2 < 0
    || (v8 = (char *)this + 12 * a3, v9 = *((_DWORD *)v8 + 2), v10 = *((_DWORD *)v8 + 1), a2 >= (v9 - v10) >> 2) )
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
        "id >= 0 && id < (int)m_quests[diff].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\QuestSavegame.cpp",
        294);
    }
    if ( a2 < 0 )
      return 0;
    v11 = (char *)this + 12 * a3;
    v12 = *((_DWORD *)v11 + 2);
    v10 = *((_DWORD *)v11 + 1);
    if ( a2 >= (v12 - v10) >> 2 )
      return 0;
  }
  if ( !a4 )
    return *(_DWORD *)(v10 + 4 * a2);
  QuestSavegame::CompileQuests(this, 0);
  return *(_DWORD *)(*((_DWORD *)this + 3 * a3 + 1) + 4 * a2);
}


// ===== 46ba4c QuestSavegame::SG_GetQuestByName(char const*,int) =====
int __fastcall QuestSavegame::SG_GetQuestByName(QuestSavegame *this, const char *a2, int a3)
{
  int v6; // r10
  int v7; // r8
  int v8; // r5

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
        "name",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\QuestSavegame.cpp",
        308);
    }
  }
  v6 = Arrays::v2Quests::size;
  if ( !Arrays::v2Quests::size )
    return 0;
  v7 = 0;
  v8 = Arrays::v2Quests::m_memberNames;
  while ( LC_API_STRCMP_0(a2, *(const char **)(v8 + 4 * v7)) )
  {
    if ( ++v7 == v6 )
      return 0;
  }
  if ( v7 == -1 )
    return 0;
  else
    return QuestSavegame::SG_GetQuestByID(this, v7, a3, 1);
}


// ===== 46bb58 QuestSavegame::UpdateQuests(bool) =====
int __fastcall QuestSavegame::UpdateQuests(Character **this, int a2)
{
  int GameDifficulty; // r0
  int v5; // r6
  int i; // r5
  Quest *v7; // r0

  PushProfilingContext("QuestSavegame::UpdateQuests");
  QuestSavegame::CompileQuests((QuestSavegame *)this, a2);
  GameDifficulty = Character::SG_GetGameDifficulty(*(this + 23));
  v5 = (*(this + 3 * GameDifficulty + 2) - *(this + 3 * GameDifficulty + 1)) >> 2;
  if ( v5 )
  {
    for ( i = 0; i != v5; ++i )
    {
      v7 = *((Quest **)*(this + 3 * Character::SG_GetGameDifficulty(*(this + 23)) + 1) + i);
      Quest::Update(v7);
    }
  }
  return PopProfilingContext("QuestSavegame::UpdateQuests");
}


// ===== 46bbdc `global constructor keyed to'.._.._sources_Game_SaveGames_QuestSavegame.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_SaveGames_QuestSavegame.cpp(CMessage *a1)
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

  dword_9A6094 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6090 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A6099 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A609A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A609B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A609C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A609D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A609E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A609F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A60A0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A60A1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A60A2 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A60A3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A60A4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A60A5 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A60A6 = result;
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


// ===== 46be68 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 46be6c QuestSavegame::~QuestSavegame() =====
void __fastcall QuestSavegame::~QuestSavegame(QuestSavegame *this)
{
  int v1; // r11
  int v3; // r7
  int v4; // r10
  int v5; // r4
  void *v6; // r5
  char *v7; // r5
  char *v8; // r4
  int v9; // r3
  void *v10; // r0
  size_t v11; // r1

  v1 = 0;
  *(_DWORD *)this = off_968EA8;
  do
  {
    v3 = *(_DWORD *)((char *)this + v1 + 4);
    v4 = (*(_DWORD *)((char *)this + v1 + 8) - v3) >> 2;
    if ( v4 )
    {
      v5 = 0;
      while ( 1 )
      {
        v6 = *(void **)(v3 + 4 * v5);
        if ( v6 )
        {
          Quest::~Quest(*(Quest **)(v3 + 4 * v5));
          CustomFree(v6);
          *(_DWORD *)(v3 + 4 * v5) = 0;
        }
        if ( ++v5 == v4 )
          break;
        v3 = *(_DWORD *)((char *)this + v1 + 4);
      }
    }
    v1 += 12;
  }
  while ( v1 != 36 );
  v7 = (char *)this + 4;
  v8 = (char *)this + 40;
  do
  {
    while ( 1 )
    {
      v9 = *((_DWORD *)v8 - 3);
      if ( !v9 )
        goto LABEL_11;
      v10 = *((void **)v8 - 3);
      v11 = (*((_DWORD *)v8 - 1) - v9) & 0xFFFFFFFC;
      if ( v11 > 0x80 )
        break;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, v11);
LABEL_11:
      v8 -= 12;
      if ( v8 == v7 )
        return;
    }
    v8 -= 12;
    CustomFree(v10);
  }
  while ( v8 != v7 );
}


// ===== 46bf4c QuestSavegame::~QuestSavegame() =====
void __fastcall QuestSavegame::~QuestSavegame(QuestSavegame *this)
{
  QuestSavegame::~QuestSavegame(this);
  CustomFree(this);
}


// ===== 46bf68 QuestSavegame::~QuestSavegame() =====
void __fastcall QuestSavegame::~QuestSavegame(QuestSavegame *this)
{
  int v1; // r11
  int v3; // r7
  int v4; // r10
  int v5; // r4
  void *v6; // r5
  char *v7; // r5
  char *v8; // r4
  int v9; // r3
  void *v10; // r0
  size_t v11; // r1

  v1 = 0;
  *(_DWORD *)this = off_968EA8;
  do
  {
    v3 = *(_DWORD *)((char *)this + v1 + 4);
    v4 = (*(_DWORD *)((char *)this + v1 + 8) - v3) >> 2;
    if ( v4 )
    {
      v5 = 0;
      while ( 1 )
      {
        v6 = *(void **)(v3 + 4 * v5);
        if ( v6 )
        {
          Quest::~Quest(*(Quest **)(v3 + 4 * v5));
          CustomFree(v6);
          *(_DWORD *)(v3 + 4 * v5) = 0;
        }
        if ( ++v5 == v4 )
          break;
        v3 = *(_DWORD *)((char *)this + v1 + 4);
      }
    }
    v1 += 12;
  }
  while ( v1 != 36 );
  v7 = (char *)this + 4;
  v8 = (char *)this + 40;
  do
  {
    while ( 1 )
    {
      v9 = *((_DWORD *)v8 - 3);
      if ( !v9 )
        goto LABEL_11;
      v10 = *((void **)v8 - 3);
      v11 = (*((_DWORD *)v8 - 1) - v9) & 0xFFFFFFFC;
      if ( v11 > 0x80 )
        break;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, v11);
LABEL_11:
      v8 -= 12;
      if ( v8 == v7 )
        return;
    }
    v8 -= 12;
    CustomFree(v10);
  }
  while ( v8 != v7 );
}


// ===== 46c048 std::vector<Quest *,std::allocator<Quest *>>::_M_fill_insert(Quest **,uint,Quest * const&) =====
void __fastcall std::vector<Quest *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r6
  void *v15; // r0
  size_t v16; // r1
  size_t v17; // r3
  size_t v18; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<Quest *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<Quest *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<Quest *>::_M_allocate(a1 + 8, size, &size);
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
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 != a2 )
      v14 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v15 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v16 = (*(_DWORD *)(a1 + 8) - (_DWORD)v15) & 0xFFFFFFFC;
      if ( v16 > 0x80 )
      {
        CustomFree(v15);
        v18 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v14;
        *(_DWORD *)(a1 + 8) = &v9[4 * v18];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, v16);
    }
    v17 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v14;
    *(_DWORD *)(a1 + 8) = &v9[4 * v17];
  }
}


// ===== 46c164 std::vector<Quest *,std::allocator<Quest *>>::resize(uint,Quest * const&) =====
void __fastcall std::vector<Quest *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<Quest *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 46c1a8 QuestSavegame::InitQuests(void) =====
int __fastcall QuestSavegame::InitQuests(int this)
{
  int v1; // r6
  int v2; // r4
  int v3; // r3
  int v4; // r5
  int v5; // r10
  int v6; // r7
  Quest *v7; // r0
  bool v8; // zf
  int i; // r8
  int v10; // r9
  Quest *v11; // r7
  Structs::v2Quest *v12; // r9
  int v13; // r3
  int v14; // [sp+4h] [bp-28h]
  int v15; // [sp+Ch] [bp-20h]
  int v16; // [sp+24h] [bp-8h] BYREF

  v15 = 0;
  v1 = this;
  v14 = 0;
  do
  {
    while ( 1 )
    {
      v2 = v1 + v15;
      v3 = *(_DWORD *)(v1 + v15 + 4);
      v4 = Arrays::v2Quests::size;
      v5 = (*(_DWORD *)(v1 + v15 + 8) - v3) >> 2;
      if ( v5 )
      {
        if ( Arrays::v2Quests::size )
        {
          v6 = 0;
          while ( 1 )
          {
            v7 = *(Quest **)(v3 + 4 * v6++);
            this = Quest::ReInit(v7);
            if ( v6 == v4 )
              break;
            v3 = *(_DWORD *)(v2 + 4);
          }
        }
        goto LABEL_8;
      }
      v16 = 0;
      this = std::vector<Quest *>::resize(v1 + 12 * v14 + 4, Arrays::v2Quests::size, &v16);
      if ( v4 )
        break;
LABEL_8:
      v8 = v15 == 24;
      v15 += 12;
      ++v14;
      if ( v8 )
        return this;
    }
    for ( i = 0; i != v4; ++i )
    {
      v10 = Arrays::v2Quests::members;
      v11 = (Quest *)operator new(108, 0);
      Quest::Quest(v11, v14);
      v12 = (Structs::v2Quest *)(v10 + v5);
      *((_DWORD *)v11 + 24) = *(_DWORD *)(v1 + 92);
      Quest::SetOwnerToChildren(v11);
      v5 += 284;
      v13 = *(_DWORD *)(Arrays::v2Quests::m_memberNames + 4 * i);
      *((_DWORD *)v11 + 2) = i;
      *((_DWORD *)v11 + 5) = v13;
      Quest::AssignPyData(v11, v12);
      this = Quest::ReInit(v11);
      *(_DWORD *)(*(_DWORD *)(v2 + 4) + 4 * i) = v11;
    }
    v8 = v15 == 24;
    v15 += 12;
    ++v14;
  }
  while ( !v8 );
  return this;
}


// ===== 46c344 QuestSavegame::UnpackQuest(int,int,IStreamBase *,bool) =====
void __fastcall QuestSavegame::UnpackQuest(QuestSavegame *this, int a2, int a3, IStreamBase *a4, bool a5)
{
  Quest *v8; // r0
  int v9; // [sp+Ch] [bp-24h] BYREF
  _DWORD v10[4]; // [sp+14h] [bp-1Ch] BYREF
  _BYTE *v11; // [sp+24h] [bp-Ch]
  void *__p; // [sp+28h] [bp-8h]

  v9 = a2;
  v11 = v10;
  __p = v10;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v10);
  *v11 = 0;
  IStreamBase::readAs<int>(a4, &v9);
  v8 = *(Quest **)(*((_DWORD *)this + 3 * a3 + 1) + 4 * v9);
  if ( v8 )
  {
    Quest::_loadQuestData(v8, a4, a5);
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "quest",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\QuestSavegame.cpp",
      194);
  }
  if ( __p != v10 && __p )
  {
    if ( (unsigned int)(v10[0] - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v10[0] - (_DWORD)__p);
  }
}


// ===== 46c48c QuestSavegame::UnpackQuests(int,IStreamBase *,bool) =====
int __fastcall QuestSavegame::UnpackQuests(QuestSavegame *this, int a2, IStreamBase *a3, bool a4)
{
  int v7; // r4
  int result; // r0
  unsigned int i; // r4
  char *v11; // r4
  unsigned int v12; // [sp+Ch] [bp-4h] BYREF

  v7 = *((_DWORD *)this + 3 * a2 + 2) - *((_DWORD *)this + 3 * a2 + 1);
  result = IStreamBase::readAs<unsigned int>(a3, &v12);
  if ( v12 == v7 >> 2 )
  {
    if ( v12 )
    {
      for ( i = 0; i < v12; ++i )
        QuestSavegame::UnpackQuest(this, i, a2, a3, a4);
    }
    IStreamBase::readAs<int>(a3, (char *)this + 4 * a2 + 44);
    v11 = (char *)this + 4 * a2 + 64;
    IStreamBase::readAs<int>(a3, (char *)this + 4 * a2 + 56);
    result = IStreamBase::readAs<int>(a3, v11 + 4);
    *((_DWORD *)this + a2 + 20) = *((_DWORD *)v11 + 1);
  }
  return result;
}


// ===== 46c550 QuestSavegame::LoadQuests(IStreamBase *) =====
int __fastcall QuestSavegame::LoadQuests(QuestSavegame *this, IStreamBase *a2)
{
  int i; // r4
  int v5; // r1
  int result; // r0

  for ( i = 0; i != 3; ++i )
  {
    v5 = i;
    result = QuestSavegame::UnpackQuests(this, v5, a2, 0);
  }
  return result;
}


// ===== 46c584 QuestSavegame::PackQuest(int,int,IStreamBase *) =====
void __fastcall QuestSavegame::PackQuest(QuestSavegame *this, int a2, int a3, IStreamBase *a4)
{
  Quest *v7; // r7
  int v8; // [sp+4h] [bp-28h] BYREF
  _DWORD v9[4]; // [sp+Ch] [bp-20h] BYREF
  _BYTE *v10; // [sp+1Ch] [bp-10h]
  void *__p; // [sp+20h] [bp-Ch]

  v8 = a2;
  v10 = v9;
  __p = v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  *v10 = 0;
  v7 = *(Quest **)(*((_DWORD *)this + 3 * a3 + 1) + 4 * v8);
  IStreamBase::writeAs<int>((int)a4, (int)&v8);
  Quest::_saveQuestData(v7, a4);
  if ( __p != v9 && __p )
  {
    if ( (unsigned int)(v9[0] - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v9[0] - (_DWORD)__p);
  }
}


// ===== 46c658 QuestSavegame::PackQuests(int,IStreamBase *) =====
int __fastcall QuestSavegame::PackQuests(QuestSavegame *this, int a2, IStreamBase *a3)
{
  unsigned int i; // r4
  unsigned int v8; // [sp+4h] [bp-8h] BYREF

  v8 = (*((_DWORD *)this + 3 * a2 + 2) - *((_DWORD *)this + 3 * a2 + 1)) >> 2;
  IStreamBase::writeAs<unsigned int>((int)a3, (int)&v8);
  if ( v8 )
  {
    for ( i = 0; i < v8; ++i )
      QuestSavegame::PackQuest(this, i, a2, a3);
  }
  IStreamBase::writeAs<int>((int)a3, (int)this + 4 * a2 + 44);
  IStreamBase::writeAs<int>((int)a3, (int)this + 4 * a2 + 56);
  return IStreamBase::writeAs<int>((int)a3, (int)this + 4 * a2 + 68);
}


// ===== 46c6fc QuestSavegame::SaveQuests(IStreamBase *) =====
int __fastcall QuestSavegame::SaveQuests(QuestSavegame *this, IStreamBase *a2)
{
  QuestSavegame::PackQuests(this, 0, a2);
  QuestSavegame::PackQuests(this, 1, a2);
  return QuestSavegame::PackQuests(this, 2, a2);
}


// ===== 46c738 SavegameManager::__loadLastSlot(IStreamBase *,void *) =====
int __fastcall SavegameManager::__loadLastSlot(SavegameManager *this, IStreamBase *a2, void *a3)
{
  return (*(int (__fastcall **)(SavegameManager *, char *, int, _DWORD))(*(_DWORD *)this + 24))(
           this,
           (char *)a2 + 8,
           4,
           0);
}


// ===== 46c758 SavegameManager::__saveLastSlot(IStreamBase *,void *) =====
int __fastcall SavegameManager::__saveLastSlot(SavegameManager *this, IStreamBase *a2, void *a3)
{
  return (*(int (__fastcall **)(SavegameManager *, char *, int, _DWORD))(*(_DWORD *)this + 28))(
           this,
           (char *)a2 + 8,
           4,
           0);
}


// ===== 46c778 SavegameManager::__loadTutorials(IStreamBase *,void *) =====
int __fastcall SavegameManager::__loadTutorials(SavegameManager *this, IStreamBase *a2, void *a3)
{
  return (*(int (__fastcall **)(SavegameManager *, char *, int, _DWORD))(*(_DWORD *)this + 24))(
           this,
           (char *)a2 + 41,
           14,
           0);
}


// ===== 46c798 SavegameManager::__saveTutorials(IStreamBase *,void *) =====
int __fastcall SavegameManager::__saveTutorials(SavegameManager *this, IStreamBase *a2, void *a3)
{
  return (*(int (__fastcall **)(SavegameManager *, char *, int, _DWORD))(*(_DWORD *)this + 28))(
           this,
           (char *)a2 + 41,
           14,
           0);
}


// ===== 46c7b8 SavegameManager::__loadLanguageAndOrientation(IStreamBase *,void *) =====
int __fastcall SavegameManager::__loadLanguageAndOrientation(int this, IStreamBase *a2, void *a3)
{
  StreamReader *v3; // r6
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r8
  char v8; // r3
  unsigned __int64 v9; // [sp+0h] [bp-A4h]
  int v10; // [sp+14h] [bp-90h] BYREF
  unsigned int v11; // [sp+18h] [bp-8Ch] BYREF
  char v12[128]; // [sp+1Ch] [bp-88h] BYREF

  v3 = (StreamReader *)this;
  HIDWORD(v9) = &__GLOBAL_OFFSET_TABLE_;
  if ( this )
  {
    this = StreamReader::readAs<unsigned int>(this, (int)&v11);
    if ( v11 )
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        while ( 1 )
        {
          this = StreamReader::readString(v3, (IStreamBase *)v12, (unsigned int)&dword_80, v9);
          if ( !this )
            goto LABEL_15;
          StreamReader::readAs<int>((int)v3, (int)&v10);
          this = LC_API_STRCMP_0("Language", v12);
          if ( this )
            break;
          v7 = 1;
          *((_DWORD *)a2 + 14) = v10;
LABEL_5:
          if ( !v6 && v11 > ++v5 )
            continue;
          goto LABEL_15;
        }
        this = LC_API_STRCMP_0("AutoOrientation", v12);
        if ( !this )
        {
          v8 = v10;
          v6 = 1;
          if ( v10 )
            v8 = 1;
          *((_BYTE *)a2 + 60) = v8;
        }
        if ( v7 )
          goto LABEL_5;
        ++v5;
      }
      while ( v11 > v5 );
    }
  }
LABEL_15:
  if ( isKOREAN_BUILD )
  {
LABEL_20:
    *((_DWORD *)a2 + 14) = 5;
  }
  else if ( JAPANESE_BUILD )
  {
LABEL_17:
    *((_DWORD *)a2 + 14) = 4;
  }
  else
  {
    this = nativeDetectPhoneLang();
    switch ( this )
    {
      case 1:
        *((_DWORD *)a2 + 14) = 2;
        break;
      case 2:
        *((_DWORD *)a2 + 14) = 1;
        break;
      case 3:
        *((_DWORD *)a2 + 14) = 7;
        break;
      case 4:
        *((_DWORD *)a2 + 14) = 3;
        break;
      case 5:
        goto LABEL_17;
      case 6:
        goto LABEL_20;
      case 7:
        *((_DWORD *)a2 + 14) = 6;
        break;
      default:
        *((_DWORD *)a2 + 14) = 0;
        break;
    }
  }
  return this;
}


// ===== 46c9c8 StreamReader::writeAs<int>(IStreamBase *,int const*) =====
int __fastcall StreamReader::writeAs<int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               128);
    }
  }
  return result;
}


// ===== 46ca78 SavegameManager::__saveOptions(IStreamBase *,void *) =====
int __fastcall SavegameManager::__saveOptions(SavegameManager *this, IStreamBase *a2, void *a3)
{
  int v3; // r4
  char *v4; // r6
  int result; // r0
  int v7; // r2
  int v8; // r3
  unsigned __int64 v9; // [sp+0h] [bp-8h] BYREF

  v3 = *((_DWORD *)a2 + 6);
  HIDWORD(v9) = *((_DWORD *)a2 + 8);
  v4 = (char *)a2 + 16;
  result = StreamReader::writeAs<unsigned int>((int)this, (int)&v9 + 4);
  if ( (char *)v3 != v4 )
  {
    do
    {
      StreamReader::writeString(
        this,
        *(IStreamBase **)(v3 + 36),
        (const char *)(*(_DWORD *)(v3 + 32) - *(_DWORD *)(v3 + 36)),
        0,
        v9);
      result = StreamReader::writeAs<int>((int)this, v3 + 44);
      v7 = *(_DWORD *)(v3 + 12);
      if ( v7 )
      {
        while ( *(_DWORD *)(v7 + 8) )
          v7 = *(_DWORD *)(v7 + 8);
        v3 = v7;
      }
      else
      {
        v8 = *(_DWORD *)(v3 + 4);
        if ( v3 == *(_DWORD *)(v8 + 12) )
        {
          do
          {
            v3 = v8;
            v8 = *(_DWORD *)(v8 + 4);
          }
          while ( *(_DWORD *)(v8 + 12) == v3 );
          v7 = *(_DWORD *)(v3 + 12);
        }
        if ( v8 != v7 )
          v3 = v8;
      }
    }
    while ( v4 != (char *)v3 );
  }
  return result;
}


// ===== 46cb34 SavegameManager::saveSettings(void) =====
int __fastcall SavegameManager::saveSettings(int this)
{
  int v1; // r2
  IStreamBase *v2; // r4
  void *v3; // r2
  void *v4; // r2
  SavegameManager *v5; // [sp+4h] [bp-4h] BYREF

  v1 = *(_DWORD *)(this + 4);
  v2 = (IStreamBase *)this;
  if ( v1 && !*(_BYTE *)(this + 55) )
  {
    this = (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(dword_99F73C + 52) + 148))(
             *(_DWORD *)(dword_99F73C + 52),
             *(_DWORD *)(v1 + 24),
             1);
    if ( this )
    {
      v5 = (SavegameManager *)this;
      SavegameManager::__saveOptions((SavegameManager *)this, v2, v3);
      SavegameManager::__saveTutorials(v5, v2, v4);
      return (*(int (__fastcall **)(_DWORD, SavegameManager **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
               *(_DWORD *)(dword_99F73C + 52),
               &v5);
    }
  }
  return this;
}


// ===== 46cbd8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x30u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 46cc18 SavegameManager::~SavegameManager() =====
void __fastcall SavegameManager::~SavegameManager(SavegameManager *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_968EB8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
  std::string::~string((std::string *)((char *)this + 64));
  if ( *((_DWORD *)this + 8) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(
      (int)this + 16,
      *((_DWORD *)this + 5));
    *((_DWORD *)this + 7) = (char *)this + 16;
    *((_DWORD *)this + 8) = 0;
    *((_DWORD *)this + 6) = (char *)this + 16;
    *((_DWORD *)this + 5) = 0;
  }
}


// ===== 46cca4 SavegameManager::~SavegameManager() =====
void __fastcall SavegameManager::~SavegameManager(SavegameManager *this)
{
  SavegameManager::~SavegameManager(this);
  CustomFree(this);
}


// ===== 46ccc0 SavegameManager::~SavegameManager() =====
void __fastcall SavegameManager::~SavegameManager(SavegameManager *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_968EB8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
  std::string::~string((std::string *)((char *)this + 64));
  if ( *((_DWORD *)this + 8) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(
      (int)this + 16,
      *((_DWORD *)this + 5));
    *((_DWORD *)this + 7) = (char *)this + 16;
    *((_DWORD *)this + 8) = 0;
    *((_DWORD *)this + 6) = (char *)this + 16;
    *((_DWORD *)this + 5) = 0;
  }
}


// ===== 46cd4c SavegameManager::SavegameManager(void) =====
void __fastcall SavegameManager::SavegameManager(SavegameManager *this)
{
  char *v2; // r2
  _DWORD *v3; // r0

  *(_DWORD *)this = off_968EB8;
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 16) = 0;
  v2 = (char *)this + 16;
  *((_DWORD *)this + 7) = (char *)this + 16;
  *((_DWORD *)this + 14) = -1;
  *((_DWORD *)this + 20) = (char *)this + 64;
  v3 = (_DWORD *)((char *)this + 64);
  *((_DWORD *)this + 21) = v3;
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_BYTE *)this + 55) = 0;
  *((_BYTE *)this + 60) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 20) = 0;
}


// ===== 46cdd8 SavegameManager::SavegameManager(void) =====
void __fastcall SavegameManager::SavegameManager(SavegameManager *this)
{
  char *v2; // r2
  _DWORD *v3; // r0

  *(_DWORD *)this = off_968EB8;
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 16) = 0;
  v2 = (char *)this + 16;
  *((_DWORD *)this + 7) = (char *)this + 16;
  *((_DWORD *)this + 14) = -1;
  *((_DWORD *)this + 20) = (char *)this + 64;
  v3 = (_DWORD *)((char *)this + 64);
  *((_DWORD *)this + 21) = v3;
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_BYTE *)this + 55) = 0;
  *((_BYTE *)this + 60) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 20) = 0;
}


// ===== 46ce64 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
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
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string(&v19, *a2);
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
    std::string::~string(&v19);
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
    std::string::string(&v18, *a2);
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
    std::string::~string(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 46cfd4 SavegameManager::decOption(char const*) =====
char *__fastcall SavegameManager::decOption(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *result; // r0
  _DWORD *v4; // r3
  int v5; // r2
  int v6; // r3
  char *v7; // [sp+4h] [bp-4h] BYREF

  v7 = a2;
  v2 = (char *)this + 16;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                     (_DWORD *)this + 4,
                     &v7);
  if ( result != v2 )
  {
    v4 = *((_DWORD **)result + 10);
    if ( (unsigned int)(v4[6] - 1) <= 1 )
    {
      v5 = *((_DWORD *)result + 11) - v4[5];
      *((_DWORD *)result + 11) = v5;
      v6 = v4[4];
      if ( v5 < v6 )
        *((_DWORD *)result + 11) = v6;
      else
        *((_DWORD *)result + 11) = v5;
    }
  }
  return result;
}


// ===== 46d03c SavegameManager::incOption(char const*) =====
char *__fastcall SavegameManager::incOption(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *result; // r0
  _DWORD *v4; // r3
  int v5; // r2
  int v6; // r2
  int v7; // r3
  int v8; // r2
  int v9; // r3
  char *v10; // [sp+4h] [bp-4h] BYREF

  v10 = a2;
  v2 = (char *)this + 16;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                     (_DWORD *)this + 4,
                     &v10);
  if ( result != v2 )
  {
    v4 = *((_DWORD **)result + 10);
    v5 = v4[6];
    if ( v5 == 1 )
    {
      v8 = v4[5] + *((_DWORD *)result + 11);
      *((_DWORD *)result + 11) = v8;
      v9 = v4[3];
      if ( v8 > v9 )
        *((_DWORD *)result + 11) = v9;
      else
        *((_DWORD *)result + 11) = v8;
    }
    else if ( v5 == 2 )
    {
      v6 = v4[5] + *((_DWORD *)result + 11);
      *((_DWORD *)result + 11) = v6;
      v7 = v4[3] - 1;
      if ( v6 > v7 )
        *((_DWORD *)result + 11) = v7;
      else
        *((_DWORD *)result + 11) = v6;
    }
  }
  return result;
}


// ===== 46d0d0 SavegameManager::setOption(char const*,int) =====
char *__fastcall SavegameManager::setOption(SavegameManager *this, char *a2, int a3)
{
  char *v3; // r4
  char *result; // r0
  char *v6; // [sp+4h] [bp-8h] BYREF

  v6 = a2;
  v3 = (char *)this + 16;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                     (_DWORD *)this + 4,
                     &v6);
  if ( result != v3 )
    *((_DWORD *)result + 11) = a3;
  return result;
}


// ===== 46d104 SavegameManager::setLanguage(int) =====
int __fastcall SavegameManager::setLanguage(SavegameManager *this, unsigned int a2)
{
  _DWORD *v3; // r7
  int v4; // r10
  Character *v5; // r8
  _DWORD *v6; // r7
  int v7; // r10
  ItemObject *v8; // r8
  int v9; // r3
  _DWORD *v10; // r2
  int v12; // r3

  SavegameManager::setOption(this, "Language", a2);
  v3 = *(_DWORD **)(dword_99F764 + 96);
  v4 = dword_99F764 + 96;
  while ( (_DWORD *)v4 != v3 )
  {
    v5 = (Character *)v3[2];
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)v5 + 40))(v5) || Character::IsMerchant(v5) )
    {
      Character::UpdateInventoryLocalization(v5);
      v3 = (_DWORD *)*v3;
    }
    else
    {
      v3 = (_DWORD *)*v3;
    }
  }
  v6 = *(_DWORD **)(dword_99F764 + 20);
  v7 = dword_99F764 + 12;
LABEL_6:
  if ( (_DWORD *)v7 != v6 )
  {
    do
    {
      v8 = (ItemObject *)v6[11];
      if ( !v8 || !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 32))(v6[11]) )
        goto LABEL_12;
      v9 = *((_DWORD *)v8 + 61);
      if ( v9 == 3 )
      {
        ItemObject::UpdateLocalization(v8);
        v9 = *((_DWORD *)v8 + 61);
      }
      if ( v9 == 14 )
      {
        *((_BYTE *)v8 + 2073) = 0;
        v10 = (_DWORD *)v6[3];
        if ( !v10 )
        {
LABEL_21:
          v12 = v6[1];
          if ( v6 == *(_DWORD **)(v12 + 12) )
          {
            do
            {
              v6 = (_DWORD *)v12;
              v12 = *(_DWORD *)(v12 + 4);
            }
            while ( *(_DWORD **)(v12 + 12) == v6 );
            v10 = (_DWORD *)v6[3];
          }
          if ( v10 != (_DWORD *)v12 )
            v6 = (_DWORD *)v12;
          goto LABEL_6;
        }
      }
      else
      {
LABEL_12:
        v10 = (_DWORD *)v6[3];
        if ( !v10 )
          goto LABEL_21;
      }
      while ( v10[2] )
        v10 = (_DWORD *)v10[2];
      v6 = v10;
    }
    while ( (_DWORD *)v7 != v10 );
  }
  return StringManager::switchPack((StringManager *)dword_99F760, a2, 1);
}


// ===== 46d280 SavegameManager::getOptionType(char const*) =====
int __fastcall SavegameManager::getOptionType(SavegameManager *this, char *a2)
{
  char *v2; // r4
  int result; // r0
  int v4; // r3
  bool v5; // zf
  char *v6; // [sp+4h] [bp-4h] BYREF

  v6 = a2;
  v2 = (char *)this + 16;
  result = (int)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                  (_DWORD *)this + 4,
                  &v6);
  v5 = result == (_DWORD)v2;
  if ( (char *)result == v2 )
    result = -1;
  else
    v4 = *(_DWORD *)(result + 40);
  if ( !v5 )
    return *(_DWORD *)(v4 + 24);
  return result;
}


// ===== 46d2b8 SavegameManager::getOptionString(char const*) =====
int __fastcall SavegameManager::getOptionString(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *v3; // r0
  int v4; // r3
  bool v5; // zf
  int result; // r0
  char *v7; // [sp+4h] [bp-4h] BYREF

  v7 = a2;
  v2 = (char *)this + 16;
  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                 (_DWORD *)this + 4,
                 &v7);
  v5 = v3 == v2;
  if ( v3 == v2 )
  {
    result = -1;
  }
  else
  {
    v4 = *((_DWORD *)v3 + 10);
    result = *((_DWORD *)v3 + 11);
  }
  if ( !v5 )
    result += *(_DWORD *)(v4 + 28);
  return result;
}


// ===== 46d2f8 SavegameManager::getOptionLabel(char const*) =====
int __fastcall SavegameManager::getOptionLabel(SavegameManager *this, char *a2)
{
  char *v2; // r4
  int result; // r0
  int v4; // r3
  bool v5; // zf
  char *v6; // [sp+4h] [bp-4h] BYREF

  v6 = a2;
  v2 = (char *)this + 16;
  result = (int)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                  (_DWORD *)this + 4,
                  &v6);
  v5 = result == (_DWORD)v2;
  if ( (char *)result == v2 )
    result = -1;
  else
    v4 = *(_DWORD *)(result + 40);
  if ( !v5 )
    return *(_DWORD *)(v4 + 8);
  return result;
}


// ===== 46d330 SavegameManager::getOptionMax(char const*) =====
int __fastcall SavegameManager::getOptionMax(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *v3; // r0
  int result; // r0
  int v5; // r3
  char *v6; // [sp+4h] [bp-4h] BYREF

  v6 = a2;
  v2 = (char *)this + 16;
  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                 (_DWORD *)this + 4,
                 &v6);
  if ( v3 == v2 )
    return -1;
  v5 = *((_DWORD *)v3 + 10);
  result = *(_DWORD *)(v5 + 12);
  if ( *(_DWORD *)(v5 + 24) == 2 )
    --result;
  return result;
}


// ===== 46d378 SavegameManager::isOptionAtMin(char const*) =====
bool __fastcall SavegameManager::isOptionAtMin(SavegameManager *this, char *a2)
{
  char *v2; // r4
  _DWORD *v3; // r0
  char *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v2 = (char *)this + 16;
  v3 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
         (_DWORD *)this + 4,
         &v5);
  return v3 != (_DWORD *)v2 && v3[11] == 0;
}


// ===== 46d3b8 SavegameManager::isOptionAtMax(char const*) =====
bool __fastcall SavegameManager::isOptionAtMax(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *v3; // r0
  int v5; // r3
  int v6; // r2
  bool v7; // zf
  char *v8; // r3
  char *v9; // [sp+4h] [bp-4h] BYREF

  v9 = a2;
  v2 = (char *)this + 16;
  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                 (_DWORD *)this + 4,
                 &v9);
  if ( v3 == v2 )
    return 0;
  v5 = *((_DWORD *)v3 + 10);
  v6 = *(_DWORD *)(v5 + 24);
  v7 = v6 == 2;
  if ( v6 == 2 )
    v6 = *(_DWORD *)(v5 + 12);
  else
    v3 = *((char **)v3 + 11);
  if ( v7 )
    v8 = *((char **)v3 + 11);
  else
    v8 = *(char **)(v5 + 12);
  if ( v7 )
    v3 = (char *)(v6 - 1);
  return v3 == v8;
}


// ===== 46d418 SavegameManager::isOptionToggled(char const*) =====
bool __fastcall SavegameManager::isOptionToggled(SavegameManager *this, char *a2)
{
  char *v2; // r4
  char *v3; // r0
  int v4; // r3
  char *v6; // [sp+4h] [bp-4h] BYREF

  v6 = a2;
  v2 = (char *)this + 16;
  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                 (_DWORD *)this + 4,
                 &v6);
  if ( v3 == v2 )
    return 0;
  v4 = *((_DWORD *)v3 + 10);
  return !*(_DWORD *)(v4 + 24) && *((_DWORD *)v3 + 11) == *(_DWORD *)(v4 + 12);
}


// ===== 46d474 SavegameManager::getOption(char const*) =====
int __fastcall SavegameManager::getOption(SavegameManager *this, char *a2)
{
  char *v2; // r4
  _DWORD *v3; // r0
  char *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v2 = (char *)this + 16;
  v3 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
         (_DWORD *)this + 4,
         &v5);
  if ( v3 == (_DWORD *)v2 )
    return -1;
  else
    return v3[11];
}


// ===== 46d4a8 SavegameManager::hasOption(char const*) =====
bool __fastcall SavegameManager::hasOption(SavegameManager *this, char *a2)
{
  char *v3; // [sp+4h] [bp-4h] BYREF

  v3 = a2;
  return (_DWORD *)((char *)this + 16) != std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                                            (_DWORD *)this + 4,
                                            &v3);
}


// ===== 46d4d8 SavegameManager::getAutoReorientation(void) =====
int __fastcall SavegameManager::getAutoReorientation(SavegameManager *this)
{
  if ( SavegameManager::hasOption(this, "AutoOrientation") )
    return SavegameManager::getOption(this, "AutoOrientation");
  else
    return *((unsigned __int8 *)this + 60);
}


// ===== 46d514 SavegameManager::getLanguage(void) =====
int __fastcall SavegameManager::getLanguage(SavegameManager *this)
{
  int result; // r0

  if ( !SavegameManager::hasOption(this, "Language") )
    return *((_DWORD *)this + 14);
  result = SavegameManager::getOption(this, "Language");
  if ( result == -1 )
    return Application::GetDeviceLanguage((Application *)&Singleton<Application>::s_inst);
  return result;
}


// ===== 46d578 SavegameManager::toggleOption(char const*) =====
char *__fastcall SavegameManager::toggleOption(SavegameManager *this, char *a2)
{
  char *v2; // r5
  char *result; // r0
  _DWORD *v4; // r3
  int v5; // r2
  int v6; // r1
  char *v7; // r6
  char *v8; // [sp+4h] [bp-4h] BYREF

  v8 = a2;
  v2 = (char *)this + 16;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char const*>(
                     (_DWORD *)this + 4,
                     &v8);
  if ( result != v2 )
  {
    v4 = *((_DWORD **)result + 10);
    if ( !v4[6] )
    {
      v5 = v4[4];
      v6 = *((_DWORD *)result + 11);
      if ( v6 == v5 )
        v4 = (_DWORD *)v4[3];
      else
        *((_DWORD *)result + 11) = v5;
      if ( v6 == v5 )
        *((_DWORD *)result + 11) = v4;
      if ( handle_cheats_inGame )
      {
        v7 = v8;
        if ( LC_API_STRCMP_0(v8, "LevelUp") )
        {
          result = (char *)LC_API_STRCMP_0(v7, "GiveGold");
          if ( !result )
          {
            result = (char *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
            if ( result )
              return (char *)ItemInventory::AddGold((ItemInventory *)(result + 892), 0x200000);
          }
        }
        else
        {
          result = (char *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
          if ( result )
            return (char *)Character::LevelUp((Character *)result, 0);
        }
      }
    }
  }
  return result;
}


// ===== 46d694 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_lower_bound<char const*>(
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
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string(&v12, *a2);
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
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 46d784 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char [128]>(char [128] const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char [128]>(
        int a1,
        char *a2)
{
  _DWORD *v2; // r4
  int v4; // r10
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
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string(&v19, a2);
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
    std::string::~string(&v19);
    if ( v16 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = (int)v2;
    if ( v16 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::string::string(&v18, a2);
    v10 = *(const void **)(v4 + 36);
    v11 = *(_DWORD *)(v4 + 32) - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    v13 = v11 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : *(_DWORD *)(v4 + 32) - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::string::~string(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 46d8f4 SavegameManager::__loadOptions(IStreamBase *,void *) =====
int __fastcall SavegameManager::__loadOptions(SavegameManager *this, IStreamBase *a2, void *a3)
{
  char *v3; // r7
  int result; // r0
  unsigned int i; // r4
  int v7; // r3
  unsigned __int64 v8; // [sp+0h] [bp-90h] BYREF
  unsigned int v9; // [sp+8h] [bp-88h] BYREF
  char v10[128]; // [sp+Ch] [bp-84h] BYREF

  v3 = (char *)a2 + 16;
  result = StreamReader::readAs<unsigned int>((int)this, (int)&v9);
  if ( v9 )
  {
    for ( i = 0; i < v9; ++i )
    {
      result = StreamReader::readString(this, (IStreamBase *)v10, (unsigned int)&dword_80, v8);
      if ( !result )
        break;
      StreamReader::readAs<int>((int)this, (int)&v8 + 4);
      result = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_find<char [128]>(
                 (int)v3,
                 v10);
      if ( v3 != (char *)result )
        v7 = HIDWORD(v8);
      if ( v3 != (char *)result )
        *(_DWORD *)(result + 44) = v7;
    }
  }
  return result;
}


// ===== 46d9b8 `global constructor keyed to'.._.._sources_Game_SaveGames_SavegameManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_SaveGames_SavegameManager.cpp()
{
  int result; // r0

  dword_9A60B0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A60AC = 1056964608;
  std::string::string(&ignoreStr, "ignore");
  result = _aeabi_atexit((int)&ignoreStr, (int)std::string::~string, (int)&_dso_handle);
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


// ===== 46dacc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_create_node(std::pair<std::string const,SavegameManager::_GameOption> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  int v5; // r2
  size_t v6; // [sp+4h] [bp-8h] BYREF

  v6 = 48;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *((_DWORD *)v3 + 10) = *(_DWORD *)(a2 + 24);
  v5 = *(_DWORD *)(a2 + 28);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  *((_DWORD *)v3 + 11) = v5;
  return v3;
}


// ===== 46db2c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,SavegameManager::_GameOption> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_create_node(
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


// ===== 46dc1c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(std::pair<std::string const,SavegameManager::_GameOption> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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


// ===== 46de34 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>>,std::pair<std::string const,SavegameManager::_GameOption> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_insert(
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


// ===== 46e338 std::map<std::string,SavegameManager::_GameOption,std::less<std::string>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,SavegameManager::_GameOption>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+Ch] [bp-68h] BYREF
  char *v14; // [sp+10h] [bp-64h] BYREF
  std::string v15; // [sp+1Ch] [bp-58h] BYREF
  int v16; // [sp+34h] [bp-40h]
  int v17; // [sp+38h] [bp-3Ch]
  std::string v18; // [sp+3Ch] [bp-38h] BYREF
  std::string v19; // [sp+54h] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string(&v19, *a2);
  v5 = *((const void **)v4 + 9);
  v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v7 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v6 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v8 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v9 = memcmp(v19._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v19);
LABEL_11:
    std::string::string(&v18, *a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize(&v15, v18._M_start_of_storage._M_data, v18._M_finish);
    v16 = 0;
    v17 = 0;
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::string::~string(&v15);
    std::string::~string(&v18);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v19);
  v10 = v4;
  return v10 + 40;
}


// ===== 46e47c SavegameManager::_initSettings(bool) =====
void __fastcall SavegameManager::_initSettings(SavegameManager *this, unsigned int a2)
{
  SavegameManager *v2; // r11
  int v4; // r5
  int i; // r3
  char *v6; // r5
  char *v7[2]; // [sp+Ch] [bp-8h] BYREF

  v2 = this;
  if ( *((_DWORD *)this + 8) )
  {
    v6 = (char *)this + 16;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,SavegameManager::_GameOption>,std::priv::_Select1st<std::pair<std::string const,SavegameManager::_GameOption>>,std::priv::_MapTraitsT<std::pair<std::string const,SavegameManager::_GameOption>>,std::allocator<std::pair<std::string const,SavegameManager::_GameOption>>>::_M_erase(
      (int)this + 16,
      *((_DWORD *)this + 5));
    *((_DWORD *)v2 + 7) = v6;
    *((_DWORD *)v2 + 8) = 0;
    *((_DWORD *)v2 + 6) = v6;
    *((_DWORD *)v2 + 5) = 0;
  }
  if ( !a2 && Arrays::GameOptionTable::size )
  {
    do
    {
      v7[0] = *(char **)(Arrays::GameOptionTable::m_memberNames + 4 * a2);
      v4 = Arrays::GameOptionTable::members + 32 * a2;
      *(_DWORD *)std::map<std::string,SavegameManager::_GameOption>::operator[]<char const*>((char *)v2 + 16, v7) = v4;
      ++a2;
      *((_DWORD *)std::map<std::string,SavegameManager::_GameOption>::operator[]<char const*>((char *)v2 + 16, v7) + 1) = *(_DWORD *)(v4 + 4);
    }
    while ( Arrays::GameOptionTable::size > a2 );
  }
  for ( i = 0; i != 14; ++i )
  {
    *((_BYTE *)v2 + 41) = 1;
    v2 = (SavegameManager *)((char *)v2 + 1);
  }
}


// ===== 46e584 SavegameManager::loadSettings(bool) =====
SavegameManager *__fastcall SavegameManager::loadSettings(SavegameManager *this, unsigned int a2)
{
  int v2; // r3
  Savegame *v5; // r7
  void *v6; // r2
  SavegameManager *result; // r0
  void *v8; // r2
  unsigned int Language; // r0

  v2 = *((_DWORD *)this + 1);
  if ( v2 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 1));
    *((_DWORD *)this + 1) = 0;
  }
  SavegameManager::_initSettings(this, a2);
  v5 = (Savegame *)operator new(0x3Cu, 0);
  Savegame::Savegame(v5, "dh2_settings.savegame", 1);
  *((_DWORD *)this + 1) = v5;
  SavegameManager::setLanguage((SavegameManager *)dword_99F778, *((_DWORD *)this + 14));
  if ( a2 )
  {
    result = (SavegameManager *)SavegameManager::__loadLanguageAndOrientation(
                                  *(_DWORD *)(*((_DWORD *)this + 1) + 28),
                                  this,
                                  v6);
    if ( *((_DWORD *)this + 14) == -1 )
      *((_BYTE *)this + 55) = 1;
  }
  else
  {
    result = *(SavegameManager **)(*((_DWORD *)this + 1) + 28);
    if ( result )
    {
      SavegameManager::__loadOptions(result, this, v6);
      SavegameManager::__loadTutorials(*(SavegameManager **)(*((_DWORD *)this + 1) + 28), this, v8);
      if ( SavegameManager::getLanguage(this) == -1 )
      {
        result = (SavegameManager *)SavegameManager::setLanguage(this, 0);
        *((_BYTE *)this + 55) = 1;
      }
      else
      {
        Language = SavegameManager::getLanguage(this);
        result = (SavegameManager *)SavegameManager::setLanguage(this, Language);
      }
      *((_BYTE *)this + 40) = 1;
    }
  }
  return result;
}


// ===== 46e6ac b2ShapeDef::~b2ShapeDef() =====
void __fastcall b2ShapeDef::~b2ShapeDef(b2ShapeDef *this)
{
  ;
}


// ===== 46e6b0 PhysicalBaseObject::~PhysicalBaseObject() =====
void __fastcall PhysicalBaseObject::~PhysicalBaseObject(PhysicalBaseObject *this)
{
  ;
}


// ===== 46e6b4 b2CircleDef::~b2CircleDef() =====
void __fastcall b2CircleDef::~b2CircleDef(b2CircleDef *this)
{
  ;
}


// ===== 46e6b8 b2PolygonDef::~b2PolygonDef() =====
void __fastcall b2PolygonDef::~b2PolygonDef(b2PolygonDef *this)
{
  ;
}


// ===== 46e6bc PhysicalObject::onCollisionTest(PhysicalBaseObject *,short,ushort,ushort,short,ushort,ushort) =====
bool __fastcall PhysicalObject::onCollisionTest(
        PhysicalObject *this,
        PhysicalBaseObject *a2,
        int a3,
        unsigned __int16 a4,
        unsigned __int16 a5,
        __int16 a6,
        unsigned __int16 a7,
        unsigned __int16 a8)
{
  int v8; // r12
  int v9; // r1
  _BOOL4 v11; // r1

  v8 = *((_DWORD *)this + 2);
  v9 = *((_DWORD *)a2 + 2);
  if ( v8 && !*(_BYTE *)(v8 + 128) || v9 && !*(_BYTE *)(v9 + 128) )
    return 0;
  v11 = a3 == a6;
  if ( !a3 )
    v11 = 0;
  if ( !v11 )
  {
    if ( (a7 & a5) != 0 )
      return (unsigned __int16)(a8 & a4) != 0;
    return 0;
  }
  return a3 > 0;
}


// ===== 46e750 PhysicalObject::getRadius(void) =====
float __fastcall PhysicalObject::getRadius(PhysicalObject *this)
{
  return *((float *)this + 3) * 100.0;
}


// ===== 46e768 PhysicalObject::canCollide(PhysicalObject*) =====
int __fastcall PhysicalObject::canCollide(PhysicalObject *this, PhysicalObject *a2)
{
  unsigned __int16 *v3; // r3
  int v4; // r0
  signed __int16 v5; // r2
  int v6; // r4
  int v7; // r3

  if ( a2
    && !*((_BYTE *)this + 38)
    && !*((_BYTE *)a2 + 38)
    && ((v3 = *((unsigned __int16 **)this + 6)) != nullptr || (v3 = *((unsigned __int16 **)this + 7)) != nullptr)
    && ((v4 = *((_DWORD *)a2 + 6), v5 = v3[19], v6 = v3[18], v7 = v3[17], v4) || (v4 = *((_DWORD *)a2 + 7)) != 0) )
  {
    return (*(int (__fastcall **)(PhysicalObject *, PhysicalObject *, _DWORD, int, int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 8))(
             this,
             a2,
             v5,
             v7,
             v6,
             *(__int16 *)(v4 + 38),
             *(unsigned __int16 *)(v4 + 34),
             *(unsigned __int16 *)(v4 + 36));
  }
  else
  {
    return 0;
  }
}


// ===== 46e818 PhysicalObject::getPosition(void) =====
PhysicalObject *__fastcall PhysicalObject::getPosition(PhysicalObject *this, int a2)
{
  int v2; // r5
  float v4; // r0

  v2 = *(_DWORD *)(a2 + 20);
  v4 = *(float *)(v2 + 4) * 100.0;
  *((float *)this + 1) = *(float *)(v2 + 8) * 100.0;
  *(float *)this = v4;
  return this;
}


// ===== 46e858 PhysicalObject::getAngle(void) =====
int __fastcall PhysicalObject::getAngle(PhysicalObject *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 5) + 56);
}


// ===== 46e864 PhysicalObject::addLinearVelocity(float,float,float,float) =====
bool __fastcall PhysicalObject::addLinearVelocity(PhysicalObject *this, float a2, float a3, float a4, float a5)
{
  __int16 *v7; // r3
  __int16 v8; // r2
  int v9; // r5
  float v10; // r7
  float v11; // r4
  _BOOL4 result; // r0

  if ( a2 != 0.0 || a3 != 0.0 )
  {
    v7 = *((__int16 **)this + 5);
    v8 = *v7;
    *((_DWORD *)v7 + 35) = 0;
    *v7 = v8 & 0xFFF7;
  }
  v9 = *((_DWORD *)this + 5);
  v10 = a2 + *(float *)(v9 + 64);
  v11 = a3 + *(float *)(v9 + 68);
  if ( v10 > a4 )
    v10 = a4;
  result = v11 > a5;
  if ( v11 > a5 )
    v11 = a5;
  *(float *)(v9 + 64) = v10;
  *(float *)(v9 + 68) = v11;
  return result;
}


// ===== 46e918 PhysicalObject::setLinearVelocity(float,float) =====
bool __fastcall PhysicalObject::setLinearVelocity(PhysicalObject *this, float a2, float a3)
{
  _BOOL4 result; // r0
  __int16 *v6; // r3
  __int16 v7; // r2
  int v8; // r3

  result = a2 == 0.0;
  if ( a2 != 0.0 || (result = a3 == 0.0, a3 != 0.0) )
  {
    v6 = *((__int16 **)this + 5);
    v7 = *v6;
    *((_DWORD *)v6 + 35) = 0;
    *v6 = v7 & 0xFFF7;
  }
  v8 = *((_DWORD *)this + 5);
  *(float *)(v8 + 64) = a2;
  *(float *)(v8 + 68) = a3;
  return result;
}


// ===== 46e978 PhysicalObject::setAngularVelocity(float) =====
int __fastcall PhysicalObject::setAngularVelocity(int this, float a2)
{
  __int16 *v2; // r3
  __int16 v3; // r2

  v2 = *(__int16 **)(this + 20);
  v3 = *v2;
  *((_DWORD *)v2 + 35) = 0;
  *v2 = v3 & 0xFFF7;
  *(float *)(*(_DWORD *)(this + 20) + 72) = a2;
  return this;
}


// ===== 46e99c PhysicalObject::Update(void) =====
void __fastcall PhysicalObject::Update(PhysicalObject *this)
{
  ;
}


// ===== 46e9a0 PhysicalBaseObject::~PhysicalBaseObject() =====
void __fastcall PhysicalBaseObject::~PhysicalBaseObject(PhysicalBaseObject *this)
{
  *(_DWORD *)this = off_968EC8;
  CustomFree(this);
}


// ===== 46e9d4 b2ShapeDef::~b2ShapeDef() =====
void __fastcall b2ShapeDef::~b2ShapeDef(b2ShapeDef *this)
{
  *(_DWORD *)this = off_968F00;
  CustomFree(this);
}


// ===== 46ea08 b2CircleDef::~b2CircleDef() =====
void __fastcall b2CircleDef::~b2CircleDef(b2CircleDef *this)
{
  *(_DWORD *)this = off_968F00;
  CustomFree(this);
}


// ===== 46ea3c b2PolygonDef::~b2PolygonDef() =====
void __fastcall b2PolygonDef::~b2PolygonDef(b2PolygonDef *this)
{
  *(_DWORD *)this = off_968F00;
  CustomFree(this);
}


// ===== 46ea70 PhysicalObject::setAngle(float) =====
int __fastcall PhysicalObject::setAngle(b2Body **this, float x)
{
  return b2Body::SetXForm(*(this + 5), (b2Body *)((char *)*(this + 5) + 4), x);
}


// ===== 46ea80 PhysicalObject::setPosition(float,float) =====
int __fastcall PhysicalObject::setPosition(PhysicalObject *this, float a2, float a3)
{
  float *v3; // r3
  float v5[3]; // [sp+0h] [bp-Ch] BYREF

  v5[0] = a2 * 0.01;
  v3 = *((float **)this + 5);
  v5[1] = a3 * 0.01;
  return b2Body::SetXForm((b2Body *)v3, (const b2Vec2 *)v5, v3[14]);
}


// ===== 46ead4 PhysicalObject::setPosition(Point2D<float> const&) =====
int __fastcall PhysicalObject::setPosition(PhysicalObject *a1, float *a2)
{
  return PhysicalObject::setPosition(a1, *a2, a2[1]);
}


// ===== 46eae0 PhysicalObject::unpin(void) =====
int __fastcall PhysicalObject::unpin(int this)
{
  int v1; // r4
  __int16 *v2; // r3
  __int16 v3; // r2

  v1 = this;
  if ( *(_BYTE *)(this + 39) )
  {
    *(_BYTE *)(this + 39) = 0;
    this = b2Body::SetMassFromShapes(*(b2Body **)(this + 20));
    v2 = *(__int16 **)(v1 + 20);
    v3 = *v2;
    *((_DWORD *)v2 + 35) = 0;
    *v2 = v3 & 0xFFF7;
  }
  return this;
}


// ===== 46eb20 PhysicalObject::pin(void) =====
int __fastcall PhysicalObject::pin(int this)
{
  int v1; // r2
  int v2; // r0
  int v3; // r2
  _DWORD v4[5]; // [sp+0h] [bp-14h] BYREF

  if ( !*(_BYTE *)(this + 39) )
  {
    v1 = *(_DWORD *)(this + 20);
    *(_BYTE *)(this + 39) = 1;
    v2 = v1;
    v4[1] = *(_DWORD *)(v1 + 28);
    v3 = *(_DWORD *)(v1 + 32);
    v4[3] = 0;
    v4[2] = v3;
    v4[0] = 0;
    return b2Body::SetMass(v2, v4);
  }
  return this;
}


// ===== 46eb70 PhysicalObject::disableFilter(void) =====
int __fastcall PhysicalObject::disableFilter(int this)
{
  __int16 v1; // r3
  int v2; // r4
  _WORD *v3; // r2
  _WORD *v4; // r3

  v1 = *(unsigned __int8 *)(this + 38);
  v2 = this;
  if ( !*(_BYTE *)(this + 38) )
  {
    v3 = *(_WORD **)(this + 24);
    if ( v3 )
    {
      v3[19] = v1;
      v3[18] = v1;
      v3[17] = v1;
      this = b2World::Refilter(*(b2World **)(*(_DWORD *)(this + 4) + 16), *(b2Shape **)(this + 24));
    }
    v4 = *(_WORD **)(v2 + 28);
    if ( v4 )
    {
      v4[19] = 0;
      v4[18] = 0;
      v4[17] = 0;
      this = b2World::Refilter(*(b2World **)(*(_DWORD *)(v2 + 4) + 16), *(b2Shape **)(v2 + 28));
    }
  }
  *(_BYTE *)(v2 + 38) = 1;
  return this;
}


// ===== 46ebe4 PhysicalObject::enableFilter(void) =====
int __fastcall PhysicalObject::enableFilter(int this)
{
  int v1; // r4
  _WORD *v2; // r3
  _WORD *v3; // r3

  v1 = this;
  if ( *(_BYTE *)(this + 38) )
  {
    v2 = *(_WORD **)(this + 24);
    if ( v2 )
    {
      v2[17] = *(_WORD *)(this + 32);
      v2[18] = *(_WORD *)(this + 34);
      v2[19] = *(_WORD *)(this + 36);
      this = b2World::Refilter(*(b2World **)(*(_DWORD *)(this + 4) + 16), *(b2Shape **)(this + 24));
    }
    v3 = *(_WORD **)(v1 + 28);
    if ( v3 )
    {
      v3[17] = *(_WORD *)(v1 + 32);
      v3[18] = *(_WORD *)(v1 + 34);
      v3[19] = *(_WORD *)(v1 + 36);
      this = b2World::Refilter(*(b2World **)(*(_DWORD *)(v1 + 4) + 16), *(b2Shape **)(v1 + 28));
    }
  }
  *(_BYTE *)(v1 + 38) = 0;
  return this;
}


// ===== 46ec6c PhysicalObject::resetFilter(void) =====
int __fastcall PhysicalObject::resetFilter(int this)
{
  _WORD *v1; // r3
  int v2; // r4
  _WORD *v3; // r3

  v1 = *(_WORD **)(this + 24);
  v2 = this;
  if ( v1 )
  {
    v1[17] = *(_WORD *)(this + 32);
    v1[18] = *(_WORD *)(this + 34);
    v1[19] = *(_WORD *)(this + 36);
    this = b2World::Refilter(*(b2World **)(*(_DWORD *)(this + 4) + 16), *(b2Shape **)(this + 24));
  }
  v3 = *(_WORD **)(v2 + 28);
  if ( v3 )
  {
    v3[17] = *(_WORD *)(v2 + 32);
    v3[18] = *(_WORD *)(v2 + 34);
    v3[19] = *(_WORD *)(v2 + 36);
    this = b2World::Refilter(*(b2World **)(*(_DWORD *)(v2 + 4) + 16), *(b2Shape **)(v2 + 28));
  }
  *(_BYTE *)(v2 + 38) = 0;
  return this;
}


// ===== 46ece8 PhysicalObject::setFilter(short,ushort,ushort,bool) =====
_WORD *__fastcall PhysicalObject::setFilter(
        PhysicalObject *this,
        __int16 a2,
        unsigned __int16 a3,
        unsigned __int16 a4,
        bool a5)
{
  _WORD *result; // r0
  _WORD *v10; // r3

  result = *((_WORD **)this + 6);
  if ( result )
  {
    result[19] = a2;
    result[18] = a4;
    result[17] = a3;
    result = (_WORD *)b2World::Refilter(*(b2World **)(*((_DWORD *)this + 1) + 16), *((b2Shape **)this + 6));
  }
  v10 = *((_WORD **)this + 7);
  if ( v10 && a5 )
  {
    v10[19] = a2;
    v10[18] = a4;
    v10[17] = a3;
    result = (_WORD *)b2World::Refilter(*(b2World **)(*((_DWORD *)this + 1) + 16), *((b2Shape **)this + 7));
  }
  *((_BYTE *)this + 38) = 0;
  return result;
}


// ===== 46ed64 PhysicalObject::getLookAt(Point2D<float> &) =====
unsigned int __fastcall PhysicalObject::getLookAt(int a1, _DWORD *a2)
{
  unsigned int result; // r0
  int v4; // r2
  int v5; // [sp+4h] [bp-Ch] BYREF
  int v6; // [sp+8h] [bp-8h]
  int v7; // [sp+Ch] [bp-4h]

  result = *(_DWORD *)(a1 + 8);
  if ( result )
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    result = GameObject::GetLookAtVec(result, (float *)&v5);
    v4 = v6;
    *a2 = v5;
    a2[1] = v4;
  }
  else
  {
    a2[1] = 0;
    *a2 = 0;
  }
  return result;
}


// ===== 46edb8 PhysicalObject::_addShape(b2ShapeDef *,bool) =====
int __fastcall PhysicalObject::_addShape(b2Body **this, b2ShapeDef *a2, int a3)
{
  int Shape; // r0
  int v6; // r6

  Shape = b2Body::CreateShape(*(this + 5), a2);
  v6 = Shape;
  if ( Shape )
  {
    *(_DWORD *)(Shape + 44) = this;
    if ( a3 )
      b2Body::SetMassFromShapes(*(this + 5));
  }
  return v6;
}


// ===== 46edf0 PhysicalObject::_init(b2ShapeDef *,float,float,bool,bool) =====
int __fastcall PhysicalObject::_init(PhysicalObject *this, b2ShapeDef *a2, float a3, float a4, bool a5, bool a6)
{
  int v6; // r4
  int v9; // r0
  int Body; // r0
  int v11; // r3
  int result; // r0
  _DWORD v13[10]; // [sp+4h] [bp-30h] BYREF
  char v14; // [sp+2Ch] [bp-8h]
  char v15; // [sp+2Dh] [bp-7h]
  char v16; // [sp+2Eh] [bp-6h]
  bool v17; // [sp+2Fh] [bp-5h]

  v6 = 0;
  v9 = *((_DWORD *)this + 1);
  memset(v13, 0, 16);
  memset(&v13[7], 0, 12);
  *(float *)&v13[6] = a4;
  v17 = a6;
  v16 = 1;
  *(float *)&v13[5] = a3;
  v14 = 1;
  v13[4] = this;
  v15 = 1;
  Body = PhysicalWorld::createBody(v9, v13);
  *((_DWORD *)this + 5) = Body;
  *(_DWORD *)(Body + 144) = this;
  *((_DWORD *)a2 + 3) = 1065353216;
  v11 = *((unsigned __int8 *)a2 + 24);
  *((_DWORD *)a2 + 4) = 0;
  if ( !a5 )
    v6 = 1093916426;
  *((_DWORD *)a2 + 2) = this;
  *((_DWORD *)a2 + 5) = v6;
  if ( v11 )
  {
    result = PhysicalObject::_addShape(this, a2, 1);
    *((_DWORD *)this + 7) = result;
  }
  else
  {
    result = PhysicalObject::_addShape(this, a2, 1);
    *((_DWORD *)this + 6) = result;
  }
  return result;
}


// ===== 46eebc PhysicalObject::~PhysicalObject() =====
void __fastcall PhysicalObject::~PhysicalObject(PhysicalObject *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_968F20;
  if ( v1 )
    PhysicalWorld::destroyBody(*((_DWORD *)this + 1), (b2Body **)this + 5);
}


// ===== 46ef04 PhysicalObject::~PhysicalObject() =====
void __fastcall PhysicalObject::~PhysicalObject(PhysicalObject *this)
{
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 46ef20 PhysicalObject::~PhysicalObject() =====
void __fastcall PhysicalObject::~PhysicalObject(PhysicalObject *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_968F20;
  if ( v1 )
    PhysicalWorld::destroyBody(*((PhysicalWorld **)this + 1), (b2Body **)this + 5);
}


// ===== 46ef68 PhysicalObject::PhysicalObject(PhysicalWorld *,GameObject *,bool,bool,bool,bool,short,ushort,ushort,int) =====
void __fastcall PhysicalObject::PhysicalObject(
        PhysicalObject *this,
        PhysicalWorld *a2,
        GameObject *a3,
        bool a4,
        bool a5,
        bool a6,
        bool a7,
        __int16 a8,
        unsigned __int16 a9,
        unsigned __int16 a10,
        int a11)
{
  int v11; // lr
  float v15; // r1
  float v16; // r0
  float v17; // r9
  float v18; // r7
  float v19; // r10
  float v20; // r6
  float v21; // r1
  float v22; // r0
  float v23; // r7
  int Switch; // [sp+8h] [bp-ACh]
  void (**v26)(b2ShapeDef *__hidden); // [sp+2Ch] [bp-88h] BYREF
  int v27; // [sp+30h] [bp-84h]
  int v28; // [sp+34h] [bp-80h]
  int v29; // [sp+38h] [bp-7Ch]
  int v30; // [sp+3Ch] [bp-78h]
  int v31; // [sp+40h] [bp-74h]
  bool v32; // [sp+44h] [bp-70h]
  __int16 v33; // [sp+46h] [bp-6Eh]
  unsigned __int16 v34; // [sp+48h] [bp-6Ch]
  __int16 v35; // [sp+4Ah] [bp-6Ah]
  int v36; // [sp+4Ch] [bp-68h]
  int v37; // [sp+50h] [bp-64h]
  float v38; // [sp+54h] [bp-60h]
  int v39; // [sp+8Ch] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v40; // [sp+94h] [bp-20h] BYREF
  int v41; // [sp+ACh] [bp-8h]

  v11 = _stack_chk_guard;
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_968F20;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = a5;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 38) = 0;
  *((_BYTE *)this + 39) = 0;
  v41 = v11;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v40, "MP_NoCollisions");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v40);
  if ( Switch )
    a8 = -666;
  if ( a3 )
  {
    if ( a5 )
    {
      v21 = *((float *)a3 + 75);
      v22 = *((float *)a3 + 78);
      v29 = 1045220557;
      v33 = 1;
      v34 = -1;
      v32 = 0;
      v27 = 0;
      v37 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v35 = 0;
      v36 = 0;
      v23 = (float)(*((float *)a3 + 79) - *((float *)a3 + 76)) * 0.01;
      v19 = *((float *)a3 + 88) * 0.01;
      v20 = *((float *)a3 + 89) * 0.01;
      if ( (float)((float)(v22 - v21) * 0.01) >= v23 )
        v23 = (float)(v22 - v21) * 0.01;
      *((float *)this + 3) = v23 * 0.5;
      v38 = v23 * 0.5;
      v26 = off_968F00;
    }
    else
    {
      v15 = *((float *)a3 + 75);
      v16 = *((float *)a3 + 78);
      v27 = 1;
      v33 = 1;
      v26 = off_968F10;
      v34 = -1;
      v29 = 1045220557;
      v31 = 0;
      v39 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v32 = 0;
      v17 = (float)(v16 - v15) * 0.01;
      v18 = (float)(*((float *)a3 + 79) - *((float *)a3 + 76)) * 0.01;
      v19 = *((float *)a3 + 88) * 0.01;
      v20 = *((float *)a3 + 89) * 0.01;
      b2PolygonDef::SetAsBox((b2PolygonDef *)&v26, v17 * 0.5, v18 * 0.5);
      if ( v17 >= v18 )
        v18 = v17;
      *((float *)this + 3) = v18 * 0.5;
      v26 = off_968F00;
    }
    *((_WORD *)this + 18) = a8;
    *((_WORD *)this + 16) = a9;
    *((_WORD *)this + 17) = a10;
    v35 = a8;
    v32 = a6;
    v33 = a9;
    v34 = a10;
    PhysicalObject::_init(this, (b2ShapeDef *)&v26, v19, v20, a4, a7);
  }
}


// ===== 46f2f0 PhysicalObject::PhysicalObject(PhysicalWorld *,GameObject *,bool,bool,bool,bool,short,ushort,ushort,int) =====
void __fastcall PhysicalObject::PhysicalObject(
        PhysicalObject *this,
        PhysicalWorld *a2,
        GameObject *a3,
        bool a4,
        bool a5,
        bool a6,
        bool a7,
        __int16 a8,
        unsigned __int16 a9,
        unsigned __int16 a10,
        int a11)
{
  int v11; // lr
  float v15; // r1
  float v16; // r0
  float v17; // r9
  float v18; // r7
  float v19; // r10
  float v20; // r6
  float v21; // r1
  float v22; // r0
  float v23; // r7
  int Switch; // [sp+8h] [bp-ACh]
  void (**v26)(b2ShapeDef *__hidden); // [sp+2Ch] [bp-88h] BYREF
  int v27; // [sp+30h] [bp-84h]
  int v28; // [sp+34h] [bp-80h]
  int v29; // [sp+38h] [bp-7Ch]
  int v30; // [sp+3Ch] [bp-78h]
  int v31; // [sp+40h] [bp-74h]
  bool v32; // [sp+44h] [bp-70h]
  __int16 v33; // [sp+46h] [bp-6Eh]
  unsigned __int16 v34; // [sp+48h] [bp-6Ch]
  __int16 v35; // [sp+4Ah] [bp-6Ah]
  int v36; // [sp+4Ch] [bp-68h]
  int v37; // [sp+50h] [bp-64h]
  float v38; // [sp+54h] [bp-60h]
  int v39; // [sp+8Ch] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v40; // [sp+94h] [bp-20h] BYREF
  int v41; // [sp+ACh] [bp-8h]

  v11 = _stack_chk_guard;
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_968F20;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = a5;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 38) = 0;
  *((_BYTE *)this + 39) = 0;
  v41 = v11;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v40, "MP_NoCollisions");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v40);
  if ( Switch )
    a8 = -666;
  if ( a3 )
  {
    if ( a5 )
    {
      v21 = *((float *)a3 + 75);
      v22 = *((float *)a3 + 78);
      v29 = 1045220557;
      v33 = 1;
      v34 = -1;
      v32 = 0;
      v27 = 0;
      v37 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v35 = 0;
      v36 = 0;
      v23 = (float)(*((float *)a3 + 79) - *((float *)a3 + 76)) * 0.01;
      v19 = *((float *)a3 + 88) * 0.01;
      v20 = *((float *)a3 + 89) * 0.01;
      if ( (float)((float)(v22 - v21) * 0.01) >= v23 )
        v23 = (float)(v22 - v21) * 0.01;
      *((float *)this + 3) = v23 * 0.5;
      v38 = v23 * 0.5;
      v26 = off_968F00;
    }
    else
    {
      v15 = *((float *)a3 + 75);
      v16 = *((float *)a3 + 78);
      v27 = 1;
      v33 = 1;
      v26 = off_968F10;
      v34 = -1;
      v29 = 1045220557;
      v31 = 0;
      v39 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v32 = 0;
      v17 = (float)(v16 - v15) * 0.01;
      v18 = (float)(*((float *)a3 + 79) - *((float *)a3 + 76)) * 0.01;
      v19 = *((float *)a3 + 88) * 0.01;
      v20 = *((float *)a3 + 89) * 0.01;
      b2PolygonDef::SetAsBox((b2PolygonDef *)&v26, v17 * 0.5, v18 * 0.5);
      if ( v17 >= v18 )
        v18 = v17;
      *((float *)this + 3) = v18 * 0.5;
      v26 = off_968F00;
    }
    *((_WORD *)this + 18) = a8;
    *((_WORD *)this + 16) = a9;
    *((_WORD *)this + 17) = a10;
    v35 = a8;
    v32 = a6;
    v33 = a9;
    v34 = a10;
    PhysicalObject::_init(this, (b2ShapeDef *)&v26, v19, v20, a4, a7);
  }
}


// ===== 46f678 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_PhysicalObject.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_PhysicalObject.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A60D4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A60D0 = 1056964608;
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


// ===== 46f754 PhysicalObject::Draw(void) =====
void __fastcall PhysicalObject::Draw(PhysicalObject *this)
{
  int v2; // r3
  _DWORD *v3; // r7
  int v4; // r11
  float v5; // r8
  int v6; // r2
  int Technique; // r2
  _WORD *v8; // r3
  float v9; // [sp+1Ch] [bp-70h]
  float v10[3]; // [sp+24h] [bp-68h] BYREF
  float v11[3]; // [sp+30h] [bp-5Ch] BYREF
  float v12[3]; // [sp+3Ch] [bp-50h] BYREF
  float v13[3]; // [sp+48h] [bp-44h] BYREF
  float v14; // [sp+54h] [bp-38h] BYREF
  float v15; // [sp+58h] [bp-34h]
  glitch::video::CMaterial *v16; // [sp+5Ch] [bp-30h] BYREF
  int v17; // [sp+60h] [bp-2Ch]
  int v18; // [sp+64h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+6Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v19, "isDisplayingPhysicalBodies");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v19)
    && (*((_DWORD *)this + 6) || *((_DWORD *)this + 7)) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
    v2 = *((_DWORD *)this + 2);
    if ( v2 && *(_BYTE *)(v2 + 128) )
    {
      PhysicalObject::getPosition((PhysicalObject *)&v14, (int)this);
      v3 = *(_DWORD **)(dword_99F73C + 16);
      v4 = v3[55];
      v5 = *((float *)this + 3) * 100.0;
      v6 = *(unsigned __int16 *)(v4 + 46);
      v9 = *(float *)(*((_DWORD *)this + 2) + 360);
      if ( v6 == 0xFFFF )
        LOBYTE(v6) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v4, 1);
      glitch::video::CMaterialRendererManager::getMaterialInstance(
        (glitch::video::CMaterialRendererManager *)&v16,
        v4,
        v6);
      if ( v16 )
        Technique = glitch::video::CMaterial::getTechnique(v16);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v3, &v16, Technique, 0);
      v8 = *((_WORD **)this + 5);
      if ( v8[1] )
      {
        if ( (*v8 & 8) != 0 )
        {
          v17 = -8421632;
          v18 = 2139062016;
        }
        else
        {
          v17 = -256;
          v18 = 2147483392;
        }
      }
      else
      {
        v18 = 0x7FFFFFFF;
        v17 = -1;
      }
      if ( *((_BYTE *)this + 16) )
      {
        SceneManager::DBG_DrawCircle(*(_DWORD *)(dword_99F73C + 28), &v14, v9 + 10.0, v5, (unsigned __int8 *)&v18);
      }
      else
      {
        v13[2] = v9 + 10.0;
        v13[0] = v14 - v5;
        v13[1] = v15 - v5;
        v12[2] = v9 + 10.0;
        v12[0] = v14 - v5;
        v12[1] = v5 + v15;
        v10[2] = v9 + 10.0;
        v10[0] = v5 + v14;
        v11[0] = v5 + v14;
        v11[2] = v9 + 10.0;
        v11[1] = v5 + v15;
        v10[1] = v15 - v5;
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v13, v12, v17);
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v12, v11, v17);
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v11, v10, v17);
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v10, v13, v17);
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v13, v11, v18);
        (*(void (__fastcall **)(_DWORD *, float *, float *, int))(*v3 + 28))(v3, v12, v10, v18);
      }
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
    }
  }
  else
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  }
}


// ===== 46fb14 POCharacter::onCollisionResults(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void POCharacter::onCollisionResults()
{
  ;
}


// ===== 46fb18 POCharacter::~POCharacter() =====
void __fastcall POCharacter::~POCharacter(POCharacter *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 46fb4c POCharacter::onCollisionTest(PhysicalBaseObject *,short,ushort,ushort,short,ushort,ushort) =====
bool __fastcall POCharacter::onCollisionTest(
        POCharacter *this,
        PhysicalBaseObject *a2,
        int a3,
        unsigned __int16 a4,
        unsigned __int16 a5,
        __int16 a6,
        unsigned __int16 a7,
        unsigned __int16 a8)
{
  int v12; // r0
  CharStateMachine *v13; // r4
  _BYTE v15[16]; // [sp+1Ch] [bp-10h] BYREF

  ObjectBase::GetHandle((ObjectBase *)v15);
  v12 = ObjectHandle::operator Character *(v15);
  if ( v12
    && ((v13 = (CharStateMachine *)(v12 + 1276), CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v12 + 1276)))
     || CharStateMachine::SM_IsKnockedBack(v13) && (a7 & 3) == 0) )
  {
    return 0;
  }
  else
  {
    return PhysicalObject::onCollisionTest(this, a2, a3, a4, a5, a6, a7, a8);
  }
}


// ===== 46fbfc `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POCharacter.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POCharacter.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A60E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A60DC = 1056964608;
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


// ===== 46fcd8 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingPlayersCollision";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingPlayersCollision" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingPlayersCollision" )
    result = (char *)memcpy(result, "isTracingPlayersCollision", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 46fd28 POCharacter::onCollisionEnds(PhysicalBaseObject *,Point2D<float> const&,bool) =====
char *__fastcall POCharacter::onCollisionEnds(char *result, int a2, int a3, int a4)
{
  int v5; // r6
  char *v6; // r7
  bool v7; // zf
  const char *v8; // r2
  int Switch; // r9
  int v10; // r1
  char *v11[3]; // [sp+0h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)result + 2);
  v6 = *(char **)(a2 + 8);
  v7 = v6 == nullptr;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v12._M_finish = (char *)&v12;
    v12._M_start_of_storage._M_data = (char *)&v12;
    std::string::_M_range_initialize((std::string *)&v12, "", v8);
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    if ( Switch )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
    ObjectBase::GetHandle((ObjectBase *)v11, v5);
    result = ObjectHandle::operator Character *(v11);
    if ( result )
    {
      if ( a4 )
        v10 = 59;
      else
        v10 = 60;
      return (char *)Character::RaiseEvent((Character *)result, v10, v6);
    }
  }
  return result;
}


// ===== 46fe2c POCharacter::~POCharacter() =====
void __fastcall POCharacter::~POCharacter(POCharacter *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 46fe68 POCharacter::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
Character *__fastcall POCharacter::onCollisionBegins(Character *result, int a2, int a3, int a4)
{
  int v5; // r6
  char *v6; // r7
  bool v7; // zf
  const char *v8; // r2
  int Switch; // r9
  int v10; // r1
  _BYTE v11[12]; // [sp+0h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)result + 2);
  v6 = *(char **)(a2 + 8);
  v7 = v6 == nullptr;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v12._M_finish = (char *)&v12;
    v12._M_start_of_storage._M_data = (char *)&v12;
    std::string::_M_range_initialize((std::string *)&v12, "", v8);
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    if ( Switch )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
    ObjectBase::GetHandle((ObjectBase *)v11);
    result = (Character *)ObjectHandle::operator Character *(v11);
    if ( result )
    {
      if ( a4 )
        v10 = 55;
      else
        v10 = 56;
      return (Character *)Character::RaiseEvent(result, v10, v6);
    }
  }
  return result;
}


// ===== 46ff6c POCharacter::onCollisionPersists(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void __fastcall POCharacter::onCollisionPersists(int a1, int a2, int a3, int a4)
{
  int v5; // r6
  char *v6; // r7
  bool v7; // zf
  char *v8; // r11
  const char *v9; // r2
  int Switch; // r9
  int v11; // r1
  char *v12[3]; // [sp+0h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+Ch] [bp-20h] BYREF

  v5 = *(_DWORD *)(a1 + 8);
  v6 = *(char **)(a2 + 8);
  v7 = v6 == nullptr;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    ObjectBase::GetHandle((ObjectBase *)v12, *(_DWORD *)(a1 + 8));
    v8 = ObjectHandle::operator Character *(v12);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v13._M_finish = (char *)&v13;
    v13._M_start_of_storage._M_data = (char *)&v13;
    std::string::_M_range_initialize((std::string *)&v13, "", v9);
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v13);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
    if ( Switch )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
    if ( v8 )
    {
      if ( a4 )
        v11 = 57;
      else
        v11 = 58;
      Character::RaiseEvent((Character *)v8, v11, v6);
    }
  }
}


// ===== 470074 PODecor::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void PODecor::onCollisionBegins()
{
  ;
}


// ===== 470078 PODecor::~PODecor() =====
void __fastcall PODecor::~PODecor(PODecor *this)
{
  *(_DWORD *)this = off_968F88;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 4700ac `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_PODecor.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_PODecor.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A60EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A60E8 = 1056964608;
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


// ===== 470188 PODecor::~PODecor() =====
void __fastcall PODecor::~PODecor(PODecor *this)
{
  *(_DWORD *)this = off_968F88;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 4701c4 POItem::onCollisionPersists(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void POItem::onCollisionPersists()
{
  ;
}


// ===== 4701c8 POItem::~POItem() =====
void __fastcall POItem::~POItem(POItem *this)
{
  *(_DWORD *)this = off_968FB8;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 4701fc POItem::onCollisionEnds(PhysicalBaseObject *,Point2D<float> const&,bool) =====
char *__fastcall POItem::onCollisionEnds(int a1, int a2)
{
  char *result; // r0
  ItemObject *v4; // r4
  int v5; // r5
  bool v6; // zf
  char *v7[3]; // [sp+0h] [bp-18h] BYREF
  char *v8[3]; // [sp+Ch] [bp-Ch] BYREF

  ObjectBase::GetHandle((ObjectBase *)v8, *(_DWORD *)(a1 + 8));
  result = ObjectHandle::GetObject(v8, 0);
  v4 = (ItemObject *)result;
  if ( !result || *((_DWORD *)result + 61) != 3 )
    v4 = nullptr;
  if ( a2 )
  {
    v5 = *(_DWORD *)(a2 + 8);
    v6 = v4 == nullptr;
    if ( v4 )
      v6 = v5 == 0;
    if ( !v6 )
    {
      result = (char *)(*(int (__fastcall **)(ItemObject *, _DWORD))(*(_DWORD *)v4 + 136))(v4, 0);
      if ( result )
      {
        ObjectBase::GetHandle((ObjectBase *)v7, v5);
        result = ObjectHandle::operator Character *(v7);
        if ( result )
          return (char *)ItemObject::OnCollisionEnds(v4, (ItemObject **)result);
      }
    }
  }
  return result;
}


// ===== 4702a8 POItem::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
ItemObject *__fastcall POItem::onCollisionBegins(int a1, int a2)
{
  ItemObject *result; // r0
  ItemObject *v4; // r4
  int v5; // r5
  bool v6; // zf
  _BYTE v7[12]; // [sp+0h] [bp-18h] BYREF
  _BYTE v8[12]; // [sp+Ch] [bp-Ch] BYREF

  ObjectBase::GetHandle((ObjectBase *)v8);
  result = (ItemObject *)ObjectHandle::GetObject((ObjectHandle *)v8, 0);
  v4 = result;
  if ( !result || *((_DWORD *)result + 61) != 3 )
    v4 = nullptr;
  if ( a2 )
  {
    v5 = *(_DWORD *)(a2 + 8);
    v6 = v4 == nullptr;
    if ( v4 )
      v6 = v5 == 0;
    if ( !v6 )
    {
      result = (ItemObject *)(*(int (__fastcall **)(ItemObject *, _DWORD))(*(_DWORD *)v4 + 136))(v4, 0);
      if ( result )
      {
        ObjectBase::GetHandle((ObjectBase *)v7);
        result = (ItemObject *)ObjectHandle::operator Character *(v7);
        if ( result )
          return ItemObject::OnCollisionBegins(v4, result);
      }
    }
  }
  return result;
}


// ===== 470354 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POItem.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POItem.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A60F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A60F4 = 1056964608;
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


// ===== 470430 POItem::~POItem() =====
void __fastcall POItem::~POItem(POItem *this)
{
  *(_DWORD *)this = off_968FB8;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 47046c POProjectile::onCollisionPersists(PhysicalBaseObject *,Point2D<float> const&,bool) =====
int __fastcall POProjectile::onCollisionPersists(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1);
}


// ===== 470480 POProjectile::~POProjectile() =====
void __fastcall POProjectile::~POProjectile(POProjectile *this)
{
  *(_DWORD *)this = off_968FE8;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 4704b4 POProjectile::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
_DWORD *__fastcall POProjectile::onCollisionBegins(int a1, int a2, int a3)
{
  _DWORD *result; // r0
  _BYTE v6[12]; // [sp+4h] [bp-Ch] BYREF

  ObjectBase::GetHandle((ObjectBase *)v6);
  result = (_DWORD *)ObjectHandle::GetObject((ObjectHandle *)v6, 0);
  if ( result && result[61] == 9 )
  {
    if ( a2 )
      return (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD, int))(*result + 208))(result, *(_DWORD *)(a2 + 8), a3);
  }
  return result;
}


// ===== 470520 POProjectile::onCollisionTest(PhysicalBaseObject *,short,ushort,ushort,short,ushort,ushort) =====
int __fastcall POProjectile::onCollisionTest(
        POProjectile *this,
        PhysicalBaseObject *a2,
        __int16 a3,
        unsigned __int16 a4,
        unsigned __int16 a5,
        __int16 a6,
        unsigned __int16 a7,
        unsigned __int16 a8)
{
  _DWORD *Object; // r0
  char v11; // r3
  int v12; // r3
  int v13; // r12
  int v14; // r1
  void (__fastcall *v15)(_DWORD *, int, _DWORD *); // r3
  _BYTE v16[12]; // [sp+10h] [bp-20h] BYREF
  _BYTE v17[12]; // [sp+1Ch] [bp-14h] BYREF
  _DWORD v18[2]; // [sp+28h] [bp-8h] BYREF

  if ( PhysicalObject::onCollisionTest(this, a2, a3, a4, a5, a6, a7, a8) )
  {
    ObjectBase::GetHandle((ObjectBase *)v17);
    Object = (_DWORD *)ObjectHandle::GetObject((ObjectHandle *)v17, 0);
    if ( Object && Object[61] == 9
      || (ObjectBase::GetHandle((ObjectBase *)v16),
          (Object = (_DWORD *)ObjectHandle::GetObject((ObjectHandle *)v16, 0)) != nullptr)
      && Object[61] == 10 )
    {
      v11 = 1;
    }
    else
    {
      v11 = 0;
      Object = nullptr;
    }
    if ( a2 )
      v12 = v11 & 1;
    else
      v12 = 0;
    if ( v12 )
    {
      v13 = Object[89];
      v14 = *((_DWORD *)a2 + 2);
      v15 = *(void (__fastcall **)(_DWORD *, int, _DWORD *))(*Object + 208);
      v18[0] = Object[88];
      v18[1] = v13;
      v15(Object, v14, v18);
    }
  }
  return 0;
}


// ===== 470610 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POProjectile.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POProjectile.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6104 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6100 = 1056964608;
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


// ===== 4706ec POProjectile::~POProjectile() =====
void __fastcall POProjectile::~POProjectile(POProjectile *this)
{
  *(_DWORD *)this = off_968FE8;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 470728 POZone::~POZone() =====
void __fastcall POZone::~POZone(POZone *this)
{
  *(_DWORD *)this = off_969018;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 47075c POZone::onCollisionEnds(PhysicalBaseObject *,Point2D<float> const&,bool) =====
char *__fastcall POZone::onCollisionEnds(int a1, int a2)
{
  int v2; // r5
  char *result; // r0
  bool v4; // zf
  char *v5[4]; // [sp+4h] [bp-10h] BYREF

  v2 = *(_DWORD *)(a1 + 8);
  ObjectBase::GetHandle((ObjectBase *)v5, *(_DWORD *)(a2 + 8));
  result = ObjectHandle::operator GameObject *(v5);
  v4 = result == nullptr;
  if ( result )
    v4 = v2 == 0;
  if ( !v4 )
    return (char *)(*(int (__fastcall **)(int, char *))(*(_DWORD *)v2 + 212))(v2, result);
  return result;
}


// ===== 4707a8 POZone::onCollisionPersists(PhysicalBaseObject *,Point2D<float> const&,bool) =====
char *__fastcall POZone::onCollisionPersists(int a1, int a2)
{
  int v2; // r5
  char *result; // r0
  bool v4; // zf
  char *v5[4]; // [sp+4h] [bp-10h] BYREF

  v2 = *(_DWORD *)(a1 + 8);
  ObjectBase::GetHandle((ObjectBase *)v5, *(_DWORD *)(a2 + 8));
  result = ObjectHandle::operator GameObject *(v5);
  v4 = result == nullptr;
  if ( result )
    v4 = v2 == 0;
  if ( !v4 )
    return (char *)(*(int (__fastcall **)(int, char *))(*(_DWORD *)v2 + 208))(v2, result);
  return result;
}


// ===== 4707f4 POZone::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
int __fastcall POZone::onCollisionBegins(int a1)
{
  int v1; // r5
  int result; // r0
  bool v3; // zf
  _BYTE v4[16]; // [sp+4h] [bp-10h] BYREF

  v1 = *(_DWORD *)(a1 + 8);
  ObjectBase::GetHandle((ObjectBase *)v4);
  result = ObjectHandle::operator GameObject *(v4);
  v3 = result == 0;
  if ( result )
    v3 = v1 == 0;
  if ( !v3 )
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)v1 + 204))(v1, result);
  return result;
}


// ===== 470840 POZone::onCollisionTest(PhysicalBaseObject *,short,ushort,ushort,short,ushort,ushort) =====
bool __fastcall POZone::onCollisionTest(
        POZone *this,
        PhysicalBaseObject *a2,
        __int16 a3,
        unsigned __int16 a4,
        unsigned __int16 a5,
        __int16 a6,
        unsigned __int16 a7,
        unsigned __int16 a8)
{
  _BOOL4 v9; // r6
  int v11; // r5
  int v12; // r0
  bool v13; // zf
  _BYTE v14[16]; // [sp+14h] [bp-10h] BYREF

  v9 = PhysicalObject::onCollisionTest(this, a2, a3, a4, a5, a6, a7, a8);
  if ( v9 )
  {
    v11 = *((_DWORD *)this + 2);
    ObjectBase::GetHandle((ObjectBase *)v14);
    v12 = ObjectHandle::operator GameObject *(v14);
    v13 = v12 == 0;
    if ( v12 )
      v13 = v11 == 0;
    if ( !v13 )
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v11 + 200))(v11, v12);
  }
  return v9;
}


// ===== 4708c4 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POZone.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Physical_POZone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6110 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A610C = 1056964608;
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


// ===== 4709a0 POZone::~POZone() =====
void __fastcall POZone::~POZone(POZone *this)
{
  *(_DWORD *)this = off_969018;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 4709dc VisualObject::GetSpecificNode(int) =====
int __fastcall VisualObject::GetSpecificNode(VisualObject *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 28))(
           *(_DWORD *)(dword_99F73C + 28),
           a2,
           *((_DWORD *)this + 2));
}


// ===== 470a18 VisualObject::GetSpecificNode(char const*) =====
int __fastcall VisualObject::GetSpecificNode(VisualObject *this, const char *a2)
{
  return (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 24))(
           *(_DWORD *)(dword_99F73C + 28),
           a2,
           *((_DWORD *)this + 2));
}


// ===== 470a54 VisualObject::ApplyMeshBox(void) =====
int __fastcall VisualObject::ApplyMeshBox(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD, int, _DWORD))(*(_DWORD *)v1 + 156))(
             *(_DWORD *)(this + 4),
             this + 16,
             *(unsigned __int8 *)(this + 40));
  return this;
}


// ===== 470a84 VisualObject::SetAnimController(AnimController *) =====
int __fastcall VisualObject::SetAnimController(int result, int a2)
{
  int v2; // r3
  int v3; // r4

  v2 = *(_DWORD *)(result + 56);
  v3 = result;
  if ( v2 != a2 )
  {
    if ( v2 )
    {
      result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(_DWORD *)(result + 56));
      *(_DWORD *)(v3 + 56) = 0;
    }
    *(_DWORD *)(v3 + 56) = a2;
  }
  return result;
}


// ===== 470ac4 VisualObject::IsVisible(void) =====
int __fastcall VisualObject::IsVisible(VisualObject *this)
{
  int result; // r0

  result = *((_DWORD *)this + 2);
  if ( result )
    return *(_DWORD *)(result + 284) & 1;
  return result;
}


// ===== 470ad8 VisualObject::SetShadowSkinnedMeshVisible(bool) =====
int __fastcall VisualObject::SetShadowSkinnedMeshVisible(int this, int a2)
{
  int v2; // r3
  _DWORD *v3; // r5
  int v5; // r7
  int v6; // r4
  int v7; // r3
  int v8; // r3
  int v9; // r7
  int v10; // r4
  int v11; // r3

  v2 = *(_DWORD *)(this + 128);
  v3 = (_DWORD *)this;
  v5 = (*(_DWORD *)(this + 132) - v2) >> 2;
  if ( v5 > 0 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 4 * v6++);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 72))(v7, a2);
      if ( v6 == v5 )
        break;
      v2 = v3[32];
    }
  }
  v8 = v3[35];
  v9 = (v3[36] - v8) >> 2;
  if ( v9 > 0 )
  {
    v10 = 0;
    while ( 1 )
    {
      v11 = *(_DWORD *)(v8 + 4 * v10++);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 72))(v11, a2);
      if ( v10 == v9 )
        break;
      v8 = v3[35];
    }
  }
  return this;
}


// ===== 470b78 VisualObject::SetXraySkinnedMeshVisible(bool) =====
int __fastcall VisualObject::SetXraySkinnedMeshVisible(int this, int a2)
{
  int v2; // r3
  int v3; // r5
  int v5; // r6
  int v6; // r4
  int v7; // r3

  v2 = *(_DWORD *)(this + 156);
  v3 = this;
  v5 = (*(_DWORD *)(this + 160) - v2) >> 2;
  if ( v5 > 0 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 4 * v6++);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 72))(v7, a2);
      if ( v6 == v5 )
        break;
      v2 = *(_DWORD *)(v3 + 156);
    }
  }
  return this;
}


// ===== 470bd0 VisualObject::ForceUpdatePosition(void) =====
int __fastcall VisualObject::ForceUpdatePosition(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 8);
  if ( v1 )
    *(_BYTE *)(v1 + 520) = 1;
  return this;
}


// ===== 470be4 VisualObject::GetPosition(Point3D<float> &) =====
_DWORD *__fastcall VisualObject::GetPosition(_DWORD *result, _DWORD *a2)
{
  int v2; // r3

  v2 = result[2];
  if ( v2 )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 160))(result[2]);
    *a2 = *result;
    a2[1] = result[1];
    a2[2] = result[2];
  }
  return result;
}


// ===== 470c24 VisualObject::SetPosition(Point3D<float> const&) =====
int __fastcall VisualObject::SetPosition(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r12
  int v5; // r2
  void (__fastcall *v6)(int, _DWORD *); // r3
  _DWORD v7[3]; // [sp+4h] [bp-Ch] BYREF

  result = *(_DWORD *)(a1 + 8);
  if ( result )
  {
    v4 = a2[1];
    v5 = a2[2];
    v6 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)result + 164);
    v7[0] = *a2;
    v7[1] = v4;
    v7[2] = v5;
    v6(result, v7);
    return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 8) + 184))(*(_DWORD *)(a1 + 8), 0);
  }
  return result;
}


// ===== 470c84 VisualObject::GetRotation(Point3D<float> &) =====
int __fastcall VisualObject::GetRotation(int result, _DWORD *a2)
{
  _DWORD *v2; // r3

  if ( *(_DWORD *)(result + 8) )
  {
    v2 = *(_DWORD **)(result + 4);
    if ( v2 )
    {
      *a2 = v2[91];
      a2[1] = v2[92];
      a2[2] = v2[93];
    }
  }
  return result;
}


// ===== 470cb8 VisualObject::SyncPosition(void) =====
int __fastcall VisualObject::SyncPosition(int this)
{
  int v1; // r1

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return VisualObject::SetPosition(this, v1 + 352);
  return this;
}


// ===== 470ccc VisualObject::ApplyRotation(void) =====
void __fastcall VisualObject::ApplyRotation(VisualObject *this)
{
  ;
}


// ===== 470cd0 VisualObject::ApplyScaling(void) =====
void __fastcall VisualObject::ApplyScaling(VisualObject *this)
{
  ;
}


// ===== 470cd4 VisualObject::ApplyMaterial(void) =====
void __fastcall VisualObject::ApplyMaterial(VisualObject *this)
{
  ;
}


// ===== 470cd8 VisualObject::StartFadeOut(float) =====
void __fastcall VisualObject::StartFadeOut(VisualObject *this, float a2)
{
  ;
}


// ===== 470cdc VisualObject::StopFadeOut(void) =====
void __fastcall VisualObject::StopFadeOut(VisualObject *this)
{
  ;
}


// ===== 470ce0 VisualObject::UpdateFadeOut(void) =====
void __fastcall VisualObject::UpdateFadeOut(VisualObject *this)
{
  ;
}


// ===== 470ce4 VisualObject::StartFadeIn(float) =====
void __fastcall VisualObject::StartFadeIn(VisualObject *this, float a2)
{
  ;
}


// ===== 470ce8 VisualObject::StopFadeIn(void) =====
void __fastcall VisualObject::StopFadeIn(VisualObject *this)
{
  ;
}


// ===== 470cec VisualObject::UpdateFadeIn(void) =====
void __fastcall VisualObject::UpdateFadeIn(VisualObject *this)
{
  ;
}


// ===== 470cf0 VisualObject::Update(void) =====
void __fastcall VisualObject::Update(VisualObject *this)
{
  ;
}


// ===== 470cf4 VisualObject::Draw(void) =====
void __fastcall VisualObject::Draw(VisualObject *this)
{
  ;
}


// ===== 470cf8 std::vector<XrayModularSkinnedMeshSceneNode *,std::allocator<XrayModularSkinnedMeshSceneNode *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<XrayModularSkinnedMeshSceneNode *>::_M_compute_next_size(
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


// ===== 470d58 std::vector<ShadowSkinnedMeshSceneNode *,std::allocator<ShadowSkinnedMeshSceneNode *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<ShadowSkinnedMeshSceneNode *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 470db8 std::vector<ShadowModularSkinnedMeshSceneNode *,std::allocator<ShadowModularSkinnedMeshSceneNode *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_compute_next_size(
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


// ===== 470e18 VisualObject::SetModularSkin(int,int) =====
glitch::collada::CModularSkinnedMeshSceneNode *__fastcall VisualObject::SetModularSkin(
        VisualObject *this,
        int a2,
        int a3)
{
  glitch::collada::CModularSkinnedMeshSceneNode *result; // r0
  bool v4; // zf

  result = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  v4 = result == nullptr;
  if ( result )
    v4 = a2 == -1;
  if ( !v4 )
  {
    glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(result, a2, a3);
    return (glitch::collada::CModularSkinnedMeshSceneNode *)glitch::scene::CSceneManager::notifyVisibilityChanged(*(glitch::scene::CSceneManager **)(dword_99F73C + 28));
  }
  return result;
}


// ===== 470e5c VisualObject::GetModularCategoryId(char const*) =====
int __fastcall VisualObject::GetModularCategoryId(VisualObject *this, const char *a2)
{
  glitch::collada::CModularSkinnedMeshSceneNode *v2; // r0

  v2 = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  if ( v2 )
    return glitch::collada::CModularSkinnedMeshSceneNode::getCategoryId(v2, a2);
  else
    return -1;
}


// ===== 470e74 VisualObject::GetModularModuleName(int,int) =====
const char *__fastcall VisualObject::GetModularModuleName(VisualObject *this, int a2, int a3)
{
  glitch::collada::CModularSkinnedMeshSceneNode *v3; // r0

  v3 = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  if ( v3 )
    return (const char *)glitch::collada::CModularSkinnedMeshSceneNode::getModuleName(v3, a2, a3);
  else
    return "???";
}


// ===== 470e94 VisualObject::GetModularModuleCount(int) =====
glitch::collada::CModularSkinnedMeshSceneNode *__fastcall VisualObject::GetModularModuleCount(
        VisualObject *this,
        int a2)
{
  glitch::collada::CModularSkinnedMeshSceneNode *result; // r0

  result = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  if ( result )
    return (glitch::collada::CModularSkinnedMeshSceneNode *)glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(
                                                              result,
                                                              a2);
  return result;
}


// ===== 470ea4 VisualObject::GetModularCategoryCount(void) =====
glitch::collada::CModularSkinnedMeshSceneNode *__fastcall VisualObject::GetModularCategoryCount(VisualObject *this)
{
  glitch::collada::CModularSkinnedMeshSceneNode *result; // r0

  result = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  if ( result )
    return (glitch::collada::CModularSkinnedMeshSceneNode *)glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount(result);
  return result;
}


// ===== 470eb4 VisualObject::ApplyShadowProjectionMaterialEffect(glitch::core::vector3d<float>,float,float) =====
glitch::video::CMaterial **__fastcall VisualObject::ApplyShadowProjectionMaterialEffect(
        int a1,
        float *a2,
        float a3,
        float a4)
{
  int v4; // lr
  glitch::video::CMaterial **result; // r0
  int v8; // r3
  int v9; // r10
  int v10; // r4
  int v11; // r0
  float v12; // lr
  float v13; // r8
  int v14; // r3
  int v15; // r8
  int v16; // r3
  int v17; // r9
  int v18; // r4
  int i; // r10
  int v20; // r0
  float v21; // lr
  float v22; // r8
  int v24; // [sp+14h] [bp-38h]
  int v26; // [sp+20h] [bp-2Ch]
  float v27[3]; // [sp+28h] [bp-24h] BYREF
  float v28[3]; // [sp+34h] [bp-18h] BYREF
  glitch::video::CMaterial *v29; // [sp+40h] [bp-Ch] BYREF
  glitch::video::CMaterial *v30[2]; // [sp+44h] [bp-8h] BYREF

  result = (glitch::video::CMaterial **)(*a2 > -0.5);
  if ( *a2 > -0.5
    || (result = (glitch::video::CMaterial **)(a3 > -0.5)) != nullptr
    || (result = (glitch::video::CMaterial **)(a4 > -0.5)) != nullptr )
  {
    if ( *(_BYTE *)(a1 + 152) )
    {
      v8 = *(_DWORD *)(a1 + 128);
      v9 = (*(_DWORD *)(a1 + 132) - v8) >> 2;
      if ( v9 <= 0 )
        goto LABEL_14;
      v10 = 0;
      while ( 1 )
      {
        v11 = *(_DWORD *)(dword_99F73C + 28);
        v30[0] = *(glitch::video::CMaterial **)(*(_DWORD *)(v8 + 4 * v10) + 408);
        if ( v30[0] )
          v4 = *(_DWORD *)v30[0];
        ++v10;
        if ( v30[0] )
          *(_DWORD *)v30[0] = v4 + 1;
        v12 = a2[1];
        v13 = *a2;
        v28[2] = a2[2];
        v28[1] = v12;
        v28[0] = v13;
        SceneManager::SetShadowProjectionMaterialEffects(v11, v30, v28, a3, a4);
        result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v30);
        if ( v10 == v9 )
          break;
        v8 = *(_DWORD *)(a1 + 128);
      }
      if ( *(_BYTE *)(a1 + 152) )
      {
LABEL_14:
        v14 = *(_DWORD *)(a1 + 140);
        v26 = (*(_DWORD *)(a1 + 144) - v14) >> 2;
        if ( v26 > 0 )
        {
          v24 = 0;
          while ( 1 )
          {
            v15 = *(_DWORD *)(v14 + 4 * v24);
            v16 = *(_DWORD *)(v15 + 432);
            v17 = (*(_DWORD *)(v15 + 436) - v16) >> 2;
            if ( v17 > 0 )
            {
              v18 = 0;
              for ( i = v15; ; v16 = *(_DWORD *)(i + 432) )
              {
                v20 = *(_DWORD *)(dword_99F73C + 28);
                v29 = *(glitch::video::CMaterial **)(v16 + 4 * v18);
                if ( v29 )
                  ++*(_DWORD *)v29;
                v21 = a2[1];
                v22 = *a2;
                v27[2] = a2[2];
                v27[1] = v21;
                ++v18;
                v27[0] = v22;
                SceneManager::SetShadowProjectionMaterialEffects(v20, &v29, v27, a3, a4);
                result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v29);
                if ( v18 == v17 )
                  break;
              }
            }
            if ( ++v24 == v26 )
              break;
            v14 = *(_DWORD *)(a1 + 140);
          }
        }
      }
    }
  }
  return result;
}


// ===== 4710f0 VisualObject::ApplyShadowMaterial(void) =====
glitch::video::CMaterial **__fastcall VisualObject::ApplyShadowMaterial(glitch::video::CMaterial **this)
{
  glitch::video::CMaterial **v1; // r11
  glitch::video::CMaterial *v2; // r3
  int v3; // r9
  ShadowModularSkinnedMeshSceneNode *v4; // r6
  int v5; // r3
  int v6; // r8
  int v7; // r4
  int v8; // r0
  int v9; // [sp+4h] [bp-18h]
  glitch::video::CMaterial *v10[2]; // [sp+14h] [bp-8h] BYREF

  v1 = this;
  if ( *((_BYTE *)this + 152) )
  {
    v2 = *(this + 35);
    v9 = (*(this + 36) - v2) >> 2;
    if ( v9 > 0 )
    {
      v3 = 0;
      while ( 1 )
      {
        v4 = *((ShadowModularSkinnedMeshSceneNode **)v2 + v3);
        ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial(v4);
        this = (glitch::video::CMaterial **)(*(int (__fastcall **)(ShadowModularSkinnedMeshSceneNode *))(*(_DWORD *)v4 + 188))(v4);
        v5 = *((_DWORD *)v4 + 108);
        v6 = (*((_DWORD *)v4 + 109) - v5) >> 2;
        if ( v6 > 0 )
        {
          v7 = 0;
          while ( 1 )
          {
            v8 = *(_DWORD *)(dword_99F73C + 28);
            v10[0] = *(glitch::video::CMaterial **)(v5 + 4 * v7);
            if ( v10[0] )
              ++*(_DWORD *)v10[0];
            ++v7;
            SceneManager::ChangeCustomShadowProjectionTechnique(v8, v10, 1);
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v10);
            if ( v7 == v6 )
              break;
            v5 = *((_DWORD *)v4 + 108);
          }
        }
        if ( ++v3 == v9 )
          break;
        v2 = v1[35];
      }
    }
  }
  return this;
}


// ===== 471214 VisualObject::ApplyLightSet(void) =====
int __fastcall VisualObject::ApplyLightSet(VisualObject *this)
{
  return SceneManager::UpdateLightSet(*(_DWORD *)(dword_99F73C + 28));
}


// ===== 47124c VisualObject::ApplyPosition(void) =====
VisualObject *__fastcall VisualObject::ApplyPosition(VisualObject *this)
{
  VisualObject *v1; // r4
  float v2[4]; // [sp+4h] [bp-10h] BYREF

  v1 = this;
  if ( *((_DWORD *)this + 1) )
  {
    memset(v2, 0, 12);
    VisualObject::GetPosition(this, v2);
    return GameObject::SetPosition(*((GameObject **)v1 + 1), v2, 0);
  }
  return this;
}


// ===== 471298 VisualObject::ExternalNodeSync(RootSceneNode *) =====
int __fastcall VisualObject::ExternalNodeSync(int this, RootSceneNode *a2)
{
  _DWORD *v2; // r3
  int v3; // r5
  bool v4; // zf
  int v6; // r12
  int v7; // r2
  int v8; // r0
  int v9; // r1
  void (__fastcall *v10)(RootSceneNode *, _DWORD *); // r3
  void (__fastcall *v11)(RootSceneNode *, _BYTE *); // r7
  _DWORD *v12; // r3
  int v13; // r1
  int v14; // r12
  int v15; // r2
  int (__fastcall *v16)(RootSceneNode *, _DWORD *); // r3
  _BYTE v17[16]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v18[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v19[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = *(_DWORD **)(this + 4);
  v3 = this;
  v4 = a2 == nullptr;
  if ( a2 )
    v4 = v2 == nullptr;
  if ( !v4 )
  {
    v6 = *(_DWORD *)a2;
    v7 = v2[90];
    v8 = v2[88];
    v9 = v2[89];
    v10 = *(void (__fastcall **)(RootSceneNode *, _DWORD *))(v6 + 164);
    v19[2] = v7;
    v19[0] = v8;
    v19[1] = v9;
    v10(a2, v19);
    (*(void (__fastcall **)(RootSceneNode *, _DWORD))(*(_DWORD *)a2 + 184))(a2, 0);
    v11 = *(void (__fastcall **)(RootSceneNode *, _BYTE *))(*(_DWORD *)a2 + 156);
    glitch::core::quaternion::set(
      (glitch::core::quaternion *)v17,
      *(float *)(*(_DWORD *)(v3 + 4) + 368),
      COERCE_FLOAT(*(_DWORD *)(*(_DWORD *)(v3 + 4) + 364) + 0x80000000),
      COERCE_FLOAT(*(_DWORD *)(*(_DWORD *)(v3 + 4) + 372) + 0x80000000));
    v11(a2, v17);
    v12 = *(_DWORD **)(v3 + 4);
    v13 = v12[73];
    v14 = v12[72];
    v15 = v12[74];
    v16 = *(int (__fastcall **)(RootSceneNode *, _DWORD *))(*(_DWORD *)a2 + 148);
    v18[1] = v13;
    v18[0] = v14;
    v18[2] = v15;
    return v16(a2, v18);
  }
  return this;
}


// ===== 471368 VisualObject::SetVisible(bool) =====
int __fastcall VisualObject::SetVisible(int this, int a2)
{
  _DWORD *v2; // r3
  int v3; // r4

  v2 = *(_DWORD **)(this + 8);
  v3 = this;
  if ( v2 )
  {
    if ( a2 != (v2[71] & 1) )
    {
      SceneManager::ForceRegister(*(SceneManager **)(dword_99F73C + 28));
      v2 = *(_DWORD **)(v3 + 8);
    }
    return (*(int (__fastcall **)(_DWORD *, int))(*v2 + 72))(v2, a2);
  }
  return this;
}


// ===== 4713d0 VisualObject::SyncVisibility(void) =====
VisualObject *__fastcall VisualObject::SyncVisibility(VisualObject *this)
{
  _BYTE *v1; // r4
  VisualObject *v2; // r5
  bool v3; // r1

  v1 = *((_BYTE **)this + 1);
  v2 = this;
  if ( v1 )
  {
    v3 = v1[128]
      && (!(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 196))(*((_DWORD *)this + 1)) || !v1[750] || v1[752]);
    return (VisualObject *)VisualObject::SetVisible(v2, v3);
  }
  return this;
}


// ===== 47143c std::vector<XrayModularSkinnedMeshSceneNode *,std::allocator<XrayModularSkinnedMeshSceneNode *>>::_M_fill_insert_aux(XrayModularSkinnedMeshSceneNode **,uint,XrayModularSkinnedMeshSceneNode * const&,std::__false_type const&) =====
char *__fastcall std::vector<XrayModularSkinnedMeshSceneNode *>::_M_fill_insert_aux(
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
      return (char *)std::vector<XrayModularSkinnedMeshSceneNode *>::_M_fill_insert_aux(result);
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


// ===== 471584 std::vector<ShadowSkinnedMeshSceneNode *,std::allocator<ShadowSkinnedMeshSceneNode *>>::_M_fill_insert_aux(ShadowSkinnedMeshSceneNode **,uint,ShadowSkinnedMeshSceneNode * const&,std::__false_type const&) =====
char *__fastcall std::vector<ShadowSkinnedMeshSceneNode *>::_M_fill_insert_aux(
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
      return (char *)std::vector<ShadowSkinnedMeshSceneNode *>::_M_fill_insert_aux(result);
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


// ===== 4716cc std::vector<ShadowModularSkinnedMeshSceneNode *,std::allocator<ShadowModularSkinnedMeshSceneNode *>>::_M_fill_insert_aux(ShadowModularSkinnedMeshSceneNode **,uint,ShadowModularSkinnedMeshSceneNode * const&,std::__false_type const&) =====
char *__fastcall std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_fill_insert_aux(
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
      return (char *)std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_fill_insert_aux(result);
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


// ===== 471814 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_VisualObject.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_VisualObject.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A611C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6118 = 1056964608;
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


// ===== 4718f0 VisualObject::_FindModularSkinnedMeshNode(void) =====
void __fastcall VisualObject::_FindModularSkinnedMeshNode(VisualObject *this)
{
  unsigned int v2; // r6
  _DWORD *v3; // r0
  unsigned int v4; // r1
  int v5; // r3
  void *p; // [sp+Ch] [bp-Ch] BYREF
  int v7; // [sp+10h] [bp-8h]
  int v8; // [sp+14h] [bp-4h]

  if ( !*((_DWORD *)this + 2) )
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
        "m_node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\VisualObject.cpp",
        1023);
    }
  }
  v2 = 0;
  p = nullptr;
  v7 = 0;
  v8 = 0;
  (*(void (__fastcall **)(_DWORD, int, void **))(**(_DWORD **)(dword_99F73C + 28) + 32))(
    *(_DWORD *)(dword_99F73C + 28),
    1298489700,
    &p);
  v3 = p;
  v4 = (v7 - (int)p) >> 2;
  if ( v4 )
  {
    do
    {
      v5 = v3[v2++];
      *((_DWORD *)this + 11) = v5;
      *((_BYTE *)this + 127) = 1;
    }
    while ( v2 < v4 );
  }
  if ( v3 )
    GlitchFree(v3);
}


// ===== 471a0c VisualObject::ResetSkinning(void) =====
void __fastcall VisualObject::ResetSkinning(VisualObject *this)
{
  unsigned int v2; // r6
  _DWORD *v3; // r3
  glitch::collada::CModularSkinnedMeshSceneNode *v4; // r10
  glitch::collada::CModularSkinnedMeshSceneNode *ModularCategoryCount; // r8
  int i; // r5
  int CurrentModuleId; // r7
  int v8; // r1
  void *p; // [sp+Ch] [bp-10h] BYREF
  int v10; // [sp+10h] [bp-Ch]
  int v11; // [sp+14h] [bp-8h]

  if ( !*((_DWORD *)this + 2) )
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
        "m_node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\VisualObject.cpp",
        997);
    }
  }
  v2 = 0;
  p = nullptr;
  v10 = 0;
  v11 = 0;
  (*(void (__fastcall **)(_DWORD, int, void **))(**(_DWORD **)(dword_99F73C + 28) + 32))(
    *(_DWORD *)(dword_99F73C + 28),
    1298489700,
    &p);
  v3 = p;
  if ( (unsigned int)(v10 - (_DWORD)p) >> 2 )
  {
    do
    {
      v4 = (glitch::collada::CModularSkinnedMeshSceneNode *)v3[v2];
      ModularCategoryCount = VisualObject::GetModularCategoryCount(this);
      if ( (int)ModularCategoryCount > 0 )
      {
        for ( i = 0; (glitch::collada::CModularSkinnedMeshSceneNode *)i != ModularCategoryCount; ++i )
        {
          CurrentModuleId = glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleId(v4, i);
          VisualObject::SetModularSkin(this, i, CurrentModuleId == 0);
          v8 = i;
          VisualObject::SetModularSkin(this, v8, CurrentModuleId);
        }
      }
      v3 = p;
      ++v2;
    }
    while ( v2 < (v10 - (int)p) >> 2 );
  }
  if ( v3 )
    GlitchFree(v3);
}


// ===== 471b7c VisualObject::ApplyMaterialEffect(glitch::core::vector3d<float>,float,float) =====
void __fastcall VisualObject::ApplyMaterialEffect(int a1, float *a2, float a3, float a4)
{
  float v4; // r4
  _BOOL4 v9; // r9
  _BOOL4 v10; // r11
  _BOOL4 v11; // r2
  int v12; // r3
  int v13; // r4
  _DWORD *v14; // r3
  int v15; // r11
  float v16; // lr
  float v17; // r12
  int v18; // r1
  int v19; // r0
  float v20[3]; // [sp+14h] [bp-28h] BYREF
  float v21[3]; // [sp+20h] [bp-1Ch] BYREF
  void *p; // [sp+2Ch] [bp-10h] BYREF
  int v23; // [sp+30h] [bp-Ch]
  int v24; // [sp+34h] [bp-8h]

  v4 = *a2;
  v9 = (*a2 != *(float *)(a1 + 88) || a2[1] != *(float *)(a1 + 92) || a2[2] != *(float *)(a1 + 96)) && v4 > -0.5;
  v10 = *(float *)(a1 + 104) != a3 && a3 > -0.5;
  v11 = *(float *)(a1 + 100) != a4 && a4 > -0.5;
  *(float *)(a1 + 88) = v4;
  *(float *)(a1 + 92) = a2[1];
  v12 = *((_DWORD *)a2 + 2);
  *(float *)(a1 + 104) = a3;
  *(float *)(a1 + 100) = a4;
  *(_DWORD *)(a1 + 96) = v12;
  if ( v9 || v10 || v11 )
  {
    v13 = 0;
    p = nullptr;
    v23 = 0;
    v24 = 0;
    SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a1 + 8), (int)&p, 1835360612);
    SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a1 + 8), (int)&p, 1936023908);
    SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a1 + 8), (int)&p, 1298489700);
    v14 = p;
    if ( (v23 - (int)p) >> 2 )
    {
      v15 = (v23 - (int)p) >> 2;
      while ( 1 )
      {
        v16 = a2[1];
        v17 = a2[2];
        v18 = v14[v13];
        v19 = *(_DWORD *)(dword_99F73C + 28);
        ++v13;
        v21[0] = *a2;
        v21[1] = v16;
        v21[2] = v17;
        SceneManager::SetMaterialEffects(v19, v18, v21, a3, a4);
        if ( v13 == v15 )
          break;
        v14 = p;
      }
    }
    v20[0] = -1.0;
    v20[1] = -1.0;
    v20[2] = -1.0;
    VisualObject::ApplyShadowProjectionMaterialEffect(a1, v20, a4, -1.0);
    if ( p )
      GlitchFree(p);
  }
}


// ===== 471dc4 VisualObject::ApplyUnlitColorMaterial(void) =====
void __fastcall VisualObject::ApplyUnlitColorMaterial(VisualObject *this)
{
  int v1; // r4
  _DWORD *v2; // r0
  int v3; // r5
  glitch::scene::ISceneNode *v4; // r10
  int Parent; // r0
  const char *v6; // r0
  void *p; // [sp+1Ch] [bp-10h] BYREF
  int v9; // [sp+20h] [bp-Ch]
  int v10; // [sp+24h] [bp-8h]

  v1 = 0;
  p = nullptr;
  v9 = 0;
  v10 = 0;
  SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *((_DWORD *)this + 2), (int)&p, 1936023908);
  v2 = p;
  v3 = (v9 - (int)p) >> 2;
  if ( !v3 )
    goto LABEL_8;
  while ( 1 )
  {
    v4 = (glitch::scene::ISceneNode *)v2[v1];
    Parent = glitch::scene::ISceneNode::getParent(v4);
    v6 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)Parent + 36))(Parent);
    if ( LC_API_STRNCMP_0(v6, "SP_shadow", 9u) )
      break;
    if ( ++v1 == v3 )
      goto LABEL_7;
LABEL_4:
    v2 = p;
  }
  (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4 + 188))(v4);
  ++v1;
  SceneManager::ResetCustomTechniqueToDefault(*(_DWORD *)(dword_99F73C + 28), *((_DWORD *)this + 2), 0, 0, 0, 1u, 1);
  if ( v1 != v3 )
    goto LABEL_4;
LABEL_7:
  v2 = p;
LABEL_8:
  if ( v2 )
    GlitchFree(v2);
}


// ===== 471f1c VisualObject::SetMeshVisible(bool) =====
void __fastcall VisualObject::SetMeshVisible(VisualObject *this, int a2)
{
  int v3; // r0
  int *v5; // r7
  int *v6; // r8
  int v7; // t1
  int *v8; // r7
  int *v9; // r8
  int v10; // t1
  int *v11; // r6
  int *v12; // r7
  int v13; // t1
  int v14; // r3
  int v15; // r7
  int v16; // r6
  int v17; // r3
  int v18; // r3
  int v19; // r7
  int v20; // r6
  int v21; // r3
  int v22; // r3
  int v23; // r7
  int v24; // r6
  int v25; // r3
  void *p; // [sp+4h] [bp-Ch] BYREF
  int *v27; // [sp+8h] [bp-8h]
  int v28; // [sp+Ch] [bp-4h]

  v3 = *((_DWORD *)this + 2);
  if ( v3 )
  {
    v28 = 0;
    p = nullptr;
    v27 = nullptr;
    glitch::scene::ISceneNode::getSceneNodesFromType(v3, 1835360612, &p);
    v5 = (int *)p;
    v6 = v27;
    if ( p != v27 )
    {
      do
      {
        v7 = *v5++;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v7 + 72))(v7, a2);
      }
      while ( v5 != v6 );
    }
    glitch::scene::ISceneNode::getSceneNodesFromType(*((_DWORD *)this + 2), 1936023908, &p);
    v8 = (int *)p;
    v9 = v27;
    if ( p != v27 )
    {
      do
      {
        v10 = *v8++;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v10 + 72))(v10, a2);
      }
      while ( v8 != v9 );
    }
    glitch::scene::ISceneNode::getSceneNodesFromType(*((_DWORD *)this + 2), 1298489700, &p);
    v11 = (int *)p;
    v12 = v27;
    if ( p != v27 )
    {
      do
      {
        v13 = *v11++;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v13 + 72))(v13, a2);
      }
      while ( v11 != v12 );
    }
    if ( *((_BYTE *)this + 152) )
    {
      v14 = *((_DWORD *)this + 32);
      v15 = (*((_DWORD *)this + 33) - v14) >> 2;
      if ( v15 > 0 )
      {
        v16 = 0;
        while ( 1 )
        {
          v17 = *(_DWORD *)(v14 + 4 * v16++);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 72))(v17, a2);
          if ( v16 == v15 )
            break;
          v14 = *((_DWORD *)this + 32);
        }
      }
      v18 = *((_DWORD *)this + 35);
      v19 = (*((_DWORD *)this + 36) - v18) >> 2;
      if ( v19 > 0 )
      {
        v20 = 0;
        while ( 1 )
        {
          v21 = *(_DWORD *)(v18 + 4 * v20++);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v21 + 72))(v21, a2);
          if ( v20 == v19 )
            break;
          v18 = *((_DWORD *)this + 35);
        }
      }
    }
    if ( *((_BYTE *)this + 168) )
    {
      v22 = *((_DWORD *)this + 39);
      v23 = (*((_DWORD *)this + 40) - v22) >> 2;
      if ( v23 > 0 )
      {
        v24 = 0;
        while ( 1 )
        {
          v25 = *(_DWORD *)(v22 + 4 * v24++);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v25 + 72))(v25, a2);
          if ( v24 == v23 )
            break;
          v22 = *((_DWORD *)this + 39);
        }
      }
    }
    if ( p )
      GlitchFree(p);
  }
}


// ===== 47211c VisualObject::CalcMeshBox(void) =====
void __fastcall VisualObject::CalcMeshBox(VisualObject *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  int v4; // r2
  int v5; // r0
  int v6; // r2
  int v7; // r3
  glitch::scene::ISceneNode *v8; // r0
  int Parent; // r0
  float *v10; // r0
  float v11; // r6
  float v12; // r5
  int v13; // r0
  float *v14; // r0
  float v15; // r6
  float v16; // r5
  const void *v17; // r0
  float v18; // r7
  float v19; // r11
  float v20; // r6
  float v21; // r5
  float v22; // r9
  float v23; // r8
  float v24; // r5
  float v25; // r10
  float v26; // r7
  float v27; // r8
  float v28; // r0
  _DWORD **v29; // r0
  int v30; // r5
  float *v31; // r0
  float v32; // r10
  float v33; // r11
  float v34; // r9
  float *v35; // r0
  float v36; // r6
  float v37; // r8
  float v38; // r7
  int v39; // r0
  float *v40; // r0
  int v41; // r0
  float *v42; // r0
  float v43; // r3
  float v44; // r11
  float v45; // r9
  float v46; // r10
  float v47; // r8
  float v48; // r7
  int v49; // [sp+Ch] [bp-58h]
  void *v50[17]; // [sp+10h] [bp-54h] BYREF
  void *p; // [sp+54h] [bp-10h] BYREF
  int v52; // [sp+58h] [bp-Ch]
  int v53; // [sp+5Ch] [bp-8h]

  v1 = *((_DWORD *)this + 3);
  if ( v1 )
  {
    v3 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 48))(*((_DWORD *)this + 3));
    v4 = *((_DWORD *)this + 3);
    *((_DWORD *)this + 4) = *v3;
    *((_DWORD *)this + 5) = v3[1];
    *((_DWORD *)this + 6) = v3[2];
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 48))(v4);
    v6 = *(_DWORD *)(v5 + 12);
    v7 = v5;
    v8 = *((glitch::scene::ISceneNode **)this + 3);
    *((_DWORD *)this + 7) = v6;
    *((_DWORD *)this + 8) = *(_DWORD *)(v7 + 16);
    *((_DWORD *)this + 9) = *(_DWORD *)(v7 + 20);
    Parent = glitch::scene::ISceneNode::getParent(v8);
    v10 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)Parent + 144))(Parent);
    v11 = v10[1];
    v12 = v10[2];
    *((float *)this + 4) = *((float *)this + 4) * *v10;
    *((float *)this + 5) = *((float *)this + 5) * v11;
    *((float *)this + 6) = *((float *)this + 6) * v12;
    v13 = glitch::scene::ISceneNode::getParent(*((glitch::scene::ISceneNode **)this + 3));
    v14 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v13 + 144))(v13);
    v15 = v14[1];
    v16 = v14[2];
    *((float *)this + 7) = *((float *)this + 7) * *v14;
    *((float *)this + 8) = *((float *)this + 8) * v15;
    *((float *)this + 9) = *((float *)this + 9) * v16;
LABEL_3:
    v17 = (const void *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 64))(*((_DWORD *)this + 2));
    LOBYTE(v50[16]) = 0;
    memcpy(v50, v17, 0x41u);
    memset(&v50[12], 0, 12);
    LOBYTE(v50[16]) = 0;
    Point3D<float>::transform((char *)this + 16, v50);
    Point3D<float>::transform((char *)this + 28, v50);
    v18 = *((float *)this + 7);
    if ( v18 >= *((float *)this + 4) )
      v19 = *((float *)this + 4);
    else
      v19 = *((float *)this + 7);
    v20 = *((float *)this + 8);
    if ( v18 <= *((float *)this + 4) )
      v18 = *((float *)this + 4);
    v21 = *((float *)this + 5);
    *((float *)this + 7) = v18;
    *((float *)this + 4) = v19;
    if ( v20 >= v21 )
      v22 = v21;
    else
      v22 = v20;
    v23 = *((float *)this + 6);
    if ( v20 <= v21 )
      v20 = v21;
    v24 = *((float *)this + 9);
    *((float *)this + 8) = v20;
    *((float *)this + 5) = v22;
    if ( v24 >= v23 )
      v25 = v23;
    else
      v25 = v24;
    if ( v24 <= v23 )
      v24 = v23;
    *((float *)this + 9) = v24;
    *((float *)this + 6) = v25;
    v26 = (float)(v18 - v19) * 0.5;
    v27 = (float)(v20 - v22) * 0.5;
    v28 = (float)(v24 - v25) * 0.5;
    *((float *)this + 4) = *(float *)&Vec3f_Origin - v26;
    *((float *)this + 7) = v26 + *(float *)&Vec3f_Origin;
    *((float *)this + 5) = *(float *)&dword_99F858 - v27;
    *((float *)this + 8) = v27 + *(float *)&dword_99F858;
    *((float *)this + 6) = *(float *)&dword_99F85C - v28;
    *((float *)this + 9) = v28 + *(float *)&dword_99F85C;
    return;
  }
  *((_DWORD *)this + 6) = 2139095039;
  *((_DWORD *)this + 4) = 2139095039;
  *((_DWORD *)this + 5) = 2139095039;
  *((_DWORD *)this + 9) = -8388609;
  *((_DWORD *)this + 7) = -8388609;
  *((_DWORD *)this + 8) = -8388609;
  v53 = 0;
  p = nullptr;
  v52 = 0;
  (*(void (__fastcall **)(_DWORD, int, void **, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 32))(
    *(_DWORD *)(dword_99F73C + 28),
    1936023908,
    &p,
    *((_DWORD *)this + 2));
  v29 = (_DWORD **)p;
  v49 = (v52 - (int)p) >> 2;
  if ( v49
    || ((*(void (__fastcall **)(_DWORD, int, void **, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 32))(
          *(_DWORD *)(dword_99F73C + 28),
          1835360612,
          &p,
          *((_DWORD *)this + 2)),
        v29 = (_DWORD **)p,
        (v49 = (v52 - (int)p) >> 2) != 0) )
  {
    if ( v49 )
    {
      v30 = 0;
      while ( 1 )
      {
        v31 = (float *)(*(int (__fastcall **)(_DWORD *))(*v29[v30] + 48))(v29[v30]);
        v32 = v31[2];
        v33 = *v31;
        v34 = v31[1];
        v35 = (float *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)p + v30) + 48))(*((_DWORD *)p + v30));
        v36 = v35[5];
        v37 = v35[3];
        v38 = v35[4];
        if ( glitch::scene::ISceneNode::getParent(*((glitch::scene::ISceneNode **)p + v30)) )
        {
          v39 = glitch::scene::ISceneNode::getParent(*((glitch::scene::ISceneNode **)p + v30));
          v40 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v39 + 144))(v39);
          v33 = v33 * *v40;
          v34 = v34 * v40[1];
          v32 = v32 * v40[2];
          v41 = glitch::scene::ISceneNode::getParent(*((glitch::scene::ISceneNode **)p + v30));
          v42 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v41 + 144))(v41);
          v37 = v37 * *v42;
          v38 = v38 * v42[1];
          v36 = v36 * v42[2];
        }
        ++v30;
        v43 = *((float *)this + 4);
        if ( v43 > v33 )
          v43 = v33;
        v44 = *((float *)this + 5);
        *((float *)this + 4) = v43;
        if ( v44 > v34 )
          v44 = v34;
        v45 = *((float *)this + 6);
        *((float *)this + 5) = v44;
        if ( v45 > v32 )
          v45 = v32;
        v46 = *((float *)this + 7);
        *((float *)this + 6) = v45;
        if ( v46 < v37 )
          v46 = v37;
        v47 = *((float *)this + 8);
        *((float *)this + 7) = v46;
        if ( v47 < v38 )
          v47 = v38;
        v48 = *((float *)this + 9);
        *((float *)this + 8) = v47;
        if ( v48 < v36 )
          v48 = v36;
        *((float *)this + 9) = v48;
        if ( v30 == v49 )
          break;
        v29 = (_DWORD **)p;
      }
      v29 = (_DWORD **)p;
    }
    if ( v29 )
      GlitchFree(v29);
    goto LABEL_3;
  }
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  if ( v29 )
    GlitchFree(v29);
}


// ===== 472708 VisualObject::SetScaling(float) =====
int __fastcall VisualObject::SetScaling(int this, float a2)
{
  int v2; // r3
  VisualObject *v3; // r4
  float *v4; // r5
  float v5; // [sp+4h] [bp-10h] BYREF
  float v6; // [sp+8h] [bp-Ch]
  float v7; // [sp+Ch] [bp-8h]

  v2 = *(_DWORD *)(this + 8);
  v3 = (VisualObject *)this;
  if ( v2 )
  {
    v7 = a2;
    v5 = a2;
    v6 = a2;
    v4 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v2 + 144))(v2);
    if ( *v4 != v5 || v4[1] != v6 || (this = v4[2] == v7, v4[2] != v7) )
    {
      (*(void (__fastcall **)(_DWORD *, float *))(**((_DWORD **)v3 + 2) + 148))(*((_DWORD **)v3 + 2), &v5);
      VisualObject::CalcMeshBox(v3);
      return VisualObject::ApplyMeshBox((int)v3);
    }
  }
  return this;
}


// ===== 4727ac VisualObject::SetScaling(Point3D<float> const&) =====
int __fastcall VisualObject::SetScaling(int result, float *a2)
{
  int v2; // r3
  VisualObject *v3; // r5
  float *v5; // r0
  float v6; // r7
  float *v7; // r6
  _BOOL4 v8; // r0
  float v9; // r8
  float v10; // r4
  int v11; // r0
  void (__fastcall *v12)(int, _DWORD *); // r3
  _DWORD v13[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(result + 8);
  v3 = (VisualObject *)result;
  if ( v2 )
  {
    v5 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 144))(*(_DWORD *)(result + 8));
    v6 = *a2;
    v7 = v5;
    v8 = *a2 == *v5;
    v9 = a2[2];
    v10 = a2[1];
    if ( !v8 || v10 != v7[1] || (result = v9 == v7[2], v9 != v7[2]) )
    {
      v11 = *((_DWORD *)v3 + 2);
      v12 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 148);
      *(float *)v13 = v6;
      *(float *)&v13[1] = v10;
      *(float *)&v13[2] = v9;
      v12(v11, v13);
      VisualObject::CalcMeshBox(v3);
      return VisualObject::ApplyMeshBox((int)v3);
    }
  }
  return result;
}


// ===== 472860 VisualObject::SyncScaling(void) =====
int __fastcall VisualObject::SyncScaling(int this)
{
  int v1; // r1

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return VisualObject::SetScaling(this, v1 + 288);
  return this;
}


// ===== 472874 VisualObject::SetRotation(Point3D<float> const&) =====
int __fastcall VisualObject::SetRotation(int result, int a2)
{
  VisualObject *v2; // r4
  float *v3; // r6
  float v4[3]; // [sp+0h] [bp-10h] BYREF
  float v5; // [sp+Ch] [bp-4h]

  v2 = (VisualObject *)result;
  if ( *(_DWORD *)(result + 8) )
  {
    glitch::core::quaternion::set(
      (glitch::core::quaternion *)v4,
      *(float *)(a2 + 4),
      COERCE_FLOAT(*(_DWORD *)a2 + 0x80000000),
      COERCE_FLOAT(*(_DWORD *)(a2 + 8) + 0x80000000));
    v3 = (float *)(*(int (__fastcall **)(_DWORD *))(**((_DWORD **)v2 + 2) + 152))(*((_DWORD **)v2 + 2));
    if ( *v3 != v4[0] || v3[1] != v4[1] || v3[2] != v4[2] || (result = v3[3] == v5, v3[3] != v5) )
    {
      (*(void (__fastcall **)(_DWORD *, float *))(**((_DWORD **)v2 + 2) + 156))(*((_DWORD **)v2 + 2), v4);
      VisualObject::CalcMeshBox(v2);
      return VisualObject::ApplyMeshBox((int)v2);
    }
  }
  return result;
}


// ===== 472948 VisualObject::SyncRotation(void) =====
int __fastcall VisualObject::SyncRotation(int this)
{
  int v1; // r1

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return VisualObject::SetRotation(this, v1 + 364);
  return this;
}


// ===== 47295c VisualObject::SetParent(GameObject *) =====
int __fastcall VisualObject::SetParent(int this, GameObject *a2)
{
  int v2; // r5
  int v3; // r6
  void (__fastcall *v4)(int, int); // r4
  int v5; // r0

  *(_DWORD *)(this + 4) = a2;
  v2 = this;
  if ( a2 )
  {
    if ( !*((_BYTE *)a2 + 132) )
    {
LABEL_3:
      VisualObject::Sync((VisualObject *)v2);
      return RecursiveSetBoolOnNode(
               *(glitch::scene::ISceneNode **)(v2 + 8),
               1,
               (void (*)(glitch::scene::ISceneNode *, bool))setOnAnimateEnabled);
    }
    this = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 128))(a2);
    if ( this )
    {
      if ( *(_DWORD *)(v2 + 4) )
        goto LABEL_3;
    }
    else
    {
      VisualObject::Sync((VisualObject *)v2);
      v3 = *(_DWORD *)(v2 + 8);
      v4 = *(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 164);
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 160))(v3);
      v4(v3, v5);
      return OptimizeStatic(*(glitch::scene::ISceneNode **)(v2 + 8));
    }
  }
  return this;
}


// ===== 472a0c VisualObject::VisualObject(GameObject *,std::string const&,std::string const&) =====
void __fastcall VisualObject::VisualObject(
        VisualObject *this,
        GameObject *a2,
        const std::string *a3,
        const std::string *a4)
{
  AssetManager *AssetManager; // r0
  char *M_data; // r2
  int SceneNode; // r0
  int v11; // r2
  int v12; // r0
  AnimController *v13; // r5

  *(_DWORD *)this = off_969048;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 29) = -1082130432;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 22) = -1082130432;
  *((_DWORD *)this + 23) = -1082130432;
  *((_DWORD *)this + 24) = -1082130432;
  *((_DWORD *)this + 25) = -1082130432;
  *((_DWORD *)this + 26) = -1082130432;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 108) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 126) = 0;
  *((_BYTE *)this + 127) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 169) = 0;
  AssetManager = (AssetManager *)AssetManager::GetAssetManager(this);
  M_data = a4->_M_start_of_storage._M_data;
  if ( a4->_M_finish == M_data )
    M_data = nullptr;
  SceneNode = AssetManager::loadSceneNode(AssetManager, a3->_M_start_of_storage._M_data, M_data, 0, 255);
  *((_DWORD *)this + 2) = SceneNode;
  if ( SceneNode )
  {
    VisualObject::SetParent(this, a2);
    RootSceneNode::RefreshBoundingBox(*((RootSceneNode **)this + 2));
    VisualObject::_FindModularSkinnedMeshNode(this);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      *((_DWORD *)this + 2));
    SceneManager::ForceRegister(*(SceneManager **)(dword_99F73C + 28));
    v11 = SceneManager::SearchByName(
            *(SceneManager **)(dword_99F73C + 28),
            *((glitch::scene::ISceneNode **)this + 2),
            "_colbox_",
            1);
    if ( v11 )
    {
      *((_BYTE *)this + 40) = 1;
      v12 = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(dword_99F73C + 28) + 28))(
              *(_DWORD *)(dword_99F73C + 28),
              1835360612,
              v11);
      *((_DWORD *)this + 3) = v12;
      if ( v12 )
      {
        ++*(_DWORD *)(v12 + *(_DWORD *)(*(_DWORD *)v12 - 12) + 4);
        v12 = *((_DWORD *)this + 3);
      }
      *(_BYTE *)(v12 + 312) = 0;
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 72))(*((_DWORD *)this + 3));
    }
    VisualObject::CalcMeshBox(this);
    VisualObject::ApplyMeshBox((int)this);
    v13 = (AnimController *)operator new(8u, 0);
    AnimController::AnimController(v13, *((RootSceneNode **)this + 2), 0);
    VisualObject::SetAnimController((int)this, (int)v13);
  }
}


// ===== 472c5c VisualObject::VisualObject(GameObject *,std::string const&,std::string const&) =====
void __fastcall VisualObject::VisualObject(
        VisualObject *this,
        GameObject *a2,
        const std::string *a3,
        const std::string *a4)
{
  AssetManager *AssetManager; // r0
  char *M_data; // r2
  int SceneNode; // r0
  glitch::scene::ISceneNode *v11; // r2
  int v12; // r0
  AnimController *v13; // r5

  *(_DWORD *)this = off_969048;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 29) = -1082130432;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 22) = -1082130432;
  *((_DWORD *)this + 23) = -1082130432;
  *((_DWORD *)this + 24) = -1082130432;
  *((_DWORD *)this + 25) = -1082130432;
  *((_DWORD *)this + 26) = -1082130432;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 108) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 126) = 0;
  *((_BYTE *)this + 127) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 169) = 0;
  AssetManager = (AssetManager *)AssetManager::GetAssetManager(this);
  M_data = a4->_M_start_of_storage._M_data;
  if ( a4->_M_finish == M_data )
    M_data = nullptr;
  SceneNode = AssetManager::loadSceneNode(AssetManager, a3->_M_start_of_storage._M_data, M_data, 0, 255);
  *((_DWORD *)this + 2) = SceneNode;
  if ( SceneNode )
  {
    VisualObject::SetParent((int)this, a2);
    RootSceneNode::RefreshBoundingBox(*((RootSceneNode **)this + 2));
    VisualObject::_FindModularSkinnedMeshNode(this);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      *((_DWORD *)this + 2));
    SceneManager::ForceRegister(*(_DWORD *)(dword_99F73C + 28));
    v11 = SceneManager::SearchByName(
            *(SceneManager **)(dword_99F73C + 28),
            *((glitch::scene::ISceneNode **)this + 2),
            "_colbox_",
            1);
    if ( v11 )
    {
      *((_BYTE *)this + 40) = 1;
      v12 = (*(int (__fastcall **)(_DWORD, int, glitch::scene::ISceneNode *))(**(_DWORD **)(dword_99F73C + 28) + 28))(
              *(_DWORD *)(dword_99F73C + 28),
              1835360612,
              v11);
      *((_DWORD *)this + 3) = v12;
      if ( v12 )
      {
        ++*(_DWORD *)(v12 + *(_DWORD *)(*(_DWORD *)v12 - 12) + 4);
        v12 = *((_DWORD *)this + 3);
      }
      *(_BYTE *)(v12 + 312) = 0;
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 72))(*((_DWORD *)this + 3));
    }
    VisualObject::CalcMeshBox(this);
    VisualObject::ApplyMeshBox((int)this);
    v13 = (AnimController *)operator new(8u, 0);
    AnimController::AnimController(v13, *((RootSceneNode **)this + 2), 0);
    VisualObject::SetAnimController((int)this, (int)v13);
  }
}


// ===== 472eac std::allocator<XrayModularSkinnedMeshSceneNode *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<XrayModularSkinnedMeshSceneNode *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 472f1c std::allocator<ShadowSkinnedMeshSceneNode *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ShadowSkinnedMeshSceneNode *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 472f8c std::allocator<ShadowModularSkinnedMeshSceneNode *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ShadowModularSkinnedMeshSceneNode *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 472ffc std::vector<ShadowSkinnedMeshSceneNode *,std::allocator<ShadowSkinnedMeshSceneNode *>>::_M_fill_insert(ShadowSkinnedMeshSceneNode **,uint,ShadowSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<ShadowSkinnedMeshSceneNode *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r0
  char *v15; // r6
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<ShadowSkinnedMeshSceneNode *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<ShadowSkinnedMeshSceneNode *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<ShadowSkinnedMeshSceneNode *>::_M_allocate(a1 + 8, size, &size);
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
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 == a2 )
      v15 = v14;
    else
      v15 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v16 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v17 = (*(_DWORD *)(a1 + 8) - (_DWORD)v16) & 0xFFFFFFFC;
      if ( v17 > 0x80 )
      {
        CustomFree(v16);
        v19 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v15;
        *(_DWORD *)(a1 + 8) = &v9[4 * v19];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v17);
    }
    v18 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 8) = &v9[4 * v18];
  }
}


// ===== 473110 std::vector<ShadowSkinnedMeshSceneNode *,std::allocator<ShadowSkinnedMeshSceneNode *>>::resize(uint,ShadowSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<ShadowSkinnedMeshSceneNode *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<ShadowSkinnedMeshSceneNode *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 473154 std::vector<ShadowModularSkinnedMeshSceneNode *,std::allocator<ShadowModularSkinnedMeshSceneNode *>>::_M_fill_insert(ShadowModularSkinnedMeshSceneNode **,uint,ShadowModularSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r0
  char *v15; // r6
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<ShadowModularSkinnedMeshSceneNode *>::_M_allocate(a1 + 8, size, &size);
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
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 == a2 )
      v15 = v14;
    else
      v15 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v16 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v17 = (*(_DWORD *)(a1 + 8) - (_DWORD)v16) & 0xFFFFFFFC;
      if ( v17 > 0x80 )
      {
        CustomFree(v16);
        v19 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v15;
        *(_DWORD *)(a1 + 8) = &v9[4 * v19];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v17);
    }
    v18 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 8) = &v9[4 * v18];
  }
}


// ===== 473268 std::vector<ShadowModularSkinnedMeshSceneNode *,std::allocator<ShadowModularSkinnedMeshSceneNode *>>::resize(uint,ShadowModularSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<ShadowModularSkinnedMeshSceneNode *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<ShadowModularSkinnedMeshSceneNode *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 4732ac VisualObject::CreateShadowMesh(void) =====
void __fastcall VisualObject::CreateShadowMesh(VisualObject *this)
{
  int v2; // r0
  int v3; // r5
  char *v4; // r10
  int v5; // r11
  glitch::IReferenceCounted *v6; // r4
  int v7; // r7
  int v8; // r5
  char *v9; // r10
  int v10; // r11
  glitch::IReferenceCounted *v11; // r4
  ShadowModularSkinnedMeshSceneNode *v12; // r7
  char *v13; // [sp+0h] [bp-3Ch]
  char *v14; // [sp+0h] [bp-3Ch]
  void *p; // [sp+14h] [bp-28h] BYREF
  char *v16; // [sp+18h] [bp-24h]
  int v17; // [sp+1Ch] [bp-20h]
  glitch::IReferenceCounted *v18; // [sp+20h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v19; // [sp+24h] [bp-18h] BYREF
  int v20; // [sp+28h] [bp-14h] BYREF
  glitch::IReferenceCounted *v21; // [sp+2Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v22; // [sp+30h] [bp-Ch] BYREF
  int v23; // [sp+34h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 2);
  if ( v2 )
  {
    *((_BYTE *)this + 152) = 1;
    v3 = 0;
    p = nullptr;
    v16 = nullptr;
    v17 = 0;
    glitch::scene::ISceneNode::getSceneNodesFromType(v2, 1936023908, &p);
    v23 = 0;
    std::vector<ShadowSkinnedMeshSceneNode *>::resize((int)this + 128, (v16 - (_BYTE *)p) >> 2, (char *)&v23);
    v4 = (char *)p;
    v13 = v16;
    if ( p != v16 )
    {
      do
      {
        v5 = *(_DWORD *)&v4[v3];
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v5 + 248))(&v22, v5);
        v6 = v22;
        if ( v22 )
        {
          ++*((_DWORD *)v22 + 1);
          if ( v22 )
            glitch::IReferenceCounted::drop(v22);
        }
        v21 = v6;
        if ( v6 )
          ++*((_DWORD *)v6 + 1);
        v7 = operator new(428, 0);
        ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(v7, (int)&v21, v5);
        if ( v21 )
          glitch::IReferenceCounted::drop(v21);
        *(_DWORD *)(*((_DWORD *)this + 32) + v3) = v7;
        v3 += 4;
        (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
          *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
          v7);
        if ( v6 )
          glitch::IReferenceCounted::drop(v6);
      }
      while ( v13 != &v4[v3] );
      if ( p != v16 )
        v16 = (char *)p;
    }
    glitch::scene::ISceneNode::getSceneNodesFromType(*((_DWORD *)this + 2), 1298489700, &p);
    v8 = 0;
    v20 = 0;
    std::vector<ShadowModularSkinnedMeshSceneNode *>::resize((int)this + 140, (v16 - (_BYTE *)p) >> 2, (char *)&v20);
    v9 = (char *)p;
    v14 = v16;
    if ( p != v16 )
    {
      do
      {
        v10 = *(_DWORD *)&v9[v8];
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v10 + 248))(&v19, v10);
        v11 = v19;
        if ( v19 )
        {
          ++*((_DWORD *)v19 + 1);
          if ( v19 )
            glitch::IReferenceCounted::drop(v19);
        }
        v18 = v11;
        if ( v11 )
          ++*((_DWORD *)v11 + 1);
        v12 = (ShadowModularSkinnedMeshSceneNode *)operator new(472, 0);
        ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(v12, (int)&v18, v10, *((_DWORD *)this + 2));
        if ( v18 )
          glitch::IReferenceCounted::drop(v18);
        *(_DWORD *)(*((_DWORD *)this + 35) + v8) = v12;
        v8 += 4;
        (*(void (__fastcall **)(_DWORD, ShadowModularSkinnedMeshSceneNode *))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28)
                                                                                          + 4)
                                                                            + 92))(
          *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
          v12);
        if ( v11 )
          glitch::IReferenceCounted::drop(v11);
      }
      while ( v14 != &v9[v8] );
    }
    SceneManager::ForceRegister(*(_DWORD *)(dword_99F73C + 28));
    if ( p )
      GlitchFree(p);
  }
}


// ===== 47358c std::vector<XrayModularSkinnedMeshSceneNode *,std::allocator<XrayModularSkinnedMeshSceneNode *>>::_M_fill_insert(XrayModularSkinnedMeshSceneNode **,uint,XrayModularSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<XrayModularSkinnedMeshSceneNode *>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r0
  char *v15; // r6
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<XrayModularSkinnedMeshSceneNode *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<XrayModularSkinnedMeshSceneNode *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<XrayModularSkinnedMeshSceneNode *>::_M_allocate(a1 + 8, size, &size);
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
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 == a2 )
      v15 = v14;
    else
      v15 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v16 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v17 = (*(_DWORD *)(a1 + 8) - (_DWORD)v16) & 0xFFFFFFFC;
      if ( v17 > 0x80 )
      {
        CustomFree(v16);
        v19 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v15;
        *(_DWORD *)(a1 + 8) = &v9[4 * v19];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v17);
    }
    v18 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 8) = &v9[4 * v18];
  }
}


// ===== 4736a0 std::vector<XrayModularSkinnedMeshSceneNode *,std::allocator<XrayModularSkinnedMeshSceneNode *>>::resize(uint,XrayModularSkinnedMeshSceneNode * const&) =====
void __fastcall std::vector<XrayModularSkinnedMeshSceneNode *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<XrayModularSkinnedMeshSceneNode *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 4736e4 VisualObject::CreateXrayMesh(void) =====
void __fastcall VisualObject::CreateXrayMesh(VisualObject *this)
{
  int v2; // r0
  int v3; // r5
  char *v4; // r7
  char *v5; // r9
  int v6; // r11
  glitch::IReferenceCounted *v7; // r4
  XrayModularSkinnedMeshSceneNode *v8; // r6
  void *p; // [sp+10h] [bp-1Ch] BYREF
  char *v10; // [sp+14h] [bp-18h]
  int v11; // [sp+18h] [bp-14h]
  glitch::IReferenceCounted *v12; // [sp+1Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v13; // [sp+20h] [bp-Ch] BYREF
  int v14; // [sp+24h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 2);
  if ( v2 )
  {
    *((_BYTE *)this + 168) = 1;
    v3 = 0;
    p = nullptr;
    v10 = nullptr;
    v11 = 0;
    glitch::scene::ISceneNode::getSceneNodesFromType(v2, 1298489700, &p);
    v14 = 0;
    std::vector<XrayModularSkinnedMeshSceneNode *>::resize((int)this + 156, (v10 - (_BYTE *)p) >> 2, (char *)&v14);
    v4 = (char *)p;
    v5 = v10;
    if ( p != v10 )
    {
      do
      {
        v6 = *(_DWORD *)&v4[v3];
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v6 + 248))(&v13, v6);
        v7 = v13;
        if ( v13 )
        {
          ++*((_DWORD *)v13 + 1);
          if ( v13 )
            glitch::IReferenceCounted::drop(v13);
        }
        v12 = v7;
        if ( v7 )
          ++*((_DWORD *)v7 + 1);
        v8 = (XrayModularSkinnedMeshSceneNode *)operator new(468, 0);
        XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(v8, (int)&v12, v6);
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        *(_DWORD *)(*((_DWORD *)this + 39) + v3) = v8;
        v3 += 4;
        (*(void (__fastcall **)(_DWORD, XrayModularSkinnedMeshSceneNode *))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28)
                                                                                        + 4)
                                                                          + 92))(
          *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
          v8);
        if ( v7 )
          glitch::IReferenceCounted::drop(v7);
      }
      while ( v5 != &v4[v3] );
    }
    SceneManager::ForceRegister(*(_DWORD *)(dword_99F73C + 28));
    if ( p )
      GlitchFree(p);
  }
}


// ===== 473884 VisualObject::~VisualObject() =====
void __fastcall VisualObject::~VisualObject(VisualObject *this)
{
  _DWORD *v2; // r3
  int v3; // r3
  int v4; // r3
  int v5; // r3
  void *v6; // r0
  size_t v7; // r1
  void *v8; // r0
  size_t v9; // r1
  void *v10; // r0
  size_t v11; // r1
  void *v12; // r0
  size_t v13; // r1

  *(_DWORD *)this = off_969048;
  VisualObject::SetAnimController((int)this, 0);
  v2 = *((_DWORD **)this + 3);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *((_DWORD *)this + 3) = 0;
  }
  v3 = *((_DWORD *)this + 2);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 116))(*((_DWORD *)this + 2));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 104))(*((_DWORD *)this + 2));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 2)
                                                                + *(_DWORD *)(**((_DWORD **)this + 2) - 12)));
    *((_DWORD *)this + 2) = 0;
  }
  v4 = *((_DWORD *)this + 12);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 116))(*((_DWORD *)this + 12));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 12) + 104))(*((_DWORD *)this + 12));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 12)
                                                                + *(_DWORD *)(**((_DWORD **)this + 12) - 12)));
    *((_DWORD *)this + 12) = 0;
  }
  v5 = *((_DWORD *)this + 13);
  if ( v5 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 116))(*((_DWORD *)this + 13));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 104))(*((_DWORD *)this + 13));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 13)
                                                                + *(_DWORD *)(**((_DWORD **)this + 13) - 12)));
    *((_DWORD *)this + 13) = 0;
  }
  SceneManager::ForceRegister(*(_DWORD *)(dword_99F73C + 28));
  v6 = *((void **)this + 39);
  if ( v6 )
  {
    v7 = (*((_DWORD *)this + 41) - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  v8 = *((void **)this + 35);
  if ( v8 )
  {
    v9 = (*((_DWORD *)this + 37) - (_DWORD)v8) & 0xFFFFFFFC;
    if ( v9 > 0x80 )
      CustomFree(v8);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
  }
  v10 = *((void **)this + 32);
  if ( v10 )
  {
    v11 = (*((_DWORD *)this + 34) - (_DWORD)v10) & 0xFFFFFFFC;
    if ( v11 > 0x80 )
      CustomFree(v10);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, v11);
  }
  v12 = *((void **)this + 17);
  if ( v12 )
  {
    v13 = (*((_DWORD *)this + 21) - (_DWORD)v12) & 0xFFFFFFFC;
    if ( v13 > 0x80 )
      CustomFree(v12);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v13);
  }
}


// ===== 473aa0 VisualObject::~VisualObject() =====
void __fastcall VisualObject::~VisualObject(VisualObject *this)
{
  VisualObject::~VisualObject(this);
  CustomFree(this);
}


// ===== 473abc VisualObject::~VisualObject() =====
void __fastcall VisualObject::~VisualObject(VisualObject *this)
{
  _DWORD *v2; // r3
  int v3; // r3
  int v4; // r3
  int v5; // r3
  void *v6; // r0
  size_t v7; // r1
  void *v8; // r0
  size_t v9; // r1
  void *v10; // r0
  size_t v11; // r1
  void *v12; // r0
  size_t v13; // r1

  *(_DWORD *)this = off_969048;
  VisualObject::SetAnimController((int)this, 0);
  v2 = *((_DWORD **)this + 3);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *((_DWORD *)this + 3) = 0;
  }
  v3 = *((_DWORD *)this + 2);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 116))(*((_DWORD *)this + 2));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 104))(*((_DWORD *)this + 2));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 2)
                                                                + *(_DWORD *)(**((_DWORD **)this + 2) - 12)));
    *((_DWORD *)this + 2) = 0;
  }
  v4 = *((_DWORD *)this + 12);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 116))(*((_DWORD *)this + 12));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 12) + 104))(*((_DWORD *)this + 12));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 12)
                                                                + *(_DWORD *)(**((_DWORD **)this + 12) - 12)));
    *((_DWORD *)this + 12) = 0;
  }
  v5 = *((_DWORD *)this + 13);
  if ( v5 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 116))(*((_DWORD *)this + 13));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 104))(*((_DWORD *)this + 13));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 13)
                                                                + *(_DWORD *)(**((_DWORD **)this + 13) - 12)));
    *((_DWORD *)this + 13) = 0;
  }
  SceneManager::ForceRegister(*(_DWORD *)(dword_99F73C + 28));
  v6 = *((void **)this + 39);
  if ( v6 )
  {
    v7 = (*((_DWORD *)this + 41) - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  v8 = *((void **)this + 35);
  if ( v8 )
  {
    v9 = (*((_DWORD *)this + 37) - (_DWORD)v8) & 0xFFFFFFFC;
    if ( v9 > 0x80 )
      CustomFree(v8);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
  }
  v10 = *((void **)this + 32);
  if ( v10 )
  {
    v11 = (*((_DWORD *)this + 34) - (_DWORD)v10) & 0xFFFFFFFC;
    if ( v11 > 0x80 )
      CustomFree(v10);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, v11);
  }
  v12 = *((void **)this + 17);
  if ( v12 )
  {
    v13 = (*((_DWORD *)this + 21) - (_DWORD)v12) & 0xFFFFFFFC;
    if ( v13 > 0x80 )
      CustomFree(v12);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v13);
  }
}


// ===== 473cd8 VisualObject::SetWeaponSkin(char const*,int,int) =====
glitch::scene::ISceneNode *__fastcall VisualObject::SetWeaponSkin(VisualObject *this, char *a2, int a3, int a4)
{
  char *v4; // r7
  size_t v8; // r0
  int v9; // r3
  glitch::scene::ISceneNode *result; // r0
  int v11; // r3
  glitch::collada::CColladaFactory *v12; // [sp+0h] [bp-24h]
  std::string v13; // [sp+4h] [bp-20h] BYREF

  v4 = a2;
  if ( a2 )
  {
    std::string::string(&v13, "data/3d/characters/prince/weapons/");
    v8 = LC_API_STRLEN_0(v4);
    std::string::_M_append(&v13, v4, &v4[v8]);
    std::string::_M_append(&v13, ".bdae", "");
    v4 = (char *)glitch::collada::CColladaDatabase::constructScene(
                   *(glitch::collada::CColladaDatabase **)(dword_99F73C + 16),
                   (glitch::video::IVideoDriver *)v13._M_start_of_storage._M_data,
                   (const char *)&dword_0 + 1,
                   (bool)&ColladaFactory::s_factory,
                   v12);
    if ( (std::string *)v13._M_start_of_storage._M_data != &v13 && v13._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v13._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v13._M_start_of_storage._M_data,
          v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
    }
    if ( a3 != 1 )
      goto LABEL_7;
  }
  else if ( a3 != 1 )
  {
LABEL_7:
    v9 = *((_DWORD *)this + 13);
    if ( v9 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 104))(*((_DWORD *)this + 13));
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 13)
                                                                  + *(_DWORD *)(**((_DWORD **)this + 13) - 12)));
    }
    *((_DWORD *)this + 13) = v4;
    goto LABEL_10;
  }
  v11 = *((_DWORD *)this + 12);
  if ( v11 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 104))(*((_DWORD *)this + 12));
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 12)
                                                                + *(_DWORD *)(**((_DWORD **)this + 12) - 12)));
  }
  *((_DWORD *)this + 12) = v4;
LABEL_10:
  result = SceneManager::SearchByName(
             *(SceneManager **)(dword_99F73C + 28),
             *((glitch::scene::ISceneNode **)this + 2),
             VisualObject::SetWeaponSkin(char const*,int,int)::s_slotMapping[a4],
             0);
  if ( result )
    return (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *, char *))(*(_DWORD *)result + 92))(
                                          result,
                                          v4);
  return result;
}


// ===== 473ea0 VisualObject::ApplyXrayMaterial(void) =====
glitch::video::CMaterial **__fastcall VisualObject::ApplyXrayMaterial(glitch::video::CMaterial **this)
{
  glitch::video::CMaterial *v1; // r3
  XrayModularSkinnedMeshSceneNode *v2; // r5
  int v3; // r3
  int v4; // r4
  _DWORD *v5; // r3
  int v6; // r0
  glitch::video::CMaterial *v7; // r3
  int v8; // r7
  int v9; // r0
  int v10; // r10
  int v11; // [sp+10h] [bp-64h]
  int v12; // [sp+28h] [bp-4Ch]
  glitch::video::CMaterial **v13; // [sp+2Ch] [bp-48h]
  int v14; // [sp+30h] [bp-44h]
  float v15[3]; // [sp+38h] [bp-3Ch] BYREF
  glitch::video::CMaterial *v16; // [sp+44h] [bp-30h] BYREF
  glitch::video::CMaterial *v17; // [sp+48h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v18; // [sp+4Ch] [bp-28h] BYREF
  std::string v19; // [sp+54h] [bp-20h] BYREF

  v13 = this;
  if ( *((_BYTE *)this + 168) )
  {
    v1 = *(this + 39);
    v14 = (*(this + 40) - v1) >> 2;
    if ( v14 > 0 )
    {
      v12 = 0;
      while ( 1 )
      {
        v2 = *((XrayModularSkinnedMeshSceneNode **)v1 + v12);
        XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial(v2);
        this = (glitch::video::CMaterial **)(*(int (__fastcall **)(XrayModularSkinnedMeshSceneNode *))(*(_DWORD *)v2 + 188))(v2);
        v3 = *((_DWORD *)v2 + 108);
        v11 = (*((_DWORD *)v2 + 109) - v3) >> 2;
        if ( v11 > 0 )
        {
          v4 = 0;
          while ( 1 )
          {
            v7 = *(glitch::video::CMaterial **)(v3 + 4 * v4);
            v8 = 4 * v4;
            v9 = *(_DWORD *)(dword_99F73C + 28);
            v18 = v7;
            if ( v7 )
              ++*(_DWORD *)v7;
            SceneManager::ChangeCustomXrayTechnique(v9, &v18, 1, 1);
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
            XrayModularSkinnedMeshSceneNode::updateXrayMaterial((glitch::video::CMaterial **)v2);
            v10 = *(_DWORD *)(dword_99F73C + 28);
            v17 = *(glitch::video::CMaterial **)(*((_DWORD *)v2 + 108) + 4 * v4);
            if ( v17 )
              ++*(_DWORD *)v17;
            std::string::string(&v19, "char_rim_light_xray.tga");
            SceneManager::SetMaterialRimLightEffects(v10, &v17, 4.0, (int)&v19);
            if ( (std::string *)v19._M_start_of_storage._M_data != &v19 && v19._M_start_of_storage._M_data )
            {
              if ( (unsigned int)(v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data) <= 0x80 )
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                  v19._M_start_of_storage._M_data,
                  v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data);
              else
                CustomFree(v19._M_start_of_storage._M_data);
            }
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v17);
            v5 = *(_DWORD **)(*((_DWORD *)v2 + 108) + 4 * v4++);
            v6 = *(_DWORD *)(dword_99F73C + 28);
            v16 = *(glitch::video::CMaterial **)(*((_DWORD *)v2 + 108) + v8);
            if ( v5 )
              ++*v5;
            v15[0] = 0.0;
            v15[1] = 0.0;
            v15[2] = 1.0;
            SceneManager::SetMaterialEffects(v6, &v16, v15, 0.98, -1.0);
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
            if ( v4 == v11 )
              break;
            v3 = *((_DWORD *)v2 + 108);
          }
        }
        if ( ++v12 == v14 )
          break;
        v1 = v13[39];
      }
    }
  }
  return this;
}


// ===== 474140 VisualObject::FlushMeshes(void) =====
std::string *__fastcall VisualObject::FlushMeshes(std::string *this, int a2)
{
  int *v4; // r4
  int *v5; // r5
  int v6; // r3
  int v7; // r1
  void *p; // [sp+4h] [bp-14h] BYREF
  int *v10; // [sp+8h] [bp-10h]
  int v11; // [sp+Ch] [bp-Ch]
  glitch::IReferenceCounted *v12; // [sp+10h] [bp-8h] BYREF

  v11 = 0;
  p = nullptr;
  v10 = nullptr;
  SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a2 + 8), (int)&p, 1835360612);
  SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a2 + 8), (int)&p, 1936023908);
  SceneManager::SearchByType(*(_DWORD *)(dword_99F73C + 28), *(_DWORD *)(a2 + 8), (int)&p, 1298489700);
  v4 = (int *)p;
  v5 = v10;
  if ( p != v10 )
  {
    do
    {
      v6 = *v4++;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v6 + 248))(&v12, v6);
      FlushMeshBuffers(v12, 1, 1, 0);
      if ( v12 )
        glitch::IReferenceCounted::drop(v12);
    }
    while ( v4 != v5 );
  }
  v7 = *(_DWORD *)(*(_DWORD *)(a2 + 8) + 332);
  if ( v7 )
    v7 = *(_DWORD *)(v7 + 32);
  std::string::string(this, (char *)v7);
  if ( p )
    GlitchFree(p);
  return this;
}


// ===== 474260 Level::GetRimLightFile(void) =====
std::string *__fastcall Level::GetRimLightFile(std::string *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 56);
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v2 = *(_DWORD *)(a2 + 56);
    }
  }
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, *(const char **)(v2 + 764), *(const char **)(v2 + 760));
  return this;
}


// ===== 474318 VisualObject::ApplyMaterialBaseParam(void) =====
void __fastcall VisualObject::ApplyMaterialBaseParam(VisualObject *this)
{
  int v2; // r1
  int v3; // r4
  int v4; // r6
  _DWORD *v5; // r0
  int v6; // r8
  glitch::scene::ISceneNode *v7; // r6
  Application *v8; // r0
  SceneManager *v9; // r11
  int CurrentLevel; // r0
  DebugSwitches *v11; // r11
  int Switch; // r11
  int v13; // [sp+0h] [bp-64h]
  int v14; // [sp+4h] [bp-60h]
  int v15; // [sp+8h] [bp-5Ch]
  char *v16; // [sp+Ch] [bp-58h]
  char *v17; // [sp+10h] [bp-54h]
  void *p; // [sp+1Ch] [bp-48h] BYREF
  int v19; // [sp+20h] [bp-44h]
  int v20; // [sp+24h] [bp-40h]
  char v21; // [sp+28h] [bp-3Ch] BYREF
  std::string v22; // [sp+2Ch] [bp-38h] BYREF
  std::string v23; // [sp+44h] [bp-20h] BYREF
  std::string v24; // 0:kr00_24.24

  v14 = 14324;
  v2 = *((_DWORD *)this + 2);
  v3 = 0;
  v4 = *(_DWORD *)(dword_99F73C + 28);
  p = nullptr;
  v19 = 0;
  v20 = 0;
  SceneManager::SearchByType(v4, v2, (int)&p, 1835360612);
  SceneManager::SearchByType(v4, *((_DWORD *)this + 2), (int)&p, 1936023908);
  SceneManager::SearchByType(v4, *((_DWORD *)this + 2), (int)&p, 1298489700);
  v5 = p;
  v6 = (v19 - (int)p) >> 2;
  if ( !v6 )
    goto LABEL_18;
  v16 = "RENDERING_EnableXray";
  v15 = 2180;
  v17 = &v21;
  while ( 1 )
  {
    v7 = (glitch::scene::ISceneNode *)v5[v3];
    if ( !*((_BYTE *)this + 126) )
      goto LABEL_3;
    v8 = *(Application **)((char *)&__GLOBAL_OFFSET_TABLE_ + v14);
    v9 = *(SceneManager **)(*(_DWORD *)((char *)&word_10 + (_DWORD)v8) + 28);
    CurrentLevel = Application::GetCurrentLevel(v8);
    Level::GetRimLightFile(&v23, CurrentLevel);
    v24._M_buffers._M_end_of_storage = (char *)&v23;
    *(_DWORD *)&v24._M_buffers._M_static_buf[4] = v13;
    *(_DWORD *)&v24._M_buffers._M_static_buf[8] = v14;
    *(_DWORD *)&v24._M_buffers._M_static_buf[12] = v15;
    v24._M_finish = v16;
    v24._M_start_of_storage._M_data = v17;
    SceneManager::SetMaterialRimLightEffects(v9, v7, 1.9, v24);
    if ( (std::string *)v23._M_start_of_storage._M_data == &v23 || !v23._M_start_of_storage._M_data )
      goto LABEL_3;
    if ( (unsigned int)(v23._M_buffers._M_end_of_storage - v23._M_start_of_storage._M_data) > 0x80 )
    {
      CustomFree(v23._M_start_of_storage._M_data);
LABEL_3:
      if ( !*((_BYTE *)this + 169) )
        goto LABEL_4;
      goto LABEL_11;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v23._M_start_of_storage._M_data,
      v23._M_buffers._M_end_of_storage - v23._M_start_of_storage._M_data);
    if ( !*((_BYTE *)this + 169) )
      goto LABEL_4;
LABEL_11:
    v11 = *(DebugSwitches **)((char *)&__GLOBAL_OFFSET_TABLE_ + v15);
    DebugSwitches::load(v11);
    std::string::string(&v22, v16);
    Switch = DebugSwitches::GetSwitch(v11, &v22);
    if ( (std::string *)v22._M_start_of_storage._M_data != &v22 && v22._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v22._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v22._M_start_of_storage._M_data,
          v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data);
    }
    if ( Switch )
      break;
LABEL_4:
    if ( ++v3 == v6 )
      goto LABEL_17;
LABEL_5:
    v5 = p;
  }
  ++v3;
  SceneManager::SetMaskXray(
    *(SceneManager **)(*(_DWORD *)((char *)&word_10 + *(_DWORD *)((char *)&__GLOBAL_OFFSET_TABLE_ + v14)) + 28),
    v7,
    1);
  if ( v3 != v6 )
    goto LABEL_5;
LABEL_17:
  v5 = p;
LABEL_18:
  if ( v5 )
    GlitchFree(v5);
}


// ===== 474568 VisualObject::GetModularModuleId(int,char const*) =====
int __fastcall VisualObject::GetModularModuleId(VisualObject *this, int a2, char *a3)
{
  size_t v5; // r0
  glitch::collada::CModularSkinnedMeshSceneNode *v6; // r0
  int ModuleId; // r6
  std::string v9; // [sp+4h] [bp-1Ch] BYREF

  std::string::string(&v9, "#");
  v5 = LC_API_STRLEN_0(a3);
  std::string::_M_append(&v9, a3, &a3[v5]);
  std::string::_M_append(&v9, "-mesh-skin", "");
  v6 = *((glitch::collada::CModularSkinnedMeshSceneNode **)this + 11);
  if ( v6 )
    ModuleId = glitch::collada::CModularSkinnedMeshSceneNode::getModuleId(v6, v9._M_start_of_storage._M_data);
  else
    ModuleId = -1;
  if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v9._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v9._M_start_of_storage._M_data,
        v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
  }
  return ModuleId;
}


// ===== 474654 VisualObject::GetModularModuleId(char const*,char const*) =====
int __fastcall VisualObject::GetModularModuleId(VisualObject *this, const char *a2, char *a3)
{
  int ModularCategoryId; // r0

  ModularCategoryId = VisualObject::GetModularCategoryId(this, a2);
  return VisualObject::GetModularModuleId(this, ModularCategoryId, a3);
}


// ===== 474678 AnimController::GetAnimationSet(void) =====
_DWORD *__fastcall AnimController::GetAnimationSet(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 474684 AnimController::~AnimController() =====
void __fastcall AnimController::~AnimController(AnimController *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 1);
  *(_DWORD *)this = off_969060;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
}


// ===== 4746c8 AnimController::~AnimController() =====
void __fastcall AnimController::~AnimController(AnimController *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 1);
  *(_DWORD *)this = off_969060;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
}


// ===== 47470c AnimController::_CBAnim_DoNothing(glitch::scene::ITimelineController *,void *) =====
void AnimController::_CBAnim_DoNothing()
{
  ;
}


// ===== 474710 AnimController::_CBEvent_DoNothing(glitch::collada::STriggeredEvent const&,void *) =====
void AnimController::_CBEvent_DoNothing()
{
  ;
}


// ===== 474714 `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimController.cpp =====
void `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimController.cpp()
{
  dword_9A6128 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6124 = 1056964608;
}


// ===== 474734 AnimController::GetNumAnim(void) =====
int __fastcall AnimController::GetNumAnim(glitch::scene::ISceneNode **this)
{
  _DWORD **Animators; // r0
  _DWORD *v2; // r3
  int v3; // r2

  Animators = (_DWORD **)glitch::scene::ISceneNode::getAnimators(*(this + 1));
  v2 = *Animators;
  if ( *Animators == Animators )
    return 0;
  v3 = 0;
  do
  {
    v2 = (_DWORD *)*v2;
    ++v3;
  }
  while ( Animators != v2 );
  return v3;
}


// ===== 474770 AnimController::GetAnim(uint) =====
int __fastcall AnimController::GetAnim(glitch::scene::ISceneNode **this, unsigned int a2)
{
  _DWORD *Animators; // r0
  _DWORD *v6; // r3
  int v7; // r2

  if ( (*((int (__fastcall **)(glitch::scene::ISceneNode **))*this + 3))(this) <= a2 )
    return 0;
  Animators = (_DWORD *)glitch::scene::ISceneNode::getAnimators(*(this + 1));
  v6 = (_DWORD *)*Animators;
  if ( (_DWORD *)*Animators == Animators )
    return 0;
  if ( a2 )
  {
    v7 = 0;
    while ( 1 )
    {
      v6 = (_DWORD *)*v6;
      ++v7;
      if ( Animators == v6 )
        break;
      if ( a2 == v7 )
        return v6[2];
    }
    return 0;
  }
  return v6[2];
}


// ===== 4747d8 AnimController::GetClipDuration(uint) =====
int __fastcall AnimController::GetClipDuration(glitch::scene::ISceneNode **this, unsigned int a2)
{
  int Anim; // r0
  int v3; // r0

  Anim = AnimController::GetAnim(this, a2);
  if ( Anim && (v3 = (*(int (__fastcall **)(int))(*(_DWORD *)Anim + 64))(Anim)) != 0 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 52))(v3);
  else
    return -1;
}


// ===== 474814 AnimController::HasClip(char const*,uint) =====
bool __fastcall AnimController::HasClip(glitch::scene::ISceneNode **this, const char *a2, unsigned int a3)
{
  int Anim; // r0
  int v5; // r0
  int v6; // r5

  Anim = AnimController::GetAnim(this, a3);
  if ( Anim
    && (v5 = (*(int (__fastcall **)(int))(*(_DWORD *)Anim + 64))(Anim), (v6 = v5) != 0)
    && (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 28))(v5) > 0 )
  {
    return (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 24))(v6, a2) != -1;
  }
  else
  {
    return 0;
  }
}


// ===== 47487c AnimController::GetNumClip(uint) =====
int __fastcall AnimController::GetNumClip(glitch::scene::ISceneNode **this, unsigned int a2)
{
  int Anim; // r0
  int v3; // r0

  Anim = AnimController::GetAnim(this, a2);
  if ( Anim && (v3 = (*(int (__fastcall **)(int))(*(_DWORD *)Anim + 64))(Anim)) != 0 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 28))(v3);
  else
    return 0;
}


// ===== 4748b8 AnimController::GetAnim(uint) =====
int __fastcall AnimController::GetAnim(glitch::scene::ISceneNode **this, unsigned int a2)
{
  _DWORD *Animators; // r0
  _DWORD *v6; // r3
  int v7; // r2

  if ( (*((int (__fastcall **)(glitch::scene::ISceneNode **))*this + 3))(this) <= a2 )
    return 0;
  Animators = (_DWORD *)glitch::scene::ISceneNode::getAnimators(*(this + 1));
  v6 = (_DWORD *)*Animators;
  if ( (_DWORD *)*Animators == Animators )
    return 0;
  if ( a2 )
  {
    v7 = 0;
    while ( 1 )
    {
      v6 = (_DWORD *)*v6;
      ++v7;
      if ( Animators == v6 )
        break;
      if ( a2 == v7 )
        return v6[2];
    }
    return 0;
  }
  return v6[2];
}


// ===== 474920 AnimController::SetScale(float,uint) =====
glitch::scene::ISceneNode **__fastcall AnimController::SetScale(
        glitch::scene::ISceneNode **this,
        float a2,
        unsigned int a3)
{
  if ( AnimController::s_scalingEnabled )
  {
    this = (glitch::scene::ISceneNode **)AnimController::GetAnim(this, a3);
    if ( this )
    {
      this = (glitch::scene::ISceneNode **)(*((int (__fastcall **)(glitch::scene::ISceneNode **))*this + 17))(this);
      if ( this )
        return (glitch::scene::ISceneNode **)(*((int (__fastcall **)(glitch::scene::ISceneNode **, _DWORD))*this + 18))(
                                               this,
                                               LODWORD(a2));
    }
  }
  return this;
}


// ===== 474988 AnimController::StopClip(bool,uint) =====
int __fastcall AnimController::StopClip(AnimController *this, int a2, unsigned int a3)
{
  int result; // r0
  int v5; // r5
  int (__fastcall *v6)(int, int); // r4
  int v7; // r0

  result = AnimController::GetAnim(this, a3);
  if ( result )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 68))(result);
    v5 = result;
    if ( result )
    {
      result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)result + 72))(result, 0);
      if ( a2 )
      {
        v6 = *(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 12);
        v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 48))(v5);
        return v6(v5, v7);
      }
    }
  }
  return result;
}


// ===== 4749f4 AnimController::PlayClip(char const*,bool,int,uint) =====
int __fastcall AnimController::PlayClip(
        glitch::scene::ISceneNode **this,
        const char *a2,
        int a3,
        int a4,
        unsigned int a5)
{
  int Anim; // r0
  int v9; // r6
  _DWORD *v10; // r5
  int Applicator; // r9
  int v12; // r7
  int v13; // r4

  Anim = AnimController::GetAnim(this, a5);
  v9 = Anim;
  if ( Anim )
  {
    v10 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)Anim + 68))(Anim);
    Applicator = GetApplicator(v9);
    if ( v10
      && (*(int (__fastcall **)(_DWORD *))(*v10 + 28))(v10) > 0
      && (*(int (__fastcall **)(_DWORD *, const char *))(*v10 + 24))(v10, a2) == -1 )
    {
      return 0;
    }
    else
    {
      v12 = (*(int (__fastcall **)(_DWORD *))(*v10 + 56))(v10);
      v13 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v9 + 56))(v9, a2);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v9 + 48))(v9, v13);
      if ( v12 == v13 && !(*(int (__fastcall **)(_DWORD *))(*v10 + 68))(v10) )
      {
        if ( Applicator )
          Applicator = *(_DWORD *)(Applicator + 16);
        (*(void (__fastcall **)(_DWORD *, int))(*v10 + 12))(v10, Applicator + v10[4]);
      }
      (*(void (__fastcall **)(_DWORD *, int))(*v10 + 64))(v10, a3);
      (*(void (__fastcall **)(_DWORD *, int))(*v10 + 72))(v10, 1065353216);
      RootSceneNode::NewAnim(*(this + 1), 0);
      *((_DWORD *)*(this + 1) + 71) |= 0x200u;
      return 1;
    }
  }
  else
  {
    GetApplicator(0);
    return 0;
  }
}


// ===== 474b50 AnimController::PlayClip(uint,bool,int,uint) =====
int __fastcall AnimController::PlayClip(RootSceneNode **this, unsigned int a2, int a3, int a4, unsigned int a5)
{
  glitch::scene::ISceneNodeAnimator *Anim; // r0
  glitch::scene::ISceneNodeAnimator *v9; // r9
  _DWORD *v10; // r5
  int Applicator; // r10
  int v12; // r8

  Anim = (glitch::scene::ISceneNodeAnimator *)AnimController::GetAnim((AnimController *)this, a5);
  v9 = Anim;
  if ( Anim )
  {
    v10 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNodeAnimator *))(*(_DWORD *)Anim + 68))(Anim);
    Applicator = GetApplicator(v9);
    if ( v10 && (*(int (__fastcall **)(_DWORD *))(*v10 + 28))(v10) <= a2 )
    {
      return 0;
    }
    else
    {
      v12 = (*(int (__fastcall **)(_DWORD *))(*v10 + 56))(v10);
      (*(void (__fastcall **)(glitch::scene::ISceneNodeAnimator *, unsigned int))(*(_DWORD *)v9 + 48))(v9, a2);
      if ( v12 == a2 && !(*(int (__fastcall **)(_DWORD *))(*v10 + 68))(v10) )
      {
        if ( Applicator )
          Applicator = *(_DWORD *)(Applicator + 16);
        (*(void (__fastcall **)(_DWORD *, int))(*v10 + 12))(v10, Applicator + v10[4]);
      }
      (*(void (__fastcall **)(_DWORD *, int))(*v10 + 64))(v10, a3);
      (*(void (__fastcall **)(_DWORD *, int))(*v10 + 72))(v10, 1065353216);
      RootSceneNode::NewAnim(*(this + 1), 0);
      *((_DWORD *)*(this + 1) + 71) |= 0x200u;
      return 1;
    }
  }
  else
  {
    GetApplicator(nullptr);
    return 0;
  }
}


// ===== 474c78 AnimController::SetCallbacks(glitch::collada::ISceneNodeAnimator *,void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall AnimController::SetCallbacks(int a1, _DWORD *a2, int a3, int a4, int a5, int a6)
{
  int result; // r0

  if ( a2 )
    return Animator::SetCallbacks(a2, a3, a4, a5, a6);
  return result;
}


// ===== 474cac AnimController::SetCallbacksOnAll(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
_DWORD *__fastcall AnimController::SetCallbacksOnAll(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *result; // r0
  _DWORD *v10; // r4
  _DWORD *v11; // r5

  result = (_DWORD *)glitch::scene::ISceneNode::getAnimators(*(glitch::scene::ISceneNode **)(a1 + 4));
  v10 = (_DWORD *)*result;
  v11 = result;
  if ( (_DWORD *)*result != result )
  {
    do
    {
      result = (_DWORD *)AnimController::SetCallbacks(a1, (_DWORD *)v10[2], a2, a3, a4, a5);
      v10 = (_DWORD *)*v10;
    }
    while ( v11 != v10 );
  }
  return result;
}


// ===== 474d10 AnimController::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
// attributes: thunk
_DWORD *__fastcall AnimController::SetCallbacks(int a1, int a2, int a3, int a4, int a5)
{
  return AnimController::SetCallbacksOnAll(a1, a2, a3, a4, a5);
}


// ===== 474d14 AnimController::~AnimController() =====
void __fastcall AnimController::~AnimController(AnimController *this)
{
  AnimController::~AnimController(this);
  CustomFree(this);
}


// ===== 474d30 AnimController::AnimController(RootSceneNode *,bool) =====
void __fastcall AnimController::AnimController(AnimController *this, RootSceneNode *a2, int a3)
{
  *(_DWORD *)this = off_969060;
  *((_DWORD *)this + 1) = a2;
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
        "m_node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\AnimController.cpp",
        28);
      a2 = *((RootSceneNode **)this + 1);
    }
  }
  ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
  if ( a3 )
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 116))(*((_DWORD *)this + 1));
  else
    AnimController::SetCallbacksOnAll(
      this,
      AnimController::_CBAnim_DoNothing,
      this,
      AnimController::_CBEvent_DoNothing,
      this);
}


// ===== 474e44 AnimController::AnimController(RootSceneNode *,bool) =====
void __fastcall AnimController::AnimController(AnimController *this, RootSceneNode *a2, int a3)
{
  *(_DWORD *)this = off_969060;
  *((_DWORD *)this + 1) = a2;
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
        "m_node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\AnimController.cpp",
        28);
      a2 = *((RootSceneNode **)this + 1);
    }
  }
  ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
  if ( a3 )
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 116))(*((_DWORD *)this + 1));
  else
    AnimController::SetCallbacksOnAll(
      (int)this,
      (int)AnimController::_CBAnim_DoNothing,
      (int)this,
      (int)AnimController::_CBEvent_DoNothing,
      (int)this);
}


// ===== 474f58 AnimSetController::HasClip(char const*,uint) =====
int __fastcall AnimSetController::HasClip(AnimSetController *this, const char *a2, unsigned int a3)
{
  return 0;
}


// ===== 474f60 AnimSetController::GetClipDuration(uint) =====
int __fastcall AnimSetController::GetClipDuration(AnimSetController *this, unsigned int a2)
{
  return -1;
}


// ===== 474f68 AnimSetController::PlayClip(char const*,bool,int,uint) =====
int __fastcall AnimSetController::PlayClip(AnimSetController *this, const char *a2, bool a3, int a4, unsigned int a5)
{
  return 0;
}


// ===== 474f70 AnimSetController::GetAnimationSet(void) =====
AnimSetController *__fastcall AnimSetController::GetAnimationSet(
        AnimSetController *this,
        glitch::scene::ISceneNode **a2)
{
  int Anim; // r0
  int v4; // r3

  Anim = AnimController::GetAnim(a2, 0);
  if ( Anim )
  {
    v4 = *(_DWORD *)(Anim + 148);
    *(_DWORD *)this = v4;
    if ( v4 )
      ++*(_DWORD *)(v4 + 4);
  }
  else
  {
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 474fb0 AnimSetController::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
_DWORD *__fastcall AnimSetController::SetCallbacks(glitch::scene::ISceneNode **a1, int a2, int a3, int a4, int a5)
{
  _DWORD *result; // r0

  result = (_DWORD *)AnimController::GetAnim(a1, 0);
  if ( result )
    return (_DWORD *)AnimatorSet::SetCallbacks(result, a2, a3, a4, a5);
  return result;
}


// ===== 474ff0 AnimSetController::PlayClip(uint,bool,int,uint) =====
int __fastcall AnimSetController::PlayClip(AnimSetController *this, int a2, int a3, int a4, unsigned int a5)
{
  int Anim; // r0
  glitch::collada::CSceneNodeAnimatorSet *v9; // r5
  _DWORD *v10; // r6
  int CurrentAnimation; // r10
  int Applicator; // r9
  int v13; // r4

  if ( a2 == -1 )
    return 0;
  Anim = AnimController::GetAnim((glitch::scene::ISceneNode **)this, a5);
  v9 = (glitch::collada::CSceneNodeAnimatorSet *)Anim;
  if ( !Anim )
  {
    glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(nullptr);
    GetApplicator(0);
    return 0;
  }
  v10 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)Anim + 68))(Anim);
  CurrentAnimation = glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(v9);
  Applicator = GetApplicator((int)v9);
  v13 = AnimatorSet::SetCurrentAnimation((AnimationSet **)v9, a2);
  if ( v13 == -1 )
    return 0;
  if ( v10[13] )
    (*(void (__fastcall **)(glitch::collada::CSceneNodeAnimatorSet *, _DWORD))(*(_DWORD *)v9 + 48))(
      v9,
      *((_DWORD *)this + 3));
  if ( CurrentAnimation == v13 && !(*(int (__fastcall **)(_DWORD *))(*v10 + 68))(v10) )
  {
    if ( Applicator )
      Applicator = *(_DWORD *)(Applicator + 16);
    (*(void (__fastcall **)(_DWORD *, int))(*v10 + 12))(v10, Applicator + v10[4]);
  }
  (*(void (__fastcall **)(_DWORD *, int))(*v10 + 64))(v10, a3);
  (*(void (__fastcall **)(_DWORD *, int))(*v10 + 72))(v10, 1065353216);
  RootSceneNode::NewAnim(*((RootSceneNode **)this + 1), *((_BYTE *)this + 16));
  return 1;
}


// ===== 475114 AnimSetController::GetNumClip(uint) =====
glitch::collada::CSceneNodeAnimatorSet *__fastcall AnimSetController::GetNumClip(
        glitch::scene::ISceneNode **this,
        unsigned int a2)
{
  glitch::collada::CSceneNodeAnimatorSet *result; // r0

  result = (glitch::collada::CSceneNodeAnimatorSet *)AnimController::GetAnim(this, a2);
  if ( result )
    return (glitch::collada::CSceneNodeAnimatorSet *)glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(result);
  return result;
}


// ===== 475130 AnimSetController::~AnimSetController() =====
void __fastcall AnimSetController::~AnimSetController(AnimSetController *this)
{
  *(_DWORD *)this = off_969098;
  AnimController::~AnimController(this);
}


// ===== 475164 AnimSetController::~AnimSetController() =====
void __fastcall AnimSetController::~AnimSetController(AnimSetController *this)
{
  AnimSetController::~AnimSetController(this);
  CustomFree(this);
}


// ===== 475180 AnimSetController::~AnimSetController() =====
void __fastcall AnimSetController::~AnimSetController(AnimSetController *this)
{
  *(_DWORD *)this = off_969098;
  AnimController::~AnimController(this);
}


// ===== 4751b4 AnimSetController::AnimSetController(RootSceneNode *,int) =====
void __fastcall AnimSetController::AnimSetController(AnimSetController *this, RootSceneNode *a2, int a3)
{
  _DWORD *Animator; // r0
  _DWORD *v6; // r5

  AnimController::AnimController(this, a2, 1);
  *((_DWORD *)this + 2) = a3;
  *(_DWORD *)this = off_969098;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 1;
  Animator = (_DWORD *)AnimSetManager::GetAnimator((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, a3);
  v6 = Animator;
  if ( Animator )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 1) + 108))(*((_DWORD *)this + 1), Animator);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 12)));
  }
}


// ===== 475248 AnimSetController::AnimSetController(RootSceneNode *,int) =====
void __fastcall AnimSetController::AnimSetController(AnimSetController *this, RootSceneNode *a2, int a3)
{
  _DWORD *Animator; // r0
  _DWORD *v6; // r5

  AnimController::AnimController(this, a2, 1);
  *((_DWORD *)this + 2) = a3;
  *(_DWORD *)this = off_969098;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 1;
  Animator = (_DWORD *)AnimSetManager::GetAnimator((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, a3);
  v6 = Animator;
  if ( Animator )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 1) + 108))(*((_DWORD *)this + 1), Animator);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 12)));
  }
}


// ===== 4752dc `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimSetController.cpp =====
int `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimSetController.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<AnimSetManager>::s_inst;
  dword_9A6134 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6130 = 1056964608;
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


// ===== 475364 AnimSetManager::AnimSetManager(void) =====
void __fastcall AnimSetManager::AnimSetManager(AnimSetManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_9690D0;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 4753b4 AnimSetManager::AnimSetManager(void) =====
void __fastcall AnimSetManager::AnimSetManager(AnimSetManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_9690D0;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 475404 AnimSetManager::Exists(int) =====
bool __fastcall AnimSetManager::Exists(AnimSetManager *this, int a2)
{
  char *v2; // r3
  char *v3; // r0
  char *v4; // r12
  int v5; // r2
  bool v6; // cc
  char *v7; // r2

  v2 = *((char **)this + 2);
  v3 = (char *)this + 4;
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
  return v3 != v2 && a2 >= *((_DWORD *)v2 + 4);
}


// ===== 475460 AnimSetManager::DBG_SetName(int,char const*) =====
int __fastcall AnimSetManager::DBG_SetName(int this, int a2, const char *a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(this + 8);
  while ( v3 )
  {
    if ( a2 > v3[4] )
      v3 = (_DWORD *)v3[3];
    else
      v3 = (_DWORD *)v3[2];
  }
  return this;
}


// ===== 475488 AnimSetManager::DBG_DumpInfo(void) =====
_DWORD *__fastcall AnimSetManager::DBG_DumpInfo(_DWORD *this)
{
  _DWORD *i; // r12
  _DWORD *v2; // r4
  _DWORD *v3; // r3
  _DWORD *v4; // r2
  int v5; // r2
  int v6; // r1
  int v7; // r3

  i = (_DWORD *)*(this + 3);
  v2 = this + 1;
  while ( v2 != i )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)i[9];
      this = i + 7;
      while ( this != v3 )
      {
        v4 = (_DWORD *)v3[3];
        if ( v4 )
        {
          while ( v4[2] )
            v4 = (_DWORD *)v4[2];
          v3 = v4;
        }
        else
        {
          v6 = v3[1];
          if ( *(_DWORD **)(v6 + 12) == v3 )
          {
            do
            {
              v3 = (_DWORD *)v6;
              v6 = *(_DWORD *)(v6 + 4);
            }
            while ( *(_DWORD **)(v6 + 12) == v3 );
            v4 = (_DWORD *)v3[3];
          }
          if ( v4 != (_DWORD *)v6 )
            v3 = (_DWORD *)v6;
        }
      }
      v5 = i[3];
      if ( !v5 )
        break;
      for ( i = (_DWORD *)i[3]; i[2]; i = (_DWORD *)i[2] )
        ;
      if ( v2 == i )
        return this;
    }
    v7 = i[1];
    if ( *(_DWORD **)(v7 + 12) == i )
    {
      do
      {
        i = (_DWORD *)v7;
        v7 = *(_DWORD *)(v7 + 4);
      }
      while ( *(_DWORD **)(v7 + 12) == i );
      v5 = i[3];
    }
    if ( v7 != v5 )
      i = (_DWORD *)v7;
  }
  return this;
}


// ===== 47557c `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimSetManager.cpp =====
void `global constructor keyed to'.._.._sources_Game_ObjectsSub_Visual_Animations_AnimSetManager.cpp()
{
  dword_9A6140 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A613C = 1056964608;
}


// ===== 47559c AnimSetManager::GetClipId(int,int) =====
int __fastcall AnimSetManager::GetClipId(AnimSetManager *this, int a2, int a3)
{
  char *v6; // r3
  char *v7; // r5
  char *v8; // r1
  int v9; // r2
  bool v10; // cc
  char *v11; // r2

  if ( !AnimSetManager::Exists(this, a2) )
    return -1;
  v6 = *((char **)this + 2);
  v7 = (char *)this + 4;
  if ( v6 )
  {
    v8 = v7;
    while ( 1 )
    {
      v9 = *((_DWORD *)v6 + 4);
      v10 = a2 <= v9;
      if ( a2 <= v9 )
        v11 = *((char **)v6 + 2);
      else
        v11 = *((char **)v6 + 3);
      if ( !v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
    if ( v7 != v6 && a2 >= *((_DWORD *)v6 + 4) )
      v7 = v6;
  }
  return *((_DWORD *)AnimationSet::GetAnimation((AnimationSet *)(v7 + 20), a3) + 8);
}


// ===== 475624 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      AnimationSet::~AnimationSet((AnimationSet *)(v2 + 5));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x54u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 475664 AnimSetManager::Flush(void) =====
void __fastcall AnimSetManager::Flush(AnimSetManager *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 5) )
  {
    v2 = (char *)this + 4;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = v2;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v2;
    *((_DWORD *)this + 2) = 0;
  }
  *((_DWORD *)this + 7) = -1;
}


// ===== 4756a8 AnimSetManager::~AnimSetManager() =====
void __fastcall AnimSetManager::~AnimSetManager(AnimSetManager *this)
{
  *(_DWORD *)this = off_9690D0;
  AnimSetManager::Flush(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 47570c AnimSetManager::~AnimSetManager() =====
void __fastcall AnimSetManager::~AnimSetManager(AnimSetManager *this)
{
  AnimSetManager::~AnimSetManager(this);
  CustomFree(this);
}


// ===== 475728 AnimSetManager::~AnimSetManager() =====
void __fastcall AnimSetManager::~AnimSetManager(AnimSetManager *this)
{
  *(_DWORD *)this = off_9690D0;
  AnimSetManager::Flush(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 47578c std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
int __fastcall std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        int a1)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  _DWORD *v4; // r3
  size_t v5; // r1

  v1 = *(_DWORD **)(a1 + 4);
  v2 = *(_DWORD **)a1;
  if ( v1 != *(_DWORD **)a1 )
  {
    while ( 1 )
    {
      v1 -= 6;
      v4 = (_DWORD *)v1[5];
      if ( v4 == v1 || !v4 )
        goto LABEL_4;
      v5 = *v1 - (_DWORD)v4;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_4:
        if ( v2 == v1 )
          break;
      }
      else
      {
        CustomFree(v4);
        if ( v2 == v1 )
          break;
      }
    }
  }
  if ( *(_DWORD *)a1 )
    GlitchFree(*(void **)a1);
  return a1;
}


// ===== 475804 std::pair<int const,Animation>::pair(std::pair<int const,Animation> const&) =====
_DWORD *__fastcall std::pair<int const,Animation>::pair(_DWORD *a1, int a2)
{
  std::string *v4; // r0
  int v5; // r3
  int v6; // r2

  *a1 = *(_DWORD *)a2;
  v4 = (std::string *)(a1 + 1);
  a1[5] = v4;
  a1[6] = v4;
  std::string::_M_range_initialize(v4, *(const char **)(a2 + 24), *(const char **)(a2 + 20));
  v5 = *(_DWORD *)(a2 + 28);
  a1[7] = v5;
  a1[8] = *(_DWORD *)(a2 + 32);
  if ( v5 )
  {
    v6 = *(_DWORD *)(v5 + 4);
    if ( v6 )
      *(_DWORD *)(v5 + 4) = v6 + 1;
  }
  a1[9] = *(_DWORD *)(a2 + 36);
  a1[10] = *(_DWORD *)(a2 + 40);
  a1[11] = *(_DWORD *)(a2 + 44);
  a1[12] = *(_DWORD *)(a2 + 48);
  return a1;
}


// ===== 47587c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *v6; // r10
  char v7; // r3
  int v8; // r1
  int v9; // r5
  _DWORD *v10; // r6
  _DWORD *v11; // r4

  v6 = GlitchAlloc(0x44u, 0);
  std::pair<int const,Animation>::pair(v6 + 4, (int)(a2 + 16));
  v6[3] = 0;
  v6[2] = 0;
  v7 = *a2;
  v6[1] = a3;
  *(_BYTE *)v6 = v7;
  v8 = *((_DWORD *)a2 + 3);
  if ( v8 )
    v6[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_copy(
              a1,
              v8,
              v6);
  v9 = *((_DWORD *)a2 + 2);
  if ( v9 )
  {
    v10 = v6;
    do
    {
      v11 = GlitchAlloc(0x44u, 0);
      std::pair<int const,Animation>::pair(v11 + 4, v9 + 16);
      v11[2] = 0;
      v11[3] = 0;
      *(_BYTE *)v11 = *(_BYTE *)v9;
      v10[2] = v11;
      v11[1] = v10;
      v10 = v11;
      if ( *(_DWORD *)(v9 + 12) )
        v11[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_copy(
                   a1,
                   *(_DWORD *)(v9 + 12),
                   v11);
      v9 = *(_DWORD *)(v9 + 8);
    }
    while ( v9 );
  }
  return v6;
}


// ===== 475958 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_Rb_tree(
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
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_copy(
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


// ===== 4759d0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_create_node(std::pair<int const,AnimationSet> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_create_node(
        int a1,
        int a2)
{
  _DWORD *v3; // r0
  _DWORD *v4; // r4
  char v6; // r2
  size_t v7; // [sp+4h] [bp-4h] BYREF

  v7 = 84;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v7);
  v3[4] = *(_DWORD *)a2;
  v4 = v3;
  v3[6] = *(_DWORD *)(a2 + 8);
  v3[5] = off_9623B8;
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_Rb_tree(
    (int)(v3 + 7),
    a2 + 12);
  v4[13] = *(_DWORD *)(a2 + 36);
  v4[14] = *(_DWORD *)(a2 + 40);
  v4[15] = *(_DWORD *)(a2 + 44);
  v4[16] = *(_DWORD *)(a2 + 48);
  v4[17] = *(_DWORD *)(a2 + 52);
  v4[18] = *(_DWORD *)(a2 + 56);
  v4[19] = *(_DWORD *)(a2 + 60);
  v6 = *(_BYTE *)(a2 + 64);
  v4[3] = 0;
  v4[2] = 0;
  *((_BYTE *)v4 + 80) = v6;
  return v4;
}


// ===== 475a84 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,AnimationSet> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_create_node(
             (int)a2,
             (int)a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_create_node(
           (int)a2,
           (int)a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_create_node(
            (int)a2,
            (int)a4);
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


// ===== 475b5c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(std::pair<int const,AnimationSet> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,AnimationSet>,std::priv::_Select1st<std::pair<int const,AnimationSet>>,std::priv::_MapTraitsT<std::pair<int const,AnimationSet>>,std::allocator<std::pair<int const,AnimationSet>>>::_M_insert(
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

