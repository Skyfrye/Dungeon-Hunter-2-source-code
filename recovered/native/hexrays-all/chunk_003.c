// ===== 33cdcc TouchScreenIPhone::TouchScreenIPhone(float,float,float,float,float) =====
void __fastcall TouchScreenIPhone::TouchScreenIPhone(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float a6)
{
  __int16 v9; // r7
  __int16 v10; // r6

  v9 = (int)a4;
  v10 = (int)a5;
  TouchScreenBase::TouchScreenBase(this, v9, v10);
  *(_DWORD *)this = off_95C430;
  *((_WORD *)this + 218) = (int)a2;
  *((_WORD *)this + 219) = v9;
  *((_WORD *)this + 220) = (int)a3;
  *((_WORD *)this + 221) = v10;
  *((float *)this + 108) = a6;
}


// ===== 33ce64 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingKeyInputs";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingKeyInputs" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingKeyInputs" )
    result = (char *)memcpy(result, "isTracingKeyInputs", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 33ceb4 TouchScreenIPhone::touchEnded(float,float,double,int,float,float,long) =====
int __fastcall TouchScreenIPhone::touchEnded(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        int a4,
        double a5,
        int a6,
        float a7,
        float a8,
        int a9)
{
  int ID; // r10
  const char *v13; // r2
  __int16 v15[2]; // [sp+0h] [bp-20h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4h] [bp-1Ch] BYREF

  ID = TouchScreenBase::getID(this, a9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize((std::string *)&v16, "", v13);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v15[0] = (int)a2;
  v15[1] = (int)a3;
  return TouchScreenBase::touchEnded(this, v15, ID);
}


// ===== 33cf84 TouchScreenIPhone::touchCancelled(float,float,double,int,float,float,long) =====
int __fastcall TouchScreenIPhone::touchCancelled(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        int a4,
        double a5,
        int a6,
        float a7,
        float a8,
        int a9)
{
  int ID; // r10
  const char *v13; // r2
  __int16 v15[2]; // [sp+0h] [bp-20h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4h] [bp-1Ch] BYREF

  ID = TouchScreenBase::getID(this, a9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize((std::string *)&v16, "", v13);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v15[0] = (int)a2;
  v15[1] = (int)a3;
  return TouchScreenBase::touchCancelled(this, v15, ID);
}


// ===== 33d054 TouchScreenIPhone::touchBegan(float,float,double,int,float,float,long) =====
int __fastcall TouchScreenIPhone::touchBegan(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        int a4,
        double a5,
        int a6,
        float a7,
        float a8,
        int a9)
{
  int ID; // r10
  const char *v13; // r2
  __int16 v15[2]; // [sp+0h] [bp-20h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4h] [bp-1Ch] BYREF

  ID = TouchScreenBase::getID(this, a9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize((std::string *)&v16, "", v13);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v15[0] = (int)a2;
  v15[1] = (int)a3;
  return TouchScreenBase::touchBegan((int)this, v15, ID);
}


// ===== 33d124 TouchScreenIPhone::touchMoved(float,float,double,int,float,float,long) =====
int __fastcall TouchScreenIPhone::touchMoved(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        int a4,
        double a5,
        int a6,
        float a7,
        float a8,
        int a9)
{
  int ID; // r10
  const char *v13; // r2
  __int16 v15[2]; // [sp+0h] [bp-20h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4h] [bp-1Ch] BYREF

  ID = TouchScreenBase::getID(this, a9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize((std::string *)&v16, "", v13);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v15[0] = (int)a2;
  v15[1] = (int)a3;
  return TouchScreenBase::touchMoved(this, v15, ID);
}


// ===== 33d1f4 TouchScreenPS3::getLeftBound(void) =====
int __fastcall TouchScreenPS3::getLeftBound(TouchScreenPS3 *this)
{
  return 0;
}


// ===== 33d1fc TouchScreenPS3::getRightBound(void) =====
int __fastcall TouchScreenPS3::getRightBound(TouchScreenPS3 *this)
{
  return 0;
}


// ===== 33d204 TouchScreenPS3::getTopBound(void) =====
int __fastcall TouchScreenPS3::getTopBound(TouchScreenPS3 *this)
{
  return 0;
}


// ===== 33d20c TouchScreenPS3::getBottomBound(void) =====
int __fastcall TouchScreenPS3::getBottomBound(TouchScreenPS3 *this)
{
  return 0;
}


// ===== 33d214 `non-virtual thunk to'TouchScreenPS3::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'TouchScreenPS3::onEvent(int a1)
{
  return TouchScreenPS3::onEvent(a1 - 436);
}


// ===== 33d21c TouchScreenPS3::onEvent(glitch::SEvent const&) =====
int __fastcall TouchScreenPS3::onEvent(int a1, int a2)
{
  int v3; // r2
  __int16 v4; // r3
  void (__fastcall *v5)(int, _WORD *); // r12
  __int16 v6; // r3
  void (__fastcall *v7)(int, _WORD *, _DWORD); // r12
  __int16 v8; // lr
  void (__fastcall *v9)(int, _WORD *, _DWORD); // r12
  _WORD v10[2]; // [sp+4h] [bp-Ch] BYREF
  _WORD v11[2]; // [sp+8h] [bp-8h] BYREF
  _WORD v12[2]; // [sp+Ch] [bp-4h] BYREF

  if ( *(_DWORD *)a2 == 1 )
  {
    v3 = *(_DWORD *)(a2 + 20);
    switch ( v3 )
    {
      case 3:
        TouchScreenPS3::onEvent(glitch::SEvent const&)::isDown = 0;
        v8 = *(_WORD *)(a2 + 12);
        v9 = *(void (__fastcall **)(int, _WORD *, _DWORD))(*(_DWORD *)a1 + 40);
        v11[0] = *(_WORD *)(a2 + 8);
        v11[1] = v8;
        v9(a1, v11, 0);
        return 1;
      case 6:
        if ( TouchScreenPS3::onEvent(glitch::SEvent const&)::isDown )
        {
          v6 = *(_WORD *)(a2 + 8);
          v7 = *(void (__fastcall **)(int, _WORD *, _DWORD))(*(_DWORD *)a1 + 36);
          v10[1] = *(_WORD *)(a2 + 12);
          v10[0] = v6;
          v7(a1, v10, 0);
          return 1;
        }
        break;
      case 0:
        TouchScreenPS3::onEvent(glitch::SEvent const&)::isDown = 1;
        v4 = *(_WORD *)(a2 + 8);
        v5 = *(void (__fastcall **)(int, _WORD *))(*(_DWORD *)a1 + 32);
        v12[1] = *(_WORD *)(a2 + 12);
        v12[0] = v4;
        v5(a1, v12);
        return 1;
    }
  }
  return 0;
}


// ===== 33d318 `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenPS3.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenPS3.cpp()
{
  dword_9A1DE8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1DE4 = 1056964608;
}


// ===== 33d338 `non-virtual thunk to'TouchScreenPS3::~TouchScreenPS3() =====
void __fastcall `non-virtual thunk to'TouchScreenPS3::~TouchScreenPS3(TouchScreenPS3 *this)
{
  TouchScreenPS3::~TouchScreenPS3((TouchScreenPS3 *)((char *)this - 436));
}


// ===== 33d340 TouchScreenPS3::~TouchScreenPS3() =====
void __fastcall TouchScreenPS3::~TouchScreenPS3(TouchScreenPS3 *this)
{
  *(_DWORD *)this = off_95C490;
  *((_DWORD *)this + 109) = off_95C300;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33d388 `non-virtual thunk to'TouchScreenPS3::~TouchScreenPS3() =====
void __fastcall `non-virtual thunk to'TouchScreenPS3::~TouchScreenPS3(TouchScreenPS3 *this)
{
  TouchScreenPS3::~TouchScreenPS3((TouchScreenPS3 *)((char *)this - 436));
}


// ===== 33d390 TouchScreenPS3::~TouchScreenPS3() =====
void __fastcall TouchScreenPS3::~TouchScreenPS3(TouchScreenPS3 *this)
{
  TouchScreenPS3::~TouchScreenPS3(this);
  CustomFree(this);
}


// ===== 33d3ac TouchScreenPS3::~TouchScreenPS3() =====
void __fastcall TouchScreenPS3::~TouchScreenPS3(TouchScreenPS3 *this)
{
  *(_DWORD *)this = off_95C490;
  *((_DWORD *)this + 109) = off_95C300;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33d3f4 TouchScreenPS3::TouchScreenPS3(void) =====
void __fastcall TouchScreenPS3::TouchScreenPS3(TouchScreenPS3 *this)
{
  TouchScreenBase::TouchScreenBase(this, 0, 0);
  *((_DWORD *)this + 100) = 0;
  *(_DWORD *)this = off_95C490;
  *((_DWORD *)this + 109) = off_95C4F0;
}


// ===== 33d440 TouchScreenPS3::TouchScreenPS3(void) =====
void __fastcall TouchScreenPS3::TouchScreenPS3(TouchScreenPS3 *this)
{
  TouchScreenBase::TouchScreenBase(this, 0, 0);
  *((_DWORD *)this + 100) = 0;
  *(_DWORD *)this = off_95C490;
  *((_DWORD *)this + 109) = off_95C4F0;
}


// ===== 33d48c TouchScreenWin32::getLeftBound(void) =====
int __fastcall TouchScreenWin32::getLeftBound(TouchScreenWin32 *this)
{
  return 0;
}


// ===== 33d494 TouchScreenWin32::getRightBound(void) =====
int __fastcall TouchScreenWin32::getRightBound(TouchScreenWin32 *this)
{
  return 0;
}


// ===== 33d49c TouchScreenWin32::getTopBound(void) =====
int __fastcall TouchScreenWin32::getTopBound(TouchScreenWin32 *this)
{
  return 0;
}


// ===== 33d4a4 TouchScreenWin32::getBottomBound(void) =====
int __fastcall TouchScreenWin32::getBottomBound(TouchScreenWin32 *this)
{
  return 0;
}


// ===== 33d4ac `non-virtual thunk to'TouchScreenWin32::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'TouchScreenWin32::onEvent(int a1)
{
  return TouchScreenWin32::onEvent(a1 - 436);
}


// ===== 33d4b4 TouchScreenWin32::onEvent(glitch::SEvent const&) =====
int __fastcall TouchScreenWin32::onEvent(int a1, int a2)
{
  int v3; // r2
  __int16 v4; // r3
  void (__fastcall *v5)(int, _WORD *); // r12
  __int16 v6; // r3
  void (__fastcall *v7)(int, _WORD *, _DWORD); // r12
  __int16 v8; // lr
  void (__fastcall *v9)(int, _WORD *, _DWORD); // r12
  _WORD v10[2]; // [sp+4h] [bp-Ch] BYREF
  _WORD v11[2]; // [sp+8h] [bp-8h] BYREF
  _WORD v12[2]; // [sp+Ch] [bp-4h] BYREF

  if ( *(_DWORD *)a2 == 1 )
  {
    v3 = *(_DWORD *)(a2 + 20);
    switch ( v3 )
    {
      case 3:
        TouchScreenWin32::onEvent(glitch::SEvent const&)::isDown = 0;
        v8 = *(_WORD *)(a2 + 12);
        v9 = *(void (__fastcall **)(int, _WORD *, _DWORD))(*(_DWORD *)a1 + 40);
        v11[0] = *(_WORD *)(a2 + 8);
        v11[1] = v8;
        v9(a1, v11, 0);
        return 1;
      case 6:
        if ( TouchScreenWin32::onEvent(glitch::SEvent const&)::isDown )
        {
          v6 = *(_WORD *)(a2 + 8);
          v7 = *(void (__fastcall **)(int, _WORD *, _DWORD))(*(_DWORD *)a1 + 36);
          v10[1] = *(_WORD *)(a2 + 12);
          v10[0] = v6;
          v7(a1, v10, 0);
          return 1;
        }
        break;
      case 0:
        TouchScreenWin32::onEvent(glitch::SEvent const&)::isDown = 1;
        v4 = *(_WORD *)(a2 + 8);
        v5 = *(void (__fastcall **)(int, _WORD *))(*(_DWORD *)a1 + 32);
        v12[1] = *(_WORD *)(a2 + 12);
        v12[0] = v4;
        v5(a1, v12);
        return 1;
    }
  }
  return 0;
}


// ===== 33d5b0 `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenWin32.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenWin32.cpp()
{
  dword_9A1DF8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1DF4 = 1056964608;
}


// ===== 33d5d0 `non-virtual thunk to'TouchScreenWin32::~TouchScreenWin32() =====
void __fastcall `non-virtual thunk to'TouchScreenWin32::~TouchScreenWin32(TouchScreenWin32 *this)
{
  TouchScreenWin32::~TouchScreenWin32((TouchScreenWin32 *)((char *)this - 436));
}


// ===== 33d5d8 TouchScreenWin32::~TouchScreenWin32() =====
void __fastcall TouchScreenWin32::~TouchScreenWin32(TouchScreenWin32 *this)
{
  *(_DWORD *)this = off_95C508;
  *((_DWORD *)this + 109) = off_95C300;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33d620 `non-virtual thunk to'TouchScreenWin32::~TouchScreenWin32() =====
void __fastcall `non-virtual thunk to'TouchScreenWin32::~TouchScreenWin32(TouchScreenWin32 *this)
{
  TouchScreenWin32::~TouchScreenWin32((TouchScreenWin32 *)((char *)this - 436));
}


// ===== 33d628 TouchScreenWin32::~TouchScreenWin32() =====
void __fastcall TouchScreenWin32::~TouchScreenWin32(TouchScreenWin32 *this)
{
  TouchScreenWin32::~TouchScreenWin32(this);
  CustomFree(this);
}


// ===== 33d644 TouchScreenWin32::~TouchScreenWin32() =====
void __fastcall TouchScreenWin32::~TouchScreenWin32(TouchScreenWin32 *this)
{
  *(_DWORD *)this = off_95C508;
  *((_DWORD *)this + 109) = off_95C300;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33d68c TouchScreenWin32::TouchScreenWin32(short,short) =====
void __fastcall TouchScreenWin32::TouchScreenWin32(TouchScreenWin32 *this, __int16 a2, __int16 a3)
{
  TouchScreenBase::TouchScreenBase(this, a2, a3);
  *((_DWORD *)this + 100) = 0;
  *(_DWORD *)this = off_95C508;
  *((_DWORD *)this + 109) = off_95C568;
}


// ===== 33d6d0 TouchScreenWin32::TouchScreenWin32(short,short) =====
void __fastcall TouchScreenWin32::TouchScreenWin32(TouchScreenWin32 *this, __int16 a2, __int16 a3)
{
  TouchScreenBase::TouchScreenBase(this, a2, a3);
  *((_DWORD *)this + 100) = 0;
  *(_DWORD *)this = off_95C508;
  *((_DWORD *)this + 109) = off_95C568;
}


// ===== 33d714 EvAcceleration::~EvAcceleration() =====
void __fastcall EvAcceleration::~EvAcceleration(EvAcceleration *this)
{
  ;
}


// ===== 33d718 AccelerometerBase::~AccelerometerBase() =====
void __fastcall AccelerometerBase::~AccelerometerBase(AccelerometerBase *this)
{
  ;
}


// ===== 33d71c AccelerometerBase::~AccelerometerBase() =====
void __fastcall AccelerometerBase::~AccelerometerBase(AccelerometerBase *this)
{
  ;
}


// ===== 33d720 AccelerometerBase::clear(void) =====
_DWORD *__fastcall AccelerometerBase::clear(_DWORD *this)
{
  int v1; // r3
  int v2; // r1
  int v3; // r2

  v1 = *(this + 3);
  v2 = *(this + 1);
  v3 = *(this + 2);
  *(this + 7) = v1;
  *(this + 4) = v2;
  *(this + 5) = v3;
  *(this + 6) = v1;
  *(this + 10) = v1;
  return this;
}


// ===== 33d744 AccelerometerBase::update(double) =====
// attributes: thunk
_DWORD *__fastcall AccelerometerBase::update(_DWORD *this, double a2)
{
  return AccelerometerBase::clear(this);
}


// ===== 33d748 EvAcceleration::~EvAcceleration() =====
void __fastcall EvAcceleration::~EvAcceleration(EvAcceleration *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 33d77c AccelerometerBase::~AccelerometerBase() =====
void __fastcall AccelerometerBase::~AccelerometerBase(AccelerometerBase *this)
{
  AccelerometerBase::~AccelerometerBase(this);
  CustomFree(this);
}


// ===== 33d798 AccelerometerBase::_calcAngles(void) =====
float __fastcall AccelerometerBase::_calcAngles(AccelerometerBase *this)
{
  float v1; // r8
  float v2; // r7
  int v4; // r3
  float v5; // r8
  float v6; // r7
  int v7; // r3
  float v8; // r7
  float v9; // r6
  float result; // r0
  int v11; // r3

  v1 = *((float *)this + 1);
  v2 = *((float *)this + 14);
  *((float *)this + 13) = v2;
  if ( COERCE_FLOAT(LODWORD(v1) & 0x7FFFFFFF) >= 0.001 )
  {
    *((float *)this + 14) = atan2f(*((float *)this + 2), v1);
  }
  else
  {
    v4 = 1070141403;
    if ( v2 <= 0.0 )
      v4 = -1077342245;
    *((_DWORD *)this + 14) = v4;
  }
  v5 = *((float *)this + 2);
  v6 = *((float *)this + 16);
  *((float *)this + 15) = v6;
  if ( COERCE_FLOAT(LODWORD(v5) & 0x7FFFFFFF) >= 0.001 )
  {
    *((float *)this + 16) = atan2f(*((float *)this + 3), v5);
  }
  else
  {
    v7 = 1070141403;
    if ( v6 <= 0.0 )
      v7 = -1077342245;
    *((_DWORD *)this + 16) = v7;
  }
  v8 = *((float *)this + 3);
  v9 = *((float *)this + 14);
  *((float *)this + 17) = v9;
  if ( COERCE_FLOAT(LODWORD(v8) & 0x7FFFFFFF) >= 0.001 )
  {
    result = atan2f(*((float *)this + 1), v8);
    *((float *)this + 18) = result;
  }
  else
  {
    LODWORD(result) = v9 > 0.0;
    v11 = 1070141403;
    if ( v9 <= 0.0 )
      v11 = -1077342245;
    *((_DWORD *)this + 18) = v11;
  }
  return result;
}


// ===== 33d8dc AccelerometerBase::moved(float,float,float) =====
void __fastcall AccelerometerBase::moved(AccelerometerBase *this, float a2, float a3, float a4)
{
  float v4; // r5
  float v6; // r6
  float v7; // r8
  float v8; // r10
  float v9; // r9
  float v10; // r5
  float v11; // r10
  float v12; // r5
  float v13; // r6
  int v14; // r3
  int v15; // r12
  int v16; // r2
  _DWORD v17[5]; // [sp+4h] [bp-14h] BYREF

  v4 = *((float *)this + 7);
  *((float *)this + 2) = a3;
  *((float *)this + 3) = a4;
  *((float *)this + 1) = a2;
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = *((float *)this + 10);
  if ( v4 > a2 )
    v4 = a2;
  *((float *)this + 7) = v4;
  v10 = *((float *)this + 8);
  if ( v9 >= a2 )
    v8 = v9;
  *((float *)this + 10) = v8;
  v11 = *((float *)this + 11);
  if ( v10 > a3 )
    v10 = a3;
  *((float *)this + 8) = v10;
  v12 = *((float *)this + 9);
  if ( v11 >= a3 )
    v6 = v11;
  *((float *)this + 11) = v6;
  v13 = *((float *)this + 12);
  if ( v12 > a4 )
    v12 = a4;
  *((float *)this + 9) = v12;
  if ( v13 >= a4 )
    v7 = v13;
  *((float *)this + 12) = v7;
  AccelerometerBase::_calcAngles(this);
  v14 = *((_DWORD *)this + 3);
  v15 = *((_DWORD *)this + 1);
  v16 = *((_DWORD *)this + 2);
  v17[1] = 6;
  v17[0] = off_95C580;
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v14;
  EventManager::Raise((EventManager *)dword_99F740, (const IEvent *)v17);
}


// ===== 33da0c AccelerometerBase::AccelerometerBase(void) =====
void __fastcall AccelerometerBase::AccelerometerBase(AccelerometerBase *this)
{
  *((_DWORD *)this + 13) = 0;
  *(_DWORD *)this = off_95C598;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 15) = 0;
  AccelerometerBase::_calcAngles(this);
  AccelerometerBase::clear(this);
}


// ===== 33da64 AccelerometerBase::AccelerometerBase(void) =====
void __fastcall AccelerometerBase::AccelerometerBase(AccelerometerBase *this)
{
  *((_DWORD *)this + 13) = 0;
  *(_DWORD *)this = off_95C598;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 15) = 0;
  AccelerometerBase::_calcAngles(this);
  AccelerometerBase::clear(this);
}


// ===== 33dabc `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerBase.cpp =====
int `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1E04 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E00 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 33db44 `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerIPhone.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerIPhone.cpp()
{
  dword_9A1E10 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E0C = 1056964608;
}


// ===== 33db64 AccelerometerIPhone::moved(float,float,float) =====
void __fastcall AccelerometerIPhone::moved(AccelerometerIPhone *this, float a2, float a3, float a4)
{
  AccelerometerBase::moved(
    this,
    COERCE_FLOAT(LODWORD(a2) + 0x80000000),
    COERCE_FLOAT(LODWORD(a3) + 0x80000000),
    COERCE_FLOAT(LODWORD(a4) + 0x80000000));
}


// ===== 33db74 AccelerometerIPhone::~AccelerometerIPhone() =====
void __fastcall AccelerometerIPhone::~AccelerometerIPhone(AccelerometerIPhone *this)
{
  *(_DWORD *)this = off_95C5B0;
  AccelerometerBase::~AccelerometerBase(this);
}


// ===== 33dba8 AccelerometerIPhone::~AccelerometerIPhone() =====
void __fastcall AccelerometerIPhone::~AccelerometerIPhone(AccelerometerIPhone *this)
{
  AccelerometerIPhone::~AccelerometerIPhone(this);
  CustomFree(this);
}


// ===== 33dbc4 AccelerometerIPhone::~AccelerometerIPhone() =====
void __fastcall AccelerometerIPhone::~AccelerometerIPhone(AccelerometerIPhone *this)
{
  *(_DWORD *)this = off_95C5B0;
  AccelerometerBase::~AccelerometerBase(this);
}


// ===== 33dbf8 AccelerometerIPhone::AccelerometerIPhone(void) =====
void __fastcall AccelerometerIPhone::AccelerometerIPhone(AccelerometerIPhone *this)
{
  AccelerometerBase::AccelerometerBase(this);
  *(_DWORD *)this = off_95C5B0;
}


// ===== 33dc2c AccelerometerIPhone::AccelerometerIPhone(void) =====
void __fastcall AccelerometerIPhone::AccelerometerIPhone(AccelerometerIPhone *this)
{
  AccelerometerBase::AccelerometerBase(this);
  *(_DWORD *)this = off_95C5B0;
}


// ===== 33dc60 `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerPS3.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerPS3.cpp()
{
  dword_9A1E1C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E18 = 1056964608;
}


// ===== 33dc80 `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerWin32.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_Accelerometer_AccelerometerWin32.cpp()
{
  dword_9A1E28 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E24 = 1056964608;
}


// ===== 33dca0 NonCopyable::~NonCopyable() =====
void __fastcall NonCopyable::~NonCopyable(NonCopyable *this)
{
  ;
}


// ===== 33dca4 ISerializable::~ISerializable() =====
void __fastcall ISerializable::~ISerializable(ISerializable *this)
{
  ;
}


// ===== 33dca8 ISerializable::Serialize(IStreamBase *) =====
void __fastcall ISerializable::Serialize(ISerializable *this, IStreamBase *a2)
{
  ;
}


// ===== 33dcac ISerializable::Deserialize(IStreamBase *) =====
void __fastcall ISerializable::Deserialize(ISerializable *this, IStreamBase *a2)
{
  ;
}


// ===== 33dcb0 sfc::script::lua::UserData::~UserData() =====
void __fastcall sfc::script::lua::UserData::~UserData(sfc::script::lua::UserData *this)
{
  ;
}


// ===== 33dcb4 sfc::script::lua::UserData::getUDTypeName(void) =====
const char *__fastcall sfc::script::lua::UserData::getUDTypeName(sfc::script::lua::UserData *this)
{
  return "UserData";
}


// ===== 33dcc4 sfc::script::lua::UserData::createBindings(sfc::script::lua::Binder &) =====
void __fastcall sfc::script::lua::UserData::createBindings(
        sfc::script::lua::UserData *this,
        sfc::script::lua::Binder *a2)
{
  ;
}


// ===== 33dcc8 ObjectBase::IsGameObject(void) =====
int __fastcall ObjectBase::IsGameObject(ObjectBase *this)
{
  return 0;
}


// ===== 33dcd0 ObjectBase::IsCharacter(void) =====
int __fastcall ObjectBase::IsCharacter(ObjectBase *this)
{
  return 0;
}


// ===== 33dcd8 ObjectBase::IsPlayer(void) =====
int __fastcall ObjectBase::IsPlayer(ObjectBase *this)
{
  return 0;
}


// ===== 33dce0 ObjectBase::IsDead(void) =====
int __fastcall ObjectBase::IsDead(ObjectBase *this)
{
  return 0;
}


// ===== 33dce8 ObjectBase::IsUpdatable(void) =====
int __fastcall ObjectBase::IsUpdatable(ObjectBase *this)
{
  return 0;
}


// ===== 33dcf0 ObjectBase::setUpdating(bool) =====
int __fastcall ObjectBase::setUpdating(int this, bool a2)
{
  *(_BYTE *)(this + 133) = a2;
  return this;
}


// ===== 33dcf8 ObjectBase::SetVisible(bool) =====
int __fastcall ObjectBase::SetVisible(int this, int a2)
{
  if ( a2 )
    LOBYTE(a2) = *(_BYTE *)(this + 138);
  *(_BYTE *)(this + 128) = a2;
  return this;
}


// ===== 33dd08 ObjectBase::PopulateOutgoingNetStruct(bool) =====
void __fastcall ObjectBase::PopulateOutgoingNetStruct(ObjectBase *this, bool a2)
{
  ;
}


// ===== 33dd0c ObjectBase::InterpretIncomingNetStruct(bool) =====
void __fastcall ObjectBase::InterpretIncomingNetStruct(ObjectBase *this, bool a2)
{
  ;
}


// ===== 33dd10 ObjectBase::IsRemotelyUpdated(void) =====
int __fastcall ObjectBase::IsRemotelyUpdated(ObjectBase *this)
{
  if ( *((_DWORD *)this + 68) == -1 )
    return *((unsigned __int8 *)this + 280);
  else
    return 1;
}


// ===== 33dd24 ConditionData::SetAsTested(bool) =====
int __fastcall ConditionData::SetAsTested(int this, bool a2)
{
  *(_BYTE *)(this + 32) = a2;
  return this;
}


// ===== 33dd2c ObjectBase::GetHandle(void) =====
ObjectBase *__fastcall ObjectBase::GetHandle(ObjectBase *this, int a2)
{
  *(_DWORD *)(*(_DWORD *)(a2 + 44) + 8) = *(_DWORD *)(dword_99F764 + 120);
  memmove(this, *(const void **)(a2 + 44), 0xCu);
  return this;
}


// ===== 33dd70 ObjectBase::GetHandle(void) =====
ObjectBase *__fastcall ObjectBase::GetHandle(ObjectBase *this, int a2)
{
  *(_DWORD *)(*(_DWORD *)(a2 + 44) + 8) = *(_DWORD *)(dword_99F764 + 120);
  memmove(this, *(const void **)(a2 + 44), 0xCu);
  return this;
}


// ===== 33ddb4 ObjectBase::Delete(void) =====
int __fastcall ObjectBase::Delete(int this)
{
  *(_BYTE *)(this + 130) = 2;
  *(_BYTE *)(this + 129) = 1;
  return this;
}


// ===== 33ddc8 ObjectBase::SetEnable(bool) =====
_BYTE *__fastcall ObjectBase::SetEnable(_BYTE *this, int a2)
{
  if ( (unsigned __int8)*(this + 138) != a2 )
  {
    *(this + 138) = a2;
    if ( a2 )
      return (_BYTE *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)this + 68))(this);
    else
      return (_BYTE *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)this + 72))(this);
  }
  return this;
}


// ===== 33de04 ObjectBase::Enabled(void) =====
int __fastcall ObjectBase::Enabled(ObjectBase *this)
{
  (*(void (__fastcall **)(ObjectBase *, int))(*(_DWORD *)this + 64))(this, 1);
  return (*(int (__fastcall **)(ObjectBase *, int))(*(_DWORD *)this + 60))(this, 1);
}


// ===== 33de34 ObjectBase::Disabled(void) =====
int __fastcall ObjectBase::Disabled(ObjectBase *this)
{
  (*(void (__fastcall **)(ObjectBase *, _DWORD))(*(_DWORD *)this + 60))(this, 0);
  return (*(int (__fastcall **)(ObjectBase *, _DWORD))(*(_DWORD *)this + 64))(this, 0);
}


// ===== 33de64 SimpleTypeProperty<bool>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<bool>::IsDefaultValue(int a1, int a2)
{
  return *(unsigned __int8 *)(a2 + *(_DWORD *)(a1 + 4)) == *(unsigned __int8 *)(a1 + 32);
}


// ===== 33de80 SimpleTypeProperty<bool>::SetToDefaultValue(void *) =====
int __fastcall SimpleTypeProperty<bool>::SetToDefaultValue(int result, int a2)
{
  *(_BYTE *)(a2 + *(_DWORD *)(result + 4)) = *(_BYTE *)(result + 32);
  return result;
}


// ===== 33de90 ObjectBase::TestCullingBeforeUpdate(aabb<float> const&) =====
int __fastcall ObjectBase::TestCullingBeforeUpdate(_BYTE *a1, float *a2)
{
  int CurrentLevel; // r0
  int v6; // r11
  float *v7; // r4
  float v8; // r9
  float v9; // r10
  float v10; // r8
  float v11; // [sp+4h] [bp-20h]
  float v12; // [sp+8h] [bp-1Ch]
  float v13; // [sp+Ch] [bp-18h]
  float v14; // [sp+10h] [bp-14h]
  float v15; // [sp+14h] [bp-10h]
  float v16; // [sp+18h] [bp-Ch]

  if ( *(_BYTE *)(GetOnline() + 5) )
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 84))(a1);
  if ( !a1[134] )
  {
    a1[134] = 1;
    return 1;
  }
  if ( a1[134] != 1 )
    return 1;
  v11 = a2[5];
  v16 = *a2;
  v15 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel )
  {
LABEL_21:
    a1[134] = 2;
    return 1;
  }
  v6 = 0;
  v7 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(CurrentLevel + 296) + 8) + 324))(*(_DWORD *)(*(_DWORD *)(CurrentLevel + 296) + 8));
  while ( 1 )
  {
    v8 = v7[3] >= 0.0 ? v16 : v13;
    v9 = v7[4] >= 0.0 ? v15 : v12;
    v10 = v7[5] >= 0.0 ? v14 : v11;
    if ( (float)((float)((float)((float)(v7[3] * v8) + (float)(v7[4] * v9)) + (float)(v7[5] * v10)) + v7[6]) > 0.0 )
      return 0;
    ++v6;
    v7 += 4;
    if ( v6 == 6 )
      goto LABEL_21;
  }
}


// ===== 33e040 IStreamBase::readAs<bool>(bool &) =====
int __fastcall IStreamBase::readAs<bool>(int a1, int a2)
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


// ===== 33e0f0 `non-virtual thunk to'ObjectBase::Deserialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'ObjectBase::Deserialize(ObjectBase *this, IStreamBase *a2)
{
  return ObjectBase::Deserialize((ObjectBase *)((char *)this - 36), a2);
}


// ===== 33e0f8 ObjectBase::Deserialize(IStreamBase *) =====
int __fastcall ObjectBase::Deserialize(ObjectBase *this, IStreamBase *a2)
{
  IStreamBase::readAs<bool>(a2, (char *)this + 128);
  IStreamBase::readAs<bool>(a2, (char *)this + 138);
  ConditionData::SetAsTested((ObjectBase *)((char *)this + 140), 0);
  return ConditionData::SetAsTested((ObjectBase *)((char *)this + 176), 0);
}


// ===== 33e138 IStreamBase::writeAs<bool>(bool const&) =====
int __fastcall IStreamBase::writeAs<bool>(int a1, int a2)
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


// ===== 33e1e8 `non-virtual thunk to'ObjectBase::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'ObjectBase::Serialize(ObjectBase *this, IStreamBase *a2)
{
  return ObjectBase::Serialize((ObjectBase *)((char *)this - 36), a2);
}


// ===== 33e1f0 ObjectBase::Serialize(IStreamBase *) =====
int __fastcall ObjectBase::Serialize(ObjectBase *this, IStreamBase *a2)
{
  IStreamBase::writeAs<bool>(a2, (char *)this + 128);
  return IStreamBase::writeAs<bool>(a2, (char *)this + 138);
}


// ===== 33e218 SimpleTypeProperty<std::string>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<std::string>::ToString(std::string *a1, int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a2 + 4);
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::string::_M_range_initialize(a1, *(const char **)(a3 + v3 + 20), *(const char **)(a3 + v3 + 16));
  return a1;
}


// ===== 33e244 SimpleTypeProperty<std::string>::operator=(SimpleTypeProperty<std::string> const&) =====
int __fastcall SimpleTypeProperty<std::string>::operator=(int a1, int a2)
{
  std::string *v3; // r0

  v3 = (std::string *)(a1 + 8);
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  if ( v3 != (std::string *)(a2 + 8) )
    std::string::_M_assign(v3, *(const char **)(a2 + 28), *(const char **)(a2 + 24));
  if ( a1 + 32 != a2 + 32 )
    std::string::_M_assign((std::string *const)(a1 + 32), *(const char **)(a2 + 52), *(const char **)(a2 + 48));
  return a1;
}


// ===== 33e298 SimpleTypeProperty<std::string>::SetToDefaultValue(void *) =====
std::string *__fastcall SimpleTypeProperty<std::string>::SetToDefaultValue(int a1, int a2)
{
  std::string *v3; // r2
  std::string *result; // r0

  v3 = (std::string *)(a1 + 32);
  result = (std::string *)(a2 + *(_DWORD *)(a1 + 4));
  if ( result != v3 )
    return std::string::_M_assign(result, *(const char **)(a1 + 52), *(const char **)(a1 + 48));
  return result;
}


// ===== 33e2bc ISerializable::~ISerializable() =====
void __fastcall ISerializable::~ISerializable(ISerializable *this)
{
  *(_DWORD *)this = off_95C628;
  CustomFree(this);
}


// ===== 33e2f0 sfc::script::lua::UserData::~UserData() =====
void __fastcall sfc::script::lua::UserData::~UserData(sfc::script::lua::UserData *this)
{
  *(_DWORD *)this = off_95C650;
  CustomFree(this);
}


// ===== 33e324 NonCopyable::~NonCopyable() =====
void __fastcall NonCopyable::~NonCopyable(NonCopyable *this)
{
  *(_DWORD *)this = off_95C668;
  CustomFree(this);
}


// ===== 33e358 SimpleTypeProperty<std::string>::SetDefaultValueFromString(char const*) =====
std::string *__fastcall SimpleTypeProperty<std::string>::SetDefaultValueFromString(int a1, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::string::_M_assign((std::string *const)(a1 + 32), a2, &a2[v4]);
}


// ===== 33e380 SimpleTypeProperty<std::string>::SimpleTypeProperty(void *,char const*,std::string *,std::string) =====
int __fastcall SimpleTypeProperty<std::string>::SimpleTypeProperty(int a1, int a2, char *a3, int a4, int a5)
{
  *(_DWORD *)a1 = &off_95C5E8;
  std::string::string((std::string *)(a1 + 8), a3);
  *(_DWORD *)(a1 + 4) = a4 - a2;
  *(_DWORD *)a1 = &off_95C5C8;
  *(_DWORD *)(a1 + 48) = a1 + 32;
  *(_DWORD *)(a1 + 52) = a1 + 32;
  std::string::_M_range_initialize((std::string *)(a1 + 32), *(const char **)(a5 + 20), *(const char **)(a5 + 16));
  return a1;
}


// ===== 33e404 PropertyMap::AddProperty<std::string>(char const*,std::string &,std::string) =====
void __fastcall PropertyMap::AddProperty<std::string>(PropertyMap *a1, char *a2, int a3, int a4)
{
  const char *v7; // r1
  const char *v8; // r2
  Property *v9; // r8
  std::string v10; // [sp+Ch] [bp-20h] BYREF

  v7 = *(const char **)(a4 + 20);
  v8 = *(const char **)(a4 + 16);
  v10._M_finish = (char *)&v10;
  v10._M_start_of_storage._M_data = (char *)&v10;
  std::string::_M_range_initialize(&v10, v7, v8);
  v9 = (Property *)operator new(0x38u, 0);
  SimpleTypeProperty<std::string>::SimpleTypeProperty((int)v9, (int)a1, a2, a3, (int)&v10);
  PropertyMap::AddProperty(a1, a2, v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
}


// ===== 33e4ac PropertyMap::AddProperty<bool>(char const*,bool &,bool) =====
_DWORD *__fastcall PropertyMap::AddProperty<bool>(PropertyMap *a1, char *a2, int a3, char a4)
{
  int v8; // r8

  v8 = operator new(0x24u, 0);
  *(_DWORD *)v8 = &off_95C5E8;
  std::string::string(v8 + 8, a2);
  *(_DWORD *)(v8 + 4) = a3 - (_DWORD)a1;
  *(_BYTE *)(v8 + 32) = a4;
  *(_DWORD *)v8 = &off_95C608;
  return PropertyMap::AddProperty(a1, a2, (Property *)v8);
}


// ===== 33e538 SimpleTypeProperty<std::string>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<std::string>::IsDefaultValue(_DWORD *a1, int a2)
{
  int v2; // r12
  const void *v3; // r3
  int v4; // r1
  const void *v5; // r0
  size_t v6; // r2

  v2 = a1[12];
  v3 = (const void *)a1[13];
  v4 = a2 + a1[1];
  v5 = *(const void **)(v4 + 20);
  v6 = *(_DWORD *)(v4 + 16) - (_DWORD)v5;
  return v6 == v2 - (_DWORD)v3 && memcmp(v5, v3, v6) == 0;
}


// ===== 33e580 SimpleTypeProperty<bool>::SetDefaultValueFromString(char const*) =====
int __fastcall SimpleTypeProperty<bool>::SetDefaultValueFromString(int a1, char *a2)
{
  *(_BYTE *)(a1 + 32) = 0;
  return StrToObj(a2, (bool *)(a1 + 32));
}


// ===== 33e598 SimpleTypeProperty<bool>::FromString(void *,char const*) =====
int __fastcall SimpleTypeProperty<bool>::FromString(int a1, int a2, char *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a1 + 4);
  *(_BYTE *)(a2 + v3) = 0;
  return StrToObj(a3, (bool *)(a2 + v3));
}


// ===== 33e5b0 SimpleTypeProperty<bool>::ToString(void *) =====
int __fastcall SimpleTypeProperty<bool>::ToString(int a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (bool *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 33e5f8 ConditionData::IsTrue(void) =====
int __fastcall ConditionData::IsTrue(ConditionData *this)
{
  ConditionList *v1; // r0

  if ( *((_BYTE *)this + 32) )
    return 1;
  v1 = *((ConditionList **)this + 7);
  if ( !v1 )
    return 1;
  else
    return ConditionList::Eval(v1);
}


// ===== 33e61c ObjectBase::TestDisableCondition(bool) =====
int __fastcall ObjectBase::TestDisableCondition(ObjectBase *this, int a2)
{
  int v4; // r3
  int v5; // r3

  v4 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  if ( v4 )
  {
    v5 = *(_DWORD *)(v4 + 5352);
    if ( !v5 || !*(_BYTE *)(v5 + 20) )
      return *((unsigned __int8 *)this + 138);
  }
  if ( *((_BYTE *)this + 208) || !*((_DWORD *)this + 51) )
    return *((unsigned __int8 *)this + 138);
  if ( !ConditionData::IsTrue((ObjectBase *)((char *)this + 176)) )
  {
    ObjectBase::SetEnable(this, 0);
    if ( a2 )
      ConditionData::SetAsTested((ObjectBase *)((char *)this + 176), 1);
  }
  return *((unsigned __int8 *)this + 138);
}


// ===== 33e6d4 ObjectBase::TestEnableCondition(bool) =====
int __fastcall ObjectBase::TestEnableCondition(ObjectBase *this, int a2)
{
  int v4; // r3
  int v5; // r3
  int CurrentLevel; // r0
  int v7; // r3
  int v9; // r1

  v4 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  if ( !v4 || (v5 = *(_DWORD *)(v4 + 5352)) != 0 && *(_BYTE *)(v5 + 20) )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
    {
      v7 = *((_DWORD *)this + 59);
      if ( v7 == -1 )
        v7 = 0;
      if ( v7 > *(_DWORD *)(CurrentLevel + 280) )
        goto LABEL_8;
      v9 = *((unsigned __int8 *)this + 241) ^ 1;
    }
    else
    {
      v9 = *((unsigned __int8 *)this + 241) ^ 1;
    }
    if ( !v9 || !ConditionData::IsTrue((ObjectBase *)((char *)this + 140)) )
    {
LABEL_8:
      ObjectBase::SetEnable(this, 0);
      return *((unsigned __int8 *)this + 138);
    }
    ObjectBase::SetEnable(this, 1);
    if ( a2 )
      ConditionData::SetAsTested((ObjectBase *)((char *)this + 140), 1);
  }
  return *((unsigned __int8 *)this + 138);
}


// ===== 33e7c8 ConditionData::Clear(void) =====
void __fastcall ConditionData::Clear(ConditionData *this)
{
  void *v1; // r4

  v1 = *((void **)this + 7);
  if ( v1 )
  {
    ConditionList::~ConditionList(*((ConditionList **)this + 7));
    CustomFree(v1);
    *((_DWORD *)this + 7) = 0;
  }
}


// ===== 33e7f8 ConditionData::~ConditionData() =====
void __fastcall ConditionData::~ConditionData(ConditionData *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v1; // r4

  *(_DWORD *)this = off_95C700;
  v1 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 4);
  ConditionData::Clear(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v1);
}


// ===== 33e838 `non-virtual thunk to'ObjectBase::~ObjectBase() =====
void __fastcall `non-virtual thunk to'ObjectBase::~ObjectBase(ObjectBase *this)
{
  ObjectBase::~ObjectBase((ObjectBase *)((char *)this - 36));
}


// ===== 33e840 ObjectBase::~ObjectBase() =====
void __fastcall ObjectBase::~ObjectBase(ObjectBase *this)
{
  bool v1; // zf
  void *v3; // r0

  v1 = *((_BYTE *)this + 41) == 0;
  *(_DWORD *)this = off_95C678;
  *((_DWORD *)this + 1) = &off_95C6D8;
  *((_DWORD *)this + 9) = off_95C6E4;
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
        "!IsLocked()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectBase.cpp",
        113);
    }
  }
  v3 = *((void **)this + 11);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 11) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 212));
  ConditionData::~ConditionData((ObjectBase *)((char *)this + 176));
  ConditionData::~ConditionData((ObjectBase *)((char *)this + 140));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 104));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 2);
  *((_DWORD *)this + 9) = off_95C628;
  *((_DWORD *)this + 1) = &off_95C640;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 33e974 `non-virtual thunk to'ObjectBase::~ObjectBase() =====
void __fastcall `non-virtual thunk to'ObjectBase::~ObjectBase(ObjectBase *this)
{
  ObjectBase::~ObjectBase((ObjectBase *)((char *)this - 36));
}


// ===== 33e97c ObjectBase::~ObjectBase() =====
void __fastcall ObjectBase::~ObjectBase(ObjectBase *this)
{
  ObjectBase::~ObjectBase(this);
  CustomFree(this);
}


// ===== 33e998 ObjectBase::~ObjectBase() =====
void __fastcall ObjectBase::~ObjectBase(ObjectBase *this)
{
  bool v1; // zf
  void *v3; // r0

  v1 = *((_BYTE *)this + 41) == 0;
  *(_DWORD *)this = off_95C678;
  *((_DWORD *)this + 1) = &off_95C6D8;
  *((_DWORD *)this + 9) = off_95C6E4;
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
        "!IsLocked()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectBase.cpp",
        113);
    }
  }
  v3 = *((void **)this + 11);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 11) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 212));
  ConditionData::~ConditionData((ObjectBase *)((char *)this + 176));
  ConditionData::~ConditionData((ObjectBase *)((char *)this + 140));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 104));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 2);
  *((_DWORD *)this + 9) = off_95C628;
  *((_DWORD *)this + 1) = &off_95C640;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 33eacc ConditionData::~ConditionData() =====
void __fastcall ConditionData::~ConditionData(ConditionData *this)
{
  ConditionData::~ConditionData(this);
  CustomFree(this);
}


// ===== 33eae8 ConditionData::~ConditionData() =====
void __fastcall ConditionData::~ConditionData(ConditionData *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v1; // r4

  *(_DWORD *)this = off_95C700;
  v1 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 4);
  ConditionData::Clear(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v1);
}


// ===== 33eb28 ConditionData::Init(void) =====
int __fastcall ConditionData::Init(int this)
{
  const char *v1; // r5
  int v2; // r10
  int v3; // r6
  int v4; // r4
  int v5; // r7
  ConditionList *v6; // r5

  v1 = *(const char **)(this + 24);
  v2 = this;
  if ( *(const char **)(this + 20) != v1 )
  {
    this = LC_API_STRCMP_0(*(const char **)(this + 24), "Invalid");
    if ( this )
    {
      v3 = Arrays::v2Conditions::size;
      if ( Arrays::v2Conditions::size )
      {
        v4 = 0;
        v5 = Arrays::v2Conditions::m_memberNames;
        while ( 1 )
        {
          this = LC_API_STRCMP_0(v1, *(const char **)(v5 + 4 * v4));
          if ( !this )
            break;
          if ( ++v4 == v3 )
            return this;
        }
        if ( v4 != -1 )
        {
          v6 = (ConditionList *)operator new(0xCu, 0);
          ConditionList::ConditionList(v6);
          *(_DWORD *)(v2 + 28) = v6;
          return ConditionList::AssignPyData(
                   v6,
                   *(Structs::v2ConditionStub **)(Arrays::v2Conditions::members + 16 * v4 + 8),
                   *(_DWORD *)(Arrays::v2Conditions::members + 16 * v4 + 4));
        }
      }
    }
  }
  return this;
}


// ===== 33ec0c ObjectBase::InitPost(void) =====
int __fastcall ObjectBase::InitPost(ObjectBase *this)
{
  int result; // r0
  const char *v3; // r5
  int v4; // r6
  int v5; // r4
  int v6; // r7

  ConditionData::Init((ObjectBase *)((char *)this + 140));
  result = ConditionData::Init((ObjectBase *)((char *)this + 176));
  v3 = *((const char **)this + 58);
  if ( v3 != *((const char **)this + 57) )
  {
    v4 = Arrays::GameDifficulties::size;
    if ( Arrays::GameDifficulties::size )
    {
      v5 = 0;
      v6 = Arrays::GameDifficulties::m_memberNames;
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
    *((_DWORD *)this + 59) = v5;
  }
  return result;
}


// ===== 33eca0 `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectBase.cpp =====
int `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1E34 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E30 = 1056964608;
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


// ===== 33ed7c ConditionData::ConditionData(void) =====
void __fastcall ConditionData::ConditionData(ConditionData *this)
{
  char *v2; // r0

  *(_DWORD *)this = off_95C700;
  v2 = (char *)this + 4;
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 7) = 0;
}


// ===== 33edd8 ConditionData::ConditionData(void) =====
void __fastcall ConditionData::ConditionData(ConditionData *this)
{
  char *v2; // r0

  *(_DWORD *)this = off_95C700;
  v2 = (char *)this + 4;
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 7) = 0;
}


// ===== 33ee34 SimpleTypeProperty<std::string>::Clone(void) =====
_DWORD *__fastcall SimpleTypeProperty<std::string>::Clone(int a1)
{
  _DWORD *v2; // r4

  v2 = (_DWORD *)operator new(0x38u, 0);
  *v2 = &off_95C5E8;
  v2[6] = v2 + 2;
  v2[7] = v2 + 2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2 + 2, 0x10u);
  *(_BYTE *)v2[6] = 0;
  *v2 = &off_95C5C8;
  v2[12] = v2 + 8;
  v2[13] = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2 + 8, 0x10u);
  *(_BYTE *)v2[12] = 0;
  SimpleTypeProperty<std::string>::operator=((int)v2, a1);
  return v2;
}


// ===== 33eed8 SimpleTypeProperty<bool>::Clone(void) =====
int __fastcall SimpleTypeProperty<bool>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x24u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2 + 8, 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)v2 = &off_95C608;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_BYTE *)(v2 + 32) = *(_BYTE *)(a1 + 32);
  return v2;
}


// ===== 33ef7c PropertyMap::AddProperty<std::string>(char const*,std::string &) =====
void __fastcall PropertyMap::AddProperty<std::string>(int a1, int a2, int a3)
{
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+4h] [bp-1Ch] BYREF

  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v6, 0x10u);
  *v6._M_finish = 0;
  PropertyMap::AddProperty<std::string>(a1, a2, a3, &v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
}


// ===== 33f00c `non-virtual thunk to'ObjectBase::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'ObjectBase::DeclareProperties(ObjectBase *this)
{
  return ObjectBase::DeclareProperties((ObjectBase *)((char *)this - 4));
}


// ===== 33f014 ObjectBase::DeclareProperties(void) =====
int __fastcall ObjectBase::DeclareProperties(ObjectBase *this)
{
  char *v2; // r5

  v2 = (char *)this + 4;
  PropertyMap::AddProperty<bool>((char *)this + 4, "static", (char *)this + 132, *((unsigned __int8 *)this + 132));
  PropertyMap::AddProperty<bool>(v2, "visible", (char *)this + 128, 1);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"name", (int)this + 48);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"gametype", (int)this + 72);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"roomname", (int)this + 104);
  PropertyMap::AddProperty<bool>(v2, "isUnderlay", (char *)this + 131, 0);
  PropertyMap::AddProperty<bool>(v2, "isGlobal", (char *)this + 135, 0);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"activate_cond", (int)this + 144);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"deactivate_cond", (int)this + 180);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"min_difficulty", (int)this + 212);
  PropertyMap::AddProperty<bool>(v2, "is_tutorial_only", (char *)this + 240, 0);
  return PropertyMap::AddProperty<bool>(v2, "is_demo_only", (char *)this + 241, 0);
}


// ===== 33f15c ObjectBase::ObjectBase(ObjectBase::GO_IDS) =====
int __fastcall ObjectBase::ObjectBase(int a1, int a2)
{
  ObjectHandle *v4; // r5

  *(_DWORD *)a1 = off_95C650;
  *(_DWORD *)(a1 + 4) = &off_95C640;
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 8, 0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95C678;
  *(_DWORD *)(a1 + 4) = &off_95C6D8;
  *(_DWORD *)(a1 + 36) = off_95C6E4;
  *(_DWORD *)(a1 + 32) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_BYTE *)(a1 + 41) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 48, 0x10u);
  **(_BYTE **)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 88) = a1 + 72;
  *(_DWORD *)(a1 + 92) = a1 + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 72, 0x10u);
  **(_BYTE **)(a1 + 88) = 0;
  *(_BYTE *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 120) = a1 + 104;
  *(_DWORD *)(a1 + 124) = a1 + 104;
  *(_DWORD *)(a1 + 100) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 104, 0x10u);
  **(_BYTE **)(a1 + 120) = 0;
  *(_BYTE *)(a1 + 138) = 1;
  *(_BYTE *)(a1 + 129) = 0;
  *(_BYTE *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 133) = 0;
  *(_BYTE *)(a1 + 134) = 0;
  *(_BYTE *)(a1 + 136) = 0;
  *(_BYTE *)(a1 + 137) = 0;
  ConditionData::ConditionData((ConditionData *)(a1 + 140));
  ConditionData::ConditionData((ConditionData *)(a1 + 176));
  *(_DWORD *)(a1 + 228) = a1 + 212;
  *(_DWORD *)(a1 + 232) = a1 + 212;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 212, 0x10u);
  **(_BYTE **)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_BYTE *)(a1 + 240) = 0;
  *(_BYTE *)(a1 + 241) = 0;
  *(_BYTE *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_BYTE *)(a1 + 268) = 0;
  *(_BYTE *)(a1 + 280) = 0;
  *(_BYTE *)(a1 + 281) = 0;
  *(_DWORD *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 244) = a2;
  *(_DWORD *)(a1 + 272) = -1;
  *(_DWORD *)(a1 + 236) = -1;
  *(_DWORD *)(a1 + 264) = -1;
  v4 = (ObjectHandle *)operator new(12, 0);
  ObjectHandle::ObjectHandle(v4);
  *(_DWORD *)(a1 + 44) = v4;
  *((_DWORD *)v4 + 1) = a1;
  return a1;
}


// ===== 33f310 ObjectBase::ObjectBase(ObjectBase::GO_IDS) =====
int __fastcall ObjectBase::ObjectBase(int a1, int a2)
{
  ObjectHandle *v4; // r5

  *(_DWORD *)a1 = off_95C650;
  *(_DWORD *)(a1 + 4) = &off_95C640;
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 8, 0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95C678;
  *(_DWORD *)(a1 + 4) = &off_95C6D8;
  *(_DWORD *)(a1 + 36) = off_95C6E4;
  *(_DWORD *)(a1 + 32) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_BYTE *)(a1 + 41) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 48, 0x10u);
  **(_BYTE **)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 88) = a1 + 72;
  *(_DWORD *)(a1 + 92) = a1 + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 72, 0x10u);
  **(_BYTE **)(a1 + 88) = 0;
  *(_BYTE *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 120) = a1 + 104;
  *(_DWORD *)(a1 + 124) = a1 + 104;
  *(_DWORD *)(a1 + 100) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 104, 0x10u);
  **(_BYTE **)(a1 + 120) = 0;
  *(_BYTE *)(a1 + 138) = 1;
  *(_BYTE *)(a1 + 129) = 0;
  *(_BYTE *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 133) = 0;
  *(_BYTE *)(a1 + 134) = 0;
  *(_BYTE *)(a1 + 136) = 0;
  *(_BYTE *)(a1 + 137) = 0;
  ConditionData::ConditionData((ConditionData *)(a1 + 140));
  ConditionData::ConditionData((ConditionData *)(a1 + 176));
  *(_DWORD *)(a1 + 228) = a1 + 212;
  *(_DWORD *)(a1 + 232) = a1 + 212;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 212, 0x10u);
  **(_BYTE **)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_BYTE *)(a1 + 240) = 0;
  *(_BYTE *)(a1 + 241) = 0;
  *(_BYTE *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_BYTE *)(a1 + 268) = 0;
  *(_BYTE *)(a1 + 280) = 0;
  *(_BYTE *)(a1 + 281) = 0;
  *(_DWORD *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 244) = a2;
  *(_DWORD *)(a1 + 272) = -1;
  *(_DWORD *)(a1 + 236) = -1;
  *(_DWORD *)(a1 + 264) = -1;
  v4 = (ObjectHandle *)operator new(12, 0);
  ObjectHandle::ObjectHandle(v4);
  *(_DWORD *)(a1 + 44) = v4;
  *((_DWORD *)v4 + 1) = a1;
  return a1;
}


// ===== 33f4c4 SimpleTypeProperty<std::string>::FromString(void *,char const*) =====
std::string *__fastcall SimpleTypeProperty<std::string>::FromString(int a1, int a2, char *a3)
{
  const char *v6; // r2

  v6 = &a3[LC_API_STRLEN_0(a3)];
  return std::string::_M_assign((std::string *const)(a2 + *(_DWORD *)(a1 + 4)), a3, v6);
}


// ===== 33f4f4 ObjectHandle::ObjectHandle(void) =====
void __fastcall ObjectHandle::ObjectHandle(ObjectHandle *this)
{
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = 0;
}


// ===== 33f50c ObjectHandle::ObjectHandle(void) =====
void __fastcall ObjectHandle::ObjectHandle(ObjectHandle *this)
{
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = 0;
}


// ===== 33f524 ObjectHandle::ObjectHandle(ObjectBase *) =====
void __fastcall ObjectHandle::ObjectHandle(ObjectHandle *this, ObjectBase *a2)
{
  int v3; // r1
  int v4; // r2
  _DWORD v5[5]; // [sp+0h] [bp-14h] BYREF

  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = -1;
  *(_DWORD *)this = 0;
  if ( a2 )
  {
    ObjectBase::GetHandle((ObjectBase *)v5, (int)a2);
    v3 = v5[1];
    v4 = v5[2];
    *(_DWORD *)this = v5[0];
    *((_DWORD *)this + 1) = v3;
    *((_DWORD *)this + 2) = v4;
  }
}


// ===== 33f578 ObjectHandle::ObjectHandle(ObjectBase *) =====
void __fastcall ObjectHandle::ObjectHandle(ObjectHandle *this, ObjectBase *a2)
{
  int v3; // r1
  int v4; // r2
  _DWORD v5[5]; // [sp+0h] [bp-14h] BYREF

  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = -1;
  *(_DWORD *)this = 0;
  if ( a2 )
  {
    ObjectBase::GetHandle((ObjectBase *)v5, (int)a2);
    v3 = v5[1];
    v4 = v5[2];
    *(_DWORD *)this = v5[0];
    *((_DWORD *)this + 1) = v3;
    *((_DWORD *)this + 2) = v4;
  }
}


// ===== 33f5cc `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectHandle.cpp =====
int `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectHandle.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1E40 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E3C = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 33f654 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_create_node(std::pair<int const,ObjectListItem> const&) =====
std::string *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_create_node(
        int a1,
        int a2)
{
  std::string *v3; // r0
  char *v4; // r3
  std::string *v5; // r4
  char *v6; // r2
  size_t v8; // [sp+4h] [bp-8h] BYREF

  v8 = 48;
  v3 = (std::string *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v8);
  v4 = *(char **)a2;
  v5 = v3;
  v3 = (std::string *)((char *)v3 + 20);
  *(_DWORD *)&v5[1]._M_buffers._M_static_buf[12] = v3;
  v5->_M_finish = v4;
  v5[1]._M_finish = (char *)v3;
  std::string::_M_range_initialize(v3, *(const char **)(a2 + 24), *(const char **)(a2 + 20));
  v6 = *(char **)(a2 + 28);
  *(_DWORD *)&v5->_M_buffers._M_static_buf[12] = 0;
  v5[1]._M_start_of_storage._M_data = v6;
  *(_DWORD *)&v5->_M_buffers._M_static_buf[8] = 0;
  return v5;
}


// ===== 33f6b4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,ObjectListItem> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
std::string **__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_create_node(
             (int)a2,
             (int)a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_create_node(
           (int)a2,
           (int)a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_create_node(
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


// ===== 33f78c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(std::pair<int const,ObjectListItem> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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


// ===== 33f914 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,ObjectListItem>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>>,std::pair<int const,ObjectListItem> const&) =====
std::string **__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
        std::string **a1,
        std::string *a2,
        std::string **a3,
        int *a4)
{
  std::string *v4; // r4
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  std::string *i; // r12
  int v13; // r2
  int M_finish; // r12
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
        (int)&v22,
        a2,
        a4);
      *a1 = v22;
      return a1;
    }
    v13 = *a4;
    M_finish = (int)v4->_M_finish;
    if ( *a4 < M_finish )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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
      if ( v13 >= (int)i->_M_finish )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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
        v9 = (int)v4->_M_finish;
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
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
          if ( a2 == i || v8 < (int)i->_M_finish )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 33fc88 std::map<int,ObjectListItem,std::less<int>,std::allocator<std::pair<int const,ObjectListItem>>>::operator[]<uint>(uint const&) =====
std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *__fastcall std::map<int,ObjectListItem>::operator[]<unsigned int>(
        int a1,
        int *a2)
{
  int v2; // r4
  int v4; // r7
  int v5; // r2
  int v6; // r3
  bool v7; // cc
  int v8; // r3
  std::string *v9; // r0
  std::string *v11; // r4
  std::string *v12; // [sp+0h] [bp-48h] BYREF
  std::string *v13; // [sp+4h] [bp-44h] BYREF
  int v14; // [sp+8h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+Ch] [bp-3Ch] BYREF
  int v16; // [sp+24h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+28h] [bp-20h] BYREF
  int v18; // [sp+40h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = *(_DWORD *)(v2 + 16);
      v7 = v6 < v4;
      if ( v6 >= v4 )
        v8 = *(_DWORD *)(v2 + 8);
      else
        v8 = *(_DWORD *)(v2 + 12);
      if ( v7 )
        v2 = v5;
      if ( !v8 )
        break;
      v5 = v2;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = (std::string *)v2, *(_DWORD *)(v2 + 16) > v4) )
  {
    v17._M_finish = (char *)&v17;
    v17._M_start_of_storage._M_data = (char *)&v17;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v17, 0x10u);
    *v17._M_finish = 0;
    v14 = v4;
    v18 = 0;
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize((std::string *)&v15, v17._M_start_of_storage._M_data, v17._M_finish);
    v16 = v18;
    v12 = (std::string *)v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
      &v13,
      (std::string *)a1,
      &v12,
      &v14);
    v11 = v13;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    v9 = v11;
  }
  return &v9->_M_start_of_storage;
}


// ===== 33fdc0 ObjectHandle::GetObject(bool) =====
char *__fastcall ObjectHandle::GetObject(char **this, int a2)
{
  char *M_data; // r4
  char *v5; // r8

  M_data = *this;
  if ( *this )
  {
    M_data = *(this + 1);
    v5 = *(char **)(dword_99F764 + 120);
    if ( !M_data || *(this + 2) != v5 )
    {
      M_data = std::map<int,ObjectListItem>::operator[]<unsigned int>(dword_99F764 + 12, (int *)this)[6]._M_data;
      *(this + 1) = M_data;
      *(this + 2) = v5;
    }
  }
  if ( a2 && !M_data )
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
        "obj",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectHandle.cpp",
        49);
    }
  }
  return M_data;
}


// ===== 33feac ObjectHandle::operator GameObject const*(void) =====
char *__fastcall ObjectHandle::operator GameObject const*(char **a1)
{
  char *Object; // r0
  char *v2; // r4

  Object = ObjectHandle::GetObject(a1, 0);
  v2 = Object;
  if ( Object && (*(int (__fastcall **)(char *))(*(_DWORD *)Object + 32))(Object) )
    return v2;
  else
    return nullptr;
}


// ===== 33fee4 ObjectHandle::operator GameObject *(void) =====
char *__fastcall ObjectHandle::operator GameObject *(char **a1)
{
  char *Object; // r0
  char *v2; // r4

  Object = ObjectHandle::GetObject(a1, 0);
  v2 = Object;
  if ( Object && (*(int (__fastcall **)(char *))(*(_DWORD *)Object + 32))(Object) )
    return v2;
  else
    return nullptr;
}


// ===== 33ff1c ObjectHandle::operator Character const*(void) =====
char *__fastcall ObjectHandle::operator Character const*(char **a1)
{
  char *Object; // r0
  char *v2; // r4

  Object = ObjectHandle::GetObject(a1, 0);
  v2 = Object;
  if ( Object && (*(int (__fastcall **)(char *))(*(_DWORD *)Object + 36))(Object) )
    return v2;
  else
    return nullptr;
}


// ===== 33ff54 ObjectHandle::operator Character *(void) =====
char *__fastcall ObjectHandle::operator Character *(char **a1)
{
  char *Object; // r0
  char *v2; // r4

  Object = ObjectHandle::GetObject(a1, 0);
  v2 = Object;
  if ( Object && (*(int (__fastcall **)(char *))(*(_DWORD *)Object + 36))(Object) )
    return v2;
  else
    return nullptr;
}


// ===== 33ff8c ObjectHandle::GetObject(bool) =====
// attributes: thunk
char *__fastcall ObjectHandle::GetObject(char **this, int a2)
{
  return _ZN12ObjectHandle9GetObjectEb(this, a2);
}


// ===== 33ff90 Random::GetRandom(int,bool) =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  int *v3; // r3
  int v4; // r2
  unsigned int v5; // r2
  int v6; // r2
  int v7; // r2

  if ( a2 )
  {
    v3 = &Random::s_syncedSeed;
    v4 = Random::s_syncedSeed;
  }
  else
  {
    v3 = &Random::s_seed;
    v4 = Random::s_seed;
  }
  if ( this )
  {
    v5 = (59051 * v4 + 177149) % 0xDAF26Bu;
    *v3 = v5;
    this = abs32(v5 % this);
  }
  if ( a2 )
    v6 = dword_99F8A8;
  else
    v6 = Random::s_debugRandomCounters;
  v7 = v6 + 1;
  if ( a2 )
    dword_99F8A8 = v7;
  else
    Random::s_debugRandomCounters = v7;
  return this;
}


// ===== 340054 GameObject::IsGameObject(void) =====
int __fastcall GameObject::IsGameObject(GameObject *this)
{
  return 1;
}


// ===== 34005c GameObject::IsUpdatingPath(void) =====
int __fastcall GameObject::IsUpdatingPath(GameObject *this)
{
  return 1;
}


// ===== 340064 GameObject::IsUpdatingPositionFromVisual(void) =====
int __fastcall GameObject::IsUpdatingPositionFromVisual(GameObject *this)
{
  return 0;
}


// ===== 34006c GameObject::IsUpdatingPositionFromPhysics(void) =====
int __fastcall GameObject::IsUpdatingPositionFromPhysics(GameObject *this)
{
  return 1;
}


// ===== 340074 GameObject::IsUpdatingRotationFromVisual(void) =====
int __fastcall GameObject::IsUpdatingRotationFromVisual(GameObject *this)
{
  return 0;
}


// ===== 34007c GameObject::IsUpdatingRotationFromPhysics(void) =====
int __fastcall GameObject::IsUpdatingRotationFromPhysics(GameObject *this)
{
  return 0;
}


// ===== 340084 GameObject::IsUpdatingVisualWithRotation(void) =====
int __fastcall GameObject::IsUpdatingVisualWithRotation(GameObject *this)
{
  return 1;
}


// ===== 34008c GameObject::IsValidatingFloorPosition(void) =====
int __fastcall GameObject::IsValidatingFloorPosition(GameObject *this)
{
  int result; // r0

  result = *((unsigned __int8 *)this + 132);
  if ( result )
    return 2;
  return result;
}


// ===== 34009c GameObject::IsValidatingCameraLimits(void) =====
int __fastcall GameObject::IsValidatingCameraLimits(GameObject *this)
{
  return 0;
}


// ===== 3400a4 GameObject::IsAvoidingObstacles(void) =====
int __fastcall GameObject::IsAvoidingObstacles(GameObject *this)
{
  return 0;
}


// ===== 3400ac GameObject::IsDead(void) =====
int __fastcall GameObject::IsDead(GameObject *this)
{
  return 0;
}


// ===== 3400b4 GameObject::IsHit(void) =====
int __fastcall GameObject::IsHit(GameObject *this)
{
  return 0;
}


// ===== 3400bc GameObject::Interact(GameObject*) =====
void __fastcall GameObject::Interact(GameObject *this, GameObject *a2)
{
  ;
}


// ===== 3400c0 GameObject::GetFXScale(void) =====
_DWORD *__fastcall GameObject::GetFXScale(_DWORD *this, _DWORD *a2)
{
  *this = a2[72];
  *(this + 1) = a2[73];
  *(this + 2) = a2[74];
  return this;
}


// ===== 3400dc GameObject::GetFXScaleValue(void) =====
int __fastcall GameObject::GetFXScaleValue(GameObject *this)
{
  return -1;
}


// ===== 3400e4 GameObject::GetSpeed(void) =====
int __fastcall GameObject::GetSpeed(GameObject *this)
{
  return 1082130432;
}


// ===== 3400f0 GameObject::GetRotationSpeed(void) =====
int __fastcall GameObject::GetRotationSpeed(GameObject *this)
{
  return -1082130432;
}


// ===== 3400fc GameObject::GetFocusObject(void) =====
int __fastcall GameObject::GetFocusObject(GameObject *this)
{
  return 0;
}


// ===== 340104 GameObject::IsObstacle(void) =====
int __fastcall GameObject::IsObstacle(GameObject *this)
{
  return 0;
}


// ===== 34010c GameObject::GetObstacleRadius(void) =====
int __fastcall GameObject::GetObstacleRadius(GameObject *this)
{
  return 0;
}


// ===== 340114 GameObject::GetObstacleStrength(void) =====
int __fastcall GameObject::GetObstacleStrength(GameObject *this)
{
  return 0;
}


// ===== 34011c GameObject::GetOpacity(void) =====
int __fastcall GameObject::GetOpacity(GameObject *this)
{
  return 1065353216;
}


// ===== 340124 GameObject::getUDTypeName(void) =====
const char *__fastcall GameObject::getUDTypeName(GameObject *this)
{
  return "GameObject";
}


// ===== 340134 Dummy::IsUpdatable(void) =====
int __fastcall Dummy::IsUpdatable(Dummy *this)
{
  return 0;
}


// ===== 34013c Dummy::IsZonable(void) =====
int __fastcall Dummy::IsZonable(Dummy *this)
{
  return 0;
}


// ===== 340144 Dummy::IsAnimated(void) =====
int __fastcall Dummy::IsAnimated(Dummy *this)
{
  return 0;
}


// ===== 34014c Dummy::IsInteractive(GameObject *) =====
int __fastcall Dummy::IsInteractive(Dummy *this, GameObject *a2)
{
  return 0;
}


// ===== 340154 DBG_DisplayPointAsBox(glitch::core::vector3d<float> const&,glitch::video::SColor const&,int) =====
int __fastcall DBG_DisplayPointAsBox(float *a1, unsigned __int8 *a2, int a3)
{
  float v3; // r10
  int v5; // r4
  float v7; // r0
  float v8; // r8
  float v9; // r7
  int v10; // r12
  int v11; // r1
  int v12; // r2
  float v14[7]; // [sp+8h] [bp-1Ch] BYREF

  v3 = *a1;
  v5 = *(_DWORD *)(dword_99F73C + 16);
  v7 = (float)(a3 / 2);
  v8 = a1[1];
  v9 = a1[2];
  v14[0] = v3 - v7;
  v14[1] = v8 - v7;
  v10 = a2[2];
  v11 = a2[3];
  v12 = *a2 | (a2[1] << 8);
  v14[2] = v9 - v7;
  v14[3] = v3 + v7;
  v14[4] = v7 + v8;
  v14[5] = v7 + v9;
  return (*(int (__fastcall **)(int, float *, int))(*(_DWORD *)v5 + 40))(v5, v14, v12 | (v10 << 16) | (v11 << 24));
}


// ===== 34024c ObjectManager::Draw2D(void) =====
void __fastcall ObjectManager::Draw2D(ObjectManager *this)
{
  ;
}


// ===== 340250 ObjectManager::DoOnlineStateFlush(void) =====
__int64 __fastcall ObjectManager::DoOnlineStateFlush(ObjectManager *this)
{
  _DWORD *v1; // r3
  __int64 result; // r0

  v1 = *((_DWORD **)this + 64);
  result = (unsigned int)this + 256;
  while ( (_DWORD *)result != v1 )
  {
    *(_BYTE *)(v1[2] + 281) = 0;
    v1 = (_DWORD *)*v1;
  }
  return result;
}


// ===== 340274 ObjectManager::DoRemoteUpdateUpdate(float) =====
float __fastcall ObjectManager::DoRemoteUpdateUpdate(float this, float a2)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r7
  int v5; // r4

  v3 = (_DWORD *)(LODWORD(this) + 256);
  v2 = *(_DWORD **)(LODWORD(this) + 256);
  if ( (_DWORD *)(LODWORD(this) + 256) != v2 )
  {
    do
    {
      v5 = v2[2];
      this = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v5 + 84))(v5));
      if ( this != 0.0 )
      {
        this = a2;
        if ( *(float *)(v5 + 276) < 50.0 )
        {
          this = a2 + *(float *)(v5 + 276);
          *(float *)(v5 + 276) = this;
        }
        else
        {
          *(_DWORD *)(v5 + 276) = 0;
          *(_DWORD *)(v5 + 272) = -1;
        }
      }
      v2 = (_DWORD *)*v2;
    }
    while ( v3 != v2 );
  }
  return this;
}


// ===== 3402f4 ObjectManager::GetNetworkIdByObjectBase(ObjectBase const*) =====
int __fastcall ObjectManager::GetNetworkIdByObjectBase(ObjectManager *this, const ObjectBase *a2)
{
  if ( a2 )
    return *((_DWORD *)a2 + 66);
  else
    return -1;
}


// ===== 340304 ObjectManager::DBG_DumpRoomObjects(void) =====
char *__fastcall ObjectManager::DBG_DumpRoomObjects(ObjectManager *this)
{
  char *result; // r0
  char *i; // r1
  char *v3; // t1
  _DWORD **v4; // r2
  _DWORD *j; // r3

  v3 = *((char **)this + 32);
  result = (char *)this + 128;
  for ( i = v3; result != i; i = *(char **)i )
  {
    v4 = *((_DWORD ***)i + 2);
    for ( j = *v4; v4 != j; j = (_DWORD *)*j )
      ;
  }
  return result;
}


// ===== 34033c glitch::core::plane3d<float>::getIntersectionWithLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float>&) =====
int __fastcall glitch::core::plane3d<float>::getIntersectionWithLine(float *a1, float *a2, float *a3, float *a4)
{
  float v4; // r7
  float v5; // r9
  float v7; // r8
  float v8; // r5
  float v9; // r0
  float v10; // [sp+8h] [bp-Ch]
  float v11; // [sp+Ch] [bp-8h]

  v4 = a1[1];
  v10 = a3[1];
  v5 = a3[2];
  v11 = (float)((float)(*a1 * *a3) + (float)(v4 * v10)) + (float)(a1[2] * v5);
  if ( v11 == 0.0 )
    return 0;
  v7 = a2[1];
  v8 = a2[2];
  v9 = COERCE_FLOAT(COERCE_INT((float)((float)((float)(*a1 * *a2) + (float)(v4 * v7)) + (float)(a1[2] * v8)) + a1[3]) + 0x80000000)
     / v11;
  *a4 = *a2 + (float)(v9 * *a3);
  a4[1] = v7 + (float)(v9 * v10);
  a4[2] = v8 + (float)(v9 * v5);
  return 1;
}


// ===== 3404a4 std::vector<Module *,std::allocator<Module *>>::_M_fill_insert_aux(Module **,uint,Module * const&,std::__false_type const&) =====
char *__fastcall std::vector<Module *>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
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
      return (char *)std::vector<Module *>::_M_fill_insert_aux(result);
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


// ===== 3405ec std::vector<Module *,std::allocator<Module *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<Module *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 34064c ObjectManager::DoCharAIInit(void) =====
int __fastcall ObjectManager::DoCharAIInit(int this)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r6
  int v3; // r5
  CharAI *v4; // r5

  v2 = (_DWORD *)(this + 44);
  v1 = *(_DWORD **)(this + 44);
  if ( (_DWORD *)(this + 44) != v1 )
  {
    do
    {
      v3 = v1[2];
      this = v3;
      if ( v3 && (this = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 36))(v3)) != 0 )
      {
        v4 = (CharAI *)(v3 + 968);
        CharAI::AI_ScriptCleanUp(v4);
        this = CharAI::AI_ScriptInit(v4);
        v1 = (_DWORD *)*v1;
      }
      else
      {
        v1 = (_DWORD *)*v1;
      }
    }
    while ( v2 != v1 );
  }
  return this;
}


// ===== 3406ac ObjectManager::ObjectReInit(void) =====
__int64 __fastcall ObjectManager::ObjectReInit(__int64 this)
{
  _DWORD *v1; // r5
  _DWORD *v2; // r6
  int v3; // r4
  CharAI *v4; // r4

  v2 = (_DWORD *)(this + 44);
  v1 = *(_DWORD **)(this + 44);
  HIDWORD(this) = 0;
  if ( (_DWORD *)(this + 44) != v1 )
  {
    do
    {
      v3 = v1[2];
      LODWORD(this) = v3 + 140;
      if ( v3
        && (ConditionData::SetAsTested(this, 0),
            ConditionData::SetAsTested(v3 + 176, 0),
            LODWORD(this) = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 36))(v3),
            (_DWORD)this) )
      {
        v4 = (CharAI *)(v3 + 968);
        CharAI::AI_ScriptCleanUp(v4);
        LODWORD(this) = CharAI::AI_ScriptInit(v4);
        v1 = (_DWORD *)*v1;
      }
      else
      {
        v1 = (_DWORD *)*v1;
      }
      HIDWORD(this) = 0;
    }
    while ( v2 != v1 );
  }
  return this;
}


// ===== 34072c ObjectManager::DeleteRandomOnlineObject(void) =====
unsigned int __fastcall ObjectManager::DeleteRandomOnlineObject(ObjectManager *this, int a2, bool a3)
{
  ObjectManager *v3; // r3
  ObjectManager *v4; // r4
  unsigned int v6; // r0
  int v7; // r0
  unsigned int result; // r0
  ObjectManager *v9; // r3
  unsigned int v10; // r1
  int v11; // r2

  v3 = (ObjectManager *)((char *)this + 256);
  v4 = *((ObjectManager **)this + 64);
  if ( v4 == (ObjectManager *)((char *)this + 256) )
  {
    v6 = -4;
  }
  else
  {
    v7 = 0;
    do
    {
      v4 = *(ObjectManager **)v4;
      ++v7;
    }
    while ( v3 != v4 );
    v6 = v7 - 4;
  }
  result = Random::GetRandom(v6, 0, a3);
  v9 = *((ObjectManager **)this + 64);
  v10 = result + 4;
  v11 = 0;
  while ( v4 != v9 )
  {
    result = *((_DWORD *)v9 + 2);
    if ( v11 == v10 )
      return ObjectBase::Delete(result);
    v9 = *(ObjectManager **)v9;
    ++v11;
  }
  return result;
}


// ===== 3407a0 ObjectManager::GetObjectHandleByNetworkId(int) =====
ObjectManager *__fastcall ObjectManager::GetObjectHandleByNetworkId(ObjectManager *this, int a2, int a3)
{
  _DWORD *v3; // r1
  _DWORD *v4; // r3
  _DWORD *v5; // t1
  int v7; // r0

  v5 = *(_DWORD **)(a2 + 256);
  v3 = (_DWORD *)(a2 + 256);
  v4 = v5;
  if ( v3 == v5 )
  {
LABEL_5:
    ObjectHandle::ObjectHandle(this, nullptr);
    return this;
  }
  else
  {
    while ( 1 )
    {
      v7 = v4[2];
      if ( v7 )
      {
        if ( a3 == *(_DWORD *)(v7 + 264) )
          break;
      }
      v4 = (_DWORD *)*v4;
      if ( v3 == v4 )
        goto LABEL_5;
    }
    ObjectBase::GetHandle(this, v4[2]);
    return this;
  }
}


// ===== 340800 GetNewInstance<Character>(void) =====
int GetNewInstance<Character>()
{
  int v0; // r4

  v0 = operator new(8080, 0);
  Character::Character(v0);
  return v0;
}


// ===== 340824 GetNewInstance<Door>(void) =====
int GetNewInstance<Door>()
{
  int v0; // r4

  v0 = operator new(1744, 0);
  Door::Door(v0, 2);
  return v0;
}


// ===== 340848 ObjectManager::CanSendUpdate(ObjectBase *) =====
int __fastcall ObjectManager::CanSendUpdate(ObjectManager *this, ObjectBase *a2)
{
  int *v3; // r0
  int *v4; // r4
  char *v6[4]; // [sp+4h] [bp-10h] BYREF

  if ( !a2 || (*(int (__fastcall **)(ObjectBase *))(*(_DWORD *)a2 + 84))(a2) || !*((_DWORD *)a2 + 64) )
    return 0;
  ObjectBase::GetHandle((ObjectBase *)v6, (int)a2);
  v3 = (int *)ObjectHandle::operator Character *(v6);
  v4 = v3;
  if ( !v3 || v3[71] > 0 )
    return 1;
  if ( !(*(int (__fastcall **)(int *))(*v3 + 328))(v3)
    || *((_BYTE *)v4 + 5248)
    || Character::IsMerchant((Character *)v4)
    || (*(int (__fastcall **)(int *))(*v4 + 52))(v4)
    && CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v4 + 319))
    && Character::CanRespawn((Character *)v4) )
  {
    return 0;
  }
  else
  {
    return (*(unsigned __int8 (__fastcall **)(int *))(*v4 + 40))(v4) ^ 1;
  }
}


// ===== 340948 ObjectManager::IsRemotePlayerOfMember(int,Character *) =====
int __fastcall ObjectManager::IsRemotePlayerOfMember(ObjectManager *this, int a2, Character *a3)
{
  CNetPlayerManager *NetPlayerMgr; // r0
  int *PlayerIdListByMemberId; // r0
  int v7; // r3
  int *v8; // r5
  unsigned int v9; // r2
  unsigned int v10; // r4
  int v11; // r3

  if ( !a3 )
    return 0;
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  PlayerIdListByMemberId = (int *)CNetPlayerManager::GetPlayerIdListByMemberId(NetPlayerMgr, a2);
  v7 = *PlayerIdListByMemberId;
  v8 = PlayerIdListByMemberId;
  if ( !((unsigned int)(PlayerIdListByMemberId[1] - *PlayerIdListByMemberId) >> 2) )
    return 0;
  v9 = 0;
  v10 = 0;
  while ( 1 )
  {
    v11 = *((_DWORD *)PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, *(_DWORD *)(v7 + 4 * v9), 0)
          + 408);
    v9 = ++v10;
    if ( v11 )
    {
      if ( *((_DWORD *)a3 + 66) == *(_DWORD *)(v11 + 264) )
        break;
    }
    v7 = *v8;
    if ( v10 >= (v8[1] - *v8) >> 2 )
      return 0;
  }
  return 1;
}


// ===== 3409f4 ObjectManager::IsObjectSerializable(ObjectBase *,int) =====
int __fastcall ObjectManager::IsObjectSerializable(ObjectManager *this, ObjectBase *a2, int a3)
{
  COnline *Online; // r0
  int v7; // r3
  int *v9; // r0
  int *v10; // r8
  int v11; // r3
  CMatching *v12; // r0
  CMatching *v13; // r0
  _BYTE v14[12]; // [sp+4h] [bp-Ch] BYREF

  if ( !a2 )
    return 0;
  Online = (COnline *)GetOnline();
  if ( COnline::IsServer(Online) )
  {
    v7 = *((_DWORD *)a2 + 68);
    if ( v7 != -1 && a3 != v7 )
      return 1;
  }
  if ( !*((_BYTE *)a2 + 281)
    || !*((_DWORD *)a2 + 64)
    || (*(int (__fastcall **)(ObjectBase *))(*(_DWORD *)a2 + 84))(a2)
    || *((_BYTE *)a2 + 280)
    || a3 == *((_DWORD *)a2 + 68) )
  {
    return 0;
  }
  ObjectBase::GetHandle((ObjectBase *)v14);
  v9 = (int *)ObjectHandle::operator Character *(v14);
  v10 = v9;
  if ( !v9 )
    return 1;
  if ( v9[71] > 0 )
  {
    NetStruct::Resend(*((NetStruct **)a2 + 64));
    v11 = v10[71];
    if ( v11 > 0 )
    {
      v10[71] = v11 - 1;
      return 1;
    }
    return 1;
  }
  if ( !(*(int (__fastcall **)(int *))(*v9 + 328))(v9)
    || *((_BYTE *)v10 + 5248)
    || Character::IsMerchant((Character *)v10)
    || (*(int (__fastcall **)(int *))(*v10 + 52))(v10)
    && CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v10 + 319))
    && Character::CanRespawn((Character *)v10) )
  {
    return 0;
  }
  v12 = (CMatching *)(*(int (__fastcall **)(int *))(*v10 + 40))(v10);
  if ( !v12 )
    return 1;
  v13 = (CMatching *)CMatching::Get(v12);
  if ( !CMatching::IsServer(v13)
    && *(_BYTE *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, (const Character *)v10, 0) + 1644) != 1 )
  {
    return 0;
  }
  else
  {
    return (unsigned __int8)ObjectManager::IsRemotePlayerOfMember(this, a3, (Character *)v10) ^ 1;
  }
}


// ===== 340bc4 ObjectManager::NetworkUnInitLevel(void) =====
int __fastcall ObjectManager::NetworkUnInitLevel(ObjectManager *this)
{
  int result; // r0

  result = CPacketManager::UnregisterPacketSlot(3);
  *((_BYTE *)this + 428) = 0;
  return result;
}


// ===== 340be0 ObjectManager::NetworkInitLevel(void) =====
Elf32_Dyn **__fastcall ObjectManager::NetworkInitLevel(ObjectManager *this)
{
  int v2; // r3
  Elf32_Dyn **result; // r0

  v2 = *(unsigned __int8 *)(GetOnline() + 5);
  result = &__GLOBAL_OFFSET_TABLE_;
  if ( v2 )
    result = (Elf32_Dyn **)CPacketManager::RegisterPacketSlot(
                             3,
                             ObjectManager::sWritePacketData,
                             ObjectManager::sReadPacketData,
                             ObjectManager::sProcessAcknowledgedPacket,
                             ObjectManager::sProcessLostPacket);
  *((_BYTE *)this + 428) = 1;
  return result;
}


// ===== 340c54 ObjectManager::GetObjectByPtr(ObjectBase *) =====
ObjectManager *__fastcall ObjectManager::GetObjectByPtr(ObjectManager *this, ObjectBase *a2, int a3)
{
  int v5; // r1
  int v6; // r2
  _DWORD v8[4]; // [sp+0h] [bp-10h] BYREF

  ObjectHandle::ObjectHandle(this);
  if ( a3 )
  {
    ObjectBase::GetHandle((ObjectBase *)v8, a3);
    v5 = v8[2];
    v6 = v8[1];
    *(_DWORD *)this = v8[0];
    *((_DWORD *)this + 2) = v5;
    *((_DWORD *)this + 1) = v6;
  }
  return this;
}


// ===== 340ca8 GetNewInstance<LevelConfig>(void) =====
int GetNewInstance<LevelConfig>()
{
  int v0; // r4

  v0 = operator new(0x318u, 0);
  LevelConfig::LevelConfig(v0, 4);
  return v0;
}


// ===== 340ccc GetNewInstance<SoundEmitter>(void) =====
int GetNewInstance<SoundEmitter>()
{
  int v0; // r4

  v0 = operator new(928, 0);
  SoundEmitter::SoundEmitter(v0, 20);
  return v0;
}


// ===== 340cf0 GetNewInstance<LaserTypeProjectile>(void) =====
int GetNewInstance<LaserTypeProjectile>()
{
  int v0; // r4

  v0 = operator new(0x3E4u, 0);
  LaserTypeProjectile::LaserTypeProjectile(v0, 10);
  return v0;
}


// ===== 340d14 GetNewInstance<Projectile>(void) =====
int GetNewInstance<Projectile>()
{
  int v0; // r4

  v0 = operator new(0x3D4u, 0);
  Projectile::Projectile(v0);
  return v0;
}


// ===== 340d38 GetNewInstance<ItemObject>(void) =====
int GetNewInstance<ItemObject>()
{
  int v0; // r4

  v0 = operator new(0x3D0u, 0);
  ItemObject::ItemObject(v0);
  return v0;
}


// ===== 340d5c GetNewInstance<DestructibleContainer>(void) =====
_DWORD *GetNewInstance<DestructibleContainer>()
{
  _DWORD *v0; // r4

  v0 = (_DWORD *)operator new(1784, 0);
  DestructibleContainer::DestructibleContainer(v0);
  return v0;
}


// ===== 340d80 GetNewInstance<SlotContainer>(void) =====
_DWORD *GetNewInstance<SlotContainer>()
{
  _DWORD *v0; // r4

  v0 = (_DWORD *)operator new(0x748u, 0);
  SlotContainer::SlotContainer(v0);
  return v0;
}


// ===== 340da4 GetNewInstance<OpenableContainer>(void) =====
int GetNewInstance<OpenableContainer>()
{
  int v0; // r4

  v0 = operator new(0x718u, 0);
  OpenableContainer::OpenableContainer(v0);
  return v0;
}


// ===== 340dc8 GetNewInstance<LiftableObject>(void) =====
int GetNewInstance<LiftableObject>()
{
  int v0; // r4

  v0 = operator new(0x3A8u, 0);
  LiftableObject::LiftableObject(v0);
  return v0;
}


// ===== 340dec GetNewInstance<SpawnSpot>(void) =====
int GetNewInstance<SpawnSpot>()
{
  int v0; // r4

  v0 = operator new(0x38Cu, 0);
  SpawnSpot::SpawnSpot(v0, 20);
  return v0;
}


// ===== 340e10 GetNewInstance<SpawnPoint>(void) =====
int GetNewInstance<SpawnPoint>()
{
  int v0; // r4

  v0 = operator new(0x394u, 0);
  SpawnPoint::SpawnPoint(v0, 13);
  return v0;
}


// ===== 340e34 GetNewInstance<ProjectileTrap>(void) =====
int GetNewInstance<ProjectileTrap>()
{
  int v0; // r4

  v0 = operator new(1040, 0);
  ProjectileTrap::ProjectileTrap(v0, 17);
  return v0;
}


// ===== 340e58 GetNewInstance<TimerTrap>(void) =====
int GetNewInstance<TimerTrap>()
{
  int v0; // r4

  v0 = operator new(1032, 0);
  TimerTrap::TimerTrap(v0, 16);
  return v0;
}


// ===== 340e7c GetNewInstance<TriggerTrap>(void) =====
int GetNewInstance<TriggerTrap>()
{
  int v0; // r4

  v0 = operator new(1028, 0);
  TriggerTrap::TriggerTrap(v0, 15);
  return v0;
}


// ===== 340ea0 GetNewInstance<TriggerZoneExitLevel>(void) =====
int GetNewInstance<TriggerZoneExitLevel>()
{
  int v0; // r4

  v0 = operator new(2080, 0);
  TriggerZoneExitLevel::TriggerZoneExitLevel(v0, 14);
  return v0;
}


// ===== 340ec4 GetNewInstance<TriggerZone>(void) =====
int GetNewInstance<TriggerZone>()
{
  int v0; // r4

  v0 = operator new(2008, 0);
  TriggerZone::TriggerZone(v0, 20);
  return v0;
}


// ===== 340ee8 GetNewInstance<TriggerPlate>(void) =====
int GetNewInstance<TriggerPlate>()
{
  int v0; // r4

  v0 = operator new(1920, 0);
  TriggerPlate::TriggerPlate(v0, 18);
  return v0;
}


// ===== 340f0c GetNewInstance<TriggerObject>(void) =====
TriggerObject *GetNewInstance<TriggerObject>()
{
  TriggerObject *v0; // r4

  v0 = (TriggerObject *)operator new(1936, 0);
  TriggerObject::TriggerObject(v0);
  return v0;
}


// ===== 340f2c GetNewInstance<CheckpointZone>(void) =====
int GetNewInstance<CheckpointZone>()
{
  int v0; // r4

  v0 = operator new(928, 0);
  CheckpointZone::CheckpointZone(v0, 12);
  return v0;
}


// ===== 340f50 GetNewInstance<QuestMoveInZone>(void) =====
_DWORD *GetNewInstance<QuestMoveInZone>()
{
  _DWORD *v0; // r4

  v0 = (_DWORD *)operator new(904, 0);
  QuestMoveInZone::QuestMoveInZone(v0, 20);
  return v0;
}


// ===== 340f74 GetNewInstance<RoomZone>(void) =====
int GetNewInstance<RoomZone>()
{
  int v0; // r4

  v0 = operator new(924, 0);
  RoomZone::RoomZone(v0, 11);
  return v0;
}


// ===== 340f98 GetNewInstance<Module>(void) =====
int GetNewInstance<Module>()
{
  int v0; // r4

  v0 = operator new(0x41Cu, 0);
  Module::Module(v0);
  return v0;
}


// ===== 340fbc GetNewInstance<Billboard>(void) =====
int GetNewInstance<Billboard>()
{
  int v0; // r4

  v0 = operator new(0x17Cu, 0);
  Billboard::Billboard(v0, 20);
  return v0;
}


// ===== 340fe0 GetNewInstance<ColBox>(void) =====
int GetNewInstance<ColBox>()
{
  int v0; // r4

  v0 = operator new(0x380u, 0);
  GameObject::GameObject(v0);
  *(_DWORD *)(v0 + 892) = 0;
  *(_DWORD *)(v0 + 884) = 0;
  *(_DWORD *)(v0 + 4) = &off_964300;
  *(_DWORD *)v0 = off_964230;
  *(_DWORD *)(v0 + 36) = off_96430C;
  *(_BYTE *)(v0 + 132) = 1;
  *(_DWORD *)(v0 + 888) = 0;
  return v0;
}


// ===== 34104c GetNewInstance<Floor>(void) =====
int GetNewInstance<Floor>()
{
  int v0; // r4

  v0 = operator new(0x374u, 0);
  GameObject::GameObject(v0);
  *(_BYTE *)(v0 + 132) = 1;
  *(_DWORD *)v0 = off_964328;
  *(_DWORD *)(v0 + 4) = &off_9643F8;
  *(_DWORD *)(v0 + 36) = off_964404;
  return v0;
}


// ===== 3410a4 GetNewInstance<Dummy>(void) =====
int GetNewInstance<Dummy>()
{
  int v0; // r4

  v0 = operator new(0x374u, 0);
  GameObject::GameObject(v0);
  *(_BYTE *)(v0 + 132) = 1;
  *(_DWORD *)v0 = off_95C710;
  *(_DWORD *)(v0 + 4) = &off_95C7E0;
  *(_DWORD *)(v0 + 36) = off_95C7EC;
  return v0;
}


// ===== 3410fc GetNewInstance<Decor>(void) =====
int GetNewInstance<Decor>()
{
  int v0; // r4

  v0 = operator new(888, 0);
  GameObject::GameObject(v0);
  *(_BYTE *)(v0 + 132) = 1;
  *(_BYTE *)(v0 + 885) = 1;
  *(_DWORD *)v0 = off_964610;
  *(_DWORD *)(v0 + 4) = &off_9646E0;
  *(_DWORD *)(v0 + 36) = off_9646EC;
  *(_BYTE *)(v0 + 886) = 1;
  return v0;
}


// ===== 34115c GetNewInstance<LightPoint>(void) =====
LightPoint *GetNewInstance<LightPoint>()
{
  LightPoint *v0; // r4

  v0 = (LightPoint *)operator new(436, 0);
  LightPoint::LightPoint(v0);
  return v0;
}


// ===== 34117c `non-virtual thunk to'Dummy::~Dummy() =====
void __fastcall `non-virtual thunk to'Dummy::~Dummy(Dummy *this)
{
  Dummy::~Dummy((Dummy *)((char *)this - 36));
}


// ===== 341184 Dummy::~Dummy() =====
void __fastcall Dummy::~Dummy(Dummy *this)
{
  *(_DWORD *)this = off_95C710;
  *((_DWORD *)this + 1) = &off_95C7E0;
  *((_DWORD *)this + 9) = off_95C7EC;
  GameObject::~GameObject(this);
}


// ===== 3411c4 std::random_shuffle<Point3D<float> *>(Point3D<float> *,Point3D<float> *) =====
int __fastcall std::random_shuffle<Point3D<float> *>(int result, int a2)
{
  int v2; // r4
  int v4; // r5
  int v5; // r6
  int v6; // r1
  int v7; // r2
  int v8; // r10
  int v9; // r12
  int v10; // r3

  v2 = result;
  if ( result != a2 )
  {
    v4 = result + 12;
    if ( a2 != result + 12 )
    {
      v5 = 12;
      do
      {
        v6 = 12 * (lrand48() % (-1431655765 * (v5 >> 2) + 1));
        v7 = v2 + v5;
        v8 = *(_DWORD *)(v2 + v5);
        v9 = *(_DWORD *)(v4 + 8);
        result = *(_DWORD *)(v2 + v5 + 4);
        *(_DWORD *)(v2 + v5) = *(_DWORD *)(v2 + v6);
        v10 = v2 + v6;
        v5 += 12;
        *(_DWORD *)(v7 + 4) = *(_DWORD *)(v2 + v6 + 4);
        *(_DWORD *)(v4 + 8) = *(_DWORD *)(v2 + v6 + 8);
        v4 += 12;
        *(_DWORD *)(v2 + v6) = v8;
        *(_DWORD *)(v10 + 8) = v9;
        *(_DWORD *)(v10 + 4) = result;
      }
      while ( a2 != v4 );
    }
  }
  return result;
}


// ===== 341260 glitch::core::plane3d<float>::getIntersectionWithPlane(glitch::core::plane3d<float> const&,glitch::core::vector3d<float> &,glitch::core::vector3d<float> &) =====
int __fastcall glitch::core::plane3d<float>::getIntersectionWithPlane(float *a1, float *a2, float *a3, float *a4)
{
  float v8; // r0
  float v9; // r9
  float v10; // r6
  float v11; // r0
  float v12; // r11
  double v13; // r0
  double v14; // r8
  float v16; // r9
  float v17; // r2
  float v18; // r1
  float v19; // r8
  float v20; // r0
  float v21; // r7
  float v22; // r0
  float v23; // r8
  float v24; // r9
  float v25; // [sp+4h] [bp-28h]
  float v26; // [sp+10h] [bp-1Ch]
  float v27; // [sp+14h] [bp-18h]
  float v28; // [sp+18h] [bp-14h]
  float v29; // [sp+1Ch] [bp-10h]
  double v30; // [sp+20h] [bp-Ch]

  v8 = sqrt((float)((float)((float)(*a1 * *a1) + (float)(a1[1] * a1[1])) + (float)(a1[2] * a1[2])));
  v27 = v8;
  v9 = a2[1];
  v10 = (float)((float)(*a2 * *a1) + (float)(v9 * a1[1])) + (float)(a2[2] * a1[2]);
  v11 = sqrt((float)((float)((float)(*a2 * *a2) + (float)(v9 * v9)) + (float)(a2[2] * a2[2])));
  v12 = v11;
  v13 = (float)((float)(v27 * v11) - (float)(v10 * v10));
  v14 = v13;
  HIDWORD(v13) &= ~0x80000000;
  if ( v13 < 0.00000001 )
    return 0;
  v30 = 1.0 / v14;
  v16 = a2[2];
  v25 = a1[1];
  v28 = a2[1];
  v17 = *a2;
  LODWORD(v18) = *((_DWORD *)a1 + 2) + 0x80000000;
  v29 = a1[3];
  v26 = a2[3];
  v19 = *a1;
  *a4 = (float)(COERCE_FLOAT(LODWORD(v25) + 0x80000000) * v16) + (float)(a1[2] * v28);
  a4[1] = (float)(v18 * v17) + (float)(v16 * v19);
  a4[2] = (float)(v28 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v25 * v17);
  v20 = (float)((float)(COERCE_FLOAT(LODWORD(v29) + 0x80000000) * v12) + (float)(v26 * v10)) * v30;
  v21 = v20;
  v22 = (float)((float)(COERCE_FLOAT(LODWORD(v26) + 0x80000000) * v27) + (float)(v29 * v10)) * v30;
  v23 = (float)(v21 * a1[1]) + (float)(v22 * a2[1]);
  v24 = (float)(v21 * a1[2]) + (float)(v22 * a2[2]);
  *a3 = (float)(v21 * *a1) + (float)(v22 * *a2);
  a3[2] = v24;
  a3[1] = v23;
  return 1;
}


// ===== 3415d8 glitch::core::plane3d<float>::getIntersectionWithPlanes(glitch::core::plane3d<float> const&,glitch::core::plane3d<float> const&,glitch::core::vector3d<float> &) =====
int __fastcall glitch::core::plane3d<float>::getIntersectionWithPlanes(float *a1, float *a2, float *a3, float *a4)
{
  int result; // r0
  float v7[3]; // [sp+0h] [bp-1Ch] BYREF
  float v8[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v8, 0, 12);
  memset(v7, 0, sizeof(v7));
  result = glitch::core::plane3d<float>::getIntersectionWithPlane(a1, a2, v8, v7);
  if ( result )
    return glitch::core::plane3d<float>::getIntersectionWithLine(a3, v8, v7, a4);
  return result;
}


// ===== 34163c ObjectManager::UpdateRooms(void) =====
int __fastcall ObjectManager::UpdateRooms(ObjectManager *this)
{
  char *i; // r4
  char *v4; // r5
  char *v5; // t1

  PushProfilingContext("ObjectManager::UpdateRooms");
  *((_DWORD *)this + 62) = 0;
  v5 = *((char **)this + 9);
  v4 = (char *)this + 36;
  for ( i = v5; v4 != i; i = *(char **)i )
    (*(void (__fastcall **)(int))(**((_DWORD **)i + 2) + 44))(*((_DWORD *)i + 2));
  return PopProfilingContext("ObjectManager::UpdateRooms");
}


// ===== 34169c ObjectManager::ForceEverythingVisible(void) =====
_DWORD *__fastcall ObjectManager::ForceEverythingVisible(_DWORD *this)
{
  int **i; // r4
  int **v2; // r5

  *(this + 62) = 0;
  v2 = (int **)(this + 9);
  for ( i = (int **)*(this + 9); v2 != i; i = (int **)*i )
    this = RoomZone::Activate((RoomZone *)i[2]);
  return this;
}


// ===== 3416cc `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectManager.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Core_ObjectManager_ObjectManager.cpp(CMessage *a1)
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

  dword_9A1E4C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E48 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A1E51 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A1E52 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A1E53 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A1E54 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A1E55 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A1E56 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A1E57 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A1E58 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A1E59 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A1E5A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A1E5B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A1E5C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A1E5D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A1E5E = result;
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


// ===== 341958 `non-virtual thunk to'Dummy::~Dummy() =====
void __fastcall `non-virtual thunk to'Dummy::~Dummy(Dummy *this)
{
  Dummy::~Dummy((Dummy *)((char *)this - 36));
}


// ===== 341960 Dummy::~Dummy() =====
void __fastcall Dummy::~Dummy(Dummy *this)
{
  *(_DWORD *)this = off_95C710;
  *((_DWORD *)this + 1) = &off_95C7E0;
  *((_DWORD *)this + 9) = off_95C7EC;
  GameObject::~GameObject(this);
  CustomFree(this);
}


// ===== 3419a8 ObjectManager::GetDynamicFogColorAtPos(Point3D<float> const&,float) =====
float *__fastcall ObjectManager::GetDynamicFogColorAtPos(float *a1, int a2, float *a3, float a4)
{
  float v6; // r11
  _DWORD *v7; // r6
  float *v8; // r5
  float v9; // r9
  float v10; // r8
  float v11; // r8
  int v12; // r6
  float v13; // r5
  float v14; // r6
  float v16; // r8
  float v17; // r10
  float v18; // r0
  _DWORD *v19; // [sp+4h] [bp-10h]

  v6 = a4 * 100.0;
  v19 = (_DWORD *)(a2 + 104);
  a1[2] = 0.0;
  *a1 = 0.0;
  a1[1] = 0.0;
  v7 = *(_DWORD **)(a2 + 104);
  if ( (_DWORD *)(a2 + 104) != v7 )
  {
    do
    {
      v8 = (float *)v7[2];
      v9 = v8[89] - a3[1];
      v10 = v8[90] - a3[2];
      v11 = sqrtf((float)((float)((float)(v8[88] - *a3) * (float)(v8[88] - *a3)) + (float)(v9 * v9)) + (float)(v10 * v10));
      if ( v6 < v11 || Point3D<float>::operator==(v8 + 252, (float *)&Module::UNINIT_FOG_COLOR) )
      {
        v7 = (_DWORD *)*v7;
      }
      else
      {
        v16 = (float)(v6 - v11) / v6;
        v17 = v16 * v8[253];
        v18 = v16 * v8[254];
        *a1 = *a1 + (float)(v16 * v8[252]);
        a1[1] = a1[1] + v17;
        a1[2] = a1[2] + v18;
        v7 = (_DWORD *)*v7;
      }
    }
    while ( v19 != v7 );
  }
  v12 = *(_DWORD *)a1;
  v13 = a1[1];
  if ( *a1 > 255.0 )
    v12 = 1132396544;
  *(_DWORD *)a1 = v12;
  v14 = a1[2];
  if ( v13 > 255.0 )
    v13 = 255.0;
  a1[1] = v13;
  if ( v14 > 255.0 )
    v14 = 255.0;
  a1[2] = v14;
  return a1;
}


// ===== 341bcc SortModuleByDistance::operator()(Module const*,Module const*) =====
bool __fastcall SortModuleByDistance::operator()(int a1, float *a2, float *a3)
{
  float v5; // r10
  float v6; // r8
  float v7; // r0
  float v8; // r8
  float v9; // r9
  float v10; // r10
  float v11; // r0

  v5 = *(float *)(*(_DWORD *)a1 + 352) - a2[88];
  v6 = *(float *)(*(_DWORD *)a1 + 356) - a2[89];
  v7 = *(float *)(*(_DWORD *)a1 + 360) - a2[90];
  v8 = sqrtf((float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7));
  v9 = *(float *)(*(_DWORD *)a1 + 352) - a3[88];
  v10 = *(float *)(*(_DWORD *)a1 + 356) - a3[89];
  v11 = *(float *)(*(_DWORD *)a1 + 360) - a3[90];
  return v8 < sqrtf((float)((float)(v9 * v9) + (float)(v10 * v10)) + (float)(v11 * v11));
}


// ===== 341cf8 std::__push_heap<Module **,int,Module *,SortModuleByDistance>(Module **,int,int,Module *,SortModuleByDistance) =====
int std::__push_heap<Module **,int,Module *,SortModuleByDistance>(int result, int a2, int a3, float *a4, ...)
{
  int v4; // r5
  int v6; // r4
  float **v8; // r3
  int v9; // r8
  va_list va; // [sp+20h] [bp+20h] BYREF

  va_start(va, a4);
  v4 = a2;
  v6 = result;
  if ( a2 > a3
    && (v9 = (a2 - 1) / 2,
        result = SortModuleByDistance::operator()((int)&va, *(float **)(result + 4 * v9), a4),
        v8 = (float **)(v6 + 4 * v9),
        result) )
  {
    while ( 1 )
    {
      *(_DWORD *)(v6 + 4 * v4) = *(_DWORD *)(v6 + 4 * v9);
      if ( a3 >= v9 )
        break;
      v4 = v9;
      v9 = (v9 - 1) / 2;
      result = SortModuleByDistance::operator()((int)&va, *(float **)(v6 + 4 * v9), a4);
      v8 = (float **)(v6 + 4 * v9);
      if ( !result )
        goto LABEL_2;
    }
  }
  else
  {
LABEL_2:
    v8 = (float **)(v6 + 4 * v4);
  }
  *v8 = a4;
  return result;
}


// ===== 341d8c std::__adjust_heap<Module **,int,Module *,SortModuleByDistance>(Module **,int,int,Module *,SortModuleByDistance) =====
int __fastcall std::__adjust_heap<Module **,int,Module *,SortModuleByDistance>(
        int a1,
        int a2,
        int a3,
        float *a4,
        int a5)
{
  int v5; // r4
  int v6; // r9
  int v10; // r8
  int v11; // r7
  _BOOL4 v12; // r0
  _DWORD *v13; // r3
  int v14; // r4

  v5 = 2 * (a2 + 1);
  v6 = a2;
  if ( v5 < a3 )
  {
    v10 = a2;
    do
    {
      v11 = v5 - 1;
      v12 = SortModuleByDistance::operator()((int)&a5, *(float **)(a1 + 4 * v5), *(float **)(a1 + 4 * (v5 - 1)));
      v13 = (_DWORD *)(a1 + 4 * v5);
      if ( v12 )
        v13 = (_DWORD *)(a1 + 4 * v11);
      else
        v11 = v5;
      v5 = 2 * (v11 + 1);
      *(_DWORD *)(a1 + 4 * v10) = *v13;
      v10 = v11;
    }
    while ( a3 > v5 );
    a2 = v11;
  }
  if ( v5 == a3 )
  {
    v14 = v5 - 1;
    *(_DWORD *)(a1 + 4 * a2) = *(_DWORD *)(a1 + 4 * v14);
    a2 = v14;
  }
  return std::__push_heap<Module **,int,Module *,SortModuleByDistance>(a1, a2, v6, a4, a5);
}


// ===== 341e38 std::__make_heap<Module **,SortModuleByDistance,Module *,int>(Module **,Module **,SortModuleByDistance,Module * *,int *) =====
int __fastcall std::__make_heap<Module **,SortModuleByDistance,Module *,int>(int result, int a2, int a3)
{
  int v3; // r1
  int v4; // r6
  int v6; // r8
  int v7; // r4
  int v8; // r5
  int v9; // r7

  v3 = a2 - result;
  v4 = result;
  if ( v3 > 7 )
  {
    v6 = v3 >> 2;
    v7 = ((v3 >> 2) - 2) >> 1;
    v8 = 0;
    v9 = result + 4 * v7;
    while ( 1 )
    {
      result = std::__adjust_heap<Module **,int,Module *,SortModuleByDistance>(v4, v7, v6, *(float **)(v9 + v8), a3);
      v8 -= 4;
      if ( !v7 )
        break;
      --v7;
    }
  }
  return result;
}


// ===== 341e9c std::sort_heap<Module **,SortModuleByDistance>(Module **,Module **,SortModuleByDistance) =====
int __fastcall std::sort_heap<Module **,SortModuleByDistance>(int result, int a2, int a3)
{
  int v3; // r5
  _DWORD *v4; // r6
  int v6; // r4
  float *v7; // r3

  v3 = a2 - result;
  v4 = (_DWORD *)result;
  if ( a2 - result > 7 )
  {
    v6 = a2;
    do
    {
      v3 -= 4;
      v7 = *(float **)(v6 - 4);
      *(_DWORD *)(v6 - 4) = *v4;
      v6 -= 4;
      result = std::__adjust_heap<Module **,int,Module *,SortModuleByDistance>((int)v4, 0, v3 >> 2, v7, a3);
    }
    while ( v3 > 7 );
  }
  return result;
}


// ===== 341ef0 std::priv::__partial_sort<Module **,Module *,SortModuleByDistance>(Module **,Module **,Module **,Module * *,SortModuleByDistance) =====
int __fastcall std::priv::__partial_sort<Module **,Module *,SortModuleByDistance>(
        float **a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int a5)
{
  float **v8; // r4
  int v9; // r12
  float *v10; // r3

  std::__make_heap<Module **,SortModuleByDistance,Module *,int>((int)a1, a2, a5);
  if ( a2 < a3 )
  {
    v8 = (float **)a2;
    do
    {
      while ( !SortModuleByDistance::operator()((int)&a5, *v8, *a1) )
      {
        if ( a3 <= (unsigned int)++v8 )
          return std::sort_heap<Module **,SortModuleByDistance>((int)a1, a2, a5);
      }
      v9 = a5;
      v10 = *v8;
      *v8++ = *a1;
      std::__adjust_heap<Module **,int,Module *,SortModuleByDistance>((int)a1, 0, (int)(a2 - (_DWORD)a1) >> 2, v10, v9);
    }
    while ( a3 > (unsigned int)v8 );
  }
  return std::sort_heap<Module **,SortModuleByDistance>((int)a1, a2, a5);
}


// ===== 341fa0 std::priv::__median<Module *,SortModuleByDistance>(Module * const&,Module * const&,Module * const&,SortModuleByDistance) =====
float **__fastcall std::priv::__median<Module *,SortModuleByDistance>(float **a1, float **a2, float **a3, int a4)
{
  float **v5; // r5
  int v8; // [sp+4h] [bp-8h] BYREF

  v8 = a4;
  v5 = a2;
  if ( !SortModuleByDistance::operator()((int)&v8, *a1, *a2) )
  {
    if ( !SortModuleByDistance::operator()((int)&v8, *a1, *a3) )
    {
      if ( !SortModuleByDistance::operator()((int)&v8, *v5, *a3) )
        return v5;
      return a3;
    }
    return a1;
  }
  if ( !SortModuleByDistance::operator()((int)&v8, *v5, *a3) )
  {
    if ( SortModuleByDistance::operator()((int)&v8, *a1, *a3) )
      return a3;
    return a1;
  }
  return v5;
}


// ===== 342054 std::priv::__unguarded_partition<Module **,Module *,SortModuleByDistance>(Module **,Module **,Module *,SortModuleByDistance) =====
float **__fastcall std::priv::__unguarded_partition<Module **,Module *,SortModuleByDistance>(
        float **a1,
        float **a2,
        float *a3,
        int a4)
{
  float **v7; // r6
  float *v8; // t1
  float *v9; // r3
  int v11; // [sp+4h] [bp-4h] BYREF

  v11 = a4;
  while ( 1 )
  {
    while ( SortModuleByDistance::operator()((int)&v11, *a1, a3) )
      ++a1;
    v7 = a2;
    do
      v8 = *--v7;
    while ( SortModuleByDistance::operator()((int)&v11, a3, v8) );
    a2 = v7;
    if ( v7 <= a1 )
      break;
    v9 = *a1;
    *a1++ = *v7;
    *v7 = v9;
  }
  return a1;
}


// ===== 3420d4 std::priv::__introsort_loop<Module **,Module *,int,SortModuleByDistance>(Module **,Module **,Module * *,int,SortModuleByDistance) =====
int __fastcall std::priv::__introsort_loop<Module **,Module *,int,SortModuleByDistance>(
        int result,
        float **a2,
        int a3,
        int a4,
        int a5)
{
  float **v5; // r5
  int v6; // r1
  float **v7; // r4
  int v8; // r6
  float **v9; // r0
  float **v10; // r8

  v5 = a2;
  v6 = (int)a2 - result;
  v7 = (float **)result;
  v8 = a4;
  if ( v6 > 67 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        v9 = std::priv::__median<Module *,SortModuleByDistance>(v7, &v7[v6 >> 3], v5 - 1, a5);
        --v8;
        v10 = std::priv::__unguarded_partition<Module **,Module *,SortModuleByDistance>(v7, v5, *v9, a5);
        result = std::priv::__introsort_loop<Module **,Module *,int,SortModuleByDistance>(v10, v5, 0, v8, a5);
        v6 = (char *)v10 - (char *)v7;
        if ( (char *)v10 - (char *)v7 <= 67 )
          break;
        v5 = v10;
        if ( !v8 )
          return std::priv::__partial_sort<Module **,Module *,SortModuleByDistance>(
                   v7,
                   (unsigned int)v5,
                   (unsigned int)v5,
                   0,
                   a5);
      }
    }
    else
    {
      return std::priv::__partial_sort<Module **,Module *,SortModuleByDistance>(
               v7,
               (unsigned int)v5,
               (unsigned int)v5,
               0,
               a5);
    }
  }
  return result;
}


// ===== 34218c std::priv::__linear_insert<Module **,Module *,SortModuleByDistance>(Module **,Module **,Module *,SortModuleByDistance) =====
void *__fastcall std::priv::__linear_insert<Module **,Module *,SortModuleByDistance>(
        float **a1,
        char *a2,
        float *a3,
        int a4)
{
  void *result; // r0
  float **v8; // r4
  char *v9; // r6
  float *v10; // t1
  int v11; // [sp+4h] [bp-Ch] BYREF
  int v12; // [sp+Ch] [bp-4h] BYREF

  v11 = a4;
  result = (void *)SortModuleByDistance::operator()((int)&v11, a3, *a1);
  if ( result )
  {
    if ( a2 - (char *)a1 > 0 )
      result = memmove(a1 + 1, a1, a2 - (char *)a1);
    *a1 = a3;
  }
  else
  {
    v8 = (float **)(a2 - 4);
    v12 = v11;
    while ( 1 )
    {
      v9 = (char *)v8;
      v10 = *v8--;
      result = (void *)SortModuleByDistance::operator()((int)&v12, a3, v10);
      if ( !result )
        break;
      *(_DWORD *)a2 = v8[1];
      a2 = v9;
    }
    *(_DWORD *)a2 = a3;
  }
  return result;
}


// ===== 34222c std::priv::__final_insertion_sort<Module **,SortModuleByDistance>(Module **,Module **,SortModuleByDistance) =====
float **__fastcall std::priv::__final_insertion_sort<Module **,SortModuleByDistance>(
        float **result,
        float **a2,
        int a3)
{
  float **v3; // r5
  char *v6; // r10
  float **v7; // r6
  float **v8; // r4
  char *v9; // r1
  float *v10; // r2
  float **j; // r10
  float **v12; // r4
  float *v13; // r7
  float **k; // r5
  float **v15; // r6
  float *v16; // t1
  float **i; // r4
  char *v18; // r1
  float *v19; // r2
  int v20; // [sp+4h] [bp-8h] BYREF

  v3 = result;
  if ( (char *)a2 - (char *)result <= 67 )
  {
    if ( a2 != result )
    {
      for ( i = result + 1;
            a2 != i;
            result = (float **)std::priv::__linear_insert<Module **,Module *,SortModuleByDistance>(v3, v18, v19, a3) )
      {
        v18 = (char *)i;
        v19 = *i++;
      }
    }
  }
  else
  {
    v6 = (char *)(result + 1);
    v7 = result + 16;
    v8 = result + 1;
    do
    {
      v9 = (char *)v8;
      v10 = *v8++;
      result = (float **)std::priv::__linear_insert<Module **,Module *,SortModuleByDistance>(v3, v9, v10, a3);
    }
    while ( v8 != v7 );
    for ( j = (float **)(v6 + 60); a2 != j; *k = v13 )
    {
      v20 = a3;
      v12 = j - 1;
      v13 = *j;
      for ( k = j; ; k = v15 )
      {
        v15 = v12;
        v16 = *v12--;
        result = (float **)SortModuleByDistance::operator()((int)&v20, v13, v16);
        if ( !result )
          break;
        *k = v12[1];
      }
      ++j;
    }
  }
  return result;
}


// ===== 342314 std::sort<Module **,SortModuleByDistance>(Module **,Module **,SortModuleByDistance) =====
float **__fastcall std::sort<Module **,SortModuleByDistance>(float **result, float **a2, int a3)
{
  float **v3; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v3 = result;
  if ( result != a2 )
  {
    v6 = a2 - result;
    if ( v6 == 1 )
    {
      v7 = 0;
    }
    else
    {
      v8 = 0;
      do
      {
        v6 >>= 1;
        ++v8;
      }
      while ( v6 != 1 );
      v7 = 2 * v8;
    }
    std::priv::__introsort_loop<Module **,Module *,int,SortModuleByDistance>((int)result, a2, 0, v7, a3);
    return std::priv::__final_insertion_sort<Module **,SortModuleByDistance>(v3, a2, a3);
  }
  return result;
}


// ===== 342390 std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
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


// ===== 342478 operator<<(std::ostream &,ObjectHandle &) =====
std::ostream *__fastcall operator<<(std::ostream *a1, char **this)
{
  char *Object; // r0

  if ( ObjectHandle::GetObject(this, 0) )
  {
    Object = ObjectHandle::GetObject(this, 1);
    std::ostream::_M_put_nowiden(a1, *((const char **)Object + 17));
  }
  return a1;
}


// ===== 3424b8 std::vector<Point3D<float>,std::allocator<Point3D<float>>>::vector(std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&) =====
_DWORD *__fastcall std::vector<Point3D<float>>::vector(_DWORD *a1, _DWORD *a2)
{
  int v4; // r3
  char *v5; // r0
  size_t v6; // r3
  _DWORD *v7; // r3
  int v8; // r5
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r12
  int v13; // [sp+4h] [bp-8h] BYREF

  v4 = (a2[1] - *a2) >> 2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = -1431655765 * v4;
  v5 = (char *)std::allocator<Point3D<float>>::_M_allocate((int)(a1 + 2), -1431655765 * v4, (size_t *)&v13);
  v6 = v13;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[12 * v6];
  v7 = (_DWORD *)*a2;
  v8 = -1431655765 * ((a2[1] - *a2) >> 2);
  if ( v8 > 0 )
  {
    v9 = v8;
    v10 = v5;
    do
    {
      --v9;
      *v10 = *v7;
      v10[1] = v7[1];
      v11 = v7[2];
      v7 += 3;
      v10[2] = v11;
      v10 += 3;
    }
    while ( v9 );
    v5 += 12 * v8;
  }
  a1[1] = v5;
  return a1;
}


// ===== 342590 std::allocator<Module *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Module *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 342600 GetNewInstance<AnimatedDecor>(void) =====
int GetNewInstance<AnimatedDecor>()
{
  int v0; // r4

  v0 = operator new(916, 0);
  GameObject::GameObject(v0);
  *(_DWORD *)(v0 + 4) = &off_9644F0;
  *(_DWORD *)(v0 + 36) = off_9644FC;
  *(_DWORD *)(v0 + 908) = v0 + 892;
  *(_DWORD *)(v0 + 912) = v0 + 892;
  *(_DWORD *)v0 = off_964420;
  *(_BYTE *)(v0 + 885) = 1;
  *(_BYTE *)(v0 + 886) = 1;
  *(_BYTE *)(v0 + 132) = 1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v0 + 892, 0x10u);
  **(_BYTE **)(v0 + 908) = 0;
  *(_BYTE *)(v0 + 132) = 1;
  *(_BYTE *)(v0 + 885) = 0;
  return v0;
}


// ===== 342690 std::allocator<std::priv::_List_node<Character *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<Character *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3426b0 ObjectManager::GetObjectsByType(char const*,std::list<Character *,std::allocator<Character *>> &) =====
void __fastcall ObjectManager::GetObjectsByType(int a1, const char *a2, int a3)
{
  int v6; // r8
  int v7; // r6
  int v8; // r0
  const char *ThisClassName; // r0
  char *v10; // r10
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  int v13; // r2
  int v14; // r3
  char *v15[4]; // [sp+4h] [bp-10h] BYREF

  v6 = a1 + 12;
  ObjectHandle::ObjectHandle((ObjectHandle *)v15);
  v7 = *(_DWORD *)(a1 + 20);
  while ( v6 != v7 )
  {
    while ( 1 )
    {
      v8 = *(_DWORD *)(v7 + 44);
      if ( v8 )
      {
        ThisClassName = (const char *)PropertyMap::GetThisClassName((PropertyMap *)(v8 + 4));
        if ( !LC_API_STRCMP_0(ThisClassName, a2) )
        {
          v15[0] = *(char **)(v7 + 16);
          v10 = ObjectHandle::operator Character *(v15);
          v11 = std::allocator<std::priv::_List_node<Character *>>::allocate();
          v11[2] = v10;
          v12 = *(_DWORD **)(a3 + 4);
          *v11 = a3;
          v11[1] = v12;
          *v12 = v11;
          *(_DWORD *)(a3 + 4) = v11;
        }
      }
      v13 = *(_DWORD *)(v7 + 12);
      if ( !v13 )
        break;
      while ( *(_DWORD *)(v13 + 8) )
        v13 = *(_DWORD *)(v13 + 8);
      v7 = v13;
      if ( v6 == v13 )
        return;
    }
    v14 = *(_DWORD *)(v7 + 4);
    if ( v7 == *(_DWORD *)(v14 + 12) )
    {
      do
      {
        v7 = v14;
        v14 = *(_DWORD *)(v14 + 4);
      }
      while ( *(_DWORD *)(v14 + 12) == v7 );
      v13 = *(_DWORD *)(v7 + 12);
    }
    if ( v14 != v13 )
      v7 = v14;
  }
}


// ===== 3427a0 ObjectManager::AddRoomObjects(std::list<GameObject *,std::allocator<GameObject *>> *) =====
_DWORD *__fastcall ObjectManager::AddRoomObjects(int a1, int a2)
{
  _DWORD *v4; // r3
  _DWORD *v5; // r4
  _DWORD *result; // r0
  _DWORD *v7; // r3
  size_t v8; // [sp+Ch] [bp-8h] BYREF

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
        "ro",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
        2313);
    }
  }
  v5 = (_DWORD *)(a1 + 128);
  v4 = *(_DWORD **)(a1 + 128);
  if ( v4 != (_DWORD *)(a1 + 128) )
  {
    while ( a2 != v4[2] )
    {
      v4 = (_DWORD *)*v4;
      if ( v5 == v4 )
      {
        v4 = (_DWORD *)(a1 + 128);
        break;
      }
    }
    if ( v4 != v5 )
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
          "std::find(m_roomObjectsList.begin(), m_roomObjectsList.end(), ro) == m_roomObjectsList.end()",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
          2314);
      }
    }
  }
  v8 = 12;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v8);
  result[2] = a2;
  v7 = *(_DWORD **)(a1 + 132);
  *result = v5;
  result[1] = v7;
  *v7 = result;
  *(_DWORD *)(a1 + 132) = result;
  return result;
}


// ===== 3428f0 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 342910 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate();
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


// ===== 342a34 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(std::pair<int const,int> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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


// ===== 342bbc std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,int>,std::priv::_MapTraitsT<std::pair<int const,int>>>,std::pair<int const,int> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 342f30 ObjectManager::IsPacketValid(int,int) =====
int __fastcall ObjectManager::IsPacketValid(ObjectManager *this, int a2, CPacketManager *a3)
{
  char *v3; // r12
  char *v7; // r5
  char *v8; // r1
  char *i; // r3
  int v10; // r2
  bool v11; // cc
  char *v12; // r2
  char *v13; // r2
  int v14; // r3
  bool v15; // cc
  char *v16; // r3
  signed int v17; // r2
  char *v18; // r3
  int result; // r0
  char *v20; // r12
  char *v21; // r2
  int v22; // r3
  bool v23; // cc
  char *v24; // r3
  char *v25; // r3
  char *v26; // r2
  int v27; // r3
  bool v28; // cc
  char *v29; // r3
  int v30[2]; // [sp+0h] [bp-34h] BYREF
  int v31[2]; // [sp+8h] [bp-2Ch] BYREF
  int v32[2]; // [sp+10h] [bp-24h] BYREF
  char *v33; // [sp+18h] [bp-1Ch] BYREF
  char *v34; // [sp+1Ch] [bp-18h] BYREF
  char *v35; // [sp+20h] [bp-14h] BYREF
  char *v36; // [sp+24h] [bp-10h] BYREF
  int v37; // [sp+28h] [bp-Ch] BYREF
  char *v38; // [sp+2Ch] [bp-8h] BYREF

  v3 = *((char **)this + 83);
  v7 = (char *)this + 328;
  if ( !v3 )
    goto LABEL_28;
  v8 = (char *)this + 328;
  for ( i = *((char **)this + 83); ; i = v12 )
  {
    v10 = *((_DWORD *)i + 4);
    v11 = v10 < a2;
    if ( v10 >= a2 )
      v12 = *((char **)i + 2);
    else
      v12 = *((char **)i + 3);
    if ( v11 )
      i = v8;
    v8 = i;
    if ( !v12 )
      break;
  }
  if ( v7 == i )
  {
LABEL_43:
    if ( v3 )
    {
      v26 = (char *)this + 328;
      while ( 1 )
      {
        v27 = *((_DWORD *)v3 + 4);
        v28 = v27 < a2;
        if ( v27 >= a2 )
          v29 = *((char **)v3 + 2);
        else
          v29 = *((char **)v3 + 3);
        if ( v28 )
          v3 = v26;
        v26 = v3;
        if ( !v29 )
          break;
        v3 = v29;
      }
    }
    else
    {
      v3 = (char *)this + 328;
    }
    if ( v7 == v3 || (v25 = v3, *((_DWORD *)v3 + 4) > a2) )
    {
      v32[0] = a2;
      v32[1] = 0;
      v38 = v3;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
        &v37,
        v7,
        (_DWORD **)&v38,
        v32);
      *(_DWORD *)(v37 + 20) = a3;
      return 1;
    }
LABEL_42:
    *((_DWORD *)v25 + 5) = a3;
    return 1;
  }
  if ( *((_DWORD *)i + 4) > a2 )
LABEL_28:
    i = (char *)this + 328;
  if ( v7 == i )
    goto LABEL_43;
  if ( v3 )
  {
    v13 = (char *)this + 328;
    while ( 1 )
    {
      v14 = *((_DWORD *)v3 + 4);
      v15 = v14 < a2;
      if ( v14 >= a2 )
        v16 = *((char **)v3 + 2);
      else
        v16 = *((char **)v3 + 3);
      if ( v15 )
        v3 = v13;
      v13 = v3;
      if ( !v16 )
        break;
      v3 = v16;
    }
  }
  else
  {
    v3 = (char *)this + 328;
  }
  if ( v7 == v3 || (v17 = *((_DWORD *)v3 + 4), v18 = v3, v17 > a2) )
  {
    v31[1] = 0;
    v36 = v3;
    v31[0] = a2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v35,
      v7,
      (_DWORD **)&v36,
      v31);
    v18 = v35;
  }
  result = CPacketManager::SequenceMoreRecent(a3, *((_DWORD *)v18 + 5), v17);
  if ( result )
  {
    v20 = *((char **)this + 83);
    if ( v20 )
    {
      v21 = v7;
      while ( 1 )
      {
        v22 = *((_DWORD *)v20 + 4);
        v23 = v22 < a2;
        if ( v22 >= a2 )
          v24 = *((char **)v20 + 2);
        else
          v24 = *((char **)v20 + 3);
        if ( v23 )
          v20 = v21;
        v21 = v20;
        if ( !v24 )
          break;
        v20 = v24;
      }
    }
    else
    {
      v20 = v7;
    }
    if ( v7 == v20 || (v25 = v20, *((_DWORD *)v20 + 4) > a2) )
    {
      v30[0] = a2;
      v30[1] = 0;
      v34 = v20;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
        &v33,
        v7,
        (_DWORD **)&v34,
        v30);
      v25 = v33;
    }
    goto LABEL_42;
  }
  return result;
}


// ===== 343148 std::allocator<std::priv::_List_node<short>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<short>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 343168 std::allocator<std::priv::_List_node<ObjectBase *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<ObjectBase *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 343188 ObjectManager::AddOrphanRenderObjectToDelete(ObjectBase *) =====
_DWORD *__fastcall ObjectManager::AddOrphanRenderObjectToDelete(_DWORD *this, ObjectBase *a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r3

  v3 = this;
  if ( a2 )
  {
    v4 = this + 1;
    this = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
    *(this + 2) = a2;
    v5 = (_DWORD *)v3[2];
    *this = v4;
    *(this + 1) = v5;
    *v5 = this;
    v3[2] = this;
  }
  return this;
}


// ===== 3431c0 ObjectManager::AssignObjectNetworkId(ObjectBase *) =====
int __fastcall ObjectManager::AssignObjectNetworkId(ObjectManager *this, ObjectBase *a2)
{
  int result; // r0
  const char *v5; // r7
  char *v6; // r0
  bool v7; // r2
  int v8; // r0
  signed int v9; // r0
  int *v10; // r3
  int v11; // r0

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    v5 = *((const char **)a2 + 17);
    v6 = LC_API_STRSTR_0(v5, "PlayerCharacter_");
    if ( v6 == v5 )
    {
      v9 = LC_API_ATOI_0(v6 + 16) + 1;
      ++*((_DWORD *)this + 78);
    }
    else if ( (*(int (__fastcall **)(ObjectBase *))(*(_DWORD *)a2 + 36))(a2)
           && (*((_BYTE *)a2 + 5348) || Character::IsSummoned(a2)) )
    {
      v11 = *((_DWORD *)this + 80);
      *((_DWORD *)this + 80) = v11 + 1;
      v9 = v11 + 10001;
    }
    else
    {
      v8 = *((_DWORD *)this + 79);
      *((_DWORD *)this + 79) = v8 + 1;
      v9 = v8 + 5;
    }
    *((_DWORD *)a2 + 66) = v9;
    if ( v9 > 4 )
    {
      *((_DWORD *)a2 + 63) = Random::s_syncedSeed;
      Random::GetRandom(v9, 1, v7);
    }
    result = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate((char *)this + 256);
    *(_DWORD *)(result + 8) = a2;
    v10 = *((int **)this + 65);
    *(_DWORD *)result = (char *)this + 256;
    *(_DWORD *)(result + 4) = v10;
    *v10 = result;
    *((_DWORD *)this + 65) = result;
    if ( *((_DWORD *)a2 + 64) )
      ++*((_DWORD *)this + 21);
  }
  return result;
}


// ===== 3432f8 ObjectManager::MarkForDeletion(ObjectBase *) =====
_DWORD *__fastcall ObjectManager::MarkForDeletion(_DWORD *this, ObjectBase *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r3

  v3 = this + 15;
  v2 = (_DWORD *)*(this + 15);
  v4 = this;
  if ( v2 != this + 15 )
  {
    while ( (ObjectBase *)v2[2] != a2 )
    {
      v2 = (_DWORD *)*v2;
      if ( v3 == v2 )
      {
        v2 = this + 15;
        break;
      }
    }
  }
  if ( v3 == v2 )
  {
    this = (_DWORD *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate(this + 15);
    *(this + 2) = a2;
    v5 = (_DWORD *)v4[16];
    *this = v3;
    *(this + 1) = v5;
    *v5 = this;
    v4[16] = this;
  }
  return this;
}


// ===== 34336c ObjectManager::GetLightBaseList(std::list<LightBase *,std::allocator<LightBase *>> &) =====
_DWORD *__fastcall ObjectManager::GetLightBaseList(_DWORD *result, int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5
  const char *ThisClassName; // r0
  int v6; // r9
  _DWORD *v7; // r3
  _DWORD *v8; // r2
  int v9; // r3
  size_t v10; // [sp+4h] [bp-4h] BYREF

  v2 = (_DWORD *)result[5];
  v4 = result + 3;
  while ( v4 != v2 )
  {
    while ( 1 )
    {
      result = (_DWORD *)v2[11];
      if ( result )
      {
        ThisClassName = (const char *)PropertyMap::GetThisClassName((PropertyMap *)(result + 1));
        result = (_DWORD *)LC_API_STRCMP_0(ThisClassName, "LightPoint");
        if ( !result )
        {
          v6 = v2[11];
          v10 = 12;
          result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v10);
          result[2] = v6;
          v7 = *(_DWORD **)(a2 + 4);
          *result = a2;
          result[1] = v7;
          *v7 = result;
          *(_DWORD *)(a2 + 4) = result;
        }
      }
      v8 = (_DWORD *)v2[3];
      if ( !v8 )
        break;
      while ( v8[2] )
        v8 = (_DWORD *)v8[2];
      v2 = v8;
      if ( v4 == v8 )
        return result;
    }
    v9 = v2[1];
    if ( v2 == *(_DWORD **)(v9 + 12) )
    {
      do
      {
        v2 = (_DWORD *)v9;
        v9 = *(_DWORD *)(v9 + 4);
      }
      while ( *(_DWORD **)(v9 + 12) == v2 );
      v8 = (_DWORD *)v2[3];
    }
    if ( v8 != (_DWORD *)v9 )
      v2 = (_DWORD *)v9;
  }
  return result;
}


// ===== 343450 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,short>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,short>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 343470 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,short> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  __int16 v12; // r8
  _DWORD *v14; // r0
  __int16 v15; // r8
  __int16 v16; // r8

  if ( a2 == a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,short>>>::allocate();
    v11[4] = *(_DWORD *)a4;
    v16 = *(_WORD *)(a4 + 4);
    v11[3] = 0;
    v11[2] = 0;
    *((_WORD *)v11 + 10) = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *(_DWORD *)a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,short>>>::allocate();
    v11 = v10;
    v10[4] = *(_DWORD *)a4;
    v12 = *(_WORD *)(a4 + 4);
    v10[3] = 0;
    v10[2] = 0;
    *((_WORD *)v10 + 10) = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,short>>>::allocate();
    v11 = v14;
    v14[4] = *(_DWORD *)a4;
    v15 = *(_WORD *)(a4 + 4);
    v14[3] = 0;
    v14[2] = 0;
    *((_WORD *)v14 + 10) = v15;
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


// ===== 343594 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(std::pair<int const,short> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
      &v17,
      a2,
      v3,
      (int)a3,
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
        &v16,
        a2,
        v3,
        (int)a3,
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


// ===== 34371c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,short>,std::priv::_MapTraitsT<std::pair<int const,short>>>,std::pair<int const,short> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
        a1,
        a2,
        v4,
        (int)a4,
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
          a1,
          a2,
          v4,
          (int)a4,
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
              a1,
              a2,
              v4,
              (int)a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
              a1,
              a2,
              v7,
              (int)a4,
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
                a1,
                a2,
                v4,
                (int)a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
              a1,
              a2,
              i,
              (int)a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_insert(
      a1,
      a2,
      v16,
      (int)a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 343a90 std::map<int,short,std::less<int>,std::allocator<std::pair<int const,short>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,short>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r12
  int v3; // r4
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  _DWORD *v7; // r3
  _DWORD *v8; // r3
  int v10; // [sp+0h] [bp-10h] BYREF
  __int16 v11; // [sp+4h] [bp-Ch]
  _DWORD *v12; // [sp+8h] [bp-8h] BYREF
  _DWORD *v13; // [sp+Ch] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      v5 = v2[4];
      v6 = v3 <= v5;
      if ( v3 <= v5 )
        v7 = (_DWORD *)v2[2];
      else
        v7 = (_DWORD *)v2[3];
      if ( !v6 )
        v2 = v4;
      v4 = v2;
      if ( !v7 )
        break;
      v2 = v7;
    }
  }
  else
  {
    v3 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v8 = v2, v2[4] > v3) )
  {
    v12 = v2;
    v10 = v3;
    v11 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      &v13,
      a1,
      &v12,
      &v10);
    v8 = v13;
  }
  return v8 + 5;
}


// ===== 343b2c std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::_M_create_node(std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_create_node(
        int a1,
        __int16 *a2)
{
  _DWORD *v3; // r0
  __int16 v4; // r3
  char *v5; // r4
  _DWORD *v6; // r5
  _DWORD *v7; // r6
  _DWORD *v8; // t1
  _DWORD *i; // r7
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  size_t v13; // [sp+4h] [bp-8h] BYREF

  v13 = 28;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v13);
  v4 = *a2;
  v5 = (char *)(v3 + 5);
  v3[5] = v3 + 5;
  *((_WORD *)v3 + 8) = v4;
  v3[6] = v3 + 5;
  v8 = *((_DWORD **)a2 + 1);
  v7 = a2 + 2;
  v6 = v8;
  for ( i = v3; v7 != v6; v6 = (_DWORD *)*v6 )
  {
    v10 = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
    v10[2] = v6[2];
    v11 = *((_DWORD **)v5 + 1);
    *v10 = v5;
    v10[1] = v11;
    *v11 = v10;
    *((_DWORD *)v5 + 1) = v10;
  }
  i[3] = 0;
  i[2] = 0;
  return i;
}


// ===== 343bb4 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        __int16 *a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0

  if ( a2 == (_DWORD *)a3 )
  {
    node = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= *(__int16 *)(a3 + 16) )
  {
    v9 = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_create_node(
           (int)a2,
           a4);
    *(_DWORD *)(a3 + 12) = v9;
    node = v9;
    if ( a3 == a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_create_node(
            (int)a2,
            a4);
    *(_DWORD *)(a3 + 8) = v12;
    node = v12;
    if ( a3 == a2[2] )
      a2[2] = v12;
  }
  node[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 343c8c std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::insert_unique(std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>> const&) =====
int __fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        __int16 *a3)
{
  int v3; // r12
  int v6; // r6
  int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r2
  int v12; // r0
  int v13; // r3
  int v14; // r5
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(__int16 *)(v3 + 16);
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
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v10 = *(_DWORD *)(v3 + 12);
    v6 = *a3;
    v7 = *(__int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(__int16 *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
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
      v7 = *(__int16 *)(v10 + 16);
      v6 = *a3;
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v7 = *(__int16 *)(v14 + 16);
      v6 = *a3;
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 343e10 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>> const&) =====
int *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        __int16 *a4)
{
  int v4; // r4
  int v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  int i; // r12
  int v13; // r2
  int v14; // r12
  int v15; // lr
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  int v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = *(__int16 *)(v4 + 16);
    if ( v13 < v14 )
    {
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        v4,
        0);
      return a1;
    }
    if ( v13 > v14 )
    {
      v15 = *(_DWORD *)(v4 + 12);
      if ( v15 )
      {
        for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
      }
      else
      {
        v18 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v18 + 12) )
        {
          do
          {
            i = v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD *)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != *(_DWORD *)(i + 12) )
          i = v18;
      }
      if ( a2 == (_DWORD *)i )
        goto LABEL_63;
      if ( v13 >= *(__int16 *)(i + 16) )
      {
        std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( (_DWORD *)v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
      {
LABEL_26:
        v7 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v7 + 8) )
        {
          while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
            v7 = *(_DWORD *)(v7 + 4);
          v7 = *(_DWORD *)(v7 + 4);
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) )
      {
        v7 = *(_DWORD *)(v4 + 12);
LABEL_8:
        v8 = *a4;
        v9 = *(__int16 *)(v4 + 16);
        if ( v8 < v9 && *(__int16 *)(v7 + 16) < v8 )
        {
          if ( *(_DWORD *)(v7 + 12) )
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              v4,
              0);
          else
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              v7);
          return a1;
        }
        v10 = *(_DWORD *)(v4 + 12);
        if ( v10 )
        {
          for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
            ;
        }
        else
        {
          v17 = *(_DWORD *)(v4 + 4);
          if ( v4 == *(_DWORD *)(v17 + 12) )
          {
            do
            {
              i = v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD *)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != *(_DWORD *)(i + 12) )
            i = v17;
        }
        if ( v8 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == (_DWORD *)i || *(__int16 *)(i + 16) > v8 )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
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
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
        goto LABEL_26;
    }
    while ( *(_DWORD *)(v7 + 12) )
      v7 = *(_DWORD *)(v7 + 12);
    goto LABEL_8;
  }
  v16 = *(_DWORD *)(v4 + 12);
  if ( *(__int16 *)(v16 + 16) >= *a4 )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      v4);
  }
  return a1;
}


// ===== 344184 ObjectManager::AddNoRoomObject(GameObject *) =====
_DWORD *__fastcall ObjectManager::AddNoRoomObject(_DWORD *this, GameObject *a2)
{
  _DWORD *v3; // r5
  _DWORD *v4; // r3
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v3 = this;
  if ( !*((_BYTE *)a2 + 760) )
  {
    v5 = 12;
    this = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
    *(this + 2) = a2;
    v4 = (_DWORD *)v3[35];
    *this = v3 + 34;
    *(this + 1) = v4;
    *v4 = this;
    v3[35] = this;
    *((_BYTE *)a2 + 760) = 1;
  }
  return this;
}


// ===== 3441d8 std::allocator<std::priv::_List_node<int>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<int>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3441f8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::list<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::_M_create_node(std::pair<int const,std::list<int,std::allocator<int>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_create_node(
        int a1,
        int *a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r4
  _DWORD *v6; // r5
  _DWORD *v7; // r6
  _DWORD *v8; // t1
  _DWORD *i; // r7
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  size_t v13; // [sp+4h] [bp-8h] BYREF

  v13 = 28;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v13);
  v4 = *a2;
  v5 = v3 + 5;
  v3[5] = v3 + 5;
  v3[4] = v4;
  v3[6] = v3 + 5;
  v8 = (_DWORD *)a2[1];
  v7 = a2 + 1;
  v6 = v8;
  for ( i = v3; v7 != v6; v6 = (_DWORD *)*v6 )
  {
    v10 = std::allocator<std::priv::_List_node<int>>::allocate();
    v10[2] = v6[2];
    v11 = (_DWORD *)v5[1];
    *v10 = v5;
    v10[1] = v11;
    *v11 = v10;
    v5[1] = v10;
  }
  i[3] = 0;
  i[2] = 0;
  return i;
}


// ===== 344280 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::list<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::list<int,std::allocator<int>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_create_node(
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


// ===== 344358 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::list<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::insert_unique(std::pair<int const,std::list<int,std::allocator<int>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
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


// ===== 3444e0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::list<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>>,std::pair<int const,std::list<int,std::allocator<int>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 344854 std::allocator<std::priv::_Rb_tree_node<short>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<short>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 344874 std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_insert(std::priv::_Rb_tree_node_base *,short const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        __int16 *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  __int16 v9; // r3
  int v10; // r2
  __int16 v11; // r3
  _DWORD *v13; // r0
  __int16 v14; // r3

  if ( a2 == (_DWORD *)a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<short>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[2] = 0;
    *((_WORD *)v8 + 8) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *a4 < *(__int16 *)(a3 + 16) )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<short>>::allocate();
    v8 = v7;
    v9 = *a4;
    v7[3] = 0;
    v7[2] = 0;
    *((_WORD *)v7 + 8) = v9;
    v10 = a3;
    *(_DWORD *)(a3 + 8) = v7;
    if ( a3 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<short>>::allocate();
    v8 = v13;
    v14 = *a4;
    v13[3] = 0;
    v13[2] = 0;
    *((_WORD *)v13 + 8) = v14;
    v10 = a3;
    *(_DWORD *)(a3 + 12) = v13;
    if ( a3 == a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 344994 std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::insert_unique(short const&) =====
int __fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::insert_unique(
        int a1,
        _DWORD *a2,
        __int16 *a3)
{
  int v3; // r12
  int v6; // r6
  int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r2
  int v12; // r0
  int v13; // r3
  int v14; // r5
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(__int16 *)(v3 + 16);
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
    std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_insert(
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
    v10 = *(_DWORD *)(v3 + 12);
    v6 = *a3;
    v7 = *(__int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(__int16 *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_insert(
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
      v7 = *(__int16 *)(v10 + 16);
      v6 = *a3;
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v7 = *(__int16 *)(v14 + 16);
      v6 = *a3;
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 344b10 std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *v6; // r0
  __int16 v7; // r2
  char v8; // r3
  _DWORD *v9; // r10
  int v10; // r1
  int v11; // r5
  _DWORD *v12; // r6
  _DWORD *v13; // r0
  __int16 v14; // r3

  v6 = std::allocator<std::priv::_Rb_tree_node<short>>::allocate();
  v7 = *((_WORD *)a2 + 8);
  v6[3] = 0;
  *((_WORD *)v6 + 8) = v7;
  v6[2] = 0;
  v8 = *a2;
  v6[1] = a3;
  v9 = v6;
  *(_BYTE *)v6 = v8;
  v10 = *((_DWORD *)a2 + 3);
  if ( v10 )
    v6[3] = std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_copy(
              a1,
              v10,
              v6);
  v11 = *((_DWORD *)a2 + 2);
  if ( v11 )
  {
    v12 = v9;
    do
    {
      v13 = std::allocator<std::priv::_Rb_tree_node<short>>::allocate();
      v14 = *(_WORD *)(v11 + 16);
      v13[2] = 0;
      v13[3] = 0;
      *((_WORD *)v13 + 8) = v14;
      *(_BYTE *)v13 = *(_BYTE *)v11;
      v12[2] = v13;
      v13[1] = v12;
      v12 = v13;
      if ( *(_DWORD *)(v11 + 12) )
        v13[3] = std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_copy(
                   a1,
                   *(_DWORD *)(v11 + 12),
                   v13);
      v11 = *(_DWORD *)(v11 + 8);
    }
    while ( v11 );
  }
  return v9;
}


// ===== 344bd8 std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_Rb_tree(std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>> const&) =====
int __fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_Rb_tree(
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
    v5 = std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_copy(
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


// ===== 344c50 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_Select1st<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::_M_create_node(std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>> const&) =====
_WORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_create_node(
        int a1,
        _WORD *a2)
{
  _WORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 44;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[8] = *a2;
  std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_Rb_tree(
    (int)(v3 + 10),
    (int)(a2 + 2));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 344c9c std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_Select1st<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        _WORD *a4,
        int a5,
        int a6)
{
  _WORD *v9; // r0
  _WORD *node; // r7
  _WORD *v12; // r0

  if ( a2 == (_DWORD *)a3 )
  {
    node = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= *(_WORD *)(a3 + 16) )
  {
    v9 = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_create_node(
           (int)a2,
           a4);
    *(_DWORD *)(a3 + 12) = v9;
    node = v9;
    if ( a3 == a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_create_node(
            (int)a2,
            a4);
    *(_DWORD *)(a3 + 8) = v12;
    node = v12;
    if ( a3 == a2[2] )
      a2[2] = v12;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 344d74 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_Select1st<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::insert_unique(std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>> const&) =====
int __fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        _WORD *a3)
{
  int v3; // r12
  int v6; // r6
  int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r2
  int v12; // r0
  int v13; // r3
  int v14; // r5
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = (__int16)*a3;
    while ( 1 )
    {
      v7 = *(__int16 *)(v3 + 16);
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
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v10 = *(_DWORD *)(v3 + 12);
    v6 = (__int16)*a3;
    v7 = *(__int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(_WORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
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
      v7 = *(__int16 *)(v10 + 16);
      v6 = (__int16)*a3;
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v7 = *(__int16 *)(v14 + 16);
      v6 = (__int16)*a3;
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 344ef8 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_Select1st<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>> const&) =====
int *__fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        _WORD *a4)
{
  int v4; // r4
  int v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  int i; // r12
  int v13; // r2
  int v14; // r12
  int v15; // lr
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  int v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = (__int16)*a4;
    v14 = *(__int16 *)(v4 + 16);
    if ( v13 < v14 )
    {
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        v4,
        0);
      return a1;
    }
    if ( v13 > v14 )
    {
      v15 = *(_DWORD *)(v4 + 12);
      if ( v15 )
      {
        for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
      }
      else
      {
        v18 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v18 + 12) )
        {
          do
          {
            i = v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD *)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != *(_DWORD *)(i + 12) )
          i = v18;
      }
      if ( a2 == (_DWORD *)i )
        goto LABEL_63;
      if ( v13 >= *(__int16 *)(i + 16) )
      {
        std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( (_DWORD *)v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
      {
LABEL_26:
        v7 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v7 + 8) )
        {
          while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
            v7 = *(_DWORD *)(v7 + 4);
          v7 = *(_DWORD *)(v7 + 4);
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) )
      {
        v7 = *(_DWORD *)(v4 + 12);
LABEL_8:
        v8 = (__int16)*a4;
        v9 = *(__int16 *)(v4 + 16);
        if ( v8 < v9 && *(__int16 *)(v7 + 16) < v8 )
        {
          if ( *(_DWORD *)(v7 + 12) )
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              v4,
              0);
          else
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              v7);
          return a1;
        }
        v10 = *(_DWORD *)(v4 + 12);
        if ( v10 )
        {
          for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
            ;
        }
        else
        {
          v17 = *(_DWORD *)(v4 + 4);
          if ( v4 == *(_DWORD *)(v17 + 12) )
          {
            do
            {
              i = v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD *)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != *(_DWORD *)(i + 12) )
            i = v17;
        }
        if ( v8 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == (_DWORD *)i || *(__int16 *)(i + 16) > v8 )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
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
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
        goto LABEL_26;
    }
    while ( *(_DWORD *)(v7 + 12) )
      v7 = *(_DWORD *)(v7 + 12);
    goto LABEL_8;
  }
  v16 = *(_DWORD *)(v4 + 12);
  if ( *(__int16 *)(v16 + 16) >= (__int16)*a4 )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      v4);
  }
  return a1;
}


// ===== 34526c std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 3452ac std::map<short,std::list<ObjectBase *,std::allocator<ObjectBase *>>,std::less<short>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::operator[]<int>(int const&) =====
int __fastcall std::map<short,std::list<ObjectBase *>>::operator[]<int>(_DWORD *a1, __int16 *a2)
{
  int v2; // r12
  __int16 v3; // r4
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  int v7; // r3
  int v8; // r6
  __int16 v10; // [sp+4h] [bp-1Ch] BYREF
  _DWORD v11[2]; // [sp+8h] [bp-18h] BYREF
  _DWORD v12[2]; // [sp+10h] [bp-10h] BYREF
  int v13; // [sp+18h] [bp-8h] BYREF
  int v14; // [sp+1Ch] [bp-4h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      v5 = *(__int16 *)(v2 + 16);
      v6 = v5 < v3;
      if ( v5 >= v3 )
        v7 = *(_DWORD *)(v2 + 8);
      else
        v7 = *(_DWORD *)(v2 + 12);
      if ( v6 )
        v2 = (int)v4;
      v4 = (_DWORD *)v2;
      if ( !v7 )
        break;
      v2 = v7;
    }
  }
  else
  {
    v3 = *a2;
    v2 = (int)a1;
  }
  if ( a1 == (_DWORD *)v2 || (v8 = v2, *(__int16 *)(v2 + 16) > v3) )
  {
    v10 = v3;
    v13 = v2;
    v12[0] = v12;
    v12[1] = v12;
    v11[0] = v11;
    v11[1] = v11;
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v10);
    v8 = v14;
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v11);
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v12);
  }
  return v8 + 20;
}


// ===== 345374 std::list<ObjectBase *,std::allocator<ObjectBase *>>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Const_traits<ObjectBase *>>>(std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>,std::priv::_List_iterator<ObjectBase *,std::_Const_traits<ObjectBase *>>,std::priv::_List_iterator<ObjectBase *,std::_Const_traits<ObjectBase *>>,std::__false_type const&) =====
_DWORD *__fastcall std::list<ObjectBase *>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Const_traits<ObjectBase *>>>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v6; // r3
  _DWORD *v7; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  _DWORD **v10; // r2
  _DWORD *v11; // r1
  _DWORD *v13; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v14; // [sp+4h] [bp-8h]

  v13 = &v13;
  v14 = &v13;
  if ( a4 == a3 )
  {
    v6 = &v13;
  }
  else
  {
    v7 = a3;
    do
    {
      v8 = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
      v8[2] = v7[2];
      v9 = v14;
      *v8 = &v13;
      v8[1] = v9;
      *v9 = v8;
      v14 = v8;
      v7 = (_DWORD *)*v7;
    }
    while ( v7 != a4 );
    v6 = v13;
  }
  v10 = (_DWORD **)*a2;
  if ( v6 != &v13 && v10 != &v13 )
  {
    *v14 = v10;
    *(_DWORD *)v6[1] = &v13;
    *v10[1] = v6;
    v11 = v10[1];
    v10[1] = v14;
    v14 = (_DWORD *)v6[1];
    v6[1] = v11;
  }
  return std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v13);
}


// ===== 345428 std::list<ObjectBase *,std::allocator<ObjectBase *>>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>>(std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>,std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>,std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>,std::__false_type const&) =====
_DWORD *__fastcall std::list<ObjectBase *>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v4; // r6
  _DWORD *v5; // r4
  bool v6; // zf
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r3
  _DWORD **v11; // r2
  _DWORD *v12; // r1
  _DWORD *v14; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v15; // [sp+4h] [bp-8h]

  v4 = (_DWORD *)*a4;
  v5 = (_DWORD *)*a3;
  v6 = *a3 == *a4;
  v14 = &v14;
  v15 = &v14;
  if ( v6 )
  {
    v8 = &v14;
  }
  else
  {
    do
    {
      v9 = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
      v9[2] = v5[2];
      v10 = v15;
      *v9 = &v14;
      v9[1] = v10;
      *v10 = v9;
      v15 = v9;
      v5 = (_DWORD *)*v5;
    }
    while ( v4 != v5 );
    v8 = v14;
  }
  v11 = (_DWORD **)*a2;
  if ( v8 != &v14 && v11 != &v14 )
  {
    *v15 = v11;
    *(_DWORD *)v8[1] = &v14;
    *v11[1] = v8;
    v12 = v11[1];
    v11[1] = v15;
    v15 = (_DWORD *)v8[1];
    v8[1] = v12;
  }
  return std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v14);
}


// ===== 3454dc ObjectManager::FlushAllOrphanRenderObjects(void) =====
_DWORD *__fastcall ObjectManager::FlushAllOrphanRenderObjects(ObjectManager *this)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  int v3; // r3

  v2 = (_DWORD *)((char *)this + 4);
  v1 = *((_DWORD **)this + 1);
  if ( (_DWORD *)((char *)this + 4) != v1 )
  {
    do
    {
      v3 = v1[2];
      if ( v3 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(v1[2]);
        v1[2] = 0;
      }
      v1 = (_DWORD *)*v1;
    }
    while ( v2 != v1 );
  }
  return std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v2);
}


// ===== 34552c ObjectManager::InitPost(void) =====
int __fastcall ObjectManager::InitPost(ObjectManager *this)
{
  int v2; // r2
  int v3; // r3
  int v4; // r2
  int v6; // r5
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r2
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int Object; // r0
  ObjectBase *v15; // r0
  _DWORD *v16; // r0
  _DWORD *v17; // r3
  _DWORD v18[3]; // [sp+4h] [bp-20h] BYREF
  _DWORD v19[3]; // [sp+10h] [bp-14h] BYREF
  size_t v20; // [sp+1Ch] [bp-8h] BYREF

  if ( (`guard variable for'ObjectManager::InitPost(void)::it & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'ObjectManager::InitPost(void)::it) )
  {
    ObjectManager::InitPost(void)::it = 0;
    _cxa_guard_release(&`guard variable for'ObjectManager::InitPost(void)::it);
  }
  if ( (`guard variable for'ObjectManager::InitPost(void)::mit & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'ObjectManager::InitPost(void)::mit) )
  {
    ObjectManager::InitPost(void)::mit = 0;
    _cxa_guard_release(&`guard variable for'ObjectManager::InitPost(void)::mit);
  }
  ObjectHandle::ObjectHandle((ObjectHandle *)v19);
  v2 = *((_DWORD *)this + 31);
  if ( !v2 )
  {
    ObjectManager::InitPost(void)::mit = *((_DWORD *)this + 26);
    ObjectManager::InitPost(void)::it = *((_DWORD *)this + 5);
    v2 = *((_DWORD *)this + 31) + 1;
    *((_DWORD *)this + 31) = v2;
  }
  if ( (ObjectManager *)((char *)this + 104) == (ObjectManager *)ObjectManager::InitPost(void)::mit )
  {
    if ( v2 == 1 )
    {
      v12 = *((_DWORD *)this + 5);
      *((_DWORD *)this + 31) = 2;
      ObjectManager::InitPost(void)::it = v12;
      v2 = *((_DWORD *)this + 31) + 1;
      *((_DWORD *)this + 31) = v2;
    }
  }
  else if ( v2 == 1 )
  {
    Module::LoadModule(*(Module **)(ObjectManager::InitPost(void)::mit + 8));
    ObjectManager::InitPost(void)::mit = *(_DWORD *)ObjectManager::InitPost(void)::mit;
    v2 = *((_DWORD *)this + 31);
  }
  v3 = ObjectManager::InitPost(void)::it;
  if ( (ObjectManager *)((char *)this + 12) == (ObjectManager *)ObjectManager::InitPost(void)::it )
  {
    v11 = v2 + 1;
    *((_DWORD *)this + 31) = v11;
    if ( v11 != 4 )
      return 1;
    ObjectManager::InitPost(void)::it = *((_DWORD *)this + 5);
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 44);
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 68);
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 52);
    return 0;
  }
  if ( v2 == 3 )
  {
    ObjectHandle::ObjectHandle((ObjectHandle *)v18, *(ObjectBase **)(ObjectManager::InitPost(void)::it + 44));
    v19[1] = v18[1];
    v19[2] = v18[2];
    v19[0] = v18[0];
    if ( ObjectHandle::GetObject((ObjectHandle *)v19, 0) )
    {
      Object = ObjectHandle::GetObject((ObjectHandle *)v19, 1);
      (*(void (__fastcall **)(int))(*(_DWORD *)Object + 28))(Object);
      v15 = (ObjectBase *)ObjectHandle::GetObject((ObjectHandle *)v19, 1);
      ObjectBase::TestEnableCondition(v15, 0);
    }
    v3 = ObjectManager::InitPost(void)::it;
    goto LABEL_11;
  }
  if ( v2 == 4 )
  {
    v6 = *(_DWORD *)(ObjectManager::InitPost(void)::it + 44);
    if ( v6 )
    {
      if ( LC_API_STRCASECMP_0("RoomZone", *(const char **)(v6 + 92)) )
      {
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 56))(v6) )
        {
          v16 = (_DWORD *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate((char *)this + 44);
          v16[2] = v6;
          v17 = *((_DWORD **)this + 12);
          *v16 = (char *)this + 44;
          v16[1] = v17;
          *v17 = v16;
          *((_DWORD *)this + 12) = v16;
        }
      }
      else
      {
        v20 = 12;
        v7 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v20);
        v7[2] = v6;
        v8 = *((_DWORD **)this + 10);
        *v7 = (char *)this + 36;
        v7[1] = v8;
        *v8 = v7;
        *((_DWORD *)this + 10) = v7;
        RoomZone::InitObjectList((RoomZone *)v6);
      }
      if ( !*(_BYTE *)(v6 + 172) && *(_DWORD *)(v6 + 168) )
        goto LABEL_26;
      if ( *(_BYTE *)(v6 + 208) )
      {
        v3 = ObjectManager::InitPost(void)::it;
        goto LABEL_11;
      }
      if ( *(_DWORD *)(v6 + 204) )
      {
LABEL_26:
        v9 = (_DWORD *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate((char *)this + 68);
        v9[2] = v6;
        v10 = *((_DWORD **)this + 18);
        *v9 = (char *)this + 68;
        v9[1] = v10;
        *v10 = v9;
        *((_DWORD *)this + 18) = v9;
        v3 = ObjectManager::InitPost(void)::it;
      }
      else
      {
        v3 = ObjectManager::InitPost(void)::it;
      }
    }
  }
LABEL_11:
  v4 = *(_DWORD *)(v3 + 12);
  if ( v4 )
  {
    while ( *(_DWORD *)(v4 + 8) )
      v4 = *(_DWORD *)(v4 + 8);
    v3 = v4;
  }
  else
  {
    v13 = *(_DWORD *)(v3 + 4);
    if ( *(_DWORD *)(v13 + 12) == v3 )
    {
      do
      {
        v3 = v13;
        v13 = *(_DWORD *)(v13 + 4);
      }
      while ( v3 == *(_DWORD *)(v13 + 12) );
      v4 = *(_DWORD *)(v3 + 12);
    }
    if ( v13 != v4 )
      v3 = v13;
  }
  ObjectManager::InitPost(void)::it = v3;
  return 0;
}


// ===== 3458d4 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>,std::allocator<std::pair<short const,std::list<ObjectBase *,std::allocator<ObjectBase *>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
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
      std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v2 + 5);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 345914 std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 345954 ObjectManager::HandleNoRoomObjects(void) =====
_DWORD *__fastcall ObjectManager::HandleNoRoomObjects(ObjectManager *this)
{
  char *v1; // r5
  _DWORD *result; // r0
  char *v4; // r4
  char *v5; // r6
  GameObject *v6; // r8
  char *v7; // r2
  int v8; // r3
  char *v9; // r3

  v1 = (char *)this + 136;
  result = (_DWORD *)std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((char *)this + 136);
  v4 = *((char **)this + 5);
  v5 = (char *)this + 12;
  while ( v5 != v4 )
  {
    while ( 1 )
    {
      v6 = *((GameObject **)v4 + 11);
      if ( v6 )
      {
        result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 32))(*((_DWORD *)v4 + 11));
        if ( result )
        {
          if ( !*((_DWORD *)v6 + 189) )
          {
            v9 = *((char **)this + 34);
            if ( v9 == v1 )
              goto LABEL_23;
            while ( v6 != *((GameObject **)v9 + 2) )
            {
              v9 = *(char **)v9;
              if ( v1 == v9 )
              {
                v9 = v1;
                break;
              }
            }
            if ( v9 == v1 )
LABEL_23:
              result = ObjectManager::AddNoRoomObject(this, v6);
          }
        }
      }
      v7 = *((char **)v4 + 3);
      if ( !v7 )
        break;
      while ( *((_DWORD *)v7 + 2) )
        v7 = *((char **)v7 + 2);
      v4 = v7;
      if ( v5 == v7 )
        return result;
    }
    v8 = *((_DWORD *)v4 + 1);
    if ( v4 == *(char **)(v8 + 12) )
    {
      do
      {
        v4 = (char *)v8;
        v8 = *(_DWORD *)(v8 + 4);
      }
      while ( *(char **)(v8 + 12) == v4 );
      v7 = *((char **)v4 + 3);
    }
    if ( (char *)v8 != v7 )
      v4 = (char *)v8;
  }
  return result;
}


// ===== 345a4c std::priv::_List_base<int,std::allocator<int>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<int,std::allocator<int>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 345a8c std::map<int,std::list<int,std::allocator<int>>,std::less<int>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::list<int>>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r12
  int v3; // r1
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  _DWORD *v7; // r3
  _DWORD *v8; // r6
  int v10; // [sp+4h] [bp-1Ch] BYREF
  _DWORD v11[2]; // [sp+8h] [bp-18h] BYREF
  _DWORD v12[2]; // [sp+10h] [bp-10h] BYREF
  _DWORD *v13; // [sp+18h] [bp-8h] BYREF
  _DWORD *v14; // [sp+1Ch] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      v5 = v2[4];
      v6 = v5 < v3;
      if ( v5 >= v3 )
        v7 = (_DWORD *)v2[2];
      else
        v7 = (_DWORD *)v2[3];
      if ( v6 )
        v2 = v4;
      v4 = v2;
      if ( !v7 )
        break;
      v2 = v7;
    }
  }
  else
  {
    v3 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v8 = v2, v3 < v2[4]) )
  {
    v10 = v3;
    v13 = v2;
    v12[0] = v12;
    v12[1] = v12;
    v11[0] = v11;
    v11[1] = v11;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v10);
    v8 = v14;
    std::priv::_List_base<int,std::allocator<int>>::clear(v11);
    std::priv::_List_base<int,std::allocator<int>>::clear(v12);
  }
  return v8 + 5;
}


// ===== 345b4c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::list<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::list<int,std::allocator<int>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      std::priv::_List_base<int,std::allocator<int>>::clear(v2 + 5);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 345b8c std::priv::_List_base<Character *,std::allocator<Character *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<Character *,std::allocator<Character *>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 345bcc ObjectManager::GetNumObjectsByType(char const*) =====
int __fastcall ObjectManager::GetNumObjectsByType(ObjectManager *this, const char *a2)
{
  _DWORD *v2; // r3
  int v3; // r5
  _DWORD v5[3]; // [sp+0h] [bp-Ch] BYREF

  v5[0] = v5;
  v5[1] = v5;
  ObjectManager::GetObjectsByType((int)this, a2, (int)v5);
  v2 = (_DWORD *)v5[0];
  if ( (_DWORD *)v5[0] == v5 )
  {
    v3 = 0;
  }
  else
  {
    v3 = 0;
    do
    {
      v2 = (_DWORD *)*v2;
      ++v3;
    }
    while ( v2 != v5 );
  }
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear(v5);
  return v3;
}


// ===== 345c20 ObjectManager::GetObjectByType(char const*) =====
ObjectManager *__fastcall ObjectManager::GetObjectByType(ObjectManager *this, const char *a2, const char *a3)
{
  _DWORD *v4; // r3
  _DWORD v6[3]; // [sp+0h] [bp-Ch] BYREF

  v6[0] = v6;
  v6[1] = v6;
  ObjectManager::GetObjectsByType((int)a2, a3, (int)v6);
  if ( (_DWORD *)v6[0] == v6 )
  {
    ObjectHandle::ObjectHandle(this, nullptr);
  }
  else
  {
    v4 = (_DWORD *)v6[0];
    do
      v4 = (_DWORD *)*v4;
    while ( v4 != v6 );
    ObjectHandle::ObjectHandle(this, *(ObjectBase **)(v6[0] + 8));
  }
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear(v6);
  return this;
}


// ===== 345c94 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 345ccc std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
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
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 345d04 std::map<short,std::set<short,std::less<short>,std::allocator<short>>,std::less<short>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::operator[]<int>(int const&) =====
int __fastcall std::map<short,std::set<short>>::operator[]<int>(_DWORD *a1, __int16 *a2)
{
  int v2; // r4
  __int16 v4; // r12
  _DWORD *v5; // r2
  int v6; // r3
  bool v7; // cc
  int v8; // r3
  int v9; // r0
  int v10; // r4
  __int16 v12; // [sp+4h] [bp-40h] BYREF
  int v13; // [sp+8h] [bp-3Ch] BYREF
  _DWORD *v14; // [sp+Ch] [bp-38h]
  int *v15; // [sp+10h] [bp-34h]
  int *v16; // [sp+14h] [bp-30h]
  int v17; // [sp+18h] [bp-2Ch]
  char v18[4]; // [sp+20h] [bp-24h] BYREF
  _DWORD *v19; // [sp+24h] [bp-20h]
  char *v20; // [sp+28h] [bp-1Ch]
  char *v21; // [sp+2Ch] [bp-18h]
  int v22; // [sp+30h] [bp-14h]
  int v23; // [sp+38h] [bp-Ch] BYREF
  int v24; // [sp+3Ch] [bp-8h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = *(__int16 *)(v2 + 16);
      v7 = v6 < v4;
      v8 = v6 >= v4 ? *(_DWORD *)(v2 + 8) : *(_DWORD *)(v2 + 12);
      if ( v7 )
        v2 = (int)v5;
      v5 = (_DWORD *)v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = (int)a1;
  }
  if ( a1 == (_DWORD *)v2 || (v9 = v2, *(__int16 *)(v2 + 16) > v4) )
  {
    v12 = v4;
    v18[0] = 0;
    v19 = nullptr;
    v20 = v18;
    v21 = v18;
    v22 = 0;
    std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_Rb_tree(
      (int)&v13,
      (int)v18);
    v23 = v2;
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::insert_unique(
      &v24,
      a1,
      &v23,
      &v12);
    v10 = v24;
    if ( v17 )
    {
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
        (int)&v13,
        v14);
      v16 = &v13;
      v17 = 0;
      v15 = &v13;
      v14 = nullptr;
      if ( !v22 )
        goto LABEL_14;
    }
    else if ( !v22 )
    {
LABEL_14:
      v9 = v10;
      return v9 + 20;
    }
    std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
      (int)v18,
      v19);
    v9 = v10;
  }
  return v9 + 20;
}


// ===== 345e30 ObjectManager::AskNetResendByObjectId(int) =====
int __fastcall ObjectManager::AskNetResendByObjectId(ObjectManager *this, int a2)
{
  __int16 v2; // r4
  _DWORD *v4; // r5
  int result; // r0
  int v6; // r3
  int v7; // r1
  int v8; // r2
  bool v9; // cc
  int v10; // r2
  _DWORD *v11; // r0
  char *v12[3]; // [sp+4h] [bp-1Ch] BYREF
  char v13[8]; // [sp+10h] [bp-10h] BYREF
  int v14; // [sp+18h] [bp-8h] BYREF
  __int16 v15; // [sp+1Eh] [bp-2h] BYREF

  v2 = a2;
  ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v12, (int)this, a2);
  v4 = (_DWORD *)((char *)this + 404);
  v14 = *((_DWORD *)ObjectHandle::operator GameObject *(v12) + 68);
  result = std::map<short,std::set<short>>::operator[]<int>(v4, (__int16 *)&v14);
  v6 = *(_DWORD *)(result + 4);
  if ( !v6 )
    goto LABEL_14;
  v7 = result;
  while ( 1 )
  {
    v8 = *(__int16 *)(v6 + 16);
    v9 = v8 < v2;
    v10 = v8 >= v2 ? *(_DWORD *)(v6 + 8) : *(_DWORD *)(v6 + 12);
    if ( v9 )
      v6 = v7;
    v7 = v6;
    if ( !v10 )
      break;
    v6 = v10;
  }
  if ( result == v6 )
    goto LABEL_15;
  if ( *(__int16 *)(v6 + 16) > v2 )
LABEL_14:
    v6 = result;
  if ( result == v6 )
  {
LABEL_15:
    v11 = (_DWORD *)std::map<short,std::set<short>>::operator[]<int>(v4, (__int16 *)&v14);
    v15 = v2;
    return std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::insert_unique(
             (int)v13,
             v11,
             &v15);
  }
  return result;
}


// ===== 345f04 std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>,std::priv::_Select1st<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>,std::allocator<std::pair<short const,std::set<short,std::less<short>,std::allocator<short>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
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
        std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
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
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
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


// ===== 345f84 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 345fbc ObjectManager::DelRoomObjects(std::list<GameObject *,std::allocator<GameObject *>> *) =====
_DWORD *__fastcall ObjectManager::DelRoomObjects(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r5
  _DWORD *v6; // t1
  _DWORD *v7; // r6
  _DWORD *v8; // r3

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
        "ro",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
        2322);
    }
  }
  v6 = *(_DWORD **)(a1 + 128);
  v5 = (_DWORD *)(a1 + 128);
  result = v6;
  while ( v5 != result )
  {
    v7 = (_DWORD *)*result;
    if ( a2 == result[2] )
    {
      v8 = (_DWORD *)result[1];
      *v8 = v7;
      v7[1] = v8;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      result = v7;
    }
    else
    {
      result = (_DWORD *)*result;
    }
  }
  return result;
}


// ===== 346090 std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::erase(std::priv::_Rb_tree_iterator<short,std::priv::_SetTraitsT<short>>) =====
void __fastcall std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::erase(
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


// ===== 3460cc ObjectManager::ProcessNextGameObjectToStartUpdate(void) =====
void __fastcall ObjectManager::ProcessNextGameObjectToStartUpdate(ObjectManager *this)
{
  GameObject **v2; // r0
  GameObject **v3; // r3
  GameObject *v4; // r3
  GameObject **v5; // r2

  v3 = (GameObject **)((char *)this + 144);
  v2 = *((GameObject ***)this + 36);
  if ( v2 != v3 )
  {
    if ( v2[2] )
    {
      GameObject::ZoneEntered(v2[2]);
      v2 = *((GameObject ***)this + 36);
    }
    v4 = *v2;
    v5 = (GameObject **)v2[1];
    *v5 = *v2;
    *((_DWORD *)v4 + 1) = v5;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
  }
}


// ===== 34611c std::vector<Point3D<float>,std::allocator<Point3D<float>>>::~vector() =====
int __fastcall std::vector<Point3D<float>>::~vector(int a1)
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


// ===== 346178 ObjectManager::ProcessAcknowledgedPacket(int,int) =====
void __fastcall ObjectManager::ProcessAcknowledgedPacket(ObjectManager *this, int a2, int a3)
{
  char *v3; // r4
  char *v4; // r7
  int v8; // r3
  char *v9; // r3
  char *v10; // r8
  char *v11; // r1
  int v12; // r2
  bool v13; // cc
  char *v14; // r2
  _DWORD *v15; // r0
  _DWORD *v16; // r3
  _DWORD *v17; // t1
  _DWORD *v18; // r3
  _DWORD *v19; // r2

  v4 = (char *)this + 256;
  v3 = *((char **)this + 64);
  if ( (char *)this + 256 != v3 )
  {
    do
    {
      v8 = *(_DWORD *)(*((_DWORD *)v3 + 2) + 256);
      if ( v8 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 64))(*(_DWORD *)(*((_DWORD *)v3 + 2) + 256));
      v3 = *(char **)v3;
    }
    while ( v4 != v3 );
  }
  v9 = *((char **)this + 39);
  v10 = (char *)this + 152;
  if ( !v9 )
    goto LABEL_23;
  v11 = v10;
  while ( 1 )
  {
    v12 = *((_DWORD *)v9 + 4);
    v13 = v12 < a2;
    v14 = v12 >= a2 ? *((char **)v9 + 2) : *((char **)v9 + 3);
    if ( v13 )
      v9 = v11;
    v11 = v9;
    if ( !v14 )
      break;
    v9 = v14;
  }
  if ( v10 == v9 )
    return;
  if ( *((_DWORD *)v9 + 4) > a2 )
LABEL_23:
    v9 = v10;
  if ( v10 != v9 )
  {
    v17 = *((_DWORD **)v9 + 5);
    v16 = v9 + 20;
    v15 = v17;
    if ( v17 != v16 )
    {
      while ( v15[2] != a3 )
      {
        v15 = (_DWORD *)*v15;
        if ( v16 == v15 )
        {
          v15 = v16;
          break;
        }
      }
      if ( v15 != v16 )
      {
        v18 = (_DWORD *)*v15;
        v19 = (_DWORD *)v15[1];
        *v19 = *v15;
        v18[1] = v19;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, 0xCu);
      }
    }
  }
}


// ===== 346284 ObjectManager::sProcessAcknowledgedPacket(int,int) =====
void __fastcall ObjectManager::sProcessAcknowledgedPacket(ObjectManager *this, int a2, int a3)
{
  if ( dword_99F764 )
    ObjectManager::ProcessAcknowledgedPacket((ObjectManager *)dword_99F764, (int)this, a2);
}


// ===== 3462b8 ObjectManager::RemoveNoRoomObject(GameObject *) =====
void __fastcall ObjectManager::RemoveNoRoomObject(ObjectManager *this, GameObject *a2)
{
  char *v2; // r0
  GameObject **v3; // r3
  char *v4; // t1
  GameObject *v6; // r2
  GameObject **v7; // r12

  v4 = *((char **)this + 34);
  v2 = (char *)this + 136;
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
    v6 = *v3;
    v7 = (GameObject **)v3[1];
    *v7 = *v3;
    *((_DWORD *)v6 + 1) = v7;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0xCu);
    *((_BYTE *)a2 + 760) = 0;
  }
}


// ===== 346314 std::vector<Module *,std::allocator<Module *>>::_M_fill_insert(Module **,uint,Module * const&) =====
void __fastcall std::vector<Module *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
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
      std::vector<Module *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<Module *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<Module *>::_M_allocate(a1 + 8, size, &size);
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


// ===== 346430 std::vector<Module *,std::allocator<Module *>>::resize(uint,Module * const&) =====
void __fastcall std::vector<Module *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<Module *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 346474 std::list<ObjectBase *,std::allocator<ObjectBase *>>::operator=(std::list<ObjectBase *,std::allocator<ObjectBase *>> const&) =====
_DWORD *__fastcall std::list<ObjectBase *>::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r2
  int v6; // r12
  _DWORD *v7; // r1
  _DWORD *v9; // r5
  _DWORD *v10; // r3
  _DWORD *v11; // [sp+8h] [bp-Ch] BYREF

  if ( a1 != a2 )
  {
    v4 = (_DWORD *)*a1;
    v5 = (_DWORD *)*a2;
    while ( a1 != v4 )
    {
      if ( a2 == v5 )
      {
        while ( 1 )
        {
          v9 = (_DWORD *)*v4;
          v10 = (_DWORD *)v4[1];
          *v10 = *v4;
          v9[1] = v10;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
          if ( a1 == v9 )
            break;
          v4 = v9;
        }
        return a1;
      }
      v6 = v5[2];
      v7 = (_DWORD *)*v4;
      v5 = (_DWORD *)*v5;
      v4[2] = v6;
      v4 = v7;
    }
    if ( a2 != v5 )
    {
      v11 = a1;
      std::list<ObjectBase *>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Const_traits<ObjectBase *>>>(
        (int)a1,
        &v11,
        v5,
        a2);
    }
  }
  return a1;
}


// ===== 346510 ObjectManager::SerializeGameObjectNetData(int,int,NetBitStream &) =====
_DWORD *__fastcall ObjectManager::SerializeGameObjectNetData(ObjectManager *this, int a2, int a3, NetBitStream *a4)
{
  int CurrentLevel; // r0
  char *v6; // r1
  char *v7; // r3
  _DWORD *v8; // r4
  _DWORD *v9; // r0
  _DWORD *v10; // r2
  char *v11; // r12
  char *v12; // r1
  int v13; // lr
  char *v14; // r2
  int v15; // r3
  bool v16; // cc
  char *v17; // r3
  char *v18; // r3
  char *v19; // r12
  char *v20; // r1
  int v21; // lr
  char *v22; // r2
  int v23; // r3
  bool v24; // cc
  char *v25; // r3
  char *v26; // r3
  _DWORD *v27; // r0
  unsigned int v28; // r2
  _DWORD *v29; // r4
  _DWORD *v30; // r6
  int v31; // r3
  signed int v32; // r1
  CMatching *v33; // r0
  _DWORD *v34; // r6
  ObjectBase *v35; // r8
  int v36; // r0
  int v37; // r4
  int v38; // r5
  int v39; // r1
  int v40; // r2
  int v41; // r3
  bool v42; // cc
  int v43; // r3
  int IsObjectSerializable; // r0
  bool v45; // r1
  _DWORD *v46; // r0
  _DWORD *v47; // r3
  _DWORD *v48; // r5
  _DWORD **v49; // r0
  _DWORD *v50; // r3
  int v51; // r9
  unsigned int v52; // r3
  _DWORD *v53; // r11
  int *v54; // r0
  int *v55; // r2
  unsigned int v56; // r6
  int v57; // r4
  int v58; // r0
  int v59; // r3
  int v60; // r1
  int v61; // r2
  bool v62; // cc
  int v63; // r2
  int v64; // r0
  int v65; // r3
  int v66; // r1
  int v67; // r2
  bool v68; // cc
  int v69; // r2
  int v70; // r0
  NetStruct *v71; // r0
  int *v72; // r0
  int *v73; // r3
  _DWORD *v74; // r0
  _DWORD *v75; // r0
  _DWORD *v76; // r4
  char *v77; // r12
  char *v78; // r1
  int v79; // lr
  char *v80; // r2
  int v81; // r3
  bool v82; // cc
  char *v83; // r3
  char *v84; // r3
  int v85; // r4
  int v86; // r2
  _DWORD *v88; // r3
  int v89; // r3
  char ConnectionMgr; // r0
  size_t v91; // r1
  _DWORD *v92; // r0
  int v93; // r0
  int v94; // r6
  int i; // r4
  CMessaging *ScriptModule; // r9
  CMessaging *v97; // r10
  bool v98; // r2
  CMessage *Message; // r0
  int *j; // r4
  int v101; // r5
  char *v102; // r0
  Character *v103; // r8
  _DWORD *v104; // r0
  _DWORD *v105; // r3
  _DWORD *v106; // r3
  unsigned int v107; // [sp+4h] [bp-B8h]
  unsigned int v108; // [sp+4h] [bp-B8h]
  _DWORD *v109; // [sp+8h] [bp-B4h]
  _DWORD *v111; // [sp+10h] [bp-ACh]
  CMessage *v112; // [sp+14h] [bp-A8h]
  unsigned int v113; // [sp+1Ch] [bp-A0h]
  _DWORD *v115; // [sp+24h] [bp-98h]
  NetBitStream *v116; // [sp+28h] [bp-94h]
  NetBitStream *v117; // [sp+28h] [bp-94h]
  int v118; // [sp+2Ch] [bp-90h]
  int v119[2]; // [sp+34h] [bp-88h] BYREF
  _BYTE v120[28]; // [sp+3Ch] [bp-80h] BYREF
  int v121; // [sp+58h] [bp-64h]
  void *__p[3]; // [sp+5Ch] [bp-60h] BYREF
  char *v123[3]; // [sp+68h] [bp-54h] BYREF
  int v124; // [sp+74h] [bp-48h] BYREF
  __int16 v125; // [sp+78h] [bp-44h]
  int v126; // [sp+7Ch] [bp-40h] BYREF
  __int16 v127; // [sp+80h] [bp-3Ch]
  int v128; // [sp+84h] [bp-38h] BYREF
  __int16 v129; // [sp+88h] [bp-34h]
  int v130; // [sp+8Ch] [bp-30h] BYREF
  int *v131; // [sp+90h] [bp-2Ch]
  _DWORD *v132; // [sp+94h] [bp-28h] BYREF
  _DWORD **v133; // [sp+98h] [bp-24h]
  char *v134; // [sp+9Ch] [bp-20h] BYREF
  char *v135; // [sp+A0h] [bp-1Ch] BYREF
  char *v136; // [sp+A4h] [bp-18h] BYREF
  char *v137; // [sp+A8h] [bp-14h] BYREF
  char *v138; // [sp+ACh] [bp-10h] BYREF
  char *v139; // [sp+B0h] [bp-Ch] BYREF
  unsigned __int8 *v140; // [sp+B4h] [bp-8h] BYREF

  v119[0] = a2;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v109 = (_DWORD *)((char *)this + 356);
  NetBitStream::WriteByte(a4, *(_BYTE *)(CurrentLevel + 60), 8u);
  v111 = (_DWORD *)((char *)this + 380);
  v132 = &v132;
  v133 = &v132;
  std::map<short,std::set<short>>::operator[]<int>((_DWORD *)this + 89, (__int16 *)v119);
  v118 = *(_DWORD *)(std::map<short,std::set<short>>::operator[]<int>((_DWORD *)this + 95, (__int16 *)v119) + 16);
  if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
    goto LABEL_34;
  v6 = (char *)this + 296;
  v7 = *((char **)this + 74);
  if ( v7 != (char *)this + 296 && *((_DWORD *)v7 + 2) != v119[0] )
  {
    do
    {
      v7 = *(char **)v7;
      if ( v6 == v7 )
        goto LABEL_34;
    }
    while ( *((_DWORD *)v7 + 2) != v119[0] );
  }
  if ( v6 == v7 )
  {
LABEL_34:
    NetBitStream::WriteBit(a4, 0);
    v113 = 0;
    goto LABEL_35;
  }
  v8 = std::map<int,std::list<int>>::operator[]<int>((_DWORD *)this + 38, v119);
  v9 = std::allocator<std::priv::_List_node<int>>::allocate();
  v9[2] = a3;
  v10 = (_DWORD *)v8[1];
  *v9 = v8;
  v9[1] = v10;
  *v10 = v9;
  v8[1] = v9;
  NetBitStream::WriteBit(a4, 1u);
  v11 = *((char **)this + 45);
  v12 = (char *)this + 176;
  if ( v11 )
  {
    v13 = v119[0];
    v14 = (char *)this + 176;
    while ( 1 )
    {
      v15 = *((_DWORD *)v11 + 4);
      v16 = v15 < v119[0];
      if ( v15 >= v119[0] )
        v17 = *((char **)v11 + 2);
      else
        v17 = *((char **)v11 + 3);
      if ( v16 )
        v11 = v14;
      v14 = v11;
      if ( !v17 )
        break;
      v11 = v17;
    }
  }
  else
  {
    v13 = v119[0];
    v11 = (char *)this + 176;
  }
  if ( v12 == v11 || (v18 = v11, *((_DWORD *)v11 + 4) > v13) )
  {
    v138 = v11;
    v128 = v13;
    v129 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      &v139,
      v12,
      (_DWORD **)&v138,
      &v128);
    v18 = v139;
  }
  NetBitStream::WriteByte(a4, v18[20], 8u);
  v19 = *((char **)this + 57);
  v20 = (char *)this + 224;
  if ( v19 )
  {
    v21 = v119[0];
    v22 = (char *)this + 224;
    while ( 1 )
    {
      v23 = *((_DWORD *)v19 + 4);
      v24 = v119[0] <= v23;
      if ( v119[0] <= v23 )
        v25 = *((char **)v19 + 2);
      else
        v25 = *((char **)v19 + 3);
      if ( !v24 )
        v19 = v22;
      v22 = v19;
      if ( !v25 )
        break;
      v19 = v25;
    }
  }
  else
  {
    v21 = v119[0];
    v19 = (char *)this + 224;
  }
  if ( v20 == v19 || (v26 = v19, *((_DWORD *)v19 + 4) > v21) )
  {
    v136 = v19;
    v126 = v21;
    v127 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      &v137,
      v20,
      (_DWORD **)&v136,
      &v126);
    v26 = v137;
  }
  v113 = 1;
  ++*((_WORD *)v26 + 10);
LABEL_35:
  v115 = (_DWORD *)((char *)this + 264);
  v27 = (_DWORD *)std::map<short,std::list<ObjectBase *>>::operator[]<int>((_DWORD *)this + 66, (__int16 *)v119);
  v28 = *((_DWORD *)a4 + 4);
  v29 = v27;
  v30 = (_DWORD *)*v27;
  v31 = v28 & 7;
  if ( (v28 & 7) != 0 )
    v31 = 1;
  v32 = 1392 - (v28 >> 3) - v31;
  if ( v32 > 0 )
  {
    v33 = NetBitStream::NetBitStream((NetBitStream *)v120, v32);
    if ( v30 != v29 )
    {
      v48 = *(_DWORD **)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v115, (__int16 *)v119);
      v49 = (_DWORD **)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v115, (__int16 *)v119);
      goto LABEL_61;
    }
    if ( v113 )
    {
      v93 = CMatching::Get(v33);
      v117 = (NetBitStream *)(*(int (__fastcall **)(int))(*(_DWORD *)v93 + 108))(v93);
      v94 = -1431655765 * ((dword_9A5FF8 - dword_9A5FF4) >> 2);
      if ( v94 > 0 )
      {
        for ( i = 0; i != v94; ++i )
        {
          while ( !ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, i) )
          {
            if ( ++i == v94 )
              goto LABEL_155;
          }
          ScriptModule = (CMessaging *)ScriptManager::GetScriptModule((ScriptManager *)&ScriptManager::s_inst, i);
          v97 = (CMessaging *)CMessaging::Get(ScriptModule);
          Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgScriptCmd", (const char *)&dword_0 + 1, v98);
          *((_DWORD *)Message + 21) = i;
          *((_DWORD *)Message + 22) = ScriptModule;
          *((_DWORD *)Message + 20) = 4;
          CMessaging::SendMsgTo(v97, Message, v119[0]);
        }
      }
LABEL_155:
      for ( j = *((int **)this + 64); (int *)((char *)this + 256) != j; j = (int *)*j )
      {
        v101 = j[2];
        if ( v101 && *(_DWORD *)(v101 + 256) )
        {
          ObjectBase::GetHandle((ObjectBase *)v123, j[2]);
          v102 = ObjectHandle::operator Character *(v123);
          v103 = (Character *)v102;
          if ( !v102
            || (!(*(int (__fastcall **)(char *))(*(_DWORD *)v102 + 40))(v102)
             || ObjectManager::IsRemotePlayerOfMember(this, (int)v117, v103))
            && !Character::IsMerchant(v103) )
          {
            v104 = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
            v104[2] = v101;
            v105 = v133;
            *v104 = &v132;
            v104[1] = v105;
            *v105 = v104;
            v133 = (_DWORD **)v104;
          }
        }
      }
      v48 = v132;
      if ( v132 == &v132 )
      {
        v49 = &v132;
        goto LABEL_61;
      }
      v106 = v132;
      do
        v106 = (_DWORD *)*v106;
      while ( v106 != &v132 );
    }
    else
    {
      v34 = *((_DWORD **)this + 64);
      while ( v34 != (_DWORD *)((char *)this + 256) )
      {
        v35 = (ObjectBase *)v34[2];
        v36 = std::map<short,std::set<short>>::operator[]<int>(v109, (__int16 *)v119);
        v37 = *(_DWORD *)(v36 + 4);
        v38 = v36;
        v39 = *((_DWORD *)v35 + 66);
        if ( !v37 )
          goto LABEL_95;
        v40 = v36;
        while ( 1 )
        {
          v41 = *(__int16 *)(v37 + 16);
          v42 = v41 < (__int16)v39;
          if ( v41 >= (__int16)v39 )
            v43 = *(_DWORD *)(v37 + 8);
          else
            v43 = *(_DWORD *)(v37 + 12);
          if ( v42 )
            v37 = v40;
          v40 = v37;
          if ( !v43 )
            break;
          v37 = v43;
        }
        if ( v36 == v37 || *(__int16 *)(v37 + 16) <= (__int16)v39 )
        {
          IsObjectSerializable = ObjectManager::IsObjectSerializable(this, v35, v119[0]);
          v45 = IsObjectSerializable;
          if ( IsObjectSerializable )
            goto LABEL_53;
        }
        else
        {
LABEL_95:
          v70 = ObjectManager::IsObjectSerializable(this, v35, v119[0]);
          v45 = v70;
          v37 = v38;
          if ( v70 )
            goto LABEL_53;
        }
        if ( v38 == v37 )
        {
          v71 = *((NetStruct **)v35 + 64);
          if ( v71 )
          {
            NetStruct::SetEnabled(v71, v45);
            v34 = (_DWORD *)*v34;
            continue;
          }
          goto LABEL_54;
        }
        if ( !*((_DWORD *)v35 + 64) )
        {
          v34 = (_DWORD *)*v34;
          continue;
        }
LABEL_53:
        v46 = std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
        v46[2] = v35;
        v47 = v133;
        *v46 = &v132;
        v46[1] = v47;
        *v47 = v46;
        v133 = (_DWORD **)v46;
LABEL_54:
        v34 = (_DWORD *)*v34;
      }
      v48 = v132;
      if ( v132 == &v132 )
      {
        v49 = &v132;
LABEL_61:
        v51 = 0;
        v116 = a4;
        v130 = (int)&v130;
        v131 = &v130;
        v52 = 0;
        v112 = nullptr;
        v53 = v49;
        while ( 1 )
        {
          if ( v48 == v53 )
          {
            NetBitStream::WriteU32(v116, (unsigned int)v112, 0x10u);
            NetBitStream::WriteStream(v116, (NetBitStream *)v120);
            v74 = (_DWORD *)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v115, (__int16 *)v119);
            std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v74);
            if ( v51 )
            {
              v92 = (_DWORD *)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v115, (__int16 *)v119);
              std::list<ObjectBase *>::operator=(v92, &v130);
              std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v130);
              NetBitStream::WriteBit(v116, 0);
              goto LABEL_124;
            }
            v75 = *((_DWORD **)this + 74);
            while ( (_DWORD *)((char *)this + 296) != v75 )
            {
              v76 = (_DWORD *)*v75;
              if ( v119[0] == v75[2] )
              {
                v88 = (_DWORD *)v75[1];
                *v88 = v76;
                v76[1] = v88;
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v75, 0xCu);
                v75 = v76;
              }
              else
              {
                v75 = (_DWORD *)*v75;
              }
            }
            if ( v113 )
            {
              NetBitStream::WriteBit(v116, 1u);
              v77 = *((char **)this + 57);
              v78 = (char *)this + 224;
              if ( v77 )
              {
                v79 = v119[0];
                v80 = (char *)this + 224;
                while ( 1 )
                {
                  v81 = *((_DWORD *)v77 + 4);
                  v82 = v81 < v119[0];
                  if ( v81 >= v119[0] )
                    v83 = *((char **)v77 + 2);
                  else
                    v83 = *((char **)v77 + 3);
                  if ( v82 )
                    v77 = v80;
                  v80 = v77;
                  if ( !v83 )
                    break;
                  v77 = v83;
                }
              }
              else
              {
                v79 = v119[0];
                v77 = (char *)this + 224;
              }
              if ( v78 == v77 || (v84 = v77, *((_DWORD *)v77 + 4) > v79) )
              {
                v134 = v77;
                v124 = v79;
                v125 = 0;
                std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
                  &v135,
                  v78,
                  (_DWORD **)&v134,
                  &v124);
                v84 = v135;
              }
              NetBitStream::WriteByte(v116, v84[20], 8u);
LABEL_124:
              if ( v118 > 0 )
              {
LABEL_125:
                NetBitStream::WriteBit(v116, 1u);
                NetBitStream::WriteU32(v116, v118, 0x10u);
                v85 = *(_DWORD *)(std::map<short,std::set<short>>::operator[]<int>(v111, (__int16 *)v119) + 8);
                while ( v85 != std::map<short,std::set<short>>::operator[]<int>(v111, (__int16 *)v119) )
                {
                  while ( 1 )
                  {
                    NetBitStream::WriteU32(v116, *(__int16 *)(v85 + 16), 0x10u);
                    v86 = *(_DWORD *)(v85 + 12);
                    if ( !v86 )
                      break;
                    while ( *(_DWORD *)(v86 + 8) )
                      v86 = *(_DWORD *)(v86 + 8);
                    v85 = v86;
                    if ( v86 == std::map<short,std::set<short>>::operator[]<int>(v111, (__int16 *)v119) )
                      goto LABEL_132;
                  }
                  v89 = *(_DWORD *)(v85 + 4);
                  if ( v85 == *(_DWORD *)(v89 + 12) )
                  {
                    do
                    {
                      v85 = v89;
                      v89 = *(_DWORD *)(v89 + 4);
                    }
                    while ( v85 == *(_DWORD *)(v89 + 12) );
                    v86 = *(_DWORD *)(v85 + 12);
                  }
                  if ( v89 != v86 )
                    v85 = v89;
                }
LABEL_132:
                if ( !*((_BYTE *)this + 253) )
                {
LABEL_133:
                  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v130);
                  NetBitStream::~NetBitStream((NetBitStream *)v120);
                  return std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v132);
                }
LABEL_143:
                ConnectionMgr = GetConnectionMgr();
                CConnectionManager::GetConnMemberIdList((CConnectionManager *)__p, ConnectionMgr);
                if ( *((_DWORD *)__p[1] - 1) == v119[0] )
                {
                  ObjectManager::DoOnlineStateFlush(this);
                  *((_BYTE *)this + 253) = 0;
                }
                if ( __p[0] )
                {
                  v91 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
                  if ( v91 > 0x80 )
                    CustomFree(__p[0]);
                  else
                    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v91);
                }
                goto LABEL_133;
              }
            }
            else
            {
              NetBitStream::WriteBit(v116, 0);
              if ( v118 > 0 )
                goto LABEL_125;
            }
            NetBitStream::WriteBit(v116, 0);
            if ( !*((_BYTE *)this + 253) )
              goto LABEL_133;
            goto LABEL_143;
          }
          v57 = v48[2];
          if ( v51 )
          {
            v107 = v52;
            v54 = (int *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
            v54[2] = v57;
            v55 = v131;
            *v54 = (int)&v130;
            v54[1] = (int)v55;
            v56 = v107;
            *v55 = (int)v54;
            v131 = v54;
            goto LABEL_63;
          }
          v108 = v52;
          NetBitStream::SetRevertPoint((NetBitStream *)v120);
          v56 = *(_DWORD *)(v57 + 264);
          if ( v56 - v108 == 1 )
          {
            NetBitStream::WriteBit((NetBitStream *)v120, 0);
          }
          else
          {
            NetBitStream::WriteBit((NetBitStream *)v120, 1u);
            NetBitStream::WriteU32((NetBitStream *)v120, v56, 0x10u);
          }
          NetBitStream::WriteByte((NetBitStream *)v120, *(_BYTE *)(v57 + 248), 8u);
          v58 = std::map<short,std::set<short>>::operator[]<int>(v109, (__int16 *)v119);
          v59 = *(_DWORD *)(v58 + 4);
          if ( !v59 )
            goto LABEL_102;
          v60 = v58;
          while ( 1 )
          {
            v61 = *(__int16 *)(v59 + 16);
            v62 = v61 < (__int16)v56;
            if ( v61 >= (__int16)v56 )
              v63 = *(_DWORD *)(v59 + 8);
            else
              v63 = *(_DWORD *)(v59 + 12);
            if ( v62 )
              v59 = v60;
            v60 = v59;
            if ( !v63 )
              break;
            v59 = v63;
          }
          if ( v58 == v59 )
            goto LABEL_93;
          if ( *(__int16 *)(v59 + 16) > (__int16)v56 )
LABEL_102:
            v59 = v58;
          if ( v58 != v59 )
          {
            NetStruct::Resend(*(NetStruct **)(v57 + 256));
            v64 = std::map<short,std::set<short>>::operator[]<int>(v109, (__int16 *)v119);
            v65 = *(_DWORD *)(v64 + 4);
            if ( v65 )
            {
              v66 = v64;
              while ( 1 )
              {
                v67 = *(__int16 *)(v65 + 16);
                v68 = v67 < (__int16)v56;
                if ( v67 >= (__int16)v56 )
                  v69 = *(_DWORD *)(v65 + 8);
                else
                  v69 = *(_DWORD *)(v65 + 12);
                if ( v68 )
                  v65 = v66;
                v66 = v65;
                if ( !v69 )
                  break;
                v65 = v69;
              }
              if ( v64 != v65 && *(__int16 *)(v65 + 16) <= (__int16)v56 )
              {
                v140 = (unsigned __int8 *)v65;
                std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::erase(
                  v64,
                  &v140);
              }
            }
          }
LABEL_93:
          (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v57 + 76))(v57, v113);
          NetStruct::SetEnabled(*(NetStruct **)(v57 + 256), 1);
          (*(void (__fastcall **)(_DWORD, _BYTE *, int, int))(**(_DWORD **)(v57 + 256) + 8))(
            *(_DWORD *)(v57 + 256),
            v120,
            v119[0],
            a3);
          if ( v121 )
          {
            NetBitStream::Revert((NetBitStream *)v120);
            v72 = (int *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate();
            v72[2] = v57;
            v73 = v131;
            v51 = 1;
            *v72 = (int)&v130;
            v72[1] = (int)v73;
            *v73 = (int)v72;
            v131 = v72;
          }
          else
          {
            v112 = (CMessage *)((char *)v112 + 1);
          }
LABEL_63:
          v48 = (_DWORD *)*v48;
          v52 = v56;
        }
      }
      v50 = v132;
      do
        v50 = (_DWORD *)*v50;
      while ( v50 != &v132 );
    }
    v49 = &v132;
    goto LABEL_61;
  }
  NetBitStream::WriteU32(a4, 0, 0x10u);
  return std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(&v132);
}


// ===== 347074 ObjectManager::sWritePacketData(int,int,NetBitStream &) =====
int __fastcall ObjectManager::sWritePacketData(ObjectManager *this, int a2, NetBitStream *a3, NetBitStream *a4)
{
  int CurrentLevel; // r0

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(int *)(CurrentLevel + 304) > 35 && dword_99F764 )
  {
    NetBitStream::WriteBit(a3, 1u);
    ObjectManager::SerializeGameObjectNetData((ObjectManager *)dword_99F764, (int)this, a2, a3);
    return 1;
  }
  else
  {
    NetBitStream::WriteBit(a3, 0);
    return 0;
  }
}


// ===== 347100 ObjectManager::InitModulesFogColor(std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&,int) =====
int __fastcall ObjectManager::InitModulesFogColor(int a1, _DWORD *a2, int a3)
{
  int v4; // r3
  int result; // r0
  _DWORD *v6; // r4
  unsigned int v7; // r1
  int v8; // r7
  _DWORD *v9; // r3
  float **v10; // r1
  float *v11; // r4
  float **v12; // r11
  float **v13; // r7
  int v14; // r6
  float v15; // r0
  float v16; // r9
  float v17; // r8
  float v18; // r10
  int v19; // r8
  int v20; // r1
  int v21; // r3
  int v22; // r8
  size_t v23; // r1
  int v24; // [sp+4h] [bp-30h]
  int v25; // [sp+8h] [bp-2Ch]
  float **v26; // [sp+14h] [bp-20h] BYREF
  void *__p; // [sp+18h] [bp-1Ch]
  int i; // [sp+1Ch] [bp-18h]
  int v29; // [sp+20h] [bp-14h] BYREF
  int v30; // [sp+24h] [bp-10h]
  char v31[8]; // [sp+2Ch] [bp-8h] BYREF

  v4 = (a2[1] - *a2) >> 2;
  result = 1431655765 * v4;
  if ( -1431655765 * v4 )
  {
    v24 = 100 * a3;
    std::vector<Point3D<float>>::vector(&v29, a2);
    std::random_shuffle<Point3D<float> *>(v29, v30);
    v6 = *(_DWORD **)(a1 + 104);
    v7 = 0;
    v26 = nullptr;
    __p = nullptr;
    for ( i = 0; (_DWORD *)(a1 + 104) != v6; ++v7 )
      v6 = (_DWORD *)*v6;
    v8 = 0;
    *(_DWORD *)v31 = 0;
    std::vector<Module *>::resize((int)&v26, v7, v31);
    v9 = *(_DWORD **)(a1 + 104);
    v10 = v26;
    while ( v6 != v9 )
    {
      v10[v8] = (float *)v9[2];
      v9 = (_DWORD *)*v9;
      ++v8;
    }
    v11 = *(float **)(*(_DWORD *)(a1 + 104) + 8);
    std::sort<Module **,SortModuleByDistance>(v26, (float **)__p, (int)v11);
    v12 = (float **)__p;
    v13 = v26;
    v25 = -1431655765 * ((v30 - v29) >> 2);
    if ( __p != v26 )
    {
      do
      {
        v14 = (int)*v13++;
        v16 = v11[89] - *(float *)(v14 + 356);
        v17 = v11[90] - *(float *)(v14 + 360);
        v15 = v11[88] - *(float *)(v14 + 352);
        v18 = sqrtf((float)((float)(v15 * v15) + (float)(v16 * v16)) + (float)(v17 * v17));
        v19 = v29;
        if ( Point3D<float>::operator==((float *)(v14 + 1008), (float *)&Module::UNINIT_FOG_COLOR) )
        {
          v20 = 12 * ((int)v18 / v24 % v25);
          v21 = *(_DWORD *)(v19 + v20);
          v22 = v19 + v20;
          *(_DWORD *)(v14 + 1008) = v21;
          *(_DWORD *)(v14 + 1012) = *(_DWORD *)(v22 + 4);
          *(_DWORD *)(v14 + 1016) = *(_DWORD *)(v22 + 8);
        }
      }
      while ( v13 != v12 );
      v12 = v26;
    }
    if ( v12 )
    {
      v23 = (i - (_DWORD)v12) & 0xFFFFFFFC;
      if ( v23 > 0x80 )
        CustomFree(v12);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v23);
    }
    return std::vector<Point3D<float>>::~vector((int)&v29);
  }
  return result;
}


// ===== 34735c ObjectManager::LoadGameObjectNetData(int,int,NetBitStream &) =====
void __fastcall ObjectManager::LoadGameObjectNetData(ObjectManager *this, int a2, CPacketManager *a3, NetBitStream *a4)
{
  int CurrentLevel; // r5
  __int16 v7; // r10
  int U32; // r5
  int v9; // r7
  int v10; // r8
  int v11; // r10
  int v12; // r6
  unsigned __int8 *Object; // r0
  ObjectBase *v14; // r5
  int v15; // r3
  int v16; // r12
  int v17; // r0
  _DWORD *v18; // r5
  int v19; // r0
  _DWORD *v20; // r5
  _DWORD *j; // r5
  int v22; // r0
  int v23; // r7
  int k; // r5
  __int16 v25; // r6
  int v26; // r0
  _DWORD *v27; // r0
  _DWORD *v28; // r4
  _DWORD *v29; // r0
  _DWORD *v30; // r4
  int v31; // r0
  int *v32; // r3
  int v33; // r6
  COnline *Online; // r0
  int v35; // r0
  int v36; // r3
  int v37; // r1
  int v38; // r2
  bool v39; // cc
  int v40; // r2
  int v41; // r0
  int *v42; // r3
  int v43; // r0
  int v44; // r3
  int v45; // r1
  int v46; // r2
  bool v47; // cc
  int v48; // r2
  int v49; // r0
  int *v50; // r3
  int v51; // r3
  __int16 Byte; // r0
  __int16 v53; // r8
  char *v54; // r12
  char *v55; // r5
  char *v56; // r1
  char *i; // r3
  int v58; // r2
  bool v59; // cc
  char *v60; // r2
  int v61; // lr
  char *v62; // r2
  int v63; // r3
  bool v64; // cc
  char *v65; // r3
  char *v66; // r3
  char *v67; // r12
  int v68; // lr
  char *v69; // r2
  int v70; // r3
  bool v71; // cc
  char *v72; // r3
  char *v73; // r3
  _WORD *v74; // r0
  int v75; // r7
  __int16 v76; // r7
  int IsPacketValid; // [sp+14h] [bp-80h]
  int v79; // [sp+1Ch] [bp-78h]
  char *v80; // [sp+20h] [bp-74h]
  char *v81; // [sp+28h] [bp-6Ch]
  int v82; // [sp+44h] [bp-50h] BYREF
  _BYTE v83[12]; // [sp+48h] [bp-4Ch] BYREF
  int v84; // [sp+54h] [bp-40h] BYREF
  __int16 v85; // [sp+58h] [bp-3Ch]
  int v86; // [sp+5Ch] [bp-38h] BYREF
  __int16 v87; // [sp+60h] [bp-34h]
  char v88[8]; // [sp+64h] [bp-30h] BYREF
  char v89[8]; // [sp+6Ch] [bp-28h] BYREF
  _DWORD *v90; // [sp+74h] [bp-20h] BYREF
  int *v91; // [sp+78h] [bp-1Ch]
  char *v92; // [sp+7Ch] [bp-18h] BYREF
  char *v93; // [sp+80h] [bp-14h] BYREF
  char *v94; // [sp+84h] [bp-10h] BYREF
  char *v95; // [sp+88h] [bp-Ch] BYREF
  __int16 v96[3]; // [sp+8Eh] [bp-6h] BYREF

  v82 = a2;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel || NetBitStream::ReadByte(a4, 8u) != *(_DWORD *)(CurrentLevel + 60) )
    return;
  v90 = &v90;
  v91 = (int *)&v90;
  if ( !NetBitStream::ReadBit(a4) )
  {
    v79 = 0;
    v7 = -1;
    goto LABEL_7;
  }
  Byte = NetBitStream::ReadByte(a4, 8u);
  v53 = Byte;
  v7 = Byte;
  v54 = *((char **)this + 45);
  v55 = (char *)this + 176;
  if ( !v54 )
    goto LABEL_137;
  v56 = (char *)this + 176;
  for ( i = *((char **)this + 45); ; i = v60 )
  {
    v58 = *((_DWORD *)i + 4);
    v59 = v58 < v82;
    if ( v58 >= v82 )
      v60 = *((char **)i + 2);
    else
      v60 = *((char **)i + 3);
    if ( v59 )
      i = v56;
    v56 = i;
    if ( !v60 )
      break;
  }
  if ( v55 == i )
    goto LABEL_149;
  if ( *((_DWORD *)i + 4) > v82 )
LABEL_137:
    i = (char *)this + 176;
  if ( v55 == i )
  {
LABEL_149:
    *(_WORD *)std::map<int,short>::operator[]<int>((char *)this + 176, &v82) = -1;
    v54 = *((char **)this + 45);
  }
  if ( v54 )
  {
    v61 = v82;
    v62 = (char *)this + 176;
    while ( 1 )
    {
      v63 = *((_DWORD *)v54 + 4);
      v64 = v63 < v82;
      if ( v63 >= v82 )
        v65 = *((char **)v54 + 2);
      else
        v65 = *((char **)v54 + 3);
      if ( v64 )
        v54 = v62;
      v62 = v54;
      if ( !v65 )
        break;
      v54 = v65;
    }
  }
  else
  {
    v61 = v82;
    v54 = (char *)this + 176;
  }
  if ( v55 == v54 || (v66 = v54, *((_DWORD *)v54 + 4) > v61) )
  {
    v94 = v54;
    v86 = v61;
    v87 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      &v95,
      v55,
      &v94,
      &v86);
    v66 = v95;
  }
  if ( *((__int16 *)v66 + 10) < v53 )
  {
    *(_WORD *)std::map<int,short>::operator[]<int>(v55, &v82) = v53;
    *(_WORD *)std::map<int,short>::operator[]<int>((char *)this + 224, &v82) = 0;
    *(_WORD *)std::map<int,short>::operator[]<int>((char *)this + 200, &v82) = -1;
  }
  v67 = *((char **)this + 45);
  if ( v67 )
  {
    v68 = v82;
    v69 = (char *)this + 176;
    while ( 1 )
    {
      v70 = *((_DWORD *)v67 + 4);
      v71 = v70 < v82;
      if ( v70 >= v82 )
        v72 = *((char **)v67 + 2);
      else
        v72 = *((char **)v67 + 3);
      if ( v71 )
        v67 = v69;
      v69 = v67;
      if ( !v72 )
        break;
      v67 = v72;
    }
  }
  else
  {
    v68 = v82;
    v67 = (char *)this + 176;
  }
  if ( v55 == v67 || (v73 = v67, *((_DWORD *)v67 + 4) > v68) )
  {
    v92 = v67;
    v84 = v68;
    v85 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
      &v93,
      v55,
      &v92,
      &v84);
    v73 = v93;
  }
  if ( *((__int16 *)v73 + 10) == v53 )
  {
    v74 = (_WORD *)std::map<int,short>::operator[]<int>((char *)this + 224, &v82);
    v79 = 1;
    ++*v74;
  }
  else
  {
    v79 = 1;
  }
LABEL_7:
  U32 = NetBitStream::ReadU32(a4, 0x10u);
  if ( U32 )
  {
    IsPacketValid = ObjectManager::IsPacketValid(this, v82, a3);
    if ( v79 )
      IsPacketValid = *(__int16 *)std::map<int,short>::operator[]<int>((char *)this + 176, &v82) == v7;
    if ( U32 > 0 )
    {
      v9 = 0;
      v80 = (char *)this + 380;
      v81 = (char *)this + 404;
      v10 = 0;
      v11 = U32;
      while ( 1 )
      {
        if ( NetBitStream::ReadBit(a4) )
          v9 = NetBitStream::ReadU32(a4, 0x10u);
        else
          ++v9;
        v12 = NetBitStream::ReadByte(a4, 8u);
        ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v83, (int)this);
        Object = (unsigned __int8 *)ObjectHandle::GetObject((ObjectHandle *)v83, 0);
        v14 = (ObjectBase *)Object;
        if ( Object && Object[248] == v12 )
        {
          v15 = 0;
        }
        else
        {
          switch ( v12 )
          {
            case 1:
              v14 = (ObjectBase *)operator new(8080, 0);
              Character::Character((int)v14);
              v15 = 1;
              break;
            case 2:
              v14 = (ObjectBase *)operator new(1776, 0);
              Container::Container((int)v14);
              v15 = 1;
              break;
            case 3:
              v14 = (ObjectBase *)operator new(1744, 0);
              Door::Door(v14, 2);
              v15 = 1;
              break;
            case 4:
              v14 = (ObjectBase *)operator new(1816, 0);
              Trigger::Trigger((int)v14);
              v15 = 1;
              break;
            default:
              if ( gAssertLevel == 2 )
              {
                dword_0 = 0;
                v15 = 1;
              }
              else
              {
                if ( gAssertLevel == 1 )
                  fprintf(
                    (FILE *)&_sF + 2,
                    "ASSERT(%s) FAILED: %s:%d\n",
                    "false",
                    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
                    2144);
                v15 = 1;
              }
              break;
          }
        }
        v16 = *((_DWORD *)v14 + 65);
        if ( !v16 )
          goto LABEL_24;
        if ( v15 )
        {
          (*(void (__fastcall **)(_DWORD, NetBitStream *))(*(_DWORD *)v16 + 28))(*((_DWORD *)v14 + 65), a4);
          if ( IsPacketValid )
          {
            v31 = std::allocator<std::priv::_List_node<short>>::allocate(&v90);
            *(_WORD *)(v31 + 8) = v9;
            v32 = v91;
            *(_DWORD *)v31 = &v90;
            *(_DWORD *)(v31 + 4) = v32;
            *v32 = v31;
            v91 = (int *)v31;
          }
          (*(void (__fastcall **)(ObjectBase *))(*(_DWORD *)v14 + 4))(v14);
          goto LABEL_24;
        }
        if ( !IsPacketValid )
        {
          (*(void (__fastcall **)(int, NetBitStream *))(*(_DWORD *)v16 + 28))(v16, a4);
          goto LABEL_24;
        }
        v33 = (*(int (__fastcall **)(_DWORD, NetBitStream *, int))(*(_DWORD *)v16 + 20))(*((_DWORD *)v14 + 65), a4, v82);
        Online = (COnline *)GetOnline();
        if ( COnline::IsServer(Online) )
        {
          v51 = *((_DWORD *)v14 + 68);
          if ( v51 == -1 )
          {
            if ( !ObjectManager::CanSendUpdate(this, v14) )
              goto LABEL_63;
            v51 = *((_DWORD *)v14 + 68);
          }
          if ( v82 != v51
            && (!(*(int (__fastcall **)(ObjectBase *))(*(_DWORD *)v14 + 36))(v14)
             || !(*(int (__fastcall **)(ObjectBase *))(*(_DWORD *)v14 + 40))(v14)
             || v9 == *(_DWORD *)(*(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632)
                                + 264)) )
          {
            goto LABEL_24;
          }
        }
LABEL_63:
        (*(void (__fastcall **)(ObjectBase *, int))(*(_DWORD *)v14 + 80))(v14, v79);
        *((_DWORD *)v14 + 68) = v82;
        *((_DWORD *)v14 + 69) = 0;
        if ( v33 == 2 )
          goto LABEL_77;
        v35 = std::map<short,std::set<short>>::operator[]<int>(v80, &v82);
        v36 = *(_DWORD *)(v35 + 4);
        if ( !v36 )
          goto LABEL_143;
        v37 = v35;
        while ( 1 )
        {
          v38 = *(__int16 *)(v36 + 16);
          v39 = v38 < (__int16)v9;
          if ( v38 >= (__int16)v9 )
            v40 = *(_DWORD *)(v36 + 8);
          else
            v40 = *(_DWORD *)(v36 + 12);
          if ( v39 )
            v36 = v37;
          v37 = v36;
          if ( !v40 )
            break;
          v36 = v40;
        }
        if ( v35 != v36 )
        {
          if ( *(__int16 *)(v36 + 16) > (__int16)v9 )
LABEL_143:
            v36 = v35;
          if ( v35 != v36 )
          {
            v41 = std::allocator<std::priv::_List_node<short>>::allocate(&v90);
            *(_WORD *)(v41 + 8) = v9;
            v42 = v91;
            *(_DWORD *)v41 = &v90;
            *(_DWORD *)(v41 + 4) = v42;
            *v42 = v41;
            v91 = (int *)v41;
          }
        }
LABEL_77:
        v43 = std::map<short,std::set<short>>::operator[]<int>(v81, &v82);
        v44 = *(_DWORD *)(v43 + 4);
        if ( !v44 )
          goto LABEL_138;
        v45 = v43;
        while ( 1 )
        {
          v46 = *(__int16 *)(v44 + 16);
          v47 = v46 < (__int16)v9;
          if ( v46 >= (__int16)v9 )
            v48 = *(_DWORD *)(v44 + 8);
          else
            v48 = *(_DWORD *)(v44 + 12);
          if ( v47 )
            v44 = v45;
          v45 = v44;
          if ( !v48 )
            break;
          v44 = v48;
        }
        if ( v43 == v44 )
          goto LABEL_24;
        if ( *(__int16 *)(v44 + 16) > (__int16)v9 )
LABEL_138:
          v44 = v43;
        if ( v43 != v44 )
        {
          v49 = std::allocator<std::priv::_List_node<short>>::allocate(&v90);
          *(_WORD *)(v49 + 8) = v9;
          v50 = v91;
          *(_DWORD *)v49 = &v90;
          *(_DWORD *)(v49 + 4) = v50;
          *v50 = v49;
          v91 = (int *)v49;
        }
LABEL_24:
        if ( v11 == ++v10 )
        {
          v17 = std::map<short,std::set<short>>::operator[]<int>(v80, &v82);
          goto LABEL_26;
        }
      }
    }
    v80 = (char *)this + 380;
    v81 = (char *)this + 404;
    v17 = std::map<short,std::set<short>>::operator[]<int>((char *)this + 380, &v82);
LABEL_26:
    v18 = (_DWORD *)v17;
    if ( *(_DWORD *)(v17 + 16) )
    {
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
        v17,
        *(_DWORD *)(v17 + 4));
      v18[4] = 0;
      v18[1] = 0;
      v18[2] = v18;
      v18[3] = v18;
    }
    v19 = std::map<short,std::set<short>>::operator[]<int>(v81, &v82);
    v20 = (_DWORD *)v19;
    if ( *(_DWORD *)(v19 + 16) )
    {
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::_M_erase(
        v19,
        *(_DWORD *)(v19 + 4));
      v20[4] = 0;
      v20[1] = 0;
      v20[2] = v20;
      v20[3] = v20;
    }
    for ( j = v90; j != &v90; j = (_DWORD *)*j )
    {
      v22 = std::map<short,std::set<short>>::operator[]<int>(v80, &v82);
      std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::insert_unique(
        v89,
        v22,
        j + 2);
    }
    if ( NetBitStream::ReadBit(a4) )
    {
      v76 = NetBitStream::ReadByte(a4, 8u);
      std::map<int,short>::operator[]<int>((char *)this + 200, &v82);
      *(_WORD *)std::map<int,short>::operator[]<int>((char *)this + 200, &v82) = v76;
    }
    if ( v79 )
    {
      if ( *(__int16 *)std::map<int,short>::operator[]<int>((char *)this + 200, &v82) >= 0 )
      {
        v75 = *(unsigned __int16 *)std::map<int,short>::operator[]<int>((char *)this + 224, &v82);
        if ( v75 == *(unsigned __int16 *)std::map<int,short>::operator[]<int>((char *)this + 200, &v82) )
          *((_BYTE *)this + 352) = 1;
      }
    }
    if ( NetBitStream::ReadBit(a4) )
    {
      if ( IsPacketValid )
      {
        v23 = NetBitStream::ReadU32(a4, 0x10u);
        if ( v23 > 0 )
        {
          for ( k = 0; k != v23; ++k )
          {
            v25 = NetBitStream::ReadU32(a4, 0x10u);
            v26 = std::map<short,std::set<short>>::operator[]<int>((char *)this + 356, &v82);
            v96[0] = v25;
            std::priv::_Rb_tree<short,std::less<short>,short,std::priv::_Identity<short>,std::priv::_SetTraitsT<short>,std::allocator<short>>::insert_unique(
              v88,
              v26,
              v96);
          }
        }
      }
    }
    v27 = v90;
    if ( v90 != &v90 )
    {
      while ( 1 )
      {
        v28 = (_DWORD *)*v27;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v27, 0xCu);
        if ( v28 == &v90 )
          break;
        v27 = v28;
      }
    }
  }
  else
  {
    v29 = v90;
    if ( v90 != &v90 )
    {
      while ( 1 )
      {
        v30 = (_DWORD *)*v29;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v29, 0xCu);
        if ( v30 == &v90 )
          break;
        v29 = v30;
      }
    }
  }
}


// ===== 347d90 ObjectManager::sReadPacketData(int,int,NetBitStream &) =====
void __fastcall ObjectManager::sReadPacketData(
        ObjectManager *this,
        CPacketManager *a2,
        NetBitStream *a3,
        NetBitStream *a4)
{
  if ( NetBitStream::ReadBit(a3) )
  {
    if ( dword_99F764 )
      ObjectManager::LoadGameObjectNetData((ObjectManager *)dword_99F764, (int)this, a2, a3);
  }
}


// ===== 347dec ObjectManager::IsOnlineDeferred(ObjectBase *) =====
int __fastcall ObjectManager::IsOnlineDeferred(ObjectManager *this, ObjectBase *a2)
{
  int v4; // r0
  __int16 *v5; // r6
  void *v6; // r0
  _DWORD *v7; // r7
  int *v8; // r4
  int i; // r0
  int v10; // r4
  size_t v11; // r1
  void *__p; // [sp+4h] [bp-10h] BYREF
  void *v14; // [sp+8h] [bp-Ch]
  int v15; // [sp+Ch] [bp-8h]

  v4 = CMatching::Get(this);
  (*(void (__fastcall **)(void **, int))(*(_DWORD *)v4 + 136))(&__p, v4);
  v5 = (__int16 *)__p;
  v6 = __p;
  if ( __p == v14 )
  {
LABEL_9:
    v10 = 0;
  }
  else
  {
    v7 = (_DWORD *)((char *)this + 264);
    while ( 1 )
    {
      v8 = *(int **)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v7, v5);
      for ( i = std::map<short,std::list<ObjectBase *>>::operator[]<int>(v7, v5); (int *)i != v8; v8 = (int *)*v8 )
      {
        if ( a2 == (ObjectBase *)v8[2] )
          break;
      }
      if ( v8 != (int *)std::map<short,std::list<ObjectBase *>>::operator[]<int>(v7, v5) )
        break;
      v5 += 2;
      if ( v5 == v14 )
      {
        v6 = __p;
        goto LABEL_9;
      }
    }
    v10 = 1;
    v6 = __p;
  }
  if ( v6 )
  {
    v11 = (v15 - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v11 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v11);
  }
  return v10;
}


// ===== 347ed4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x30u);
        v2 = v5;
        if ( !v5 )
          return;
      }
      else
      {
        CustomFree(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x30u);
        v2 = v5;
        if ( !v5 )
          return;
      }
    }
  }
}


// ===== 347f58 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,ObjectListItem>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x30u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 347fd0 ObjectManager::ForceFullUpdate(void) =====
void __fastcall ObjectManager::ForceFullUpdate(ObjectManager *this)
{
  CMatching *Instance; // r0
  int v3; // r0
  void *v4; // r0
  char *v5; // r4
  char *v6; // r9
  _DWORD *v7; // r7
  _DWORD *v8; // r8
  _DWORD *v9; // r10
  ObjectManager *v10; // r6
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  _DWORD *v13; // r12
  int v14; // r5
  _DWORD *v15; // r1
  _DWORD *j; // r3
  int v17; // r2
  bool v18; // cc
  _DWORD *v19; // r2
  _DWORD *v20; // r2
  int v21; // r3
  bool v22; // cc
  _DWORD *v23; // r3
  _DWORD *v24; // r3
  _DWORD *v25; // r12
  int v26; // r5
  _DWORD *v27; // r2
  int v28; // r3
  bool v29; // cc
  _DWORD *v30; // r3
  _DWORD *v31; // r3
  _DWORD *v32; // r12
  int v33; // r5
  _DWORD *v34; // r2
  int v35; // r3
  bool v36; // cc
  _DWORD *v37; // r3
  _DWORD *v38; // r3
  char *v39; // r2
  size_t v40; // r1
  _DWORD *v41; // r2
  int v42; // r3
  bool v43; // cc
  _DWORD *v44; // r3
  _DWORD *v45; // r3
  _DWORD *v46; // r0
  _DWORD *v47; // r3
  char *v48; // r1
  char *v49; // r12
  char *v50; // r4
  char *i; // r3
  int v52; // r2
  bool v53; // cc
  char *v54; // r2
  char *v55; // r2
  int v56; // r3
  bool v57; // cc
  char *v58; // r3
  char *v59; // r3
  char *v60; // r12
  char *v61; // r1
  char *v62; // r2
  int v63; // r3
  bool v64; // cc
  char *v65; // r3
  char *v66; // r3
  char *v67; // r12
  char *v68; // r1
  char *v69; // r2
  int v70; // r3
  bool v71; // cc
  char *v72; // r3
  char *v73; // r3
  void *__p; // [sp+20h] [bp-84h] BYREF
  char *v75; // [sp+24h] [bp-80h]
  int v76; // [sp+28h] [bp-7Ch]
  int v77; // [sp+2Ch] [bp-78h] BYREF
  __int16 v78; // [sp+30h] [bp-74h]
  int v79; // [sp+34h] [bp-70h] BYREF
  __int16 v80; // [sp+38h] [bp-6Ch]
  int v81; // [sp+3Ch] [bp-68h] BYREF
  __int16 v82; // [sp+40h] [bp-64h]
  int v83; // [sp+44h] [bp-60h] BYREF
  __int16 v84; // [sp+48h] [bp-5Ch]
  int v85; // [sp+4Ch] [bp-58h] BYREF
  __int16 v86; // [sp+50h] [bp-54h]
  int v87; // [sp+54h] [bp-50h] BYREF
  __int16 v88; // [sp+58h] [bp-4Ch]
  int v89; // [sp+5Ch] [bp-48h] BYREF
  __int16 v90; // [sp+60h] [bp-44h]
  _DWORD *v91; // [sp+64h] [bp-40h] BYREF
  _DWORD *v92; // [sp+68h] [bp-3Ch] BYREF
  _DWORD *v93; // [sp+6Ch] [bp-38h] BYREF
  _DWORD *v94; // [sp+70h] [bp-34h] BYREF
  _DWORD *v95; // [sp+74h] [bp-30h] BYREF
  _DWORD *v96; // [sp+78h] [bp-2Ch] BYREF
  _DWORD *v97; // [sp+7Ch] [bp-28h] BYREF
  _DWORD *v98; // [sp+80h] [bp-24h] BYREF
  char *v99; // [sp+84h] [bp-20h] BYREF
  char *v100; // [sp+88h] [bp-1Ch] BYREF
  char *v101; // [sp+8Ch] [bp-18h] BYREF
  char *v102; // [sp+90h] [bp-14h] BYREF
  char *v103; // [sp+94h] [bp-10h] BYREF
  char *v104; // [sp+98h] [bp-Ch] BYREF
  int v105; // [sp+9Ch] [bp-8h] BYREF

  if ( !*(_BYTE *)(GetOnline() + 5) )
    return;
  if ( *((_DWORD *)this + 70) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
      (int)this + 264,
      *((_DWORD **)this + 67));
    *((_DWORD *)this + 70) = 0;
    *((_DWORD *)this + 67) = 0;
    *((_DWORD *)this + 69) = (char *)this + 264;
    *((_DWORD *)this + 68) = (char *)this + 264;
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) > 1 )
      goto LABEL_4;
    goto LABEL_82;
  }
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1 )
  {
LABEL_82:
    v46 = std::allocator<std::priv::_List_node<int>>::allocate();
    v46[2] = 1;
    v47 = *((_DWORD **)this + 75);
    *v46 = (char *)this + 296;
    v48 = (char *)this + 176;
    v46[1] = v47;
    *v47 = v46;
    v49 = *((char **)this + 45);
    *((_DWORD *)this + 75) = v46;
    if ( !v49 )
      goto LABEL_135;
    v50 = (char *)this + 176;
    for ( i = v49; ; i = v54 )
    {
      v52 = *((_DWORD *)i + 4);
      v53 = v52 <= 0;
      if ( v52 > 0 )
        v54 = *((char **)i + 2);
      else
        v54 = *((char **)i + 3);
      if ( v53 )
        i = v50;
      v50 = i;
      if ( !v54 )
        break;
    }
    if ( v48 == i )
      goto LABEL_137;
    if ( *((int *)i + 4) > 1 )
LABEL_135:
      i = (char *)this + 176;
    if ( v48 != i )
    {
      if ( v49 )
      {
        v55 = (char *)this + 176;
        while ( 1 )
        {
          v56 = *((_DWORD *)v49 + 4);
          v57 = v56 <= 0;
          if ( v56 > 0 )
            v58 = *((char **)v49 + 2);
          else
            v58 = *((char **)v49 + 3);
          if ( v57 )
            v49 = v55;
          v55 = v49;
          if ( !v58 )
            break;
          v49 = v58;
        }
      }
      else
      {
        v49 = (char *)this + 176;
      }
      if ( v48 == v49 || (v59 = v49, *((int *)v49 + 4) > 1) )
      {
        v103 = v49;
        v89 = 1;
        v90 = 0;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
          &v104,
          v48,
          (_DWORD **)&v103,
          &v89);
        v59 = v104;
      }
      ++*((_WORD *)v59 + 10);
      goto LABEL_108;
    }
LABEL_137:
    v105 = 1;
    *(_WORD *)std::map<int,short>::operator[]<int>((_DWORD *)this + 44, &v105) = 0;
LABEL_108:
    v60 = *((char **)this + 57);
    v61 = (char *)this + 224;
    if ( v60 )
    {
      v62 = (char *)this + 224;
      while ( 1 )
      {
        v63 = *((_DWORD *)v60 + 4);
        v64 = v63 <= 0;
        if ( v63 > 0 )
          v65 = *((char **)v60 + 2);
        else
          v65 = *((char **)v60 + 3);
        if ( v64 )
          v60 = v62;
        v62 = v60;
        if ( !v65 )
          break;
        v60 = v65;
      }
    }
    else
    {
      v60 = (char *)this + 224;
    }
    if ( v61 == v60 || (v66 = v60, *((int *)v60 + 4) > 1) )
    {
      v101 = v60;
      v87 = 1;
      v88 = 0;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
        &v102,
        v61,
        (_DWORD **)&v101,
        &v87);
      v66 = v102;
    }
    *((_WORD *)v66 + 10) = 0;
    v67 = *((char **)this + 51);
    v68 = (char *)this + 200;
    if ( v67 )
    {
      v69 = (char *)this + 200;
      while ( 1 )
      {
        v70 = *((_DWORD *)v67 + 4);
        v71 = v70 <= 0;
        if ( v70 > 0 )
          v72 = *((char **)v67 + 2);
        else
          v72 = *((char **)v67 + 3);
        if ( v71 )
          v67 = v69;
        v69 = v67;
        if ( !v72 )
          break;
        v67 = v72;
      }
    }
    else
    {
      v67 = (char *)this + 200;
    }
    if ( v68 == v67 || (v73 = v67, *((int *)v67 + 4) > 1) )
    {
      v99 = v67;
      v85 = 1;
      v86 = 0;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
        &v100,
        v68,
        (_DWORD **)&v99,
        &v85);
      v73 = v100;
    }
    *((_WORD *)v73 + 10) = -1;
    return;
  }
LABEL_4:
  v3 = CMatching::Get(Instance);
  (*(void (__fastcall **)(void **, int))(*(_DWORD *)v3 + 136))(&__p, v3);
  v4 = v75;
  if ( __p != v75 )
  {
    v5 = (char *)__p + 4;
    v6 = (char *)this + 296;
    v7 = (_DWORD *)((char *)this + 176);
    v8 = (_DWORD *)((char *)this + 224);
    v9 = (_DWORD *)((char *)this + 200);
    v10 = this;
    while ( *((_DWORD *)v5 - 1) == *(_DWORD *)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 416) )
    {
LABEL_58:
      v39 = v5;
      v5 += 4;
      if ( v39 == v75 )
      {
        v4 = __p;
        goto LABEL_60;
      }
    }
    v11 = std::allocator<std::priv::_List_node<int>>::allocate();
    v11[2] = *((_DWORD *)v5 - 1);
    v12 = *((_DWORD **)v10 + 75);
    *v11 = v6;
    v11[1] = v12;
    *v12 = v11;
    v13 = *((_DWORD **)v10 + 45);
    *((_DWORD *)v10 + 75) = v11;
    if ( v13 )
    {
      v14 = *((_DWORD *)v5 - 1);
      v15 = v7;
      for ( j = v13; ; j = v19 )
      {
        v17 = j[4];
        v18 = v17 < v14;
        if ( v17 >= v14 )
          v19 = (_DWORD *)j[2];
        else
          v19 = (_DWORD *)j[3];
        if ( v18 )
          j = v15;
        v15 = j;
        if ( !v19 )
          break;
      }
      if ( v7 == j )
        goto LABEL_64;
      if ( j[4] > v14 )
        j = v7;
    }
    else
    {
      v14 = *((_DWORD *)v5 - 1);
      j = v7;
    }
    if ( v7 != j )
    {
      if ( v13 )
      {
        v20 = v7;
        while ( 1 )
        {
          v21 = v13[4];
          v22 = v14 <= v21;
          if ( v14 <= v21 )
            v23 = (_DWORD *)v13[2];
          else
            v23 = (_DWORD *)v13[3];
          if ( !v22 )
            v13 = v20;
          v20 = v13;
          if ( !v23 )
            break;
          v13 = v23;
        }
      }
      else
      {
        v13 = v7;
      }
      if ( v7 == v13 || (v24 = v13, v14 < v13[4]) )
      {
        v95 = v13;
        v81 = v14;
        v82 = 0;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
          &v96,
          v7,
          &v95,
          &v81);
        v24 = v96;
      }
      ++*((_WORD *)v24 + 10);
      v25 = *((_DWORD **)v10 + 57);
      if ( v25 )
      {
LABEL_34:
        v26 = *((_DWORD *)v5 - 1);
        v27 = v8;
        while ( 1 )
        {
          v28 = v25[4];
          v29 = v26 <= v28;
          if ( v26 <= v28 )
            v30 = (_DWORD *)v25[2];
          else
            v30 = (_DWORD *)v25[3];
          if ( !v29 )
            v25 = v27;
          v27 = v25;
          if ( !v30 )
            break;
          v25 = v30;
        }
        goto LABEL_42;
      }
LABEL_78:
      v26 = *((_DWORD *)v5 - 1);
      v25 = v8;
LABEL_42:
      if ( v8 == v25 || (v31 = v25, v25[4] > v26) )
      {
        v93 = v25;
        v79 = v26;
        v80 = 0;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
          &v94,
          v8,
          &v93,
          &v79);
        v31 = v94;
      }
      *((_WORD *)v31 + 10) = 0;
      v32 = *((_DWORD **)v10 + 51);
      if ( v32 )
      {
        v33 = *((_DWORD *)v5 - 1);
        v34 = v9;
        while ( 1 )
        {
          v35 = v32[4];
          v36 = v35 < v33;
          if ( v35 >= v33 )
            v37 = (_DWORD *)v32[2];
          else
            v37 = (_DWORD *)v32[3];
          if ( v36 )
            v32 = v34;
          v34 = v32;
          if ( !v37 )
            break;
          v32 = v37;
        }
      }
      else
      {
        v33 = *((_DWORD *)v5 - 1);
        v32 = v9;
      }
      if ( v9 == v32 || (v38 = v32, v33 < v32[4]) )
      {
        v91 = v32;
        v77 = v33;
        v78 = 0;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
          &v92,
          v9,
          &v91,
          &v77);
        v38 = v92;
      }
      *((_WORD *)v38 + 10) = -1;
      goto LABEL_58;
    }
LABEL_64:
    if ( v13 )
    {
      v41 = v7;
      while ( 1 )
      {
        v42 = v13[4];
        v43 = v14 <= v42;
        if ( v14 <= v42 )
          v44 = (_DWORD *)v13[2];
        else
          v44 = (_DWORD *)v13[3];
        if ( !v43 )
          v13 = v41;
        v41 = v13;
        if ( !v44 )
          break;
        v13 = v44;
      }
    }
    else
    {
      v13 = v7;
    }
    if ( v7 == v13 || (v45 = v13, v14 < v13[4]) )
    {
      v97 = v13;
      v83 = v14;
      v84 = 0;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::insert_unique(
        &v98,
        v7,
        &v97,
        &v83);
      v45 = v98;
    }
    *((_WORD *)v45 + 10) = 0;
    v25 = *((_DWORD **)v10 + 57);
    if ( v25 )
      goto LABEL_34;
    goto LABEL_78;
  }
LABEL_60:
  if ( v4 )
  {
    v40 = (v76 - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v40 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v40);
  }
}


// ===== 348644 ObjectManager::ProcessLostPacket(int,int) =====
void __fastcall ObjectManager::ProcessLostPacket(ObjectManager *this, int a2, int a3)
{
  _DWORD *v3; // r3
  char *v5; // r5
  char *v6; // r6
  char *i; // r0
  int v8; // r12
  bool v9; // cc
  char *v10; // r12
  _DWORD *v11; // r0
  _DWORD *v12; // r1
  _DWORD *v13; // t1

  v3 = *((_DWORD **)this + 39);
  v5 = (char *)this + 152;
  if ( !v3 )
    goto LABEL_21;
  v6 = (char *)this + 152;
  for ( i = *((char **)this + 39); ; i = v10 )
  {
    v8 = *((_DWORD *)i + 4);
    v9 = v8 < a2;
    if ( v8 >= a2 )
      v10 = *((char **)i + 2);
    else
      v10 = *((char **)i + 3);
    if ( v9 )
      i = v6;
    v6 = i;
    if ( !v10 )
      break;
  }
  if ( v5 == i )
    return;
  if ( *((_DWORD *)i + 4) > a2 )
LABEL_21:
    i = v5;
  if ( v5 != i )
  {
    v13 = *((_DWORD **)i + 5);
    v11 = i + 20;
    v12 = v13;
    if ( v13 != v11 )
    {
      while ( v12[2] != a3 )
      {
        v12 = (_DWORD *)*v12;
        if ( v11 == v12 )
        {
          v12 = v11;
          break;
        }
      }
      if ( v12 != v11 )
      {
        if ( *((_DWORD *)this + 42) )
        {
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
            (int)v5,
            v3);
          *((_DWORD *)this + 41) = v5;
          *((_DWORD *)this + 42) = 0;
          *((_DWORD *)this + 40) = v5;
          *((_DWORD *)this + 39) = 0;
        }
        ObjectManager::ForceFullUpdate(this);
      }
    }
  }
}


// ===== 348724 ObjectManager::sProcessLostPacket(int,int) =====
void __fastcall ObjectManager::sProcessLostPacket(ObjectManager *this, int a2, int a3)
{
  if ( dword_99F764 )
    ObjectManager::ProcessLostPacket((ObjectManager *)dword_99F764, (int)this, a2);
}


// ===== 348758 std::operator>><char,std::char_traits<char>,std::allocator<char>>(std::basic_istream<char,std::char_traits<char>> &,std::basic_string<char,std::char_traits<char>,std::allocator<char>> &) =====
_DWORD *__fastcall std::operator>><char>(_DWORD *a1, std::string *a2)
{
  int v4; // r0
  const std::locale *v5; // r3
  std::_Locale_impl *M_impl; // r4
  std::locale::facet *v7; // r0
  char *M_data; // r3
  std::locale::facet *v9; // r8
  char *v10; // r3
  int i; // r5
  char *M_end_of_storage; // r3
  char *v13; // r1
  int v14; // r0
  int v15; // r3
  int v16; // r2
  std::ios_base *v18; // r0
  int v19; // r2
  int v20; // r3
  int v21; // r2
  std::ios_base *v22; // r0
  int M_iostate; // r2
  int v24; // r3
  int M_exception_mask; // r2
  char *v26; // r1
  int v27; // r0
  char *v28; // r1
  std::locale v29; // [sp+4h] [bp-8h] BYREF

  if ( (*(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 4) & 0x1000) != 0 )
    v4 = std::_M_init_skip<char,std::char_traits<char>>(a1);
  else
    v4 = std::_M_init_noskip<char,std::char_traits<char>>(a1);
  if ( !v4 )
  {
    v22 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
    M_iostate = v22->_M_iostate;
    v24 = M_iostate | 4;
    if ( !v22[1]._M_iostate )
      v24 = M_iostate | 5;
    M_exception_mask = v22->_M_exception_mask;
    v22->_M_iostate = v24;
    if ( (v24 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v22);
    return a1;
  }
  v5 = (const std::locale *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  M_impl = v5[18]._M_impl;
  __ZNSt6localeC1ERKS__veneer(&v29, v5 + 8);
  v7 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(&v29, &std::ctype<char>::id);
  M_data = a2->_M_start_of_storage._M_data;
  v9 = v7;
  if ( M_data != a2->_M_finish )
  {
    *M_data = 0;
    a2->_M_finish = a2->_M_start_of_storage._M_data;
  }
  v10 = (char *)a1 + *(_DWORD *)(*a1 - 12);
  i = *((_DWORD *)v10 + 7);
  *((_DWORD *)v10 + 7) = 0;
  if ( i > 0 )
  {
    std::string::reserve(a2, (char *)i, nullptr);
    goto LABEL_9;
  }
  for ( i = -3; ; --i )
  {
    M_end_of_storage = M_impl->name._M_buffers._M_end_of_storage;
    v13 = M_end_of_storage + 1;
    if ( (unsigned int)M_end_of_storage < *(_DWORD *)&M_impl->name._M_buffers._M_static_buf[4] )
    {
      M_impl->name._M_buffers._M_end_of_storage = v13;
      LOBYTE(v14) = *M_end_of_storage;
      goto LABEL_12;
    }
    v14 = (*(int (__fastcall **)(std::_Locale_impl *, char *))(M_impl->_M_ref_count + 36))(M_impl, v13);
    if ( v14 == -1 )
      break;
LABEL_12:
    v15 = (unsigned __int8)v14;
    v16 = (unsigned __int8)v14;
    if ( ((int)v9[1]._vptr.facet[(unsigned __int8)v14] & 1) != 0 )
    {
      v26 = M_impl->name._M_buffers._M_end_of_storage;
      if ( M_impl->_M_mutex._M_lock.value < (unsigned int)v26
        && (v27 = (unsigned __int8)*(v26 - 1), v28 = v26 - 1, v15 == v27) )
      {
        M_impl->name._M_buffers._M_end_of_storage = v28;
      }
      else if ( (*(int (__fastcall **)(std::_Locale_impl *, int))(M_impl->_M_ref_count + 40))(M_impl, v16) == -1 )
      {
        std::ios::setstate((std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12)), 4);
      }
      goto LABEL_14;
    }
    std::string::push_back(a2, (_BYTE *)(char)v14);
    if ( !i )
      goto LABEL_14;
LABEL_9:
    ;
  }
  v18 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v19 = v18->_M_iostate;
  v20 = v19 | 2;
  if ( !v18[1]._M_iostate )
    v20 = v19 | 3;
  v21 = v18->_M_exception_mask;
  v18->_M_iostate = v20;
  if ( (v20 & v21) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v18);
LABEL_14:
  if ( a2->_M_start_of_storage._M_data == a2->_M_finish )
    std::ios::setstate((std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12)), 4);
  __ZNSt6localeD1Ev_veneer(&v29);
  return a1;
}


// ===== 348988 ObjectManager::Draw3D(void) =====
void __fastcall ObjectManager::Draw3D(ObjectManager *this)
{
  char *v2; // r6
  char *v3; // r4
  _BYTE *v4; // r3
  char *v5; // r2
  int Switch; // r6
  _DWORD *v7; // r6
  int v8; // r4
  int v9; // r2
  int Technique; // r2
  char *i; // r4
  char *v12; // r7
  char *v13; // t1
  _DWORD *v14; // r2
  int v15; // r1
  int v16; // r10
  int v17; // r5
  int v18; // lr
  int v19; // r12
  int v20; // r2
  void (__fastcall *v21)(_DWORD *, _DWORD *, int); // r3
  int CurrentLevel; // r0
  float *v23; // r8
  float *v24; // r9
  int v25; // r3
  float *v26; // [sp+0h] [bp-104h]
  float *v27; // [sp+4h] [bp-100h]
  float *v28; // [sp+8h] [bp-FCh]
  float *v29; // [sp+Ch] [bp-F8h]
  _DWORD v30[16]; // [sp+1Ch] [bp-E8h] BYREF
  char v31; // [sp+5Ch] [bp-A8h]
  _DWORD v32[6]; // [sp+60h] [bp-A4h] BYREF
  float v33[3]; // [sp+78h] [bp-8Ch] BYREF
  float v34[3]; // [sp+84h] [bp-80h] BYREF
  float v35[3]; // [sp+90h] [bp-74h] BYREF
  float v36[3]; // [sp+9Ch] [bp-68h] BYREF
  float v37[3]; // [sp+A8h] [bp-5Ch] BYREF
  float v38[3]; // [sp+B4h] [bp-50h] BYREF
  float v39[3]; // [sp+C0h] [bp-44h] BYREF
  float v40[3]; // [sp+CCh] [bp-38h] BYREF
  int v41; // [sp+D8h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v42; // [sp+DCh] [bp-28h] BYREF
  std::string v43; // [sp+E4h] [bp-20h] BYREF

  LC_API_MEMSET_0(v30, 0, 0x40u);
  LC_API_MEMSET_0(v30, 0, 0x40u);
  v30[15] = 1065353216;
  v30[0] = 1065353216;
  v30[5] = 1065353216;
  v30[10] = 1065353216;
  v31 = 1;
  v2 = (char *)this + 12;
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 108))(*(_DWORD *)(dword_99F73C + 16));
  v3 = *((char **)this + 5);
  while ( v2 != v3 )
  {
    while ( 1 )
    {
      v4 = *((_BYTE **)v3 + 11);
      if ( v4 && v4[128] )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 48))(*((_DWORD *)v3 + 11));
      v5 = *((char **)v3 + 3);
      if ( !v5 )
        break;
      while ( *((_DWORD *)v5 + 2) )
        v5 = *((char **)v5 + 2);
      v3 = v5;
      if ( v2 == v5 )
        goto LABEL_11;
    }
    v25 = *((_DWORD *)v3 + 1);
    if ( *(char **)(v25 + 12) == v3 )
    {
      do
      {
        v3 = (char *)v25;
        v25 = *(_DWORD *)(v25 + 4);
      }
      while ( *(char **)(v25 + 12) == v3 );
      v5 = *((char **)v3 + 3);
    }
    if ( v5 != (char *)v25 )
      v3 = (char *)v25;
  }
LABEL_11:
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v43, "isDisplayingCullingBoxes");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v43);
  if ( (std::string *)v43._M_start_of_storage._M_data != &v43 && v43._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v43._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v43._M_start_of_storage._M_data,
        v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    v7 = *(_DWORD **)(dword_99F73C + 16);
    v8 = v7[55];
    v9 = *(unsigned __int16 *)(v8 + 46);
    if ( v9 == 0xFFFF )
      LOBYTE(v9) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v7[55], 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v42,
      v8,
      v9);
    if ( v42 )
      Technique = glitch::video::CMaterial::getTechnique(v42);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(v7, &v42, Technique, 0);
    v41 = 2130771712;
    v13 = *((char **)this + 9);
    v12 = (char *)this + 36;
    for ( i = v13; v12 != i; i = *(char **)i )
    {
      v14 = *((_DWORD **)i + 2);
      v15 = v14[79];
      v16 = v14[75];
      v17 = v14[76];
      v18 = v14[77];
      v19 = v14[78];
      v20 = v14[80];
      v21 = *(void (__fastcall **)(_DWORD *, _DWORD *, int))(*v7 + 40);
      v32[4] = v15;
      v32[5] = v20;
      v32[0] = v16;
      v32[1] = v17;
      v32[2] = v18;
      v32[3] = v19;
      v21(v7, v32, v41);
    }
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v23 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(CurrentLevel + 296) + 8) + 324))(*(_DWORD *)(*(_DWORD *)(CurrentLevel + 296) + 8));
    v41 = 2130706687;
    v29 = v23 + 11;
    v28 = v23 + 19;
    v24 = v23 + 3;
    (*(void (__fastcall **)(_DWORD *, float *, int))(*v7 + 40))(v7, v23 + 27, 2130706687);
    v41 = 2147418112;
    memset(v40, 0, sizeof(v40));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23 + 3, v23 + 19, v23 + 11, v40);
    v27 = v23 + 15;
    DBG_DisplayPointAsBox(v40, (unsigned __int8 *)&v41, 100);
    memset(v39, 0, sizeof(v39));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23 + 3, v23 + 19, v23 + 15, v39);
    v26 = v23 + 23;
    DBG_DisplayPointAsBox(v39, (unsigned __int8 *)&v41, 100);
    memset(v38, 0, sizeof(v38));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23 + 3, v23 + 23, v23 + 11, v38);
    DBG_DisplayPointAsBox(v38, (unsigned __int8 *)&v41, 100);
    v23 += 7;
    memset(v37, 0, sizeof(v37));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v24, v26, v27, v37);
    DBG_DisplayPointAsBox(v37, (unsigned __int8 *)&v41, 100);
    v41 = 2147483392;
    memset(v36, 0, sizeof(v36));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23, v28, v29, v36);
    DBG_DisplayPointAsBox(v36, (unsigned __int8 *)&v41, 100);
    memset(v35, 0, sizeof(v35));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23, v28, v27, v35);
    DBG_DisplayPointAsBox(v35, (unsigned __int8 *)&v41, 100);
    memset(v34, 0, sizeof(v34));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23, v26, v29, v34);
    DBG_DisplayPointAsBox(v34, (unsigned __int8 *)&v41, 100);
    memset(v33, 0, sizeof(v33));
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v23, v26, v27, v33);
    DBG_DisplayPointAsBox(v33, (unsigned __int8 *)&v41, 100);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v42);
  }
}


// ===== 348ea4 ObjectManager::Remove(ObjectHandle) =====
int __fastcall ObjectManager::Remove(_DWORD *a1, int a2, int a3, int a4)
{
  int v5; // r0
  GameObject *v6; // r7
  RoomZone *v7; // r0
  _DWORD *v8; // r0
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  _DWORD *v11; // r2
  int Object; // r10
  _DWORD *v13; // r0
  _DWORD *v14; // r6
  int v15; // r10
  _DWORD *v16; // r0
  _DWORD *v17; // r6
  int v18; // r10
  _DWORD *v19; // r0
  _DWORD *v20; // r6
  int v21; // r0
  int v22; // r8
  _DWORD *v23; // r10
  _DWORD *v24; // r6
  int v25; // r8
  int v26; // r0
  _DWORD *v27; // r3
  int result; // r0
  _DWORD *v29; // r1
  int v30; // r2
  bool v31; // cc
  _DWORD *v32; // r2
  _DWORD *v33; // r3
  _DWORD *v34; // r3
  _DWORD *v35; // r3
  int v36; // r0
  int v37; // r3
  int v38; // r0
  int v39; // r9
  int v40; // r0
  int *v41; // r3
  _DWORD *v42; // r3
  _DWORD *v43; // r2
  _DWORD *v44; // r0
  _DWORD *v45; // r6
  _DWORD *v46; // r3
  _DWORD v47[3]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE v48[12]; // [sp+10h] [bp-10h] BYREF
  _DWORD *v49; // [sp+1Ch] [bp-4h] BYREF

  v47[0] = a2;
  v47[1] = a3;
  v47[2] = a4;
  v5 = ObjectHandle::operator GameObject *(v47);
  v6 = (GameObject *)v5;
  if ( v5 )
  {
    v7 = *(RoomZone **)(v5 + 756);
    if ( v7 )
      RoomZone::RemoveObject(v7, v6);
    ObjectManager::RemoveNoRoomObject((ObjectManager *)a1, v6);
    v9 = a1 + 36;
    v8 = (_DWORD *)a1[36];
    if ( v8 != a1 + 36 )
    {
      while ( v6 != (GameObject *)v8[2] )
      {
        v8 = (_DWORD *)*v8;
        if ( v9 == v8 )
        {
          v8 = a1 + 36;
          break;
        }
      }
    }
    if ( v9 != v8 )
    {
      v10 = (_DWORD *)*v8;
      v11 = (_DWORD *)v8[1];
      *v11 = *v8;
      v10[1] = v11;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, 0xCu);
    }
  }
  Object = ObjectHandle::GetObject((ObjectHandle *)v47, 0);
  v13 = (_DWORD *)a1[11];
  while ( a1 + 11 != v13 )
  {
    v14 = (_DWORD *)*v13;
    if ( Object == v13[2] )
    {
      v33 = (_DWORD *)v13[1];
      *v33 = v14;
      v14[1] = v33;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, 0xCu);
      v13 = v14;
    }
    else
    {
      v13 = (_DWORD *)*v13;
    }
  }
  v15 = ObjectHandle::operator Character *(v47);
  v16 = (_DWORD *)a1[28];
  while ( a1 + 28 != v16 )
  {
    v17 = (_DWORD *)*v16;
    if ( v15 == v16[2] )
    {
      v34 = (_DWORD *)v16[1];
      *v34 = v17;
      v17[1] = v34;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, 0xCu);
      v16 = v17;
    }
    else
    {
      v16 = (_DWORD *)*v16;
    }
  }
  v18 = ObjectHandle::operator Character *(v47);
  if ( v18 )
  {
    v19 = (_DWORD *)a1[24];
    while ( a1 + 24 != v19 )
    {
      v20 = (_DWORD *)*v19;
      if ( v18 == v19[2] )
      {
        v35 = (_DWORD *)v19[1];
        *v35 = v20;
        v20[1] = v35;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v19, 0xCu);
        v19 = v20;
      }
      else
      {
        v19 = (_DWORD *)*v19;
      }
    }
    CharAI::RemoveFromGroup((CharAI *)(v18 + 968));
  }
  v21 = ObjectHandle::GetObject((ObjectHandle *)v47, 0);
  v22 = v21;
  if ( v21 && *(_DWORD *)(v21 + 244) == 5 )
  {
    v44 = (_DWORD *)a1[26];
    while ( a1 + 26 != v44 )
    {
      v45 = (_DWORD *)*v44;
      if ( v22 == v44[2] )
      {
        v46 = (_DWORD *)v44[1];
        *v46 = v45;
        v45[1] = v46;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v44, 0xCu);
        v44 = v45;
      }
      else
      {
        v44 = (_DWORD *)*v44;
      }
    }
  }
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    v24 = (_DWORD *)a1[64];
    v23 = a1 + 3;
    while ( v24 != a1 + 64 )
    {
      v25 = v24[2];
      if ( v25 == *(_DWORD *)(std::map<int,ObjectListItem>::operator[]<unsigned int>(a1 + 3, v47) + 24) )
      {
        ObjectBase::GetHandle((ObjectBase *)v48);
        v38 = ObjectHandle::operator Character *(v48);
        if ( !v38 || !(*(int (__fastcall **)(int))(*(_DWORD *)v38 + 40))(v38) )
        {
          v39 = *(_DWORD *)(v25 + 264);
          v40 = std::allocator<std::priv::_List_node<short>>::allocate(a1 + 72);
          *(_WORD *)(v40 + 8) = v39;
          v41 = (int *)a1[73];
          *(_DWORD *)v40 = a1 + 72;
          *(_DWORD *)(v40 + 4) = v41;
          *v41 = v40;
          a1[73] = v40;
        }
        v42 = (_DWORD *)*v24;
        v43 = (_DWORD *)v24[1];
        *v43 = *v24;
        v42[1] = v43;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v24, 0xCu);
        break;
      }
      v24 = (_DWORD *)*v24;
    }
  }
  else
  {
    v23 = a1 + 3;
  }
  --a1[20];
  if ( *((_BYTE *)v6 + 764) )
  {
    v26 = std::map<int,ObjectListItem>::operator[]<unsigned int>(v23, v47);
    ObjectManager::AddOrphanRenderObjectToDelete((ObjectManager *)a1, *(ObjectBase **)(v26 + 24));
  }
  else
  {
    v36 = std::map<int,ObjectListItem>::operator[]<unsigned int>(v23, v47);
    v37 = *(_DWORD *)(v36 + 24);
    if ( v37 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v37 + 4))(*(_DWORD *)(v36 + 24));
  }
  v27 = (_DWORD *)a1[4];
  result = v47[0];
  if ( v27 )
  {
    v29 = v23;
    while ( 1 )
    {
      v30 = v27[4];
      v31 = v47[0] <= v30;
      if ( v47[0] <= v30 )
        v32 = (_DWORD *)v27[2];
      else
        v32 = (_DWORD *)v27[3];
      if ( !v31 )
        v27 = v29;
      v29 = v27;
      if ( !v32 )
        break;
      v27 = v32;
    }
    if ( v23 != v27 && v47[0] >= v27[4] )
    {
      v49 = v27;
      result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::erase(
                 v23,
                 &v49);
    }
  }
  ++a1[30];
  return result;
}


// ===== 349240 ObjectManager::FakeRemove(ObjectHandle) =====
int __fastcall ObjectManager::FakeRemove(_DWORD *a1, int a2, int a3, int a4)
{
  int v5; // r6
  RoomZone *v6; // r0
  _DWORD *v7; // r0
  _DWORD *v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // r2
  int Object; // r8
  _DWORD *v12; // r0
  _DWORD *v13; // r6
  int v14; // r8
  _DWORD *v15; // r0
  _DWORD *v16; // r6
  int v17; // r8
  _DWORD *v18; // r0
  _DWORD *v19; // r6
  int v20; // r0
  int v21; // r7
  int v22; // r8
  _DWORD *v23; // r0
  _DWORD *v24; // r6
  _DWORD *v25; // r3
  _DWORD *v26; // r6
  _DWORD *v27; // r1
  int v28; // r2
  bool v29; // cc
  _DWORD *v30; // r2
  int v31; // r0
  _DWORD *v33; // r3
  _DWORD *v34; // r3
  _DWORD *v35; // r3
  _DWORD *v36; // r3
  _DWORD *v37; // r0
  _DWORD *v38; // r6
  _DWORD *v39; // r3
  _DWORD v40[4]; // [sp+4h] [bp-14h] BYREF
  _DWORD *v41; // [sp+14h] [bp-4h] BYREF

  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v5 = ObjectHandle::operator GameObject *(v40);
  v6 = *(RoomZone **)(v5 + 756);
  *(_BYTE *)(v5 + 129) = 1;
  if ( v6 )
    RoomZone::RemoveObject(v6, (GameObject *)v5);
  ObjectManager::RemoveNoRoomObject((ObjectManager *)a1, (GameObject *)v5);
  v8 = a1 + 36;
  v7 = (_DWORD *)a1[36];
  if ( v7 != a1 + 36 )
  {
    while ( v5 != v7[2] )
    {
      v7 = (_DWORD *)*v7;
      if ( v8 == v7 )
      {
        v7 = a1 + 36;
        break;
      }
    }
  }
  if ( v8 != v7 )
  {
    v9 = (_DWORD *)*v7;
    v10 = (_DWORD *)v7[1];
    *v10 = *v7;
    v9[1] = v10;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, 0xCu);
  }
  Object = ObjectHandle::GetObject((ObjectHandle *)v40, 0);
  v12 = (_DWORD *)a1[11];
  while ( a1 + 11 != v12 )
  {
    v13 = (_DWORD *)*v12;
    if ( Object == v12[2] )
    {
      v33 = (_DWORD *)v12[1];
      *v33 = v13;
      v13[1] = v33;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, 0xCu);
      v12 = v13;
    }
    else
    {
      v12 = (_DWORD *)*v12;
    }
  }
  v14 = ObjectHandle::operator Character *(v40);
  v15 = (_DWORD *)a1[28];
  while ( a1 + 28 != v15 )
  {
    v16 = (_DWORD *)*v15;
    if ( v14 == v15[2] )
    {
      v34 = (_DWORD *)v15[1];
      *v34 = v16;
      v16[1] = v34;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, 0xCu);
      v15 = v16;
    }
    else
    {
      v15 = (_DWORD *)*v15;
    }
  }
  v17 = ObjectHandle::operator Character *(v40);
  if ( v17 )
  {
    v18 = (_DWORD *)a1[24];
    while ( a1 + 24 != v18 )
    {
      v19 = (_DWORD *)*v18;
      if ( v17 == v18[2] )
      {
        v35 = (_DWORD *)v18[1];
        *v35 = v19;
        v19[1] = v35;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, 0xCu);
        v18 = v19;
      }
      else
      {
        v18 = (_DWORD *)*v18;
      }
    }
    CharAI::RemoveFromGroup((CharAI *)(v17 + 968));
    Character::Clean((Character *)v17);
  }
  v20 = ObjectHandle::GetObject((ObjectHandle *)v40, 0);
  v21 = v20;
  if ( v20 && *(_DWORD *)(v20 + 244) == 5 )
  {
    v37 = (_DWORD *)a1[26];
    while ( a1 + 26 != v37 )
    {
      v38 = (_DWORD *)*v37;
      if ( v21 == v37[2] )
      {
        v39 = (_DWORD *)v37[1];
        *v39 = v38;
        v38[1] = v39;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v37, 0xCu);
        v37 = v38;
      }
      else
      {
        v37 = (_DWORD *)*v37;
      }
    }
  }
  v22 = ObjectHandle::GetObject((ObjectHandle *)v40, 0);
  v23 = (_DWORD *)a1[64];
  while ( a1 + 64 != v23 )
  {
    v24 = (_DWORD *)*v23;
    if ( v22 == v23[2] )
    {
      v36 = (_DWORD *)v23[1];
      *v36 = v24;
      v24[1] = v36;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, 0xCu);
      v23 = v24;
    }
    else
    {
      v23 = (_DWORD *)*v23;
    }
  }
  v25 = (_DWORD *)a1[4];
  if ( v25 )
  {
    v26 = a1 + 3;
    v27 = a1 + 3;
    while ( 1 )
    {
      v28 = v25[4];
      v29 = v40[0] <= v28;
      if ( v40[0] <= v28 )
        v30 = (_DWORD *)v25[2];
      else
        v30 = (_DWORD *)v25[3];
      if ( !v29 )
        v25 = v27;
      v27 = v25;
      if ( !v30 )
        break;
      v25 = v30;
    }
    if ( v26 != v25 && v40[0] >= v25[4] )
    {
      v41 = v25;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::erase(
        a1 + 3,
        &v41);
    }
  }
  else
  {
    v26 = a1 + 3;
  }
  v31 = std::map<int,ObjectListItem>::operator[]<unsigned int>(v26, v40);
  return ObjectManager::AddOrphanRenderObjectToDelete((ObjectManager *)a1, *(ObjectBase **)(v31 + 24));
}


// ===== 34952c std::map<int,ObjectListItem,std::less<int>,std::allocator<std::pair<int const,ObjectListItem>>>::operator[]<int>(int const&) =====
std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *__fastcall std::map<int,ObjectListItem>::operator[]<int>(
        int a1,
        int *a2)
{
  int v2; // r4
  int v5; // r1
  int v6; // r2
  int v7; // r3
  bool v8; // cc
  int v9; // r3
  std::string *v10; // r0
  std::string *v11; // r4
  std::string *v13; // [sp+0h] [bp-48h] BYREF
  std::string *v14; // [sp+4h] [bp-44h] BYREF
  int v15; // [sp+8h] [bp-40h] BYREF
  std::string v16; // [sp+Ch] [bp-3Ch] BYREF
  int v17; // [sp+24h] [bp-24h]
  _DWORD v18[4]; // [sp+28h] [bp-20h] BYREF
  char *v19; // [sp+38h] [bp-10h]
  void *p; // [sp+3Ch] [bp-Ch]
  int v21; // [sp+40h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 16);
      v8 = v7 < v5;
      if ( v7 >= v5 )
        v9 = *(_DWORD *)(v2 + 8);
      else
        v9 = *(_DWORD *)(v2 + 12);
      if ( v8 )
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
    v19 = (char *)v18;
    p = v18;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v18, 0x10u);
    *v19 = 0;
    v15 = *a2;
    v21 = 0;
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::string::_M_range_initialize(&v16, (const char *)p, v19);
    v13 = (std::string *)v2;
    v17 = v21;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::insert_unique(
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
    if ( p != v18 && p )
    {
      if ( (unsigned int)(v18[0] - (_DWORD)p) > 0x80 )
      {
        CustomFree(p);
        v10 = v11;
        return &v10->_M_start_of_storage;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v18[0] - (_DWORD)p);
    }
    v10 = v11;
  }
  return &v10->_M_start_of_storage;
}


// ===== 3496b8 ObjectManager::Flush(void) =====
int __fastcall ObjectManager::Flush(ObjectManager *this)
{
  char *v2; // r5
  char *i; // r6
  char *j; // r6
  CharAI *v5; // r0
  char *k; // r6
  char *v7; // r7
  int v8; // r3
  int v9; // r2
  int v10; // r3
  ObjectManager **v11; // r0
  ObjectManager *v12; // r5
  char *v13; // r0
  char *v14; // r6
  char *v15; // r5
  int v16; // r3
  char *v17; // r0
  char *v18; // r6
  char *v19; // r5
  int v20; // r3
  ObjectManager **v21; // r0
  ObjectManager *v22; // r5
  int result; // r0
  int v24; // [sp+4h] [bp-4h] BYREF

  v2 = (char *)this + 96;
  for ( i = *((char **)this + 24); v2 != i; i = *(char **)i )
  {
    GameObject::FlushTargetList(*((GameObject **)i + 2));
    ObjectBase::Delete(*((ObjectBase **)i + 2));
  }
  for ( j = *((char **)this + 24); v2 != j; j = *(char **)j )
  {
    v5 = *((CharAI **)j + 2);
    if ( v5 )
      v5 = (CharAI *)((char *)v5 + 968);
    CharAI::_UpdatePointers(v5);
  }
  k = *((char **)this + 5);
  v7 = (char *)this + 12;
  while ( k != v7 )
  {
    while ( 1 )
    {
      v8 = *((_DWORD *)k + 11);
      if ( v8 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*((_DWORD *)k + 11));
        *((_DWORD *)k + 11) = 0;
      }
      v9 = *((_DWORD *)k + 3);
      if ( v9 )
        break;
      v10 = *((_DWORD *)k + 1);
      if ( k == *(char **)(v10 + 12) )
      {
        do
        {
          k = (char *)v10;
          v10 = *(_DWORD *)(v10 + 4);
        }
        while ( *(char **)(v10 + 12) == k );
        v9 = *((_DWORD *)k + 3);
      }
      if ( v9 != v10 )
        k = (char *)v10;
      if ( k == v7 )
        goto LABEL_23;
    }
    for ( k = *((char **)k + 3); *((_DWORD *)k + 2); k = *((char **)k + 2) )
      ;
  }
LABEL_23:
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((char *)this + 144);
  if ( *((_DWORD *)this + 7) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(
      (char *)this + 12,
      *((_DWORD *)this + 4));
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 5) = v7;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 6) = v7;
  }
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear(v2);
  v11 = *((ObjectManager ***)this + 26);
  if ( v11 != (ObjectManager **)((char *)this + 104) )
  {
    while ( 1 )
    {
      v12 = *v11;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0xCu);
      if ( v12 == (ObjectManager *)((char *)this + 104) )
        break;
      v11 = (ObjectManager **)v12;
    }
    v11 = (ObjectManager **)((char *)this + 104);
  }
  *((_DWORD *)this + 27) = v11;
  *((_DWORD *)this + 26) = v11;
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 256);
  v14 = (char *)this + 288;
  v13 = *((char **)this + 72);
  if ( (char *)this + 288 != v13 )
  {
    while ( 1 )
    {
      v15 = *(char **)v13;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, 0xCu);
      if ( v14 == v15 )
        break;
      v13 = v15;
    }
  }
  v16 = *((_DWORD *)this + 70);
  *((_DWORD *)this + 73) = v14;
  *((_DWORD *)this + 72) = v14;
  if ( v16 )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
      (char *)this + 264,
      *((_DWORD *)this + 67));
    *((_DWORD *)this + 69) = (char *)this + 264;
    *((_DWORD *)this + 70) = 0;
    *((_DWORD *)this + 68) = (char *)this + 264;
    *((_DWORD *)this + 67) = 0;
  }
  if ( *((_DWORD *)this + 93) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (char *)this + 356,
      *((_DWORD *)this + 90));
    *((_DWORD *)this + 92) = (char *)this + 356;
    *((_DWORD *)this + 93) = 0;
    *((_DWORD *)this + 91) = (char *)this + 356;
    *((_DWORD *)this + 90) = 0;
  }
  if ( *((_DWORD *)this + 99) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (char *)this + 380,
      *((_DWORD *)this + 96));
    *((_DWORD *)this + 98) = (char *)this + 380;
    *((_DWORD *)this + 99) = 0;
    *((_DWORD *)this + 97) = (char *)this + 380;
    *((_DWORD *)this + 96) = 0;
  }
  if ( *((_DWORD *)this + 105) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (char *)this + 404,
      *((_DWORD *)this + 102));
    *((_DWORD *)this + 104) = (char *)this + 404;
    *((_DWORD *)this + 105) = 0;
    *((_DWORD *)this + 103) = (char *)this + 404;
    *((_DWORD *)this + 102) = 0;
  }
  std::priv::_List_base<int,std::allocator<int>>::clear((char *)this + 296);
  std::priv::_List_base<int,std::allocator<int>>::clear((char *)this + 304);
  v18 = (char *)this + 128;
  v17 = *((char **)this + 32);
  if ( (char *)this + 128 != v17 )
  {
    while ( 1 )
    {
      v19 = *(char **)v17;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v17, 0xCu);
      if ( v18 == v19 )
        break;
      v17 = v19;
    }
  }
  *((_DWORD *)this + 33) = v18;
  *((_DWORD *)this + 32) = v18;
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((char *)this + 136);
  ObjectManager::AddRoomObjects(this, (char *)this + 136);
  v20 = *((_DWORD *)this + 86);
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  if ( v20 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (char *)this + 328,
      *((_DWORD *)this + 83));
    *((_DWORD *)this + 85) = (char *)this + 328;
    *((_DWORD *)this + 86) = 0;
    *((_DWORD *)this + 84) = (char *)this + 328;
    *((_DWORD *)this + 83) = 0;
  }
  v24 = 0;
  *((_BYTE *)this + 352) = 0;
  std::map<int,ObjectListItem>::operator[]<int>((char *)this + 12, &v24);
  *((_DWORD *)this + 19) = 1;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 60);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 44);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 68);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((char *)this + 52);
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear((char *)this + 112);
  v21 = *((ObjectManager ***)this + 9);
  if ( v21 != (ObjectManager **)((char *)this + 36) )
  {
    while ( 1 )
    {
      v22 = *v21;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v21, 0xCu);
      if ( v22 == (ObjectManager *)((char *)this + 36) )
        break;
      v21 = (ObjectManager **)v22;
    }
    v21 = (ObjectManager **)((char *)this + 36);
  }
  *((_DWORD *)this + 10) = v21;
  *((_DWORD *)this + 9) = v21;
  *((_DWORD *)this + 31) = 0;
  result = ObjectManager::FlushAllOrphanRenderObjects(this);
  if ( *((_DWORD *)this + 42) )
  {
    result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
               (char *)this + 152,
               *((_DWORD *)this + 39));
    *((_DWORD *)this + 41) = (char *)this + 152;
    *((_DWORD *)this + 42) = 0;
    *((_DWORD *)this + 40) = (char *)this + 152;
    *((_DWORD *)this + 39) = 0;
  }
  if ( *((_DWORD *)this + 48) )
  {
    result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
               (char *)this + 176,
               *((_DWORD *)this + 45));
    *((_DWORD *)this + 47) = (char *)this + 176;
    *((_DWORD *)this + 48) = 0;
    *((_DWORD *)this + 46) = (char *)this + 176;
    *((_DWORD *)this + 45) = 0;
  }
  if ( *((_DWORD *)this + 54) )
  {
    result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
               (char *)this + 200,
               *((_DWORD *)this + 51));
    *((_DWORD *)this + 53) = (char *)this + 200;
    *((_DWORD *)this + 54) = 0;
    *((_DWORD *)this + 52) = (char *)this + 200;
    *((_DWORD *)this + 51) = 0;
  }
  if ( *((_DWORD *)this + 60) )
  {
    result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
               (char *)this + 224,
               *((_DWORD *)this + 57));
    *((_DWORD *)this + 60) = 0;
    *((_DWORD *)this + 59) = (char *)this + 224;
    *((_DWORD *)this + 58) = (char *)this + 224;
    *((_DWORD *)this + 57) = 0;
  }
  return result;
}


// ===== 349b14 ObjectManager::~ObjectManager() =====
void __fastcall ObjectManager::~ObjectManager(ObjectManager *this)
{
  ObjectManager **v2; // r0
  ObjectManager *v3; // r5
  ObjectManager **v4; // r0
  ObjectManager *v5; // r5
  char *v6; // r0
  char *v7; // r6
  char *v8; // r5
  ObjectManager **v9; // r0
  ObjectManager *v10; // r5

  *(_DWORD *)this = off_95C910;
  ObjectManager::Flush(this);
  if ( *((_DWORD *)this + 105) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 404,
      *((_DWORD *)this + 102));
    *((_DWORD *)this + 104) = (char *)this + 404;
    *((_DWORD *)this + 105) = 0;
    *((_DWORD *)this + 103) = (char *)this + 404;
    *((_DWORD *)this + 102) = 0;
  }
  if ( *((_DWORD *)this + 99) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 380,
      *((_DWORD *)this + 96));
    *((_DWORD *)this + 98) = (char *)this + 380;
    *((_DWORD *)this + 99) = 0;
    *((_DWORD *)this + 97) = (char *)this + 380;
    *((_DWORD *)this + 96) = 0;
  }
  if ( *((_DWORD *)this + 93) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 356,
      *((_DWORD *)this + 90));
    *((_DWORD *)this + 92) = (char *)this + 356;
    *((_DWORD *)this + 93) = 0;
    *((_DWORD *)this + 91) = (char *)this + 356;
    *((_DWORD *)this + 90) = 0;
  }
  if ( *((_DWORD *)this + 86) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 328,
      *((_DWORD **)this + 83));
    *((_DWORD *)this + 85) = (char *)this + 328;
    *((_DWORD *)this + 86) = 0;
    *((_DWORD *)this + 84) = (char *)this + 328;
    *((_DWORD *)this + 83) = 0;
  }
  std::priv::_List_base<int,std::allocator<int>>::clear((_DWORD *)this + 76);
  std::priv::_List_base<int,std::allocator<int>>::clear((_DWORD *)this + 74);
  v2 = *((ObjectManager ***)this + 72);
  if ( v2 != (ObjectManager **)((char *)this + 288) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == (ObjectManager *)((char *)this + 288) )
        break;
      v2 = (ObjectManager **)v3;
    }
    v2 = (ObjectManager **)((char *)this + 288);
  }
  *((_DWORD *)this + 72) = v2;
  *((_DWORD *)this + 73) = v2;
  if ( *((_DWORD *)this + 70) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
      (int)this + 264,
      *((_DWORD **)this + 67));
    *((_DWORD *)this + 69) = (char *)this + 264;
    *((_DWORD *)this + 70) = 0;
    *((_DWORD *)this + 68) = (char *)this + 264;
    *((_DWORD *)this + 67) = 0;
  }
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 64);
  if ( *((_DWORD *)this + 60) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 224,
      *((_DWORD **)this + 57));
    *((_DWORD *)this + 59) = (char *)this + 224;
    *((_DWORD *)this + 60) = 0;
    *((_DWORD *)this + 58) = (char *)this + 224;
    *((_DWORD *)this + 57) = 0;
  }
  if ( *((_DWORD *)this + 54) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 200,
      *((_DWORD **)this + 51));
    *((_DWORD *)this + 53) = (char *)this + 200;
    *((_DWORD *)this + 54) = 0;
    *((_DWORD *)this + 52) = (char *)this + 200;
    *((_DWORD *)this + 51) = 0;
  }
  if ( *((_DWORD *)this + 48) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 176,
      *((_DWORD **)this + 45));
    *((_DWORD *)this + 47) = (char *)this + 176;
    *((_DWORD *)this + 48) = 0;
    *((_DWORD *)this + 46) = (char *)this + 176;
    *((_DWORD *)this + 45) = 0;
  }
  if ( *((_DWORD *)this + 42) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
      (int)this + 152,
      *((_DWORD **)this + 39));
    *((_DWORD *)this + 41) = (char *)this + 152;
    *((_DWORD *)this + 42) = 0;
    *((_DWORD *)this + 40) = (char *)this + 152;
    *((_DWORD *)this + 39) = 0;
  }
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((_DWORD *)this + 36);
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((_DWORD *)this + 34);
  v4 = *((ObjectManager ***)this + 32);
  if ( v4 != (ObjectManager **)((char *)this + 128) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
      if ( v5 == (ObjectManager *)((char *)this + 128) )
        break;
      v4 = (ObjectManager **)v5;
    }
    v4 = (ObjectManager **)((char *)this + 128);
  }
  *((_DWORD *)this + 32) = v4;
  *((_DWORD *)this + 33) = v4;
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear((_DWORD *)this + 28);
  v6 = *((char **)this + 26);
  v7 = (char *)this + 104;
  if ( (char *)this + 104 != v6 )
  {
    while ( 1 )
    {
      v8 = *(char **)v6;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0xCu);
      if ( v7 == v8 )
        break;
      v6 = v8;
    }
  }
  *((_DWORD *)this + 26) = v7;
  *((_DWORD *)this + 27) = (char *)this + 104;
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear((_DWORD *)this + 24);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 17);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 15);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 13);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 11);
  v9 = *((ObjectManager ***)this + 9);
  if ( v9 != (ObjectManager **)((char *)this + 36) )
  {
    while ( 1 )
    {
      v10 = *v9;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, 0xCu);
      if ( v10 == (ObjectManager *)((char *)this + 36) )
        break;
      v9 = (ObjectManager **)v10;
    }
    v9 = (ObjectManager **)((char *)this + 36);
  }
  *((_DWORD *)this + 9) = v9;
  *((_DWORD *)this + 10) = v9;
  if ( *((_DWORD *)this + 7) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(
      (int)this + 12,
      *((_DWORD **)this + 4));
    *((_DWORD *)this + 6) = (char *)this + 12;
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 5) = (char *)this + 12;
    *((_DWORD *)this + 4) = 0;
  }
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 1);
}


// ===== 349e70 ObjectManager::~ObjectManager() =====
void __fastcall ObjectManager::~ObjectManager(ObjectManager *this)
{
  ObjectManager::~ObjectManager(this);
  CustomFree(this);
}


// ===== 349e8c ObjectManager::~ObjectManager() =====
void __fastcall ObjectManager::~ObjectManager(ObjectManager *this)
{
  ObjectManager **v2; // r0
  ObjectManager *v3; // r5
  ObjectManager **v4; // r0
  ObjectManager *v5; // r5
  char *v6; // r0
  char *v7; // r6
  char *v8; // r5
  ObjectManager **v9; // r0
  ObjectManager *v10; // r5

  *(_DWORD *)this = off_95C910;
  ObjectManager::Flush(this);
  if ( *((_DWORD *)this + 105) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 404,
      *((_DWORD *)this + 102));
    *((_DWORD *)this + 104) = (char *)this + 404;
    *((_DWORD *)this + 105) = 0;
    *((_DWORD *)this + 103) = (char *)this + 404;
    *((_DWORD *)this + 102) = 0;
  }
  if ( *((_DWORD *)this + 99) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 380,
      *((_DWORD *)this + 96));
    *((_DWORD *)this + 98) = (char *)this + 380;
    *((_DWORD *)this + 99) = 0;
    *((_DWORD *)this + 97) = (char *)this + 380;
    *((_DWORD *)this + 96) = 0;
  }
  if ( *((_DWORD *)this + 93) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::set<short>>,std::priv::_Select1st<std::pair<short const,std::set<short>>>,std::priv::_MapTraitsT<std::pair<short const,std::set<short>>>,std::allocator<std::pair<short const,std::set<short>>>>::_M_erase(
      (int)this + 356,
      *((_DWORD *)this + 90));
    *((_DWORD *)this + 92) = (char *)this + 356;
    *((_DWORD *)this + 93) = 0;
    *((_DWORD *)this + 91) = (char *)this + 356;
    *((_DWORD *)this + 90) = 0;
  }
  if ( *((_DWORD *)this + 86) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 328,
      *((_DWORD **)this + 83));
    *((_DWORD *)this + 85) = (char *)this + 328;
    *((_DWORD *)this + 86) = 0;
    *((_DWORD *)this + 84) = (char *)this + 328;
    *((_DWORD *)this + 83) = 0;
  }
  std::priv::_List_base<int,std::allocator<int>>::clear((_DWORD *)this + 76);
  std::priv::_List_base<int,std::allocator<int>>::clear((_DWORD *)this + 74);
  v2 = *((ObjectManager ***)this + 72);
  if ( v2 != (ObjectManager **)((char *)this + 288) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == (ObjectManager *)((char *)this + 288) )
        break;
      v2 = (ObjectManager **)v3;
    }
    v2 = (ObjectManager **)((char *)this + 288);
  }
  *((_DWORD *)this + 72) = v2;
  *((_DWORD *)this + 73) = v2;
  if ( *((_DWORD *)this + 70) )
  {
    std::priv::_Rb_tree<short,std::less<short>,std::pair<short const,std::list<ObjectBase *>>,std::priv::_Select1st<std::pair<short const,std::list<ObjectBase *>>>,std::priv::_MapTraitsT<std::pair<short const,std::list<ObjectBase *>>>,std::allocator<std::pair<short const,std::list<ObjectBase *>>>>::_M_erase(
      (int)this + 264,
      *((_DWORD **)this + 67));
    *((_DWORD *)this + 69) = (char *)this + 264;
    *((_DWORD *)this + 70) = 0;
    *((_DWORD *)this + 68) = (char *)this + 264;
    *((_DWORD *)this + 67) = 0;
  }
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 64);
  if ( *((_DWORD *)this + 60) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 224,
      *((_DWORD **)this + 57));
    *((_DWORD *)this + 59) = (char *)this + 224;
    *((_DWORD *)this + 60) = 0;
    *((_DWORD *)this + 58) = (char *)this + 224;
    *((_DWORD *)this + 57) = 0;
  }
  if ( *((_DWORD *)this + 54) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 200,
      *((_DWORD **)this + 51));
    *((_DWORD *)this + 53) = (char *)this + 200;
    *((_DWORD *)this + 54) = 0;
    *((_DWORD *)this + 52) = (char *)this + 200;
    *((_DWORD *)this + 51) = 0;
  }
  if ( *((_DWORD *)this + 48) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,short>,std::priv::_Select1st<std::pair<int const,short>>,std::priv::_MapTraitsT<std::pair<int const,short>>,std::allocator<std::pair<int const,short>>>::_M_erase(
      (int)this + 176,
      *((_DWORD **)this + 45));
    *((_DWORD *)this + 47) = (char *)this + 176;
    *((_DWORD *)this + 48) = 0;
    *((_DWORD *)this + 46) = (char *)this + 176;
    *((_DWORD *)this + 45) = 0;
  }
  if ( *((_DWORD *)this + 42) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<int>>,std::priv::_Select1st<std::pair<int const,std::list<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<int>>>,std::allocator<std::pair<int const,std::list<int>>>>::_M_erase(
      (int)this + 152,
      *((_DWORD **)this + 39));
    *((_DWORD *)this + 41) = (char *)this + 152;
    *((_DWORD *)this + 42) = 0;
    *((_DWORD *)this + 40) = (char *)this + 152;
    *((_DWORD *)this + 39) = 0;
  }
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((_DWORD *)this + 36);
  std::priv::_List_base<GameObject *,std::allocator<GameObject *>>::clear((_DWORD *)this + 34);
  v4 = *((ObjectManager ***)this + 32);
  if ( v4 != (ObjectManager **)((char *)this + 128) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
      if ( v5 == (ObjectManager *)((char *)this + 128) )
        break;
      v4 = (ObjectManager **)v5;
    }
    v4 = (ObjectManager **)((char *)this + 128);
  }
  *((_DWORD *)this + 32) = v4;
  *((_DWORD *)this + 33) = v4;
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear((_DWORD *)this + 28);
  v6 = *((char **)this + 26);
  v7 = (char *)this + 104;
  if ( (char *)this + 104 != v6 )
  {
    while ( 1 )
    {
      v8 = *(char **)v6;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0xCu);
      if ( v7 == v8 )
        break;
      v6 = v8;
    }
  }
  *((_DWORD *)this + 26) = v7;
  *((_DWORD *)this + 27) = (char *)this + 104;
  std::priv::_List_base<Character *,std::allocator<Character *>>::clear((_DWORD *)this + 24);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 17);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 15);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 13);
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 11);
  v9 = *((ObjectManager ***)this + 9);
  if ( v9 != (ObjectManager **)((char *)this + 36) )
  {
    while ( 1 )
    {
      v10 = *v9;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, 0xCu);
      if ( v10 == (ObjectManager *)((char *)this + 36) )
        break;
      v9 = (ObjectManager **)v10;
    }
    v9 = (ObjectManager **)((char *)this + 36);
  }
  *((_DWORD *)this + 9) = v9;
  *((_DWORD *)this + 10) = v9;
  if ( *((_DWORD *)this + 7) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,ObjectListItem>,std::priv::_Select1st<std::pair<int const,ObjectListItem>>,std::priv::_MapTraitsT<std::pair<int const,ObjectListItem>>,std::allocator<std::pair<int const,ObjectListItem>>>::_M_erase(
      (int)this + 12,
      *((_DWORD **)this + 4));
    *((_DWORD *)this + 6) = (char *)this + 12;
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 5) = (char *)this + 12;
    *((_DWORD *)this + 4) = 0;
  }
  std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear((_DWORD *)this + 1);
}


// ===== 34a1e8 ObjectManager::ObjectManager(void) =====
void __fastcall ObjectManager::ObjectManager(ObjectManager *this)
{
  int v1; // r5
  int v2; // r5
  int v3; // r12
  int v4; // r5

  *(_DWORD *)this = off_95C910;
  *((_DWORD *)this + 2) = (char *)this + 4;
  *((_DWORD *)this + 1) = (char *)this + 4;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 24) = (char *)this + 96;
  *((_DWORD *)this + 33) = (char *)this + 128;
  v1 = *((_DWORD *)this + 24);
  *((_DWORD *)this + 28) = (char *)this + 112;
  *((_DWORD *)this + 25) = v1;
  v2 = *((_DWORD *)this + 28);
  *((_DWORD *)this + 34) = (char *)this + 136;
  *((_DWORD *)this + 6) = (char *)this + 12;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 12) = (char *)this + 44;
  *((_DWORD *)this + 14) = (char *)this + 52;
  *((_DWORD *)this + 16) = (char *)this + 60;
  *((_DWORD *)this + 18) = (char *)this + 68;
  *((_DWORD *)this + 27) = (char *)this + 104;
  *((_DWORD *)this + 29) = v2;
  *((_DWORD *)this + 5) = (char *)this + 12;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 11) = (char *)this + 44;
  *((_DWORD *)this + 13) = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 60;
  *((_DWORD *)this + 17) = (char *)this + 68;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  v3 = *((_DWORD *)this + 33);
  v4 = *((_DWORD *)this + 34);
  *((_DWORD *)this + 26) = (char *)this + 104;
  *((_DWORD *)this + 32) = v3;
  *((_DWORD *)this + 35) = v4;
  *((_DWORD *)this + 37) = (char *)this + 144;
  *((_DWORD *)this + 36) = (char *)this + 144;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 41) = (char *)this + 152;
  *((_DWORD *)this + 40) = (char *)this + 152;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 47) = (char *)this + 176;
  *((_DWORD *)this + 46) = (char *)this + 176;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 53) = (char *)this + 200;
  *((_DWORD *)this + 52) = (char *)this + 200;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_BYTE *)this + 224) = 0;
  *((_DWORD *)this + 59) = (char *)this + 224;
  *((_DWORD *)this + 65) = (char *)this + 256;
  *((_DWORD *)this + 58) = (char *)this + 224;
  *((_DWORD *)this + 64) = (char *)this + 256;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 264) = 0;
  *((_DWORD *)this + 69) = (char *)this + 264;
  *((_DWORD *)this + 68) = (char *)this + 264;
  *((_DWORD *)this + 72) = (char *)this + 288;
  *((_DWORD *)this + 73) = (char *)this + 288;
  *((_DWORD *)this + 75) = (char *)this + 296;
  *((_DWORD *)this + 77) = (char *)this + 304;
  *((_DWORD *)this + 74) = (char *)this + 296;
  *((_DWORD *)this + 76) = (char *)this + 304;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_BYTE *)this + 328) = 0;
  *((_DWORD *)this + 85) = (char *)this + 328;
  *((_DWORD *)this + 84) = (char *)this + 328;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_BYTE *)this + 356) = 0;
  *((_DWORD *)this + 92) = (char *)this + 356;
  *((_DWORD *)this + 91) = (char *)this + 356;
  *((_DWORD *)this + 93) = 0;
  *((_DWORD *)this + 96) = 0;
  *((_BYTE *)this + 380) = 0;
  *((_DWORD *)this + 98) = (char *)this + 380;
  *((_DWORD *)this + 97) = (char *)this + 380;
  *((_DWORD *)this + 99) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 404) = 0;
  *((_DWORD *)this + 104) = (char *)this + 404;
  *((_DWORD *)this + 103) = (char *)this + 404;
  *((_BYTE *)this + 428) = 0;
  *((_DWORD *)this + 105) = 0;
  ObjectManager::Flush(this);
}


// ===== 34a404 ObjectManager::ObjectManager(void) =====
void __fastcall ObjectManager::ObjectManager(ObjectManager *this)
{
  int v1; // r5
  int v2; // r5
  int v3; // r12
  int v4; // r5

  *(_DWORD *)this = off_95C910;
  *((_DWORD *)this + 2) = (char *)this + 4;
  *((_DWORD *)this + 1) = (char *)this + 4;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 24) = (char *)this + 96;
  *((_DWORD *)this + 33) = (char *)this + 128;
  v1 = *((_DWORD *)this + 24);
  *((_DWORD *)this + 28) = (char *)this + 112;
  *((_DWORD *)this + 25) = v1;
  v2 = *((_DWORD *)this + 28);
  *((_DWORD *)this + 34) = (char *)this + 136;
  *((_DWORD *)this + 6) = (char *)this + 12;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 12) = (char *)this + 44;
  *((_DWORD *)this + 14) = (char *)this + 52;
  *((_DWORD *)this + 16) = (char *)this + 60;
  *((_DWORD *)this + 18) = (char *)this + 68;
  *((_DWORD *)this + 27) = (char *)this + 104;
  *((_DWORD *)this + 29) = v2;
  *((_DWORD *)this + 5) = (char *)this + 12;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 11) = (char *)this + 44;
  *((_DWORD *)this + 13) = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 60;
  *((_DWORD *)this + 17) = (char *)this + 68;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  v3 = *((_DWORD *)this + 33);
  v4 = *((_DWORD *)this + 34);
  *((_DWORD *)this + 26) = (char *)this + 104;
  *((_DWORD *)this + 32) = v3;
  *((_DWORD *)this + 35) = v4;
  *((_DWORD *)this + 37) = (char *)this + 144;
  *((_DWORD *)this + 36) = (char *)this + 144;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 41) = (char *)this + 152;
  *((_DWORD *)this + 40) = (char *)this + 152;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 47) = (char *)this + 176;
  *((_DWORD *)this + 46) = (char *)this + 176;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 53) = (char *)this + 200;
  *((_DWORD *)this + 52) = (char *)this + 200;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_BYTE *)this + 224) = 0;
  *((_DWORD *)this + 59) = (char *)this + 224;
  *((_DWORD *)this + 65) = (char *)this + 256;
  *((_DWORD *)this + 58) = (char *)this + 224;
  *((_DWORD *)this + 64) = (char *)this + 256;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 264) = 0;
  *((_DWORD *)this + 69) = (char *)this + 264;
  *((_DWORD *)this + 68) = (char *)this + 264;
  *((_DWORD *)this + 72) = (char *)this + 288;
  *((_DWORD *)this + 73) = (char *)this + 288;
  *((_DWORD *)this + 75) = (char *)this + 296;
  *((_DWORD *)this + 77) = (char *)this + 304;
  *((_DWORD *)this + 74) = (char *)this + 296;
  *((_DWORD *)this + 76) = (char *)this + 304;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_BYTE *)this + 328) = 0;
  *((_DWORD *)this + 85) = (char *)this + 328;
  *((_DWORD *)this + 84) = (char *)this + 328;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_BYTE *)this + 356) = 0;
  *((_DWORD *)this + 92) = (char *)this + 356;
  *((_DWORD *)this + 91) = (char *)this + 356;
  *((_DWORD *)this + 93) = 0;
  *((_DWORD *)this + 96) = 0;
  *((_BYTE *)this + 380) = 0;
  *((_DWORD *)this + 98) = (char *)this + 380;
  *((_DWORD *)this + 97) = (char *)this + 380;
  *((_DWORD *)this + 99) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 404) = 0;
  *((_DWORD *)this + 104) = (char *)this + 404;
  *((_DWORD *)this + 103) = (char *)this + 404;
  *((_BYTE *)this + 428) = 0;
  *((_DWORD *)this + 105) = 0;
  ObjectManager::Flush(this);
}


// ===== 34a620 ObjectManager::Update(float) =====
int __fastcall ObjectManager::Update(ObjectManager *this, float a2)
{
  int CurrentLevel; // r0
  char *v5; // r4
  char *v6; // r8
  char *v7; // r3
  char *v8; // r4
  char *v9; // r6
  char *v10; // r3
  ObjectBase *v11; // r1
  char v12; // r3
  char *v13; // r11
  ObjectBase **v14; // r6
  ObjectBase *v15; // r4
  char *v16; // r4
  char *v17; // r6
  Character *v18; // r9
  int v19; // r3
  int v20; // r3
  int v21; // r11
  char *v22; // r0
  char *v23; // r9
  char *v24; // r9
  char *v26; // r9
  _DWORD *v27; // r3
  char **v28; // r3
  int v29; // r9
  _DWORD *v30; // r0
  _DWORD *v31; // r3
  char *v32; // r11
  _DWORD *v33; // r3
  _BYTE v34[12]; // [sp+24h] [bp-90h] BYREF
  _BYTE v35[12]; // [sp+30h] [bp-84h] BYREF
  _BYTE v36[12]; // [sp+3Ch] [bp-78h] BYREF
  _DWORD v37[3]; // [sp+48h] [bp-6Ch] BYREF
  _DWORD v38[3]; // [sp+54h] [bp-60h] BYREF
  char *v39; // [sp+60h] [bp-54h] BYREF
  char *v40; // [sp+64h] [bp-50h] BYREF
  int v41; // [sp+68h] [bp-4Ch] BYREF
  char *v42; // [sp+6Ch] [bp-48h] BYREF
  _BYTE v43[4]; // [sp+70h] [bp-44h] BYREF
  std::string v44; // [sp+7Ch] [bp-38h] BYREF
  std::string v45; // [sp+94h] [bp-20h] BYREF

  PushProfilingContext("ObjectManager::Update");
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    *((_BYTE *)this + 253) = 1;
    *((_BYTE *)this + 252) = 1;
  }
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_BYTE *)(CurrentLevel + 324) && !*(_BYTE *)(CurrentLevel + 408) && !*(_BYTE *)(GetOnline() + 5) )
    return PopProfilingContext("ObjectManager::Update");
  ObjectManager::UpdateRooms(this);
  ObjectManager::DoRemoteUpdateUpdate(this, a2);
  ObjectManager::ProcessNextGameObjectToStartUpdate(this);
  v5 = (char *)this + 52;
  if ( *((ObjectManager **)this + 13) == (ObjectManager *)((char *)this + 52) )
  {
    v6 = (char *)this + 44;
  }
  else
  {
    v7 = *((char **)this + 13);
    do
      v7 = *(char **)v7;
    while ( v5 != v7 );
    v6 = (char *)this + 44;
    v41 = *((_DWORD *)this + 13);
    v40 = (char *)this + 44;
    v42 = (char *)this + 52;
    std::list<ObjectBase *>::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase *,std::_Nonconst_traits<ObjectBase *>>>(
      (char *)this + 44,
      &v40,
      &v41,
      &v42,
      v43);
    std::priv::_List_base<ObjectBase *,std::allocator<ObjectBase *>>::clear(v5);
  }
  v9 = (char *)this + 60;
  v8 = *((char **)this + 15);
  if ( v8 != (char *)this + 60 )
  {
    v10 = *((char **)this + 15);
    do
      v10 = *(char **)v10;
    while ( v9 != v10 );
    while ( v8 != v9 )
    {
      v11 = *((ObjectBase **)v8 + 2);
      if ( !*((_BYTE *)v11 + 41) )
      {
        v12 = *((_BYTE *)v11 + 130);
        if ( v12 )
        {
LABEL_66:
          *((_BYTE *)v11 + 130) = v12 - 1;
          v13 = *(char **)v8;
          goto LABEL_17;
        }
        if ( !ObjectManager::IsOnlineDeferred(this, v11) )
        {
          if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v8 + 2) + 36))(*((_DWORD *)v8 + 2))
            && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v8 + 2) + 40))(*((_DWORD *)v8 + 2)) )
          {
            ObjectHandle::ObjectHandle((ObjectHandle *)v38, *((ObjectBase **)v8 + 2));
            ObjectManager::FakeRemove(this, v38[0], v38[1], v38[2]);
          }
          else
          {
            ObjectHandle::ObjectHandle((ObjectHandle *)v37, *((ObjectBase **)v8 + 2));
            ObjectManager::Remove(this, v37[0], v37[1], v37[2]);
          }
          v32 = *(char **)v8;
          v33 = *((_DWORD **)v8 + 1);
          *v33 = *(_DWORD *)v8;
          *((_DWORD *)v32 + 1) = v33;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, 0xCu);
          v8 = v32;
          continue;
        }
        v11 = *((ObjectBase **)v8 + 2);
      }
      v12 = *((_BYTE *)v11 + 130);
      if ( v12 )
        goto LABEL_66;
      v13 = *(char **)v8;
LABEL_17:
      v8 = v13;
    }
  }
  v14 = *((ObjectBase ***)this + 17);
  while ( (ObjectBase **)((char *)this + 68) != v14 )
  {
    v15 = v14[2];
    if ( *((_BYTE *)v15 + 172) || !*((_DWORD *)v15 + 42) )
    {
      if ( *((_BYTE *)v15 + 208) )
        goto LABEL_23;
      if ( !*((_DWORD *)v15 + 51) )
      {
        v14 = (ObjectBase **)*v14;
        continue;
      }
    }
    ObjectBase::TestEnableCondition(v14[2], 1);
    ObjectBase::TestDisableCondition(v15, 1);
LABEL_23:
    v14 = (ObjectBase **)*v14;
  }
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  v16 = *((char **)this + 11);
  v17 = (char *)this + 112;
  while ( v6 != v16 )
  {
    v18 = *((Character **)v16 + 2);
    if ( v18 )
    {
      if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v18 + 36))(*((_DWORD *)v16 + 2)) )
        Character::UpdateAIPointers(v18);
      if ( *((_BYTE *)v18 + 133) && *((_BYTE *)v18 + 138)
        || *(_BYTE *)(GetOnline() + 5) && (*(int (__fastcall **)(Character *))(*(_DWORD *)v18 + 84))(v18) )
      {
        if ( *((_BYTE *)v18 + 129) )
        {
          ObjectManager::MarkForDeletion(this, v18);
          v26 = *(char **)v16;
          v27 = *((_DWORD **)v16 + 1);
          *v27 = *(_DWORD *)v16;
          *((_DWORD *)v26 + 1) = v27;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, 0xCu);
          v16 = v26;
          continue;
        }
        v19 = *(_DWORD *)v18;
        *((_BYTE *)v18 + 136) = 0;
        (*(void (__fastcall **)(Character *))(v19 + 44))(v18);
        ObjectBase::GetHandle((ObjectBase *)v36);
        if ( ObjectHandle::GetObject((ObjectHandle *)v36, 0) )
        {
          v20 = *((unsigned __int8 *)v18 + 136);
          if ( *((unsigned __int8 *)v18 + 137) != v20 )
          {
            *((_BYTE *)v18 + 137) = v20;
            if ( v20 )
            {
              ObjectBase::GetHandle((ObjectBase *)v35);
              v29 = ObjectHandle::operator Character *(v35);
              v30 = (_DWORD *)std::allocator<std::priv::_List_node<Character *>>::allocate((char *)this + 112);
              v30[2] = v29;
              v31 = *((_DWORD **)this + 29);
              *v30 = v17;
              v30[1] = v31;
              *v31 = v30;
              *((_DWORD *)this + 29) = v30;
              v24 = *(char **)v16;
              goto LABEL_40;
            }
            ObjectBase::GetHandle((ObjectBase *)v34);
            v21 = ObjectHandle::operator Character *(v34);
            v22 = *((char **)this + 28);
            while ( v17 != v22 )
            {
              v23 = *(char **)v22;
              if ( v21 == *((_DWORD *)v22 + 2) )
              {
                v28 = *((char ***)v22 + 1);
                *v28 = v23;
                *((_DWORD *)v23 + 1) = v28;
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v22, 0xCu);
                v22 = v23;
              }
              else
              {
                v22 = *(char **)v22;
              }
            }
          }
        }
      }
      else
      {
        *((_BYTE *)v18 + 134) = 0;
        if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)v18 + 36))(v18) )
        {
          v39 = &Character::s_concurrentAI;
          Character::UnLoadScriptProcess(v18, &v39, 0);
          v24 = *(char **)v16;
          goto LABEL_40;
        }
      }
    }
    v24 = *(char **)v16;
LABEL_40:
    v16 = v24;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v45, "TraceUpdateGameObjectOnce");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v45, 0);
  if ( (std::string *)v45._M_start_of_storage._M_data != &v45 && v45._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v45._M_buffers._M_end_of_storage - v45._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v45._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v45._M_start_of_storage._M_data,
        v45._M_buffers._M_end_of_storage - v45._M_start_of_storage._M_data);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v44, "Give50Potions");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v44, 0);
  if ( (std::string *)v44._M_start_of_storage._M_data != &v44 && v44._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v44._M_buffers._M_end_of_storage - v44._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v44._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v44._M_start_of_storage._M_data,
        v44._M_buffers._M_end_of_storage - v44._M_start_of_storage._M_data);
  }
  return PopProfilingContext("ObjectManager::Update");
}


// ===== 34ac18 ObjectBase::SetName(char const*) =====
std::string *__fastcall ObjectBase::SetName(std::string *this, const char *a2)
{
  const char *v3; // r4
  size_t v4; // r0
  std::string *v5; // r5
  const char *v6; // r2

  v3 = a2;
  v4 = LC_API_STRLEN_0(a2);
  std::string::_M_assign(this + 2, v3, &v3[v4]);
  v5 = (std::string *)std::map<int,ObjectListItem>::operator[]<unsigned int>(dword_99F764 + 12, *((_DWORD *)this + 11));
  if ( v3 )
  {
    v6 = &v3[LC_API_STRLEN_0(v3)];
  }
  else
  {
    v6 = "";
    v3 = "";
  }
  return std::string::_M_assign(v5, v3, v6);
}


// ===== 34aca0 ObjectManager::GetObjectByName(char const*,int,bool,char const*) =====
ObjectManager *__fastcall ObjectManager::GetObjectByName(
        ObjectManager *this,
        const char *a2,
        char *a3,
        int a4,
        const char *a5,
        int a6)
{
  int v8; // r6
  const char *v9; // r8
  int v10; // r3
  int v11; // r1
  int v12; // r0
  int v13; // r2
  int v15; // r11
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r2
  int v20; // r11
  std::string *v21; // r6
  size_t v22; // r0
  _BYTE v25[12]; // [sp+28h] [bp-4Ch] BYREF
  _BYTE v26[12]; // [sp+34h] [bp-40h] BYREF
  int v27; // [sp+40h] [bp-34h] BYREF
  int v28; // [sp+44h] [bp-30h]
  int v29; // [sp+48h] [bp-2Ch]
  int v30; // [sp+4Ch] [bp-28h] BYREF
  std::string v31; // [sp+54h] [bp-20h] BYREF

  if ( !LC_API_STRNCMP_0(a3, "Player", 6u)
    || !LC_API_STRNCMP_0(a3, "PlayerCharacter_", 0x10u)
    || !LC_API_STRNCMP_0(a3, "LocalPlayer", 0xBu) )
  {
    a4 = -1;
  }
  if ( LC_API_STRCMP_0(a3, "HighestThreatPlayer") )
  {
    ObjectHandle::ObjectHandle((ObjectHandle *)&v27);
    v8 = *((_DWORD *)a2 + 5);
    v9 = a2 + 12;
    while ( (const char *)v8 != v9 )
    {
      while ( 1 )
      {
        v10 = *(_DWORD *)(v8 + 44);
        if ( v10 && (a4 == -1 || a4 == *(_DWORD *)(v10 + 100) || *(_BYTE *)(v10 + 135)) )
        {
          if ( !LC_API_STRCMP_0(*(const char **)(v8 + 40), a3)
            || !LC_API_STRCMP_0(a3, "Player")
            && (v20 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632),
                ObjectBase::GetHandle((ObjectBase *)v26),
                v20 == ObjectHandle::operator Character *(v26))
            || !LC_API_STRCMP_0(a3, "LocalPlayer")
            && (v15 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632),
                ObjectBase::GetHandle((ObjectBase *)v25),
                v15 == ObjectHandle::operator Character *(v25)) )
          {
            v11 = *(_DWORD *)(v8 + 16);
            v12 = v28;
            goto LABEL_13;
          }
        }
        v16 = *(_DWORD *)(v8 + 12);
        if ( !v16 )
          break;
        while ( *(_DWORD *)(v16 + 8) )
          v16 = *(_DWORD *)(v16 + 8);
        v8 = v16;
        if ( (const char *)v16 == v9 )
          goto LABEL_23;
      }
      v19 = *(_DWORD *)(v8 + 4);
      if ( v8 == *(_DWORD *)(v19 + 12) )
      {
        do
        {
          v8 = v19;
          v19 = *(_DWORD *)(v19 + 4);
        }
        while ( *(_DWORD *)(v19 + 12) == v8 );
        v16 = *(_DWORD *)(v8 + 12);
      }
      if ( v19 != v16 )
        v8 = v19;
    }
LABEL_23:
    if ( (_BYTE)a5 )
    {
      v30 = *((_DWORD *)a2 + 19);
      *((_DWORD *)a2 + 19) = v30 + 1;
      v21 = (std::string *)std::map<int,ObjectListItem>::operator[]<int>(v8, &v30);
      v22 = LC_API_STRLEN_0(a3);
      std::string::_M_assign(v21, a3, &a3[v22]);
      v11 = v30;
      v12 = v28;
LABEL_13:
      v13 = v29;
      *(_DWORD *)this = v11;
      *((_DWORD *)this + 2) = v13;
      *((_DWORD *)this + 1) = v12;
      v27 = v11;
    }
    else
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v31, "isTracingObjectManager");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v31);
      if ( (std::string *)v31._M_start_of_storage._M_data != &v31 && v31._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v31._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v31._M_start_of_storage._M_data,
            v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data);
      }
      v17 = v28;
      v18 = v29;
      *(_DWORD *)this = v27;
      *((_DWORD *)this + 2) = v18;
      *((_DWORD *)this + 1) = v17;
    }
  }
  else
  {
    ObjectManager::GetHighestThreatPlayer(this, a2, a6, a4);
  }
  return this;
}


// ===== 34b064 ObjectManager::GetHighestThreatPlayer(char const*,int,bool) =====
ObjectManager *__fastcall ObjectManager::GetHighestThreatPlayer(ObjectManager *this, char *a2, char *a3, bool a4)
{
  char *v6; // r0
  int HighestAggro; // r2
  char *v9[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v10; // [sp+1Ch] [bp-1Ch] BYREF

  ObjectManager::GetObjectByName((ObjectManager *)v9, a2, a3, a4, nullptr, 0);
  v6 = ObjectHandle::operator Character *(v9);
  HighestAggro = CharAI::AI_GetHighestAggro((CharAI *)(v6 + 968));
  if ( HighestAggro )
  {
    ObjectManager::GetObjectByPtr(this, (ObjectBase *)a2, HighestAggro);
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v10, "isTracingObjectManager::");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
    if ( (std::string *)v10._M_start_of_storage._M_data != &v10 && v10._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v10._M_buffers._M_end_of_storage - v10._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v10._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v10._M_start_of_storage._M_data,
          v10._M_buffers._M_end_of_storage - v10._M_start_of_storage._M_data);
    }
    ObjectHandle::ObjectHandle(this, nullptr);
  }
  return this;
}


// ===== 34b170 operator>>(std::istream &,ObjectHandle &) =====
_DWORD *__fastcall operator>>(_DWORD *a1, _DWORD *a2)
{
  std::string *M_data; // r0
  int v5; // r2
  int v6; // r1
  _DWORD v8[5]; // [sp+8h] [bp-30h] BYREF
  std::string v9; // [sp+1Ch] [bp-1Ch] BYREF

  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0x10u);
  *v9._M_finish = 0;
  std::operator>><char>(a1, &v9);
  ObjectManager::GetObjectByName(
    (ObjectManager *)v8,
    (const char *)dword_99F764,
    v9._M_start_of_storage._M_data,
    -1,
    (const char *)&dword_0 + 1,
    0);
  M_data = (std::string *)v9._M_start_of_storage._M_data;
  v5 = v8[2];
  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  a2[2] = v5;
  if ( M_data != &v9 && M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - (char *)M_data) > 0x80 )
      CustomFree(M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v9._M_buffers._M_end_of_storage - (char *)M_data);
  }
  return a1;
}


// ===== 34b270 ObjectManager::Add(ObjectBase *,char const*,char const*,int,bool) =====
ObjectManager *__fastcall ObjectManager::Add(
        ObjectManager *this,
        ObjectBase *a2,
        std::string *a3,
        char *a4,
        const char *a5,
        _BOOL4 a6,
        char a7)
{
  char *M_data; // r12
  size_t v13; // r0
  int v14; // r7
  _DWORD *v15; // r0
  _DWORD *v16; // r3
  int Object; // r0
  int v18; // r4
  char *v19; // r0
  _DWORD *v20; // r0
  _DWORD *v21; // r3
  _BYTE v22[12]; // [sp+Ch] [bp-20h] BYREF
  _BYTE v23[12]; // [sp+18h] [bp-14h] BYREF
  size_t v24; // [sp+24h] [bp-8h] BYREF

  if ( !a3 )
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
        "obj",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
        1064);
    }
  }
  if ( !a4 )
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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
        1065);
    }
  }
  ObjectManager::GetObjectByName(this, (const char *)a2, a4, a6, (const char *)&dword_0 + 1);
  if ( ObjectHandle::GetObject(this, 0) )
  {
    if ( a3 )
      (*((void (__fastcall **)(std::string *))a3->_M_buffers._M_end_of_storage + 1))(a3);
  }
  else
  {
    *(_DWORD *)(std::map<int,ObjectListItem>::operator[]<unsigned int>((char *)a2 + 12, this) + 24) = a3;
    ++*((_DWORD *)a2 + 20);
    *((_DWORD *)this + 1) = a3;
    M_data = a3[1]._M_start_of_storage._M_data;
    *(_DWORD *)M_data = *(_DWORD *)this;
    *((_DWORD *)M_data + 1) = *((_DWORD *)this + 1);
    *((_DWORD *)M_data + 2) = *((_DWORD *)this + 2);
    ObjectBase::SetName((ObjectBase *)a3, a4);
    v13 = LC_API_STRLEN_0(a5);
    std::string::_M_assign(a3 + 3, a5, &a5[v13]);
    *(_DWORD *)&a3[4]._M_buffers._M_static_buf[4] = a6;
    ObjectBase::GetHandle((ObjectBase *)v23);
    v14 = ObjectHandle::operator Character *(v23);
    if ( v14 )
    {
      v15 = (_DWORD *)std::allocator<std::priv::_List_node<Character *>>::allocate((char *)a2 + 96);
      v15[2] = v14;
      v16 = *((_DWORD **)a2 + 25);
      *v15 = (char *)a2 + 96;
      v15[1] = v16;
      *v16 = v15;
      *((_DWORD *)a2 + 25) = v15;
    }
    ObjectBase::GetHandle((ObjectBase *)v22);
    Object = ObjectHandle::GetObject((ObjectHandle *)v22, 0);
    v18 = Object;
    if ( Object )
    {
      if ( *(_DWORD *)(Object + 244) == 5 )
      {
        v19 = a3[3]._M_start_of_storage._M_data;
        if ( (char *)(a3[3]._M_finish - v19) == &byte_6 && !memcmp(v19, "Module", 6u) )
        {
          v24 = 12;
          v20 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v24);
          v20[2] = v18;
          v21 = *((_DWORD **)a2 + 27);
          *v20 = (char *)a2 + 104;
          v20[1] = v21;
          *v21 = v20;
          *((_DWORD *)a2 + 27) = v20;
        }
      }
    }
    if ( a7 )
      ObjectManager::AssignObjectNetworkId(a2, (ObjectBase *)a3);
  }
  return this;
}


// ===== 34b520 ObjectManager::GetNewObject(char const*,char const*,int,bool) =====
ObjectManager *__fastcall ObjectManager::GetNewObject(
        ObjectManager *this,
        ObjectBase *a2,
        const char *a3,
        char *a4,
        _BOOL4 a5,
        char a6)
{
  int i; // r4
  const char *v9; // r11
  int v10; // r0
  int v12; // r1
  int v13; // r2
  _DWORD v16[3]; // [sp+34h] [bp-30h] BYREF
  std::string v17; // [sp+44h] [bp-20h] BYREF

  for ( i = 0; i != 264; i += 8 )
  {
    while ( 1 )
    {
      v9 = *(const char **)((char *)&objectCreationMap + i);
      if ( !LC_API_STRCMP_0(a3, v9) )
        break;
LABEL_2:
      i += 8;
      if ( i == 264 )
        goto LABEL_11;
    }
    v10 = (*(int (**)(void))((char *)&objectCreationMap + i + 4))();
    if ( v10 )
    {
      *(_DWORD *)(v10 + 32) = v9;
      ObjectManager::Add(this, a2, (std::string *)v10, a4, a3, a5, a6);
      return this;
    }
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      goto LABEL_2;
    }
    if ( gAssertLevel != 1 )
      goto LABEL_2;
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "obj",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
      1310);
  }
LABEL_11:
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v17, "isTracingObjectManager");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
  if ( (std::string *)v17._M_start_of_storage._M_data != &v17 && v17._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v17._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v17._M_start_of_storage._M_data,
        v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data);
  }
  ObjectHandle::ObjectHandle((ObjectHandle *)v16);
  v12 = v16[2];
  v13 = v16[1];
  *(_DWORD *)this = v16[0];
  *((_DWORD *)this + 2) = v12;
  *((_DWORD *)this + 1) = v13;
  return this;
}


// ===== 34b724 ObjectManager::Spawn(char const*,char const*,bool,bool) =====
ObjectManager *__fastcall ObjectManager::Spawn(
        ObjectManager *this,
        ObjectBase *a2,
        const char *a3,
        char *a4,
        bool a5,
        char a6)
{
  int Object; // r0
  int v11; // r0
  ObjectBase *v12; // r0
  std::string *v13; // r7
  size_t v14; // r0
  int v15; // r0
  int v17; // r7
  _DWORD *v18; // r0
  _DWORD *v19; // r3
  int v20; // r0
  ObjectBase *v21; // r0

  ObjectManager::GetNewObject(this, a2, a3, a4, -1, a6);
  if ( ObjectHandle::GetObject(this, 0) )
  {
    Object = ObjectHandle::GetObject(this, 1);
    PropertyMap::InitProperties((PropertyMap *)(Object + 4));
    v11 = ObjectHandle::GetObject(this, 1);
    PropertyMap::LoadDefaultProperties((PropertyMap *)(v11 + 4));
    v12 = (ObjectBase *)ObjectHandle::GetObject(this, 1);
    ObjectBase::SetName(v12, a4);
    v13 = (std::string *)ObjectHandle::GetObject(this, 1);
    v14 = LC_API_STRLEN_0(a3);
    std::string::_M_assign(v13 + 3, a3, &a3[v14]);
    if ( !a5 )
    {
      v20 = ObjectHandle::GetObject(this, 1);
      (*(void (__fastcall **)(int))(*(_DWORD *)v20 + 28))(v20);
      v21 = (ObjectBase *)ObjectHandle::GetObject(this, 1);
      ObjectBase::TestEnableCondition(v21, 1);
    }
    v15 = ObjectHandle::GetObject(this, 1);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 56))(v15) )
    {
      v17 = ObjectHandle::GetObject(this, 0);
      v18 = (_DWORD *)std::allocator<std::priv::_List_node<ObjectBase *>>::allocate((char *)a2 + 52);
      v18[2] = v17;
      v19 = *((_DWORD **)a2 + 14);
      *v18 = (char *)a2 + 52;
      v18[1] = v19;
      *v19 = v18;
      *((_DWORD *)a2 + 14) = v18;
    }
  }
  return this;
}


// ===== 34b868 ObjectManager::LoadFromXML(TiXmlElement *,char const*,Point3D<float> const&,int) =====
int __fastcall ObjectManager::LoadFromXML(int result, TiXmlElement *a2, const char *a3, float *a4, char a5)
{
  const char *v7; // r11
  const char *v8; // r8
  char *v9; // r9
  int Object; // r0
  char *v11; // r11
  PropertyMap *v12; // r10
  int v13; // r0
  int v14; // r0
  int v15; // r0
  float *v16; // r0
  float v17; // r7
  float v18; // r6
  int v19; // r0
  _DWORD v21[7]; // [sp+10h] [bp-24Ch] BYREF
  _DWORD v22[3]; // [sp+2Ch] [bp-230h] BYREF
  char v23[256]; // [sp+3Ch] [bp-220h] BYREF
  char s[256]; // [sp+13Ch] [bp-120h] BYREF
  std::string v25; // [sp+23Ch] [bp-20h] BYREF

  v7 = (const char *)result;
  if ( a2 )
  {
    v8 = (const char *)TiXmlElement::Attribute(a2, "gametype");
    result = TiXmlElement::Attribute(a2, "name");
    v9 = (char *)result;
    if ( result )
    {
      if ( v8 )
      {
        ObjectHandle::ObjectHandle((ObjectHandle *)v22);
        if ( !a3 || (result = LC_API_STRCMP_0(a3, v8)) == 0 )
        {
          if ( LC_API_STRCMP_0(v9, "_prim_PlayerLight") )
          {
            sprintf(s, v9);
            sprintf(v23, "%s_%c", s, 83);
          }
          else
          {
            sprintf(s, v9);
            v9 = v23;
            sprintf(v23, "%s_%c", s, 83);
            a5 = -1;
          }
          ObjectManager::GetNewObject((ObjectManager *)v21, v7, v8, (int)v9, a5);
          v22[1] = v21[1];
          v22[2] = v21[2];
          v22[0] = v21[0];
          result = ObjectHandle::GetObject((ObjectHandle *)v22, 0);
          if ( result )
          {
            Object = ObjectHandle::GetObject((ObjectHandle *)v22, 1);
            PropertyMap::InitProperties((PropertyMap *)(Object + 4));
            v11 = (char *)TiXmlElement::Attribute(a2, "template");
            if ( v11 )
            {
              v12 = (PropertyMap *)(ObjectHandle::GetObject((ObjectHandle *)v22, 1) + 4);
              std::string::string((int)&v25, v11);
              PropertyMap::SetTemplate(v12, &v25);
              if ( (std::string *)v25._M_start_of_storage._M_data != &v25 )
              {
                if ( v25._M_start_of_storage._M_data )
                {
                  if ( (unsigned int)(v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data) > 0x80 )
                    CustomFree(v25._M_start_of_storage._M_data);
                  else
                    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                      v25._M_start_of_storage._M_data,
                      v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data);
                }
              }
            }
            v13 = ObjectHandle::GetObject((ObjectHandle *)v22, 1);
            PropertyMap::LoadDefaultProperties((PropertyMap *)(v13 + 4));
            v14 = ObjectHandle::GetObject((ObjectHandle *)v22, 1);
            PropertyMap::LoadOverridesFromXML((PropertyMap *)(v14 + 4), a2);
            if ( !LC_API_STRCMP_0(v8, "LevelConfig") )
            {
              v19 = ObjectHandle::GetObject((ObjectHandle *)v22, 1);
              (*(void (__fastcall **)(int))(*(_DWORD *)v19 + 28))(v19);
            }
            v15 = ObjectHandle::GetObject((ObjectHandle *)v22, 1);
            result = (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 32))(v15);
            if ( result )
            {
              v16 = (float *)ObjectHandle::operator GameObject *(v22);
              v17 = v16[89] + a4[1];
              v18 = v16[90] + a4[2];
              *(float *)&v21[4] = v16[88] + *a4;
              *(float *)&v21[5] = v17;
              *(float *)&v21[6] = v18;
              return GameObject::SetPosition((GameObject *)v16);
            }
          }
        }
      }
    }
  }
  else if ( gAssertLevel == 2 )
  {
    *(_DWORD *)a2 = a2;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "element",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp",
             524);
  }
  return result;
}


// ===== 34bbe4 ObjectManager::LoadFromXML(TiXmlElement *,char const*) =====
int __fastcall ObjectManager::LoadFromXML(ObjectManager *this, TiXmlElement *a2, const char *a3)
{
  float v4[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v4, 0, 12);
  return ObjectManager::LoadFromXML((int)this, a2, a3, v4, -1);
}


// ===== 34bc14 b2DestructionListener::~b2DestructionListener() =====
void __fastcall b2DestructionListener::~b2DestructionListener(b2DestructionListener *this)
{
  ;
}


// ===== 34bc18 b2BoundaryListener::~b2BoundaryListener() =====
void __fastcall b2BoundaryListener::~b2BoundaryListener(b2BoundaryListener *this)
{
  ;
}


// ===== 34bc1c b2ContactListener::~b2ContactListener() =====
void __fastcall b2ContactListener::~b2ContactListener(b2ContactListener *this)
{
  ;
}


// ===== 34bc20 b2ContactListener::Add(b2ContactPoint const*) =====
void b2ContactListener::Add()
{
  ;
}


// ===== 34bc24 b2ContactListener::Persist(b2ContactPoint const*) =====
void b2ContactListener::Persist()
{
  ;
}


// ===== 34bc28 b2ContactListener::Remove(b2ContactPoint const*) =====
void b2ContactListener::Remove()
{
  ;
}


// ===== 34bc2c b2ContactListener::Result(b2ContactResult const*) =====
void b2ContactListener::Result()
{
  ;
}


// ===== 34bc30 PhysicalWorld::PhysicalWorld(void) =====
void __fastcall PhysicalWorld::PhysicalWorld(PhysicalWorld *this)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_95C970;
  *((_DWORD *)this + 1) = off_95C9A0;
  *((_DWORD *)this + 2) = off_95C9B4;
  *((_DWORD *)this + 3) = off_95C9D4;
}


// ===== 34bc7c PhysicalWorld::PhysicalWorld(void) =====
void __fastcall PhysicalWorld::PhysicalWorld(PhysicalWorld *this)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_95C970;
  *((_DWORD *)this + 1) = off_95C9A0;
  *((_DWORD *)this + 2) = off_95C9B4;
  *((_DWORD *)this + 3) = off_95C9D4;
}


// ===== 34bcc8 PhysicalWorld::destroyBody(b2Body *&) =====
int __fastcall PhysicalWorld::destroyBody(int this, b2Body **a2)
{
  b2Body *v3; // r1

  v3 = *a2;
  if ( v3 )
    this = b2World::DestroyBody(*(b2World **)(this + 16), v3);
  *a2 = nullptr;
  return this;
}


// ===== 34bcf0 PhysicalWorld::createBody(b2BodyDef *) =====
int __fastcall PhysicalWorld::createBody(int a1, int a2, int a3)
{
  if ( a2 )
    return b2World::CreateBody(*(_DWORD *)(a1 + 16), a2, a3, a2);
  else
    return 0;
}


// ===== 34bd08 PhysicalWorld::update(void) =====
void __fastcall PhysicalWorld::update(b2World **this)
{
  int Dt; // r0

  PushProfilingContext("PhysicalWorld::update");
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  b2World::Step(*(this + 4), (float)(unsigned int)Dt * 0.001, 10);
  PopProfilingContext("PhysicalWorld::update");
}


// ===== 34bd70 b2DestructionListener::~b2DestructionListener() =====
void __fastcall b2DestructionListener::~b2DestructionListener(b2DestructionListener *this)
{
  *(_DWORD *)this = off_95C920;
  CustomFree(this);
}


// ===== 34bda4 b2ContactListener::~b2ContactListener() =====
void __fastcall b2ContactListener::~b2ContactListener(b2ContactListener *this)
{
  *(_DWORD *)this = off_95C938;
  CustomFree(this);
}


// ===== 34bdd8 b2BoundaryListener::~b2BoundaryListener() =====
void __fastcall b2BoundaryListener::~b2BoundaryListener(b2BoundaryListener *this)
{
  *(_DWORD *)this = off_95C958;
  CustomFree(this);
}


// ===== 34be0c PhysicalWorld::clear(void) =====
void __fastcall PhysicalWorld::clear(PhysicalWorld *this)
{
  int Switch; // r5
  b2World *v3; // r5
  int v4; // r4
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+24h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+3Ch] [bp-20h] BYREF

  if ( *((_DWORD *)this + 4) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v7, "isTracingPhysicalWorld");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v6, "IsTracingPhysicalWorld");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
    if ( Switch )
    {
      v3 = *((b2World **)this + 4);
      v4 = *((_DWORD *)v3 + 25740);
      if ( !v4 )
        goto LABEL_6;
      do
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((std::string *)&v5, "isTracingPhysicalWorld");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
        v4 = *(_DWORD *)(v4 + 96);
      }
      while ( v4 );
    }
    v3 = *((b2World **)this + 4);
LABEL_6:
    if ( v3 )
    {
      b2World::~b2World(v3);
      CustomFree(v3);
      *((_DWORD *)this + 4) = 0;
    }
  }
}


// ===== 34bf6c `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 12));
}


// ===== 34bf74 `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 8));
}


// ===== 34bf7c `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 4));
}


// ===== 34bf84 PhysicalWorld::~PhysicalWorld() =====
void __fastcall PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  *(_DWORD *)this = off_95C970;
  *((_DWORD *)this + 1) = off_95C9A0;
  *((_DWORD *)this + 2) = off_95C9B4;
  *((_DWORD *)this + 3) = off_95C9D4;
  PhysicalWorld::clear(this);
}


// ===== 34bfcc `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 12));
}


// ===== 34bfd4 `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 8));
}


// ===== 34bfdc `non-virtual thunk to'PhysicalWorld::~PhysicalWorld() =====
void __fastcall `non-virtual thunk to'PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld((PhysicalWorld *)((char *)this - 4));
}


// ===== 34bfe4 PhysicalWorld::~PhysicalWorld() =====
void __fastcall PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  PhysicalWorld::~PhysicalWorld(this);
  CustomFree(this);
}


// ===== 34c000 PhysicalWorld::~PhysicalWorld() =====
void __fastcall PhysicalWorld::~PhysicalWorld(PhysicalWorld *this)
{
  *(_DWORD *)this = off_95C970;
  *((_DWORD *)this + 1) = off_95C9A0;
  *((_DWORD *)this + 2) = off_95C9B4;
  *((_DWORD *)this + 3) = off_95C9D4;
  PhysicalWorld::clear(this);
}


// ===== 34c048 PhysicalWorld::load(float,float,float,float) =====
int __fastcall PhysicalWorld::load(b2World **this, float a2, float a3, float a4, float a5)
{
  b2World *v9; // r5
  _DWORD v11[4]; // [sp+0h] [bp-1Ch] BYREF
  _DWORD v12[2]; // [sp+10h] [bp-Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+1Ch] [bp+0h] BYREF

  PhysicalWorld::clear((PhysicalWorld *)this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v13, "isTracingPhysicalWorld");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  *(float *)&v11[3] = a5;
  v12[1] = 0;
  v12[0] = 0;
  *(float *)v11 = a2;
  *(float *)&v11[1] = a3;
  *(float *)&v11[2] = a4;
  v9 = (b2World *)operator new(0x19278u, 0);
  b2World::b2World(v9, (const b2AABB *)v11, (const b2Vec2 *)v12, 1);
  *(this + 4) = v9;
  b2World::SetBoundaryListener(v9, (b2BoundaryListener *)this);
  b2World::SetContactFilter(*(this + 4), (b2ContactFilter *)(this + 1));
  b2World::SetContactListener(*(this + 4), (b2ContactListener *)(this + 2));
  return b2World::SetDestructionListener(*(this + 4), (b2DestructionListener *)(this + 3));
}


// ===== 34c15c `global constructor keyed to'.._.._sources_Core_PhysicalWorld_PhysicalWorld.cpp =====
int `global constructor keyed to'.._.._sources_Core_PhysicalWorld_PhysicalWorld.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1E78 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E74 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 34c1e4 PhysicalWorld::_IsShape1Instigator(b2ContactPoint const*,PhysicalBaseObject *,PhysicalBaseObject *) =====
bool __fastcall PhysicalWorld::_IsShape1Instigator(int a1, int a2, int a3)
{
  float *v3; // r6
  float v4; // r8
  float v5; // r0
  float v6; // r6
  float v8; // [sp+0h] [bp-8h] BYREF
  float v9; // [sp+4h] [bp-4h]

  v3 = *(float **)(*(_DWORD *)a2 + 12);
  if ( v3[29] <= 0.0 )
    return *(float *)(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 12) + 116) <= 0.0;
  v4 = *(float *)(a2 + 8) - v3[1];
  v5 = *(float *)(a2 + 12) - v3[2];
  v8 = 0.0;
  v9 = 0.0;
  v6 = v5;
  (*(void (__fastcall **)(int, float *))(*(_DWORD *)a3 + 28))(a3, &v8);
  return (float)((float)(v4 * v8) + (float)(v6 * v9)) > 0.0;
}


// ===== 34c2c4 `non-virtual thunk to'PhysicalWorld::SayGoodbye(b2Joint *) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::SayGoodbye(PhysicalWorld *this, b2Joint *a2)
{
  return PhysicalWorld::SayGoodbye((PhysicalWorld *)((char *)this - 12), a2);
}


// ===== 34c2cc PhysicalWorld::SayGoodbye(b2Joint *) =====
void PhysicalWorld::SayGoodbye()
{
  ;
}


// ===== 34c2d0 `non-virtual thunk to'PhysicalWorld::SayGoodbye(b2Shape *) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::SayGoodbye(PhysicalWorld *this, b2Shape *a2)
{
  return PhysicalWorld::SayGoodbye((PhysicalWorld *)((char *)this - 12), a2);
}


// ===== 34c2d8 PhysicalWorld::SayGoodbye(b2Shape *) =====
void PhysicalWorld::SayGoodbye()
{
  ;
}


// ===== 34c2dc `global constructor keyed to'.._.._sources_Core_PhysicalWorld_PhysicalWorld_Listeners.cpp =====
void `global constructor keyed to'.._.._sources_Core_PhysicalWorld_PhysicalWorld_Listeners.cpp()
{
  dword_9A1E84 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E80 = 1056964608;
}


// ===== 34c2fc `non-virtual thunk to'PhysicalWorld::ShouldCollide(b2Shape *,b2Shape *) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::ShouldCollide(PhysicalWorld *this, b2Shape *a2, b2Shape *a3)
{
  return PhysicalWorld::ShouldCollide((PhysicalWorld *)((char *)this - 4), a2, a3);
}


// ===== 34c304 PhysicalWorld::ShouldCollide(b2Shape *,b2Shape *) =====
int __fastcall PhysicalWorld::ShouldCollide(PhysicalWorld *this, b2Shape *a2, b2Shape *a3)
{
  int v3; // r6
  int v4; // r7
  bool v6; // zf
  int v8; // r10
  int result; // r0

  v3 = *((_DWORD *)a2 + 11);
  v4 = *((_DWORD *)a3 + 11);
  v6 = v4 == 0;
  if ( v4 )
    v6 = v3 == 0;
  if ( v6 )
    return b2ContactFilter::ShouldCollide((PhysicalWorld *)((char *)this + 4), a2, a3);
  v8 = (*(int (__fastcall **)(int, int, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v3 + 8))(
         v3,
         v4,
         *((__int16 *)a2 + 19),
         *((unsigned __int16 *)a2 + 17),
         *((unsigned __int16 *)a2 + 18),
         *((__int16 *)a3 + 19),
         *((unsigned __int16 *)a3 + 17),
         *((unsigned __int16 *)a3 + 18));
  result = (*(int (__fastcall **)(int, int, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v4 + 8))(
             v4,
             v3,
             *((__int16 *)a3 + 19),
             *((unsigned __int16 *)a3 + 17),
             *((unsigned __int16 *)a3 + 18),
             *((__int16 *)a2 + 19),
             *((unsigned __int16 *)a2 + 17),
             *((unsigned __int16 *)a2 + 18));
  if ( !v8 )
    return 0;
  return result;
}


// ===== 34c3c0 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingPhysicalWorld";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingPhysicalWorld" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingPhysicalWorld" )
    result = (char *)memcpy(result, "isTracingPhysicalWorld", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 34c410 `non-virtual thunk to'PhysicalWorld::Remove(b2ContactPoint const*) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::Remove(int a1)
{
  return PhysicalWorld::Remove(a1 - 8);
}


// ===== 34c418 PhysicalWorld::Remove(b2ContactPoint const*) =====
void __fastcall PhysicalWorld::Remove(int a1, _DWORD *a2)
{
  const char *v4; // r2
  int v5; // r7
  int v6; // r6
  bool v7; // zf
  _BOOL4 IsShape1Instigator; // r0
  int v9; // r3
  bool v10; // r10
  void (__fastcall *v11)(int, int, _DWORD *, _BOOL4); // r12
  int v12; // r2
  void (__fastcall *v13)(int, int, _DWORD *, bool); // r12
  _DWORD v14[2]; // [sp+4h] [bp-30h] BYREF
  _DWORD v15[2]; // [sp+Ch] [bp-28h] BYREF
  std::string v16; // [sp+14h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize(&v16, "", v4);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v5 = *(_DWORD *)(*a2 + 44);
  v6 = *(_DWORD *)(a2[1] + 44);
  v7 = v6 == 0;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    IsShape1Instigator = PhysicalWorld::_IsShape1Instigator(a1, (int)a2, *(_DWORD *)(*a2 + 44));
    v9 = a2[3];
    v10 = IsShape1Instigator;
    v11 = *(void (__fastcall **)(int, int, _DWORD *, _BOOL4))(*(_DWORD *)v5 + 20);
    v15[0] = a2[2];
    v15[1] = v9;
    v11(v5, v6, v15, IsShape1Instigator);
    v12 = a2[3];
    v13 = *(void (__fastcall **)(int, int, _DWORD *, bool))(*(_DWORD *)v6 + 20);
    v14[0] = a2[2];
    v14[1] = v12;
    v13(v6, v5, v14, !v10);
  }
}


// ===== 34c540 `non-virtual thunk to'PhysicalWorld::Result(b2ContactResult const*) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::Result(int a1)
{
  return PhysicalWorld::Result(a1 - 8);
}


// ===== 34c548 PhysicalWorld::Result(b2ContactResult const*) =====
void __fastcall PhysicalWorld::Result(int a1, _DWORD *a2)
{
  const char *v3; // r2
  int v4; // r2
  int v5; // r5
  int v6; // r6
  bool v7; // zf
  std::string v8; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::string::_M_range_initialize(&v8, "", v3);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  v4 = a2[1];
  v5 = *(_DWORD *)(v4 + 44);
  v6 = *(_DWORD *)(*a2 + 44);
  v7 = v5 == 0;
  if ( v5 )
    v7 = v6 == 0;
  if ( !v7 )
  {
    (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v6 + 24))(v6, *(_DWORD *)(v4 + 44), 1);
    (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v5 + 24))(v5, v6, 0);
  }
}


// ===== 34c62c PhysicalWorld::Violation(b2Body *) =====
void __fastcall PhysicalWorld::Violation(PhysicalWorld *this, b2Body *a2)
{
  const char *v2; // r2
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v3._M_finish = (char *)&v3;
  v3._M_start_of_storage._M_data = (char *)&v3;
  std::string::_M_range_initialize((std::string *)&v3, "", v2);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
}


// ===== 34c6bc `non-virtual thunk to'PhysicalWorld::Add(b2ContactPoint const*) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::Add(int a1)
{
  return PhysicalWorld::Add(a1 - 8);
}


// ===== 34c6c4 PhysicalWorld::Add(b2ContactPoint const*) =====
void __fastcall PhysicalWorld::Add(int a1, _DWORD *a2)
{
  const char *v4; // r2
  int v5; // r7
  int v6; // r6
  bool v7; // zf
  _BOOL4 IsShape1Instigator; // r0
  int v9; // r3
  bool v10; // r10
  void (__fastcall *v11)(int, int, _DWORD *, _BOOL4); // r12
  int v12; // r2
  void (__fastcall *v13)(int, int, _DWORD *, bool); // r12
  _DWORD v14[2]; // [sp+4h] [bp-30h] BYREF
  _DWORD v15[2]; // [sp+Ch] [bp-28h] BYREF
  std::string v16; // [sp+14h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize(&v16, "", v4);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v5 = *(_DWORD *)(*a2 + 44);
  v6 = *(_DWORD *)(a2[1] + 44);
  v7 = v6 == 0;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    IsShape1Instigator = PhysicalWorld::_IsShape1Instigator(a1, (int)a2, *(_DWORD *)(*a2 + 44));
    v9 = a2[3];
    v10 = IsShape1Instigator;
    v11 = *(void (__fastcall **)(int, int, _DWORD *, _BOOL4))(*(_DWORD *)v5 + 12);
    v15[0] = a2[2];
    v15[1] = v9;
    v11(v5, v6, v15, IsShape1Instigator);
    v12 = a2[3];
    v13 = *(void (__fastcall **)(int, int, _DWORD *, bool))(*(_DWORD *)v6 + 12);
    v14[0] = a2[2];
    v14[1] = v12;
    v13(v6, v5, v14, !v10);
  }
}


// ===== 34c7ec `non-virtual thunk to'PhysicalWorld::Persist(b2ContactPoint const*) =====
int __fastcall `non-virtual thunk to'PhysicalWorld::Persist(int a1)
{
  return PhysicalWorld::Persist(a1 - 8);
}


// ===== 34c7f4 PhysicalWorld::Persist(b2ContactPoint const*) =====
void __fastcall PhysicalWorld::Persist(int a1, _DWORD *a2)
{
  const char *v4; // r2
  int v5; // r7
  int v6; // r6
  bool v7; // zf
  _BOOL4 IsShape1Instigator; // r0
  int v9; // r3
  bool v10; // r10
  void (__fastcall *v11)(int, int, _DWORD *, _BOOL4); // r12
  int v12; // r2
  void (__fastcall *v13)(int, int, _DWORD *, bool); // r12
  _DWORD v14[2]; // [sp+4h] [bp-30h] BYREF
  _DWORD v15[2]; // [sp+Ch] [bp-28h] BYREF
  std::string v16; // [sp+14h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::string::_M_range_initialize(&v16, "", v4);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  v5 = *(_DWORD *)(*a2 + 44);
  v6 = *(_DWORD *)(a2[1] + 44);
  v7 = v6 == 0;
  if ( v6 )
    v7 = v5 == 0;
  if ( !v7 )
  {
    IsShape1Instigator = PhysicalWorld::_IsShape1Instigator(a1, (int)a2, *(_DWORD *)(*a2 + 44));
    v9 = a2[3];
    v10 = IsShape1Instigator;
    v11 = *(void (__fastcall **)(int, int, _DWORD *, _BOOL4))(*(_DWORD *)v5 + 16);
    v15[0] = a2[2];
    v15[1] = v9;
    v11(v5, v6, v15, IsShape1Instigator);
    v12 = a2[3];
    v13 = *(void (__fastcall **)(int, int, _DWORD *, bool))(*(_DWORD *)v6 + 16);
    v14[0] = a2[2];
    v14[1] = v12;
    v13(v6, v5, v14, !v10);
  }
}


// ===== 34c91c Keyboard::UpdateFrame(float) =====
__int64 __fastcall Keyboard::UpdateFrame(Keyboard *this, float a2)
{
  int v3; // r5
  __int64 result; // r0
  int v5; // r2

  v3 = 0;
  do
  {
    result = *(_QWORD *)((char *)this + 12);
    v5 = *((_DWORD *)this + 5);
    ++v3;
    *((_BYTE *)this + 40) = *((float *)this + 6) >= (float)((float)((float)(*((float *)this + 9) + *((float *)this + 8))
                                                                  + 1.0)
                                                          * 0.5);
    *((_DWORD *)this + 6) = result;
    *((_DWORD *)this + 8) = HIDWORD(result);
    *((_DWORD *)this + 9) = v5;
    this = (Keyboard *)((char *)this + 32);
  }
  while ( v3 != 97 );
  return result;
}


// ===== 34c98c Mouse::UpdateFrame(float) =====
__int64 __fastcall Mouse::UpdateFrame(Mouse *this, float a2)
{
  Mouse *v2; // r4
  Mouse *v3; // r5
  int v4; // r6
  int v5; // r1
  int v6; // r2
  int v7; // r0
  int v8; // r5
  __int64 result; // r0
  int v10; // r2

  v2 = this;
  v3 = this;
  v4 = 0;
  do
  {
    v5 = *((_DWORD *)v3 + 4);
    v6 = *((_DWORD *)v3 + 5);
    v7 = *((_DWORD *)v3 + 3);
    ++v4;
    *((_BYTE *)v3 + 40) = *((float *)v3 + 6) >= (float)((float)((float)(*((float *)v3 + 9) + *((float *)v3 + 8)) + 1.0)
                                                      * 0.5);
    *((_DWORD *)v3 + 6) = v7;
    *((_DWORD *)v3 + 8) = v5;
    *((_DWORD *)v3 + 9) = v6;
    v3 = (Mouse *)((char *)v3 + 32);
  }
  while ( v4 != 8 );
  v8 = 0;
  do
  {
    result = *(_QWORD *)((char *)v2 + 268);
    v10 = *((_DWORD *)v2 + 69);
    ++v8;
    *((_BYTE *)v2 + 296) = *((float *)v2 + 70) >= (float)((float)((float)(*((float *)v2 + 73) + *((float *)v2 + 72))
                                                                + 1.0)
                                                        * 0.5);
    *((_DWORD *)v2 + 70) = result;
    *((_DWORD *)v2 + 72) = HIDWORD(result);
    *((_DWORD *)v2 + 73) = v10;
    v2 = (Mouse *)((char *)v2 + 32);
  }
  while ( v8 != 8 );
  return result;
}


// ===== 34ca64 InputDevice::InputDevice(InputDevice::Type) =====
_DWORD *__fastcall InputDevice::InputDevice(_DWORD *result, int a2)
{
  result[1] = a2;
  result[2] = 0;
  *result = &off_95CA20;
  return result;
}


// ===== 34ca94 InputDevice::InputDevice(InputDevice::Type) =====
_DWORD *__fastcall InputDevice::InputDevice(_DWORD *result, int a2)
{
  result[1] = a2;
  result[2] = 0;
  *result = &off_95CA20;
  return result;
}


// ===== 34cac4 Mouse::Mouse(void) =====
void __fastcall Mouse::Mouse(Mouse *this)
{
  char *v2; // r3

  InputDevice::InputDevice(this, 1);
  *(_DWORD *)this = &off_95CA10;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 268 );
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 524 );
}


// ===== 34cb70 Mouse::Mouse(void) =====
void __fastcall Mouse::Mouse(Mouse *this)
{
  char *v2; // r3

  InputDevice::InputDevice(this, 1);
  *(_DWORD *)this = &off_95CA10;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 268 );
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 524 );
}


// ===== 34cc1c Keyboard::Keyboard(void) =====
void __fastcall Keyboard::Keyboard(Keyboard *this)
{
  char *v2; // r3

  InputDevice::InputDevice(this, 1);
  *(_DWORD *)this = &off_95CA00;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 3116 );
}


// ===== 34cc94 Keyboard::Keyboard(void) =====
void __fastcall Keyboard::Keyboard(Keyboard *this)
{
  char *v2; // r3

  InputDevice::InputDevice(this, 1);
  *(_DWORD *)this = &off_95CA00;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 3116 );
}


// ===== 34cd0c Gamepad::Gamepad(void) =====
void __fastcall Gamepad::Gamepad(Gamepad *this)
{
  char *v2; // r3
  char *v3; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  int v6; // r0
  Gamepad *v7; // r1
  Gamepad *v8; // r3

  InputDevice::InputDevice(this, 2);
  *(_DWORD *)this = &off_95C9F0;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 1452 );
  v3 = (char *)this + 1452;
  do
  {
    *((_DWORD *)v3 + 5) = 0;
    *((_DWORD *)v3 + 4) = 0;
    *((_DWORD *)v3 + 3) = 0;
    *((_DWORD *)v3 + 1) = 0;
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 6) = 1065353216;
    *((_DWORD *)v3 + 2) = 1065353216;
    v3[28] = 0;
    v3 += 32;
  }
  while ( v3 != (char *)this + 1740 );
  v4 = (_DWORD *)((char *)this + 1740);
  do
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4 += 3;
  }
  while ( v4 != (_DWORD *)((char *)this + 1788) );
  v5 = (_DWORD *)((char *)this + 1804);
  do
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v5 += 3;
  }
  while ( v5 != (_DWORD *)((char *)this + 1852) );
  v6 = 0;
  *((_DWORD *)this + 469) = 128;
  *((_BYTE *)this + 1868) = 0;
  *((_BYTE *)this + 1880) = 0;
  *((_DWORD *)this + 468) = 0;
  v7 = this;
  v8 = this;
  do
  {
    ++v6;
    *((_DWORD *)v8 + 435) = Vec3f_Origin;
    *((_DWORD *)v8 + 436) = dword_99F858;
    *((_DWORD *)v8 + 437) = dword_99F85C;
    *((_DWORD *)v7 + 447) = 0;
    *((_DWORD *)v8 + 451) = Vec3f_Origin;
    *((_DWORD *)v8 + 452) = dword_99F858;
    *((_DWORD *)v8 + 453) = dword_99F85C;
    *((_DWORD *)v7 + 463) = 0;
    v8 = (Gamepad *)((char *)v8 + 12);
    v7 = (Gamepad *)((char *)v7 + 4);
  }
  while ( v6 != 4 );
}


// ===== 34ce88 Gamepad::Gamepad(void) =====
void __fastcall Gamepad::Gamepad(Gamepad *this)
{
  char *v2; // r3
  char *v3; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  int v6; // r0
  Gamepad *v7; // r1
  Gamepad *v8; // r3

  InputDevice::InputDevice(this, 2);
  *(_DWORD *)this = &off_95C9F0;
  v2 = (char *)this + 12;
  do
  {
    *((_DWORD *)v2 + 5) = 0;
    *((_DWORD *)v2 + 4) = 0;
    *((_DWORD *)v2 + 3) = 0;
    *((_DWORD *)v2 + 1) = 0;
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 6) = 1065353216;
    *((_DWORD *)v2 + 2) = 1065353216;
    v2[28] = 0;
    v2 += 32;
  }
  while ( v2 != (char *)this + 1452 );
  v3 = (char *)this + 1452;
  do
  {
    *((_DWORD *)v3 + 5) = 0;
    *((_DWORD *)v3 + 4) = 0;
    *((_DWORD *)v3 + 3) = 0;
    *((_DWORD *)v3 + 1) = 0;
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 6) = 1065353216;
    *((_DWORD *)v3 + 2) = 1065353216;
    v3[28] = 0;
    v3 += 32;
  }
  while ( v3 != (char *)this + 1740 );
  v4 = (_DWORD *)((char *)this + 1740);
  do
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4 += 3;
  }
  while ( v4 != (_DWORD *)((char *)this + 1788) );
  v5 = (_DWORD *)((char *)this + 1804);
  do
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v5 += 3;
  }
  while ( v5 != (_DWORD *)((char *)this + 1852) );
  v6 = 0;
  *((_DWORD *)this + 469) = 128;
  *((_BYTE *)this + 1868) = 0;
  *((_BYTE *)this + 1880) = 0;
  *((_DWORD *)this + 468) = 0;
  v7 = this;
  v8 = this;
  do
  {
    ++v6;
    *((_DWORD *)v8 + 435) = Vec3f_Origin;
    *((_DWORD *)v8 + 436) = dword_99F858;
    *((_DWORD *)v8 + 437) = dword_99F85C;
    *((_DWORD *)v7 + 447) = 0;
    *((_DWORD *)v8 + 451) = Vec3f_Origin;
    *((_DWORD *)v8 + 452) = dword_99F858;
    *((_DWORD *)v8 + 453) = dword_99F85C;
    *((_DWORD *)v7 + 463) = 0;
    v8 = (Gamepad *)((char *)v8 + 12);
    v7 = (Gamepad *)((char *)v7 + 4);
  }
  while ( v6 != 4 );
}


// ===== 34d004 Gamepad::ToggleVibration(void) =====
void __fastcall Gamepad::ToggleVibration(Gamepad *this)
{
  Gamepad::s_vibration ^= 1u;
}


// ===== 34d02c Gamepad::IsVibrationEnabled(void) =====
int __fastcall Gamepad::IsVibrationEnabled(Gamepad *this)
{
  return (unsigned __int8)Gamepad::s_vibration;
}


// ===== 34d04c Point3D<float>::operator/=(float const&) =====
float *__fastcall Point3D<float>::operator/=(float *result, float *a2)
{
  *result = *result / *a2;
  result[1] = result[1] / *a2;
  result[2] = result[2] / *a2;
  return result;
}


// ===== 34d090 `global constructor keyed to'.._.._sources_Core_InputManager_generic_inputDevice.cpp =====
void `global constructor keyed to'.._.._sources_Core_InputManager_generic_inputDevice.cpp()
{
  dword_9A1E90 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E8C = 1056964608;
}


// ===== 34d0b0 Point3D<float>::normalize(void) =====
int __fastcall Point3D<float>::normalize(float *a1)
{
  float v3; // [sp+4h] [bp-8h] BYREF

  v3 = sqrtf((float)((float)(*a1 * *a1) + (float)(a1[1] * a1[1])) + (float)(a1[2] * a1[2]));
  return Point3D<float>::operator/=(a1, &v3);
}


// ===== 34d124 Gamepad::UpdateFrame(float) =====
int __fastcall Gamepad::UpdateFrame(Gamepad *this, float a2)
{
  Gamepad *v3; // r5
  Gamepad *v4; // r4
  int v5; // r6
  int v6; // r1
  int v7; // r2
  int v8; // r0
  Gamepad *v9; // r4
  int v10; // r6
  int v11; // r1
  int v12; // r2
  int v13; // r0
  int v14; // r6
  Gamepad *v15; // r4
  int v16; // r10
  int v17; // r9
  float v18; // r10
  float v19; // r10
  float v20; // r11
  float v21; // r9
  int result; // r0
  float v23; // r10
  int v24; // r2
  int v25; // r3
  float v26; // r10
  float v27; // [sp+10h] [bp-1Ch] BYREF
  float v28; // [sp+14h] [bp-18h]
  float v29; // [sp+18h] [bp-14h]
  int v30; // [sp+1Ch] [bp-10h] BYREF
  int v31; // [sp+20h] [bp-Ch]
  int v32; // [sp+24h] [bp-8h]

  v3 = this;
  v4 = this;
  v5 = 0;
  do
  {
    v6 = *((_DWORD *)v4 + 4);
    v7 = *((_DWORD *)v4 + 5);
    v8 = *((_DWORD *)v4 + 3);
    ++v5;
    *((_BYTE *)v4 + 40) = *((float *)v4 + 6) >= (float)((float)((float)(*((float *)v4 + 9) + *((float *)v4 + 8)) + 1.0)
                                                      * 0.5);
    *((_DWORD *)v4 + 6) = v8;
    *((_DWORD *)v4 + 8) = v6;
    *((_DWORD *)v4 + 9) = v7;
    v4 = (Gamepad *)((char *)v4 + 32);
  }
  while ( v5 != 45 );
  v9 = this;
  v10 = 0;
  do
  {
    v11 = *((_DWORD *)v9 + 364);
    v12 = *((_DWORD *)v9 + 365);
    v13 = *((_DWORD *)v9 + 363);
    ++v10;
    *((_BYTE *)v9 + 1480) = *((float *)v9 + 366) >= (float)((float)((float)(*((float *)v9 + 369) + *((float *)v9 + 368))
                                                                  + 1.0)
                                                          * 0.5);
    *((_DWORD *)v9 + 366) = v13;
    *((_DWORD *)v9 + 368) = v11;
    *((_DWORD *)v9 + 369) = v12;
    v9 = (Gamepad *)((char *)v9 + 32);
  }
  while ( v10 != 9 );
  v14 = 0;
  v15 = this;
  do
  {
    while ( 1 )
    {
      if ( !*((_DWORD *)v3 + 447) )
      {
        *((_DWORD *)v15 + 435) = Vec3f_Origin;
        *((_DWORD *)v15 + 436) = dword_99F858;
        *((_DWORD *)v15 + 437) = dword_99F85C;
      }
      if ( !*((_DWORD *)v3 + 463) )
      {
        *((_DWORD *)v15 + 451) = Vec3f_Origin;
        *((_DWORD *)v15 + 452) = dword_99F858;
        *((_DWORD *)v15 + 453) = dword_99F85C;
      }
      if ( v14 == 2 )
      {
        v16 = 5;
        v17 = 4;
      }
      else if ( v14 == 3 )
      {
        v16 = 7;
        v17 = 6;
      }
      else
      {
        if ( v14 == 1 )
          v17 = 2;
        else
          v17 = 0;
        if ( v14 == 1 )
          v16 = 3;
        else
          v16 = 1;
      }
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      v27 = (float)(*((float *)this + 8 * v17 + 363) + *((float *)this + 8 * v17 + 363))
          / (float)(*((float *)this + 8 * v17 + 365) - *((float *)this + 8 * v17 + 364));
      LODWORD(v28) = COERCE_INT(
                       (float)(*((float *)this + 8 * v16 + 363) + *((float *)this + 8 * v16 + 363))
                     / (float)(*((float *)this + 8 * v16 + 365) - *((float *)this + 8 * v16 + 364)))
                   + 0x80000000;
      v18 = sqrtf((float)((float)(v27 * v27) + (float)(v28 * v28)) + 0.0);
      if ( v18 >= 0.65 )
      {
        Point3D<float>::normalize(&v27);
        if ( v18 < 0.95 )
        {
          v23 = (float)(v18 - 0.65) / 0.3;
          v20 = v23 * v27;
          v27 = v23 * v27;
          v21 = v23 * v28;
          v28 = v23 * v28;
          v19 = v23 * v29;
          v29 = v19;
        }
        else
        {
          v20 = v27;
          v21 = v28;
          v19 = v29;
        }
        v30 = LODWORD(v20);
        v31 = LODWORD(v21);
        v32 = LODWORD(v19);
      }
      else
      {
        v19 = *(float *)&dword_99F85C;
        v20 = *(float *)&Vec3f_Origin;
        v21 = *(float *)&dword_99F858;
        v32 = dword_99F85C;
        v30 = Vec3f_Origin;
        v31 = dword_99F858;
      }
      if ( (float)((float)((float)(v20 * v20) + (float)(v21 * v21)) + (float)(v19 * v19)) > 0.0 )
      {
        Point3D<float>::normalize((float *)&v30);
        if ( *((_DWORD *)v3 + 447) )
        {
          result = clock();
          if ( result - *((_DWORD *)v3 + 447) > 200 )
          {
            *((_DWORD *)v15 + 435) = Vec3f_Origin;
            *((_DWORD *)v15 + 436) = dword_99F858;
            *((_DWORD *)v15 + 437) = dword_99F85C;
          }
        }
        else
        {
          *((_DWORD *)v15 + 435) = v30;
          *((_DWORD *)v15 + 436) = v31;
          *((_DWORD *)v15 + 437) = v32;
          result = clock();
          *((_DWORD *)v3 + 447) = result;
        }
        goto LABEL_33;
      }
      *((_DWORD *)v3 + 447) = 0;
      if ( Point3D<float>::operator==((char *)this + 12 * v14 + 1740) )
        break;
      if ( !*((_DWORD *)v3 + 463) )
      {
        result = clock();
        *((_DWORD *)v3 + 463) = result;
        v24 = *((_DWORD *)v15 + 436);
        v25 = *((_DWORD *)v15 + 437);
        *((_DWORD *)v15 + 451) = *((_DWORD *)v15 + 435);
        *((_DWORD *)v15 + 452) = v24;
        *((_DWORD *)v15 + 453) = v25;
        goto LABEL_33;
      }
      result = clock();
      if ( result - *((_DWORD *)v3 + 463) <= 400 )
      {
        result = Point3D<float>::operator==((char *)this + 12 * v14 + 1804);
        if ( !result )
        {
          v26 = (float)((float)(*((float *)v15 + 451) * *((float *)v15 + 435))
                      + (float)(*((float *)v15 + 452) * *((float *)v15 + 436)))
              + (float)(*((float *)v15 + 453) * *((float *)v15 + 437));
          result = v26 > 1.0;
          if ( v26 <= 1.0 )
          {
            result = v26 < -1.0;
            if ( v26 < -1.0 || (result = acosf(v26) > 0.31416) != 0 )
            {
              *((_DWORD *)v15 + 451) = Vec3f_Origin;
              *((_DWORD *)v15 + 452) = dword_99F858;
              *((_DWORD *)v15 + 453) = dword_99F85C;
            }
          }
          *((_DWORD *)v3 + 463) = 0;
        }
        goto LABEL_33;
      }
LABEL_26:
      ++v14;
      *((_DWORD *)v15 + 451) = Vec3f_Origin;
      v3 = (Gamepad *)((char *)v3 + 4);
      *((_DWORD *)v15 + 452) = dword_99F858;
      *((_DWORD *)v15 + 453) = dword_99F85C;
      v15 = (Gamepad *)((char *)v15 + 12);
      if ( v14 == 4 )
        return result;
    }
    result = clock();
    if ( result - *((_DWORD *)v3 + 463) > 400 )
    {
      *((_DWORD *)v3 + 463) = 0;
      goto LABEL_26;
    }
LABEL_33:
    ++v14;
    v3 = (Gamepad *)((char *)v3 + 4);
    v15 = (Gamepad *)((char *)v15 + 12);
  }
  while ( v14 != 4 );
  return result;
}


// ===== 34d6bc InputManager::InputManager(int,int,int) =====
void __fastcall InputManager::InputManager(InputManager *this, int a2, int a3, int a4)
{
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = &off_95CA30;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = a4;
}


// ===== 34d6fc InputManager::InputManager(int,int,int) =====
void __fastcall InputManager::InputManager(InputManager *this, int a2, int a3, int a4)
{
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = &off_95CA30;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = a4;
}


// ===== 34d73c InputManager::~InputManager() =====
void __fastcall InputManager::~InputManager(InputManager *this)
{
  ;
}


// ===== 34d740 InputManager::~InputManager() =====
void __fastcall InputManager::~InputManager(InputManager *this)
{
  ;
}


// ===== 34d744 InputManager::GetNumMouses(void) =====
int __fastcall InputManager::GetNumMouses(InputManager *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 34d74c InputManager::GetNumKeyboards(void) =====
int __fastcall InputManager::GetNumKeyboards(InputManager *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 34d754 InputManager::GetNumGamepads(void) =====
int __fastcall InputManager::GetNumGamepads(InputManager *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 34d75c InputManager::GetConnectedGamepadCount(void) =====
int __fastcall InputManager::GetConnectedGamepadCount(InputManager *this)
{
  int v2; // r6
  int v3; // r4
  int v4; // r0

  if ( *((int *)this + 3) <= 0 )
    return 0;
  v3 = 0;
  v2 = 0;
  do
  {
    v4 = (*(int (__fastcall **)(InputManager *, int))(*(_DWORD *)this + 8))(this, v3++);
    if ( *(_BYTE *)(v4 + 1880) )
      ++v2;
  }
  while ( *((_DWORD *)this + 3) > v3 );
  return v2;
}


// ===== 34d7b4 InputManager::GetFirstConnectedGamepad(void) =====
int __fastcall InputManager::GetFirstConnectedGamepad(InputManager *this)
{
  int v2; // r4

  if ( *((int *)this + 3) <= 0 )
    return 0;
  v2 = 0;
  while ( !*(_BYTE *)((*(int (__fastcall **)(InputManager *, int))(*(_DWORD *)this + 8))(this, v2) + 1880) )
  {
    if ( *((_DWORD *)this + 3) <= ++v2 )
      return 0;
  }
  return (*(int (__fastcall **)(InputManager *, int))(*(_DWORD *)this + 8))(this, v2);
}


// ===== 34d820 InputManager::UpdateFrame(float) =====
__int64 __fastcall InputManager::UpdateFrame(InputManager *this, float a2)
{
  __int64 i; // r4
  void (__fastcall ***v4)(_DWORD, _DWORD); // r0
  void (__fastcall ***v5)(_DWORD, _DWORD); // r0
  void (__fastcall ***v6)(_DWORD, _DWORD); // r0
  bool v7; // cc
  __int64 result; // r0

  for ( i = (unsigned int)this; SHIDWORD(i) < InputManager::GetNumMouses((InputManager *)i); ++HIDWORD(i) )
  {
    v4 = (void (__fastcall ***)(_DWORD, _DWORD))(**(int (__fastcall ***)(_DWORD, _DWORD))i)(i, HIDWORD(i));
    (**v4)(v4, LODWORD(a2));
  }
  HIDWORD(i) = 0;
  while ( SHIDWORD(i) < InputManager::GetNumKeyboards((InputManager *)i) )
  {
    v5 = (void (__fastcall ***)(_DWORD, _DWORD))(*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)i + 4))(
                                                  i,
                                                  HIDWORD(i));
    (**v5)(v5, LODWORD(a2));
    ++HIDWORD(i);
  }
  for ( HIDWORD(i) = 0; ; ++HIDWORD(i) )
  {
    v7 = SHIDWORD(i) < InputManager::GetNumGamepads((InputManager *)i);
    result = i;
    if ( !v7 )
      break;
    v6 = (void (__fastcall ***)(_DWORD, _DWORD))(*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)i + 8))(
                                                  i,
                                                  HIDWORD(i));
    (**v6)(v6, LODWORD(a2));
  }
  return result;
}


// ===== 34d8f0 `global constructor keyed to'.._.._sources_Core_InputManager_generic_inputManager.cpp =====
void `global constructor keyed to'.._.._sources_Core_InputManager_generic_inputManager.cpp()
{
  dword_9A1E9C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1E98 = 1056964608;
}


// ===== 34d910 InputManager::~InputManager() =====
void __fastcall InputManager::~InputManager(InputManager *this)
{
  InputManager::~InputManager(this);
  CustomFree(this);
}


// ===== 34d92c InputManagerEventReceiver::onEvent(glitch::SEvent const&) =====
int __fastcall InputManagerEventReceiver::onEvent(int a1, int *a2)
{
  int v2; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v2 = *a2;
  if ( *a2 == 2 )
  {
    *(_BYTE *)(a1 + a2[3] + 4) = *((_BYTE *)a2 + 16);
    v8 = a2[3];
    if ( v8 == 17 )
    {
      *(_BYTE *)(a1 + 166) = *((_BYTE *)a2 + 16);
      *(_BYTE *)(a1 + 167) = *((_BYTE *)a2 + 16);
      v2 = *a2;
    }
    else if ( v8 == 18 )
    {
      *(_BYTE *)(a1 + 168) = *((_BYTE *)a2 + 16);
      *(_BYTE *)(a1 + 169) = *((_BYTE *)a2 + 16);
      v2 = *a2;
    }
    else
    {
      if ( v8 == 16 )
      {
        *(_BYTE *)(a1 + 164) = *((_BYTE *)a2 + 16);
        *(_BYTE *)(a1 + 165) = *((_BYTE *)a2 + 16);
      }
      v2 = *a2;
    }
  }
  if ( v2 != 1 )
    return 0;
  v5 = *(unsigned __int8 *)(a1 + 274);
  v6 = *(unsigned __int8 *)(a1 + 276);
  *(_DWORD *)(a1 + 260) = a2[2];
  v7 = *(unsigned __int8 *)(a1 + 275);
  *(_DWORD *)(a1 + 264) = a2[3];
  if ( !a2[5] )
    v5 |= 1u;
  *(_BYTE *)(a1 + 274) = v5;
  *(_BYTE *)(a1 + 274) = v5 != (a2[5] == 3);
  if ( a2[5] == 2 )
    v6 |= 1u;
  *(_BYTE *)(a1 + 276) = v6;
  *(_BYTE *)(a1 + 276) = v6 != (a2[5] == 5);
  if ( a2[5] == 1 )
    v7 |= 1u;
  *(_BYTE *)(a1 + 275) = v7;
  *(_BYTE *)(a1 + 275) = v7 != (a2[5] == 4);
  if ( a2[5] != 7 )
    return 0;
  *(float *)(a1 + 268) = *(float *)(a1 + 268) + *((float *)a2 + 4);
  return 0;
}


// ===== 34da90 InputManagerEventReceiver::IsKeyDown(glitch::EKEY_CODE) =====
int __fastcall InputManagerEventReceiver::IsKeyDown(int a1, int a2)
{
  return *(unsigned __int8 *)(a1 + a2 + 4);
}


// ===== 34da9c InputManagerWin32::GetMouse(int) =====
char *__fastcall InputManagerWin32::GetMouse(InputManagerWin32 *this, int a2)
{
  return (char *)this + 3140;
}


// ===== 34daa8 InputManagerWin32::GetKeyboard(int) =====
char *__fastcall InputManagerWin32::GetKeyboard(InputManagerWin32 *this, int a2)
{
  return (char *)this + 24;
}


// ===== 34dab0 InputManagerEventReceiver::~InputManagerEventReceiver() =====
void __fastcall InputManagerEventReceiver::~InputManagerEventReceiver(InputManagerEventReceiver *this)
{
  ;
}


// ===== 34dab4 InputManager::Destroy(void) =====
int __fastcall InputManager::Destroy(InputManager *this)
{
  int result; // r0

  if ( s_pEventReceiver )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)s_pEventReceiver + 4))(s_pEventReceiver);
    s_pEventReceiver = 0;
  }
  if ( s_pInputManagerWin32 )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)s_pInputManagerWin32 + 20))(s_pInputManagerWin32);
    s_pInputManagerWin32 = 0;
  }
  return result;
}


// ===== 34db1c InputManager::GetReceiver(void) =====
int __fastcall InputManager::GetReceiver(InputManager *this)
{
  int result; // r0
  int v2; // r3
  int v3; // r2

  result = s_pEventReceiver;
  if ( !s_pEventReceiver )
  {
    result = operator new(0x118u, 0);
    v2 = 0;
    *(_DWORD *)result = off_95CA50;
    do
    {
      v3 = result + v2++;
      *(_BYTE *)(v3 + 4) = 0;
    }
    while ( v2 != 255 );
    *(_BYTE *)(result + 274) = 0;
    *(_DWORD *)(result + 268) = 0;
    *(_DWORD *)(result + 264) = 0;
    *(_DWORD *)(result + 260) = 0;
    *(_BYTE *)(result + 276) = 0;
    *(_BYTE *)(result + 275) = 0;
    s_pEventReceiver = result;
  }
  return result;
}


// ===== 34dbb4 InputManagerWin32::GetGamepad(int) =====
char *__fastcall InputManagerWin32::GetGamepad(InputManagerWin32 *this, int a2)
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
        "idx < 4",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\InputManager\\win32\\inputManagerWin32.cpp",
        640);
    }
  }
  return (char *)this + 1884 * a2 + 3664;
}


// ===== 34dc5c InputManagerEventReceiver::~InputManagerEventReceiver() =====
void __fastcall InputManagerEventReceiver::~InputManagerEventReceiver(InputManagerEventReceiver *this)
{
  *(_DWORD *)this = off_95C300;
  CustomFree(this);
}


// ===== 34dc90 InputManagerWin32::UpdateFrame(float) =====
// attributes: thunk
__int64 __fastcall InputManagerWin32::UpdateFrame(InputManager *this, float a2)
{
  return InputManager::UpdateFrame(this, a2);
}


// ===== 34dc94 InputManagerWin32::~InputManagerWin32() =====
void __fastcall InputManagerWin32::~InputManagerWin32(InputManagerWin32 *this)
{
  *(_DWORD *)this = off_95CA68;
  InputManager::~InputManager(this);
}


// ===== 34dcc8 InputManagerWin32::~InputManagerWin32() =====
void __fastcall InputManagerWin32::~InputManagerWin32(InputManagerWin32 *this)
{
  InputManagerWin32::~InputManagerWin32(this);
  CustomFree(this);
}


// ===== 34dce4 InputManagerWin32::~InputManagerWin32() =====
void __fastcall InputManagerWin32::~InputManagerWin32(InputManagerWin32 *this)
{
  *(_DWORD *)this = off_95CA68;
  InputManager::~InputManager(this);
}


// ===== 34dd18 InputManagerWin32::InputManagerWin32(void) =====
void __fastcall InputManagerWin32::InputManagerWin32(InputManagerWin32 *this)
{
  InputManager::InputManager(this, 1, 1, 4);
  *(_DWORD *)this = off_95CA68;
  Keyboard::Keyboard((InputManagerWin32 *)((char *)this + 24));
  Mouse::Mouse((InputManagerWin32 *)((char *)this + 3140));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 3664));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 5548));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 7432));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 9316));
}


// ===== 34dda4 InputManager::GetInstance(void) =====
int __fastcall InputManager::GetInstance(InputManager *this)
{
  InputManagerWin32 *v1; // r6

  v1 = (InputManagerWin32 *)s_pInputManagerWin32;
  if ( !s_pInputManagerWin32 )
  {
    v1 = (InputManagerWin32 *)operator new(0x2BC0u, 0);
    InputManagerWin32::InputManagerWin32(v1);
    s_pInputManagerWin32 = (int)v1;
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
          "s_pInputManagerWin32",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\InputManager\\win32\\inputManagerWin32.cpp",
          654);
        return s_pInputManagerWin32;
      }
    }
  }
  return (int)v1;
}


// ===== 34de68 InputManagerWin32::InputManagerWin32(void) =====
void __fastcall InputManagerWin32::InputManagerWin32(InputManagerWin32 *this)
{
  InputManager::InputManager(this, 1, 1, 4);
  *(_DWORD *)this = off_95CA68;
  Keyboard::Keyboard((InputManagerWin32 *)((char *)this + 24));
  Mouse::Mouse((InputManagerWin32 *)((char *)this + 3140));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 3664));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 5548));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 7432));
  Gamepad::Gamepad((InputManagerWin32 *)((char *)this + 9316));
}


// ===== 34def4 `global constructor keyed to'.._.._sources_Core_InputManager_win32_inputManagerWin32.cpp =====
int `global constructor keyed to'.._.._sources_Core_InputManager_win32_inputManagerWin32.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1EB0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1EAC = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 34df7c glitch::io::CFileSystem::existFile(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::io::CFileSystem::existFile(int a1, int a2)
{
  return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 68))(a1, *(_DWORD *)(a2 + 20));
}


// ===== 34df94 FileSystemBase::doesFileExists(char const*) =====
int __fastcall FileSystemBase::doesFileExists(FileSystemBase *this, const char *a2)
{
  int v3; // r5
  int result; // r0
  int v5; // [sp+4h] [bp-8h] BYREF

  v5 = (*(int (__fastcall **)(FileSystemBase *, const char *, _DWORD, _DWORD))(*(_DWORD *)this + 136))(this, a2, 0, 0);
  v3 = v5;
  (*(void (__fastcall **)(FileSystemBase *, int *))(*(_DWORD *)this + 120))(this, &v5);
  result = v3;
  if ( v3 )
    return 1;
  return result;
}


// ===== 34dfe0 FileSystemBase::doesResourceExists(char const*) =====
int __fastcall FileSystemBase::doesResourceExists(FileSystemBase *this, const char *a2)
{
  int v3; // r5
  int result; // r0
  int v5; // [sp+4h] [bp-8h] BYREF

  v5 = (*(int (__fastcall **)(FileSystemBase *, const char *))(*(_DWORD *)this + 144))(this, a2);
  v3 = v5;
  (*(void (__fastcall **)(FileSystemBase *, int *))(*(_DWORD *)this + 120))(this, &v5);
  result = v3;
  if ( v3 )
    return 1;
  return result;
}


// ===== 34e024 ToLowerCase(std::string &,int,int) =====
int __fastcall ToLowerCase(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  char v5; // r4
  _BYTE *v6; // r3

  v3 = *(_DWORD *)(result + 20);
  v4 = *(_DWORD *)(result + 16) - v3;
  if ( a3 == -1 || a3 >= v4 )
    a3 = v4 - 1;
  if ( a2 <= a3 )
  {
    while ( 1 )
    {
      v5 = *(_BYTE *)(v3 + a2);
      v6 = (_BYTE *)(v3 + a2++);
      if ( v5 > 64 && v5 <= 90 )
        *v6 = v5 + 32;
      if ( a2 > a3 )
        break;
      v3 = *(_DWORD *)(result + 20);
    }
  }
  return result;
}


// ===== 34e090 ToLowerCase(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &,int,int) =====
int __fastcall ToLowerCase(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  char v5; // r4
  _BYTE *v6; // r3

  v3 = *(_DWORD *)(result + 20);
  v4 = *(_DWORD *)(result + 16) - v3;
  if ( a3 == -1 || a3 >= v4 )
    a3 = v4 - 1;
  if ( a2 <= a3 )
  {
    while ( 1 )
    {
      v5 = *(_BYTE *)(v3 + a2);
      v6 = (_BYTE *)(v3 + a2++);
      if ( v5 > 64 && v5 <= 90 )
        *v6 = v5 + 32;
      if ( a2 > a3 )
        break;
      v3 = *(_DWORD *)(result + 20);
    }
  }
  return result;
}


// ===== 34e0fc FileSystemBase::decodeObfuscatedData(int,void *,int,void *) =====
int __fastcall FileSystemBase::decodeObfuscatedData(int this, int a2, char *a3, int a4, void *a5)
{
  char *i; // r3

  if ( this <= 3 )
  {
    if ( (unsigned int)a3 >= 4 - this )
      a3 = (char *)(4 - this);
    if ( (int)a3 > 0 )
    {
      LOBYTE(this) = ~(_BYTE)this;
      for ( i = nullptr; i != a3; ++i )
      {
        i[a2] += this;
        this = (unsigned __int8)(this - 1);
      }
    }
  }
  return this;
}


// ===== 34e150 FileSystemBase::doesSavefileExists(char const*) =====
int __fastcall FileSystemBase::doesSavefileExists(FileSystemBase *this, Savegame *a2)
{
  int v4; // r5
  int result; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  Savegame::FlushJobs((int)a2, (const char *)a2);
  v6 = (*(int (__fastcall **)(FileSystemBase *, Savegame *, _DWORD))(*(_DWORD *)this + 148))(this, a2, 0);
  v4 = v6;
  (*(void (__fastcall **)(FileSystemBase *, int *))(*(_DWORD *)this + 120))(this, &v6);
  result = v4;
  if ( v4 )
    return 1;
  return result;
}


// ===== 34e1ac FileSystemBase::formatFilePath(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall FileSystemBase::formatFilePath(_DWORD *a1, int a2, int a3)
{
  a1[4] = a1;
  a1[5] = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  return a1;
}


// ===== 34e1d4 FileSystemBase::changeWorkingDirectoryTo(char const*) =====
bool __fastcall FileSystemBase::changeWorkingDirectoryTo(FileSystemBase *this, const char *path)
{
  int v3; // r0
  _BOOL4 v4; // r4

  v3 = chdir(path);
  v4 = v3 == 0;
  if ( !v3 )
    LC_API_STRCPY_0(&glitch::io::CFileSystem::WorkingDirectory, path);
  return v4;
}


// ===== 34e21c std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(char const*,char const*,std::forward_iterator_tag const&) =====
int __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(
        int a1,
        _BYTE *a2,
        _BYTE *a3)
{
  _BYTE *v3; // r5
  int v5; // r3
  unsigned int v6; // r6
  bool v7; // zf
  _BYTE *v8; // r3
  int v9; // r0
  size_t size; // r10
  char *v12; // r0
  _BYTE *v13; // r1
  _BYTE *v14; // r8
  char *v15; // r7
  _BYTE *v16; // r0
  int v17; // r3
  char *v18; // r6

  v3 = a2;
  if ( a2 == a3 )
    return a1;
  v5 = *(_DWORD *)(a1 + 20);
  v6 = a3 - a2;
  v7 = v5 == a1;
  if ( v5 != a1 )
    a2 = *(_BYTE **)a1;
  v8 = *(_BYTE **)(a1 + 16);
  if ( v7 )
    a2 = (_BYTE *)(a1 + 16);
  if ( v6 < a2 - v8 )
  {
    *v8 = *v3;
    v9 = *(_DWORD *)(a1 + 16);
    if ( a3 != v3 + 1 )
    {
      memcpy((void *)(v9 + 1), v3 + 1, a3 - (v3 + 1));
      v9 = *(_DWORD *)(a1 + 16);
    }
    *(_BYTE *)(v9 + v6) = 0;
    *(_DWORD *)(a1 + 16) += v6;
    return a1;
  }
  size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
           a1,
           v6);
  v12 = (char *)GlitchAlloc(size, 0);
  v13 = *(_BYTE **)(a1 + 20);
  v14 = *(_BYTE **)(a1 + 16);
  v15 = v12;
  if ( v13 != v14 )
    v12 = (char *)memcpy(v12, v13, v14 - v13) + v14 - v13;
  v16 = memcpy(v12, v3, v6);
  v16[v6] = 0;
  v17 = *(_DWORD *)(a1 + 20);
  v18 = &v16[v6];
  if ( a1 != v17 && v17 )
    GlitchFree(*(void **)(a1 + 20));
  *(_DWORD *)a1 = &v15[size];
  *(_DWORD *)(a1 + 16) = v18;
  *(_DWORD *)(a1 + 20) = v15;
  return a1;
}


// ===== 34e324 std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        _DWORD *a1,
        int a2,
        int a3)
{
  int v6; // r1

  v6 = *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20) + *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 20);
  a1[4] = a1;
  a1[5] = a1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v6 + 1);
  *(_BYTE *)a1[4] = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  return a1;
}


// ===== 34e394 std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(char const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        _DWORD *a1,
        char *a2,
        int a3)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r1
  size_t v9; // r7

  v6 = LC_API_STRLEN_0(a2);
  v7 = *(_DWORD *)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v6;
  a1[4] = a1;
  a1[5] = a1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v8 - v7 + 1 + v6);
  *(_BYTE *)a1[4] = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(
    (int)a1,
    a2,
    &a2[v9]);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  return a1;
}


// ===== 34e414 ToLowerCase(char *,int,int) =====
const char *__fastcall ToLowerCase(const char *result, const char *a2, const char *a3)
{
  const char *v3; // r4
  const char *v6; // r4
  int v7; // r3
  char v8; // r2

  v3 = result;
  if ( result )
  {
    result = (const char *)LC_API_STRLEN_0(result);
    if ( a3 == (const char *)-1 || (int)result <= (int)a3 )
      a3 = result - 1;
    if ( (int)a2 <= (int)a3 )
    {
      v6 = &a2[(_DWORD)v3];
      v7 = 0;
      do
      {
        v8 = v6[v7];
        if ( (unsigned __int8)(v8 - 65) <= 0x19u )
          v6[v7] = v8 + 32;
        ++v7;
      }
      while ( (int)a3 >= (int)&a2[v7] );
    }
  }
  return result;
}


// ===== 34e480 FileSystemBase::~FileSystemBase() =====
void __fastcall FileSystemBase::~FileSystemBase(FileSystemBase *this)
{
  *(_DWORD *)this = off_95CA88;
  glitch::io::CFileSystem::~CFileSystem(this);
}


// ===== 34e4b4 FileSystemBase::~FileSystemBase() =====
void __fastcall FileSystemBase::~FileSystemBase(FileSystemBase *this)
{
  FileSystemBase::~FileSystemBase(this);
  CustomFree(this);
}


// ===== 34e4d0 FileSystemBase::~FileSystemBase() =====
void __fastcall FileSystemBase::~FileSystemBase(FileSystemBase *this)
{
  *(_DWORD *)this = off_95CA88;
  glitch::io::CFileSystem::~CFileSystem(this);
}


// ===== 34e504 FileSystemBase::FileSystemBase(void) =====
void __fastcall FileSystemBase::FileSystemBase(FileSystemBase *this)
{
  glitch::io::CFileSystem::CFileSystem(this);
  *(_DWORD *)this = off_95CA88;
}


// ===== 34e538 FileSystemBase::FileSystemBase(void) =====
void __fastcall FileSystemBase::FileSystemBase(FileSystemBase *this)
{
  glitch::io::CFileSystem::CFileSystem(this);
  *(_DWORD *)this = off_95CA88;
}


// ===== 34e56c `global constructor keyed to'.._.._sources_Core_Irrlicht_FileSystemBase.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_FileSystemBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1EBC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1EB8 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 34e5f4 FileSystemBase::getAbsolutePath(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall FileSystemBase::getAbsolutePath(int a1, int a2)
{
  _BYTE v5[20]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]

  (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 184))(v5);
  glitch::io::CFileSystem::getAbsolutePath(a1, a2, v5);
  if ( p != v5 && p )
    GlitchFree(p);
  return a1;
}


// ===== 34e688 FileSystemBase::createAndOpenFile(char const*) =====
int __fastcall FileSystemBase::createAndOpenFile(FileSystemBase *this, const char *a2)
{
  char *v3; // r2
  char *v4; // r8
  const char *v5; // r0
  size_t v6; // r0
  char *v8; // [sp+0h] [bp-A4h]
  int v9; // [sp+4h] [bp-A0h]
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+Ch] [bp-98h] BYREF
  void *v11[5]; // [sp+24h] [bp-80h] BYREF
  void *p; // [sp+38h] [bp-6Ch]
  void *v13[5]; // [sp+3Ch] [bp-68h] BYREF
  void *v14; // [sp+50h] [bp-54h]
  char *v15[5]; // [sp+54h] [bp-50h] BYREF
  char *v16; // [sp+68h] [bp-3Ch]
  _DWORD v17[4]; // [sp+6Ch] [bp-38h] BYREF
  _BYTE *v18; // [sp+7Ch] [bp-28h]
  void *v19; // [sp+80h] [bp-24h]
  _BYTE v20[16]; // [sp+84h] [bp-20h] BYREF
  char *v21; // [sp+94h] [bp-10h]
  char *v22; // [sp+98h] [bp-Ch]

  (*(void (__fastcall **)(_BYTE *, FileSystemBase *, const char *))(*(_DWORD *)this + 184))(v20, this, a2);
  v18 = v17;
  v19 = v17;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v17,
    0x10u);
  *v18 = 0;
  if ( (unsigned int)(v21 - v22) > 8 )
    v3 = v22 + 8;
  else
    v3 = v21;
  v15[4] = (char *)v15;
  v16 = (char *)v15;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v15,
    v22,
    v3);
  v4 = v22;
  if ( LC_API_STRSTR_0(v22, ".config") || LC_API_STRSTR_0(v4, ".glsl") || !LC_API_STRCMP_0(v16, "/sdcard/") )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v17,
      v4,
      v21);
  }
  else
  {
    std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
      v13,
      (char *)RES_PATH,
      (int)v20);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v17,
      v14,
      (_BYTE *)v13[4]);
    if ( v14 != v13 && v14 )
      GlitchFree(v14);
  }
  v11[4] = v11;
  p = v11;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v11,
    v19,
    v18);
  if ( Application::IsUsingUncompiledData((Application *)&Singleton<Application>::s_inst, (const char *)p) )
  {
    v5 = (const char *)(*(int (__fastcall **)(FileSystemBase *))(*(_DWORD *)this + 44))(this);
    v10._M_finish = (char *)&v10;
    v10._M_start_of_storage._M_data = (char *)&v10;
    v8 = (char *)v5;
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_range_initialize((std::string *)&v10, v8, &v8[v6]);
    (*(void (__fastcall **)(FileSystemBase *, const char *))(*(_DWORD *)this + 48))(this, "Q:\\");
    v9 = glitch::io::CFileSystem::createAndOpenFile(this, (const char *)p);
    if ( v9 )
    {
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
      goto LABEL_12;
    }
    (*(void (__fastcall **)(FileSystemBase *, char *))(*(_DWORD *)this + 48))(this, v10._M_start_of_storage._M_data);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  }
  v9 = glitch::io::CFileSystem::createAndOpenFile(this, (const char *)p);
  if ( !v9 )
  {
    _DEBUG_OUT("Could not open file :  %s ", (const char *)p);
    glitch::os::Printer::log("Could not open file : ", p, 3);
  }
LABEL_12:
  if ( p != v11 && p )
    GlitchFree(p);
  if ( v16 != (char *)v15 && v16 )
    GlitchFree(v16);
  if ( v19 != v17 && v19 )
    GlitchFree(v19);
  if ( v22 != v20 && v22 )
    GlitchFree(v22);
  return v9;
}


// ===== 34e96c FileSystemBase::ApplyFilenameHacks(char const*) =====
void **__fastcall FileSystemBase::ApplyFilenameHacks(void **this, const char *a2, char *a3)
{
  int v5; // r3
  const char *v7; // r7
  size_t v8; // r9
  char *v9; // r0
  char *v10; // r7
  size_t v11; // r0
  size_t v13; // r0
  void *v14[5]; // [sp+4h] [bp-50h] BYREF
  void *v15; // [sp+18h] [bp-3Ch]
  void *v16[5]; // [sp+1Ch] [bp-38h] BYREF
  void *v17; // [sp+30h] [bp-24h]
  _BYTE v18[16]; // [sp+34h] [bp-20h] BYREF
  _BYTE *v19; // [sp+44h] [bp-10h]
  void *p; // [sp+48h] [bp-Ch]
  int v21; // [sp+4Ch] [bp-8h]

  v5 = _stack_chk_guard;
  *(this + 4) = this;
  *(this + 5) = this;
  v21 = v5;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  *(_BYTE *)*(this + 4) = 0;
  v7 = (const char *)(*(int (__fastcall **)(const char *))(*(_DWORD *)a2 + 44))(a2);
  v8 = LC_API_STRLEN_0(v7);
  v9 = LC_API_STRSTR_0(a3, v7);
  v10 = v9;
  if ( v9 )
  {
    v11 = LC_API_STRLEN_0(&v9[v8 + 1]);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      this,
      &v10[v8 + 1],
      &v10[v8 + 1 + v11]);
  }
  else
  {
    v13 = LC_API_STRLEN_0(a3);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      this,
      a3,
      &a3[v13]);
  }
  if ( LC_API_STRSTR_0((const char *)*(this + 5), ".tga") )
  {
    glitch::io::CFileSystem::getFileBasename(v18, a2, this, 1);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      this,
      "ata/3d/textures/",
      "");
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      this,
      p,
      v19);
    if ( p != v18 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
  ToLowerCase((int)this, 0, -1);
  if ( v10 )
  {
    v16[4] = v16;
    v17 = v16;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v16,
      a3,
      &v10[v8 + 1]);
    std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
      v14,
      (int)v16,
      (int)this);
    if ( this != v14 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        this,
        v15,
        (_BYTE *)v14[4]);
    if ( v15 != v14 && v15 )
      GlitchFree(v15);
    if ( v17 != v16 && v17 )
      GlitchFree(v17);
  }
  return this;
}


// ===== 34eb5c IFileStream::~IFileStream() =====
void __fastcall IFileStream::~IFileStream(IFileStream *this)
{
  ;
}


// ===== 34eb60 IFileStream::skip(ulong long) =====
int __fastcall IFileStream::skip(IFileStream *this, unsigned __int64 a2)
{
  int (__fastcall *v5)(IFileStream *, _DWORD, _DWORD, _DWORD); // r5
  __int64 v6; // r0

  v5 = *(int (__fastcall **)(IFileStream *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 32);
  v6 = ((__int64 (__fastcall *)(IFileStream *))*(_DWORD *)(*(_DWORD *)this + 36))(this);
  return v5(this, HIDWORD(v6), v6 + a2, (v6 + a2) >> 32);
}


// ===== 34eb94 FileSystemWin32::_FileHandle::canRead(void) =====
int __fastcall FileSystemWin32::_FileHandle::canRead(FileSystemWin32::_FileHandle *this)
{
  return *((unsigned __int8 *)this + 12);
}


// ===== 34eb9c FileSystemWin32::_FileHandle::canWrite(void) =====
int __fastcall FileSystemWin32::_FileHandle::canWrite(FileSystemWin32::_FileHandle *this)
{
  return *((unsigned __int8 *)this + 13);
}


// ===== 34eba4 FileSystemWin32::getRootPath(void) =====
char *__fastcall FileSystemWin32::getRootPath(FileSystemWin32 *this)
{
  return (char *)this + 44;
}


// ===== 34ebac FileSystemWin32::getResourcesPath(void) =====
char *__fastcall FileSystemWin32::getResourcesPath(FileSystemWin32 *this)
{
  return (char *)this + 564;
}


// ===== 34ebb4 FileSystemWin32::getSavefilesPath(void) =====
char *__fastcall FileSystemWin32::getSavefilesPath(FileSystemWin32 *this)
{
  return (char *)this + 1084;
}


// ===== 34ebc0 FileSystemWin32::copySavefile(char const*) =====
void __fastcall FileSystemWin32::copySavefile(FileSystemWin32 *this, const char *a2)
{
  ;
}


// ===== 34ebc4 FileSystemWin32::_getFileInfo(char const*,char const*,void *) =====
int __fastcall FileSystemWin32::_getFileInfo(FileSystemWin32 *this, const char *a2, const char *a3, void *a4)
{
  return 1;
}


// ===== 34ebcc FileSystemWin32::closeFile(IFileStream *&) =====
int __fastcall FileSystemWin32::closeFile(FileSystemWin32 *this, IFileStream **a2)
{
  int result; // r0

  if ( *a2 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 4))(*a2);
    *a2 = nullptr;
  }
  return result;
}


// ===== 34ebfc FileSystemWin32::getFolders(char const*,std::vector<std::string,std::allocator<std::string>> &) =====
void FileSystemWin32::getFolders()
{
  ;
}


// ===== 34ec00 FileSystemWin32::isFileNewerThan(char const*,char const*) =====
void __fastcall FileSystemWin32::isFileNewerThan(FileSystemWin32 *this, const char *a2, const char *a3)
{
  ;
}


// ===== 34ec04 std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(char const*,char const*,std::priv::_Eq_char_bound<std::char_traits<char>>,std::random_access_iterator_tag const&) =====
char *__fastcall std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(
        char *result,
        int a2,
        char *a3)
{
  int v3; // r4
  int v4; // r12
  char *v5; // r3
  int v6; // r4
  int v7; // r3

  v3 = a2 - (_DWORD)result;
  v4 = (a2 - (int)result) >> 2;
  v5 = result;
  if ( v4 <= 0 )
  {
LABEL_13:
    switch ( v3 )
    {
      case 2:
        v7 = *a3;
        break;
      case 3:
        v7 = *a3;
        if ( *result == v7 )
          return result;
        ++result;
        break;
      case 1:
        v7 = *a3;
LABEL_21:
        if ( *result != v7 )
          return (char *)a2;
        return result;
      default:
        return (char *)a2;
    }
    if ( *result == v7 )
      return result;
    ++result;
    goto LABEL_21;
  }
  v6 = *a3;
  if ( *result != v6 )
  {
    ++result;
    if ( v5[1] != v6 )
    {
      result = v5 + 2;
      if ( v5[2] != v6 )
      {
        result = v5 + 3;
        if ( v5[3] != v6 )
        {
          do
          {
            if ( !--v4 )
            {
              result = v5 + 4;
              v3 = a2 - (_DWORD)(v5 + 4);
              goto LABEL_13;
            }
            if ( v5[4] == v6 )
              return v5 + 4;
            if ( v5[5] == v6 )
              return v5 + 5;
            if ( v5[6] == v6 )
              return v5 + 6;
            v5 += 4;
          }
          while ( v5[3] != v6 );
          return v5 + 3;
        }
      }
    }
  }
  return result;
}


// ===== 34ed2c std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(char const*,char const*,char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>) =====
char *__fastcall std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
        char *result,
        char *a2,
        char *a3,
        char *a4)
{
  bool v4; // zf
  char *i; // r7
  char *v6; // r12
  char *j; // r4
  int v8; // r6
  int v9; // r2

  v4 = result == a2;
  if ( result != a2 )
    v4 = a3 == a4;
  if ( !v4 )
  {
    if ( a4 != a3 + 1 )
    {
      for ( i = result + 1; a2 != result; ++i )
      {
        if ( *(i - 1) == *a3 )
        {
          v6 = i;
          if ( a2 == i )
            return a2;
          for ( j = a3 + 2; ; ++j )
          {
            v8 = *v6++;
            if ( v8 != *(j - 1) )
              break;
            if ( j == a4 )
              return result;
            if ( v6 == a2 )
              return a2;
          }
        }
        ++result;
      }
      return a2;
    }
    v9 = *a3;
    if ( *result != v9 )
    {
      while ( ++result != a2 )
      {
        if ( *result == v9 )
          return result;
      }
      return a2;
    }
  }
  return result;
}


// ===== 34edf0 FileSystemWin32::_FileHandle::tell(void) =====
__int64 __fastcall FileSystemWin32::_FileHandle::tell(FILE **this)
{
  return ftell(*(this + 1));
}


// ===== 34ee10 FileSystemWin32::_FileHandle::seek(ulong long) =====
int __fastcall FileSystemWin32::_FileHandle::seek(FILE **this, unsigned __int64 a2)
{
  return fseek(*(this + 1), a2, 0);
}


// ===== 34ee20 FileSystemWin32::_FileHandle::size(void) =====
__int64 __fastcall FileSystemWin32::_FileHandle::size(FILE **this)
{
  int v2; // r6
  int v3; // r5

  v2 = ftell(*(this + 1));
  fseek(*(this + 1), 0, 2);
  v3 = ftell(*(this + 1));
  fseek(*(this + 1), v2, 0);
  return v3;
}


// ===== 34ee74 FileSystemWin32::_FileHandle::write(void const*,ulong long) =====
__int64 __fastcall FileSystemWin32::_FileHandle::write(FILE **this, const void *a2, unsigned __int64 a3)
{
  size_t v3; // r6

  v3 = a3;
  if ( ((int (__fastcall *)(FILE **))(*this)->_bf._base)(this) )
    return fwrite(a2, 1u, v3, *(this + 1));
  else
    return 0;
}


// ===== 34eec8 FileSystemWin32::_FileHandle::read(void *,ulong long) =====
__int64 __fastcall FileSystemWin32::_FileHandle::read(FILE **this, void *a2, unsigned __int64 a3)
{
  char *v5; // r8
  size_t v6; // r6
  int v8; // r10
  void *savedregs; // [sp+0h] [bp+0h]

  v5 = (char *)a3;
  if ( (*(int (__fastcall **)(FILE **))&(*this)->_flags)(this) )
  {
    v8 = ftell(*(this + 1));
    v6 = fread(a2, 1u, (size_t)v5, *(this + 1));
    if ( LOBYTE((*(this + 2))->_read) && v8 <= 3 )
      FileSystemBase::decodeObfuscatedData(v8, (int)a2, v5, (int)*(this + 1), savedregs);
  }
  else
  {
    return 0;
  }
  return v6;
}


// ===== 34ef58 FileSystemWin32::_FileHandle::peek(void *,ulong long) =====
__int64 __fastcall FileSystemWin32::_FileHandle::peek(FILE **this, void *a2, unsigned __int64 a3)
{
  char *v3; // r5
  int v7; // r8
  signed int v8; // r7
  void *savedregs; // [sp+0h] [bp+0h]

  v3 = (char *)a3;
  if ( !(*(int (__fastcall **)(FILE **))&(*this)->_flags)(this) )
    return 0;
  v7 = ftell(*(this + 1));
  v8 = fread(a2, 1u, (size_t)v3, *(this + 1));
  if ( LOBYTE((*(this + 2))->_read) )
  {
    if ( v7 <= 3 )
      FileSystemBase::decodeObfuscatedData(v7, (int)a2, v3, (int)*(this + 1), savedregs);
  }
  fseek(*(this + 1), -v8, 1);
  return v8;
}


// ===== 34f004 IFileStream::~IFileStream() =====
void __fastcall IFileStream::~IFileStream(IFileStream *this)
{
  *(_DWORD *)this = off_95B020;
  CustomFree(this);
}


// ===== 34f038 glitch::ISharedObject<glitch::io::CFile>::drop(void) =====
void __fastcall glitch::ISharedObject<glitch::io::CFile>::drop(glitch::io::CFile *a1)
{
  if ( (*(_DWORD *)a1)-- == 1 )
  {
    glitch::io::CFile::~CFile(a1);
    CustomFree(a1);
  }
}


// ===== 34f068 FileSystemWin32::_getPaths(void) =====
char *__fastcall FileSystemWin32::_getPaths(FileSystemWin32 *this)
{
  char s[256]; // [sp+4h] [bp-108h] BYREF

  LC_API_STRCPY_0((char *)this + 44, (const char *)RES_PATH);
  LC_API_STRCPY_0((char *)this + 304, (const char *)RES_PATH);
  sprintf(s, "%sdata/", (const char *)RES_PATH);
  LC_API_STRCPY_0((char *)this + 824, s);
  return LC_API_STRCPY_0((char *)this + 1084, (const char *)RES_PATH);
}


// ===== 34f10c FileSystemWin32::backupSavefile(char const*,char const*) =====
int __fastcall FileSystemWin32::backupSavefile(FileSystemWin32 *this, const char *a2, const char *a3)
{
  const char *v3; // r7
  char v6[260]; // [sp+Ch] [bp-23Ch] BYREF
  char s[260]; // [sp+110h] [bp-138h] BYREF
  std::string v8; // [sp+214h] [bp-34h] BYREF
  std::string v9; // [sp+22Ch] [bp-1Ch] BYREF

  v3 = (const char *)RES_PATH;
  sprintf(s, "%s%s", (const char *)RES_PATH, a2);
  sprintf(v6, "%s%s", v3, a3);
  if ( !unlink(v6) || *(_DWORD *)_errno() == 2 )
  {
    if ( rename(s, v6) )
    {
      _errno();
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v8, "isTracingFileSystem");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
      std::string::~string(&v8);
      return 0;
    }
    else
    {
      return 1;
    }
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v9, "isTracingFileSystem");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
    std::string::~string(&v9);
    return 0;
  }
}


// ===== 34f274 FileSystemWin32::deleteSavefile(char const*) =====
int __fastcall FileSystemWin32::deleteSavefile(FileSystemWin32 *this, const char *a2)
{
  char s[260]; // [sp+8h] [bp-124h] BYREF
  std::string v4; // [sp+10Ch] [bp-20h] BYREF

  sprintf(s, "%s%s", (const char *)RES_PATH, a2);
  if ( !unlink(s) )
    return 1;
  _errno();
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v4, "isTracingFileSystem");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v4);
  std::string::~string(&v4);
  return 0;
}


// ===== 34f34c FileSystemWin32::makeFullPath(char const*,char const*,char *,int) =====
void *__fastcall FileSystemWin32::makeFullPath(FileSystemWin32 *this, const char *a2, char *a3, size_t a4, int a5)
{
  return LC_API_MEMSET_0(a3, 0, a4);
}


// ===== 34f35c FileSystemWin32::makeFullPath(wchar_t const*,wchar_t const*,wchar_t *,int) =====
wchar_t *__fastcall FileSystemWin32::makeFullPath(
        const wchar_t *this,
        const wchar_t *a2,
        wchar_t *a3,
        wchar_t *a4,
        int a5)
{
  wchar_t *v8; // r0
  const wchar_t *v9; // r1

  LC_API_MEMSET_0(a3, 0, 4 * (_DWORD)a4);
  if ( !wcsncmp(a2, (const wchar_t *)"#", 1u) )
  {
    v8 = a3;
    v9 = a2 + 1;
  }
  else
  {
    wcscat(a3, this);
    v8 = a3;
    v9 = a2;
  }
  return wcscat(v8, v9);
}


// ===== 34f3c8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(char *,char const*,char const*,bool) =====
void __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        char *a2,
        char *a3,
        char *a4,
        char a5)
{
  _DWORD *v8; // r2
  signed int v9; // r6
  bool v10; // zf
  int v11; // r0
  int v12; // r2
  bool v13; // cc
  int v14; // r1
  int v15; // r9
  int n; // r1
  char v17; // r12
  size_t v18; // r2
  size_t v19; // r2
  char *v20; // r1
  char *v21; // r0
  size_t size; // r7
  char *v23; // r0
  int v24; // r1
  char *v25; // r9
  char *v26; // r10
  char *v27; // r10
  int i; // r3
  int v29; // r1
  int j; // r3
  _DWORD *v31; // r0
  char *v32; // r12
  int v33; // r3
  int v34; // r10
  int k; // r1
  char v36; // r9
  int v37; // r10
  int v38; // r1
  int m; // r3
  size_t v40; // r2
  char *v41; // [sp+4h] [bp-8h]

  if ( a3 != a4 )
  {
    v8 = (_DWORD *)a1[5];
    v9 = a4 - a3;
    v10 = v8 == a1;
    if ( v8 != a1 )
      v8 = (_DWORD *)*a1;
    v11 = a1[4];
    if ( v10 )
      v8 = a1 + 4;
    if ( v9 >= (unsigned int)v8 - v11 )
    {
      size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               (int)a1,
               a4 - a3);
      v23 = (char *)GlitchAlloc(size, 0);
      v24 = a1[5];
      v25 = v23;
      if ( (int)&a2[-v24] > 0 )
      {
        v27 = nullptr;
        do
        {
          v27[(_DWORD)v23] = v27[v24];
          ++v27;
        }
        while ( v27 != &a2[-v24] );
        v26 = &v27[(_DWORD)v23];
      }
      else
      {
        v26 = v23;
      }
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
          v26[i] = a3[i];
        v26 += v9;
      }
      v29 = a1[4] - (_DWORD)a2;
      if ( v29 > 0 )
      {
        for ( j = 0; j != v29; ++j )
          v26[j] = a2[j];
        v26 += j;
      }
      *v26 = 0;
      v31 = (_DWORD *)a1[5];
      if ( a1 != v31 && v31 )
        GlitchFree(v31);
      a1[5] = v25;
      *a1 = &v25[size];
      a1[4] = v26;
    }
    else
    {
      v12 = v11 - (_DWORD)a2;
      v13 = v9 > (unsigned int)(v11 - (_DWORD)a2);
      v14 = v11;
      if ( v13 )
      {
        v32 = &a3[v12 + 1];
        v33 = a4 - v32;
        v34 = v11 + 1;
        if ( v33 > 0 )
        {
          for ( k = 0; k != v33; ++k )
          {
            v36 = v32[k];
            *(_BYTE *)++v11 = v36;
          }
          v14 = a1[4];
        }
        v37 = v34 - (_DWORD)a2;
        v38 = v14 + v9 - v12;
        a1[4] = v38;
        if ( v37 > 0 )
        {
          for ( m = 0; m != v37; ++m )
            *(_BYTE *)(v38 + m) = a2[m];
          v38 = a1[4];
        }
        a1[4] = v38 + v12;
        if ( a5 )
        {
          v40 = v12 + 1;
          if ( v32 != a3 )
            memmove(a2, a3, v40);
        }
        else
        {
          v19 = v12 + 1;
          if ( v32 != a3 )
          {
            v21 = a2;
            v20 = a3;
            goto LABEL_19;
          }
        }
      }
      else
      {
        v15 = v11 + 1 - v9;
        if ( v9 > 0 )
        {
          for ( n = 0; n != v9; ++n )
          {
            v17 = *(_BYTE *)(v15 + n);
            *(_BYTE *)++v11 = v17;
          }
          v14 = a1[4];
        }
        v18 = 1 - v9 + v12;
        a1[4] = v14 + v9;
        if ( v18 )
        {
          v41 = a4;
          memmove(&a2[v9], a2, v18);
          a4 = v41;
        }
        if ( a5 && a4 >= a2 )
        {
          if ( a3 < a2 )
          {
            if ( v9 )
              memmove(a2, a3, v9);
          }
          else
          {
            v19 = a4 - a3;
            v20 = &a3[v9];
            if ( a4 != a3 )
            {
              v21 = a2;
LABEL_19:
              memcpy(v21, v20, v19);
            }
          }
        }
        else if ( v9 )
        {
          memcpy(a2, a3, v9);
        }
      }
    }
  }
}


// ===== 34f670 FileSystemWin32::~FileSystemWin32() =====
void __fastcall FileSystemWin32::~FileSystemWin32(FileSystemWin32 *this)
{
  *(_DWORD *)this = off_95CB90;
  FileSystemBase::~FileSystemBase(this);
}


// ===== 34f6a4 FileSystemWin32::~FileSystemWin32() =====
void __fastcall FileSystemWin32::~FileSystemWin32(FileSystemWin32 *this)
{
  FileSystemWin32::~FileSystemWin32(this);
  CustomFree(this);
}


// ===== 34f6c0 FileSystemWin32::~FileSystemWin32() =====
void __fastcall FileSystemWin32::~FileSystemWin32(FileSystemWin32 *this)
{
  *(_DWORD *)this = off_95CB90;
  FileSystemBase::~FileSystemBase(this);
}


// ===== 34f6f4 FileSystemWin32::FileSystemWin32(void) =====
void __fastcall FileSystemWin32::FileSystemWin32(FileSystemWin32 *this)
{
  FileSystemBase::FileSystemBase(this);
  *(_DWORD *)this = off_95CB90;
  LC_API_MEMSET_0((char *)this + 44, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 304, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 564, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 824, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 1084, 0, 0x104u);
  FileSystemWin32::_getPaths(this);
}


// ===== 34f788 FileSystemWin32::FileSystemWin32(void) =====
void __fastcall FileSystemWin32::FileSystemWin32(FileSystemWin32 *this)
{
  FileSystemBase::FileSystemBase(this);
  *(_DWORD *)this = off_95CB90;
  LC_API_MEMSET_0((char *)this + 44, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 304, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 564, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 824, 0, 0x104u);
  LC_API_MEMSET_0((char *)this + 1084, 0, 0x104u);
  FileSystemWin32::_getPaths(this);
}


// ===== 34f81c `global constructor keyed to'.._.._sources_Core_Irrlicht_FileSystemWin32.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_FileSystemWin32.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1EC8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1EC4 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 34f8a4 FileSystemWin32::formatFilePath(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall FileSystemWin32::formatFilePath(_DWORD *a1, int a2, int a3)
{
  int v4; // r1
  int v5; // r0
  unsigned int v6; // r7
  char *v8; // r0
  char *v9; // r2
  int v10; // r5
  char *v11; // r3
  char *v12; // r5
  _BOOL4 v13; // r8
  unsigned int v14; // r5
  char *v15; // r8
  char *v16; // r6
  _BOOL4 v17; // r9
  size_t v18; // r10
  char *v19; // r6
  int v20; // r3
  _BOOL4 v21; // r3
  char *v22; // r10
  char *v23; // [sp+8h] [bp-24h]
  char *v24; // [sp+8h] [bp-24h]
  char v25[4]; // [sp+24h] [bp-8h] BYREF

  a1[4] = a1;
  a1[5] = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  v4 = a1[4];
  v5 = a1[5];
  v6 = 0;
  while ( v6 < v4 - v5 )
  {
    v25[0] = 47;
    v8 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>((char *)(v5 + v6), v4, v25);
    v9 = (char *)a1[4];
    if ( v8 == v9 )
      break;
    v10 = a1[5];
    v11 = &v8[-v10];
    if ( &v8[-v10] == (char *)-1 )
      break;
    v12 = &v9[-v10];
    v6 = (unsigned int)(v11 + 1);
    if ( v11 > v12 )
    {
      v24 = v11;
      __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
      v11 = v24;
    }
    v13 = v12 != v11;
    if ( !(-2 - (_DWORD)v12 + v13) )
    {
      v23 = v11;
      __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
      v11 = v23;
    }
    v14 = a1[5];
    v15 = &v11[v13 + v14];
    v16 = &v11[v14];
    v17 = v14 <= (unsigned int)"\\" && a1[4] > (unsigned int)"\\";
    v18 = v15 - v16;
    if ( v15 - v16 <= 0 )
    {
      if ( !v17 )
        goto LABEL_27;
      v21 = v16 >= "";
      if ( v15 <= "\\" )
        v21 = 1;
      if ( v21 )
      {
LABEL_27:
        v22 = &asc_8C0780[v18];
        if ( v22 != "\\" )
          memcpy(v16, "\\", v22 - "\\");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          v15,
          v22,
          "",
          v17);
        v4 = a1[4];
        v5 = a1[5];
      }
      else if ( v16 > "\\" )
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          v15,
          &asc_8C0780[v18],
          "",
          1);
        v5 = a1[5];
        if ( v18 )
        {
          memmove(&v16[v5 - v14], &asc_8C0780[v5 - v14], v18);
          v4 = a1[4];
          v5 = a1[5];
        }
        else
        {
          v4 = a1[4];
        }
      }
      else
      {
        if ( v18 )
          memcpy(v16, "\\", v15 - v16);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          v15,
          &asc_8C0780[v18],
          "",
          1);
LABEL_26:
        v4 = a1[4];
        v5 = a1[5];
      }
    }
    else
    {
      v19 = v16 + 1;
      v11[v14] = 92;
      if ( v15 == v19 )
        goto LABEL_26;
      v20 = a1[4];
      if ( (char *)(v20 + 1) != v15 )
      {
        memmove(v19, v15, v20 + 1 - (_DWORD)v15);
        v20 = a1[4];
      }
      v4 = v20 + v19 - v15;
      a1[4] = v4;
      v5 = a1[5];
    }
  }
  return a1;
}


// ===== 34fb7c FileSystemWin32::_FileHandle::~_FileHandle() =====
void __fastcall FileSystemWin32::_FileHandle::~_FileHandle(FileSystemWin32::_FileHandle *this)
{
  glitch::io::CFile *v2; // r0

  v2 = *((glitch::io::CFile **)this + 2);
  *(_DWORD *)this = off_95CC58;
  if ( v2 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v2);
}


// ===== 34fbbc FileSystemWin32::_FileHandle::~_FileHandle() =====
void __fastcall FileSystemWin32::_FileHandle::~_FileHandle(FileSystemWin32::_FileHandle *this)
{
  FileSystemWin32::_FileHandle::~_FileHandle(this);
  CustomFree(this);
}


// ===== 34fbd8 FileSystemWin32::_FileHandle::~_FileHandle() =====
void __fastcall FileSystemWin32::_FileHandle::~_FileHandle(FileSystemWin32::_FileHandle *this)
{
  glitch::io::CFile *v2; // r0

  v2 = *((glitch::io::CFile **)this + 2);
  *(_DWORD *)this = off_95CC58;
  if ( v2 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v2);
}


// ===== 34fc18 FileSystemWin32::_FileHandle::_FileHandle(char const*,char const*,bool,bool) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::_FileHandle::_FileHandle(
        FileSystemWin32::_FileHandle *this,
        const char *a2,
        const char *a3,
        int a4,
        bool a5)
{
  int v5; // r12
  glitch::io::CFile *v9; // r3
  glitch::io::CFile *v10; // r0
  glitch::io::CFile *v11; // r0
  int v12; // r3
  bool v13; // zf
  FileSystemWin32::_FileHandle *result; // r0
  glitch::io::CFile *v15; // r3
  glitch::io::CFile *v16; // r0
  glitch::io::CFile *v17; // r3
  glitch::io::CFile *v18; // r0
  glitch::io::CFile *v19; // [sp+4h] [bp-114h] BYREF
  glitch::io::CFile *v20; // [sp+8h] [bp-110h] BYREF
  glitch::io::CFile *v21; // [sp+Ch] [bp-10Ch] BYREF
  char v22[260]; // [sp+10h] [bp-108h] BYREF
  int v23; // [sp+114h] [bp-4h]

  v5 = _stack_chk_guard;
  *(_DWORD *)this = off_95CC58;
  *((_DWORD *)this + 2) = 0;
  v23 = v5;
  LC_API_STRCPY_0(v22, a2);
  LC_API_STRCAT_0(v22, a3);
  if ( LC_API_STRSTR_0(a3, ".savegame") )
    sprintf(v22, "%s%s", (const char *)RES_PATH, a3);
  if ( byte_99F7D4 )
    ToLowerCase(v22, nullptr, (const char *)0xFFFFFFFF);
  if ( a4 )
  {
    if ( a5 )
    {
      glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v21, v22, "a+b");
      v9 = v21;
      if ( v21 )
        ++*(_DWORD *)v21;
      v10 = *((glitch::io::CFile **)this + 2);
      *((_DWORD *)this + 2) = v9;
      if ( v10 )
        glitch::ISharedObject<glitch::io::CFile>::drop(v10);
      v11 = v21;
      if ( !v21 )
        goto LABEL_13;
    }
    else
    {
      glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v20, v22, "w+b");
      v15 = v20;
      if ( v20 )
        ++*(_DWORD *)v20;
      v16 = *((glitch::io::CFile **)this + 2);
      *((_DWORD *)this + 2) = v15;
      if ( v16 )
        glitch::ISharedObject<glitch::io::CFile>::drop(v16);
      v11 = v20;
      if ( !v20 )
        goto LABEL_13;
    }
    glitch::ISharedObject<glitch::io::CFile>::drop(v11);
LABEL_13:
    *((_BYTE *)this + 13) = 1;
    *((_BYTE *)this + 12) = 1;
    goto LABEL_14;
  }
  glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v19, v22, "rb");
  v17 = v19;
  if ( v19 )
    ++*(_DWORD *)v19;
  v18 = *((glitch::io::CFile **)this + 2);
  *((_DWORD *)this + 2) = v17;
  if ( v18 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v18);
  if ( v19 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v19);
  *((_BYTE *)this + 12) = 1;
  *((_BYTE *)this + 13) = 0;
LABEL_14:
  v12 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 1) = 0;
  v13 = v12 == 0;
  if ( v12 )
    v12 = *(_DWORD *)(v12 + 4);
  result = this;
  if ( !v13 )
    *((_DWORD *)this + 1) = v12;
  return result;
}

