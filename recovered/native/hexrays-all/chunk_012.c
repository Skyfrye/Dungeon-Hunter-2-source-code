// ===== 408b8c `non-virtual thunk to'v2MixedController::Ctrl_UsePotion(void) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_UsePotion(v2MixedController *this)
{
  return v2MixedController::Ctrl_UsePotion((v2MixedController *)((char *)this - 16));
}


// ===== 408b94 v2MixedController::Ctrl_UsePotion(void) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_UsePotion(int this)
{
  return v2Controller::Cmd_UsePotion(this);
}


// ===== 408b98 `non-virtual thunk to'v2MixedController::Ctrl_EndCast(bool) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_EndCast(v2MixedController *this, bool a2)
{
  return v2MixedController::Ctrl_EndCast((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408ba0 v2MixedController::Ctrl_EndCast(bool) =====
int __fastcall v2MixedController::Ctrl_EndCast(v2MixedController *this, bool a2)
{
  return v2Controller::Cmd_EndCast((int)this, 0);
}


// ===== 408ba8 `non-virtual thunk to'v2MixedController::Ctrl_BeginCast(bool) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_BeginCast(v2MixedController *this, bool a2)
{
  return v2MixedController::Ctrl_BeginCast((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408bb0 v2MixedController::Ctrl_BeginCast(bool) =====
int __fastcall v2MixedController::Ctrl_BeginCast(v2MixedController *this, bool a2)
{
  return v2Controller::Cmd_BeginCast((int)this, 0);
}


// ===== 408bb8 `non-virtual thunk to'v2MixedController::Ctrl_EndSkill(uint) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_EndSkill(v2MixedController *this, unsigned int a2)
{
  return v2MixedController::Ctrl_EndSkill((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408bc0 v2MixedController::Ctrl_EndSkill(uint) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_EndSkill(int this, unsigned int a2)
{
  return v2Controller::Cmd_EndSkill(this, a2);
}


// ===== 408bc4 `non-virtual thunk to'v2MixedController::Ctrl_BeginSkill(uint) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_BeginSkill(v2MixedController *this, unsigned int a2)
{
  return v2MixedController::Ctrl_BeginSkill((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408bcc v2MixedController::Ctrl_BeginSkill(uint) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_BeginSkill(int this, unsigned int a2)
{
  return v2Controller::Cmd_BeginSkill(this, a2);
}


// ===== 408bd0 `non-virtual thunk to'v2MixedController::Ctrl_Attack(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_Attack(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_Attack((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408bd8 v2MixedController::Ctrl_Attack(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_Attack(int this, GameObject **a2)
{
  return v2Controller::Cmd_Attack(this, a2);
}


// ===== 408bdc `non-virtual thunk to'v2MixedController::Ctrl_Stop(void) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_Stop(v2MixedController *this)
{
  return v2MixedController::Ctrl_Stop((v2MixedController *)((char *)this - 16));
}


// ===== 408be4 v2MixedController::Ctrl_Stop(void) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_Stop(int this)
{
  return v2Controller::Cmd_Stop(this);
}


// ===== 408be8 `non-virtual thunk to'v2MixedController::Ctrl_MoveTo(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_MoveTo(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_MoveTo((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408bf0 v2MixedController::Ctrl_MoveTo(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_MoveTo(int this, GameObject *a2)
{
  return v2Controller::Cmd_MoveTo(this, a2);
}


// ===== 408bf4 `non-virtual thunk to'v2MixedController::Ctrl_MoveTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_MoveTo(int a1)
{
  return v2MixedController::Ctrl_MoveTo(a1 - 16);
}


// ===== 408bfc v2MixedController::Ctrl_MoveTo(Point3D<float> const&) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_MoveTo(int result)
{
  return v2Controller::Cmd_MoveTo(result);
}


// ===== 408c00 `non-virtual thunk to'v2MixedController::Ctrl_HeadTo(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_HeadTo(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_HeadTo((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408c08 v2MixedController::Ctrl_HeadTo(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_HeadTo(int this, GameObject *a2)
{
  return v2Controller::Cmd_HeadTo(this, a2);
}


// ===== 408c0c `non-virtual thunk to'v2MixedController::Ctrl_HeadTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_HeadTo(int a1)
{
  return v2MixedController::Ctrl_HeadTo(a1 - 16);
}


// ===== 408c14 v2MixedController::Ctrl_HeadTo(Point3D<float> const&) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_HeadTo(int result)
{
  return v2Controller::Cmd_HeadTo(result);
}


// ===== 408c18 `non-virtual thunk to'v2MixedController::Ctrl_HeadTowards(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_HeadTowards(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_HeadTowards((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408c20 v2MixedController::Ctrl_HeadTowards(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_HeadTowards(int this, GameObject *a2)
{
  return v2Controller::Cmd_HeadTowards(this, a2);
}


// ===== 408c24 `non-virtual thunk to'v2MixedController::Ctrl_HeadTowards(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_HeadTowards(int a1)
{
  return v2MixedController::Ctrl_HeadTowards(a1 - 16);
}


// ===== 408c2c v2MixedController::Ctrl_HeadTowards(Point3D<float> const&) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_HeadTowards(int result)
{
  return v2Controller::Cmd_HeadTowards(result);
}


// ===== 408c30 `non-virtual thunk to'v2MixedController::Ctrl_WarpTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_WarpTo(int a1)
{
  return v2MixedController::Ctrl_WarpTo(a1 - 16);
}


// ===== 408c38 v2MixedController::Ctrl_WarpTo(Point3D<float> const&) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_WarpTo(int result)
{
  return v2Controller::Cmd_WarpTo(result);
}


// ===== 408c3c `non-virtual thunk to'v2MixedController::Ctrl_LookAt(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_LookAt(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_LookAt((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408c44 v2MixedController::Ctrl_LookAt(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_LookAt(int this, GameObject *a2)
{
  return v2Controller::Cmd_LookAt(this, a2);
}


// ===== 408c48 `non-virtual thunk to'v2MixedController::Ctrl_LookAt(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_LookAt(int a1)
{
  return v2MixedController::Ctrl_LookAt(a1 - 16);
}


// ===== 408c50 v2MixedController::Ctrl_LookAt(Point3D<float> const&) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_LookAt(int result)
{
  return v2Controller::Cmd_LookAt(result);
}


// ===== 408c54 `non-virtual thunk to'v2MixedController::Ctrl_RotateBy(float) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_RotateBy(v2MixedController *this, float a2)
{
  return v2MixedController::Ctrl_RotateBy((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408c5c v2MixedController::Ctrl_RotateBy(float) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_RotateBy(int this, float a2)
{
  return v2Controller::Cmd_RotateBy(this, a2);
}


// ===== 408c60 `non-virtual thunk to'v2MixedController::Ctrl_Click(Point3D<float> const&,bool) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_Click(int a1)
{
  return v2MixedController::Ctrl_Click(a1 - 16);
}


// ===== 408c68 v2MixedController::Ctrl_Click(Point3D<float> const&,bool) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_Click(int result)
{
  return v2Controller::Cmd_Click(result);
}


// ===== 408c6c std::allocator<v2Controller *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<v2Controller *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 408cd8 std::allocator<v2Controller *>::deallocate(v2Controller **,uint) =====
void __fastcall std::allocator<v2Controller *>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 4 * a3);
  }
}


// ===== 408cf4 `non-virtual thunk to'v2MixedController::~v2MixedController() =====
void __fastcall `non-virtual thunk to'v2MixedController::~v2MixedController(v2MixedController *this)
{
  v2MixedController::~v2MixedController((v2MixedController *)((char *)this - 16));
}


// ===== 408cfc v2MixedController::~v2MixedController() =====
void __fastcall v2MixedController::~v2MixedController(v2MixedController *this)
{
  int v2; // r0
  int v3; // r1
  int v4; // r6
  int i; // r5
  int v6; // r3
  void *v7; // r3

  v2 = *((_DWORD *)this + 7);
  v3 = *((_DWORD *)this + 6);
  v4 = (v2 - v3) >> 2;
  *(_DWORD *)this = off_9678A8;
  *((_DWORD *)this + 4) = off_96791C;
  if ( v4 )
  {
    for ( i = 0; i != v4; ++i )
    {
      v6 = *(_DWORD *)(v3 + 4 * i);
      if ( v6 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
        v3 = *((_DWORD *)this + 6);
      }
    }
    v2 = *((_DWORD *)this + 7);
  }
  v7 = *((void **)this + 6);
  if ( v3 != v2 )
    *((_DWORD *)this + 7) = v3;
  if ( v7 )
    std::allocator<v2Controller *>::deallocate((int)this + 32, v7, (*((_DWORD *)this + 8) - (int)v7) >> 2);
  v2Controllable::~v2Controllable((v2MixedController *)((char *)this + 16));
}


// ===== 408db4 `non-virtual thunk to'v2MixedController::~v2MixedController() =====
void __fastcall `non-virtual thunk to'v2MixedController::~v2MixedController(v2MixedController *this)
{
  v2MixedController::~v2MixedController((v2MixedController *)((char *)this - 16));
}


// ===== 408dbc v2MixedController::~v2MixedController() =====
void __fastcall v2MixedController::~v2MixedController(v2MixedController *this)
{
  v2MixedController::~v2MixedController(this);
  CustomFree(this);
}


// ===== 408dd8 v2MixedController::v2MixedController(v2Controllable *) =====
void __fastcall v2MixedController::v2MixedController(v2MixedController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  v2Controllable::v2Controllable((v2MixedController *)((char *)this + 16));
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = off_9678A8;
  *((_DWORD *)this + 4) = off_96791C;
}


// ===== 408ecc v2MixedController::v2MixedController(v2Controllable *) =====
void __fastcall v2MixedController::v2MixedController(v2MixedController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  v2Controllable::v2Controllable((v2MixedController *)((char *)this + 16));
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = off_9678A8;
  *((_DWORD *)this + 4) = off_96791C;
}


// ===== 408fc0 v2MixedController::AddController(v2Controller *) =====
void __fastcall v2MixedController::AddController(v2MixedController *this, v2Controller *a2)
{
  char *v4; // r6
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v7; // r0
  _BYTE *v8; // r1
  char *v9; // r7
  size_t v10; // r6
  char *v11; // r6
  size_t v12; // r3
  size_t v13; // [sp+Ch] [bp-4h] BYREF

  if ( a2 )
  {
    *((_DWORD *)a2 + 3) = *((_DWORD *)this + 3);
    v4 = *((char **)this + 7);
    if ( v4 == *((char **)this + 8) )
    {
      v5 = (int)&v4[-*((_DWORD *)this + 6)] >> 2;
      if ( v5 )
        v6 = 2 * v5;
      else
        v6 = 1;
      if ( v6 > 0x3FFFFFFF || v5 > v6 )
        v6 = 0x3FFFFFFF;
      v13 = v6;
      v7 = (char *)std::allocator<v2Controller *>::_M_allocate((int)this + 32, v6, &v13);
      v8 = *((_BYTE **)this + 6);
      v9 = v7;
      v10 = v4 - v8;
      if ( v10 )
        v11 = (char *)memmove(v7, v8, v10) + v10;
      else
        v11 = v7;
      *(_DWORD *)v11 = a2;
      std::allocator<v2Controller *>::deallocate(
        (int)this + 32,
        *((void **)this + 6),
        (*((_DWORD *)this + 8) - *((_DWORD *)this + 6)) >> 2);
      v12 = v13;
      *((_DWORD *)this + 6) = v9;
      *((_DWORD *)this + 7) = v11 + 4;
      *((_DWORD *)this + 8) = &v9[4 * v12];
    }
    else
    {
      *(_DWORD *)v4 = a2;
      *((_DWORD *)this + 7) += 4;
    }
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
      "ctrl",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\v2MixedController.cpp",
      46);
  }
}


// ===== 409118 v2MixedController::~v2MixedController() =====
void __fastcall v2MixedController::~v2MixedController(v2MixedController *this)
{
  int v2; // r0
  int v3; // r1
  int v4; // r6
  int i; // r5
  int v6; // r3
  void *v7; // r3

  v2 = *((_DWORD *)this + 7);
  v3 = *((_DWORD *)this + 6);
  v4 = (v2 - v3) >> 2;
  *(_DWORD *)this = off_9678A8;
  *((_DWORD *)this + 4) = off_96791C;
  if ( v4 )
  {
    for ( i = 0; i != v4; ++i )
    {
      v6 = *(_DWORD *)(v3 + 4 * i);
      if ( v6 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
        v3 = *((_DWORD *)this + 6);
      }
    }
    v2 = *((_DWORD *)this + 7);
  }
  v7 = *((void **)this + 6);
  if ( v3 != v2 )
    *((_DWORD *)this + 7) = v3;
  if ( v7 )
    std::allocator<v2Controller *>::deallocate((int)this + 32, v7, (*((_DWORD *)this + 8) - (int)v7) >> 2);
  v2Controllable::~v2Controllable((v2MixedController *)((char *)this + 16));
}


// ===== 4091d0 v2NetController::~v2NetController() =====
void __fastcall v2NetController::~v2NetController(v2NetController *this)
{
  ;
}


// ===== 4091d4 v2NetController::~v2NetController() =====
void __fastcall v2NetController::~v2NetController(v2NetController *this)
{
  ;
}


// ===== 4091d8 v2NetController::~v2NetController() =====
void __fastcall v2NetController::~v2NetController(v2NetController *this)
{
  v2NetController::~v2NetController(this);
  CustomFree(this);
}


// ===== 4091f4 v2NetController::v2NetController(v2Controllable *) =====
void __fastcall v2NetController::v2NetController(v2NetController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *(_DWORD *)this = off_967990;
}


// ===== 4092c8 v2NetController::v2NetController(v2Controllable *) =====
void __fastcall v2NetController::v2NetController(v2NetController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *(_DWORD *)this = off_967990;
}


// ===== 40939c v2NetController::Update(void) =====
char *__fastcall v2NetController::Update(v2NetController *this)
{
  char *result; // r0
  CMessaging *v3; // r0
  CMessaging *v4; // r0
  CMessaging *v5; // r0
  int MessageFromQueue; // r4
  int v7; // r2
  const Character *v8; // r6
  char *v9; // r0
  char *v10[3]; // [sp+Ch] [bp-28h] BYREF
  char *v11[3]; // [sp+18h] [bp-1Ch] BYREF
  char *v12[4]; // [sp+24h] [bp-10h] BYREF

  result = (char *)GetOnline();
  if ( result[5] )
  {
    if ( *((_DWORD *)this + 3) )
    {
      v3 = (CMessaging *)CMessaging::Get((CMessaging *)result);
      result = (char *)CMessaging::IsMessageReceived(v3, "CMsgControllerAction");
      if ( result )
      {
        v4 = (CMessaging *)CMessaging::Get((CMessaging *)result);
        v5 = (CMessaging *)CMessaging::Get(v4);
        MessageFromQueue = CMessaging::GetMessageFromQueue(v5, (CMessage *)"CMsgControllerAction");
        result = *((char **)this + 3);
        v7 = *(unsigned __int8 *)(MessageFromQueue + 84);
        if ( v7 == *((_DWORD *)result + 66) )
        {
          switch ( *(_BYTE *)(MessageFromQueue + 80) )
          {
            case 0:
              ObjectManager::GetObjectHandleByNetworkId(
                (ObjectManager *)v12,
                dword_99F764,
                *(unsigned __int16 *)(MessageFromQueue + 82));
              v9 = ObjectHandle::operator GameObject *(v12);
              result = (char *)(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 1) + 56))(
                                 *((_DWORD *)this + 1),
                                 v9);
              break;
            case 1:
              result = (char *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 1) + 60))(
                                 *((_DWORD *)this + 1),
                                 *(unsigned __int16 *)(MessageFromQueue + 82));
              break;
            case 2:
              result = (char *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 1) + 64))(
                                 *((_DWORD *)this + 1),
                                 *(unsigned __int16 *)(MessageFromQueue + 82));
              break;
            case 3:
              Character::SG_SetCurrentFaerie((Character *)result, *(unsigned __int16 *)(MessageFromQueue + 82), -1);
              result = (char *)(*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 1) + 68))(
                                 *((_DWORD *)this + 1),
                                 1);
              break;
            case 4:
              result = (char *)(*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 1) + 72))(
                                 *((_DWORD *)this + 1),
                                 1);
              break;
            case 5:
              ObjectManager::GetObjectHandleByNetworkId(
                (ObjectManager *)v11,
                dword_99F764,
                *(unsigned __int16 *)(MessageFromQueue + 82));
              result = ObjectHandle::operator GameObject *(v11);
              if ( result )
                result = (char *)(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 1) + 80))(
                                   *((_DWORD *)this + 1),
                                   result);
              break;
            default:
              if ( gAssertLevel == 2 )
              {
                dword_0 = 0;
              }
              else if ( gAssertLevel == 1 )
              {
                result = (char *)fprintf(
                                   (FILE *)&_sF + 2,
                                   "ASSERT(%s) FAILED: %s:%d\n",
                                   "0",
                                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\v2NetController.cpp",
                                   103);
              }
              break;
          }
        }
        else
        {
          ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v10, dword_99F764, v7);
          result = ObjectHandle::operator Character *(v10);
          v8 = (const Character *)result;
          if ( result )
          {
            result = (char *)(*(int (__fastcall **)(char *))(*(_DWORD *)result + 40))(result);
            if ( result )
            {
              result = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v8, 0);
              if ( result[1644] != 1 )
                return result;
            }
          }
        }
        *(_BYTE *)(MessageFromQueue + 60) = 1;
      }
    }
  }
  return result;
}


// ===== 409620 `global constructor keyed to'.._.._sources_Game_Controllers_v2NetController.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Controllers_v2NetController.cpp(CMessage *a1)
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

  dword_9A31C4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31C0 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A31C9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A31CA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A31CB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A31CC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A31CD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A31CE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A31CF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A31D0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A31D1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A31D2 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A31D3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A31D4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A31D5 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A31D6 = result;
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


// ===== 4098ac v2PS3MoveController::~v2PS3MoveController() =====
void __fastcall v2PS3MoveController::~v2PS3MoveController(v2PS3MoveController *this)
{
  ;
}


// ===== 4098b0 v2PS3MoveController::~v2PS3MoveController() =====
void __fastcall v2PS3MoveController::~v2PS3MoveController(v2PS3MoveController *this)
{
  ;
}


// ===== 4098b4 v2PS3MoveController::~v2PS3MoveController() =====
void __fastcall v2PS3MoveController::~v2PS3MoveController(v2PS3MoveController *this)
{
  v2PS3MoveController::~v2PS3MoveController(this);
  CustomFree(this);
}


// ===== 4098d0 v2PS3MoveController::v2PS3MoveController(v2Controllable *,int) =====
void __fastcall v2PS3MoveController::v2PS3MoveController(v2PS3MoveController *this, v2Controllable *a2, int a3)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 4) = a3;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_9679A8;
  *((_DWORD *)this + 6) = 0;
}


// ===== 4099bc v2PS3MoveController::v2PS3MoveController(v2Controllable *,int) =====
void __fastcall v2PS3MoveController::v2PS3MoveController(v2PS3MoveController *this, v2Controllable *a2, int a3)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 4) = a3;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_9679A8;
  *((_DWORD *)this + 6) = 0;
}


// ===== 409aa8 `global constructor keyed to'.._.._sources_Game_Controllers_v2PS3MoveController.cpp =====
int `global constructor keyed to'.._.._sources_Game_Controllers_v2PS3MoveController.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A31E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31DC = 1056964608;
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


// ===== 409bd8 v2PS3MoveController::Update(void) =====
void __fastcall v2PS3MoveController::Update(Character **this)
{
  InputManager *Instance; // r0
  int v3; // r8
  InputManager *v4; // r4
  int v5; // r4
  Character *v6; // r8
  unsigned int SkillInSlot; // r11
  unsigned int v8; // r9
  unsigned int v9; // r8
  int Switch; // r9
  int v11; // r9
  const Character *v12; // r1
  int v13; // r8
  EventManager *v14; // r6
  int v15; // r12
  int v16; // r12
  int v17; // r12
  _BYTE *v18; // r9
  int v19; // r3
  int v20; // lr
  GameObject *v21; // r11
  int v22; // r12
  Character *v23; // r8
  unsigned int v24; // r11
  unsigned int v25; // r9
  unsigned int v26; // r8
  char v27; // r9
  int v28; // r0
  _DWORD *v29; // r3
  int v30; // r1
  int v31; // r2
  int v32[4]; // [sp+14h] [bp-138h] BYREF
  int v33; // [sp+24h] [bp-128h]
  int (__fastcall *v34)(int, int); // [sp+3Ch] [bp-110h]
  int v35; // [sp+48h] [bp-104h]
  int v36; // [sp+4Ch] [bp-100h]
  _DWORD v37[6]; // [sp+68h] [bp-E4h] BYREF
  _DWORD v38[6]; // [sp+80h] [bp-CCh] BYREF
  _DWORD v39[6]; // [sp+98h] [bp-B4h] BYREF
  _DWORD v40[6]; // [sp+B0h] [bp-9Ch] BYREF
  int v41[5]; // [sp+C8h] [bp-84h] BYREF
  int v42; // [sp+DCh] [bp-70h] BYREF
  int v43; // [sp+E0h] [bp-6Ch]
  int v44; // [sp+E4h] [bp-68h]
  _DWORD v45[2]; // [sp+E8h] [bp-64h] BYREF
  std::string v46; // [sp+FCh] [bp-50h] BYREF
  std::string v47; // [sp+114h] [bp-38h] BYREF
  std::string v48; // [sp+12Ch] [bp-20h] BYREF

  Instance = (InputManager *)InputManager::GetInstance((InputManager *)this);
  v3 = (int)*(this + 4);
  v4 = Instance;
  if ( v3 >= InputManager::GetNumGamepads(Instance) )
    return;
  v5 = (int)*(this + 4) < 0
     ? InputManager::GetFirstConnectedGamepad(v4)
     : (*(int (__fastcall **)(InputManager *))(*(_DWORD *)v4 + 8))(v4);
  if ( !v5 )
    return;
  if ( *(float *)(v5 + 972) >= (float)((float)((float)(*(float *)(v5 + 980) + *(float *)(v5 + 976)) + 1.0) * 0.5) )
  {
    v18 = *(this + 3);
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v19 = *(_DWORD *)(dword_99F780 + 84);
    v45[0] = *(_DWORD *)(dword_99F780 + 80);
    v45[1] = v19;
    if ( v18 && v18[5320] )
    {
      if ( PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v45, &v42) )
      {
        v28 = v42;
        v29 = *(this + 3);
        v29[1324] = v42;
        v30 = v43;
        v29[1325] = v43;
        v31 = v44;
        v29[1329] = v44;
        v29[1327] = v28;
        v29[1328] = v30;
        v29[1326] = v31;
      }
    }
    else
    {
      if ( PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v45, &v42) )
        v2Controller::Cmd_HeadTo((int)this);
      ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v32, (GameObject *)v18, 1, 0, 1);
      v35 = 89;
      v36 = 1;
      while ( v33 != v32[0] )
        std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v32);
      v34 = ObjectSearcher::TargetSorter::_sortClosest;
      v41[0] = (int)off_969D20;
      v41[1] = dword_99F764 + 128;
      v20 = *(_DWORD *)(dword_99F764 + 128);
      v41[3] = dword_99F764 + 128;
      v41[2] = v20;
      v41[4] = 0;
      ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v32, (float *)&v42, 0.0, 6.2832, v41);
      v41[0] = (int)off_964728;
      if ( v33 != v32[0] )
      {
        v21 = *(GameObject **)v32[0];
        if ( *(_DWORD *)v32[0] )
        {
          if ( (*(int (__fastcall **)(_DWORD, _BYTE *))(*(_DWORD *)v21 + 136))(*(_DWORD *)v32[0], v18) )
          {
            if ( CharAI::AI_CanAttack((CharAI *)(v18 + 968), v21) )
            {
              v2Controller::Cmd_Attack((int)this, nullptr);
            }
            else if ( !CharStateMachine::SM_IsInteracting((CharStateMachine *)(v18 + 1276)) )
            {
              v2Controller::Cmd_UseOOI((int)this, nullptr);
            }
          }
        }
      }
      ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v32);
    }
  }
  if ( *(float *)(v5 + 984) < (float)((float)((float)(*(float *)(v5 + 996) + *(float *)(v5 + 992)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v5 + 1000) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v48, "IsMovingToClick");
      v27 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v48) ^ 1;
      std::string::~string(&v48);
      if ( v27 )
        v2Controller::Cmd_Stop((int)this);
    }
  }
  if ( *(float *)(v5 + 844) >= (float)((float)((float)(*(float *)(v5 + 852) + *(float *)(v5 + 848)) + 1.0) * 0.5) )
    v2Controller::Cmd_Attack((int)this, nullptr);
  v6 = *(this + 3);
  if ( v6 )
  {
    SkillInSlot = Character::SG_GetSkillInSlot(*(this + 3), 0);
    v8 = Character::SG_GetSkillInSlot(v6, 1);
    v9 = Character::SG_GetSkillInSlot(v6, 2);
    if ( SkillInSlot != -1 )
    {
      if ( *(float *)(v5 + 824) < (float)((float)((float)(*(float *)(v5 + 836) + *(float *)(v5 + 832)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v5 + 840) )
          v2Controller::Cmd_EndSkill((int)this, SkillInSlot);
      }
      else if ( !*(_BYTE *)(v5 + 840) )
      {
        v2Controller::Cmd_BeginSkill((int)this, SkillInSlot);
      }
    }
    if ( v8 != -1 )
    {
      if ( *(float *)(v5 + 920) < (float)((float)((float)(*(float *)(v5 + 932) + *(float *)(v5 + 928)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v5 + 936) )
          v2Controller::Cmd_EndSkill((int)this, v8);
      }
      else if ( !*(_BYTE *)(v5 + 936) )
      {
        v2Controller::Cmd_BeginSkill((int)this, v8);
      }
    }
    if ( v9 != -1 )
    {
      if ( *(float *)(v5 + 888) < (float)((float)((float)(*(float *)(v5 + 900) + *(float *)(v5 + 896)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v5 + 904) )
          v2Controller::Cmd_EndSkill((int)this, v9);
      }
      else if ( !*(_BYTE *)(v5 + 904) )
      {
        v2Controller::Cmd_BeginSkill((int)this, v9);
      }
    }
    if ( *(this + 3) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v47, "IsUsingMoveMadness");
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v47);
      std::string::~string(&v47);
      if ( Switch )
      {
        v23 = *(this + 3);
        v24 = Character::SG_GetSkillInSlot(v23, 0);
        v25 = Character::SG_GetSkillInSlot(v23, 1);
        v26 = Character::SG_GetSkillInSlot(v23, 2);
        if ( v24 != -1 )
        {
          if ( *(float *)(v5 + 1080) >= (float)((float)((float)(*(float *)(v5 + 1092) + *(float *)(v5 + 1088)) + 1.0)
                                              * 0.5) )
          {
            if ( !*(_BYTE *)(v5 + 1096) )
              v2Controller::Cmd_BeginSkill((int)this, v24);
          }
          else if ( *(_BYTE *)(v5 + 1096) )
          {
            v2Controller::Cmd_EndSkill((int)this, v24);
          }
        }
        if ( v25 != -1 )
        {
          if ( *(float *)(v5 + 1112) >= (float)((float)((float)(*(float *)(v5 + 1124) + *(float *)(v5 + 1120)) + 1.0)
                                              * 0.5) )
          {
            if ( !*(_BYTE *)(v5 + 1128) )
              v2Controller::Cmd_BeginSkill((int)this, v25);
          }
          else if ( *(_BYTE *)(v5 + 1128) )
          {
            v2Controller::Cmd_EndSkill((int)this, v25);
          }
        }
        if ( v26 != -1 )
        {
          if ( *(float *)(v5 + 1144) >= (float)((float)((float)(*(float *)(v5 + 1156) + *(float *)(v5 + 1152)) + 1.0)
                                              * 0.5) )
          {
            if ( !*(_BYTE *)(v5 + 1160) )
              v2Controller::Cmd_BeginSkill((int)this, v26);
          }
          else if ( *(_BYTE *)(v5 + 1160) )
          {
            v2Controller::Cmd_EndSkill((int)this, v26);
          }
        }
      }
    }
  }
  if ( *(float *)(v5 + 1176) >= (float)((float)((float)(*(float *)(v5 + 1188) + *(float *)(v5 + 1184)) + 1.0) * 0.5)
    && !*(_BYTE *)(v5 + 1192) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v46, "IsUsingMoveMadness");
    v11 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v46);
    std::string::~string(&v46);
    if ( v11 )
      v2Controller::Cmd_UsePotion((int)this);
  }
  if ( *(float *)(v5 + 952) >= (float)((float)((float)(*(float *)(v5 + 964) + *(float *)(v5 + 960)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v5 + 968) )
      v2Controller::Cmd_BeginCast((int)this, 0);
  }
  else if ( *(_BYTE *)(v5 + 968) )
  {
    v2Controller::Cmd_EndCast((int)this, 0);
  }
  if ( *(float *)(v5 + 1016) < (float)((float)((float)(*(float *)(v5 + 1028) + *(float *)(v5 + 1024)) + 1.0) * 0.5)
    && *(_BYTE *)(v5 + 1032) )
  {
    v2Controller::Cmd_OpenIGM((v2Controller *)this);
  }
  v12 = *(this + 3);
  if ( v12 )
    v13 = *((_DWORD *)PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v12, 0) + 410);
  else
    v13 = 0;
  v14 = (EventManager *)dword_99F740;
  if ( *(float *)(v5 + 824) < (float)((float)((float)(*(float *)(v5 + 836) + *(float *)(v5 + 832)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v5 + 840) )
      goto LABEL_40;
    v17 = 0;
    goto LABEL_58;
  }
  if ( !*(_BYTE *)(v5 + 840) )
  {
    v17 = 1;
LABEL_58:
    v40[1] = 7;
    v40[0] = off_95B470;
    v40[2] = 2;
    v40[5] = 1065353216;
    v40[3] = v17;
    v40[4] = v13;
    EventManager::Raise((EventManager *)dword_99F740, (const IEvent *)v40);
    v40[0] = off_95B458;
  }
LABEL_40:
  if ( *(float *)(v5 + 856) < (float)((float)((float)(*(float *)(v5 + 868) + *(float *)(v5 + 864)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v5 + 872) )
      goto LABEL_42;
    v16 = 0;
    goto LABEL_54;
  }
  if ( !*(_BYTE *)(v5 + 872) )
  {
    v16 = 1;
LABEL_54:
    v39[1] = 7;
    v39[0] = off_95B470;
    v39[2] = 0;
    v39[5] = 1065353216;
    v39[3] = v16;
    v39[4] = v13;
    EventManager::Raise(v14, (const IEvent *)v39);
    v39[0] = off_95B458;
  }
LABEL_42:
  if ( *(float *)(v5 + 888) >= (float)((float)((float)(*(float *)(v5 + 900) + *(float *)(v5 + 896)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v5 + 904) )
      goto LABEL_44;
    v15 = 1;
    goto LABEL_50;
  }
  if ( *(_BYTE *)(v5 + 904) )
  {
    v15 = 0;
LABEL_50:
    v38[1] = 7;
    v38[0] = off_95B470;
    v38[2] = 1;
    v38[5] = 1065353216;
    v38[3] = v15;
    v38[4] = v13;
    EventManager::Raise(v14, (const IEvent *)v38);
    v38[0] = off_95B458;
  }
LABEL_44:
  if ( *(float *)(v5 + 920) < (float)((float)((float)(*(float *)(v5 + 932) + *(float *)(v5 + 928)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v5 + 936) )
      return;
    v22 = 0;
LABEL_76:
    v37[1] = 7;
    v37[0] = off_95B470;
    v37[2] = 3;
    v37[3] = v22;
    v37[4] = v13;
    v37[5] = 1065353216;
    EventManager::Raise(v14, (const IEvent *)v37);
    return;
  }
  if ( !*(_BYTE *)(v5 + 936) )
  {
    v22 = 1;
    goto LABEL_76;
  }
}


// ===== 40a708 LightBase::RefreshAttachment(void) =====
void __fastcall LightBase::RefreshAttachment(LightBase *this)
{
  ;
}


// ===== 40a70c LightBase::IsUpdatable(void) =====
int __fastcall LightBase::IsUpdatable(LightBase *this)
{
  return 1;
}


// ===== 40a714 LightBase::Update(void) =====
int __fastcall LightBase::Update(LightBase *this)
{
  return (*(int (__fastcall **)(LightBase *))(*(_DWORD *)this + 92))(this);
}


// ===== 40a728 LightBase::TurnOn(void) =====
int __fastcall LightBase::TurnOn(LightBase *this)
{
  return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
           *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
           *((_DWORD *)this + 72));
}


// ===== 40a768 LightBase::TurnOff(void) =====
int __fastcall LightBase::TurnOff(LightBase *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 72) + 104))(*((_DWORD *)this + 72));
}


// ===== 40a784 LightBase::Draw(void) =====
void __fastcall LightBase::Draw(LightBase *this)
{
  float v2[6]; // [sp+0h] [bp-4Ch] BYREF
  float v3; // [sp+18h] [bp-34h] BYREF
  float v4; // [sp+1Ch] [bp-30h]
  float v5; // [sp+20h] [bp-2Ch]
  _BYTE v6[4]; // [sp+24h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+2Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v7, "IsRenderingLightPosition");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7)
    && *((_DWORD *)this + 72) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
    glitch::scene::ISceneNode::getAbsolutePosition(&v3, *((_DWORD **)this + 72));
    v2[0] = v3 - 10.0;
    v2[1] = v4 - 10.0;
    v2[2] = v5 - 10.0;
    v6[2] = 0;
    v2[3] = v3 + 10.0;
    v2[4] = v4 + 10.0;
    v2[5] = v5 + 10.0;
    v6[1] = -1;
    v6[3] = -123;
    v6[0] = -1;
    Draw3DWireFrameBox(v2, v6);
  }
  else
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  }
}


// ===== 40a8f8 LightBase::SyncData(void) =====
void __fastcall LightBase::SyncData(LightBase *this)
{
  int Switch; // r8
  _DWORD *v3; // r7
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r1
  int v9; // r0
  int v10; // r2
  int v11; // r12
  int v12; // r1
  int v13; // r0
  _DWORD *v14; // r2
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+4h] [bp-1Ch] BYREF

  if ( *((_DWORD *)this + 94) == *((_DWORD *)this + 95)
    || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
        std::string::string((std::string *)&v15, "TestMultiPlayerLight"),
        Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v15),
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15),
        Switch) )
  {
    v3 = *(_DWORD **)(*((_DWORD *)this + 72) + 308);
    if ( v3 )
      ++*v3;
    if ( *((float *)this + 76) > 0.01 )
      v3[16] = *((_DWORD *)this + 76);
    v4 = *((_DWORD *)this + 79);
    v5 = *((_DWORD *)this + 77);
    v3[14] = *((_DWORD *)this + 78);
    v3[15] = v4;
    v3[13] = v5;
    v6 = *((_DWORD *)this + 81);
    v7 = *((_DWORD *)this + 82);
    v3[1] = *((_DWORD *)this + 80);
    v3[2] = v6;
    v3[3] = v7;
    v3[4] = 1065353216;
    v8 = *((_DWORD *)this + 83);
    v9 = *((_DWORD *)this + 85);
    v10 = *v3;
    v3[6] = *((_DWORD *)this + 84);
    v3[7] = v9;
    v3[5] = v8;
    v3[8] = 1065353216;
    v11 = *((_DWORD *)this + 88);
    v12 = *((_DWORD *)this + 86);
    v13 = *((_DWORD *)this + 87);
    --v10;
    v3[12] = 1065353216;
    v3[11] = v11;
    v3[10] = v13;
    v3[9] = v12;
    *v3 = v10;
    if ( !v10 )
    {
      if ( !*((_BYTE *)v3 + 84) )
      {
        v14 = (_DWORD *)v3[20];
        *v14 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v14;
      }
      v3[20] = 0;
      CustomFree(v3);
    }
  }
}


// ===== 40aa98 `non-virtual thunk to'LightBase::~LightBase() =====
void __fastcall `non-virtual thunk to'LightBase::~LightBase(LightBase *this)
{
  LightBase::~LightBase((LightBase *)((char *)this - 36));
}


// ===== 40aaa0 LightBase::~LightBase() =====
void __fastcall LightBase::~LightBase(std::priv::_String_base<char,std::allocator<char> > *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 72);
  this->_M_buffers._M_end_of_storage = (char *)off_9679C0;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_967A30;
  *((_DWORD *)this + 9) = off_967A3C;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 72) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 15);
  ObjectBase::~ObjectBase((ObjectBase *)this);
}


// ===== 40ab10 `non-virtual thunk to'LightBase::~LightBase() =====
void __fastcall `non-virtual thunk to'LightBase::~LightBase(LightBase *this)
{
  LightBase::~LightBase((LightBase *)((char *)this - 36));
}


// ===== 40ab18 LightBase::~LightBase() =====
void __fastcall LightBase::~LightBase(std::priv::_String_base<char,std::allocator<char> > *this)
{
  LightBase::~LightBase(this);
  CustomFree(this);
}


// ===== 40ab34 LightBase::~LightBase() =====
void __fastcall LightBase::~LightBase(std::priv::_String_base<char,std::allocator<char> > *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 72);
  this->_M_buffers._M_end_of_storage = (char *)off_9679C0;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_967A30;
  *((_DWORD *)this + 9) = off_967A3C;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 72) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 15);
  ObjectBase::~ObjectBase((ObjectBase *)this);
}


// ===== 40aba4 LightBase::LightBase(ObjectBase::GO_IDS) =====
int __fastcall LightBase::LightBase(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 4) = &off_967A30;
  *(_DWORD *)(a1 + 36) = off_967A3C;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)a1 = off_9679C0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 376) = a1 + 360;
  *(_DWORD *)(a1 + 380) = a1 + 360;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 360), 0x10u);
  **(_BYTE **)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  return a1;
}


// ===== 40ac58 LightBase::LightBase(ObjectBase::GO_IDS) =====
int __fastcall LightBase::LightBase(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 4) = &off_967A30;
  *(_DWORD *)(a1 + 36) = off_967A3C;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)a1 = off_9679C0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 376) = a1 + 360;
  *(_DWORD *)(a1 + 380) = a1 + 360;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 360), 0x10u);
  **(_BYTE **)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  return a1;
}


// ===== 40ad0c `global constructor keyed to'.._.._sources_Game_Lights_LightBase.cpp =====
int `global constructor keyed to'.._.._sources_Game_Lights_LightBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A31EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31E8 = 1056964608;
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


// ===== 40ade8 `non-virtual thunk to'LightBase::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'LightBase::DeclareProperties(LightBase *this)
{
  return LightBase::DeclareProperties((LightBase *)((char *)this - 4));
}


// ===== 40adf0 LightBase::DeclareProperties(void) =====
void __fastcall LightBase::DeclareProperties(LightBase *this)
{
  PropertyMap *v1; // r4
  int v3; // r7
  int v4; // r8
  int v5; // r7
  int v6[3]; // [sp+Ch] [bp-80h] BYREF
  int v7[3]; // [sp+18h] [bp-74h] BYREF
  int v8[3]; // [sp+24h] [bp-68h] BYREF
  int v9[3]; // [sp+30h] [bp-5Ch] BYREF
  int v10[3]; // [sp+3Ch] [bp-50h] BYREF
  std::string v11; // [sp+54h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+6Ch] [bp-20h] BYREF

  v1 = (LightBase *)((char *)this + 4);
  v10[0] = Vec3f_Origin;
  v10[1] = dword_99F858;
  v10[2] = dword_99F85C;
  PropertyMap::AddProperty<Point3D<float>>((LightBase *)((char *)this + 4), "position", (int)this + 292, v10);
  v3 = operator new(0x24u, 0);
  *(_DWORD *)v3 = &off_95C5E8;
  std::string::string((std::string *)(v3 + 8), "radius");
  *(_DWORD *)(v3 + 4) = (LightBase *)((char *)this + 304) - v1;
  *(_DWORD *)v3 = &off_964898;
  *(_DWORD *)(v3 + 32) = 0x40000000;
  PropertyMap::AddProperty(v1, "radius", (Property *)v3);
  memset(v9, 0, sizeof(v9));
  PropertyMap::AddProperty<Point3D<float>>(v1, "attenuation", (int)this + 308, v9);
  memset(v8, 0, sizeof(v8));
  PropertyMap::AddProperty<Point3D<float>>(v1, "ambientColor", (int)this + 320, v8);
  memset(v7, 0, sizeof(v7));
  PropertyMap::AddProperty<Point3D<float>>(v1, "diffuseColor", (int)this + 332, v7);
  memset(v6, 0, sizeof(v6));
  PropertyMap::AddProperty<Point3D<float>>(v1, "specularColor", (int)this + 344, v6);
  v4 = operator new(0x24u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "automatic");
  *(_DWORD *)v4 = &off_95C608;
  *(_DWORD *)(v4 + 4) = (LightBase *)((char *)this + 356) - v1;
  *(_BYTE *)(v4 + 32) = 0;
  PropertyMap::AddProperty(v1, "automatic", (Property *)v4);
  v12._M_finish = (char *)&v12;
  v12._M_start_of_storage._M_data = (char *)&v12;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v12, 0x10u);
  *v12._M_finish = 0;
  v11._M_finish = (char *)&v11;
  v11._M_start_of_storage._M_data = (char *)&v11;
  std::string::_M_range_initialize(&v11, v12._M_start_of_storage._M_data, v12._M_finish);
  v5 = operator new(0x38u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "dae");
  *(_DWORD *)(v5 + 4) = (LightBase *)((char *)this + 360) - v1;
  *(_DWORD *)v5 = &off_95C5C8;
  *(_DWORD *)(v5 + 48) = v5 + 32;
  *(_DWORD *)(v5 + 52) = v5 + 32;
  std::string::_M_range_initialize((std::string *)(v5 + 32), v11._M_start_of_storage._M_data, v11._M_finish);
  PropertyMap::AddProperty(v1, "dae", (Property *)v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
}


// ===== 40b0c0 LightBase::InitPost(void) =====
int __fastcall LightBase::InitPost(LightBase *this)
{
  glitch::video::IVideoDriver *v2; // r1
  glitch::video::IVideoDriver *v3; // r3
  int Scene; // r0
  _DWORD *v5; // r8
  _DWORD *v6; // r2
  int v7; // r3
  _DWORD *v8; // r3
  _DWORD *i; // r3
  _DWORD *v10; // r1
  int v11; // r5
  char *v12; // r8
  glitch::scene::CLightSceneNode *v14; // r7
  unsigned int v15; // r3
  unsigned int v16; // r7
  size_t v17; // r7
  char *v18; // r0
  _BYTE *v19; // r1
  char *v20; // r6
  size_t v21; // r8
  char *v22; // r8
  float v23; // [sp+Ch] [bp-Ch] BYREF
  float v24; // [sp+10h] [bp-8h] BYREF
  float v25; // [sp+14h] [bp-4h] BYREF

  v25 = 255.0;
  Point3D<float>::operator/=((float *)this + 80, &v25);
  v24 = 255.0;
  Point3D<float>::operator/=((float *)this + 83, &v24);
  v23 = 255.0;
  Point3D<float>::operator/=((float *)this + 86, &v23);
  *((float *)this + 78) = *((float *)this + 78) / 1000.0;
  v2 = *((glitch::video::IVideoDriver **)this + 95);
  v3 = *((glitch::video::IVideoDriver **)this + 94);
  *((float *)this + 79) = *((float *)this + 79) / 1000000.0;
  if ( v3 != v2 )
  {
    Scene = SceneManager::LoadScene(*(SceneManager **)(dword_99F73C + 28), v2, "", 0, 0);
    v5 = (_DWORD *)Scene;
    if ( Scene )
    {
      v6 = *(_DWORD **)(Scene + 392);
      if ( v6 == (_DWORD *)(Scene + 392) )
      {
        v7 = 0;
      }
      else
      {
        v8 = *(_DWORD **)(Scene + 392);
        do
          v8 = (_DWORD *)*v8;
        while ( (_DWORD *)(Scene + 392) != v8 );
        v7 = v6[2];
        v6 = (_DWORD *)(Scene + 392);
      }
      *((_DWORD *)this + 72) = v7;
      for ( i = *(_DWORD **)(Scene + 392); i != v6; i = (_DWORD *)*i )
        ;
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4));
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
    }
  }
  v10 = *((_DWORD **)this + 72);
  if ( !v10 )
  {
    v14 = (glitch::scene::CLightSceneNode *)operator new(348, 0);
    glitch::scene::CLightSceneNode::CLightSceneNode(v14, 1);
    *((_DWORD *)this + 72) = v14;
    (*(void (__fastcall **)(_DWORD, glitch::scene::CLightSceneNode *))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4)
                                                                     + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v14);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 72)
                                                                + *(_DWORD *)(**((_DWORD **)this + 72) - 12)));
    v10 = *((_DWORD **)this + 72);
    if ( !v10 )
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
          "m_irrLight && \"Can't create a Light scene node\"",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightBase.cpp",
          94);
        v10 = *((_DWORD **)this + 72);
      }
    }
  }
  ++*(_DWORD *)((char *)v10 + *(_DWORD *)(*v10 - 12) + 4);
  v11 = *(_DWORD *)(dword_99F73C + 28);
  if ( *((_BYTE *)this + 356) )
  {
    v12 = *(char **)(v11 + 1064);
    if ( v12 == *(char **)(v11 + 1068) )
    {
      v15 = (int)&v12[-*(_DWORD *)(v11 + 1060)] >> 2;
      if ( v15 )
        v16 = 2 * v15;
      else
        v16 = 1;
      if ( v16 > 0x3FFFFFFF || v15 > v16 )
        v17 = -4;
      else
        v17 = 4 * v16;
      v18 = (char *)GlitchAlloc(v17, 0);
      v19 = *(_BYTE **)(v11 + 1060);
      v20 = v18;
      v21 = v12 - v19;
      if ( v21 )
        v22 = (char *)memmove(v18, v19, v21) + v21;
      else
        v22 = v18;
      *(_DWORD *)v22 = this;
      GlitchFree(*(void **)(v11 + 1060));
      *(_DWORD *)(v11 + 1068) = &v20[v17];
      *(_DWORD *)(v11 + 1064) = v22 + 4;
      *(_DWORD *)(v11 + 1060) = v20;
    }
    else
    {
      *(_DWORD *)v12 = this;
      *(_DWORD *)(v11 + 1064) += 4;
    }
  }
  return (*(int (__fastcall **)(LightBase *))(*(_DWORD *)this + 92))(this);
}


// ===== 40b3c8 LightBase::SetAttenuation(Point3D<float>) =====
void __fastcall LightBase::SetAttenuation(int a1, float *a2)
{
  float *v3; // r4
  float v4; // r8
  float v5; // r0
  float v6; // r10
  float v7; // r3
  _DWORD *v8; // r2

  v3 = *(float **)(*(_DWORD *)(a1 + 288) + 308);
  if ( v3 )
    ++*(_DWORD *)v3;
  v4 = *a2;
  *(float *)(a1 + 308) = *a2;
  v5 = a2[1];
  *(float *)(a1 + 312) = v5;
  v6 = a2[2];
  *(float *)(a1 + 316) = v6;
  *(float *)(a1 + 312) = v5 / 1000.0;
  *(float *)(a1 + 316) = v6 / 1000000.0;
  v7 = *v3;
  v3[13] = v4;
  v3[14] = v5 / 1000.0;
  --LODWORD(v7);
  v3[15] = v6 / 1000000.0;
  *v3 = v7;
  if ( v7 == 0.0 )
  {
    if ( !*((_BYTE *)v3 + 84) )
    {
      v8 = *((_DWORD **)v3 + 20);
      *v8 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v8;
    }
    v3[20] = 0.0;
    CustomFree(v3);
  }
}


// ===== 40b498 LightBase::setLightNode(glitch::scene::CLightSceneNode *) =====
void __fastcall LightBase::setLightNode(_DWORD *a1, int a2)
{
  _DWORD *v2; // r3
  _DWORD *v5; // r0
  int v6; // r2
  _DWORD *v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r1
  int v11; // r2
  int v12; // r12
  int v13; // r1
  _DWORD *v15; // r2

  v2 = (_DWORD *)a1[72];
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    v2 = nullptr;
    a1[72] = 0;
  }
  a1[72] = a2;
  v5 = *(_DWORD **)(a2 + 308);
  if ( v5 )
    v2 = (_DWORD *)*v5;
  v6 = v5[13];
  if ( v5 )
    *v5 = (char *)v2 + 1;
  a1[77] = v6;
  v7 = (_DWORD *)a1[72];
  a1[78] = v5[14];
  a1[79] = v5[15];
  v8 = v5[2];
  v9 = v5[1];
  a1[82] = v5[3];
  a1[81] = v8;
  a1[80] = v9;
  v10 = v5[6];
  v11 = v5[5];
  a1[85] = v5[7];
  a1[84] = v10;
  a1[83] = v11;
  v12 = v5[11];
  v13 = v5[10];
  a1[86] = v5[9];
  a1[88] = v12;
  a1[87] = v13;
  a1[76] = v5[16];
  if ( v7 )
    ++*(_DWORD *)((char *)v7 + *(_DWORD *)(*v7 - 12) + 4);
  if ( (*v5)-- == 1 )
  {
    if ( !*((_BYTE *)v5 + 84) )
    {
      v15 = (_DWORD *)v5[20];
      *v15 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v15;
    }
    v5[20] = 0;
    CustomFree(v5);
  }
}


// ===== 40b5c8 LightBase::SetSpecularColor(Point3D<float>) =====
void __fastcall LightBase::SetSpecularColor(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r2
  int v3; // r12
  int v4; // r4
  int v5; // r5
  int v6; // r1
  _DWORD *v7; // r1

  v2 = *(_DWORD **)(a1[72] + 308);
  if ( v2 )
    ++*v2;
  v3 = *a2;
  a1[86] = *a2;
  v4 = a2[1];
  a1[87] = v4;
  v5 = a2[2];
  a1[88] = v5;
  v6 = *v2;
  v2[12] = 1065353216;
  --v6;
  v2[11] = v5;
  v2[10] = v4;
  v2[9] = v3;
  *v2 = v6;
  if ( !v6 )
  {
    if ( !*((_BYTE *)v2 + 84) )
    {
      v7 = (_DWORD *)v2[20];
      *v7 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v7;
    }
    v2[20] = 0;
    CustomFree(v2);
  }
}


// ===== 40b674 LightBase::SetDiffuseColor(Point3D<float>) =====
void __fastcall LightBase::SetDiffuseColor(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r2
  int v3; // r12
  int v4; // r4
  int v5; // r5
  int v6; // r1
  _DWORD *v7; // r1

  v2 = *(_DWORD **)(a1[72] + 308);
  if ( v2 )
    ++*v2;
  v3 = *a2;
  a1[83] = *a2;
  v4 = a2[1];
  a1[84] = v4;
  v5 = a2[2];
  a1[85] = v5;
  v6 = *v2;
  v2[8] = 1065353216;
  --v6;
  v2[7] = v5;
  v2[6] = v4;
  v2[5] = v3;
  *v2 = v6;
  if ( !v6 )
  {
    if ( !*((_BYTE *)v2 + 84) )
    {
      v7 = (_DWORD *)v2[20];
      *v7 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v7;
    }
    v2[20] = 0;
    CustomFree(v2);
  }
}


// ===== 40b720 LightBase::SetAmbientColor(Point3D<float>) =====
void __fastcall LightBase::SetAmbientColor(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r2
  int v3; // r12
  int v4; // r4
  int v5; // r5
  int v6; // r1
  _DWORD *v7; // r1

  v2 = *(_DWORD **)(a1[72] + 308);
  if ( v2 )
    ++*v2;
  v3 = *a2;
  a1[80] = *a2;
  v4 = a2[1];
  a1[81] = v4;
  v5 = a2[2];
  a1[82] = v5;
  v6 = *v2;
  v2[4] = 1065353216;
  --v6;
  v2[3] = v5;
  v2[2] = v4;
  v2[1] = v3;
  *v2 = v6;
  if ( !v6 )
  {
    if ( !*((_BYTE *)v2 + 84) )
    {
      v7 = (_DWORD *)v2[20];
      *v7 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v7;
    }
    v2[20] = 0;
    CustomFree(v2);
  }
}


// ===== 40b7cc LightPoint::GetIdsFromName(char const*,int &,int &,char &) =====
int __fastcall LightPoint::GetIdsFromName(LightPoint *this, const char *a2, int *a3, int *a4, char *a5)
{
  int v7; // r3
  int result; // r0
  bool v9; // zf
  int v10; // r3
  char v11; // r2

  v7 = *(char *)(*((_DWORD *)this + 17) + LC_API_STRLEN_0(a2));
  result = 1;
  v9 = v7 == 83;
  if ( v7 == 83 )
  {
    v10 = 4;
    *a4 = 4;
  }
  else
  {
    v10 = v7 - 48;
  }
  if ( v9 )
    v10 = 0;
  else
    *a4 = v10;
  *a3 = v10;
  if ( v9 )
    v11 = 48;
  else
    v11 = v10 + 48;
  *a5 = v11;
  return result;
}


// ===== 40b828 LightPoint::AssignTweaker(int,int) =====
unsigned int __fastcall LightPoint::AssignTweaker(unsigned int this, int a2, unsigned int a3)
{
  unsigned int v4; // r4
  int v6; // r3
  int v7; // r6
  int v8; // r0
  int v9; // r1
  _DWORD *v10; // r3
  char v11; // r10
  unsigned int v12; // r0
  _BYTE *v13; // r3
  char v14; // r10
  unsigned int v15; // r0
  _BYTE *v16; // r3
  char v17; // r10
  char v18; // r8
  _BYTE *v19; // r3

  v4 = this;
  if ( a3 <= 4 )
  {
    v6 = *(_DWORD *)(this + 288);
    this = *(_DWORD *)(dword_99F73C + 28);
    if ( v6 )
    {
      LightSetManager::SetLight(this + 660);
      v7 = *((_DWORD *)&Singleton<Application>::s_inst + a2 + 22);
      *(_DWORD *)(v7 + 4 * (a3 + 74)) = v4;
      v8 = *(_DWORD *)(v4 + 308);
      v9 = *(_DWORD *)(v4 + 312);
      v10 = (_DWORD *)(v7 + 12 * a3);
      v10[33] = *(_DWORD *)(v4 + 316);
      v10[31] = v8;
      v10[32] = v9;
      v11 = (unsigned int)(*(float *)(v4 + 320) * 255.0);
      v12 = (unsigned int)(*(float *)(v4 + 328) * 255.0);
      v13 = (_BYTE *)(v7 + 4 * (a3 + 46));
      v13[1] = (unsigned int)(*(float *)(v4 + 324) * 255.0);
      v13[2] = v12;
      v13[3] = -1;
      *v13 = v11;
      v14 = (unsigned int)(*(float *)(v4 + 336) * 255.0);
      v15 = (unsigned int)(*(float *)(v4 + 340) * 255.0);
      v16 = (_BYTE *)(v7 + 4 * (a3 + 50));
      v16[4] = (unsigned int)(*(float *)(v4 + 332) * 255.0);
      v16[5] = v14;
      v16[6] = v15;
      v16[7] = -1;
      v17 = (unsigned int)(*(float *)(v4 + 344) * 255.0);
      v18 = (unsigned int)(*(float *)(v4 + 348) * 255.0);
      this = (unsigned int)(*(float *)(v4 + 352) * 255.0);
      v19 = (_BYTE *)(v7 + 4 * (a3 + 56));
      v19[3] = -1;
      v19[1] = v18;
      v19[2] = this;
      *v19 = v17;
    }
  }
  return this;
}


// ===== 40ba0c LightPoint::Update(void) =====
int __fastcall LightPoint::Update(char **this)
{
  int result; // r0
  char *v3; // r0
  char *v4; // r5
  int v5; // r6
  int (__fastcall *v6)(int, _DWORD *); // r7
  float v7; // r8
  float v8; // r0
  int v9; // r0
  int v10; // r12
  int v11; // r2
  int (__fastcall *v12)(int, _DWORD *); // r3
  _DWORD v13[3]; // [sp+0h] [bp-1Ch] BYREF
  _DWORD v14[4]; // [sp+Ch] [bp-10h] BYREF

  result = LightBase::Update((LightBase *)this);
  if ( *(this + 72) )
  {
    v3 = ObjectHandle::operator GameObject *(this + 102);
    v4 = v3;
    if ( v3 )
    {
      v5 = (int)*(this + 72);
      v6 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v5 + 164);
      v7 = *((float *)v3 + 90) + *((float *)this + 107);
      v8 = *((float *)v3 + 88) + *((float *)this + 105);
      *(float *)&v14[1] = *((float *)v4 + 89) + *((float *)this + 106);
      *(float *)v14 = v8;
      *(float *)&v14[2] = v7;
      return v6(v5, v14);
    }
    else
    {
      v9 = (int)*(this + 72);
      v10 = (int)*(this + 105);
      v11 = (int)*(this + 107);
      v12 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 164);
      v13[1] = *(this + 106);
      v13[0] = v10;
      v13[2] = v11;
      return v12(v9, v13);
    }
  }
  return result;
}


// ===== 40bac0 LightPoint::RefreshAttachment(void) =====
void __fastcall LightPoint::RefreshAttachment(LightPoint *this)
{
  int v2; // r9
  Character *character_660; // r3
  const char *v4; // r7
  size_t v5; // r0
  char *v6; // r2
  int v7; // r3
  char *v8; // r1
  int Switch; // r10
  int v10; // r2
  int v11; // r3
  _DWORD v12[3]; // [sp+Ch] [bp-54h] BYREF
  char *v13; // [sp+18h] [bp-48h] BYREF
  int v14; // [sp+1Ch] [bp-44h]
  int v15; // [sp+20h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+2Ch] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+44h] [bp-1Ch] BYREF

  v2 = *(_DWORD *)(dword_99F73C + 28);
  if ( !LC_API_STRNCMP_0("_prim_PlayerLight_", *((const char **)this + 17), 0x12u) )
  {
    std::string::string((std::string *)&v17, "PlayerCharacter_0");
    if ( (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 384) != &v17 )
      std::string::_M_assign((std::string *const)this + 16, v17._M_start_of_storage._M_data, v17._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( character_660 )
    {
      v4 = *((const char **)character_660 + 17);
      v5 = LC_API_STRLEN_0(v4);
      std::string::_M_assign((std::string *const)this + 16, v4, &v4[v5]);
    }
    LightPoint::AssignTweaker((unsigned int)this, 0, 0);
  }
  v6 = *((char **)this + 101);
  if ( *((char **)this + 100) != v6 )
  {
    ObjectManager::GetObjectByName(
      (ObjectManager *)&v13,
      (const char *)dword_99F764,
      v6,
      *((_DWORD *)this + 25),
      nullptr,
      0);
    if ( ObjectHandle::GetObject(&v13, 0) )
    {
      v7 = v15;
      v8 = v13;
      *((_DWORD *)this + 103) = v14;
      *((_DWORD *)this + 104) = v7;
      *((_DWORD *)this + 102) = v8;
    }
    if ( *((_BYTE *)this + 432) && !*((_BYTE *)this + 433) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((std::string *)&v16, "EnablePlayerHeadLight");
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
      if ( !Switch )
      {
        LightSetManager::AddActiveLight(v2 + 660, v13, v14, v15, *((_DWORD *)this + 72));
        *((_BYTE *)this + 433) = 1;
        ObjectHandle::ObjectHandle((ObjectHandle *)v12, nullptr);
        v10 = v12[0];
        v11 = v12[1];
        *((_DWORD *)this + 104) = v12[2];
        *((_DWORD *)this + 102) = v10;
        *((_DWORD *)this + 103) = v11;
      }
    }
  }
}


// ===== 40bcdc LightPoint::InitPost(void) =====
int __fastcall LightPoint::InitPost(LightPoint *this)
{
  *((_BYTE *)this + 432) = 0;
  *((_BYTE *)this + 433) = 0;
  LightBase::InitPost(this);
  *(_WORD *)(*(_DWORD *)(*((_DWORD *)this + 72) + 308) + 88) = 0;
  return (*(int (__fastcall **)(LightPoint *))(*(_DWORD *)this + 88))(this);
}


// ===== 40bd14 `non-virtual thunk to'LightPoint::~LightPoint() =====
void __fastcall `non-virtual thunk to'LightPoint::~LightPoint(LightPoint *this)
{
  LightPoint::~LightPoint((LightPoint *)((char *)this - 36));
}


// ===== 40bd1c LightPoint::~LightPoint() =====
void __fastcall LightPoint::~LightPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967A58;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_967AC8;
  *((_DWORD *)this + 9) = off_967AD4;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 16);
  LightBase::~LightBase(this);
}


// ===== 40bd68 `non-virtual thunk to'LightPoint::~LightPoint() =====
void __fastcall `non-virtual thunk to'LightPoint::~LightPoint(LightPoint *this)
{
  LightPoint::~LightPoint((LightPoint *)((char *)this - 36));
}


// ===== 40bd70 LightPoint::~LightPoint() =====
void __fastcall LightPoint::~LightPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  LightPoint::~LightPoint(this);
  CustomFree(this);
}


// ===== 40bd8c LightPoint::~LightPoint() =====
void __fastcall LightPoint::~LightPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967A58;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_967AC8;
  *((_DWORD *)this + 9) = off_967AD4;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 16);
  LightBase::~LightBase(this);
}


// ===== 40bdd8 LightPoint::LightPoint(void) =====
void __fastcall LightPoint::LightPoint(LightPoint *this)
{
  LightBase::LightBase(this, 19);
  *((_DWORD *)this + 100) = (char *)this + 384;
  *(_DWORD *)this = off_967A58;
  *((_DWORD *)this + 1) = &off_967AC8;
  *((_DWORD *)this + 9) = off_967AD4;
  *((_DWORD *)this + 101) = (char *)this + 384;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 384, 0x10u);
  **((_BYTE **)this + 100) = 0;
  ObjectHandle::ObjectHandle((LightPoint *)((char *)this + 408));
  *((_DWORD *)this + 107) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
}


// ===== 40be5c LightPoint::LightPoint(void) =====
void __fastcall LightPoint::LightPoint(LightPoint *this)
{
  LightBase::LightBase((int)this, 19);
  *((_DWORD *)this + 100) = (char *)this + 384;
  *(_DWORD *)this = off_967A58;
  *((_DWORD *)this + 1) = &off_967AC8;
  *((_DWORD *)this + 9) = off_967AD4;
  *((_DWORD *)this + 101) = (char *)this + 384;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 96, 0x10u);
  **((_BYTE **)this + 100) = 0;
  ObjectHandle::ObjectHandle((LightPoint *)((char *)this + 408));
  *((_DWORD *)this + 107) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
}


// ===== 40bee0 `global constructor keyed to'.._.._sources_Game_Lights_LightPoint.cpp =====
int `global constructor keyed to'.._.._sources_Game_Lights_LightPoint.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A31F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31F4 = 1056964608;
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


// ===== 40bfbc `non-virtual thunk to'LightPoint::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'LightPoint::DeclareProperties(LightPoint *this)
{
  return LightPoint::DeclareProperties((LightPoint *)((char *)this - 4));
}


// ===== 40bfc4 LightPoint::DeclareProperties(void) =====
_DWORD *__fastcall LightPoint::DeclareProperties(LightPoint *this)
{
  int v2; // r5
  int v3; // r9
  int v4; // r8
  int v5; // r10
  int v6; // r5
  std::string v8; // [sp+14h] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+2Ch] [bp+0h] BYREF

  LightBase::DeclareProperties(this);
  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0x10u);
  *v9._M_finish = 0;
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::string::_M_range_initialize(&v8, v9._M_start_of_storage._M_data, v9._M_finish);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string((std::string *)(v2 + 8), "attachedTo");
  *(_DWORD *)(v2 + 4) = 380;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v8._M_start_of_storage._M_data, v8._M_finish);
  PropertyMap::AddProperty((LightPoint *)((char *)this + 4), "attachedTo", (Property *)v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  v3 = dword_99F85C;
  v4 = Vec3f_Origin;
  v5 = dword_99F858;
  v6 = operator new(0x2Cu, 0);
  *(_DWORD *)v6 = &off_95C5E8;
  std::string::string((std::string *)(v6 + 8), "attachedOffset");
  *(_DWORD *)(v6 + 4) = 416;
  *(_DWORD *)(v6 + 32) = v4;
  *(_DWORD *)v6 = off_964038;
  *(_DWORD *)(v6 + 36) = v5;
  *(_DWORD *)(v6 + 40) = v3;
  return PropertyMap::AddProperty((LightPoint *)((char *)this + 4), "attachedOffset", (Property *)v6);
}


// ===== 40c178 LightSetManager::StaticLight::~StaticLight() =====
void __fastcall LightSetManager::StaticLight::~StaticLight(LightSetManager::StaticLight *this)
{
  ;
}


// ===== 40c17c LightSetManager::ActiveLight::~ActiveLight() =====
void __fastcall LightSetManager::ActiveLight::~ActiveLight(LightSetManager::ActiveLight *this)
{
  ;
}


// ===== 40c180 std::priv::__copy_backward<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy_backward<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(
        _DWORD *a1,
        int *a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r12
  int v5; // r5
  int v7; // r12
  int v8; // r0
  int v9; // r5
  int v10; // r6
  bool v11; // zf
  int *v12; // r0
  int v13; // r4
  bool v14; // zf
  int v15; // r4
  _DWORD *v16; // r4
  int v17; // r4
  int v18; // r5

  v4 = *a2;
  v5 = a2[1];
  v7 = a3[1] - v5 + 8 * (*a3 - v4);
  if ( v7 > 0 )
  {
    do
    {
      v8 = *(_DWORD *)(a4 + 4);
      v9 = 0x80000000;
      v10 = 0x80000000;
      v11 = v8 == 0;
      v12 = (int *)(v8 - 1);
      *(_DWORD *)(a4 + 4) = v12;
      if ( v11 )
      {
        v12 = *(int **)a4;
        *(_DWORD *)(a4 + 4) = 31;
      }
      else
      {
        v9 = 1 << (char)v12;
      }
      if ( v11 )
        *(_DWORD *)a4 = --v12;
      v13 = a3[1];
      if ( !v11 )
        v12 = *(int **)a4;
      v14 = v13 == 0;
      v15 = v13 - 1;
      if ( !v14 )
        v10 = 1 << v15;
      a3[1] = v15;
      v16 = (_DWORD *)*a3;
      if ( v14 )
      {
        a3[1] = 31;
        *a3 = --v16;
      }
      v11 = (v10 & *v16) == 0;
      v17 = *v12;
      if ( v11 )
        v18 = v17 & ~v9;
      else
        v18 = v17 | v9;
      --v7;
      *v12 = v18;
    }
    while ( v7 );
  }
  *a1 = *(_DWORD *)a4;
  a1[1] = *(_DWORD *)(a4 + 4);
  return a1;
}


// ===== 40c244 std::priv::__copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::random_access_iterator_tag const&,int *) =====
int **__fastcall std::priv::__copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(
        int **a1,
        int a2,
        int *a3,
        int **a4)
{
  int v4; // r5
  int v5; // r6
  _DWORD *v6; // r4
  int v7; // r12
  int v9; // r5
  int v10; // r8
  int v11; // r12
  int v12; // r4
  int v13; // r12
  int v14; // r0
  _DWORD *v15; // r0
  int *v16; // r0
  int *v17; // r0

  v4 = *a3;
  v5 = a3[1];
  v6 = *(_DWORD **)a2;
  v7 = *(_DWORD *)(a2 + 4);
  v9 = v5 - v7 + 8 * (v4 - *(_DWORD *)a2);
  if ( v9 > 0 )
  {
    while ( 1 )
    {
      v10 = *v6 & (1 << v7);
      v11 = 1 << (char)a4[1];
      v12 = **a4;
      if ( v10 )
        v13 = v12 | v11;
      else
        v13 = v12 & ~v11;
      **a4 = v13;
      v14 = *(_DWORD *)(a2 + 4);
      *(_DWORD *)(a2 + 4) = v14 + 1;
      if ( v14 == 31 )
      {
        v15 = *(_DWORD **)a2;
        *(_DWORD *)(a2 + 4) = 0;
        *(_DWORD *)a2 = v15 + 1;
      }
      v16 = a4[1];
      a4[1] = (int *)((char *)v16 + 1);
      if ( v16 == (int *)((char *)&dword_1C + 3) )
      {
        v17 = *a4;
        a4[1] = nullptr;
        *a4 = v17 + 1;
      }
      if ( !--v9 )
        break;
      v6 = *(_DWORD **)a2;
      v7 = *(_DWORD *)(a2 + 4);
    }
  }
  *a1 = *a4;
  a1[1] = a4[1];
  return a1;
}


// ===== 40c2fc std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>) =====
int **__fastcall std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
        int **a1,
        int *a2,
        int *a3,
        int **a4)
{
  int v4; // r6
  int v5; // lr
  int v6; // r7
  int v7; // r5
  int *v8; // r8
  _DWORD v11[2]; // [sp+Ch] [bp-1Ch] BYREF
  int v12[2]; // [sp+14h] [bp-14h] BYREF
  int *v13[2]; // [sp+1Ch] [bp-Ch] BYREF

  v4 = *a2;
  v5 = *a3;
  v6 = a2[1];
  v7 = a3[1];
  v8 = a4[1];
  v13[0] = *a4;
  v11[1] = v6;
  v11[0] = v4;
  v12[1] = v7;
  v12[0] = v5;
  v13[1] = v8;
  std::priv::__copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(
    a1,
    (int)v11,
    v12,
    v13);
  return a1;
}


// ===== 40c364 LightSetManager::StaticLight::~StaticLight() =====
void __fastcall LightSetManager::StaticLight::~StaticLight(LightSetManager::StaticLight *this)
{
  *(_DWORD *)this = off_967AF0;
  CustomFree(this);
}


// ===== 40c398 LightSetManager::ActiveLight::~ActiveLight() =====
void __fastcall LightSetManager::ActiveLight::~ActiveLight(LightSetManager::ActiveLight *this)
{
  *(_DWORD *)this = off_967B00;
  CustomFree(this);
}


// ===== 40c3cc LightSetManager::GetLightSetIdFromName(std::string) =====
int __fastcall LightSetManager::GetLightSetIdFromName(const char **this, std::string a2)
{
  const char *v2; // r6
  int v4; // r4

  v2 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  v4 = 0;
  while ( LC_API_STRCMP_0(v2, *(this + 6)) )
  {
    ++v4;
    this += 6;
    if ( v4 == 4 )
      return 0;
  }
  return v4;
}


// ===== 40c40c LightSetManager::GetLight(int,int) =====
char *__fastcall LightSetManager::GetLight(LightSetManager *this, unsigned int a2, unsigned int a3)
{
  if ( a2 > 3 )
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
        "lightsetId >= 0 && lightsetId < MAX_NUM_LIGHTSET",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
        116);
    }
  }
  if ( a3 > 4 )
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
        "lightId >= 0 && lightId < MAX_NUM_LIGHT_PER_LIGHTSET",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
        117);
    }
  }
  return (char *)this + 20 * a2 + 4 * a3 + 120;
}


// ===== 40c524 LightSetManager::AddStaticLight(glitch::scene::CLightSceneNode *) =====
int __fastcall LightSetManager::AddStaticLight(int result, int a2)
{
  int v2; // r2
  int v3; // r4

  v2 = *(_DWORD *)(result + 392);
  v3 = result;
  if ( v2 > 6 )
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
                 "m_countStaticLight < MAX_NUM_STATIC_LIGHT - 1",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
                 107);
      v2 = *(_DWORD *)(v3 + 392);
    }
  }
  *(_DWORD *)(v3 + 8 * v2 + 224) = a2;
  ++*(_DWORD *)(v3 + 392);
  return result;
}


// ===== 40c5d8 LightSetManager::AddActiveLight(ObjectHandle,glitch::scene::CLightSceneNode *) =====
_DWORD *__fastcall LightSetManager::AddActiveLight(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *result; // r0
  int v7; // r3
  int v10; // r7
  _DWORD *v11; // r3
  _DWORD v12[2]; // [sp+Ch] [bp-10h] BYREF
  int v13; // [sp+14h] [bp-8h]

  result = v12;
  v12[0] = a2;
  v12[1] = a3;
  v13 = a4;
  v7 = *(_DWORD *)(a1 + 396);
  v10 = v13;
  if ( v7 > 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = (_DWORD *)fprintf(
                           (FILE *)&_sF + 2,
                           "ASSERT(%s) FAILED: %s:%d\n",
                           "m_countActiveLight < MAX_NUM_ACTIVE_LIGHT - 1",
                           "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
                           97);
      v7 = *(_DWORD *)(a1 + 396);
    }
  }
  v11 = (_DWORD *)(a1 + 20 * v7);
  v11[75] = v10;
  v11[74] = a3;
  v11[72] = a5;
  v11[73] = a2;
  ++*(_DWORD *)(a1 + 396);
  return result;
}


// ===== 40c6b0 LightSetManager::GetClosestStaticLight(Point3D<float>) =====
int __fastcall LightSetManager::GetClosestStaticLight(int a1, float *a2)
{
  float v4; // r11
  float v5; // r9
  int v6; // r6
  int v7; // r5
  int v8; // r3
  float *v9; // r0
  float v10; // r0
  float v11; // r7
  _BOOL4 v12; // r0
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  int v16; // [sp+14h] [bp-8h]

  if ( *(int *)(a1 + 392) <= 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      v16 = -1;
      return a1 + 8 * v16 + 220;
    }
    if ( gAssertLevel != 1
      || (fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "HasStaticLight()",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
            68),
          v14 = a2[2],
          v4 = *a2,
          v15 = a2[1],
          *(int *)(a1 + 392) <= 0) )
    {
      v16 = -1;
      return a1 + 8 * v16 + 220;
    }
  }
  else
  {
    v14 = a2[2];
    v4 = *a2;
    v15 = a2[1];
  }
  v5 = 1000000000.0;
  v6 = a1;
  v7 = 0;
  v16 = -1;
  do
  {
    v8 = *(_DWORD *)(v6 + 224);
    v6 += 8;
    v9 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 160))(v8);
    v10 = sqrt((float)((float)((float)((float)(*v9 - v4) * (float)(*v9 - v4))
                             + (float)((float)(v9[1] - v15) * (float)(v9[1] - v15)))
                     + (float)((float)(v9[2] - v14) * (float)(v9[2] - v14))));
    v11 = v10;
    v12 = v5 > v10;
    if ( v12 )
      v16 = v7;
    ++v7;
    if ( v12 )
      v5 = v11;
  }
  while ( *(_DWORD *)(a1 + 392) > v7 );
  return a1 + 8 * v16 + 220;
}


// ===== 40c88c `global constructor keyed to'.._.._sources_Game_Lights_LightSetManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Lights_LightSetManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3204 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3200 = 1056964608;
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


// ===== 40c968 std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(int) =====
_DWORD *__fastcall std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(
        _DWORD *result,
        int *a2,
        int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r1
  int v6; // r12
  int v7; // r3

  v3 = *a2;
  v4 = a3 + a2[1];
  v5 = v4 + 31;
  if ( v4 >= 0 )
    v5 = v4;
  v6 = v4 % 32;
  v7 = v3 + 4 * (v5 >> 5);
  if ( v6 < 0 )
  {
    v6 += 32;
    v7 -= 4;
  }
  *result = v7;
  result[1] = v6;
  return result;
}


// ===== 40c9a8 LightSetManager::ApplySettings(int,boost::intrusive_ptr<glitch::video::CMaterial> &,std::vector<bool,std::allocator<bool>> &) =====
LightSetManager *__fastcall LightSetManager::ApplySettings(LightSetManager *a1, unsigned int a2, _DWORD *a3, int *a4)
{
  int v4; // r12
  unsigned int v6; // r4
  int v7; // r3
  char v9; // r8
  int v10; // r0
  int v11; // r2
  _DWORD *v12; // r0
  LightSetManager *result; // r0
  int v14; // r4
  int v15; // r3
  int v16; // r1
  int v17; // r3
  _DWORD *v18; // r1
  char *Light; // r9
  int v20; // r3
  int ParameterID; // r0
  int v22; // r3
  int v23; // r0
  bool v24; // zf
  int v25; // r1
  char *v26; // r3
  _BYTE v29[5]; // [sp+10h] [bp-Ch] BYREF
  char v30; // [sp+15h] [bp-7h]
  char v31; // [sp+16h] [bp-6h] BYREF

  v4 = *a4;
  v6 = 0;
  v7 = a4[1];
  v9 = 0;
  do
  {
    v10 = v6 + v7 + 31;
    if ( (int)(v6 + v7) >= 0 )
      v10 = v6 + v7;
    v11 = (int)(v6 + v7) % 32;
    v12 = (_DWORD *)(v4 + 4 * (v10 >> 5));
    if ( v11 < 0 )
    {
      --v12;
      LOBYTE(v11) = v11 + 32;
    }
    if ( (*v12 & (1 << v11)) != 0 )
    {
      Light = LightSetManager::GetLight(a1, a2, v6);
      v20 = *a3;
      v30 = v9 + 48;
      v31 = 0;
      qmemcpy(v29, "light", sizeof(v29));
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                      *(glitch::video::CMaterialRenderer **)(v20 + 4),
                      (glitch::core::detail::SSharedStringHeapEntry::SData *)v29,
                      0);
      if ( ParameterID == 0xFFFF || !*(_DWORD *)Light )
      {
        v7 = a4[1];
        v4 = *a4;
      }
      else
      {
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
          *a3,
          ParameterID,
          0,
          Light);
        ++v9;
        v7 = a4[1];
        v4 = *a4;
      }
    }
    ++v6;
  }
  while ( v6 != 4 );
  result = (LightSetManager *)&v31;
  v14 = 0;
  while ( 1 )
  {
    v15 = v14 + v7;
    v16 = v15 + 31;
    if ( v15 >= 0 )
      v16 = v15;
    v17 = v15 % 32;
    v18 = (_DWORD *)(v4 + 4 * (v16 >> 5));
    if ( v17 < 0 )
    {
      --v18;
      LOBYTE(v17) = v17 + 32;
    }
    if ( (*v18 & (1 << v17)) == 0 )
    {
      v22 = *a3;
      v30 = v9 + 48;
      v31 = 0;
      qmemcpy(v29, "light", sizeof(v29));
      v23 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(v22 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)v29,
              0);
      v24 = v23 == 0xFFFF;
      v25 = v23;
      result = a1;
      v26 = (char *)a1 + 4 * v14 + 200;
      if ( !v24 )
        break;
    }
    if ( ++v14 == 4 )
      return result;
LABEL_15:
    v4 = *a4;
    v7 = a4[1];
  }
  ++v14;
  result = (LightSetManager *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                                *a3,
                                v25,
                                0,
                                v26);
  ++v9;
  if ( v14 != 4 )
    goto LABEL_15;
  return result;
}


// ===== 40cbc0 LightSetManager::ResetLightSets(void) =====
void __fastcall LightSetManager::ResetLightSets(LightSetManager *this)
{
  int v1; // r8
  LightSetManager *v3; // r7
  LightSetManager *v4; // r5
  int i; // r4
  char *v6; // r2
  _DWORD *v7; // r3
  bool v8; // zf
  _DWORD *v9; // r1
  int v10; // r4
  _DWORD *v11; // r3
  _DWORD *v12; // r1

  v1 = 0;
  v3 = this;
  v4 = this;
  do
  {
    for ( i = 0; i != 80; i += 20 )
    {
      v6 = (char *)v4 + i;
      v7 = *(_DWORD **)((char *)v4 + i + 120);
      *((_DWORD *)v6 + 30) = 0;
      if ( v7 )
      {
        v8 = (*v7)-- == 1;
        if ( v8 )
        {
          if ( !*((_BYTE *)v7 + 84) )
          {
            v9 = (_DWORD *)v7[20];
            *v9 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v9;
          }
          v7[20] = 0;
          CustomFree(v7);
        }
      }
    }
    ++v1;
    v4 = (LightSetManager *)((char *)v4 + 4);
  }
  while ( v1 != 5 );
  v10 = 0;
  do
  {
    v11 = *((_DWORD **)v3 + 50);
    ++v10;
    *((_DWORD *)v3 + 50) = 0;
    if ( v11 )
    {
      v8 = (*v11)-- == 1;
      if ( v8 )
      {
        if ( !*((_BYTE *)v11 + 84) )
        {
          v12 = (_DWORD *)v11[20];
          *v12 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v12;
        }
        v11[20] = 0;
        CustomFree(v11);
      }
    }
    v3 = (LightSetManager *)((char *)v3 + 4);
  }
  while ( v10 != 5 );
  *((_DWORD *)this + 104) = 0;
}


// ===== 40ccd0 LightSetManager::~LightSetManager() =====
void __fastcall LightSetManager::~LightSetManager(LightSetManager *this)
{
  void *v2; // r0
  LightSetManager *v3; // r4
  LightSetManager *v4; // r6
  void (__fastcall **v5)(char *); // t1
  LightSetManager *v6; // r6
  void (__fastcall **v7)(char *); // t1
  LightSetManager *v8; // r4
  int v9; // r3
  void *v10; // r0
  bool v11; // zf
  _DWORD *v12; // r1
  int v13; // r3
  void *v14; // r0
  _DWORD *v15; // r1
  char *v16; // r6
  char *v17; // r4
  char *v18; // r3
  void *v19; // r0
  size_t v20; // r1

  v2 = *((void **)this + 100);
  if ( v2 )
    GlitchFree(v2);
  v3 = (LightSetManager *)((char *)this + 284);
  if ( this != (LightSetManager *)-284 )
  {
    v4 = (LightSetManager *)((char *)this + 364);
    do
    {
      v5 = *((void (__fastcall ***)(char *))v4 - 5);
      v4 = (LightSetManager *)((char *)v4 - 20);
      (*v5)((char *)v4);
    }
    while ( v4 != v3 );
  }
  v6 = (LightSetManager *)((char *)this + 220);
  if ( this != (LightSetManager *)-220 )
  {
    do
    {
      v7 = *((void (__fastcall ***)(char *))v3 - 2);
      v3 = (LightSetManager *)((char *)v3 - 8);
      (*v7)((char *)v3);
    }
    while ( v3 != v6 );
  }
  v8 = (LightSetManager *)((char *)this + 200);
  if ( this != (LightSetManager *)-200 )
  {
    do
    {
      v9 = *((_DWORD *)v6 - 1);
      if ( v9 )
      {
        v10 = *((void **)v6 - 1);
        v11 = (*(_DWORD *)v9)-- == 1;
        if ( v11 )
        {
          if ( !*(_BYTE *)(v9 + 84) )
          {
            v12 = *(_DWORD **)(v9 + 80);
            *v12 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v12;
          }
          *(_DWORD *)(v9 + 80) = 0;
          CustomFree(v10);
        }
      }
      v6 = (LightSetManager *)((char *)v6 - 4);
    }
    while ( v6 != v8 );
  }
  if ( this != (LightSetManager *)-120 )
  {
    do
    {
      v13 = *((_DWORD *)v8 - 1);
      if ( v13 )
      {
        v14 = *((void **)v8 - 1);
        v11 = (*(_DWORD *)v13)-- == 1;
        if ( v11 )
        {
          if ( !*(_BYTE *)(v13 + 84) )
          {
            v15 = *(_DWORD **)(v13 + 80);
            *v15 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v15;
          }
          *(_DWORD *)(v13 + 80) = 0;
          CustomFree(v14);
        }
      }
      v8 = (LightSetManager *)((char *)v8 - 4);
    }
    while ( v8 != (LightSetManager *)((char *)this + 120) );
  }
  v16 = (char *)this + 4;
  if ( this != (LightSetManager *)-4 )
  {
    v17 = (char *)this + 100;
    while ( 1 )
    {
      v17 -= 24;
      v18 = *((char **)v17 + 5);
      if ( v18 == v17 || !v18 )
        goto LABEL_28;
      v19 = *((void **)v17 + 5);
      v20 = *(_DWORD *)v17 - (_DWORD)v18;
      if ( v20 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v19, v20);
LABEL_28:
        if ( v17 == v16 )
          return;
      }
      else
      {
        CustomFree(v19);
        if ( v17 == v16 )
          return;
      }
    }
  }
}


// ===== 40ce60 LightSetManager::~LightSetManager() =====
void __fastcall LightSetManager::~LightSetManager(LightSetManager *this)
{
  void *v2; // r0
  LightSetManager *v3; // r4
  LightSetManager *v4; // r6
  void (__fastcall **v5)(char *); // t1
  LightSetManager *v6; // r6
  void (__fastcall **v7)(char *); // t1
  LightSetManager *v8; // r4
  int v9; // r3
  void *v10; // r0
  bool v11; // zf
  _DWORD *v12; // r1
  int v13; // r3
  void *v14; // r0
  _DWORD *v15; // r1
  char *v16; // r6
  char *v17; // r4
  char *v18; // r3
  void *v19; // r0
  size_t v20; // r1

  v2 = *((void **)this + 100);
  if ( v2 )
    GlitchFree(v2);
  v3 = (LightSetManager *)((char *)this + 284);
  if ( this != (LightSetManager *)-284 )
  {
    v4 = (LightSetManager *)((char *)this + 364);
    do
    {
      v5 = *((void (__fastcall ***)(char *))v4 - 5);
      v4 = (LightSetManager *)((char *)v4 - 20);
      (*v5)((char *)v4);
    }
    while ( v4 != v3 );
  }
  v6 = (LightSetManager *)((char *)this + 220);
  if ( this != (LightSetManager *)-220 )
  {
    do
    {
      v7 = *((void (__fastcall ***)(char *))v3 - 2);
      v3 = (LightSetManager *)((char *)v3 - 8);
      (*v7)((char *)v3);
    }
    while ( v3 != v6 );
  }
  v8 = (LightSetManager *)((char *)this + 200);
  if ( this != (LightSetManager *)-200 )
  {
    do
    {
      v9 = *((_DWORD *)v6 - 1);
      if ( v9 )
      {
        v10 = *((void **)v6 - 1);
        v11 = (*(_DWORD *)v9)-- == 1;
        if ( v11 )
        {
          if ( !*(_BYTE *)(v9 + 84) )
          {
            v12 = *(_DWORD **)(v9 + 80);
            *v12 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v12;
          }
          *(_DWORD *)(v9 + 80) = 0;
          CustomFree(v10);
        }
      }
      v6 = (LightSetManager *)((char *)v6 - 4);
    }
    while ( v6 != v8 );
  }
  if ( this != (LightSetManager *)-120 )
  {
    do
    {
      v13 = *((_DWORD *)v8 - 1);
      if ( v13 )
      {
        v14 = *((void **)v8 - 1);
        v11 = (*(_DWORD *)v13)-- == 1;
        if ( v11 )
        {
          if ( !*(_BYTE *)(v13 + 84) )
          {
            v15 = *(_DWORD **)(v13 + 80);
            *v15 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v15;
          }
          *(_DWORD *)(v13 + 80) = 0;
          CustomFree(v14);
        }
      }
      v8 = (LightSetManager *)((char *)v8 - 4);
    }
    while ( v8 != (LightSetManager *)((char *)this + 120) );
  }
  v16 = (char *)this + 4;
  if ( this != (LightSetManager *)-4 )
  {
    v17 = (char *)this + 100;
    while ( 1 )
    {
      v17 -= 24;
      v18 = *((char **)v17 + 5);
      if ( v18 == v17 || !v18 )
        goto LABEL_28;
      v19 = *((void **)v17 + 5);
      v20 = *(_DWORD *)v17 - (_DWORD)v18;
      if ( v20 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v19, v20);
LABEL_28:
        if ( v17 == v16 )
          return;
      }
      else
      {
        CustomFree(v19);
        if ( v17 == v16 )
          return;
      }
    }
  }
}


// ===== 40cff0 LightSetManager::InitLightFilter(std::vector<bool,std::allocator<bool>> &,bool) =====
int __fastcall LightSetManager::InitLightFilter(int a1, int *a2, int a3)
{
  int v3; // r3
  int v4; // r6
  int v5; // r12
  int v6; // r7
  unsigned int v8; // r2
  unsigned int v10; // r8
  int v11; // r6
  int *v12; // r7
  int v13; // r3
  bool v14; // zf
  int v15; // r2
  int v16; // r8
  int v17; // r2
  int v18; // r8
  int v19; // r2
  int v20; // r2
  int v21; // r3
  int v22; // r0
  bool v23; // nf
  int v24; // r3
  int v25; // r3
  int result; // r0
  int *v27; // r7
  int v28; // r1
  int v29; // r3
  int v30; // r12
  int v31; // lr
  int *v32; // r1
  unsigned int v33; // r9
  unsigned int v34; // r2
  unsigned int v35; // r9
  int *v36; // r0
  int v37; // lr
  int *v38; // r3
  int *v39; // r1
  unsigned int v40; // r2
  bool v41; // zf
  int v42; // r0
  int v43; // r3
  int v44; // r12
  void *v45; // r0
  int *v46; // r2
  size_t v47; // r1
  int v48[3]; // [sp+8h] [bp-A8h] BYREF
  int *v49[2]; // [sp+14h] [bp-9Ch] BYREF
  int v50[2]; // [sp+1Ch] [bp-94h] BYREF
  int v51[2]; // [sp+24h] [bp-8Ch] BYREF
  int *v52[2]; // [sp+2Ch] [bp-84h] BYREF
  int *v53[2]; // [sp+34h] [bp-7Ch] BYREF
  int v54[2]; // [sp+3Ch] [bp-74h] BYREF
  int v55[2]; // [sp+44h] [bp-6Ch] BYREF
  _DWORD v56[2]; // [sp+4Ch] [bp-64h] BYREF
  _DWORD v57[2]; // [sp+54h] [bp-5Ch] BYREF
  _DWORD v58[2]; // [sp+5Ch] [bp-54h] BYREF
  int v59[2]; // [sp+64h] [bp-4Ch] BYREF
  int *v60[2]; // [sp+6Ch] [bp-44h] BYREF
  int *v61; // [sp+74h] [bp-3Ch] BYREF
  int v62; // [sp+78h] [bp-38h]
  int *v63[2]; // [sp+7Ch] [bp-34h] BYREF
  int v64[2]; // [sp+84h] [bp-2Ch] BYREF
  int v65[2]; // [sp+8Ch] [bp-24h] BYREF
  int *v66[2]; // [sp+94h] [bp-1Ch] BYREF
  int v67[2]; // [sp+9Ch] [bp-14h] BYREF
  _DWORD v68[2]; // [sp+A4h] [bp-Ch] BYREF

  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  v8 = v5 - v3 + 8 * (v4 - *a2);
  if ( v8 > 5 )
  {
    v67[0] = *a2;
    v67[1] = v3;
    std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(v68, v67, 5);
    v30 = a2[2];
    v31 = a2[3];
    v66[0] = (int *)v68[0];
    v65[0] = v30;
    v65[1] = v31;
    v66[1] = (int *)v68[1];
    v64[1] = v31;
    v64[0] = v30;
    std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
      v63,
      v64,
      v65,
      v66);
    v32 = v63[0];
    v3 = a2[1];
    a2[3] = (int)v63[1];
    a2[2] = (int)v32;
    v6 = *a2;
  }
  else
  {
    v10 = 5 - v8;
    v62 = a2[3];
    v61 = (int *)v4;
    if ( v8 != 5 )
    {
      if ( v10 > 8 * (a2[4] - v6) - v3 - v8 )
      {
        v33 = v8 + 31;
        if ( v10 < v8 )
          v34 = v33 + v8;
        else
          v34 = v33 + v10;
        v35 = v34 >> 5;
        v36 = (int *)std::allocator<unsigned int>::allocate((int)(a2 + 4), v34 >> 5);
        v37 = *a2;
        v55[1] = a2[1];
        v6 = (int)v36;
        v54[0] = (int)v61;
        v54[1] = v62;
        v53[1] = nullptr;
        v55[0] = v37;
        v53[0] = v36;
        std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
          v60,
          v55,
          v54,
          v53);
        v38 = v60[1];
        v39 = v60[0];
        v40 = v10;
        do
        {
          v41 = v38 == (int *)((char *)&dword_1C + 3);
          --v40;
          v42 = *v39 & ~(1 << (char)v38);
          if ( v38 != (int *)((char *)&dword_1C + 3) )
            v38 = (int *)((char *)v38 + 1);
          *v39 = v42;
          if ( v41 )
          {
            v38 = nullptr;
            ++v39;
          }
        }
        while ( v40 );
        v43 = a2[2];
        v44 = a2[3];
        v51[0] = (int)v61;
        v51[1] = v62;
        v50[0] = v43;
        v50[1] = v44;
        std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(v49, (int *)v60, v10);
        std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
          v52,
          v51,
          v50,
          v49);
        v45 = (void *)*a2;
        v46 = v52[0];
        v14 = *a2 == 0;
        a2[3] = (int)v52[1];
        a2[2] = (int)v46;
        if ( !v14 )
        {
          v47 = (a2[4] - (_DWORD)v45) & 0xFFFFFFFC;
          if ( v47 > 0x80 )
            CustomFree(v45);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v45, v47);
        }
        v3 = 0;
        a2[4] = v6 + 4 * v35;
        a2[1] = 0;
        *a2 = v6;
      }
      else
      {
        v58[0] = v4;
        v58[1] = v5;
        v59[0] = v4;
        v59[1] = v5;
        std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(v57, a2 + 2, 5 - v8);
        std::priv::__copy_backward<std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,int>(
          v48,
          v59,
          v58,
          (int)v57);
        v11 = v62;
        v12 = v61;
        std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>::operator+(v56, (int *)&v61, v10);
        v13 = v56[1] - v11 + 8 * (v56[0] - (_DWORD)v12);
        if ( v13 > 0 )
        {
          do
          {
            v14 = v11 == 31;
            v15 = *v12 & ~(1 << v11);
            if ( v11 != 31 )
              ++v11;
            *v12 = v15;
            if ( v14 )
            {
              v11 = 0;
              ++v12;
            }
            --v13;
          }
          while ( v13 );
        }
        v16 = v10 + a2[3];
        v17 = v16 + 31;
        if ( v16 >= 0 )
          v17 = v16;
        v18 = v16 % 32;
        v19 = a2[2] + 4 * (v17 >> 5);
        v3 = a2[1];
        v6 = *a2;
        a2[2] = v19;
        if ( v18 >= 0 )
        {
          a2[3] = v18;
        }
        else
        {
          a2[3] = v18 + 32;
          a2[2] = v19 - 4;
        }
      }
    }
  }
  v20 = 0;
  while ( 1 )
  {
    v21 = v20 + v3;
    v22 = v21 + 31;
    if ( v21 >= 0 )
      v22 = v21;
    v24 = v21 % 32;
    v23 = v24 < 0;
    v25 = 1 << (v24 + (v24 < 0 ? 0x20 : 0));
    result = v22 >> 5;
    ++v20;
    v27 = (int *)(v6 + 4 * result);
    if ( v23 )
      --v27;
    v28 = *v27;
    v29 = a3 ? v28 | v25 : v28 & ~v25;
    *v27 = v29;
    if ( v20 == 5 )
      break;
    v3 = a2[1];
    v6 = *a2;
  }
  return result;
}


// ===== 40d368 LightSetManager::SetLight(int,int,boost::intrusive_ptr<glitch::video::CLight> const&) =====
void __fastcall LightSetManager::SetLight(int a1, unsigned int a2, unsigned int a3, _DWORD **a4)
{
  int v8; // r1
  _DWORD *v9; // r3
  int v10; // r5
  int v11; // r7
  _DWORD *v12; // r0
  _DWORD *v14; // r2

  if ( a2 > 3 )
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
        "lightsetId >= 0 && lightsetId < MAX_NUM_LIGHTSET",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
        123);
    }
  }
  if ( a3 > 4 )
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
        "lightId >= 0 && lightId < MAX_NUM_LIGHT_PER_LIGHTSET",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\LightSetManager.cpp",
        124);
    }
  }
  v8 = 5 * a2;
  v9 = *(_DWORD **)(a1 + 4 * (5 * a2 + a3 + 30));
  v10 = 5 * a2;
  if ( v9 != *a4 )
  {
    *(_BYTE *)(a1 + v8 + a3 + 100) = 1;
    v9 = *a4;
  }
  v11 = v10 + a3 + 30;
  if ( v9 )
    ++*v9;
  v12 = *(_DWORD **)(a1 + 4 * v11);
  *(_DWORD *)(a1 + 4 * v11) = v9;
  if ( v12 )
  {
    if ( (*v12)-- == 1 )
    {
      if ( !*((_BYTE *)v12 + 84) )
      {
        v14 = (_DWORD *)v12[20];
        *v14 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v14;
      }
      v12[20] = 0;
      CustomFree(v12);
    }
  }
}


// ===== 40d520 LightSetManager::SetDummyLightOff(int,boost::intrusive_ptr<glitch::video::CLight> const&) =====
void __fastcall LightSetManager::SetDummyLightOff(int a1, int a2, int **a3)
{
  int v3; // r12
  int *v4; // r3
  int v5; // r1
  _DWORD *v6; // r12
  _DWORD *v8; // r1

  v4 = *a3;
  v5 = a2 + 50;
  if ( *a3 )
    v3 = *v4;
  if ( v4 )
    *v4 = v3 + 1;
  v6 = *(_DWORD **)(a1 + 4 * v5);
  *(_DWORD *)(a1 + 4 * v5) = v4;
  if ( v6 )
  {
    if ( (*v6)-- == 1 )
    {
      if ( !*((_BYTE *)v6 + 84) )
      {
        v8 = (_DWORD *)v6[20];
        *v8 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v8;
      }
      v6[20] = 0;
      CustomFree(v6);
    }
  }
}


// ===== 40d5a0 LightSetManager::Update(void) =====
void __fastcall LightSetManager::Update(LightSetManager *this)
{
  int v2; // r7
  LightSetManager *v3; // r6
  int v4; // r10
  float *v5; // r3
  int ClosestStaticLight; // r0
  int v7; // r8
  float *v8; // r5
  float v9; // r9
  void (__fastcall *v10)(int, float *); // [sp+0h] [bp-5Ch]
  float v11; // [sp+4h] [bp-58h]
  float v12[3]; // [sp+18h] [bp-44h] BYREF
  float v13[3]; // [sp+24h] [bp-38h] BYREF
  char *v14[3]; // [sp+30h] [bp-2Ch] BYREF
  std::string v15; // [sp+3Ch] [bp-20h] BYREF

  if ( *((int *)this + 98) > 0 && *((int *)this + 99) > 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x16u);
    v15._M_finish = (char *)memcpy(v15._M_start_of_storage._M_data, "EnablePlayerHeadLight", 0x15u) + 21;
    *v15._M_finish = 0;
    v2 = (unsigned __int8)DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15) ^ 1;
    if ( (std::string *)v15._M_start_of_storage._M_data != &v15 && v15._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v15._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v15._M_start_of_storage._M_data,
          v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data);
    }
    if ( v2 && *((int *)this + 99) > 0 )
    {
      v3 = this;
      v4 = 0;
      do
      {
        v14[0] = *((char **)v3 + 73);
        v14[1] = *((char **)v3 + 74);
        v14[2] = *((char **)v3 + 75);
        v5 = (float *)ObjectHandle::operator GameObject *(v14);
        if ( v5 )
        {
          v13[0] = v5[88];
          v13[1] = v5[89];
          v13[2] = v5[90];
          ClosestStaticLight = LightSetManager::GetClosestStaticLight((int)this, v13);
          v7 = *((_DWORD *)v3 + 72);
          v10 = *(void (__fastcall **)(int, float *))(*(_DWORD *)v7 + 164);
          v8 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(ClosestStaticLight + 4) + 160))(*(_DWORD *)(ClosestStaticLight + 4));
          v9 = v8[1] + 20.0;
          v11 = v8[2] + 20.0;
          v12[0] = *v8 + 20.0;
          v12[1] = v9;
          v12[2] = v11;
          v10(v7, v12);
        }
        ++v4;
        v3 = (LightSetManager *)((char *)v3 + 20);
      }
      while ( *((_DWORD *)this + 99) > v4 );
    }
  }
}


// ===== 40d7d4 LightSetManager::LightSetManager(void) =====
void __fastcall LightSetManager::LightSetManager(LightSetManager *this)
{
  int v1; // r7
  char *v3; // r6
  _DWORD *v4; // r3
  int v5; // r1
  char *v6; // r2
  char *v7; // r3
  _DWORD *v8; // r6
  ObjectHandle *v9; // r0
  LightSetManager *v10; // r9
  int i; // r11
  LightSetManager *v12; // r8
  int v13; // r6
  void **v14; // r7
  _DWORD *v15; // r0
  bool v16; // zf
  _DWORD *v17; // r2
  _DWORD *v18; // r0
  _DWORD *v19; // r2
  const char *v20; // r6
  size_t v21; // r0
  const char *v22; // r6
  size_t v23; // r0
  const char *v24; // r6
  size_t v25; // r0
  const char *v26; // r5
  size_t v27; // r0
  std::string *v28; // [sp+4h] [bp-8h]

  v1 = 0;
  v28 = (std::string *)((char *)this + 4);
  v3 = (char *)this + 4;
  do
  {
    *((_DWORD *)v3 + 4) = v3;
    *((_DWORD *)v3 + 5) = v3;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v3, 0x10u);
    v1 += 24;
    **((_BYTE **)v3 + 4) = 0;
    v3 += 24;
  }
  while ( v1 != 96 );
  v4 = (_DWORD *)((char *)this + 120);
  do
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4 += 5;
  }
  while ( v4 != (_DWORD *)((char *)this + 200) );
  v5 = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  v6 = (char *)this + 220;
  do
  {
    *(_DWORD *)&v6[v5] = off_967AF0;
    v7 = &v6[v5];
    v5 += 8;
    *((_DWORD *)v7 + 1) = 0;
  }
  while ( v5 != 64 );
  v8 = (_DWORD *)((char *)this + 284);
  do
  {
    *v8 = off_967B00;
    v8[1] = 0;
    v9 = (ObjectHandle *)(v8 + 2);
    v8 += 5;
    ObjectHandle::ObjectHandle(v9, nullptr);
  }
  while ( v8 != (_DWORD *)((char *)this + 364) );
  *((_DWORD *)this + 97) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_DWORD *)this + 95) = 0;
  *((_DWORD *)this + 96) = 0;
  *((_DWORD *)this + 93) = -915135488;
  *((_BYTE *)this + 413) = 1;
  *((_DWORD *)this + 91) = -915135488;
  *((_DWORD *)this + 92) = -915135488;
  *((_DWORD *)this + 98) = 0;
  *((_DWORD *)this + 99) = 0;
  *((_DWORD *)this + 100) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 1;
  *((_BYTE *)this + 414) = 0;
  *((_DWORD *)this + 104) = 0;
  v10 = this;
  for ( i = 0; i != 4; ++i )
  {
    v12 = this;
    v13 = 0;
    v14 = (void **)((char *)this + 20 * i + 120);
    do
    {
      v15 = *v14;
      *v14 = nullptr;
      if ( v15 )
      {
        v16 = (*v15)-- == 1;
        if ( v16 )
        {
          if ( !*((_BYTE *)v15 + 84) )
          {
            v17 = (_DWORD *)v15[20];
            *v17 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v17;
          }
          v15[20] = 0;
          CustomFree(v15);
        }
      }
      *((_BYTE *)v10 + v13 + 100) = 0;
      v18 = *((_DWORD **)v12 + 50);
      *((_DWORD *)v12 + 50) = 0;
      if ( v18 )
      {
        v16 = (*v18)-- == 1;
        if ( v16 )
        {
          if ( !*((_BYTE *)v18 + 84) )
          {
            v19 = (_DWORD *)v18[20];
            *v19 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v19;
          }
          v18[20] = 0;
          CustomFree(v18);
        }
      }
      ++v13;
      v12 = (LightSetManager *)((char *)v12 + 4);
      ++v14;
    }
    while ( v13 != 5 );
    v10 = (LightSetManager *)((char *)v10 + 5);
  }
  v20 = light_set_names[0];
  v21 = LC_API_STRLEN_0(light_set_names[0]);
  std::string::_M_assign(v28, v20, &v20[v21]);
  v22 = off_999780[0];
  v23 = LC_API_STRLEN_0(off_999780[0]);
  std::string::_M_assign((std::string *const)((char *)this + 28), v22, &v22[v23]);
  v24 = off_999784[0];
  v25 = LC_API_STRLEN_0(off_999784[0]);
  std::string::_M_assign((std::string *const)((char *)this + 52), v24, &v24[v25]);
  v26 = off_999788[0];
  v27 = LC_API_STRLEN_0(off_999788[0]);
  std::string::_M_assign((std::string *const)((char *)this + 76), v26, &v26[v27]);
}


// ===== 40daa8 LightSetManager::LightSetManager(void) =====
void __fastcall LightSetManager::LightSetManager(LightSetManager *this)
{
  int v1; // r7
  _DWORD *v3; // r6
  _DWORD *v4; // r3
  int v5; // r1
  char *v6; // r2
  char *v7; // r3
  _DWORD *v8; // r6
  ObjectHandle *v9; // r0
  LightSetManager *v10; // r9
  int i; // r11
  LightSetManager *v12; // r8
  int v13; // r6
  void **v14; // r7
  _DWORD *v15; // r0
  bool v16; // zf
  _DWORD *v17; // r2
  _DWORD *v18; // r0
  _DWORD *v19; // r2
  const char *v20; // r6
  size_t v21; // r0
  const char *v22; // r6
  size_t v23; // r0
  const char *v24; // r6
  size_t v25; // r0
  const char *v26; // r5
  size_t v27; // r0
  std::string *v28; // [sp+4h] [bp-8h]

  v1 = 0;
  v28 = (std::string *)((char *)this + 4);
  v3 = (_DWORD *)((char *)this + 4);
  do
  {
    v3[4] = v3;
    v3[5] = v3;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
    v1 += 24;
    *(_BYTE *)v3[4] = 0;
    v3 += 6;
  }
  while ( v1 != 96 );
  v4 = (_DWORD *)((char *)this + 120);
  do
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4 += 5;
  }
  while ( v4 != (_DWORD *)((char *)this + 200) );
  v5 = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  v6 = (char *)this + 220;
  do
  {
    *(_DWORD *)&v6[v5] = off_967AF0;
    v7 = &v6[v5];
    v5 += 8;
    *((_DWORD *)v7 + 1) = 0;
  }
  while ( v5 != 64 );
  v8 = (_DWORD *)((char *)this + 284);
  do
  {
    *v8 = off_967B00;
    v8[1] = 0;
    v9 = (ObjectHandle *)(v8 + 2);
    v8 += 5;
    ObjectHandle::ObjectHandle(v9, nullptr);
  }
  while ( v8 != (_DWORD *)((char *)this + 364) );
  *((_DWORD *)this + 97) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_DWORD *)this + 95) = 0;
  *((_DWORD *)this + 96) = 0;
  *((_DWORD *)this + 93) = -915135488;
  *((_BYTE *)this + 413) = 1;
  *((_DWORD *)this + 91) = -915135488;
  *((_DWORD *)this + 92) = -915135488;
  *((_DWORD *)this + 98) = 0;
  *((_DWORD *)this + 99) = 0;
  *((_DWORD *)this + 100) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 1;
  *((_BYTE *)this + 414) = 0;
  *((_DWORD *)this + 104) = 0;
  v10 = this;
  for ( i = 0; i != 4; ++i )
  {
    v12 = this;
    v13 = 0;
    v14 = (void **)((char *)this + 20 * i + 120);
    do
    {
      v15 = *v14;
      *v14 = nullptr;
      if ( v15 )
      {
        v16 = (*v15)-- == 1;
        if ( v16 )
        {
          if ( !*((_BYTE *)v15 + 84) )
          {
            v17 = (_DWORD *)v15[20];
            *v17 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v17;
          }
          v15[20] = 0;
          CustomFree(v15);
        }
      }
      *((_BYTE *)v10 + v13 + 100) = 0;
      v18 = *((_DWORD **)v12 + 50);
      *((_DWORD *)v12 + 50) = 0;
      if ( v18 )
      {
        v16 = (*v18)-- == 1;
        if ( v16 )
        {
          if ( !*((_BYTE *)v18 + 84) )
          {
            v19 = (_DWORD *)v18[20];
            *v19 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v19;
          }
          v18[20] = 0;
          CustomFree(v18);
        }
      }
      ++v13;
      v12 = (LightSetManager *)((char *)v12 + 4);
      ++v14;
    }
    while ( v13 != 5 );
    v10 = (LightSetManager *)((char *)v10 + 5);
  }
  v20 = light_set_names[0];
  v21 = LC_API_STRLEN_0(light_set_names[0]);
  std::string::_M_assign(v28, v20, &v20[v21]);
  v22 = off_999780[0];
  v23 = LC_API_STRLEN_0(off_999780[0]);
  std::string::_M_assign((std::string *const)((char *)this + 28), v22, &v22[v23]);
  v24 = off_999784[0];
  v25 = LC_API_STRLEN_0(off_999784[0]);
  std::string::_M_assign((std::string *const)((char *)this + 52), v24, &v24[v25]);
  v26 = off_999788[0];
  v27 = LC_API_STRLEN_0(off_999788[0]);
  std::string::_M_assign((std::string *const)((char *)this + 76), v26, &v26[v27]);
}


// ===== 40dd7c PlayerLightTweaker::GetIdsFromName(char const*) =====
unsigned int __fastcall PlayerLightTweaker::GetIdsFromName(PlayerLightTweaker *this, const char *a2)
{
  size_t v3; // r0
  unsigned int v4; // r4

  v3 = LC_API_STRLEN_0(a2);
  if ( a2[v3 - 3] == 91 && a2[v3 - 1] == 93 )
  {
    v4 = a2[v3] - 48;
    if ( v4 <= 4 )
      return v4;
  }
  else
  {
    v4 = -1;
  }
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "id > -1 && id < MAX_NUM_TWEAKABLE_LIGHTS",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\PlayerLightTweaker.cpp",
      121);
  }
  return v4;
}


// ===== 40de48 PlayerLightTweaker::onSetValue(std::string const&) =====
void __fastcall PlayerLightTweaker::onSetValue(PlayerLightTweaker *this, const std::string *a2)
{
  char *M_data; // r6
  int v4; // r3
  int v5; // r0
  int v6; // r3
  float *v7; // r5
  float v8; // r2
  float v9; // r3
  int v10; // r6
  _DWORD *v11; // r4
  int v12; // r6
  char *v13; // r7
  int v14; // r8
  int v15; // r7
  int v16; // r6
  _DWORD *v17; // r4
  int v18; // r6
  char *v19; // r7
  int v20; // r8
  int v21; // r7
  int v22; // r3
  _DWORD *v23; // r4
  unsigned __int8 *v24; // r5
  int v25; // r7
  int v26; // r6
  int v27; // r1
  int v28; // r0
  Level *v29; // r0
  Level *v30; // r4
  int v31; // r7
  int v32; // r6
  Level *v33; // r0
  Level *v34; // r4
  float v35; // r7
  float v36; // r6
  float v37; // r5
  float *LevelConfig; // r0
  float *v39; // r0
  Level *CurrentLevel; // r0
  _DWORD *v41; // r3
  int v42[3]; // [sp+0h] [bp-38h] BYREF
  int v43[3]; // [sp+Ch] [bp-2Ch] BYREF
  int v44[3]; // [sp+18h] [bp-20h] BYREF
  float v45[3]; // [sp+24h] [bp-14h] BYREF
  _DWORD v46[2]; // [sp+30h] [bp-8h] BYREF

  M_data = a2->_M_start_of_storage._M_data;
  if ( LC_API_STRNCMP_0("m_attenuation", M_data, 0xDu) )
  {
    if ( LC_API_STRNCMP_0("m_ambientColor", M_data, 0xEu) )
    {
      if ( LC_API_STRNCMP_0("m_diffuseColor", M_data, 0xEu) )
      {
        if ( LC_API_STRNCMP_0("m_specularColor", M_data, 0xFu) )
        {
          if ( LC_API_STRNCMP_0("m_fogColor", M_data, 0xAu) )
          {
            if ( LC_API_STRNCMP_0("m_fogStart", M_data, 0xAu) && LC_API_STRNCMP_0("m_fogEnd", M_data, 8u) )
            {
              if ( !LC_API_STRNCMP_0("m_fogDirectionMask", M_data, 0x12u) )
              {
                CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
                v41 = *(_DWORD **)(dword_99F73C + 28);
                v41[278] = *((_DWORD *)this + 71);
                v41[279] = *((_DWORD *)this + 72);
                v41[280] = *((_DWORD *)this + 73);
                if ( CurrentLevel )
                  Level::EnableFog(CurrentLevel, nullptr);
              }
            }
            else
            {
              v27 = *((_DWORD *)this + 69);
              v28 = *(_DWORD *)(dword_99F73C + 16);
              v46[0] = *((_DWORD *)this + 68);
              v46[1] = v27;
              glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
                *(_DWORD *)(v28 + 228),
                (unsigned __int16)(*(_WORD *)(v28 + 250) + 2),
                0,
                v46);
              v29 = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
              v30 = v29;
              if ( v29 )
              {
                v31 = (int)*((float *)this + 68);
                v32 = (int)*((float *)this + 69);
                *(_DWORD *)(Level::GetLevelConfig(v29) + 472) = v31;
                *(_DWORD *)(Level::GetLevelConfig(v30) + 476) = v32;
                if ( *((float *)this + 69) > 0.0 && *((float *)this + 70) == 0.0 )
                {
                  *((_DWORD *)this + 70) = 1065353216;
                  Level::EnableFog(v30, nullptr);
                }
              }
            }
          }
          else
          {
            glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
              *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20) + 228),
              *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20) + 250),
              0,
              (char *)this + 244);
            v33 = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            v34 = v33;
            if ( v33 )
            {
              v35 = (float)*((unsigned __int8 *)this + 244);
              v36 = (float)*((unsigned __int8 *)this + 245);
              v37 = (float)*((unsigned __int8 *)this + 246);
              LevelConfig = (float *)Level::GetLevelConfig(v33);
              LevelConfig[122] = v37;
              LevelConfig[120] = v35;
              LevelConfig[121] = v36;
              v39 = (float *)Level::GetLevelConfig(v34);
              v39[125] = v37;
              v39[123] = v35;
              v39[124] = v36;
            }
          }
        }
        else
        {
          v16 = M_data[16];
          v17 = *((_DWORD **)this + v16 + 26);
          if ( v17 )
          {
            v18 = v16 + 8;
            v19 = (char *)this + 4 * v18;
            *(float *)&v20 = (float)(unsigned __int8)v19[1] / 255.0;
            *(float *)&v21 = (float)(unsigned __int8)v19[2] / 255.0;
            *(float *)v42 = (float)*((unsigned __int8 *)this + 4 * v18) / 255.0;
            v42[1] = v20;
            v42[2] = v21;
            LightBase::SetSpecularColor(v17, v42);
          }
        }
      }
      else
      {
        v22 = M_data[15];
        v23 = *((_DWORD **)this + v22 + 26);
        if ( v23 )
        {
          v24 = (unsigned __int8 *)this + 4 * v22 + 8;
          *(float *)&v25 = (float)v24[5] / 255.0;
          *(float *)&v26 = (float)v24[6] / 255.0;
          *(float *)v43 = (float)v24[4] / 255.0;
          v43[1] = v25;
          v43[2] = v26;
          LightBase::SetDiffuseColor(v23, v43);
        }
      }
    }
    else
    {
      v10 = M_data[15];
      v11 = *((_DWORD **)this + v10 + 26);
      if ( v11 )
      {
        v12 = v10 - 2;
        v13 = (char *)this + 4 * v12;
        *(float *)&v14 = (float)(unsigned __int8)v13[1] / 255.0;
        *(float *)&v15 = (float)(unsigned __int8)v13[2] / 255.0;
        *(float *)v44 = (float)*((unsigned __int8 *)this + 4 * v12) / 255.0;
        v44[1] = v14;
        v44[2] = v15;
        LightBase::SetAmbientColor(v11, v44);
      }
    }
  }
  else
  {
    v4 = M_data[14];
    v5 = *((_DWORD *)this + v4 + 26);
    v6 = v4 - 48;
    if ( v5 )
    {
      v7 = (float *)((char *)this + 12 * v6);
      v8 = v7[32];
      v9 = v7[33];
      v45[0] = v7[31];
      v45[1] = v8;
      v45[2] = v9;
      LightBase::SetAttenuation(v5, v45);
    }
  }
}


// ===== 40e2a8 `global constructor keyed to'.._.._sources_Game_Lights_PlayerLightTweaker.cpp =====
int `global constructor keyed to'.._.._sources_Game_Lights_PlayerLightTweaker.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3210 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A320C = 1056964608;
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


// ===== 40e384 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::basic_ostringstream(int) [clone] =====
int __fastcall std::ostringstream::basic_ostringstream(int a1)
{
  int v1; // r6
  int v3; // r2
  int v4; // r3

  v1 = a1 + 64;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 64));
  *(_DWORD *)(a1 + 64) = off_95B8E0;
  *(_BYTE *)(v1 + 68) = 0;
  *(_DWORD *)(v1 + 72) = 0;
  *(_DWORD *)(v1 + 76) = 0;
  *(_DWORD *)a1 = off_95B88C;
  *(int *)((char *)&dword_40 + a1) = (int)off_95B8A0;
  std::ios::init(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12), 0, (int)off_95B8A0, *(_DWORD *)a1);
  *(_DWORD *)a1 = off_95B864;
  *(_DWORD *)(a1 + 64) = off_95B878;
  std::stringbuf::basic_stringbuf((std::locale *)(a1 + 4), (std::_Locale_impl *)&word_10);
  std::ios::init(v1, a1 + 4, v3, v4);
  return a1;
}


// ===== 40e434 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(float *,float const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 40e4c4 PlayerLightTweaker::~PlayerLightTweaker() =====
void __fastcall PlayerLightTweaker::~PlayerLightTweaker(PlayerLightTweaker *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_967B10;
  v2 = (char *)this + 248;
  v3 = *((char **)this + 67);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  glitch::debugger::CTweakable::~CTweakable(this);
}


// ===== 40e518 PlayerLightTweaker::~PlayerLightTweaker() =====
void __fastcall PlayerLightTweaker::~PlayerLightTweaker(PlayerLightTweaker *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_967B10;
  v2 = (char *)this + 248;
  v3 = *((char **)this + 67);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  glitch::debugger::CTweakable::~CTweakable(this);
  CustomFree(this);
}


// ===== 40e574 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::video::SColorf const&,bool) [clone] =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, _DWORD *a2)
{
  _DWORD *v2; // r6
  _DWORD *v5; // r1
  _DWORD *v6; // r3
  _DWORD *v7; // r1
  _DWORD *v8; // r3
  _DWORD *v9; // r1
  _DWORD *v10; // r3
  _DWORD *v11; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v2 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 64) = 1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v2,
    "",
    "");
  v5 = *(_DWORD **)(a1 + 52);
  if ( v5 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v5,
      a2);
    v7 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v7 )
    {
LABEL_3:
      *v7 = a2[1];
      v8 = *(_DWORD **)(a1 + 56);
      v9 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v9;
      if ( v8 != v9 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v9,
        a2 + 2);
      v11 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v11 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v5 = *a2;
    v6 = *(_DWORD **)(a1 + 56);
    v7 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v7;
    if ( v6 != v7 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v7,
    a2 + 1);
  v9 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v9 )
    goto LABEL_8;
LABEL_4:
  *v9 = a2[2];
  v10 = *(_DWORD **)(a1 + 56);
  v11 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v11;
  if ( v10 != v11 )
  {
LABEL_5:
    *v11 = a2[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v11,
    a2 + 3);
  return a1;
}


// ===== 40e718 CameraBase::Activated(void) =====
void __fastcall CameraBase::Activated(CameraBase *this)
{
  ;
}


// ===== 40e71c CameraBase::Deactivated(void) =====
void __fastcall CameraBase::Deactivated(CameraBase *this)
{
  ;
}


// ===== 40e720 CameraBase::CameraBase(void) =====
void __fastcall CameraBase::CameraBase(CameraBase *this)
{
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967B30;
}


// ===== 40e750 CameraBase::CameraBase(void) =====
void __fastcall CameraBase::CameraBase(CameraBase *this)
{
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967B30;
}


// ===== 40e780 CameraBase::~CameraBase() =====
void __fastcall CameraBase::~CameraBase(CameraBase *this)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r3

  *(_DWORD *)this = off_967B30;
  if ( (CameraBase *)CameraBase::s_activeCamera == this )
    CameraBase::s_activeCamera = 0;
  v2 = *((_DWORD **)this + 1);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *((_DWORD *)this + 1) = 0;
  }
  v3 = *((_DWORD **)this + 2);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 12)));
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 40e814 CameraBase::~CameraBase() =====
void __fastcall CameraBase::~CameraBase(CameraBase *this)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r3

  *(_DWORD *)this = off_967B30;
  if ( (CameraBase *)CameraBase::s_activeCamera == this )
    CameraBase::s_activeCamera = 0;
  v2 = *((_DWORD **)this + 1);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *((_DWORD *)this + 1) = 0;
  }
  v3 = *((_DWORD **)this + 2);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 12)));
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 40e8a8 CameraBase::GetCameraLookAtVec(void) =====
_DWORD *__fastcall CameraBase::GetCameraLookAtVec(_DWORD *this, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4
  _DWORD *v4; // r0
  int v5; // r2
  int v6; // r3

  v2 = *(_DWORD *)(a2 + 8);
  v3 = this;
  if ( v2 )
  {
    v4 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 56))(*(_DWORD *)(a2 + 8));
    v5 = v4[4];
    v6 = v4[5];
    v3[2] = v4[6];
    *v3 = v5;
    v3[1] = v6;
    return v3;
  }
  else
  {
    *this = Vec3f_Origin;
    *(this + 1) = dword_99F858;
    *(this + 2) = dword_99F85C;
  }
  return this;
}


// ===== 40e928 CameraBase::GetCameraUpVec(void) =====
_DWORD *__fastcall CameraBase::GetCameraUpVec(_DWORD *this, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4
  _DWORD *v4; // r0
  int v5; // r2
  int v6; // r3

  v2 = *(_DWORD *)(a2 + 8);
  v3 = this;
  if ( v2 )
  {
    v4 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 56))(*(_DWORD *)(a2 + 8));
    v5 = v4[8];
    v6 = v4[9];
    v3[2] = v4[10];
    *v3 = v5;
    v3[1] = v6;
    return v3;
  }
  else
  {
    *this = Vec3f_Origin;
    *(this + 1) = dword_99F858;
    *(this + 2) = dword_99F85C;
  }
  return this;
}


// ===== 40e9a8 CameraBase::SetData(float,float,float,float,bool) =====
int __fastcall CameraBase::SetData(int this, float a2, float a3, float a4, float a5, bool a6)
{
  int v6; // r12
  int v7; // r4
  int v10; // r0
  int (__fastcall *v11)(int, _DWORD *); // r3
  _DWORD v12[3]; // [sp+4h] [bp-Ch] BYREF

  v6 = *(_DWORD *)(this + 8);
  v7 = this;
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v6 + 316))(*(_DWORD *)(this + 8), LODWORD(a2));
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v7 + 8) + 312))(*(_DWORD *)(v7 + 8), LODWORD(a3));
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v7 + 8) + 304))(*(_DWORD *)(v7 + 8), LODWORD(a4));
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v7 + 8) + 308))(*(_DWORD *)(v7 + 8), LODWORD(a5));
    v10 = *(_DWORD *)(v7 + 8);
    v11 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v10 + 276);
    v12[1] = 0;
    v12[2] = 1065353216;
    v12[0] = 0;
    return v11(v10, v12);
  }
  return this;
}


// ===== 40ea50 CameraBase::Update(void) =====
void __fastcall CameraBase::Update(CameraBase *this)
{
  ;
}


// ===== 40ea54 glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(glitch::core::detail::CMatrix4Base<float> const&,glitch::core::detail::CMatrix4Base<float> const&) =====
int __fastcall glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(int result, float *a2, float *a3)
{
  *(float *)result = (float)((float)((float)(*a2 * *a3) + (float)(a2[4] * a3[1])) + (float)(a2[8] * a3[2]))
                   + (float)(a2[12] * a3[3]);
  *(float *)(result + 4) = (float)((float)((float)(a2[1] * *a3) + (float)(a2[5] * a3[1])) + (float)(a2[9] * a3[2]))
                         + (float)(a2[13] * a3[3]);
  *(float *)(result + 8) = (float)((float)((float)(a2[2] * *a3) + (float)(a2[6] * a3[1])) + (float)(a2[10] * a3[2]))
                         + (float)(a2[14] * a3[3]);
  *(float *)(result + 12) = (float)((float)((float)(a2[3] * *a3) + (float)(a2[7] * a3[1])) + (float)(a2[11] * a3[2]))
                          + (float)(a2[15] * a3[3]);
  *(float *)(result + 16) = (float)((float)((float)(*a2 * a3[4]) + (float)(a2[4] * a3[5])) + (float)(a2[8] * a3[6]))
                          + (float)(a2[12] * a3[7]);
  *(float *)(result + 20) = (float)((float)((float)(a2[1] * a3[4]) + (float)(a2[5] * a3[5])) + (float)(a2[9] * a3[6]))
                          + (float)(a2[13] * a3[7]);
  *(float *)(result + 24) = (float)((float)((float)(a2[2] * a3[4]) + (float)(a2[6] * a3[5])) + (float)(a2[10] * a3[6]))
                          + (float)(a2[14] * a3[7]);
  *(float *)(result + 28) = (float)((float)((float)(a2[3] * a3[4]) + (float)(a2[7] * a3[5])) + (float)(a2[11] * a3[6]))
                          + (float)(a2[15] * a3[7]);
  *(float *)(result + 32) = (float)((float)((float)(*a2 * a3[8]) + (float)(a2[4] * a3[9])) + (float)(a2[8] * a3[10]))
                          + (float)(a2[12] * a3[11]);
  *(float *)(result + 36) = (float)((float)((float)(a2[1] * a3[8]) + (float)(a2[5] * a3[9])) + (float)(a2[9] * a3[10]))
                          + (float)(a2[13] * a3[11]);
  *(float *)(result + 40) = (float)((float)((float)(a2[2] * a3[8]) + (float)(a2[6] * a3[9])) + (float)(a2[10] * a3[10]))
                          + (float)(a2[14] * a3[11]);
  *(float *)(result + 44) = (float)((float)((float)(a2[3] * a3[8]) + (float)(a2[7] * a3[9])) + (float)(a2[11] * a3[10]))
                          + (float)(a2[15] * a3[11]);
  *(float *)(result + 48) = (float)((float)((float)(*a2 * a3[12]) + (float)(a2[4] * a3[13])) + (float)(a2[8] * a3[14]))
                          + (float)(a2[12] * a3[15]);
  *(float *)(result + 52) = (float)((float)((float)(a2[1] * a3[12]) + (float)(a2[5] * a3[13])) + (float)(a2[9] * a3[14]))
                          + (float)(a2[13] * a3[15]);
  *(float *)(result + 56) = (float)((float)((float)(a2[2] * a3[12]) + (float)(a2[6] * a3[13])) + (float)(a2[10] * a3[14]))
                          + (float)(a2[14] * a3[15]);
  *(float *)(result + 60) = (float)((float)((float)(a2[3] * a3[12]) + (float)(a2[7] * a3[13])) + (float)(a2[11] * a3[14]))
                          + (float)(a2[15] * a3[15]);
  *(_BYTE *)(result + 64) = 0;
  return result;
}


// ===== 40f0b4 glitch::core::plane3d<float>::getIntersectionWithLimitedLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float>&) =====
bool __fastcall glitch::core::plane3d<float>::getIntersectionWithLimitedLine(int a1, float *a2, float *a3, float *a4)
{
  float v7; // r7
  float v8; // r8
  float v9; // r8
  float v10; // r7
  float v11; // r9
  float v12; // r4
  float v13; // r11
  float v14; // r10
  float v15; // r5
  float v16; // r0
  float v17; // r8
  float v18; // r6
  float v20; // [sp+0h] [bp-1Ch]
  float v21; // [sp+4h] [bp-18h]
  float v22[4]; // [sp+Ch] [bp-10h] BYREF

  v7 = a3[1] - a2[1];
  v8 = a3[2] - a2[2];
  v22[0] = *a3 - *a2;
  v22[1] = v7;
  v22[2] = v8;
  if ( !glitch::core::plane3d<float>::getIntersectionWithLine(a1, a2, v22, a4) )
    return 0;
  v9 = *a2;
  v20 = *a3;
  v10 = a2[1];
  v11 = *a3 - *a2;
  v21 = a3[1];
  v12 = a2[2];
  v13 = a3[2];
  v14 = *a4;
  v15 = (float)((float)(v11 * v11) + (float)((float)(v21 - v10) * (float)(v21 - v10)))
      + (float)((float)(v13 - v12) * (float)(v13 - v12));
  v16 = *a4 - v9;
  v17 = a4[1];
  v18 = a4[2];
  return v15 >= (float)((float)((float)(v16 * v16) + (float)((float)(v17 - v10) * (float)(v17 - v10)))
                      + (float)((float)(v18 - v12) * (float)(v18 - v12)))
      && v15 >= (float)((float)((float)((float)(v14 - v20) * (float)(v14 - v20))
                              + (float)((float)(v17 - v21) * (float)(v17 - v21)))
                      + (float)((float)(v18 - v13) * (float)(v18 - v13)));
}


// ===== 40f2f0 CameraBase::GetWorldCoord(Point2D<int> const&,Point3D<float> &,float) =====
int __fastcall CameraBase::GetWorldCoord(int *a1, int a2, float a3)
{
  int v4; // r6
  int v6; // r1
  void (__fastcall *v7)(_BYTE *, int, _DWORD *, _DWORD); // r12
  _BYTE v9[12]; // [sp+0h] [bp-30h] BYREF
  _BYTE v10[12]; // [sp+Ch] [bp-24h] BYREF
  _DWORD v11[4]; // [sp+18h] [bp-18h] BYREF
  _DWORD v12[2]; // [sp+28h] [bp-8h] BYREF

  v4 = *a1;
  v6 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 44);
  v7 = *(void (__fastcall **)(_BYTE *, int, _DWORD *, _DWORD))(*(_DWORD *)v6 + 20);
  v12[1] = a1[1];
  v12[0] = v4;
  v7(v9, v6, v12, 0);
  v11[2] = 1065353216;
  v11[0] = 0;
  v11[1] = 0;
  v11[3] = COERCE_INT(a3 + 0.0) + 0x80000000;
  return glitch::core::plane3d<float>::getIntersectionWithLimitedLine(v11, v9, v10, a2);
}


// ===== 40f394 CameraBase::GetWorldCoord(Point2D<float> const&,Point3D<float> &,float) =====
int __fastcall CameraBase::GetWorldCoord(float *a1, int a2, int a3)
{
  float v4; // r0
  int v5; // r6
  int v7; // [sp+0h] [bp-8h] BYREF
  int v8; // [sp+4h] [bp-4h]

  v4 = *a1;
  v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 204) - 4);
  v8 = 0;
  v7 = 0;
  v7 = (int)(float)((float)((float)(v4 + 1.0) * 0.5) * (float)*(int *)(v5 + 12));
  v8 = (int)(float)((float)((float)(a1[1] + 1.0) * 0.5) * (float)*(int *)(v5 + 16));
  return ((int (__fastcall *)(int *, int, int))CameraBase::GetWorldCoord)(&v7, a2, a3);
}


// ===== 40f45c CameraBase::SetActive(void) =====
int __fastcall CameraBase::SetActive(int this)
{
  int v1; // r6

  v1 = this;
  if ( CameraBase::s_activeCamera != this )
  {
    if ( CameraBase::s_activeCamera )
      (*(void (__fastcall **)(int))(*(_DWORD *)CameraBase::s_activeCamera + 12))(CameraBase::s_activeCamera);
    CameraBase::s_activeCamera = v1;
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      *(glitch::scene::ICameraSceneNode **)(v1 + 8));
    return (*(int (__fastcall **)(int))(*(_DWORD *)CameraBase::s_activeCamera + 8))(CameraBase::s_activeCamera);
  }
  return this;
}


// ===== 40f4dc CameraBase::GetCenterOffset(Point3D<float> &,float) =====
int __fastcall CameraBase::GetCenterOffset(int a1, int a2, float a3)
{
  int v3; // r3
  int v8; // r0
  float v9; // r7
  float v10; // r8
  float v11; // r10
  int v12; // r4
  float v13; // r8
  float v14; // r6
  float v15; // r7
  float v16; // r8
  float v17; // r6
  float *v18; // r4
  float v19; // r0
  int v20; // [sp+4h] [bp-30h]
  _DWORD v21[3]; // [sp+Ch] [bp-28h] BYREF
  _DWORD v22[3]; // [sp+18h] [bp-1Ch] BYREF
  _BYTE v23[8]; // [sp+24h] [bp-10h] BYREF
  float v24; // [sp+2Ch] [bp-8h]

  v3 = *(_DWORD *)(a1 + 8);
  if ( !v3 )
    return 0;
  v8 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 56))(*(_DWORD *)(a1 + 8));
  v9 = *(float *)(v8 + 20);
  v10 = *(float *)(v8 + 16);
  v20 = *(_DWORD *)(v8 + 24);
  *(float *)a2 = v10;
  *(float *)(a2 + 4) = v9;
  *(_DWORD *)(a2 + 8) = 0;
  if ( fabs((float)((float)(v10 * v10) + (float)(v9 * v9)) + 0.0) >= 0.0001 )
  {
    glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v23);
    v11 = v24 - a3;
    v21[2] = v20;
    v22[0] = Vec3f_K + 0x80000000;
    v22[1] = dword_99F87C + 0x80000000;
    *(float *)v21 = v10;
    *(float *)&v21[1] = v9;
    v22[2] = dword_99F880 + 0x80000000;
    v12 = Point3D<float>::angle(v21, v22) & 0x7FFFFFFF;
    v13 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 8) + 296))(*(_DWORD *)(a1 + 8)));
    v14 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 8) + 296))(*(_DWORD *)(a1 + 8)));
    v15 = tanf(*(float *)&v12);
    v16 = tanf((float)(v13 * 0.5) + *(float *)&v12);
    v17 = (float)(v15 - tanf((float)(v14 * -0.5) + *(float *)&v12)) * v11;
    v18 = (float *)Point3D<float>::normalize(a2);
    v19 = (float)((float)(v17 + (float)((float)(v16 - v15) * v11)) * 0.5) - v17;
    *v18 = *v18 * v19;
    v18[1] = v18[1] * v19;
    v18[2] = v18[2] * v19;
  }
  return 1;
}


// ===== 40f6f8 CameraBase::~CameraBase() =====
void __fastcall CameraBase::~CameraBase(CameraBase *this)
{
  CameraBase::~CameraBase(this);
  CustomFree(this);
}


// ===== 40f714 CameraBase::GetScreenCoord(Point3D<float> const&,Point2D<float> &) =====
float __fastcall CameraBase::GetScreenCoord(int a1, float *a2)
{
  float *v4; // r10
  float *v5; // r8
  float v6; // r3
  int v7; // lr
  float result; // r0
  float v9[16]; // [sp+4h] [bp-58h] BYREF
  char v10; // [sp+44h] [bp-18h]
  float v11; // [sp+48h] [bp-14h] BYREF
  float v12; // [sp+4Ch] [bp-10h]
  int v13; // [sp+50h] [bp-Ch]
  float v14; // [sp+54h] [bp-8h]

  v4 = (float *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 16) + 112))(
                  *(_DWORD *)(dword_99F73C + 16),
                  0);
  v5 = (float *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(dword_99F73C + 16) + 112))(
                  *(_DWORD *)(dword_99F73C + 16),
                  2);
  LC_API_MEMSET_0(v9, 0, 0x40u);
  v6 = *(float *)(a1 + 4);
  v7 = *(_DWORD *)(a1 + 8);
  v11 = *(float *)a1;
  v12 = v6;
  v13 = v7;
  v9[0] = 1.0;
  v9[5] = 1.0;
  v9[10] = 1.0;
  v9[15] = 1.0;
  v14 = 1.0;
  v10 = 1;
  glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck((int)v9, v5, v4);
  glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(v9, &v11);
  result = (float)(1.0 / v14) * v12;
  *a2 = (float)(1.0 / v14) * v11;
  a2[1] = result;
  return result;
}


// ===== 40f81c `global constructor keyed to'.._.._sources_Game_Cameras_CameraBase.cpp =====
int `global constructor keyed to'.._.._sources_Game_Cameras_CameraBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A321C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3218 = 1056964608;
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


// ===== 40f8f8 CameraLevel::__Callback(glitch::scene::ITimelineController *,void *) =====
void __fastcall CameraLevel::__Callback(int a1, int a2)
{
  *(_BYTE *)(a2 + 132) = 0;
}


// ===== 40f904 CameraLevel::PlayAnim(int,int,bool) =====
int __fastcall CameraLevel::PlayAnim(CameraLevel *this, int a2, int a3, int a4)
{
  int result; // r0
  int v7; // r3
  int v8; // r3

  result = *((_DWORD *)this + 17);
  v7 = *(_DWORD *)(result + 56);
  if ( v7 )
  {
    *(_DWORD *)(v7 + 12) = a3;
    *(_BYTE *)(v7 + 16) = 0;
    result = (*(int (__fastcall **)(int, int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28))(v7, a2, 0, 0, 0);
    if ( result )
    {
      v8 = 1;
      *((_BYTE *)this + 132) = 1;
      if ( !a4 )
      {
        *((_DWORD *)this + 34) = 0;
        v8 = 1065353216;
      }
      *((_BYTE *)this + 164) = a4;
      if ( !a4 )
        *((_DWORD *)this + 35) = v8;
    }
  }
  return result;
}


// ===== 40f980 CameraLevel::CanPlayShakeAnim(Character *) =====
int __fastcall CameraLevel::CanPlayShakeAnim(CameraLevel *this, Character *a2)
{
  if ( a2 )
  {
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2) )
      return 1;
    if ( PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0) == 1 )
      return PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, a2);
    else
      return 0;
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return 1;
  }
  else
  {
    if ( gAssertLevel != 1 )
      return 1;
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "requester",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Cameras\\CameraLevel.cpp",
      246);
    return 1;
  }
}


// ===== 40fa68 CameraLevel::HandleCentering(Point3D<float> &) =====
float __fastcall CameraLevel::HandleCentering(int a1, int a2)
{
  PlayerManager *v3; // r6
  _BYTE *CurrentLevel; // r5
  float result; // r0
  int v6; // r6
  float v7; // r7
  int v8; // r3
  int v9; // r2
  int v10; // r2
  int v11; // r3
  float v12; // r6
  float v13; // r1
  float v14; // r5
  float v15; // r0
  float v16; // r6
  int v17; // r3
  int v18; // r2
  int v19; // r2
  int v20; // r3
  float v21; // [sp+8h] [bp-54h] BYREF
  float v22; // [sp+Ch] [bp-50h]
  float v23; // [sp+10h] [bp-4Ch]
  float v24; // [sp+14h] [bp-48h] BYREF
  float v25; // [sp+18h] [bp-44h]
  float v26; // [sp+1Ch] [bp-40h]
  float v27; // [sp+20h] [bp-3Ch] BYREF
  float v28; // [sp+24h] [bp-38h]
  float v29; // [sp+28h] [bp-34h]
  float v30; // [sp+2Ch] [bp-30h] BYREF
  float v31; // [sp+30h] [bp-2Ch]
  float v32; // [sp+34h] [bp-28h]
  _DWORD v33[2]; // [sp+38h] [bp-24h] BYREF
  _DWORD v34[2]; // [sp+40h] [bp-1Ch] BYREF
  _DWORD v35[2]; // [sp+48h] [bp-14h] BYREF
  _DWORD v36[3]; // [sp+50h] [bp-Ch] BYREF

  v3 = (PlayerManager *)dword_99F76C;
  CurrentLevel = (_BYTE *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  result = COERCE_FLOAT(PlayerManager::GetNumLocalPlayers(v3, 1));
  v6 = LODWORD(result);
  if ( !CurrentLevel )
  {
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
                   "level",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Cameras\\CameraLevel.cpp",
                   102));
    }
  }
  if ( v6 == 2 )
  {
    v16 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v17 = (unsigned __int8)CurrentLevel[401];
    if ( CurrentLevel[400] )
      v16 = -0.5;
    if ( CurrentLevel[401] )
      v16 = v16 + 0.5;
    LODWORD(result) = v16 == 0.0;
    if ( v16 != 0.0 )
    {
      v18 = *(_DWORD *)(a2 + 8);
      v36[0] = 0;
      v36[1] = 0;
      CameraBase::GetWorldCoord(v36, &v30, v18, v17);
      v19 = *(_DWORD *)(a2 + 8);
      *(float *)v35 = v16;
      v35[1] = 0;
      CameraBase::GetWorldCoord(v35, &v27, v19, v20);
      v12 = v28 - v31;
      v13 = v30;
      v14 = v29 - v32;
      v15 = v27;
      goto LABEL_13;
    }
  }
  else if ( v6 > 2 )
  {
    v7 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if ( CurrentLevel[400] )
      v7 = -0.25;
    if ( CurrentLevel[401] )
      v7 = v7 + 0.25;
    v8 = (unsigned __int8)CurrentLevel[402];
    if ( CurrentLevel[402] )
      v7 = v7 - 0.25;
    if ( v6 == 4 )
    {
      v8 = (unsigned __int8)CurrentLevel[403];
      if ( CurrentLevel[403] )
        v7 = v7 + 0.25;
    }
    LODWORD(result) = v7 == 0.0;
    if ( v7 != 0.0 )
    {
      v9 = *(_DWORD *)(a2 + 8);
      v34[0] = 0;
      v34[1] = 0;
      CameraBase::GetWorldCoord(v34, &v24, v9, v8);
      v10 = *(_DWORD *)(a2 + 8);
      v33[1] = 0;
      *(float *)v33 = v7;
      CameraBase::GetWorldCoord(v33, &v21, v10, v11);
      v12 = v22 - v25;
      v13 = v24;
      v14 = v23 - v26;
      v15 = v21;
LABEL_13:
      *(float *)a2 = *(float *)a2 + (float)(v15 - v13);
      *(float *)(a2 + 4) = *(float *)(a2 + 4) + v12;
      result = *(float *)(a2 + 8) + v14;
      *(float *)(a2 + 8) = result;
    }
  }
  return result;
}


// ===== 40fd18 CameraLevel::CalculateDefaultTargetDistance(void) =====
float __fastcall CameraLevel::CalculateDefaultTargetDistance(CameraLevel *this)
{
  glitch::scene::ISceneNode *v1; // r4
  int Parent; // r0
  int v4; // r0
  int v5; // r3
  float *v6; // r2
  glitch::scene::ISceneNode *v7; // r0
  float v8; // r6
  float v9; // r4
  float v10; // r7
  int v11; // r0
  float *v12; // r0
  float result; // r0

  v1 = *((glitch::scene::ISceneNode **)this + 2);
  if ( !v1 )
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
        "targetCam",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Cameras\\CameraLevel.cpp",
        84);
    }
  }
  Parent = glitch::scene::ISceneNode::getParent(v1);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)Parent + 160))(Parent);
  v5 = *(_DWORD *)v1;
  v6 = (float *)v4;
  v7 = v1;
  v8 = v6[2];
  v9 = *v6;
  v10 = v6[1];
  v11 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(v5 + 268))(v7);
  v12 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 160))(v11);
  result = sqrt((float)((float)((float)((float)(*v12 - v9) * (float)(*v12 - v9))
                              + (float)((float)(v12[1] - v10) * (float)(v12[1] - v10)))
                      + (float)((float)(v12[2] - v8) * (float)(v12[2] - v8))));
  *((float *)this + 37) = result;
  return result;
}


// ===== 40fe7c CameraLevel::~CameraLevel() =====
void __fastcall CameraLevel::~CameraLevel(CameraLevel *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 17);
  *(_DWORD *)this = off_967B50;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 17) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 100));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 76));
  CameraTarget::~CameraTarget(this);
}


// ===== 40fee8 CameraLevel::~CameraLevel() =====
void __fastcall CameraLevel::~CameraLevel(CameraLevel *this)
{
  CameraLevel::~CameraLevel(this);
  CustomFree(this);
}


// ===== 40ff04 CameraLevel::~CameraLevel() =====
void __fastcall CameraLevel::~CameraLevel(CameraLevel *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 17);
  *(_DWORD *)this = off_967B50;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 17) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 100));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 76));
  CameraTarget::~CameraTarget(this);
}


// ===== 40ff70 CameraLevel::CameraLevel(void) =====
void __fastcall CameraLevel::CameraLevel(CameraLevel *this)
{
  CameraTarget::CameraTarget(this);
  *(_DWORD *)this = off_967B50;
  *((_DWORD *)this + 23) = (char *)this + 76;
  *((_DWORD *)this + 24) = (char *)this + 76;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 76, 0x10u);
  **((_BYTE **)this + 23) = 0;
  *((_DWORD *)this + 29) = (char *)this + 100;
  *((_DWORD *)this + 30) = (char *)this + 100;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 100, 0x10u);
  **((_BYTE **)this + 29) = 0;
  *((_DWORD *)this + 31) = -1;
  *((_DWORD *)this + 35) = 1065353216;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
}


// ===== 41002c CameraLevel::CameraLevel(void) =====
void __fastcall CameraLevel::CameraLevel(CameraLevel *this)
{
  CameraTarget::CameraTarget(this);
  *(_DWORD *)this = off_967B50;
  *((_DWORD *)this + 23) = (char *)this + 76;
  *((_DWORD *)this + 24) = (char *)this + 76;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 76, 0x10u);
  **((_BYTE **)this + 23) = 0;
  *((_DWORD *)this + 29) = (char *)this + 100;
  *((_DWORD *)this + 30) = (char *)this + 100;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 100, 0x10u);
  **((_BYTE **)this + 29) = 0;
  *((_DWORD *)this + 31) = -1;
  *((_DWORD *)this + 35) = 1065353216;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
}


// ===== 4100e8 `global constructor keyed to'.._.._sources_Game_Cameras_CameraLevel.cpp =====
int `global constructor keyed to'.._.._sources_Game_Cameras_CameraLevel.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A322C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3228 = 1056964608;
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


// ===== 410218 CameraLevel::HandleZoom(void) =====
void __fastcall CameraLevel::HandleZoom(CameraLevel *this)
{
  int Switch; // r8
  float v3; // r8
  float v4; // r9
  float v5; // r10
  float v6; // r5
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v7, 0xDu);
  v7._M_finish = (char *)memcpy(v7._M_start_of_storage._M_data, "InfiniteZoom", 0xCu) + 12;
  *v7._M_finish = 0;
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  if ( Switch )
  {
    *((_DWORD *)this + 36) = *((_DWORD *)this + 34);
  }
  else if ( !*((_BYTE *)this + 134) )
  {
    v3 = *((float *)this + 34);
    v4 = *(float *)(Arrays::DesignSettingsTable::members + 172);
    if ( *((_BYTE *)this + 133) )
      v4 = *(float *)(Arrays::DesignSettingsTable::members + 76);
    v5 = *(float *)(Arrays::DesignSettingsTable::members + 168);
    if ( *((_BYTE *)this + 133) )
      v5 = *(float *)(Arrays::DesignSettingsTable::members + 72);
    if ( *((float *)this + 34) <= v4 )
      v3 = v4;
    v6 = *((float *)this + 35);
    if ( v3 >= v5 )
      v3 = v5;
    *((float *)this + 34) = v3;
    if ( v6 <= v4 )
      v6 = v4;
    if ( v6 >= v5 )
      v6 = v5;
    *((float *)this + 35) = v6;
    if ( v3 <= v6 )
      v6 = v3;
    *((float *)this + 36) = v6;
  }
}


// ===== 410390 CameraLevel::Update(void) =====
int __fastcall CameraLevel::Update(CameraLevel *this)
{
  int result; // r0
  float *TargetPosition; // r3
  float v4; // r7
  float v5; // r6
  float v6; // r10
  float v7; // r11
  int v8; // r3
  float v9; // r0
  float v10; // r0
  int v11; // r3
  int v12; // r0
  void (__fastcall *v13)(int, _DWORD *); // r3
  float v14; // r6
  _DWORD v15[3]; // [sp+4h] [bp-28h] BYREF
  _DWORD v16[3]; // [sp+10h] [bp-1Ch] BYREF
  float v17; // [sp+1Ch] [bp-10h] BYREF
  float v18; // [sp+20h] [bp-Ch]
  float v19; // [sp+24h] [bp-8h]

  if ( this != (CameraLevel *)CameraBase::s_activeCamera
    || !*((_DWORD *)this + 3)
    || !*((_DWORD *)this + 2)
    || !*((_DWORD *)this + 1) )
  {
    return CameraBase::Update(this);
  }
  result = CameraTarget::HandleTransition(this);
  if ( !result )
  {
    if ( *((_BYTE *)this + 133) )
      TargetPosition = (float *)(*((_DWORD *)this + 3) + 352);
    else
      TargetPosition = (float *)CameraTarget::GetTargetPosition(this);
    v17 = *TargetPosition;
    v18 = TargetPosition[1];
    v19 = TargetPosition[2];
    CameraTarget::HandleOffset(this, &v17);
    CameraLevel::HandleCentering(this, &v17);
    v4 = *((float *)this + 38);
    v5 = *((float *)this + 39);
    v6 = *((float *)this + 40);
    if ( *((_BYTE *)this + 133) )
    {
      if ( (`guard variable for'CameraLevel::Update(void)::cos45 & 1) == 0
        && _cxa_guard_acquire(&`guard variable for'CameraLevel::Update(void)::cos45) )
      {
        CameraLevel::Update(void)::cos45 = 1060439283;
        _cxa_guard_release(&`guard variable for'CameraLevel::Update(void)::cos45);
      }
      if ( (`guard variable for'CameraLevel::Update(void)::sin45 & 1) == 0
        && _cxa_guard_acquire(&`guard variable for'CameraLevel::Update(void)::sin45) )
      {
        CameraLevel::Update(void)::sin45 = 1060439283;
        _cxa_guard_release(&`guard variable for'CameraLevel::Update(void)::sin45);
      }
      v7 = (float)(*(float *)&CameraLevel::Update(void)::cos45 * v4)
         - (float)(*(float *)&CameraLevel::Update(void)::sin45 * v5);
      v5 = (float)(*(float *)&CameraLevel::Update(void)::cos45 * v5)
         + (float)(*(float *)&CameraLevel::Update(void)::sin45 * v4);
    }
    else
    {
      v7 = *((float *)this + 38);
    }
    v17 = v17 + v7;
    v18 = v18 + v5;
    v8 = *((unsigned __int8 *)this + 132);
    v19 = v19 + v6;
    if ( !v8 || *((_BYTE *)this + 164) )
    {
      CameraLevel::HandleZoom(this);
      LODWORD(v9) = *((_DWORD *)this + 36) + 0x80000000;
    }
    else
    {
      v14 = *((float *)this + 36);
      if ( COERCE_FLOAT(LODWORD(v14) & 0x7FFFFFFF) >= 0.1 )
      {
        *((float *)this + 36) = v14 * 0.75;
        LODWORD(v9) = COERCE_INT(v14 * 0.75) + 0x80000000;
      }
      else
      {
        v9 = -0.0;
        *((_DWORD *)this + 36) = 0;
      }
    }
    v10 = v9 * *((float *)this + 37);
    v11 = *((_DWORD *)this + 2);
    v16[1] = 0;
    v16[0] = 0;
    *(float *)&v16[2] = v10;
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 164))(v11, v16);
    CameraTarget::HandleGhostCam(this, &v17);
    CameraTarget::HandleDamping(this, &v17);
    v12 = *((_DWORD *)this + 1);
    v13 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 164);
    *(float *)v15 = v17;
    *(float *)&v15[1] = v18;
    *(float *)&v15[2] = v19;
    v13(v12, v15);
    if ( *(_BYTE *)(*((_DWORD *)this + 3) + 129) )
      *((_DWORD *)this + 3) = 0;
    return CameraBase::Update(this);
  }
  return result;
}


// ===== 41068c CameraLevel::Load(char const*,int,char const*) =====
VisualObject *__fastcall CameraLevel::Load(CameraLevel *this, const char *a2, int a3, const char *a4)
{
  size_t v8; // r0
  size_t v9; // r0
  VisualObject *v10; // r9
  VisualObject *result; // r0
  glitch::scene::ISceneNode *SpecificNode; // r0
  glitch::scene::ISceneNode *SceneNodeFromName; // r6
  _DWORD *SceneNodeFromType; // r0
  int v15; // r3
  _DWORD *v16; // r3
  int v17; // r0
  _DWORD *v18; // r7
  unsigned int v19; // r6
  VisualObject *v20; // r6
  RootSceneNode *v21; // r10
  AnimSetController *v22; // r7
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+Ch] [bp-20h] BYREF

  v8 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 76), a2, &a2[v8]);
  *((_DWORD *)this + 32) = a3;
  v9 = LC_API_STRLEN_0(a4);
  std::string::_M_assign((std::string *const)((char *)this + 100), a4, &a4[v9]);
  v23._M_finish = (char *)&v23;
  v23._M_start_of_storage._M_data = (char *)&v23;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v23, 0x10u);
  *v23._M_finish = 0;
  v10 = (VisualObject *)operator new(172, 0);
  VisualObject::VisualObject(v10, nullptr, (const std::string *)((char *)this + 76), (const std::string *)&v23);
  *((_DWORD *)this + 17) = v10;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  result = *((VisualObject **)this + 17);
  if ( result && *((_DWORD *)result + 2) )
  {
    SpecificNode = (glitch::scene::ISceneNode *)VisualObject::GetSpecificNode(result, a4);
    SceneNodeFromName = SpecificNode;
    if ( SpecificNode )
    {
      SceneNodeFromType = (_DWORD *)glitch::scene::ISceneNode::getSceneNodeFromType(SpecificNode, 1667588452);
      *((_DWORD *)this + 2) = SceneNodeFromType;
      if ( SceneNodeFromType )
      {
        ++*(_DWORD *)((char *)SceneNodeFromType + *(_DWORD *)(*SceneNodeFromType - 12) + 4);
        CameraLevel::CalculateDefaultTargetDistance(this);
      }
      SceneNodeFromName = (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::getSceneNodeFromName(
                                                         SceneNodeFromName,
                                                         "upvector");
    }
    else
    {
      *((_DWORD *)this + 2) = 0;
    }
    v15 = *((_DWORD *)this + 17);
    *((_DWORD *)this + 18) = SceneNodeFromName;
    v16 = *(_DWORD **)(v15 + 8);
    *((_DWORD *)this + 1) = v16;
    if ( v16 )
      ++*(_DWORD *)((char *)v16 + *(_DWORD *)(*v16 - 12) + 4);
    v17 = AnimSetManager::Create((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
    *((_DWORD *)this + 31) = v17;
    v18 = (_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *((_DWORD *)this + 32));
    AnimSetManager::AddTemplateAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, v17, v18[6]);
    AnimSetManager::AddAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *((_DWORD *)this + 31), v18[4]);
    AnimSetManager::AddAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *((_DWORD *)this + 31), v18[5]);
    AnimSetManager::AddAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *((_DWORD *)this + 31), v18[3]);
    if ( v18[1] )
    {
      v19 = 0;
      do
        AnimSetManager::AddAnim(
          (AnimSetManager *)&Singleton<AnimSetManager>::s_inst,
          *((_DWORD *)this + 31),
          *(_DWORD *)(v18[2] + 4 * v19++));
      while ( v18[1] > v19 );
    }
    v20 = *((VisualObject **)this + 17);
    v21 = *((RootSceneNode **)v20 + 2);
    v22 = (AnimSetController *)operator new(20, 0);
    AnimSetController::AnimSetController(v22, v21, *((_DWORD *)this + 31));
    VisualObject::SetAnimController(v20, v22);
    return (VisualObject *)(*(int (__fastcall **)(_DWORD, _DWORD (*)(CameraLevel *__hidden, glitch::scene::ITimelineController *, void *), CameraLevel *, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 17) + 56) + 44))(
                             *(_DWORD *)(*((_DWORD *)this + 17) + 56),
                             CameraLevel::__Callback,
                             this,
                             0,
                             0);
  }
  return result;
}


// ===== 410928 `non-virtual thunk to'CameraOverview::onEvent(IEvent const*,EventManager const*) =====
int __fastcall `non-virtual thunk to'CameraOverview::onEvent(
        CameraOverview *this,
        const IEvent *a2,
        const EventManager *a3)
{
  return CameraOverview::onEvent((CameraOverview *)((char *)this - 12), a2, a3);
}


// ===== 410930 CameraOverview::onEvent(IEvent const*,EventManager const*) =====
int __fastcall CameraOverview::onEvent(CameraOverview *this, const IEvent *a2, const EventManager *a3)
{
  unsigned int v5; // r3
  int result; // r0

  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) )
    return 0;
  if ( !*((_BYTE *)a2 + 16) )
  {
    v5 = *((_DWORD *)a2 + 3) - 65;
    if ( v5 <= 0x17 )
    {
      result = 1;
      if ( ((1 << v5) & 0xC50019) != 0 )
      {
        *((_DWORD *)this + 9) = 0;
        return result;
      }
    }
    return 0;
  }
  switch ( *((_DWORD *)a2 + 3) )
  {
    case 'A':
      *((float *)this + 7) = *((float *)this + 7) - 100.0;
      result = 1;
      break;
    case 'D':
      *((float *)this + 7) = *((float *)this + 7) + 100.0;
      result = 1;
      break;
    case 'E':
      *((_DWORD *)this + 9) = 1120403456;
      result = 1;
      break;
    case 'Q':
      *((_DWORD *)this + 9) = -1027080192;
      result = 1;
      break;
    case 'S':
      *((float *)this + 8) = *((float *)this + 8) - 100.0;
      result = 1;
      break;
    case 'W':
      *((float *)this + 8) = *((float *)this + 8) + 100.0;
      result = 1;
      break;
    case 'X':
      *((_DWORD *)this + 9) = 0;
      *((_DWORD *)this + 7) = 0;
      *((_DWORD *)this + 8) = 0;
      result = 1;
      break;
    default:
      return 0;
  }
  return result;
}


// ===== 410ac4 CameraOverview::Deactivated(void) =====
int __fastcall CameraOverview::Deactivated(CameraOverview *this)
{
  return EventManager::Detach((EventManager *)dword_99F740, 0, (CameraOverview *)((char *)this + 12));
}


// ===== 410aec CameraOverview::Activated(void) =====
int __fastcall CameraOverview::Activated(CameraOverview *this)
{
  _DWORD *v2; // r3
  int v3; // r2
  int v4; // r7
  float v5; // r8
  int v6; // r0
  int v7; // r12
  void (__fastcall *v8)(int, _DWORD *); // r3
  _DWORD v10[4]; // [sp+4h] [bp-10h] BYREF

  v2 = *(_DWORD **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  v3 = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  if ( v2 )
    v3 = v2[88];
  v4 = *((_DWORD *)this + 2);
  if ( v2 )
  {
    *((_DWORD *)this + 4) = v3;
    v3 = v2[89];
  }
  else
  {
    *((_DWORD *)this + 6) = v3;
  }
  if ( v2 )
  {
    *((_DWORD *)this + 5) = v3;
    *((_DWORD *)this + 6) = v2[90];
  }
  else
  {
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = v3;
  }
  if ( v4 )
  {
    if ( &Singleton<PFWorld>::s_inst )
      v5 = (float)((float)(*(float *)&dword_9A2700 - *(float *)&dword_9A26F4) * 0.5) + *(float *)&dword_9A26F4;
    else
      v5 = 0.0;
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 304))(v4, (float)(v5 + 20000.0) - 5000.0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2) + 308))(
      *((_DWORD *)this + 2),
      (float)(v5 + 20000.0) + 5000.0);
    v6 = *((_DWORD *)this + 2);
    v7 = *((_DWORD *)this + 4);
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 260);
    v10[1] = *((_DWORD *)this + 5);
    v10[0] = v7;
    *(float *)&v10[2] = v5;
    v8(v6, v10);
    glitch::scene::ISceneNode::setPosition(
      *((glitch::scene::ISceneNode **)this + 1),
      *((float *)this + 4),
      *((float *)this + 5),
      v5 + 20000.0);
  }
  return EventManager::Attach((EventManager *)dword_99F740, 0, (CameraOverview *)((char *)this + 12), 0x7FFFFFFF);
}


// ===== 410c5c `non-virtual thunk to'CameraOverview::~CameraOverview() =====
void __fastcall `non-virtual thunk to'CameraOverview::~CameraOverview(CameraOverview *this)
{
  CameraOverview::~CameraOverview((CameraOverview *)((char *)this - 12));
}


// ===== 410c64 CameraOverview::~CameraOverview() =====
void __fastcall CameraOverview::~CameraOverview(CameraOverview *this)
{
  *(_DWORD *)this = off_967B70;
  *((_DWORD *)this + 3) = off_95C330;
  CameraBase::~CameraBase(this);
}


// ===== 410cac `non-virtual thunk to'CameraOverview::~CameraOverview() =====
void __fastcall `non-virtual thunk to'CameraOverview::~CameraOverview(CameraOverview *this)
{
  CameraOverview::~CameraOverview((CameraOverview *)((char *)this - 12));
}


// ===== 410cb4 CameraOverview::~CameraOverview() =====
void __fastcall CameraOverview::~CameraOverview(CameraOverview *this)
{
  CameraOverview::~CameraOverview(this);
  CustomFree(this);
}


// ===== 410cd0 CameraOverview::~CameraOverview() =====
void __fastcall CameraOverview::~CameraOverview(CameraOverview *this)
{
  *(_DWORD *)this = off_967B70;
  *((_DWORD *)this + 3) = off_95C330;
  CameraBase::~CameraBase(this);
}


// ===== 410d18 `global constructor keyed to'.._.._sources_Game_Cameras_CameraOverview.cpp =====
int `global constructor keyed to'.._.._sources_Game_Cameras_CameraOverview.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3248 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3244 = 1056964608;
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


// ===== 410e48 glitch::core::quaternion::fromAngleAxis(float,glitch::core::vector3d<float> const&) [clone] =====
int __fastcall glitch::core::quaternion::fromAngleAxis(int result, float *a2)
{
  *(_DWORD *)(result + 12) = 1057389440;
  *(float *)result = *a2 * 0.8509;
  *(float *)(result + 4) = a2[1] * 0.8509;
  *(float *)(result + 8) = a2[2] * 0.8509;
  return result;
}


// ===== 410ea4 CameraOverview::CameraOverview(void) =====
void __fastcall CameraOverview::CameraOverview(CameraOverview *this)
{
  int v2; // r2
  int v3; // r3
  int *v4; // r2
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r0
  void (__fastcall *v8)(int, _DWORD *); // r3
  int v9; // r0
  void (__fastcall *v10)(int, _DWORD *); // r3
  _DWORD v11[4]; // [sp+Ch] [bp-38h] BYREF
  _DWORD v12[3]; // [sp+1Ch] [bp-28h] BYREF
  _DWORD v13[3]; // [sp+28h] [bp-1Ch] BYREF
  _DWORD v14[4]; // [sp+34h] [bp-10h] BYREF

  CameraBase::CameraBase(this);
  *((_DWORD *)this + 3) = off_967B90;
  *(_DWORD *)this = off_967B70;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  v2 = *(_DWORD *)(dword_99F73C + 28);
  v3 = *(_DWORD *)(v2 + 208);
  v4 = *(int **)(v2 + 204);
  v5 = (v3 - (int)v4) >> 2;
  if ( v5 )
    v5 = *v4;
  v6 = (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v5 + 12))(v5, 1601003875, 0);
  *((_DWORD *)this + 2) = v6;
  *((_DWORD *)this + 1) = v6;
  if ( v6 )
  {
    ++*(_DWORD *)((char *)v6 + *(_DWORD *)(*v6 - 12) + 4);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      *((_DWORD *)this + 1));
    CameraBase::SetData(this, 0.42963, 1.7778, 15000.0, 25000.0, 1);
    v7 = *((_DWORD *)this + 2);
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 276);
    v14[0] = 0;
    v14[1] = 1065353216;
    v14[2] = 0;
    v8(v7, v14);
    v9 = *((_DWORD *)this + 2);
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 260);
    memset(v13, 0, sizeof(v13));
    v10(v9, v13);
    v12[1] = 1065353216;
    memset(v11, 0, 12);
    v11[3] = 1065353216;
    v12[0] = 0;
    v12[2] = 0;
    glitch::core::quaternion::fromAngleAxis(v11, v12);
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 1) + 156))(*((_DWORD *)this + 1), v11);
    glitch::scene::ISceneNode::setPosition(*((glitch::scene::ISceneNode **)this + 1), 0.0, 0.0, 20000.0);
  }
}


// ===== 41106c CameraOverview::CameraOverview(void) =====
void __fastcall CameraOverview::CameraOverview(CameraOverview *this)
{
  int v2; // r2
  int v3; // r3
  int *v4; // r2
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r0
  void (__fastcall *v8)(int, _DWORD *); // r3
  int v9; // r0
  void (__fastcall *v10)(int, _DWORD *); // r3
  _DWORD v11[4]; // [sp+Ch] [bp-38h] BYREF
  float v12[3]; // [sp+1Ch] [bp-28h] BYREF
  _DWORD v13[3]; // [sp+28h] [bp-1Ch] BYREF
  _DWORD v14[4]; // [sp+34h] [bp-10h] BYREF

  CameraBase::CameraBase(this);
  *((_DWORD *)this + 3) = off_967B90;
  *(_DWORD *)this = off_967B70;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  v2 = *(_DWORD *)(dword_99F73C + 28);
  v3 = *(_DWORD *)(v2 + 208);
  v4 = *(int **)(v2 + 204);
  v5 = (v3 - (int)v4) >> 2;
  if ( v5 )
    v5 = *v4;
  v6 = (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v5 + 12))(v5, 1601003875, 0);
  *((_DWORD *)this + 2) = v6;
  *((_DWORD *)this + 1) = v6;
  if ( v6 )
  {
    ++*(_DWORD *)((char *)v6 + *(_DWORD *)(*v6 - 12) + 4);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      *((_DWORD *)this + 1));
    CameraBase::SetData((int)this, 0.42963, 1.7778, 15000.0, 25000.0, 1);
    v7 = *((_DWORD *)this + 2);
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 276);
    v14[0] = 0;
    v14[1] = 1065353216;
    v14[2] = 0;
    v8(v7, v14);
    v9 = *((_DWORD *)this + 2);
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 260);
    memset(v13, 0, sizeof(v13));
    v10(v9, v13);
    v12[1] = 1.0;
    memset(v11, 0, 12);
    v11[3] = 1065353216;
    v12[0] = 0.0;
    v12[2] = 0.0;
    glitch::core::quaternion::fromAngleAxis((int)v11, v12);
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 1) + 156))(*((_DWORD *)this + 1), v11);
    glitch::scene::ISceneNode::setPosition(*((glitch::scene::ISceneNode **)this + 1), 0.0, 0.0, 20000.0);
  }
}


// ===== 411234 CameraOverview::Update(void) =====
InputManager *__fastcall CameraOverview::Update(glitch::scene::ISceneNode **this)
{
  InputManager *result; // r0
  InputManager *Instance; // r0
  float *FirstConnectedGamepad; // r0
  float *v5; // r6
  float v6; // r0
  float v7; // r7
  float v8; // r8
  int v9; // r0
  int v10; // r0
  int v11; // r5
  int (__fastcall *v12)(int, _DWORD *); // r6
  float v13; // r7
  float v14; // r0
  float v15; // r7
  float v16; // r0
  float v17; // r7
  float v18; // r0
  _DWORD *v19; // r3
  float v20; // r10
  float v21; // [sp+4h] [bp-28h] BYREF
  float v22; // [sp+8h] [bp-24h]
  float v23; // [sp+Ch] [bp-20h]
  _DWORD v24[3]; // [sp+10h] [bp-1Ch] BYREF
  float v25; // [sp+1Ch] [bp-10h]
  int v26; // [sp+20h] [bp-Ch]
  int v27; // [sp+24h] [bp-8h]

  result = (InputManager *)CameraBase::Update((CameraBase *)this);
  if ( *(this + 1) )
  {
    Instance = (InputManager *)InputManager::GetInstance(result);
    FirstConnectedGamepad = (float *)InputManager::GetFirstConnectedGamepad(Instance);
    v5 = FirstConnectedGamepad;
    if ( FirstConnectedGamepad )
    {
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v6 = (float)(FirstConnectedGamepad[379] + FirstConnectedGamepad[379])
         / (float)(FirstConnectedGamepad[381] - FirstConnectedGamepad[380]);
      v21 = (float)(v5[379] + v5[379]) / (float)(v5[381] - v5[380]);
      LODWORD(v22) = COERCE_INT((float)(v5[387] + v5[387]) / (float)(v5[389] - v5[388])) + 0x80000000;
      v7 = sqrtf((float)((float)(v6 * v6) + (float)(v22 * v22)) + 0.0);
      if ( v7 >= 0.5 )
      {
        Point3D<float>::normalize(&v21);
        if ( v7 < 1.0 )
        {
          v20 = (float)(v7 - 0.5) + (float)(v7 - 0.5);
          v15 = v20 * v21;
          v21 = v20 * v21;
          v8 = v20 * v22;
          v22 = v20 * v22;
          v16 = v20 * v23;
          v23 = v20 * v23;
        }
        else
        {
          v15 = v21;
          v8 = v22;
          v16 = v23;
        }
        v25 = v15;
        v27 = LODWORD(v16);
        v26 = LODWORD(v8);
      }
      else
      {
        v8 = *(float *)&dword_99F858;
        v27 = dword_99F85C;
        v25 = *(float *)&Vec3f_Origin;
        v26 = dword_99F858;
      }
      if ( v5[59] < (float)((float)((float)(v5[61] + v5[60]) + 1.0) * 0.5) )
      {
        v17 = (float)(v25 * 100.0) + *((float *)this + 7);
        *((float *)this + 7) = v17;
        v18 = (float)(v8 * 100.0) + *((float *)this + 8);
        *((float *)this + 8) = v18;
        if ( v5[62] >= (float)((float)((float)(v5[65] + v5[64]) + 1.0) * 0.5) )
          *(this + 9) = nullptr;
        if ( (float)(v17 + v18) != 0.0 )
          goto LABEL_8;
        goto LABEL_16;
      }
      *((float *)this + 9) = v8 * -100.0;
    }
    if ( (float)(*((float *)this + 7) + *((float *)this + 8)) != 0.0 )
    {
LABEL_8:
      v9 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*(this + 1) + 160))(*(this + 1));
      glitch::scene::ISceneNode::setPosition(
        *(this + 1),
        *((float *)this + 4) + *((float *)this + 7),
        *((float *)this + 5) + *((float *)this + 8),
        *(float *)(v9 + 8) + *((float *)this + 9));
      v10 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*(this + 2) + 264))(*(this + 2));
      v11 = (int)*(this + 2);
      v12 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 260);
      v13 = *(float *)(v10 + 8) + *((float *)this + 9);
      v14 = *((float *)this + 4) + *((float *)this + 7);
      *(float *)&v24[1] = *((float *)this + 5) + *((float *)this + 8);
      *(float *)v24 = v14;
      *(float *)&v24[2] = v13;
      return (InputManager *)v12(v11, v24);
    }
LABEL_16:
    v19 = *(_DWORD **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
    if ( v19 )
    {
      *(this + 4) = (glitch::scene::ISceneNode *)v19[88];
      *(this + 5) = (glitch::scene::ISceneNode *)v19[89];
      *(this + 6) = (glitch::scene::ISceneNode *)v19[90];
    }
    goto LABEL_8;
  }
  return result;
}


// ===== 4115d8 CameraTarget::HandleGhostCam(Point3D<float> &) =====
int __fastcall CameraTarget::HandleGhostCam(float *a1, float *a2)
{
  *a2 = *a2 + a1[14];
  a2[1] = a2[1] + a1[15];
  a2[2] = a2[2] + a1[16];
  return 1;
}


// ===== 41161c CameraTarget::EnableDamping(bool) =====
int __fastcall CameraTarget::EnableDamping(int this, bool a2)
{
  *(_BYTE *)(this + 37) = a2;
  *(_DWORD *)(this + 44) = Vec3f_Origin;
  *(_DWORD *)(this + 48) = dword_99F858;
  *(_DWORD *)(this + 52) = dword_99F85C;
  return this;
}


// ===== 411654 CameraTarget::SetDampingRatio(float) =====
int __fastcall CameraTarget::SetDampingRatio(int this, float a2)
{
  *(float *)(this + 40) = a2;
  return this;
}


// ===== 41165c CameraTarget::HandleDamping(Point3D<float> &) =====
int __fastcall CameraTarget::HandleDamping(int a1, float *a2)
{
  int v4; // r7
  float v5; // r10
  float v6; // r9
  float v7; // r8
  float *v8; // r0
  float v9; // r7
  float *v10; // r3
  float v11; // r1
  float v12; // r0
  float v13; // r11
  float v14; // r10
  int v15; // r3
  float *v16; // r7
  float v17; // r5
  float v18; // r8
  float v19; // r0

  if ( !*(_BYTE *)(a1 + 37) )
    return 0;
  v4 = *(_DWORD *)(a1 + 4);
  if ( !v4 )
    return 0;
  v5 = *(float *)(a1 + 44) + *a2;
  v6 = *(float *)(a1 + 48) + a2[1];
  v7 = *(float *)(a1 + 52) + a2[2];
  v8 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 160))(v4);
  v9 = *(float *)(a1 + 40);
  v10 = v8;
  v11 = *v8;
  v12 = v5;
  v13 = v10[1];
  v14 = v10[2];
  *(float *)(a1 + 44) = (float)(v12 - v11) * v9;
  *(float *)(a1 + 48) = (float)(v6 - v13) * v9;
  v15 = *(_DWORD *)(a1 + 4);
  *(float *)(a1 + 52) = (float)(v7 - v14) * v9;
  v16 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v15 + 160))(v15);
  v17 = (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst) * 0.001;
  v18 = (float)(v17 * *(float *)(a1 + 48)) + v16[1];
  v19 = (float)(v17 * *(float *)(a1 + 44)) + *v16;
  a2[2] = (float)(v17 * *(float *)(a1 + 52)) + v16[2];
  *a2 = v19;
  a2[1] = v18;
  return 1;
}


// ===== 4117bc CameraTarget::HandleOffset(Point3D<float> &) =====
int __fastcall CameraTarget::HandleOffset(int a1, float *a2)
{
  float v4; // r2
  float v5; // [sp+4h] [bp-Ch] BYREF
  float v6; // [sp+8h] [bp-8h]
  float v7; // [sp+Ch] [bp-4h]

  if ( !*(_BYTE *)(a1 + 36) )
    return *(unsigned __int8 *)(a1 + 36);
  v4 = a2[2];
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  CameraBase::GetCenterOffset(a1, (int)&v5, v4);
  *a2 = *a2 + v5;
  a2[1] = a2[1] + v6;
  a2[2] = a2[2] + v7;
  return 1;
}


// ===== 411830 CameraTarget::HandleTransition(void) =====
int __fastcall CameraTarget::HandleTransition(CameraTarget *this)
{
  int Dt; // r0
  int v3; // r3
  bool v4; // zf
  float *v5; // r6
  float v6; // r0
  float v7; // r5
  float v8; // r8
  float v9; // r0
  int v10; // r7
  float v11; // r4
  float v12; // r10
  float v13; // r0
  void (__fastcall *v14)(int, float *); // r6
  int v16; // r5
  GameObject *v17; // r0
  void (__fastcall *v18)(int, _DWORD *); // r4
  _DWORD *CameraAnchorPosition; // r0
  int v20; // r2
  int v21; // r3
  _DWORD v22[3]; // [sp+0h] [bp-1Ch] BYREF
  float v23[4]; // [sp+Ch] [bp-10h] BYREF

  if ( *((int *)this + 8) < 0 || !*((_DWORD *)this + 1) || !*((_DWORD *)this + 3) )
    return 0;
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  v3 = *((_DWORD *)this + 8) - Dt;
  v4 = *((_DWORD *)this + 8) == Dt;
  *((_DWORD *)this + 8) = v3;
  if ( v3 < 0 || v4 )
  {
    v16 = *((_DWORD *)this + 1);
    v17 = *((GameObject **)this + 3);
    v18 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v16 + 164);
    CameraAnchorPosition = (_DWORD *)GameObject::GetCameraAnchorPosition(v17);
    v20 = CameraAnchorPosition[1];
    v21 = CameraAnchorPosition[2];
    v22[0] = *CameraAnchorPosition;
    v22[1] = v20;
    v22[2] = v21;
    v18(v16, v22);
  }
  else
  {
    v5 = (float *)GameObject::GetCameraAnchorPosition(*((GameObject **)this + 3));
    v6 = 1.0 - (float)((float)*((int *)this + 8) / (float)*((int *)this + 7));
    v7 = v6;
    v8 = *((float *)this + 5) + (float)(v6 * (float)(v5[1] - *((float *)this + 5)));
    v9 = *((float *)this + 6) + (float)(v6 * (float)(v5[2] - *((float *)this + 6)));
    v10 = *((_DWORD *)this + 1);
    v11 = *((float *)this + 4);
    v12 = v9;
    v13 = *v5;
    v14 = *(void (__fastcall **)(int, float *))(*(_DWORD *)v10 + 164);
    v23[1] = v8;
    v23[0] = v11 + (float)(v7 * (float)(v13 - v11));
    v23[2] = v12;
    v14(v10, v23);
  }
  return 1;
}


// ===== 4119c4 CameraTarget::SetTarget(GameObject *,int) =====
int *__fastcall CameraTarget::SetTarget(int *this, GameObject *a2, int a3)
{
  int *v4; // r4
  GameObject *v6; // r0
  int v7; // r3
  int v8; // r3

  v4 = this;
  if ( a2 )
  {
    if ( a3 <= 0 )
    {
      *(this + 4) = Vec3f_Origin;
      *(this + 5) = dword_99F858;
      v8 = dword_99F85C;
      *(this + 8) = 0;
      *(this + 7) = 0;
      *(this + 6) = v8;
    }
    else
    {
      v6 = (GameObject *)*(this + 3);
      if ( v6 )
        this = (int *)GameObject::GetCameraAnchorPosition(v6);
      else
        this = &Vec3f_Origin;
      v4[4] = *this;
      v4[5] = *(this + 1);
      v7 = *(this + 2);
      v4[8] = a3;
      v4[7] = a3;
      v4[6] = v7;
    }
    v4[3] = (int)a2;
    v4[16] = 0;
    v4[14] = 0;
    v4[15] = 0;
  }
  return this;
}


// ===== 411a74 CameraTarget::GetTargetPosition(void) =====
char *__fastcall CameraTarget::GetTargetPosition(GameObject **this)
{
  return GameObject::GetCameraAnchorPosition(*(this + 3));
}


// ===== 411a7c CameraTarget::Update(void) =====
int __fastcall CameraTarget::Update(CameraTarget *this)
{
  int result; // r0
  int *TargetPosition; // r0
  int v4; // r0
  void (__fastcall *v5)(int, _DWORD *); // r3
  _DWORD v6[3]; // [sp+0h] [bp-1Ch] BYREF
  int v7; // [sp+Ch] [bp-10h] BYREF
  int v8; // [sp+10h] [bp-Ch]
  int v9; // [sp+14h] [bp-8h]

  if ( *((_DWORD *)this + 1) && *((_DWORD *)this + 3) )
  {
    result = CameraTarget::HandleTransition(this);
    if ( result )
      return result;
    TargetPosition = (int *)CameraTarget::GetTargetPosition(this);
    v7 = *TargetPosition;
    v8 = TargetPosition[1];
    v9 = TargetPosition[2];
    CameraTarget::HandleOffset(this, &v7);
    CameraTarget::HandleGhostCam((float *)this, (float *)&v7);
    CameraTarget::HandleDamping((int)this, (float *)&v7);
    v4 = *((_DWORD *)this + 1);
    v5 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v4 + 164);
    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    v5(v4, v6);
  }
  return CameraBase::Update(this);
}


// ===== 411b38 CameraTarget::SetTarget(char const*,int) =====
int *__fastcall CameraTarget::SetTarget(CameraTarget *this, char *a2, int a3)
{
  int *result; // r0
  GameObject *v6; // r0
  _BYTE v7[16]; // [sp+Ch] [bp-10h] BYREF

  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, a2, -1, nullptr);
  result = (int *)ObjectHandle::GetObject((ObjectHandle *)v7, 0);
  if ( result )
  {
    v6 = (GameObject *)ObjectHandle::operator GameObject *(v7);
    return CameraTarget::SetTarget((int *)this, v6, a3);
  }
  return result;
}


// ===== 411bbc CameraTarget::~CameraTarget() =====
void __fastcall CameraTarget::~CameraTarget(CameraTarget *this)
{
  *(_DWORD *)this = off_967BA8;
  CameraBase::~CameraBase(this);
}


// ===== 411bf0 CameraTarget::~CameraTarget() =====
void __fastcall CameraTarget::~CameraTarget(CameraTarget *this)
{
  CameraTarget::~CameraTarget(this);
  CustomFree(this);
}


// ===== 411c0c CameraTarget::~CameraTarget() =====
void __fastcall CameraTarget::~CameraTarget(CameraTarget *this)
{
  *(_DWORD *)this = off_967BA8;
  CameraBase::~CameraBase(this);
}


// ===== 411c40 CameraTarget::CameraTarget(void) =====
void __fastcall CameraTarget::CameraTarget(CameraTarget *this)
{
  int v2; // r2

  CameraBase::CameraBase(this);
  *(_DWORD *)this = off_967BA8;
  *((_BYTE *)this + 37) = 1;
  *((_DWORD *)this + 10) = 1060320051;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 11) = Vec3f_Origin;
  *((_DWORD *)this + 12) = dword_99F858;
  v2 = dword_99F85C;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 15) = 0;
}


// ===== 411cdc CameraTarget::CameraTarget(void) =====
void __fastcall CameraTarget::CameraTarget(CameraTarget *this)
{
  int v2; // r2

  CameraBase::CameraBase(this);
  *(_DWORD *)this = off_967BA8;
  *((_BYTE *)this + 37) = 1;
  *((_DWORD *)this + 10) = 1060320051;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 11) = Vec3f_Origin;
  *((_DWORD *)this + 12) = dword_99F858;
  v2 = dword_99F85C;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 15) = 0;
}


// ===== 411d78 `global constructor keyed to'.._.._sources_Game_Cameras_CameraTarget.cpp =====
int `global constructor keyed to'.._.._sources_Game_Cameras_CameraTarget.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3254 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3250 = 1056964608;
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


// ===== 411e54 Dragable::~Dragable() =====
void __fastcall Dragable::~Dragable(Dragable *this)
{
  ;
}


// ===== 411e58 Dragable::~Dragable() =====
void __fastcall Dragable::~Dragable(Dragable *this)
{
  ;
}


// ===== 411e5c Dropable::Dropable(MenuFX *,gameswf::character *) =====
_DWORD *__fastcall Dropable::Dropable(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[3] = a3;
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 300))(a3, a1 + 4);
  return a1;
}


// ===== 411e88 Dropable::Dropable(MenuFX *,gameswf::character *) =====
_DWORD *__fastcall Dropable::Dropable(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[3] = a3;
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 300))(a3, a1 + 4);
  return a1;
}


// ===== 411eb4 Dropable::~Dropable() =====
void __fastcall Dropable::~Dropable(Dropable *this)
{
  ;
}


// ===== 411eb8 Dropable::~Dropable() =====
void __fastcall Dropable::~Dropable(Dropable *this)
{
  ;
}


// ===== 411ebc DragAndDrop::DragAndDrop(void) =====
void __fastcall DragAndDrop::DragAndDrop(DragAndDrop *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 411ee0 DragAndDrop::DragAndDrop(void) =====
void __fastcall DragAndDrop::DragAndDrop(DragAndDrop *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 411f04 DragAndDrop::IsDraggingSomething(void) =====
bool __fastcall DragAndDrop::IsDraggingSomething(DragAndDrop *this)
{
  return *(_DWORD *)this != 0;
}


// ===== 411f14 `global constructor keyed to'.._.._sources_Game_Menus_DragAndDrop.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_DragAndDrop.cpp()
{
  dword_9A3260 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A325C = 1056964608;
}


// ===== 411f34 DragAndDrop::GetDragable(char const*) =====
int __fastcall DragAndDrop::GetDragable(DragAndDrop *this, const char *a2)
{
  int v2; // r4
  int v3; // r5
  char *v5; // r3
  const char *v6; // r0

  v2 = *((_DWORD *)this + 1);
  v3 = *((_DWORD *)this + 2);
  if ( v2 == v3 )
    return 0;
  while ( 1 )
  {
    v5 = *(char **)(*(_DWORD *)(v2 + 8) + 68);
    v6 = v5 + 1;
    if ( *v5 == -1 )
      v6 = *((const char **)v5 + 3);
    if ( !LC_API_STRCMP_0(v6, a2) )
      break;
    v2 += 84;
    if ( v2 == v3 )
      return 0;
  }
  return v2;
}


// ===== 411f94 DragAndDrop::SendEvent(int,MenuFX *,gameswf::character *) =====
int __fastcall DragAndDrop::SendEvent(int this, GameSWFUtils *a2, MenuFX *a3, gameswf::character *a4)
{
  GameSWFUtils *v6; // r0
  MenuFX *v7; // r1
  char *v8; // r2

  switch ( this )
  {
    case 0:
      v6 = a2;
      v7 = a3;
      v8 = "OnDragNDropOver";
      goto LABEL_6;
    case 1:
      v6 = a2;
      v7 = a3;
      v8 = "OnDragNDropOut";
      goto LABEL_6;
    case 2:
      this = GameSWFUtils::PlayAnim(a2, a3, (gameswf::character *)"OnDragNDropSucceed", (const char *)a4);
      if ( this )
        return this;
      goto LABEL_5;
    case 3:
      this = GameSWFUtils::PlayAnim(a2, a3, (gameswf::character *)"OnDragNDropFailed", (const char *)a4);
      if ( !this )
      {
LABEL_5:
        v6 = a2;
        v7 = a3;
        v8 = "OnDragNDropDropped";
LABEL_6:
        this = GameSWFUtils::PlayAnim(v6, v7, (gameswf::character *)v8, (const char *)a4);
      }
      break;
    default:
      return this;
  }
  return this;
}


// ===== 412070 Dropable::SendEvent(int) =====
int __fastcall Dropable::SendEvent(GameSWFUtils **this, DragAndDrop *a2)
{
  return DragAndDrop::SendEvent((int)a2, *this, *(this + 3), (gameswf::character *)this);
}


// ===== 412084 Dragable::SendEvent(int) =====
int __fastcall Dragable::SendEvent(GameSWFUtils **this, DragAndDrop *a2)
{
  return DragAndDrop::SendEvent((int)a2, *(this + 1), *(this + 2), (gameswf::character *)this);
}


// ===== 412098 Dropable::IsIntersecting(Dragable *) =====
bool __fastcall Dropable::IsIntersecting(gameswf::character **this, gameswf::character **a2)
{
  float v4[4]; // [sp+0h] [bp-20h] BYREF
  float v5; // [sp+10h] [bp-10h] BYREF
  float v6; // [sp+14h] [bp-Ch]
  float v7; // [sp+18h] [bp-8h]
  float v8; // [sp+1Ch] [bp-4h]

  if ( a2
    && (GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)&v5, a2[2]),
        GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v4, *(this + 3)),
        (float)((float)(v6 + v5) * 0.5) >= v4[0])
    && (float)((float)(v6 + v5) * 0.5) <= v4[1]
    && (float)((float)(v8 + v7) * 0.5) >= v4[2] )
  {
    return (float)((float)(v8 + v7) * 0.5) <= v4[3];
  }
  else
  {
    return 0;
  }
}


// ===== 412160 gameswf::character::custom::custom(void) =====
int __fastcall gameswf::character::custom::custom(int this)
{
  char v1; // r5

  v1 = ((*(_DWORD *)(this + 92) & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
  *(_DWORD *)(this + 92) = *(_DWORD *)(this + 92) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)(this + 104) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 48) = 1065353216;
  *(_BYTE *)(this + 76) = 1;
  *(_BYTE *)(this + 95) = v1;
  *(_DWORD *)this = 1065353216;
  *(_DWORD *)(this + 8) = 1065353216;
  *(_DWORD *)(this + 16) = 1065353216;
  *(_DWORD *)(this + 24) = 1065353216;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 32) = 1065353216;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 60) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_BYTE *)(this + 72) = 0;
  *(_BYTE *)(this + 77) = 0;
  *(_DWORD *)(this + 96) = 0;
  *(_DWORD *)(this + 100) = 0;
  return this;
}


// ===== 4121f8 gameswf::character::set_matrix(gameswf::matrix const&) =====
int __fastcall gameswf::character::set_matrix(int a1, int *a2)
{
  _DWORD *v2; // r6
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int *v9; // r5
  int result; // r0
  int v11; // r1
  int v12; // r3

  v2 = *(_DWORD **)(a1 + 84);
  if ( !v2 )
  {
    v2 = (_DWORD *)operator new(108, 0);
    gameswf::character::custom::custom((int)v2);
    *(_DWORD *)(a1 + 84) = v2;
  }
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2 + 4;
  v2[8] = v5;
  v2[9] = v6;
  v2[10] = v7;
  v2[11] = v8;
  result = *v9;
  v11 = v9[1];
  v2[12] = *v9;
  v2[13] = v11;
  v12 = *(_DWORD *)(a1 + 84);
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 76) = v12 + 32;
  return result;
}


// ===== 412258 Point2D<float>::normalize(void) =====
float *__fastcall Point2D<float>::normalize(float *a1)
{
  float v2; // r0

  v2 = sqrtf((float)(*a1 * *a1) + (float)(a1[1] * a1[1]));
  *a1 = *a1 / v2;
  a1[1] = a1[1] / v2;
  return a1;
}


// ===== 4122bc FlushCallback(gameswf::render_state &,void *) =====
int __fastcall FlushCallback(int a1, int a2)
{
  return gameswf::display_list::display((gameswf::display_list *)(a2 + 168));
}


// ===== 4122c4 std::vector<Dragable,std::allocator<Dragable>>::_M_clear_after_move(void) =====
void __fastcall std::vector<Dragable>::_M_clear_after_move(Dragable **a1)
{
  Dragable *v1; // r4
  Dragable *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (Dragable *)((char *)v1 - 84);
      Dragable::~Dragable(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 4 * ((a1[2] - v1) >> 2);
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 412340 std::vector<Dropable,std::allocator<Dropable>>::_M_clear_after_move(void) =====
void __fastcall std::vector<Dropable>::_M_clear_after_move(Dropable **a1)
{
  Dropable *v1; // r4
  Dropable *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (Dropable *)((char *)v1 - 32);
      Dropable::~Dropable(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = (a1[2] - v1) & 0xFFFFFFE0;
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 4123a8 std::vector<Dragable,std::allocator<Dragable>>::~vector() =====
Dragable **__fastcall std::vector<Dragable>::~vector(Dragable **a1)
{
  Dragable *v1; // r5
  Dragable *v2; // r6
  Dragable *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (Dragable *)((char *)v1 - 84);
    Dragable::~Dragable(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 4 * ((a1[2] - v4) >> 2);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 412420 std::vector<Dropable,std::allocator<Dropable>>::~vector() =====
Dropable **__fastcall std::vector<Dropable>::~vector(Dropable **a1)
{
  Dropable *v1; // r5
  Dropable *v2; // r6
  Dropable *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (Dropable *)((char *)v1 - 32);
    Dropable::~Dropable(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = (a1[2] - v4) & 0xFFFFFFE0;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 412484 DragAndDrop::~DragAndDrop() =====
void __fastcall DragAndDrop::~DragAndDrop(Dropable **this)
{
  std::vector<Dropable>::~vector(this + 4);
  std::vector<Dragable>::~vector(this + 1);
}


// ===== 4124a4 DragAndDrop::~DragAndDrop() =====
void __fastcall DragAndDrop::~DragAndDrop(Dropable **this)
{
  std::vector<Dropable>::~vector(this + 4);
  std::vector<Dragable>::~vector(this + 1);
}


// ===== 4124c4 Dragable::Dragable(MenuFX *,gameswf::character *,gameswf::character *) =====
void __fastcall Dragable::Dragable(Dragable *this, MenuFX *a2, int **a3, gameswf::character *a4)
{
  int v6; // r0
  int v8; // r10
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int *v12; // r5
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  _DWORD v18[4]; // [sp+0h] [bp-30h] BYREF
  std::string v19; // [sp+14h] [bp-1Ch] BYREF
  int v20; // [sp+2Ch] [bp-4h]

  v6 = _stack_chk_guard;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 2) = a3;
  v20 = v6;
  ((void (__fastcall *)(int **, char *))(*a3)[75])(a3, (char *)this + 12);
  gameswf::rect::twips_to_pixels((Dragable *)((char *)this + 12));
  v8 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 14) = *(unsigned __int16 *)(v8 + 148);
  if ( a4 )
  {
    GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v18, a4);
    v9 = v18[1];
    v10 = v18[2];
    v11 = v18[3];
    *((_DWORD *)this + 8) = v18[0];
    *((_DWORD *)this + 9) = v9;
    *((_DWORD *)this + 10) = v10;
    *((_DWORD *)this + 11) = v11;
    v8 = *((_DWORD *)this + 2);
  }
  else
  {
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = 0;
    *((float *)this + 9) = (float)Width_Screen * 20.0;
    *((float *)this + 11) = (float)Height_Screen * 20.0;
  }
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 12) = (int)*(float *)(*(_DWORD *)(v8 + 76) + 8);
  *((_DWORD *)this + 13) = (int)*(float *)(*(_DWORD *)(v8 + 76) + 20);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v19, "isTracingDragable");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
  if ( (std::string *)v19._M_start_of_storage._M_data != &v19 && v19._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v19._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v19._M_start_of_storage._M_data,
        v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data);
  }
  v12 = a3[19];
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v12 += 4;
  *((_DWORD *)this + 15) = v13;
  *((_DWORD *)this + 16) = v14;
  *((_DWORD *)this + 17) = v15;
  *((_DWORD *)this + 18) = v16;
  v17 = v12[1];
  *((_DWORD *)this + 19) = *v12;
  *((_DWORD *)this + 20) = v17;
}


// ===== 4126a0 Dropable::TestDragable(Dragable *,bool) =====
int __fastcall Dropable::TestDragable(gameswf::character **this, gameswf::character **a2, int a3)
{
  int v4; // r8
  int result; // r0
  gameswf::ref_counted *v8; // r0
  _BYTE v9[4]; // [sp+8h] [bp-80h] BYREF
  gameswf::ref_counted *v10; // [sp+Ch] [bp-7Ch]
  std::string v11; // [sp+24h] [bp-64h] BYREF
  std::string v12; // [sp+3Ch] [bp-4Ch] BYREF
  std::string v13; // [sp+54h] [bp-34h] BYREF
  std::string v14; // [sp+6Ch] [bp-1Ch] BYREF

  v4 = *((unsigned __int8 *)this + 8);
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
        "activeDragable != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\DragAndDrop.cpp",
        209);
    }
  }
  result = Dropable::IsIntersecting(this, a2);
  *((_BYTE *)this + 8) = result;
  if ( !result )
  {
    if ( a3 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v13, "isTracingDropable");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
      std::string::~string(&v13);
      RenderFX::SetMember(*this, "_root", "dropped_clip", 0);
      return Dragable::SendEvent(a2, (DragAndDrop *)((char *)&dword_0 + 3));
    }
    goto LABEL_4;
  }
  if ( !a3 )
  {
LABEL_4:
    if ( v4 )
    {
      if ( !result )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v11, "isTracingDropable");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
        std::string::~string(&v11);
        Dragable::SendEvent(a2, (DragAndDrop *)((char *)&dword_0 + 1));
        return Dropable::SendEvent(this, (DragAndDrop *)((char *)&dword_0 + 1));
      }
    }
    else if ( result )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v12, "isTracingDropable");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
      std::string::~string(&v12);
      Dragable::SendEvent(a2, nullptr);
      return Dropable::SendEvent(this, nullptr);
    }
    return result;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "isTracingDropable");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  v8 = a2[2];
  v9[0] = 0;
  v9[1] = 5;
  v10 = v8;
  if ( v8 )
    gameswf::ref_counted::add_ref(v8);
  RenderFX::SetMember(*this, "_root", "dropped_clip", (gameswf::as_value *)v9);
  Dragable::SendEvent(a2, (DragAndDrop *)((char *)&dword_0 + 2));
  Dropable::SendEvent(this, (DragAndDrop *)((char *)&dword_0 + 2));
  return gameswf::as_value::drop_refs((gameswf::as_value *)v9);
}


// ===== 412984 Dragable::ResetPosition(void) =====
int __fastcall Dragable::ResetPosition(Dragable *this)
{
  int v2; // r7
  int v3; // r8
  int result; // r0
  int v5; // r7
  int v6; // r10
  std::string v7; // [sp+4h] [bp-20h] BYREF

  gameswf::character::set_matrix(*((_DWORD *)this + 2), (int *)this + 15);
  v2 = *((_DWORD *)this + 2);
  v3 = *((_DWORD *)this + 1);
  gameswf::weak_ptr<gameswf::character>::check_proxy(v2 + 60);
  RenderFX::RegisterDisplayCallback(v3, *(_DWORD *)(v2 + 64), 0, 0);
  RenderFX::RegisterDisplayCallback(*((_DWORD *)this + 1), *((_DWORD *)this + 2), 0, 0);
  result = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 2) + 8))(*((_DWORD *)this + 2), 2);
  if ( result )
  {
    v5 = *((_DWORD *)this + 2);
    if ( *((_DWORD *)this + 14) != *(unsigned __int16 *)(v5 + 148) )
    {
      gameswf::weak_ptr<gameswf::character>::check_proxy(v5 + 60);
      v6 = *(_DWORD *)(v5 + 64);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v7, "isTracingDragable");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
      std::string::~string(&v7);
      return gameswf::display_list::change_character_depth(
               (gameswf::display_list *)(v6 + 168),
               *((gameswf::character **)this + 2),
               *((_DWORD *)this + 14));
    }
  }
  return result;
}


// ===== 412aa8 DragAndDrop::ResetPositions(void) =====
void __fastcall DragAndDrop::ResetPositions(DragAndDrop *this)
{
  char *v1; // r4
  char *v2; // r6
  _BYTE v4[88]; // [sp+4h] [bp-58h] BYREF

  v1 = *((char **)this + 1);
  v2 = *((char **)this + 2);
  while ( v1 != v2 )
  {
    memcpy(v4, v1, 0x54u);
    Dragable::ResetPosition((Dragable *)v4);
    v1 += 84;
    Dragable::~Dragable((Dragable *)v4);
  }
  *(_DWORD *)this = 0;
}


// ===== 412b00 Dragable::OnEvent(RenderFX::Event &) =====
int __fastcall Dragable::OnEvent(RenderFX **this, RenderFX::Event *a2)
{
  int v4; // r6
  int v6; // r10
  void (__fastcall *v7)(int, char *, _BYTE *); // r11
  char *v8; // r0
  char v9; // r2
  MenuManager *v10; // r0
  int v11; // r3
  MenuManager *Instance; // r0
  float v13; // r10
  float v14; // r8
  float v15; // r11
  float v16; // r0
  int v17; // r1
  float v18; // r2
  float v19; // r12
  char *v20; // r3
  const char *v21; // r1
  RenderFX *v22; // r6
  int v23; // r8
  int Root; // r0
  int v25; // r6
  int v26; // r8
  unsigned __int16 *v27; // r0
  int v28; // r6
  int v29; // r8
  gameswf::display_list *v30; // r11
  int highest_depth; // r0
  float v32; // r11
  float *v33; // r0
  int v34; // [sp+4h] [bp-B8h]
  float v35; // [sp+14h] [bp-A8h]
  float v36; // [sp+14h] [bp-A8h]
  float v37; // [sp+18h] [bp-A4h]
  float v38; // [sp+18h] [bp-A4h]
  float v39; // [sp+1Ch] [bp-A0h]
  float v40; // [sp+20h] [bp-9Ch]
  float v41; // [sp+24h] [bp-98h]
  float v42[2]; // [sp+28h] [bp-94h] BYREF
  float v43; // [sp+30h] [bp-8Ch]
  float v44; // [sp+34h] [bp-88h]
  _BYTE v45[12]; // [sp+38h] [bp-84h] BYREF
  float v46; // [sp+44h] [bp-78h] BYREF
  float v47; // [sp+48h] [bp-74h]
  std::string v48; // [sp+58h] [bp-64h] BYREF
  std::string v49; // [sp+70h] [bp-4Ch] BYREF
  std::string v50; // [sp+88h] [bp-34h] BYREF
  char v51; // [sp+A0h] [bp-1Ch] BYREF
  char v52; // [sp+A1h] [bp-1Bh] BYREF
  void *p; // [sp+ACh] [bp-10h]
  unsigned int v54; // [sp+B0h] [bp-Ch]

  if ( *(RenderFX **)a2 == *(this + 2) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v50, "isTracingDragable");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v50);
    std::string::~string(&v50);
    v6 = *(_DWORD *)a2;
    v45[0] = 0;
    v45[1] = 0;
    v7 = *(void (__fastcall **)(int, char *, _BYTE *))(*(_DWORD *)v6 + 32);
    v51 = 1;
    v52 = 0;
    gameswf::tu_string::resize((gameswf::tu_string *)&v51, 11);
    if ( v51 == -1 )
      v8 = (char *)p;
    else
      v8 = &v52;
    strcpy(v8, "drag_locked");
    v9 = ((v54 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
    v54 = v54 & 0xFF000000 | 0xFFFFFF;
    HIBYTE(v54) = v9;
    v7(v6, &v51, v45);
    if ( v51 == -1 )
      gameswf::free_internal(p);
    v10 = (MenuManager *)gameswf::as_value::to_bool((gameswf::as_value *)v45);
    if ( v10 )
    {
      v4 = 0;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v49, "isTracingDragable");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v49);
      std::string::~string(&v49);
      goto LABEL_15;
    }
    v11 = *((_DWORD *)a2 + 2);
    if ( v11 != 6 )
    {
      if ( v11 == 7 )
      {
        v10 = (MenuManager *)Dragable::ResetPosition((Dragable *)this);
        goto LABEL_14;
      }
      if ( v11 != 5 )
      {
LABEL_14:
        Instance = (MenuManager *)MenuManager::GetInstance(v10);
        MenuManager::consumeEvent(Instance);
        v4 = 0;
LABEL_15:
        gameswf::as_value::drop_refs((gameswf::as_value *)v45);
        return v4;
      }
      (*(void (__fastcall **)(_DWORD, float *))(**(_DWORD **)a2 + 300))(*(_DWORD *)a2, v42);
      v13 = v42[0];
      v14 = v43;
      v15 = v42[0] + *((float *)a2 + 3);
      v16 = v43 + *((float *)a2 + 4);
      v17 = (int)*(this + 7);
      v47 = v16;
      v18 = *((float *)this + 8);
      v19 = *((float *)this + 9);
      v35 = *((float *)this + 10);
      v37 = *((float *)this + 11);
      if ( v17 == 2 )
      {
        v40 = v37 - v35;
        if ( (float)(v19 - v18) <= (float)(v37 - v35) )
          v40 = v19 - v18;
        v41 = v18 + (float)((float)(v19 - v18) * 0.5);
        v39 = v35 + (float)((float)(v37 - v35) * 0.5);
        v38 = v40 * 0.5;
        v32 = v15 - v41;
        v36 = v16 - v39;
        v46 = v32;
        v47 = v16 - v39;
        if ( (float)(v38 * v38) < (float)((float)(v46 * v46) + (float)(v36 * v36)) )
        {
          v33 = Point2D<float>::normalize(&v46);
          *v33 = *v33 * v38;
          v33[1] = v33[1] * v38;
          v32 = v46;
          v13 = v42[0];
          v36 = v47;
          v14 = v43;
        }
        v15 = v41 + v32;
        v47 = v39 + v36;
      }
      v46 = (float)((float)(v42[1] - v13) * -0.5) + v15;
      v47 = (float)((float)(v44 - v14) * -0.5) + v47;
      RenderFX::SetPosition(*(this + 1), *(gameswf::character **)a2, (int)(float)(v46 / 20.0), (int)(float)(v47 / 20.0));
      v20 = *(char **)(*(_DWORD *)a2 + 68);
      if ( *v20 == -1 )
        v21 = *((const char **)v20 + 3);
      else
        v21 = v20 + 1;
      if ( !LC_API_STRNCMP_0("btn_skill", v21, 9u) )
      {
        v22 = *(this + 1);
        v23 = (int)*(this + 2);
        Root = RenderFX::GetRoot(v22);
        RenderFX::RegisterDisplayCallback(v22, v23, FlushTextCallback, Root);
        v25 = (int)*(this + 1);
        v26 = (int)*(this + 2);
        gameswf::weak_ptr<gameswf::character>::check_proxy(v26 + 60);
        RenderFX::RegisterDisplayCallback(v25, *(_DWORD *)(v26 + 64), FlushCallback, *(this + 2));
        v27 = (unsigned __int16 *)*(this + 2);
        v28 = v27[74];
        if ( (*(int (__fastcall **)(unsigned __int16 *, int))(*(_DWORD *)v27 + 8))(v27, 2) )
        {
          v29 = (int)*(this + 2);
          gameswf::weak_ptr<gameswf::character>::check_proxy(v29 + 60);
          v30 = (gameswf::display_list *)(*(_DWORD *)(v29 + 64) + 168);
          highest_depth = gameswf::display_list::get_highest_depth(v30);
          if ( highest_depth != v28 + 1 )
          {
            v34 = highest_depth;
            v4 = 1;
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string(&v48, "isTracingDragable");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v48);
            std::string::~string(&v48);
            gameswf::display_list::change_character_depth(v30, *(this + 2), v34);
            goto LABEL_15;
          }
        }
      }
    }
    v4 = 1;
    goto LABEL_15;
  }
  return 0;
}


// ===== 4130c8 DragAndDrop::OnEvent(RenderFX::Event &) =====
int __fastcall DragAndDrop::OnEvent(DragAndDrop *this, RenderFX::Event *a2)
{
  RenderFX **v5; // r4
  RenderFX **v6; // r10
  Dragable *v7; // r5
  gameswf::character **v8; // r4
  gameswf::character **v9; // r10
  Dragable *v10; // r2
  gameswf::character **v11; // r1
  int v12; // r2
  gameswf::character **v13; // r0
  std::string v14; // [sp+4h] [bp-1Ch] BYREF

  if ( (unsigned int)(*((_DWORD *)a2 + 2) - 5) > 2 )
    return 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "isTracingDragNDrop");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  v5 = *((RenderFX ***)this + 1);
  v6 = *((RenderFX ***)this + 2);
  v7 = *(Dragable **)this;
  for ( *(_DWORD *)this = 0; v5 != v6; v5 += 21 )
  {
    if ( Dragable::OnEvent(v5, a2) )
    {
      if ( *((_DWORD *)a2 + 2) != 6 )
      {
        *(_DWORD *)this = v5;
        break;
      }
      v7 = (Dragable *)v5;
    }
  }
  if ( !v7 && !*(_DWORD *)this )
    return 0;
  v8 = *((gameswf::character ***)this + 4);
  v9 = *((gameswf::character ***)this + 5);
  while ( v8 != v9 )
  {
    v10 = *(Dragable **)this;
    if ( *(_DWORD *)this )
      v11 = *(gameswf::character ***)this;
    else
      v11 = (gameswf::character **)v7;
    v12 = v7 != v10 && v10 == nullptr;
    v13 = v8;
    v8 += 8;
    Dropable::TestDragable(v13, v11, v12);
  }
  if ( *((_DWORD *)a2 + 2) == 6 )
    Dragable::ResetPosition(v7);
  return 1;
}


// ===== 413240 Dragable::Dragable(MenuFX *,gameswf::character *,gameswf::character *) =====
void __fastcall Dragable::Dragable(Dragable *this, MenuFX *a2, int **a3, gameswf::character *a4)
{
  int v6; // r0
  int v8; // r10
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int *v12; // r5
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  _DWORD v18[4]; // [sp+0h] [bp-30h] BYREF
  std::string v19; // [sp+14h] [bp-1Ch] BYREF
  int v20; // [sp+2Ch] [bp-4h]

  v6 = _stack_chk_guard;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 2) = a3;
  v20 = v6;
  ((void (__fastcall *)(int **, char *))(*a3)[75])(a3, (char *)this + 12);
  gameswf::rect::twips_to_pixels((Dragable *)((char *)this + 12));
  v8 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 14) = *(unsigned __int16 *)(v8 + 148);
  if ( a4 )
  {
    GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v18, a4);
    v9 = v18[1];
    v10 = v18[2];
    v11 = v18[3];
    *((_DWORD *)this + 8) = v18[0];
    *((_DWORD *)this + 9) = v9;
    *((_DWORD *)this + 10) = v10;
    *((_DWORD *)this + 11) = v11;
    v8 = *((_DWORD *)this + 2);
  }
  else
  {
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = 0;
    *((float *)this + 9) = (float)Width_Screen * 20.0;
    *((float *)this + 11) = (float)Height_Screen * 20.0;
  }
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 12) = (int)*(float *)(*(_DWORD *)(v8 + 76) + 8);
  *((_DWORD *)this + 13) = (int)*(float *)(*(_DWORD *)(v8 + 76) + 20);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v19, "isTracingDragable");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
  std::string::~string(&v19);
  v12 = a3[19];
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v12 += 4;
  *((_DWORD *)this + 15) = v13;
  *((_DWORD *)this + 16) = v14;
  *((_DWORD *)this + 17) = v15;
  *((_DWORD *)this + 18) = v16;
  v17 = v12[1];
  *((_DWORD *)this + 19) = *v12;
  *((_DWORD *)this + 20) = v17;
}


// ===== 4133f4 std::allocator<Dragable>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Dragable>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x30C30C3 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 84 * a2;
  if ( 84 * a2 > 0x80 )
    result = CustomAlloc(84 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x54;
  return result;
}


// ===== 413480 DragAndDrop::AddDragable(MenuFX *,gameswf::character *,gameswf::character *) =====
void __fastcall DragAndDrop::AddDragable(DragAndDrop *this, MenuFX *a2, int **a3, gameswf::character *a4)
{
  void *v5; // r0
  void *v6; // r6
  unsigned int v7; // r2
  unsigned int v8; // r1
  char *v9; // r0
  int v10; // r9
  int v11; // r11
  char *v12; // r10
  char *v13; // r8
  int v14; // r7
  int v15; // r6
  size_t v16; // r3
  _BYTE v17[84]; // [sp+0h] [bp-5Ch] BYREF
  size_t v18; // [sp+54h] [bp-8h] BYREF

  Dragable::Dragable((Dragable *)v17, a2, a3, a4);
  v5 = *((void **)this + 2);
  v6 = *((void **)this + 3);
  if ( v5 == v6 )
  {
    v7 = 1022611261 * (((int)v6 - *((_DWORD *)this + 1)) >> 2);
    if ( v7 )
      v8 = 2045222522 * (((int)v6 - *((_DWORD *)this + 1)) >> 2);
    else
      v8 = 1;
    if ( v8 > 0x30C30C3 || v7 > v8 )
      v8 = 51130563;
    v18 = v8;
    v9 = (char *)std::allocator<Dragable>::_M_allocate((int)this + 12, v8, &v18);
    v10 = *((_DWORD *)this + 1);
    v11 = 1022611261 * (((int)v6 - v10) >> 2);
    v12 = v9;
    if ( v11 > 0 )
    {
      v14 = 1022611261 * (((int)v6 - v10) >> 2);
      v15 = 0;
      do
      {
        memcpy(&v12[v15], (const void *)(v10 + v15), 0x54u);
        --v14;
        v15 += 84;
      }
      while ( v14 );
      v13 = &v12[84 * v11];
    }
    else
    {
      v13 = v9;
    }
    memcpy(v13, v17, 0x54u);
    std::vector<Dragable>::_M_clear_after_move((Dragable **)this + 1);
    v16 = v18;
    *((_DWORD *)this + 1) = v12;
    *((_DWORD *)this + 2) = v13 + 84;
    *((_DWORD *)this + 3) = &v12[84 * v16];
  }
  else
  {
    memcpy(v5, v17, 0x54u);
    *((_DWORD *)this + 2) += 84;
  }
  Dragable::~Dragable((Dragable *)v17);
}


// ===== 4135b4 std::allocator<Dropable>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Dropable>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x7FFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 32 * a2;
  if ( 32 * a2 > 0x80 )
    result = CustomAlloc(32 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 5;
  return result;
}


// ===== 413624 DragAndDrop::AddDropable(MenuFX *,gameswf::character *) =====
void __fastcall DragAndDrop::AddDropable(int a1, int a2, int a3)
{
  _DWORD *v4; // r12
  _DWORD *v5; // r9
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  unsigned int v12; // r3
  unsigned int v13; // r1
  _DWORD *v14; // r0
  int v15; // r10
  _DWORD *v16; // r8
  int v17; // r9
  _DWORD *v18; // r9
  int v19; // r7
  unsigned int v20; // r6
  _DWORD *v21; // r12
  int v22; // r1
  int v23; // r2
  int v24; // r3
  _DWORD *v25; // lr
  _DWORD *v26; // r12
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r1
  int v31; // r2
  int v32; // r3
  int v33; // r1
  int v34; // r2
  int v35; // r3
  size_t v36; // r3
  int v37; // [sp+4h] [bp-24h] BYREF
  int v38; // [sp+8h] [bp-20h]
  int v39; // [sp+Ch] [bp-1Ch]
  int v40; // [sp+10h] [bp-18h]
  int v41; // [sp+14h] [bp-14h]
  int v42; // [sp+18h] [bp-10h]
  int v43; // [sp+1Ch] [bp-Ch]
  int v44; // [sp+20h] [bp-8h]
  size_t v45; // [sp+24h] [bp-4h] BYREF

  Dropable::Dropable(&v37, a2, a3);
  v4 = *(_DWORD **)(a1 + 20);
  v5 = *(_DWORD **)(a1 + 24);
  if ( v4 == v5 )
  {
    v12 = ((int)v5 - *(_DWORD *)(a1 + 16)) >> 5;
    if ( v12 )
      v13 = 2 * v12;
    else
      v13 = 1;
    if ( v13 > 0x7FFFFFF || v12 > v13 )
      v13 = 0x7FFFFFF;
    v45 = v13;
    v14 = std::allocator<Dropable>::_M_allocate(a1 + 24, v13, &v45);
    v15 = *(_DWORD *)(a1 + 16);
    v16 = v14;
    v17 = ((int)v5 - v15) >> 5;
    if ( v17 > 0 )
    {
      v19 = v17;
      v20 = 0;
      do
      {
        v21 = &v14[v20 / 4];
        v22 = *(_DWORD *)(v15 + v20 + 4);
        v23 = *(_DWORD *)(v15 + v20 + 8);
        v24 = *(_DWORD *)(v15 + v20 + 12);
        v25 = (_DWORD *)(v15 + v20 + 16);
        *v21 = *(_DWORD *)(v15 + v20);
        v21[1] = v22;
        v21[2] = v23;
        v21[3] = v24;
        v26 = &v14[v20 / 4 + 4];
        --v19;
        v27 = *(_DWORD *)(v15 + v20 + 20);
        v28 = *(_DWORD *)(v15 + v20 + 24);
        v29 = *(_DWORD *)(v15 + v20 + 28);
        v20 += 32;
        *v26 = *v25;
        v26[1] = v27;
        v26[2] = v28;
        v26[3] = v29;
      }
      while ( v19 );
      v18 = &v14[8 * v17];
    }
    else
    {
      v18 = v14;
    }
    v30 = v38;
    v31 = v39;
    v32 = v40;
    *v18 = v37;
    v18[1] = v30;
    v18[2] = v31;
    v18[3] = v32;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v18[4] = v41;
    v18[5] = v33;
    v18[6] = v34;
    v18[7] = v35;
    std::vector<Dropable>::_M_clear_after_move((Dropable **)(a1 + 16));
    v36 = v45;
    *(_DWORD *)(a1 + 16) = v16;
    *(_DWORD *)(a1 + 24) = &v16[8 * v36];
    *(_DWORD *)(a1 + 20) = v18 + 8;
  }
  else
  {
    v6 = v38;
    v7 = v39;
    v8 = v40;
    *v4 = v37;
    v4[1] = v6;
    v4[2] = v7;
    v4[3] = v8;
    v9 = v42;
    v10 = v43;
    v11 = v44;
    v4[4] = v41;
    v4[5] = v9;
    v4[6] = v10;
    v4[7] = v11;
    *(_DWORD *)(a1 + 20) += 32;
  }
  Dropable::~Dropable((Dropable *)&v37);
}


// ===== 413748 FlashAnimManager::FlashAnimManager(void) =====
void __fastcall FlashAnimManager::FlashAnimManager(FlashAnimManager *this)
{
  FlashAnimManager *v1; // r3

  v1 = this;
  do
  {
    *(_DWORD *)v1 = 0;
    *((_DWORD *)v1 + 1) = 0;
    *((_DWORD *)v1 + 2) = 0;
    *((_DWORD *)v1 + 3) = 0;
    *((_DWORD *)v1 + 4) = 0;
    *((_DWORD *)v1 + 5) = 0;
    *((_DWORD *)v1 + 6) = -1;
    *((_DWORD *)v1 + 7) = 0;
    *((_BYTE *)v1 + 32) = 0;
    v1 = (FlashAnimManager *)((char *)v1 + 80);
  }
  while ( v1 != (FlashAnimManager *)((char *)this + 960) );
  *((_DWORD *)this + 240) = 0;
  *((_DWORD *)this + 241) = 0;
  *((_DWORD *)this + 242) = 0;
  *((_DWORD *)this + 243) = 0;
  *((_DWORD *)this + 245) = 0;
  *((_BYTE *)this + 976) = 0;
  *((_DWORD *)this + 247) = (char *)this + 976;
  *((_DWORD *)this + 248) = 0;
  *((_DWORD *)this + 246) = (char *)this + 976;
}


// ===== 4137b4 FlashAnimManager::FlashAnimManager(void) =====
void __fastcall FlashAnimManager::FlashAnimManager(FlashAnimManager *this)
{
  FlashAnimManager *v1; // r3

  v1 = this;
  do
  {
    *(_DWORD *)v1 = 0;
    *((_DWORD *)v1 + 1) = 0;
    *((_DWORD *)v1 + 2) = 0;
    *((_DWORD *)v1 + 3) = 0;
    *((_DWORD *)v1 + 4) = 0;
    *((_DWORD *)v1 + 5) = 0;
    *((_DWORD *)v1 + 6) = -1;
    *((_DWORD *)v1 + 7) = 0;
    *((_BYTE *)v1 + 32) = 0;
    v1 = (FlashAnimManager *)((char *)v1 + 80);
  }
  while ( v1 != (FlashAnimManager *)((char *)this + 960) );
  *((_DWORD *)this + 240) = 0;
  *((_DWORD *)this + 241) = 0;
  *((_DWORD *)this + 242) = 0;
  *((_DWORD *)this + 243) = 0;
  *((_DWORD *)this + 245) = 0;
  *((_BYTE *)this + 976) = 0;
  *((_DWORD *)this + 247) = (char *)this + 976;
  *((_DWORD *)this + 248) = 0;
  *((_DWORD *)this + 246) = (char *)this + 976;
}


// ===== 413820 FlashAnimManager::StopAllFlashAnim(void) =====
int __fastcall FlashAnimManager::StopAllFlashAnim(int this)
{
  int i; // r3

  for ( i = 0; i != 12; ++i )
  {
    *(_DWORD *)(this + 20) = 0;
    this += 80;
  }
  return this;
}


// ===== 413840 FlashAnimManager::ResetScanForAnims(MenuFX *) =====
int __fastcall FlashAnimManager::ResetScanForAnims(int this, int a2)
{
  int v2; // r3
  int v3; // r2

  if ( *(_DWORD *)(this + 960) == a2 )
  {
    v2 = *(_DWORD *)(this + 964);
    v3 = *(_DWORD *)(this + 968);
    *(_DWORD *)(this + 960) = 0;
    if ( v2 != v3 )
      *(_DWORD *)(this + 968) = v2;
    return FlashAnimManager::StopAllFlashAnim(this);
  }
  return this;
}


// ===== 413868 FlashAnimManager::StopFlashAnim(int) =====
int __fastcall FlashAnimManager::StopFlashAnim(int this, int a2)
{
  *(_DWORD *)(this + 16 * (5 * a2 + 1) + 4) = 0;
  return this;
}


// ===== 413880 FlashAnimManager::FindAvailableAnimContextID(void) =====
int __fastcall FlashAnimManager::FindAvailableAnimContextID(FlashAnimManager *this)
{
  int v1; // r3
  int v2; // r2

  v1 = 0;
  while ( 1 )
  {
    v2 = *((_DWORD *)this + 5);
    this = (FlashAnimManager *)((char *)this + 80);
    if ( (v2 & 1) == 0 )
      break;
    if ( ++v1 == 12 )
      return -1;
  }
  return v1;
}


// ===== 4138ac FlashAnimManager::Update(void) =====
int __fastcall FlashAnimManager::Update(FlashAnimManager *this)
{
  int CurrentLevel; // r0
  _BOOL4 v3; // r3
  RenderFX *v4; // r0
  int v5; // r5
  int result; // r0
  int v7; // r8
  FlashAnimManager *v8; // r4
  int v9; // r7
  int v10; // r6
  int v11; // r2
  int v12; // r3
  int v13; // r7
  _DWORD *v14; // r6
  int v15; // r2
  int v16; // r3
  int v17; // r3
  gameswf::root *Root; // r0
  int v19; // [sp+4h] [bp-8h]

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v3 = CurrentLevel && *(int *)(CurrentLevel + 304) > 1 && *(_DWORD *)(CurrentLevel + 304) <= 26;
  v4 = *((RenderFX **)this + 240);
  if ( v4 && !v3 )
  {
    Root = (gameswf::root *)RenderFX::GetRoot(v4);
    v5 = (int)(float)(1000.0 / COERCE_FLOAT(gameswf::root::get_frame_rate(Root)));
  }
  else
  {
    v5 = 33;
  }
  result = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  v7 = 0;
  v8 = this;
  v19 = result;
  do
  {
    v9 = *((_DWORD *)v8 + 5);
    if ( (v9 & 1) != 0 )
    {
      v10 = *((_DWORD *)v8 + 6);
      v11 = *((_DWORD *)v8 + 7);
      v12 = v19 + *((_DWORD *)v8 + 4);
      *((_DWORD *)v8 + 4) = v12;
      v13 = v9 & 2;
      v14 = (_DWORD *)(*((_DWORD *)this + 241) + 96 * v10 + 12 * v11);
      v15 = v12 - v5;
      if ( v12 > v5 )
      {
        do
        {
          v16 = *((_DWORD *)v8 + 3);
          *((_DWORD *)v8 + 4) = v15;
          *((_DWORD *)v8 + 3) = v16 + 1;
          result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v14 + 316))(*v14);
          if ( v13 && result <= *((_DWORD *)v8 + 3) )
          {
            result = FlashAnimManager::StopFlashAnim((int)this, v7);
            *(_BYTE *)(*((_DWORD *)this + 241) + 96 * *((_DWORD *)v8 + 6) + 12 * *((_DWORD *)v8 + 7) + 8) = 0;
            v17 = *((_DWORD *)v8 + 4);
          }
          else
          {
            v17 = *((_DWORD *)v8 + 4);
          }
          v15 = v17 - v5;
        }
        while ( v17 > v5 );
      }
    }
    ++v7;
    v8 = (FlashAnimManager *)((char *)v8 + 80);
  }
  while ( v7 != 12 );
  return result;
}


// ===== 413a28 FlashAnimManager::UpdateAnimInstance(FlashAnimContext *) =====
int __fastcall FlashAnimManager::UpdateAnimInstance(int this, FlashAnimContext *a2)
{
  gameswf::character *v3; // r1

  v3 = *(gameswf::character **)(*(_DWORD *)(this + 964) + 96 * *((_DWORD *)a2 + 6) + 12 * *((_DWORD *)a2 + 7) + 4);
  if ( v3 )
    return RenderFX::FormatHTML(*(RenderFX **)(this + 960), v3, "%s", (const char *)a2 + 32);
  return this;
}


// ===== 413a7c gameswf::tu_string::tu_string(char const*) =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const char *a2)
{
  size_t v4; // r0
  char *v5; // r0
  unsigned int v7; // r3

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    gameswf::tu_string::resize(this, v4);
    if ( *(char *)this == -1 )
      v5 = *((char **)this + 3);
    else
      v5 = (char *)this + 1;
    LC_API_STRCPY_0(v5, a2);
  }
  v7 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 4) = v7;
  *((_BYTE *)this + 19) = HIBYTE(v7) & 0xFE;
  return this;
}


// ===== 413aec FlashAnimContext::SetText(char const*) =====
char *__fastcall FlashAnimContext::SetText(FlashAnimContext *this, const char *a2)
{
  char *result; // r0

  result = (char *)LC_API_STRLEN_0(a2);
  if ( (int)result <= 46 )
    return LC_API_STRCPY_0((char *)this + 32, a2);
  return result;
}


// ===== 413b1c FlashAnimManager::FindAnimInstance(int) =====
int __fastcall FlashAnimManager::FindAnimInstance(FlashAnimManager *this, int a2)
{
  int v2; // r10
  int v3; // r8
  int v5; // r4
  int v6; // r6
  int v8; // r8
  int highest_depth; // r0
  int v10; // r0
  gameswf::character *v11; // r2
  char *v12; // [sp+4h] [bp-60h]
  char s[64]; // [sp+8h] [bp-5Ch] BYREF
  _BYTE v14[8]; // [sp+48h] [bp-1Ch] BYREF
  void *p; // [sp+54h] [bp-10h]

  v2 = *((_DWORD *)this + 241);
  v3 = 96 * a2;
  v5 = 0;
  v6 = v2 + 96 * a2;
  while ( *(_BYTE *)(v6 + 8) )
  {
    ++v5;
    v6 += 12;
    if ( v5 == 8 )
    {
      v6 = v2 + 96 * a2 + 84;
      v5 = 7;
      break;
    }
  }
  if ( !*(_DWORD *)v6 )
  {
    sprintf(s, "_clone_%d", v5);
    v12 = *(char **)(**(_DWORD **)(v2 + v3) + 212);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v14, s);
    v8 = *(_DWORD *)(v2 + v3);
    gameswf::weak_ptr<gameswf::character>::check_proxy(v8 + 60);
    highest_depth = gameswf::sprite_instance::get_highest_depth(*(gameswf::sprite_instance **)(v8 + 64));
    v10 = ((int (__fastcall *)(int, _BYTE *, int))v12)(v8, v14, highest_depth);
    *(_DWORD *)v6 = v10;
    v11 = (gameswf::character *)v10;
    if ( v14[0] == -1 )
    {
      gameswf::free_internal(p);
      v11 = *(gameswf::character **)v6;
    }
    *(_DWORD *)(v6 + 4) = RenderFX::Find(*((RenderFX **)this + 240), "_text", v11);
  }
  *(_BYTE *)(v6 + 8) = 1;
  return v5;
}


// ===== 413c6c FlashAnimManager::PlayFlashAnim(int,int,int,int,int) =====
_DWORD *__fastcall FlashAnimManager::PlayFlashAnim(FlashAnimManager *this, int a2, int a3, int a4, int a5, int a6)
{
  int AvailableAnimContextID; // r0
  int v11; // r8
  _DWORD *v12; // r7
  _DWORD *v13; // r3

  AvailableAnimContextID = FlashAnimManager::FindAvailableAnimContextID(this);
  v11 = AvailableAnimContextID;
  if ( AvailableAnimContextID < 0 )
    return nullptr;
  v12 = (_DWORD *)((char *)this + 80 * AvailableAnimContextID);
  v12[6] = a2;
  v12[7] = FlashAnimManager::FindAnimInstance(this, a2);
  *((_DWORD *)this + 20 * v11) = a3;
  v12[1] = a4;
  *((_DWORD *)this + 20 * v11 + 3) = a5;
  v13 = (_DWORD *)((char *)this + 80 * v11 + 16);
  *v13 = 0;
  v13[1] = a6 | 1;
  return v12;
}


// ===== 413cf4 FlashAnimManager::PlayFlashAnim(int,glitch::core::vector3d<float> const&,int,int) =====
_DWORD *__fastcall FlashAnimManager::PlayFlashAnim(FlashAnimManager *a1, int a2, _DWORD *a3, int a4, int a5)
{
  int v8; // r8
  int v9; // r11
  int v10; // r10
  __int64 v11; // r0
  float v12; // r9
  __int64 v13; // r0
  float v14; // r0
  int v16; // [sp+8h] [bp-Ch] BYREF
  int v17; // [sp+Ch] [bp-8h]

  v17 = 0;
  v16 = 0;
  GetScreenPosFromWorldPos(a3, &v16);
  v8 = *((_DWORD *)a1 + 241);
  v9 = v16;
  v10 = v17;
  v11 = ((__int64 (__fastcall *)(_DWORD))*(_DWORD *)(**(_DWORD **)(v8 + 96 * a2) + 84))(*(_DWORD *)(v8 + 96 * a2));
  v12 = COERCE_FLOAT(GameSWFUtils::GetInvPixelScaleX((GameSWFUtils *)v11, (gameswf::root *)HIDWORD(v11)));
  v13 = ((__int64 (__fastcall *)(_DWORD))*(_DWORD *)(**(_DWORD **)(v8 + 96 * a2) + 84))(*(_DWORD *)(v8 + 96 * a2));
  v14 = COERCE_FLOAT(GameSWFUtils::GetInvPixelScaleY((GameSWFUtils *)v13, (gameswf::root *)HIDWORD(v13)));
  return FlashAnimManager::PlayFlashAnim(a1, a2, (int)(float)(v12 * (float)v9), (int)(float)(v14 * (float)v10), a4, a5);
}


// ===== 413dc4 FlashAnimManager::PlayScrollingCombatText(int,glitch::core::vector3d<float> const&,char const*,int) =====
FlashAnimContext *__fastcall FlashAnimManager::PlayScrollingCombatText(
        FlashAnimManager *a1,
        int a2,
        _DWORD *a3,
        const char *a4,
        int a5)
{
  FlashAnimContext *v7; // r0
  FlashAnimContext *v8; // r6

  v7 = (FlashAnimContext *)FlashAnimManager::PlayFlashAnim(a1, a2, a3, 0, 2);
  v8 = v7;
  if ( v7 )
  {
    *((_DWORD *)v7 + 2) = a5;
    FlashAnimContext::SetText(v7, a4);
    FlashAnimManager::UpdateAnimInstance((int)a1, v8);
  }
  return v8;
}


// ===== 413e14 gameswf::array<gameswf::character *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::character *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(_DWORD *)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2, 0);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 413e90 FlashAnimManager::GetInstance(void) =====
void *__fastcall FlashAnimManager::GetInstance(FlashAnimManager *this)
{
  if ( (`guard variable for'FlashAnimManager::GetInstance(void)::singleton & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'FlashAnimManager::GetInstance(void)::singleton) )
  {
    FlashAnimManager::FlashAnimManager((FlashAnimManager *)&FlashAnimManager::GetInstance(void)::singleton);
    _cxa_guard_release(&`guard variable for'FlashAnimManager::GetInstance(void)::singleton);
    _aeabi_atexit(
      (int)&FlashAnimManager::GetInstance(void)::singleton,
      (int)FlashAnimManager::~FlashAnimManager,
      (int)&_dso_handle);
  }
  return &FlashAnimManager::GetInstance(void)::singleton;
}


// ===== 413f14 FlashAnimContext::SetTextToNumber(int) =====
void __fastcall FlashAnimContext::SetTextToNumber(FlashAnimContext *this, int a2)
{
  if ( a2 < 0 )
    *((_BYTE *)this + 32) = 0;
  if ( (`guard variable for'FlashAnimContext::SetTextToNumber(int)::MAX_NUMBER & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'FlashAnimContext::SetTextToNumber(int)::MAX_NUMBER) )
  {
    FlashAnimContext::SetTextToNumber(int)::MAX_NUMBER = 2147483646;
    _cxa_guard_release(&`guard variable for'FlashAnimContext::SetTextToNumber(int)::MAX_NUMBER);
  }
  if ( a2 < FlashAnimContext::SetTextToNumber(int)::MAX_NUMBER )
    sprintf((char *)this + 32, "%d", a2);
}


// ===== 413fa0 FlashAnimManager::PlayScrollingCombatValue(int,glitch::core::vector3d<float> const&,int,int) =====
FlashAnimContext *__fastcall FlashAnimManager::PlayScrollingCombatValue(
        FlashAnimManager *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  FlashAnimContext *v7; // r0
  FlashAnimContext *v8; // r6

  v7 = (FlashAnimContext *)FlashAnimManager::PlayFlashAnim(a1, a2, a3, 0, 2);
  v8 = v7;
  if ( v7 )
  {
    *((_DWORD *)v7 + 2) = a5;
    FlashAnimContext::SetTextToNumber(v7, a4);
    FlashAnimManager::UpdateAnimInstance((int)a1, v8);
  }
  return v8;
}


// ===== 413ff0 `global constructor keyed to'.._.._sources_Game_Menus_FlashAnimManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_FlashAnimManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3660 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A365C = 1056964608;
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


// ===== 4140cc std::vector<FlashAnimManager::SWFDataInstances,std::allocator<FlashAnimManager::SWFDataInstances>>::~vector() =====
int __fastcall std::vector<FlashAnimManager::SWFDataInstances>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 32 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 5);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 414128 FlashAnimManager::~FlashAnimManager() =====
void __fastcall FlashAnimManager::~FlashAnimManager(FlashAnimManager *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 248) )
  {
    v2 = (char *)this + 976;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 976,
      *((_DWORD *)this + 245));
    *((_DWORD *)this + 247) = v2;
    *((_DWORD *)this + 248) = 0;
    *((_DWORD *)this + 246) = v2;
    *((_DWORD *)this + 245) = 0;
    std::vector<FlashAnimManager::SWFDataInstances>::~vector((int)this + 964);
  }
  else
  {
    std::vector<FlashAnimManager::SWFDataInstances>::~vector((int)this + 964);
  }
}


// ===== 414180 FlashAnimManager::~FlashAnimManager() =====
void __fastcall FlashAnimManager::~FlashAnimManager(FlashAnimManager *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 248) )
  {
    v2 = (char *)this + 976;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 976,
      *((_DWORD *)this + 245));
    *((_DWORD *)this + 247) = v2;
    *((_DWORD *)this + 248) = 0;
    *((_DWORD *)this + 246) = v2;
    *((_DWORD *)this + 245) = 0;
    std::vector<FlashAnimManager::SWFDataInstances>::~vector((int)this + 964);
  }
  else
  {
    std::vector<FlashAnimManager::SWFDataInstances>::~vector((int)this + 964);
  }
}


// ===== 4141d8 std::allocator<FlashAnimManager::SWFDataInstances>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<FlashAnimManager::SWFDataInstances>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x2AAAAAA )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 96 * a2;
  if ( 96 * a2 > 0x80 )
    result = CustomAlloc(96 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x60;
  return result;
}


// ===== 414260 FlashAnimManager::Draw(void) =====
char *__fastcall FlashAnimManager::Draw(FlashAnimManager *this)
{
  int Switch; // r5
  char *result; // r0
  FlashAnimManager *v4; // r4
  int v5; // r8
  int v6; // r5
  gameswf::character *v7; // r11
  int v8; // r9
  gameswf::character *v9; // r1
  int v10; // r8
  int v11; // [sp+10h] [bp-2Ch]
  std::string v12; // [sp+1Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v12, "IsDisablingFlashAnimation");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  result = v12._M_start_of_storage._M_data;
  if ( (std::string *)v12._M_start_of_storage._M_data != &v12 && v12._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v12._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v12._M_start_of_storage._M_data,
        v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data);
  }
  if ( !Switch )
  {
    result = *((char **)this + 240);
    if ( result )
    {
      RenderFX::SetTextBufferingEnabled((RenderFX *)result, 0);
      RenderFX::BeginDisplay(*((RenderFX **)this + 240));
      v4 = this;
      do
      {
        if ( (*((_DWORD *)v4 + 5) & 1) != 0 )
        {
          v5 = *((_DWORD *)v4 + 7);
          v6 = *((_DWORD *)this + 241) + 96 * *((_DWORD *)v4 + 6);
          v7 = *(gameswf::character **)(v6 + 12 * v5);
          if ( v7 )
          {
            v8 = (int)(float)(*(float *)(*((_DWORD *)v7 + 19) + 8) / 20.0);
            v11 = (int)(float)(*(float *)(*((_DWORD *)v7 + 19) + 20) / 20.0);
            RenderFX::SetPosition(*((RenderFX **)this + 240), v7, v8 + *(_DWORD *)v4, v11 + *((_DWORD *)v4 + 1));
            RenderFX::GotoFrame(
              *((RenderFX **)this + 240),
              *(gameswf::character **)(v6 + 12 * v5),
              *((_DWORD *)v4 + 3),
              0);
            v9 = *(gameswf::character **)(v6 + 12 * v5 + 4);
            if ( v9 )
              RenderFX::SetColorTransform(*((RenderFX **)this + 240), v9, 0xFF000000, *((_DWORD *)v4 + 2));
            v10 = 12 * v5;
            *(_BYTE *)(*(_DWORD *)(v6 + v10) + 155) = 1;
            (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v6 + v10) + 288))(*(_DWORD *)(v6 + v10));
            *(_BYTE *)(*(_DWORD *)(v6 + v10) + 155) = 0;
            RenderFX::SetPosition(*((RenderFX **)this + 240), *(gameswf::character **)(v6 + v10), v8, v11);
          }
        }
        v4 = (FlashAnimManager *)((char *)v4 + 80);
      }
      while ( v4 != (FlashAnimManager *)((char *)this + 960) );
      RenderFX::SetTextBufferingEnabled(*((RenderFX **)this + 240), 1);
      return (char *)RenderFX::EndDisplay(*((RenderFX **)this + 240));
    }
  }
  return result;
}


// ===== 414484 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r5
  _DWORD *v4; // r10
  const void *v5; // r3
  std::string *M_data; // r4
  int v7; // r7
  int v8; // r6
  size_t v9; // r2
  int v10; // r11
  const void *v11; // r3
  std::string *v12; // r4
  int v13; // r7
  int v14; // r6
  size_t v15; // r2
  int v16; // r8
  std::string v19; // [sp+1Ch] [bp-38h] BYREF
  std::string v20; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    while ( 1 )
    {
      std::string::string(&v20, *a2);
      v5 = (const void *)v2[9];
      M_data = (std::string *)v20._M_start_of_storage._M_data;
      v7 = v2[8] - (_DWORD)v5;
      v8 = v20._M_finish - v20._M_start_of_storage._M_data;
      if ( v20._M_finish - v20._M_start_of_storage._M_data >= v7 )
        v9 = v2[8] - (_DWORD)v5;
      else
        v9 = v20._M_finish - v20._M_start_of_storage._M_data;
      v10 = memcmp(v5, v20._M_start_of_storage._M_data, v9);
      if ( !v10 )
      {
        if ( v7 >= v8 )
          v10 = v7 > v8;
        else
          v10 = -1;
      }
      if ( M_data == &v20 || !M_data )
        break;
      if ( (unsigned int)(v20._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v20._M_buffers._M_end_of_storage - (char *)M_data);
        break;
      }
      CustomFree(M_data);
      if ( v10 < 0 )
        v2 = (_DWORD *)v2[3];
      else
        v4 = v2;
      if ( v10 >= 0 )
        v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_26;
    }
    if ( v10 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v10 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
LABEL_26:
  if ( v4 == a1 )
    return v4;
  std::string::string(&v19, *a2);
  v11 = (const void *)v4[9];
  v12 = (std::string *)v19._M_start_of_storage._M_data;
  v13 = v4[8] - (_DWORD)v11;
  v14 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v13 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v15 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v15 = v4[8] - (_DWORD)v11;
  v16 = memcmp(v19._M_start_of_storage._M_data, v11, v15);
  if ( !v16 )
  {
    if ( v14 >= v13 )
      v16 = v14 > v13;
    else
      v16 = -1;
  }
  if ( v12 == &v19 || !v12 )
  {
LABEL_38:
    if ( v16 >= 0 )
      return v4;
    return a1;
  }
  if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)v12) <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v19._M_buffers._M_end_of_storage - (char *)v12);
    goto LABEL_38;
  }
  CustomFree(v12);
  if ( v16 < 0 )
    return a1;
  return v4;
}


// ===== 414678 FlashAnimManager::GetStyleIdFromName(char const*) =====
int __fastcall FlashAnimManager::GetStyleIdFromName(FlashAnimManager *this, char *a2)
{
  char *v2; // r4
  char *v3; // r0
  char *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v2 = (char *)this + 976;
  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_find<char const*>(
                 (_DWORD *)this + 244,
                 &v5);
  if ( v3 == v2 )
    return 0;
  else
    return *((_DWORD *)v3 + 10);
}


// ===== 4146ac std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v3; // r5
  const void *v4; // r3
  std::string *M_data; // r4
  int v6; // r7
  int v7; // r6
  size_t v8; // r2
  int v9; // r11
  _DWORD *v11; // [sp+4h] [bp-30h]
  std::string v12; // [sp+14h] [bp-20h] BYREF

  v11 = a1;
  v3 = (_DWORD *)a1[1];
  if ( v3 )
  {
    while ( 1 )
    {
      std::string::string(&v12, *a2);
      v4 = (const void *)v3[9];
      M_data = (std::string *)v12._M_start_of_storage._M_data;
      v6 = v3[8] - (_DWORD)v4;
      v7 = v12._M_finish - v12._M_start_of_storage._M_data;
      if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
        v8 = v3[8] - (_DWORD)v4;
      else
        v8 = v12._M_finish - v12._M_start_of_storage._M_data;
      v9 = memcmp(v4, v12._M_start_of_storage._M_data, v8);
      if ( !v9 )
      {
        if ( v6 >= v7 )
          v9 = v6 > v7;
        else
          v9 = -1;
      }
      if ( M_data == &v12 || !M_data )
        goto LABEL_4;
      if ( (unsigned int)(v12._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v12._M_buffers._M_end_of_storage - (char *)M_data);
LABEL_4:
        if ( v9 < 0 )
        {
          v3 = (_DWORD *)v3[3];
        }
        else
        {
          v11 = v3;
          v3 = (_DWORD *)v3[2];
        }
        if ( !v3 )
          return v11;
      }
      else
      {
        CustomFree(M_data);
        if ( v9 < 0 )
        {
          v3 = (_DWORD *)v3[3];
        }
        else
        {
          v11 = v3;
          v3 = (_DWORD *)v3[2];
        }
        if ( !v3 )
          return v11;
      }
    }
  }
  return v11;
}


// ===== 4147e0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(std::pair<std::string const,int> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
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


// ===== 414838 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
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


// ===== 414928 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(std::pair<std::string const,int> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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


// ===== 414b40 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,int>,std::priv::_MapTraitsT<std::pair<std::string const,int>>>,std::pair<std::string const,int> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_insert(
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


// ===== 415044 std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,int>::operator[]<char const*>(char *a1, char **a2)
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
  std::string v15; // [sp+18h] [bp-54h] BYREF
  int v16; // [sp+30h] [bp-3Ch]
  std::string v17; // [sp+34h] [bp-38h] BYREF
  std::string v18; // [sp+4Ch] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 != a1 )
  {
    std::string::string(&v18, *a2);
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
    }
    else if ( v7 >= v6 )
    {
LABEL_7:
      std::string::~string(&v18);
      v10 = v4;
      return v10 + 40;
    }
    std::string::~string(&v18);
  }
  std::string::string(&v17, *a2);
  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::string::_M_range_initialize(&v15, v17._M_start_of_storage._M_data, v17._M_finish);
  v13 = v4;
  v16 = 0;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
    &v14,
    a1,
    &v13,
    (int)&v15);
  v12 = v14;
  if ( (std::string *)v15._M_start_of_storage._M_data != &v15 && v15._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v15._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v15._M_start_of_storage._M_data,
        v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data);
  }
  if ( (std::string *)v17._M_start_of_storage._M_data != &v17 && v17._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data) > 0x80 )
    {
      CustomFree(v17._M_start_of_storage._M_data);
      v10 = v12;
      return v10 + 40;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v17._M_start_of_storage._M_data,
      v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data);
  }
  v10 = v12;
  return v10 + 40;
}


// ===== 4151d8 FlashAnimManager::ScanForAnims(MenuFX *) =====
void __fastcall FlashAnimManager::ScanForAnims(FlashAnimManager *this, MenuFX *a2)
{
  gameswf::character *FlashRoot; // r0
  int v5; // r4
  _DWORD *Characters; // r0
  int v7; // r5
  _DWORD *v8; // r7
  gameswf::character **v9; // r3
  int v10; // r5
  int v11; // r3
  _DWORD *v12; // r0
  int v13; // r7
  _DWORD *v14; // r8
  void *v15; // r7
  void *v16; // r2
  char *v17; // r3
  char *v18; // r3
  int v19; // r3
  int v20; // r2
  int i; // r3
  int v22; // r3
  void *v23; // r2
  int v24; // r3
  unsigned int v25; // r2
  unsigned int v26; // r3
  char *v27; // r0
  int v28; // r1
  char *v29; // r10
  int v30; // r8
  int v31; // r7
  int v32; // r5
  void *v33; // r0
  char *v34; // r10
  size_t v35; // r3
  int v36; // r3
  int v37; // r2
  char *v38; // [sp+1Ch] [bp-A8h]
  int v39; // [sp+20h] [bp-A4h]
  int v40; // [sp+30h] [bp-94h]
  gameswf::character *v41[24]; // [sp+38h] [bp-8Ch] BYREF
  gameswf::character **v42; // [sp+98h] [bp-2Ch] BYREF
  int v43; // [sp+9Ch] [bp-28h]
  int v44; // [sp+A0h] [bp-24h]
  char v45; // [sp+A4h] [bp-20h] BYREF
  int v46; // [sp+A8h] [bp-1Ch] BYREF
  int v47; // [sp+ACh] [bp-18h]
  int v48; // [sp+B0h] [bp-14h]
  char v49; // [sp+B4h] [bp-10h]
  size_t v50; // [sp+B8h] [bp-Ch] BYREF
  char *v51; // [sp+BCh] [bp-8h] BYREF

  if ( a2 )
  {
    if ( *((_DWORD *)this + 240) )
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
          "m_animMenuFxRoot == 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\FlashAnimManager.cpp",
          80);
      }
    }
    *((_DWORD *)this + 240) = a2;
    FlashRoot = (gameswf::character *)RenderFX::GetFlashRoot(a2);
    v5 = 0;
    Characters = (_DWORD *)RenderFX::FindCharacters(a2, FlashRoot, "anim_", 0);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v7 = Characters[1];
    v8 = Characters;
    if ( v7 > 0 )
    {
      gameswf::array<gameswf::character *>::reserve((int)&v46, v7 + (v7 >> 1));
      v36 = 0;
      do
        *(_DWORD *)(v46 + 4 * v5++) = 0;
      while ( v5 != v7 );
      v47 = v5;
      do
      {
        *(_DWORD *)(v46 + 4 * v36) = *(_DWORD *)(*v8 + 4 * v36);
        ++v36;
      }
      while ( v36 < v47 );
    }
    else
    {
      v47 = Characters[1];
    }
    v9 = &v41[3];
    v10 = 0;
    do
    {
      *(v9 - 3) = nullptr;
      *(v9 - 2) = nullptr;
      *((_BYTE *)v9 - 4) = 0;
      v9 += 3;
    }
    while ( v9 != (gameswf::character **)&v45 );
    v11 = v47;
    if ( v47 > 0 )
    {
      while ( 1 )
      {
        v41[0] = *(gameswf::character **)(v46 + 4 * v10);
        v12 = (_DWORD *)RenderFX::FindCharacters(a2, v41[0], "_text", 0);
        v42 = nullptr;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v13 = v12[1];
        v14 = v12;
        if ( v13 <= 0 )
          break;
        gameswf::array<gameswf::character *>::reserve((int)&v42, v13 + (v13 >> 1));
        for ( i = 0; i != v13; ++i )
          v42[i] = nullptr;
        v43 = i;
        v22 = 0;
        do
        {
          v42[v22] = *(gameswf::character **)(*v14 + 4 * v22);
          ++v22;
        }
        while ( v22 < v43 );
        if ( v43 <= 0 )
          goto LABEL_14;
        v15 = *((void **)this + 242);
        v23 = *((void **)this + 243);
        v41[1] = *v42;
        if ( v15 == v23 )
        {
LABEL_33:
          v24 = ((int)v15 - *((_DWORD *)this + 241)) >> 5;
          v25 = -1431655765 * v24;
          if ( -1431655765 * v24 )
            v26 = 1431655766 * v24;
          else
            v26 = 1;
          if ( v26 > 0x2AAAAAA || v25 > v26 )
            v26 = 44739242;
          v50 = v26;
          v27 = (char *)std::allocator<FlashAnimManager::SWFDataInstances>::_M_allocate((int)this + 972, v26, &v50);
          v38 = v27;
          v28 = *((_DWORD *)this + 241);
          v39 = -1431655765 * (((int)v15 - v28) >> 5);
          if ( v39 > 0 )
          {
            v30 = -1431655765 * (((int)v15 - v28) >> 5);
            v40 = v10;
            v31 = 0;
            v32 = *((_DWORD *)this + 241);
            do
            {
              memcpy(&v38[v31], (const void *)(v32 + v31), 0x60u);
              --v30;
              v31 += 96;
            }
            while ( v30 );
            v10 = v40;
            v29 = &v38[96 * v39];
          }
          else
          {
            v29 = v27;
          }
          memcpy(v29, v41, 0x60u);
          v33 = *((void **)this + 241);
          v34 = v29 + 96;
          if ( v33 )
          {
            if ( (unsigned int)(32 * ((*((_DWORD *)this + 243) - (int)v33) >> 5)) > 0x80 )
              CustomFree(v33);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v33, 32 * ((*((_DWORD *)this + 243) - (int)v33) >> 5));
          }
          v35 = v50;
          *((_DWORD *)this + 242) = v34;
          *((_DWORD *)this + 241) = v38;
          *((_DWORD *)this + 243) = &v38[96 * v35];
          goto LABEL_16;
        }
LABEL_15:
        memcpy(v15, v41, 0x60u);
        *((_DWORD *)this + 242) += 96;
LABEL_16:
        v17 = *((char **)v41[0] + 17);
        if ( *v17 == -1 )
          v18 = *((char **)v17 + 3);
        else
          v18 = v17 + 1;
        v51 = v18;
        *(_DWORD *)std::map<std::string,int>::operator[]<char const*>((char *)this + 976, &v51) = v10;
        *((_BYTE *)v41[0] + 155) = 0;
        v19 = v43;
        if ( v43 < 0 )
        {
          v20 = v43;
          do
          {
            ++v19;
            v42[v20++] = nullptr;
          }
          while ( v19 );
        }
        v43 = 0;
        gameswf::array<gameswf::character *>::reserve((int)&v42, 0);
        v11 = v47;
        if ( ++v10 >= v47 )
        {
          if ( v47 > 0 )
            goto LABEL_22;
          goto LABEL_55;
        }
      }
      v43 = v12[1];
LABEL_14:
      v15 = *((void **)this + 242);
      v16 = *((void **)this + 243);
      v41[1] = nullptr;
      if ( v15 == v16 )
        goto LABEL_33;
      goto LABEL_15;
    }
LABEL_55:
    if ( v11 < 0 )
    {
      v37 = 4 * v11;
      do
      {
        ++v11;
        *(_DWORD *)(v46 + v37) = 0;
        v37 += 4;
      }
      while ( v11 );
    }
LABEL_22:
    v47 = 0;
    gameswf::array<gameswf::character *>::reserve((int)&v46, 0);
  }
}


// ===== 4156b8 FSCommandParam::GetString(char const*) =====
int __fastcall FSCommandParam::GetString(FSCommandParam *this, const char *a2)
{
  return 1;
}


// ===== 4156c0 FSCommandParamTokenizer::GetNumParams(void) =====
int __fastcall FSCommandParamTokenizer::GetNumParams(FSCommandParamTokenizer *this)
{
  return -1431655765 * ((*((_DWORD *)this + 1) - *(_DWORD *)this) >> 3);
}


// ===== 4156e8 `global constructor keyed to'.._.._sources_Game_Menus_FSCommandParamTokenizer.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_FSCommandParamTokenizer.cpp()
{
  dword_9A366C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3668 = 1056964608;
}


// ===== 415708 std::priv::__copy<FSCommandParam *,FSCommandParam *,int>(FSCommandParam *,FSCommandParam *,FSCommandParam *,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__copy<FSCommandParam *,FSCommandParam *,int>(int a1, int a2, std::string *this)
{
  int v3; // r3
  int v4; // r4
  std::string *v5; // r7
  int v6; // r8
  int v7; // r6
  std::string *v8; // r5

  v3 = (a2 - a1) >> 3;
  v4 = a1;
  v5 = this;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v7 = -1431655765 * v3;
    v8 = this;
    while ( 1 )
    {
      if ( v8 != (std::string *)v4 )
        std::string::_M_assign(v8, *(const char **)(v4 + 20), *(const char **)(v4 + 16));
      --v7;
      ++v8;
      if ( !v7 )
        break;
      v4 += 24;
    }
    v5 += v6;
  }
  return v5;
}


// ===== 41577c FSCommandParam::GetFloat(float *) =====
bool __fastcall FSCommandParam::GetFloat(FSCommandParam *this, float *a2)
{
  float v3; // r0

  v3 = strtod((const char *)*((_DWORD *)this + 5), nullptr);
  *a2 = v3;
  return v3 != 0.0;
}


// ===== 4157b4 FSCommandParam::GetInt(int *) =====
bool __fastcall FSCommandParam::GetInt(const char **this, int *a2)
{
  int v3; // r0

  v3 = LC_API_ATOI_0(*(this + 5));
  *a2 = v3;
  return v3 != 0;
}


// ===== 4157d4 std::priv::__find_first_of_aux2<char const*,char const*,char,std::priv::_Identity<bool>>(char const*,char const*,char const*,char const*,char *,std::priv::_Identity<bool>,std::__true_type const&) [clone] =====
unsigned __int8 *__fastcall std::priv::__find_first_of_aux2<char const*,char const*,char,std::priv::_Identity<bool>>(
        unsigned __int8 *result,
        unsigned __int8 *a2,
        char *a3)
{
  char *i; // r5
  unsigned int v4; // t1
  unsigned int v5; // r3
  char *j; // r2
  _DWORD var24[15]; // [sp+4h] [bp-24h] BYREF

  memset(var24, 0, 32);
  for ( i = "|"; i != a3; *((_BYTE *)var24 + (v4 >> 3)) |= 1 << (v4 & 7) )
    v4 = (unsigned __int8)*i++;
  if ( a2 != result )
  {
    v5 = *result;
    for ( j = (char *)&var24[9] + (v5 >> 3);
          (((int)(unsigned __int8)*(j - 36) >> (v5 & 7)) & 1) == 0;
          j = (char *)&var24[9] + (v5 >> 3) )
    {
      if ( ++result == a2 )
        break;
      v5 = *result;
    }
  }
  return result;
}


// ===== 4158c4 std::priv::__find_first_of_aux2<char const*,char const*,char const,std::unary_negate<std::priv::_Identity<bool>>>(char const*,char const*,char const*,char const*,char const *,std::unary_negate<std::priv::_Identity<bool>>,std::__true_type const&) [clone] =====
unsigned __int8 *__fastcall std::priv::__find_first_of_aux2<char const*,char const*,char const,std::unary_negate<std::priv::_Identity<bool>>>(
        unsigned __int8 *result,
        unsigned __int8 *a2,
        char *a3)
{
  char *i; // r5
  unsigned int v4; // t1
  unsigned int v5; // r3
  char *j; // r2
  _DWORD var24[15]; // [sp+4h] [bp-24h] BYREF

  memset(var24, 0, 32);
  for ( i = "|"; i != a3; *((_BYTE *)var24 + (v4 >> 3)) |= 1 << (v4 & 7) )
    v4 = (unsigned __int8)*i++;
  if ( a2 != result )
  {
    v5 = *result;
    for ( j = (char *)&var24[9] + (v5 >> 3);
          (((int)(unsigned __int8)*(j - 36) >> (v5 & 7)) & 1) != 0;
          j = (char *)&var24[9] + (v5 >> 3) )
    {
      if ( ++result == a2 )
        break;
      v5 = *result;
    }
  }
  return result;
}


// ===== 4159b4 FSCommandParam::~FSCommandParam() =====
void __fastcall FSCommandParam::~FSCommandParam(FSCommandParam *this)
{
  FSCommandParam *v2; // r0
  size_t v3; // r1

  v2 = *((FSCommandParam **)this + 5);
  if ( v2 != this && v2 )
  {
    v3 = *(_DWORD *)this - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 4159f8 std::vector<FSCommandParam,std::allocator<FSCommandParam>>::_M_clear_after_move(void) =====
void __fastcall std::vector<FSCommandParam>::_M_clear_after_move(FSCommandParam **a1)
{
  FSCommandParam *v1; // r4
  FSCommandParam *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (FSCommandParam *)((char *)v1 - 24);
      FSCommandParam::~FSCommandParam(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    if ( (unsigned int)(8 * ((a1[2] - v1) >> 3)) > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 8 * ((a1[2] - v1) >> 3));
  }
}


// ===== 415a7c std::vector<FSCommandParam,std::allocator<FSCommandParam>>::~vector() =====
FSCommandParam **__fastcall std::vector<FSCommandParam>::~vector(FSCommandParam **a1)
{
  FSCommandParam *v1; // r5
  FSCommandParam *v2; // r6
  FSCommandParam *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (FSCommandParam *)((char *)v1 - 24);
    FSCommandParam::~FSCommandParam(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * ((a1[2] - v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 415afc std::vector<FSCommandParam,std::allocator<FSCommandParam>>::_M_erase(FSCommandParam*,FSCommandParam*,std::__false_type const&) =====
std::string *__fastcall std::vector<FSCommandParam>::_M_erase(int a1, std::string *this, int a3)
{
  std::string *v5; // r0
  std::string *v6; // r7
  std::string *v7; // r8
  std::string *v8; // r6
  FSCommandParam *v9; // r0

  v5 = std::priv::__copy<FSCommandParam *,FSCommandParam *,int>(a3, *(_DWORD *)(a1 + 4), this);
  v6 = *(std::string **)(a1 + 4);
  v7 = v5;
  if ( v6 != v5 )
  {
    v8 = v5;
    do
    {
      v9 = (FSCommandParam *)v8++;
      FSCommandParam::~FSCommandParam(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return this;
}


// ===== 415b64 FSCommandParamTokenizer::~FSCommandParamTokenizer() =====
void __fastcall FSCommandParamTokenizer::~FSCommandParamTokenizer(FSCommandParamTokenizer *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 1);
  if ( *(_DWORD *)this != v1 )
    std::vector<FSCommandParam>::_M_erase((int)this, *(std::string **)this, v1);
  std::vector<FSCommandParam>::~vector((FSCommandParam **)this);
}


// ===== 415b98 FSCommandParamTokenizer::~FSCommandParamTokenizer() =====
void __fastcall FSCommandParamTokenizer::~FSCommandParamTokenizer(FSCommandParamTokenizer *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 1);
  if ( *(_DWORD *)this != v1 )
    std::vector<FSCommandParam>::_M_erase((int)this, *(std::string **)this, v1);
  std::vector<FSCommandParam>::~vector((FSCommandParam **)this);
}


// ===== 415bcc std::allocator<FSCommandParam>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<FSCommandParam>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 415c54 FSCommandParam::~FSCommandParam() =====
void __fastcall FSCommandParam::~FSCommandParam(FSCommandParam *this)
{
  FSCommandParam *v2; // r0
  size_t v3; // r1

  v2 = *((FSCommandParam **)this + 5);
  if ( v2 != this && v2 )
  {
    v3 = *(_DWORD *)this - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 415c98 FSCommandParam::FSCommandParam(char const*) =====
void __fastcall FSCommandParam::FSCommandParam(FSCommandParam *this, char *a2)
{
  std::string::string((std::string *)this, a2);
}


// ===== 415cb8 FSCommandParam::FSCommandParam(char const*) =====
void __fastcall FSCommandParam::FSCommandParam(FSCommandParam *this, char *a2)
{
  std::string::string((std::string *)this, a2);
}


// ===== 415cd8 std::string::string(std::string const&,uint,uint,std::allocator<char> const&) =====
std::string *__fastcall std::string::string(std::string *a1, int a2, unsigned int a3, unsigned int a4)
{
  int v5; // r12
  unsigned int v6; // lr
  unsigned int v7; // lr
  unsigned int v8; // r3

  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  v5 = *(_DWORD *)(a2 + 20);
  v6 = *(_DWORD *)(a2 + 16) - v5;
  if ( a3 > v6 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
    return a1;
  }
  else
  {
    v7 = v6 - a3;
    if ( a4 > v7 )
      v8 = a3 + v7;
    else
      v8 = a3 + a4;
    std::string::_M_range_initialize(a1, (const char *)(v5 + a3), (const char *)(v5 + v8));
    return a1;
  }
}


// ===== 415d3c std::vector<FSCommandParam,std::allocator<FSCommandParam>>::push_back(FSCommandParam const&) =====
void __fastcall std::vector<FSCommandParam>::push_back(FSCommandParam **a1, int a2)
{
  std::string *v3; // r9
  std::string *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  std::string *v8; // r0
  FSCommandParam *v9; // r5
  std::string *v10; // r10
  int v11; // r3
  int v12; // r9
  std::string *v13; // r9
  int v14; // r6
  std::string *v15; // r4
  std::string *v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v3 = (std::string *)a1[2];
  v4 = (std::string *)a1[1];
  if ( v4 == v3 )
  {
    v6 = -1431655765 * (((char *)v3 - (char *)*a1) >> 3);
    if ( v6 )
      v7 = 1431655766 * (((char *)v3 - (char *)*a1) >> 3);
    else
      v7 = 1;
    if ( v7 > 0xAAAAAAA || v6 > v7 )
      v7 = 178956970;
    v17 = v7;
    v8 = (std::string *)std::allocator<FSCommandParam>::_M_allocate((int)(a1 + 2), v7, &v17);
    v9 = *a1;
    v10 = v8;
    v11 = ((char *)v3 - (char *)*a1) >> 3;
    v12 = -1431655765 * v11;
    if ( -1431655765 * v11 > 0 )
    {
      v14 = -1431655765 * v11;
      v15 = v8;
      while ( 1 )
      {
        v15->_M_finish = (char *)v15;
        v15->_M_start_of_storage._M_data = (char *)v15;
        std::string::_M_range_initialize(v15, *((const char **)v9 + 5), *((const char **)v9 + 4));
        --v14;
        ++v15;
        if ( !v14 )
          break;
        v9 = (FSCommandParam *)((char *)v9 + 24);
      }
      v13 = v10 + v12;
    }
    else
    {
      v13 = v8;
    }
    v13->_M_finish = (char *)v13;
    v13->_M_start_of_storage._M_data = (char *)v13;
    std::string::_M_range_initialize(v13, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
    std::vector<FSCommandParam>::_M_clear_after_move(a1);
    v16 = &v10[v17];
    *a1 = (FSCommandParam *)v10;
    a1[2] = (FSCommandParam *)v16;
    a1[1] = (FSCommandParam *)&v13[1];
  }
  else
  {
    v4->_M_finish = (char *)v4;
    v4->_M_start_of_storage._M_data = (char *)v4;
    std::string::_M_range_initialize(v4, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
    a1[1] = (FSCommandParam *)((char *)a1[1] + 24);
  }
}


// ===== 415e90 FSCommandParamTokenizer::Tokenize(char const*) =====
void __fastcall FSCommandParamTokenizer::Tokenize(FSCommandParam **this, char *a2)
{
  std::string *M_finish; // r1
  unsigned __int8 *v4; // r0
  unsigned int v5; // r6
  unsigned __int8 *v6; // r0
  unsigned int v7; // r4
  _BOOL4 v8; // r3
  unsigned __int8 *v9; // r0
  unsigned __int8 *v10; // r0
  _BOOL4 v11; // r3
  _BYTE v12[24]; // [sp+34h] [bp-50h] BYREF
  std::string v13; // [sp+4Ch] [bp-38h] BYREF
  std::string v14; // [sp+64h] [bp-20h] BYREF

  std::string::string(&v14, a2);
  M_finish = (std::string *)v14._M_finish;
  if ( v14._M_finish != v14._M_start_of_storage._M_data )
  {
    v4 = std::priv::__find_first_of_aux2<char const*,char const*,char const,std::unary_negate<std::priv::_Identity<bool>>>(
           (unsigned __int8 *)v14._M_start_of_storage._M_data,
           (unsigned __int8 *)v14._M_finish,
           "");
    if ( v4 == (unsigned __int8 *)v14._M_finish
      || ((v5 = v4 - (unsigned __int8 *)v14._M_start_of_storage._M_data,
           (char *)(v4 - (unsigned __int8 *)v14._M_start_of_storage._M_data) >= (char *)(v14._M_finish
                                                                                       - v14._M_start_of_storage._M_data))
       || (v6 = std::priv::__find_first_of_aux2<char const*,char const*,char,std::priv::_Identity<bool>>(
                  v4,
                  (unsigned __int8 *)v14._M_finish,
                  ""),
           v6 == (unsigned __int8 *)v14._M_finish)
        ? (v8 = 0, v7 = -1)
        : (v7 = v6 - (unsigned __int8 *)v14._M_start_of_storage._M_data,
           v8 = v6 - (unsigned __int8 *)v14._M_start_of_storage._M_data != -1),
          !v8 && v5 == -1) )
    {
LABEL_23:
      M_finish = (std::string *)v14._M_start_of_storage._M_data;
    }
    else
    {
      while ( 1 )
      {
        std::string::string(&v13, (int)&v14, v5, v7 - v5);
        FSCommandParam::FSCommandParam((FSCommandParam *)v12, v13._M_start_of_storage._M_data);
        std::vector<FSCommandParam>::push_back(this, (int)v12);
        FSCommandParam::~FSCommandParam((FSCommandParam *)v12);
        if ( (std::string *)v13._M_start_of_storage._M_data != &v13 && v13._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) > 0x80 )
            CustomFree(v13._M_start_of_storage._M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v13._M_start_of_storage._M_data,
              v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
        }
        if ( v7 >= v14._M_finish - v14._M_start_of_storage._M_data )
        {
          M_finish = (std::string *)v14._M_start_of_storage._M_data;
          goto LABEL_2;
        }
        v9 = std::priv::__find_first_of_aux2<char const*,char const*,char const,std::unary_negate<std::priv::_Identity<bool>>>(
               (unsigned __int8 *)&v14._M_start_of_storage._M_data[v7],
               (unsigned __int8 *)v14._M_finish,
               "");
        if ( v9 == (unsigned __int8 *)v14._M_finish )
          break;
        v5 = v9 - (unsigned __int8 *)v14._M_start_of_storage._M_data;
        if ( (char *)(v9 - (unsigned __int8 *)v14._M_start_of_storage._M_data) >= (char *)(v14._M_finish
                                                                                         - v14._M_start_of_storage._M_data)
          || (v10 = std::priv::__find_first_of_aux2<char const*,char const*,char,std::priv::_Identity<bool>>(
                      v9,
                      (unsigned __int8 *)v14._M_finish,
                      ""),
              v10 == (unsigned __int8 *)v14._M_finish) )
        {
          v7 = -1;
          v11 = 0;
        }
        else
        {
          v7 = v10 - (unsigned __int8 *)v14._M_start_of_storage._M_data;
          v11 = v10 - (unsigned __int8 *)v14._M_start_of_storage._M_data != -1;
        }
        if ( !v11 && v5 == -1 )
          goto LABEL_23;
      }
      M_finish = (std::string *)v14._M_start_of_storage._M_data;
    }
  }
LABEL_2:
  if ( M_finish != &v14 && M_finish )
  {
    if ( (unsigned int)(v14._M_buffers._M_end_of_storage - (char *)M_finish) > 0x80 )
      CustomFree(M_finish);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_finish, v14._M_buffers._M_end_of_storage - (char *)M_finish);
  }
}


// ===== 416100 FSCommandParamTokenizer::FSCommandParamTokenizer(char const*) =====
void __fastcall FSCommandParamTokenizer::FSCommandParamTokenizer(FSCommandParamTokenizer *this, char *a2)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  FSCommandParamTokenizer::Tokenize((FSCommandParam **)this, a2);
  *((_DWORD *)this + 3) = *(_DWORD *)this;
}


// ===== 416130 FSCommandParamTokenizer::FSCommandParamTokenizer(char const*) =====
void __fastcall FSCommandParamTokenizer::FSCommandParamTokenizer(FSCommandParamTokenizer *this, char *a2)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  FSCommandParamTokenizer::Tokenize((FSCommandParam **)this, a2);
  *((_DWORD *)this + 3) = *(_DWORD *)this;
}


// ===== 416160 FSCommandParamTokenizer::GetLastParam(void) =====
std::string *__fastcall FSCommandParamTokenizer::GetLastParam(std::string *this, _DWORD *a2)
{
  int v2; // r3

  v2 = a2[1];
  if ( -1431655765 * ((v2 - *a2) >> 3) )
  {
    this->_M_finish = (char *)this;
    this->_M_start_of_storage._M_data = (char *)this;
    std::string::_M_range_initialize(this, *(const char **)(v2 - 4), *(const char **)(v2 - 8));
  }
  else
  {
    FSCommandParam::FSCommandParam((FSCommandParam *)this, "");
  }
  return this;
}


// ===== 4161c8 FSCommandParamTokenizer::GetFirstParam(void) =====
std::string *__fastcall FSCommandParamTokenizer::GetFirstParam(std::string *this, int *a2)
{
  int v2; // r3

  v2 = *a2;
  if ( -1431655765 * ((a2[1] - *a2) >> 3) )
  {
    this->_M_finish = (char *)this;
    this->_M_start_of_storage._M_data = (char *)this;
    std::string::_M_range_initialize(this, *(const char **)(v2 + 20), *(const char **)(v2 + 16));
  }
  else
  {
    FSCommandParam::FSCommandParam((FSCommandParam *)this, "");
  }
  return this;
}


// ===== 416230 FSCommandParamTokenizer::GetParam(uint) =====
std::string *__fastcall FSCommandParamTokenizer::GetParam(std::string *this, int *a2, unsigned int a3)
{
  int v3; // r3

  v3 = *a2;
  if ( a3 < -1431655765 * ((a2[1] - *a2) >> 3) )
  {
    this->_M_finish = (char *)this;
    this->_M_start_of_storage._M_data = (char *)this;
    std::string::_M_range_initialize(this, *(const char **)(v3 + 24 * a3 + 20), *(const char **)(v3 + 24 * a3 + 16));
  }
  else
  {
    FSCommandParam::FSCommandParam((FSCommandParam *)this, "");
  }
  return this;
}


// ===== 41629c FSCommandParamTokenizer::GetPrevParam(void) =====
FSCommandParamTokenizer *__fastcall FSCommandParamTokenizer::GetPrevParam(FSCommandParamTokenizer *this, int *a2)
{
  int v2; // r3
  unsigned int v3; // r12
  unsigned int v5; // r12

  v2 = *a2;
  v3 = a2[4];
  if ( v3 >= -1431655765 * ((a2[1] - *a2) >> 3) )
  {
    FSCommandParam::FSCommandParam(this, "");
    return this;
  }
  else
  {
    if ( v3 )
    {
      v5 = v3 - 1;
      v2 += 24 * v5;
      a2[4] = v5;
    }
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::string::_M_range_initialize((std::string *)this, *(const char **)(v2 + 20), *(const char **)(v2 + 16));
    return this;
  }
}


// ===== 41631c FSCommandParamTokenizer::GetNextParam(void) =====
FSCommandParamTokenizer *__fastcall FSCommandParamTokenizer::GetNextParam(FSCommandParamTokenizer *this, int *a2)
{
  int v2; // r3
  unsigned int v3; // lr
  unsigned int v5; // r2

  v2 = *a2;
  v3 = a2[4];
  v5 = -1431655765 * ((a2[1] - *a2) >> 3);
  if ( v3 >= v5 )
  {
    FSCommandParam::FSCommandParam(this, "");
    return this;
  }
  else
  {
    if ( v3 < v5 - 1 )
      a2[4] = v3 + 1;
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::string::_M_range_initialize(
      (std::string *)this,
      *(const char **)(v2 + 24 * v3 + 20),
      *(const char **)(v2 + 24 * v3 + 16));
    return this;
  }
}


// ===== 4163c8 GameSWFUtils::SetTextHeight(gameswf::character *,int) =====
int __fastcall GameSWFUtils::SetTextHeight(GameSWFUtils *this, gameswf::character *a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(GameSWFUtils *, int, int))(*(_DWORD *)this + 8))(this, 32, a3);
  if ( result )
  {
    *((float *)this + 93) = (float)(int)a2 * 20.0;
    return 1;
  }
  return result;
}


// ===== 41640c GameSWFUtils::SetLineSpacing(gameswf::character *,int) =====
int __fastcall GameSWFUtils::SetLineSpacing(GameSWFUtils *this, gameswf::character *a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(GameSWFUtils *, int, int))(*(_DWORD *)this + 8))(this, 32, a3);
  if ( result )
  {
    *((float *)this + 88) = (float)(int)a2 * 20.0;
    return 1;
  }
  return result;
}


// ===== 416450 GameSWFUtils::GotoFrame(gameswf::character *,int) =====
int __fastcall GameSWFUtils::GotoFrame(int a1, int a2)
{
  if ( !a1 || !(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 2) )
    return 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 316))(a1);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 332))(a1, a2);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 148))(a1, 1);
  return 1;
}


// ===== 4164c0 GameSWFUtils::GetPixelScaleX(gameswf::root *) =====
float __fastcall GameSWFUtils::GetPixelScaleX(GameSWFUtils *this, gameswf::root *a2)
{
  return (float)*((int *)this + 11)
       / (float)((float)(*(float *)(*((_DWORD *)this + 3) + 184) - *(float *)(*((_DWORD *)this + 3) + 180)) / 20.0);
}


// ===== 4164fc GameSWFUtils::GetPixelScaleY(gameswf::root *) =====
float __fastcall GameSWFUtils::GetPixelScaleY(GameSWFUtils *this, gameswf::root *a2)
{
  return (float)*((int *)this + 12)
       / (float)((float)(*(float *)(*((_DWORD *)this + 3) + 192) - *(float *)(*((_DWORD *)this + 3) + 188)) / 20.0);
}


// ===== 416538 GameSWFUtils::GetInvPixelScaleX(gameswf::root *) =====
float __fastcall GameSWFUtils::GetInvPixelScaleX(GameSWFUtils *this, gameswf::root *a2)
{
  return (float)((float)(*(float *)(*((_DWORD *)this + 3) + 184) - *(float *)(*((_DWORD *)this + 3) + 180)) / 20.0)
       / (float)*((int *)this + 11);
}


// ===== 416578 GameSWFUtils::GetInvPixelScaleY(gameswf::root *) =====
float __fastcall GameSWFUtils::GetInvPixelScaleY(GameSWFUtils *this, gameswf::root *a2)
{
  return (float)((float)(*(float *)(*((_DWORD *)this + 3) + 192) - *(float *)(*((_DWORD *)this + 3) + 188)) / 20.0)
       / (float)*((int *)this + 12);
}


// ===== 4165b8 gameswf::matrix::concatenate(gameswf::matrix const&) =====
int __fastcall gameswf::matrix::concatenate(float *a1, float *a2)
{
  float v2; // r7
  float v3; // r7
  float v4; // r7
  float v5; // r7
  float v6; // r7
  float v7; // r5
  float *v8; // r4
  float v10; // [sp+0h] [bp-1Ch]
  float v11; // [sp+4h] [bp-18h]
  float v12; // [sp+Ch] [bp-10h]
  float v13; // [sp+10h] [bp-Ch]

  v2 = (float)(*a1 * *a2) + (float)(a1[1] * a2[3]);
  if ( v2 < -3.4028e38 || v2 > 3.4028e38 )
    v2 = 0.0;
  v10 = v2;
  v3 = (float)(a1[3] * *a2) + (float)(a1[4] * a2[3]);
  if ( v3 < -3.4028e38 || v3 > 3.4028e38 )
    v3 = 0.0;
  v12 = v3;
  v4 = (float)(*a1 * a2[1]) + (float)(a1[1] * a2[4]);
  if ( v4 < -3.4028e38 || v4 > 3.4028e38 )
    v4 = 0.0;
  v11 = v4;
  v5 = (float)(a1[3] * a2[1]) + (float)(a1[4] * a2[4]);
  if ( v5 < -3.4028e38 || v5 > 3.4028e38 )
    v5 = 0.0;
  v13 = v5;
  v6 = (float)((float)(*a1 * a2[2]) + (float)(a1[1] * a2[5])) + a1[2];
  if ( v6 < -3.4028e38 || v6 > 3.4028e38 )
    v6 = 0.0;
  v7 = (float)((float)(a1[3] * a2[2]) + (float)(a1[4] * a2[5])) + a1[5];
  if ( v7 < -3.4028e38 || v7 > 3.4028e38 )
    v7 = 0.0;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v6;
  a1[3] = v12;
  v8 = a1 + 4;
  *v8 = v13;
  v8[1] = v7;
  return LODWORD(v13);
}


// ===== 41684c GameSWFUtils::MoveBtnPos(gameswf::character *,float,float) =====
int __fastcall GameSWFUtils::MoveBtnPos(gameswf::character **this, gameswf::character *a2, float a3, float a4)
{
  _DWORD *world_matrix; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r0
  float v14; // r1
  float v15; // r2
  int v16; // r3
  float v17; // r7
  float v18; // r7
  float v19[2]; // [sp+0h] [bp-48h] BYREF
  float v20; // [sp+8h] [bp-40h]
  int v21; // [sp+Ch] [bp-3Ch]
  int v22; // [sp+10h] [bp-38h]
  float v23; // [sp+14h] [bp-34h]
  _DWORD v24[6]; // [sp+18h] [bp-30h] BYREF
  float v25[2]; // [sp+30h] [bp-18h] BYREF
  float v26; // [sp+38h] [bp-10h]
  int v27; // [sp+3Ch] [bp-Ch]
  int v28; // [sp+40h] [bp-8h]
  float v29; // [sp+44h] [bp-4h]

  if ( !this )
    return 0;
  v26 = 0.0;
  v27 = 0;
  v29 = 0.0;
  v28 = 1065353216;
  v25[1] = 0.0;
  v25[0] = 1.0;
  gameswf::weak_ptr<gameswf::character>::check_proxy((int)(this + 15));
  if ( *(this + 16) )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)(this + 15));
    world_matrix = (_DWORD *)gameswf::character::get_world_matrix(*(this + 16));
    v9 = world_matrix[1];
    v10 = world_matrix[2];
    v11 = world_matrix[3];
    v24[0] = *world_matrix;
    v24[1] = v9;
    v24[2] = v10;
    v24[3] = v11;
    v12 = world_matrix[5];
    v24[4] = world_matrix[4];
    v24[5] = v12;
    gameswf::matrix::set_inverse((gameswf::matrix *)v25, (const gameswf::matrix *)v24);
  }
  v13 = gameswf::character::get_world_matrix((gameswf::character *)this);
  v14 = *(float *)(v13 + 4);
  v15 = *(float *)(v13 + 8);
  v16 = *(_DWORD *)(v13 + 12);
  v19[0] = *(float *)v13;
  v19[1] = v14;
  v20 = v15;
  v21 = v16;
  v22 = *(_DWORD *)(v13 + 16);
  v17 = *(float *)&a2 * 20.0;
  if ( v17 < -3.4028e38 || v17 > 3.4028e38 )
    v17 = 0.0;
  v20 = v17;
  v18 = a3 * 20.0;
  if ( (float)(a3 * 20.0) < -3.4028e38 || v18 > 3.4028e38 )
    v18 = 0.0;
  v23 = v18;
  gameswf::matrix::concatenate(v25, v19);
  RenderFX::SetPosition(nullptr, (gameswf::character *)this, (int)(float)(v26 / 20.0), (int)(float)(v29 / 20.0));
  return 1;
}


// ===== 4169e8 GameSWFUtils::GetAbsolutePosition(gameswf::character *) =====
GameSWFUtils *__fastcall GameSWFUtils::GetAbsolutePosition(GameSWFUtils *this, gameswf::character *a2)
{
  gameswf::character *v3; // r4

  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  if ( a2 )
  {
    v3 = a2;
    *(float *)this = *(float *)(*((_DWORD *)a2 + 19) + 8) + 0.0;
    *((float *)this + 1) = *(float *)(*((_DWORD *)a2 + 19) + 20) + 0.0;
  }
  else
  {
    v3 = nullptr;
  }
  while ( 1 )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)v3 + 60);
    v3 = *((gameswf::character **)v3 + 16);
    if ( !v3 )
      break;
    *(float *)this = *(float *)this + *(float *)(*((_DWORD *)v3 + 19) + 8);
    *((float *)this + 1) = *((float *)this + 1) + *(float *)(*((_DWORD *)v3 + 19) + 20);
  }
  return this;
}


// ===== 416a7c GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character *) =====
GameSWFUtils *__fastcall GameSWFUtils::GetAbsoluteBoundingRect(GameSWFUtils *this, gameswf::character **a2)
{
  float v4; // r6
  gameswf::character *v5; // r3
  gameswf::character **v6; // r0
  float v7; // r5
  float v8; // r1
  float v9; // r0
  float v10; // r1
  float v11; // r0
  float v12; // r1
  _DWORD v14[2]; // [sp+0h] [bp-8h] BYREF

  if ( a2 )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)(a2 + 15));
    GameSWFUtils::GetAbsolutePosition((GameSWFUtils *)v14, a2[16]);
    v4 = *(float *)v14;
    v5 = *a2;
    v6 = a2;
    v7 = *(float *)&v14[1];
    (*((void (__fastcall **)(gameswf::character **, GameSWFUtils *))v5 + 75))(v6, this);
    v8 = *((float *)this + 1);
    *(float *)this = (float)(v4 + *(float *)this) / 20.0;
    v9 = v4 + v8;
    v10 = *((float *)this + 2);
    *((float *)this + 1) = v9 / 20.0;
    v11 = v7 + v10;
    v12 = *((float *)this + 3);
    *((float *)this + 2) = v11 / 20.0;
    *((float *)this + 3) = (float)(v7 + v12) / 20.0;
  }
  return this;
}


// ===== 416b3c GameSWFUtils::GetLabeledFrame(gameswf::character *,char const*) =====
int __fastcall GameSWFUtils::GetLabeledFrame(GameSWFUtils *this, gameswf::character *a2, const char *a3)
{
  int v5; // r0
  const char *v6; // r1
  int v7; // r10
  int (__fastcall *v8)(GameSWFUtils *, _BYTE *); // r8
  int v9; // r7
  int v10; // r7
  _BYTE v12[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v5 = (*(int (__fastcall **)(GameSWFUtils *))(*(_DWORD *)this + 312))(this);
  v6 = (const char *)a2;
  v7 = v5;
  v8 = *(int (__fastcall **)(GameSWFUtils *, _BYTE *))(*(_DWORD *)this + 156);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, v6);
  v9 = v8(this, v12);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  if ( !v9 )
    return -1;
  v10 = (*(int (__fastcall **)(GameSWFUtils *))(*(_DWORD *)this + 312))(this);
  (*(void (__fastcall **)(GameSWFUtils *, int))(*(_DWORD *)this + 332))(this, v7);
  return v10;
}


// ===== 416c14 GameSWFUtils::SwfTextureLoader(char const*,int,int) =====
glitch::IReferenceCounted *__fastcall GameSWFUtils::SwfTextureLoader(
        GameSWFUtils *this,
        const char *a2,
        int a3,
        int a4)
{
  glitch::IReferenceCounted *v5; // r5
  int Language; // r0
  int v8; // r0
  const char *v9; // lr
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int *v14; // lr
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r1
  int v20; // r0
  const char *v21; // lr
  int v22; // r0
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD *v26; // lr
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r3
  glitch::IReferenceCounted *v31; // [sp+0h] [bp-10Ch] BYREF
  char s[256]; // [sp+4h] [bp-108h] BYREF

  if ( !LC_API_STRCMP_0((const char *)this, "menus/splash_final.tga") )
  {
    Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
    if ( Language != 4 )
    {
      if ( Language != 5 )
      {
        strcpy(s, "data/3d/textures/splash_final.tga");
        goto LABEL_6;
      }
      goto LABEL_20;
    }
    goto LABEL_21;
  }
  if ( !LC_API_STRCMP_0((const char *)this, "menus/splash_final_I9000.tga") )
  {
    v8 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
    if ( v8 != 4 )
    {
      if ( v8 != 5 )
      {
        v9 = "data/3d/textures/splash_final_I9000.tga";
LABEL_15:
        v10 = *(_DWORD *)v9;
        v11 = *((_DWORD *)v9 + 1);
        v12 = *((_DWORD *)v9 + 2);
        v13 = *((_DWORD *)v9 + 3);
        v14 = (int *)(v9 + 16);
        *(_DWORD *)s = v10;
        *(_DWORD *)&s[4] = v11;
        *(_DWORD *)&s[8] = v12;
        *(_DWORD *)&s[12] = v13;
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v14 += 4;
        *(_DWORD *)&s[16] = v15;
        *(_DWORD *)&s[20] = v16;
        *(_DWORD *)&s[24] = v17;
        *(_DWORD *)&s[28] = v18;
        v19 = v14[1];
        *(_DWORD *)&s[32] = *v14;
        *(_DWORD *)&s[36] = v19;
        goto LABEL_6;
      }
LABEL_20:
      strcpy(s, "data/3d/textures/splash_final_kor.tga");
      goto LABEL_6;
    }
LABEL_21:
    strcpy(s, "data/3d/textures/splash_final_jp.tga");
    goto LABEL_6;
  }
  if ( !LC_API_STRCMP_0((const char *)this, "menus/splash_final_droid.tga") )
  {
    v20 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
    if ( v20 != 4 )
    {
      if ( v20 != 5 )
      {
        v9 = "data/3d/textures/splash_final_droid.tga";
        goto LABEL_15;
      }
      goto LABEL_20;
    }
    goto LABEL_21;
  }
  if ( LC_API_STRCMP_0((const char *)this, "menus/dhalliance.tga") )
  {
    sprintf(s, "data/%s", (const char *)this);
  }
  else
  {
    switch ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) )
    {
      case 1:
        v21 = (const char *)&unk_8C81A8;
        goto LABEL_25;
      case 2:
        v21 = (const char *)&unk_8C81D0;
        goto LABEL_25;
      case 3:
        v21 = (const char *)&unk_8C81F8;
        goto LABEL_25;
      case 5:
        v21 = (const char *)&unk_8C8290;
        goto LABEL_25;
      case 6:
        v21 = (const char *)&unk_8C8248;
        goto LABEL_25;
      case 7:
        v21 = "data/3d/textures/dhalliance_sp.tga";
LABEL_25:
        v22 = *(_DWORD *)v21;
        v23 = *((_DWORD *)v21 + 1);
        v24 = *((_DWORD *)v21 + 2);
        v25 = *((_DWORD *)v21 + 3);
        v26 = v21 + 16;
        *(_DWORD *)s = v22;
        *(_DWORD *)&s[4] = v23;
        *(_DWORD *)&s[8] = v24;
        *(_DWORD *)&s[12] = v25;
        v27 = v26[1];
        v28 = v26[2];
        v29 = v26[3];
        *(_DWORD *)&s[16] = *v26;
        *(_DWORD *)&s[20] = v27;
        *(_DWORD *)&s[24] = v28;
        *(_DWORD *)&s[28] = v29;
        v30 = v26[4];
        *(_WORD *)&s[32] = v30;
        s[34] = BYTE2(v30);
        break;
      default:
        strcpy(s, "data/3d/textures/dhalliance.tga");
        break;
    }
  }
LABEL_6:
  glitch::video::CTextureManager::getTexture(
    (glitch::video::CTextureManager *)&v31,
    *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224),
    s);
  v5 = v31;
  if ( v31 )
    glitch::IReferenceCounted::drop(v31);
  return v5;
}


// ===== 416fc8 GameSWFUtils::gameswf_logger(bool,char const*) =====
int __fastcall GameSWFUtils::gameswf_logger(int this, const char *a2, const char *a3)
{
  if ( !this )
    return _DEBUG_OUT("%s", a2);
  return this;
}


// ===== 416fe0 GameSWFUtils::PlayAnim(MenuFX *,gameswf::character *,char const*) =====
int __fastcall GameSWFUtils::PlayAnim(GameSWFUtils *this, MenuFX *a2, gameswf::character *a3, const char *a4)
{
  bool v4; // zf
  _BYTE v9[12]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v10[8]; // [sp+18h] [bp-1Ch] BYREF
  void *p; // [sp+24h] [bp-10h]

  v4 = a2 == nullptr;
  if ( a2 )
    v4 = this == nullptr;
  if ( v4 )
    return 0;
  if ( RenderFX::PlayAnim(this, a2, (const char *)a3, 0) )
    return 1;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, (const char *)a3);
  v9[0] = 0;
  v9[1] = 0;
  if ( !(*(int (__fastcall **)(MenuFX *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32))(a2, v10, v9)
    || !RenderFX::InvokeASCallback(this, a2, (const char *)a3, nullptr, 0) )
  {
    gameswf::as_value::drop_refs((gameswf::as_value *)v9);
    if ( v10[0] == -1 )
    {
      gameswf::free_internal(p);
      return 0;
    }
    return 0;
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v10[0] != -1 )
    return 1;
  gameswf::free_internal(p);
  return 1;
}


// ===== 417108 GameSWFUtils::PlayAnim(MenuFX *,char const*,char const*) =====
int __fastcall GameSWFUtils::PlayAnim(GameSWFUtils *this, MenuFX *a2, gameswf::character *a3, const char *a4)
{
  bool v4; // zf
  char *v5; // r3
  MenuFX *v8; // r0
  const char *v9; // r3

  v4 = a2 == nullptr;
  if ( a2 )
    v4 = this == nullptr;
  if ( v4 )
    v5 = nullptr;
  else
    v5 = (char *)&dword_0 + 1;
  if ( v4 )
    return (int)v5;
  v8 = (MenuFX *)RenderFX::Find(this, (const char *)a2);
  return GameSWFUtils::PlayAnim(this, v8, a3, v9);
}


// ===== 417148 GameSWFUtils::GetFrameIDFromName(gameswf::character *,char const*) =====
int __fastcall GameSWFUtils::GetFrameIDFromName(GameSWFUtils *this, gameswf::character *a2, const char *a3)
{
  int frameid_from_label; // r6
  _BYTE v7[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]

  if ( !this || !(*(int (__fastcall **)(GameSWFUtils *, int, const char *))(*(_DWORD *)this + 8))(this, 2, a3) )
    return -1;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v7, (const char *)a2);
  frameid_from_label = gameswf::sprite_instance::get_frameid_from_label(this, v7);
  if ( v7[0] == -1 )
    gameswf::free_internal(p);
  return frameid_from_label;
}


// ===== 4171f8 GameSWFUtils::GotoFrame(gameswf::character *,char const*) =====
int __fastcall GameSWFUtils::GotoFrame(GameSWFUtils *this, gameswf::character *a2, const char *a3)
{
  const char *v5; // r2
  int FrameIDFromName; // r1

  if ( this
    && (*(int (__fastcall **)(GameSWFUtils *, int, const char *))(*(_DWORD *)this + 8))(this, 2, a3)
    && (FrameIDFromName = GameSWFUtils::GetFrameIDFromName(this, a2, v5), FrameIDFromName != -1) )
  {
    return GameSWFUtils::GotoFrame((int)this, FrameIDFromName);
  }
  else
  {
    return 0;
  }
}


// ===== 41724c GameSWFUtils::PreloadGlyph(char const*,gameswf::character *,MenuFX *) =====
int __fastcall GameSWFUtils::PreloadGlyph(GameSWFUtils *this, const char *a2, gameswf::character *a3, MenuFX *a4)
{
  int v6; // r3
  int v7; // r8
  int v8; // r6
  int v9; // r7
  int v10; // r4
  int v11; // r11
  int v12; // r0
  int v13; // r4
  int v14; // r6

  if ( !a2 || !(*(int (__fastcall **)(const char *, int))(*(_DWORD *)a2 + 8))(a2, 32) )
    return 0;
  if ( !this )
  {
    if ( *((unsigned __int8 *)a2 + 312) == 255 )
      this = *((GameSWFUtils **)a2 + 81);
    else
      this = (GameSWFUtils *)(a2 + 313);
  }
  v6 = *((_DWORD *)a2 + 20);
  if ( *(int *)(v6 + 8) > 0 )
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    do
    {
      v10 = *((_DWORD *)a2 + 94);
      v11 = v10 + 49;
      if ( *(char *)(v10 + 48) == -1 )
        v11 = *(_DWORD *)(v10 + 60);
      v12 = RenderFX::PreloadGlyphs(
              a3,
              this,
              v11,
              (int)(float)(*((float *)a2 + 93) / 20.0),
              *(unsigned __int8 *)(v10 + 77),
              *(unsigned __int8 *)(v10 + 76),
              *(_DWORD *)(v6 + 4) + v8);
      v6 = *((_DWORD *)a2 + 20);
      ++v9;
      v7 += v12;
      v8 += 44;
    }
    while ( v9 < *(_DWORD *)(v6 + 8) );
  }
  else
  {
    v7 = 0;
  }
  v13 = *((_DWORD *)a2 + 94);
  if ( *(char *)(v13 + 48) == -1 )
    v14 = *(_DWORD *)(v13 + 60);
  else
    v14 = v13 + 49;
  return RenderFX::PreloadGlyphs(
           a3,
           this,
           v14,
           (int)(float)(*((float *)a2 + 93) / 20.0),
           *(unsigned __int8 *)(v13 + 77),
           *(unsigned __int8 *)(v13 + 76),
           0)
       + v7;
}


// ===== 41739c `global constructor keyed to'.._.._sources_Game_Menus_GameSWFUtils.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_GameSWFUtils.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A3678 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3674 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 417424 GS_InterruptLoading::onEvent(IEvent const*,EventManager const*) =====
int __fastcall GS_InterruptLoading::onEvent(GS_InterruptLoading *this, const IEvent *a2, const EventManager *a3)
{
  return 0;
}


// ===== 41742c boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr() =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *a1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return a1;
}


// ===== 41744c `non-virtual thunk to'GS_InterruptLoading::Draw(StateMachine const*) =====
int __fastcall `non-virtual thunk to'GS_InterruptLoading::Draw(GS_InterruptLoading *this, const StateMachine *a2)
{
  return GS_InterruptLoading::Draw((GS_InterruptLoading *)((char *)this - 4), a2);
}


// ===== 417454 GS_InterruptLoading::Draw(StateMachine const*) =====
int __fastcall GS_InterruptLoading::Draw(GS_InterruptLoading *this, const StateMachine *a2)
{
  int v2; // r5
  int v4; // r2

  v2 = *(_DWORD *)(dword_99F73C + 16);
  if ( firstframe <= 1 )
  {
    (*(void (__fastcall **)(_DWORD, const StateMachine *))(*(_DWORD *)v2 + 20))(*(_DWORD *)(dword_99F73C + 16), a2);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 168))(v2, 3);
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 24))(v2);
    return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 164))(v2, 0);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, const StateMachine *))(*(_DWORD *)v2 + 20))(*(_DWORD *)(dword_99F73C + 16), a2);
    glitch::video::C2DDriver::draw2DImage(*(_DWORD *)(dword_99F73C + 16));
    accumulatedTime += Application::GetDt((Application *)&Singleton<Application>::s_inst);
    if ( (unsigned int)accumulatedTime > 0x19 )
    {
      v4 = currentProgress;
      accumulatedTime = 0;
      ++currentProgress;
      if ( v4 == 3 )
        currentProgress = 0;
    }
    glitch::video::C2DDriver::draw2DImage(*(_DWORD *)(dword_99F73C + 16));
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 24))(v2);
    return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 164))(v2, 0);
  }
}


// ===== 4176cc `non-virtual thunk to'GS_InterruptLoading::Ctor(StateMachine const*) =====
int __fastcall `non-virtual thunk to'GS_InterruptLoading::Ctor(GS_InterruptLoading *this, const StateMachine *a2)
{
  return GS_InterruptLoading::Ctor((GS_InterruptLoading *)((char *)this - 4), a2);
}


// ===== 4176d4 GS_InterruptLoading::Ctor(StateMachine const*) =====
int __fastcall GS_InterruptLoading::Ctor(GS_InterruptLoading *this, const StateMachine *a2)
{
  int result; // r0

  firstframe = 0;
  result = _DEBUG_OUT("\n\n GS_InterruptLoading::Ctor ----> loading splash screen. \n", a2);
  InterLoad = 1;
  return result;
}


// ===== 417720 GS_InterruptLoading::GS_InterruptLoading(void) =====
void __fastcall GS_InterruptLoading::GS_InterruptLoading(GS_InterruptLoading *this)
{
  *(_DWORD *)this = off_967BC8;
  *((_DWORD *)this + 1) = off_967BEC;
  _DEBUG_OUT("\n\n GS_InterruptLoading::GS_InterruptLoading(int,bool) \n");
}


// ===== 417768 GS_InterruptLoading::GS_InterruptLoading(void) =====
void __fastcall GS_InterruptLoading::GS_InterruptLoading(GS_InterruptLoading *this)
{
  *(_DWORD *)this = off_967BC8;
  *((_DWORD *)this + 1) = off_967BEC;
  _DEBUG_OUT("\n\n GS_InterruptLoading::GS_InterruptLoading(int,bool) \n");
}


// ===== 4177b0 `non-virtual thunk to'GS_InterruptLoading::~GS_InterruptLoading() =====
void __fastcall `non-virtual thunk to'GS_InterruptLoading::~GS_InterruptLoading(GS_InterruptLoading *this)
{
  GS_InterruptLoading::~GS_InterruptLoading((GS_InterruptLoading *)((char *)this - 4));
}


// ===== 4177b8 GS_InterruptLoading::~GS_InterruptLoading() =====
void __fastcall GS_InterruptLoading::~GS_InterruptLoading(GS_InterruptLoading *this)
{
  *(_DWORD *)this = off_967BC8;
  *((_DWORD *)this + 1) = off_967BEC;
  _DEBUG_OUT("\n\n GS_InterruptLoading::~GS_InterruptLoading n\n");
}


// ===== 417800 GS_InterruptLoading::~GS_InterruptLoading() =====
void __fastcall GS_InterruptLoading::~GS_InterruptLoading(GS_InterruptLoading *this)
{
  *(_DWORD *)this = off_967BC8;
  *((_DWORD *)this + 1) = off_967BEC;
  _DEBUG_OUT("\n\n GS_InterruptLoading::~GS_InterruptLoading n\n");
}


// ===== 417848 `non-virtual thunk to'GS_InterruptLoading::~GS_InterruptLoading() =====
void __fastcall `non-virtual thunk to'GS_InterruptLoading::~GS_InterruptLoading(GS_InterruptLoading *this)
{
  GS_InterruptLoading::~GS_InterruptLoading((GS_InterruptLoading *)((char *)this - 4));
}


// ===== 417850 GS_InterruptLoading::~GS_InterruptLoading() =====
void __fastcall GS_InterruptLoading::~GS_InterruptLoading(GS_InterruptLoading *this)
{
  GS_InterruptLoading::~GS_InterruptLoading(this);
  CustomFree(this);
}


// ===== 41786c `global constructor keyed to'.._.._sources_Game_Menus_GS_InterruptLoading.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_GS_InterruptLoading.cpp()
{
  int result; // r0

  dword_9A3690 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A368C = 1056964608;
  m_loadBackground = 0;
  result = _aeabi_atexit(
             (int)&m_loadBackground,
             (int)boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr,
             (int)&_dso_handle);
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


// ===== 417974 boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&) [clone] =====
int *__fastcall boost::intrusive_ptr<glitch::video::ITexture>::operator=(int *a1)
{
  int v1; // r3
  glitch::IReferenceCounted *v2; // r0

  v1 = *a1;
  if ( *a1 )
    ++*(_DWORD *)(v1 + 4);
  v2 = (glitch::IReferenceCounted *)m_loadBackground;
  m_loadBackground = v1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return &m_loadBackground;
}


// ===== 4179c0 `non-virtual thunk to'GS_InterruptLoading::Update(StateMachine *,double) =====
int __fastcall `non-virtual thunk to'GS_InterruptLoading::Update(
        GS_InterruptLoading *this,
        StateMachine *a2,
        double a3)
{
  return GS_InterruptLoading::Update((GS_InterruptLoading *)((char *)this - 4), a2, a3);
}


// ===== 4179c8 GS_InterruptLoading::Update(StateMachine *,double) =====
glitch::IReferenceCounted **__fastcall GS_InterruptLoading::Update(
        glitch::IReferenceCounted **this,
        StateMachine *a2,
        double a3)
{
  int v3; // r3
  glitch::IReferenceCounted **v4; // r5
  glitch::video::CTextureManager *v5; // r6
  int v6; // r1
  const char *v7; // r2
  int v8; // r6
  unsigned int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int *v13; // r1
  int v14; // r3
  const char *v15; // r1
  glitch::video::CTextureManager *v16; // r6
  int v17; // r1
  const char *v18; // r2
  glitch::video::CTextureManager *v19; // r6
  int v20; // r1
  const char *v21; // r2
  unsigned int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r3
  int *v26; // r1
  int v27; // r3
  int v28; // r2
  int v29; // r3
  glitch::video::CTextureManager *v30; // r6
  int v31; // r1
  const char *v32; // r2
  char v33; // [sp+4h] [bp-50h] BYREF
  char v34; // [sp+8h] [bp-4Ch] BYREF
  char v35; // [sp+Ch] [bp-48h] BYREF
  char v36; // [sp+10h] [bp-44h] BYREF
  char v37; // [sp+14h] [bp-40h] BYREF
  char v38; // [sp+18h] [bp-3Ch] BYREF
  char v39; // [sp+1Ch] [bp-38h] BYREF
  char v40; // [sp+20h] [bp-34h] BYREF
  char v41; // [sp+24h] [bp-30h] BYREF
  char v42; // [sp+28h] [bp-2Ch] BYREF
  char v43; // [sp+2Ch] [bp-28h] BYREF
  char v44; // [sp+30h] [bp-24h] BYREF
  char v45; // [sp+34h] [bp-20h] BYREF
  char v46; // [sp+38h] [bp-1Ch] BYREF
  char v47; // [sp+3Ch] [bp-18h] BYREF
  char v48; // [sp+40h] [bp-14h] BYREF
  char v49; // [sp+44h] [bp-10h] BYREF
  char v50; // [sp+48h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v51; // [sp+4Ch] [bp-8h] BYREF

  v3 = firstframe;
  v4 = this;
  if ( firstframe <= 1 )
  {
    if ( firstframe != 1 )
    {
LABEL_6:
      firstframe = v3 + 1;
      return this;
    }
    (*(void (__fastcall **)(_DWORD, StateMachine *, _DWORD))(**(_DWORD **)(dword_99F73C + 16) + 68))(
      *(_DWORD *)(dword_99F73C + 16),
      a2,
      LODWORD(a3));
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 56))(*(_DWORD *)(dword_99F73C + 16));
    v51 = nullptr;
    if ( __PAIR16__(SHARP_DEVICES, HTC_DEVICES) || MOTOROLA_DEVICES )
    {
      switch ( Width_Screen )
      {
        case 854:
          v16 = (glitch::video::CTextureManager *)&v49;
          v17 = dword_99F73C;
          v18 = "data/3d/textures/splash_final_droid.tga";
          break;
        case 960:
          v16 = (glitch::video::CTextureManager *)&v48;
          v17 = dword_99F73C;
          v18 = "data/3d/textures/splash_final.tga";
          break;
        case 800:
          v16 = (glitch::video::CTextureManager *)&v50;
          v17 = dword_99F73C;
          v18 = "data/3d/textures/splash_final_i9000.tga";
          break;
        default:
          v16 = (glitch::video::CTextureManager *)&v47;
          v17 = dword_99F73C;
          v18 = "data/3d/textures/splash_final.tga";
          break;
      }
      glitch::video::CTextureManager::getTexture(v16, *(const char **)(*(_DWORD *)(v17 + 16) + 224), v18);
      boost::intrusive_ptr<glitch::video::ITexture>::operator=((int *)v16);
      boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr((glitch::IReferenceCounted **)v16);
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
      {
        v19 = (glitch::video::CTextureManager *)&v46;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_jp.tga";
      }
      else
      {
        if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) != 5 )
          goto LABEL_16;
        v19 = (glitch::video::CTextureManager *)&v45;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_kor.tga";
      }
    }
    else if ( LG_DEVICES )
    {
      switch ( Width_Screen )
      {
        case 854:
          v5 = (glitch::video::CTextureManager *)&v43;
          v6 = *(_DWORD *)(dword_99F73C + 16);
          v7 = "data/3d/textures/splash_final_droid.tga";
          break;
        case 960:
          v5 = (glitch::video::CTextureManager *)&v42;
          v6 = *(_DWORD *)(dword_99F73C + 16);
          v7 = "data/3d/textures/splash_final.tga";
          break;
        case 800:
          v5 = (glitch::video::CTextureManager *)&v44;
          v6 = *(_DWORD *)(dword_99F73C + 16);
          v7 = "data/3d/textures/splash_final_i9000.tga";
          break;
        default:
          v5 = (glitch::video::CTextureManager *)&v41;
          v6 = *(_DWORD *)(dword_99F73C + 16);
          v7 = "data/3d/textures/splash_final.tga";
          break;
      }
      glitch::video::CTextureManager::getTexture(v5, *(const char **)(v6 + 224), v7);
      boost::intrusive_ptr<glitch::video::ITexture>::operator=((int *)v5);
      boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr((glitch::IReferenceCounted **)v5);
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
      {
        v19 = (glitch::video::CTextureManager *)&v40;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_jp.tga";
      }
      else
      {
        if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) != 5 )
          goto LABEL_16;
        v19 = (glitch::video::CTextureManager *)&v39;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_kor.tga";
      }
    }
    else
    {
      switch ( Width_Screen )
      {
        case 854:
          v30 = (glitch::video::CTextureManager *)&v37;
          v31 = *(_DWORD *)(dword_99F73C + 16);
          v32 = "data/3d/textures/splash_final_droid.tga";
          break;
        case 960:
          v30 = (glitch::video::CTextureManager *)&v36;
          v31 = *(_DWORD *)(dword_99F73C + 16);
          v32 = "data/3d/textures/splash_final.tga";
          break;
        case 800:
          v30 = (glitch::video::CTextureManager *)&v38;
          v31 = *(_DWORD *)(dword_99F73C + 16);
          v32 = "data/3d/textures/splash_final_i9000.tga";
          break;
        default:
          v30 = (glitch::video::CTextureManager *)&v35;
          v31 = *(_DWORD *)(dword_99F73C + 16);
          v32 = "data/3d/textures/splash_final.tga";
          break;
      }
      glitch::video::CTextureManager::getTexture(v30, *(const char **)(v31 + 224), v32);
      boost::intrusive_ptr<glitch::video::ITexture>::operator=((int *)v30);
      boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr((glitch::IReferenceCounted **)v30);
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
      {
        v19 = (glitch::video::CTextureManager *)&v34;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_jp.tga";
      }
      else
      {
        if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) != 5 )
        {
LABEL_16:
          v8 = m_loadBackground;
          if ( *(_DWORD *)(m_loadBackground + 44) && (*(_BYTE *)(m_loadBackground + 63) & 8) != 0 )
            (*(void (__fastcall **)(int))(*(_DWORD *)m_loadBackground + 16))(m_loadBackground);
          v9 = *(unsigned __int16 *)(v8 + 60);
          v10 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 224);
          v11 = *(_DWORD *)(v10 + 28);
          v12 = *(_DWORD *)(v10 + 24);
          if ( v9 >= (v11 - v12) >> 3 )
            v13 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
          else
            v13 = (int *)(v12 + 8 * v9);
          if ( !*v13
            || (v14 = *(_DWORD *)(v12 + 8 * v9 + 4), v15 = *(const char **)(v14 + 44), v15 == *(const char **)(v14 + 40)) )
          {
            v15 = nullptr;
          }
          _DEBUG_OUT("TEXTURE FILE [%s] \n", v15);
          if ( !*(_DWORD *)(m_loadBackground + 44) )
          {
            _DEBUG_OUT("NO HAS DATA ");
            v22 = *(unsigned __int16 *)(v8 + 60);
            v23 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 224);
            v24 = *(_DWORD *)(v23 + 28);
            v25 = *(_DWORD *)(v23 + 24);
            if ( v22 >= (v24 - v25) >> 3 )
              v26 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
            else
              v26 = (int *)(v25 + 8 * v22);
            if ( *v26
              && (v27 = *(_DWORD *)(v25 + 8 * v22 + 4),
                  v28 = *(_DWORD *)(v27 + 40),
                  v29 = *(_DWORD *)(v27 + 44),
                  v29 != v28)
              && v29 )
            {
              if ( (*(_BYTE *)(m_loadBackground + 63) & 8) != 0 )
                (*(void (__fastcall **)(int))(*(_DWORD *)m_loadBackground + 16))(m_loadBackground);
            }
            else
            {
              _DEBUG_OUT("ERROR LOADING");
            }
          }
          this = boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr(&v51);
          v3 = firstframe;
          goto LABEL_6;
        }
        v19 = (glitch::video::CTextureManager *)&v33;
        v20 = *(_DWORD *)(dword_99F73C + 16);
        v21 = "data/3d/textures/splash_final_kor.tga";
      }
    }
    glitch::video::CTextureManager::getTexture(v19, *(const char **)(v20 + 224), v21);
    boost::intrusive_ptr<glitch::video::ITexture>::operator=((int *)v19);
    boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr((glitch::IReferenceCounted **)v19);
    goto LABEL_16;
  }
  this = (glitch::IReferenceCounted **)(*(int (__fastcall **)(_DWORD, StateMachine *, _DWORD))(**(_DWORD **)(dword_99F73C + 16)
                                                                                             + 60))(
                                         *(_DWORD *)(dword_99F73C + 16),
                                         a2,
                                         LODWORD(a3));
  if ( !this )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 76))(*(_DWORD *)(dword_99F73C + 16));
    return (glitch::IReferenceCounted **)StateMachine::PopState(dword_99F744, (int)(v4 + 1));
  }
  return this;
}


// ===== 417fe0 `non-virtual thunk to'GS_InterruptLoading::Dtor(StateMachine const*) =====
int __fastcall `non-virtual thunk to'GS_InterruptLoading::Dtor(GS_InterruptLoading *this, const StateMachine *a2)
{
  return GS_InterruptLoading::Dtor((GS_InterruptLoading *)((char *)this - 4), a2);
}


// ===== 417fe8 GS_InterruptLoading::Dtor(StateMachine const*) =====
glitch::IReferenceCounted *__fastcall GS_InterruptLoading::Dtor(
        GS_InterruptLoading *this,
        const StateMachine *a2,
        int a3,
        int a4)
{
  int v4; // r8
  int v5; // r7
  int CurrentLevel; // r9
  glitch::IReferenceCounted *result; // r0
  int v8; // r0
  int savedregs; // [sp+4h] [bp+0h]
  char savedregs_4; // [sp+8h] [bp+4h]

  _DEBUG_OUT("\n\n  GS_InterruptLoading::Dtor  ----> unloading splash screen. \n", a2);
  if ( Musicplayerpause )
  {
    v8 = _DEBUG_OUT("\n\n  in Resumeeeee    musicccccccccccccc \n");
    nativeResumeMusicBG(v8);
    Musicplayerpause = 0;
  }
  v4 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32));
  v5 = dword_99F7CC;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( JAVA_SOUNDS )
    Resume_Sound_Interrupt = 1;
  if ( VoxSoundManager::s_instance )
  {
    if ( Application::IsInIGPOrGameCenter((Application *)&Singleton<Application>::s_inst)
      || CurrentLevel && (*(_BYTE *)(CurrentLevel + 408) || MenuBase::s_igmOpened || byte_99F7D1) )
    {
      if ( byte_99F7D2 )
        VoxSoundManager::ResumeMusic((VoxSoundManager *)VoxSoundManager::s_instance, 500);
    }
    else if ( JAVA_SOUNDS )
    {
      nativeSetVolumeBig(-1);
      nativeSetVolumeBig(-1);
      VoxSoundManager::Resume(
        VoxSoundManager::s_instance,
        Save_Current_Music_ID,
        (int)&VoxSoundManager::s_instance,
        (int)&Save_Current_Music_ID,
        a4,
        savedregs,
        savedregs_4);
    }
    else
    {
      VoxSoundManager::ResumeAllSounds((vox::VoxEngine **)VoxSoundManager::s_instance);
    }
  }
  byte_99F7D1 = 0;
  if ( *(_BYTE *)(GetOnline() + 5)
    && ((unsigned int)(v4 - v5) > 0x3A98
     || *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) != 2
     && !Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst)) )
  {
    byte_99F7D6 = 1;
  }
  result = (glitch::IReferenceCounted *)m_loadBackground;
  m_loadBackground = 0;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  InterLoad = 0;
  return result;
}


// ===== 418238 HUDControls::hasInstance(void) =====
int __fastcall HUDControls::hasInstance(HUDControls *this)
{
  return 1;
}


// ===== 418240 HUDControls::Flush(void) =====
void __fastcall HUDControls::Flush(HUDControls *this)
{
  ;
}


// ===== 418244 HUDControls::Draw(void) =====
void __fastcall HUDControls::Draw(HUDControls *this)
{
  ;
}


// ===== 418248 `non-virtual thunk to'HUDControls::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'HUDControls::onEvent(int a1)
{
  return HUDControls::onEvent(a1 - 4);
}


// ===== 418250 HUDControls::onEvent(glitch::SEvent const&) =====
int HUDControls::onEvent()
{
  return 0;
}


// ===== 418258 HUDControls::onEvent(IEvent const*,EventManager const*) =====
int __fastcall HUDControls::onEvent(HUDControls *this, const IEvent *a2, const EventManager *a3)
{
  int result; // r0
  int v6; // r3
  __int16 v7; // r1
  bool v8; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r3
  bool v12; // zf

  if ( Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "DPad")
    || *((_BYTE *)this + 9)
    || *((_BYTE *)this + 132) )
  {
    return 0;
  }
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) == 4 )
  {
    v6 = *((unsigned __int8 *)a2 + 16);
    v7 = *((_WORD *)a2 + 4);
    v8 = v6 == 0;
    if ( *((_BYTE *)a2 + 16) )
    {
      *((_DWORD *)this + 32) = *((__int16 *)a2 + 5);
      *((_DWORD *)this + 31) = v7;
    }
    else
    {
      v6 = -1;
    }
    if ( v8 )
    {
      *((_DWORD *)this + 32) = v6;
      *((_DWORD *)this + 31) = v6;
    }
    return 0;
  }
  else
  {
    v9 = (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2);
    v12 = v9 == 5;
    if ( v9 == 5 )
    {
      v10 = *((__int16 *)a2 + 4);
      v11 = *((__int16 *)a2 + 5);
    }
    result = 0;
    if ( v12 )
    {
      *((_DWORD *)this + 31) = v10;
      *((_DWORD *)this + 32) = v11;
    }
  }
  return result;
}


// ===== 41832c HUDControls::BeginCustom(void) =====
int __fastcall HUDControls::BeginCustom(HUDControls *this)
{
  int result; // r0

  *((_BYTE *)this + 1644) = 1;
  *(_BYTE *)(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1432)) + 155) = 1;
  result = DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1480));
  *(_BYTE *)(result + 155) = 1;
  return result;
}


// ===== 418360 HUDControls::SaveHUDPos(void) =====
int __fastcall HUDControls::SaveHUDPos(HUDControls *this)
{
  gameswf::character *Char; // r0
  gameswf::character *v3; // r0
  gameswf::character *v4; // r0
  gameswf::character *v5; // r0
  gameswf::character *v6; // r0
  gameswf::character *v7; // r0
  gameswf::character *v8; // r0
  gameswf::character *v9; // r0
  gameswf::character *v10; // r0
  gameswf::character *v11; // r0
  gameswf::character *v12; // r0
  gameswf::character *v13; // r0
  gameswf::character *v14; // r0
  gameswf::character *v15; // r0
  gameswf::character *v16; // r0
  gameswf::character *v17; // r0
  gameswf::character *v18; // r0
  gameswf::character *v19; // r0
  gameswf::character *v20; // r0
  gameswf::character *v21; // r0
  gameswf::character *v22; // r0
  gameswf::character *v23; // r0
  int result; // r0
  gameswf::character *v25; // r0
  gameswf::character *v26; // r0
  gameswf::character *v27; // r0
  gameswf::character *v28; // r0
  gameswf::character *v29; // r0
  gameswf::character *v30; // r0
  gameswf::character *v31; // r0
  gameswf::character *v32; // r0
  gameswf::character *v33; // r0
  gameswf::character *v34; // r0
  gameswf::character *v35; // r0
  gameswf::character *v36; // r0
  gameswf::character *v37; // r0
  gameswf::character *v38; // r0
  gameswf::character *v39; // r0
  gameswf::character *v40; // r0
  gameswf::character *v41; // r0
  gameswf::character *v42; // r0
  gameswf::character *v43; // r0
  gameswf::character *v44; // r0
  gameswf::character *v45; // r0
  gameswf::character *v46; // r0

  if ( Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle") )
  {
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    *((_DWORD *)this + 479) = *(_DWORD *)(gameswf::character::get_world_matrix(Char) + 8);
    v3 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    *((_DWORD *)this + 480) = *(_DWORD *)(gameswf::character::get_world_matrix(v3) + 20);
    v4 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
    *((_DWORD *)this + 481) = *(_DWORD *)(gameswf::character::get_world_matrix(v4) + 8);
    v5 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
    *((_DWORD *)this + 482) = *(_DWORD *)(gameswf::character::get_world_matrix(v5) + 20);
    v6 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
    *((_DWORD *)this + 483) = *(_DWORD *)(gameswf::character::get_world_matrix(v6) + 8);
    v7 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
    *((_DWORD *)this + 484) = *(_DWORD *)(gameswf::character::get_world_matrix(v7) + 20);
    v8 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000));
    *((_DWORD *)this + 485) = *(_DWORD *)(gameswf::character::get_world_matrix(v8) + 8);
    v9 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000));
    *((_DWORD *)this + 486) = *(_DWORD *)(gameswf::character::get_world_matrix(v9) + 20);
    v10 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048));
    *((_DWORD *)this + 487) = *(_DWORD *)(gameswf::character::get_world_matrix(v10) + 8);
    v11 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048));
    *((_DWORD *)this + 488) = *(_DWORD *)(gameswf::character::get_world_matrix(v11) + 20);
    v12 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096));
    *((_DWORD *)this + 489) = *(_DWORD *)(gameswf::character::get_world_matrix(v12) + 8);
    v13 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096));
    *((_DWORD *)this + 490) = *(_DWORD *)(gameswf::character::get_world_matrix(v13) + 20);
    v14 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
    *((_DWORD *)this + 491) = *(_DWORD *)(gameswf::character::get_world_matrix(v14) + 8);
    v15 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
    *((_DWORD *)this + 492) = *(_DWORD *)(gameswf::character::get_world_matrix(v15) + 20);
    v16 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
    *((_DWORD *)this + 493) = *(_DWORD *)(gameswf::character::get_world_matrix(v16) + 8);
    v17 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
    *((_DWORD *)this + 494) = *(_DWORD *)(gameswf::character::get_world_matrix(v17) + 20);
    v18 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
    *((_DWORD *)this + 495) = *(_DWORD *)(gameswf::character::get_world_matrix(v18) + 8);
    v19 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
    *((_DWORD *)this + 496) = *(_DWORD *)(gameswf::character::get_world_matrix(v19) + 20);
    v20 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
    *((_DWORD *)this + 497) = *(_DWORD *)(gameswf::character::get_world_matrix(v20) + 8);
    v21 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
    *((_DWORD *)this + 498) = *(_DWORD *)(gameswf::character::get_world_matrix(v21) + 20);
    v22 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1384));
    *((_DWORD *)this + 499) = *(_DWORD *)(gameswf::character::get_world_matrix(v22) + 8);
    v23 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1384));
    result = gameswf::character::get_world_matrix(v23);
    *((_DWORD *)this + 500) = *(_DWORD *)(result + 20);
  }
  else
  {
    v25 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    *((_DWORD *)this + 457) = *(_DWORD *)(gameswf::character::get_world_matrix(v25) + 8);
    v26 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    *((_DWORD *)this + 458) = *(_DWORD *)(gameswf::character::get_world_matrix(v26) + 20);
    v27 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
    *((_DWORD *)this + 459) = *(_DWORD *)(gameswf::character::get_world_matrix(v27) + 8);
    v28 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
    *((_DWORD *)this + 460) = *(_DWORD *)(gameswf::character::get_world_matrix(v28) + 20);
    v29 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
    *((_DWORD *)this + 461) = *(_DWORD *)(gameswf::character::get_world_matrix(v29) + 8);
    v30 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
    *((_DWORD *)this + 462) = *(_DWORD *)(gameswf::character::get_world_matrix(v30) + 20);
    v31 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000));
    *((_DWORD *)this + 463) = *(_DWORD *)(gameswf::character::get_world_matrix(v31) + 8);
    v32 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000));
    *((_DWORD *)this + 464) = *(_DWORD *)(gameswf::character::get_world_matrix(v32) + 20);
    v33 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048));
    *((_DWORD *)this + 465) = *(_DWORD *)(gameswf::character::get_world_matrix(v33) + 8);
    v34 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048));
    *((_DWORD *)this + 466) = *(_DWORD *)(gameswf::character::get_world_matrix(v34) + 20);
    v35 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096));
    *((_DWORD *)this + 467) = *(_DWORD *)(gameswf::character::get_world_matrix(v35) + 8);
    v36 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096));
    *((_DWORD *)this + 468) = *(_DWORD *)(gameswf::character::get_world_matrix(v36) + 20);
    v37 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
    *((_DWORD *)this + 469) = *(_DWORD *)(gameswf::character::get_world_matrix(v37) + 8);
    v38 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
    *((_DWORD *)this + 470) = *(_DWORD *)(gameswf::character::get_world_matrix(v38) + 20);
    v39 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
    *((_DWORD *)this + 471) = *(_DWORD *)(gameswf::character::get_world_matrix(v39) + 8);
    v40 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
    *((_DWORD *)this + 472) = *(_DWORD *)(gameswf::character::get_world_matrix(v40) + 20);
    v41 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
    *((_DWORD *)this + 473) = *(_DWORD *)(gameswf::character::get_world_matrix(v41) + 8);
    v42 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
    *((_DWORD *)this + 474) = *(_DWORD *)(gameswf::character::get_world_matrix(v42) + 20);
    v43 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
    *((_DWORD *)this + 475) = *(_DWORD *)(gameswf::character::get_world_matrix(v43) + 8);
    v44 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
    *((_DWORD *)this + 476) = *(_DWORD *)(gameswf::character::get_world_matrix(v44) + 20);
    v45 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1384));
    *((_DWORD *)this + 477) = *(_DWORD *)(gameswf::character::get_world_matrix(v45) + 8);
    v46 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1384));
    result = gameswf::character::get_world_matrix(v46);
    *((_DWORD *)this + 478) = *(_DWORD *)(result + 20);
  }
  return result;
}


// ===== 4187a0 HUDControls::SetHUDPos(float (*)[2],bool) =====
int __fastcall HUDControls::SetHUDPos(HUDControls *this, float (*a2)[2], int a3)
{
  gameswf::character **Char; // r0
  float v7; // r3
  gameswf::character **v8; // r0
  float v9; // r3
  gameswf::character **v10; // r0
  float v11; // r3
  gameswf::character **v12; // r0
  float v13; // r3
  gameswf::character **v14; // r0
  float v15; // r3
  gameswf::character **v16; // r0
  float v17; // r3
  gameswf::character **v18; // r0
  float v19; // r3
  gameswf::character **v20; // r0
  float v21; // r3
  gameswf::character **v22; // r0
  float v23; // r3
  gameswf::character **v24; // r0
  float v25; // r3
  gameswf::character **v26; // r8
  float v27; // r3
  int result; // r0

  Char = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
  GameSWFUtils::MoveBtnPos(
    Char,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[0] / 20.0)),
    (float)(int)(float)((*a2)[1] / 20.0),
    v7);
  v8 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
  GameSWFUtils::MoveBtnPos(
    v8,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[2] / 20.0)),
    (float)(int)(float)((*a2)[3] / 20.0),
    v9);
  v10 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
  GameSWFUtils::MoveBtnPos(
    v10,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[4] / 20.0)),
    (float)(int)(float)((*a2)[5] / 20.0),
    v11);
  v12 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000));
  GameSWFUtils::MoveBtnPos(
    v12,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[6] / 20.0)),
    (float)(int)(float)((*a2)[7] / 20.0),
    v13);
  v14 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048));
  GameSWFUtils::MoveBtnPos(
    v14,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[8] / 20.0)),
    (float)(int)(float)((*a2)[9] / 20.0),
    v15);
  v16 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096));
  GameSWFUtils::MoveBtnPos(
    v16,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[10] / 20.0)),
    (float)(int)(float)((*a2)[11] / 20.0),
    v17);
  v18 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
  GameSWFUtils::MoveBtnPos(
    v18,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[12] / 20.0)),
    (float)(int)(float)((*a2)[13] / 20.0),
    v19);
  v20 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
  GameSWFUtils::MoveBtnPos(
    v20,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[14] / 20.0)),
    (float)(int)(float)((*a2)[15] / 20.0),
    v21);
  v22 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
  GameSWFUtils::MoveBtnPos(
    v22,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[16] / 20.0)),
    (float)(int)(float)((*a2)[17] / 20.0),
    v23);
  v24 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
  GameSWFUtils::MoveBtnPos(
    v24,
    COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[18] / 20.0)),
    (float)(int)(float)((*a2)[19] / 20.0),
    v25);
  v26 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1384));
  result = GameSWFUtils::MoveBtnPos(
             v26,
             COERCE_GAMESWF_CHARACTER_((float)(int)(float)((*a2)[20] / 20.0)),
             (float)(int)(float)((*a2)[21] / 20.0),
             v27);
  if ( a3 )
    return HUDControls::SaveHUDPos(this);
  return result;
}


// ===== 418b7c HUDControls::RefreshHUD(void) =====
_BYTE *__fastcall HUDControls::RefreshHUD(_BYTE *this)
{
  _BYTE *v1; // r5

  v1 = this;
  if ( *(this + 1644) )
  {
    *(this + 1644) = 0;
    *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(this + 1432)) + 155) = 0;
    *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1480)) + 155) = 0;
    HUDControls::SaveHUDPos((HUDControls *)v1);
    this = (_BYTE *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( this )
      *(this + 424) = 0;
  }
  return this;
}


// ===== 418bec HUDControls::Touch(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall HUDControls::Touch(HUDControls *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r3

  *((_DWORD *)this + 6) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_DWORD *)this + 5) = 0;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  character_660 = result->character_660;
  if ( character_660 )
    return (DH2_PlayerInfoCharacterPrefix *)v2Controller::Cmd_Stop(*((_DWORD *)character_660 + 222));
  return result;
}


// ===== 418c48 Point3D<float>::rotateXYBy(float,Point3D<float> const&) =====
float __fastcall Point3D<float>::rotateXYBy(float *a1, float a2, float *a3)
{
  float v5; // r6
  float v6; // r10
  float v7; // r9
  float v8; // r0
  float v9; // r7
  float v10; // r0
  float v11; // r8
  float v12; // r0
  float result; // r0

  v5 = a2 * 0.017453;
  v6 = cosf(a2 * 0.017453);
  v7 = sinf(v5);
  v8 = *a1 - *a3;
  *a1 = v8;
  v9 = v8;
  v10 = a1[1] - a3[1];
  a1[1] = v10;
  v11 = (float)(v9 * v6) - (float)(v10 * v7);
  v12 = (float)(v9 * v7) + (float)(v10 * v6);
  *a1 = v11;
  a1[1] = v12;
  *a1 = v11 + *a3;
  result = v12 + a3[1];
  a1[1] = result;
  return result;
}


// ===== 418d28 HUDControls::OnEvent(RenderFX::Event &) =====
float __fastcall HUDControls::OnEvent(HUDControls *this, RenderFX::Event *a2)
{
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int *character_660; // r7
  float result; // r0
  int v7; // r6
  MenuBase *v8; // r9
  int v9; // r3
  int v10; // r8
  int v11; // r7
  int v12; // r6
  int v13; // r6
  int v14; // r6
  int v15; // r6
  int v16; // r6
  int v17; // r6
  int v18; // r6
  int v19; // r6
  int v20; // r6
  int v21; // r6
  int v22; // r6
  int v23; // r6
  int v24; // r6
  int v25; // r4
  int v26; // r3
  int v27; // r7
  int v28; // r6
  int SavedOption; // r0
  char *v30; // r1
  float *v31; // r1
  int v32; // r6
  int v33; // r6
  int v34; // r6
  DebugCachedCharacter *v35; // r6
  int v36; // r7
  DebugCachedCharacter *v37; // r7
  int v38; // r11
  DebugCachedCharacter *v39; // r6
  int v40; // r7
  int v41; // r7
  int v42; // r7
  int v43; // r7
  int v44; // r6
  int v45; // r6
  int v46; // r6
  int v47; // r6
  int v48; // r6
  int v49; // r6
  int v50; // r6
  int v51; // r6
  int v52; // r6
  int v53; // r6
  int v54; // r3
  RenderFX *v55; // r8
  gameswf::character *v56; // r0
  gameswf::character *Char; // r0
  gameswf::character *v58; // r0
  float v59; // r11
  float v60; // r0
  float v61; // r1
  gameswf::character *v62; // r0
  gameswf::character *v63; // r0
  int world_matrix; // r0
  gameswf::character **v65; // r0
  gameswf::character **v66; // r0
  gameswf::character **v67; // r0
  gameswf::character **v68; // r11
  gameswf::character *v69; // r0
  float v70; // r9
  gameswf::character *v71; // r0
  float v72; // r0
  float v73; // r3
  float v74; // r1
  MenuManager *CurrentLevel; // r0
  MenuManager *Instance; // r0
  float v77; // r11
  gameswf::character *v78; // r0
  gameswf::character *v79; // r0
  int v80; // r6
  int v81; // r8
  int v82; // r11
  float v83; // r0
  int v84; // r3
  float v85; // r6
  int v86; // r9
  int v87; // r3
  int v88; // r8
  float v89; // r3
  float v90; // r11
  RenderFX *v91; // r10
  gameswf::character *v92; // r0
  gameswf::character **v93; // r11
  gameswf::character *v94; // r0
  float v95; // r1
  float v96; // r9
  gameswf::character *v97; // r0
  int v98; // r0
  float v99; // r3
  gameswf::character *v100; // r0
  int v101; // r9
  gameswf::character *v102; // r0
  int v103; // r7
  gameswf::character **v104; // r0
  float v105; // r3
  gameswf::character **v106; // r0
  float v107; // r3
  gameswf::character *v108; // r0
  gameswf::character **v109; // [sp+4h] [bp-40h]
  float v110; // [sp+8h] [bp-3Ch]
  float v111; // [sp+Ch] [bp-38h]
  DebugCachedCharacter *v112; // [sp+10h] [bp-34h]
  int v113; // [sp+14h] [bp-30h]
  int v114; // [sp+18h] [bp-2Ch]
  int v115; // [sp+1Ch] [bp-28h]
  int v116; // [sp+20h] [bp-24h]
  int v117; // [sp+24h] [bp-20h]
  int v118; // [sp+28h] [bp-1Ch]
  int v119; // [sp+2Ch] [bp-18h]
  float v120[4]; // [sp+34h] [bp-10h] BYREF

  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  character_660 = (int *)LocalPlayer->character_660;
  result = COERCE_FLOAT(MenuWorldMap::GetInstance((MenuWorldMap *)LocalPlayer));
  v7 = *((unsigned __int8 *)this + 1644);
  v8 = (MenuBase *)LODWORD(result);
  if ( *((_BYTE *)this + 1644) )
  {
    v9 = *((_DWORD *)a2 + 2);
    if ( v9 == 4 )
    {
      v44 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 28)));
      if ( v44 == LODWORD(result) )
        goto LABEL_67;
      v45 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136)));
      if ( v45 == LODWORD(result) )
        goto LABEL_67;
      v46 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952)));
      if ( v46 == LODWORD(result) )
        goto LABEL_67;
      v47 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000)));
      if ( v47 == LODWORD(result) )
        goto LABEL_67;
      v48 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048)));
      if ( v48 == LODWORD(result) )
        goto LABEL_67;
      v49 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096)));
      if ( v49 == LODWORD(result) )
        goto LABEL_67;
      v50 = *(_DWORD *)a2;
      result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144)));
      if ( v50 == LODWORD(result)
        || (v51 = *(_DWORD *)a2,
            result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192))),
            v51 == LODWORD(result))
        || (v52 = *(_DWORD *)a2,
            result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288))),
            v52 == LODWORD(result))
        || (v53 = *(_DWORD *)a2,
            result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1336))),
            v53 == LODWORD(result)) )
      {
LABEL_67:
        HUDControls::OnEvent(RenderFX::Event &)::srcX = *((_DWORD *)a2 + 3);
        HUDControls::OnEvent(RenderFX::Event &)::srcY = *((_DWORD *)a2 + 4);
        v9 = *((_DWORD *)a2 + 2);
      }
      else
      {
        v9 = *((_DWORD *)a2 + 2);
      }
    }
    if ( v9 != 5 )
      goto LABEL_4;
    v32 = *(_DWORD *)a2;
    if ( v32 != DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 28)) )
    {
      v33 = *(_DWORD *)a2;
      if ( v33 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136)) )
      {
        v35 = (HUDControls *)((char *)this + 1048);
        v37 = (HUDControls *)((char *)this + 1096);
        v112 = (HUDControls *)((char *)this + 1000);
        goto LABEL_69;
      }
      v112 = (HUDControls *)((char *)this + 1000);
      v34 = *(_DWORD *)a2;
      if ( v34 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1000)) )
      {
        v35 = (HUDControls *)((char *)this + 1048);
        v37 = (HUDControls *)((char *)this + 1096);
        goto LABEL_69;
      }
      v35 = (HUDControls *)((char *)this + 1048);
      v36 = *(_DWORD *)a2;
      if ( v36 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1048)) )
      {
        v37 = (HUDControls *)((char *)this + 1096);
LABEL_69:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
        v114 = (int)(float)((float)((float)(*((float *)a2 + 4)
                                          + *(float *)(gameswf::character::get_world_matrix(Char) + 20))
                                  - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY)
                          / 20.0);
        v58 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
        v113 = (int)(float)((float)((float)(*((float *)a2 + 3)
                                          + *(float *)(gameswf::character::get_world_matrix(v58) + 8))
                                  - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                          / 20.0);
        if ( Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle") )
        {
          v77 = *((float *)this + 437);
          v119 = (int)(float)((float)(v77 - *((float *)this + 441)) / 20.0);
          v118 = (int)(float)((float)(*((float *)this + 438) - *((float *)this + 442)) / 20.0);
          v117 = (int)(float)((float)(v77 - *((float *)this + 443)) / 20.0);
          v116 = (int)(float)((float)(*((float *)this + 438) - *((float *)this + 444)) / 20.0);
          v115 = (int)(float)((float)(v77 - *((float *)this + 445)) / 20.0);
          v60 = *((float *)this + 438);
          v61 = *((float *)this + 446);
        }
        else
        {
          v59 = *((float *)this + 415);
          v119 = (int)(float)((float)(v59 - *((float *)this + 419)) / 20.0);
          v118 = (int)(float)((float)(*((float *)this + 416) - *((float *)this + 420)) / 20.0);
          v117 = (int)(float)((float)(v59 - *((float *)this + 421)) / 20.0);
          v116 = (int)(float)((float)(*((float *)this + 416) - *((float *)this + 422)) / 20.0);
          v115 = (int)(float)((float)(v59 - *((float *)this + 423)) / 20.0);
          v60 = *((float *)this + 416);
          v61 = *((float *)this + 424);
        }
        LODWORD(v111) = (int)(float)((float)(v60 - v61) / 20.0);
        v109 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
        v62 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
        v110 = (float)(int)(float)((float)((float)(*((float *)a2 + 3)
                                                 + *(float *)(gameswf::character::get_world_matrix(v62) + 8))
                                         - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                                 / 20.0);
        v63 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136));
        world_matrix = gameswf::character::get_world_matrix(v63);
        GameSWFUtils::MoveBtnPos(
          v109,
          (gameswf::character *)LODWORD(v110),
          (float)(int)(float)((float)((float)(*((float *)a2 + 4) + *(float *)(world_matrix + 20))
                                    - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY)
                            / 20.0),
          *(float *)&v109);
        v65 = (gameswf::character **)DebugCachedCharacter::GetChar(v112);
        GameSWFUtils::MoveBtnPos(
          v65,
          COERCE_GAMESWF_CHARACTER_((float)(v113 - v119)),
          (float)(v114 - v118),
          *(float *)&v118);
        v66 = (gameswf::character **)DebugCachedCharacter::GetChar(v35);
        GameSWFUtils::MoveBtnPos(
          v66,
          COERCE_GAMESWF_CHARACTER_((float)(v113 - v117)),
          (float)(v114 - v116),
          *(float *)&v116);
        v67 = (gameswf::character **)DebugCachedCharacter::GetChar(v37);
        result = COERCE_FLOAT(
                   GameSWFUtils::MoveBtnPos(
                     v67,
                     COERCE_GAMESWF_CHARACTER_((float)(v113 - v115)),
                     (float)(v114 - LODWORD(v111)),
                     v111));
        v9 = *((_DWORD *)a2 + 2);
LABEL_4:
        if ( v9 == 6 )
        {
          v27 = *(_DWORD *)a2;
          if ( v27 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1480)) )
          {
            *((_BYTE *)this + 1644) = 0;
            *(_BYTE *)(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1432)) + 155) = 0;
            *(_BYTE *)(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1480)) + 155) = 0;
            HUDControls::SaveHUDPos(this);
            if ( Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle") )
              *((_BYTE *)this + 1648) = 1;
            else
              *((_BYTE *)this + 1647) = 1;
            CurrentLevel = (MenuManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            if ( CurrentLevel )
              *((_BYTE *)CurrentLevel + 424) = 0;
            Instance = (MenuManager *)MenuManager::GetInstance(CurrentLevel);
            dword_9A247C = MenuManager::GetMenuByName(Instance, "menu_Ingame");
            result = COERCE_FLOAT(StateMachine::PushState(dword_99F744, (int)&GSFlashMenu::s_inst, 0));
          }
          else
          {
            v28 = *(_DWORD *)a2;
            result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1432)));
            if ( v28 == LODWORD(result) )
            {
              SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
              if ( SavedOption )
                v30 = (char *)this + 1728;
              else
                v30 = (char *)this + 1648;
              if ( SavedOption )
                v31 = (float *)(v30 + 12);
              else
                v31 = (float *)(v30 + 4);
              result = COERCE_FLOAT(HUDControls::SetHUDPos(this, (float (*)[2])v31, 1));
            }
          }
        }
LABEL_5:
        *((_BYTE *)a2 + 36) = 1;
        return result;
      }
      v37 = (HUDControls *)((char *)this + 1096);
      v38 = *(_DWORD *)a2;
      if ( v38 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1096)) )
        goto LABEL_69;
      v39 = (HUDControls *)((char *)this + 952);
      v40 = *(_DWORD *)a2;
      if ( v40 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952)) )
      {
        v93 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
        v94 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 952));
        v95 = *(float *)(gameswf::character::get_world_matrix(v94) + 8);
      }
      else
      {
        v41 = *(_DWORD *)a2;
        if ( v41 == DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144)) )
        {
          v100 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
          v101 = (int)(float)((float)((float)(*((float *)a2 + 4)
                                            + *(float *)(gameswf::character::get_world_matrix(v100) + 20))
                                    - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY)
                            / 20.0);
          v102 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
          v103 = (int)(float)((float)((float)(*((float *)a2 + 3)
                                            + *(float *)(gameswf::character::get_world_matrix(v102) + 8))
                                    - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                            / 20.0);
          v104 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1240));
          GameSWFUtils::MoveBtnPos(v104, COERCE_GAMESWF_CHARACTER_((float)(v103 - 43)), (float)v101, v105);
          v106 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1144));
          result = COERCE_FLOAT(GameSWFUtils::MoveBtnPos(v106, COERCE_GAMESWF_CHARACTER_((float)v103), (float)v101, v107));
          v9 = *((_DWORD *)a2 + 2);
          goto LABEL_4;
        }
        v39 = (HUDControls *)((char *)this + 1192);
        v42 = *(_DWORD *)a2;
        if ( v42 != DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192)) )
        {
          v43 = *(_DWORD *)a2;
          result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288)));
          if ( v43 != LODWORD(result) )
          {
            v9 = *((_DWORD *)a2 + 2);
            goto LABEL_4;
          }
          v68 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
          v69 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
          v70 = (float)(int)(float)((float)((float)(*((float *)a2 + 3)
                                                  + *(float *)(gameswf::character::get_world_matrix(v69) + 8))
                                          - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                                  / 20.0);
          v71 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1288));
          v72 = *((float *)a2 + 4) + *(float *)(gameswf::character::get_world_matrix(v71) + 20);
          v74 = *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY;
          goto LABEL_73;
        }
        v93 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
        v108 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 1192));
        v95 = *(float *)(gameswf::character::get_world_matrix(v108) + 8);
      }
      v96 = (float)(int)(float)((float)((float)(*((float *)a2 + 3) + v95)
                                      - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                              / 20.0);
      v97 = (gameswf::character *)DebugCachedCharacter::GetChar(v39);
      v98 = gameswf::character::get_world_matrix(v97);
      result = COERCE_FLOAT(
                 GameSWFUtils::MoveBtnPos(
                   v93,
                   (gameswf::character *)LODWORD(v96),
                   (float)(int)(float)((float)((float)(*((float *)a2 + 4) + *(float *)(v98 + 20))
                                             - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY)
                                     / 20.0),
                   v99));
      v9 = *((_DWORD *)a2 + 2);
      goto LABEL_4;
    }
    v68 = (gameswf::character **)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    v78 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    v70 = (float)(int)(float)((float)((float)(*((float *)a2 + 3)
                                            + *(float *)(gameswf::character::get_world_matrix(v78) + 8))
                                    - *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcX)
                            / 20.0);
    v79 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 76));
    v72 = *((float *)a2 + 4) + *(float *)(gameswf::character::get_world_matrix(v79) + 20);
    v74 = *(float *)&HUDControls::OnEvent(RenderFX::Event &)::srcY;
LABEL_73:
    result = COERCE_FLOAT(
               GameSWFUtils::MoveBtnPos(
                 v68,
                 (gameswf::character *)LODWORD(v70),
                 (float)(int)(float)((float)(v72 - v74) / 20.0),
                 v73));
    v9 = *((_DWORD *)a2 + 2);
    goto LABEL_4;
  }
  v10 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 28)));
  if ( v10 == LODWORD(result) )
  {
    v54 = *((_DWORD *)a2 + 2);
    if ( v54 == 4 )
    {
      *((_DWORD *)this + 5) = (int)(float)(*((float *)a2 + 3) / 20.0);
      LODWORD(result) = (int)(float)(*((float *)a2 + 4) / 20.0);
      *((float *)this + 6) = result;
    }
    else if ( v54 == 5 )
    {
      v80 = *(_DWORD *)(*(_DWORD *)a2 + 76);
      v81 = (int)(float)((float)((float)(*((float *)a2 + 3) + *(float *)(v80 + 8)) / 20.0) - (float)*((int *)this + 5));
      v82 = (int)(float)((float)((float)(*((float *)a2 + 4) + *(float *)(v80 + 20)) / 20.0) - (float)*((int *)this + 6));
      v83 = atan2f((float)v82, (float)v81);
      v84 = *((_DWORD *)this + 3);
      v85 = v83;
      v86 = -v84;
      if ( v81 >= -v84 )
      {
        if ( v81 >= v84 )
          v86 = *((_DWORD *)this + 3);
        else
          v86 = v81;
      }
      v87 = *((_DWORD *)this + 4);
      v88 = -v87;
      if ( v82 >= -v87 )
      {
        if ( v82 >= v87 )
          v88 = *((_DWORD *)this + 4);
        else
          v88 = v82;
      }
      v89 = sqrtf((float)((float)v86 * (float)v86) + (float)(v88 * v88));
      v90 = (float)*((int *)this + 3);
      *((float *)this + 410) = v89 / v90;
      if ( (float)(v89 / v90) > 1.0 )
      {
        v88 = (int)(float)((float)*((int *)this + 4) * sinf(v85));
        v86 = (int)(float)(v90 * cosf(v85));
      }
      v91 = *((RenderFX **)this + 406);
      v92 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 28));
      result = COERCE_FLOAT(RenderFX::SetPosition(v91, v92, v86, v88));
      if ( character_660 )
      {
        LODWORD(result) = Character::CTRLIsAllowed((Character *)character_660);
        if ( result != 0.0 )
        {
          *((_DWORD *)this + 407) = 1065353216;
          *((_DWORD *)this + 408) = -1082130432;
          *((_DWORD *)this + 409) = 0;
          Point3D<float>::normalize((float *)this + 407);
          memset(v120, 0, 12);
          result = Point3D<float>::rotateXYBy((float *)this + 407, (float)(v85 * -57.296) + 90.0, v120);
          *((_BYTE *)this + 10) = 1;
        }
      }
    }
    else if ( (unsigned int)(v54 - 6) <= 1 )
    {
      *((_DWORD *)this + 5) = v7;
      *((_DWORD *)this + 6) = v7;
      v55 = *((RenderFX **)this + 406);
      v56 = (gameswf::character *)DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 28));
      result = COERCE_FLOAT(RenderFX::SetPosition(v55, v56, v7, v7));
      *((_BYTE *)this + 10) = v7;
      if ( character_660 )
        result = COERCE_FLOAT(v2Controller::Cmd_Stop(character_660[222]));
    }
    goto LABEL_5;
  }
  v11 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 136)));
  if ( v11 == LODWORD(result) )
  {
    v26 = *((_DWORD *)a2 + 2);
    if ( v26 == 4 )
    {
      *((_BYTE *)this + 9) = 1;
    }
    else if ( (unsigned int)(v26 - 6) <= 1 )
    {
      *((_DWORD *)this + 32) = -1;
      *((_BYTE *)this + 9) = v7;
      *((_DWORD *)this + 31) = -1;
    }
    goto LABEL_5;
  }
  v12 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 232)));
  if ( v12 == LODWORD(result) )
    goto LABEL_25;
  v13 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 280)));
  if ( v13 == LODWORD(result) )
    goto LABEL_25;
  v14 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 328)));
  if ( v14 == LODWORD(result) )
    goto LABEL_25;
  v15 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 376)));
  if ( v15 == LODWORD(result) )
    goto LABEL_25;
  v16 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 424)));
  if ( v16 == LODWORD(result) )
    goto LABEL_25;
  v17 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 472)));
  if ( v17 == LODWORD(result) )
    goto LABEL_25;
  v18 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 520)));
  if ( v18 == LODWORD(result) )
    goto LABEL_25;
  v19 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 568)));
  if ( v19 == LODWORD(result) )
    goto LABEL_25;
  v20 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 616)));
  if ( v20 == LODWORD(result) )
    goto LABEL_25;
  v21 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 664)));
  if ( v21 == LODWORD(result) )
    goto LABEL_25;
  v22 = *(_DWORD *)a2;
  result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 712)));
  if ( v22 == LODWORD(result)
    || (v23 = *(_DWORD *)a2,
        result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 760))),
        v23 == LODWORD(result))
    || (v24 = *(_DWORD *)a2,
        result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 808))),
        v24 == LODWORD(result))
    || (v25 = *(_DWORD *)a2,
        result = COERCE_FLOAT(DebugCachedCharacter::GetChar((HUDControls *)((char *)this + 856))),
        v25 == LODWORD(result))
    || v8 && (result = COERCE_FLOAT(MenuBase::IsVisible(v8)), result != 0.0) )
  {
LABEL_25:
    *((_DWORD *)this + 32) = -1;
    *((_BYTE *)this + 132) = 1;
    *((_DWORD *)this + 31) = -1;
  }
  return result;
}


// ===== 419b4c HUDControls::initCachedChars(void) =====
int __fastcall HUDControls::initCachedChars(int this)
{
  int v1; // r4
  gameswf::character *v2; // r0
  MenuFX *v3; // r7
  gameswf::character *Char; // r0
  MenuFX *v5; // r7
  gameswf::character *v6; // r0
  MenuFX *v7; // r7
  gameswf::character *v8; // r0
  MenuFX *v9; // r8
  gameswf::character *v10; // r0
  MenuFX *v11; // r8
  gameswf::character *v12; // r0
  MenuFX *v13; // r10
  gameswf::character *v14; // r0
  MenuFX *v15; // r9
  gameswf::character *v16; // r0
  MenuFX *v17; // r11
  gameswf::character *v18; // r0
  MenuFX *v19; // r11
  gameswf::character *v20; // r0
  MenuFX *v21; // r11
  gameswf::character *v22; // r0
  MenuFX *v23; // r11
  gameswf::character *v24; // r0
  MenuFX *v25; // r11
  gameswf::character *v26; // r0
  MenuFX *v27; // r7
  gameswf::character *v28; // r0
  MenuFX *v29; // r7
  gameswf::character *v30; // r0
  MenuFX *v31; // r8
  gameswf::character *v32; // r0
  MenuFX *v33; // r8
  gameswf::character *v34; // r0
  MenuFX *v35; // r8
  gameswf::character *v36; // r0
  MenuFX *v37; // r7
  gameswf::character *v38; // r0
  MenuFX *v39; // r7
  gameswf::character *v40; // r0
  MenuFX *v41; // r7
  gameswf::character *v42; // r0
  MenuFX *v43; // r7
  gameswf::character *v44; // r0
  MenuFX *v45; // r7
  gameswf::character *v46; // r0
  MenuFX *v47; // r7
  gameswf::character *v48; // r0
  MenuFX *v49; // r7
  gameswf::character *v50; // r0
  MenuFX *v51; // r7
  gameswf::character *v52; // r0
  MenuFX *v53; // r7
  gameswf::character *v54; // r0
  RenderFX *v55; // r7
  gameswf::character *v56; // r0
  int v57; // r0
  int v58; // r0
  RenderFX *v59; // r7
  gameswf::character *v60; // r0
  gameswf::character *v61; // r0
  MenuFX *v62; // r8
  gameswf::character *v63; // r0
  MenuFX *v64; // r10
  gameswf::character *v65; // r0
  gameswf::character *v66; // r0
  gameswf::character *v67; // r0
  gameswf::character *v68; // r0
  MenuFX *v69; // r7
  gameswf::character *v70; // r0
  MenuFX *v71; // r7
  gameswf::character *v72; // r0
  MenuFX *v73; // r7
  gameswf::character *v74; // r0
  gameswf::character *v75; // r0
  gameswf::character *v76; // r0
  gameswf::character *v77; // r0
  gameswf::character *v78; // r0
  gameswf::character *v79; // r0
  gameswf::character *v80; // r0
  gameswf::character *v81; // r0
  gameswf::character *v82; // r0
  gameswf::character *v83; // r0
  gameswf::character *v84; // r0
  gameswf::character *v85; // r0
  gameswf::character *v86; // r0
  gameswf::character *v87; // r0
  gameswf::character *v88; // r0
  gameswf::character *v89; // r0
  gameswf::character *v90; // r0
  gameswf::character *v91; // r0
  gameswf::character *v92; // r0
  gameswf::character *v93; // r0
  gameswf::character *v94; // r0
  gameswf::character *v95; // r0
  gameswf::character *v96; // r0
  int v97; // r3
  gameswf::character *v98; // r0
  gameswf::character *v99; // r0
  gameswf::character *v100; // r0
  gameswf::character *v101; // r0
  gameswf::character *v102; // r0
  gameswf::character *v103; // r0
  gameswf::character *v104; // r0
  gameswf::character *v105; // r0
  gameswf::character *v106; // r0
  gameswf::character *v107; // r0
  gameswf::character *v108; // r0
  gameswf::character *v109; // r0
  gameswf::character *v110; // r0
  gameswf::character *v111; // r0
  gameswf::character *v112; // r0
  gameswf::character *v113; // r0
  gameswf::character *v114; // r0
  gameswf::character *v115; // r0
  gameswf::character *v116; // r0
  gameswf::character *v117; // r0
  gameswf::character *v118; // r0
  gameswf::character *v119; // r0
  int v120; // r3
  MenuFX *v121; // [sp+0h] [bp-54h]
  MenuFX *v122; // [sp+0h] [bp-54h]
  char v123; // [sp+0h] [bp-54h]
  DebugCachedCharacter *v124; // [sp+4h] [bp-50h]
  int SavedOption; // [sp+Ch] [bp-48h]
  DebugCachedCharacter *v126; // [sp+10h] [bp-44h]
  DebugCachedCharacter *v127; // [sp+14h] [bp-40h]
  DebugCachedCharacter *v128; // [sp+18h] [bp-3Ch]
  DebugCachedCharacter *v129; // [sp+1Ch] [bp-38h]
  DebugCachedCharacter *v130; // [sp+20h] [bp-34h]
  DebugCachedCharacter *v131; // [sp+24h] [bp-30h]
  DebugCachedCharacter *v132; // [sp+2Ch] [bp-28h]
  DebugCachedCharacter *v133; // [sp+30h] [bp-24h]
  DebugCachedCharacter *v134; // [sp+34h] [bp-20h]
  char v135[20]; // [sp+38h] [bp-1Ch] BYREF

  v1 = this;
  if ( *(_DWORD *)(this + 1624) )
  {
    SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
    sprintf(v135, "_root.menu_HUD_%d", SavedOption);
    v2 = (gameswf::character *)RenderFX::Find(*(RenderFX **)(v1 + 1624), v135);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 904), v2, *(MenuFX **)(v1 + 1624), nullptr);
    v3 = *(MenuFX **)(v1 + 1624);
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 28),
      "HUDelements.controls.controls.Joystick.stick",
      v3,
      Char);
    v5 = *(MenuFX **)(v1 + 1624);
    v6 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v134 = (DebugCachedCharacter *)(v1 + 136);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 136),
      "HUDelements.controls.controls.btn_interact",
      v5,
      v6);
    v7 = *(MenuFX **)(v1 + 1624);
    v8 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v131 = (DebugCachedCharacter *)(v1 + 76);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 76),
      "HUDelements.controls.controls.Joystick",
      v7,
      v8);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 184), "pinch", *(MenuFX **)(v1 + 1624), nullptr);
    v9 = *(MenuFX **)(v1 + 1624);
    v10 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 232), "HUDelements.HealthBars.btn_potion", v9, v10);
    v11 = *(MenuFX **)(v1 + 1624);
    v12 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v133 = (DebugCachedCharacter *)(v1 + 952);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 952),
      "HUDelements.controls.controls.btn_spell",
      v11,
      v12);
    v13 = *(MenuFX **)(v1 + 1624);
    v132 = (DebugCachedCharacter *)(v1 + 1000);
    v14 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 1000),
      "HUDelements.controls.controls.btn_skill1",
      v13,
      v14);
    v15 = *(MenuFX **)(v1 + 1624);
    v130 = (DebugCachedCharacter *)(v1 + 1048);
    v16 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 1048),
      "HUDelements.controls.controls.btn_skill2",
      v15,
      v16);
    v17 = *(MenuFX **)(v1 + 1624);
    v129 = (DebugCachedCharacter *)(v1 + 1096);
    v18 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 1096),
      "HUDelements.controls.controls.btn_skill3",
      v17,
      v18);
    v19 = *(MenuFX **)(v1 + 1624);
    v20 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v128 = (DebugCachedCharacter *)(v1 + 1144);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1144), "HUDelements.btn_charactermenu", v19, v20);
    v21 = *(MenuFX **)(v1 + 1624);
    v22 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v124 = (DebugCachedCharacter *)(v1 + 1192);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1192), "HUDelements.btn_mainmenu", v21, v22);
    v23 = *(MenuFX **)(v1 + 1624);
    v24 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    v127 = (DebugCachedCharacter *)(v1 + 1240);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1240), "HUDelements.HealthBars.player", v23, v24);
    v25 = *(MenuFX **)(v1 + 1624);
    v126 = (DebugCachedCharacter *)(v1 + 1288);
    v26 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 1288),
      "HUDelements.HealthBars.btn_potion",
      v25,
      v26);
    v27 = *(MenuFX **)(v1 + 1624);
    v28 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 1336),
      "HUDelements.itunes_controls.btn_itunes",
      v27,
      v28);
    v29 = *(MenuFX **)(v1 + 1624);
    v30 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1384), "HUDelements.itunes_controls", v29, v30);
    if ( SavedOption <= 1 )
    {
      v69 = *(MenuFX **)(v1 + 1624);
      v70 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 280),
        "HUDelements.controls.controls.btn_skill1",
        v69,
        v70);
      v71 = *(MenuFX **)(v1 + 1624);
      v72 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 328),
        "HUDelements.controls.controls.btn_skill2",
        v71,
        v72);
      v73 = *(MenuFX **)(v1 + 1624);
      v74 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 376),
        "HUDelements.controls.controls.btn_skill3",
        v73,
        v74);
    }
    else
    {
      v31 = *(MenuFX **)(v1 + 1624);
      v32 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 280),
        "HUDelements.controls.controls.list.dragHandler",
        v31,
        v32);
      v33 = *(MenuFX **)(v1 + 1624);
      v34 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 328),
        "HUDelements.controls.controls.list.dragHandler",
        v33,
        v34);
      v35 = *(MenuFX **)(v1 + 1624);
      v36 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(v1 + 376),
        "HUDelements.controls.controls.list.dragHandler",
        v35,
        v36);
    }
    v37 = *(MenuFX **)(v1 + 1624);
    v38 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 424),
      "HUDelements.controls.controls.btn_spell",
      v37,
      v38);
    v39 = *(MenuFX **)(v1 + 1624);
    v40 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 472), "HUDelements.btn_charactermenu", v39, v40);
    v41 = *(MenuFX **)(v1 + 1624);
    v42 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 520), "HUDelements.btn_mainmenu", v41, v42);
    v43 = *(MenuFX **)(v1 + 1624);
    v44 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 568),
      "HUDelements.itunes_controls.btn_itunes",
      v43,
      v44);
    v45 = *(MenuFX **)(v1 + 1624);
    v46 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 616),
      "HUDelements.itunes_controls.itunes_bar.btn_play",
      v45,
      v46);
    v47 = *(MenuFX **)(v1 + 1624);
    v48 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 664),
      "HUDelements.itunes_controls.itunes_bar.btn_pause",
      v47,
      v48);
    v49 = *(MenuFX **)(v1 + 1624);
    v50 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 712),
      "HUDelements.itunes_controls.itunes_bar.btn_next",
      v49,
      v50);
    v51 = *(MenuFX **)(v1 + 1624);
    v52 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 760),
      "HUDelements.itunes_controls.itunes_bar.btn_previous",
      v51,
      v52);
    v53 = *(MenuFX **)(v1 + 1624);
    v54 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 808),
      "HUDelements.itunes_controls.itunes_bar.btn_playlist",
      v53,
      v54);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(v1 + 856),
      "LocationsMenu.btn_FastTravel",
      *(MenuFX **)(v1 + 1624),
      nullptr);
    v55 = *(RenderFX **)(v1 + 1624);
    v56 = (gameswf::character *)DebugCachedCharacter::GetChar(v131);
    v57 = RenderFX::Find(v55, "bg", v56);
    v58 = (int)(float)((float)(COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v57 + 296))(v57)) / 20.0) * 0.5);
    *(_DWORD *)(v1 + 12) = v58;
    *(_DWORD *)(v1 + 16) = v58;
    v59 = *(RenderFX **)(v1 + 1624);
    v60 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 28));
    RenderFX::SetPosition(v59, v60, 0, 0);
    v61 = (gameswf::character *)RenderFX::Find(*(RenderFX **)(v1 + 1624), "_root.menu_custom");
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 904), v61, *(MenuFX **)(v1 + 1624), nullptr);
    v62 = *(MenuFX **)(v1 + 1624);
    v63 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1432), "btn_MENU_CUSTOM_RESET", v62, v63);
    v64 = *(MenuFX **)(v1 + 1624);
    v65 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1480), "btn_MENU_CUSTOM_SAVE", v64, v65);
    *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904)) + 155) = 1;
    v66 = (gameswf::character *)RenderFX::Find(*(RenderFX **)(v1 + 1624), "_root.LocationsMenu");
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 904), v66, *(MenuFX **)(v1 + 1624), nullptr);
    v121 = *(MenuFX **)(v1 + 1624);
    v67 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1528), "btn_FastTravel", v121, v67);
    v122 = *(MenuFX **)(v1 + 1624);
    v68 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 904));
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(v1 + 1576), "btn_LocTravel", v122, v68);
    if ( *(_BYTE *)(v1 + 1644) )
    {
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1432)) + 155) = 1;
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1480)) + 155) = 1;
      *(_BYTE *)(DebugCachedCharacter::GetChar(v124) + 155) = 0;
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384)) + 155) = 0;
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1528)) + 155) = 0;
      this = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1576));
      *(_BYTE *)(this + 155) = 0;
      if ( !SavedOption )
        goto LABEL_6;
    }
    else
    {
      v123 = *(_BYTE *)(v1 + 1644);
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1432)) + 155) = v123;
      *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1480)) + 155) = v123;
      *(_BYTE *)(DebugCachedCharacter::GetChar(v124) + 155) = 1;
      this = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384));
      *(_BYTE *)(this + 155) = 1;
      if ( !SavedOption )
      {
LABEL_6:
        if ( !*(_BYTE *)(v1 + 1645) )
        {
          v98 = (gameswf::character *)DebugCachedCharacter::GetChar(v131);
          *(_DWORD *)(v1 + 1652) = *(_DWORD *)(gameswf::character::get_world_matrix(v98) + 8);
          v99 = (gameswf::character *)DebugCachedCharacter::GetChar(v131);
          *(_DWORD *)(v1 + 1656) = *(_DWORD *)(gameswf::character::get_world_matrix(v99) + 20);
          v100 = (gameswf::character *)DebugCachedCharacter::GetChar(v134);
          *(_DWORD *)(v1 + 1660) = *(_DWORD *)(gameswf::character::get_world_matrix(v100) + 8);
          v101 = (gameswf::character *)DebugCachedCharacter::GetChar(v134);
          *(_DWORD *)(v1 + 1664) = *(_DWORD *)(gameswf::character::get_world_matrix(v101) + 20);
          v102 = (gameswf::character *)DebugCachedCharacter::GetChar(v133);
          *(_DWORD *)(v1 + 1668) = *(_DWORD *)(gameswf::character::get_world_matrix(v102) + 8);
          v103 = (gameswf::character *)DebugCachedCharacter::GetChar(v133);
          *(_DWORD *)(v1 + 1672) = *(_DWORD *)(gameswf::character::get_world_matrix(v103) + 20);
          v104 = (gameswf::character *)DebugCachedCharacter::GetChar(v132);
          *(_DWORD *)(v1 + 1676) = *(_DWORD *)(gameswf::character::get_world_matrix(v104) + 8);
          v105 = (gameswf::character *)DebugCachedCharacter::GetChar(v132);
          *(_DWORD *)(v1 + 1680) = *(_DWORD *)(gameswf::character::get_world_matrix(v105) + 20);
          v106 = (gameswf::character *)DebugCachedCharacter::GetChar(v130);
          *(_DWORD *)(v1 + 1684) = *(_DWORD *)(gameswf::character::get_world_matrix(v106) + 8);
          v107 = (gameswf::character *)DebugCachedCharacter::GetChar(v130);
          *(_DWORD *)(v1 + 1688) = *(_DWORD *)(gameswf::character::get_world_matrix(v107) + 20);
          v108 = (gameswf::character *)DebugCachedCharacter::GetChar(v129);
          *(_DWORD *)(v1 + 1692) = *(_DWORD *)(gameswf::character::get_world_matrix(v108) + 8);
          v109 = (gameswf::character *)DebugCachedCharacter::GetChar(v129);
          *(_DWORD *)(v1 + 1696) = *(_DWORD *)(gameswf::character::get_world_matrix(v109) + 20);
          v110 = (gameswf::character *)DebugCachedCharacter::GetChar(v128);
          *(_DWORD *)(v1 + 1700) = *(_DWORD *)(gameswf::character::get_world_matrix(v110) + 8);
          v111 = (gameswf::character *)DebugCachedCharacter::GetChar(v128);
          *(_DWORD *)(v1 + 1704) = *(_DWORD *)(gameswf::character::get_world_matrix(v111) + 20);
          v112 = (gameswf::character *)DebugCachedCharacter::GetChar(v127);
          *(_DWORD *)(v1 + 1708) = *(_DWORD *)(gameswf::character::get_world_matrix(v112) + 8);
          v113 = (gameswf::character *)DebugCachedCharacter::GetChar(v127);
          *(_DWORD *)(v1 + 1712) = *(_DWORD *)(gameswf::character::get_world_matrix(v113) + 20);
          v114 = (gameswf::character *)DebugCachedCharacter::GetChar(v124);
          *(_DWORD *)(v1 + 1716) = *(_DWORD *)(gameswf::character::get_world_matrix(v114) + 8);
          v115 = (gameswf::character *)DebugCachedCharacter::GetChar(v124);
          *(_DWORD *)(v1 + 1720) = *(_DWORD *)(gameswf::character::get_world_matrix(v115) + 20);
          v116 = (gameswf::character *)DebugCachedCharacter::GetChar(v126);
          *(_DWORD *)(v1 + 1724) = *(_DWORD *)(gameswf::character::get_world_matrix(v116) + 8);
          v117 = (gameswf::character *)DebugCachedCharacter::GetChar(v126);
          *(_DWORD *)(v1 + 1728) = *(_DWORD *)(gameswf::character::get_world_matrix(v117) + 20);
          v118 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384));
          *(_DWORD *)(v1 + 1732) = *(_DWORD *)(gameswf::character::get_world_matrix(v118) + 8);
          v119 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384));
          this = gameswf::character::get_world_matrix(v119);
          v120 = *(_DWORD *)(this + 20);
          *(_BYTE *)(v1 + 1645) = 1;
          *(_DWORD *)(v1 + 1736) = v120;
        }
        if ( *(_BYTE *)(v1 + 1647) )
          this = HUDControls::SetHUDPos((HUDControls *)v1, (float (*)[2])(v1 + 1828), 0);
LABEL_10:
        *(_BYTE *)(v1 + 8) = 1;
        return this;
      }
    }
    if ( SavedOption == 1 )
    {
      if ( !*(_BYTE *)(v1 + 1646) )
      {
        v75 = (gameswf::character *)DebugCachedCharacter::GetChar(v131);
        *(_DWORD *)(v1 + 1740) = *(_DWORD *)(gameswf::character::get_world_matrix(v75) + 8);
        v76 = (gameswf::character *)DebugCachedCharacter::GetChar(v131);
        *(_DWORD *)(v1 + 1744) = *(_DWORD *)(gameswf::character::get_world_matrix(v76) + 20);
        v77 = (gameswf::character *)DebugCachedCharacter::GetChar(v134);
        *(_DWORD *)(v1 + 1748) = *(_DWORD *)(gameswf::character::get_world_matrix(v77) + 8);
        v78 = (gameswf::character *)DebugCachedCharacter::GetChar(v134);
        *(_DWORD *)(v1 + 1752) = *(_DWORD *)(gameswf::character::get_world_matrix(v78) + 20);
        v79 = (gameswf::character *)DebugCachedCharacter::GetChar(v133);
        *(_DWORD *)(v1 + 1756) = *(_DWORD *)(gameswf::character::get_world_matrix(v79) + 8);
        v80 = (gameswf::character *)DebugCachedCharacter::GetChar(v133);
        *(_DWORD *)(v1 + 1760) = *(_DWORD *)(gameswf::character::get_world_matrix(v80) + 20);
        v81 = (gameswf::character *)DebugCachedCharacter::GetChar(v132);
        *(_DWORD *)(v1 + 1764) = *(_DWORD *)(gameswf::character::get_world_matrix(v81) + 8);
        v82 = (gameswf::character *)DebugCachedCharacter::GetChar(v132);
        *(_DWORD *)(v1 + 1768) = *(_DWORD *)(gameswf::character::get_world_matrix(v82) + 20);
        v83 = (gameswf::character *)DebugCachedCharacter::GetChar(v130);
        *(_DWORD *)(v1 + 1772) = *(_DWORD *)(gameswf::character::get_world_matrix(v83) + 8);
        v84 = (gameswf::character *)DebugCachedCharacter::GetChar(v130);
        *(_DWORD *)(v1 + 1776) = *(_DWORD *)(gameswf::character::get_world_matrix(v84) + 20);
        v85 = (gameswf::character *)DebugCachedCharacter::GetChar(v129);
        *(_DWORD *)(v1 + 1780) = *(_DWORD *)(gameswf::character::get_world_matrix(v85) + 8);
        v86 = (gameswf::character *)DebugCachedCharacter::GetChar(v129);
        *(_DWORD *)(v1 + 1784) = *(_DWORD *)(gameswf::character::get_world_matrix(v86) + 20);
        v87 = (gameswf::character *)DebugCachedCharacter::GetChar(v128);
        *(_DWORD *)(v1 + 1788) = *(_DWORD *)(gameswf::character::get_world_matrix(v87) + 8);
        v88 = (gameswf::character *)DebugCachedCharacter::GetChar(v128);
        *(_DWORD *)(v1 + 1792) = *(_DWORD *)(gameswf::character::get_world_matrix(v88) + 20);
        v89 = (gameswf::character *)DebugCachedCharacter::GetChar(v127);
        *(_DWORD *)(v1 + 1796) = *(_DWORD *)(gameswf::character::get_world_matrix(v89) + 8);
        v90 = (gameswf::character *)DebugCachedCharacter::GetChar(v127);
        *(_DWORD *)(v1 + 1800) = *(_DWORD *)(gameswf::character::get_world_matrix(v90) + 20);
        v91 = (gameswf::character *)DebugCachedCharacter::GetChar(v124);
        *(_DWORD *)(v1 + 1804) = *(_DWORD *)(gameswf::character::get_world_matrix(v91) + 8);
        v92 = (gameswf::character *)DebugCachedCharacter::GetChar(v124);
        *(_DWORD *)(v1 + 1808) = *(_DWORD *)(gameswf::character::get_world_matrix(v92) + 20);
        v93 = (gameswf::character *)DebugCachedCharacter::GetChar(v126);
        *(_DWORD *)(v1 + 1812) = *(_DWORD *)(gameswf::character::get_world_matrix(v93) + 8);
        v94 = (gameswf::character *)DebugCachedCharacter::GetChar(v126);
        *(_DWORD *)(v1 + 1816) = *(_DWORD *)(gameswf::character::get_world_matrix(v94) + 20);
        v95 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384));
        *(_DWORD *)(v1 + 1820) = *(_DWORD *)(gameswf::character::get_world_matrix(v95) + 8);
        v96 = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v1 + 1384));
        this = gameswf::character::get_world_matrix(v96);
        v97 = *(_DWORD *)(this + 20);
        *(_BYTE *)(v1 + 1646) = 1;
        *(_DWORD *)(v1 + 1824) = v97;
      }
      if ( *(_BYTE *)(v1 + 1648) )
        this = HUDControls::SetHUDPos((HUDControls *)v1, (float (*)[2])(v1 + 1916), 0);
    }
    goto LABEL_10;
  }
  return this;
}


// ===== 41a780 HUDControls::Update(void) =====
int __fastcall HUDControls::Update(HUDControls *this)
{
  int result; // r0
  int v3; // r6
  int v4; // r7
  int v5; // r5
  _DWORD *v6; // r0
  int v7; // r2
  int v8; // r3
  int v9; // r0
  float v10; // r7
  int v11; // r9
  float v12; // r10
  float v13; // r8
  int v14; // [sp+0h] [bp-20h] BYREF
  int v15; // [sp+4h] [bp-1Ch]
  int v16; // [sp+8h] [bp-18h]
  float v17; // [sp+Ch] [bp-14h]
  float v18; // [sp+10h] [bp-10h]
  float v19; // [sp+14h] [bp-Ch]
  float v20[2]; // [sp+18h] [bp-8h] BYREF

  b_IsInCutScreen = byte_9A600C != 0;
  *((_BYTE *)this + 132) = 0;
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result && !*(_BYTE *)(result + 408) )
  {
    if ( *((_BYTE *)this + 9) )
      *((_BYTE *)this + 9) = 0;
    if ( *((_BYTE *)this + 10) )
      *((_BYTE *)this + 10) = 0;
  }
  else
  {
    if ( !*((_DWORD *)this + 406) )
      return result;
    if ( *((_BYTE *)this + 8) )
    {
      result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
      v3 = *(_DWORD *)(result + 1632);
      if ( !v3 )
        return result;
    }
    else
    {
      HUDControls::initCachedChars(this);
      *((_DWORD *)this + 32) = -1;
      *((_DWORD *)this + 31) = -1;
      result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
      v3 = *(_DWORD *)(result + 1632);
      if ( !v3 )
        return result;
    }
    if ( *((_BYTE *)this + 9) )
    {
      if ( *(_DWORD *)(v3 + 5284) )
      {
        result = v2Controller::Cmd_UseOOI(*(_DWORD *)(v3 + 888), nullptr);
      }
      else
      {
        *(_BYTE *)(v3 + 1043) = 0;
        result = v2Controller::Cmd_Attack(*(_DWORD *)(v3 + 888), nullptr);
      }
    }
    if ( *((_BYTE *)this + 10) )
    {
      result = Character::CTRLIsAllowed((Character *)v3);
      if ( result )
      {
        v10 = *((float *)this + 410);
        v11 = *(_DWORD *)(v3 + 888);
        v12 = v10 * *((float *)this + 408);
        v13 = v10 * *((float *)this + 409);
        v17 = *((float *)this + 407) * v10;
        v18 = v12;
        v19 = v13;
        result = v2Controller::Cmd_HeadTowards(v11);
      }
    }
    v4 = *((unsigned __int8 *)this + 9);
    if ( !*((_BYTE *)this + 9) )
    {
      result = *((_DWORD *)this + 31);
      if ( result > 0 )
      {
        v5 = *((_DWORD *)this + 32);
        if ( v5 > 0 )
        {
          v20[1] = (float)v5;
          v16 = 0;
          v20[0] = (float)result;
          v14 = 0;
          v15 = 0;
          result = PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v20, &v14);
          if ( result )
          {
            v6 = *(_DWORD **)(v3 + 5276);
            v7 = v15;
            v8 = v16;
            if ( v6 )
            {
              v6[13] = v14;
              v6[14] = v7;
              v6[15] = v8;
              AnimatedFX::SyncIrrData((int)v6, v4);
              v9 = *(_DWORD *)(v3 + 5276);
              if ( v9 )
                AnimatedFX::SetVisible(v9, 1);
            }
            return v2Controller::Cmd_MoveTo(*(_DWORD *)(v3 + 888));
          }
        }
      }
    }
  }
  return result;
}


// ===== 41a9fc DebugCachedCharacter::~DebugCachedCharacter() =====
void __fastcall DebugCachedCharacter::~DebugCachedCharacter(DebugCachedCharacter *this)
{
  _DWORD *v2; // r0

  v2 = *((_DWORD **)this + 10);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 41aa38 `non-virtual thunk to'HUDControls::~HUDControls() =====
void __fastcall `non-virtual thunk to'HUDControls::~HUDControls(HUDControls *this)
{
  HUDControls::~HUDControls((HUDControls *)((char *)this - 4));
}


// ===== 41aa40 HUDControls::~HUDControls() =====
void __fastcall HUDControls::~HUDControls(HUDControls *this)
{
  *(_DWORD *)this = off_967C20;
  *((_DWORD *)this + 1) = off_967C3C;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
  }
  HUDControls::Flush(this);
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1576));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1528));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1480));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1432));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1384));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1336));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1288));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1240));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1192));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1144));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1096));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1048));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1000));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 952));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 904));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 856));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 808));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 760));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 712));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 664));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 616));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 568));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 520));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 472));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 424));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 376));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 328));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 280));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 232));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 184));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 136));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 76));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 28));
}


// ===== 41abec `non-virtual thunk to'HUDControls::~HUDControls() =====
void __fastcall `non-virtual thunk to'HUDControls::~HUDControls(HUDControls *this)
{
  HUDControls::~HUDControls((HUDControls *)((char *)this - 4));
}


// ===== 41abf4 HUDControls::~HUDControls() =====
void __fastcall HUDControls::~HUDControls(HUDControls *this)
{
  HUDControls::~HUDControls(this);
  CustomFree(this);
}


// ===== 41ac10 HUDControls::~HUDControls() =====
void __fastcall HUDControls::~HUDControls(HUDControls *this)
{
  *(_DWORD *)this = off_967C20;
  *((_DWORD *)this + 1) = off_967C3C;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
  }
  HUDControls::Flush(this);
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1576));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1528));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1480));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1432));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1384));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1336));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1288));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1240));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1192));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1144));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1096));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1048));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 1000));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 952));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 904));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 856));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 808));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 760));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 712));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 664));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 616));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 568));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 520));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 472));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 424));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 376));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 328));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 280));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 232));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 184));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 136));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 76));
  DebugCachedCharacter::~DebugCachedCharacter((HUDControls *)((char *)this + 28));
}


// ===== 41adbc `global constructor keyed to'.._.._sources_Game_Menus_HUDControls.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_HUDControls.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A36AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A36A8 = 1056964608;
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


// ===== 41aeec DebugCachedCharacter::DebugCachedCharacter(void) =====
void __fastcall DebugCachedCharacter::DebugCachedCharacter(DebugCachedCharacter *this)
{
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 7) = (char *)this + 8;
  *(_BYTE *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
}


// ===== 41af1c HUDControls::HUDControls(void) =====
void __fastcall HUDControls::HUDControls(HUDControls *this)
{
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 1) = off_967C3C;
  *(_DWORD *)this = off_967C20;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 28));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 76));
  *((_DWORD *)this + 32) = -1;
  *((_DWORD *)this + 31) = -1;
  *((_BYTE *)this + 132) = 0;
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 136));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 184));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 232));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 280));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 328));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 376));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 424));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 472));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 520));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 568));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 616));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 664));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 712));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 760));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 808));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 856));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 904));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 952));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1000));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1048));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1096));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1144));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1192));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1240));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1288));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1336));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1384));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1432));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1480));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1528));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1576));
  *((_DWORD *)this + 410) = 0;
  *((_DWORD *)this + 407) = 0;
  *((_DWORD *)this + 408) = 0;
  *((_DWORD *)this + 409) = 0;
  *((_DWORD *)this + 406) = 0;
  *((_BYTE *)this + 1644) = 0;
  *((_BYTE *)this + 1645) = 0;
  *((_BYTE *)this + 1646) = 0;
  *((_BYTE *)this + 1647) = 0;
  *((_BYTE *)this + 1648) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 0);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 0);
}


// ===== 41b11c HUDControls::GetInstance(void) =====
void *__fastcall HUDControls::GetInstance(HUDControls *this)
{
  if ( (`guard variable for'HUDControls::GetInstance(void)::s_singleton & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'HUDControls::GetInstance(void)::s_singleton) )
  {
    HUDControls::HUDControls((HUDControls *)&HUDControls::GetInstance(void)::s_singleton);
    _cxa_guard_release(&`guard variable for'HUDControls::GetInstance(void)::s_singleton);
    _aeabi_atexit((int)&HUDControls::GetInstance(void)::s_singleton, (int)HUDControls::~HUDControls, (int)&_dso_handle);
  }
  return &HUDControls::GetInstance(void)::s_singleton;
}


// ===== 41b1a4 HUDControls::HUDControls(void) =====
void __fastcall HUDControls::HUDControls(HUDControls *this)
{
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 1) = off_967C3C;
  *(_DWORD *)this = off_967C20;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 28));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 76));
  *((_DWORD *)this + 32) = -1;
  *((_DWORD *)this + 31) = -1;
  *((_BYTE *)this + 132) = 0;
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 136));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 184));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 232));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 280));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 328));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 376));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 424));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 472));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 520));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 568));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 616));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 664));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 712));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 760));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 808));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 856));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 904));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 952));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1000));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1048));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1096));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1144));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1192));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1240));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1288));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1336));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1384));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1432));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1480));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1528));
  DebugCachedCharacter::DebugCachedCharacter((HUDControls *)((char *)this + 1576));
  *((_DWORD *)this + 410) = 0;
  *((_DWORD *)this + 407) = 0;
  *((_DWORD *)this + 408) = 0;
  *((_DWORD *)this + 409) = 0;
  *((_DWORD *)this + 406) = 0;
  *((_BYTE *)this + 1644) = 0;
  *((_BYTE *)this + 1645) = 0;
  *((_BYTE *)this + 1646) = 0;
  *((_BYTE *)this + 1647) = 0;
  *((_BYTE *)this + 1648) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 0);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 0);
}


// ===== 41b3a4 MenuFX::State::Update(int) =====
int __fastcall MenuFX::State::Update(MenuFX::State *this, int a2)
{
  return (*(int (__fastcall **)(MenuFX::State *, int))(*(_DWORD *)this + 28))(this, a2);
}


// ===== 41b3b8 MenuFX::State::UpdateBackground(void) =====
void __fastcall MenuFX::State::UpdateBackground(MenuFX::State *this)
{
  ;
}


// ===== 41b3bc MenuFX::State::UpdateBackground(int) =====
int __fastcall MenuFX::State::UpdateBackground(MenuFX::State *this, int a2)
{
  return (*(int (__fastcall **)(MenuFX::State *, int))(*(_DWORD *)this + 36))(this, a2);
}


// ===== 41b3d0 MenuBase::OnFSCommand(char const*,char const*) =====
int __fastcall MenuBase::OnFSCommand(MenuBase *this, const char *a2, const char *a3)
{
  return (*(int (__fastcall **)(MenuBase *, const char *, const char *))(*(_DWORD *)this + 56))(this, a2, a3);
}


// ===== 41b3e4 MenuBase::Create(void) =====
void __fastcall MenuBase::Create(MenuBase *this)
{
  ;
}


// ===== 41b3e8 MenuBase::GotFocus(void) =====
void __fastcall MenuBase::GotFocus(MenuBase *this)
{
  ;
}


// ===== 41b3ec MenuBase::LostFocus(void) =====
void __fastcall MenuBase::LostFocus(MenuBase *this)
{
  ;
}


// ===== 41b3f0 MenuBase::IsValidMenu(void) =====
int __fastcall MenuBase::IsValidMenu(MenuBase *this)
{
  return *((unsigned __int8 *)this + 124);
}


// ===== 41b3f8 MenuBase::SetIsLocalised(bool) =====
int __fastcall MenuBase::SetIsLocalised(int this, bool a2)
{
  *(_BYTE *)(this + 117) = a2;
  return this;
}


// ===== 41b400 MenuBase::CacheStrings(void) =====
void __fastcall MenuBase::CacheStrings(MenuBase *this)
{
  ;
}


// ===== 41b404 HUDMinimap::InitAll(void) =====
int __fastcall HUDMinimap::InitAll(HUDMinimap *this)
{
  (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 124))(this);
  (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 112))(this);
  return (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 92))(this);
}


// ===== 41b43c HUDMinimap::Hide(void) =====
int __fastcall HUDMinimap::Hide(HUDMinimap *this)
{
  int result; // r0
  int v3; // r3

  (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 144))(this);
  result = (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 108))(this);
  *((_BYTE *)this + 196) = 0;
  v3 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
  if ( v3 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 72))(v3);
  return result;
}


// ===== 41b4a8 HUDMinimap::DestroyMapCamera(void) =====
int __fastcall HUDMinimap::DestroyMapCamera(int this)
{
  int v1; // r3
  int v2; // r4

  v1 = *(_DWORD *)(this + 224);
  v2 = this;
  if ( v1 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 4))(*(_DWORD *)(this + 224));
    *(_DWORD *)(v2 + 224) = 0;
  }
  return this;
}


// ===== 41b4d8 HUDMinimap::DisableMapCamera(void) =====
int __fastcall HUDMinimap::DisableMapCamera(HUDMinimap *this)
{
  return (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 148))(this);
}


// ===== 41b4ec HUDMinimap::ResetTranslation(void) =====
int __fastcall HUDMinimap::ResetTranslation(HUDMinimap *this)
{
  _DWORD *v1; // r2

  v1 = *((_DWORD **)this + 56);
  v1[38] = Vec3f_Origin;
  v1[39] = dword_99F858;
  v1[40] = dword_99F85C;
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 56) + 16))(*((_DWORD *)this + 56));
  return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*((_DWORD *)this + 56) + 4) + 184))(
           *(_DWORD *)(*((_DWORD *)this + 56) + 4),
           1);
}


// ===== 41b55c HUDMinimap::SetEnemies(void) =====
void __fastcall HUDMinimap::SetEnemies(HUDMinimap *this)
{
  ;
}


// ===== 41b560 HUDMinimap::SetObjects(void) =====
void __fastcall HUDMinimap::SetObjects(HUDMinimap *this)
{
  ;
}


// ===== 41b564 HUDMinimap::SetObjectives(void) =====
void __fastcall HUDMinimap::SetObjectives(HUDMinimap *this)
{
  ;
}


// ===== 41b568 HUDMinimap::InitAllIcons(void) =====
_DWORD *__fastcall HUDMinimap::InitAllIcons(_DWORD *this)
{
  int v1; // r3
  int v2; // r2
  _DWORD *v3; // r1
  _DWORD *v4; // r12
  _DWORD *v5; // r12
  int v6; // r2
  int v7; // r3

  v1 = 0;
  v2 = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  v3 = this;
  v4 = this;
  do
  {
    ++v2;
    v4[63] = 0;
    ++v4;
  }
  while ( v2 != 8 );
  v5 = this;
  v6 = 0;
  do
  {
    ++v1;
    v5[71] = 0;
    ++v5;
  }
  while ( v1 != 8 );
  v7 = 0;
  do
  {
    ++v6;
    *(this + 79) = 0;
    ++this;
  }
  while ( v6 != 12 );
  do
  {
    ++v7;
    v3[91] = 0;
    ++v3;
  }
  while ( v7 != 12 );
  return this;
}


// ===== 41b5ec HUDMinimap::InitAllObjects(void) =====
int __fastcall HUDMinimap::InitAllObjects(int this)
{
  int v1; // r2
  int v2; // r1
  int v3; // r3

  v1 = 0;
  v2 = this;
  v3 = 0;
  do
  {
    ++v1;
    *(_DWORD *)(v2 + 988) = 0;
    v2 += 4;
  }
  while ( v1 != 8 );
  do
  {
    ++v3;
    *(_DWORD *)(this + 1020) = 0;
    this += 4;
  }
  while ( v3 != 8 );
  return this;
}


// ===== 41b628 HUDMinimap::HideAllIcons(void) =====
int __fastcall HUDMinimap::HideAllIcons(HUDMinimap *this)
{
  int v1; // r3
  HUDMinimap *v2; // r1
  int v3; // r3
  int v4; // r3
  int v5; // r3
  int v6; // r3
  HUDMinimap *v7; // r2
  int v8; // r12
  int v9; // r3
  HUDMinimap *v10; // r1
  int v11; // r12
  int i; // r3
  int v13; // r1
  int v14; // r3
  int result; // r0
  int v16; // r1

  v1 = *((_DWORD *)this + 59);
  v2 = this;
  if ( v1 )
    *(_BYTE *)(v1 + 155) = 0;
  v3 = *((_DWORD *)this + 60);
  if ( v3 )
    *(_BYTE *)(v3 + 155) = 0;
  v4 = *((_DWORD *)this + 61);
  if ( v4 )
    *(_BYTE *)(v4 + 155) = 0;
  v5 = *((_DWORD *)this + 62);
  if ( v5 )
    *(_BYTE *)(v5 + 155) = 0;
  v6 = 0;
  v7 = this;
  do
  {
    v8 = *((_DWORD *)v2 + 63);
    ++v6;
    v2 = (HUDMinimap *)((char *)v2 + 4);
    if ( v8 )
      *(_BYTE *)(v8 + 155) = 0;
  }
  while ( v6 != 8 );
  v9 = 0;
  v10 = this;
  do
  {
    v11 = *((_DWORD *)v10 + 71);
    ++v9;
    v10 = (HUDMinimap *)((char *)v10 + 4);
    if ( v11 )
      *(_BYTE *)(v11 + 155) = 0;
  }
  while ( v9 != 8 );
  for ( i = 0; i != 12; ++i )
  {
    v13 = *((_DWORD *)this + 79);
    this = (HUDMinimap *)((char *)this + 4);
    if ( v13 )
      *(_BYTE *)(v13 + 155) = 0;
  }
  v14 = 0;
  result = 0;
  do
  {
    v16 = *((_DWORD *)v7 + 91);
    ++v14;
    v7 = (HUDMinimap *)((char *)v7 + 4);
    if ( v16 )
      *(_BYTE *)(v16 + 155) = 0;
  }
  while ( v14 != 12 );
  return result;
}


// ===== 41b710 std::__stlp_string_fill<char,std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,std::basic_streambuf<char,std::char_traits<char>> *,int) =====
int __fastcall std::__stlp_string_fill<char,std::char_traits<char>>(_DWORD *a1, _DWORD *a2, int a3)
{
  unsigned __int8 v5; // r7
  int i; // r5
  unsigned __int8 *v7; // r2

  v5 = *((_BYTE *)a1 + *(_DWORD *)(*a1 - 12) + 68);
  if ( a3 > 0 )
  {
    for ( i = 0; i != a3; ++i )
    {
      v7 = (unsigned __int8 *)a2[5];
      if ( (unsigned int)v7 >= a2[6] )
      {
        if ( (*(int (__fastcall **)(_DWORD *, _DWORD))(*a2 + 52))(a2, v5) == -1 )
          return 0;
      }
      else
      {
        *v7 = v5;
        a2[5] = v7 + 1;
      }
    }
  }
  return 1;
}


// ===== 41b790 HUDMinimap::GetMapScreenCoord(Point3D<float> const&,float,float,float,float) =====
float *__fastcall HUDMinimap::GetMapScreenCoord(float *a1, int a2, int a3, float a4, float a5, float a6, float a7)
{
  float v9; // r0
  int v10; // r3
  float v11; // r0
  float v13; // [sp+0h] [bp-Ch] BYREF
  int v14; // [sp+4h] [bp-8h]

  a1[1] = 0.0;
  *a1 = 0.0;
  v13 = 0.0;
  v14 = 0;
  CameraBase::GetScreenCoord(a3, &v13);
  v10 = v14;
  v9 = (float)(a4 * v13) * 0.5 + a6;
  *a1 = v9;
  v11 = (float)(COERCE_FLOAT(v10 + 0x80000000) * a5) * 0.5 + a7;
  a1[1] = v11;
  return a1;
}


// ===== 41b868 HUDMinimap::IsInsideVisitedRooms(Point3D<float> const&) =====
int __fastcall HUDMinimap::IsInsideVisitedRooms(int a1, float *a2)
{
  int *v2; // r4
  int *v3; // r5

  v3 = (int *)(a1 + 228);
  v2 = *(int **)(a1 + 228);
  if ( v2 == (int *)(a1 + 228) )
    return 0;
  while ( !RoomZone::HasInside((float *)v2[2], a2) )
  {
    v2 = (int *)*v2;
    if ( v3 == v2 )
      return 0;
  }
  return 1;
}


// ===== 41b8b4 HUDMinimap::SetObjectsVisibility(Level *) =====
int __fastcall HUDMinimap::SetObjectsVisibility(int this, Level *a2)
{
  int v2; // r5
  int v4; // r6
  int v5; // r4
  int v6; // r1
  int v7; // r6
  int v8; // r4
  int v9; // r3
  int v10; // r3
  int v11; // r3

  v2 = this;
  if ( *(int *)(this + 212) > 0 )
  {
    v4 = 0;
    v5 = this;
    do
    {
      v6 = *(_DWORD *)(v5 + 988);
      *(_BYTE *)(*(_DWORD *)(v5 + 252) + 155) = v6
                                             && a2
                                             && *(_DWORD *)(v6 + 884) == *((_DWORD *)a2 + 68)
                                             && (this = HUDMinimap::IsInsideVisitedRooms(v2, (float *)(v6 + 352))) != 0;
      ++v4;
      v5 += 4;
    }
    while ( *(_DWORD *)(v2 + 212) > v4 );
  }
  if ( *(int *)(v2 + 208) > 0 )
  {
    v7 = 0;
    v8 = v2;
    do
    {
      while ( 1 )
      {
        v10 = *(_DWORD *)(v8 + 1020);
        this = v2;
        if ( !v10 )
          break;
        this = HUDMinimap::IsInsideVisitedRooms(v2, (float *)(v10 + 352));
        if ( !this )
          break;
        v9 = *(_DWORD *)(v8 + 284);
        ++v7;
        v8 += 4;
        *(_BYTE *)(v9 + 155) = 1;
        if ( *(_DWORD *)(v2 + 208) <= v7 )
          return this;
      }
      v11 = *(_DWORD *)(v8 + 284);
      ++v7;
      v8 += 4;
      *(_BYTE *)(v11 + 155) = 0;
    }
    while ( *(_DWORD *)(v2 + 208) > v7 );
  }
  return this;
}


// ===== 41b9bc HUDMinimap::UpdateIconPositions(HUDMinimap*,gameswf::rect) =====
float __fastcall HUDMinimap::UpdateIconPositions(_DWORD *a1, int a2, int a3, int a4, float a5, float a6)
{
  float result; // r0
  float v9; // r10
  float v10; // r11
  _DWORD *v11; // r6
  _DWORD *v12; // r5
  int v13; // r8
  _DWORD *v14; // r3
  int v15; // r2
  int v16; // r0
  int v17; // r3
  _DWORD *v18; // r6
  _DWORD *v19; // r5
  int v20; // r8
  _DWORD *v21; // r5
  _DWORD *v22; // r6
  int v23; // r8
  _DWORD *v24; // r6
  _DWORD *v25; // r5
  int v26; // r8
  _DWORD *v27; // r6
  _DWORD *v28; // r5
  int v29; // r8
  float v30; // [sp+1Ch] [bp-78h]
  float v31; // [sp+20h] [bp-74h]
  _DWORD v32[3]; // [sp+2Ch] [bp-68h] BYREF
  _DWORD v33[3]; // [sp+38h] [bp-5Ch] BYREF
  _DWORD v34[3]; // [sp+44h] [bp-50h] BYREF
  _DWORD v35[3]; // [sp+50h] [bp-44h] BYREF
  _DWORD v36[3]; // [sp+5Ch] [bp-38h] BYREF
  float v37[2]; // [sp+68h] [bp-2Ch] BYREF
  float v38[2]; // [sp+70h] [bp-24h] BYREF
  float v39[2]; // [sp+78h] [bp-1Ch] BYREF
  float v40[2]; // [sp+80h] [bp-14h] BYREF
  float varC[12]; // [sp+88h] [bp-Ch] BYREF
  float varg_r2; // [sp+B8h] [bp+24h]
  float varg_r3; // [sp+BCh] [bp+28h]

  result = a6;
  if ( *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 228) )
  {
    v9 = a6 - a5;
    v10 = varg_r3 - varg_r2;
    v31 = (float)((float)(varg_r3 - varg_r2) * 0.5) + varg_r2;
    result = (float)((float)(a6 - a5) * 0.5) + a5;
    v30 = result;
    if ( (int)a1[50] > 0 )
    {
      v11 = a1;
      v12 = a1;
      v13 = 0;
      do
      {
        result = COERCE_FLOAT(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, v13, 1));
        v14 = *(_DWORD **)(LODWORD(result) + 1632);
        ++v13;
        if ( v14 )
        {
          v15 = v14[88];
          v16 = v14[89];
          v17 = v14[90];
          v12[115] = v15;
          v12[116] = v16;
          v12[117] = v17;
          v36[0] = v15;
          v36[1] = v12[116];
          v36[2] = v12[117];
          HUDMinimap::GetMapScreenCoord(varC, (int)a1, (int)v36, v10, v9, v31, v30);
          result = COERCE_FLOAT(
                     RenderFX::SetPosition(
                       *(RenderFX **)(a2 + 4),
                       (gameswf::character *)v11[59],
                       (int)varC[0],
                       (int)varC[1]));
          *(_BYTE *)(v11[59] + 155) = 1;
        }
        ++v11;
        v12 += 3;
      }
      while ( a1[50] > v13 );
    }
    if ( (int)a1[54] > 0 )
    {
      v18 = a1;
      v19 = a1;
      v20 = 0;
      do
      {
        (*(void (__fastcall **)(_DWORD *))(*a1 + 80))(a1);
        v35[0] = v19[211];
        v35[1] = v19[212];
        v35[2] = v19[213];
        ++v20;
        HUDMinimap::GetMapScreenCoord(v40, (int)a1, (int)v35, v10, v9, v31, v30);
        result = COERCE_FLOAT(
                   RenderFX::SetPosition(
                     *(RenderFX **)(a2 + 4),
                     (gameswf::character *)v18[91],
                     (int)v40[0],
                     (int)v40[1]));
        v19 += 3;
        *(_BYTE *)(v18[91] + 155) = 1;
        ++v18;
      }
      while ( a1[54] > v20 );
    }
    if ( (int)a1[53] > 0 )
    {
      v21 = a1;
      v22 = a1;
      v23 = 0;
      do
      {
        v34[0] = v21[127];
        v34[1] = v21[128];
        v34[2] = v21[129];
        ++v23;
        HUDMinimap::GetMapScreenCoord(v39, (int)a1, (int)v34, v10, v9, v31, v30);
        result = COERCE_FLOAT(
                   RenderFX::SetPosition(
                     *(RenderFX **)(a2 + 4),
                     (gameswf::character *)v22[63],
                     (int)v39[0],
                     (int)v39[1]));
        v21 += 3;
        ++v22;
      }
      while ( a1[53] > v23 );
    }
    if ( (int)a1[52] > 0 )
    {
      v24 = a1;
      v25 = a1;
      v26 = 0;
      do
      {
        v33[0] = v25[151];
        v33[1] = v25[152];
        v33[2] = v25[153];
        ++v26;
        HUDMinimap::GetMapScreenCoord(v38, (int)a1, (int)v33, v10, v9, v31, v30);
        result = COERCE_FLOAT(
                   RenderFX::SetPosition(
                     *(RenderFX **)(a2 + 4),
                     (gameswf::character *)v24[71],
                     (int)v38[0],
                     (int)v38[1]));
        v25 += 3;
        ++v24;
      }
      while ( a1[52] > v26 );
    }
    if ( (int)a1[51] > 0 )
    {
      v27 = a1;
      v28 = a1;
      v29 = 0;
      do
      {
        v32[0] = v28[175];
        v32[1] = v28[176];
        v32[2] = v28[177];
        ++v29;
        HUDMinimap::GetMapScreenCoord(v37, (int)a1, (int)v32, v10, v9, v31, v30);
        result = COERCE_FLOAT(
                   RenderFX::SetPosition(
                     *(RenderFX **)(a2 + 4),
                     (gameswf::character *)v27[79],
                     (int)v37[0],
                     (int)v37[1]));
        v28 += 3;
        *(_BYTE *)(v27[79] + 155) = 1;
        ++v27;
      }
      while ( a1[51] > v29 );
    }
  }
  return result;
}


// ===== 41be34 HUDMinimap::EnableGameCamera(void) =====
int __fastcall HUDMinimap::EnableGameCamera(HUDMinimap *this)
{
  int CurrentLevel; // r0
  int v2; // r4

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v2 = CurrentLevel;
  if ( CurrentLevel )
  {
    v2 = *(_DWORD *)(CurrentLevel + 296);
    if ( v2 )
      CameraBase::SetActive(v2);
  }
  return v2;
}


// ===== 41be78 HUDMinimap::EnableMapCamera(void) =====
int __fastcall HUDMinimap::EnableMapCamera(HUDMinimap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 56);
  if ( result )
    return CameraBase::SetActive(result);
  return result;
}


// ===== 41be88 HUDMinimap::CreateMapCamera(void) =====
int __fastcall HUDMinimap::CreateMapCamera(int this)
{
  int v1; // r5
  CameraLevel *v2; // r6
  int v3; // r8
  int v4; // r7
  int v5; // r10
  int v6; // r2

  v1 = this;
  if ( !*(_DWORD *)(this + 224) )
  {
    v2 = (CameraLevel *)operator new(0xA8u, 0);
    CameraLevel::CameraLevel(v2);
    *(_DWORD *)(v1 + 224) = v2;
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
          "m_mapCam",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\HUDMinimap.cpp",
          272);
        v2 = *(CameraLevel **)(v1 + 224);
      }
    }
    v3 = Arrays::CamAnimSetTable::size;
    if ( Arrays::CamAnimSetTable::size )
    {
      v4 = 0;
      v5 = Arrays::CamAnimSetTable::m_memberNames;
      while ( LC_API_STRCMP_0("MiniMap", *(const char **)(v5 + 4 * v4)) )
      {
        if ( ++v4 == v3 )
          goto LABEL_8;
      }
      v6 = v4;
    }
    else
    {
LABEL_8:
      v6 = -1;
    }
    CameraLevel::Load(v2, "data/3D/camera/CameraTests.bdae", v6, "PlayerCamera_Default");
    *(_BYTE *)(*(_DWORD *)(v1 + 224) + 133) = 1;
    CameraTarget::EnableDamping(*(_DWORD *)(v1 + 224), 0);
    CameraBase::SetData(*(_DWORD *)(v1 + 224), 0.42963, 1.0, 0.0, 100000.0, 0);
    *(_DWORD *)(*(_DWORD *)(v1 + 224) + 140) = 1065353216;
    *(_DWORD *)(*(_DWORD *)(v1 + 224) + 136) = 0;
    return CameraLevel::PlayAnim(
             *(CameraLevel **)(v1 + 224),
             *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *(_DWORD *)(*(_DWORD *)(v1 + 224) + 128) + 16),
             0,
             0);
  }
  return this;
}


// ===== 41c058 HUDMinimap::RegisterDisplayCallback(void) =====
int __fastcall HUDMinimap::RegisterDisplayCallback(HUDMinimap *this)
{
  return RenderFX::RegisterDisplayCallback(*((_DWORD *)this + 1), "RenderMap", HUDMinimap::RenderMap, this);
}


// ===== 41c088 HUDMinimap::RegisterToMenuManager(void) =====
int __fastcall HUDMinimap::RegisterToMenuManager(HUDMinimap *this)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  return MenuManager::RegisterMenu(Instance, this);
}


// ===== 41c0a0 `global constructor keyed to'.._.._sources_Game_Menus_HUDMinimap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_HUDMinimap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3E94 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3E90 = 1056964608;
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


// ===== 41c17c HUDMinimap::~HUDMinimap() =====
void __fastcall HUDMinimap::~HUDMinimap(HUDMinimap *this)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4

  v2 = (char *)this + 228;
  *(_DWORD *)this = off_967C50;
  DebugCachedCharacter::~DebugCachedCharacter((HUDMinimap *)((char *)this + 412));
  v3 = *((char **)this + 57);
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v4 = *(char **)v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0xCu);
      if ( v4 == v2 )
        break;
      v3 = v4;
    }
    v3 = v2;
  }
  *((_DWORD *)this + 57) = v3;
  *((_DWORD *)v2 + 1) = v3;
  MenuBase::~MenuBase(this);
}


// ===== 41c1f0 HUDMinimap::~HUDMinimap() =====
void __fastcall HUDMinimap::~HUDMinimap(HUDMinimap *this)
{
  HUDMinimap::~HUDMinimap(this);
  CustomFree(this);
}


// ===== 41c20c HUDMinimap::~HUDMinimap() =====
void __fastcall HUDMinimap::~HUDMinimap(HUDMinimap *this)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4

  v2 = (char *)this + 228;
  *(_DWORD *)this = off_967C50;
  DebugCachedCharacter::~DebugCachedCharacter((HUDMinimap *)((char *)this + 412));
  v3 = *((char **)this + 57);
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v4 = *(char **)v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0xCu);
      if ( v4 == v2 )
        break;
      v3 = v4;
    }
    v3 = v2;
  }
  *((_DWORD *)this + 57) = v3;
  *((_DWORD *)v2 + 1) = v3;
  MenuBase::~MenuBase(this);
}


// ===== 41c280 std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
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


// ===== 41c364 std::operator<<<char,std::char_traits<char>,std::allocator<char>>(std::basic_ostream<char,std::char_traits<char>> &,std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&) =====
std::ostream *__fastcall std::operator<<<char>(std::ostream *a1, int a2)
{
  std::ios_base *v4; // r0
  int M_iostate; // r2
  int v6; // r3
  int M_exception_mask; // r2
  int v9; // r8
  int v10; // r6
  int v11; // r0
  char *v12; // r3
  unsigned int v13; // r2
  unsigned int v14; // r6
  int v15; // r3
  char *v16; // r1
  _DWORD *v17; // r7

  if ( std::priv::__init_bostr<char,std::char_traits<char>>(a1) )
  {
    v9 = 0;
    v10 = *(_DWORD *)(a2 + 16);
    v11 = *(_DWORD *)(a2 + 20);
    v12 = (char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3);
    v13 = *((_DWORD *)v12 + 7);
    *((_DWORD *)v12 + 7) = 0;
    v14 = v10 - v11;
    v15 = *((_DWORD *)v12 + 1) & 1;
    if ( v13 > v14 )
      v9 = v13 - v14;
    v16 = (char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3);
    v17 = *((_DWORD **)v16 + 18);
    if ( v15 )
    {
      if ( v14 == (*(int (__fastcall **)(_DWORD *, _DWORD, unsigned int))(*v17 + 44))(v17, *(_DWORD *)(a2 + 20), v14)
        && std::__stlp_string_fill<char,std::char_traits<char>>(a1, v17, v9) )
      {
        goto LABEL_6;
      }
    }
    else if ( std::__stlp_string_fill<char,std::char_traits<char>>(a1, *((_DWORD **)v16 + 18), v9)
           && v14 == (*(int (__fastcall **)(_DWORD *, _DWORD, unsigned int))(*v17 + 44))(v17, *(_DWORD *)(a2 + 20), v14) )
    {
      goto LABEL_6;
    }
  }
  v4 = (std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3));
  M_iostate = v4->_M_iostate;
  v6 = M_iostate | 4;
  if ( !v4[1]._M_iostate )
    v6 = M_iostate | 5;
  M_exception_mask = v4->_M_exception_mask;
  v4->_M_iostate = v6;
  if ( (v6 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v4);
LABEL_6:
  if ( (*(_DWORD *)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(a1);
  return a1;
}


// ===== 41c4a0 HUDMinimap::RenderMap(gameswf::render_state &,void *) =====
void __fastcall HUDMinimap::RenderMap(int a1, _BYTE *a2)
{
  int Switch; // r8
  int CurrentLevel; // r0
  int v5; // r10
  int v6; // r3
  int v7; // r7
  gameswf::character **Char; // r0
  RenderFX *v9; // r0
  int v10; // r9
  _DWORD *v11; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v13; // r1
  float InvPixelScaleX; // r11
  GameSWFUtils *v15; // r0
  gameswf::root *v16; // r1
  int v17; // r3
  float InvPixelScaleY; // [sp+Ch] [bp-58h]
  _DWORD v19[4]; // [sp+10h] [bp-54h] BYREF
  _DWORD v20[4]; // [sp+20h] [bp-44h] BYREF
  float v21[4]; // [sp+30h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+44h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v22, "IsDisablingMinimap");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  if ( !Switch )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v5 = CurrentLevel;
    if ( CurrentLevel )
    {
      if ( *(_DWORD *)(CurrentLevel + 304) == 38 )
      {
        if ( a2 )
        {
          v6 = *((_DWORD *)a2 + 56);
          if ( v6 )
          {
            if ( a2[196] && !*(_BYTE *)(v6 + 132) )
            {
              v7 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
              if ( v7 )
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v7 + 72))(v7, 1);
              (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 140))(a2);
              Char = (gameswf::character **)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(a2 + 412));
              GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v21, Char);
              v9 = *((RenderFX **)a2 + 1);
              v10 = *(_DWORD *)(dword_99F73C + 16);
              v11 = *(_DWORD **)(*(_DWORD *)(v10 + 204) - 4);
              v20[0] = v11[5];
              v20[1] = v11[6];
              v20[2] = v11[7];
              v20[3] = v11[8];
              Root = (GameSWFUtils *)RenderFX::GetRoot(v9);
              InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX(Root, v13);
              v15 = (GameSWFUtils *)RenderFX::GetRoot(*((RenderFX **)a2 + 1));
              InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY(v15, v16);
              v19[3] = (int)(float)(v21[3] / InvPixelScaleY);
              v19[0] = (int)(float)(v21[0] / InvPixelScaleX);
              v19[1] = (int)(float)(v21[2] / InvPixelScaleY);
              v19[2] = (int)(float)(v21[1] / InvPixelScaleX);
              (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v10 + 204) - 4) + 12))(
                *(_DWORD *)(*(_DWORD *)(v10 + 204) - 4),
                v19);
              *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 592) = 0;
              (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)a2 + 100))(a2, v7);
              (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)a2 + 96))(a2, v5);
              if ( v7 )
              {
                v17 = *(_DWORD *)(dword_99F73C + 28);
                if ( *(_DWORD *)(v17 + 228) )
                {
                  (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v17 + 60))(*(_DWORD *)(dword_99F73C + 28), v7);
                  v17 = *(_DWORD *)(dword_99F73C + 28);
                }
                *(_BYTE *)(v17 + 592) = 1;
                (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v10 + 204) - 4) + 12))(
                  *(_DWORD *)(*(_DWORD *)(v10 + 204) - 4),
                  v20);
                (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 148))(a2);
                (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v7 + 72))(v7, 0);
              }
              else
              {
                *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 592) = 1;
                (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v10 + 204) - 4) + 12))(
                  *(_DWORD *)(*(_DWORD *)(v10 + 204) - 4),
                  v20);
                (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 148))(a2);
              }
            }
          }
        }
      }
    }
  }
}


// ===== 41c7b0 HUDMinimap::Update(void) =====
int __fastcall HUDMinimap::Update(HUDMinimap *this)
{
  int Switch; // r10
  int result; // r0
  int v4; // r3
  int v5; // r8
  gameswf::character **Char; // r0
  int *v7; // r10
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  _DWORD v9[4]; // [sp+8h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+1Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "IsDisablingMinimap");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  if ( Switch )
  {
    MenuBase::Update(this);
    return (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 108))(this);
  }
  else
  {
    MenuBase::Update(this);
    result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( result && *(_DWORD *)(result + 304) == 38 && *((_DWORD *)this + 56) && *((_BYTE *)this + 196) )
    {
      v4 = *(_DWORD *)this;
      *((_DWORD *)this + 50) = *(_DWORD *)(dword_99F76C + 1732);
      (*(void (__fastcall **)(HUDMinimap *))(v4 + 108))(this);
      v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
      if ( v5 )
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 72))(v5, 0);
      (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 140))(this);
      Char = (gameswf::character **)DebugCachedCharacter::GetChar((HUDMinimap *)((char *)this + 412));
      GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v9, Char);
      (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 80))(this);
      (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 88))(this);
      v7 = *((int **)this + 56);
      if ( v7 )
      {
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
        CameraTarget::SetTarget(v7, LocalPlayer->character_660, 0);
        (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 56) + 16))(*((_DWORD *)this + 56));
      }
      if ( v5 )
        (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(dword_99F73C + 28) + 60))(
          *(_DWORD *)(dword_99F73C + 28),
          v5);
      (*(void (__fastcall **)(HUDMinimap *, HUDMinimap *, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 116))(
        this,
        this,
        v9[0],
        v9[1],
        v9[2],
        v9[3]);
      return (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 148))(this);
    }
  }
  return result;
}


// ===== 41c9e4 HUDMinimap::Show(void) =====
int __fastcall HUDMinimap::Show(HUDMinimap *this)
{
  int Switch; // r7
  MenuFX *v3; // r10
  gameswf::character *CurrentMenuContext; // r0
  int v5; // r3
  int *v6; // r10
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int result; // r0
  int v9; // r7
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "IsDisablingMinimap");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  if ( Switch )
    return MenuBase::Show(this);
  (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 120))(this);
  v3 = *((MenuFX **)this + 1);
  CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(this);
  DebugCachedCharacter::RefreshCache((HUDMinimap *)((char *)this + 412), "RenderMap", v3, CurrentMenuContext);
  v5 = *(_DWORD *)this;
  *((_DWORD *)this + 50) = *(_DWORD *)(dword_99F76C + 1732);
  (*(void (__fastcall **)(HUDMinimap *))(v5 + 108))(this);
  (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 132))(this);
  v6 = *((int **)this + 56);
  if ( v6 )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    CameraTarget::SetTarget(v6, LocalPlayer->character_660, 0);
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 56) + 16))(*((_DWORD *)this + 56));
  }
  result = MenuBase::Show(this);
  v9 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
  if ( v9 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v9 + 72))(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652), 0);
    *((_BYTE *)this + 196) = 1;
    (*(void (__fastcall **)(HUDMinimap *, int))(*(_DWORD *)this + 100))(this, v9);
    (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 80))(this);
    (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 84))(this);
    (*(void (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 88))(this);
    (*(void (__fastcall **)(HUDMinimap *, HUDMinimap *))(*(_DWORD *)this + 104))(this, this);
    return (*(int (__fastcall **)(HUDMinimap *))(*(_DWORD *)this + 152))(this);
  }
  return result;
}


// ===== 41cbe0 HUDMinimap::HUDMinimap(char const*) =====
void __fastcall HUDMinimap::HUDMinimap(HUDMinimap *this, const char *a2)
{
  _DWORD *v3; // r3

  MenuBase::MenuBase(this, a2);
  *((_DWORD *)this + 56) = 0;
  *(_DWORD *)this = off_967C50;
  *((_DWORD *)this + 58) = (char *)this + 228;
  *((_BYTE *)this + 196) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 57) = (char *)this + 228;
  DebugCachedCharacter::DebugCachedCharacter((HUDMinimap *)((char *)this + 412));
  v3 = (_DWORD *)((char *)this + 460);
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 508) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 604) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 700) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 844) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 988) );
}


// ===== 41cce0 HUDMinimap::GetInstance(void) =====
void *__fastcall HUDMinimap::GetInstance(HUDMinimap *this)
{
  if ( (`guard variable for'HUDMinimap::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'HUDMinimap::GetInstance(void)::mdt) )
  {
    HUDMinimap::HUDMinimap((HUDMinimap *)&HUDMinimap::GetInstance(void)::mdt, "menu_miniMap");
    _cxa_guard_release(&`guard variable for'HUDMinimap::GetInstance(void)::mdt);
    _aeabi_atexit((int)&HUDMinimap::GetInstance(void)::mdt, (int)HUDMinimap::~HUDMinimap, (int)&_dso_handle);
  }
  return &HUDMinimap::GetInstance(void)::mdt;
}


// ===== 41cd74 HUDMinimap::HUDMinimap(char const*) =====
void __fastcall HUDMinimap::HUDMinimap(HUDMinimap *this, const char *a2)
{
  _DWORD *v3; // r3

  MenuBase::MenuBase(this, a2);
  *((_DWORD *)this + 56) = 0;
  *(_DWORD *)this = off_967C50;
  *((_DWORD *)this + 58) = (char *)this + 228;
  *((_BYTE *)this + 196) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 57) = (char *)this + 228;
  DebugCachedCharacter::DebugCachedCharacter((HUDMinimap *)((char *)this + 412));
  v3 = (_DWORD *)((char *)this + 460);
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 508) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 604) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 700) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 844) );
  do
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3 += 3;
  }
  while ( v3 != (_DWORD *)((char *)this + 988) );
}


// ===== 41ce74 std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(int) [clone] =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(int a1)
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
  *(_DWORD *)a1 = off_964104;
  *(int *)((char *)&dword_48 + a1) = (int)off_964118;
  v3 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 4) = 0;
  std::ios::init(a1 + *(_DWORD *)(v3 - 12), 0, (int)off_964118, v3);
  *(_DWORD *)(a1 + 8) = off_96412C;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_964140;
  std::ios::init(a1 + 8 + *(_DWORD *)(*(_DWORD *)(a1 + 8) - 12), 0, *(_DWORD *)(a1 + 8), a1 + 8);
  *(_DWORD *)a1 = off_9640C4;
  *(int *)((char *)&dword_48 + a1) = (int)off_9640EC;
  v4 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 8) = off_9640D8;
  std::ios::init(a1 + *(_DWORD *)(v4 - 12), 0, (int)off_9640D8, v4);
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_964084;
  *(_DWORD *)(a1 + 72) = off_9640AC;
  *(_DWORD *)(a1 + 8) = off_964098;
  *(_DWORD *)(a1 + 12) = off_95B938;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  __ZNSt6localeC1Ev_veneer((std::locale *const)(a1 + 40));
  *(_DWORD *)(a1 + 44) = 24;
  *(_DWORD *)(a1 + 12) = off_95B8F0;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 48), 0x10u);
  v5 = *(_BYTE **)(a1 + 64);
  *v5 = 0;
  std::ios::init(v1, a1 + 12, v6, (int)v5);
  return a1;
}


// ===== 41cff4 HUDMinimap::SetIconFrames(HUDMinimap*) =====
void __fastcall HUDMinimap::SetIconFrames(HUDMinimap *this, RenderFX **a2)
{
  int v2; // r3
  HUDMinimap *v5; // r8
  HUDMinimap *v6; // r11
  HUDMinimap *v7; // r6
  std::ostream *v8; // r0
  int v9; // r0
  HUDMinimap *v10; // r9
  HUDMinimap *v11; // r6
  std::ostream *v12; // r0
  int v13; // r0
  HUDMinimap *v14; // r6
  std::ostream *v15; // r0
  int v16; // r0
  HUDMinimap *v17; // r9
  HUDMinimap *v18; // r6
  std::ostream *v19; // r0
  int v20; // r0
  std::ostream *v21; // r0
  int v22; // r0
  _DWORD v23[2]; // [sp+24h] [bp-378h] BYREF
  std::ostream v24; // [sp+2Ch] [bp-370h] BYREF
  _DWORD v25[2]; // [sp+BCh] [bp-2E0h] BYREF
  std::ostream v26; // [sp+C4h] [bp-2D8h] BYREF
  _DWORD v27[2]; // [sp+154h] [bp-248h] BYREF
  std::ostream v28; // [sp+15Ch] [bp-240h] BYREF
  _DWORD v29[2]; // [sp+1ECh] [bp-1B0h] BYREF
  std::ostream v30; // [sp+1F4h] [bp-1A8h] BYREF
  _DWORD v31[2]; // [sp+284h] [bp-118h] BYREF
  std::ostream v32; // [sp+28Ch] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+31Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v34; // [sp+334h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v35; // [sp+34Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v36; // [sp+364h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v37; // [sp+37Ch] [bp-20h] BYREF
  int v38; // [sp+394h] [bp-8h]

  v2 = _stack_chk_guard;
  *((_DWORD *)this + 55) = 5;
  v38 = v2;
  v5 = this;
  v6 = (HUDMinimap *)((char *)this + 16);
  v7 = this;
  do
  {
    std::string::string((std::string *)&v37, "MapIconsStatic");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream((int)v31);
    v8 = std::operator<<<char>(&v32, (int)&v37);
    ++*((_DWORD *)this + 55);
    std::priv::__put_num<char,std::char_traits<char>,long>(v8);
    std::operator>><char>(v31, (std::string *)&v37);
    v9 = RenderFX::Find(a2[1], v37._M_start_of_storage._M_data);
    *((_DWORD *)v7 + 59) = v9;
    if ( v9 )
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v9 + 332))(v9, 3);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v31);
    v7 = (HUDMinimap *)((char *)v7 + 4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v37);
  }
  while ( v7 != v6 );
  v10 = (HUDMinimap *)((char *)this + 48);
  v11 = this;
  do
  {
    std::string::string((std::string *)&v36, "MapIconsStatic");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream((int)v29);
    v12 = std::operator<<<char>(&v30, (int)&v36);
    ++*((_DWORD *)this + 55);
    std::priv::__put_num<char,std::char_traits<char>,long>(v12);
    std::operator>><char>(v29, (std::string *)&v36);
    v13 = RenderFX::Find(a2[1], v36._M_start_of_storage._M_data);
    *((_DWORD *)v11 + 91) = v13;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v13 + 332))(v13, 4);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v29);
    v11 = (HUDMinimap *)((char *)v11 + 4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v36);
  }
  while ( v11 != v10 );
  v14 = this;
  do
  {
    std::string::string((std::string *)&v35, "MapIconsStatic");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream((int)v27);
    v15 = std::operator<<<char>(&v28, (int)&v35);
    ++*((_DWORD *)this + 55);
    std::priv::__put_num<char,std::char_traits<char>,long>(v15);
    std::operator>><char>(v27, (std::string *)&v35);
    v16 = RenderFX::Find(a2[1], v35._M_start_of_storage._M_data);
    *((_DWORD *)v14 + 79) = v16;
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v16 + 332))(v16, 0);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v27);
    v14 = (HUDMinimap *)((char *)v14 + 4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v35);
  }
  while ( v10 != v14 );
  v17 = (HUDMinimap *)((char *)this + 32);
  v18 = this;
  do
  {
    std::string::string((std::string *)&v34, "MapIconsStatic");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream((int)v25);
    v19 = std::operator<<<char>(&v26, (int)&v34);
    ++*((_DWORD *)this + 55);
    std::priv::__put_num<char,std::char_traits<char>,long>(v19);
    std::operator>><char>(v25, (std::string *)&v34);
    v20 = RenderFX::Find(a2[1], v34._M_start_of_storage._M_data);
    *((_DWORD *)v18 + 63) = v20;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 332))(v20, 1);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v25);
    v18 = (HUDMinimap *)((char *)v18 + 4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
  }
  while ( v18 != v17 );
  do
  {
    std::string::string((std::string *)&v33, "MapIconsStatic");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream((int)v23);
    v21 = std::operator<<<char>(&v24, (int)&v33);
    ++*((_DWORD *)this + 55);
    std::priv::__put_num<char,std::char_traits<char>,long>(v21);
    std::operator>><char>(v23, (std::string *)&v33);
    v22 = RenderFX::Find(a2[1], v33._M_start_of_storage._M_data);
    *((_DWORD *)v5 + 71) = v22;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 332))(v22, 2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v23);
    v5 = (HUDMinimap *)((char *)v5 + 4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
  }
  while ( v17 != v5 );
}


// ===== 41d384 HUDMinimap::SetRoomVisibility(glitch::scene::ISceneNode *) =====
void __fastcall HUDMinimap::SetRoomVisibility(HUDMinimap *this, glitch::scene::ISceneNode *a2)
{
  HUDMinimap *v3; // r8
  HUDMinimap *v4; // r9
  int *v5; // r4
  int v6; // r6
  HUDMinimap **i; // r0
  HUDMinimap *v8; // r10
  HUDMinimap **v9; // r0
  HUDMinimap ***v10; // r3
  glitch::scene::ISceneNode *v11; // r4
  _DWORD *v12; // r6
  int IsInsideVisitedRooms; // r0
  int Switch; // r10
  float v16[3]; // [sp+1Ch] [bp-40h] BYREF
  _DWORD v17[3]; // [sp+28h] [bp-34h] BYREF
  size_t v18; // [sp+34h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+3Ch] [bp-20h] BYREF

  if ( a2 )
  {
    v3 = (HUDMinimap *)((char *)this + 228);
    v4 = *((HUDMinimap **)this + 57);
    v6 = dword_99F764 + 36;
    v5 = *(int **)(dword_99F764 + 36);
    if ( v4 != (HUDMinimap *)((char *)this + 228) )
    {
      for ( i = *((HUDMinimap ***)this + 57); ; i = (HUDMinimap **)v8 )
      {
        v8 = *i;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(i, 0xCu);
        if ( v8 == v3 )
          break;
      }
      v4 = v3;
    }
    *((_DWORD *)this + 57) = v4;
    *((_DWORD *)this + 58) = v4;
    while ( (int *)v6 != v5 )
    {
      if ( RoomZone::HasBeenVisited((RoomZone *)v5[2])
        || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
            std::string::string((std::string *)&v19, "isUsingMapHack"),
            Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v19),
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19),
            Switch) )
      {
        v18 = 12;
        v9 = (HUDMinimap **)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v18);
        v9[2] = (HUDMinimap *)v5[2];
        v10 = *((HUDMinimap ****)this + 58);
        *v9 = v4;
        v9[1] = (HUDMinimap *)v10;
        *v10 = v9;
        *((_DWORD *)this + 58) = v9;
        v5 = (int *)*v5;
      }
      else
      {
        v5 = (int *)*v5;
      }
    }
    v11 = *((glitch::scene::ISceneNode **)a2 + 61);
    while ( (glitch::scene::ISceneNode *)((char *)a2 + 244) != v11 )
    {
      if ( v11 )
        v12 = (_DWORD *)((char *)v11 - 4);
      else
        v12 = nullptr;
      v11 = *(glitch::scene::ISceneNode **)v11;
      glitch::scene::ISceneNode::getAbsolutePosition(v17, v12);
      v16[0] = *(float *)v17;
      v16[1] = *(float *)&v17[1];
      v16[2] = *(float *)&v17[2];
      IsInsideVisitedRooms = HUDMinimap::IsInsideVisitedRooms((int)this, v16);
      (*(void (__fastcall **)(_DWORD *, int))(*v12 + 72))(v12, IsInsideVisitedRooms);
    }
  }
}


// ===== 41d56c InfoHUDManager::Draw(void) =====
void __fastcall InfoHUDManager::Draw(InfoHUDManager *this)
{
  ;
}


// ===== 41d570 InfoHUDManager::HideLocalDeathTimer(void) =====
int __fastcall InfoHUDManager::HideLocalDeathTimer(RenderFX **this)
{
  int SavedOption; // r0
  int v3; // r0
  DebugCachedCharacter *v4; // r5
  DebugCachedCharacter *v5; // r0
  RenderFX *v6; // r7
  gameswf::character *Char; // r0
  int result; // r0
  char v9[20]; // [sp+0h] [bp-1Ch] BYREF

  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
  sprintf(v9, "_root.menu_HUD_%d", SavedOption);
  v3 = RenderFX::Find(*(this + 351), v9);
  v4 = (DebugCachedCharacter *)(this + 291);
  if ( !byte_9A600C )
    *(_BYTE *)(v3 + 155) = 1;
  v5 = (DebugCachedCharacter *)(this + 291);
  v6 = *(this + 351);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar(v5);
  RenderFX::GotoFrame(v6, Char, "Hide", 1);
  result = DebugCachedCharacter::GetChar(v4);
  *(_BYTE *)(result + 155) = 0;
  return result;
}


// ===== 41d658 InfoHUDManager::ShowLocalDeathTimer(void) =====
int __fastcall InfoHUDManager::ShowLocalDeathTimer(RenderFX **this)
{
  int SavedOption; // r0
  DebugCachedCharacter *v3; // r0
  RenderFX *v4; // r5
  gameswf::character *Char; // r0
  char v7[20]; // [sp+0h] [bp-1Ch] BYREF

  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
  sprintf(v7, "_root.menu_HUD_%d", SavedOption);
  *(_BYTE *)(RenderFX::Find(*(this + 351), v7) + 155) = 0;
  *(_BYTE *)(DebugCachedCharacter::GetChar((DebugCachedCharacter *)(this + 291)) + 155) = 1;
  v3 = (DebugCachedCharacter *)(this + 291);
  v4 = *(this + 351);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar(v3);
  return RenderFX::GotoFrame(v4, Char, "Show", 1);
}


// ===== 41d728 InfoHUDManager::applyOneTimeValues(void) =====
Character *__fastcall InfoHUDManager::applyOneTimeValues(InfoHUDManager *this)
{
  int Char; // r6
  Character *result; // r0
  int v4; // r5
  DebugCachedCharacter *v5; // r0
  RenderFX *v6; // r4
  gameswf::character *v7; // r0

  Char = DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 876));
  *(_BYTE *)(Char + 155) = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "DPad") != 0;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)->character_660;
  if ( result )
  {
    switch ( Character::SG_GetPlayerClass(result) )
    {
      case 290:
      case 291:
      case 292:
        v4 = 2;
        break;
      case 325:
      case 326:
      case 327:
        v4 = 1;
        break;
      default:
        v4 = 0;
        break;
    }
    v5 = (InfoHUDManager *)((char *)this + 1116);
    v6 = *((RenderFX **)this + 351);
    v7 = (gameswf::character *)DebugCachedCharacter::GetChar(v5);
    return (Character *)RenderFX::GotoFrame(v6, v7, v4, 0);
  }
  return result;
}


// ===== 41d880 InfoHUDManager::initCachedChars(void) =====
void __fastcall InfoHUDManager::initCachedChars(RenderFX **this)
{
  int SavedOption; // r7
  gameswf::character *v3; // r5
  int v4; // r7
  int v5; // r6
  char s[64]; // [sp+8h] [bp-5Ch] BYREF
  char v7[20]; // [sp+48h] [bp-1Ch] BYREF

  if ( *(this + 351) )
  {
    SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
    sprintf(v7, "_root.menu_HUD_%d", SavedOption);
    v3 = (gameswf::character *)RenderFX::Find(*(this + 351), v7);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 3),
      "HUDelements.HealthBars.player.bar_hp",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 15),
      "HUDelements.HealthBars.btn_potion.DistressGlow",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 27), "_root.HurtCorners", *(this + 351), nullptr);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 39),
      "HUDelements.HealthBars.player.bar_mp",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 51),
      "HUDelements.HealthBars.player.bar_xp",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 63),
      "HUDelements.HealthBars.btn_potion.cnt.value",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 75),
      "HUDelements.controls.controls.btn_spell.CoolDown",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 87),
      "HUDelements.controls.controls.btn_spell.Grey",
      *(this + 351),
      v3);
    if ( SavedOption <= 1 )
    {
      v4 = 0;
      do
      {
        v5 = 48 * v4++;
        sprintf(s, "HUDelements.controls.controls.btn_skill%d.CoolDown", v4);
        DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)((char *)this + v5 + 540), s, *(this + 351), v3);
        sprintf(s, "HUDelements.controls.controls.btn_skill%d.Grey", v4);
        DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)((char *)this + v5 + 684), s, *(this + 351), v3);
      }
      while ( v4 != 3 );
    }
    else
    {
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 99),
        "HUDelements.controls.controls.list.btn_0",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 135),
        "HUDelements.controls.controls.list.btn_0.CoolDown",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 171),
        "HUDelements.controls.controls.list.btn_0.Grey",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 111),
        "HUDelements.controls.controls.list.btn_pre0",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 147),
        "HUDelements.controls.controls.list.btn_pre0.CoolDown",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 183),
        "HUDelements.controls.controls.list.btn_pre0.Grey",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 123),
        "HUDelements.controls.controls.list.btn_post0",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 159),
        "HUDelements.controls.controls.list.btn_post0.CoolDown",
        *(this + 351),
        v3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)(this + 195),
        "HUDelements.controls.controls.list.btn_post0.Grey",
        *(this + 351),
        v3);
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 207),
      "HUDelements.btn_charactermenu.anim_levelup",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 219),
      "HUDelements.controls.controls.Joystick",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 231),
      "HUDelements.HealthBars.enemy",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 243),
      "HUDelements.HealthBars.enemy.enemy_name.text",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 255),
      "HUDelements.HealthBars.enemy.enemy_level.value",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 267),
      "HUDelements.HealthBars.enemy.HpBar.bar_hp",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 315),
      "HUDelements.HealthBars.Ally0",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 327),
      "HUDelements.HealthBars.Ally1",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 339),
      "HUDelements.HealthBars.Ally2",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 279),
      "HUDelements.btn_charactermenu.btimg.HudChar",
      *(this + 351),
      v3);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 291), "_root.DeathTimer", *(this + 351), nullptr);
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)(this + 303),
      "_root.DeathTimer.DeathNumberTimeMc.TimerNumber_txt",
      *(this + 351),
      nullptr);
    *((_BYTE *)this + 4) = 1;
  }
}


// ===== 41dd10 `global constructor keyed to'.._.._sources_Game_Menus_InfoHUDManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_InfoHUDManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A42C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A42BC = 1056964608;
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


// ===== 41ddec gameswf::tu_string::tu_string(char const*) [clone] =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const char *a2)
{
  char *v3; // r0
  unsigned int v5; // r3

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  gameswf::tu_string::resize(this, 6);
  if ( *(char *)this == -1 )
    v3 = *((char **)this + 3);
  else
    v3 = (char *)this + 1;
  strcpy(v3, "SlotId");
  v5 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 4) = v5;
  *((_BYTE *)this + 19) = HIBYTE(v5) & 0xFE;
  return this;
}


// ===== 41de54 InfoHUDManager::SlowUpdate(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall InfoHUDManager::SlowUpdate(InfoHUDManager *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r8
  int i; // r7
  unsigned int SkillInSlot; // r0
  int Char; // r7
  int k; // r4
  int v8; // r0
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r10
  const char *v10; // r1
  double v11; // r0
  unsigned int v12; // r0
  int j; // r4
  int v14; // [sp+4h] [bp-38h]
  unsigned int v15; // [sp+8h] [bp-34h]
  _BYTE v16[16]; // [sp+10h] [bp-2Ch] BYREF
  _BYTE v17[8]; // [sp+20h] [bp-1Ch] BYREF
  void *p; // [sp+2Ch] [bp-10h]

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  character_660 = result->character_660;
  if ( character_660 )
  {
    for ( i = 0; i != 3; ++i )
    {
      SkillInSlot = Character::SG_GetSkillInSlot(character_660, i);
      v16[i + 12] = 0;
      if ( SkillInSlot != -1 )
        v16[i + 12] = CharAI::AI_IsSkillUsable((Character *)((char *)character_660 + 968), SkillInSlot);
    }
    Char = DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 348));
    *(_BYTE *)(Char + 155) = CharAI::AI_IsSpellUsable((Character *)((char *)character_660 + 968)) ^ 1;
    if ( Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle") <= 1 )
    {
      for ( j = 0; j != 3; ++j )
      {
        result = (DH2_PlayerInfoCharacterPrefix *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this
                                                                                                 + 48 * j
                                                                                                 + 684));
        if ( result )
        {
          result = (DH2_PlayerInfoCharacterPrefix *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * j + 684));
          result->unknown_000[155] = v16[j + 12] ^ 1;
        }
      }
    }
    else
    {
      for ( k = 0; k != 3; ++k )
      {
        v16[0] = 0;
        v16[1] = 0;
        v8 = DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * k + 396));
        v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 32);
        v14 = v8;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v17, v10);
        v9(v14, v17, v16);
        if ( v17[0] == -1 )
          gameswf::free_internal(p);
        LODWORD(v11) = gameswf::as_value::to_number((gameswf::as_value *)v16);
        v12 = (int)v11;
        if ( v12 > 2 )
          v12 = 0;
        v15 = v12;
        if ( DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * k + 684)) )
          *(_BYTE *)(DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * k + 684)) + 155) = v16[v15 + 12] ^ 1;
        result = (DH2_PlayerInfoCharacterPrefix *)gameswf::as_value::drop_refs((gameswf::as_value *)v16);
      }
    }
  }
  return result;
}


// ===== 41e064 InfoHUDManager::FastUpdate(void) =====
int __fastcall InfoHUDManager::FastUpdate(InfoHUDManager *this)
{
  int result; // r0
  int v3; // r6
  int NumPotions; // r0
  RenderFX *v5; // r7
  gameswf::character *Char; // r0
  int v7; // r0
  int v8; // r7
  int v9; // r5
  int v10; // r10
  RenderFX *v11; // r9
  gameswf::character *v12; // r0
  RenderFX *v13; // r9
  gameswf::character *v14; // r0
  RenderFX *v15; // r7
  gameswf::character *v16; // r0
  RenderFX *v17; // r7
  gameswf::character *v18; // r0
  RenderFX *v19; // r7
  gameswf::character *v20; // r0
  int v21; // r5
  int v22; // r7
  int v23; // r9
  int SkillInSlot; // r0
  CharAISkillScript *v25; // r0
  int v26; // r5
  int v27; // r10
  void (__fastcall *v28)(int, _BYTE *, char *); // r6
  const char *v29; // r1
  double v30; // r0
  unsigned int v31; // r0
  unsigned int v32; // r3
  RenderFX *v33; // r6
  gameswf::character *v34; // r1
  RenderFX *v35; // r5
  gameswf::character *v36; // r7
  float v37; // r0
  _BOOL4 v38; // r7
  Character *TargetAsCharacter; // r0
  int v40; // r5
  const char *String; // r9
  RenderFX *v42; // r6
  gameswf::character *v43; // r0
  int Switch; // r6
  RenderFX *v45; // r6
  gameswf::character *v46; // r0
  RenderFX *v47; // r6
  gameswf::character *v48; // r0
  float v49; // r6
  DebugCachedCharacter *v50; // r0
  RenderFX *v51; // r4
  gameswf::character *v52; // r5
  int v53; // r2
  int v54; // r3
  RenderFX *v55; // r10
  gameswf::character *v56; // r0
  RenderFX *v57; // r10
  gameswf::character *v58; // r0
  int LocalPlayer; // r0
  RenderFX *v60; // r7
  gameswf::character *v61; // r0
  int v62; // r10
  int v63; // r6
  char v64; // r3
  char *v65; // r12
  double v66; // r0
  unsigned int v67; // r3
  RenderFX *v68; // r6
  gameswf::character *FlashRoot; // r0
  gameswf::as_value *v70; // r6
  int Player; // r8
  Character *v72; // r0
  float v73; // r0
  int v74; // r6
  int v75; // r1
  int v76; // r3
  bool v77; // nf
  int v78; // r3
  int v79; // r2
  float v80; // r0
  int v81; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v83; // r1
  float v84; // r8
  GameSWFUtils *v85; // r0
  gameswf::root *v86; // r1
  int i; // r7
  RenderFX *v88; // r10
  gameswf::character *v89; // r0
  int v90; // r2
  int Level; // r2
  RenderFX *v92; // r7
  gameswf::character *v93; // r0
  DebugCachedCharacter *v94; // r0
  RenderFX *v95; // r4
  gameswf::character *v96; // r0
  int v97; // [sp+0h] [bp-18Ch]
  char *v98; // [sp+4h] [bp-188h]
  unsigned int v99; // [sp+8h] [bp-184h]
  char *v100; // [sp+8h] [bp-184h]
  float v101; // [sp+8h] [bp-184h]
  int v102; // [sp+Ch] [bp-180h]
  int v103; // [sp+10h] [bp-17Ch]
  int v104; // [sp+14h] [bp-178h]
  int v105; // [sp+1Ch] [bp-170h]
  int v106; // [sp+20h] [bp-16Ch]
  int NumPlayers; // [sp+28h] [bp-164h]
  gameswf::character *v108; // [sp+2Ch] [bp-160h]
  int v109; // [sp+3Ch] [bp-150h]
  _BYTE v110[12]; // [sp+44h] [bp-148h] BYREF
  _BYTE v111[16]; // [sp+50h] [bp-13Ch] BYREF
  double v112; // [sp+60h] [bp-12Ch]
  char v113; // [sp+68h] [bp-124h]
  char v114; // [sp+69h] [bp-123h]
  unsigned __int64 v115; // [sp+6Ch] [bp-120h]
  char v116; // [sp+74h] [bp-118h]
  char v117; // [sp+75h] [bp-117h]
  double v118; // [sp+78h] [bp-114h]
  char v119; // [sp+80h] [bp-10Ch]
  char v120; // [sp+81h] [bp-10Bh]
  double v121; // [sp+84h] [bp-108h]
  _DWORD v122[3]; // [sp+8Ch] [bp-100h] BYREF
  char v123[4]; // [sp+98h] [bp-F4h] BYREF
  int v124; // [sp+9Ch] [bp-F0h]
  float v125[3]; // [sp+A4h] [bp-E8h]
  double v126; // [sp+B0h] [bp-DCh]
  char v127[32]; // [sp+B8h] [bp-D4h] BYREF
  char s[32]; // [sp+D8h] [bp-B4h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v129; // [sp+F8h] [bp-94h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v130; // [sp+110h] [bp-7Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v131; // [sp+128h] [bp-64h] BYREF
  std::string v132; // [sp+140h] [bp-4Ch] BYREF
  std::string v133; // [sp+158h] [bp-34h] BYREF
  _BYTE v134[8]; // [sp+170h] [bp-1Ch] BYREF
  void *p; // [sp+17Ch] [bp-10h]
  std::string v136; // 0:kr00_24.24

  v102 = 14324;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  v3 = *(_DWORD *)(result + 1632);
  if ( !v3 )
    return result;
  NumPotions = ItemInventory::GetNumPotions((ItemInventory *)(v3 + 892));
  sprintf(s, "%d", NumPotions);
  v5 = *((RenderFX **)this + 351);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 252));
  RenderFX::SetText(v5, Char, s, 0);
  v8 = 100 * *(_DWORD *)(v3 + 4252) / *(_DWORD *)(v3 + 4260) - 1;
  v7 = 100 * *(_DWORD *)(v3 + 4232) / *(_DWORD *)(v3 + 4240);
  v9 = (v7 - 1) & ~((v7 - 1) >> 31);
  if ( 100 * *(_DWORD *)(v3 + 4220) / *(_DWORD *)(v3 + 4224) >= 99 )
    v10 = 99;
  else
    v10 = 100 * *(_DWORD *)(v3 + 4220) / *(_DWORD *)(v3 + 4224);
  v11 = *((RenderFX **)this + 351);
  v12 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 12));
  if ( v9 >= 99 )
    v9 = 99;
  RenderFX::GotoFrame(v11, v12, v9, 0);
  v13 = *((RenderFX **)this + 351);
  v14 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 156));
  if ( v8 >= 99 )
    v8 = 99;
  RenderFX::GotoFrame(v13, v14, v8, 0);
  v15 = *((RenderFX **)this + 351);
  v16 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 204));
  RenderFX::GotoFrame(v15, v16, v10, 0);
  v17 = *((RenderFX **)this + 351);
  v18 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 60));
  RenderFX::GotoFrame(v17, v18, v9, 0);
  v19 = *((RenderFX **)this + 351);
  v20 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 108));
  RenderFX::GotoFrame(v19, v20, v9, 0);
  v21 = DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 828));
  v22 = 0;
  *(_BYTE *)(v21 + 155) = CharProperties::PROPS_GetInt((CharProperties *)(v3 + 1376), 148, 0) != 0;
  v23 = 0;
  do
  {
    SkillInSlot = Character::SG_GetSkillInSlot((Character *)v3, v23);
    v125[v22] = 0.0;
    if ( SkillInSlot != -1 )
    {
      v25 = *(CharAISkillScript **)(*(_DWORD *)(v3 + 1148) + 4 * SkillInSlot);
      if ( v25 )
        LODWORD(v125[v22]) = CharAISkillScript::GetCooldown(v25);
    }
    ++v22;
    ++v23;
  }
  while ( v22 != 3 );
  if ( (int)Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle") <= 1 )
  {
    for ( i = 0; i != 3; ++i )
    {
      v88 = *((RenderFX **)this + 351);
      v89 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * i + 540));
      v90 = (int)(float)(v125[i] * 100.0) - 1;
      RenderFX::GotoFrame(v88, v89, v90 & ~(v90 >> 31), 0);
    }
  }
  else
  {
    v26 = 0;
    v103 = v3;
    do
    {
      v123[0] = 0;
      v123[1] = 0;
      v27 = DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * v26 + 396));
      v28 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v27 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v134, v29);
      v28(v27, v134, v123);
      if ( v134[0] == -1 )
        gameswf::free_internal(p);
      LODWORD(v30) = gameswf::as_value::to_number((gameswf::as_value *)v123);
      v31 = (int)v30;
      if ( v31 > 2 )
        v32 = 0;
      else
        v32 = v31;
      v33 = *((RenderFX **)this + 351);
      v99 = v32;
      v34 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * v26 + 540));
      RenderFX::GotoFrame(
        v33,
        v34,
        ((int)(float)(v125[v99] * 100.0) - 1) & ~(((int)(float)(v125[v99] * 100.0) - 1) >> 31),
        0);
      ++v26;
      gameswf::as_value::drop_refs((gameswf::as_value *)v123);
    }
    while ( v26 != 3 );
    v3 = v103;
  }
  if ( **(_DWORD **)(v3 + 1148) )
  {
    v35 = *((RenderFX **)this + 351);
    v36 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 300));
    v37 = COERCE_FLOAT(CharAISkillScript::GetCooldown(**(CharAISkillScript ***)(v3 + 1160)));
    RenderFX::GotoFrame(v35, v36, ((int)(float)(v37 * 100.0) - 1) & ~(((int)(float)(v37 * 100.0) - 1) >> 31), 0);
  }
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
    if ( *(int *)(LocalPlayer + 936) >= 0 )
    {
      sprintf(v127, "%d", *(_DWORD *)(LocalPlayer + 936) / 1000);
      v60 = *((RenderFX **)this + 351);
      v61 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1212));
      RenderFX::SetText(v60, v61, v127, 0);
    }
    v62 = 0;
    NumPlayers = PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C);
    v106 = 0;
    v109 = v3;
    while ( 1 )
    {
      v108 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 48 * v62 + 1260));
      v133._M_finish = (char *)&v133;
      v133._M_start_of_storage._M_data = (char *)&v133;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v133, 0x10u);
      *v133._M_finish = 0;
      if ( v106 >= NumPlayers )
        goto LABEL_53;
      Player = PlayerManager::GetPlayer(
                 *(PlayerManager **)((char *)&dword_40 + *(_DWORD *)((char *)&__GLOBAL_OFFSET_TABLE_ + v102)),
                 v106,
                 0);
      if ( !(*(int (**)(void))(*(_DWORD *)Player + 80))() )
        break;
      ++v106;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v133);
LABEL_57:
      if ( v62 > 2 )
      {
        v3 = v109;
        goto LABEL_26;
      }
    }
    v72 = *(Character **)(Player + 1632);
    if ( v72 && *(_BYTE *)(Player + 1253) )
    {
      v104 = *(_DWORD *)(Player + 816);
      v73 = COERCE_FLOAT(Character::GetHPPercent(v72));
      v132._M_finish = (char *)&v132;
      v132._M_start_of_storage._M_data = (char *)&v132;
      v74 = (int)(float)(v73 * 100.0) - 1;
      std::string::_M_range_initialize(&v132, *(const char **)(Player + 740), *(const char **)(Player + 736));
      std::string::_M_assign(&v133, v132._M_start_of_storage._M_data, v132._M_finish);
      if ( v74 >= 99 )
        v74 = 99;
      v63 = v74 & ~(v74 >> 31);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v132);
      v76 = *(_DWORD *)(Player + 936);
      v77 = v76 < 0;
      if ( v76 < 0 )
        v105 = -1;
      else
        v75 = 274877907;
      if ( v76 >= 0 )
        v76 = ((int)((unsigned __int64)(v75 * (__int64)v76) >> 32) >> 6) - (v76 >> 31);
      if ( !v77 )
        v105 = v76;
      v78 = *(_DWORD *)(Player + 1632);
      ++v106;
      v79 = *(_DWORD *)(v78 + 352);
      v80 = *(float *)(v78 + 360);
      v81 = *(_DWORD *)(v78 + 356);
      v122[0] = v79;
      v122[1] = v81;
      *(float *)&v122[2] = v80 + 350.0;
      *(_DWORD *)v123 = 0;
      v124 = 0;
      GetScreenPosFromWorldPos(v122, v123);
      Root = (GameSWFUtils *)RenderFX::GetRoot(*((RenderFX **)this + 351));
      v84 = COERCE_FLOAT(GameSWFUtils::GetInvPixelScaleX(Root, v83));
      v85 = (GameSWFUtils *)RenderFX::GetRoot(*((RenderFX **)this + 351));
      v101 = COERCE_FLOAT(GameSWFUtils::GetInvPixelScaleY(v85, v86));
      RenderFX::SetPosition(
        *((RenderFX **)this + 351),
        v108,
        (int)(float)(v84 * (float)*(int *)v123),
        (int)(float)(v101 * (float)v124));
      v64 = 1;
    }
    else
    {
LABEL_53:
      v63 = 0;
      v104 = 0;
      v64 = 0;
      v105 = -1;
    }
    v131._M_finish = (char *)&v131;
    v65 = *(char **)((char *)&dword_34 + *(_DWORD *)((char *)&__GLOBAL_OFFSET_TABLE_ + v102));
    v110[4] = v64;
    v110[1] = 1;
    v100 = v65;
    v110[0] = 0;
    v131._M_start_of_storage._M_data = (char *)&v131;
    std::string::_M_range_initialize((std::string *)&v131, v133._M_start_of_storage._M_data, v133._M_finish);
    v136._M_buffers._M_end_of_storage = v100;
    *(_DWORD *)&v136._M_buffers._M_static_buf[4] = &v131;
    *(_DWORD *)&v136._M_buffers._M_static_buf[8] = 1;
    *(_DWORD *)&v136._M_buffers._M_static_buf[12] = v97;
    v136._M_finish = v98;
    v136._M_start_of_storage._M_data = v100;
    StringManager::formatForMulti((std::string *)&v130, v136, v102);
    v111[0] = 0;
    v111[1] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v111, v130._M_start_of_storage._M_data);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v130);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v131);
    v111[12] = 0;
    v111[13] = 2;
    v112 = (double)v104;
    v113 = 0;
    v114 = 2;
    v66 = (double)v63;
    v67 = LODWORD(v66);
    LODWORD(v66) = v62++;
    v115 = __PAIR64__(HIDWORD(v66), v67);
    v116 = 0;
    v117 = 2;
    v118 = (double)SLODWORD(v66);
    v120 = 2;
    v119 = 0;
    v126 = (double)v105;
    v68 = *((RenderFX **)this + 351);
    v121 = (double)v105;
    FlashRoot = (gameswf::character *)RenderFX::GetFlashRoot(v68);
    RenderFX::InvokeASCallback(v68, FlashRoot, "AlliesBarDisplay", (const gameswf::as_value *)v110, 6);
    v70 = (gameswf::as_value *)v122;
    do
    {
      v70 = (gameswf::as_value *)((char *)v70 - 12);
      gameswf::as_value::drop_refs(v70);
    }
    while ( v70 != (gameswf::as_value *)v110 );
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v133);
    goto LABEL_57;
  }
LABEL_26:
  v38 = false;
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 52))(v3) )
  {
    v54 = *(_DWORD *)(v3 + 5284);
    if ( v54 )
    {
      if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v54 + 36))(*(_DWORD *)(v3 + 5284))
        && Character::IsMonster(*(Character **)(v3 + 5284)) )
      {
        v38 = true;
      }
    }
  }
  result = CharAI::AI_GetTargetAsCharacter((CharAI *)(v3 + 968));
  if ( result
    && (TargetAsCharacter = (Character *)CharAI::AI_GetTargetAsCharacter((CharAI *)(v3 + 968)),
        (result = Character::IsMonster(TargetAsCharacter)) != 0) )
  {
    result = CharAI::AI_GetTargetAsCharacter((CharAI *)(v3 + 968));
    v40 = result;
  }
  else
  {
    if ( !v38 )
      goto LABEL_79;
    v40 = *(_DWORD *)(v3 + 5284);
  }
  if ( v40 )
  {
    if ( v40 != *(_DWORD *)this )
    {
      *(_DWORD *)this = v40;
      String = (const char *)StringManager::getString(
                               *(StringManager **)((char *)&dword_34
                                                 + *(_DWORD *)((char *)&__GLOBAL_OFFSET_TABLE_ + v102)),
                               *(_DWORD *)(v40 + 4160));
      if ( Character::IsBoss((Character *)v40) || (Level = Character::GetLevel((Character *)v40), Level == -1) )
        strcpy(v123, "??");
      else
        sprintf(v123, "%d", Level);
      *(_BYTE *)(DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 924)) + 155) = 1;
      v42 = *((RenderFX **)this + 351);
      v43 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 924));
      RenderFX::GotoFrame(v42, v43, "Show", 0);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v129._M_finish = (char *)&v129;
      v129._M_start_of_storage._M_data = (char *)&v129;
      std::string::_M_range_initialize((std::string *)&v129, "ShowMonstersNamesAndNetID", "");
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v129);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v129);
      if ( Switch )
      {
        sprintf(v123, "%d", *(_DWORD *)(v40 + 264));
        v45 = *((RenderFX **)this + 351);
        v46 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 972));
        RenderFX::SetText(v45, v46, *(const char **)(v40 + 68), 0);
        v47 = *((RenderFX **)this + 351);
        v48 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1020));
        RenderFX::SetText(v47, v48, v123, 0);
      }
      else
      {
        v55 = *((RenderFX **)this + 351);
        v56 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 972));
        RenderFX::SetText(v55, v56, String, 0);
        v57 = *((RenderFX **)this + 351);
        v58 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1020));
        RenderFX::SetText(v57, v58, v123, 0);
      }
    }
    v49 = COERCE_FLOAT(Character::GetHPPercent((Character *)v40));
    v50 = (InfoHUDManager *)((char *)this + 1068);
    v51 = *((RenderFX **)this + 351);
    v52 = (gameswf::character *)DebugCachedCharacter::GetChar(v50);
    if ( (int)(float)(v49 * 100.0) >= 100 )
      v53 = 100;
    else
      v53 = (int)(float)(v49 * 100.0);
    return RenderFX::GotoFrame(v51, v52, v53 - 1, 0);
  }
LABEL_79:
  if ( *(_DWORD *)this )
  {
    *(_DWORD *)this = 0;
    *(_BYTE *)(DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 924)) + 155) = 0;
    v92 = *((RenderFX **)this + 351);
    v93 = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1068));
    RenderFX::GotoFrame(v92, v93, 0, 0);
    v94 = (InfoHUDManager *)((char *)this + 924);
    v95 = *((RenderFX **)this + 351);
    v96 = (gameswf::character *)DebugCachedCharacter::GetChar(v94);
    return RenderFX::GotoFrame(v95, v96, "Hide", 0);
  }
  return result;
}


// ===== 41ec00 InfoHUDManager::Update(void) =====
int __fastcall InfoHUDManager::Update(InfoHUDManager *this)
{
  int result; // r0
  int v3; // r7
  int v4; // r7

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( (!result || *(_BYTE *)(result + 408)) && *((_DWORD *)this + 351) )
  {
    v3 = *((unsigned __int8 *)this + 4);
    if ( *((_BYTE *)this + 4) )
    {
      v4 = *((_DWORD *)this + 2);
      if ( v4 >= 0 )
      {
LABEL_6:
        *((_DWORD *)this + 2) = v4 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
        return InfoHUDManager::FastUpdate(this);
      }
    }
    else
    {
      InfoHUDManager::initCachedChars((RenderFX **)this);
      InfoHUDManager::applyOneTimeValues(this);
      *(_DWORD *)this = v3;
      v4 = *((_DWORD *)this + 2);
      if ( v4 >= 0 )
        goto LABEL_6;
    }
    *((_DWORD *)this + 2) = 500;
    InfoHUDManager::SlowUpdate(this);
    return InfoHUDManager::FastUpdate(this);
  }
  return result;
}


// ===== 41ecb0 InfoHUDManager::InfoHUDManager(void) =====
void __fastcall InfoHUDManager::InfoHUDManager(InfoHUDManager *this)
{
  *((_DWORD *)this + 2) = -1;
  *((_BYTE *)this + 4) = 0;
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 12));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 60));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 108));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 156));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 204));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 252));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 300));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 348));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 396));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 444));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 492));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 540));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 588));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 636));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 684));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 732));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 780));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 828));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 876));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 924));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 972));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1020));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1068));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1116));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1164));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1212));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1260));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1308));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1356));
  *((_DWORD *)this + 351) = 0;
}


// ===== 41edd0 InfoHUDManager::GetInstance(void) =====
void *__fastcall InfoHUDManager::GetInstance(InfoHUDManager *this)
{
  if ( (`guard variable for'InfoHUDManager::GetInstance(void)::s_singleton & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'InfoHUDManager::GetInstance(void)::s_singleton) )
  {
    InfoHUDManager::InfoHUDManager((InfoHUDManager *)&InfoHUDManager::GetInstance(void)::s_singleton);
    _cxa_guard_release(&`guard variable for'InfoHUDManager::GetInstance(void)::s_singleton);
    _aeabi_atexit(
      (int)&InfoHUDManager::GetInstance(void)::s_singleton,
      (int)InfoHUDManager::~InfoHUDManager,
      (int)&_dso_handle);
  }
  return &InfoHUDManager::GetInstance(void)::s_singleton;
}


// ===== 41ee58 InfoHUDManager::InfoHUDManager(void) =====
void __fastcall InfoHUDManager::InfoHUDManager(InfoHUDManager *this)
{
  *((_DWORD *)this + 2) = -1;
  *((_BYTE *)this + 4) = 0;
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 12));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 60));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 108));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 156));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 204));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 252));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 300));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 348));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 396));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 444));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 492));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 540));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 588));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 636));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 684));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 732));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 780));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 828));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 876));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 924));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 972));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1020));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1068));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1116));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1164));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1212));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1260));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1308));
  DebugCachedCharacter::DebugCachedCharacter((InfoHUDManager *)((char *)this + 1356));
  *((_DWORD *)this + 351) = 0;
}


// ===== 41ef78 InfoHUDManager::Flush(void) =====
void __fastcall InfoHUDManager::Flush(InfoHUDManager *this)
{
  int CurrentLevel; // r0
  int i; // r6
  RenderFX *v4; // r11
  gameswf::character *FlashRoot; // r0
  gameswf::as_value *v6; // r11
  _BYTE *v7; // r0
  RenderFX *v8; // r6
  gameswf::character *Char; // r0
  int v10; // r1
  _BYTE v11[12]; // [sp+10h] [bp-54h] BYREF
  _BYTE v12[16]; // [sp+1Ch] [bp-48h] BYREF
  int v13; // [sp+2Ch] [bp-38h]
  int v14; // [sp+30h] [bp-34h]
  char v15; // [sp+34h] [bp-30h]
  char v16; // [sp+35h] [bp-2Fh]
  __int64 v17; // [sp+38h] [bp-2Ch]
  char v18; // [sp+40h] [bp-24h]
  char v19; // [sp+41h] [bp-23h]
  double v20; // [sp+44h] [bp-20h]
  char v21; // [sp+4Ch] [bp-18h]
  char v22; // [sp+4Dh] [bp-17h]
  unsigned __int64 v23; // [sp+50h] [bp-14h]
  double v24; // [sp+58h] [bp-Ch] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_BYTE *)(CurrentLevel + 324) )
  {
    for ( i = 0; i != 3; ++i )
    {
      v11[1] = 1;
      v11[0] = 0;
      v11[4] = 0;
      v12[0] = 0;
      v12[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v12, "");
      v13 = 0;
      v14 = 0;
      v12[12] = 0;
      v12[13] = 2;
      v15 = 0;
      v16 = 2;
      v17 = 0x4059000000000000LL;
      v18 = 0;
      v19 = 2;
      v24 = (double)i;
      v4 = *((RenderFX **)this + 351);
      v20 = (double)i;
      v24 = -1.0;
      v21 = 0;
      v22 = 2;
      v23 = 0xBFF0000000000000LL;
      FlashRoot = (gameswf::character *)RenderFX::GetFlashRoot(v4);
      RenderFX::InvokeASCallback(v4, FlashRoot, "AlliesBarDisplay", (const gameswf::as_value *)v11, 6);
      v6 = (gameswf::as_value *)&v24;
      do
      {
        v6 = (gameswf::as_value *)((char *)v6 - 12);
        gameswf::as_value::drop_refs(v6);
      }
      while ( v6 != (gameswf::as_value *)v11 );
    }
    *(_BYTE *)(DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 924)) + 155) = 0;
    if ( *((_DWORD *)this + 302) )
    {
      v7 = *((_BYTE **)this + 301);
      if ( v7[4] )
      {
        v8 = *((RenderFX **)this + 351);
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1164));
        RenderFX::GotoFrame(v8, Char, "Hide", 1);
        *(_BYTE *)(DebugCachedCharacter::GetChar((InfoHUDManager *)((char *)this + 1164)) + 155) = 0;
      }
      else
      {
        v10 = *(_DWORD *)v7 - 1;
        *(_DWORD *)v7 = v10;
        if ( !v10 )
          gameswf::free_internal(v7);
        *((_DWORD *)this + 302) = 0;
        *((_DWORD *)this + 301) = 0;
      }
    }
  }
}


// ===== 41f16c InfoHUDManager::~InfoHUDManager() =====
void __fastcall InfoHUDManager::~InfoHUDManager(InfoHUDManager *this)
{
  char *v1; // r5

  v1 = (char *)this + 1248;
  InfoHUDManager::Flush(this);
  if ( v1 != (char *)-12 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 108));
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 60));
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 12));
  }
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1212));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1164));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1116));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1068));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1020));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 972));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 924));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 876));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 828));
  if ( this != (InfoHUDManager *)-684 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 780));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 732));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 684));
  }
  if ( this != (InfoHUDManager *)-540 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 636));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 588));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 540));
  }
  if ( this != (InfoHUDManager *)-396 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 492));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 444));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 396));
  }
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 348));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 300));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 252));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 204));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 156));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 108));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 60));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 12));
}


// ===== 41f29c InfoHUDManager::~InfoHUDManager() =====
void __fastcall InfoHUDManager::~InfoHUDManager(InfoHUDManager *this)
{
  char *v1; // r5

  v1 = (char *)this + 1248;
  InfoHUDManager::Flush(this);
  if ( v1 != (char *)-12 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 108));
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 60));
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)(v1 + 12));
  }
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1212));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1164));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1116));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1068));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 1020));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 972));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 924));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 876));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 828));
  if ( this != (InfoHUDManager *)-684 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 780));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 732));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 684));
  }
  if ( this != (InfoHUDManager *)-540 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 636));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 588));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 540));
  }
  if ( this != (InfoHUDManager *)-396 )
  {
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 492));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 444));
    DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 396));
  }
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 348));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 300));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 252));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 204));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 156));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 108));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 60));
  DebugCachedCharacter::~DebugCachedCharacter((InfoHUDManager *)((char *)this + 12));
}


// ===== 41f3cc MenuFX::State::Create(void) =====
void __fastcall MenuFX::State::Create(MenuFX::State *this)
{
  ;
}


// ===== 41f3d0 MenuFX::State::Show(void) =====
void __fastcall MenuFX::State::Show(MenuFX::State *this)
{
  ;
}


// ===== 41f3d4 MenuFX::State::Hide(void) =====
void __fastcall MenuFX::State::Hide(MenuFX::State *this)
{
  ;
}


// ===== 41f3d8 MenuFX::State::GotFocus(void) =====
void __fastcall MenuFX::State::GotFocus(MenuFX::State *this)
{
  ;
}


// ===== 41f3dc MenuFX::State::LostFocus(void) =====
void __fastcall MenuFX::State::LostFocus(MenuFX::State *this)
{
  ;
}


// ===== 41f3e0 MenuFX::State::Update(void) =====
void __fastcall MenuFX::State::Update(MenuFX::State *this)
{
  ;
}


// ===== 41f3e4 MenuFX::State::OnEvent(RenderFX::Event &) =====
void __fastcall MenuFX::State::OnEvent(MenuFX::State *this, Event *a2)
{
  ;
}


// ===== 41f3e8 MenuFX::State::OnFSCommand(char const*,char const*) =====
void __fastcall MenuFX::State::OnFSCommand(MenuFX::State *this, const char *a2, const char *a3)
{
  ;
}


// ===== 41f3ec MenuFX::State::CanHandleEvent(RenderFX::Event &) =====
int __fastcall MenuFX::State::CanHandleEvent(MenuFX::State *this, Event *a2)
{
  return 1;
}


// ===== 41f3f4 MenuBase::IsVisible(void) =====
int __fastcall MenuBase::IsVisible(MenuBase *this)
{
  return *((unsigned __int8 *)this + 116);
}


// ===== 41f3fc MenuBase::CanHandleEvent(RenderFX::Event &) =====
int __fastcall MenuBase::CanHandleEvent(MenuBase *this, Event *a2)
{
  return 1;
}


// ===== 41f404 MenuBase::FS_LaunchTwitter(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LaunchTwitter(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  return 1;
}


// ===== 41f40c MenuBase::FS_ExitGame(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ExitGame(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)dword_99F73C + 48))(dword_99F73C, a2);
  return 1;
}


// ===== 41f444 MenuBase::FS_PauseGameplay(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PauseGameplay(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  return 0;
}


// ===== 41f44c MenuBase::FS_ResumeGameplay(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ResumeGameplay(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  return 0;
}


// ===== 41f454 MenuBase::RemoveDeadZone(gameswf::rect const&) =====
int __fastcall MenuBase::RemoveDeadZone(int result, int a2)
{
  char *v2; // r4
  char *v3; // r7
  int v4; // r6
  float v5; // r5
  float v6; // r0
  float v7; // r1
  char *v8; // r12
  int v9; // r5
  int v10; // r1
  int v11; // r2
  int v12; // r3

  v2 = *(char **)(result + 184);
  v3 = *(char **)(result + 188);
  v4 = result;
  if ( v2 != v3 )
  {
    v5 = *(float *)(a2 + 4);
    v6 = *((float *)v2 + 1);
    v7 = v5;
    while ( 1 )
    {
      result = fabs(v6 - v7) < 0.0001;
      if ( result )
        break;
      v2 += 16;
      v7 = v5;
      if ( v2 == v3 )
        return result;
      v6 = *((float *)v2 + 1);
    }
    v8 = v2 + 16;
    if ( v3 != v2 + 16 )
    {
      v9 = (v3 - v8) >> 4;
      if ( v9 > 0 )
      {
        while ( 1 )
        {
          --v9;
          result = *(_DWORD *)v8;
          v10 = *((_DWORD *)v8 + 1);
          v11 = *((_DWORD *)v8 + 2);
          v12 = *((_DWORD *)v8 + 3);
          *(_DWORD *)v2 = *(_DWORD *)v8;
          *((_DWORD *)v2 + 1) = v10;
          *((_DWORD *)v2 + 2) = v11;
          *((_DWORD *)v2 + 3) = v12;
          v2 = v8;
          if ( !v9 )
            break;
          v8 += 16;
        }
        v3 = *(char **)(v4 + 188);
      }
    }
    *(_DWORD *)(v4 + 188) = v3 - 16;
  }
  return result;
}


// ===== 41f4f8 MenuBase::ClearSlideEvents(void) =====
void __fastcall MenuBase::ClearSlideEvents(MenuBase *this)
{
  void **v1; // r4
  void **v2; // r5
  int v4; // r3

  v1 = *((void ***)this + 24);
  v2 = *((void ***)this + 25);
  if ( v1 != v2 )
  {
    do
    {
      if ( *v1 )
      {
        CustomFree(*v1);
        *v1 = nullptr;
      }
      ++v1;
    }
    while ( v1 != v2 );
    v4 = *((_DWORD *)this + 24);
    if ( v4 != *((_DWORD *)this + 25) )
      *((_DWORD *)this + 25) = v4;
  }
}


// ===== 41f548 MenuBaseStar_sortlessthen(MenuBase const*,MenuBase const*) =====
unsigned int __fastcall MenuBaseStar_sortlessthen(unsigned int result, const MenuBase *a2)
{
  if ( result )
  {
    if ( a2 )
      return (unsigned int)LC_API_STRCMP_0((const char *)(result + 8), (const char *)a2 + 8) >> 31;
    else
      return 1;
  }
  return result;
}


// ===== 41f578 MenuBase::FS_LoadLevel2(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LoadLevel2(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v6; // r7
  int v7; // r6
  int v8; // r8

  if ( !a2 )
    return 0;
  if ( !*a2 )
    return 0;
  v6 = Arrays::LevelList::size;
  if ( !Arrays::LevelList::size )
    return 0;
  v7 = 0;
  v8 = Arrays::LevelList::m_memberNames;
  while ( LC_API_STRCMP_0(a2, *(const char **)(v8 + 4 * v7)) )
  {
    if ( ++v7 == v6 )
      return 0;
  }
  if ( v7 == -1 )
    return 0;
  (*(void (__fastcall **)(const char *, const char *, _DWORD))(*(_DWORD *)a3 + 56))(
    a3,
    "LoadLevel",
    *(_DWORD *)(Arrays::LevelList::members + 72 * v7 + 32));
  return 1;
}


// ===== 41f640 MenuBase::FS_SetPlayerClass(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetPlayerClass(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v6; // r6
  int v7; // r5
  int v8; // r7

  v6 = Arrays::CharacterTable::size;
  if ( Arrays::CharacterTable::size )
  {
    v7 = 0;
    v8 = Arrays::CharacterTable::m_memberNames;
    while ( LC_API_STRCMP_0(a2, *(const char **)(v8 + 4 * v7)) )
    {
      if ( ++v7 == v6 )
        goto LABEL_6;
    }
    *((_DWORD *)a3 + 38) = v7;
    return 1;
  }
  else
  {
LABEL_6:
    *((_DWORD *)a3 + 38) = -1;
    return 1;
  }
}


// ===== 41f6c4 SlideEventCharacter::SlideEventCharacter(gameswf::character *) =====
void __fastcall SlideEventCharacter::SlideEventCharacter(SlideEventCharacter *this, gameswf::character *a2)
{
  int Constant; // r0

  *(_DWORD *)this = a2;
  *((float *)this + 1) = (float)(int)PyDataConstants::getConstant(
                                       (PyDataConstants *)dword_99F758,
                                       "SlideEventConfig",
                                       "PixelSlideDist")
                       * 20.0;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "SlideEventConfig", "TimingTolerance");
  *((_DWORD *)this + 4) = -1;
  *((_DWORD *)this + 3) = Constant;
  *((_DWORD *)this + 5) = PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "SlideEventConfig",
                            "AngleTolerance");
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
}


// ===== 41f77c SlideEventCharacter::SlideEventCharacter(gameswf::character *) =====
void __fastcall SlideEventCharacter::SlideEventCharacter(SlideEventCharacter *this, gameswf::character *a2)
{
  int Constant; // r0

  *(_DWORD *)this = a2;
  *((float *)this + 1) = (float)(int)PyDataConstants::getConstant(
                                       (PyDataConstants *)dword_99F758,
                                       "SlideEventConfig",
                                       "PixelSlideDist")
                       * 20.0;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "SlideEventConfig", "TimingTolerance");
  *((_DWORD *)this + 4) = -1;
  *((_DWORD *)this + 3) = Constant;
  *((_DWORD *)this + 5) = PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "SlideEventConfig",
                            "AngleTolerance");
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
}


// ===== 41f834 playerClassAsStrID(int) =====
int __fastcall playerClassAsStrID(int a1)
{
  int v1; // r5
  int result; // r0
  Character *character_660; // r3

  v1 = a1;
  if ( a1 == -1 )
  {
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( !character_660 )
      return -1;
    v1 = *((__int16 *)character_660 + 2532);
  }
  result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_CLASS_00");
  if ( v1 != 263 )
  {
    if ( v1 == 325 )
    {
      ++result;
    }
    else if ( v1 == 290 )
    {
      result += 2;
    }
    else
    {
      return -1;
    }
  }
  return result;
}


// ===== 41f8f0 CharPropTextField::CharPropTextField(gameswf::character *,gameswf::character *) =====
void __fastcall CharPropTextField::CharPropTextField(
        CharPropTextField *this,
        gameswf::character *a2,
        gameswf::character *a3)
{
  char *v3; // r5
  int v5; // r6
  const char *v6; // r0
  char *v7; // r0
  const char *v8; // r1
  char *v9; // r5
  int v10; // r3

  *(_DWORD *)this = -1;
  if ( !a3 )
    a3 = a2;
  *((_DWORD *)this + 1) = 95;
  *((_DWORD *)this + 2) = a3;
  v3 = *((char **)a2 + 17);
  v5 = *v3;
  if ( v5 == -1 )
    v6 = *((const char **)v3 + 3);
  else
    v6 = v3 + 1;
  v7 = strchr(v6, 95);
  if ( v7 )
  {
    if ( v5 == -1 )
      v9 = *((char **)v3 + 3);
    else
      v9 = v3 + 1;
    v10 = v9[2];
    if ( v10 != 105 && v10 != 112 && v10 != 98 )
      v10 = 95;
    *((_DWORD *)this + 1) = v10;
    *(_DWORD *)this = CharProperties::GetPropIDFromName((CharProperties *)(v7 + 1), v8);
  }
}


// ===== 41f978 CharPropTextField::CharPropTextField(gameswf::character *,gameswf::character *) =====
void __fastcall CharPropTextField::CharPropTextField(
        CharPropTextField *this,
        gameswf::character *a2,
        gameswf::character *a3)
{
  char *v3; // r5
  int v5; // r6
  const char *v6; // r0
  char *v7; // r0
  const char *v8; // r1
  char *v9; // r5
  int v10; // r3

  *(_DWORD *)this = -1;
  if ( !a3 )
    a3 = a2;
  *((_DWORD *)this + 1) = 95;
  *((_DWORD *)this + 2) = a3;
  v3 = *((char **)a2 + 17);
  v5 = *v3;
  if ( v5 == -1 )
    v6 = *((const char **)v3 + 3);
  else
    v6 = v3 + 1;
  v7 = strchr(v6, 95);
  if ( v7 )
  {
    if ( v5 == -1 )
      v9 = *((char **)v3 + 3);
    else
      v9 = v3 + 1;
    v10 = v9[2];
    if ( v10 != 105 && v10 != 112 && v10 != 98 )
      v10 = 95;
    *((_DWORD *)this + 1) = v10;
    *(_DWORD *)this = CharProperties::GetPropIDFromName((CharProperties *)(v7 + 1), v8);
  }
}


// ===== 41fa00 AbstractTableModel::UpdateTableData(int) =====
bool __fastcall AbstractTableModel::UpdateTableData(AbstractTableModel *this, int a2)
{
  int v2; // r7
  int v4; // r1
  bool v5; // zf
  int v6; // r3
  int v7; // r0
  int v8; // r6
  int v9; // r2
  int v10; // r2
  int v11; // r5
  int v12; // r3
  int v13; // r2
  _BOOL4 v14; // r3
  int v15; // r1
  gameswf::character *Char; // r5
  gameswf::character *v17; // r6
  int v19; // r2
  int *v20; // r3
  int v21; // r3
  int v22; // r3
  int *v23; // r1
  bool v24; // nf
  int *v25; // r12
  int v26; // [sp+4h] [bp-14h] BYREF
  int v27; // [sp+8h] [bp-10h] BYREF
  _DWORD v28[2]; // [sp+Ch] [bp-Ch] BYREF
  int v29; // [sp+14h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 2);
  v4 = a2 + v2;
  v5 = *((_BYTE *)this + 20) == 0;
  *((_DWORD *)this + 2) = v4;
  v6 = *((_DWORD *)this + 4);
  v7 = *((unsigned __int8 *)this + 22);
  if ( v5 )
    v8 = v6;
  else
    v8 = v6 + 2;
  if ( !v7 )
  {
    v9 = *((_DWORD *)this + 3);
LABEL_33:
    if ( *((_BYTE *)this + 21) )
    {
      v19 = v9 - 1;
      v29 = 0;
      v28[1] = v19;
      if ( v4 >= 0 )
        v20 = (int *)((char *)this + 8);
      else
        v20 = &v29;
      v21 = *v20;
      if ( v19 > v21 )
        *((_DWORD *)this + 2) = v21;
      else
        *((_DWORD *)this + 2) = v19;
      goto LABEL_12;
    }
    v22 = v9 - v6;
    v28[0] = *((unsigned __int8 *)this + 21);
    v27 = v22;
    if ( v4 >= 0 )
      v23 = (int *)((char *)this + 8);
    else
      v23 = v28;
    v26 = 0;
    v24 = v22 < 0;
    if ( v22 < 0 )
      v22 = 0;
    v10 = *v23;
    if ( v24 )
      v25 = &v26;
    else
      v25 = &v27;
    if ( v22 < v10 )
      v10 = *v25;
LABEL_11:
    *((_DWORD *)this + 2) = v10;
    goto LABEL_12;
  }
  v9 = *((_DWORD *)this + 3);
  if ( v9 < v6 )
    goto LABEL_33;
  if ( v4 < 0 )
  {
    *((_DWORD *)this + 2) = v4 + v9;
    goto LABEL_12;
  }
  if ( v4 >= v9 )
  {
    v10 = v4 - v9;
    goto LABEL_11;
  }
LABEL_12:
  if ( v8 > 0 )
  {
    v11 = 0;
    while ( 1 )
    {
      v12 = *((_DWORD *)this + 6);
      v13 = *((_DWORD *)this + 2) - v12 + v11;
      if ( *((_BYTE *)this + 21) )
      {
        if ( v12 <= v11 )
        {
          if ( v12 < v11 )
            --v13;
        }
        else
        {
          ++v13;
        }
      }
      v14 = v7 && *((_DWORD *)this + 3) >= *((_DWORD *)this + 4) || v13 >= 0 && v13 < *((_DWORD *)this + 3);
      v15 = v11++;
      (**(void (__fastcall ***)(AbstractTableModel *, int, int, _BOOL4))this)(this, v15, v13, v14);
      if ( v11 == v8 )
        break;
      v7 = *((unsigned __int8 *)this + 22);
    }
  }
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((AbstractTableModel *)((char *)this + 28));
  v17 = (gameswf::character *)DebugCachedCharacter::GetChar((AbstractTableModel *)((char *)this + 76));
  if ( *((_BYTE *)this + 22) && *((_DWORD *)this + 3) >= *((_DWORD *)this + 4) )
  {
    RenderFX::SetEnabled(*((RenderFX **)this + 1), Char, 1);
    *((_BYTE *)Char + 155) = 1;
    RenderFX::SetEnabled(*((RenderFX **)this + 1), v17, 1);
    *((_BYTE *)v17 + 155) = 1;
  }
  else
  {
    RenderFX::SetEnabled(*((RenderFX **)this + 1), Char, *((_DWORD *)this + 2) > 0);
    *((_BYTE *)Char + 155) = *((_DWORD *)this + 2) > 0;
    if ( *((_BYTE *)this + 21) )
    {
      RenderFX::SetEnabled(*((RenderFX **)this + 1), v17, *((_DWORD *)this + 2) < *((_DWORD *)this + 3) - 1);
      *((_BYTE *)v17 + 155) = *((_DWORD *)this + 2) < *((_DWORD *)this + 3) - 1;
    }
    else
    {
      RenderFX::SetEnabled(
        *((RenderFX **)this + 1),
        v17,
        *((_DWORD *)this + 4) + *((_DWORD *)this + 2) < *((_DWORD *)this + 3));
      *((_BYTE *)v17 + 155) = *((_DWORD *)this + 4) + *((_DWORD *)this + 2) < *((_DWORD *)this + 3);
    }
  }
  return *((_DWORD *)this + 2) != v2;
}


// ===== 41fca8 AbstractTableModel::_doScrollDown(void) =====
int __fastcall AbstractTableModel::_doScrollDown(RenderFX **this)
{
  int result; // r0

  result = AbstractTableModel::UpdateTableData((AbstractTableModel *)this, -1);
  if ( result )
  {
    if ( *((_BYTE *)this + 21) )
    {
      RenderFX::PlayAnim(*(this + 1), "list_upper", "scroll_down", 0);
      return RenderFX::PlayAnim(*(this + 1), "list_lower", "scroll_down", 0);
    }
    else
    {
      return RenderFX::PlayAnim(*(this + 1), "list", "scroll_down", *((unsigned __int8 *)this + 21));
    }
  }
  return result;
}


// ===== 41fd3c AbstractTableModel::_doScrollUp(void) =====
int __fastcall AbstractTableModel::_doScrollUp(RenderFX **this)
{
  int result; // r0

  result = AbstractTableModel::UpdateTableData((AbstractTableModel *)this, 1);
  if ( result )
  {
    if ( *((_BYTE *)this + 21) )
    {
      RenderFX::PlayAnim(*(this + 1), "list_upper", "scroll_up", 0);
      return RenderFX::PlayAnim(*(this + 1), "list_lower", "scroll_up", 0);
    }
    else
    {
      return RenderFX::PlayAnim(*(this + 1), "list", "scroll_up", *((unsigned __int8 *)this + 21));
    }
  }
  return result;
}


// ===== 41fdd0 AbstractTableModel::ProcessTableEvent(RenderFX::Event &) =====
int __fastcall AbstractTableModel::ProcessTableEvent(int this, RenderFX::Event *a2)
{
  RenderFX **v3; // r5
  int v4; // r6
  int v5; // r4

  v3 = (RenderFX **)this;
  if ( *((_DWORD *)a2 + 2) == 2 )
  {
    v4 = *(_DWORD *)a2;
    if ( v4 == DebugCachedCharacter::GetChar((DebugCachedCharacter *)(this + 28)) )
    {
      return AbstractTableModel::_doScrollDown(v3);
    }
    else
    {
      v5 = *(_DWORD *)a2;
      this = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v3 + 19));
      if ( v5 == this )
        return AbstractTableModel::_doScrollUp(v3);
    }
  }
  return this;
}


// ===== 41fe2c AbstractTableModel::InitTable(MenuFX *,int,int,bool,bool,bool) =====
bool __fastcall AbstractTableModel::InitTable(
        AbstractTableModel *this,
        MenuFX *a2,
        int a3,
        int a4,
        bool a5,
        bool a6,
        bool a7)
{
  int v7; // r12

  v7 = a5;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 3) = a3;
  *((_BYTE *)this + 22) = a7;
  *((_DWORD *)this + 4) = a4;
  *((_BYTE *)this + 20) = a5;
  *((_BYTE *)this + 21) = a6;
  if ( a6 )
  {
    if ( a5 )
      v7 = a4 / 2;
  }
  else if ( a5 )
  {
    v7 = 2;
  }
  *((_DWORD *)this + 6) = v7;
  return AbstractTableModel::UpdateTableData(this, 0);
}


// ===== 41fe84 gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy *) =====
void __fastcall gameswf::smart_ptr_proxy::operator=(_DWORD **a1, _DWORD *a2)
{
  _DWORD *v3; // r0

  v3 = *a1;
  if ( a2 != v3 )
  {
    if ( v3 )
    {
      if ( (*v3)-- == 1 )
        gameswf::free_internal(v3);
    }
    *a1 = a2;
    if ( a2 )
      ++*a2;
  }
}


// ===== 41fed8 gameswf::tu_string::~tu_string() =====
void __fastcall gameswf::tu_string::~tu_string(void **this)
{
  if ( *(char *)this == -1 )
    gameswf::free_internal(*(this + 3));
}


// ===== 41ff08 MenuBase::DBG_Draw2DDeadZones(void) =====
glitch::IReferenceCounted *__fastcall MenuBase::DBG_Draw2DDeadZones(MenuBase *this)
{
  int v1; // r5
  float *v2; // r7
  float *v3; // r4
  glitch::IReferenceCounted *result; // r0
  int (__fastcall *v5)(int, _DWORD *, _DWORD *, _BYTE *, _DWORD); // r6
  int v6; // r11
  float v7; // t1
  int v8; // [sp+8h] [bp-44h]
  int v9; // [sp+Ch] [bp-40h]
  _DWORD v10[4]; // [sp+10h] [bp-3Ch] BYREF
  _DWORD v11[4]; // [sp+20h] [bp-2Ch] BYREF
  _BYTE v12[16]; // [sp+30h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+40h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v14; // [sp+44h] [bp-8h] BYREF

  v1 = *(_DWORD *)(dword_99F73C + 16);
  v12[15] = 100;
  v14 = nullptr;
  v12[12] = -1;
  v2 = *((float **)this + 47);
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 100;
  v12[5] = 0;
  v12[6] = 0;
  v12[7] = 100;
  v12[9] = 0;
  v12[10] = 0;
  v12[11] = 100;
  v12[13] = 0;
  v12[14] = 0;
  memset(v11, 0, sizeof(v11));
  v12[0] = -1;
  v12[4] = -1;
  v12[8] = -1;
  v3 = *((float **)this + 46);
  glitch::video::C2DDriver::set2DTexture(&v13, v1, &v14, 1);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  result = v14;
  if ( v14 )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v14);
  for ( ; v3 != v2; result = (glitch::IReferenceCounted *)v5(v1, v10, v11, v12, 0) )
  {
    v5 = *(int (__fastcall **)(int, _DWORD *, _DWORD *, _BYTE *, _DWORD))(*(_DWORD *)v1 + 52);
    v8 = (int)v3[2];
    v9 = (int)v3[1];
    v6 = (int)v3[3];
    v7 = *v3;
    v3 += 4;
    v10[0] = (int)v7;
    v10[2] = v9;
    v10[1] = v8;
    v10[3] = v6;
  }
  return result;
}


// ===== 420060 glitch::core::vector2d<float>::getAngle(void) =====
int __fastcall glitch::core::vector2d<float>::getAngle(float *a1)
{
  float v1; // r5
  double v3; // r6
  float v5; // r0
  double v6; // r0
  float v7; // r4

  v1 = a1[1];
  if ( v1 == 0.0 )
  {
    LODWORD(v3) = 0;
    return LODWORD(v3);
  }
  if ( *a1 != 0.0 )
  {
    v5 = sqrt((float)((float)(*a1 * *a1) + (float)(v1 * v1)));
    v6 = sqrt(1.0 - (float)(v1 / v5) * (float)(v1 / v5)) / (float)(v1 / v5);
    v3 = atan(v6) * 57.2957795;
    if ( *a1 > 0.0 )
    {
      if ( a1[1] > 0.0 )
      {
        v3 = v3 + 270.0;
        return LODWORD(v3);
      }
      if ( a1[1] < 0.0 )
      {
        v3 = v3 + 90.0;
        return LODWORD(v3);
      }
    }
    if ( *a1 < 0.0 )
    {
      v7 = a1[1];
      if ( v7 < 0.0 )
      {
        v3 = 90.0 - v3;
      }
      else if ( v7 > 0.0 )
      {
        v3 = 270.0 - v3;
      }
    }
    return LODWORD(v3);
  }
  return 0;
}


// ===== 4202a8 MenuBase::FS_UnlockCharacter(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_UnlockCharacter(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int i; // r4
  Character *character_660; // r3

  if ( LC_API_STRCMP_0(a2, "All") )
  {
    for ( i = 0; i < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0); ++i )
    {
      character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, i, 0)->character_660;
      if ( character_660 )
        *(_BYTE *)(*((_DWORD *)character_660 + 222) + 8) = 0;
    }
    return 1;
  }
  else
  {
    v2Controller::s_blocked = 0;
    return 1;
  }
}


// ===== 420344 MenuBase::FS_LockCharacter(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LockCharacter(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int i; // r4
  Character *character_660; // r3

  if ( LC_API_STRCMP_0(a2, "All") )
  {
    for ( i = 0; i < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0); ++i )
    {
      character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, i, 0)->character_660;
      if ( character_660 )
        *(_BYTE *)(*((_DWORD *)character_660 + 222) + 8) = 1;
    }
    return 1;
  }
  else
  {
    v2Controller::s_blocked = 1;
    return 1;
  }
}


// ===== 4203e4 MenuBase::FS_PopAllMenu(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PopAllMenu(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int Instance; // r0

  Instance = MenuManager::GetInstance(this);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244), 1);
  return 1;
}


// ===== 42040c MenuBase::FS_SetBtnImage(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetBtnImage(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  char *v6; // r0
  char *v7; // r7
  RenderFX *v8; // r0
  GameSWFUtils *v9; // r0
  const char *v10; // r2
  char var44[100]; // [sp+4h] [bp-44h] BYREF

  v6 = strchr(a2, 124);
  v7 = v6;
  if ( v6
    && (memcpy(var44, a2, v6 - a2),
        v8 = *((RenderFX **)a3 + 1),
        var44[v7 - a2] = 0,
        (v9 = (GameSWFUtils *)RenderFX::Find(v8, var44)) != nullptr) )
  {
    return GameSWFUtils::GotoFrame(v9, (gameswf::character *)(v7 + 1), v10);
  }
  else
  {
    return 0;
  }
}


// ===== 4204bc MenuBase::FS_LoadOptions(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LoadOptions(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int Language; // r0

  SavegameManager::loadSettings((SavegameManager *)dword_99F778, 0);
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  return SavegameManager::setLanguage((SavegameManager *)dword_99F778, Language);
}


// ===== 4204fc MenuBase::FS_SaveOptions(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SaveOptions(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int Language; // r0

  SavegameManager::saveSettings((SavegameManager *)dword_99F778);
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  SavegameManager::setLanguage((SavegameManager *)dword_99F778, Language);
  return 1;
}


// ===== 42053c MenuBase::FS_SetSaveSlot(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetSaveSlot(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v4; // r1
  int v5; // r0

  if ( !a2 )
    return 0;
  v5 = LC_API_ATOI_0(a2);
  v4 = 1;
  *(_DWORD *)(dword_99F778 + 8) = v5;
  return v4;
}


// ===== 42057c MenuBase::FS_SetLanguage(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetLanguage(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  SavegameManager *v5; // r4
  int v6; // r0
  MenuManager *v7; // r0
  MenuManager *Instance; // r0

  if ( !a2 )
    return 0;
  if ( !*a2 )
    return 0;
  v5 = (SavegameManager *)dword_99F778;
  v6 = LC_API_ATOI_0(a2);
  v7 = (MenuManager *)SavegameManager::setLanguage(v5, v6);
  if ( !v7 )
    return 0;
  Instance = (MenuManager *)MenuManager::GetInstance(v7);
  MenuManager::ResetFonts(Instance);
  return 1;
}


// ===== 4205e0 MenuBase::FS_SetOption(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetOption(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  if ( !a2 )
    return 0;
  SavegameManager::setOption((SavegameManager *)dword_99F778, a2 + 7, 0);
  return 1;
}


// ===== 420624 MenuBase::FS_ToggleOption(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ToggleOption(MenuBase *this, char *a2, RenderFX **a3, void *a4)
{
  char isOptionToggled; // r8
  RenderFX *v8; // r0
  const char *v9; // r3
  _BYTE v10[12]; // [sp+4h] [bp-Ch] BYREF

  if ( !a2 )
    return 0;
  SavegameManager::toggleOption((SavegameManager *)dword_99F778, a2 + 7);
  isOptionToggled = SavegameManager::isOptionToggled((SavegameManager *)dword_99F778, a2 + 7);
  if ( SavegameManager::isOptionToggled((SavegameManager *)dword_99F778, a2 + 7) )
    RenderFX::PlayAnim(a3[1], a2, "true", 0);
  else
    RenderFX::PlayAnim(a3[1], a2, "false", 0);
  v8 = a3[1];
  v10[0] = 0;
  v10[4] = isOptionToggled;
  v10[1] = 1;
  RenderFX::SetMember(v8, "_root", "retval", (gameswf::as_value *)v10);
  GameSWFUtils::PlayAnim(a3[1], (MenuFX *)a2, (gameswf::character *)"onToggleOption", v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  return 1;
}


// ===== 420728 MenuBase::FS_DecOption(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_DecOption(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v4; // r7
  MenuManager *v5; // r0
  MenuManager *Instance; // r0
  RenderFX *Root; // r8
  StringManager *v8; // r6
  int Constant; // r0
  const char *String; // r0
  _BYTE v12[12]; // [sp+Ch] [bp-Ch] BYREF

  v4 = SavegameManager::getLanguage((SavegameManager *)dword_99F778) - 1;
  if ( v4 < 0 )
    v4 = 7;
  v5 = (MenuManager *)SavegameManager::setLanguage((SavegameManager *)dword_99F778, v4);
  Instance = (MenuManager *)MenuManager::GetInstance(v5);
  MenuManager::ResetFonts(Instance);
  Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v8 = (StringManager *)dword_99F760;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_LANGUAGE_00");
  String = (const char *)StringManager::getString(v8, Constant + v4);
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v12, String);
  RenderFX::InvokeASCallback(Root, "_root.menu_language", "currentLanguageText", (const gameswf::as_value *)v12, 1);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  return 1;
}


// ===== 420804 MenuBase::FS_IncOption(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_IncOption(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v4; // r6
  MenuManager *v5; // r0
  MenuManager *Instance; // r0
  RenderFX *Root; // r8
  StringManager *v8; // r7
  int Constant; // r0
  const char *String; // r0
  _BYTE v12[12]; // [sp+Ch] [bp-Ch] BYREF

  v4 = SavegameManager::getLanguage((SavegameManager *)dword_99F778) + 1;
  if ( v4 > 7 )
    v4 = 0;
  v5 = (MenuManager *)SavegameManager::setLanguage((SavegameManager *)dword_99F778, v4);
  Instance = (MenuManager *)MenuManager::GetInstance(v5);
  MenuManager::ResetFonts(Instance);
  Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v8 = (StringManager *)dword_99F760;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_LANGUAGE_00");
  String = (const char *)StringManager::getString(v8, Constant + v4);
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v12, String);
  RenderFX::InvokeASCallback(Root, "_root.menu_language", "currentLanguageText", (const gameswf::as_value *)v12, 1);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  return 1;
}


// ===== 4208e4 MenuBase::FS_ResetDraggablePosition(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ResetDraggablePosition(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  DragAndDrop *v4; // r0
  Dragable *Dragable; // r0

  v4 = *((DragAndDrop **)a3 + 23);
  if ( !v4 )
    return 0;
  Dragable = (Dragable *)DragAndDrop::GetDragable(v4, a2);
  if ( !Dragable )
    return 0;
  Dragable::ResetPosition(Dragable);
  return 1;
}


// ===== 420914 MenuBase::FS_GetString(char const*,char const*,void *) =====
const char *__fastcall MenuBase::FS_GetString(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  const char *result; // r0
  StringManager *v6; // r5
  int v7; // r0
  const char *String; // r3

  result = a2;
  if ( a2 )
  {
    v6 = (StringManager *)dword_99F760;
    v7 = LC_API_ATOI_0(a2);
    String = (const char *)StringManager::getString(v6, v7);
    if ( String )
    {
      RenderFX::SetMember(a3[1], "_root", "retval", String);
      return (_BYTE *)(&dword_0 + 1);
    }
    else
    {
      return (_BYTE *)(&dword_0 + 1);
    }
  }
  return result;
}


// ===== 420988 MenuBase::FS_GetPlayerName(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetPlayerName(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  PlayerSavegame *v6; // r0
  unsigned int v7; // r1
  const char *PlayerName; // r0

  if ( a2
    && *a2
    && (v6 = (PlayerSavegame *)LC_API_ATOI_0(a2),
        (PlayerName = (const char *)PlayerSavegame::SG_GetPlayerName(v6, v7)) != nullptr)
    && *PlayerName )
  {
    RenderFX::SetMember(a3[1], "_root", "retval", PlayerName);
    return 1;
  }
  else
  {
    RenderFX::SetMember(a3[1], "_root", "retval", "");
    return 1;
  }
}


// ===== 420a1c MenuBase::FS_GetString2(char const*,char const*,void *) =====
const char *__fastcall MenuBase::FS_GetString2(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  const char *result; // r0
  const char *StringFromSymbol; // r3

  result = a2;
  if ( a2 )
  {
    StringFromSymbol = (const char *)StringManager::getStringFromSymbol((StringManager *)dword_99F760, a2);
    if ( StringFromSymbol )
    {
      RenderFX::SetMember(a3[1], "_root", "retval", StringFromSymbol);
      return (_BYTE *)(&dword_0 + 1);
    }
    else
    {
      return (_BYTE *)(&dword_0 + 1);
    }
  }
  return result;
}


// ===== 420a84 gameswf::as_value::to_tu_string(void) =====
char *__fastcall gameswf::as_value::to_tu_string(gameswf::as_value *this)
{
  int v1; // r3

  v1 = *((char *)this + 1);
  if ( v1 == 3 || v1 == 4 )
    return *((char **)this + 1);
  if ( (`guard variable for'gameswf::as_value::to_tu_string(void)::s_dummy & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'gameswf::as_value::to_tu_string(void)::s_dummy) )
  {
    return &gameswf::as_value::to_tu_string(void)const::s_dummy;
  }
  gameswf::as_value::to_tu_string(void)const::s_dummy = 1;
  dword_9A4890 = dword_9A4890 & 0xFF000000 | 0xFFFFFF;
  byte_9A4881 = 0;
  HIBYTE(dword_9A4890) &= ~1u;
  _cxa_guard_release(&`guard variable for'gameswf::as_value::to_tu_string(void)::s_dummy);
  _aeabi_atexit(
    (int)&gameswf::as_value::to_tu_string(void)const::s_dummy,
    (int)gameswf::tu_string::~tu_string,
    (int)&_dso_handle);
  return &gameswf::as_value::to_tu_string(void)const::s_dummy;
}


// ===== 420b48 MenuBase::FS_EndLoading(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_EndLoading(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int CurrentLevel; // r0

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 36 )
    ++*(_DWORD *)(CurrentLevel + 304);
  return 0;
}


// ===== 420b8c MenuBase::FS_LoadWorldMap(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LoadWorldMap(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Application::LoadWorldMap((Application *)&Singleton<Application>::s_inst, (GSLevelMap *)0xFFFFFFFF);
  return 1;
}


// ===== 420bb8 MenuBase::FS_LoadLevel(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_LoadLevel(MenuBase *this, char *a2, MenuFX **a3, void *a4)
{
  int result; // r0

  result = LC_API_STRCMP_0(a2, "undefined");
  if ( result )
  {
    MenuFX::PopAll(a3[1]);
    Application::LoadLevel((Application *)&Singleton<Application>::s_inst, a2, nullptr, 0, 0, 1, 0, 0, 0, 0);
    return 1;
  }
  return result;
}


// ===== 420c3c MenuBase::FS_GoToMainMenu(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GoToMainMenu(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 0);
  return 1;
}


// ===== 420c68 MenuBase::FS_SkipScript(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SkipScript(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  ScriptManager::SkipScript((ScriptManager *)&ScriptManager::s_inst, -2, 0);
  return 1;
}


// ===== 420c98 MenuBase::FS_ResetSaveFile(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ResetSaveFile(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  PlayerSavegame *v4; // r4
  unsigned int v5; // r1

  if ( a2 && *a2 )
    v4 = (PlayerSavegame *)LC_API_ATOI_0(a2);
  else
    v4 = *(PlayerSavegame **)(dword_99F778 + 8);
  if ( (int)v4 >= 0 )
  {
    PlayerSavegame::SG_Delete(v4, (unsigned int)a2);
    LevelSavegame::DeleteAllLevelSave(v4, v5);
  }
  return 1;
}


// ===== 420cfc MenuBase::FS_IsSaveSlotValid(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_IsSaveSlotValid(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  PlayerSavegame *v5; // r0
  unsigned int v6; // r1
  char v7; // lr
  RenderFX *v8; // r0
  _BYTE v10[16]; // [sp+4h] [bp-10h] BYREF

  if ( !a2 || (v5 = (PlayerSavegame *)LC_API_ATOI_0(a2), v5 == (PlayerSavegame *)-1) )
    v7 = 0;
  else
    v7 = PlayerSavegame::SG_Exists(v5, v6);
  v8 = *((RenderFX **)a3 + 1);
  v10[0] = 0;
  v10[4] = v7;
  v10[1] = 1;
  RenderFX::SetMember(v8, "_root", "retval", (gameswf::as_value *)v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  return 1;
}


// ===== 420d7c MenuBase::FS_GetSaveSlot(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetSaveSlot(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  int v5; // r4
  PlayerSavegame *v6; // r0
  PlayerSavegame *v7; // r4

  v5 = dword_99F778;
  v6 = *(PlayerSavegame **)(dword_99F778 + 8);
  if ( v6 != (PlayerSavegame *)-1 && PlayerSavegame::SG_Exists(v6, (unsigned int)a2) )
  {
    RenderFX::SetMember(a3[1], "_root", "retval", *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v7 = (PlayerSavegame *)((char *)&dword_0 + 1);
    while ( !PlayerSavegame::SG_Exists(v7, (unsigned int)a2) )
    {
      v7 = (PlayerSavegame *)((char *)v7 + 1);
      if ( v7 == (PlayerSavegame *)&byte_5 )
      {
        RenderFX::SetMember(a3[1], "_root", "retval", "");
        return 1;
      }
    }
    RenderFX::SetMember(a3[1], "_root", "retval", (int)v7);
    return 1;
  }
}


// ===== 420e64 MenuBase::FS_ContinueGame(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ContinueGame(MenuBase *this, const char *a2, MenuFX **a3, void *a4)
{
  unsigned int v6; // r1
  std::priv::_String_base<char,std::allocator<char> > var19C[18]; // [sp+1Ch] [bp-19Ch] BYREF

  MenuFX::PopAll(a3[1]);
  v6 = *(_DWORD *)(dword_99F778 + 8);
  if ( v6 == -1 )
  {
    (*((void (__fastcall **)(MenuFX **, const char *, const char *))*a3 + 14))(a3, "StartGame", a2);
  }
  else
  {
    PlayerSavegame::PlayerSavegame((PlayerSavegame *)var19C, v6, 1, 0);
    Application::LoadLevel(
      (Application *)&Singleton<Application>::s_inst,
      *(char **)(Arrays::LevelList::members
               + 72 * *(_DWORD *)&var19C[3]._M_buffers._M_static_buf[4 * PlayerSavegame::m_difficultyLevel + 8]
               + 32),
      *((const char **)&var19C[2]._M_finish + PlayerSavegame::m_difficultyLevel),
      *(int *)&var19C[0]._M_buffers._M_static_buf[4],
      *((_DWORD *)&var19C[3]._M_start_of_storage._M_data + PlayerSavegame::m_difficultyLevel) != 0,
      Random::s_syncedSeed != 0,
      1,
      0,
      0,
      0);
    PlayerSavegame::~PlayerSavegame(var19C);
  }
  return 1;
}


// ===== 420fac MenuBase::FS_ReturnToGame(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_ReturnToGame(MenuBase *this, const char *a2, MenuFX **a3, void *a4)
{
  unsigned int v5; // r1
  std::priv::_String_base<char,std::allocator<char> > var19C[18]; // [sp+1Ch] [bp-19Ch] BYREF

  v5 = *(_DWORD *)(dword_99F778 + 8);
  if ( v5 != -1 )
  {
    PlayerSavegame::PlayerSavegame((PlayerSavegame *)var19C, v5, 1, 0);
    MenuFX::PopAll(a3[1]);
    Application::LoadLevel(
      (Application *)&Singleton<Application>::s_inst,
      *(char **)(Arrays::LevelList::members
               + 72 * *(_DWORD *)&var19C[3]._M_buffers._M_static_buf[4 * PlayerSavegame::m_difficultyLevel + 8]
               + 32),
      *((const char **)&var19C[2]._M_finish + PlayerSavegame::m_difficultyLevel),
      *(int *)&var19C[0]._M_buffers._M_static_buf[4],
      0,
      1,
      0,
      0,
      0,
      0);
    PlayerSavegame::~PlayerSavegame(var19C);
  }
  return 1;
}


// ===== 4210a8 MenuBase::FS_PlayMusic(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PlayMusic(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v5; // r7
  int v6; // r5
  int v7; // r8

  if ( !a2 )
    return 0;
  if ( !*a2 )
    return 0;
  v5 = Arrays::Sounds::size;
  if ( !Arrays::Sounds::size )
    return 0;
  v6 = 0;
  v7 = Arrays::Sounds::m_memberNames;
  while ( LC_API_STRCMP_0(a2, *(const char **)(v7 + 4 * v6)) )
  {
    if ( ++v6 == v5 )
      return 0;
  }
  if ( v6 == -1 )
    return 0;
  VoxSoundManager::PlayMusic((VoxSoundManager *)VoxSoundManager::s_instance, v6, 1, 0, 2000);
  return 1;
}


// ===== 421164 MenuBase::FS_PlaySoundFX(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PlaySoundFX(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int v5; // r7
  int v6; // r4
  int v7; // r8

  if ( !a2 )
    return 0;
  if ( !*a2 )
    return 0;
  v5 = Arrays::Sounds::size;
  if ( !Arrays::Sounds::size )
    return 0;
  v6 = 0;
  v7 = Arrays::Sounds::m_memberNames;
  while ( LC_API_STRCMP_0(a2, *(const char **)(v7 + 4 * v6)) )
  {
    if ( ++v6 == v5 )
      return 0;
  }
  if ( v6 == -1 )
    return 0;
  VoxSoundManager::PlayMenu((VoxSoundManager *)VoxSoundManager::s_instance, v6, 0, 0, 0);
  return 1;
}


// ===== 42121c MenuBase::FS_SetFocus(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetFocus(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  RenderFX::SetFocus(a3[1], a2, 0);
  return 1;
}


// ===== 421234 MenuBase::FS_PushState(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PushState(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  MenuManager *v5; // r0
  MenuManager *Instance; // r0
  int v8; // r3

  v5 = (MenuManager *)LC_API_STRCMP_0("menu_CharacterMenu", a2);
  if ( !v5 || (v5 = (MenuManager *)LC_API_STRCMP_0("menu_Ingame", a2)) == nullptr )
  {
    v8 = *(_DWORD *)(dword_99F744 + 16);
    if ( !((unsigned int)(v8 - *(_DWORD *)(dword_99F744 + 12)) >> 3) || *(_UNKNOWN **)(v8 - 8) != &GSLevel::s_gsLevel )
      return 0;
  }
  Instance = (MenuManager *)MenuManager::GetInstance(v5);
  dword_9A247C = MenuManager::GetMenuByName(Instance, a2);
  StateMachine::PushState(dword_99F744, (int)&GSFlashMenu::s_inst, 0);
  return 1;
}


// ===== 4212f8 MenuBase::FS_SwitchMenu(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SwitchMenu(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  MenuManager *Instance; // r4

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)Instance + 61) + 56))(*((_DWORD **)Instance + 61), 0);
  MenuManager::PushMenu(Instance, a2);
  return 1;
}


// ===== 421334 MenuBase::FS_PushMenu(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PushMenu(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::PushMenu(Instance, a2);
  return 1;
}


// ===== 421350 MenuBase::FS_PopAllAbove(char const*,char const*,void *) =====
bool __fastcall MenuBase::FS_PopAllAbove(MenuBase *this, const char *a2, MenuFX **a3, void *a4)
{
  int Instance; // r6
  const char *v7; // r1
  int State; // r5
  int *v9; // r0

  Instance = MenuManager::GetInstance(this);
  if ( a2 )
    v7 = a2;
  else
    v7 = "menu_CharacterMenu";
  State = MenuFX::GetState(a3[1], v7);
  if ( !State || State == MenuFX::GetCurrentState(a3[1]) )
  {
LABEL_8:
    v9 = (int *)a3[1];
  }
  else
  {
    while ( 1 )
    {
      v9 = (int *)a3[1];
      if ( v9[70] <= 0 )
        break;
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244));
      if ( State == MenuFX::GetCurrentState(a3[1]) )
        goto LABEL_8;
    }
  }
  return State == MenuFX::GetCurrentState((MenuFX *)v9);
}


// ===== 4213f0 MenuBase::IsTopMost(void) =====
bool __fastcall MenuBase::IsTopMost(MenuFX **this)
{
  return this == (MenuFX **)MenuFX::GetCurrentState(*(this + 1));
}


// ===== 421410 MenuBase::FS_PopMenu(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PopMenu(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  if ( !*a2 )
    a2 = a3 + 8;
  MenuManager::PopMenu(Instance, a2);
  return 1;
}


// ===== 42143c MenuBase::FS_AutoEquipSlot(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_AutoEquipSlot(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *character_660; // r5
  bool v6; // zf
  int i; // r4
  int v8; // r4
  int v9; // r1
  int v10; // r4

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  v6 = a2 == nullptr;
  if ( a2 )
    v6 = character_660 == nullptr;
  if ( v6 || !*a2 )
    return 0;
  if ( LC_API_STRCMP_0(a2, "ALL") )
  {
    v10 = LC_API_ATOI_0(a2);
    (*(void (__fastcall **)(Character *, int))(*(_DWORD *)character_660 + 324))(character_660, v10);
    (*(void (__fastcall **)(Character *, int))(*(_DWORD *)character_660 + 320))(character_660, v10);
    return 1;
  }
  else
  {
    for ( i = 0; i < ItemInventory::GetNumEquipmentSlots((Character *)((char *)character_660 + 892)); ++i )
      (*(void (__fastcall **)(Character *, int))(*(_DWORD *)character_660 + 324))(character_660, i);
    v8 = ItemInventory::GetNumEquipmentSlots((Character *)((char *)character_660 + 892)) - 1;
    if ( v8 >= 0 )
    {
      do
      {
        v9 = v8--;
        (*(void (__fastcall **)(Character *, int))(*(_DWORD *)character_660 + 320))(character_660, v9);
      }
      while ( v8 != -1 );
    }
    return 1;
  }
}


// ===== 421554 MenuBase::FS_GetHasOffHandWeapon(char const*,char const*,void *) =====
Character *__fastcall MenuBase::FS_GetHasOffHandWeapon(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *result; // r0
  RenderFX *v6; // r0
  _BYTE v7[12]; // [sp+4h] [bp-Ch] BYREF

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    v7[4] = (unsigned __int8)ItemInventory::HasOffHandWeapon((Character *)((char *)result + 892));
    v6 = *((RenderFX **)a3 + 1);
    v7[0] = 0;
    v7[1] = 1;
    RenderFX::SetMember(v6, "_root", "retval", (gameswf::as_value *)v7);
    gameswf::as_value::drop_refs((gameswf::as_value *)v7);
    return (Character *)(&dword_0 + 1);
  }
  return result;
}


// ===== 4215ec MenuBase::FS_GetHasMainHandWeapon(char const*,char const*,void *) =====
Character *__fastcall MenuBase::FS_GetHasMainHandWeapon(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *result; // r0
  RenderFX *v6; // r0
  _BYTE v7[12]; // [sp+4h] [bp-Ch] BYREF

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    v7[4] = ItemInventory::HasMainHandWeapon((Character *)((char *)result + 892));
    v6 = *((RenderFX **)a3 + 1);
    v7[0] = 0;
    v7[1] = 1;
    RenderFX::SetMember(v6, "_root", "retval", (gameswf::as_value *)v7);
    gameswf::as_value::drop_refs((gameswf::as_value *)v7);
    return (Character *)(&dword_0 + 1);
  }
  return result;
}


// ===== 421684 MenuBase::FS_GetHasTwoHandWeapon(char const*,char const*,void *) =====
Character *__fastcall MenuBase::FS_GetHasTwoHandWeapon(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *result; // r0
  RenderFX *v6; // r0
  _BYTE v7[12]; // [sp+4h] [bp-Ch] BYREF

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    v7[4] = (unsigned __int8)ItemInventory::HasTwoHander((Character *)((char *)result + 892), 0);
    v6 = *((RenderFX **)a3 + 1);
    v7[0] = 0;
    v7[1] = 1;
    RenderFX::SetMember(v6, "_root", "retval", (gameswf::as_value *)v7);
    gameswf::as_value::drop_refs((gameswf::as_value *)v7);
    return (Character *)(&dword_0 + 1);
  }
  return result;
}


// ===== 421720 MenuBase::FS_GetPlayerClass(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetPlayerClass(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  Character *character_660; // r8
  int PlayerClass; // r0
  StringManager *v9; // r4
  int v10; // r0
  const char *String; // r3

  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = LocalPlayer->character_660;
  if ( !character_660
    || (!a2
      ? (PlayerClass = Character::SG_GetPlayerClass(LocalPlayer->character_660))
      : (LC_API_ATOI_0(a2), PlayerClass = Character::SG_GetPlayerClass(character_660)),
        PlayerClass == -1) )
  {
    RenderFX::SetMember(a3[1], "_root", "retval", "");
    return 1;
  }
  else
  {
    v9 = (StringManager *)dword_99F760;
    v10 = playerClassAsStrID(PlayerClass);
    String = (const char *)StringManager::getString(v9, v10);
    if ( String )
      RenderFX::SetMember(a3[1], "_root", "retval", String);
    return 1;
  }
}


// ===== 421808 MenuBase::FS_GetCharProperty(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetCharProperty(MenuBase *this, CharProperties *a2, RenderFX **a3, void *a4)
{
  const char *v6; // r1
  Character *character_660; // r8
  int PropIDFromName; // r0
  int Int; // r0
  char s[8]; // [sp+4h] [bp-Ch] BYREF

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
  {
    PropIDFromName = CharProperties::GetPropIDFromName(a2, v6);
    if ( PropIDFromName != -1 )
    {
      Int = CharProperties::PROPS_GetInt((Character *)((char *)character_660 + 1376), PropIDFromName, 0);
      sprintf(s, "%d", Int);
      RenderFX::SetMember(a3[1], "_root", "retval", s);
    }
  }
  return 1;
}


// ===== 4218e4 playerClassAsStr(void) =====
char *playerClassAsStr()
{
  Character *character_660; // r3
  int v1; // r3

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( !character_660 )
    return nullptr;
  v1 = *((__int16 *)character_660 + 2532);
  if ( v1 == 290 )
    return "mage";
  if ( v1 != 325 )
  {
    if ( v1 == 263 )
      return "warrior";
    return nullptr;
  }
  return "rogue";
}


// ===== 421980 MenuBase::FS_GetPlayerClass2(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetPlayerClass2(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  RenderFX *v4; // r4
  char *v5; // r0

  v4 = *((RenderFX **)a3 + 1);
  v5 = playerClassAsStr();
  RenderFX::SetMember(v4, "_root", "retval", v5);
  return 1;
}


// ===== 4219b8 MenuBase::FS_AssignPoint(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_AssignPoint(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *character_660; // r5

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( !character_660 )
    return 0;
  if ( LC_API_STRCMP_0(a2, "Str") )
  {
    if ( LC_API_STRCMP_0(a2, "Dex") )
    {
      if ( LC_API_STRCMP_0(a2, "End") )
      {
        if ( LC_API_STRCMP_0(a2, "Eng") )
          return 0;
        Character::IncStatNrg(character_660);
        return 1;
      }
      else
      {
        Character::IncStatEnd(character_660);
        return 1;
      }
    }
    else
    {
      Character::IncStatDex(character_660);
      return 1;
    }
  }
  else
  {
    Character::IncStatStr(character_660);
    return 1;
  }
}


// ===== 421aac MenuBase::FS_GetNumPotions(char const*,char const*,void *) =====
Character *__fastcall MenuBase::FS_GetNumPotions(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  Character *result; // r0
  double NumPotions; // r0
  unsigned int v7; // r12
  _BYTE v8[4]; // [sp+4h] [bp-18h] BYREF
  unsigned __int64 v9; // [sp+8h] [bp-14h]
  double v10; // [sp+10h] [bp-Ch]

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    v8[0] = 0;
    v8[1] = 2;
    NumPotions = (double)ItemInventory::GetNumPotions((Character *)((char *)result + 892));
    v10 = NumPotions;
    v7 = LODWORD(NumPotions);
    LODWORD(NumPotions) = *((_DWORD *)a3 + 1);
    v9 = __PAIR64__(HIDWORD(NumPotions), v7);
    RenderFX::SetMember((RenderFX *)LODWORD(NumPotions), "_root", "retval", (gameswf::as_value *)v8);
    gameswf::as_value::drop_refs((gameswf::as_value *)v8);
    return (Character *)(&dword_0 + 1);
  }
  return result;
}


// ===== 421b58 MenuBase::FS_GetOption(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GetOption(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  double Option; // r0
  unsigned int v7; // r12
  _BYTE v8[4]; // [sp+4h] [bp-18h] BYREF
  unsigned __int64 v9; // [sp+8h] [bp-14h]
  double v10; // [sp+10h] [bp-Ch]

  if ( !a2 )
    return 0;
  v8[0] = 0;
  v8[1] = 2;
  Option = (double)(int)SavegameManager::getOption((SavegameManager *)dword_99F778, a2 + 7);
  v10 = Option;
  v7 = LODWORD(Option);
  LODWORD(Option) = *((_DWORD *)a3 + 1);
  v9 = __PAIR64__(HIDWORD(Option), v7);
  RenderFX::SetMember((RenderFX *)LODWORD(Option), "_root", "retval", (gameswf::as_value *)v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  return 1;
}


// ===== 421bf8 MenuMessageManager<DialogMsg,1>::Invoke(char const*,int) [clone] =====
RenderFX *__fastcall MenuMessageManager<DialogMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  RenderFX *result; // r0
  RenderFX *v4; // r5
  int v5; // r10
  gameswf::character *Char; // r0
  _BYTE v7[4]; // [sp+Ch] [bp-18h] BYREF
  int v8; // [sp+10h] [bp-14h]
  int v9; // [sp+14h] [bp-10h]
  int v10; // [sp+18h] [bp-Ch]
  int v11; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  v4 = result;
  if ( result )
  {
    if ( dword_9A5474 )
    {
      v5 = *(unsigned __int8 *)(dword_9A5470 + 4);
      if ( *(_BYTE *)(dword_9A5470 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar);
        v7[0] = 0;
        v10 = 0;
        v11 = 0;
        v7[1] = 2;
        v8 = 0;
        v9 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v7, 1);
        return (RenderFX *)gameswf::as_value::drop_refs((gameswf::as_value *)v7);
      }
      gameswf::smart_ptr_proxy::operator=(&dword_9A5470, *(unsigned __int8 *)(dword_9A5470 + 4));
      dword_9A5474 = v5;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
      DialogMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 421ce0 MenuBase::FS_IncSkill(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_IncSkill(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  Character *character_660; // r6
  int v8; // r0
  unsigned int v9; // r0
  int SkillLevel; // r0
  char s[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a2 || !*a2 )
    return 0;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
  {
    v8 = LC_API_ATOI_0(a2);
    Character::IncSkill(character_660, v8, 0);
    v9 = LC_API_ATOI_0(a2);
    SkillLevel = Character::SG_GetSkillLevel(character_660, v9);
    sprintf(s, "%d", SkillLevel);
    RenderFX::SetMember(a3[1], "_root", "retval", s);
  }
  return 1;
}

