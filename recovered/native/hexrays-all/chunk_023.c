// ===== 5011d4 Structs::KillActor::read(IStreamBase *) =====
int __fastcall Structs::KillActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501294 Structs::HideActor::read(IStreamBase *) =====
int __fastcall Structs::HideActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501354 Structs::ShowActor::read(IStreamBase *) =====
int __fastcall Structs::ShowActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501414 Structs::LookActor::read(IStreamBase *) =====
int __fastcall Structs::LookActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  int result; // r0
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v12) = 1;
  v7 = *(this + 5);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v9 = *(this + 4);
  *(this + 5) = (char *)v8;
  result = StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  return result;
}


// ===== 501578 Structs::MoveActor::read(IStreamBase *) =====
int __fastcall Structs::MoveActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<bool>((int)a2, (int)(this + 4));
  StreamReader::readAs<unsigned int>(a2, this + 5);
  HIDWORD(v12) = 1;
  v7 = *(this + 6);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 5) + 1, 1);
  v9 = *(this + 5);
  *(this + 6) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 5))[(_DWORD)*(this + 6)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 7));
}


// ===== 5016f4 Structs::StopActor::read(IStreamBase *) =====
int __fastcall Structs::StopActor::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 5017b4 Structs::AISetInt::read(IStreamBase *) =====
int __fastcall Structs::AISetInt::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v12) = 1;
  v7 = *(this + 5);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v9 = *(this + 4);
  *(this + 5) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  return StreamReader::readAs<int>((int)a2, (int)(this + 6));
}


// ===== 501974 Structs::AIChangeScript::read(IStreamBase *) =====
int __fastcall Structs::AIChangeScript::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  int result; // r0
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v12) = 1;
  v7 = *(this + 5);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v9 = *(this + 4);
  *(this + 5) = (char *)v8;
  result = StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  return result;
}


// ===== 501ad8 Structs::AIDoSkill::read(IStreamBase *) =====
int __fastcall Structs::AIDoSkill::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return result;
}


// ===== 501bf4 Structs::MarkCharacterAsScripted::read(IStreamBase *) =====
int __fastcall Structs::MarkCharacterAsScripted::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<bool>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return result;
}


// ===== 501cc0 Structs::PutCharacterInIdle::read(IStreamBase *) =====
int __fastcall Structs::PutCharacterInIdle::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501d80 Structs::SpawnCharacter::read(IStreamBase *) =====
int __fastcall Structs::SpawnCharacter::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501e40 Structs::PutCharacterInLimbus::read(IStreamBase *) =====
int __fastcall Structs::PutCharacterInLimbus::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<bool>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return result;
}


// ===== 501f0c Structs::UnlockCharacter::read(IStreamBase *) =====
int __fastcall Structs::UnlockCharacter::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 501fcc Structs::LockCharacter::read(IStreamBase *) =====
int __fastcall Structs::LockCharacter::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 50208c Structs::HideFlash::read(IStreamBase *) =====
int __fastcall Structs::HideFlash::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 5));
}


// ===== 5021b4 Structs::HideHUD::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::HideHUD::read(char **this, IStreamBase *a2)
{
  return Structs::HideFlash::read(this, a2);
}


// ===== 5021b8 Structs::ShowFlash::read(IStreamBase *) =====
int __fastcall Structs::ShowFlash::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 5));
}


// ===== 5022e0 Structs::ShowHUD::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::ShowHUD::read(char **this, IStreamBase *a2)
{
  return Structs::ShowFlash::read(this, a2);
}


// ===== 5022e4 Structs::PlayEffect::read(IStreamBase *) =====
int __fastcall Structs::PlayEffect::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  Structs::Pos3D::read((Structs::Pos3D *)(this + 3), a2);
  StreamReader::readAs<unsigned int>(a2, this + 7);
  HIDWORD(v8) = 1;
  v4 = *(this + 8);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 7) + 1, 1);
  v6 = *(this + 7);
  *(this + 8) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 7))[(_DWORD)*(this + 8)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 9));
}


// ===== 502418 Structs::PlayAnimByName::read(IStreamBase *) =====
int __fastcall Structs::PlayAnimByName::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<bool>((int)a2, (int)(this + 4));
  StreamReader::readAs<unsigned int>(a2, this + 5);
  HIDWORD(v12) = 1;
  v7 = *(this + 6);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 5) + 1, 1);
  v9 = *(this + 5);
  *(this + 6) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 5))[(_DWORD)*(this + 6)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 7));
}


// ===== 502594 Structs::PlayAnimById::read(IStreamBase *) =====
int __fastcall Structs::PlayAnimById::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  StreamReader::readAs<bool>((int)a2, (int)(this + 3));
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v8) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 6));
}


// ===== 5026c8 Structs::SetCameraTarget::read(IStreamBase *) =====
int __fastcall Structs::SetCameraTarget::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<int>((int)a2, (int)(this + 2));
  StreamReader::readAs<unsigned int>(a2, this + 3);
  HIDWORD(v8) = 1;
  v4 = *(this + 4);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 3) + 1, 1);
  v6 = *(this + 3);
  *(this + 4) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 3))[(_DWORD)*(this + 4)] = 0;
  return StreamReader::readAs<bool>((int)a2, (int)(this + 5));
}


// ===== 5027f0 Structs::SetCamera::read(IStreamBase *) =====
int __fastcall Structs::SetCamera::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v11) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v12) = 1;
  v7 = *(this + 5);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v9 = *(this + 4);
  *(this + 5) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 6));
  return StreamReader::readAs<bool>((int)a2, (int)(this + 7));
}


// ===== 5029bc Structs::CONSOLE::read(IStreamBase *) =====
int __fastcall Structs::CONSOLE::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  Structs::ScriptCmd::read((Structs::ScriptCmd *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 2);
  HIDWORD(v8) = 1;
  v4 = *(this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 2) + 1, 1);
  v6 = *(this + 2);
  *(this + 3) = (char *)v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  (*(this + 2))[(_DWORD)*(this + 3)] = 0;
  return result;
}


// ===== 502a7c Structs::LockTutorial::read(IStreamBase *) =====
int __fastcall Structs::LockTutorial::read(Structs::LockTutorial *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 502af4 Structs::SoundAutoGen::read(IStreamBase *) =====
int __fastcall Structs::SoundAutoGen::read(Structs::SoundAutoGen *this, IStreamBase *a2)
{
  StreamReader::readAs<int>((int)a2, (int)this + 4);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 502bc4 Structs::SoundEventAutoGen::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::SoundEventAutoGen::read(Structs::SoundAutoGen *this, IStreamBase *a2)
{
  return Structs::SoundAutoGen::read(this, a2);
}


// ===== 502bc8 Structs::SoundBank::read(IStreamBase *) =====
int __fastcall Structs::SoundBank::read(Structs::SoundBank *this, IStreamBase *a2)
{
  StreamReader::readAs<int>((int)a2, (int)this + 4);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 502c98 Structs::SpawnInfo::read(IStreamBase *) =====
int __fastcall Structs::SpawnInfo::read(Structs::SpawnInfo *this, IStreamBase *a2)
{
  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 502dc4 Structs::EnqueueTutorialMessage::read(IStreamBase *) =====
int __fastcall Structs::EnqueueTutorialMessage::read(Structs::EnqueueTutorialMessage *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 502e98 Structs::AwardTrophy::read(IStreamBase *) =====
int __fastcall Structs::AwardTrophy::read(Structs::AwardTrophy *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 502f10 Structs::SetWorldMapLocationState::read(IStreamBase *) =====
int __fastcall Structs::SetWorldMapLocationState::read(Structs::SetWorldMapLocationState *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 502fe4 Structs::SetLevelState::read(IStreamBase *) =====
int __fastcall Structs::SetLevelState::read(Structs::SetLevelState *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 5030b8 Structs::AISetHP::read(IStreamBase *) =====
int __fastcall Structs::AISetHP::read(Structs::AISetHP *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 503130 Structs::IncFaeryLevel::read(IStreamBase *) =====
int __fastcall Structs::IncFaeryLevel::read(Structs::IncFaeryLevel *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 5031a8 Structs::SetFaeryState::read(IStreamBase *) =====
int __fastcall Structs::SetFaeryState::read(Structs::SetFaeryState *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 50327c Structs::Wait::read(IStreamBase *) =====
int __fastcall Structs::Wait::read(Structs::Wait *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 5032f4 Structs::StopEffect::read(IStreamBase *) =====
int __fastcall Structs::StopEffect::read(Structs::StopEffect *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 50336c Structs::PlayLevelMusic::read(IStreamBase *) =====
int __fastcall Structs::PlayLevelMusic::read(Structs::PlayLevelMusic *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 5033e4 Structs::StartDialogID::read(IStreamBase *) =====
int __fastcall Structs::StartDialogID::read(Structs::StartDialogID *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  return StreamReader::readAs<int>((int)a2, (int)this + 8);
}


// ===== 50345c Structs::StartDialog::read(IStreamBase *) =====
int __fastcall Structs::StartDialog::read(Structs::StartDialog *this, IStreamBase *a2)
{
  Structs::ScriptCmd::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  return StreamReader::readAs<int>((int)a2, (int)this + 16);
}


// ===== 50358c Structs::v2QuestObjective::read(IStreamBase *) =====
int __fastcall Structs::v2QuestObjective::read(Structs::v2QuestObjective *this, IStreamBase *a2)
{
  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 5036b8 Structs::v2QuestMoveInZone::read(IStreamBase *) =====
int __fastcall Structs::v2QuestMoveInZone::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 6);
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 6) + 1, 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>(a2, this + 8);
  StreamReader::readAs<int>(a2, this + 9);
  return StreamReader::readAs<int>(a2, this + 10);
}


// ===== 503930 Structs::v2QuestGatherLoot::read(IStreamBase *) =====
int __fastcall Structs::v2QuestGatherLoot::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 503ba8 Structs::v2QuestClearEnemyTemplate::read(IStreamBase *) =====
int __fastcall Structs::v2QuestClearEnemyTemplate::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 503e20 Structs::v2QuestKillEnemyTemplate::read(IStreamBase *) =====
int __fastcall Structs::v2QuestKillEnemyTemplate::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 504098 Structs::v2QuestClearEnemies::read(IStreamBase *) =====
int __fastcall Structs::v2QuestClearEnemies::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 504310 Structs::v2QuestKillEnemies::read(IStreamBase *) =====
int __fastcall Structs::v2QuestKillEnemies::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 504588 Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(IStreamBase *) =====
int __fastcall Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>(a2, this + 4);
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*(this + 4) + 1, 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>(a2, this + 6);
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[](*(this + 6) + 1, 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>(a2, this + 8);
  StreamReader::readAs<int>(a2, this + 9);
  return StreamReader::readAs<int>(a2, this + 10);
}


// ===== 504800 Structs::v2QuestTalkToNPC::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestTalkToNPC::read(Structs::v2QuestTalkToNPC *this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 504804 Structs::v2QuestPickedUpLiftable::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestPickedUpLiftable::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 504808 Structs::v2QuestTriggerOn::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestTriggerOn::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 50480c Structs::v2QuestTriggerPlate::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestTriggerPlate::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 504810 Structs::v2QuestOpenGameObject::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestOpenGameObject::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 504814 Structs::v2QuestDestroyGameObject::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestDestroyGameObject::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(this, a2);
}


// ===== 504818 Structs::v2QuestObjectiveStub::read(IStreamBase *) =====
int __fastcall Structs::v2QuestObjectiveStub::read(char **this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  IStreamBase *v8; // r0
  char *v9; // r2
  unsigned __int64 v11; // [sp+0h] [bp-8h]
  unsigned __int64 v12; // [sp+0h] [bp-8h]

  Structs::v2QuestObjective::read((Structs::v2QuestObjective *)this, a2);
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 4));
  HIDWORD(v11) = 1;
  v4 = *(this + 5);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[]((size_t)(*(this + 4) + 1), 1);
  v6 = *(this + 4);
  *(this + 5) = (char *)v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v11);
  (*(this + 4))[(_DWORD)*(this + 5)] = 0;
  StreamReader::readAs<unsigned int>((int)a2, (int)(this + 6));
  HIDWORD(v12) = 1;
  v7 = *(this + 7);
  if ( v7 )
    CustomFree(v7);
  v8 = (IStreamBase *)operator new[]((size_t)(*(this + 6) + 1), 1);
  v9 = *(this + 6);
  *(this + 7) = (char *)v8;
  StreamReader::readStringEx(a2, v8, v9, 0, v12);
  (*(this + 6))[(_DWORD)*(this + 7)] = 0;
  StreamReader::readAs<int>((int)a2, (int)(this + 8));
  StreamReader::readAs<int>((int)a2, (int)(this + 9));
  return StreamReader::readAs<int>((int)a2, (int)(this + 10));
}


// ===== 504a90 Structs::v2QuestAutomatic::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestAutomatic::read(char **this, IStreamBase *a2)
{
  return Structs::v2QuestObjectiveStub::read(this, a2);
}


// ===== 504a94 Structs::v2Quest::read(IStreamBase *) =====
int __fastcall Structs::v2Quest::read(Structs::v2Quest *this, IStreamBase *a2)
{
  int v4; // r3
  int v5; // r0
  int v6; // r6
  int v7; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  int i; // r2
  int v11; // r2
  int v12; // r6
  int v13; // r3
  int v14; // r0
  int v15; // r6
  int v16; // r6
  _DWORD *v17; // r0
  _DWORD *v18; // r3
  int v19; // r2
  int v20; // r2
  int v21; // r6
  unsigned int v22; // r7
  int v23; // r3
  int v24; // r0
  int v25; // r6
  int v26; // r6
  _DWORD *v27; // r0
  _DWORD *v28; // r3
  int j; // r2
  int v30; // r2
  int v31; // r6
  int v32; // r3
  int v33; // r0
  int v34; // r6
  int v35; // r6
  _DWORD *v36; // r0
  _DWORD *v37; // r3
  int k; // r2
  int v39; // r2
  int v40; // r6
  int v41; // r3
  int v42; // r0
  int v43; // r6
  int v44; // r6
  _DWORD *v45; // r0
  _DWORD *v46; // r3
  int m; // r2
  int v48; // r2
  int v49; // r6

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  StreamReader::readAs<int>((int)a2, (int)this + 16);
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 20);
  v4 = *((_DWORD *)this + 6);
  if ( v4 )
  {
    v5 = v4 + 16 * *(_DWORD *)(v4 - 4);
    if ( v4 != v5 )
    {
      while ( 1 )
      {
        v6 = v5 - 16;
        (**(void (__fastcall ***)(int))(v5 - 16))(v5 - 16);
        v5 = *((_DWORD *)this + 6);
        if ( v5 == v6 )
          break;
        v5 = v6;
      }
    }
    CustomFree((void *)(v5 - 8));
  }
  v7 = *((_DWORD *)this + 5);
  v8 = operator new[](16 * v7 + 8, 1);
  *v8 = 16;
  v8[1] = v7;
  v9 = v8 + 2;
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      v8[2] = off_96A318;
      v8 += 4;
    }
  }
  v11 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 6) = v9;
  if ( v11 )
  {
    v12 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v9[4 * v12] + 12))(&v9[4 * v12], a2);
      if ( *((_DWORD *)this + 5) <= (unsigned int)++v12 )
        break;
      v9 = *((_DWORD **)this + 6);
    }
  }
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 28);
  v13 = *((_DWORD *)this + 8);
  if ( v13 )
  {
    v14 = v13 + 44 * *(_DWORD *)(v13 - 4);
    if ( v13 != v14 )
    {
      while ( 1 )
      {
        v15 = v14 - 44;
        (**(void (__fastcall ***)(int))(v14 - 44))(v14 - 44);
        v14 = *((_DWORD *)this + 8);
        if ( v14 == v15 )
          break;
        v14 = v15;
      }
    }
    CustomFree((void *)(v14 - 8));
  }
  v16 = *((_DWORD *)this + 7);
  v17 = operator new[](44 * v16 + 8, 1);
  *v17 = 44;
  v17[1] = v16;
  v18 = v17 + 2;
  if ( v16 )
  {
    v19 = 0;
    do
    {
      ++v19;
      v17[2] = off_96A030;
      v17[7] = 0;
      v17[9] = 0;
      v17 += 11;
    }
    while ( v19 != v16 );
  }
  v20 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 8) = v18;
  if ( v20 )
  {
    v21 = 0;
    v22 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v18[v21] + 12))(&v18[v21], a2);
      ++v22;
      v21 += 11;
      if ( *((_DWORD *)this + 7) <= v22 )
        break;
      v18 = *((_DWORD **)this + 8);
    }
  }
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 36);
  v23 = *((_DWORD *)this + 10);
  if ( v23 )
  {
    v24 = v23 + 16 * *(_DWORD *)(v23 - 4);
    if ( v23 != v24 )
    {
      while ( 1 )
      {
        v25 = v24 - 16;
        (**(void (__fastcall ***)(int))(v24 - 16))(v24 - 16);
        v24 = *((_DWORD *)this + 10);
        if ( v24 == v25 )
          break;
        v24 = v25;
      }
    }
    CustomFree((void *)(v24 - 8));
  }
  v26 = *((_DWORD *)this + 9);
  v27 = operator new[](16 * v26 + 8, 1);
  *v27 = 16;
  v27[1] = v26;
  v28 = v27 + 2;
  if ( v26 )
  {
    for ( j = 0; j != v26; ++j )
    {
      v27[2] = off_96A060;
      v27 += 4;
    }
  }
  v30 = *((_DWORD *)this + 9);
  *((_DWORD *)this + 10) = v28;
  if ( v30 )
  {
    v31 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v28[4 * v31] + 12))(&v28[4 * v31], a2);
      if ( *((_DWORD *)this + 9) <= (unsigned int)++v31 )
        break;
      v28 = *((_DWORD **)this + 10);
    }
  }
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 44);
  v32 = *((_DWORD *)this + 12);
  if ( v32 )
  {
    v33 = v32 + 16 * *(_DWORD *)(v32 - 4);
    if ( v32 != v33 )
    {
      while ( 1 )
      {
        v34 = v33 - 16;
        (**(void (__fastcall ***)(int))(v33 - 16))(v33 - 16);
        v33 = *((_DWORD *)this + 12);
        if ( v33 == v34 )
          break;
        v33 = v34;
      }
    }
    CustomFree((void *)(v33 - 8));
  }
  v35 = *((_DWORD *)this + 11);
  v36 = operator new[](16 * v35 + 8, 1);
  *v36 = 16;
  v36[1] = v35;
  v37 = v36 + 2;
  if ( v35 )
  {
    for ( k = 0; k != v35; ++k )
    {
      v36[2] = off_96A060;
      v36 += 4;
    }
  }
  v39 = *((_DWORD *)this + 11);
  *((_DWORD *)this + 12) = v37;
  if ( v39 )
  {
    v40 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v37[4 * v40] + 12))(&v37[4 * v40], a2);
      if ( *((_DWORD *)this + 11) <= (unsigned int)++v40 )
        break;
      v37 = *((_DWORD **)this + 12);
    }
  }
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 52);
  v41 = *((_DWORD *)this + 14);
  if ( v41 )
  {
    v42 = v41 + 16 * *(_DWORD *)(v41 - 4);
    if ( v41 != v42 )
    {
      while ( 1 )
      {
        v43 = v42 - 16;
        (**(void (__fastcall ***)(int))(v42 - 16))(v42 - 16);
        v42 = *((_DWORD *)this + 14);
        if ( v42 == v43 )
          break;
        v42 = v43;
      }
    }
    CustomFree((void *)(v42 - 8));
  }
  v44 = *((_DWORD *)this + 13);
  v45 = operator new[](16 * v44 + 8, 1);
  *v45 = 16;
  v45[1] = v44;
  v46 = v45 + 2;
  if ( v44 )
  {
    for ( m = 0; m != v44; ++m )
    {
      v45[2] = off_96A060;
      v45 += 4;
    }
  }
  v48 = *((_DWORD *)this + 13);
  *((_DWORD *)this + 14) = v46;
  if ( v48 )
  {
    v49 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v46[4 * v49] + 12))(&v46[4 * v49], a2);
      if ( *((_DWORD *)this + 13) <= (unsigned int)++v49 )
        break;
      v46 = *((_DWORD **)this + 14);
    }
  }
  Structs::v2QuestObjectiveStub::read((char **)this + 15, a2);
  Structs::v2QuestObjectiveStub::read((char **)this + 26, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 148);
  StreamReader::readAs<bool>((int)a2, (int)this + 152);
  StreamReader::readAs<int>((int)a2, (int)this + 156);
  Structs::v2QuestScripts::read((Structs::v2Quest *)((char *)this + 160), a2);
  StreamReader::readAs<int>((int)a2, (int)this + 276);
  return StreamReader::readAs<int>((int)a2, (int)this + 280);
}


// ===== 5053fc Structs::v2QuestReward::read(IStreamBase *) =====
int __fastcall Structs::v2QuestReward::read(Structs::v2QuestReward *this, IStreamBase *a2)
{
  return StreamReader::readAs<int>((int)a2, (int)this + 4);
}


// ===== 50546c Structs::v2QuestRewardConsumeLoot::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardConsumeLoot::read(Structs::v2QuestRewardConsumeLoot *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505540 Structs::v2QuestRewardGiveLoot::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardGiveLoot::read(Structs::v2QuestRewardGiveLoot *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505614 Structs::v2QuestRewardGiveCharProps::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardGiveCharProps::read(Structs::v2QuestRewardGiveCharProps *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 5056e8 Structs::v2QuestRewardGiveMaxMPBonus::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestRewardGiveMaxMPBonus::read(Structs::v2QuestRewardGiveCharProps *this, IStreamBase *a2)
{
  return Structs::v2QuestRewardGiveCharProps::read(this, a2);
}


// ===== 5056ec Structs::v2QuestRewardGiveStatPoint::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestRewardGiveStatPoint::read(Structs::v2QuestRewardGiveCharProps *this, IStreamBase *a2)
{
  return Structs::v2QuestRewardGiveCharProps::read(this, a2);
}


// ===== 5056f0 Structs::v2QuestRewardGiveSkillPoint::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2QuestRewardGiveSkillPoint::read(Structs::v2QuestRewardGiveCharProps *this, IStreamBase *a2)
{
  return Structs::v2QuestRewardGiveCharProps::read(this, a2);
}


// ===== 5056f4 Structs::v2QuestRewardGiveGold::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardGiveGold::read(Structs::v2QuestRewardGiveGold *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 5057c8 Structs::v2QuestRewardGiveXP::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardGiveXP::read(Structs::v2QuestRewardGiveXP *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 50589c Structs::v2QuestRewardStub::read(IStreamBase *) =====
int __fastcall Structs::v2QuestRewardStub::read(Structs::v2QuestRewardStub *this, IStreamBase *a2)
{
  Structs::v2QuestReward::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505970 Structs::v2CondAnd::read(IStreamBase *) =====
int __fastcall Structs::v2CondAnd::read(Structs::v2CondAnd *this, IStreamBase *a2)
{
  int v4; // r3
  int v5; // r0
  int v6; // r4
  int v7; // r4
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  int i; // r2
  int v11; // r2
  int v12; // r4

  StreamReader::readAs<unsigned int>((int)a2, (int)this + 4);
  v4 = *((_DWORD *)this + 2);
  if ( v4 )
  {
    v5 = v4 + 16 * *(_DWORD *)(v4 - 4);
    if ( v4 != v5 )
    {
      while ( 1 )
      {
        v6 = v5 - 16;
        (**(void (__fastcall ***)(int))(v5 - 16))(v5 - 16);
        v5 = *((_DWORD *)this + 2);
        if ( v5 == v6 )
          break;
        v5 = v6;
      }
    }
    CustomFree((void *)(v5 - 8));
  }
  v7 = *((_DWORD *)this + 1);
  v8 = operator new[](16 * v7 + 8, 1);
  *v8 = 16;
  v8[1] = v7;
  v9 = v8 + 2;
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      v8[2] = off_96A318;
      v8 += 4;
    }
  }
  v11 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 2) = v9;
  if ( v11 )
  {
    v12 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD *, IStreamBase *))(v9[4 * v12] + 12))(&v9[4 * v12], a2);
      if ( *((_DWORD *)this + 1) <= (unsigned int)++v12 )
        break;
      v9 = *((_DWORD **)this + 2);
    }
  }
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505b28 Structs::v2Condition::read(IStreamBase *) =====
int __fastcall Structs::v2Condition::read(Structs::v2Condition *this, IStreamBase *a2)
{
  return StreamReader::readAs<int>((int)a2, (int)this + 4);
}


// ===== 505b98 Structs::v2IsEventInState::read(IStreamBase *) =====
int __fastcall Structs::v2IsEventInState::read(Structs::v2IsEventInState *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505c6c Structs::v2IsEventCompleted::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsEventCompleted::read(Structs::v2IsEventInState *this, IStreamBase *a2)
{
  return Structs::v2IsEventInState::read(this, a2);
}


// ===== 505c70 Structs::v2IsEventInactive::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsEventInactive::read(Structs::v2IsEventInState *this, IStreamBase *a2)
{
  return Structs::v2IsEventInState::read(this, a2);
}


// ===== 505c74 Structs::v2IsEventActive::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsEventActive::read(Structs::v2IsEventInState *this, IStreamBase *a2)
{
  return Structs::v2IsEventInState::read(this, a2);
}


// ===== 505c78 Structs::v2IsPlayerInLevel::read(IStreamBase *) =====
int __fastcall Structs::v2IsPlayerInLevel::read(Structs::v2IsPlayerInLevel *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505d4c Structs::v2IsQuestStateHigher::read(IStreamBase *) =====
int __fastcall Structs::v2IsQuestStateHigher::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505e20 Structs::v2IsQuestHigherThenPostClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenPostClosed::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e24 Structs::v2IsQuestHigherThenClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenClosed::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e28 Structs::v2IsQuestHigherThenCompleted::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenCompleted::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e2c Structs::v2IsQuestHigherThenActive::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenActive::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e30 Structs::v2IsQuestHigherThenAvailable::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenAvailable::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e34 Structs::v2IsQuestHigherThenLocked::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestHigherThenLocked::read(Structs::v2IsQuestStateHigher *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateHigher::read(this, a2);
}


// ===== 505e38 Structs::v2IsQuestStateLower::read(IStreamBase *) =====
int __fastcall Structs::v2IsQuestStateLower::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505f0c Structs::v2IsQuestLowerThenPostClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenPostClosed::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f10 Structs::v2IsQuestLowerThenClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenClosed::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f14 Structs::v2IsQuestLowerThenCompleted::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenCompleted::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f18 Structs::v2IsQuestLowerThenActive::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenActive::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f1c Structs::v2IsQuestLowerThenAvailable::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenAvailable::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f20 Structs::v2IsQuestLowerThenLocked::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLowerThenLocked::read(Structs::v2IsQuestStateLower *this, IStreamBase *a2)
{
  return Structs::v2IsQuestStateLower::read(this, a2);
}


// ===== 505f24 Structs::v2IsQuestInState::read(IStreamBase *) =====
int __fastcall Structs::v2IsQuestInState::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 505ff8 Structs::v2IsQuestPostClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestPostClosed::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  return Structs::v2IsQuestInState::read(this, a2);
}


// ===== 505ffc Structs::v2IsQuestClosed::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestClosed::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  return Structs::v2IsQuestInState::read(this, a2);
}


// ===== 506000 Structs::v2IsQuestCompleted::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestCompleted::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  return Structs::v2IsQuestInState::read(this, a2);
}


// ===== 506004 Structs::v2IsQuestActive::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestActive::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  return Structs::v2IsQuestInState::read(this, a2);
}


// ===== 506008 Structs::v2IsQuestLocked::read(IStreamBase *) =====
// attributes: thunk
int __fastcall Structs::v2IsQuestLocked::read(Structs::v2IsQuestInState *this, IStreamBase *a2)
{
  return Structs::v2IsQuestInState::read(this, a2);
}


// ===== 50600c Structs::v2ConditionStub::read(IStreamBase *) =====
int __fastcall Structs::v2ConditionStub::read(Structs::v2ConditionStub *this, IStreamBase *a2)
{
  Structs::v2Condition::read(this, a2);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  return StreamReader::readAs<int>((int)a2, (int)this + 12);
}


// ===== 5060e0 Structs::Trophy::read(IStreamBase *) =====
int __fastcall Structs::Trophy::read(Structs::Trophy *this, IStreamBase *a2)
{
  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  StreamReader::readAs<int>((int)a2, (int)this + 16);
  StreamReader::readAs<int>((int)a2, (int)this + 20);
  StreamReader::readAs<int>((int)a2, (int)this + 24);
  return StreamReader::readAs<int>((int)a2, (int)this + 28);
}


// ===== 50637c Structs::Faery::read(IStreamBase *) =====
int __fastcall Structs::Faery::read(Structs::Faery *this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  StreamReader::readAs<int>((int)a2, (int)this + 16);
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 20);
  HIDWORD(v8) = 1;
  v4 = *((void **)this + 6);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*((_DWORD *)this + 5) + 1, 1);
  v6 = *((char **)this + 5);
  *((_DWORD *)this + 6) = v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v8);
  *(_BYTE *)(*((_DWORD *)this + 6) + *((_DWORD *)this + 5)) = 0;
  StreamReader::readAs<int>((int)a2, (int)this + 28);
  return StreamReader::readAs<int>((int)a2, (int)this + 32);
}


// ===== 506660 Structs::FootstepEffect::read(IStreamBase *) =====
int __fastcall Structs::FootstepEffect::read(Structs::FootstepEffect *this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  void *v7; // r0
  int v8; // r0
  int v9; // r3
  unsigned int v10; // r6
  void *v11; // r0
  int result; // r0
  int v13; // r3
  unsigned int v14; // r6
  unsigned __int64 v15; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<unsigned int>(a2, (char *)this + 8);
  HIDWORD(v15) = 1;
  v4 = *((void **)this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*((_DWORD *)this + 2) + 1, 1);
  v6 = *((char **)this + 2);
  *((_DWORD *)this + 3) = v5;
  StreamReader::readStringEx(a2, v5, v6, v15);
  *(_BYTE *)(*((_DWORD *)this + 3) + *((_DWORD *)this + 2)) = 0;
  StreamReader::readAs<unsigned int>(a2, (char *)this + 16);
  v7 = *((void **)this + 5);
  if ( v7 )
    CustomFree(v7);
  v8 = operator new[](4 * *((_DWORD *)this + 4), 1);
  v9 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 5) = v8;
  if ( v9 )
  {
    v10 = 0;
    while ( 1 )
    {
      StreamReader::readAs<int>((int)a2, v8 + 4 * v10++);
      if ( *((_DWORD *)this + 4) <= v10 )
        break;
      v8 = *((_DWORD *)this + 5);
    }
  }
  StreamReader::readAs<unsigned int>(a2, (char *)this + 24);
  v11 = *((void **)this + 7);
  if ( v11 )
    CustomFree(v11);
  result = operator new[](4 * *((_DWORD *)this + 6), 1);
  v13 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 7) = result;
  if ( v13 )
  {
    v14 = 0;
    while ( 1 )
    {
      result = StreamReader::readAs<int>((int)a2, result + 4 * v14++);
      if ( *((_DWORD *)this + 6) <= v14 )
        break;
      result = *((_DWORD *)this + 7);
    }
  }
  return result;
}


// ===== 506990 Structs::AnimFX::read(IStreamBase *) =====
int __fastcall Structs::AnimFX::read(Structs::AnimFX *this, IStreamBase *a2)
{
  int v4; // r2
  int v5; // r2
  int v6; // r2
  int v7; // r2
  int v8; // r2
  void *v9; // r0
  IStreamBase *v10; // r0
  char *v11; // r2
  int result; // r0
  unsigned __int64 v13; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<bool>(a2, (char *)this + 8, v4);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  StreamReader::readAs<bool>(a2, (char *)this + 16, v5);
  StreamReader::readAs<bool>(a2, (char *)this + 17, v6);
  StreamReader::readAs<int>((int)a2, (int)this + 20);
  StreamReader::readAs<int>((int)a2, (int)this + 24);
  StreamReader::readAs<int>((int)a2, (int)this + 28);
  StreamReader::readAs<bool>(a2, (char *)this + 32, v7);
  StreamReader::readAs<bool>(a2, (char *)this + 33, v8);
  StreamReader::readAs<float>(a2, (char *)this + 36);
  StreamReader::readAs<unsigned int>(a2, (char *)this + 40);
  HIDWORD(v13) = 1;
  v9 = *((void **)this + 11);
  if ( v9 )
    CustomFree(v9);
  v10 = (IStreamBase *)operator new[](*((_DWORD *)this + 10) + 1, 1);
  v11 = *((char **)this + 10);
  *((_DWORD *)this + 11) = v10;
  result = StreamReader::readStringEx(a2, v10, v11, v13);
  *(_BYTE *)(*((_DWORD *)this + 11) + *((_DWORD *)this + 10)) = 0;
  return result;
}


// ===== 506cb0 Structs::DialogCondition::read(IStreamBase *) =====
int __fastcall Structs::DialogCondition::read(Structs::DialogCondition *this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  int result; // r0
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<unsigned int>(a2, (char *)this + 8);
  HIDWORD(v8) = 1;
  v4 = *((void **)this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*((_DWORD *)this + 2) + 1, 1);
  v6 = *((char **)this + 2);
  *((_DWORD *)this + 3) = v5;
  result = StreamReader::readStringEx(a2, v5, v6, v8);
  *(_BYTE *)(*((_DWORD *)this + 3) + *((_DWORD *)this + 2)) = 0;
  return result;
}


// ===== 506dc8 Structs::DialogActor::read(IStreamBase *) =====
int __fastcall Structs::DialogActor::read(Structs::DialogActor *this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<unsigned int>(a2, (char *)this + 8);
  HIDWORD(v8) = 1;
  v4 = *((void **)this + 3);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*((_DWORD *)this + 2) + 1, 1);
  v6 = *((char **)this + 2);
  *((_DWORD *)this + 3) = v5;
  StreamReader::readStringEx(a2, v5, v6, v8);
  *(_BYTE *)(*((_DWORD *)this + 3) + *((_DWORD *)this + 2)) = 0;
  return StreamReader::readAs<int>((int)a2, (int)this + 16);
}


// ===== 506f3c Structs::AIProps::read(IStreamBase *) =====
int __fastcall Structs::AIProps::read(Structs::AIProps *this, IStreamBase *a2)
{
  void *v4; // r0
  IStreamBase *v5; // r0
  char *v6; // r2
  unsigned __int64 v8; // [sp+0h] [bp-8h]

  StreamReader::readAs<int>((int)a2, (int)this + 4);
  StreamReader::readAs<int>((int)a2, (int)this + 8);
  StreamReader::readAs<int>((int)a2, (int)this + 12);
  StreamReader::readAs<bool>((int)a2, (int)this + 16);
  StreamReader::readAs<int>((int)a2, (int)this + 20);
  StreamReader::readAs<float>((int)a2, (int)this + 24);
  StreamReader::readAs<float>((int)a2, (int)this + 28);
  StreamReader::readAs<float>((int)a2, (int)this + 32);
  StreamReader::readAs<int>((int)a2, (int)this + 36);
  StreamReader::readAs<unsigned int>((int)a2, (int)this + 40);
  HIDWORD(v8) = 1;
  v4 = *((void **)this + 11);
  if ( v4 )
    CustomFree(v4);
  v5 = (IStreamBase *)operator new[](*((_DWORD *)this + 10) + 1, 1);
  v6 = *((char **)this + 10);
  *((_DWORD *)this + 11) = v5;
  StreamReader::readStringEx(a2, v5, v6, 0, v8);
  *(_BYTE *)(*((_DWORD *)this + 11) + *((_DWORD *)this + 10)) = 0;
  StreamReader::readAs<int>((int)a2, (int)this + 48);
  StreamReader::readAs<int>((int)a2, (int)this + 52);
  StreamReader::readAs<int>((int)a2, (int)this + 56);
  StreamReader::readAs<float>((int)a2, (int)this + 60);
  return StreamReader::readAs<float>((int)a2, (int)this + 64);
}


// ===== 5074b0 StringManager::TranslateGameLangageToIGP(int) =====
int __fastcall StringManager::TranslateGameLangageToIGP(unsigned int this, int a2)
{
  if ( this >= 8 )
    return 0;
  else
    return CSWTCH_5544[this];
}


// ===== 5074dc StringManager::TranslateGameLanguageToGLLive(int) =====
int __fastcall StringManager::TranslateGameLanguageToGLLive(unsigned int this, int a2)
{
  if ( this >= 8 )
    return 0;
  else
    return CSWTCH_5544[this + 8];
}


// ===== 50750c StringManager::addSpace(void) =====
int __fastcall StringManager::addSpace(StringManager *this)
{
  unsigned int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 <= 7 )
    return *((unsigned __int8 *)&CSWTCH_5544[16] + v1);
  else
    return 0;
}


// ===== 507534 StringManager::getNumberOfStrings(int) =====
int __fastcall StringManager::getNumberOfStrings(StringManager *this, int a2)
{
  return *((__int16 *)this + 37 * *((_DWORD *)this + 1) + a2 + 670);
}


// ===== 507550 StringManager::getNumberOfStrings(int,int) =====
int __fastcall StringManager::getNumberOfStrings(StringManager *this, int a2, int a3)
{
  return *((__int16 *)this + 37 * a3 + a2 + 670);
}


// ===== 507568 StringManager::getSheetName(uint) =====
int __fastcall StringManager::getSheetName(StringManager *this, unsigned int a2)
{
  int v2; // r2
  bool v3; // zf

  v2 = *((_DWORD *)this + 1);
  v3 = v2 == -1;
  if ( v2 == -1 )
    v2 = 0;
  if ( !v3 )
    v2 *= 12;
  return *(_DWORD *)(*(_DWORD *)(Arrays::StrID_Languages::members + v2 + 8) + 20 * a2 + 16);
}


// ===== 5075b0 StringManager::getSymbolPack(void) =====
int __fastcall StringManager::getSymbolPack(StringManager *this)
{
  return 8;
}


// ===== 5075b8 StreamReader::readAs<ushort>(IStreamBase *,ushort *) =====
int __fastcall StreamReader::readAs<unsigned short>(int a1, int a2)
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               80);
    }
  }
  return result;
}


// ===== 507668 StringManager::isPackSheetLoaded(uint,uint) =====
bool __fastcall StringManager::isPackSheetLoaded(StringManager *this, unsigned int a2, unsigned int a3)
{
  if ( a2 > 8 )
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
        "packId < NUMBER_OF_LANGUAGES",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        211);
    }
  }
  if ( a3 > 0x24 )
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
        "sheetId < NUMBER_OF_SHEETS",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        213);
    }
  }
  return *((_DWORD *)this + 37 * a2 + a3 + 2) != 0;
}


// ===== 507788 StringManager::unloadPackSheet(uint,uint) =====
void __fastcall StringManager::unloadPackSheet(StringManager *this, unsigned int a2, unsigned int a3)
{
  void **v6; // r7
  void *v7; // r0
  void **v8; // r8
  int v9; // r4

  if ( a2 > 8 )
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
        "packId < NUMBER_OF_LANGUAGES",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        412);
    }
  }
  if ( StringManager::isPackSheetLoaded(this, a2, a3) )
  {
    v6 = *((void ***)this + 37 * a2 + a3 + 2);
    v7 = *v6;
    if ( *v6 )
    {
      v8 = v6 + 1;
      do
      {
        CustomFree(v7);
        *v6 = nullptr;
        v7 = *v8;
        v6 = v8++;
      }
      while ( v7 );
      v6 = *((void ***)this + 37 * a2 + a3 + 2);
    }
    if ( v6 )
      CustomFree(v6);
    v9 = a3 + 37 * a2;
    *((_DWORD *)this + v9 + 2) = 0;
    *((_WORD *)this + v9 + 670) = 0;
  }
}


// ===== 5078bc StringManager::isPackLoaded(uint) =====
bool __fastcall StringManager::isPackLoaded(StringManager *this, unsigned int a2)
{
  unsigned int v4; // r6
  _BOOL4 result; // r0

  if ( a2 - 9 <= 0xFFFFFFF5 )
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
        "packId == (size_t)-1 || packId < NUMBER_OF_LANGUAGES",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        191);
    }
  }
  v4 = 0;
  while ( 1 )
  {
    result = StringManager::isPackSheetLoaded(this, a2, v4++);
    if ( result )
      break;
    if ( v4 == 37 )
      return result;
  }
  return 1;
}


// ===== 50798c StringManager::getNumberOfLoadedPack(void) =====
int __fastcall StringManager::getNumberOfLoadedPack(StringManager *this)
{
  unsigned int v1; // r4
  int v3; // r5
  int isPackLoaded; // r0

  v1 = 0;
  v3 = 0;
  do
  {
    isPackLoaded = StringManager::isPackLoaded(this, v1++);
    v3 += isPackLoaded;
  }
  while ( v1 != 9 );
  return v3;
}


// ===== 5079c0 StringManager::unloadPack(uint) =====
void __fastcall StringManager::unloadPack(StringManager *this, unsigned int a2)
{
  unsigned int i; // r6
  unsigned int v5; // r2

  if ( a2 != -1 )
  {
    if ( a2 > 8 )
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
          "packId < NUMBER_OF_LANGUAGES",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
          394);
      }
    }
    if ( StringManager::isPackLoaded(this, a2) )
    {
      for ( i = 0; i != 37; ++i )
      {
        v5 = i;
        StringManager::unloadPackSheet(this, a2, v5);
      }
    }
  }
}


// ===== 507a94 StringManager::switchPack(uint,bool) =====
int __fastcall StringManager::switchPack(StringManager *this, unsigned int a2, int a3)
{
  unsigned int v5; // r1

  if ( !a3 )
    goto LABEL_5;
  v5 = *((_DWORD *)this + 1);
  if ( v5 == a2 )
    return 0;
  if ( v5 != -1 )
  {
    StringManager::unloadPack(this, v5);
LABEL_5:
    v5 = *((_DWORD *)this + 1);
  }
  if ( a2 != v5 )
  {
    *((_DWORD *)this + 1) = a2;
    return 1;
  }
  return 0;
}


// ===== 507ae0 StringManager::unloadAllPacks(void) =====
void __fastcall StringManager::unloadAllPacks(StringManager *this)
{
  unsigned int i; // r4
  unsigned int v3; // r1

  for ( i = 0; i != 9; ++i )
  {
    v3 = i;
    StringManager::unloadPack(this, v3);
  }
}


// ===== 507b08 StringManager::~StringManager() =====
void __fastcall StringManager::~StringManager(StringManager *this)
{
  unsigned int v2; // r4
  unsigned int v3; // r1

  v2 = 0;
  *(_DWORD *)this = off_96BDB8;
  do
  {
    v3 = v2++;
    StringManager::unloadPack(this, v3);
  }
  while ( v2 != 9 );
}


// ===== 507b54 StringManager::~StringManager() =====
void __fastcall StringManager::~StringManager(StringManager *this)
{
  StringManager::~StringManager(this);
  CustomFree(this);
}


// ===== 507b70 StringManager::~StringManager() =====
void __fastcall StringManager::~StringManager(StringManager *this)
{
  unsigned int v2; // r4
  unsigned int v3; // r1

  v2 = 0;
  *(_DWORD *)this = off_96BDB8;
  do
  {
    v3 = v2++;
    StringManager::unloadPack(this, v3);
  }
  while ( v2 != 9 );
}


// ===== 507bbc StringManager::getSheetFilename(uint,uint,char *,int) =====
int __fastcall StringManager::getSheetFilename(StringManager *this, unsigned int a2, unsigned int a3, char *s, int a5)
{
  return sprintf(
           s,
           "text/%s",
           *(const char **)(*(_DWORD *)(Arrays::StrID_Languages::members + 12 * a2 + 8) + 20 * a3 + 8));
}


// ===== 507c0c StringManager::formatForMulti(std::string,bool) =====
std::string *__fastcall StringManager::formatForMulti(std::string *this, std::string a2, bool a3)
{
  const char *v3; // r12
  int v4; // r1
  int v5; // r2
  int v7; // r0
  const char *v9; // lr
  char s[60]; // [sp+10h] [bp-44h] BYREF

  v3 = *(const char **)(*(_DWORD *)&a2._M_buffers._M_static_buf[4] + 20);
  v4 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  v5 = *(_DWORD *)(*(_DWORD *)&a2._M_buffers._M_static_buf[4] + 16) - (_DWORD)v3;
  if ( !v5 )
  {
LABEL_7:
    this->_M_finish = (char *)this;
    this->_M_start_of_storage._M_data = (char *)this;
    std::string::_M_range_initialize(this, *(const char **)(v4 + 20), *(const char **)(v4 + 16));
    return this;
  }
  if ( *(unsigned __int8 *)v3 <= 0xDFu )
  {
    v7 = 0;
    while ( ++v7 != v5 )
    {
      if ( (unsigned __int8)v3[v7] > 0xDFu )
        goto LABEL_9;
    }
    goto LABEL_7;
  }
LABEL_9:
  if ( *(_DWORD *)&a2._M_buffers._M_static_buf[8] )
    v9 = "\n";
  else
    v9 = "";
  sprintf(s, "%s<font face='wqy-zenhei'>%s</font>%s", v9, v3, v9);
  std::string::string(this, s);
  return this;
}


// ===== 507d10 StringManager::StringManager(void) =====
void __fastcall StringManager::StringManager(StringManager *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = off_96BDB8;
  LC_API_MEMSET_0((char *)this + 8, 0, 0x534u);
  LC_API_MEMSET_0((char *)this + 1340, 0, 0x29Au);
}


// ===== 507d6c StringManager::StringManager(void) =====
void __fastcall StringManager::StringManager(StringManager *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = off_96BDB8;
  LC_API_MEMSET_0((char *)this + 8, 0, 0x534u);
  LC_API_MEMSET_0((char *)this + 1340, 0, 0x29Au);
}


// ===== 507dc8 `global constructor keyed to'.._.._sources_Data_Text_StringManager.cpp =====
int `global constructor keyed to'.._.._sources_Data_Text_StringManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F61BC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F61B8 = 1056964608;
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


// ===== 507ea4 StringManager::parseColors(std::string &,char const*) =====
int __fastcall StringManager::parseColors(StringManager *this, std::string *a2, char *a3)
{
  char v5; // r1
  int v6; // r8
  char *v7; // r4
  int v8; // r5
  int v9; // t1
  gameswf *v11; // r4
  char *M_data; // r5
  int v13; // r0
  size_t v14; // r0
  size_t v15; // r0
  int Constant; // r0
  size_t v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r0
  int v25; // r0
  int v26; // r0
  bool v27; // [sp+0h] [bp-44h]
  char s[32]; // [sp+1Ch] [bp-28h] BYREF

  if ( !a3 )
    return 0;
  v5 = *a3;
  if ( !*a3 )
    return 0;
  v6 = 0;
  v7 = a3 + 1;
  v8 = 0;
  do
  {
    if ( v8 )
    {
      switch ( v5 )
      {
        case '#':
        case '*':
        case '^':
        case 'd':
        case 'f':
        case 'g':
        case 'h':
        case 'i':
        case 'k':
        case 'p':
        case 's':
        case 't':
        case 'v':
          std::string::_M_append(a2, "^", "");
          std::string::_M_append(a2, v7 - 1, v7);
          goto LABEL_16;
        case '0':
          Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "zero");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", Constant & 0xFFFFFF);
          goto LABEL_19;
        case '1':
          v23 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "one");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v23 & 0xFFFFFF);
          goto LABEL_19;
        case '2':
          v24 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "two");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v24 & 0xFFFFFF);
          goto LABEL_19;
        case '3':
          v25 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "three");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v25 & 0xFFFFFF);
          goto LABEL_19;
        case '4':
          v26 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "four");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v26 & 0xFFFFFF);
          goto LABEL_19;
        case '5':
          v18 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "five");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v18 & 0xFFFFFF);
          goto LABEL_19;
        case '6':
          v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "six");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v19 & 0xFFFFFF);
          goto LABEL_19;
        case '7':
          v20 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "seven");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v20 & 0xFFFFFF);
          goto LABEL_19;
        case '8':
          v21 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "eight");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v21 & 0xFFFFFF);
          goto LABEL_19;
        case '9':
          v22 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "nine");
          snprintf(s, 0x20u, "<font color=\"#%06X\">", v22 & 0xFFFFFF);
          goto LABEL_19;
        case 'n':
          snprintf(s, 0x20u, "\n");
          goto LABEL_19;
        case 'r':
          snprintf(s, 0x20u, "</font>");
LABEL_19:
          v17 = LC_API_STRLEN_0(s);
          std::string::_M_append(a2, s, &s[v17]);
          v6 = 1;
          v8 = 0;
          break;
        default:
LABEL_16:
          v8 = 0;
          break;
      }
    }
    else if ( v5 == 94 )
    {
      v8 = 1;
    }
    else if ( v5 == 124 )
    {
      snprintf(s, 0x20u, "%c", 17);
      v15 = LC_API_STRLEN_0(s);
      std::string::_M_append(a2, s, &s[v15]);
      v6 = 1;
    }
    else
    {
      std::string::_M_append(a2, v7 - 1, v7);
    }
    v9 = (unsigned __int8)*v7++;
    v5 = v9;
  }
  while ( v9 );
  v11 = (gameswf *)operator new[](a2->_M_finish - a2->_M_start_of_storage._M_data + 128, 0);
  M_data = a2->_M_start_of_storage._M_data;
  v13 = StringManager::addSpace(this);
  gameswf::format_utf_text((gameswf *)M_data, v11, (char *)0xFFFFFFFF, v13, v27);
  v14 = LC_API_STRLEN_0((const char *)v11);
  std::string::_M_assign(a2, (const char *)v11, (const char *)v11 + v14);
  if ( v11 )
    CustomFree(v11);
  return v6;
}


// ===== 50851c StringManager::preloadPackSheet(uint,uint,bool) =====
int __fastcall StringManager::preloadPackSheet(StringManager *this, unsigned int a2, unsigned int a3, int a4)
{
  StreamReader *v7; // r0
  _DWORD *v8; // r5
  unsigned int v9; // r4
  int v10; // r3
  IStreamBase *v11; // r0
  char *v12; // r11
  int v13; // r2
  char *v14; // r0
  unsigned __int64 v15; // [sp+0h] [bp-D4h]
  StreamReader *v18; // [sp+2Ch] [bp-A8h] BYREF
  unsigned __int16 v19; // [sp+30h] [bp-A4h] BYREF
  unsigned __int16 v20; // [sp+32h] [bp-A2h] BYREF
  char s[100]; // [sp+38h] [bp-9Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+9Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+B4h] [bp-20h] BYREF

  if ( StringManager::isPackSheetLoaded(this, a2, a3) )
  {
    if ( !a4 )
      return 1;
    StringManager::unloadPackSheet(this, a2, a3);
  }
  StringManager::getSheetFilename(this, a2, a3, s, 100);
  v7 = (StreamReader *)(*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 144))(
                         *(_DWORD *)(dword_99F73C + 52),
                         s);
  if ( v7 )
  {
    v18 = v7;
    StreamReader::readAs<unsigned short>((int)v7, (int)&v20);
    v8 = operator new[](4 * (v20 + 1), 0);
    v9 = 0;
    v23._M_finish = (char *)&v23;
    v23._M_start_of_storage._M_data = (char *)&v23;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v23, 0x10u);
    *v23._M_finish = 0;
    v10 = v20;
    if ( v20 )
    {
      do
      {
        StreamReader::readAs<unsigned short>((int)v18, (int)&v19);
        v11 = (IStreamBase *)operator new[](v19 + 1, 0);
        v8[v9] = v11;
        StreamReader::readStringEx(v18, v11, (char *)v19, 0, v15);
        *(_BYTE *)(v8[v9] + v19) = 0;
        v12 = (char *)v8[v9];
        if ( strchr(v12, 94) || strchr(v12, 124) )
        {
          if ( v23._M_start_of_storage._M_data != v23._M_finish )
          {
            *v23._M_start_of_storage._M_data = 0;
            v23._M_finish = v23._M_start_of_storage._M_data;
            v12 = (char *)v8[v9];
          }
          if ( StringManager::parseColors(this, (std::string *)&v23, v12) )
          {
            CustomFree((void *)v8[v9]);
            v19 = LOWORD(v23._M_finish) - LOWORD(v23._M_start_of_storage._M_data);
            v14 = (char *)operator new[](
                            (unsigned __int16)(LOWORD(v23._M_finish) - LOWORD(v23._M_start_of_storage._M_data)) + 1,
                            0);
            v8[v9] = v14;
            LC_API_STRCPY_0(v14, v23._M_start_of_storage._M_data);
            *(_BYTE *)(v8[v9] + v19) = 0;
          }
        }
        v10 = v20;
        v9 = (unsigned __int16)(v9 + 1);
      }
      while ( v20 > v9 );
    }
    v13 = a3 + 37 * a2;
    v8[v10] = 0;
    *((_DWORD *)this + v13 + 2) = v8;
    *((_WORD *)this + v13 + 670) = v20;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v22, "isTracingStringManager");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
    (*(void (__fastcall **)(_DWORD, StreamReader **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
      *(_DWORD *)(dword_99F73C + 52),
      &v18);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
    return 1;
  }
  return 0;
}


// ===== 5088c4 StringManager::getStringIdx(int,int,uint) =====
const char *__fastcall StringManager::getStringIdx(StringManager *this, signed int a2, int a3, unsigned int a4)
{
  unsigned int v4; // r4
  _BOOL4 isPackSheetLoaded; // r3
  _DWORD *v9; // r3
  char *v10; // r10
  _DWORD *v11; // r3
  const char *result; // r0

  v4 = a4;
  if ( a4 == -1 )
  {
    v4 = 0;
  }
  else if ( a4 > 8 )
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
        "packIdx < NUMBER_OF_LANGUAGES",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        489);
    }
  }
  if ( a2 < 0 )
  {
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "sheetIdx >= 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
          490);
LABEL_13:
      isPackSheetLoaded = StringManager::isPackSheetLoaded(this, v4, a2);
      if ( isPackSheetLoaded )
        goto LABEL_14;
LABEL_31:
      StringManager::preloadPackSheet(this, v4, a2, isPackSheetLoaded);
      v9 = *((_DWORD **)this + 37 * v4 + a2 + 2);
      if ( v9 )
        goto LABEL_15;
LABEL_32:
      if ( gAssertLevel == 2 )
      {
        *v9 = v9;
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "m_lists[packIdx][sheetIdx]",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
          501);
      }
      goto LABEL_15;
    }
  }
  else
  {
    if ( a2 <= 36 )
      goto LABEL_13;
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "sheetIdx < NUMBER_OF_SHEETS",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
          491);
      goto LABEL_13;
    }
  }
  dword_0 = 0;
  isPackSheetLoaded = StringManager::isPackSheetLoaded(this, v4, a2);
  if ( !isPackSheetLoaded )
    goto LABEL_31;
LABEL_14:
  v9 = *((_DWORD **)this + 37 * v4 + a2 + 2);
  if ( !v9 )
    goto LABEL_32;
LABEL_15:
  v10 = (char *)this + 74 * v4 + 2 * a2 + 1336;
  v11 = (_DWORD *)*((unsigned __int16 *)v10 + 2);
  if ( !*((_WORD *)v10 + 2) )
  {
    if ( gAssertLevel == 2 )
    {
      *v11 = v11;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "m_list_count[packIdx][sheetIdx]",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        503);
      LOWORD(v11) = *((_WORD *)v10 + 2);
    }
  }
  if ( (__int16)v11 > a3 )
    goto LABEL_26;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return "#!WTF!#";
  }
  if ( gAssertLevel != 1 )
    return "#!WTF!#";
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "stringIdx < m_list_count[packIdx][sheetIdx]",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
    504);
  if ( a3 >= *((__int16 *)this + 37 * v4 + a2 + 670) )
    return "#!WTF!#";
LABEL_26:
  result = *(const char **)(*((_DWORD *)this + 37 * v4 + a2 + 2) + 4 * a3);
  if ( !result || !*result )
    return "#!SNL!#";
  return result;
}


// ===== 508c6c StringManager::getStringIdx(int,int) =====
const char *__fastcall StringManager::getStringIdx(StringManager *this, int a2, int a3)
{
  return StringManager::getStringIdx(this, a2, a3, *((_DWORD *)this + 1));
}


// ===== 508c74 StringManager::getStringFromSymbol(char const*) =====
int __fastcall StringManager::getStringFromSymbol(StringManager *this, const char *a2)
{
  unsigned int v4; // r6
  size_t v5; // r10
  const char *SheetName; // r0
  int v7; // r5
  unsigned int SymbolPack; // r0
  unsigned int v9; // r0
  const char *StringIdx; // r0
  int v11; // r0
  int v12; // r6
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v15, "isTracingStringManager");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v15);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  v4 = 0;
  v5 = strchr(a2, 95) - a2;
  do
  {
    SheetName = (const char *)StringManager::getSheetName(this, v4);
    v7 = strncasecmp(a2, SheetName, v5);
    if ( !v7 )
    {
      SymbolPack = StringManager::getSymbolPack(this);
      StringManager::getStringIdx(this, v4, 0, SymbolPack);
      while ( 1 )
      {
        v11 = StringManager::getSymbolPack(this);
        if ( v7 >= StringManager::getNumberOfStrings(this, v4, v11) )
          break;
        v9 = StringManager::getSymbolPack(this);
        StringIdx = (const char *)StringManager::getStringIdx(this, v4, v7, v9);
        if ( !LC_API_STRCASECMP_0(a2, StringIdx) )
        {
          v12 = StringManager::getStringIdx(this, v4, v7);
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v14, "isTracingStringManager");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
          return v12;
        }
        ++v7;
      }
    }
    ++v4;
  }
  while ( v4 != 37 );
  return 0;
}


// ===== 508e1c StringManager::getString(int,uint) =====
const char *__fastcall StringManager::getString(StringManager *this, int a2, unsigned int a3)
{
  char Constant; // r8
  int v7; // r7
  char v8; // r10
  int v9; // r0

  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StringConfig", "PackIDShift");
  v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StringConfig", "PackIDMask");
  v8 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StringConfig", "StrIDShift");
  v9 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StringConfig", "StrIDMask");
  return StringManager::getStringIdx(this, v7 & (a2 >> Constant), v9 & (a2 >> v8), a3);
}


// ===== 508edc StringManager::getString(int) =====
int __fastcall StringManager::getString(StringManager *this, int a2)
{
  if ( a2 < 0 )
    return 0;
  else
    return StringManager::getString(this, a2, *((_DWORD *)this + 1));
}


// ===== 508ef4 StringManager::parse(std::string &,char const*,...) =====
int StringManager::parse(StringManager *this, std::string *a2, const char *a3, ...)
{
  int v5; // r8
  int Constant; // r0
  int v8; // r0
  int v9; // r0
  const char *v10; // r0
  char v11; // r3
  const char *v12; // r4
  int v13; // r6
  int v14; // t1
  const char *v15; // r1
  char *v16; // r5
  const char *v17; // r2
  int v18; // t1
  gameswf *v19; // r4
  char *M_data; // r6
  int v21; // r0
  size_t v22; // r0
  size_t v23; // r0
  size_t v24; // r0
  char **v25; // r3
  size_t v26; // r0
  float v27; // r1
  float v28; // r0
  float v29; // r1
  float v30; // r6
  int v31; // lr
  int v32; // r12
  size_t v33; // r0
  int v34; // r6
  int v35; // lr
  int v36; // r12
  _DWORD *ap; // r2
  _BYTE *v38; // r8
  int v39; // r3
  _BYTE *v40; // r9
  int v41; // r6
  const char *v42; // r8
  char *p_s; // r11
  int v44; // r10
  size_t v45; // r0
  int v46; // t1
  int v47; // t1
  const char **v48; // r3
  size_t v49; // r0
  double *v50; // r3
  float v51; // r0
  int *v52; // r3
  double *v53; // r3
  float v54; // r0
  _DWORD *v55; // r2
  double *v56; // r3
  float v57; // r0
  _DWORD *v58; // r3
  double *v59; // r3
  float v60; // r0
  double *v61; // r3
  float v62; // r0
  double v63; // [sp+0h] [bp-ACh]
  char *v64; // [sp+10h] [bp-9Ch]
  int v66; // [sp+1Ch] [bp-90h]
  float x; // [sp+20h] [bp-8Ch]
  int v68; // [sp+2Ch] [bp-80h]
  const char *v69; // [sp+38h] [bp-74h]
  char *String; // [sp+40h] [bp-6Ch]
  float iptr; // [sp+50h] [bp-5Ch] BYREF
  va_list v72; // [sp+54h] [bp-58h]
  char v73[32]; // [sp+58h] [bp-54h] BYREF
  char s; // [sp+78h] [bp-34h] BYREF
  _BYTE v75[3]; // [sp+79h] [bp-33h] BYREF
  char v76[12]; // [sp+98h] [bp-14h] BYREF
  va_list varg_r3; // [sp+D4h] [bp+28h] BYREF

  va_start(varg_r3, a3);
  va_copy(v72, varg_r3);
  if ( !a3 || !*a3 )
    return 0;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_DECIMAL_SEPERATOR");
  String = (char *)StringManager::getString(this, Constant);
  v8 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_THOUSANDS_SEPERATOR");
  v69 = (const char *)StringManager::getString(this, v8);
  v9 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_THOUSANDS_GROUP_AT");
  v10 = (const char *)StringManager::getString(this, v9);
  v68 = LC_API_ATOI_0(v10);
  v11 = *a3;
  if ( *a3 )
  {
    v5 = 0;
    v12 = a3 + 1;
    v13 = 0;
    while ( 2 )
    {
      while ( 1 )
      {
        v15 = v12 - 1;
        if ( v13 )
          break;
        if ( v11 == 94 )
        {
          v13 = 1;
        }
        else if ( v11 == 124 )
        {
          snprintf(&s, 0x20u, "%c", 17);
          v23 = LC_API_STRLEN_0(&s);
          std::string::_M_append(a2, &s, &v75[v23 - 1]);
          v5 = 1;
        }
        else
        {
          std::string::_M_append(a2, v15, v12);
        }
LABEL_12:
        v14 = *(unsigned __int8 *)v12++;
        v11 = v14;
        if ( !v14 )
          goto LABEL_20;
      }
      switch ( v11 )
      {
        case '#':
        case '*':
        case '^':
          std::string::_M_append(a2, v15, v12);
          v5 = 1;
          v13 = 0;
          goto LABEL_19;
        case '$':
          ap = v72.__ap;
          v72.__ap = (char *)v72.__ap + 4;
          v38 = (_BYTE *)*ap;
          v72.__ap = (char *)v72.__ap + 4;
          v39 = (unsigned __int8)*v38;
          v40 = (_BYTE *)ap[1];
          if ( !*v38 )
            goto LABEL_72;
          v41 = 0;
          v42 = v38 + 1;
          p_s = &s;
          v44 = 0;
          break;
        case 'd':
        case 'k':
        case 'p':
          switch ( v11 )
          {
            case 'd':
              v52 = (int *)v72.__ap;
              v72.__ap = (char *)v72.__ap + 4;
              v66 = *v52;
              break;
            case 'k':
              v55 = v72.__ap;
              v72.__ap = (char *)v72.__ap + 4;
              v66 = *v55 / 1000;
              break;
            case 'p':
              v58 = v72.__ap;
              v72.__ap = (char *)v72.__ap + 4;
              v66 = 100 * *v58;
              break;
          }
          if ( v66 < v68 )
          {
            snprintf(&s, 0x20u, "%d", v66);
          }
          else
          {
            v35 = v66 % 1000000 / 1000;
            v36 = v66 % 1000;
            if ( v66 / 1000000 )
            {
              snprintf(&s, 0x20u, "%d%s%03d%s%03d", v66 / 1000000, v69, v35, v69, v36);
            }
            else if ( v35 )
            {
              snprintf(&s, 0x20u, "%d%s%03d", v35, v69, v36);
            }
            else
            {
              snprintf(&s, 0x20u, "%d", v36);
            }
          }
          goto LABEL_27;
        case 'f':
        case 'g':
        case 'h':
        case 'i':
        case 'm':
          switch ( v11 )
          {
            case 'f':
              v50 = (double *)(((int)v72.__ap + 7) & 0xFFFFFFF8);
              v72.__ap = v50 + 1;
              v51 = *v50;
              x = v51;
              break;
            case 'g':
              v56 = (double *)(((int)v72.__ap + 7) & 0xFFFFFFF8);
              v72.__ap = v56 + 1;
              v57 = *v56;
              x = v57 / 1000.0;
              break;
            case 'h':
              v59 = (double *)(((int)v72.__ap + 7) & 0xFFFFFFF8);
              v72.__ap = v59 + 1;
              v60 = *v59;
              x = v60 * 100.0;
              break;
            case 'i':
              v61 = (double *)(((int)v72.__ap + 7) & 0xFFFFFFF8);
              v72.__ap = v61 + 1;
              v62 = *v61;
              x = v62 / 5.0;
              break;
            case 'm':
              v53 = (double *)(((int)v72.__ap + 7) & 0xFFFFFFF8);
              v72.__ap = v53 + 1;
              v54 = *v53;
              x = v54 / 100.0;
              break;
          }
          if ( *(v12 - 1) == 109 )
          {
            LOWORD(v27) = -13107;
            if ( x < 0.0 )
              HIWORD(v27) = -17076;
            else
              HIWORD(v27) = 15692;
          }
          else
          {
            LOWORD(v27) = -10486;
            if ( x < 0.0 )
              HIWORD(v27) = -17501;
            else
              HIWORD(v27) = 15267;
          }
          x = x + v27;
          v28 = modff(x, &iptr);
          LOWORD(v29) = -10486;
          if ( x < 0.0 )
            HIWORD(v29) = -17501;
          else
            HIWORD(v29) = 15267;
          v30 = v28 - v29;
          v66 = (int)iptr;
          if ( v68 > (int)iptr )
          {
            snprintf(&s, 0x20u, "%d", v66);
          }
          else
          {
            v31 = v66 % 1000000 / 1000;
            v32 = v66 % 1000;
            if ( v66 / 1000000 )
            {
              snprintf(&s, 0x20u, "%d%s%03d%s%03d", v66 / 1000000, v69, v31, v69, v32);
            }
            else if ( v31 )
            {
              snprintf(&s, 0x20u, "%d%s%03d", v31, v69, v32);
            }
            else
            {
              snprintf(&s, 0x20u, "%d", v32);
            }
          }
          v33 = LC_API_STRLEN_0(&s);
          std::string::_M_append(a2, &s, &v75[v33 - 1]);
          v34 = LODWORD(v30) & 0x7FFFFFFF;
          if ( *(float *)&v34 >= 0.0001 )
          {
            std::string::append(a2, String);
            v63 = *(float *)&v34;
            if ( *(v12 - 1) == 109 )
              snprintf(&s, 0x10u, "%.1f");
            else
              snprintf(&s, 0x10u, "%.2f");
            std::string::append(a2, &v75[1]);
          }
          goto LABEL_18;
        case 'n':
          snprintf(&s, 0x20u, "\n");
LABEL_27:
          v26 = LC_API_STRLEN_0(&s);
          std::string::_M_append(a2, &s, &v75[v26 - 1]);
          v5 = 1;
          v13 = 0;
          goto LABEL_19;
        case 's':
          v25 = (char **)v72.__ap;
          v72.__ap = (char *)v72.__ap + 4;
          v16 = *v25;
          if ( *v25 )
            goto LABEL_16;
          v17 = "";
          v16 = "<null>";
          goto LABEL_17;
        case 't':
          Application::GetTitleString((Application *)&Singleton<Application>::s_inst, v73, 32);
          v24 = LC_API_STRLEN_0(v73);
          std::string::_M_append(a2, v73, &v73[v24]);
          v5 = 1;
          v13 = 0;
          goto LABEL_12;
        case 'v':
          v16 = v76;
          Application::GetVersionString((Application *)&Singleton<Application>::s_inst, v76, 10, 1);
LABEL_16:
          v17 = &v16[LC_API_STRLEN_0(v16)];
LABEL_17:
          std::string::_M_append(a2, v16, v17);
          goto LABEL_18;
        default:
LABEL_18:
          v5 = 1;
          v13 = 0;
LABEL_19:
          v18 = *(unsigned __int8 *)v12++;
          v11 = v18;
          if ( !v18 )
            goto LABEL_20;
          continue;
      }
      break;
    }
    while ( 1 )
    {
      while ( v44 )
      {
        if ( !v41 )
        {
          if ( *v40 && (unsigned __int8)*v40 == v39 )
          {
            *p_s++ = v39;
            ++v40;
          }
          else
          {
            *p_s = v39;
            p_s[1] = 0;
            v45 = LC_API_STRLEN_0(&s);
            std::string::_M_append(a2, &s, &v75[v45 - 1]);
            p_s = &s;
            v44 = 0;
          }
          if ( !*v40 )
          {
            v48 = (const char **)v72.__ap;
            v41 = 1;
            v72.__ap = (char *)v72.__ap + 4;
            v64 = (char *)*v48;
            v49 = LC_API_STRLEN_0(*v48);
            std::string::_M_append(a2, v64, &v64[v49]);
          }
          goto LABEL_66;
        }
LABEL_74:
        std::string::_M_append(a2, v42 - 1, v42);
LABEL_66:
        v46 = *(unsigned __int8 *)v42++;
        v39 = v46;
        if ( !v46 )
          goto LABEL_72;
      }
      if ( (char)v39 != 36 )
        goto LABEL_74;
      s = 36;
      p_s = v75;
      v44 = 1;
      v47 = *(unsigned __int8 *)v42++;
      v39 = v47;
      if ( *v40 == 36 )
        ++v40;
      if ( !v39 )
      {
LABEL_72:
        v13 = v39;
        v5 = 1;
        goto LABEL_12;
      }
    }
  }
  v5 = *(unsigned __int8 *)a3;
LABEL_20:
  v19 = (gameswf *)operator new[](a2->_M_finish - a2->_M_start_of_storage._M_data + 128, 0);
  M_data = a2->_M_start_of_storage._M_data;
  v21 = StringManager::addSpace(this);
  gameswf::format_utf_text((gameswf *)M_data, v19, (char *)0xFFFFFFFF, v21, SLOBYTE(v63));
  v22 = LC_API_STRLEN_0((const char *)v19);
  std::string::_M_assign(a2, (const char *)v19, (const char *)v19 + v22);
  if ( v19 )
    CustomFree(v19);
  return v5;
}


// ===== 509a08 StringManager::preloadPack(uint) =====
int __fastcall StringManager::preloadPack(StringManager *this, unsigned int a2)
{
  unsigned int i; // r4
  unsigned int v5; // r2

  if ( a2 > 8 )
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
        "packId < NUMBER_OF_LANGUAGES",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp",
        362);
    }
  }
  for ( i = 0; i != 37; ++i )
  {
    while ( StringManager::isPackSheetLoaded(this, a2, i) )
    {
      if ( ++i == 37 )
        return 1;
    }
    v5 = i;
    StringManager::preloadPackSheet(this, a2, v5, 0);
  }
  return 1;
}


// ===== 509aec StringManager::parseEx(std::string &,char const*,VarArgs const&) =====
int __fastcall StringManager::parseEx(StringManager *this, std::string *a2, const char *a3, const VarArgs *a4)
{
  int v7; // r11
  int Constant; // r0
  int v10; // r0
  int v11; // r0
  const char *v12; // r0
  char v13; // r3
  const char *v14; // r4
  int v15; // r7
  unsigned int v16; // r5
  int v17; // t1
  const char *v18; // r1
  int v19; // r2
  size_t v20; // r0
  int v21; // t1
  gameswf *v22; // r4
  char *M_data; // r5
  int v24; // r0
  size_t v25; // r0
  char *v26; // r7
  size_t v27; // r0
  int v28; // r1
  int v29; // r1
  const char *v30; // r1
  int v31; // r3
  float v32; // r1
  float v33; // r0
  float v34; // r1
  float v35; // r10
  int v36; // r0
  int v37; // lr
  size_t v38; // r0
  int v39; // r10
  int v40; // r3
  int v41; // r0
  int v42; // lr
  size_t v43; // r0
  float v44; // r7
  float v45; // r0
  int v46; // r2
  double v47; // [sp+0h] [bp-9Ch]
  float x; // [sp+18h] [bp-84h]
  int v50; // [sp+20h] [bp-7Ch]
  const char *v51; // [sp+28h] [bp-74h]
  char *String; // [sp+2Ch] [bp-70h]
  float iptr; // [sp+44h] [bp-58h] BYREF
  char v54[32]; // [sp+48h] [bp-54h] BYREF
  char s[2]; // [sp+68h] [bp-34h] BYREF
  __int16 v56; // [sp+6Ah] [bp-32h] BYREF
  char v57[12]; // [sp+88h] [bp-14h] BYREF

  if ( !a3 || !*a3 )
    return 0;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_DECIMAL_SEPERATOR");
  String = (char *)StringManager::getString(this, Constant);
  v10 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_THOUSANDS_SEPERATOR");
  v51 = (const char *)StringManager::getString(this, v10);
  v11 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_THOUSANDS_GROUP_AT");
  v12 = (const char *)StringManager::getString(this, v11);
  v50 = LC_API_ATOI_0(v12);
  v13 = *a3;
  if ( *a3 )
  {
    v7 = 0;
    v14 = a3 + 1;
    v15 = 0;
    v16 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v18 = v14 - 1;
        if ( v15 )
          break;
        if ( v13 == 94 )
        {
          v15 = 1;
        }
        else if ( v13 == 124 )
        {
          snprintf(s, 0x20u, "%c", 17);
          v43 = LC_API_STRLEN_0(s);
          std::string::_M_append(a2, s, &s[v43]);
          v7 = 1;
        }
        else
        {
          std::string::_M_append(a2, v18, v14);
        }
LABEL_12:
        v17 = *(unsigned __int8 *)v14++;
        v13 = v17;
        if ( !v17 )
          goto LABEL_17;
      }
      v19 = v13;
      switch ( v13 )
      {
        case '#':
        case '*':
        case '^':
          std::string::_M_append(a2, v18, v14);
          v15 = 0;
          goto LABEL_12;
        case 'd':
        case 'k':
        case 'p':
          v40 = *((_DWORD *)a4 + 1);
          if ( -1431655765 * ((*((_DWORD *)a4 + 2) - v40) >> 2) <= v16 )
            goto LABEL_16;
          switch ( v19 )
          {
            case 'd':
              x = *(float *)(v40 + 12 * v16);
              break;
            case 'k':
              x = *(float *)(v40 + 12 * v16) / 1000.0;
              break;
            case 'p':
              x = *(float *)(v40 + 12 * v16) * 100.0;
              break;
          }
          v41 = (int)x;
          ++v16;
          if ( v50 > (int)x )
          {
            v26 = s;
            snprintf(s, 0x20u, "%d", (int)x);
          }
          else
          {
            v42 = v41 % 1000000 / 1000;
            if ( v41 / 1000000 )
            {
              v26 = s;
              snprintf(s, 0x20u, "%d%s%03d%s%03d", v41 / 1000000, v51, v42, v51, v41 % 1000);
            }
            else
            {
              v26 = s;
              if ( v42 )
                snprintf(s, 0x20u, "%d%s%03d", v41 % 1000000 / 1000, v51, v41 % 1000);
              else
                snprintf(s, 0x20u, "%d", v41 % 1000);
            }
          }
LABEL_20:
          v27 = LC_API_STRLEN_0(v26);
          std::string::_M_append(a2, v26, &v26[v27]);
          v15 = 0;
          goto LABEL_12;
        case 'f':
        case 'g':
        case 'h':
        case 'i':
        case 'm':
          v31 = *((_DWORD *)a4 + 1);
          if ( -1431655765 * ((*((_DWORD *)a4 + 2) - v31) >> 2) <= v16 )
            goto LABEL_16;
          switch ( v19 )
          {
            case 'f':
              v46 = 12 * v16++;
              x = *(float *)(v31 + v46);
              goto LABEL_33;
            case 'h':
              x = *(float *)(v31 + 12 * v16) * 100.0;
              goto LABEL_32;
            case 'i':
              x = *(float *)(v31 + 12 * v16) / 5.0;
LABEL_32:
              ++v16;
LABEL_33:
              LOWORD(v32) = -10486;
              if ( x < 0.0 )
                HIWORD(v32) = -17501;
              else
                HIWORD(v32) = 15267;
              x = x + v32;
              v33 = modff(x, &iptr);
              goto LABEL_37;
            case 'g':
              x = *(float *)(v31 + 12 * v16) / 1000.0;
              goto LABEL_32;
          }
          if ( v19 != 109 )
            goto LABEL_32;
          v44 = *(float *)(v31 + 12 * v16) / 100.0;
          LOWORD(v45) = v44 < 0.0;
          if ( v44 < 0.0 )
            LOWORD(v45) = -13107;
          ++v16;
          if ( v44 >= 0.0 )
            v45 = 0.05;
          else
            HIWORD(v45) = -17076;
          x = v45 + v44;
          v33 = modff(v45 + v44, &iptr);
LABEL_37:
          LOWORD(v34) = -10486;
          if ( x < 0.0 )
            HIWORD(v34) = -17501;
          else
            HIWORD(v34) = 15267;
          v35 = v33 - v34;
          v36 = (int)iptr;
          if ( v50 > (int)iptr )
          {
            snprintf(s, 0x20u, "%d", (int)iptr);
          }
          else
          {
            v37 = v36 % 1000000 / 1000;
            if ( v36 / 1000000 )
            {
              snprintf(s, 0x20u, "%d%s%03d%s%03d", v36 / 1000000, v51, v37, v51, v36 % 1000);
            }
            else if ( v37 )
            {
              LOBYTE(v47) = (_BYTE)v51;
              snprintf(s, 0x20u, "%d%s%03d", v36 % 1000000 / 1000);
            }
            else
            {
              snprintf(s, 0x20u, "%d", v36 % 1000);
            }
          }
          v38 = LC_API_STRLEN_0(s);
          std::string::_M_append(a2, s, &s[v38]);
          v39 = LODWORD(v35) & 0x7FFFFFFF;
          if ( *(float *)&v39 >= 0.0001 )
          {
            std::string::append(a2, String);
            v47 = *(float *)&v39;
            if ( *(v14 - 1) == 109 )
              snprintf(s, 0x10u, "%.1f");
            else
              snprintf(s, 0x10u, "%.2f");
            v30 = (const char *)&v56;
LABEL_25:
            std::string::append(a2, v30);
            v15 = 0;
            goto LABEL_12;
          }
LABEL_16:
          v21 = *(unsigned __int8 *)v14++;
          v13 = v21;
          v15 = 0;
          if ( !v21 )
            goto LABEL_17;
          break;
        case 'n':
          snprintf(s, 0x20u, "\n");
          v20 = LC_API_STRLEN_0(s);
          std::string::_M_append(a2, s, &s[v20]);
          goto LABEL_16;
        case 's':
          v28 = *((_DWORD *)a4 + 1);
          if ( -1431655765 * ((*((_DWORD *)a4 + 2) - v28) >> 2) <= v16 )
            goto LABEL_16;
          v29 = v28 + 12 * v16++;
          v30 = *(const char **)(v29 + 8);
          if ( v30 )
            goto LABEL_25;
          v15 = 0;
          goto LABEL_12;
        case 't':
          v26 = v54;
          Application::GetTitleString((Application *)&Singleton<Application>::s_inst, v54, 32);
          goto LABEL_20;
        case 'v':
          v26 = v57;
          Application::GetVersionString((Application *)&Singleton<Application>::s_inst, v57, 10, 1);
          goto LABEL_20;
        default:
          goto LABEL_16;
      }
    }
  }
  v7 = *(unsigned __int8 *)a3;
LABEL_17:
  v22 = (gameswf *)operator new[](a2->_M_finish - a2->_M_start_of_storage._M_data + 128, 0);
  M_data = a2->_M_start_of_storage._M_data;
  v24 = StringManager::addSpace(this);
  gameswf::format_utf_text((gameswf *)M_data, v22, (char *)0xFFFFFFFF, v24, SLOBYTE(v47));
  v25 = LC_API_STRLEN_0((const char *)v22);
  std::string::_M_assign(a2, (const char *)v22, (const char *)v22 + v25);
  if ( v22 )
    CustomFree(v22);
  return v7;
}


// ===== 50a474 AssetManager::SceneNode::~SceneNode() =====
void __fastcall AssetManager::SceneNode::~SceneNode(AssetManager::SceneNode *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 2);
  *(_DWORD *)this = off_96BDC8;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
}


// ===== 50a4c0 SetWireFrame(glitch::scene::ISceneNode *,bool) =====
void __fastcall SetWireFrame(glitch::scene::ISceneNode *a1, bool a2)
{
  ;
}


// ===== 50a4c4 AssetManager::ToggleWireFrame(void) =====
void __fastcall AssetManager::ToggleWireFrame(AssetManager *this)
{
  s_wireFrame ^= 1u;
  SetWireFrame(*(glitch::scene::ISceneNode **)(*(_DWORD *)(dword_99F73C + 28) + 4), s_wireFrame);
}


// ===== 50a504 AssetManager::loadSceneNode(char const*,char const*,bool,int) =====
int __fastcall AssetManager::loadSceneNode(
        AssetManager *this,
        glitch::video::IVideoDriver *a2,
        char *a3,
        bool a4,
        bool a5)
{
  char v5; // r12

  v5 = (char)a3;
  if ( a3 )
    v5 = 1;
  return SceneManager::LoadScene(*(SceneManager **)(dword_99F73C + 28), a2, a3, 0, v5);
}


// ===== 50a540 AssetManager::preloadSceneNode(char const*,char const*,bool,int) =====
void __fastcall AssetManager::preloadSceneNode(
        AssetManager *this,
        glitch::video::IVideoDriver *a2,
        char *a3,
        bool a4,
        int a5)
{
  SceneManager::PreloadScene(*(int ***)(dword_99F73C + 28), a2, a3);
}


// ===== 50a564 AssetManager::GetAssetManager(void) =====
char *__fastcall AssetManager::GetAssetManager(AssetManager *this)
{
  if ( (`guard variable for'AssetManager::GetAssetManager(void)::assetManager & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'AssetManager::GetAssetManager(void)::assetManager) )
  {
    AssetManager::GetAssetManager(void)::assetManager = 0;
    dword_9F61EC = (int)&byte_9F61E0;
    dword_9F620C = (int)&byte_9F6200;
    dword_9F61E8 = (int)&byte_9F61E0;
    dword_9F6208 = (int)&byte_9F6200;
    dword_9F6210 = 0;
    dword_9F61CC = 0;
    dword_9F61D0 = (int)&AssetManager::GetAssetManager(void)::assetManager;
    dword_9F61D4 = (int)&AssetManager::GetAssetManager(void)::assetManager;
    dword_9F61D8 = 0;
    dword_9F61E4 = 0;
    byte_9F61E0 = 0;
    dword_9F61F0 = 0;
    dword_9F61F8 = 0;
    dword_9F61FC = 0;
    dword_9F6204 = 0;
    byte_9F6200 = 0;
    _cxa_guard_release(&`guard variable for'AssetManager::GetAssetManager(void)::assetManager);
    _aeabi_atexit(
      (int)&AssetManager::GetAssetManager(void)::assetManager,
      (int)AssetManager::~AssetManager,
      (int)&_dso_handle);
  }
  return &AssetManager::GetAssetManager(void)::assetManager;
}


// ===== 50a630 `global constructor keyed to'.._.._sources_Data_Collada_AssetManager.cpp =====
int `global constructor keyed to'.._.._sources_Data_Collada_AssetManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F6220 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F621C = 1056964608;
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


// ===== 50a70c AssetManager::Texture::~Texture() =====
void __fastcall AssetManager::Texture::~Texture(AssetManager::Texture *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_96BDD8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 50a74c AssetManager::Texture::~Texture() =====
void __fastcall AssetManager::Texture::~Texture(AssetManager::Texture *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_96BDD8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  CustomFree(this);
}


// ===== 50a794 AssetManager::SceneNode::~SceneNode() =====
void __fastcall AssetManager::SceneNode::~SceneNode(AssetManager::SceneNode *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 2);
  *(_DWORD *)this = off_96BDC8;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  CustomFree(this);
}


// ===== 50a7e8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::scene::ISceneNode *>,std::priv::_Select1st<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::allocator<std::pair<std::string const,glitch::scene::ISceneNode *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::scene::ISceneNode *>,std::priv::_Select1st<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::allocator<std::pair<std::string const,glitch::scene::ISceneNode *>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::scene::ISceneNode *>,std::priv::_Select1st<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::allocator<std::pair<std::string const,glitch::scene::ISceneNode *>>>::_M_erase(
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


// ===== 50a86c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::string const,AssetManager::SceneNode>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>>) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  _DWORD *v4; // r2
  unsigned __int8 *v5; // r6

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = *((_DWORD **)v3 + 12);
  v5 = v3;
  *((_DWORD *)v3 + 10) = off_96BDC8;
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
  std::string::~string((std::string *)(v5 + 16));
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x34u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 50a8ec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  _DWORD *v4; // r3
  int v5; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD **)(v2 + 48);
      v5 = *(_DWORD *)(v2 + 8);
      *(_DWORD *)(v2 + 40) = off_96BDC8;
      if ( v4 )
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x34u);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 50a968 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::string const,AssetManager::Texture>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>>) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r6
  glitch::IReferenceCounted *v4; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = *((glitch::IReferenceCounted **)v3 + 12);
  *((_DWORD *)v3 + 10) = off_96BDD8;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  std::string::~string((std::string *)(v3 + 16));
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x34u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 50a9dc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  glitch::IReferenceCounted *v4; // r0
  int v5; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(glitch::IReferenceCounted **)(v2 + 48);
      v5 = *(_DWORD *)(v2 + 8);
      *(_DWORD *)(v2 + 40) = off_96BDD8;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x34u);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 50aa4c AssetManager::~AssetManager() =====
void __fastcall AssetManager::~AssetManager(AssetManager *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 18) )
  {
    v2 = (char *)this + 56;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::scene::ISceneNode *>,std::priv::_Select1st<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::scene::ISceneNode *>>,std::allocator<std::pair<std::string const,glitch::scene::ISceneNode *>>>::_M_erase(
      (int)this + 56,
      *((_DWORD **)this + 15));
    *((_DWORD *)this + 17) = v2;
    *((_DWORD *)this + 18) = 0;
    *((_DWORD *)this + 16) = v2;
    *((_DWORD *)this + 15) = 0;
  }
  if ( *((_DWORD *)this + 10) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_erase(
      (int)this + 24,
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = (char *)this + 24;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = (char *)this + 24;
    *((_DWORD *)this + 7) = 0;
  }
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_erase(
      (int)this,
      *((_DWORD *)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 50aaec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_create_node(std::pair<std::string const,AssetManager::Texture> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  char *result; // r0
  int v5; // r3
  size_t v6; // [sp+4h] [bp-4h] BYREF

  v6 = 52;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  result = v3;
  *((_DWORD *)v3 + 11) = *(_DWORD *)(a2 + 28);
  *((_DWORD *)v3 + 10) = off_96BDD8;
  v5 = *(_DWORD *)(a2 + 32);
  *((_DWORD *)v3 + 12) = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return result;
}


// ===== 50ab7c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,AssetManager::Texture> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_create_node(
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


// ===== 50ac6c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_create_node(std::pair<std::string const,AssetManager::SceneNode> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  int v4; // r3
  size_t v6; // [sp+4h] [bp-4h] BYREF

  v6 = 52;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *((_DWORD *)v3 + 11) = *(_DWORD *)(a2 + 28);
  *((_DWORD *)v3 + 10) = off_96BDC8;
  v4 = *(_DWORD *)(a2 + 32);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  *((_DWORD *)v3 + 12) = v4;
  return v3;
}


// ===== 50acec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,AssetManager::SceneNode> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_create_node(
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


// ===== 50addc AssetManager::getNextAsset(std::string &) =====
int __fastcall AssetManager::getNextAsset(AssetManager *this, std::string *a2)
{
  char *v2; // r8
  char *v5; // r10
  size_t v6; // r0
  int v7; // r3
  int v8; // r2
  char *v10; // r8
  size_t v11; // r0
  _DWORD *v12; // r3
  size_t v13; // r0
  _DWORD *v14; // r0
  _DWORD *v15; // r2
  int v16; // r1
  _DWORD *v17; // r2
  char v18[100]; // [sp+0h] [bp-6Ch] BYREF

  v2 = (char *)this + 24;
  if ( (AssetManager *)((char *)this + 24) == *((AssetManager **)this + 12) )
  {
    if ( this != *((AssetManager **)this + 13) )
    {
      std::string::_M_assign(a2, "Scene node: ", "");
      v10 = *(char **)(*((_DWORD *)this + 13) + 36);
      v11 = LC_API_STRLEN_0(v10);
      std::string::_M_append(a2, v10, &v10[v11]);
      v12 = *((_DWORD **)this + 13);
      if ( v12[12] )
      {
        std::string::_M_append(a2, " Ref #: ", "");
        sprintf(
          v18,
          "%d",
          *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 13) + 48)
                    + *(_DWORD *)(**(_DWORD **)(*((_DWORD *)this + 13) + 48) - 12)
                    + 4));
        v13 = LC_API_STRLEN_0(v18);
        std::string::_M_append(a2, v18, &v18[v13]);
        v12 = *((_DWORD **)this + 13);
      }
      v14 = (_DWORD *)v12[3];
      v15 = v14;
      if ( v14 )
      {
        while ( v15[2] )
          v15 = (_DWORD *)v15[2];
        *((_DWORD *)this + 13) = v15;
      }
      else
      {
        v17 = (_DWORD *)v12[1];
        if ( v12 == (_DWORD *)v17[3] )
        {
          while ( *(_DWORD **)(v17[1] + 12) == v17 )
            v17 = (_DWORD *)v17[1];
          v12 = v17;
          v14 = (_DWORD *)v17[3];
          v17 = (_DWORD *)v17[1];
        }
        if ( v17 != v14 )
          v12 = v17;
        *((_DWORD *)this + 13) = v12;
      }
      return 1;
    }
    return 0;
  }
  else
  {
    std::string::_M_assign(a2, "Texture: ", "");
    v5 = *(char **)(*((_DWORD *)this + 12) + 36);
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_append(a2, v5, &v5[v6]);
    v7 = *((_DWORD *)this + 12);
    v8 = *(_DWORD *)(v7 + 12);
    if ( v8 )
    {
      while ( *(_DWORD *)(v8 + 8) )
        v8 = *(_DWORD *)(v8 + 8);
      v7 = v8;
    }
    else
    {
      v16 = *(_DWORD *)(v7 + 4);
      if ( v7 == *(_DWORD *)(v16 + 12) )
      {
        do
        {
          v7 = v16;
          v16 = *(_DWORD *)(v16 + 4);
        }
        while ( *(_DWORD *)(v16 + 12) == v7 );
        v8 = *(_DWORD *)(v7 + 12);
      }
      if ( v8 != v16 )
        v7 = v16;
    }
    *((_DWORD *)this + 12) = v7;
    if ( v2 != (char *)v7 )
      return 1;
    *((_DWORD *)this + 13) = *((_DWORD *)this + 2);
    return 1;
  }
}


// ===== 50b020 AssetManager::getFirstAsset(std::string &) =====
int __fastcall AssetManager::getFirstAsset(AssetManager *this, std::string *a2)
{
  int v2; // r2

  v2 = *((_DWORD *)this + 8);
  *((_DWORD *)this + 13) = this;
  *((_DWORD *)this + 12) = v2;
  return AssetManager::getNextAsset(this, a2);
}


// ===== 50b034 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_lower_bound<char const*>(
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


// ===== 50b168 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(std::pair<std::string const,AssetManager::Texture> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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


// ===== 50b380 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(std::pair<std::string const,AssetManager::SceneNode> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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


// ===== 50b598 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_find<std::string>(std::string const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_find<std::string>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r9
  const void *v5; // r7
  _DWORD *v6; // r8
  signed int v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  const void *v12; // r3
  int v13; // r4
  size_t v14; // r2
  int v15; // r0

  v2 = (_DWORD *)a1[1];
  v4 = a1;
  if ( !v2 )
    return v4;
  v5 = *(const void **)(a2 + 20);
  v6 = a1;
  v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v5;
  do
  {
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      v10 = v7 >= v9 ? v2[8] - (_DWORD)v8 : v7;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
        break;
      if ( v9 < v7 )
        goto LABEL_10;
LABEL_4:
      v6 = v2;
      v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_11;
    }
    if ( v11 >= 0 )
      goto LABEL_4;
LABEL_10:
    v2 = (_DWORD *)v2[3];
  }
  while ( v2 );
LABEL_11:
  if ( v6 == a1 )
    return v6;
  v12 = (const void *)v6[9];
  v13 = v6[8] - (_DWORD)v12;
  if ( v13 >= v7 )
    v14 = v7;
  else
    v14 = v6[8] - (_DWORD)v12;
  v15 = memcmp(v5, v12, v14);
  if ( v15 )
  {
    if ( v15 >= 0 )
      return v6;
  }
  else if ( v7 >= v13 )
  {
    return v6;
  }
  return v4;
}


// ===== 50b66c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_find<std::string>(std::string const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_find<std::string>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r9
  const void *v5; // r7
  _DWORD *v6; // r8
  signed int v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  const void *v12; // r3
  int v13; // r4
  size_t v14; // r2
  int v15; // r0

  v2 = (_DWORD *)a1[1];
  v4 = a1;
  if ( !v2 )
    return v4;
  v5 = *(const void **)(a2 + 20);
  v6 = a1;
  v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v5;
  do
  {
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      v10 = v7 >= v9 ? v2[8] - (_DWORD)v8 : v7;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
        break;
      if ( v9 < v7 )
        goto LABEL_10;
LABEL_4:
      v6 = v2;
      v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_11;
    }
    if ( v11 >= 0 )
      goto LABEL_4;
LABEL_10:
    v2 = (_DWORD *)v2[3];
  }
  while ( v2 );
LABEL_11:
  if ( v6 == a1 )
    return v6;
  v12 = (const void *)v6[9];
  v13 = v6[8] - (_DWORD)v12;
  if ( v13 >= v7 )
    v14 = v7;
  else
    v14 = v6[8] - (_DWORD)v12;
  v15 = memcmp(v5, v12, v14);
  if ( v15 )
  {
    if ( v15 >= 0 )
      return v6;
  }
  else if ( v7 >= v13 )
  {
    return v6;
  }
  return v4;
}


// ===== 50b740 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,AssetManager::Texture>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>>,std::pair<std::string const,AssetManager::Texture> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_insert(
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


// ===== 50bc44 std::map<std::string,AssetManager::Texture,std::less<std::string>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,AssetManager::Texture>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+8h] [bp-6Ch] BYREF
  char *v14; // [sp+Ch] [bp-68h] BYREF
  std::string v15; // [sp+18h] [bp-5Ch] BYREF
  void (**v16)(AssetManager::Texture *__hidden); // [sp+30h] [bp-44h]
  int v17; // [sp+34h] [bp-40h]
  glitch::IReferenceCounted *v18; // [sp+38h] [bp-3Ch]
  std::string v19; // [sp+3Ch] [bp-38h] BYREF
  std::string v20; // [sp+54h] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 != a1 )
  {
    std::string::string(&v20, *a2);
    v5 = *((const void **)v4 + 9);
    v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
    v7 = v20._M_finish - v20._M_start_of_storage._M_data;
    if ( v6 >= v20._M_finish - v20._M_start_of_storage._M_data )
      v8 = v20._M_finish - v20._M_start_of_storage._M_data;
    else
      v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
    v9 = memcmp(v20._M_start_of_storage._M_data, v5, v8);
    if ( v9 )
    {
      if ( v9 >= 0 )
        goto LABEL_7;
    }
    else if ( v7 >= v6 )
    {
LABEL_7:
      std::string::~string(&v20);
      v10 = v4;
      return v10 + 40;
    }
    std::string::~string(&v20);
  }
  std::string::string(&v19, *a2);
  v15._M_finish = (char *)&v15;
  v15._M_start_of_storage._M_data = (char *)&v15;
  std::string::_M_range_initialize(&v15, v19._M_start_of_storage._M_data, v19._M_finish);
  v17 = 0x7FFFFFFF;
  v13 = v4;
  v18 = nullptr;
  v16 = off_96BDD8;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::insert_unique(
    &v14,
    a1,
    &v13,
    (int)&v15);
  v16 = off_96BDD8;
  v12 = v14;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  std::string::~string(&v15);
  std::string::~string(&v19);
  v10 = v12;
  return v10 + 40;
}


// ===== 50bdb4 AssetManager::loadTexture(char const*,int) =====
AssetManager *__fastcall AssetManager::loadTexture(glitch::IReferenceCounted **this, char *a2, char *a3, int a4)
{
  const char *v6; // r7
  char *v7; // r0
  int v8; // r3
  char *v9; // r5
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r7
  glitch::IReferenceCounted *v12; // r0
  AssetManager *result; // r0
  glitch::IReferenceCounted *v14; // r3
  glitch::IReferenceCounted *v15; // r0
  char *v16; // [sp+4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-8h] BYREF

  *this = nullptr;
  v16 = a3;
  v6 = *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224);
  v7 = std::map<std::string,AssetManager::Texture>::operator[]<char const*>(a2 + 24, &v16);
  v8 = *((_DWORD *)v7 + 2);
  v9 = v7;
  if ( v8 )
  {
    v10 = *((glitch::IReferenceCounted **)v7 + 2);
    ++*(_DWORD *)(v8 + 4);
    glitch::IReferenceCounted::drop(v10);
    v11 = *((glitch::IReferenceCounted **)v9 + 2);
    if ( v11 )
      *((_DWORD *)v11 + 1) += 2;
    v12 = *this;
    *this = v11;
    if ( v12 )
LABEL_5:
      glitch::IReferenceCounted::drop(v12);
  }
  else
  {
    glitch::video::CTextureManager::getTexture((glitch::video::CTextureManager *)&v17, v6, v16);
    v14 = v17;
    if ( v17 )
      ++*((_DWORD *)v17 + 1);
    v15 = *this;
    *this = v14;
    if ( v15 )
      glitch::IReferenceCounted::drop(v15);
    if ( v17 )
      glitch::IReferenceCounted::drop(v17);
    v11 = *this;
    if ( *this )
      *((_DWORD *)v11 + 1) += 2;
    v12 = *((glitch::IReferenceCounted **)v9 + 2);
    *((_DWORD *)v9 + 2) = v11;
    if ( v12 )
      goto LABEL_5;
  }
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  result = (AssetManager *)this;
  if ( a4 < *((_DWORD *)v9 + 1) )
    *((_DWORD *)v9 + 1) = a4;
  return result;
}


// ===== 50bef0 AssetManager::preloadTexture(char const*,int) =====
glitch::IReferenceCounted *__fastcall AssetManager::preloadTexture(AssetManager *this, char *a2, int a3)
{
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v4; // [sp+4h] [bp-8h] BYREF

  AssetManager::loadTexture(&v4, (char *)this, a2, a3);
  result = v4;
  if ( v4 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v4);
  return result;
}


// ===== 50bf28 AssetManager::dropTexture(char const*) =====
glitch::IReferenceCounted **__fastcall AssetManager::dropTexture(AssetManager *this, char *a2)
{
  unsigned __int8 *v2; // r6
  glitch::IReferenceCounted **result; // r0
  unsigned __int8 *v4; // r0
  char *v5; // [sp+4h] [bp-30h] BYREF
  unsigned __int8 *v6; // [sp+8h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v7; // [sp+Ch] [bp-28h] BYREF
  std::string v8; // [sp+14h] [bp-20h] BYREF

  v2 = (unsigned __int8 *)this + 24;
  v5 = a2;
  result = (glitch::IReferenceCounted **)std::map<std::string,AssetManager::Texture>::operator[]<char const*>(
                                           (char *)this + 24,
                                           &v5);
  v7 = result[2];
  if ( v7 )
  {
    ++*((_DWORD *)v7 + 1);
    result = (glitch::IReferenceCounted **)v7;
    if ( v7 )
    {
      if ( *((_DWORD *)v7 + 1) > 1u )
        return (glitch::IReferenceCounted **)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
      glitch::video::CTextureManager::removeTexture(
        *(glitch::video::CTextureManager **)(*(_DWORD *)(dword_99F73C + 16) + 224),
        &v7);
      std::string::string(&v8, v5);
      v4 = (unsigned __int8 *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::_M_find<std::string>(
                                v2,
                                (int)&v8);
      if ( v4 != v2 )
      {
        v6 = v4;
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::Texture>,std::priv::_Select1st<std::pair<std::string const,AssetManager::Texture>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::Texture>>,std::allocator<std::pair<std::string const,AssetManager::Texture>>>::erase(
          (int)v2,
          &v6);
      }
      std::string::~string(&v8);
      result = (glitch::IReferenceCounted **)v7;
      if ( v7 )
        return (glitch::IReferenceCounted **)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
    }
  }
  return result;
}


// ===== 50c02c AssetManager::clearTexture(int) =====
glitch::IReferenceCounted **__fastcall AssetManager::clearTexture(glitch::IReferenceCounted **this, int a2)
{
  glitch::IReferenceCounted **v2; // r4
  AssetManager *v3; // r7
  glitch::IReferenceCounted **v5; // r5
  glitch::IReferenceCounted **v6; // r2
  glitch::IReferenceCounted **v7; // r1
  glitch::IReferenceCounted **v8; // r2
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r3

  v2 = (glitch::IReferenceCounted **)*(this + 8);
  v3 = (AssetManager *)this;
  v5 = this + 6;
  while ( v5 != v2 )
  {
    while ( 1 )
    {
      v6 = v2;
      if ( a2 > (int)v2[11] )
        break;
      v7 = (glitch::IReferenceCounted **)v2[3];
      if ( v7 )
      {
        while ( v7[2] )
          v7 = (glitch::IReferenceCounted **)v7[2];
        v2 = v7;
      }
      else
      {
        v10 = v2[1];
        if ( v2 == *((glitch::IReferenceCounted ***)v10 + 3) )
        {
          do
          {
            v2 = (glitch::IReferenceCounted **)v10;
            v10 = *((glitch::IReferenceCounted **)v10 + 1);
          }
          while ( *((glitch::IReferenceCounted ***)v10 + 3) == v2 );
          v7 = (glitch::IReferenceCounted **)v2[3];
        }
        if ( v10 != (glitch::IReferenceCounted *)v7 )
          v2 = (glitch::IReferenceCounted **)v10;
      }
      this = AssetManager::dropTexture(v3, (char *)v6[9]);
      if ( v5 == v2 )
        return this;
    }
    v8 = (glitch::IReferenceCounted **)v2[3];
    if ( v8 )
    {
      while ( v8[2] )
        v8 = (glitch::IReferenceCounted **)v8[2];
      v2 = v8;
    }
    else
    {
      v9 = v2[1];
      if ( v2 == *((glitch::IReferenceCounted ***)v9 + 3) )
      {
        do
        {
          v2 = (glitch::IReferenceCounted **)v9;
          v9 = *((glitch::IReferenceCounted **)v9 + 1);
        }
        while ( *((glitch::IReferenceCounted ***)v9 + 3) == v2 );
        v8 = (glitch::IReferenceCounted **)v2[3];
      }
      if ( v9 != (glitch::IReferenceCounted *)v8 )
        v2 = (glitch::IReferenceCounted **)v9;
    }
  }
  return this;
}


// ===== 50c124 AssetManager::dropTexture(boost::intrusive_ptr<glitch::video::ITexture>) =====
glitch::IReferenceCounted **__fastcall AssetManager::dropTexture(glitch::IReferenceCounted **this, int *a2)
{
  int v2; // r5
  AssetManager *v3; // r4
  glitch::IReferenceCounted **v5; // r8
  int v6; // r6
  int v7; // r7
  glitch::IReferenceCounted *v8; // r0
  int v9; // r2
  int v10; // r3

  v2 = (int)*(this + 8);
  v3 = (AssetManager *)this;
  v5 = this + 6;
  while ( v5 != (glitch::IReferenceCounted **)v2 )
  {
    while ( 1 )
    {
      v6 = *(_DWORD *)(v2 + 48);
      if ( v6 )
      {
        v8 = *(glitch::IReferenceCounted **)(v2 + 48);
        ++*(_DWORD *)(v6 + 4);
        v7 = *a2;
        this = (glitch::IReferenceCounted **)glitch::IReferenceCounted::drop(v8);
      }
      else
      {
        v7 = *a2;
      }
      if ( v6 == v7 )
        return AssetManager::dropTexture(v3, *(char **)(v2 + 36));
      v9 = *(_DWORD *)(v2 + 12);
      if ( !v9 )
        break;
      while ( *(_DWORD *)(v9 + 8) )
        v9 = *(_DWORD *)(v9 + 8);
      v2 = v9;
      if ( v5 == (glitch::IReferenceCounted **)v9 )
        return this;
    }
    v10 = *(_DWORD *)(v2 + 4);
    if ( v2 == *(_DWORD *)(v10 + 12) )
    {
      do
      {
        v2 = v10;
        v10 = *(_DWORD *)(v10 + 4);
      }
      while ( *(_DWORD *)(v10 + 12) == v2 );
      v9 = *(_DWORD *)(v2 + 12);
    }
    if ( v10 != v9 )
      v2 = v10;
  }
  return this;
}


// ===== 50c1e4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,AssetManager::SceneNode>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>>,std::pair<std::string const,AssetManager::SceneNode> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_insert(
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


// ===== 50c6e8 std::map<std::string,AssetManager::SceneNode,std::less<std::string>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::operator[]<std::string>(std::string const&) =====
char *__fastcall std::map<std::string,AssetManager::SceneNode>::operator[]<std::string>(int a1, int a2)
{
  int v2; // r4
  const char *v4; // r11
  _BYTE *v5; // r10
  int v6; // r8
  int v7; // r7
  const void *v8; // r3
  int v9; // r6
  size_t v10; // r2
  int v11; // r0
  int v12; // r3
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // nf
  char *v19; // r0
  char *v20; // r4
  char *v22; // [sp+8h] [bp-34h] BYREF
  char *v23; // [sp+Ch] [bp-30h] BYREF
  std::string v24; // [sp+10h] [bp-2Ch] BYREF
  void (**v25)(AssetManager::SceneNode *__hidden); // [sp+28h] [bp-14h]
  int v26; // [sp+2Ch] [bp-10h]
  _DWORD *v27; // [sp+30h] [bp-Ch]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    v4 = *(const char **)(a2 + 16);
    v5 = *(_BYTE **)(a2 + 20);
    v6 = a1;
    v7 = v4 - v5;
    while ( 1 )
    {
      v8 = *(const void **)(v2 + 36);
      v9 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      else
        v10 = v4 - v5;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_8:
          v12 = *(_DWORD *)(v2 + 8);
          if ( !v12 )
            goto LABEL_12;
          goto LABEL_9;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_8;
      }
      v12 = *(_DWORD *)(v2 + 12);
      v2 = v6;
      if ( !v12 )
        goto LABEL_12;
LABEL_9:
      v6 = v2;
      v2 = v12;
    }
  }
  v4 = *(const char **)(a2 + 16);
  v5 = *(_BYTE **)(a2 + 20);
  v2 = a1;
LABEL_12:
  if ( a1 != v2 )
  {
    v13 = *(const void **)(v2 + 36);
    v14 = *(_DWORD *)(v2 + 32) - (_DWORD)v13;
    if ( v14 >= v4 - v5 )
      v15 = v4 - v5;
    else
      v15 = *(_DWORD *)(v2 + 32) - (_DWORD)v13;
    v16 = memcmp(v5, v13, v15);
    v17 = v16 == 0;
    v18 = v16 < 0;
    v19 = (char *)v2;
    if ( v17 )
    {
      if ( v4 - v5 >= v14 )
        return v19 + 40;
    }
    else if ( !v18 )
    {
      return v19 + 40;
    }
  }
  v24._M_finish = (char *)&v24;
  v24._M_start_of_storage._M_data = (char *)&v24;
  std::string::_M_range_initialize(&v24, v5, v4);
  v26 = 0x7FFFFFFF;
  v22 = (char *)v2;
  v27 = nullptr;
  v25 = off_96BDC8;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::insert_unique(
    &v23,
    (char *)a1,
    &v22,
    (int)&v24);
  v25 = off_96BDC8;
  v20 = v23;
  if ( v27 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v27 + *(_DWORD *)(*v27 - 12)));
  std::string::~string(&v24);
  v19 = v20;
  return v19 + 40;
}


// ===== 50c8a0 AssetManager::dropSceneNode(std::string const&) =====
void __fastcall AssetManager::dropSceneNode(AssetManager *this, const std::string *a2)
{
  char *v4; // r0
  unsigned __int8 *v5; // r0
  unsigned __int8 *v6; // [sp+4h] [bp-8h] BYREF

  if ( !*((_DWORD *)std::map<std::string,AssetManager::SceneNode>::operator[]<std::string>((int)this, (int)a2) + 2)
    || (v4 = std::map<std::string,AssetManager::SceneNode>::operator[]<std::string>((int)this, (int)a2),
        *(_DWORD *)(*((_DWORD *)v4 + 2) + *(_DWORD *)(**((_DWORD **)v4 + 2) - 12) + 4) <= 1u) )
  {
    v5 = (unsigned __int8 *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::_M_find<std::string>(
                              this,
                              (int)a2);
    if ( v5 != (unsigned __int8 *)this )
    {
      v6 = v5;
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,AssetManager::SceneNode>,std::priv::_Select1st<std::pair<std::string const,AssetManager::SceneNode>>,std::priv::_MapTraitsT<std::pair<std::string const,AssetManager::SceneNode>>,std::allocator<std::pair<std::string const,AssetManager::SceneNode>>>::erase(
        (int)this,
        &v6);
    }
  }
}


// ===== 50c918 AssetManager::clearSceneNode(int) =====
void __fastcall AssetManager::clearSceneNode(AssetManager *this, int a2)
{
  AssetManager *v2; // r4
  AssetManager *v5; // r1
  AssetManager *v6; // r2
  AssetManager *v7; // r2
  int v8; // r3
  int v9; // r3

  v2 = *((AssetManager **)this + 2);
  while ( this != v2 )
  {
    while ( 1 )
    {
      v5 = v2;
      if ( a2 > *((_DWORD *)v2 + 11) )
        break;
      v6 = *((AssetManager **)v2 + 3);
      if ( v6 )
      {
        while ( *((_DWORD *)v6 + 2) )
          v6 = *((AssetManager **)v6 + 2);
        v2 = v6;
      }
      else
      {
        v9 = *((_DWORD *)v2 + 1);
        if ( v2 == *(AssetManager **)(v9 + 12) )
        {
          do
          {
            v2 = (AssetManager *)v9;
            v9 = *(_DWORD *)(v9 + 4);
          }
          while ( *(AssetManager **)(v9 + 12) == v2 );
          v6 = *((AssetManager **)v2 + 3);
        }
        if ( (AssetManager *)v9 != v6 )
          v2 = (AssetManager *)v9;
      }
      AssetManager::dropSceneNode(this, (const std::string *)((char *)v5 + 16));
      if ( this == v2 )
        return;
    }
    v7 = *((AssetManager **)v2 + 3);
    if ( v7 )
    {
      while ( *((_DWORD *)v7 + 2) )
        v7 = *((AssetManager **)v7 + 2);
      v2 = v7;
    }
    else
    {
      v8 = *((_DWORD *)v2 + 1);
      if ( v2 == *(AssetManager **)(v8 + 12) )
      {
        do
        {
          v2 = (AssetManager *)v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(AssetManager **)(v8 + 12) == v2 );
        v7 = *((AssetManager **)v2 + 3);
      }
      if ( (AssetManager *)v8 != v7 )
        v2 = (AssetManager *)v8;
    }
  }
}


// ===== 50ca0c AssetManager::clear(int) =====
glitch::IReferenceCounted **__fastcall AssetManager::clear(AssetManager *this, int a2)
{
  AssetManager::clearSceneNode(this, a2);
  return AssetManager::clearTexture((glitch::IReferenceCounted **)this, a2);
}


// ===== 50ca2c AssetManager::dropSceneNode(char const*,char const*) =====
void __fastcall AssetManager::dropSceneNode(AssetManager *this, char *a2, char *a3)
{
  size_t v5; // r0
  std::string v6; // [sp+4h] [bp-20h] BYREF

  std::string::string(&v6, a2);
  std::string::_M_append(&v6, "#", "");
  v5 = LC_API_STRLEN_0(a3);
  std::string::_M_append(&v6, a3, &a3[v5]);
  AssetManager::dropSceneNode(this, &v6);
  std::string::~string(&v6);
}


// ===== 50cacc glitch::scene::SViewFrustum::intersectsWithoutBoxTest3(glitch::core::aabbox3d<float> const&) =====
bool __fastcall glitch::scene::SViewFrustum::intersectsWithoutBoxTest3(float *a1, float *a2)
{
  float v2; // r11
  float v3; // r9
  float v4; // r10
  float v5; // r11
  float v6; // r9
  float v7; // r10
  float v9; // r11
  float v10; // r9
  float v11; // r10

  if ( a1[11] < 0.0 )
    v2 = a2[3];
  else
    v2 = *a2;
  if ( a1[12] < 0.0 )
    v3 = a2[4];
  else
    v3 = a2[1];
  if ( a1[13] < 0.0 )
    v4 = a2[5];
  else
    v4 = a2[2];
  if ( (float)((float)((float)((float)(a1[11] * v2) + (float)(a1[12] * v3)) + (float)(a1[13] * v4)) + a1[14]) > 0.0 )
    return 0;
  v5 = a1[15] < 0.0 ? a2[3] : *a2;
  v6 = a1[16] < 0.0 ? a2[4] : a2[1];
  v7 = a1[17] < 0.0 ? a2[5] : a2[2];
  if ( (float)((float)((float)((float)(a1[15] * v5) + (float)(a1[16] * v6)) + (float)(a1[17] * v7)) + a1[18]) > 0.0 )
    return 0;
  if ( a1[3] < 0.0 )
    v9 = a2[3];
  else
    v9 = *a2;
  if ( a1[4] < 0.0 )
    v10 = a2[4];
  else
    v10 = a2[1];
  if ( a1[5] < 0.0 )
    v11 = a2[5];
  else
    v11 = a2[2];
  return (float)((float)((float)((float)(a1[3] * v9) + (float)(a1[4] * v10)) + (float)(a1[5] * v11)) + a1[6]) <= 0.0;
}


// ===== 50cd10 glitch::scene::CBatchMesh::getIndexRange(uint &,uint &,glitch::scene::CBatchMesh::SSegment const*) =====
int __fastcall glitch::scene::CBatchMesh::getIndexRange(int a1, _DWORD *a2, _DWORD *a3, int a4)
{
  int result; // r0

  result = *(_DWORD *)(a4 + 16);
  *a2 = result;
  *a3 = *(_DWORD *)(a4 + 20);
  return result;
}


// ===== 50cd24 glitch::scene::CBatchMesh::init(void) =====
void __fastcall glitch::scene::CBatchMesh::init(glitch::scene::CBatchMesh *this)
{
  ;
}


// ===== 50cd28 glitch::scene::CBatchMesh::saveSegmentExtraData(void const*,glitch::io::IWriteFile *,bool) =====
void glitch::scene::CBatchMesh::saveSegmentExtraData()
{
  ;
}


// ===== 50cd2c glitch::scene::CBatchSceneNode::getType(void) =====
int __fastcall glitch::scene::CBatchSceneNode::getType(glitch::scene::CBatchSceneNode *this)
{
  return 1853055330;
}


// ===== 50cd38 glitch::scene::CBatchSceneNode::preRegisterSceneNode(void) =====
void __fastcall glitch::scene::CBatchSceneNode::preRegisterSceneNode(glitch::scene::CBatchSceneNode *this)
{
  ;
}


// ===== 50cd3c glitch::scene::CBatchSceneNode::isSegmentVisible(glitch::scene::CBatchMesh::SSegment const&) =====
int __fastcall glitch::scene::CBatchSceneNode::isSegmentVisible(int a1, int a2)
{
  return *(unsigned __int8 *)(a2 + 32);
}


// ===== 50cd44 batch::GOBatchSceneNode::isSegmentVisible(glitch::scene::CBatchMesh::SSegment const&) =====
int __fastcall batch::GOBatchSceneNode::isSegmentVisible(int a1, int a2)
{
  _BYTE *v3; // r4

  v3 = *(_BYTE **)(*(_DWORD *)(*(_DWORD *)(a1 + 304) + 8)
                 + *(_DWORD *)(a2 + 4) * *(_DWORD *)(*(_DWORD *)(a1 + 304) + 112)
                 + 44);
  if ( (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v3 + 196))(v3) && v3[750] && !v3[752] || !v3[128] )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 32);
}


// ===== 50cdb0 glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector3>(uint,glitch::scene::SFrustumBoxIntersector3) =====
int __fastcall glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector3>(
        _DWORD *a1,
        int a2,
        float *a3)
{
  _DWORD *v3; // r3
  int result; // r0
  int v6; // r11
  int v7; // r12
  int v8; // r7
  unsigned int v9; // r10
  unsigned int v10; // r5
  int v11; // r8
  int v12; // r7
  int v13; // r6
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r1

  v3 = (_DWORD *)a1[76];
  result = 20;
  v6 = 20 * a2;
  v7 = v3[8] + 20 * a2;
  v8 = *(unsigned __int16 *)(v7 + 12);
  v9 = (unsigned __int16)(*(_WORD *)(v7 + 14) - v8);
  if ( *(_WORD *)(v7 + 14) != (_WORD)v8 )
  {
    v10 = 0;
    while ( 1 )
    {
      v11 = v3[2];
      v12 = v3[28] * (v8 + v10);
      v13 = v11 + v12;
      result = (int)a1;
      ++v10;
      if ( *(_DWORD *)(v11 + v12 + 28) != glitch::os::Timer::TickCount
        && (result = (*(int (__fastcall **)(_DWORD *, int))(*a1 + 264))(a1, v11 + v12)) != 0
        && (result = glitch::scene::SViewFrustum::intersectsWithoutBoxTest3(a3, *(float **)(v13 + 12))) != 0 )
      {
        v14 = a1[86] + 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * *(_DWORD *)(v13 + 4));
        v15 = *(_DWORD *)(v14 + 12);
        if ( *(_DWORD *)(v14 + 8) != *(_DWORD *)(v13 + 28) )
          v15 |= 1u;
        *(_DWORD *)(v14 + 12) = v15;
        v16 = *(_DWORD *)(v13 + 4);
        *(_DWORD *)(v13 + 28) = glitch::os::Timer::TickCount;
        v17 = a1[86];
        v18 = 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * v16);
        v19 = *(_DWORD *)(v17 + v18);
        result = v19 + 1;
        *(_DWORD *)(v17 + 4 * *(_DWORD *)(v17 + v18 + 16) + 4 * v19) = v13;
        *(_DWORD *)(v17 + v18) = v19 + 1;
        if ( v10 >= v9 )
          return result;
      }
      else if ( v10 >= v9 )
      {
        return result;
      }
      v3 = (_DWORD *)a1[76];
      v8 = *(unsigned __int16 *)(v3[8] + v6 + 12);
    }
  }
  return result;
}


// ===== 50cf00 glitch::scene::CBatchMeshExt<GameObject *>::loadSegmentExtraData(void *,glitch::io::IReadFile *,bool) =====
void glitch::scene::CBatchMeshExt<GameObject *>::loadSegmentExtraData()
{
  ;
}


// ===== 50cf04 glitch::scene::CBatchMeshExt<GameObject *>::saveSegmentExtraData(void const*,glitch::io::IWriteFile *,glitch::os::E_ENDIAN) =====
void glitch::scene::CBatchMeshExt<GameObject *>::saveSegmentExtraData()
{
  ;
}


// ===== 50cf08 batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  *(_DWORD *)this = off_96BE54;
  *((_DWORD *)this + 88) = off_96BF74;
  glitch::scene::CBatchSceneNode::~CBatchSceneNode(this);
}


// ===== 50cf54 `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  batch::GOBatchSceneNode::~GOBatchSceneNode((batch::GOBatchSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 50cf64 `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  batch::GOBatchSceneNode::~GOBatchSceneNode((batch::GOBatchSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 50cf74 glitch::scene::CBatchMeshExt<GameObject *>::~CBatchMeshExt() =====
glitch::scene::CBatchMesh *__fastcall glitch::scene::CBatchMeshExt<GameObject *>::~CBatchMeshExt(
        glitch::scene::CBatchMesh *a1)
{
  *(_DWORD *)a1 = off_96BDE8;
  glitch::scene::CBatchMesh::~CBatchMesh(a1);
  return a1;
}


// ===== 50cfa8 batch::BatchNodeCompiler::MakeNoBatchVisible(glitch::scene::ISceneNode *,bool) =====
char *__fastcall batch::BatchNodeCompiler::MakeNoBatchVisible(batch::BatchNodeCompiler *this, char **a2, bool a3)
{
  const char *v6; // r0
  char *v7; // r5
  char *i; // r4
  char *v9; // r6
  char *v10; // t1
  glitch::scene::ISceneNode *v11; // r1
  char NoBatchVisible; // r0

  v6 = (const char *)(*((int (__fastcall **)(char **))*a2 + 9))(a2);
  v7 = LC_API_STRSTR_0(v6, "nobatch");
  if ( v7 )
  {
    SetNodeVisibleRecur((glitch::scene::ISceneNode *)a2, a3);
    v7 = (_BYTE *)(&dword_0 + 1);
  }
  v10 = a2[61];
  v9 = (char *)(a2 + 61);
  for ( i = v10; v9 != i; v7 = (char *)(unsigned __int8)(NoBatchVisible | (unsigned __int8)v7) )
  {
    if ( i )
      v11 = (glitch::scene::ISceneNode *)(i - 4);
    else
      v11 = nullptr;
    NoBatchVisible = batch::BatchNodeCompiler::MakeNoBatchVisible(this, v11, a3);
    i = *(char **)i;
  }
  return v7;
}


// ===== 50d030 `global constructor keyed to'.._.._sources_Data_Collada_BatchNodeCompiler.cpp =====
int `global constructor keyed to'.._.._sources_Data_Collada_BatchNodeCompiler.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F622C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6228 = 1056964608;
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


// ===== 50d10c std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingBatchingCompiler";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingBatchingCompiler" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingBatchingCompiler" )
    result = (char *)memcpy(result, "isTracingBatchingCompiler", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 50d15c glitch::scene::CBatchMeshExt<GameObject *>::~CBatchMeshExt() =====
glitch::scene::CBatchMesh *__fastcall glitch::scene::CBatchMeshExt<GameObject *>::~CBatchMeshExt(
        glitch::scene::CBatchMesh *a1)
{
  *(_DWORD *)a1 = off_96BDE8;
  glitch::scene::CBatchMesh::~CBatchMesh(a1);
  CustomFree(a1);
  return a1;
}


// ===== 50d198 glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SUniverseIntersector>(uint,glitch::scene::SUniverseIntersector) =====
int __fastcall glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SUniverseIntersector>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r3
  int result; // r0
  int v5; // r11
  int v6; // r2
  __int16 v7; // r9
  int v8; // r2
  unsigned int v9; // r9
  unsigned int v10; // r5
  int v11; // r8
  int v12; // r7
  int v13; // r4
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r1

  v2 = (_DWORD *)a1[76];
  result = 20;
  v5 = 20 * a2;
  v6 = v2[8] + 20 * a2;
  v7 = *(_WORD *)(v6 + 14);
  v8 = *(unsigned __int16 *)(v6 + 12);
  v9 = (unsigned __int16)(v7 - v8);
  if ( v9 )
  {
    v10 = 0;
    while ( 1 )
    {
      v11 = v2[2];
      v12 = v2[28] * (v8 + v10);
      v13 = v11 + v12;
      result = (int)a1;
      ++v10;
      if ( *(_DWORD *)(v11 + v12 + 28) != glitch::os::Timer::TickCount )
      {
        result = (*(int (__fastcall **)(_DWORD *, int))(*a1 + 264))(a1, v11 + v12);
        if ( result )
        {
          v14 = a1[86] + 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * *(_DWORD *)(v13 + 4));
          v15 = *(_DWORD *)(v14 + 12);
          if ( *(_DWORD *)(v14 + 8) != *(_DWORD *)(v13 + 28) )
            v15 |= 1u;
          *(_DWORD *)(v14 + 12) = v15;
          v16 = *(_DWORD *)(v13 + 4);
          *(_DWORD *)(v13 + 28) = glitch::os::Timer::TickCount;
          v17 = a1[86];
          v18 = 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * v16);
          v19 = *(_DWORD *)(v17 + v18);
          result = v19 + 1;
          *(_DWORD *)(v17 + 4 * *(_DWORD *)(v17 + v18 + 16) + 4 * v19) = v13;
          *(_DWORD *)(v17 + v18) = v19 + 1;
        }
      }
      if ( v10 >= v9 )
        break;
      v2 = (_DWORD *)a1[76];
      v8 = *(unsigned __int16 *)(v2[8] + v5 + 12);
    }
  }
  return result;
}


// ===== 50d2c0 glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SBoxIntersector>(uint,glitch::scene::SBoxIntersector) =====
int __fastcall glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SBoxIntersector>(
        _DWORD *a1,
        int a2,
        float *a3)
{
  _DWORD *v4; // r3
  int result; // r0
  int v6; // r12
  __int16 v7; // r2
  unsigned int v8; // r10
  int v9; // r5
  int i; // r7
  int v11; // r8
  int v12; // r7
  _DWORD *v13; // r6
  float *v14; // r11
  int v15; // r3
  int v16; // r2
  int v17; // r1
  int v18; // r3
  int v19; // r2
  int v20; // r1
  int v21; // [sp+0h] [bp-Ch]

  v4 = (_DWORD *)a1[76];
  result = 20;
  v21 = 20 * a2;
  v6 = v4[8] + 20 * a2;
  v7 = *(_WORD *)(v6 + 12);
  v8 = (unsigned __int16)(*(_WORD *)(v6 + 14) - v7);
  if ( *(_WORD *)(v6 + 14) != v7 )
  {
    result = 1968;
    v9 = 0;
    for ( i = *(unsigned __int16 *)(v6 + 12); ; i = *(unsigned __int16 *)(v4[8] + v21 + 12) )
    {
      v11 = v4[2];
      v12 = v4[28] * (i + v9);
      v13 = (_DWORD *)(v11 + v12);
      if ( *(_DWORD *)(v11 + v12 + 28) != glitch::os::Timer::TickCount )
      {
        result = (*(int (__fastcall **)(_DWORD *, int))(*a1 + 264))(a1, v11 + v12);
        if ( result )
        {
          v14 = (float *)v13[3];
          result = *a3 <= v14[3];
          if ( *a3 <= v14[3] )
          {
            result = a3[1] <= v14[4];
            if ( a3[1] <= v14[4] )
            {
              result = a3[2] <= v14[5];
              if ( a3[2] <= v14[5] )
              {
                result = a3[3] >= *v14;
                if ( a3[3] >= *v14 )
                {
                  result = a3[4] >= v14[1];
                  if ( a3[4] >= v14[1] )
                  {
                    result = a3[5] >= v14[2];
                    if ( a3[5] >= v14[2] )
                    {
                      v15 = a1[86] + 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * v13[1]);
                      v16 = *(_DWORD *)(v15 + 12);
                      if ( *(_DWORD *)(v15 + 8) != v13[7] )
                        v16 |= 1u;
                      *(_DWORD *)(v15 + 12) = v16;
                      v17 = v13[1];
                      v13[7] = glitch::os::Timer::TickCount;
                      v18 = a1[86];
                      v19 = 20 * *(_DWORD *)(**(_DWORD **)(v11 + v12) + 8 * v17);
                      v20 = *(_DWORD *)(v18 + v19);
                      result = v20 + 1;
                      *(_DWORD *)(v18 + 4 * *(_DWORD *)(v18 + v19 + 16) + 4 * v20) = v13;
                      *(_DWORD *)(v18 + v19) = v20 + 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
      if ( ++v9 >= v8 )
        break;
      v4 = (_DWORD *)a1[76];
    }
  }
  return result;
}


// ===== 50d49c glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector>(uint,glitch::scene::SFrustumBoxIntersector) =====
int __fastcall glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector>(
        _DWORD *a1,
        int a2,
        float *a3)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r3
  int result; // r0
  int v6; // r1
  __int16 v7; // r12
  int v8; // r2
  int v9; // r6
  _DWORD *v10; // r8
  float *v11; // r5
  float *v12; // r7
  float v13; // r11
  float v14; // r4
  float v15; // r9
  float v16; // r10
  float v17; // r6
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r2
  int v23; // r1
  int v24; // [sp+0h] [bp-34h]
  int v25; // [sp+4h] [bp-30h]
  int v26; // [sp+8h] [bp-2Ch]
  unsigned int v27; // [sp+Ch] [bp-28h]
  int v28; // [sp+10h] [bp-24h]
  int v29; // [sp+18h] [bp-1Ch]
  _DWORD *v30; // [sp+1Ch] [bp-18h]

  v3 = a1;
  v4 = (_DWORD *)a1[76];
  result = 20;
  v28 = 20 * a2;
  v6 = v4[8] + 20 * a2;
  v7 = *(_WORD *)(v6 + 14);
  v8 = *(unsigned __int16 *)(v6 + 12);
  v27 = (unsigned __int16)(v7 - v8);
  if ( v7 != (_WORD)v8 )
  {
    v9 = 0;
    result = (int)&glitch::os::Timer::TickCount;
    while ( 1 )
    {
      v24 = v4[28] * (v8 + v9);
      v25 = v4[2];
      v10 = (_DWORD *)(v25 + v24);
      if ( *(_DWORD *)(v25 + v24 + 28) == glitch::os::Timer::TickCount
        || (result = (*(int (__fastcall **)(_DWORD *, _DWORD *))(*v3 + 264))(v3, v10)) == 0 )
      {
LABEL_4:
        if ( ++v9 >= v27 )
          return result;
      }
      else
      {
        v11 = a3;
        v12 = (float *)v10[3];
        v26 = 0;
        v29 = v9;
        v30 = v3;
        do
        {
          if ( v11[3] < 0.0 )
            v13 = v12[3];
          else
            v13 = *v12;
          if ( v11[4] < 0.0 )
            v15 = v12[4];
          else
            v15 = v12[1];
          if ( v11[5] < 0.0 )
            v16 = v12[5];
          else
            v16 = v12[2];
          v17 = (float)(v11[3] * v13) + (float)(v11[4] * v15);
          v14 = v11[5];
          result = (float)((float)(v17 + (float)(v14 * v16)) + v11[6]) > 0.0;
          if ( (float)((float)(v17 + (float)(v14 * v16)) + v11[6]) > 0.0 )
          {
            v9 = v29;
            v3 = v30;
            goto LABEL_4;
          }
          v11 += 4;
          ++v26;
        }
        while ( v26 != 6 );
        v3 = v30;
        v18 = v30[86] + 20 * *(_DWORD *)(**(_DWORD **)(v25 + v24) + 8 * v10[1]);
        v19 = *(_DWORD *)(v18 + 12);
        if ( *(_DWORD *)(v18 + 8) != v10[7] )
          v19 |= 1u;
        *(_DWORD *)(v18 + 12) = v19;
        v20 = v10[1];
        v9 = v29 + 1;
        v10[7] = glitch::os::Timer::TickCount;
        v21 = v30[86];
        v22 = 20 * *(_DWORD *)(**(_DWORD **)(v25 + v24) + 8 * v20);
        v23 = *(_DWORD *)(v21 + v22);
        result = v23 + 1;
        *(_DWORD *)(v21 + 4 * *(_DWORD *)(v21 + v22 + 16) + 4 * v23) = v10;
        *(_DWORD *)(v21 + v22) = v23 + 1;
        if ( v29 + 1 >= v27 )
          return result;
      }
      v4 = (_DWORD *)v3[76];
      result = v28;
      v8 = *(unsigned __int16 *)(v4[8] + v28 + 12);
    }
  }
  return result;
}


// ===== 50d71c batch::GOBatchSceneNode::updateSegmentVisibility(void) =====
glitch::scene::CBatchSceneNode *__fastcall batch::GOBatchSceneNode::updateSegmentVisibility(
        glitch::scene::CBatchSceneNode *this)
{
  void *v1; // r10
  glitch::scene::CBatchSceneNode *v2; // r4
  int v3; // r0
  glitch::scene::CSceneManager *v4; // r7
  int v5; // r6
  int v6; // r3
  int v7; // r11
  void *v8; // r9
  int v9; // r8
  int v10; // r7
  unsigned int v11; // r2
  unsigned int v12; // r6
  int v13; // r3
  float *v14; // r0
  int v15; // r1
  float *v16; // r0
  int v17; // r1
  int v18; // r0
  int v19; // r1
  int v20; // r3
  int CurrentLevel; // r8

  v2 = this;
  if ( (*((_DWORD *)this + 71) & 1) == 0 )
    return this;
  v3 = glitch::scene::CBatchSceneNode::clearVisibleSegments(this);
  v4 = *((glitch::scene::CSceneManager **)v2 + 68);
  v5 = v3;
  if ( !v4 )
  {
    v1 = &Singleton<Application>::s_inst;
    *((_DWORD *)v2 + 68) = *(_DWORD *)(dword_99F73C + 28);
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
    {
      if ( *(_BYTE *)(GetOnline() + 5) )
      {
        PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
        Application::LoadLevel(
          (Application *)&Singleton<Application>::s_inst,
          *(char **)(CurrentLevel + 268),
          (const char *)temp_entryPointId,
          temp_savegameSlot,
          temp_resume,
          temp_useSpawnPoint,
          temp_difficulty,
          0,
          temp_seed,
          temp_syncedSeed);
        v4 = *((glitch::scene::CSceneManager **)v2 + 68);
        goto LABEL_4;
      }
      Application::LoadLevel(
        (Application *)&Singleton<Application>::s_inst,
        *(char **)(CurrentLevel + 268),
        (const char *)temp_entryPointId,
        temp_savegameSlot,
        temp_resume,
        temp_useSpawnPoint,
        temp_difficulty,
        temp_isRemotelyTriggered,
        temp_seed,
        temp_syncedSeed);
    }
    v4 = *((glitch::scene::CSceneManager **)v2 + 68);
  }
LABEL_4:
  this = (glitch::scene::CBatchSceneNode *)glitch::scene::CSceneManager::isCulled(v4, v2);
  if ( !this )
  {
    v6 = *((_DWORD *)v2 + 68);
    v7 = *(unsigned __int8 *)(v6 + 592);
    if ( *(_BYTE *)(v6 + 592) )
    {
      v8 = *((void **)v2 + 78);
      *(_BYTE *)(v6 + 592) = 0;
      v6 = *((_DWORD *)v2 + 68);
    }
    else
    {
      v1 = (void *)*(unsigned __int8 *)(v6 + 592);
      v8 = v1;
    }
    if ( v7 )
      v1 = *(void **)(v6 + 228);
    if ( v5 )
    {
      v9 = 0;
      v10 = 0;
      while ( 2 )
      {
        switch ( (unsigned int)v8 )
        {
          case 0u:
          case 4u:
            this = v2;
            if ( *((_BYTE *)v2 + 336) )
            {
              this = (glitch::scene::CBatchSceneNode *)glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SUniverseIntersector>(
                                                         v2,
                                                         v10);
              goto LABEL_15;
            }
            ++v10;
            v20 = *(_DWORD *)(*((_DWORD *)v2 + 76) + 32) + v9;
            *(_DWORD *)(*((_DWORD *)v2 + 86) + v9) = (unsigned __int16)(*(_WORD *)(v20 + 14) - *(_WORD *)(v20 + 12));
            v9 += 20;
            if ( v10 != v5 )
              continue;
            break;
          case 1u:
            v18 = (*(int (__fastcall **)(void *))(*(_DWORD *)v1 + 324))(v1);
            v19 = v10++;
            this = (glitch::scene::CBatchSceneNode *)glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SBoxIntersector>(
                                                       v2,
                                                       v19,
                                                       (float *)(v18 + 108));
            v9 += 20;
            if ( v10 != v5 )
              continue;
            break;
          case 2u:
            v16 = (float *)(*(int (__fastcall **)(void *))(*(_DWORD *)v1 + 324))(v1);
            v17 = v10++;
            this = (glitch::scene::CBatchSceneNode *)glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector>(
                                                       v2,
                                                       v17,
                                                       v16);
            v9 += 20;
            if ( v10 != v5 )
              continue;
            break;
          case 8u:
            v14 = (float *)(*(int (__fastcall **)(void *))(*(_DWORD *)v1 + 324))(v1);
            v15 = v10++;
            this = (glitch::scene::CBatchSceneNode *)glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector3>(
                                                       v2,
                                                       v15,
                                                       v14);
            v9 += 20;
            if ( v10 != v5 )
              continue;
            break;
          default:
LABEL_15:
            ++v10;
            v9 += 20;
            if ( v10 != v5 )
              continue;
            break;
        }
        break;
      }
    }
    v11 = *((_DWORD *)v2 + 81);
    v12 = -858993459 * ((*(_DWORD *)(*((_DWORD *)v2 + 76) + 36) - *(_DWORD *)(*((_DWORD *)v2 + 76) + 32)) >> 2);
    if ( v11 < v12 )
    {
      v13 = 20 * v11;
      do
      {
        ++v11;
        this = (glitch::scene::CBatchSceneNode *)(*((_DWORD *)v2 + 86) + v13);
        *((_DWORD *)this + 2) = glitch::os::Timer::TickCount;
        *(_DWORD *)this = 0;
        v13 += 20;
      }
      while ( v11 < v12 );
    }
    if ( v7 )
      *(_BYTE *)(*((_DWORD *)v2 + 68) + 592) = 1;
  }
  return this;
}


// ===== 50dabc batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  *(_DWORD *)this = off_96BE54;
  *((_DWORD *)this + 88) = off_96BF74;
  glitch::scene::CBatchSceneNode::~CBatchSceneNode(this);
  *(_DWORD *)this = off_96C374;
  *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)this) = (int)off_96C394;
  *((_DWORD *)this + 88) = off_95B720;
  CustomFree(this);
}


// ===== 50db38 `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  batch::GOBatchSceneNode::~GOBatchSceneNode((batch::GOBatchSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 50db48 `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode() =====
void __fastcall `virtual thunk to'batch::GOBatchSceneNode::~GOBatchSceneNode(batch::GOBatchSceneNode *this)
{
  batch::GOBatchSceneNode::~GOBatchSceneNode((batch::GOBatchSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 50db58 std::vector<GameObject *,std::allocator<GameObject *>>::_M_range_initialize<GameObject **>(GameObject **,GameObject **,std::forward_iterator_tag const&) =====
char *__fastcall std::vector<GameObject *>::_M_range_initialize<GameObject **>(_DWORD *a1, _BYTE *a2, _BYTE *a3)
{
  size_t v3; // r6
  char *result; // r0
  char *v8; // r3
  char *v9; // r2
  size_t v10; // [sp+4h] [bp-8h] BYREF

  v3 = a3 - a2;
  v10 = (a3 - a2) >> 2;
  result = (char *)std::allocator<GameObject *>::_M_allocate((int)(a1 + 2), v10, &v10);
  v8 = result;
  v9 = &result[4 * v10];
  *a1 = result;
  a1[2] = v9;
  if ( a2 != a3 )
  {
    result = (char *)memcpy(result, a2, v3);
    v8 = &result[v3];
  }
  a1[1] = v8;
  return result;
}


// ===== 50dbbc batch::BatchNodeCompiler::Trim(void) =====
void __fastcall batch::BatchNodeCompiler::Trim(batch::BatchNodeCompiler *this)
{
  _BYTE *v1; // r2
  _BYTE *v2; // r1
  void *v4; // r0
  int v5; // r2
  int v6; // r12
  int v7; // r3
  int v8; // r1
  size_t v9; // r1
  void *v10; // [sp+0h] [bp-14h] BYREF
  int v11; // [sp+4h] [bp-10h]
  int v12; // [sp+8h] [bp-Ch]

  v1 = *((_BYTE **)this + 4);
  v2 = *((_BYTE **)this + 5);
  if ( v1 != v2 )
  {
    *((_DWORD *)this + 5) = v1;
    v2 = v1;
  }
  v12 = 0;
  v10 = nullptr;
  v11 = 0;
  std::vector<GameObject *>::_M_range_initialize<GameObject **>(&v10, v2, v1);
  v4 = *((void **)this + 4);
  v5 = v11;
  v6 = *((_DWORD *)this + 5);
  v7 = v12;
  v8 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 4) = v10;
  v11 = v6;
  *((_DWORD *)this + 5) = v5;
  *((_DWORD *)this + 6) = v7;
  v10 = v4;
  v12 = v8;
  if ( v4 )
  {
    v9 = (v8 - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v9 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v9);
  }
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
}


// ===== 50dc84 batch::BatchNodeCompiler::Compile(bool) =====
void __fastcall batch::BatchNodeCompiler::Compile(batch::BatchNodeCompiler *this, int a2)
{
  batch::BatchNodeCompiler *v2; // r4
  int v3; // r5
  int *v4; // r6
  int *v5; // r8
  int *v6; // r6
  batch::BatchNodeCompiler *v7; // r10
  char *v8; // r7
  bool v9; // zf
  int v10; // r3
  char **v11; // r4
  const char *v12; // r2
  unsigned int v13; // r3
  unsigned int v14; // r2
  char ***v15; // r0
  void *v16; // r1
  char *v17; // r3
  size_t v18; // r7
  char ***v19; // r7
  int v20; // r2
  void (__fastcall *v21)(char *, void **, int, _DWORD, char *, _DWORD, void **); // r12
  int v22; // r5
  int v23; // r3
  const char *v24; // r11
  const char *v25; // r2
  char *v26; // r0
  glitch::scene::CBatchMesh *v27; // r7
  _DWORD *v28; // r0
  _DWORD *v29; // r7
  char *v30; // [sp+10h] [bp-74h]
  char *v31; // [sp+10h] [bp-74h]
  char *v32; // [sp+14h] [bp-70h]
  int v34; // [sp+2Ch] [bp-58h]
  void *v35[3]; // [sp+30h] [bp-54h] BYREF
  void *p; // [sp+3Ch] [bp-48h] BYREF
  char *v37; // [sp+40h] [bp-44h]
  char *v38; // [sp+44h] [bp-40h]
  glitch::IReferenceCounted *v39; // [sp+48h] [bp-3Ch]
  std::string v40; // [sp+4Ch] [bp-38h] BYREF
  std::string v41; // [sp+64h] [bp-20h] BYREF

  v2 = this;
  v32 = *(char **)(dword_99F73C + 28);
  v3 = *((_DWORD *)v32 + 1);
  if ( !*((_DWORD *)this + 13) )
  {
    v27 = (glitch::scene::CBatchMesh *)operator new(124, 0);
    glitch::scene::CBatchMesh::CBatchMesh(v27, 0x30u);
    *(_DWORD *)v27 = off_96BDE8;
    v39 = v27;
    ++*((_DWORD *)v27 + 1);
    *((_DWORD *)v2 + 3) = v2;
    v28 = (_DWORD *)operator new(360, 0);
    v28[89] = 1;
    v28[88] = off_95B720;
    *v28 = off_96C374;
    *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)v28) = (int)off_96C394;
    v29 = v28;
    glitch::scene::CBatchSceneNode::CBatchSceneNode();
    v29[88] = off_96BF74;
    *v29 = off_96BE54;
    *((_DWORD *)v2 + 13) = v29;
    (*(void (__fastcall **)(_DWORD *, int))(*v29 + 72))(v29, 1);
    glitch::scene::ISceneNode::setAutomaticCulling(*((_DWORD *)v2 + 13), 0);
    *(_DWORD *)(*((_DWORD *)v2 + 13) + 312) = 2;
    if ( v39 )
      glitch::IReferenceCounted::drop(v39);
  }
  v4 = *((int **)v2 + 4);
  v5 = *((int **)v2 + 5);
  v38 = nullptr;
  p = nullptr;
  v37 = nullptr;
  if ( v4 != v5 )
  {
    v6 = v4 + 1;
    v7 = v2;
    while ( 1 )
    {
      v10 = *(_DWORD *)(*(v6 - 1) + 728);
      if ( !v10 )
        goto LABEL_6;
      v11 = *(char ***)(v10 + 8);
      if ( !v11 )
        goto LABEL_6;
      (*(void (__fastcall **)(int, char **))(*(_DWORD *)v3 + 92))(v3, v11);
      if ( !batch::BatchNodeCompiler::MakeNoBatchVisible(v7, v11, 0) )
        goto LABEL_4;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v41._M_finish = (char *)&v41;
      v41._M_start_of_storage._M_data = (char *)&v41;
      std::string::_M_range_initialize(&v41, "", v12);
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
      if ( (std::string *)v41._M_start_of_storage._M_data == &v41 || !v41._M_start_of_storage._M_data )
        goto LABEL_4;
      if ( (unsigned int)(v41._M_buffers._M_end_of_storage - v41._M_start_of_storage._M_data) > 0x80 )
        break;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v41._M_start_of_storage._M_data,
        v41._M_buffers._M_end_of_storage - v41._M_start_of_storage._M_data);
      v8 = v37;
      if ( v37 == v38 )
      {
LABEL_14:
        v13 = (v8 - (_BYTE *)p) >> 2;
        if ( v13 )
          v14 = 2 * v13;
        else
          v14 = 1;
        if ( v14 > 0x3FFFFFFF || v13 > v14 )
        {
          v34 = -4;
          v15 = (char ***)GlitchAlloc(0xFFFFFFFC, 0);
          v16 = p;
          v17 = (char *)v15;
          v18 = v8 - (_BYTE *)p;
          if ( v18 )
            goto LABEL_47;
          v19 = v15;
        }
        else
        {
          v34 = 4 * v14;
          v15 = (char ***)GlitchAlloc(4 * v14, 0);
          v16 = p;
          v17 = (char *)v15;
          v18 = v8 - (_BYTE *)p;
          if ( v18 )
          {
LABEL_47:
            v31 = (char *)v15;
            v26 = (char *)memmove(v15, v16, v18);
            v17 = v31;
            v19 = (char ***)&v26[v18];
            goto LABEL_24;
          }
          v19 = v15;
        }
LABEL_24:
        *v19 = v11;
        v30 = v17;
        GlitchFree(p);
        v9 = v5 == v6;
        v37 = (char *)(v19 + 1);
        v38 = &v30[v34];
        p = v30;
        ++v6;
        if ( v9 )
        {
LABEL_26:
          v2 = v7;
          if ( v37 == p )
          {
            v4 = *((int **)v7 + 4);
            v5 = *((int **)v7 + 5);
          }
          else
          {
            v20 = *((_DWORD *)v7 + 13);
            *((_DWORD *)v7 + 2) = v32;
            v21 = *(void (__fastcall **)(char *, void **, int, _DWORD, char *, _DWORD, void **))(*(_DWORD *)v32 + 80);
            memset(v35, 0, sizeof(v35));
            v21(v32, &p, v20, 0, (char *)v7 + 4, 0, v35);
            if ( a2
              && ((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 92))(*(_DWORD *)(dword_99F73C + 16))
                & 7) != 0 )
            {
              glitch::scene::CBatchMesh::quantizeComponents(
                *(glitch::scene::CBatchMesh **)(*((_DWORD *)v7 + 13) + 304),
                0,
                1,
                *((glitch::video::IVideoDriver **)v32 + 5));
            }
            FlushMeshBuffers(*(glitch::scene::IMesh **)(*((_DWORD *)v7 + 13) + 304), 1, 0, 0);
            v4 = *((int **)v7 + 4);
            v5 = *((int **)v7 + 5);
            *(_BYTE *)v7 = 1;
          }
          goto LABEL_29;
        }
      }
      else
      {
LABEL_5:
        *(_DWORD *)v8 = v11;
        v37 += 4;
LABEL_6:
        v9 = v5 == v6++;
        if ( v9 )
          goto LABEL_26;
      }
    }
    CustomFree(v41._M_start_of_storage._M_data);
LABEL_4:
    v8 = v37;
    if ( v37 == v38 )
      goto LABEL_14;
    goto LABEL_5;
  }
LABEL_29:
  if ( v4 != v5 )
  {
    while ( 1 )
    {
      v22 = *v4;
      v23 = *(_DWORD *)(*v4 + 728);
      if ( !v23 )
        goto LABEL_32;
      if ( batch::BatchNodeCompiler::MakeNoBatchVisible(v2, *(char ***)(v23 + 8), 1) )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v40._M_finish = (char *)&v40;
        v40._M_start_of_storage._M_data = (char *)&v40;
        std::string::_M_range_initialize(&v40, "", v25);
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
        if ( (std::string *)v40._M_start_of_storage._M_data != &v40 && v40._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data) > 0x80 )
            CustomFree(v40._M_start_of_storage._M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v40._M_start_of_storage._M_data,
              v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data);
        }
        goto LABEL_32;
      }
      v24 = *(const char **)(v22 + 92);
      if ( LC_API_STRCMP_0(v24, "Decor") && LC_API_STRCMP_0(v24, "Module") )
      {
        if ( ++v4 == v5 )
          break;
      }
      else
      {
        GameObject::SetVisualObject(v22, 0);
LABEL_32:
        if ( ++v4 == v5 )
          break;
      }
    }
  }
  batch::BatchNodeCompiler::Trim(v2);
  if ( p )
    GlitchFree(p);
}


// ===== 50e228 DBG_TraceAllLoadedResfileInformation(void) =====
int DBG_TraceAllLoadedResfileInformation()
{
  int v0; // r3
  int result; // r0
  int v2; // r2
  int v3; // r1

  v0 = *(_DWORD *)(glitch::collada::CResFileManager::Inst + 16);
  result = glitch::collada::CResFileManager::Inst + 8;
  while ( result != v0 )
  {
    v2 = *(_DWORD *)(v0 + 12);
    if ( v2 )
    {
      while ( *(_DWORD *)(v2 + 8) )
        v2 = *(_DWORD *)(v2 + 8);
      v0 = v2;
    }
    else
    {
      v3 = *(_DWORD *)(v0 + 4);
      if ( *(_DWORD *)(v3 + 12) == v0 )
      {
        do
        {
          v0 = v3;
          v3 = *(_DWORD *)(v3 + 4);
        }
        while ( *(_DWORD *)(v3 + 12) == v0 );
        v2 = *(_DWORD *)(v0 + 12);
      }
      if ( v3 != v2 )
        v0 = v3;
    }
  }
  return result;
}


// ===== 50e2b8 DBG_TraceAllLoadedTextureInformation(void) =====
void DBG_TraceAllLoadedTextureInformation()
{
  _DWORD *v0; // r5
  int v1; // r4
  int v2; // r3
  unsigned int v3; // r2
  int *v4; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r2
  int v7; // r3

  v0 = *(_DWORD **)(*(_DWORD *)(dword_99F73C + 16) + 224);
  v1 = v0[2];
  while ( v0 != (_DWORD *)v1 )
  {
    while ( 1 )
    {
      v2 = v0[6];
      v3 = *(unsigned __int16 *)(v1 + 52);
      if ( v3 < (v0[7] - v2) >> 3 )
        v4 = (int *)(v2 + 8 * v3);
      else
        v4 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      v5 = (glitch::IReferenceCounted *)*v4;
      if ( *v4 )
        ++*((_DWORD *)v5 + 1);
      v6 = *(_DWORD *)(v1 + 12);
      if ( v6 )
      {
        while ( *(_DWORD *)(v6 + 8) )
          v6 = *(_DWORD *)(v6 + 8);
        v1 = v6;
      }
      else
      {
        v7 = *(_DWORD *)(v1 + 4);
        if ( v1 == *(_DWORD *)(v7 + 12) )
        {
          do
          {
            v1 = v7;
            v7 = *(_DWORD *)(v7 + 4);
          }
          while ( *(_DWORD *)(v7 + 12) == v1 );
          v6 = *(_DWORD *)(v1 + 12);
        }
        if ( v7 != v6 )
          v1 = v7;
      }
      if ( !v5 )
        break;
      glitch::IReferenceCounted::drop(v5);
      if ( v0 == (_DWORD *)v1 )
        return;
    }
  }
}


// ===== 50e394 SetLodBiasOnAllTextures(float) =====
void __fastcall SetLodBiasOnAllTextures(float a1)
{
  ;
}


// ===== 50e398 SetNodeToSelfIlluminated(glitch::scene::ISceneNode *) =====
int __fastcall SetNodeToSelfIlluminated(char **a1)
{
  int result; // r0
  char *i; // r4
  char *v4; // r5
  char *v5; // t1
  glitch::scene::ISceneNode *v6; // r0

  result = (*((int (__fastcall **)(char **))*a1 + 34))(a1);
  v5 = a1[61];
  v4 = (char *)(a1 + 61);
  for ( i = v5; v4 != i; i = *(char **)i )
  {
    if ( i )
      v6 = (glitch::scene::ISceneNode *)(i - 4);
    else
      v6 = nullptr;
    result = SetNodeToSelfIlluminated(v6);
  }
  return result;
}


// ===== 50e3d8 RecursiveCount(glitch::scene::ISceneNode *) =====
int __fastcall RecursiveCount(glitch::scene::ISceneNode *a1)
{
  glitch::scene::ISceneNode *v1; // r4
  glitch::scene::ISceneNode *v2; // r6
  int v3; // r5
  glitch::scene::ISceneNode *v4; // r0

  v2 = (glitch::scene::ISceneNode *)((char *)a1 + 244);
  v1 = *((glitch::scene::ISceneNode **)a1 + 61);
  if ( v1 == (glitch::scene::ISceneNode *)((char *)a1 + 244) )
    return 1;
  v3 = 1;
  do
  {
    if ( v1 )
      v4 = (glitch::scene::ISceneNode *)((char *)v1 - 4);
    else
      v4 = nullptr;
    v1 = *(glitch::scene::ISceneNode **)v1;
    v3 += RecursiveCount(v4);
  }
  while ( v2 != v1 );
  return v3;
}


// ===== 50e41c SetNodeVisibleRecur(glitch::scene::ISceneNode *,bool) =====
int __fastcall SetNodeVisibleRecur(int result, bool a2)
{
  int v3; // r5
  _DWORD *i; // r4
  _DWORD *v5; // r5
  _DWORD *v6; // t1
  glitch::scene::ISceneNode *v7; // r0

  if ( result )
  {
    v3 = result;
    result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 72))(result);
    v6 = *(_DWORD **)(v3 + 244);
    v5 = (_DWORD *)(v3 + 244);
    for ( i = v6; v5 != i; i = (_DWORD *)*i )
    {
      if ( i )
        v7 = (glitch::scene::ISceneNode *)(i - 1);
      else
        v7 = nullptr;
      result = SetNodeVisibleRecur(v7, a2);
    }
  }
  return result;
}


// ===== 50e46c setOnAnimateEnabled(glitch::scene::ISceneNode *,bool) =====
int __fastcall setOnAnimateEnabled(int result, int a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *(_DWORD *)(result + 284);
  if ( a2 )
    v3 = v2 | 0x200;
  else
    v3 = v2 & 0xFFFFFDFF;
  *(_DWORD *)(result + 284) = v3;
  return result;
}


// ===== 50e484 RecursiveSetBoolOnNode(glitch::scene::ISceneNode *,bool,void (*)(glitch::scene::ISceneNode *,bool)) =====
int __fastcall RecursiveSetBoolOnNode(int result, bool a2, int (*a3)(void))
{
  int v3; // r5
  _DWORD *i; // r4
  _DWORD *v7; // r5
  _DWORD *v8; // t1
  glitch::scene::ISceneNode *v9; // r0

  v3 = result;
  if ( result )
  {
    result = a3();
    v8 = *(_DWORD **)(v3 + 244);
    v7 = (_DWORD *)(v3 + 244);
    for ( i = v8; v7 != i; result = RecursiveSetBoolOnNode(v9, a2, (void (*)(glitch::scene::ISceneNode *, bool))a3) )
    {
      if ( i )
        v9 = (glitch::scene::ISceneNode *)(i - 1);
      else
        v9 = nullptr;
      i = (_DWORD *)*i;
    }
  }
  return result;
}


// ===== 50e4d0 NodeRemoveAllChildren(glitch::scene::ISceneNode *) =====
int __fastcall NodeRemoveAllChildren(int result)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r6
  int v3; // r5
  _DWORD *v4; // r1

  v2 = (_DWORD *)(result + 244);
  v1 = *(_DWORD **)(result + 244);
  v3 = result;
  if ( v1 != (_DWORD *)(result + 244) )
  {
    do
    {
      v4 = v1 - 1;
      if ( !v1 )
        v4 = nullptr;
      result = (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 96))(v3, v4);
      v1 = (_DWORD *)*v1;
    }
    while ( v2 != v1 );
  }
  return result;
}


// ===== 50e514 IsNodeMesh(glitch::scene::ISceneNode *) =====
bool __fastcall IsNodeMesh(glitch::scene::ISceneNode *a1)
{
  return (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1) == 1835360612
      || (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1) == 1936023908;
}


// ===== 50e568 GetNodePolyCount(glitch::scene::ISceneNode *,bool) =====
int __fastcall GetNodePolyCount(char **a1, int a2)
{
  int v4; // r4
  char *i; // r5
  char *v6; // r6
  char *v7; // t1
  glitch::scene::ISceneNode *v8; // r0
  int NodePolyCount; // r0
  int v11; // r10
  int v12; // r5
  glitch::IReferenceCounted *v13; // r0
  glitch::IReferenceCounted *v14; // [sp+0h] [bp-8h] BYREF
  glitch::IReferenceCounted *v15; // [sp+4h] [bp-4h] BYREF

  if ( IsNodeMesh((glitch::scene::ISceneNode *)a1)
    && ((*((void (__fastcall **)(glitch::IReferenceCounted **, char **))*a1 + 62))(&v15, a1), v15) )
  {
    v11 = (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v15 + 16))(v15);
    if ( v11 <= 0 )
    {
      v13 = v15;
      v4 = 0;
    }
    else
    {
      v12 = 0;
      v4 = 0;
      do
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, int))(*(_DWORD *)v15 + 20))(
          &v14,
          v15,
          v12++);
        v4 += *((_DWORD *)v14 + 8) / 3u;
        glitch::IReferenceCounted::drop(v14);
      }
      while ( v11 != v12 );
      v13 = v15;
    }
    if ( v13 )
      glitch::IReferenceCounted::drop(v13);
  }
  else
  {
    v4 = 0;
  }
  if ( a2 )
  {
    v7 = a1[61];
    v6 = (char *)(a1 + 61);
    for ( i = v7; v6 != i; v4 += NodePolyCount )
    {
      if ( i )
        v8 = (glitch::scene::ISceneNode *)(i - 4);
      else
        v8 = nullptr;
      NodePolyCount = GetNodePolyCount(v8, 1);
      i = *(char **)i;
    }
  }
  return v4;
}


// ===== 50e674 IsNodeVisible(glitch::scene::ISceneNode *) =====
int __fastcall IsNodeVisible(glitch::scene::ISceneNode *a1)
{
  return 1;
}


// ===== 50e67c IsVisibleMeshNode(glitch::scene::ISceneNode *) =====
int __fastcall IsVisibleMeshNode(glitch::scene::ISceneNode *a1)
{
  int result; // r0

  result = IsNodeVisible(a1);
  if ( result )
    return IsNodeMesh(a1);
  return result;
}


// ===== 50e6a0 DBG_DrawGlitchNodeBoundingBox(glitch::scene::ISceneNode *) =====
_DWORD *__fastcall DBG_DrawGlitchNodeBoundingBox(_DWORD *result)
{
  int v1; // r4
  int v2; // r6
  float *v3; // r5
  float *v4; // r6
  char v5; // r2
  char v6; // r1
  int v7; // [sp+4h] [bp-4h]

  v1 = *(_DWORD *)(dword_99F73C + 16);
  v2 = *(_DWORD *)(dword_99F73C + 28);
  if ( result[70] )
  {
    v3 = (float *)(*(int (__fastcall **)(_DWORD *))(*result + 52))(result);
    v4 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 228) + 324))(*(_DWORD *)(v2 + 228));
    if ( *v3 > v4[30] || v3[1] > v4[31] || v3[2] > v4[32] || v3[3] < v4[27] || v3[4] < v4[28] || v3[5] < v4[29] )
    {
      v5 = 0;
      v6 = -1;
    }
    else
    {
      v5 = -1;
      v6 = 0;
    }
    BYTE2(v7) = v6;
    HIBYTE(v7) = 127;
    BYTE1(v7) = -1;
    LOBYTE(v7) = v5;
    return (_DWORD *)(*(int (__fastcall **)(int, float *, int))(*(_DWORD *)v1 + 40))(v1, v3, v7);
  }
  return result;
}


// ===== 50e7c4 DBG_TraceSceneNode(glitch::scene::ISceneNode *,int,bool (*)(glitch::scene::ISceneNode *)) =====
char **__fastcall DBG_TraceSceneNode(char **result, int a2, bool (*a3)(glitch::scene::ISceneNode *))
{
  char **v3; // r4
  char *v6; // r6
  int v7; // r7
  char *v8; // r4

  v3 = result;
  if ( result )
  {
    if ( !a3 || (result = (char **)((int (*)(void))a3)()) != nullptr )
    {
      GetNodePolyCount(v3, 1);
      v6 = (char *)(v3 + 61);
      result = (char **)v3[61];
      if ( result != v3 + 61 )
      {
        v7 = a2 + 1;
        while ( 1 )
        {
          v8 = *result;
          result = (char **)DBG_TraceSceneNode((glitch::scene::ISceneNode *)(result - 1), v7, a3);
          if ( v6 == v8 )
            break;
          result = (char **)v8;
        }
      }
    }
  }
  return result;
}


// ===== 50e830 GetScreenPosFromWorldPos(glitch::core::vector3d<float> const&,glitch::core::position2d<int> &) =====
int __fastcall GetScreenPosFromWorldPos(_DWORD *a1, _DWORD *a2)
{
  int v3; // lr
  int v4; // r5
  int v5; // r1
  int (__fastcall *v6)(_DWORD *, int, _DWORD *, _DWORD); // r12
  int result; // r0
  int v8; // r3
  _DWORD v9[3]; // [sp+4h] [bp-14h] BYREF
  _DWORD v10[2]; // [sp+10h] [bp-8h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 44);
  v6 = *(int (__fastcall **)(_DWORD *, int, _DWORD *, _DWORD))(*(_DWORD *)v5 + 24);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = v3;
  result = v6(v10, v5, v9, 0);
  v8 = v10[1];
  *a2 = v10[0];
  a2[1] = v8;
  return result;
}


// ===== 50e8a4 TraceEveryGlitchRefCountingShitKnownToManKind(char const*) =====
glitch::video::CMaterialRenderer **__fastcall TraceEveryGlitchRefCountingShitKnownToManKind(const char *a1)
{
  int v1; // r3
  glitch::video::CMaterialRenderer **result; // r0
  _DWORD *v3; // r10
  int v4; // r2
  _DWORD *v5; // r5
  int i; // r4
  int v7; // r3
  unsigned int v8; // r2
  int *v9; // r3
  glitch::IReferenceCounted *v10; // r3
  int v11; // r2
  _DWORD *v12; // r5
  int j; // r4
  int v14; // r3
  unsigned int v15; // r2
  glitch::video::CMaterialRenderer **v16; // r3
  glitch::video::CMaterialRenderer *v17; // r3
  int v18; // r2
  _DWORD *v19; // r5
  int k; // r4
  _DWORD *v21; // r7
  int v22; // r3
  unsigned int v23; // r2
  int *v24; // r3
  glitch::IReferenceCounted *v25; // r3
  int v26; // r2
  int v27; // r3
  int v28; // r3
  int v29; // r1
  int v30; // r3
  glitch::video::CMaterialRenderer *v31; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD *)(glitch::collada::CResFileManager::Inst + 16);
  result = (glitch::video::CMaterialRenderer **)(glitch::collada::CResFileManager::Inst + 8);
  v3 = *(_DWORD **)(dword_99F73C + 16);
  if ( v1 != glitch::collada::CResFileManager::Inst + 8 )
  {
    do
    {
      v4 = *(_DWORD *)(v1 + 12);
      if ( v4 )
      {
        while ( *(_DWORD *)(v4 + 8) )
          v4 = *(_DWORD *)(v4 + 8);
        v1 = v4;
      }
      else
      {
        v29 = *(_DWORD *)(v1 + 4);
        if ( v1 == *(_DWORD *)(v29 + 12) )
        {
          do
          {
            v1 = v29;
            v29 = *(_DWORD *)(v29 + 4);
          }
          while ( *(_DWORD *)(v29 + 12) == v1 );
          v4 = *(_DWORD *)(v1 + 12);
        }
        if ( v4 != v29 )
          v1 = v29;
      }
    }
    while ( result != (glitch::video::CMaterialRenderer **)v1 );
  }
  v5 = (_DWORD *)v3[56];
  i = v5[2];
  while ( (_DWORD *)i != v5 )
  {
    while ( 1 )
    {
      v7 = v5[6];
      v8 = *(unsigned __int16 *)(i + 52);
      if ( v8 < (v5[7] - v7) >> 3 )
        v9 = (int *)(v7 + 8 * v8);
      else
        v9 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      v10 = (glitch::IReferenceCounted *)*v9;
      if ( v10 )
      {
        ++*((_DWORD *)v10 + 1);
        result = (glitch::video::CMaterialRenderer **)glitch::IReferenceCounted::drop(v10);
      }
      v11 = *(_DWORD *)(i + 12);
      if ( !v11 )
        break;
      for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
        ;
      if ( (_DWORD *)i == v5 )
        goto LABEL_19;
    }
    v30 = *(_DWORD *)(i + 4);
    if ( i == *(_DWORD *)(v30 + 12) )
    {
      do
      {
        i = v30;
        v30 = *(_DWORD *)(v30 + 4);
      }
      while ( *(_DWORD *)(v30 + 12) == i );
      v11 = *(_DWORD *)(i + 12);
    }
    if ( v11 != v30 )
      i = v30;
  }
LABEL_19:
  v12 = (_DWORD *)v3[55];
  j = v12[2];
  if ( (_DWORD *)j != v12 )
  {
    do
    {
      while ( 1 )
      {
        v14 = v12[6];
        v15 = *(unsigned __int16 *)(j + 34);
        if ( v15 < (v12[7] - v14) >> 3 )
          v16 = (glitch::video::CMaterialRenderer **)(v14 + 8 * v15);
        else
          v16 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
        v17 = *v16;
        v31 = v17;
        if ( v17 )
          ++*(_DWORD *)v17;
        result = boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v31);
        v18 = *(_DWORD *)(j + 12);
        if ( !v18 )
          break;
        for ( j = *(_DWORD *)(j + 12); *(_DWORD *)(j + 8); j = *(_DWORD *)(j + 8) )
          ;
        if ( v12 == (_DWORD *)j )
          goto LABEL_30;
      }
      v28 = *(_DWORD *)(j + 4);
      if ( *(_DWORD *)(v28 + 12) == j )
      {
        do
        {
          j = v28;
          v28 = *(_DWORD *)(v28 + 4);
        }
        while ( *(_DWORD *)(v28 + 12) == j );
        v18 = *(_DWORD *)(j + 12);
      }
      if ( v18 != v28 )
        j = v28;
    }
    while ( v12 != (_DWORD *)j );
  }
LABEL_30:
  v19 = (_DWORD *)v3[54];
  k = v19[3];
  v21 = v19 + 1;
  while ( (_DWORD *)k != v21 )
  {
    while ( 1 )
    {
      v22 = v19[7];
      v23 = *(unsigned __int16 *)(k + 28);
      if ( v23 < (v19[8] - v22) >> 3 )
        v24 = (int *)(v22 + 8 * v23);
      else
        v24 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      v25 = (glitch::IReferenceCounted *)*v24;
      if ( v25 )
      {
        ++*((_DWORD *)v25 + 1);
        result = (glitch::video::CMaterialRenderer **)glitch::IReferenceCounted::drop(v25);
      }
      v26 = *(_DWORD *)(k + 12);
      if ( !v26 )
        break;
      for ( k = *(_DWORD *)(k + 12); *(_DWORD *)(k + 8); k = *(_DWORD *)(k + 8) )
        ;
      if ( (_DWORD *)k == v21 )
        return result;
    }
    v27 = *(_DWORD *)(k + 4);
    if ( *(_DWORD *)(v27 + 12) == k )
    {
      do
      {
        k = v27;
        v27 = *(_DWORD *)(v27 + 4);
      }
      while ( *(_DWORD *)(v27 + 12) == k );
      v26 = *(_DWORD *)(k + 12);
    }
    if ( v27 != v26 )
      k = v27;
  }
  return result;
}


// ===== 50eb90 ChangeMaterials(glitch::scene::ISceneNode *,glitch::video::E_MATERIAL_TYPE) =====
int ChangeMaterials()
{
  int result; // r0

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "false",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp",
             838);
  }
  return result;
}


// ===== 50ec18 ChangeMaterials(glitch::scene::ISceneNode *,glitch::video::E_MATERIAL_TYPE,glitch::video::E_MATERIAL_TYPE) =====
int ChangeMaterials()
{
  int result; // r0

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "false",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp",
             805);
  }
  return result;
}


// ===== 50eca0 DBG_TraverseAllGlitchNode(glitch::scene::ISceneNode *,void (*)(glitch::scene::ISceneNode *),bool (*)(glitch::scene::ISceneNode *)) =====
int __fastcall DBG_TraverseAllGlitchNode(int result, int (__fastcall *a2)(int), int (__fastcall *a3)(int))
{
  int v4; // r6
  _DWORD *v6; // r6
  _DWORD *v7; // r7
  _DWORD *v8; // t1
  glitch::scene::ISceneNode *v9; // r0

  v4 = result;
  if ( !a2 )
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
                 "callbackFunctor != 0",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp",
                 656);
    }
  }
  if ( v4 )
  {
    if ( !a3 || (result = a3(v4)) != 0 )
      result = a2(v4);
    v8 = *(_DWORD **)(v4 + 244);
    v6 = (_DWORD *)(v4 + 244);
    v7 = v8;
    while ( v6 != v7 )
    {
      if ( v7 )
        v9 = (glitch::scene::ISceneNode *)(v7 - 1);
      else
        v9 = nullptr;
      v7 = (_DWORD *)*v7;
      result = DBG_TraverseAllGlitchNode(
                 v9,
                 (void (*)(glitch::scene::ISceneNode *))a2,
                 (bool (*)(glitch::scene::ISceneNode *))a3);
    }
  }
  return result;
}


// ===== 50ed8c GetWorldPosFromScreenPos(Point2D<float> const&,Point3D<float> &,float) =====
float __fastcall GetWorldPosFromScreenPos(float *a1, float *a2)
{
  int v4; // r0
  int v5; // r1
  void (__fastcall *v6)(float *, int, _DWORD *, _DWORD); // r12
  float *v7; // r0
  float v8; // r5
  float v9; // r7
  float v10; // r10
  float v11; // r6
  float v12; // r0
  float result; // r0
  float v14; // [sp+4h] [bp-30h] BYREF
  float v15; // [sp+8h] [bp-2Ch]
  float v16; // [sp+Ch] [bp-28h]
  float v17; // [sp+10h] [bp-24h]
  float v18; // [sp+14h] [bp-20h]
  float v19; // [sp+18h] [bp-1Ch]
  float v20[3]; // [sp+1Ch] [bp-18h] BYREF
  _DWORD v21[3]; // [sp+28h] [bp-Ch] BYREF

  v4 = (int)*a1;
  v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 44);
  v6 = *(void (__fastcall **)(float *, int, _DWORD *, _DWORD))(*(_DWORD *)v5 + 20);
  v21[1] = (int)a1[1];
  v21[0] = v4;
  v6(&v14, v5, v21, 0);
  v20[0] = v17 - v14;
  v20[1] = v18 - v15;
  v20[2] = v19 - v16;
  v7 = (float *)glitch::core::vector3d<float>::normalize(v20);
  v8 = v16;
  v9 = v7[2];
  v10 = *v7;
  v11 = v16 / v9;
  v12 = v15 - (float)((float)(v16 / v9) * v7[1]);
  *a2 = v14 - (float)((float)(v16 / v9) * v10);
  a2[1] = v12;
  result = v8 - (float)(v11 * v9);
  a2[2] = result;
  return result;
}


// ===== 50eeb4 glitch::core::quaternion::operator=(glitch::core::CMatrix4<float> const&) =====
glitch::core::quaternion *__fastcall glitch::core::quaternion::operator=(float *a1, float *a2)
{
  float v2; // r7
  float v3; // r6
  float v4; // r8
  float v7; // r10
  float v8; // r6
  float v9; // r6
  float v11; // r6
  float v12; // r6

  v2 = *a2;
  v3 = a2[5];
  v4 = a2[10];
  v7 = (float)(*a2 + v3) + v4;
  if ( v7 > 0.0 )
  {
    v12 = sqrtf(v7 + 1.0);
    a1[3] = v12 * 0.5;
    *a1 = (float)(a2[9] - a2[6]) * (float)(0.5 / v12);
    a1[1] = (float)(a2[2] - a2[8]) * (float)(0.5 / v12);
    a1[2] = (float)(a2[4] - a2[1]) * (float)(0.5 / v12);
  }
  else if ( v2 <= v3 || v2 <= v4 )
  {
    if ( v3 > v4 )
    {
      v11 = sqrtf((float)((float)(v3 + 1.0) - v2) - v4);
      a1[1] = v11 * 0.5;
      *a1 = (float)(a2[1] + a2[4]) * (float)(0.5 / v11);
      a1[2] = (float)(a2[6] + a2[9]) * (float)(0.5 / v11);
      a1[3] = (float)(a2[2] - a2[8]) * (float)(0.5 / v11);
    }
    else
    {
      v9 = sqrtf((float)((float)(v4 + 1.0) - v2) - v3);
      a1[2] = v9 * 0.5;
      *a1 = (float)(a2[2] + a2[8]) * (float)(0.5 / v9);
      a1[1] = (float)(a2[6] + a2[9]) * (float)(0.5 / v9);
      a1[3] = (float)(a2[4] - a2[1]) * (float)(0.5 / v9);
    }
  }
  else
  {
    v8 = sqrtf((float)((float)(v2 + 1.0) - v3) - v4);
    *a1 = v8 * 0.5;
    a1[1] = (float)(a2[1] + a2[4]) * (float)(0.5 / v8);
    a1[2] = (float)(a2[8] + a2[2]) * (float)(0.5 / v8);
    a1[3] = (float)(a2[9] - a2[6]) * (float)(0.5 / v8);
  }
  return glitch::core::quaternion::normalize((glitch::core::quaternion *)a1);
}


// ===== 50f158 std::priv::__copy<PolyStat *,PolyStat *,int>(PolyStat *,PolyStat *,PolyStat *,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__copy<PolyStat *,PolyStat *,int>(int a1, int a2, std::string *this)
{
  int v3; // r3
  int v4; // r4
  std::string *v5; // r7
  int v6; // r8
  std::string *v7; // r5
  int v8; // r6
  char *v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v5 = this;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 > 0 )
  {
    v7 = this;
    v8 = -1227133513 * v3;
    do
    {
      if ( v7 != (std::string *)v4 )
        std::string::_M_assign(v7, *(const char **)(v4 + 20), *(const char **)(v4 + 16));
      v9 = *(char **)(v4 + 24);
      --v8;
      v4 += 28;
      v7[1]._M_buffers._M_end_of_storage = v9;
      v7 = (std::string *)((char *)v7 + 28);
    }
    while ( v8 );
    return (std::string *)((char *)v5 + 28 * v6);
  }
  return v5;
}


// ===== 50f1d4 IsVisibleAndNotCulled(glitch::scene::ISceneNode *) =====
int __fastcall IsVisibleAndNotCulled(glitch::scene::ISceneNode *a1)
{
  int result; // r0

  result = IsNodeVisible(a1);
  if ( result )
    return (unsigned __int8)glitch::scene::CSceneManager::isCulled(
                              *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
                              a1)
         ^ 1;
  return result;
}


// ===== 50f220 OptimizeStatic(glitch::scene::ISceneNode *) =====
int __fastcall OptimizeStatic(glitch::scene::ISceneNode *a1)
{
  void (__fastcall *v2)(glitch::scene::ISceneNode *, _DWORD *); // r6
  int (__fastcall *v3)(glitch::scene::ISceneNode *, float *); // r6
  float *v4; // r0
  int result; // r0
  char *i; // r4
  char *v7; // r5
  glitch::scene::ISceneNode *v8; // r0
  float v9[4]; // [sp+4h] [bp-1Ch] BYREF
  _DWORD v10[3]; // [sp+14h] [bp-Ch] BYREF

  (*(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD))(*(_DWORD *)a1 + 184))(a1, 0);
  v2 = *(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)a1 + 164);
  glitch::scene::ISceneNode::getAbsolutePosition(v10, a1);
  v2(a1, v10);
  v3 = *(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a1 + 156);
  v4 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 56))(a1);
  glitch::core::quaternion::operator=(v9, v4);
  result = v3(a1, v9);
  *((_DWORD *)a1 + 71) &= ~0x200u;
  v7 = (char *)a1 + 244;
  for ( i = *((char **)a1 + 61); v7 != i; i = *(char **)i )
  {
    if ( i )
      v8 = (glitch::scene::ISceneNode *)(i - 4);
    else
      v8 = nullptr;
    result = OptimizeStatic(v8);
  }
  return result;
}


// ===== 50f2d0 AddToSceneMgr(glitch::scene::ISceneNode *,glitch::scene::ISceneNode *) =====
int __fastcall AddToSceneMgr(glitch::scene::ISceneNode *a1, glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v2; // r4
  glitch::scene::ISceneNode *v3; // r5
  glitch::scene::ISceneNode *v6; // r0
  int result; // r0
  void (__fastcall *v8)(glitch::scene::ISceneNode *, _DWORD *); // r5
  void (__fastcall *v9)(glitch::scene::ISceneNode *, float *); // r5
  float *v10; // r0
  float v11[4]; // [sp+4h] [bp-20h] BYREF
  _DWORD v12[4]; // [sp+14h] [bp-10h] BYREF

  v3 = (glitch::scene::ISceneNode *)((char *)a1 + 244);
  v2 = *((glitch::scene::ISceneNode **)a1 + 61);
  if ( v2 != (glitch::scene::ISceneNode *)((char *)a1 + 244) )
  {
    do
    {
      if ( v2 )
        v6 = (glitch::scene::ISceneNode *)((char *)v2 - 4);
      else
        v6 = nullptr;
      v2 = *(glitch::scene::ISceneNode **)v2;
      AddToSceneMgr(v6, a2);
    }
    while ( v3 != v2 );
  }
  result = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1);
  if ( result == 1752393069 )
  {
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD))(*(_DWORD *)a1 + 184))(a1, 0);
    v8 = *(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)a1 + 164);
    glitch::scene::ISceneNode::getAbsolutePosition(v12, a1);
    v8(a1, v12);
    v9 = *(void (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a1 + 156);
    v10 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 56))(a1);
    glitch::core::quaternion::operator=(v11, v10);
    v9(a1, v11);
    *((_DWORD *)a1 + 71) &= ~0x200u;
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 92))(a2, a1);
    return (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 100))(a1);
  }
  return result;
}


// ===== 50f3d4 PrintNodeProperties(glitch::scene::ISceneNode *,bool,int) =====
int __fastcall PrintNodeProperties(glitch::scene::ISceneNode *a1, int a2, int a3)
{
  int v5; // r7
  const char *v6; // r0
  int v7; // r0
  int v8; // r0
  const char *v9; // r6
  double v10; // r8
  double v11; // kr00_8
  int Animators; // r0
  int v13; // r3
  int v14; // r0
  int v15; // r6
  int v16; // r8
  int v17; // r4
  const char *v18; // r0
  int v19; // r3
  char *v20; // r4
  char *v21; // r5
  char *v22; // t1
  int v23; // r11
  int v24; // r6
  glitch::scene::ISceneNode *v25; // r0
  int v26; // r0
  _DWORD v29[3]; // [sp+2Ch] [bp-28h] BYREF
  _DWORD v30[3]; // [sp+38h] [bp-1Ch] BYREF
  float v31[4]; // [sp+44h] [bp-10h] BYREF

  if ( !a1 )
    return 1;
  v5 = 2 * a3;
  printf("%*s", 2 * a3, "");
  if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 84))(a1) )
  {
    v6 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 84))(a1);
    printf("Name: %s | ", v6);
  }
  v7 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 76))(a1);
  printf("ID: %i | ", v7);
  v8 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1);
  printf("Type: \"%c%c%c%c\" | ", (unsigned __int8)v8, BYTE1(v8), BYTE2(v8), v8 >> 24);
  v9 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 36))(a1);
  glitch::scene::ISceneNode::getAbsolutePosition(v31, a1);
  v10 = v31[0];
  glitch::scene::ISceneNode::getAbsolutePosition(v30, a1);
  v11 = *(float *)&v30[1];
  glitch::scene::ISceneNode::getAbsolutePosition(v29, a1);
  printf("<%s::%s> (%+6.2f,%+6.2f,%+6.2f)", v9, nullptr, v10, v11, *(float *)&v29[2]);
  putchar(10);
  Animators = glitch::scene::ISceneNode::getAnimators(a1);
  if ( *(_DWORD *)Animators != Animators )
  {
    v13 = *(_DWORD *)(*(_DWORD *)Animators + 8);
    if ( v13 )
    {
      v14 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 64))(*(_DWORD *)(*(_DWORD *)Animators + 8));
      v15 = v14;
      if ( v14 )
      {
        v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 28))(v14);
        if ( v16 > 0 )
        {
          v17 = 0;
          do
          {
            v18 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 60))(v15, v17);
            v19 = v17++;
            printf("%*sAnim %i : %s\n", v5, "*", v19, v18);
          }
          while ( v17 != v16 );
        }
      }
    }
  }
  if ( !a2 )
    return 1;
  v22 = *((char **)a1 + 61);
  v21 = (char *)a1 + 244;
  v20 = v22;
  if ( v22 == v21 )
    return 1;
  v23 = a3 + 1;
  v24 = 1;
  do
  {
    if ( v20 )
      v25 = (glitch::scene::ISceneNode *)(v20 - 4);
    else
      v25 = nullptr;
    v26 = PrintNodeProperties(v25, 1, v23);
    v20 = *(char **)v20;
    v24 += v26;
  }
  while ( v21 != v20 );
  return v24;
}


// ===== 50f644 CleanNode(glitch::scene::ISceneNode *) =====
char *__fastcall CleanNode(glitch::scene::ISceneNode *a1)
{
  glitch::scene::ISceneNode *v1; // r5
  glitch::scene::ISceneNode *v2; // r6
  glitch::scene::ISceneNode *v4; // r0
  const char *v5; // r0
  char *result; // r0
  char *v7; // r5

  v2 = (glitch::scene::ISceneNode *)((char *)a1 + 244);
  v1 = *((glitch::scene::ISceneNode **)a1 + 61);
  if ( v1 != (glitch::scene::ISceneNode *)((char *)a1 + 244) )
  {
    do
    {
      if ( v1 )
        v4 = (glitch::scene::ISceneNode *)((char *)v1 - 4);
      else
        v4 = nullptr;
      v1 = *(glitch::scene::ISceneNode **)v1;
      CleanNode(v4);
    }
    while ( v2 != v1 );
  }
  v5 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 36))(a1);
  result = LC_API_STRSTR_0(v5, "_PIVOT");
  if ( result )
  {
    v7 = *(char **)(glitch::scene::ISceneNode::getChildren(a1) + 4);
    result = (char *)(glitch::scene::ISceneNode::getChildren(a1) + 4);
    if ( v7 == result )
      return (char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 104))(a1);
  }
  return result;
}


// ===== 50f6d8 glitch::core::detail::CMatrix4Base<float>::multEq(glitch::core::detail::CMatrix4Base<float> const&) =====
void *__fastcall glitch::core::detail::CMatrix4Base<float>::multEq(void *a1, _BYTE *a2)
{
  int v3; // r4
  float v5[17]; // [sp+4h] [bp-44h] BYREF

  v3 = (int)a1;
  if ( !a2[64] )
  {
    if ( *((_BYTE *)a1 + 64) )
    {
      return memcpy(a1, a2, 0x41u);
    }
    else
    {
      memcpy(v5, a1, 0x41u);
      return (void *)glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(v3, v5, (float *)a2);
    }
  }
  return (void *)v3;
}


// ===== 50f744 setCullingMode(glitch::scene::ISceneNode *,int) =====
int __fastcall setCullingMode(int result, int a2)
{
  int v2; // r4
  _DWORD *v3; // r4
  _DWORD *i; // r5
  _DWORD *v5; // t1
  glitch::scene::ISceneNode *v6; // r0

  v2 = result;
  if ( result )
  {
    result = glitch::scene::ISceneNode::setAutomaticCulling(result, a2);
    v5 = *(_DWORD **)(v2 + 244);
    v3 = (_DWORD *)(v2 + 244);
    for ( i = v5; v3 != i; result = disableCullingMode(v6) )
    {
      v6 = (glitch::scene::ISceneNode *)(i - 1);
      i = (_DWORD *)*i;
    }
  }
  return result;
}


// ===== 50f778 disableCullingMode(glitch::scene::ISceneNode *) =====
int __fastcall disableCullingMode(glitch::scene::ISceneNode *a1)
{
  return setCullingMode((int)a1, 0);
}


// ===== 50f780 findSceneNodeRef(glitch::scene::ISceneNode *,char const*) =====
glitch::scene::ISceneNode *__fastcall findSceneNodeRef(glitch::scene::ISceneNode *a1, const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *v6; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeRef; // r0

  v3 = a1;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 36))(a1);
  if ( LC_API_STRCMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    v6 = *((_DWORD **)v3 + 61);
    if ( v6 == v7 )
    {
      return nullptr;
    }
    else
    {
      while ( 1 )
      {
        v8 = v6 ? (glitch::scene::ISceneNode *)(v6 - 1) : nullptr;
        SceneNodeRef = findSceneNodeRef(v8, a2);
        if ( SceneNodeRef )
          break;
        v6 = (_DWORD *)*v6;
        if ( v7 == v6 )
          return nullptr;
      }
      return (glitch::scene::ISceneNode *)SceneNodeRef;
    }
  }
  return v3;
}


// ===== 50f7fc findSceneNode(glitch::scene::ISceneNode *,char const*) =====
glitch::scene::ISceneNode *__fastcall findSceneNode(glitch::scene::ISceneNode *a1, const char *a2)
{
  glitch::scene::ISceneNode *v3; // r5
  const char *v4; // r0
  _DWORD *v6; // r4
  glitch::scene::ISceneNode *v7; // r0
  int SceneNode; // r8
  _DWORD *i; // r4

  v3 = a1;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 36))(a1);
  if ( LC_API_STRCMP_0(v4, a2) )
  {
    v6 = *((_DWORD **)v3 + 61);
    if ( v6 == (_DWORD *)((char *)v3 + 244) )
    {
      return nullptr;
    }
    else
    {
      while ( 1 )
      {
        v7 = v6 ? (glitch::scene::ISceneNode *)(v6 - 1) : nullptr;
        SceneNode = findSceneNode(v7, a2);
        if ( SceneNode )
          break;
        v6 = (_DWORD *)*v6;
        if ( (_DWORD *)((char *)v3 + 244) == v6 )
          return nullptr;
      }
      for ( i = *(_DWORD **)glitch::scene::ISceneNode::getAnimators(v3);
            i != (_DWORD *)glitch::scene::ISceneNode::getAnimators(v3);
            i = (_DWORD *)*i )
      {
        ;
      }
      return (glitch::scene::ISceneNode *)SceneNode;
    }
  }
  return v3;
}


// ===== 50f89c CopyMeshSceneNode(glitch::scene::IMeshSceneNode *) =====
int __fastcall CopyMeshSceneNode(glitch::scene::IMeshSceneNode *a1)
{
  int v2; // r8
  int v3; // r7
  int v4; // r6
  int v5; // r5
  glitch::scene::ISceneNode *v6; // r0
  void (__fastcall *v7)(int, int); // r4
  int Parent; // r0
  int v9; // r0
  glitch::IReferenceCounted *v11; // [sp+Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v12; // [sp+10h] [bp-8h] BYREF
  glitch::IReferenceCounted *v13; // [sp+14h] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::scene::IMeshSceneNode *))(*(_DWORD *)a1 + 248))(
    &v12,
    a1);
  glitch::scene::createMeshCopy(&v13, &v12, *(_DWORD *)(dword_99F73C + 16), -1, 0);
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  v11 = v13;
  if ( v13 )
    ++*((_DWORD *)v13 + 1);
  v2 = (*(int (__fastcall **)(glitch::scene::IMeshSceneNode *))(*(_DWORD *)a1 + 160))(a1);
  v3 = (*(int (__fastcall **)(glitch::scene::IMeshSceneNode *))(*(_DWORD *)a1 + 152))(a1);
  v4 = (*(int (__fastcall **)(glitch::scene::IMeshSceneNode *))(*(_DWORD *)a1 + 144))(a1);
  v5 = operator new(320, 0);
  glitch::scene::CMeshSceneNode::CMeshSceneNode(v5, &v11, -1, v2, v3, v4);
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  v6 = a1;
  v7 = *(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 40);
  Parent = glitch::scene::ISceneNode::getParent(v6);
  v9 = (*(int (__fastcall **)(int))(*(_DWORD *)Parent + 36))(Parent);
  v7(v5, v9);
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  return v5;
}


// ===== 50f9d8 `global constructor keyed to'.._.._sources_Data_Collada_irrutils.cpp =====
int `global constructor keyed to'.._.._sources_Data_Collada_irrutils.cpp()
{
  int result; // r0

  dword_9F6248 = 0;
  s_dbg_statDataHack = 0;
  dword_9F6244 = 0;
  dword_9F623C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6238 = 1056964608;
  result = _aeabi_atexit((int)&s_dbg_statDataHack, (int)std::vector<PolyStat>::~vector, (int)&_dso_handle);
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


// ===== 50fadc Draw3DWireFrameBox(glitch::core::aabbox3d<float> const&,glitch::video::SColor const&) =====
glitch::video::CMaterial **__fastcall Draw3DWireFrameBox(int a1, unsigned __int8 *a2)
{
  _DWORD *v4; // r4
  int v5; // r8
  int v6; // r2
  int Technique; // r2
  glitch::video::CMaterial *v9; // [sp+4h] [bp-4h] BYREF

  v4 = *(_DWORD **)(dword_99F73C + 16);
  v5 = v4[55];
  v6 = *(unsigned __int16 *)(v5 + 46);
  if ( v6 == 0xFFFF )
    LOBYTE(v6) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v4[55], 1);
  glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)&v9, v5, v6);
  if ( v9 )
    Technique = glitch::video::CMaterial::getTechnique(v9);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(v4, &v9, Technique, 0);
  (*(void (__fastcall **)(_DWORD *, int, int))(*v4 + 40))(v4, a1, *a2 | (a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24));
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v9);
}


// ===== 50fbb0 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 50fbd0 OptimizeHierarchy(glitch::scene::ISceneNode *,bool) =====
int __fastcall OptimizeHierarchy(glitch::scene::ISceneNode *a1, bool a2)
{
  int v4; // r4
  char *v5; // r7
  char *v6; // r8
  glitch::scene::ISceneNode *v7; // r0
  const char *v9; // r0
  const char *v10; // r6
  const void *v11; // r0
  char *i; // r8
  char *v13; // r6
  const void *v14; // r0
  int Parent; // r0
  const char *v16; // r0
  _BYTE v17[68]; // [sp+8h] [bp-88h] BYREF
  _BYTE v18[68]; // [sp+4Ch] [bp-44h] BYREF

  if ( !a1 )
    return 0;
  v6 = (char *)a1 + 244;
  v5 = *((char **)a1 + 61);
  v4 = 0;
  while ( v5 != v6 )
  {
    if ( v5 )
      v7 = (glitch::scene::ISceneNode *)(v5 - 4);
    else
      v7 = nullptr;
    v5 = *(char **)v5;
    v4 += OptimizeHierarchy(v7, a2);
  }
  if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1) == 1852137828 )
  {
    v9 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 36))(a1);
    v10 = v9;
    if ( !v9 || !*v9 )
    {
      v11 = (const void *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 64))(a1);
      glitch::core::CMatrix4<float>::CMatrix4(v18, v11);
      for ( i = *((char **)a1 + 61); v5 != i; i = *(char **)i )
      {
        if ( i )
          v13 = i - 4;
        else
          v13 = nullptr;
        v14 = (const void *)(*(int (__fastcall **)(char *))(*(_DWORD *)v13 + 64))(v13);
        glitch::core::CMatrix4<float>::CMatrix4(v17, v14);
        glitch::core::detail::CMatrix4Base<float>::multEq(v17, v18);
        (*(void (__fastcall **)(char *, _BYTE *))(*(_DWORD *)v13 + 68))(v13, v17);
        Parent = glitch::scene::ISceneNode::getParent(a1);
        (*(void (__fastcall **)(int, char *))(*(_DWORD *)Parent + 92))(Parent, v13);
      }
      goto LABEL_20;
    }
    if ( *(_DWORD *)glitch::scene::ISceneNode::getChildren(a1) != 1
      && !*(_DWORD *)glitch::scene::ISceneNode::getChildren(a1)
      && LC_API_STRSTR_0(v10, "_PIVOT") )
    {
LABEL_20:
      (*(void (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 104))(a1);
      ++v4;
    }
  }
  else if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1) == 1835360612 )
  {
    v16 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 84))(a1);
    if ( v16 && !LC_API_STRNCMP_0(v16, "Box", 3u) )
    {
      if ( *(_DWORD *)glitch::scene::ISceneNode::getChildren(a1) )
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
            "node->getChildren().size() == 0",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp",
            492);
        }
      }
      goto LABEL_20;
    }
  }
  else if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1) == 1952999276
         && *(_WORD *)(*((_DWORD *)a1 + 77) + 88) == 3 )
  {
    goto LABEL_20;
  }
  return v4;
}


// ===== 50fe78 FlushMeshBuffers(glitch::scene::IMesh *,bool,bool,bool) =====
glitch::video::CVertexStreams **__fastcall FlushMeshBuffers(glitch::scene::IMesh *a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v7; // r11
  glitch::IReferenceCounted *v8; // r5
  int v9; // r7
  glitch::IReferenceCounted *v10; // r6
  glitch::video::CVertexStreams *v11; // r2
  glitch::video::CVertexStreams *v12; // r3
  glitch::video::CVertexStreams *v13; // r3
  unsigned int v14; // r8
  glitch::IReferenceCounted *v15; // r0
  unsigned int v16; // r5
  char v17; // r3
  int v18; // r5
  char v19; // r3
  int v20; // r2
  glitch::video::CVertexStreams **result; // r0
  int v22; // r2
  glitch::video::CVertexStreams *v25; // [sp+34h] [bp-10h] BYREF
  glitch::IReferenceCounted *v26; // [sp+38h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v27[2]; // [sp+3Ch] [bp-8h] BYREF

  v4 = 0;
  v27[0] = nullptr;
  v7 = (*(int (__fastcall **)(glitch::scene::IMesh *))(*(_DWORD *)a1 + 16))(a1);
  if ( !v7 )
    return boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(v27);
  v8 = nullptr;
  v9 = 0;
  while ( 1 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::scene::IMesh *, int))(*(_DWORD *)a1 + 20))(
      &v26,
      a1,
      v9);
    v10 = v26;
    if ( v26 )
      ++*((_DWORD *)v26 + 1);
    if ( v8 )
      glitch::IReferenceCounted::drop(v8);
    if ( v26 )
      glitch::IReferenceCounted::drop(v26);
    if ( a4 || !*((_BYTE *)v10 + 52) )
      break;
LABEL_53:
    ++v9;
    v18 = v4;
    if ( v9 == v7 )
      goto LABEL_54;
LABEL_41:
    v4 = v18;
    v8 = v10;
  }
  if ( a2 )
  {
    v25 = *((glitch::video::CVertexStreams **)v10 + 5);
    v11 = v25;
    if ( v25 )
    {
      ++*(_DWORD *)v25;
      v11 = v25;
    }
    v12 = v27[0];
    v27[0] = v11;
    v25 = v12;
    boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v25);
    v13 = v27[0];
    v14 = *((unsigned __int8 *)v27[0] + 13);
    if ( *((_BYTE *)v27[0] + 13) )
    {
      v15 = (glitch::IReferenceCounted *)v4;
      v16 = 0;
      while ( 1 )
      {
        v4 = *((_DWORD *)v13 + 4 * (unsigned __int8)v16 + 5);
        if ( v4 )
          ++*(_DWORD *)(v4 + 4);
        if ( v15 )
          glitch::IReferenceCounted::drop(v15);
        if ( *(_BYTE *)(v4 + 16) != 1 )
          goto LABEL_24;
        if ( gAssertLevel == 2 )
          break;
        if ( gAssertLevel != 1 )
          goto LABEL_24;
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "buffer->getType() != glitch::video::EBT_INDEX",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp",
          50);
        if ( *(_BYTE *)(v4 + 17) != 4 )
        {
          v17 = *(_BYTE *)(v4 + 18);
          goto LABEL_27;
        }
LABEL_47:
        v17 = *(_BYTE *)(v4 + 18);
        if ( (v17 & 8) != 0 )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
          v17 = *(_BYTE *)(v4 + 18);
        }
        v20 = *(_DWORD *)(v4 + 8);
        *(_BYTE *)(v4 + 17) = 0;
        if ( v20 )
        {
          v17 |= 2u;
          *(_BYTE *)(v4 + 18) = v17;
        }
LABEL_27:
        if ( (v17 & 8) != 0 )
        {
          ++v16;
          glitch::video::IBuffer::reset((glitch::video::IBuffer *)v4, *(_DWORD *)(v4 + 12), nullptr, 1);
          if ( v14 <= v16 )
            goto LABEL_29;
        }
        else
        {
          if ( *(_BYTE *)(v4 + 17) != 4 )
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v4 + 12))(v4, 1);
          if ( v14 <= ++v16 )
            goto LABEL_29;
        }
        v13 = v27[0];
        v15 = (glitch::IReferenceCounted *)v4;
      }
      dword_0 = 0;
LABEL_24:
      if ( *(_BYTE *)(v4 + 17) != 4 )
      {
        v17 = *(_BYTE *)(v4 + 18);
        goto LABEL_27;
      }
      goto LABEL_47;
    }
  }
LABEL_29:
  if ( !a3 )
    goto LABEL_53;
  v18 = *((_DWORD *)v10 + 6);
  if ( v18 )
    ++*(_DWORD *)(v18 + 4);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v4);
  if ( *(_BYTE *)(v18 + 17) == 4 )
  {
    v19 = *(_BYTE *)(v18 + 18);
    if ( (v19 & 8) != 0 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 16))(v18);
      v19 = *(_BYTE *)(v18 + 18);
    }
    v22 = *(_DWORD *)(v18 + 8);
    *(_BYTE *)(v18 + 17) = 0;
    if ( v22 )
    {
      v19 |= 2u;
      *(_BYTE *)(v18 + 18) = v19;
    }
  }
  else
  {
    v19 = *(_BYTE *)(v18 + 18);
  }
  if ( (v19 & 8) != 0 )
  {
    glitch::video::IBuffer::reset((glitch::video::IBuffer *)v18, *(_DWORD *)(v18 + 12), nullptr, 1);
  }
  else if ( *(_BYTE *)(v18 + 17) != 4 )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v18 + 12))(v18, 1);
  }
  if ( ++v9 != v7 )
    goto LABEL_41;
LABEL_54:
  result = boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(v27);
  if ( v18 )
    result = (glitch::video::CVertexStreams **)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v18);
  if ( v10 )
    return (glitch::video::CVertexStreams **)glitch::IReferenceCounted::drop(v10);
  return result;
}


// ===== 510230 std::vector<PolyStat,std::allocator<PolyStat>>::~vector() =====
_DWORD *__fastcall std::vector<PolyStat>::~vector(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  _DWORD *v4; // r3
  size_t v5; // r1
  _DWORD *v6; // r0
  size_t v7; // r1

  v1 = (_DWORD *)a1[1];
  v2 = (_DWORD *)*a1;
  if ( v1 != (_DWORD *)*a1 )
  {
    while ( 1 )
    {
      v1 -= 7;
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
  v6 = (_DWORD *)*a1;
  if ( !*a1 )
    return a1;
  v7 = 4 * ((a1[2] - (int)v6) >> 2);
  if ( v7 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
    return a1;
  }
  CustomFree(v6);
  return a1;
}


// ===== 5102e8 PolyStat::~PolyStat() =====
void __fastcall PolyStat::~PolyStat(PolyStat *this)
{
  PolyStat *v2; // r0
  size_t v3; // r1

  v2 = *((PolyStat **)this + 5);
  if ( v2 != this && v2 )
  {
    v3 = *(_DWORD *)this - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 51032c std::allocator<PolyStat>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PolyStat>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = CustomAlloc(28 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x1C;
  return result;
}


// ===== 5103b4 std::priv::__ufill<PolyStat *,PolyStat,int>(PolyStat *,PolyStat *,PolyStat const&,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__ufill<PolyStat *,PolyStat,int>(std::string *this, int a2, int a3)
{
  int v4; // r5
  std::string *i; // r4

  v4 = -1227133513 * ((a2 - (int)this) >> 2);
  if ( v4 > 0 )
  {
    for ( i = this; ; i = (std::string *)((char *)i + 28) )
    {
      i->_M_finish = (char *)i;
      i->_M_start_of_storage._M_data = (char *)i;
      this = (std::string *)std::string::_M_range_initialize(i, *(const char **)(a3 + 20), *(const char **)(a3 + 16));
      --v4;
      i[1]._M_buffers._M_end_of_storage = *(char **)(a3 + 24);
      if ( !v4 )
        break;
    }
  }
  return this;
}


// ===== 51041c std::priv::__ucopy<PolyStat *,PolyStat *,int>(PolyStat *,PolyStat *,PolyStat *,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__ucopy<PolyStat *,PolyStat *,int>(int a1, int a2, std::string *this)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  std::string *v8; // r4
  char *v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 <= 0 )
    return this;
  v7 = -1227133513 * v3;
  v8 = this;
  do
  {
    v8->_M_finish = (char *)v8;
    v8->_M_start_of_storage._M_data = (char *)v8;
    std::string::_M_range_initialize(v8, *(const char **)(v4 + 20), *(const char **)(v4 + 16));
    v9 = *(char **)(v4 + 24);
    --v7;
    v4 += 28;
    v8[1]._M_buffers._M_end_of_storage = v9;
    v8 = (std::string *)((char *)v8 + 28);
  }
  while ( v7 );
  return (std::string *)((char *)this + 28 * v6);
}


// ===== 51049c DBG_GetDetailedNodeName(glitch::scene::ISceneNode *) =====
std::string *__fastcall DBG_GetDetailedNodeName(std::string *a1, glitch::scene::ISceneNode *a2)
{
  int v3; // r3
  char *v5; // r6
  size_t v6; // r0
  glitch::IReferenceCounted *v7; // r6
  char *v8; // r8
  size_t v9; // r0
  glitch::scene::ISceneNode *v11; // r7
  char *v12; // r8
  size_t v13; // r0
  int v14; // r8
  int v15; // r3
  int i; // r7
  int v17; // [sp+4h] [bp-48h]
  glitch::video::CMaterial *v18; // [sp+10h] [bp-3Ch] BYREF
  _BYTE v19[20]; // [sp+14h] [bp-38h] BYREF
  char *v20; // [sp+28h] [bp-24h]
  void *v21[5]; // [sp+2Ch] [bp-20h] BYREF
  void *p; // [sp+40h] [bp-Ch]
  int v23; // [sp+44h] [bp-8h]

  v3 = _stack_chk_guard;
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  v23 = v3;
  std::string::_M_range_initialize(a1, "Node Info : ", "");
  if ( a2 )
  {
    v5 = (char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 84))(a2);
    v21[4] = v21;
    p = v21;
    v6 = LC_API_STRLEN_0(v5);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v21,
      v5,
      &v5[v6]);
    v7 = *(glitch::IReferenceCounted **)(dword_99F73C + 52);
    if ( v7 )
      ++*((_DWORD *)v7 + 1);
    (*(void (__fastcall **)(_BYTE *, glitch::IReferenceCounted *, void **, int))(*(_DWORD *)v7 + 60))(v19, v7, v21, 1);
    std::string::_M_append(a1, "File: ", "");
    v8 = v20;
    v9 = LC_API_STRLEN_0(v20);
    std::string::_M_append(a1, v8, &v8[v9]);
    std::string::_M_append(a1, "\n", "");
    if ( *(_DWORD *)glitch::scene::ISceneNode::getChildren(a2) )
    {
      v11 = *((glitch::scene::ISceneNode **)a2 + 61);
      if ( v11 )
        v11 = (glitch::scene::ISceneNode *)((char *)v11 - 4);
      v12 = (char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v11 + 36))(v11);
      std::string::_M_append(a1, "Object: ", "");
      v13 = LC_API_STRLEN_0(v12);
      std::string::_M_append(a1, v12, &v12[v13]);
      std::string::_M_append(a1, "\n", "");
      if ( *(_DWORD *)glitch::scene::ISceneNode::getChildren(v11) )
      {
        v14 = *((_DWORD *)v11 + 61);
        if ( v14 )
          v14 -= 4;
        v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 136))(v14);
        if ( v15 > 0 )
        {
          v17 = v15;
          std::string::_M_append(a1, "Textures: ", "");
          for ( i = 0; i != v17; ++i )
          {
            (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v14 + 132))(&v18, v14, i);
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
          }
        }
      }
    }
    if ( v20 != v19 && v20 )
      GlitchFree(v20);
    glitch::IReferenceCounted::drop(v7);
    if ( p != v21 && p )
      GlitchFree(p);
  }
  return a1;
}


// ===== 51073c DBG_TraceSceneNodePolyStats(glitch::scene::ISceneNode *,int,bool (*)(glitch::scene::ISceneNode *)) =====
void __fastcall DBG_TraceSceneNodePolyStats(char **a1, int a2, int (__fastcall *a3)(char **))
{
  std::string *v6; // r0
  int v7; // r11
  int v8; // r10
  std::string *v9; // r8
  std::string *M_data; // r0
  size_t v11; // r1
  char *v12; // r6
  char *i; // r8
  char *v14; // t1
  glitch::scene::ISceneNode *v15; // r0
  int v16; // r7
  int v17; // r4
  int Parent; // r0
  const char *v19; // r10
  size_t v20; // r0
  std::string *v21; // r10
  unsigned int v22; // r2
  unsigned int v23; // r1
  std::string *v24; // r8
  int v25; // r8
  _DWORD *v26; // r10
  _DWORD *v27; // r0
  size_t v28; // r1
  size_t v29; // r1
  std::string *v30; // [sp+10h] [bp-54h]
  int v31; // [sp+14h] [bp-50h]
  size_t v32; // [sp+18h] [bp-4Ch] BYREF
  std::string v33; // [sp+24h] [bp-40h] BYREF
  int v34; // [sp+3Ch] [bp-28h]
  std::string v35; // [sp+40h] [bp-24h] BYREF
  int NodePolyCount; // [sp+58h] [bp-Ch]

  if ( !a2 && s_dbg_statDataHack != dword_9F6244 )
  {
    v6 = std::priv::__copy<PolyStat *,PolyStat *,int>(dword_9F6244, dword_9F6244, (std::string *)s_dbg_statDataHack);
    v7 = dword_9F6244;
    v8 = (int)v6;
    if ( v6 != (std::string *)dword_9F6244 )
    {
      v9 = v6;
      while ( 1 )
      {
        M_data = (std::string *)v9->_M_start_of_storage._M_data;
        if ( M_data == v9 || !M_data )
          goto LABEL_6;
        v11 = v9->_M_buffers._M_end_of_storage - (char *)M_data;
        if ( v11 <= 0x80 )
        {
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v11);
LABEL_6:
          v9 = (std::string *)((char *)v9 + 28);
          if ( (std::string *)v7 == v9 )
            break;
        }
        else
        {
          v9 = (std::string *)((char *)v9 + 28);
          CustomFree(M_data);
          if ( (std::string *)v7 == v9 )
            break;
        }
      }
    }
    dword_9F6244 = v8;
  }
  if ( (!a3 || a3(a1)) && IsNodeMesh((glitch::scene::ISceneNode *)a1) )
  {
    v35._M_finish = (char *)&v35;
    v35._M_start_of_storage._M_data = (char *)&v35;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v35, 0x10u);
    *v35._M_finish = 0;
    NodePolyCount = GetNodePolyCount(a1, 0);
    Parent = glitch::scene::ISceneNode::getParent((glitch::scene::ISceneNode *)a1);
    v19 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)Parent + 36))(Parent);
    v20 = LC_API_STRLEN_0(v19);
    std::string::_M_assign(&v35, v19, &v19[v20]);
    v21 = (std::string *)dword_9F6244;
    if ( dword_9F6244 == dword_9F6248 )
    {
      v22 = -1227133513 * ((dword_9F6244 - s_dbg_statDataHack) >> 2);
      if ( v22 )
        v23 = 1840700270 * ((dword_9F6244 - s_dbg_statDataHack) >> 2);
      else
        v23 = 1;
      if ( v23 > 0x9249249 || v22 > v23 )
        v23 = 153391689;
      v32 = v23;
      v30 = (std::string *)std::allocator<PolyStat>::_M_allocate((int)&dword_9F6248, v23, &v32);
      v24 = std::priv::__ucopy<PolyStat *,PolyStat *,int>(s_dbg_statDataHack, (int)v21, v30);
      v24->_M_finish = (char *)v24;
      v24->_M_start_of_storage._M_data = (char *)v24;
      std::string::_M_range_initialize(v24, v35._M_start_of_storage._M_data, v35._M_finish);
      v31 = (int)&v24[1]._M_buffers._M_static_buf[4];
      v24[1]._M_buffers._M_end_of_storage = (char *)NodePolyCount;
      v25 = s_dbg_statDataHack;
      v26 = (_DWORD *)dword_9F6244;
      if ( dword_9F6244 != s_dbg_statDataHack )
      {
        do
        {
          v26 -= 7;
          v27 = (_DWORD *)v26[5];
          if ( v27 != v26 && v27 )
          {
            v28 = *v26 - (_DWORD)v27;
            if ( v28 <= 0x80 )
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v27, v28);
            else
              CustomFree(v27);
          }
        }
        while ( (_DWORD *)v25 != v26 );
      }
      if ( s_dbg_statDataHack )
      {
        v29 = 4 * ((dword_9F6248 - s_dbg_statDataHack) >> 2);
        if ( v29 > 0x80 )
          CustomFree((void *)s_dbg_statDataHack);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)s_dbg_statDataHack, v29);
      }
      dword_9F6248 = (int)v30 + 28 * v32;
      s_dbg_statDataHack = (int)v30;
      dword_9F6244 = v31;
    }
    else
    {
      *(_DWORD *)(dword_9F6244 + 16) = dword_9F6244;
      v21->_M_start_of_storage._M_data = (char *)v21;
      std::string::_M_range_initialize(v21, v35._M_start_of_storage._M_data, v35._M_finish);
      v21[1]._M_buffers._M_end_of_storage = (char *)NodePolyCount;
      dword_9F6244 += 28;
    }
    PolyStat::~PolyStat((PolyStat *)&v35);
  }
  v14 = a1[61];
  v12 = (char *)(a1 + 61);
  for ( i = v14; v12 != i; i = *(char **)i )
  {
    if ( i )
      v15 = (glitch::scene::ISceneNode *)(i - 4);
    else
      v15 = nullptr;
    DBG_TraceSceneNodePolyStats(v15, a2 + 1, (bool (*)(glitch::scene::ISceneNode *))a3);
  }
  if ( !a2 )
  {
    v16 = dword_9F6244;
    v17 = s_dbg_statDataHack;
    if ( s_dbg_statDataHack != dword_9F6244 )
    {
      while ( 1 )
      {
        v33._M_finish = (char *)&v33;
        v33._M_start_of_storage._M_data = (char *)&v33;
        std::string::_M_range_initialize(&v33, *(const char **)(v17 + 20), *(const char **)(v17 + 16));
        v34 = *(_DWORD *)(v17 + 24);
        if ( (std::string *)v33._M_start_of_storage._M_data == &v33 || !v33._M_start_of_storage._M_data )
          goto LABEL_23;
        if ( (unsigned int)(v33._M_buffers._M_end_of_storage - v33._M_start_of_storage._M_data) <= 0x80 )
        {
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v33._M_start_of_storage._M_data,
            v33._M_buffers._M_end_of_storage - v33._M_start_of_storage._M_data);
LABEL_23:
          v17 += 28;
          if ( v17 == v16 )
            return;
        }
        else
        {
          v17 += 28;
          CustomFree(v33._M_start_of_storage._M_data);
          if ( v17 == v16 )
            return;
        }
      }
    }
  }
}


// ===== 510b4c PropertyMap::GetThisClassName(void) =====
int __fastcall PropertyMap::GetThisClassName(PropertyMap *this)
{
  int result; // r0

  result = *((_DWORD *)this + 7);
  if ( !result )
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
        "m_className != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMap.cpp",
        146);
      return *((_DWORD *)this + 7);
    }
  }
  return result;
}


// ===== 510be4 `global constructor keyed to'.._.._sources_Data_PropertyMap_PropertyMap.cpp =====
int `global constructor keyed to'.._.._sources_Data_PropertyMap_PropertyMap.cpp()
{
  dword_9F6254 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6250 = 1056964608;
  dword_9F6268 = 0;
  dword_9F625C = 0;
  PropertyMap::s_classMap = 0;
  dword_9F6260 = (int)&PropertyMap::s_classMap;
  dword_9F6264 = (int)&PropertyMap::s_classMap;
  return _aeabi_atexit(
           (int)&PropertyMap::s_classMap,
           (int)std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::~map,
           (int)&_dso_handle);
}


// ===== 510c58 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 510c98 std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>::~pair() =====
std::string *__fastcall std::pair<std::string const,std::map<std::string,Property *>>::~pair(std::string *this)
{
  std::string *v2; // r5

  if ( *((_DWORD *)this + 10) )
  {
    v2 = this + 1;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(
      (int)(this + 1),
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = v2;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v2;
    *((_DWORD *)this + 7) = 0;
  }
  std::string::~string(this);
  return this;
}


// ===== 510ce0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::pair<std::string const,std::map<std::string,Property *>>::~pair((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x40u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 510d20 std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>::~pair() =====
std::string *__fastcall std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>::~pair(
        std::string *this)
{
  std::string *v3; // r5

  if ( *((_DWORD *)this + 10) )
  {
    v3 = this + 1;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_erase(
      (int)(this + 1),
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 7) = 0;
    std::string::~string(this);
  }
  else
  {
    std::string::~string(this);
  }
  return this;
}


// ===== 510d78 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>::~pair((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x40u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 510db8 std::map<std::string,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::~map() =====
int *__fastcall std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::~map(int *a1)
{
  if ( a1[4] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_erase(
      (int)a1,
      a1[1]);
    a1[4] = 0;
    a1[1] = 0;
    a1[2] = (int)a1;
    a1[3] = (int)a1;
  }
  return a1;
}


// ===== 510dec PropertyMap::DestroyPropertyMaps(void) =====
void __fastcall PropertyMap::DestroyPropertyMaps(PropertyMap *this)
{
  int v1; // r4
  _DWORD *v2; // r8
  _DWORD *v3; // r11
  _DWORD *v4; // r5
  _DWORD *v5; // r7
  char *v6; // r6
  _DWORD *v7; // r2
  _DWORD *v8; // r1
  _DWORD *v9; // r2
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r2

  v1 = dword_9F6260;
  while ( (char *)v1 != &PropertyMap::s_classMap )
  {
    v2 = *(_DWORD **)(v1 + 48);
    v3 = (_DWORD *)(v1 + 40);
    while ( v3 != v2 )
    {
      while ( 1 )
      {
        v4 = (_DWORD *)v2[12];
        v5 = v2 + 10;
        while ( v5 != v4 )
        {
          while ( 1 )
          {
            v6 = (char *)v4[10];
            if ( v6 )
            {
              *(_DWORD *)v6 = &off_95C5E8;
              std::string::~string((std::string *)(v6 + 8));
              CustomFree(v6);
            }
            v7 = (_DWORD *)v4[3];
            if ( !v7 )
              break;
            while ( v7[2] )
              v7 = (_DWORD *)v7[2];
            v4 = v7;
            if ( v5 == v7 )
              goto LABEL_13;
          }
          v11 = v4[1];
          if ( v4 == *(_DWORD **)(v11 + 12) )
          {
            do
            {
              v4 = (_DWORD *)v11;
              v11 = *(_DWORD *)(v11 + 4);
            }
            while ( *(_DWORD **)(v11 + 12) == v4 );
            v7 = (_DWORD *)v4[3];
          }
          if ( (_DWORD *)v11 != v7 )
            v4 = (_DWORD *)v11;
        }
LABEL_13:
        v8 = (_DWORD *)v2[3];
        v9 = v8;
        if ( !v8 )
          break;
        while ( v9[2] )
          v9 = (_DWORD *)v9[2];
        v2 = v9;
        if ( v3 == v9 )
          goto LABEL_18;
      }
      v12 = v2[1];
      if ( v2 == *(_DWORD **)(v12 + 12) )
      {
        do
        {
          v2 = (_DWORD *)v12;
          v12 = *(_DWORD *)(v12 + 4);
        }
        while ( *(_DWORD **)(v12 + 12) == v2 );
        v8 = (_DWORD *)v2[3];
      }
      if ( (_DWORD *)v12 != v8 )
        v2 = (_DWORD *)v12;
    }
LABEL_18:
    v10 = *(_DWORD *)(v1 + 12);
    if ( v10 )
    {
      while ( *(_DWORD *)(v10 + 8) )
        v10 = *(_DWORD *)(v10 + 8);
      v1 = v10;
    }
    else
    {
      v13 = *(_DWORD *)(v1 + 4);
      if ( v1 == *(_DWORD *)(v13 + 12) )
      {
        while ( *(_DWORD *)(*(_DWORD *)(v13 + 4) + 12) == v13 )
          v13 = *(_DWORD *)(v13 + 4);
        v14 = v13;
        v13 = *(_DWORD *)(v13 + 4);
      }
      else
      {
        v14 = v1;
      }
      if ( v13 != *(_DWORD *)(v14 + 12) )
        v14 = v13;
      v1 = v14;
    }
  }
  if ( *(_DWORD *)(v1 + 16) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_erase(
      v1,
      *(_DWORD *)(v1 + 4));
    *(_DWORD *)(v1 + 16) = 0;
    *(_DWORD *)(v1 + 4) = 0;
    *(_DWORD *)(v1 + 8) = v1;
    *(_DWORD *)(v1 + 12) = v1;
  }
}


// ===== 510fe0 PropertyInstance::ToString(void) =====
std::string *__fastcall PropertyInstance::ToString(std::string *this, _DWORD *a2)
{
  if ( a2[1] && *a2 )
    (**(void (__fastcall ***)(std::string *, _DWORD))*a2)(this, *a2);
  else
    std::string::string(this, "");
  return this;
}


// ===== 51103c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(std::pair<std::string const,Property *> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
        int a1,
        const std::string *a2)
{
  char *v3; // r4
  char *M_end_of_storage; // r2
  size_t v6; // [sp+4h] [bp-8h] BYREF

  v6 = 44;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  std::string::string((std::string *)(v3 + 16), a2);
  M_end_of_storage = a2[1]._M_buffers._M_end_of_storage;
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 10) = M_end_of_storage;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 511088 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_copy(
        int a1,
        int a2,
        int a3)
{
  char *node; // r0
  char v7; // r3
  char *v8; // r8
  int v9; // r1
  int v10; // r5
  char *v11; // r6
  char *v12; // r4

  node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
           a1,
           (const std::string *)(a2 + 16));
  v7 = *(_BYTE *)a2;
  *((_DWORD *)node + 1) = a3;
  v8 = node;
  *node = v7;
  v9 = *(_DWORD *)(a2 + 12);
  if ( v9 )
    *((_DWORD *)node + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_copy(
                              a1,
                              v9,
                              node);
  v10 = *(_DWORD *)(a2 + 8);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
              a1,
              (const std::string *)(v10 + 16));
      *v12 = *(_BYTE *)v10;
      *((_DWORD *)v11 + 2) = v12;
      *((_DWORD *)v12 + 1) = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        *((_DWORD *)v12 + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_copy(
                                 a1,
                                 *(_DWORD *)(v10 + 12),
                                 v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 511130 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_Rb_tree(std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_Rb_tree(
        int a1,
        int a2)
{
  int v4; // r1
  char *v5; // r0
  char *v6; // r3
  char *v7; // r2
  char *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(_DWORD *)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = *((char **)v6 + 2);
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = *((char **)v5 + 3);
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 5111a8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,Property *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        const std::string *a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  const std::string *v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5
          || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), (int)a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_create_node(
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


// ===== 511298 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::_M_create_node(std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
        int a1,
        const std::string *a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 64;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  std::string::string((std::string *)(v3 + 16), a2);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_Rb_tree(
    (int)(v3 + 40),
    (int)&a2[1]);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 5112e8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_copy(
        int a1,
        int a2,
        int a3)
{
  char *node; // r0
  char v7; // r3
  char *v8; // r8
  int v9; // r1
  int v10; // r5
  char *v11; // r6
  char *v12; // r4

  node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
           a1,
           (const std::string *)(a2 + 16));
  v7 = *(_BYTE *)a2;
  *((_DWORD *)node + 1) = a3;
  v8 = node;
  *node = v7;
  v9 = *(_DWORD *)(a2 + 12);
  if ( v9 )
    *((_DWORD *)node + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_copy(
                              a1,
                              v9,
                              node);
  v10 = *(_DWORD *)(a2 + 8);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
              a1,
              (const std::string *)(v10 + 16));
      *v12 = *(_BYTE *)v10;
      *((_DWORD *)v11 + 2) = v12;
      *((_DWORD *)v12 + 1) = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        *((_DWORD *)v12 + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_copy(
                                 a1,
                                 *(_DWORD *)(v10 + 12),
                                 v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 511390 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::_Rb_tree(std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_Rb_tree(
        int a1,
        int a2)
{
  int v4; // r1
  char *v5; // r0
  char *v6; // r3
  char *v7; // r2
  char *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(_DWORD *)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = *((char **)v6 + 2);
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = *((char **)v5 + 3);
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 511408 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::_M_create_node(std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_create_node(
        int a1,
        const std::string *a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 64;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  std::string::string((std::string *)(v3 + 16), a2);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_Rb_tree(
    (int)(v3 + 40),
    (int)&a2[1]);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 511458 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        const std::string *a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  const std::string *v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5
          || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), (int)a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_create_node(
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


// ===== 511548 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        const std::string *a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  const std::string *v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5
          || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), (int)a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_create_node(
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


// ===== 511638 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_lower_bound<char const*>(
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


// ===== 511728 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_lower_bound<char const*>(
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


// ===== 511818 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::insert_unique(std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        const std::string *a3)
{
  _DWORD *v3; // r5
  char *M_data; // r7
  char *M_finish; // r11
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
  M_data = a3->_M_start_of_storage._M_data;
  M_finish = a3->_M_finish;
  v9 = M_finish - M_data;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = M_finish - M_data;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(M_data, v12, v14);
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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
      M_data = a3->_M_start_of_storage._M_data;
      M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = M_finish - M_data;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, M_data, v21);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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


// ===== 511a30 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(std::pair<std::string const,Property *> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
        int a1,
        _DWORD *a2,
        const std::string *a3)
{
  _DWORD *v3; // r5
  char *M_data; // r7
  char *M_finish; // r11
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
  M_data = a3->_M_start_of_storage._M_data;
  M_finish = a3->_M_finish;
  v9 = M_finish - M_data;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = M_finish - M_data;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(M_data, v12, v14);
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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
      M_data = a3->_M_start_of_storage._M_data;
      M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = M_finish - M_data;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, M_data, v21);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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


// ===== 511c48 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::insert_unique(std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        const std::string *a3)
{
  _DWORD *v3; // r5
  char *M_data; // r7
  char *M_finish; // r11
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
  M_data = a3->_M_start_of_storage._M_data;
  M_finish = a3->_M_finish;
  v9 = M_finish - M_data;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = M_finish - M_data;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(M_data, v12, v14);
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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
      M_data = a3->_M_start_of_storage._M_data;
      M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
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
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = M_finish - M_data;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, M_data, v21);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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


// ===== 511e60 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_find<char const*>(
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


// ===== 511fd0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        const std::string *a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  char *v10; // r9
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
  char *M_data; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  char *v34; // r1
  char *M_finish; // r9
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    M_data = a4->_M_start_of_storage._M_data;
    v26 = *((const void **)v4 + 9);
    v27 = a4->_M_finish - M_data;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = a4->_M_finish - M_data;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(M_data, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), (int)a4) )
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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
    v34 = a4->_M_start_of_storage._M_data;
    M_finish = a4->_M_finish;
    v36 = *(_DWORD *)(v33 + 36);
    v37 = M_finish - v34;
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
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
  v10 = a4->_M_start_of_storage._M_data;
  v11 = a4->_M_finish - v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = a4->_M_finish - v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(a4->_M_start_of_storage._M_data, v9, v12);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_insert(
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


// ===== 5124d4 std::map<std::string,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>>>>::operator[]<char const*>(char const* const&) [clone] =====
char *__fastcall std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::operator[]<char const*>(
        char **a1)
{
  char *v2; // r5
  const void *v3; // r1
  int v4; // r8
  int v5; // r10
  size_t v6; // r2
  int v7; // r0
  char *v8; // r3
  char *v10; // r5
  char v11[4]; // [sp+Ch] [bp-90h] BYREF
  int v12; // [sp+10h] [bp-8Ch]
  char *v13; // [sp+14h] [bp-88h]
  char *v14; // [sp+18h] [bp-84h]
  int v15; // [sp+1Ch] [bp-80h]
  char *v16; // [sp+24h] [bp-78h] BYREF
  char *v17; // [sp+28h] [bp-74h] BYREF
  std::string v18; // [sp+34h] [bp-68h] BYREF
  int v19; // [sp+4Ch] [bp-50h] BYREF
  std::string v20; // [sp+64h] [bp-38h] BYREF
  std::string v21; // [sp+7Ch] [bp-20h] BYREF

  v2 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::_M_lower_bound<char const*>(
                 &PropertyMap::s_classMap,
                 a1);
  if ( v2 != &PropertyMap::s_classMap )
  {
    std::string::string(&v20, *a1);
    v3 = *((const void **)v2 + 9);
    v4 = *((_DWORD *)v2 + 8) - (_DWORD)v3;
    v5 = v20._M_finish - v20._M_start_of_storage._M_data;
    if ( v4 >= v20._M_finish - v20._M_start_of_storage._M_data )
      v6 = v20._M_finish - v20._M_start_of_storage._M_data;
    else
      v6 = *((_DWORD *)v2 + 8) - (_DWORD)v3;
    v7 = memcmp(v20._M_start_of_storage._M_data, v3, v6);
    if ( v7 )
    {
      if ( v7 >= 0 )
        goto LABEL_7;
    }
    else if ( v5 >= v4 )
    {
LABEL_7:
      std::string::~string(&v20);
      v8 = v2;
      return v8 + 40;
    }
    std::string::~string(&v20);
  }
  std::string::string(&v21, *a1);
  v11[0] = 0;
  v12 = 0;
  v13 = v11;
  v14 = v11;
  v15 = 0;
  std::string::string(&v18, &v21);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_Rb_tree(
    (int)&v19,
    (int)v11);
  v17 = v2;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>,std::allocator<std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>>>::insert_unique(
    &v16,
    &PropertyMap::s_classMap,
    &v17,
    &v18);
  v10 = v16;
  std::pair<std::string const,std::map<std::string,std::map<std::string,Property *>>>::~pair(&v18);
  if ( v15 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_erase(
      (int)v11,
      v12);
    v14 = v11;
    v15 = 0;
    v13 = v11;
    v12 = 0;
  }
  std::string::~string(&v21);
  v8 = v10;
  return v8 + 40;
}


// ===== 512670 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,Property *>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>>,std::pair<std::string const,Property *> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        const std::string *a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  char *v10; // r9
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
  char *M_data; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  char *v34; // r1
  char *M_finish; // r9
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    M_data = a4->_M_start_of_storage._M_data;
    v26 = *((const void **)v4 + 9);
    v27 = a4->_M_finish - M_data;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = a4->_M_finish - M_data;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(M_data, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), (int)a4) )
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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
    v34 = a4->_M_start_of_storage._M_data;
    M_finish = a4->_M_finish;
    v36 = *(_DWORD *)(v33 + 36);
    v37 = M_finish - v34;
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
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
  v10 = a4->_M_start_of_storage._M_data;
  v11 = a4->_M_finish - v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = a4->_M_finish - v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(a4->_M_start_of_storage._M_data, v9, v12);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_insert(
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


// ===== 512b74 std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>::operator[]<std::string>(std::string const&) =====
char *__fastcall std::map<std::string,Property *>::operator[]<std::string>(int a1, std::string *a2)
{
  int v2; // r4
  char *M_data; // r8
  int v6; // r7
  char *v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  int v12; // r3
  char *v13; // r3
  const void *v14; // r1
  char *v15; // r5
  int v16; // r6
  char *v17; // r2
  int v18; // r0
  bool v19; // zf
  bool v20; // nf
  char *v21; // r0
  char *v23; // r4
  char *v24; // [sp+8h] [bp-2Ch] BYREF
  char *v25; // [sp+Ch] [bp-28h] BYREF
  std::string v26; // [sp+10h] [bp-24h] BYREF
  int v27; // [sp+28h] [bp-Ch]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    M_data = a2->_M_start_of_storage._M_data;
    v6 = a1;
    v7 = (char *)(a2->_M_finish - M_data);
    while ( 1 )
    {
      v8 = *(const void **)(v2 + 36);
      v9 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      if ( (int)v7 >= v9 )
        v10 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      else
        v10 = (size_t)v7;
      v11 = memcmp(v8, M_data, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_9:
          v12 = *(_DWORD *)(v2 + 8);
          if ( !v12 )
            goto LABEL_13;
          goto LABEL_10;
        }
      }
      else if ( v9 >= (int)v7 )
      {
        goto LABEL_9;
      }
      v12 = *(_DWORD *)(v2 + 12);
      v2 = v6;
      if ( !v12 )
        goto LABEL_13;
LABEL_10:
      v6 = v2;
      v2 = v12;
    }
  }
  v2 = a1;
LABEL_13:
  if ( a1 == v2 )
    goto LABEL_23;
  v13 = a2->_M_start_of_storage._M_data;
  v14 = *(const void **)(v2 + 36);
  v15 = (char *)(a2->_M_finish - v13);
  v16 = *(_DWORD *)(v2 + 32) - (_DWORD)v14;
  if ( v16 >= (int)v15 )
    v17 = (char *)(a2->_M_finish - v13);
  else
    v17 = (char *)(*(_DWORD *)(v2 + 32) - (_DWORD)v14);
  v18 = memcmp(v13, v14, (size_t)v17);
  v19 = v18 == 0;
  v20 = v18 < 0;
  v21 = (char *)v2;
  if ( !v19 )
  {
    if ( !v20 )
      return v21 + 40;
    goto LABEL_23;
  }
  if ( (int)v15 < v16 )
  {
LABEL_23:
    std::string::string(&v26, a2);
    v27 = 0;
    v24 = (char *)v2;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
      &v25,
      (char *)a1,
      &v24,
      &v26);
    v23 = v25;
    std::string::~string(&v26);
    v21 = v23;
  }
  return v21 + 40;
}


// ===== 512ce0 std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,Property *>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r10
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

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
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
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v18);
LABEL_11:
    std::string::string(&v17, *a2);
    std::string::string(&v15, &v17);
    v16 = 0;
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v15);
    v12 = v14;
    std::string::~string(&v15);
    std::string::~string(&v17);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v18);
  v10 = v4;
  return v10 + 40;
}


// ===== 512e14 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>,std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        const std::string *a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  char *v10; // r9
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
  char *M_data; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  char *v34; // r1
  char *M_finish; // r9
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    M_data = a4->_M_start_of_storage._M_data;
    v26 = *((const void **)v4 + 9);
    v27 = a4->_M_finish - M_data;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = a4->_M_finish - M_data;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(M_data, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), (int)a4) )
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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
    v34 = a4->_M_start_of_storage._M_data;
    M_finish = a4->_M_finish;
    v36 = *(_DWORD *)(v33 + 36);
    v37 = M_finish - v34;
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
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
  v10 = a4->_M_start_of_storage._M_data;
  v11 = a4->_M_finish - v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = a4->_M_finish - v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(a4->_M_start_of_storage._M_data, v9, v12);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::_M_insert(
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


// ===== 513318 std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::operator[]<std::string>(std::string const&) =====
char *__fastcall std::map<std::string,std::map<std::string,Property *>>::operator[]<std::string>(
        int a1,
        std::string *a2)
{
  int v2; // r4
  char *M_data; // r8
  int v6; // r7
  char *v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  int v12; // r3
  char *v13; // r3
  const void *v14; // r1
  char *v15; // r5
  int v16; // r6
  char *v17; // r2
  int v18; // r0
  bool v19; // zf
  bool v20; // nf
  char *v21; // r0
  char *v22; // r4
  char v24[4]; // [sp+Ch] [bp-58h] BYREF
  int v25; // [sp+10h] [bp-54h]
  char *v26; // [sp+14h] [bp-50h]
  char *v27; // [sp+18h] [bp-4Ch]
  int v28; // [sp+1Ch] [bp-48h]
  char *v29; // [sp+24h] [bp-40h] BYREF
  char *v30; // [sp+28h] [bp-3Ch] BYREF
  std::string v31; // [sp+2Ch] [bp-38h] BYREF
  int v32; // [sp+44h] [bp-20h] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    M_data = a2->_M_start_of_storage._M_data;
    v6 = a1;
    v7 = (char *)(a2->_M_finish - M_data);
    while ( 1 )
    {
      v8 = *(const void **)(v2 + 36);
      v9 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      if ( (int)v7 >= v9 )
        v10 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      else
        v10 = (size_t)v7;
      v11 = memcmp(v8, M_data, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_9:
          v12 = *(_DWORD *)(v2 + 8);
          if ( !v12 )
            goto LABEL_13;
          goto LABEL_10;
        }
      }
      else if ( v9 >= (int)v7 )
      {
        goto LABEL_9;
      }
      v12 = *(_DWORD *)(v2 + 12);
      v2 = v6;
      if ( !v12 )
        goto LABEL_13;
LABEL_10:
      v6 = v2;
      v2 = v12;
    }
  }
  v2 = a1;
LABEL_13:
  if ( a1 != v2 )
  {
    v13 = a2->_M_start_of_storage._M_data;
    v14 = *(const void **)(v2 + 36);
    v15 = (char *)(a2->_M_finish - v13);
    v16 = *(_DWORD *)(v2 + 32) - (_DWORD)v14;
    if ( v16 >= (int)v15 )
      v17 = (char *)(a2->_M_finish - v13);
    else
      v17 = (char *)(*(_DWORD *)(v2 + 32) - (_DWORD)v14);
    v18 = memcmp(v13, v14, (size_t)v17);
    v19 = v18 == 0;
    v20 = v18 < 0;
    v21 = (char *)v2;
    if ( v19 )
    {
      if ( (int)v15 >= v16 )
        return v21 + 40;
    }
    else if ( !v20 )
    {
      return v21 + 40;
    }
  }
  v24[0] = 0;
  v28 = 0;
  v25 = 0;
  v26 = v24;
  v27 = v24;
  std::string::string(&v31, a2);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_Rb_tree(
    (int)&v32,
    (int)v24);
  v29 = (char *)v2;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
    &v30,
    (char *)a1,
    &v29,
    &v31);
  v22 = v30;
  std::pair<std::string const,std::map<std::string,Property *>>::~pair(&v31);
  if ( v28 )
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(
      (int)v24,
      v25);
  v21 = v22;
  return v21 + 40;
}


// ===== 5134c0 PropertyMap::GetPropertyMap(void) =====
char *__fastcall PropertyMap::GetPropertyMap(PropertyMap *this)
{
  char *v2; // r0
  char *ThisClassName; // [sp+4h] [bp-4h] BYREF

  ThisClassName = (char *)PropertyMap::GetThisClassName(this);
  v2 = std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::operator[]<char const*>(&ThisClassName);
  return std::map<std::string,std::map<std::string,Property *>>::operator[]<std::string>(
           (int)v2,
           (std::string *)((char *)this + 4));
}


// ===== 5134f0 PropertyMap::SavePropertiesToXML(TiXmlElement *,char const*) =====
PropertyMap *__fastcall PropertyMap::SavePropertiesToXML(PropertyMap *this, TiXmlElement *a2, const char *a3)
{
  PropertyMap *v3; // r8
  const char *v4; // r4
  TiXmlElement *v5; // r10
  char *PropertyMap; // r0
  char *v7; // r4
  char *v8; // r7
  int v9; // r3
  char *v10; // r2
  int v11; // r3
  _DWORD v13[2]; // [sp+10h] [bp-44h] BYREF
  std::string v14; // [sp+1Ch] [bp-38h] BYREF
  std::string v15; // [sp+34h] [bp-20h] BYREF

  v3 = this;
  if ( a3 )
    v4 = a3;
  else
    v4 = "GameObject";
  if ( a2 )
  {
    v5 = (TiXmlElement *)operator new(0x8Cu, 0);
    TiXmlElement::TiXmlElement(v5, v4);
    PropertyMap = PropertyMap::GetPropertyMap(v3);
    v7 = *((char **)PropertyMap + 2);
    v8 = PropertyMap;
    while ( v8 != v7 )
    {
      while ( 1 )
      {
        v9 = *((_DWORD *)v7 + 10);
        if ( v9 )
        {
          v13[0] = *((_DWORD *)v7 + 10);
          v13[1] = v3;
          std::string::string(&v14, *(char **)(v9 + 28));
          PropertyInstance::ToString(&v15, v13);
          TiXmlElement::SetAttribute(v5, &v14, &v15);
          std::string::~string(&v15);
          std::string::~string(&v14);
        }
        v10 = *((char **)v7 + 3);
        if ( !v10 )
          break;
        while ( *((_DWORD *)v10 + 2) )
          v10 = *((char **)v10 + 2);
        v7 = v10;
        if ( v8 == v10 )
          return (PropertyMap *)TiXmlNode::LinkEndChild(a2, v5);
      }
      v11 = *((_DWORD *)v7 + 1);
      if ( v7 == *(char **)(v11 + 12) )
      {
        do
        {
          v7 = (char *)v11;
          v11 = *(_DWORD *)(v11 + 4);
        }
        while ( *(char **)(v11 + 12) == v7 );
        v10 = *((char **)v7 + 3);
      }
      if ( v10 != (char *)v11 )
        v7 = (char *)v11;
    }
    return (PropertyMap *)TiXmlNode::LinkEndChild(a2, v5);
  }
  return this;
}


// ===== 513674 PropertyMap::DumpProperties(void) =====
char *__fastcall PropertyMap::DumpProperties(PropertyMap *this)
{
  char *result; // r0
  int v2; // r3
  int v3; // r2
  int v4; // r1

  result = PropertyMap::GetPropertyMap(this);
  v2 = *((_DWORD *)result + 2);
  while ( result != (char *)v2 )
  {
    while ( 1 )
    {
      v3 = *(_DWORD *)(v2 + 12);
      if ( !v3 )
        break;
      while ( *(_DWORD *)(v3 + 8) )
        v3 = *(_DWORD *)(v3 + 8);
      v2 = v3;
      if ( result == (char *)v3 )
        return result;
    }
    v4 = *(_DWORD *)(v2 + 4);
    if ( v2 == *(_DWORD *)(v4 + 12) )
    {
      do
      {
        v2 = v4;
        v4 = *(_DWORD *)(v4 + 4);
      }
      while ( *(_DWORD *)(v4 + 12) == v2 );
      v3 = *(_DWORD *)(v2 + 12);
    }
    if ( v4 != v3 )
      v2 = v4;
  }
  return result;
}


// ===== 5136ec PropertyMap::LoadDefaultProperties(void) =====
void __fastcall PropertyMap::LoadDefaultProperties(PropertyMap *this)
{
  std::string *v1; // r9
  _DWORD *PropertyMap; // r10
  _DWORD *v4; // r7
  int v5; // r3
  _DWORD *v6; // r2
  int v7; // r3
  std::string v8; // [sp+4h] [bp-1Ch] BYREF

  v1 = (std::string *)((char *)this + 4);
  PropertyMap = (_DWORD *)PropertyMap::GetPropertyMap(this);
  std::string::string(&v8, v1);
  v4 = (_DWORD *)PropertyMap[2];
  while ( PropertyMap != v4 )
  {
    while ( 1 )
    {
      v5 = v4[10];
      if ( v5 && this )
        (*(void (__fastcall **)(_DWORD, PropertyMap *))(*(_DWORD *)v5 + 12))(v4[10], this);
      v6 = (_DWORD *)v4[3];
      if ( !v6 )
        break;
      while ( v6[2] )
        v6 = (_DWORD *)v6[2];
      v4 = v6;
      if ( PropertyMap == v6 )
        goto LABEL_11;
    }
    v7 = v4[1];
    if ( v4 == *(_DWORD **)(v7 + 12) )
    {
      do
      {
        v4 = (_DWORD *)v7;
        v7 = *(_DWORD *)(v7 + 4);
      }
      while ( *(_DWORD **)(v7 + 12) == v4 );
      v6 = (_DWORD *)v4[3];
    }
    if ( v6 != (_DWORD *)v7 )
      v4 = (_DWORD *)v7;
  }
LABEL_11:
  if ( v1 != &v8 )
    std::string::_M_assign(v1, v8._M_start_of_storage._M_data, v8._M_finish);
  std::string::~string(&v8);
}


// ===== 513808 PropertyMap::GetProp(char const*) =====
int __fastcall PropertyMap::GetProp(PropertyMap *this, char *a2)
{
  char *PropertyMap; // r0
  char *v4; // [sp+4h] [bp-4h] BYREF

  v4 = a2;
  PropertyMap = PropertyMap::GetPropertyMap(this);
  return *(_DWORD *)std::map<std::string,Property *>::operator[]<char const*>(PropertyMap, &v4);
}


// ===== 513830 PropertyMap::SetTemplateParameter(char const*,char const*) =====
int __fastcall PropertyMap::SetTemplateParameter(PropertyMap *this, char *a2, const char *a3)
{
  int result; // r0

  result = PropertyMap::GetProp(this, a2);
  if ( result )
    return (*(int (__fastcall **)(int, const char *))(*(_DWORD *)result + 16))(result, a3);
  return result;
}


// ===== 513858 PropertyMap::GetProperty(char const*) =====
PropertyMap *__fastcall PropertyMap::GetProperty(PropertyMap *this, PropertyMap *a2, char *a3)
{
  *(_DWORD *)this = PropertyMap::GetProp(a2, a3);
  *((_DWORD *)this + 1) = a2;
  return this;
}


// ===== 51387c PropertyMap::SetProperty(char const*,char const*) =====
PropertyMap *__fastcall PropertyMap::SetProperty(PropertyMap *this, char *a2, const char *a3)
{
  PropertyMap *result; // r0
  int v5; // [sp+0h] [bp-8h] BYREF
  int v6; // [sp+4h] [bp-4h]

  result = PropertyMap::GetProperty((PropertyMap *)&v5, this, a2);
  if ( a3 )
  {
    if ( v6 )
    {
      if ( v5 )
        return (PropertyMap *)(*(int (__fastcall **)(int, int, const char *))(*(_DWORD *)v5 + 4))(v5, v6, a3);
    }
  }
  else if ( v6 && v5 )
  {
    return (PropertyMap *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 12))(v5, v6);
  }
  return result;
}


// ===== 5138fc PropertyMap::CloneProperties(PropertyMap&) =====
void __fastcall PropertyMap::CloneProperties(PropertyMap *this, PropertyMap *a2)
{
  char *PropertyMap; // r0
  int v5; // r4
  char *v6; // r7
  char *v7; // r6
  int v8; // r2
  int v9; // r3
  std::string v10; // [sp+4h] [bp-20h] BYREF

  PropertyMap = PropertyMap::GetPropertyMap(a2);
  v5 = *((_DWORD *)PropertyMap + 2);
  v6 = PropertyMap;
  while ( v6 != (char *)v5 )
  {
    while ( 1 )
    {
      v7 = *(char **)(v5 + 36);
      (***(void (__fastcall ****)(std::string *, _DWORD, PropertyMap *))(v5 + 40))(&v10, *(_DWORD *)(v5 + 40), a2);
      PropertyMap::SetProperty(this, v7, v10._M_start_of_storage._M_data);
      std::string::~string(&v10);
      v8 = *(_DWORD *)(v5 + 12);
      if ( !v8 )
        break;
      while ( *(_DWORD *)(v8 + 8) )
        v8 = *(_DWORD *)(v8 + 8);
      v5 = v8;
      if ( v6 == (char *)v8 )
        return;
    }
    v9 = *(_DWORD *)(v5 + 4);
    if ( v5 == *(_DWORD *)(v9 + 12) )
    {
      do
      {
        v5 = v9;
        v9 = *(_DWORD *)(v9 + 4);
      }
      while ( *(_DWORD *)(v9 + 12) == v5 );
      v8 = *(_DWORD *)(v5 + 12);
    }
    if ( v8 != v9 )
      v5 = v9;
  }
}


// ===== 513a00 PropertyMap::LoadOverridesFromXML(TiXmlElement *) =====
PropertyMap *__fastcall PropertyMap::LoadOverridesFromXML(PropertyMap *this, TiXmlElement *a2)
{
  PropertyMap *v3; // r6
  PropertyMap *v4; // r4
  PropertyMap *v5; // r5
  char *v6; // r8
  const char *v7; // r0
  PropertyMap *v8; // r2
  int v9; // r3

  v3 = this;
  if ( a2 )
  {
    this = (PropertyMap *)PropertyMap::GetPropertyMap(this);
    v4 = *((PropertyMap **)this + 2);
    v5 = this;
    while ( v5 != v4 )
    {
      while ( 1 )
      {
        v6 = *((char **)v4 + 9);
        v7 = (const char *)TiXmlElement::Attribute(a2, v6);
        this = PropertyMap::SetProperty(v3, v6, v7);
        v8 = *((PropertyMap **)v4 + 3);
        if ( !v8 )
          break;
        while ( *((_DWORD *)v8 + 2) )
          v8 = *((PropertyMap **)v8 + 2);
        v4 = v8;
        if ( v5 == v8 )
          return this;
      }
      v9 = *((_DWORD *)v4 + 1);
      if ( v4 == *(PropertyMap **)(v9 + 12) )
      {
        do
        {
          v4 = (PropertyMap *)v9;
          v9 = *(_DWORD *)(v9 + 4);
        }
        while ( *(PropertyMap **)(v9 + 12) == v4 );
        v8 = *((PropertyMap **)v4 + 3);
      }
      if ( v8 != (PropertyMap *)v9 )
        v4 = (PropertyMap *)v9;
    }
  }
  return this;
}


// ===== 513aa8 std::map<std::string,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,Property *,std::less<std::string>,std::allocator<std::pair<std::string const,Property *>>>>>>::operator[]<char [1]>(char [1] const&) [clone] =====
char *__fastcall std::map<std::string,std::map<std::string,Property *>>::operator[]<char [1]>(char *a1)
{
  char *v1; // r6
  char *v3; // r4
  const void *v4; // r3
  int v5; // r8
  int v6; // r9
  size_t v7; // r2
  int v8; // r3
  const void *v9; // r1
  int v10; // r7
  int v11; // r8
  size_t v12; // r2
  int v13; // r0
  char *v14; // r9
  char *v16; // r4
  int v17; // [sp+4h] [bp-B8h]
  char v18[4]; // [sp+10h] [bp-ACh] BYREF
  int v19; // [sp+14h] [bp-A8h]
  char *v20; // [sp+18h] [bp-A4h]
  char *v21; // [sp+1Ch] [bp-A0h]
  int v22; // [sp+20h] [bp-9Ch]
  char *v23; // [sp+28h] [bp-94h] BYREF
  char *v24; // [sp+2Ch] [bp-90h] BYREF
  std::string v25; // [sp+3Ch] [bp-80h] BYREF
  int v26; // [sp+54h] [bp-68h] BYREF
  std::string v27; // [sp+6Ch] [bp-50h] BYREF
  std::string v28; // [sp+84h] [bp-38h] BYREF
  std::string v29; // [sp+9Ch] [bp-20h] BYREF

  v1 = *((char **)a1 + 1);
  if ( v1 )
  {
    v3 = a1;
    do
    {
      std::string::string(&v27, "");
      v4 = *((const void **)v1 + 9);
      v5 = *((_DWORD *)v1 + 8) - (_DWORD)v4;
      v6 = v27._M_finish - v27._M_start_of_storage._M_data;
      if ( v27._M_finish - v27._M_start_of_storage._M_data >= v5 )
        v7 = *((_DWORD *)v1 + 8) - (_DWORD)v4;
      else
        v7 = v27._M_finish - v27._M_start_of_storage._M_data;
      v8 = memcmp(v4, v27._M_start_of_storage._M_data, v7);
      if ( !v8 )
      {
        if ( v5 >= v6 )
          v8 = v5 > v6;
        else
          v8 = -1;
      }
      v17 = v8;
      std::string::~string(&v27);
      if ( v17 < 0 )
        v1 = *((char **)v1 + 3);
      else
        v3 = v1;
      if ( v17 >= 0 )
        v1 = *((char **)v1 + 2);
    }
    while ( v1 );
  }
  else
  {
    v3 = a1;
  }
  if ( a1 != v3 )
  {
    std::string::string(&v28, "");
    v9 = *((const void **)v3 + 9);
    v10 = *((_DWORD *)v3 + 8) - (_DWORD)v9;
    v11 = v28._M_finish - v28._M_start_of_storage._M_data;
    if ( v10 >= v28._M_finish - v28._M_start_of_storage._M_data )
      v12 = v28._M_finish - v28._M_start_of_storage._M_data;
    else
      v12 = *((_DWORD *)v3 + 8) - (_DWORD)v9;
    v13 = memcmp(v28._M_start_of_storage._M_data, v9, v12);
    v14 = v3;
    if ( v13 )
    {
      if ( v13 >= 0 )
        goto LABEL_23;
    }
    else if ( v11 >= v10 )
    {
LABEL_23:
      std::string::~string(&v28);
      return v14 + 40;
    }
    std::string::~string(&v28);
  }
  std::string::string(&v29, "");
  v18[0] = 0;
  v19 = 0;
  v20 = v18;
  v21 = v18;
  v22 = 0;
  std::string::string(&v25, &v29);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_Rb_tree(
    (int)&v26,
    (int)v18);
  v24 = v3;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,Property *>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,Property *>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,Property *>>>,std::allocator<std::pair<std::string const,std::map<std::string,Property *>>>>::insert_unique(
    &v23,
    a1,
    &v24,
    &v25);
  v16 = v23;
  std::pair<std::string const,std::map<std::string,Property *>>::~pair(&v25);
  if ( v22 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_erase(
      (int)v18,
      v19);
    v21 = v18;
    v22 = 0;
    v20 = v18;
    v19 = 0;
    v14 = v16;
    std::string::~string(&v29);
  }
  else
  {
    std::string::~string(&v29);
    v14 = v16;
  }
  return v14 + 40;
}


// ===== 513ce4 PropertyMap::AddProperty(char const*,Property *) =====
_DWORD *__fastcall PropertyMap::AddProperty(PropertyMap *this, const char *a2, Property *a3)
{
  int v4; // r0
  int v5; // r6
  int v6; // r0
  char *v7; // r8
  _DWORD *result; // r0
  _DWORD v9[2]; // [sp+4h] [bp-Ch] BYREF
  int ThisClassName; // [sp+Ch] [bp-4h] BYREF

  v9[0] = a2;
  ThisClassName = PropertyMap::GetThisClassName(this);
  v4 = std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::operator[]<char const*>(&ThisClassName);
  v5 = std::map<std::string,std::map<std::string,Property *>>::operator[]<char [1]>(v4);
  v6 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Property *>,std::priv::_Select1st<std::pair<std::string const,Property *>>,std::priv::_MapTraitsT<std::pair<std::string const,Property *>>,std::allocator<std::pair<std::string const,Property *>>>::_M_find<char const*>(
         v5,
         v9);
  if ( v6 != v5 )
  {
    v7 = *(char **)(v6 + 40);
    if ( v7 )
    {
      *(_DWORD *)v7 = &off_95C5E8;
      std::string::~string((std::string *)(v7 + 8));
      CustomFree(v7);
    }
  }
  result = (_DWORD *)std::map<std::string,Property *>::operator[]<char const*>(v5, v9);
  *result = a3;
  return result;
}


// ===== 513d78 PropertyMap::InitProperties(void) =====
void __fastcall PropertyMap::InitProperties(PropertyMap *this)
{
  char *ThisClassName; // r10
  int v2; // r8
  int v3; // r4
  const void *v4; // r3
  int v5; // r6
  int v6; // r5
  size_t v7; // r2
  int v8; // r3
  int v9; // r3
  const void *v10; // r1
  int v11; // r6
  int v12; // r7
  size_t v13; // r2
  int v14; // r3
  bool v15; // nf
  int v16; // r5
  int v17; // [sp+0h] [bp-84h]
  std::string v19; // [sp+1Ch] [bp-68h] BYREF
  std::string v20; // [sp+34h] [bp-50h] BYREF
  std::string v21; // [sp+4Ch] [bp-38h] BYREF
  std::string v22; // [sp+64h] [bp-20h] BYREF

  ThisClassName = (char *)PropertyMap::GetThisClassName(this);
  v2 = (int)&PropertyMap::s_classMap;
  v3 = dword_9F625C;
  if ( dword_9F625C )
  {
    while ( 1 )
    {
      std::string::string((int)&v21, ThisClassName);
      v4 = *(const void **)(v3 + 36);
      v5 = *(_DWORD *)(v3 + 32) - (_DWORD)v4;
      v6 = v21._M_finish - v21._M_start_of_storage._M_data;
      if ( v21._M_finish - v21._M_start_of_storage._M_data >= v5 )
        v7 = *(_DWORD *)(v3 + 32) - (_DWORD)v4;
      else
        v7 = v21._M_finish - v21._M_start_of_storage._M_data;
      v8 = memcmp(v4, v21._M_start_of_storage._M_data, v7);
      if ( !v8 )
      {
        if ( v5 >= v6 )
          v8 = v5 > v6;
        else
          v8 = -1;
      }
      v17 = v8;
      std::string::~string(&v21);
      if ( v17 >= 0 )
        v9 = *(_DWORD *)(v3 + 8);
      else
        v9 = *(_DWORD *)(v3 + 12);
      if ( v17 < 0 )
        v3 = v2;
      if ( !v9 )
        break;
      v2 = v3;
      v3 = v9;
    }
    v2 = v3;
    if ( (char *)v3 != &PropertyMap::s_classMap )
    {
      std::string::string((int)&v20, ThisClassName);
      v10 = *(const void **)(v3 + 36);
      v11 = *(_DWORD *)(v3 + 32) - (_DWORD)v10;
      v12 = v20._M_finish - v20._M_start_of_storage._M_data;
      if ( v11 >= v20._M_finish - v20._M_start_of_storage._M_data )
        v13 = v20._M_finish - v20._M_start_of_storage._M_data;
      else
        v13 = *(_DWORD *)(v3 + 32) - (_DWORD)v10;
      v2 = memcmp(v20._M_start_of_storage._M_data, v10, v13);
      if ( !v2 )
      {
        if ( v12 >= v11 )
          v2 = v12 > v11;
        else
          v2 = -1;
      }
      std::string::~string(&v20);
      v15 = v2 < 0;
      if ( v2 >= 0 )
        v2 = v3;
      else
        v14 = 2714;
      if ( v15 )
        v2 = (int)(&__GLOBAL_OFFSET_TABLE_)[v14];
    }
  }
  if ( (char *)v2 == &PropertyMap::s_classMap )
  {
    v22._M_finish = (char *)&v22;
    v22._M_start_of_storage._M_data = (char *)&v22;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v22, 0x10u);
    *v22._M_finish = 0;
    std::string::string(&v19, &v22);
    v16 = operator new(56, 0);
    *(_DWORD *)v16 = &off_95C5E8;
    std::string::string(v16 + 8, "template");
    *(_DWORD *)(v16 + 4) = 4;
    *(_DWORD *)v16 = &off_95C5C8;
    std::string::string((std::string *)(v16 + 32), &v19);
    PropertyMap::AddProperty(this, "template", (Property *)v16);
    std::string::~string(&v19);
    std::string::~string(&v22);
    (**(void (__fastcall ***)(PropertyMap *))this)(this);
  }
}


// ===== 513fec PropertyMap::SetTemplate(std::string const&) =====
int __fastcall PropertyMap::SetTemplate(int this, const std::string *a2)
{
  char *M_finish; // r2
  PropertyMap *v3; // r4
  std::string *v4; // r0
  int v5; // r0
  int v6; // r5
  int PropertyMap; // r6
  int v8; // r7
  int v9; // r8
  _DWORD *v10; // r10
  int v11; // r2
  int v12; // r3
  int ThisClassName; // [sp+Ch] [bp-8h] BYREF

  M_finish = a2->_M_finish;
  v3 = (PropertyMap *)this;
  if ( a2->_M_start_of_storage._M_data != M_finish )
  {
    v4 = (std::string *)(this + 4);
    if ( a2 != v4 )
      std::string::_M_assign(v4, a2->_M_start_of_storage._M_data, M_finish);
    if ( !*(_DWORD *)(PropertyMap::GetPropertyMap(v3) + 16) )
    {
      ThisClassName = PropertyMap::GetThisClassName(v3);
      v5 = std::map<std::string,std::map<std::string,std::map<std::string,Property *>>>::operator[]<char const*>(&ThisClassName);
      v6 = std::map<std::string,std::map<std::string,Property *>>::operator[]<char [1]>(v5);
      PropertyMap = PropertyMap::GetPropertyMap(v3);
      if ( *(_DWORD *)(PropertyMap + 16) )
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
            "newTemplate.size() == 0",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMap.cpp",
            112);
        }
      }
      v8 = *(_DWORD *)(v6 + 8);
      while ( v6 != v8 )
      {
        v9 = *(_DWORD *)(v8 + 40);
        v10 = (_DWORD *)std::map<std::string,Property *>::operator[]<std::string>(PropertyMap, (std::string *)(v8 + 16));
        *v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 20))(v9);
        v11 = *(_DWORD *)(v8 + 12);
        if ( v11 )
        {
          while ( *(_DWORD *)(v11 + 8) )
            v11 = *(_DWORD *)(v11 + 8);
          v8 = v11;
        }
        else
        {
          v12 = *(_DWORD *)(v8 + 4);
          if ( v8 == *(_DWORD *)(v12 + 12) )
          {
            do
            {
              v8 = v12;
              v12 = *(_DWORD *)(v12 + 4);
            }
            while ( *(_DWORD *)(v12 + 12) == v8 );
            v11 = *(_DWORD *)(v8 + 12);
          }
          if ( v11 != v12 )
            v8 = v12;
        }
      }
    }
    return PropertyMap::LoadTemplate(v3);
  }
  return this;
}


// ===== 51417c `global constructor keyed to'.._.._sources_Data_PropertyMap_PropertyMapTemplates.cpp =====
void `global constructor keyed to'.._.._sources_Data_PropertyMap_PropertyMapTemplates.cpp()
{
  dword_9F6278 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6274 = 1056964608;
}


// ===== 51419c PropertyMap::LoadTemplate(void) =====
int __fastcall PropertyMap::LoadTemplate(PropertyMap *this)
{
  int result; // r0

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "false",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMapTemplates.cpp",
             9);
  }
  return result;
}


// ===== 514224 TiXmlBase::~TiXmlBase() =====
void __fastcall TiXmlBase::~TiXmlBase(TiXmlBase *this)
{
  ;
}


// ===== 514228 TiXmlNode::ToDocument(void) =====
int __fastcall TiXmlNode::ToDocument(TiXmlNode *this)
{
  return 0;
}


// ===== 514230 TiXmlNode::ToElement(void) =====
int __fastcall TiXmlNode::ToElement(TiXmlNode *this)
{
  return 0;
}


// ===== 514238 TiXmlNode::ToComment(void) =====
int __fastcall TiXmlNode::ToComment(TiXmlNode *this)
{
  return 0;
}


// ===== 514240 TiXmlNode::ToUnknown(void) =====
int __fastcall TiXmlNode::ToUnknown(TiXmlNode *this)
{
  return 0;
}


// ===== 514248 TiXmlNode::ToText(void) =====
int __fastcall TiXmlNode::ToText(TiXmlNode *this)
{
  return 0;
}


// ===== 514250 TiXmlNode::ToDeclaration(void) =====
int __fastcall TiXmlNode::ToDeclaration(TiXmlNode *this)
{
  return 0;
}


// ===== 514258 TiXmlNode::ToDocument(void) =====
int __fastcall TiXmlNode::ToDocument(TiXmlNode *this)
{
  return 0;
}


// ===== 514260 TiXmlNode::ToElement(void) =====
int __fastcall TiXmlNode::ToElement(TiXmlNode *this)
{
  return 0;
}


// ===== 514268 TiXmlNode::ToComment(void) =====
int __fastcall TiXmlNode::ToComment(TiXmlNode *this)
{
  return 0;
}


// ===== 514270 TiXmlNode::ToUnknown(void) =====
int __fastcall TiXmlNode::ToUnknown(TiXmlNode *this)
{
  return 0;
}


// ===== 514278 TiXmlNode::ToText(void) =====
int __fastcall TiXmlNode::ToText(TiXmlNode *this)
{
  return 0;
}


// ===== 514280 TiXmlNode::ToDeclaration(void) =====
int __fastcall TiXmlNode::ToDeclaration(TiXmlNode *this)
{
  return 0;
}


// ===== 514288 TiXmlElement::ToElement(void) =====
void __fastcall TiXmlElement::ToElement(TiXmlElement *this)
{
  ;
}


// ===== 51428c TiXmlElement::ToElement(void) =====
void __fastcall TiXmlElement::ToElement(TiXmlElement *this)
{
  ;
}


// ===== 514290 TiXmlComment::ToComment(void) =====
void __fastcall TiXmlComment::ToComment(TiXmlComment *this)
{
  ;
}


// ===== 514294 TiXmlComment::ToComment(void) =====
void __fastcall TiXmlComment::ToComment(TiXmlComment *this)
{
  ;
}


// ===== 514298 TiXmlText::ToText(void) =====
void __fastcall TiXmlText::ToText(TiXmlText *this)
{
  ;
}


// ===== 51429c TiXmlText::ToText(void) =====
void __fastcall TiXmlText::ToText(TiXmlText *this)
{
  ;
}


// ===== 5142a0 TiXmlDeclaration::Print(__sFILE *,int) =====
int __fastcall TiXmlDeclaration::Print(TiXmlDeclaration *this, __sFILE *a2, int a3)
{
  return (*(int (__fastcall **)(TiXmlDeclaration *, __sFILE *, int, _DWORD))(*(_DWORD *)this + 76))(this, a2, a3, 0);
}


// ===== 5142b8 TiXmlDeclaration::ToDeclaration(void) =====
void __fastcall TiXmlDeclaration::ToDeclaration(TiXmlDeclaration *this)
{
  ;
}


// ===== 5142bc TiXmlDeclaration::ToDeclaration(void) =====
void __fastcall TiXmlDeclaration::ToDeclaration(TiXmlDeclaration *this)
{
  ;
}


// ===== 5142c0 TiXmlUnknown::ToUnknown(void) =====
void __fastcall TiXmlUnknown::ToUnknown(TiXmlUnknown *this)
{
  ;
}


// ===== 5142c4 TiXmlUnknown::ToUnknown(void) =====
void __fastcall TiXmlUnknown::ToUnknown(TiXmlUnknown *this)
{
  ;
}


// ===== 5142c8 TiXmlNode::Clear(void) =====
int __fastcall TiXmlNode::Clear(int this)
{
  _DWORD *v1; // r3
  int v2; // r5
  _DWORD *v3; // r4

  v1 = *(_DWORD **)(this + 24);
  v2 = this;
  if ( v1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)v1[15];
      this = (*(int (__fastcall **)(_DWORD *))(*v1 + 4))(v1);
      if ( !v3 )
        break;
      v1 = v3;
    }
  }
  *(_DWORD *)(v2 + 28) = 0;
  *(_DWORD *)(v2 + 24) = 0;
  return this;
}


// ===== 514310 TiXmlNode::ReplaceChild(TiXmlNode*,TiXmlNode const&) =====
int __fastcall TiXmlNode::ReplaceChild(TiXmlNode *this, TiXmlNode **a2, const TiXmlNode *a3)
{
  int v4; // r5
  int v6; // r0
  TiXmlNode *v7; // r3
  TiXmlNode *v8; // r3

  if ( a2[4] != this )
    return 0;
  v6 = (*(int (__fastcall **)(const TiXmlNode *))(*(_DWORD *)a3 + 64))(a3);
  v4 = v6;
  if ( v6 )
  {
    *(_DWORD *)(v6 + 60) = a2[15];
    *(_DWORD *)(v6 + 56) = a2[14];
    v7 = a2[15];
    if ( v7 )
      *((_DWORD *)v7 + 14) = v6;
    else
      *((_DWORD *)this + 7) = v6;
    v8 = a2[14];
    if ( v8 )
      *((_DWORD *)v8 + 15) = v6;
    else
      *((_DWORD *)this + 6) = v6;
    (*((void (__fastcall **)(TiXmlNode **))*a2 + 1))(a2);
    *(_DWORD *)(v4 + 16) = this;
  }
  return v4;
}


// ===== 5143a0 TiXmlNode::RemoveChild(TiXmlNode*) =====
int __fastcall TiXmlNode::RemoveChild(TiXmlNode *this, TiXmlNode **a2, TiXmlNode *a3)
{
  TiXmlNode *v4; // r3
  bool v5; // zf
  TiXmlNode *v6; // r3
  bool v7; // zf

  if ( a2[4] != this )
    return 0;
  v4 = a2[15];
  v5 = v4 == nullptr;
  if ( v4 )
    a3 = a2[14];
  else
    v4 = a2[14];
  if ( v5 )
    *((_DWORD *)this + 7) = v4;
  else
    *((_DWORD *)v4 + 14) = a3;
  v6 = a2[14];
  v7 = v6 == nullptr;
  if ( v6 )
    a3 = a2[15];
  else
    v6 = a2[15];
  if ( v7 )
    *((_DWORD *)this + 6) = v6;
  else
    *((_DWORD *)v6 + 15) = a3;
  (*((void (__fastcall **)(TiXmlNode **))*a2 + 1))(a2);
  return 1;
}


// ===== 514400 TiXmlNode::IterateChildren(TiXmlNode const*) =====
int __fastcall TiXmlNode::IterateChildren(TiXmlNode *this, const TiXmlNode *a2)
{
  if ( a2 )
    return *((_DWORD *)a2 + 15);
  else
    return *((_DWORD *)this + 6);
}


// ===== 514410 TiXmlNode::FirstChildElement(void) =====
int __fastcall TiXmlNode::FirstChildElement(TiXmlNode *this)
{
  _DWORD *v1; // r4

  v1 = *((_DWORD **)this + 6);
  if ( !v1 )
    return 0;
  while ( !(*(int (__fastcall **)(_DWORD *))(*v1 + 20))(v1) )
  {
    v1 = (_DWORD *)v1[15];
    if ( !v1 )
      return 0;
  }
  return (*(int (__fastcall **)(_DWORD *))(*v1 + 20))(v1);
}


// ===== 514464 TiXmlNode::NextSiblingElement(void) =====
int __fastcall TiXmlNode::NextSiblingElement(TiXmlNode *this)
{
  _DWORD *v1; // r4

  v1 = *((_DWORD **)this + 15);
  if ( !v1 )
    return 0;
  while ( !(*(int (__fastcall **)(_DWORD *))(*v1 + 20))(v1) )
  {
    v1 = (_DWORD *)v1[15];
    if ( !v1 )
      return 0;
  }
  return (*(int (__fastcall **)(_DWORD *))(*v1 + 20))(v1);
}


// ===== 5144b8 TiXmlNode::GetDocument(void) =====
int __fastcall TiXmlNode::GetDocument(TiXmlNode *this)
{
  TiXmlNode *v1; // r4

  v1 = this;
  if ( !this )
    return 0;
  while ( !(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v1 + 16))(v1) )
  {
    v1 = *((TiXmlNode **)v1 + 4);
    if ( !v1 )
      return 0;
  }
  return (*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v1 + 16))(v1);
}


// ===== 514508 TiXmlElement::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlElement::Accept(TiXmlElement *this, TiXmlVisitor *a2)
{
  TiXmlElement *v2; // r2
  _DWORD *i; // r6

  v2 = *((TiXmlElement **)this + 34);
  if ( v2 == (TiXmlElement *)((char *)this + 64) )
    v2 = nullptr;
  if ( (*(int (__fastcall **)(TiXmlVisitor *, TiXmlElement *, TiXmlElement *))(*(_DWORD *)a2 + 16))(a2, this, v2) )
  {
    for ( i = *((_DWORD **)this + 6); i; i = (_DWORD *)i[15] )
    {
      if ( !(*(int (__fastcall **)(_DWORD *, TiXmlVisitor *))(*i + 68))(i, a2) )
        break;
    }
  }
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlElement *))(*(_DWORD *)a2 + 20))(a2, this);
}


// ===== 514590 TiXmlElement::GetText(void) =====
int __fastcall TiXmlElement::GetText(TiXmlElement *this)
{
  int v1; // r3
  int v3; // r0

  v1 = *((_DWORD *)this + 6);
  if ( v1 && (v3 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 32))(*((_DWORD *)this + 6))) != 0 )
    return *(_DWORD *)(v3 + 52);
  else
    return 0;
}


// ===== 5145c8 TiXmlDocument::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlDocument::Accept(TiXmlDocument *this, TiXmlVisitor *a2)
{
  _DWORD *i; // r4

  if ( (*(int (__fastcall **)(TiXmlVisitor *, TiXmlDocument *))(*(_DWORD *)a2 + 8))(a2, this) )
  {
    for ( i = *((_DWORD **)this + 6); i; i = (_DWORD *)i[15] )
    {
      if ( !(*(int (__fastcall **)(_DWORD *, TiXmlVisitor *))(*i + 68))(i, a2) )
        break;
    }
  }
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlDocument *))(*(_DWORD *)a2 + 12))(a2, this);
}


// ===== 514640 TiXmlAttribute::Next(void) =====
_DWORD *__fastcall TiXmlAttribute::Next(TiXmlAttribute *this)
{
  _DWORD *result; // r0

  result = *((_DWORD **)this + 18);
  if ( result[16] == result[15] && result[10] == result[9] )
    return nullptr;
  return result;
}


// ===== 514668 TiXmlAttribute::Previous(void) =====
_DWORD *__fastcall TiXmlAttribute::Previous(TiXmlAttribute *this)
{
  _DWORD *result; // r0

  result = *((_DWORD **)this + 17);
  if ( result[16] == result[15] && result[10] == result[9] )
    return nullptr;
  return result;
}


// ===== 514690 TiXmlComment::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlComment::Accept(TiXmlComment *this, TiXmlVisitor *a2)
{
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlComment *))(*(_DWORD *)a2 + 32))(a2, this);
}


// ===== 5146b0 TiXmlText::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlText::Accept(TiXmlText *this, TiXmlVisitor *a2)
{
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlText *))(*(_DWORD *)a2 + 28))(a2, this);
}


// ===== 5146d0 TiXmlDeclaration::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlDeclaration::Accept(TiXmlDeclaration *this, TiXmlVisitor *a2)
{
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlDeclaration *))(*(_DWORD *)a2 + 24))(a2, this);
}


// ===== 5146f0 TiXmlUnknown::Accept(TiXmlVisitor *) =====
int __fastcall TiXmlUnknown::Accept(TiXmlUnknown *this, TiXmlVisitor *a2)
{
  return (*(int (__fastcall **)(TiXmlVisitor *, TiXmlUnknown *))(*(_DWORD *)a2 + 36))(a2, this);
}


// ===== 514710 TiXmlAttributeSet::Add(TiXmlAttribute *) =====
int __fastcall TiXmlAttributeSet::Add(int this, TiXmlAttribute *a2)
{
  *((_DWORD *)a2 + 18) = this;
  *((_DWORD *)a2 + 17) = *(_DWORD *)(this + 68);
  *(_DWORD *)(*(_DWORD *)(this + 68) + 72) = a2;
  *(_DWORD *)(this + 68) = a2;
  return this;
}


// ===== 51472c TiXmlAttributeSet::Remove(TiXmlAttribute *) =====
TiXmlAttribute *__fastcall TiXmlAttributeSet::Remove(TiXmlAttribute *this, TiXmlAttribute *a2)
{
  TiXmlAttribute *v2; // r3

  v2 = *((TiXmlAttribute **)this + 18);
  if ( v2 != this )
  {
    if ( v2 == a2 )
    {
LABEL_7:
      *(_DWORD *)(*((_DWORD *)a2 + 17) + 72) = *((_DWORD *)a2 + 18);
      this = *((TiXmlAttribute **)a2 + 17);
      *(_DWORD *)(*((_DWORD *)a2 + 18) + 68) = this;
      *((_DWORD *)a2 + 17) = 0;
      *((_DWORD *)a2 + 18) = 0;
    }
    else
    {
      while ( 1 )
      {
        v2 = *((TiXmlAttribute **)v2 + 18);
        if ( v2 == this )
          break;
        if ( a2 == v2 )
          goto LABEL_7;
      }
    }
  }
  return this;
}


// ===== 514784 TiXmlElement::ClearThis(void) =====
TiXmlAttribute *__fastcall TiXmlElement::ClearThis(TiXmlElement *this)
{
  TiXmlAttribute *v2; // r5
  TiXmlAttribute *v3; // r4
  TiXmlAttribute *result; // r0

  v2 = (TiXmlElement *)((char *)this + 64);
  TiXmlNode::Clear((int)this);
  while ( 1 )
  {
    v3 = *((TiXmlAttribute **)this + 34);
    result = v2;
    if ( v3 == v2 || !v3 )
      break;
    TiXmlAttributeSet::Remove(v2, *((TiXmlAttribute **)this + 34));
    (*(void (__fastcall **)(TiXmlAttribute *))(*(_DWORD *)v3 + 4))(v3);
  }
  return result;
}


// ===== 5147cc TiXmlHandle::FirstChild(void) =====
_DWORD *__fastcall TiXmlHandle::FirstChild(_DWORD *this, int a2)
{
  int v2; // r3

  if ( *(_DWORD *)a2 && (v2 = *(_DWORD *)(*(_DWORD *)a2 + 24)) != 0 )
    *this = v2;
  else
    *this = 0;
  return this;
}


// ===== 5147f4 TiXmlHandle::FirstChildElement(void) =====
TiXmlHandle *__fastcall TiXmlHandle::FirstChildElement(TiXmlHandle *this, TiXmlNode **a2)
{
  int ChildElement; // r0

  if ( *a2 && (ChildElement = TiXmlNode::FirstChildElement(*a2)) != 0 )
  {
    *(_DWORD *)this = ChildElement;
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 514834 TiXmlHandle::Child(int) =====
_DWORD *__fastcall TiXmlHandle::Child(_DWORD *this, int a2, int a3)
{
  int v3; // r3
  bool v4; // cc
  int v5; // r1
  bool v6; // cc

  if ( !*(_DWORD *)a2 )
    goto LABEL_12;
  v3 = *(_DWORD *)(*(_DWORD *)a2 + 24);
  v4 = v3 <= 0;
  if ( v3 )
    v4 = a3 <= 0;
  if ( !v4 )
  {
    v5 = 0;
    do
    {
      v3 = *(_DWORD *)(v3 + 60);
      ++v5;
      v6 = v3 <= 0;
      if ( v3 )
        v6 = a3 <= v5;
    }
    while ( !v6 );
  }
  if ( v3 )
    *this = v3;
  else
LABEL_12:
    *this = 0;
  return this;
}


// ===== 514880 TiXmlHandle::ChildElement(int) =====
TiXmlHandle *__fastcall TiXmlHandle::ChildElement(TiXmlHandle *this, TiXmlNode **a2, int a3)
{
  TiXmlNode *ChildElement; // r0
  bool v6; // cc
  int v7; // r5
  bool v8; // cc

  if ( !*a2 )
    goto LABEL_12;
  ChildElement = (TiXmlNode *)TiXmlNode::FirstChildElement(*a2);
  v6 = (int)ChildElement <= 0;
  if ( ChildElement )
    v6 = a3 <= 0;
  if ( !v6 )
  {
    v7 = 0;
    do
    {
      ChildElement = (TiXmlNode *)TiXmlNode::NextSiblingElement(ChildElement);
      ++v7;
      v8 = (int)ChildElement <= 0;
      if ( ChildElement )
        v8 = a3 <= v7;
    }
    while ( !v8 );
  }
  if ( ChildElement )
  {
    *(_DWORD *)this = ChildElement;
    return this;
  }
  else
  {
LABEL_12:
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 5148e8 TiXmlPrinter::VisitEnter(TiXmlDocument const&) =====
int __fastcall TiXmlPrinter::VisitEnter(TiXmlPrinter *this, const TiXmlDocument *a2)
{
  return 1;
}


// ===== 5148f0 TiXmlPrinter::VisitExit(TiXmlDocument const&) =====
int __fastcall TiXmlPrinter::VisitExit(TiXmlPrinter *this, const TiXmlDocument *a2)
{
  return 1;
}


// ===== 5148f8 `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxml.cpp =====
void `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxml.cpp()
{
  dword_9F6284 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6280 = 1056964608;
}


// ===== 514918 TiXmlBase::~TiXmlBase() =====
void __fastcall TiXmlBase::~TiXmlBase(TiXmlBase *this)
{
  *(_DWORD *)this = off_96C3A8;
  CustomFree(this);
}


// ===== 51494c TiXmlPrinter::~TiXmlPrinter() =====
void __fastcall TiXmlPrinter::~TiXmlPrinter(TiXmlPrinter *this)
{
  *(_DWORD *)this = off_96C3F0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 60));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 36));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 12));
}


// ===== 514990 TiXmlPrinter::~TiXmlPrinter() =====
void __fastcall TiXmlPrinter::~TiXmlPrinter(TiXmlPrinter *this)
{
  TiXmlPrinter::~TiXmlPrinter(this);
  CustomFree(this);
}


// ===== 5149ac TiXmlPrinterDH::~TiXmlPrinterDH() =====
void __fastcall TiXmlPrinterDH::~TiXmlPrinterDH(TiXmlPrinterDH *this)
{
  *(_DWORD *)this = off_96C3C0;
  TiXmlPrinter::~TiXmlPrinter(this);
}


// ===== 5149e0 TiXmlAttributeSet::~TiXmlAttributeSet() =====
void __fastcall TiXmlAttributeSet::~TiXmlAttributeSet(TiXmlAttributeSet *this)
{
  *(_DWORD *)this = off_96C688;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 44));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
  *(_DWORD *)this = off_96C3A8;
}


// ===== 514a30 TiXmlNode::~TiXmlNode() =====
void __fastcall TiXmlNode::~TiXmlNode(TiXmlNode *this)
{
  _DWORD *v1; // r3
  _DWORD *v3; // r4

  v1 = *((_DWORD **)this + 6);
  *(_DWORD *)this = off_96C5D8;
  if ( v1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)v1[15];
      (*(void (__fastcall **)(_DWORD *))(*v1 + 4))(v1);
      if ( !v3 )
        break;
      v1 = v3;
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 32));
}


// ===== 514a98 TiXmlNode::~TiXmlNode() =====
void __fastcall TiXmlNode::~TiXmlNode(TiXmlNode *this)
{
  TiXmlNode::~TiXmlNode(this);
  CustomFree(this);
}


// ===== 514ab4 TiXmlNode::~TiXmlNode() =====
void __fastcall TiXmlNode::~TiXmlNode(TiXmlNode *this)
{
  _DWORD *v1; // r3
  _DWORD *v3; // r4

  v1 = *((_DWORD **)this + 6);
  *(_DWORD *)this = off_96C5D8;
  if ( v1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)v1[15];
      (*(void (__fastcall **)(_DWORD *))(*v1 + 4))(v1);
      if ( !v3 )
        break;
      v1 = v3;
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 32));
}


// ===== 514b1c TiXmlComment::~TiXmlComment() =====
void __fastcall TiXmlComment::~TiXmlComment(TiXmlComment *this)
{
  *(_DWORD *)this = off_96C528;
  TiXmlNode::~TiXmlNode(this);
}


// ===== 514b50 TiXmlText::~TiXmlText() =====
void __fastcall TiXmlText::~TiXmlText(TiXmlText *this)
{
  *(_DWORD *)this = off_96C4D0;
  TiXmlNode::~TiXmlNode(this);
}


// ===== 514b84 TiXmlUnknown::~TiXmlUnknown() =====
void __fastcall TiXmlUnknown::~TiXmlUnknown(TiXmlUnknown *this)
{
  *(_DWORD *)this = off_96C420;
  TiXmlNode::~TiXmlNode(this);
}


// ===== 514bb8 TiXmlDeclaration::~TiXmlDeclaration() =====
void __fastcall TiXmlDeclaration::~TiXmlDeclaration(TiXmlDeclaration *this)
{
  *(_DWORD *)this = off_96C478;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 112));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 88));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 64));
  TiXmlNode::~TiXmlNode(this);
}


// ===== 514c04 TiXmlDeclaration::~TiXmlDeclaration() =====
void __fastcall TiXmlDeclaration::~TiXmlDeclaration(TiXmlDeclaration *this)
{
  TiXmlDeclaration::~TiXmlDeclaration(this);
  CustomFree(this);
}


// ===== 514c20 TiXmlAttributeSet::Find(char const*) =====
int __fastcall TiXmlAttributeSet::Find(TiXmlAttributeSet *this, const char *a2)
{
  int v2; // r4

  v2 = *((_DWORD *)this + 18);
  if ( (TiXmlAttributeSet *)v2 == this )
    return 0;
  while ( LC_API_STRCMP_0(*(const char **)(v2 + 40), a2) )
  {
    v2 = *(_DWORD *)(v2 + 72);
    if ( (TiXmlAttributeSet *)v2 == this )
      return 0;
  }
  return v2;
}


// ===== 514c70 TiXmlElement::Attribute(char const*) =====
int __fastcall TiXmlElement::Attribute(TiXmlElement *this, const char *a2)
{
  int result; // r0

  result = TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( result )
    return *(_DWORD *)(result + 64);
  return result;
}


// ===== 514c88 TiXmlNode::PreviousSibling(char const*) =====
int __fastcall TiXmlNode::PreviousSibling(TiXmlNode *this, const char *a2)
{
  int i; // r4

  for ( i = *((_DWORD *)this + 14); i; i = *(_DWORD *)(i + 56) )
  {
    if ( !LC_API_STRCMP_0(*(const char **)(i + 52), a2) )
      break;
  }
  return i;
}


// ===== 514cc8 TiXmlNode::NextSibling(char const*) =====
int __fastcall TiXmlNode::NextSibling(TiXmlNode *this, const char *a2)
{
  int i; // r4

  for ( i = *((_DWORD *)this + 15); i; i = *(_DWORD *)(i + 60) )
  {
    if ( !LC_API_STRCMP_0(*(const char **)(i + 52), a2) )
      break;
  }
  return i;
}


// ===== 514d08 TiXmlNode::NextSiblingElement(char const*) =====
int __fastcall TiXmlNode::NextSiblingElement(TiXmlNode *this, const char *a2)
{
  const char *v2; // r5
  bool v3; // zf
  int Sibling; // r0
  TiXmlNode *v5; // r4

  v2 = a2;
  while ( 1 )
  {
    Sibling = TiXmlNode::NextSibling(this, a2);
    v5 = (TiXmlNode *)Sibling;
    if ( !Sibling )
      break;
    v3 = (*(int (__fastcall **)(int))(*(_DWORD *)Sibling + 20))(Sibling) == 0;
    a2 = v2;
    this = v5;
    if ( !v3 )
      return (*(int (__fastcall **)(TiXmlNode *, const char *))(*(_DWORD *)v5 + 20))(v5, v2);
  }
  return 0;
}


// ===== 514d58 TiXmlNode::LastChild(char const*) =====
int __fastcall TiXmlNode::LastChild(TiXmlNode *this, const char *a2)
{
  int i; // r4

  for ( i = *((_DWORD *)this + 7); i; i = *(_DWORD *)(i + 56) )
  {
    if ( !LC_API_STRCMP_0(*(const char **)(i + 52), a2) )
      break;
  }
  return i;
}


// ===== 514d98 TiXmlNode::FirstChild(char const*) =====
int __fastcall TiXmlNode::FirstChild(TiXmlNode *this, const char *a2)
{
  int i; // r4

  for ( i = *((_DWORD *)this + 6); i; i = *(_DWORD *)(i + 60) )
  {
    if ( !LC_API_STRCMP_0(*(const char **)(i + 52), a2) )
      break;
  }
  return i;
}


// ===== 514dd8 TiXmlHandle::Child(char const*,int) =====
TiXmlHandle *__fastcall TiXmlHandle::Child(TiXmlHandle *this, const char *a2, char *a3, int a4)
{
  TiXmlNode *v4; // r1
  TiXmlNode *Child; // r0
  bool v9; // cc
  int v10; // r6
  bool v11; // cc

  v4 = *(TiXmlNode **)a2;
  if ( !v4 )
    goto LABEL_12;
  Child = (TiXmlNode *)TiXmlNode::FirstChild(v4, a3);
  v9 = (int)Child <= 0;
  if ( Child )
    v9 = a4 <= 0;
  if ( !v9 )
  {
    v10 = 0;
    do
    {
      Child = (TiXmlNode *)TiXmlNode::NextSibling(Child, a3);
      ++v10;
      v11 = (int)Child <= 0;
      if ( Child )
        v11 = a4 <= v10;
    }
    while ( !v11 );
  }
  if ( Child )
  {
    *(_DWORD *)this = Child;
    return this;
  }
  else
  {
LABEL_12:
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 514e4c TiXmlHandle::FirstChild(char const*) =====
TiXmlHandle *__fastcall TiXmlHandle::FirstChild(TiXmlHandle *this, const char *a2, const char *a3)
{
  int Child; // r0

  if ( *(_DWORD *)a2 && (Child = TiXmlNode::FirstChild(*(TiXmlNode **)a2, a3)) != 0 )
  {
    *(_DWORD *)this = Child;
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 514e90 TiXmlNode::FirstChildElement(char const*) =====
int __fastcall TiXmlNode::FirstChildElement(TiXmlNode *this, const char *a2)
{
  TiXmlNode *Child; // r4

  Child = (TiXmlNode *)TiXmlNode::FirstChild(this, a2);
  if ( !Child )
    return 0;
  while ( !(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)Child + 20))(Child) )
  {
    Child = (TiXmlNode *)TiXmlNode::NextSibling(Child, a2);
    if ( !Child )
      return 0;
  }
  return (*(int (__fastcall **)(TiXmlNode *, const char *))(*(_DWORD *)Child + 20))(Child, a2);
}


// ===== 514eec TiXmlHandle::ChildElement(char const*,int) =====
TiXmlHandle *__fastcall TiXmlHandle::ChildElement(TiXmlHandle *this, const char *a2, char *a3, int a4)
{
  TiXmlNode *v4; // r1
  TiXmlNode *ChildElement; // r0
  bool v9; // cc
  int v10; // r6
  bool v11; // cc

  v4 = *(TiXmlNode **)a2;
  if ( !v4 )
    goto LABEL_12;
  ChildElement = (TiXmlNode *)TiXmlNode::FirstChildElement(v4, a3);
  v9 = (int)ChildElement <= 0;
  if ( ChildElement )
    v9 = a4 <= 0;
  if ( !v9 )
  {
    v10 = 0;
    do
    {
      ChildElement = (TiXmlNode *)TiXmlNode::NextSiblingElement(ChildElement, a3);
      ++v10;
      v11 = (int)ChildElement <= 0;
      if ( ChildElement )
        v11 = a4 <= v10;
    }
    while ( !v11 );
  }
  if ( ChildElement )
  {
    *(_DWORD *)this = ChildElement;
    return this;
  }
  else
  {
LABEL_12:
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 514f60 TiXmlHandle::FirstChildElement(char const*) =====
TiXmlHandle *__fastcall TiXmlHandle::FirstChildElement(TiXmlHandle *this, const char *a2, const char *a3)
{
  int ChildElement; // r0

  if ( *(_DWORD *)a2 && (ChildElement = TiXmlNode::FirstChildElement(*(TiXmlNode **)a2, a3)) != 0 )
  {
    *(_DWORD *)this = ChildElement;
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 514fa4 TiXmlNode::IterateChildren(char const*,TiXmlNode const*) =====
int __fastcall TiXmlNode::IterateChildren(TiXmlNode *this, const char *a2, const TiXmlNode *a3)
{
  if ( a3 )
    return TiXmlNode::NextSibling(a3, a2);
  else
    return TiXmlNode::FirstChild(this, a2);
}


// ===== 514fb8 TiXmlAttributeSet::Find(std::string const&) =====
TiXmlAttributeSet *__fastcall TiXmlAttributeSet::Find(TiXmlAttributeSet *this, const std::string *a2)
{
  TiXmlAttributeSet *v2; // r4
  char *M_data; // r7
  char *v5; // r5
  const void *v6; // r0

  v2 = *((TiXmlAttributeSet **)this + 18);
  if ( v2 == this )
    return nullptr;
  M_data = a2->_M_start_of_storage._M_data;
  v5 = (char *)(a2->_M_finish - M_data);
  while ( 1 )
  {
    v6 = *((const void **)v2 + 10);
    if ( (char *)(*((_DWORD *)v2 + 9) - (_DWORD)v6) == v5 && !memcmp(v6, M_data, (size_t)v5) )
      break;
    v2 = *((TiXmlAttributeSet **)v2 + 18);
    if ( v2 == this )
      return nullptr;
  }
  return v2;
}


// ===== 515020 TiXmlElement::RemoveAttribute(char const*) =====
void __fastcall TiXmlElement::RemoveAttribute(TiXmlElement *this, char *a2)
{
  TiXmlAttributeSet *v2; // r7
  TiXmlAttribute *v3; // r8
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-1Ch] BYREF

  v2 = (TiXmlElement *)((char *)this + 64);
  std::string::string((std::string *)&v4, a2);
  v3 = TiXmlAttributeSet::Find(v2, (const std::string *)&v4);
  if ( v3 )
  {
    TiXmlAttributeSet::Remove(v2, v3);
    (*(void (__fastcall **)(TiXmlAttribute *))(*(_DWORD *)v3 + 4))(v3);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
}


// ===== 5150b4 TiXmlElement::Attribute(std::string const&) =====
TiXmlAttributeSet *__fastcall TiXmlElement::Attribute(TiXmlElement *this, const std::string *a2)
{
  TiXmlAttributeSet *result; // r0

  result = TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( result )
    return (TiXmlAttributeSet *)((char *)result + 44);
  return result;
}


// ===== 5150cc TiXmlDocument::Print(__sFILE *,int) =====
int __fastcall TiXmlDocument::Print(int this, __sFILE *a2, int a3)
{
  _DWORD *i; // r4

  for ( i = *(_DWORD **)(this + 24); i; i = (_DWORD *)i[15] )
  {
    (*(void (__fastcall **)(_DWORD *, __sFILE *, int))(*i + 8))(i, a2, a3);
    this = fputc(10, a2);
  }
  return this;
}


// ===== 515118 TiXmlUnknown::Print(__sFILE *,int) =====
int __fastcall TiXmlUnknown::Print(const char **this, __sFILE *stream, int a3)
{
  int i; // r4

  if ( a3 > 0 )
  {
    for ( i = 0; i != a3; ++i )
      fputc(9, stream);
  }
  return fprintf(stream, "<%s>", *(this + 13));
}


// ===== 515164 TiXmlComment::Print(__sFILE *,int) =====
int __fastcall TiXmlComment::Print(const char **this, __sFILE *stream, int a3)
{
  int i; // r4

  if ( a3 > 0 )
  {
    for ( i = 0; i != a3; ++i )
      fputc(9, stream);
  }
  return fprintf(stream, "<!--%s-->", *(this + 13));
}


// ===== 5151b0 TiXmlElement::Print(__sFILE *,int) =====
size_t __fastcall TiXmlElement::Print(const char **this, __sFILE *stream, int a3)
{
  int i; // r6
  TiXmlAttribute *v7; // r6
  int v8; // r8
  const char *v9; // r3
  _DWORD *j; // r6
  int v11; // r6

  if ( a3 > 0 )
  {
    for ( i = 0; i != a3; ++i )
      fputc(9, stream);
  }
  fprintf(stream, "<%s", *(this + 13));
  v7 = (TiXmlAttribute *)*(this + 34);
  if ( v7 != (TiXmlAttribute *)(this + 16) && v7 )
  {
    do
    {
      fputc(10, stream);
      if ( a3 >= 0 )
      {
        v8 = 0;
        do
        {
          ++v8;
          fputc(9, stream);
        }
        while ( a3 >= v8 );
      }
      (*(void (__fastcall **)(TiXmlAttribute *, __sFILE *, int))(*(_DWORD *)v7 + 8))(v7, stream, a3);
      v7 = (TiXmlAttribute *)TiXmlAttribute::Next(v7);
    }
    while ( v7 );
  }
  v9 = *(this + 6);
  if ( !v9 )
    return fwrite(" />", 1u, 3u, stream);
  if ( v9 == *(this + 7) && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 56))(*(this + 6)) )
  {
    fputc(62, stream);
    (*(void (__fastcall **)(_DWORD, __sFILE *, int))(*(_DWORD *)*(this + 6) + 8))(*(this + 6), stream, a3 + 1);
    return fprintf(stream, "</%s>", *(this + 13));
  }
  else
  {
    fputc(62, stream);
    for ( j = *(this + 6); j; j = (_DWORD *)j[15] )
    {
      if ( !(*(int (__fastcall **)(_DWORD *))(*j + 56))(j) )
        fputc(10, stream);
      (*(void (__fastcall **)(_DWORD *, __sFILE *, int))(*j + 8))(j, stream, a3 + 1);
    }
    fputc(10, stream);
    if ( a3 > 0 )
    {
      v11 = 0;
      do
      {
        ++v11;
        fputc(9, stream);
      }
      while ( v11 != a3 );
    }
    return fprintf(stream, "</%s>", *(this + 13));
  }
}


// ===== 5153b0 TiXmlAttribute::DoubleValue(void) =====
double __fastcall TiXmlAttribute::DoubleValue(TiXmlAttribute *this)
{
  return strtod((const char *)*((_DWORD *)this + 16), nullptr);
}


// ===== 5153bc TiXmlElement::Attribute(std::string const&,double *) =====
TiXmlAttributeSet *__fastcall TiXmlElement::Attribute(TiXmlElement *this, const std::string *a2, double *a3)
{
  TiXmlAttributeSet *result; // r0
  TiXmlAttributeSet *v5; // r4

  result = TiXmlElement::Attribute(this, a2);
  v5 = result;
  if ( !a3 )
    return v5;
  if ( result )
  {
    *a3 = strtod((const char *)*((_DWORD *)result + 5), nullptr);
    return v5;
  }
  *a3 = 0.0;
  return result;
}


// ===== 515408 TiXmlElement::Attribute(char const*,double *) =====
const char *__fastcall TiXmlElement::Attribute(TiXmlElement *this, const char *a2, double *a3)
{
  const char *result; // r0
  const char *v5; // r4

  result = (const char *)TiXmlElement::Attribute(this, a2);
  v5 = result;
  if ( !a3 )
    return v5;
  if ( result )
  {
    *a3 = strtod(result, nullptr);
    return v5;
  }
  *a3 = 0.0;
  return result;
}


// ===== 515450 TiXmlAttribute::IntValue(void) =====
int __fastcall TiXmlAttribute::IntValue(const char **this)
{
  return LC_API_ATOI_0(*(this + 16));
}


// ===== 515458 TiXmlElement::Attribute(std::string const&,int *) =====
TiXmlAttributeSet *__fastcall TiXmlElement::Attribute(TiXmlElement *this, const std::string *a2, int *a3)
{
  TiXmlAttributeSet *v4; // r0
  TiXmlAttributeSet *v5; // r5

  v4 = TiXmlElement::Attribute(this, a2);
  v5 = v4;
  if ( a3 )
  {
    if ( v4 )
      *a3 = LC_API_ATOI_0(*((const char **)v4 + 5));
    else
      *a3 = 0;
  }
  return v5;
}


// ===== 515490 TiXmlElement::Attribute(char const*,int *) =====
const char *__fastcall TiXmlElement::Attribute(TiXmlElement *this, const char *a2, int *a3)
{
  const char *v4; // r0
  const char *v5; // r5

  v4 = (const char *)TiXmlElement::Attribute(this, a2);
  v5 = v4;
  if ( a3 )
  {
    if ( v4 )
      *a3 = LC_API_ATOI_0(v4);
    else
      *a3 = 0;
  }
  return v5;
}


// ===== 5154c4 TiXmlBase::EncodeString(std::string const&,std::string *) =====
int __fastcall TiXmlBase::EncodeString(TiXmlBase *this, std::string *a2, std::string *a3)
{
  int v3; // r2
  int v5; // r1
  int v7; // r4
  int result; // r0
  unsigned __int8 v9; // r12
  size_t v10; // r0
  char s[32]; // [sp+4h] [bp-28h] BYREF

  v3 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  v7 = 0;
LABEL_2:
  while ( 1 )
  {
    result = v3 - v5;
    if ( v7 >= v3 - v5 )
      return result;
    while ( 1 )
    {
      v9 = *(_BYTE *)(v5 + v7);
      if ( v9 == 38 )
        break;
      switch ( v9 )
      {
        case '<':
          ++v7;
          std::string::_M_append(a2, off_99B0CC, (char *)off_99B0D0 + (_DWORD)off_99B0CC);
          v3 = *((_DWORD *)this + 4);
          v5 = *((_DWORD *)this + 5);
          goto LABEL_2;
        case '>':
          ++v7;
          std::string::_M_append(a2, off_99B0D8, (char *)off_99B0DC + (_DWORD)off_99B0D8);
          v3 = *((_DWORD *)this + 4);
          v5 = *((_DWORD *)this + 5);
          goto LABEL_2;
        case '"':
          ++v7;
          std::string::_M_append(a2, off_99B0E4, (char *)off_99B0E8 + (_DWORD)off_99B0E4);
          v3 = *((_DWORD *)this + 4);
          v5 = *((_DWORD *)this + 5);
          goto LABEL_2;
        case '\'':
          ++v7;
          std::string::_M_append(a2, off_99B0F0, (char *)off_99B0F4 + (_DWORD)off_99B0F0);
          v3 = *((_DWORD *)this + 4);
          v5 = *((_DWORD *)this + 5);
          goto LABEL_2;
      }
      if ( v9 > 0x1Fu )
      {
        std::string::push_back(a2, (_BYTE *)(char)v9);
        ++v7;
        v3 = *((_DWORD *)this + 4);
        v5 = *((_DWORD *)this + 5);
        goto LABEL_2;
      }
      snprintf(s, 0x20u, "&#x%02X;", v9);
      v10 = LC_API_STRLEN_0(s);
      std::string::_M_append(a2, s, &s[v10]);
      v3 = *((_DWORD *)this + 4);
      v5 = *((_DWORD *)this + 5);
      ++v7;
      result = v3 - v5;
      if ( v7 >= v3 - v5 )
        return result;
    }
    if ( v7 >= result - 2 )
    {
      ++v7;
LABEL_14:
      std::string::_M_append(a2, TiXmlBase::entity, &TiXmlBase::entity[unk_99B0C4]);
      v3 = *((_DWORD *)this + 4);
      v5 = *((_DWORD *)this + 5);
      continue;
    }
    if ( *(_BYTE *)(v5 + v7 + 1) != 35 || *(_BYTE *)(v5 + v7 + 2) != 120 )
    {
      ++v7;
      goto LABEL_14;
    }
    while ( v7 < v3 - 1 - v5 )
    {
      std::string::_M_append(a2, (char *)(v5 + v7), (char *)(v5 + v7 + 1));
      v5 = *((_DWORD *)this + 5);
      ++v7;
      if ( *(_BYTE *)(v5 + v7) == 59 )
      {
        v3 = *((_DWORD *)this + 4);
        goto LABEL_2;
      }
      v3 = *((_DWORD *)this + 4);
    }
  }
}


// ===== 515714 TiXmlAttribute::QueryDoubleValue(double *) =====
int __fastcall TiXmlAttribute::QueryDoubleValue(const char **this, double *a2)
{
  if ( sscanf(*(this + 16), "%lf", a2) == 1 )
    return 0;
  else
    return 2;
}


// ===== 515740 TiXmlElement::QueryDoubleAttribute(std::string const&,double *) =====
int __fastcall TiXmlElement::QueryDoubleAttribute(TiXmlElement *this, const std::string *a2, double *a3)
{
  const char **v4; // r0

  v4 = (const char **)TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( v4 )
    return TiXmlAttribute::QueryDoubleValue(v4, a3);
  else
    return 1;
}


// ===== 51576c TiXmlElement::QueryDoubleAttribute(char const*,double *) =====
int __fastcall TiXmlElement::QueryDoubleAttribute(TiXmlElement *this, const char *a2, double *a3)
{
  const char **v4; // r0

  v4 = (const char **)TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( v4 )
    return TiXmlAttribute::QueryDoubleValue(v4, a3);
  else
    return 1;
}


// ===== 515798 TiXmlAttribute::QueryIntValue(int *) =====
int __fastcall TiXmlAttribute::QueryIntValue(const char **this, int *a2)
{
  if ( sscanf(*(this + 16), "%d", a2) == 1 )
    return 0;
  else
    return 2;
}


// ===== 5157c4 TiXmlElement::QueryIntAttribute(std::string const&,int *) =====
int __fastcall TiXmlElement::QueryIntAttribute(TiXmlElement *this, const std::string *a2, int *a3)
{
  const char **v4; // r0

  v4 = (const char **)TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( v4 )
    return TiXmlAttribute::QueryIntValue(v4, a3);
  else
    return 1;
}


// ===== 5157f0 TiXmlElement::QueryIntAttribute(char const*,int *) =====
int __fastcall TiXmlElement::QueryIntAttribute(TiXmlElement *this, const char *a2, int *a3)
{
  const char **v4; // r0

  v4 = (const char **)TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  if ( v4 )
    return TiXmlAttribute::QueryIntValue(v4, a3);
  else
    return 1;
}


// ===== 51581c TiXmlNode::InsertAfterChild(TiXmlNode*,TiXmlNode const&) =====
_DWORD *__fastcall TiXmlNode::InsertAfterChild(TiXmlNode *this, TiXmlNode *a2, const TiXmlNode *a3)
{
  _DWORD *result; // r0
  TiXmlNode *v5; // r6
  int Document; // r0
  int v7; // r3

  if ( !a2 )
    return nullptr;
  v5 = *((TiXmlNode **)a2 + 4);
  if ( v5 != this )
    return nullptr;
  if ( !*((_DWORD *)a3 + 5) )
  {
    if ( TiXmlNode::GetDocument(this) )
    {
      Document = TiXmlNode::GetDocument(v5);
      TiXmlDocument::SetError(Document, 16, 0, 0, 0);
      return nullptr;
    }
    return nullptr;
  }
  result = (_DWORD *)(*(int (__fastcall **)(const TiXmlNode *))(*(_DWORD *)a3 + 64))(a3);
  if ( result )
  {
    result[4] = v5;
    result[14] = a2;
    result[15] = *((_DWORD *)a2 + 15);
    v7 = *((_DWORD *)a2 + 15);
    if ( v7 )
      *(_DWORD *)(v7 + 56) = result;
    else
      *((_DWORD *)v5 + 7) = result;
    *((_DWORD *)a2 + 15) = result;
  }
  return result;
}


// ===== 5158c0 TiXmlNode::InsertBeforeChild(TiXmlNode*,TiXmlNode const&) =====
_DWORD *__fastcall TiXmlNode::InsertBeforeChild(TiXmlNode *this, TiXmlNode *a2, const TiXmlNode *a3)
{
  _DWORD *result; // r0
  TiXmlNode *v5; // r6
  int Document; // r0
  int v7; // r3

  if ( !a2 )
    return nullptr;
  v5 = *((TiXmlNode **)a2 + 4);
  if ( v5 != this )
    return nullptr;
  if ( !*((_DWORD *)a3 + 5) )
  {
    if ( TiXmlNode::GetDocument(this) )
    {
      Document = TiXmlNode::GetDocument(v5);
      TiXmlDocument::SetError(Document, 16, 0, 0, 0);
      return nullptr;
    }
    return nullptr;
  }
  result = (_DWORD *)(*(int (__fastcall **)(const TiXmlNode *))(*(_DWORD *)a3 + 64))(a3);
  if ( result )
  {
    result[4] = v5;
    result[15] = a2;
    result[14] = *((_DWORD *)a2 + 14);
    v7 = *((_DWORD *)a2 + 14);
    if ( v7 )
      *(_DWORD *)(v7 + 60) = result;
    else
      *((_DWORD *)v5 + 6) = result;
    *((_DWORD *)a2 + 14) = result;
  }
  return result;
}


// ===== 515964 TiXmlNode::LinkEndChild(TiXmlNode*) =====
TiXmlNode *__fastcall TiXmlNode::LinkEndChild(TiXmlNode *this, TiXmlNode *Document)
{
  int v3; // r3
  int v4; // r3
  int v6; // r0

  if ( *((_DWORD *)Document + 5) )
  {
    *((_DWORD *)Document + 4) = this;
    v3 = *((_DWORD *)this + 7);
    *((_DWORD *)Document + 15) = 0;
    *((_DWORD *)Document + 14) = v3;
    v4 = *((_DWORD *)this + 7);
    if ( v4 )
      *(_DWORD *)(v4 + 60) = Document;
    else
      *((_DWORD *)this + 6) = Document;
    *((_DWORD *)this + 7) = Document;
  }
  else
  {
    (*(void (__fastcall **)(TiXmlNode *))(*(_DWORD *)Document + 4))(Document);
    Document = (TiXmlNode *)TiXmlNode::GetDocument(this);
    if ( Document )
    {
      v6 = TiXmlNode::GetDocument(this);
      TiXmlDocument::SetError(v6, 16, 0, 0, 0);
      return nullptr;
    }
  }
  return Document;
}


// ===== 5159f4 TiXmlNode::InsertEndChild(TiXmlNode const&) =====
TiXmlNode *__fastcall TiXmlNode::InsertEndChild(TiXmlNode *this, const TiXmlNode *a2)
{
  TiXmlNode *v4; // r1
  int Document; // r0

  if ( !*((_DWORD *)a2 + 5) )
  {
    if ( TiXmlNode::GetDocument(this) )
    {
      Document = TiXmlNode::GetDocument(this);
      TiXmlDocument::SetError(Document, 16, 0, 0, 0);
    }
    return nullptr;
  }
  v4 = (TiXmlNode *)(*(int (__fastcall **)(const TiXmlNode *))(*(_DWORD *)a2 + 64))(a2);
  if ( !v4 )
    return nullptr;
  return TiXmlNode::LinkEndChild(this, v4);
}


// ===== 515a6c TiXmlPrinterDH::~TiXmlPrinterDH() =====
void __fastcall TiXmlPrinterDH::~TiXmlPrinterDH(TiXmlPrinterDH *this)
{
  *(_DWORD *)this = off_96C3C0;
  TiXmlPrinter::~TiXmlPrinter(this);
  CustomFree(this);
}


// ===== 515aa8 TiXmlComment::~TiXmlComment() =====
void __fastcall TiXmlComment::~TiXmlComment(TiXmlComment *this)
{
  *(_DWORD *)this = off_96C528;
  TiXmlNode::~TiXmlNode(this);
  CustomFree(this);
}


// ===== 515ae4 TiXmlText::~TiXmlText() =====
void __fastcall TiXmlText::~TiXmlText(TiXmlText *this)
{
  *(_DWORD *)this = off_96C4D0;
  TiXmlNode::~TiXmlNode(this);
  CustomFree(this);
}


// ===== 515b20 TiXmlUnknown::~TiXmlUnknown() =====
void __fastcall TiXmlUnknown::~TiXmlUnknown(TiXmlUnknown *this)
{
  *(_DWORD *)this = off_96C420;
  TiXmlNode::~TiXmlNode(this);
  CustomFree(this);
}


// ===== 515b5c TiXmlPrinter::Visit(TiXmlDeclaration const&) =====
int __fastcall TiXmlPrinter::Visit(char **this, const TiXmlDeclaration *a2)
{
  std::string *v4; // r5
  int v5; // r7

  if ( (int)*(this + 1) > 0 )
  {
    v4 = (std::string *)(this + 3);
    v5 = 0;
    do
    {
      std::string::_M_append(v4, *(this + 14), *(this + 13));
      ++v5;
    }
    while ( v5 < (int)*(this + 1) );
  }
  else
  {
    v4 = (std::string *)(this + 3);
  }
  (*(void (__fastcall **)(const TiXmlDeclaration *, _DWORD, _DWORD, std::string *))(*(_DWORD *)a2 + 76))(a2, 0, 0, v4);
  std::string::_M_append(v4, *(this + 20), *(this + 19));
  return 1;
}


// ===== 515bd4 TiXmlAttributeSet::~TiXmlAttributeSet() =====
void __fastcall TiXmlAttributeSet::~TiXmlAttributeSet(TiXmlAttributeSet *this)
{
  *(_DWORD *)this = off_96C688;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 44));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
  *(_DWORD *)this = off_96C3A8;
}


// ===== 515c24 TiXmlElement::~TiXmlElement() =====
void __fastcall TiXmlElement::~TiXmlElement(TiXmlElement *this)
{
  TiXmlAttributeSet *v2; // r5

  *(_DWORD *)this = off_96C580;
  v2 = (TiXmlElement *)((char *)this + 64);
  TiXmlElement::ClearThis(this);
  TiXmlAttributeSet::~TiXmlAttributeSet(v2);
  TiXmlNode::~TiXmlNode(this);
}


// ===== 515c6c TiXmlElement::~TiXmlElement() =====
void __fastcall TiXmlElement::~TiXmlElement(TiXmlElement *this)
{
  TiXmlElement::~TiXmlElement(this);
  CustomFree(this);
}


// ===== 515c88 TiXmlElement::~TiXmlElement() =====
void __fastcall TiXmlElement::~TiXmlElement(TiXmlElement *this)
{
  TiXmlAttributeSet *v2; // r5

  *(_DWORD *)this = off_96C580;
  v2 = (TiXmlElement *)((char *)this + 64);
  TiXmlElement::ClearThis(this);
  TiXmlAttributeSet::~TiXmlAttributeSet(v2);
  TiXmlNode::~TiXmlNode(this);
}


// ===== 515cd0 TiXmlAttribute::TiXmlAttribute(void) =====
void __fastcall TiXmlAttribute::TiXmlAttribute(TiXmlAttribute *this)
{
  _DWORD *v2; // r0

  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_96C688;
  v2 = (_DWORD *)((char *)this + 20);
  *((_DWORD *)this + 9) = v2;
  *((_DWORD *)this + 10) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 9) = 0;
  *((_DWORD *)this + 15) = (char *)this + 44;
  *((_DWORD *)this + 16) = (char *)this + 44;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 11, 0x10u);
  **((_BYTE **)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 18) = 0;
}


// ===== 515d60 TiXmlAttributeSet::TiXmlAttributeSet(void) =====
void __fastcall TiXmlAttributeSet::TiXmlAttributeSet(TiXmlAttributeSet *this)
{
  TiXmlAttribute::TiXmlAttribute(this);
  *((_DWORD *)this + 18) = this;
  *((_DWORD *)this + 17) = this;
}


// ===== 515d7c TiXmlAttributeSet::TiXmlAttributeSet(void) =====
void __fastcall TiXmlAttributeSet::TiXmlAttributeSet(TiXmlAttributeSet *this)
{
  TiXmlAttribute::TiXmlAttribute(this);
  *((_DWORD *)this + 18) = this;
  *((_DWORD *)this + 17) = this;
}


// ===== 515d98 TiXmlNode::TiXmlNode(TiXmlNode::NodeType) =====
_DWORD *__fastcall TiXmlNode::TiXmlNode(_DWORD *a1, int a2)
{
  _DWORD *v4; // r0

  a1[1] = -1;
  a1[2] = -1;
  a1[3] = 0;
  *a1 = off_96C5D8;
  v4 = a1 + 8;
  a1[12] = v4;
  a1[13] = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  *(_BYTE *)a1[12] = 0;
  a1[5] = a2;
  a1[15] = 0;
  a1[4] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[14] = 0;
  return a1;
}


// ===== 515e18 TiXmlNode::TiXmlNode(TiXmlNode::NodeType) =====
_DWORD *__fastcall TiXmlNode::TiXmlNode(_DWORD *a1, int a2)
{
  _DWORD *v4; // r0

  a1[1] = -1;
  a1[2] = -1;
  a1[3] = 0;
  *a1 = off_96C5D8;
  v4 = a1 + 8;
  a1[12] = v4;
  a1[13] = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  *(_BYTE *)a1[12] = 0;
  a1[5] = a2;
  a1[15] = 0;
  a1[4] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[14] = 0;
  return a1;
}


// ===== 515e98 TiXmlElement::TiXmlElement(std::string const&) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, const std::string *a2)
{
  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  if ( (const std::string *)((char *)this + 32) != a2 )
    std::string::_M_assign((std::string *const)((char *)this + 32), a2->_M_start_of_storage._M_data, a2->_M_finish);
}


// ===== 515f00 TiXmlElement::TiXmlElement(std::string const&) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, const std::string *a2)
{
  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  if ( (const std::string *)((char *)this + 32) != a2 )
    std::string::_M_assign((std::string *const)((char *)this + 32), a2->_M_start_of_storage._M_data, a2->_M_finish);
}


// ===== 515f68 TiXmlDeclaration::TiXmlDeclaration(void) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration *this)
{
  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
}


// ===== 516004 operator>>(std::istream &,TiXmlNode &) =====
int __fastcall operator>>(int a1, int a2)
{
  char *v4; // r2
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+4h] [bp-1Ch] BYREF

  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v6, 0x10u);
  *v6._M_finish = 0;
  std::string::reserve((std::string *)&v6, (char *)&elf_hash_bucket[1945], v4);
  (*(void (__fastcall **)(int, int, std::priv::_String_base<char,std::allocator<char> > *))(*(_DWORD *)a2 + 72))(
    a2,
    a1,
    &v6);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 12))(a2, v6._M_start_of_storage._M_data, 0, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  return a1;
}


// ===== 5160c0 TiXmlPrinter::TiXmlPrinter(void) =====
void __fastcall TiXmlPrinter::TiXmlPrinter(TiXmlPrinter *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_96C3F0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  *((_BYTE *)this + 8) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  std::string::string((std::string *)((char *)this + 36), "\t");
  std::string::string((std::string *)((char *)this + 60), "\n");
}


// ===== 516154 TiXmlDeclaration::TiXmlDeclaration(std::string const&,std::string const&,std::string const&) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(
        TiXmlDeclaration *this,
        const std::string *a2,
        const std::string *a3,
        const std::string *a4)
{
  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  if ( (const std::string *)((char *)this + 64) != a2 )
    std::string::_M_assign((std::string *const)((char *)this + 64), a2->_M_start_of_storage._M_data, a2->_M_finish);
  if ( (const std::string *)((char *)this + 88) != a3 )
    std::string::_M_assign((std::string *const)((char *)this + 88), a3->_M_start_of_storage._M_data, a3->_M_finish);
  if ( (const std::string *)((char *)this + 112) != a4 )
    std::string::_M_assign((std::string *const)((char *)this + 112), a4->_M_start_of_storage._M_data, a4->_M_finish);
}


// ===== 516244 TiXmlDeclaration::TiXmlDeclaration(std::string const&,std::string const&,std::string const&) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(
        TiXmlDeclaration *this,
        const std::string *a2,
        const std::string *a3,
        const std::string *a4)
{
  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  if ( (const std::string *)((char *)this + 64) != a2 )
    std::string::_M_assign((std::string *const)((char *)this + 64), a2->_M_start_of_storage._M_data, a2->_M_finish);
  if ( (const std::string *)((char *)this + 88) != a3 )
    std::string::_M_assign((std::string *const)((char *)this + 88), a3->_M_start_of_storage._M_data, a3->_M_finish);
  if ( (const std::string *)((char *)this + 112) != a4 )
    std::string::_M_assign((std::string *const)((char *)this + 112), a4->_M_start_of_storage._M_data, a4->_M_finish);
}


// ===== 516334 TiXmlAttribute::TiXmlAttribute(std::string const&,std::string const&) =====
void __fastcall TiXmlAttribute::TiXmlAttribute(TiXmlAttribute *this, const std::string *a2, const std::string *a3)
{
  std::string *v4; // r5

  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_96C688;
  v4 = (std::string *)((char *)this + 20);
  *((_DWORD *)this + 9) = (char *)this + 20;
  *((_DWORD *)this + 10) = (char *)this + 20;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 5, 0x10u);
  **((_BYTE **)this + 9) = 0;
  *((_DWORD *)this + 15) = (char *)this + 44;
  *((_DWORD *)this + 16) = (char *)this + 44;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 11, 0x10u);
  **((_BYTE **)this + 15) = 0;
  if ( v4 != a2 )
    std::string::_M_assign(v4, a2->_M_start_of_storage._M_data, a2->_M_finish);
  if ( (const std::string *)((char *)this + 44) != a3 )
    std::string::_M_assign((std::string *const)((char *)this + 44), a3->_M_start_of_storage._M_data, a3->_M_finish);
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 18) = 0;
}


// ===== 516400 TiXmlElement::SetAttribute(std::string const&,std::string const&) =====
std::string *__fastcall TiXmlElement::SetAttribute(TiXmlElement *this, const std::string *a2, const std::string *a3)
{
  char *v3; // r6
  TiXmlAttributeSet *v7; // r0
  TiXmlAttributeSet *v8; // r1
  std::string *result; // r0
  TiXmlAttribute *v10; // r4

  v3 = (char *)this + 64;
  v7 = TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), a2);
  v8 = v7;
  if ( v7 )
  {
    result = (std::string *)((char *)v7 + 44);
    if ( a3 != (const std::string *)((char *)v8 + 44) )
      return std::string::_M_assign(result, a3->_M_start_of_storage._M_data, a3->_M_finish);
  }
  else
  {
    v10 = (TiXmlAttribute *)operator new(0x4Cu, 0);
    TiXmlAttribute::TiXmlAttribute(v10, a2, a3);
    if ( v10 )
    {
      return (std::string *)TiXmlAttributeSet::Add((int)v3, v10);
    }
    else
    {
      result = (std::string *)TiXmlNode::GetDocument(this);
      if ( result )
        return (std::string *)TiXmlDocument::SetError(result, 3, 0, 0, 0);
    }
  }
  return result;
}


// ===== 5164a8 TiXmlDocument::LoadFromBuffer(void const*,int,TiXmlEncoding) =====
int __fastcall TiXmlDocument::LoadFromBuffer(int a1, char *a2, char *a3, int a4)
{
  char *v8; // r7
  char *v9; // r8
  char *v10; // r1
  int v11; // r3
  int v12; // r3
  int v13; // r4
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+Ch] [bp-20h] BYREF

  TiXmlNode::Clear(a1);
  *(_DWORD *)(a1 + 4) = -1;
  *(_DWORD *)(a1 + 8) = -1;
  if ( (int)a3 <= 0 )
  {
    v13 = 0;
    TiXmlDocument::SetError(a1, 13, 0, 0, 0);
  }
  else
  {
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x10u);
    *v15._M_finish = 0;
    std::string::reserve((std::string *)&v15, a3, nullptr);
    v8 = a2;
    v9 = &a3[(_DWORD)a2];
    v10 = a2;
LABEL_3:
    while ( v8 < v9 )
    {
      while ( 1 )
      {
        v11 = *v8;
        if ( v11 == 10 )
          break;
        if ( v11 != 13 )
        {
          ++v8;
          goto LABEL_3;
        }
        if ( v8 - v10 > 0 )
          std::string::_M_append((std::string *)&v15, v10, v8);
        std::string::push_back((std::string *)&v15, &byte_9[1]);
        v12 = v8[1];
        v10 = v8 + 1;
        if ( v12 == 10 )
          v8 += 2;
        else
          ++v8;
        if ( v12 == 10 )
          v10 = v8;
        if ( v8 >= v9 )
          goto LABEL_15;
      }
      std::string::_M_append((std::string *)&v15, v10, ++v8);
      v10 = v8;
    }
LABEL_15:
    if ( v8 != v10 )
      std::string::_M_append((std::string *)&v15, v10, v8);
    (*(void (__fastcall **)(int, char *, _DWORD, int))(*(_DWORD *)a1 + 12))(a1, v15._M_start_of_storage._M_data, 0, a4);
    v13 = *(unsigned __int8 *)(a1 + 64) ^ 1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  }
  return v13;
}


// ===== 516634 TiXmlText::Print(__sFILE *,int) =====
void __fastcall TiXmlText::Print(const char **this, __sFILE *a2, int a3)
{
  int v6; // r7
  std::string *v7; // r2
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp-20h] BYREF

  if ( *((_BYTE *)this + 64) )
  {
    fputc(10, a2);
    if ( a3 > 0 )
    {
      v6 = 0;
      do
      {
        ++v6;
        fputc(9, a2);
      }
      while ( v6 != a3 );
    }
    fprintf(a2, "<![CDATA[%s]]>\n", *(this + 13));
  }
  else
  {
    v8._M_finish = (char *)&v8;
    v8._M_start_of_storage._M_data = (char *)&v8;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v8, 0x10u);
    *v8._M_finish = 0;
    TiXmlBase::EncodeString((TiXmlBase *)(this + 8), (std::string *)&v8, v7);
    fputs(v8._M_start_of_storage._M_data, a2);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  }
}


// ===== 51671c TiXmlElement::SetAttribute(std::string const&,int) =====
std::ios_base *__fastcall TiXmlElement::SetAttribute(TiXmlElement *this, const std::string *a2, int a3)
{
  int v4; // r3
  int v5; // r2
  int v6; // r3
  std::ostream v9; // [sp+Ch] [bp-B0h] BYREF
  char v10; // [sp+90h] [bp-2Ch]
  int v11; // [sp+94h] [bp-28h]
  int v12; // [sp+98h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+9Ch] [bp-20h] BYREF

  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)&v9.gap4[60]);
  v10 = 0;
  v11 = 0;
  v9._vptr.basic_ostream = (int (**)(...))off_95B88C;
  v12 = 0;
  *(_DWORD *)&v9.gap4[60] = off_95B8A0;
  std::ios::init((int)&v9.gap4[60], 0, (int)off_95B88C, v4);
  *(_DWORD *)&v9.gap4[60] = off_95B878;
  v9._vptr.basic_ostream = (int (**)(...))off_95B864;
  std::stringbuf::basic_stringbuf((std::locale *)v9.gap4, (std::_Locale_impl *)&word_10);
  std::ios::init((int)&v9.gap4[60], (int)v9.gap4, v5, v6);
  std::priv::__put_num<char,std::char_traits<char>,long>(&v9);
  v13._M_finish = (char *)&v13;
  v13._M_start_of_storage._M_data = (char *)&v13;
  std::string::_M_range_initialize((std::string *)&v13, *(const char **)&v9.gap4[56], *(const char **)&v9.gap4[52]);
  TiXmlElement::SetAttribute(this, a2, (const std::string *)&v13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  return std::ostringstream::~ostringstream((std::ios_base *)&v9);
}


// ===== 516854 TiXmlAttribute::SetDoubleValue(double) =====
std::string *__fastcall TiXmlAttribute::SetDoubleValue(TiXmlAttribute *this, double a2)
{
  size_t v4; // r0
  char s[256]; // [sp+Ch] [bp-104h] BYREF

  snprintf(s, 0x100u, "%lf", a2);
  v4 = LC_API_STRLEN_0(s);
  return std::string::_M_assign((std::string *const)((char *)this + 44), s, &s[v4]);
}


// ===== 5168d4 TiXmlAttribute::SetIntValue(int) =====
std::string *__fastcall TiXmlAttribute::SetIntValue(TiXmlAttribute *this, int a2)
{
  size_t v3; // r0
  char s[64]; // [sp+4h] [bp-44h] BYREF

  snprintf(s, 0x40u, "%d", a2);
  v3 = LC_API_STRLEN_0(s);
  return std::string::_M_assign((std::string *const)((char *)this + 44), s, &s[v3]);
}


// ===== 516954 TiXmlNode::CopyTo(TiXmlNode*) =====
std::string *__fastcall TiXmlNode::CopyTo(TiXmlNode *this, TiXmlNode *a2)
{
  const char *v2; // r6
  size_t v5; // r0
  std::string *result; // r0

  v2 = *((const char **)this + 13);
  v5 = LC_API_STRLEN_0(v2);
  result = std::string::_M_assign((std::string *const)((char *)a2 + 32), v2, &v2[v5]);
  *((_DWORD *)a2 + 3) = *((_DWORD *)this + 3);
  return result;
}


// ===== 516988 TiXmlUnknown::CopyTo(TiXmlUnknown*) =====
// attributes: thunk
std::string *__fastcall TiXmlUnknown::CopyTo(TiXmlNode *this, TiXmlNode *a2)
{
  return TiXmlNode::CopyTo(this, a2);
}


// ===== 51698c TiXmlUnknown::Clone(void) =====
TiXmlNode *__fastcall TiXmlUnknown::Clone(TiXmlUnknown *this)
{
  TiXmlNode *v2; // r5

  v2 = (TiXmlNode *)operator new(0x40u, 0);
  TiXmlNode::TiXmlNode(v2, 3);
  *(_DWORD *)v2 = off_96C420;
  TiXmlUnknown::CopyTo(this, v2);
  return v2;
}


// ===== 5169e0 TiXmlText::CopyTo(TiXmlText*) =====
std::string *__fastcall TiXmlText::CopyTo(TiXmlText *this, TiXmlText *a2)
{
  std::string *result; // r0

  result = TiXmlNode::CopyTo(this, a2);
  *((_BYTE *)a2 + 64) = *((_BYTE *)this + 64);
  return result;
}


// ===== 5169fc TiXmlComment::CopyTo(TiXmlComment*) =====
// attributes: thunk
std::string *__fastcall TiXmlComment::CopyTo(TiXmlNode *this, TiXmlNode *a2)
{
  return TiXmlNode::CopyTo(this, a2);
}


// ===== 516a00 TiXmlComment::operator=(TiXmlComment const&) =====
std::string *__fastcall TiXmlComment::operator=(TiXmlNode *a1, TiXmlNode *a2)
{
  TiXmlNode::Clear((int)a1);
  return TiXmlComment::CopyTo(a2, a1);
}


// ===== 516a20 TiXmlComment::TiXmlComment(TiXmlComment const&) =====
void __fastcall TiXmlComment::TiXmlComment(TiXmlComment *this, const TiXmlComment *a2)
{
  TiXmlNode::TiXmlNode(this, 2);
  *(_DWORD *)this = off_96C528;
  TiXmlComment::CopyTo(a2, this);
}


// ===== 516a68 TiXmlComment::TiXmlComment(TiXmlComment const&) =====
void __fastcall TiXmlComment::TiXmlComment(TiXmlComment *this, const TiXmlComment *a2)
{
  TiXmlNode::TiXmlNode(this, 2);
  *(_DWORD *)this = off_96C528;
  TiXmlComment::CopyTo(a2, this);
}


// ===== 516ab0 TiXmlComment::Clone(void) =====
TiXmlNode *__fastcall TiXmlComment::Clone(TiXmlComment *this)
{
  TiXmlNode *v2; // r5

  v2 = (TiXmlNode *)operator new(0x40u, 0);
  TiXmlNode::TiXmlNode(v2, 2);
  *(_DWORD *)v2 = off_96C528;
  TiXmlComment::CopyTo(this, v2);
  return v2;
}


// ===== 516b04 TiXmlDeclaration::CopyTo(TiXmlDeclaration*) =====
std::string *__fastcall TiXmlDeclaration::CopyTo(const char **this, TiXmlDeclaration *a2)
{
  std::string *result; // r0

  TiXmlNode::CopyTo((TiXmlNode *)this, a2);
  if ( (const char **)((char *)a2 + 64) != this + 16 )
    std::string::_M_assign((std::string *const)((char *)a2 + 64), *(this + 21), *(this + 20));
  if ( (const char **)((char *)a2 + 88) != this + 22 )
    std::string::_M_assign((std::string *const)((char *)a2 + 88), *(this + 27), *(this + 26));
  result = (std::string *)((char *)a2 + 112);
  if ( (const char **)((char *)a2 + 112) != this + 28 )
    return std::string::_M_assign(result, *(this + 33), *(this + 32));
  return result;
}


// ===== 516b70 TiXmlDeclaration::operator=(TiXmlDeclaration const&) =====
std::string *__fastcall TiXmlDeclaration::operator=(TiXmlDeclaration *a1, const char **a2)
{
  TiXmlNode::Clear((int)a1);
  return TiXmlDeclaration::CopyTo(a2, a1);
}


// ===== 516b90 TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration const&) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration *this, const char **a2)
{
  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  TiXmlDeclaration::CopyTo(a2, this);
}


// ===== 516c3c TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration const&) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration *this, const char **a2)
{
  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  TiXmlDeclaration::CopyTo(a2, this);
}


// ===== 516ce8 TiXmlDeclaration::Clone(void) =====
TiXmlDeclaration *__fastcall TiXmlDeclaration::Clone(const char **this)
{
  TiXmlDeclaration *v2; // r4

  v2 = (TiXmlDeclaration *)operator new(0x88u, 0);
  TiXmlDeclaration::TiXmlDeclaration(v2);
  if ( v2 )
    TiXmlDeclaration::CopyTo(this, v2);
  return v2;
}


// ===== 516d20 TiXmlDocument::CopyTo(TiXmlDocument*) =====
std::string *__fastcall TiXmlDocument::CopyTo(const char **this, TiXmlDocument *a2)
{
  std::string *result; // r0
  _DWORD *i; // r5
  TiXmlNode *v6; // r0

  TiXmlNode::CopyTo((TiXmlNode *)this, a2);
  result = (std::string *)((char *)a2 + 72);
  *((_BYTE *)a2 + 64) = *((_BYTE *)this + 64);
  *((_DWORD *)a2 + 17) = *(this + 17);
  if ( (const char **)((char *)a2 + 72) != this + 18 )
    result = std::string::_M_assign(result, *(this + 23), *(this + 22));
  *((_DWORD *)a2 + 24) = *(this + 24);
  *((_DWORD *)a2 + 25) = *(this + 25);
  *((_DWORD *)a2 + 26) = *(this + 26);
  *((_BYTE *)a2 + 108) = *((_BYTE *)this + 108);
  for ( i = *(this + 6); i; i = (_DWORD *)i[15] )
  {
    v6 = (TiXmlNode *)(*(int (__fastcall **)(_DWORD *))(*i + 64))(i);
    result = (std::string *)TiXmlNode::LinkEndChild(a2, v6);
  }
  return result;
}


// ===== 516db4 TiXmlDocument::operator=(TiXmlDocument const&) =====
std::string *__fastcall TiXmlDocument::operator=(TiXmlDocument *a1, const char **a2)
{
  TiXmlNode::Clear((int)a1);
  return TiXmlDocument::CopyTo(a2, a1);
}


// ===== 516dd4 TiXmlDocument::TiXmlDocument(TiXmlDocument const&) =====
void __fastcall TiXmlDocument::TiXmlDocument(TiXmlDocument *this, const char **a2)
{
  TiXmlNode::TiXmlNode(this, 0);
  *(_DWORD *)this = off_96C630;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 26) = -1;
  TiXmlDocument::CopyTo(a2, this);
}


// ===== 516e4c TiXmlDocument::TiXmlDocument(TiXmlDocument const&) =====
void __fastcall TiXmlDocument::TiXmlDocument(TiXmlDocument *this, const char **a2)
{
  TiXmlNode::TiXmlNode(this, 0);
  *(_DWORD *)this = off_96C630;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 26) = -1;
  TiXmlDocument::CopyTo(a2, this);
}


// ===== 516ec4 TiXmlDocument::TiXmlDocument(void) =====
void __fastcall TiXmlDocument::TiXmlDocument(TiXmlDocument *this)
{
  TiXmlNode::TiXmlNode(this, 0);
  *(_DWORD *)this = off_96C630;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  *((_DWORD *)this + 24) = 4;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 26) = -1;
  *((_BYTE *)this + 108) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 17) = 0;
  std::string::_M_assign((std::string *const)this + 3, "", "");
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
}


// ===== 516f60 TiXmlDocument::Clone(void) =====
TiXmlDocument *__fastcall TiXmlDocument::Clone(const char **this)
{
  TiXmlDocument *v2; // r4

  v2 = (TiXmlDocument *)operator new(0x70u, 0);
  TiXmlDocument::TiXmlDocument(v2);
  if ( v2 )
    TiXmlDocument::CopyTo(this, v2);
  return v2;
}


// ===== 516f98 TiXmlDocument::TiXmlDocument(void) =====
void __fastcall TiXmlDocument::TiXmlDocument(TiXmlDocument *this)
{
  TiXmlNode::TiXmlNode(this, 0);
  *(_DWORD *)this = off_96C630;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  *((_DWORD *)this + 24) = 4;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 26) = -1;
  *((_BYTE *)this + 108) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 17) = 0;
  std::string::_M_assign((std::string *const)this + 3, "", "");
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
}


// ===== 517034 TiXmlAttribute::TiXmlAttribute(char const*,char const*) =====
void __fastcall TiXmlAttribute::TiXmlAttribute(TiXmlAttribute *this, const char *a2, const char *a3)
{
  std::string *v4; // r6
  size_t v7; // r0
  size_t v8; // r0

  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_96C688;
  v4 = (std::string *)((char *)this + 20);
  *((_DWORD *)this + 9) = (char *)this + 20;
  *((_DWORD *)this + 10) = (char *)this + 20;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 5, 0x10u);
  **((_BYTE **)this + 9) = 0;
  *((_DWORD *)this + 15) = (char *)this + 44;
  *((_DWORD *)this + 16) = (char *)this + 44;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 11, 0x10u);
  **((_BYTE **)this + 15) = 0;
  v7 = LC_API_STRLEN_0(a2);
  std::string::_M_assign(v4, a2, &a2[v7]);
  v8 = LC_API_STRLEN_0(a3);
  std::string::_M_assign((std::string *const)((char *)this + 44), a3, &a3[v8]);
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 18) = 0;
}


// ===== 5170fc TiXmlElement::SetAttribute(char const*,char const*) =====
void __fastcall TiXmlElement::SetAttribute(TiXmlElement *this, char *a2, char *a3)
{
  TiXmlAttributeSet *v5; // r0
  TiXmlAttributeSet *v6; // r1
  std::string *v7; // r0
  TiXmlAttribute *v8; // r7
  int Document; // r0
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+34h] [bp-20h] BYREF

  std::string::string((std::string *)&v12, a2);
  std::string::string((std::string *)&v11, a3);
  v5 = TiXmlAttributeSet::Find((TiXmlElement *)((char *)this + 64), (const std::string *)&v12);
  v6 = v5;
  if ( v5 )
  {
    v7 = (std::string *)((char *)v5 + 44);
    if ( (std::priv::_String_base<char,std::allocator<char> > *)((char *)v6 + 44) != &v11 )
      std::string::_M_assign(v7, v11._M_start_of_storage._M_data, v11._M_finish);
  }
  else
  {
    v8 = (TiXmlAttribute *)operator new(0x4Cu, 0);
    TiXmlAttribute::TiXmlAttribute(v8, a2, a3);
    if ( v8 )
    {
      TiXmlAttributeSet::Add((int)this + 64, v8);
    }
    else
    {
      Document = TiXmlNode::GetDocument(this);
      if ( Document )
        TiXmlDocument::SetError(Document, 3, 0, 0, 0);
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
}


// ===== 51720c TiXmlElement::SetDoubleAttribute(char const*,double) =====
void __fastcall TiXmlElement::SetDoubleAttribute(TiXmlElement *this, char *a2, double a3)
{
  char s[256]; // [sp+Ch] [bp-108h] BYREF

  snprintf(s, 0x100u, "%f", a3);
  TiXmlElement::SetAttribute(this, a2, s);
}


// ===== 517288 TiXmlElement::SetAttribute(char const*,int) =====
void __fastcall TiXmlElement::SetAttribute(TiXmlElement *this, char *a2, int a3)
{
  char s[64]; // [sp+4h] [bp-48h] BYREF

  snprintf(s, 0x40u, "%d", a3);
  TiXmlElement::SetAttribute(this, a2, s);
}


// ===== 517304 TiXmlElement::CopyTo(TiXmlElement*) =====
char **__fastcall TiXmlElement::CopyTo(char ***this, TiXmlElement *a2)
{
  char **result; // r0
  char **v5; // r4
  _DWORD *i; // r4
  TiXmlNode *v7; // r0

  result = (char **)TiXmlNode::CopyTo((TiXmlNode *)this, a2);
  v5 = *(this + 34);
  if ( v5 != (char **)(this + 16) && v5 )
  {
    do
    {
      TiXmlElement::SetAttribute(a2, v5[10], v5[16]);
      result = (char **)TiXmlAttribute::Next((TiXmlAttribute *)v5);
      v5 = result;
    }
    while ( result );
  }
  for ( i = *(this + 6); i; i = (_DWORD *)i[15] )
  {
    v7 = (TiXmlNode *)(*(int (__fastcall **)(_DWORD *))(*i + 64))(i);
    result = (char **)TiXmlNode::LinkEndChild(a2, v7);
  }
  return result;
}


// ===== 517384 TiXmlElement::operator=(TiXmlElement const&) =====
char **__fastcall TiXmlElement::operator=(TiXmlElement *a1, char ***a2)
{
  TiXmlElement::ClearThis(a1);
  return TiXmlElement::CopyTo(a2, a1);
}


// ===== 5173a4 TiXmlElement::TiXmlElement(TiXmlElement const&) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, char ***a2)
{
  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  TiXmlElement::CopyTo(a2, this);
}


// ===== 517400 TiXmlElement::TiXmlElement(TiXmlElement const&) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, char ***a2)
{
  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  TiXmlElement::CopyTo(a2, this);
}


// ===== 51745c TiXmlElement::TiXmlElement(char const*) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, const char *a2)
{
  size_t v4; // r0

  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 32), a2, &a2[v4]);
}


// ===== 5174c4 TiXmlElement::Clone(void) =====
TiXmlElement *__fastcall TiXmlElement::Clone(TiXmlElement *this)
{
  const char *v1; // r6
  TiXmlElement *v3; // r4

  v1 = *((const char **)this + 13);
  v3 = (TiXmlElement *)operator new(0x8Cu, 0);
  TiXmlElement::TiXmlElement(v3, v1);
  if ( v3 )
    TiXmlElement::CopyTo((char ***)this, v3);
  return v3;
}


// ===== 517504 TiXmlElement::TiXmlElement(char const*) =====
void __fastcall TiXmlElement::TiXmlElement(TiXmlElement *this, const char *a2)
{
  size_t v4; // r0

  TiXmlNode::TiXmlNode(this, 1);
  *(_DWORD *)this = off_96C580;
  TiXmlAttributeSet::TiXmlAttributeSet((TiXmlElement *)((char *)this + 64));
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 32), a2, &a2[v4]);
}


// ===== 51756c TiXmlText::Clone(void) =====
int __fastcall TiXmlText::Clone(TiXmlText *this)
{
  int v2; // r4

  v2 = operator new(0x44u, 0);
  TiXmlNode::TiXmlNode((_DWORD *)v2, 4);
  *(_DWORD *)v2 = off_96C4D0;
  std::string::_M_assign((std::string *const)(v2 + 32), "", "");
  *(_BYTE *)(v2 + 64) = 0;
  TiXmlText::CopyTo(this, (TiXmlText *)v2);
  return v2;
}


// ===== 5175e0 operator<<(std::ostream &,TiXmlNode const&) =====
std::ostream *__fastcall operator<<(std::ostream *a1, int a2)
{
  _BYTE v5[12]; // [sp+0h] [bp-58h] BYREF
  _BYTE v6[24]; // [sp+Ch] [bp-4Ch] BYREF
  std::string v7; // [sp+24h] [bp-34h] BYREF
  std::string v8; // [sp+3Ch] [bp-1Ch] BYREF

  TiXmlPrinter::TiXmlPrinter((TiXmlPrinter *)v5);
  std::string::_M_assign(&v7, "", "");
  std::string::_M_assign(&v8, "", "");
  (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)a2 + 68))(a2, v5);
  std::operator<<<char>(a1, (int)v6);
  TiXmlPrinter::~TiXmlPrinter((TiXmlPrinter *)v5);
  return a1;
}


// ===== 517690 TiXmlDeclaration::TiXmlDeclaration(char const*,char const*,char const*) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(
        TiXmlDeclaration *this,
        const char *a2,
        const char *a3,
        const char *a4)
{
  size_t v8; // r0
  size_t v9; // r0
  size_t v10; // r0

  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  v8 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 64), a2, &a2[v8]);
  v9 = LC_API_STRLEN_0(a3);
  std::string::_M_assign((std::string *const)((char *)this + 88), a3, &a3[v9]);
  v10 = LC_API_STRLEN_0(a4);
  std::string::_M_assign((std::string *const)((char *)this + 112), a4, &a4[v10]);
}


// ===== 517780 TiXmlDeclaration::TiXmlDeclaration(char const*,char const*,char const*) =====
void __fastcall TiXmlDeclaration::TiXmlDeclaration(
        TiXmlDeclaration *this,
        const char *a2,
        const char *a3,
        const char *a4)
{
  size_t v8; // r0
  size_t v9; // r0
  size_t v10; // r0

  TiXmlNode::TiXmlNode(this, 5);
  *(_DWORD *)this = off_96C478;
  *((_DWORD *)this + 20) = (char *)this + 64;
  *((_DWORD *)this + 21) = (char *)this + 64;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 16, 0x10u);
  **((_BYTE **)this + 20) = 0;
  *((_DWORD *)this + 26) = (char *)this + 88;
  *((_DWORD *)this + 27) = (char *)this + 88;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 22, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 32) = (char *)this + 112;
  *((_DWORD *)this + 33) = (char *)this + 112;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 28, 0x10u);
  **((_BYTE **)this + 32) = 0;
  v8 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 64), a2, &a2[v8]);
  v9 = LC_API_STRLEN_0(a3);
  std::string::_M_assign((std::string *const)((char *)this + 88), a3, &a3[v9]);
  v10 = LC_API_STRLEN_0(a4);
  std::string::_M_assign((std::string *const)((char *)this + 112), a4, &a4[v10]);
}


// ===== 517870 operator<<(std::string &,TiXmlNode const&) =====
std::string *__fastcall operator<<(std::string *a1, int a2)
{
  _BYTE v5[28]; // [sp+0h] [bp-58h] BYREF
  char *v6; // [sp+1Ch] [bp-3Ch]
  char *v7; // [sp+20h] [bp-38h]
  std::string v8; // [sp+24h] [bp-34h] BYREF
  std::string v9; // [sp+3Ch] [bp-1Ch] BYREF

  TiXmlPrinter::TiXmlPrinter((TiXmlPrinter *)v5);
  std::string::_M_assign(&v8, "", "");
  std::string::_M_assign(&v9, "", "");
  (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)a2 + 68))(a2, v5);
  std::string::_M_append(a1, v7, v6);
  TiXmlPrinter::~TiXmlPrinter((TiXmlPrinter *)v5);
  return a1;
}


// ===== 517924 TiXmlPrinter::Visit(TiXmlUnknown const&) =====
int __fastcall TiXmlPrinter::Visit(char **this, const TiXmlUnknown *a2)
{
  std::string *v4; // r6
  int v5; // r5
  char *v6; // r5
  size_t v7; // r0

  if ( (int)*(this + 1) > 0 )
  {
    v4 = (std::string *)(this + 3);
    v5 = 0;
    do
    {
      std::string::_M_append(v4, *(this + 14), *(this + 13));
      ++v5;
    }
    while ( v5 < (int)*(this + 1) );
  }
  else
  {
    v4 = (std::string *)(this + 3);
  }
  std::string::_M_append(v4, "<", "");
  v6 = *((char **)a2 + 13);
  v7 = LC_API_STRLEN_0(v6);
  std::string::_M_append(v4, v6, &v6[v7]);
  std::string::_M_append(v4, ">", "");
  std::string::_M_append(v4, *(this + 20), *(this + 19));
  return 1;
}


// ===== 5179cc TiXmlPrinter::Visit(TiXmlComment const&) =====
int __fastcall TiXmlPrinter::Visit(char **this, const TiXmlComment *a2)
{
  std::string *v4; // r6
  int v5; // r5
  char *v6; // r5
  size_t v7; // r0

  if ( (int)*(this + 1) > 0 )
  {
    v4 = (std::string *)(this + 3);
    v5 = 0;
    do
    {
      std::string::_M_append(v4, *(this + 14), *(this + 13));
      ++v5;
    }
    while ( v5 < (int)*(this + 1) );
  }
  else
  {
    v4 = (std::string *)(this + 3);
  }
  std::string::_M_append(v4, "<!--", "");
  v6 = *((char **)a2 + 13);
  v7 = LC_API_STRLEN_0(v6);
  std::string::_M_append(v4, v6, &v6[v7]);
  std::string::_M_append(v4, "-->", "");
  std::string::_M_append(v4, *(this + 20), *(this + 19));
  return 1;
}


// ===== 517a74 TiXmlPrinter::VisitExit(TiXmlElement const&) =====
int __fastcall TiXmlPrinter::VisitExit(TiXmlPrinter *this, const TiXmlElement *a2)
{
  int v4; // r3
  int v5; // r5
  std::string *v6; // r6
  char *v7; // r5
  size_t v8; // r0

  v4 = *((_DWORD *)this + 1) - 1;
  *((_DWORD *)this + 1) = v4;
  if ( *((_DWORD *)a2 + 6) )
  {
    v5 = *((unsigned __int8 *)this + 8);
    if ( *((_BYTE *)this + 8) )
    {
      *((_BYTE *)this + 8) = 0;
    }
    else if ( v4 > 0 )
    {
      v6 = (std::string *)((char *)this + 12);
      do
      {
        std::string::_M_append(v6, *((char **)this + 14), *((char **)this + 13));
        ++v5;
      }
      while ( v5 < *((_DWORD *)this + 1) );
      goto LABEL_6;
    }
    v6 = (std::string *)((char *)this + 12);
LABEL_6:
    std::string::_M_append(v6, "</", "");
    v7 = *((char **)a2 + 13);
    v8 = LC_API_STRLEN_0(v7);
    std::string::_M_append(v6, v7, &v7[v8]);
    std::string::_M_append(v6, ">", "");
    std::string::_M_append(v6, *((char **)this + 20), *((char **)this + 19));
  }
  return 1;
}


// ===== 517b44 TiXmlDeclaration::Print(__sFILE *,int,std::string *) =====
std::string *__fastcall TiXmlDeclaration::Print(std::string *this, __sFILE *a2, int a3, std::string *a4)
{
  char **p_M_end_of_storage; // r5
  const char *v7; // r2
  const char *v8; // r2
  const char *v9; // r2

  p_M_end_of_storage = &this->_M_buffers._M_end_of_storage;
  if ( a2 )
    this = (std::string *)fwrite("<?xml ", 1u, 6u, a2);
  if ( a4 )
    this = std::string::_M_append(a4, "<?xml ", "");
  v7 = p_M_end_of_storage[21];
  if ( v7 != p_M_end_of_storage[20] )
  {
    if ( a2 )
      this = (std::string *)fprintf(a2, "version=\"%s\" ", v7);
    if ( a4 )
    {
      std::string::_M_append(a4, "version=\"", "");
      std::string::_M_append(a4, p_M_end_of_storage[21], p_M_end_of_storage[20]);
      this = std::string::_M_append(a4, "\" ", "");
    }
  }
  v8 = p_M_end_of_storage[27];
  if ( v8 != p_M_end_of_storage[26] )
  {
    if ( a2 )
      this = (std::string *)fprintf(a2, "encoding=\"%s\" ", v8);
    if ( a4 )
    {
      std::string::_M_append(a4, "encoding=\"", "");
      std::string::_M_append(a4, p_M_end_of_storage[27], p_M_end_of_storage[26]);
      this = std::string::_M_append(a4, "\" ", "");
    }
  }
  v9 = p_M_end_of_storage[33];
  if ( v9 != p_M_end_of_storage[32] )
  {
    if ( a2 )
      this = (std::string *)fprintf(a2, "standalone=\"%s\" ", v9);
    if ( a4 )
    {
      std::string::_M_append(a4, "standalone=\"", "");
      std::string::_M_append(a4, p_M_end_of_storage[33], p_M_end_of_storage[32]);
      this = std::string::_M_append(a4, "\" ", "");
    }
  }
  if ( a2 )
    this = (std::string *)fwrite("?>", 1u, 2u, a2);
  if ( a4 )
    return std::string::_M_append(a4, "?>", "");
  return this;
}


// ===== 517d3c TiXmlPrinter::Visit(TiXmlText const&) =====
int __fastcall TiXmlPrinter::Visit(char **this, const TiXmlText *a2)
{
  int v4; // r5
  std::string *v5; // r2
  std::string *v7; // r6
  std::string *v8; // r6
  int v9; // r5
  char *v10; // r5
  size_t v11; // r0
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+1Ch] [bp-20h] BYREF

  if ( *((_BYTE *)a2 + 64) )
  {
    if ( (int)*(this + 1) > 0 )
    {
      v8 = (std::string *)(this + 3);
      v9 = 0;
      do
      {
        std::string::_M_append(v8, *(this + 14), *(this + 13));
        ++v9;
      }
      while ( v9 < (int)*(this + 1) );
    }
    else
    {
      v8 = (std::string *)(this + 3);
    }
    std::string::_M_append(v8, "<![CDATA[", "");
    v10 = *((char **)a2 + 13);
    v11 = LC_API_STRLEN_0(v10);
    std::string::_M_append(v8, v10, &v10[v11]);
    std::string::_M_append(v8, "]]>", "");
    std::string::_M_append(v8, *(this + 20), *(this + 19));
  }
  else
  {
    v4 = *((unsigned __int8 *)this + 8);
    if ( *((_BYTE *)this + 8) )
    {
      v13._M_finish = (char *)&v13;
      v13._M_start_of_storage._M_data = (char *)&v13;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v13, 0x10u);
      *v13._M_finish = 0;
      TiXmlBase::EncodeString((const TiXmlText *)((char *)a2 + 32), (std::string *)&v13, v5);
      std::string::_M_append((std::string *)(this + 3), v13._M_start_of_storage._M_data, v13._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
    }
    else
    {
      if ( (int)*(this + 1) > 0 )
      {
        v7 = (std::string *)(this + 3);
        do
        {
          std::string::_M_append(v7, *(this + 14), *(this + 13));
          ++v4;
        }
        while ( v4 < (int)*(this + 1) );
      }
      else
      {
        v7 = (std::string *)(this + 3);
      }
      v12._M_finish = (char *)&v12;
      v12._M_start_of_storage._M_data = (char *)&v12;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v12, 0x10u);
      *v12._M_finish = 0;
      TiXmlBase::EncodeString((const TiXmlText *)((char *)a2 + 32), (std::string *)&v12, nullptr);
      std::string::_M_append(v7, v12._M_start_of_storage._M_data, v12._M_finish);
      std::string::_M_append(v7, *(this + 20), *(this + 19));
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    }
  }
  return 1;
}


// ===== 517f14 TiXmlAttribute::Print(__sFILE *,int,std::string *) =====
void __fastcall TiXmlAttribute::Print(TiXmlAttribute *this, __sFILE *a2, int a3, std::string *a4)
{
  std::string *v7; // r2
  std::string *v8; // r2
  int v9; // r1
  char *v10; // r0
  char *v11; // r0
  char v12[4]; // [sp+4h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+24h] [bp-20h] BYREF

  v14._M_finish = (char *)&v14;
  v14._M_start_of_storage._M_data = (char *)&v14;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v14, 0x10u);
  *v14._M_finish = 0;
  v13._M_finish = (char *)&v13;
  v13._M_start_of_storage._M_data = (char *)&v13;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v13, 0x10u);
  *v13._M_finish = 0;
  TiXmlBase::EncodeString((TiXmlAttribute *)((char *)this + 20), (std::string *)&v14, v7);
  TiXmlBase::EncodeString((TiXmlAttribute *)((char *)this + 44), (std::string *)&v13, v8);
  v9 = *((_DWORD *)this + 15);
  v10 = *((char **)this + 16);
  if ( (char *)v9 == v10
    || (v12[0] = 34,
        v11 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(v10, v9, v12),
        v11 == *((char **)this + 15))
    || &v11[-*((_DWORD *)this + 16)] == (char *)-1 )
  {
    if ( a2 )
      fprintf(a2, "%s=\"%s\"", v14._M_start_of_storage._M_data, v13._M_start_of_storage._M_data);
    if ( a4 )
    {
      std::string::_M_append(a4, v14._M_start_of_storage._M_data, v14._M_finish);
      std::string::_M_append(a4, "=\"", "");
      std::string::_M_append(a4, v13._M_start_of_storage._M_data, v13._M_finish);
      std::string::_M_append(a4, "\"", "");
    }
  }
  else
  {
    if ( a2 )
      fprintf(a2, "%s='%s'", v14._M_start_of_storage._M_data, v13._M_start_of_storage._M_data);
    if ( a4 )
    {
      std::string::_M_append(a4, v14._M_start_of_storage._M_data, v14._M_finish);
      std::string::_M_append(a4, "='", "");
      std::string::_M_append(a4, v13._M_start_of_storage._M_data, v13._M_finish);
      std::string::_M_append(a4, "'", "");
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
}


// ===== 518110 TiXmlPrinterDH::VisitEnter(TiXmlElement const&,TiXmlAttribute const*) =====
int __fastcall TiXmlPrinterDH::VisitEnter(char **this, const TiXmlElement *a2, const TiXmlAttribute *a3)
{
  std::string *v6; // r5
  int v7; // r8
  char *v8; // r8
  size_t v9; // r0
  int v10; // r8
  int v11; // r3

  if ( (int)*(this + 1) > 0 )
  {
    v6 = (std::string *)(this + 3);
    v7 = 0;
    do
    {
      std::string::_M_append(v6, *(this + 14), *(this + 13));
      ++v7;
    }
    while ( v7 < (int)*(this + 1) );
  }
  else
  {
    v6 = (std::string *)(this + 3);
  }
  std::string::_M_append(v6, "<", "");
  v8 = *((char **)a2 + 13);
  v9 = LC_API_STRLEN_0(v8);
  std::string::_M_append(v6, v8, &v8[v9]);
  ++*(this + 1);
  for ( ; a3; a3 = (const TiXmlAttribute *)TiXmlAttribute::Next(a3) )
  {
    std::string::_M_append(v6, *(this + 20), *(this + 19));
    if ( (int)*(this + 1) > 0 )
    {
      v10 = 0;
      do
      {
        std::string::_M_append(v6, *(this + 14), *(this + 13));
        ++v10;
      }
      while ( v10 < (int)*(this + 1) );
    }
    TiXmlAttribute::Print(a3, nullptr, 0, v6);
  }
  std::string::_M_append(v6, *(this + 20), *(this + 19));
  --*(this + 1);
  if ( *((_DWORD *)a2 + 6) )
  {
    std::string::_M_append(v6, ">", "");
    if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 6) + 32))(*((_DWORD *)a2 + 6))
      && (v11 = *((_DWORD *)a2 + 7), v11 == *((_DWORD *)a2 + 6))
      && !*(_BYTE *)((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 32))(*((_DWORD *)a2 + 7)) + 64) )
    {
      *((_BYTE *)this + 8) = 1;
    }
    else
    {
      std::string::_M_append(v6, *(this + 20), *(this + 19));
    }
  }
  else
  {
    std::string::_M_append(v6, " />", "");
    std::string::_M_append(v6, *(this + 20), *(this + 19));
  }
  ++*(this + 1);
  return 1;
}


// ===== 5182e8 TiXmlPrinter::VisitEnter(TiXmlElement const&,TiXmlAttribute const*) =====
int __fastcall TiXmlPrinter::VisitEnter(char **this, const TiXmlElement *a2, const TiXmlAttribute *a3)
{
  std::string *v6; // r5
  int v7; // r7
  char *v8; // r7
  size_t v9; // r0
  int v10; // r3

  if ( (int)*(this + 1) > 0 )
  {
    v6 = (std::string *)(this + 3);
    v7 = 0;
    do
    {
      std::string::_M_append(v6, *(this + 14), *(this + 13));
      ++v7;
    }
    while ( v7 < (int)*(this + 1) );
  }
  else
  {
    v6 = (std::string *)(this + 3);
  }
  std::string::_M_append(v6, "<", "");
  v8 = *((char **)a2 + 13);
  v9 = LC_API_STRLEN_0(v8);
  std::string::_M_append(v6, v8, &v8[v9]);
  for ( ; a3; a3 = (const TiXmlAttribute *)TiXmlAttribute::Next(a3) )
  {
    std::string::_M_append(v6, " ", "");
    TiXmlAttribute::Print(a3, nullptr, 0, v6);
  }
  if ( *((_DWORD *)a2 + 6) )
  {
    std::string::_M_append(v6, ">", "");
    if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 6) + 32))(*((_DWORD *)a2 + 6))
      && (v10 = *((_DWORD *)a2 + 7), v10 == *((_DWORD *)a2 + 6))
      && !*(_BYTE *)((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 32))(*((_DWORD *)a2 + 7)) + 64) )
    {
      *((_BYTE *)this + 8) = 1;
    }
    else
    {
      std::string::_M_append(v6, *(this + 20), *(this + 19));
    }
    ++*(this + 1);
    return 1;
  }
  else
  {
    std::string::_M_append(v6, " />", "");
    std::string::_M_append(v6, *(this + 20), *(this + 19));
    ++*(this + 1);
    return 1;
  }
}


// ===== 518488 `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxmlerror.cpp =====
void `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxmlerror.cpp()
{
  dword_9F6290 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F628C = 1056964608;
}


// ===== 5184a8 TiXmlDocument::ToDocument(void) =====
void __fastcall TiXmlDocument::ToDocument(TiXmlDocument *this)
{
  ;
}


// ===== 5184ac TiXmlDocument::ToDocument(void) =====
void __fastcall TiXmlDocument::ToDocument(TiXmlDocument *this)
{
  ;
}


// ===== 5184b0 TiXmlBase::ConvertUTF32ToUTF8(ulong,char *,int *) =====
__int64 __fastcall TiXmlBase::ConvertUTF32ToUTF8(unsigned int this, unsigned int a2, char *a3, int *a4)
{
  int v6; // r3
  __int64 result; // r0
  int v8; // r7
  int v9; // r7
  unsigned int v10; // r3
  int v11; // r7
  unsigned int v12; // r3
  unsigned int v13; // r3
  _DWORD v14[7]; // [sp+4h] [bp-1Ch]

  v6 = 224;
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = 192;
  v14[3] = 224;
  result = 0xF8000000F0LL;
  if ( this <= 0x7F )
    v6 = 1;
  v14[4] = 240;
  v14[5] = 248;
  v14[6] = 252;
  if ( this > 0x7F )
  {
    if ( this >= 0x800 )
    {
      if ( this >= 0x10000 )
      {
        if ( this >= 0x200000 )
        {
          *(_DWORD *)a3 = 0;
          return result;
        }
        v12 = ~(~((this & 0x3F) << 25) >> 25);
        *(_DWORD *)a3 = 4;
        this >>= 6;
        *(_BYTE *)(a2 + 3) = v12;
        v11 = a2 + 3;
      }
      else
      {
        *(_DWORD *)a3 = 3;
        v11 = a2 + 3;
      }
      v13 = ~((this & 0x3F) << 25);
      this >>= 6;
      *(_BYTE *)(v11 - 1) = ~(v13 >> 25);
      v9 = v11 - 1;
    }
    else
    {
      *(_DWORD *)a3 = 2;
      v9 = a2 + 2;
    }
    v10 = ~((this & 0x3F) << 25);
    this >>= 6;
    *(_BYTE *)(v9 - 1) = ~(v10 >> 25);
    v8 = v9 - 1;
  }
  else
  {
    v8 = a2 + v6;
    *(_DWORD *)a3 = v6;
  }
  *(_BYTE *)(v8 - 1) = this | LOBYTE(v14[*(_DWORD *)a3]);
  return result;
}


// ===== 5185a8 TiXmlBase::IsAlpha(uchar,TiXmlEncoding) =====
int __fastcall TiXmlBase::IsAlpha(unsigned int a1)
{
  if ( a1 <= 0x7E )
    return *(_BYTE *)(ctype_ + a1 + 1) & 3;
  else
    return 1;
}


// ===== 5185e0 TiXmlBase::IsAlphaNum(uchar,TiXmlEncoding) =====
int __fastcall TiXmlBase::IsAlphaNum(unsigned int a1)
{
  if ( a1 <= 0x7E )
    return *(_BYTE *)(ctype_ + a1 + 1) & 7;
  else
    return 1;
}


// ===== 518618 TiXmlParsingData::Stamp(char const*,TiXmlEncoding) =====
int __fastcall TiXmlParsingData::Stamp(int result, unsigned int a2, int a3)
{
  int v3; // r7
  _DWORD *v4; // r5
  unsigned __int8 *v5; // r8
  int v6; // r10
  unsigned int v7; // r3
  int v8; // r3
  int v9; // t1
  int v10; // t1
  int v11; // r3
  int v12; // r3

  v3 = *(_DWORD *)(result + 12);
  v4 = (_DWORD *)result;
  if ( v3 > 0 )
  {
    v5 = *(unsigned __int8 **)(result + 8);
    v6 = *(_DWORD *)result;
    result = *(_DWORD *)(result + 4);
    if ( (unsigned int)v5 < a2 )
    {
      while ( 1 )
      {
        v7 = *v5;
        if ( v7 == 10 )
        {
          v10 = (char)*++v5;
          ++v6;
          if ( v10 == 13 )
          {
LABEL_24:
            ++v5;
            result = 0;
            goto LABEL_9;
          }
          goto LABEL_22;
        }
        if ( v7 <= 0xA )
          break;
        if ( v7 == 13 )
        {
          v9 = (char)*++v5;
          ++v6;
          if ( v9 == 10 )
            goto LABEL_24;
LABEL_22:
          result = 0;
          goto LABEL_9;
        }
        if ( v7 != 239 )
          goto LABEL_7;
        if ( a3 != 1 )
          goto LABEL_8;
        if ( !v5[1] || !v5[2] )
          goto LABEL_9;
        v8 = v5[1];
        if ( v8 == 187 )
        {
          if ( v5[2] == 191 )
            goto LABEL_29;
        }
        else if ( v8 == 191 )
        {
          v12 = v5[2];
          if ( v12 == 190 )
          {
LABEL_29:
            v5 += 3;
            goto LABEL_9;
          }
          if ( v12 == 191 )
          {
            v5 += 3;
            goto LABEL_9;
          }
        }
        v5 += 3;
        ++result;
LABEL_9:
        if ( a2 <= (unsigned int)v5 )
          goto LABEL_10;
      }
      if ( !*v5 )
        return result;
      if ( v7 == 9 )
      {
        ++v5;
        result = v3 + result / v3 * v3;
        goto LABEL_9;
      }
LABEL_7:
      if ( a3 == 1 )
      {
        ++result;
        v11 = TiXmlBase::utf8ByteTable[v7];
        if ( !v11 )
          v11 = 1;
        v5 += v11;
        goto LABEL_9;
      }
LABEL_8:
      ++v5;
      ++result;
      goto LABEL_9;
    }
LABEL_10:
    v4[2] = v5;
    *v4 = v6;
    v4[1] = result;
  }
  return result;
}


// ===== 518788 TiXmlBase::SkipWhiteSpace(char const*,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlBase::SkipWhiteSpace(unsigned __int8 *result, int a2)
{
  int v2; // r2
  int v3; // r12
  int v4; // r3
  int v5; // t1
  int v6; // r3
  int v7; // r3
  int v8; // r3

  if ( !result )
    return result;
  v2 = *result;
  v3 = v2;
  if ( !*result )
    return (unsigned __int8 *)*result;
  if ( a2 == 1 )
  {
    while ( 1 )
    {
      if ( v3 == 239 )
      {
        v7 = result[1];
        if ( v7 == 187 )
        {
          if ( result[2] == 191 )
          {
            result += 3;
            goto LABEL_15;
          }
        }
        else if ( v7 == 191 )
        {
          v8 = result[2];
          if ( v8 == 190 || v8 == 191 )
          {
            result += 3;
            goto LABEL_15;
          }
        }
      }
      v6 = (*(unsigned __int8 *)(ctype_ + v3 + 1) >> 3) & 1;
      if ( (char)v3 == 10 )
        v6 = 1;
      if ( !v6 && (char)v3 != 13 )
        return result;
      ++result;
LABEL_15:
      v3 = *result;
      if ( !*result )
        return result;
    }
  }
  do
  {
    v4 = (*(unsigned __int8 *)(ctype_ + v2 + 1) >> 3) & 1;
    if ( (char)v2 == 10 )
      v4 = 1;
    if ( !v4 && (char)v2 != 13 )
      break;
    v5 = *++result;
    v2 = v5;
  }
  while ( v5 );
  return result;
}


// ===== 51889c TiXmlBase::StringEqual(char const*,char const*,bool,TiXmlEncoding) =====
bool __fastcall TiXmlBase::StringEqual(unsigned __int8 *a1, _BYTE *a2, int a3)
{
  int v3; // r4
  int v4; // r2
  int v6; // r2

  if ( a1 )
  {
    v3 = *a1;
    if ( *a1 )
    {
      if ( a3 )
      {
        LOBYTE(v4) = *a2;
        if ( *a2 )
        {
          while ( 1 )
          {
            v3 = (char)v3;
            v4 = (char)v4;
            if ( (unsigned int)(char)v3 <= 0xFF )
              v3 = *(__int16 *)(tolower_tab_ + 2 * (char)v3 + 2);
            if ( (unsigned int)(char)v4 <= 0xFF )
              v4 = *(__int16 *)(tolower_tab_ + 2 * (char)v4 + 2);
            if ( v3 != v4 )
              break;
            LOBYTE(v3) = a1[1];
            ++a2;
            if ( !(_BYTE)v3 )
              break;
            LOBYTE(v4) = *a2;
            ++a1;
            if ( !*a2 )
              return 1;
          }
          return *a2 == 0;
        }
        return 1;
      }
      if ( !*a2 )
        return 1;
      if ( (unsigned __int8)*a2 == v3 )
      {
        while ( 1 )
        {
          v6 = a1[1];
          ++a2;
          if ( !a1[1] )
            break;
          ++a1;
          if ( !*a2 )
            return 1;
          if ( (unsigned __int8)*a2 != v6 )
            return 0;
        }
        return *a2 == 0;
      }
    }
  }
  return 0;
}


// ===== 518990 TiXmlText::Blank(void) =====
int __fastcall TiXmlText::Blank(TiXmlText *this)
{
  int v1; // r12
  int v2; // r5
  int v3; // r3
  int v4; // r2
  int result; // r0

  v1 = *((_DWORD *)this + 13);
  v2 = *((_DWORD *)this + 12) - v1;
  if ( !v2 )
    return 1;
  v3 = 0;
  while ( 1 )
  {
    v4 = *(unsigned __int8 *)(v1 + v3++);
    result = (*(unsigned __int8 *)(ctype_ + v4 + 1) >> 3) & 1;
    if ( (char)v4 == 10 )
      result = 1;
    if ( !result && (char)v4 != 13 )
      break;
    if ( v3 == v2 )
      return 1;
  }
  return result;
}


// ===== 518a0c `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxmlparser.cpp =====
void `global constructor keyed to'.._.._sources_Data_tinyxml_tinyxmlparser.cpp()
{
  dword_9F629C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6298 = 1056964608;
}


// ===== 518a2c TiXmlAttribute::Print(__sFILE *,int) =====
void __fastcall TiXmlAttribute::Print(TiXmlAttribute *this, __sFILE *a2, int a3)
{
  TiXmlAttribute::Print(this, a2, a3, nullptr);
}


// ===== 518a34 TiXmlAttribute::~TiXmlAttribute() =====
void __fastcall TiXmlAttribute::~TiXmlAttribute(TiXmlAttribute *this)
{
  *(_DWORD *)this = off_96C688;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 44));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
}


// ===== 518a70 TiXmlDocument::~TiXmlDocument() =====
void __fastcall TiXmlDocument::~TiXmlDocument(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_96C630;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 3);
  TiXmlNode::~TiXmlNode((TiXmlNode *)this);
}


// ===== 518aac TiXmlBase::GetEntity(char const*,char *,int *,TiXmlEncoding) =====
char *__fastcall TiXmlBase::GetEntity(int a1, _BYTE *a2, char *a3, int a4)
{
  char *v6; // r11
  int v7; // r7
  int v8; // r8
  char **v10; // r8
  char *v11; // r0
  int *v12; // r3
  char *v13; // r10
  int v14; // r2
  char *v15; // r12
  int v16; // r1
  unsigned int v17; // r0
  char *v18; // r0
  char v19; // r1
  char *v20; // r12
  int v21; // r2
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+Ch] [bp-20h] BYREF

  v24._M_finish = (char *)&v24;
  v24._M_start_of_storage._M_data = (char *)&v24;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v24, 0x10u);
  v6 = (char *)(a1 + 1);
  *v24._M_finish = 0;
  *(_DWORD *)a3 = 0;
  if ( *(_BYTE *)(a1 + 1) == 35 && *(_BYTE *)(a1 + 2) )
  {
    if ( *(_BYTE *)(a1 + 2) == 120 )
    {
      if ( !*(_BYTE *)(a1 + 3) )
        goto LABEL_11;
      v18 = strchr((const char *)(a1 + 3), 59);
      if ( !v18 || !*v18 )
        goto LABEL_11;
      v19 = *(v18 - 1);
      v13 = &v18[-a1];
      v12 = (int *)v19;
      if ( v19 != 120 )
      {
        v20 = v18;
        v21 = 1;
        v17 = 0;
        while ( 1 )
        {
          if ( (unsigned __int8)(v19 - 48) <= 9u )
          {
            v17 += v21 * (_DWORD)(v12 - 12);
          }
          else if ( (unsigned __int8)(v19 - 97) > 5u )
          {
            if ( (unsigned __int8)(v19 - 65) > 5u )
              goto LABEL_11;
            v17 += v21 * ((_DWORD)v12 - 55);
          }
          else
          {
            v17 += v21 * ((_DWORD)v12 - 87);
          }
          v19 = *(v20 - 2);
          --v20;
          v12 = (int *)v19;
          if ( v19 == 120 )
            goto LABEL_18;
          v21 *= 16;
        }
      }
    }
    else
    {
      v11 = strchr((const char *)(a1 + 2), 59);
      if ( !v11 || !*v11 )
        goto LABEL_11;
      v12 = (int *)(unsigned __int8)*(v11 - 1);
      v13 = &v11[-a1];
      v14 = (char)v12;
      if ( (char)v12 != 35 )
      {
        if ( (unsigned __int8)((_BYTE)v12 - 48) <= 9u )
        {
          v15 = v11;
          v16 = 1;
          v17 = 0;
          do
          {
            v12 = (int *)(unsigned __int8)*(v15 - 2);
            v17 += v16 * (v14 - 48);
            v14 = (char)v12;
            v16 *= 10;
            if ( (char)v12 == 35 )
              goto LABEL_18;
            --v15;
          }
          while ( (unsigned __int8)((_BYTE)v12 - 48) <= 9u );
        }
LABEL_11:
        v6 = nullptr;
        goto LABEL_6;
      }
    }
    v17 = 0;
LABEL_18:
    if ( a4 == 1 )
    {
      TiXmlBase::ConvertUTF32ToUTF8(v17, (unsigned int)a2, a3, v12);
    }
    else
    {
      *a2 = v17;
      *(_DWORD *)a3 = 1;
    }
    v6 = &v13[a1 + 1];
    goto LABEL_6;
  }
  v7 = 0;
  v8 = 0;
  while ( LC_API_STRNCMP_0((&TiXmlBase::entity)[v7], (const char *)a1, (size_t)(&TiXmlBase::entity)[v7 + 1]) )
  {
    ++v8;
    v7 += 3;
    if ( v8 == 5 )
    {
      *a2 = *(_BYTE *)a1;
      goto LABEL_6;
    }
  }
  v10 = &(&TiXmlBase::entity)[3 * v8];
  *a2 = *((_BYTE *)v10 + 8);
  *(_DWORD *)a3 = 1;
  v6 = &v10[1][a1];
LABEL_6:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
  return v6;
}


// ===== 518d64 TiXmlBase::GetChar(char const*,char *,int *,TiXmlEncoding) =====
char *__fastcall TiXmlBase::GetChar(unsigned __int8 *a1, _BYTE *a2, char *a3, int a4)
{
  int v4; // r12
  int v6; // r12
  unsigned __int8 v7; // r4
  int v8; // r5
  int v9; // r3

  if ( a4 != 1 )
  {
    *(_DWORD *)a3 = 1;
    goto LABEL_4;
  }
  v6 = TiXmlBase::utf8ByteTable[*a1];
  *(_DWORD *)a3 = v6;
  if ( v6 == 1 )
  {
LABEL_4:
    v4 = *a1;
    if ( v4 == 38 )
      return TiXmlBase::GetEntity((int)a1, a2, a3, a4);
    *a2 = v4;
    return (char *)(a1 + 1);
  }
  if ( !v6 )
    return nullptr;
  v7 = *a1;
  if ( !*a1 || v6 <= 0 )
    return (char *)&a1[v6];
  v8 = 0;
  v9 = 0;
  do
  {
    a2[v8] = v7;
    v7 = a1[++v9];
    v8 = v9;
    if ( !v7 )
    {
      v6 = *(_DWORD *)a3;
      return (char *)&a1[v6];
    }
  }
  while ( *(_DWORD *)a3 > v9 );
  return (char *)&a1[*(_DWORD *)a3];
}


// ===== 518e28 TiXmlDocument::~TiXmlDocument() =====
void __fastcall TiXmlDocument::~TiXmlDocument(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_96C630;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 3);
  TiXmlNode::~TiXmlNode((TiXmlNode *)this);
  CustomFree(this);
}


// ===== 518e6c TiXmlAttribute::~TiXmlAttribute() =====
void __fastcall TiXmlAttribute::~TiXmlAttribute(TiXmlAttribute *this)
{
  *(_DWORD *)this = off_96C688;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 44));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
  *(_DWORD *)this = off_96C3A8;
  CustomFree(this);
}


// ===== 518ec4 std::istream::get(void) =====
int __fastcall std::istream::get(std::istream *this)
{
  _BOOL4 v2; // r0
  std::ios_base *v3; // r0
  int M_iostate; // r2
  int v5; // r3
  int M_exception_mask; // r2
  int result; // r0
  _DWORD *v8; // r3
  unsigned __int8 *v9; // r2

  v2 = std::_M_init_noskip<char,std::char_traits<char>>(this);
  this->_M_gcount = 0;
  if ( v2 )
  {
    v8 = *(_DWORD **)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3) + 64];
    v9 = (unsigned __int8 *)v8[2];
    if ( (unsigned int)v9 >= v8[3] )
    {
      result = (*(int (__fastcall **)(_DWORD))(*v8 + 36))(*(_DWORD *)&this->gap8[*((_DWORD *)this->_vptr.basic_istream
                                                                                 - 3)
                                                                               + 64]);
      if ( result == -1 )
      {
        if ( this->_M_gcount )
          return result;
        goto LABEL_2;
      }
    }
    else
    {
      v8[2] = v9 + 1;
      result = *v9;
    }
    this->_M_gcount = 1;
    return result;
  }
LABEL_2:
  v3 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_istream - 3));
  M_iostate = v3->_M_iostate;
  v5 = M_iostate | 6;
  if ( !v3[1]._M_iostate )
    v5 = M_iostate | 7;
  M_exception_mask = v3->_M_exception_mask;
  v3->_M_iostate = v5;
  if ( (v5 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v3);
  return -1;
}


// ===== 518f84 TiXmlBase::ReadName(char const*,std::string *,TiXmlEncoding) =====
const char *__fastcall TiXmlBase::ReadName(const char *a1, std::string *this)
{
  unsigned int v5; // r0
  const char *v6; // r4
  int v7; // r2
  int v8; // r3

  std::string::_M_assign(this, "", "");
  if ( !a1 )
    return a1;
  if ( !*a1 )
    return nullptr;
  if ( TiXmlBase::IsAlpha(*(unsigned __int8 *)a1) )
  {
    v5 = *(unsigned __int8 *)a1;
    if ( !*a1 )
      return a1;
  }
  else
  {
    v5 = *(unsigned __int8 *)a1;
    if ( v5 != 95 )
      return nullptr;
  }
  v6 = a1;
  while ( 1 )
  {
    if ( !TiXmlBase::IsAlphaNum(v5) )
    {
      v8 = *v6;
      if ( v8 != 95 && v8 != 45 && v8 != 46 && v8 != 58 )
      {
LABEL_11:
        v7 = v6 - a1;
        goto LABEL_12;
      }
    }
    if ( !++v6 )
      break;
    v5 = *(unsigned __int8 *)v6;
    if ( !*v6 )
      goto LABEL_11;
  }
  v7 = -(int)a1;
LABEL_12:
  if ( v7 <= 0 )
    return v6;
  std::string::_M_assign(this, a1, &a1[v7]);
  return v6;
}


// ===== 519080 TiXmlText::TiXmlText(char const*) [clone] =====
void __fastcall TiXmlText::TiXmlText(TiXmlText *this, const char *a2)
{
  TiXmlNode::TiXmlNode(this, 4);
  *(_DWORD *)this = off_96C4D0;
  std::string::_M_assign((std::string *const)((char *)this + 32), "", "");
  *((_BYTE *)this + 64) = 0;
}


// ===== 5190d8 TiXmlBase::ReadText(char const*,std::string *,bool,char const*,bool,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlBase::ReadText(
        unsigned __int8 *Char,
        std::string *this,
        int a3,
        char *a4,
        unsigned __int8 a5,
        int a6)
{
  unsigned __int8 *v12; // r0
  int v13; // r9
  _BOOL4 i; // r0
  int v15; // r3
  bool v16; // zf
  char v17; // [sp+10h] [bp-Ch] BYREF
  char v18; // [sp+11h] [bp-Bh]
  char v19; // [sp+12h] [bp-Ah]
  char v20; // [sp+13h] [bp-9h]
  char v21[8]; // [sp+14h] [bp-8h] BYREF

  std::string::_M_assign(this, "", "");
  if ( a3 && TiXmlBase::condenseWhiteSpace )
  {
    v12 = TiXmlBase::SkipWhiteSpace(Char, a6);
    Char = v12;
    if ( !v12 )
      return Char;
    if ( *v12 )
    {
      v13 = 0;
      for ( i = TiXmlBase::StringEqual(v12, a4, a5); !i; i = TiXmlBase::StringEqual(Char, a4, a5) )
      {
        v15 = *Char;
        v16 = v15 == 13;
        if ( v15 != 13 )
          v16 = v15 == 10;
        if ( v16 || (*(_BYTE *)(ctype_ + (unsigned __int8)v15 + 1) & 8) != 0 )
        {
          ++Char;
          v13 = 1;
        }
        else
        {
          if ( v13 )
            std::string::push_back(this, &dword_20);
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          Char = (unsigned __int8 *)TiXmlBase::GetChar(Char, &v17, v21, a6);
          if ( *(_DWORD *)v21 == 1 )
            std::string::push_back(this, (_BYTE *)v17);
          else
            std::string::_M_append(this, &v17, &v17 + *(_DWORD *)v21);
          v13 = 0;
        }
        if ( !Char )
          return Char;
        if ( !*Char )
          break;
      }
    }
  }
  else
  {
    if ( !Char )
      return Char;
    while ( *Char )
    {
      if ( TiXmlBase::StringEqual(Char, a4, a5) )
        break;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      Char = (unsigned __int8 *)TiXmlBase::GetChar(Char, &v17, v21, a6);
      std::string::_M_append(this, &v17, &v17 + *(_DWORD *)v21);
      if ( !Char )
        return Char;
    }
  }
  if ( Char )
    Char += LC_API_STRLEN_0(a4);
  return Char;
}


// ===== 519314 std::istream::peek(void) =====
int __fastcall std::istream::peek(std::istream *this)
{
  int v2; // r5
  _DWORD *v3; // r3
  unsigned __int8 *v4; // r2
  int v6; // r0
  std::ios_base *v7; // r0
  int M_iostate; // r2
  int v9; // r3
  int M_exception_mask; // r2

  this->_M_gcount = 0;
  if ( !std::_M_init_noskip<char,std::char_traits<char>>(this) )
    return -1;
  v3 = *(_DWORD **)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3) + 64];
  v4 = (unsigned __int8 *)v3[2];
  if ( (unsigned int)v4 < v3[3] )
    return *v4;
  v6 = (*(int (__fastcall **)(_DWORD))(*v3 + 32))(*(_DWORD *)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3) + 64]);
  v2 = v6;
  if ( v6 == -1 )
  {
    v7 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_istream - 3));
    M_iostate = v7->_M_iostate;
    v9 = M_iostate | 2;
    if ( !v7[1]._M_iostate )
      v9 = M_iostate | 3;
    M_exception_mask = v7->_M_exception_mask;
    v7->_M_iostate = v9;
    if ( (v9 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v7);
  }
  return v2;
}


// ===== 5193b4 TiXmlBase::StreamTo(std::istream *,int,std::string *) =====
int __fastcall TiXmlBase::StreamTo(std::istream *this, std::istream *a2, std::string *a3, std::string *a4)
{
  int (**i)(...); // r3
  std::istream *v8; // r7

  for ( i = this->_vptr.basic_istream; ; i = this->_vptr.basic_istream )
  {
    if ( *(_DWORD *)((char *)*(i - 3) + (_DWORD)this + 8) )
      return 0;
    v8 = (std::istream *)std::istream::peek(this);
    if ( v8 == a2 )
      break;
    if ( (int)v8 <= 0 )
      return 0;
    std::istream::get(this);
    std::string::push_back(a3, (_BYTE *)(char)v8);
  }
  return 1;
}


// ===== 519424 TiXmlBase::StreamWhiteSpace(std::istream *,std::string *) =====
int __fastcall TiXmlBase::StreamWhiteSpace(std::istream *this, std::string *a2, std::string *a3)
{
  int v5; // r0
  int v7; // r2
  char v8; // r0

  if ( *(_DWORD *)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3)] )
    return 0;
  while ( 1 )
  {
    v5 = std::istream::peek(this);
    if ( v5 > 255 )
      break;
    v7 = (*(unsigned __int8 *)(ctype_ + (unsigned __int8)v5 + 1) >> 3) & 1;
    if ( (char)v5 == 10 )
      v7 = 1;
    if ( !v7 && (char)v5 != 13 || v5 <= 0 )
      break;
    v8 = std::istream::get(this);
    std::string::push_back(a2, (_BYTE *)v8);
    if ( *(_DWORD *)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3)] )
      return 0;
  }
  return 1;
}


// ===== 5194e8 TiXmlDocument::SetError(int,char const*,TiXmlParsingData *,TiXmlEncoding) =====
std::string *__fastcall TiXmlDocument::SetError(int a1, int a2, unsigned int a3, _DWORD *a4, int a5)
{
  std::string *result; // r0
  const char *v9; // r7
  size_t v10; // r0
  bool v11; // zf

  result = (std::string *)*(unsigned __int8 *)(a1 + 64);
  if ( !result )
  {
    *(_BYTE *)(a1 + 64) = 1;
    *(_DWORD *)(a1 + 68) = a2;
    v9 = (&TiXmlBase::errorString)[a2];
    v10 = LC_API_STRLEN_0(v9);
    result = std::string::_M_assign((std::string *const)(a1 + 72), v9, &v9[v10]);
    v11 = a4 == nullptr;
    if ( a4 )
      v11 = a3 == 0;
    *(_DWORD *)(a1 + 100) = -1;
    *(_DWORD *)(a1 + 104) = -1;
    if ( !v11 )
    {
      result = (std::string *)TiXmlParsingData::Stamp((int)a4, a3, a5);
      *(_DWORD *)(a1 + 100) = *a4;
      *(_DWORD *)(a1 + 104) = a4[1];
    }
  }
  return result;
}

