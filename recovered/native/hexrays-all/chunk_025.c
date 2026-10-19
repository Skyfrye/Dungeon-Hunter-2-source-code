// ===== 534dd0 glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&) =====
int __fastcall glitch::gui::IGUIElement::getElementFromPoint(int a1, int a2)
{
  int i; // r4
  int result; // r0

  if ( !*(_BYTE *)(a1 + 152) )
    return 0;
  for ( i = a1 + 4; *(_DWORD *)(a1 + 4) != i; i = *(_DWORD *)(i + 4) )
  {
    result = glitch::gui::IGUIElement::getElementFromPoint(*(_DWORD *)(*(_DWORD *)(i + 4) + 8), a2);
    if ( result )
      return result;
  }
  if ( *(_BYTE *)(a1 + 152) && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 16))(a1, a2) )
    return a1;
  else
    return 0;
}


// ===== 534e48 glitch::gui::IGUIElement::isPointInside(glitch::core::position2d<int> const&) =====
bool __fastcall glitch::gui::IGUIElement::isPointInside(_DWORD *a1, _DWORD *a2)
{
  int v2; // r2

  if ( a1[18] > *a2 )
    return 0;
  v2 = a2[1];
  return a1[19] <= v2 && *a2 <= a1[20] && v2 <= a1[21];
}


// ===== 534e90 glitch::gui::IGUIElement::remove(void) =====
int __fastcall glitch::gui::IGUIElement::remove(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 36);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v1 + 24))(*(_DWORD *)(this + 36), this);
  return this;
}


// ===== 534eb8 glitch::gui::IGUIElement::draw(void) =====
int __fastcall glitch::gui::IGUIElement::draw(int this)
{
  int *i; // r4
  int v2; // r5

  if ( *(_BYTE *)(this + 152) )
  {
    v2 = this + 4;
    for ( i = *(int **)(this + 4); (int *)v2 != i; i = (int *)*i )
      this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
  }
  return this;
}


// ===== 534ef8 glitch::gui::IGUIElement::OnPostRender(uint) =====
int __fastcall glitch::gui::IGUIElement::OnPostRender(int this, unsigned int a2)
{
  int *i; // r4
  int v4; // r5

  if ( *(_BYTE *)(this + 152) )
  {
    v4 = this + 4;
    for ( i = *(int **)(this + 4); (int *)v4 != i; i = (int *)*i )
      this = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)i[2] + 36))(i[2], a2);
  }
  return this;
}


// ===== 534f40 glitch::gui::IGUIElement::move(glitch::core::position2d<int>) =====
int __fastcall glitch::gui::IGUIElement::move(int a1, _DWORD *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  int v5; // r2
  int v7[5]; // [sp+0h] [bp-14h] BYREF

  v2 = a2[1];
  v3 = v2 + *(_DWORD *)(a1 + 92);
  v4 = v2 + *(_DWORD *)(a1 + 100);
  v5 = *a2 + *(_DWORD *)(a1 + 96);
  v7[0] = *a2 + *(_DWORD *)(a1 + 88);
  v7[1] = v3;
  v7[2] = v5;
  v7[3] = v4;
  return glitch::gui::IGUIElement::setRelativePosition((float *)a1, v7);
}


// ===== 534f90 glitch::gui::IGUIElement::isVisible(void) =====
int __fastcall glitch::gui::IGUIElement::isVisible(glitch::gui::IGUIElement *this)
{
  return *((unsigned __int8 *)this + 152);
}


// ===== 534f98 glitch::gui::IGUIElement::setVisible(bool) =====
int __fastcall glitch::gui::IGUIElement::setVisible(int this, bool a2)
{
  *(_BYTE *)(this + 152) = a2;
  return this;
}


// ===== 534fa0 glitch::gui::IGUIElement::isSubElement(void) =====
int __fastcall glitch::gui::IGUIElement::isSubElement(glitch::gui::IGUIElement *this)
{
  return *((unsigned __int8 *)this + 154);
}


// ===== 534fa8 glitch::gui::IGUIElement::setSubElement(bool) =====
int __fastcall glitch::gui::IGUIElement::setSubElement(int this, bool a2)
{
  *(_BYTE *)(this + 154) = a2;
  return this;
}


// ===== 534fb0 glitch::gui::IGUIElement::isEnabled(void) =====
int __fastcall glitch::gui::IGUIElement::isEnabled(glitch::gui::IGUIElement *this)
{
  return *((unsigned __int8 *)this + 153);
}


// ===== 534fb8 glitch::gui::IGUIElement::setEnabled(bool) =====
int __fastcall glitch::gui::IGUIElement::setEnabled(int this, bool a2)
{
  *(_BYTE *)(this + 153) = a2;
  return this;
}


// ===== 534fc0 glitch::gui::IGUIElement::getText(void) =====
int __fastcall glitch::gui::IGUIElement::getText(glitch::gui::IGUIElement *this)
{
  return *((_DWORD *)this + 57);
}


// ===== 534fc8 glitch::gui::IGUIElement::getToolTipText(void) =====
char *__fastcall glitch::gui::IGUIElement::getToolTipText(glitch::gui::IGUIElement *this)
{
  return (char *)this + 232;
}


// ===== 534fd0 glitch::gui::IGUIElement::getID(void) =====
int __fastcall glitch::gui::IGUIElement::getID(glitch::gui::IGUIElement *this)
{
  return *((_DWORD *)this + 76);
}


// ===== 534fd8 glitch::gui::IGUIElement::setID(int) =====
int __fastcall glitch::gui::IGUIElement::setID(int this, int a2)
{
  *(_DWORD *)(this + 304) = a2;
  return this;
}


// ===== 534fe0 glitch::gui::IGUIElement::getName(void) =====
int __fastcall glitch::gui::IGUIElement::getName(glitch::gui::IGUIElement *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 534fe8 glitch::gui::IGUIElement::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::IGUIElement::onEvent(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 36);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 8))(*(_DWORD *)(a1 + 36));
  else
    return 0;
}


// ===== 535014 glitch::gui::IGUIElement::getChildren(void) =====
char *__fastcall glitch::gui::IGUIElement::getChildren(glitch::gui::IGUIElement *this)
{
  return (char *)this + 4;
}


// ===== 53501c glitch::gui::IGUIElement::getElementFromId(int,bool) =====
int __fastcall glitch::gui::IGUIElement::getElementFromId(glitch::gui::IGUIElement *this, int a2, int a3)
{
  char *v3; // r4
  char *v4; // r6
  int result; // r0

  v4 = (char *)this + 4;
  v3 = *((char **)this + 1);
  if ( (char *)this + 4 == v3 )
    return 0;
  while ( (*(int (__fastcall **)(_DWORD *))(**((_DWORD **)v3 + 2) + 84))(*((_DWORD **)v3 + 2)) != a2 )
  {
    if ( a3 )
    {
      result = (*(int (__fastcall **)(_DWORD *, int, int))(**((_DWORD **)v3 + 2) + 108))(*((_DWORD **)v3 + 2), a2, 1);
      if ( result )
        return result;
      v3 = *(char **)v3;
    }
    else
    {
      v3 = *(char **)v3;
    }
    if ( v4 == v3 )
      return 0;
  }
  return *((_DWORD *)v3 + 2);
}


// ===== 5350a4 glitch::gui::IGUIElement::getTypeName(void) =====
char *__fastcall glitch::gui::IGUIElement::getTypeName(glitch::gui::IGUIElement *this)
{
  return glitch::gui::GUIElementTypeNames[*((_DWORD *)this + 85)];
}


// ===== 5350bc glitch::gui::IGUIElement::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::IGUIElement::serializeAttributes(_DWORD *a1, int a2)
{
  void (__fastcall *v4)(int, const char *, int, _DWORD); // r6
  int v5; // r0
  void (__fastcall *v6)(int, char *, int, _DWORD); // r6
  int v7; // r0
  int v8; // r0
  int v9; // r2
  int v10; // r3
  void (__fastcall *v11)(int, char *, _DWORD *, _DWORD); // r12
  int v12; // r3
  void (__fastcall *v13)(int, const char *, _DWORD *, _DWORD); // r12
  int v14; // r3
  void (__fastcall *v15)(int, const char *, _DWORD *, _DWORD); // r12
  _DWORD v17[4]; // [sp+8h] [bp-24h] BYREF
  _DWORD v18[2]; // [sp+18h] [bp-14h] BYREF
  _DWORD v19[3]; // [sp+20h] [bp-Ch] BYREF

  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Id", a1[76], 0);
  v4 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 124);
  v5 = (*(int (__fastcall **)(_DWORD *))(*a1 + 92))(a1);
  v4(a2, "Name", v5, 0);
  v6 = *(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 148);
  v7 = (*(int (__fastcall **)(_DWORD *))(*a1 + 72))(a1);
  v6(a2, "Caption", v7, 0);
  v8 = a1[22];
  v9 = a1[24];
  v10 = a1[25];
  v11 = *(void (__fastcall **)(int, char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 496);
  v17[1] = a1[23];
  v17[0] = v8;
  v17[2] = v9;
  v17[3] = v10;
  v11(a2, "Rect", v17, 0);
  v12 = a1[37];
  v13 = *(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 472);
  v19[0] = a1[36];
  v19[1] = v12;
  v13(a2, "MinSize", v19, 0);
  v14 = a1[35];
  v15 = *(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 472);
  v18[0] = a1[34];
  v18[1] = v14;
  v15(a2, "MaxSize", v18, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "NoClip",
    *((unsigned __int8 *)a1 + 155),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "IgnoreAllClipping",
    *((unsigned __int8 *)a1 + 156),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "LeftAlign",
    a1[80],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "RightAlign",
    a1[81],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "TopAlign",
    a1[82],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "BottomAlign",
    a1[83],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Visible",
    *((unsigned __int8 *)a1 + 152),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Enabled",
    *((unsigned __int8 *)a1 + 153),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "TabStop",
    *((unsigned __int8 *)a1 + 308),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "TabGroup",
    *((unsigned __int8 *)a1 + 316),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "TabOrder", a1[78], 0);
}


// ===== 5353b4 `virtual thunk to'glitch::gui::IGUIElement::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::IGUIElement::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::IGUIElement::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 5353c4 glitch::gui::IGUIEnvironment::~IGUIEnvironment() =====
void __fastcall glitch::gui::IGUIEnvironment::~IGUIEnvironment(glitch::gui::IGUIEnvironment *this)
{
  ;
}


// ===== 5353c8 glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::setFocus(glitch::gui::CGUIEnvironment *this, glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement *v2; // r4
  glitch::gui::IGUIElement *v4; // r5
  glitch::gui::IGUIElement *v5; // r7
  int v6; // r3
  _DWORD v8[6]; // [sp+0h] [bp-30h] BYREF
  _DWORD v9[6]; // [sp+18h] [bp-18h] BYREF

  v2 = *((glitch::gui::IGUIElement **)this + 108);
  v4 = a2;
  v5 = v2;
  if ( v2 == a2 )
    return 0;
  if ( a2 == (glitch::gui::CGUIEnvironment *)((char *)this + 8) )
  {
    v4 = nullptr;
  }
  else if ( a2 )
  {
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 16) + 4);
    v2 = *((glitch::gui::IGUIElement **)this + 108);
    v5 = v2;
  }
  if ( v2 )
  {
    ++*(_DWORD *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 16) + 4);
    v6 = *((_DWORD *)this + 108);
    v9[4] = 0;
    v9[0] = 0;
    v9[2] = v6;
    v9[3] = v4;
    if ( (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 8))(v6, v9) )
    {
      if ( v4 )
        glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v4 + *(_DWORD *)(*(_DWORD *)v4 - 16)));
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 16)));
      return 0;
    }
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 16)));
    v2 = *((glitch::gui::IGUIElement **)this + 108);
    v5 = v2;
  }
  if ( v4 )
  {
    if ( v2 )
    {
      ++*(_DWORD *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 16) + 4);
      v2 = *((glitch::gui::IGUIElement **)this + 108);
    }
    v8[3] = v2;
    v8[4] = 1;
    v8[0] = 0;
    v8[2] = v4;
    if ( (*(int (__fastcall **)(glitch::gui::IGUIElement *, _DWORD *))(*(_DWORD *)v4 + 8))(v4, v8) )
    {
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v4 + *(_DWORD *)(*(_DWORD *)v4 - 16)));
      if ( v5 )
      {
        glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
        return 0;
      }
      return 0;
    }
    if ( v5 )
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
    v5 = *((glitch::gui::IGUIElement **)this + 108);
  }
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
  *((_DWORD *)this + 108) = v4;
  return 1;
}


// ===== 535598 glitch::gui::CGUIEnvironment::getFocus(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getFocus(glitch::gui::CGUIEnvironment *this)
{
  return *((_DWORD *)this + 108);
}


// ===== 5355a0 glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::removeFocus(
        glitch::gui::CGUIEnvironment *this,
        glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement *v2; // r3
  _DWORD v5[7]; // [sp+0h] [bp-1Ch] BYREF

  v2 = *((glitch::gui::IGUIElement **)this + 108);
  if ( v2 )
  {
    if ( v2 != a2 )
    {
LABEL_3:
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 16)));
      *((_DWORD *)this + 108) = 0;
      return 1;
    }
    v5[0] = 0;
    v5[2] = v2;
    v5[3] = 0;
    v5[4] = 0;
    if ( (*(int (__fastcall **)(glitch::gui::IGUIElement *, _DWORD *))(*(_DWORD *)v2 + 8))(v2, v5) )
      return 0;
    v2 = *((glitch::gui::IGUIElement **)this + 108);
    if ( v2 )
      goto LABEL_3;
  }
  return 1;
}


// ===== 53562c glitch::gui::CGUIEnvironment::hasFocus(glitch::gui::IGUIElement *) =====
bool __fastcall glitch::gui::CGUIEnvironment::hasFocus(
        glitch::gui::CGUIEnvironment *this,
        glitch::gui::IGUIElement *a2)
{
  return *((_DWORD *)this + 108) == (_DWORD)a2;
}


// ===== 535640 glitch::gui::CGUIEnvironment::getVideoDriver(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getVideoDriver(glitch::gui::CGUIEnvironment *this)
{
  return *((_DWORD *)this + 106);
}


// ===== 535648 glitch::gui::CGUIEnvironment::getFileSystem(void) =====
char *__fastcall glitch::gui::CGUIEnvironment::getFileSystem(glitch::gui::CGUIEnvironment *this)
{
  return (char *)this + 448;
}


// ===== 535650 glitch::gui::CGUIEnvironment::getOSOperator(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getOSOperator(glitch::gui::CGUIEnvironment *this)
{
  return *((_DWORD *)this + 114);
}


// ===== 535658 glitch::gui::CGUIEnvironment::clear(void) =====
int __fastcall glitch::gui::CGUIEnvironment::clear(glitch::gui::CGUIEnvironment *this)
{
  _DWORD *v1; // r3
  glitch::gui::CGUIEnvironment *v3; // r3
  int v4; // r0
  int result; // r0
  _DWORD *i; // r4

  v1 = *((_DWORD **)this + 108);
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
    *((_DWORD *)this + 108) = 0;
  }
  v3 = *((glitch::gui::CGUIEnvironment **)this + 107);
  if ( v3 && v3 != (glitch::gui::CGUIEnvironment *)((char *)this + 8) )
  {
    glitch::IReferenceCounted::drop((glitch::gui::CGUIEnvironment *)((char *)v3 + *(_DWORD *)(*(_DWORD *)v3 - 16)));
    *((_DWORD *)this + 107) = 0;
  }
  v4 = (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *))(*(_DWORD *)this + 116))(this);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 104))(v4);
  for ( i = (_DWORD *)result;
        (_DWORD *)*i != i;
        result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(i[1] + 8) + 28))(*(_DWORD *)(i[1] + 8)) )
  {
    ;
  }
  return result;
}


// ===== 535708 `non-virtual thunk to'glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::onEvent(int a1)
{
  return glitch::gui::CGUIEnvironment::onEvent(a1 - 8);
}


// ===== 535710 glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIEnvironment::onEvent(int a1, int *a2)
{
  int v2; // r3
  int v3; // r2

  v2 = *(_DWORD *)(a1 + 452);
  if ( !v2 )
    return 0;
  v3 = *a2;
  if ( *a2 == 1 || v3 == 2 || !v3 && a2[2] == a1 + 8 )
    return 0;
  else
    return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 8))(v2);
}


// ===== 535768 glitch::gui::CGUIEnvironment::setUserEventReceiver(glitch::IEventReceiver *) =====
int __fastcall glitch::gui::CGUIEnvironment::setUserEventReceiver(int this, glitch::IEventReceiver *a2)
{
  *(_DWORD *)(this + 452) = a2;
  return this;
}


// ===== 535770 glitch::gui::CGUIEnvironment::getSkin(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getSkin(glitch::gui::CGUIEnvironment *this)
{
  return *((_DWORD *)this + 111);
}


// ===== 535778 glitch::gui::CGUIEnvironment::setSkin(glitch::gui::IGUISkin *) =====
int __fastcall glitch::gui::CGUIEnvironment::setSkin(int result, _DWORD *a2)
{
  _DWORD *v2; // r3
  int v3; // r4

  v2 = *(_DWORD **)(result + 444);
  v3 = result;
  if ( v2 != a2 )
  {
    if ( v2 )
      result = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *(_DWORD *)(v3 + 444) = a2;
    if ( a2 )
      ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*a2 - 12) + 4);
  }
  return result;
}


// ===== 5357d0 glitch::gui::CGUIEnvironment::getDefaultGUIElementFactory(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getDefaultGUIElementFactory(glitch::gui::CGUIEnvironment *this)
{
  return (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, _DWORD))(*(_DWORD *)this + 224))(this, 0);
}


// ===== 5357e8 glitch::gui::CGUIEnvironment::getRegisteredGUIElementFactoryCount(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getRegisteredGUIElementFactoryCount(glitch::gui::CGUIEnvironment *this)
{
  return (*((_DWORD *)this + 92) - *((_DWORD *)this + 91)) >> 2;
}


// ===== 5357fc glitch::gui::CGUIEnvironment::getGUIElementFactory(uint) =====
int __fastcall glitch::gui::CGUIEnvironment::getGUIElementFactory(glitch::gui::CGUIEnvironment *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 91);
  if ( a2 < (*((_DWORD *)this + 92) - v2) >> 2 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return 0;
}


// ===== 535818 glitch::gui::CGUIEnvironment::addGUIElement(char const*,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::addGUIElement(
        glitch::gui::CGUIEnvironment *this,
        const char *a2,
        glitch::gui::IGUIElement *a3)
{
  glitch::gui::IGUIElement *v3; // r6
  int v4; // r3
  int result; // r0
  unsigned int v8; // r5

  v3 = a3;
  if ( !a3 )
    v3 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  v4 = *((_DWORD *)this + 91);
  result = (*((_DWORD *)this + 92) - v4) >> 2;
  if ( result )
  {
    v8 = 0;
    do
    {
      result = (*(int (__fastcall **)(_DWORD, const char *, glitch::gui::IGUIElement *))(**(_DWORD **)(v4 + 4 * v8) + 16))(
                 *(_DWORD *)(v4 + 4 * v8),
                 a2,
                 v3);
      v4 = *((_DWORD *)this + 91);
      ++v8;
    }
    while ( v8 < (*((_DWORD *)this + 92) - v4) >> 2 && !result );
  }
  return result;
}


// ===== 535884 glitch::gui::CGUIEnvironment::saveGUI(char const*,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::saveGUI(
        glitch::gui::CGUIEnvironment *this,
        const char *a2,
        glitch::gui::IGUIElement *a3)
{
  glitch::IReferenceCounted *v5; // r5
  int v6; // r4

  v5 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**((_DWORD **)this + 112) + 20))(
                                      *((_DWORD *)this + 112),
                                      a2,
                                      0);
  if ( !v5 )
    return 0;
  v6 = (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, glitch::IReferenceCounted *, glitch::gui::IGUIElement *))(*(_DWORD *)this + 236))(
         this,
         v5,
         a3);
  glitch::IReferenceCounted::drop(v5);
  return v6;
}


// ===== 5358e0 glitch::gui::CGUIEnvironment::saveGUI(glitch::io::IWriteFile *,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::saveGUI(_DWORD **a1, int a2, _DWORD **a3)
{
  int v5; // r0
  glitch::IReferenceCounted *v6; // r5

  if ( !a2 )
    return 0;
  v5 = (*(int (__fastcall **)(_DWORD *))(*a1[112] + 96))(a1[112]);
  v6 = (glitch::IReferenceCounted *)v5;
  if ( !v5 )
    return 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
  if ( !a3 )
    a3 = a1 + 2;
  ((void (__fastcall *)(_DWORD **, glitch::IReferenceCounted *, _DWORD **))(*a1)[64])(a1, v6, a3);
  glitch::IReferenceCounted::drop(v6);
  return 1;
}


// ===== 535954 `non-virtual thunk to'glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::serializeAttributes(int a1)
{
  return glitch::gui::CGUIEnvironment::serializeAttributes(a1 - 8);
}


// ===== 53595c glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIEnvironment::serializeAttributes(int a1, int a2, int a3)
{
  int result; // r0
  _DWORD *v7; // r4
  int v8; // r0
  int v9; // r0

  result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 56))(a1);
  v7 = (_DWORD *)result;
  if ( result )
  {
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 56))(a1);
    v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 104))(v8);
    (*(void (__fastcall **)(int, const char *, int, char **, _DWORD))(*(_DWORD *)a2 + 244))(
      a2,
      "Skin",
      v9,
      glitch::gui::GUISkinTypeNames,
      0);
    return (**(int (__fastcall ***)(int, int, int))((char *)v7 + *(_DWORD *)(*v7 - 28)))(
             (int)v7 + *(_DWORD *)(*v7 - 28),
             a2,
             a3);
  }
  return result;
}


// ===== 535a00 `non-virtual thunk to'glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::deserializeAttributes(int a1)
{
  return glitch::gui::CGUIEnvironment::deserializeAttributes(a1 - 8);
}


// ===== 535a08 glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::deserializeAttributes(_DWORD *a1, int a2, int a3)
{
  _DWORD *result; // r0
  int v7; // r1
  _DWORD *v8; // r3
  int v9; // r2
  int v10; // r3
  int v11; // r8
  int v12; // r5
  _DWORD *v13; // r5

  result = (_DWORD *)(*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 36))(a2, "Skin");
  if ( result )
  {
    v11 = (*(int (__fastcall **)(_DWORD *))(*a1 + 56))(a1);
    v12 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
            a2,
            "Skin",
            glitch::gui::GUISkinTypeNames);
    if ( !v11 || (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 104))(v11) != v12 )
    {
      v13 = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*a1 + 64))(a1, v12);
      (*(void (__fastcall **)(_DWORD *, _DWORD *))(*a1 + 60))(a1, v13);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v13 + *(_DWORD *)(*v13 - 12)));
    }
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*a1 + 56))(a1);
    v8 = result;
    if ( result )
      result = (_DWORD *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)((char *)result + *(_DWORD *)(*result - 28))
                                                              + 4))(
                           (int)result + *(_DWORD *)(*result - 28),
                           a2,
                           a3);
  }
  v9 = a1[106];
  if ( v9 )
    v8 = *(_DWORD **)(v9 + 204);
  else
    v7 = 0;
  if ( v9 )
  {
    v10 = *(v8 - 1);
    v9 = *(_DWORD *)(v10 + 12);
    v7 = *(_DWORD *)(v10 + 16);
  }
  a1[13] = 0;
  a1[15] = v7;
  a1[14] = v9;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = v9;
  a1[19] = v7;
  a1[12] = 0;
  return result;
}


// ===== 535b58 glitch::gui::CGUIEnvironment::getElementById(int,glitch::gui::IGUIElement *) =====
glitch::gui::IGUIElement *__fastcall glitch::gui::CGUIEnvironment::getElementById(
        glitch::gui::CGUIEnvironment *this,
        int a2,
        glitch::gui::IGUIElement *a3)
{
  glitch::gui::IGUIElement *v3; // r4
  _DWORD *v7; // r7
  _DWORD *i; // r4
  int v9; // r0

  v3 = a3;
  if ( !a3 )
    v3 = (glitch::gui::IGUIElement *)(*(int (__fastcall **)(glitch::gui::CGUIEnvironment *))(*(_DWORD *)this + 116))(this);
  if ( (*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)v3 + 84))(v3) != a2 )
  {
    v7 = (_DWORD *)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)v3 + 104))(v3);
    for ( i = (_DWORD *)*v7; ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v9 = (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, int, _DWORD))(*(_DWORD *)this + 68))(this, a2, i[2]);
      if ( v9 )
        break;
    }
    return (glitch::gui::IGUIElement *)v9;
  }
  return v3;
}


// ===== 535bf8 glitch::gui::CGUIEnvironment::getBuiltInFont(void) =====
int __fastcall glitch::gui::CGUIEnvironment::getBuiltInFont(glitch::gui::CGUIEnvironment *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 94);
  if ( v1 == *((_DWORD *)this + 95) )
    return 0;
  else
    return *(_DWORD *)(v1 + 24);
}


// ===== 535c10 glitch::gui::CGUIEnvironment::getRootGUIElement(void) =====
char *__fastcall glitch::gui::CGUIEnvironment::getRootGUIElement(glitch::gui::CGUIEnvironment *this)
{
  return (char *)this + 8;
}


// ===== 535c18 glitch::core::rect<int>::constrainTo(glitch::core::rect<int> const&) =====
int __fastcall glitch::core::rect<int>::constrainTo(int *a1, int *a2)
{
  int v2; // r4
  int v3; // r12
  int v4; // r3
  int v6; // r6
  int v7; // r5
  int v8; // r2
  int v9; // r4
  int v10; // r6
  int v11; // r12
  int v12; // r4
  int v13; // r3
  int v14; // r1

  v2 = a2[2];
  v3 = a1[2];
  v4 = *a1;
  if ( v2 - *a2 < v3 - *a1 )
    return 0;
  v6 = a2[3];
  v7 = a1[3];
  v8 = a1[1];
  if ( v6 - a2[1] < v7 - v8 )
    return 0;
  v9 = v2 - v3;
  if ( v9 < 0 )
  {
    v4 += v9;
    a1[2] = v9 + v3;
    *a1 = v4;
    v6 = a2[3];
  }
  v10 = v6 - v7;
  if ( v10 < 0 )
  {
    v8 += v10;
    a1[3] = v10 + v7;
    a1[1] = v8;
  }
  v11 = v4 - *a2;
  if ( v11 < 0 )
  {
    v12 = a1[2];
    *a1 = *a2;
    a1[2] = v12 - v11;
  }
  v13 = v8 - a2[1];
  if ( v13 < 0 )
  {
    v14 = a1[3];
    a1[1] = v8 - v13;
    a1[3] = v14 - v13;
  }
  return 1;
}


// ===== 535cdc `global constructor keyed to'.._source_glitch_gui_CGUIEnvironment.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIEnvironment.cpp()
{
  dword_9F65E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F65DC = 1056964608;
}


// ===== 535cfc glitch::gui::IGUIEnvironment::~IGUIEnvironment() =====
void __fastcall glitch::gui::IGUIEnvironment::~IGUIEnvironment(glitch::gui::IGUIEnvironment *this)
{
  LC_API_FREE_0(this);
}


// ===== 535d10 glitch::gui::IGUIElement::removeChild(glitch::gui::IGUIElement*) =====
void __fastcall glitch::gui::IGUIElement::removeChild(glitch::gui::IGUIElement *this, glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement **v2; // r0
  glitch::gui::IGUIElement **i; // r4
  glitch::gui::IGUIElement **v4; // t1
  glitch::gui::IGUIElement *v5; // r3
  glitch::gui::IGUIElement **v6; // r2

  v4 = *((glitch::gui::IGUIElement ***)this + 1);
  v2 = (glitch::gui::IGUIElement **)((char *)this + 4);
  for ( i = v4; v2 != i; i = (glitch::gui::IGUIElement **)*i )
  {
    if ( i[2] == a2 )
    {
      *((_DWORD *)a2 + 9) = 0;
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)i[2] + *(_DWORD *)(*(_DWORD *)i[2] - 16)));
      v5 = *i;
      v6 = (glitch::gui::IGUIElement **)i[1];
      *v6 = *i;
      *((_DWORD *)v5 + 1) = v6;
      GlitchFree(i);
      return;
    }
  }
}


// ===== 535d70 glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement*) =====
int __fastcall glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement *this, glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement **i; // r0
  glitch::gui::IGUIElement **v5; // r4
  glitch::gui::IGUIElement *v7; // r3
  glitch::gui::IGUIElement **v8; // r2
  _DWORD *v9; // r0
  _DWORD *v10; // r2
  _DWORD *v11; // r3

  v5 = (glitch::gui::IGUIElement **)((char *)this + 4);
  for ( i = *((glitch::gui::IGUIElement ***)this + 1); ; i = (glitch::gui::IGUIElement **)*i )
  {
    if ( v5 == i )
      return 0;
    if ( i[2] == a2 )
      break;
  }
  v7 = *i;
  v8 = (glitch::gui::IGUIElement **)i[1];
  *v8 = *i;
  *((_DWORD *)v7 + 1) = v8;
  GlitchFree(i);
  v9 = GlitchAlloc(0xCu, 0);
  v9[2] = a2;
  v10 = *((_DWORD **)this + 2);
  v11 = v9;
  *v9 = v5;
  v9[1] = v10;
  *v10 = v11;
  *((_DWORD *)this + 2) = v11;
  return 1;
}


// ===== 535dec glitch::gui::IGUIElement::addChild(glitch::gui::IGUIElement*) =====
_DWORD *__fastcall glitch::gui::IGUIElement::addChild(_DWORD *this, glitch::gui::IGUIElement *a2)
{
  _DWORD *v3; // r5
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // r3

  v3 = this;
  if ( a2 )
  {
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 16) + 4);
    (*(void (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a2 + 28))(a2);
    v4 = v3[15];
    v5 = v3[16];
    v6 = v3[17];
    *((_DWORD *)a2 + 26) = v3[14];
    *((_DWORD *)a2 + 27) = v4;
    *((_DWORD *)a2 + 28) = v5;
    *((_DWORD *)a2 + 29) = v6;
    *((_DWORD *)a2 + 9) = v3;
    this = GlitchAlloc(0xCu, 0);
    *(this + 2) = a2;
    v7 = (_DWORD *)v3[2];
    *this = v3 + 1;
    *(this + 1) = v7;
    *v7 = this;
    v3[2] = this;
  }
  return this;
}


// ===== 535e68 std::priv::__copy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r1
  int v4; // r8
  int v5; // r4
  _DWORD *v6; // r7
  int v7; // r6
  _DWORD *v8; // r5
  int v9; // r3

  v3 = a2 - a1;
  v4 = v3 >> 5;
  v5 = a1;
  v6 = a3;
  if ( v3 >> 5 > 0 )
  {
    v7 = v3 >> 5;
    v8 = a3;
    do
    {
      if ( v8 != (_DWORD *)v5 )
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v8,
          *(_BYTE **)(v5 + 20),
          *(_BYTE **)(v5 + 16));
      --v7;
      v8[6] = *(_DWORD *)(v5 + 24);
      v9 = *(_DWORD *)(v5 + 28);
      v5 += 32;
      v8[7] = v9;
      v8 += 8;
    }
    while ( v7 );
    v6 += 8 * v4;
  }
  return v6;
}


// ===== 535ed0 std::priv::__copy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r4
  _DWORD *v5; // r7
  int v6; // r8
  _DWORD *v7; // r5
  int v8; // r6
  int v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v5 = a3;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 > 0 )
  {
    v7 = a3;
    v8 = -1227133513 * v3;
    do
    {
      if ( v7 != (_DWORD *)v4 )
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v7,
          *(_BYTE **)(v4 + 20),
          *(_BYTE **)(v4 + 16));
      v9 = *(_DWORD *)(v4 + 24);
      --v8;
      v4 += 28;
      v7[6] = v9;
      v7 += 7;
    }
    while ( v8 );
    v5 += 7 * v6;
  }
  return v5;
}


// ===== 535f4c std::priv::__ufill<glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank,int>(glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank,int>(
        _BYTE *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *i; // r4

  v4 = -1227133513 * ((a2 - (int)result) >> 2);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 7 )
    {
      i[4] = i;
      i[5] = i;
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 20),
                 *(_BYTE **)(a3 + 16));
      --v4;
      i[6] = *(_DWORD *)(a3 + 24);
      if ( !v4 )
        break;
    }
  }
  return result;
}


// ===== 535fb4 std::priv::__ucopy<glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,int>(glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4
  int v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 <= 0 )
    return a3;
  v7 = -1227133513 * v3;
  v8 = a3;
  do
  {
    v8[4] = v8;
    v8[5] = v8;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8,
      *(_BYTE **)(v4 + 20),
      *(_BYTE **)(v4 + 16));
    v9 = *(_DWORD *)(v4 + 24);
    --v7;
    v4 += 28;
    v8[6] = v9;
    v8 += 7;
  }
  while ( v7 );
  return &a3[7 * v6];
}


// ===== 536034 std::priv::__ufill<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace,int>(glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace,int>(
        _BYTE *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *i; // r4

  v4 = -1227133513 * ((a2 - (int)result) >> 2);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 7 )
    {
      i[4] = i;
      i[5] = i;
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 20),
                 *(_BYTE **)(a3 + 16));
      --v4;
      i[6] = *(_DWORD *)(a3 + 24);
      if ( !v4 )
        break;
    }
  }
  return result;
}


// ===== 53609c std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4
  int v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 <= 0 )
    return a3;
  v7 = -1227133513 * v3;
  v8 = a3;
  do
  {
    v8[4] = v8;
    v8[5] = v8;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8,
      *(_BYTE **)(v4 + 20),
      *(_BYTE **)(v4 + 16));
    v9 = *(_DWORD *)(v4 + 24);
    --v7;
    v4 += 28;
    v8[6] = v9;
    v8 += 7;
  }
  while ( v7 );
  return &a3[7 * v6];
}


// ===== 53611c std::priv::__ufill<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont,int>(glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont,int>(
        _BYTE *result,
        int a2,
        int a3)
{
  int v3; // r6
  _DWORD *i; // r4

  v3 = (a2 - (int)result) >> 5;
  if ( v3 > 0 )
  {
    for ( i = result; ; i += 8 )
    {
      i[4] = i;
      i[5] = i;
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 20),
                 *(_BYTE **)(a3 + 16));
      --v3;
      i[6] = *(_DWORD *)(a3 + 24);
      i[7] = *(_DWORD *)(a3 + 28);
      if ( !v3 )
        break;
    }
  }
  return result;
}


// ===== 536174 std::priv::__ucopy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r1
  int v4; // r7
  int v5; // r5
  int v7; // r6
  _DWORD *v8; // r4
  int v9; // r3

  v3 = a2 - a1;
  v4 = v3 >> 5;
  v5 = a1;
  if ( v3 >> 5 <= 0 )
    return a3;
  v7 = v3 >> 5;
  v8 = a3;
  do
  {
    v8[4] = v8;
    v8[5] = v8;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8,
      *(_BYTE **)(v5 + 20),
      *(_BYTE **)(v5 + 16));
    --v7;
    v8[6] = *(_DWORD *)(v5 + 24);
    v9 = *(_DWORD *)(v5 + 28);
    v5 += 32;
    v8[7] = v9;
    v8 += 8;
  }
  while ( v7 );
  return &a3[8 * v4];
}


// ===== 5361e0 std::priv::__ufill<glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont,int>(glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont,int>(
        _BYTE *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *i; // r4

  v4 = -1227133513 * ((a2 - (int)result) >> 2);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 7 )
    {
      i[4] = i;
      i[5] = i;
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 20),
                 *(_BYTE **)(a3 + 16));
      --v4;
      i[6] = *(_DWORD *)(a3 + 24);
      if ( !v4 )
        break;
    }
  }
  return result;
}


// ===== 536248 std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,int>(glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4
  int v9; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 <= 0 )
    return a3;
  v7 = -1227133513 * v3;
  v8 = a3;
  do
  {
    v8[4] = v8;
    v8[5] = v8;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8,
      *(_BYTE **)(v4 + 20),
      *(_BYTE **)(v4 + 16));
    v9 = *(_DWORD *)(v4 + 24);
    --v7;
    v4 += 28;
    v8[6] = v9;
    v8 += 7;
  }
  while ( v7 );
  return &a3[7 * v6];
}


// ===== 5362c8 glitch::gui::IGUIElement::setText(wchar_t const*) =====
int __fastcall glitch::gui::IGUIElement::setText(glitch::gui::IGUIElement *this, const wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (int)this + 160,
           s,
           &s[v4]);
}


// ===== 5362f0 std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
unsigned int __fastcall std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        int a1,
        int a2)
{
  int v2; // r5
  int v3; // r4
  const void *v4; // r0
  const void *v5; // r1
  signed int v6; // r5
  signed int v7; // r4
  size_t v8; // r2
  unsigned int v9; // r0

  v2 = *(_DWORD *)(a1 + 16);
  v3 = *(_DWORD *)(a2 + 16);
  v4 = *(const void **)(a1 + 20);
  v5 = *(const void **)(a2 + 20);
  v6 = v2 - (_DWORD)v4;
  v7 = v3 - (_DWORD)v5;
  if ( v7 >= v6 )
    v8 = v6;
  else
    v8 = v7;
  v9 = memcmp(v4, v5, v8);
  if ( !v9 )
  {
    if ( v6 >= v7 )
      v9 = v6 > v7;
    else
      v9 = -1;
  }
  return v9 >> 31;
}


// ===== 536340 std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,char const*) =====
bool __fastcall std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        int a1,
        char *a2)
{
  size_t v4; // r2
  const void *v5; // r0

  v4 = LC_API_STRLEN_0(a2);
  v5 = *(const void **)(a1 + 20);
  return v4 == *(_DWORD *)(a1 + 16) - (_DWORD)v5 && memcmp(v5, a2, v4) == 0;
}


// ===== 536388 glitch::gui::CGUIEnvironment::loadGUI(char const*,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::loadGUI(
        glitch::gui::CGUIEnvironment *this,
        const char *a2,
        glitch::gui::IGUIElement *a3)
{
  int v6; // r0
  glitch::IReferenceCounted *v7; // r5
  int v8; // r4

  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 112) + 12))(*((_DWORD *)this + 112));
  v7 = (glitch::IReferenceCounted *)v6;
  if ( v6 )
  {
    v8 = (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, int, glitch::gui::IGUIElement *))(*(_DWORD *)this + 244))(
           this,
           v6,
           a3);
    glitch::IReferenceCounted::drop(v7);
    return v8;
  }
  else
  {
    glitch::os::Printer::log("Unable to open gui file", a2, 3);
    return 0;
  }
}


// ===== 536404 std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,wchar_t const*) =====
bool __fastcall std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
        int a1,
        wchar_t *s)
{
  size_t v4; // r2
  const wchar_t *v5; // r0

  v4 = wcslen(s);
  v5 = *(const wchar_t **)(a1 + 68);
  return v4 == (*(_DWORD *)(a1 + 64) - (int)v5) >> 2 && wmemcmp(v5, s, v4) == 0;
}


// ===== 53644c glitch::gui::CGUIEnvironment::getElementByName(char const*,glitch::gui::IGUIElement *) =====
glitch::gui::IGUIElement *__fastcall glitch::gui::CGUIEnvironment::getElementByName(
        glitch::gui::CGUIEnvironment *this,
        const char *a2,
        glitch::gui::IGUIElement *a3)
{
  glitch::gui::IGUIElement *v3; // r6
  const char *v6; // r0
  _DWORD *v8; // r7
  _DWORD *i; // r6
  int v10; // r0

  v3 = a3;
  if ( !a3 )
    v3 = (glitch::gui::IGUIElement *)(*(int (__fastcall **)(glitch::gui::CGUIEnvironment *))(*(_DWORD *)this + 116))(this);
  v6 = (const char *)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)v3 + 92))(v3);
  if ( LC_API_STRCMP_0(v6, a2) )
  {
    v8 = (_DWORD *)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)v3 + 104))(v3);
    for ( i = (_DWORD *)*v8; ; i = (_DWORD *)*i )
    {
      if ( v8 == i )
        return nullptr;
      v10 = (*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, const char *, _DWORD))(*(_DWORD *)this + 72))(
              this,
              a2,
              i[2]);
      if ( v10 )
        break;
    }
    return (glitch::gui::IGUIElement *)v10;
  }
  return v3;
}


// ===== 5364f4 glitch::gui::CGUIEnvironment::addComboBox(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addComboBox(int a1, int *a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r7
  int v6; // r4
  _DWORD *v10; // r0
  _DWORD *v11; // r4
  _DWORD v13[5]; // [sp+8h] [bp-14h] BYREF

  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v13[2] = a2[2];
  v13[0] = v5;
  v13[1] = v6;
  v13[3] = v4;
  v10 = operator new(0x190u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v11 = v10;
  ((void (__fastcall *)(_DWORD *, int, int, int, _DWORD *))glitch::gui::CGUIComboBox::CGUIComboBox)(
    v10,
    a1,
    a3,
    a4,
    v13);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v11 + *(_DWORD *)(*v11 - 16)));
  return v11;
}


// ===== 536574 glitch::gui::CGUIEnvironment::addInOutFader(glitch::core::rect<int> const*,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addInOutFader(int a1, int *a2, int a3, int a4)
{
  int v4; // r12
  int v5; // lr
  int v7; // r6
  int v9; // r3
  _DWORD *v10; // r4
  bool v12; // zf
  _DWORD v13[5]; // [sp+8h] [bp-14h] BYREF

  v7 = a3;
  if ( a2 )
  {
    a3 = a2[3];
    v9 = *a2;
    v5 = a2[1];
    v4 = a2[2];
  }
  else
  {
    v9 = *(_DWORD *)(a1 + 424);
    v12 = v9 == 0;
    if ( v9 )
    {
      a3 = *(_DWORD *)(v9 + 204);
      v9 = 0;
    }
    else
    {
      v5 = 0;
    }
    if ( v12 )
    {
      v4 = v9;
      a3 = v9;
    }
    else
    {
      a2 = *(int **)(a3 - 4);
    }
    if ( !v12 )
    {
      v5 = v9;
      a3 = a2[4];
      v4 = a2[3];
    }
  }
  if ( !v7 )
    v7 = a1 + 8;
  v13[1] = v5;
  v13[0] = v9;
  v13[2] = v4;
  v13[3] = a3;
  v10 = operator new(0x180u, 0);
  ((void (__fastcall *)(_DWORD *, int, int, int, _DWORD *))glitch::gui::CGUIInOutFader::CGUIInOutFader)(
    v10,
    a1,
    v7,
    a4,
    v13);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 16)));
  return v10;
}


// ===== 536628 glitch::gui::CGUIEnvironment::addToolBar(glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addToolBar(
        glitch::gui::CGUIEnvironment *this,
        glitch::gui::IGUIElement *a2,
        int a3)
{
  glitch::gui::IGUIElement *v3; // r5
  _DWORD *v6; // r4
  _DWORD v8[5]; // [sp+8h] [bp-14h] BYREF

  v3 = a2;
  if ( !a2 )
    v3 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  v8[3] = 10;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = 10;
  v6 = operator new(0x168u, 0);
  ((void (__fastcall *)(_DWORD *, glitch::gui::CGUIEnvironment *, glitch::gui::IGUIElement *, int, _DWORD *))glitch::gui::CGUIToolBar::CGUIToolBar)(
    v6,
    this,
    v3,
    a3,
    v8);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  return v6;
}


// ===== 53669c glitch::gui::CGUIEnvironment::addMenu(glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addMenu(
        glitch::gui::CGUIEnvironment *this,
        glitch::gui::IGUIElement *a2,
        int a3)
{
  glitch::gui::IGUIElement *v3; // r5
  int v6; // r2
  _DWORD *v7; // r4
  _DWORD v9[5]; // [sp+8h] [bp-14h] BYREF

  v3 = a2;
  if ( !a2 )
    v3 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  v6 = *((_DWORD *)v3 + 17) - *((_DWORD *)v3 + 15);
  v9[2] = *((_DWORD *)v3 + 16) - *((_DWORD *)v3 + 14);
  v9[3] = v6;
  v9[0] = 0;
  v9[1] = 0;
  v7 = operator new(0x18Cu, 0);
  ((void (__fastcall *)(_DWORD *, glitch::gui::CGUIEnvironment *, glitch::gui::IGUIElement *, int, _DWORD *))glitch::gui::CGUIMenu::CGUIMenu)(
    v7,
    this,
    v3,
    a3,
    v9);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  return v7;
}


// ===== 536724 glitch::gui::CGUIEnvironment::addContextMenu(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addContextMenu(int a1, _DWORD *a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r4
  int v6; // lr
  _DWORD *v10; // r0
  _DWORD *v11; // r4
  _DWORD v13[5]; // [sp+10h] [bp-14h] BYREF

  v4 = a2[3];
  v5 = a2[1];
  v6 = a2[2];
  v13[0] = *a2;
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v4;
  v10 = operator new(0x18Cu, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v11 = v10;
  ((void (__fastcall *)(_DWORD *, int, int, int, _DWORD *, int, int))glitch::gui::CGUIContextMenu::CGUIContextMenu)(
    v10,
    a1,
    a3,
    a4,
    v13,
    1,
    1);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v11 + *(_DWORD *)(*v11 - 16)));
  return v11;
}


// ===== 5367ac glitch::gui::CGUIEnvironment::addTab(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addTab(int a1, int a2, int a3, int a4)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r4

  v8 = operator new(0x174u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v9 = v8;
  glitch::gui::CGUITab::CGUITab(v8, -1, a1, a3, a2, a4);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
  return v9;
}


// ===== 536810 glitch::gui::CGUIEnvironment::addTabControl(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,bool,bool,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addTabControl(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r4

  v10 = operator new(0x194u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v11 = v10;
  glitch::gui::CGUITabControl::CGUITabControl(v10, a1, a3, a2, a4, a5, a6);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v11 + *(_DWORD *)(*v11 - 16)));
  return v11;
}


// ===== 536880 glitch::gui::CGUIEnvironment::addSpinBox(wchar_t const*,glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addSpinBox(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *v9; // r0
  _DWORD *v10; // r4

  v9 = operator new(0x1C8u, 0);
  if ( !a4 )
    a4 = a1 + 8;
  v10 = v9;
  glitch::gui::CGUISpinBox::CGUISpinBox(v9, a2, a1, a4, a5, a3);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 16)));
  return v10;
}


// ===== 5368e8 glitch::gui::CGUIEnvironment::addEditBox(wchar_t const*,glitch::core::rect<int> const&,bool,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addEditBox(int a1, int a2, int a3, int a4, int a5, int a6)
{
  int v8; // r5
  _DWORD *v11; // r0
  _DWORD *v12; // r4

  v8 = a5;
  v11 = operator new(0x1DCu, 0);
  v12 = v11;
  if ( !a5 )
    v8 = a1 + 8;
  glitch::gui::CGUIEditBox::CGUIEditBox(v11, a2, a4, a1, v8, a6, a3);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v12 + *(_DWORD *)(*v12 - 16)));
  return v12;
}


// ===== 536954 glitch::gui::CGUIEnvironment::addStaticText(wchar_t const*,glitch::core::rect<int> const&,bool,bool,glitch::gui::IGUIElement *,int,bool) =====
char *__fastcall glitch::gui::CGUIEnvironment::addStaticText(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        int a6,
        int a7,
        unsigned __int8 a8)
{
  int v10; // r5
  char *v13; // r0
  char *v14; // r4

  v10 = a6;
  v13 = (char *)operator new(0x190u, 0);
  v14 = v13;
  if ( !a6 )
    v10 = a1 + 8;
  glitch::gui::CGUIStaticText::CGUIStaticText(v13, a2, a4, a1, v10, a7, a3, a8);
  (*(void (__fastcall **)(char *, _DWORD))(*(_DWORD *)v14 + 164))(v14, a5);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v14[*(_DWORD *)(*(_DWORD *)v14 - 16)]);
  return v14;
}


// ===== 5369e0 glitch::gui::CGUIEnvironment::addModalScreen(glitch::gui::IGUIElement *) =====
glitch::gui::CGUIModalScreen *__fastcall glitch::gui::CGUIEnvironment::addModalScreen(
        glitch::gui::CGUIEnvironment *this,
        glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement *v2; // r5
  glitch::gui::CGUIModalScreen *v4; // r4

  v2 = a2;
  if ( !a2 )
    v2 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  v4 = (glitch::gui::CGUIModalScreen *)operator new(0x168u, 0);
  glitch::gui::CGUIModalScreen::CGUIModalScreen(v4, this, v2, -1);
  glitch::IReferenceCounted::drop((glitch::gui::CGUIModalScreen *)((char *)v4 + *(_DWORD *)(*(_DWORD *)v4 - 16)));
  return v4;
}


// ===== 536a28 glitch::gui::CGUIEnvironment::addColorSelectDialog(wchar_t const*,bool,glitch::gui::IGUIElement *,int) =====
glitch::gui::CGUIColorSelectDialog *__fastcall glitch::gui::CGUIEnvironment::addColorSelectDialog(
        glitch::gui::CGUIEnvironment *this,
        const wchar_t *a2,
        int a3,
        glitch::gui::IGUIElement *a4,
        int a5)
{
  glitch::gui::IGUIElement *v5; // r5
  glitch::gui::CGUIModalScreen *v8; // r0
  glitch::gui::IGUIElement *v9; // r2
  glitch::gui::CGUIColorSelectDialog *v10; // r4

  v5 = a4;
  if ( !a4 )
    v5 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  if ( a3 )
  {
    v8 = (glitch::gui::CGUIModalScreen *)operator new(0x168u, 0);
    v9 = v5;
    v5 = v8;
    glitch::gui::CGUIModalScreen::CGUIModalScreen(v8, this, v9, -1);
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
  }
  v10 = (glitch::gui::CGUIColorSelectDialog *)operator new(0x190u, 0);
  glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(v10, a2, this, v5, a5);
  glitch::IReferenceCounted::drop((glitch::gui::CGUIColorSelectDialog *)((char *)v10 + *(_DWORD *)(*(_DWORD *)v10 - 16)));
  return v10;
}


// ===== 536abc glitch::gui::CGUIEnvironment::addFileOpenDialog(wchar_t const*,bool,glitch::gui::IGUIElement *,int) =====
glitch::gui::CGUIFileOpenDialog *__fastcall glitch::gui::CGUIEnvironment::addFileOpenDialog(
        glitch::gui::CGUIEnvironment *this,
        const wchar_t *a2,
        int a3,
        glitch::gui::IGUIElement *a4,
        int a5)
{
  glitch::gui::IGUIElement *v5; // r5
  glitch::gui::CGUIModalScreen *v8; // r0
  glitch::gui::IGUIElement *v9; // r2
  glitch::gui::CGUIFileOpenDialog *v10; // r4

  v5 = a4;
  if ( !a4 )
    v5 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  if ( a3 )
  {
    v8 = (glitch::gui::CGUIModalScreen *)operator new(0x168u, 0);
    v9 = v5;
    v5 = v8;
    glitch::gui::CGUIModalScreen::CGUIModalScreen(v8, this, v9, -1);
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
  }
  v10 = (glitch::gui::CGUIFileOpenDialog *)operator new(0x1D8u, 0);
  glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(v10, a2, this, v5, a5);
  glitch::IReferenceCounted::drop((glitch::gui::CGUIFileOpenDialog *)((char *)v10 + *(_DWORD *)(*(_DWORD *)v10 - 16)));
  return v10;
}


// ===== 536b50 glitch::gui::CGUIEnvironment::addListBox(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,bool) =====
char *__fastcall glitch::gui::CGUIEnvironment::addListBox(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        unsigned __int8 a5)
{
  int v5; // r12
  int v6; // r4
  int v7; // lr
  char *v11; // r0
  char *v12; // r4
  int v13; // r3
  int v14; // r0
  void (__fastcall *v15)(char *, int); // r5
  int v16; // r0
  int v18; // r0
  int v19; // r3
  _DWORD *v20; // r0
  void (__fastcall *v21)(char *, int); // r5
  int v22; // r0
  int v23; // r0
  _DWORD v24[4]; // [sp+10h] [bp-10h] BYREF

  v5 = a2[3];
  v6 = a2[1];
  v7 = a2[2];
  v24[0] = *a2;
  v24[1] = v6;
  v24[2] = v7;
  v24[3] = v5;
  v11 = (char *)operator new(0x1E8u, 0);
  if ( !a3 )
    a3 = a1 + 2;
  v12 = v11;
  ((void (__fastcall *)(char *, _DWORD *, _DWORD *, int, _DWORD *, int, _DWORD, _DWORD))glitch::gui::CGUIListBox::CGUIListBox)(
    v11,
    a1,
    a3,
    a4,
    v24,
    1,
    a5,
    0);
  v13 = a1[111];
  if ( v13 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 48))(a1[111]) )
  {
    v14 = a1[111];
    v15 = *(void (__fastcall **)(char *, int))(*(_DWORD *)v12 + 148);
    v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14);
    v15(v12, v16);
  }
  else if ( (*(int (__fastcall **)(_DWORD *))(*a1 + 104))(a1) )
  {
    v18 = (*(int (__fastcall **)(_DWORD *))(*a1 + 104))(a1);
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v18 + 40))(v18) )
    {
      v19 = *a1;
      v20 = a1;
      v21 = *(void (__fastcall **)(char *, int))(*(_DWORD *)v12 + 148);
      v22 = (*(int (__fastcall **)(_DWORD *))(v19 + 104))(v20);
      v23 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 72))(v22);
      v21(v12, v23);
    }
  }
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v12[*(_DWORD *)(*(_DWORD *)v12 - 16)]);
  return v12;
}


// ===== 536ca0 glitch::gui::CGUIEnvironment::addCheckBox(bool,glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,wchar_t const*) =====
char *__fastcall glitch::gui::CGUIEnvironment::addCheckBox(int a1, int a2, int *a3, int a4, int a5, int a6)
{
  int v6; // r12
  int v7; // r4
  int v8; // lr
  int v9; // r2
  char *v13; // r0
  char *v14; // r4
  _DWORD v16[4]; // [sp+8h] [bp-10h] BYREF

  v6 = a3[3];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v6;
  v13 = (char *)operator new(0x16Cu, 0);
  if ( !a4 )
    a4 = a1 + 8;
  v14 = v13;
  ((void (__fastcall *)(char *, int, int, int, int, _DWORD *))glitch::gui::CGUICheckBox::CGUICheckBox)(
    v13,
    a2,
    a1,
    a4,
    a5,
    v16);
  if ( a6 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v14 + 68))(v14, a6);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v14[*(_DWORD *)(*(_DWORD *)v14 - 16)]);
  return v14;
}


// ===== 536d44 glitch::gui::CGUIEnvironment::addMeshViewer(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,wchar_t const*) =====
char *__fastcall glitch::gui::CGUIEnvironment::addMeshViewer(int a1, _DWORD *a2, int a3, int a4, int a5)
{
  int v5; // r12
  int v6; // r4
  int v7; // lr
  char *v11; // r0
  char *v12; // r4
  _DWORD v14[4]; // [sp+8h] [bp-10h] BYREF

  v5 = a2[3];
  v6 = a2[1];
  v7 = a2[2];
  v14[0] = *a2;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v5;
  v11 = (char *)operator new(0x16Cu, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v12 = v11;
  ((void (__fastcall *)(char *, int, int, int, _DWORD *))glitch::gui::CGUIMeshViewer::CGUIMeshViewer)(
    v11,
    a1,
    a3,
    a4,
    v14);
  if ( a5 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v12 + 68))(v12, a5);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v12[*(_DWORD *)(*(_DWORD *)v12 - 16)]);
  return v12;
}


// ===== 536de0 glitch::gui::CGUIEnvironment::addImage(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,wchar_t const*) =====
char *__fastcall glitch::gui::CGUIEnvironment::addImage(int a1, _DWORD *a2, int a3, int a4, int a5)
{
  int v5; // r12
  int v6; // r4
  int v7; // lr
  char *v11; // r0
  char *v12; // r4
  _DWORD v14[4]; // [sp+8h] [bp-10h] BYREF

  v5 = a2[3];
  v6 = a2[1];
  v7 = a2[2];
  v14[0] = *a2;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v5;
  v11 = (char *)operator new(0x170u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v12 = v11;
  ((void (__fastcall *)(char *, int, int, int, _DWORD *))glitch::gui::CGUIImage::CGUIImage)(v11, a1, a3, a4, v14);
  if ( a5 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v12 + 68))(v12, a5);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v12[*(_DWORD *)(*(_DWORD *)v12 - 16)]);
  return v12;
}


// ===== 536e7c glitch::gui::CGUIEnvironment::addImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int>,bool,glitch::gui::IGUIElement *,int,wchar_t const*) =====
char *__fastcall glitch::gui::CGUIEnvironment::addImage(int a1, int *a2, int *a3, int a4, int a5, int a6, int a7)
{
  int v7; // r12
  int v8; // lr
  int v10; // r1
  int v12; // r3
  int v13; // r2
  int v15; // r10
  char *v16; // r0
  char *v17; // r4
  _DWORD v19[5]; // [sp+8h] [bp-14h] BYREF

  v10 = *a2;
  v12 = a3[1];
  if ( v10 )
  {
    v8 = *(_DWORD *)(v10 + 32);
    v7 = *(_DWORD *)(v10 + 36);
  }
  v13 = *a3;
  if ( !v10 )
  {
    v8 = 0;
    v7 = 0;
  }
  v15 = a5;
  v19[2] = v8 + v13;
  v19[3] = v7 + v12;
  v19[0] = v13;
  v19[1] = v12;
  v16 = (char *)operator new(0x170u, 0);
  if ( !a5 )
    v15 = a1 + 8;
  v17 = v16;
  glitch::gui::CGUIImage::CGUIImage(v16, a1, v15, a6, v19);
  if ( a7 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v17 + 68))(v17, a7);
  if ( a4 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v17 + 136))(v17, 1);
  if ( *a2 )
    (*(void (__fastcall **)(char *, int *))(*(_DWORD *)v17 + 124))(v17, a2);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v17[*(_DWORD *)(*(_DWORD *)v17 - 16)]);
  return v17;
}


// ===== 536f78 glitch::gui::CGUIEnvironment::addTable(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,bool) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addTable(int a1, int *a2, int a3, int a4, unsigned __int8 a5)
{
  int v5; // r12
  int v6; // r5
  int v7; // r4
  _DWORD *v11; // r0
  _DWORD *v12; // r4
  _DWORD v14[4]; // [sp+10h] [bp-10h] BYREF

  v5 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  v14[2] = a2[2];
  v14[0] = v6;
  v14[1] = v7;
  v14[3] = v5;
  v11 = operator new(0x1C0u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v12 = v11;
  ((void (__fastcall *)(_DWORD *, int, int, int, _DWORD *, int, _DWORD, _DWORD))glitch::gui::CGUITable::CGUITable)(
    v11,
    a1,
    a3,
    a4,
    v14,
    1,
    a5,
    0);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v12 + *(_DWORD *)(*v12 - 16)));
  return v12;
}


// ===== 537010 glitch::gui::CGUIEnvironment::addScrollBar(bool,glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addScrollBar(int a1, int a2, int *a3, int a4, int a5)
{
  int v5; // lr
  int v6; // r12
  int v7; // r4
  int v8; // r2
  _DWORD *v12; // r0
  _DWORD *v13; // r4
  _DWORD v15[5]; // [sp+10h] [bp-14h] BYREF

  v5 = a3[1];
  v6 = a3[3];
  v7 = *a3;
  v8 = a3[2];
  v15[1] = v5;
  v15[0] = v7;
  v15[2] = v8;
  v15[3] = v6;
  v12 = operator new(0x1A0u, 0);
  if ( !a4 )
    a4 = a1 + 8;
  v13 = v12;
  ((void (__fastcall *)(_DWORD *, int, int, int, int, _DWORD *, _DWORD))glitch::gui::CGUIScrollBar::CGUIScrollBar)(
    v12,
    a2,
    a1,
    a4,
    a5,
    v15,
    0);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v13 + *(_DWORD *)(*v13 - 16)));
  return v13;
}


// ===== 5370a0 glitch::gui::CGUIEnvironment::addMessageBox(wchar_t const*,wchar_t const*,bool,int,glitch::gui::IGUIElement *,int) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::addMessageBox(
        glitch::gui::CGUIEnvironment *this,
        const wchar_t *a2,
        const wchar_t *a3,
        int a4,
        int a5,
        glitch::gui::IGUIElement *a6,
        int a7)
{
  int v7; // r12
  glitch::gui::IGUIElement *v11; // r4
  _DWORD *v12; // r6
  int v13; // r7
  int v14; // r6
  int v15; // r10
  int v16; // r0
  int v17; // r7
  int v18; // r6
  int v19; // r10
  int v20; // r9
  glitch::gui::CGUIModalScreen *v22; // r0
  glitch::gui::IGUIElement *v23; // r2
  _DWORD v25[5]; // [sp+18h] [bp-14h] BYREF

  v7 = *((_DWORD *)this + 111);
  v11 = a6;
  if ( !v7 )
    return nullptr;
  if ( !a6 )
    v11 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  v13 = *((_DWORD *)v11 + 16) - *((_DWORD *)v11 + 14);
  v14 = *((_DWORD *)v11 + 17) - *((_DWORD *)v11 + 15);
  v15 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 4);
  v16 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 111) + 24))(*((_DWORD *)this + 111), 5);
  v17 = (v13 - v15) / 2;
  v18 = (v14 - v16) / 2;
  v19 = v17 + v15;
  v20 = v18 + v16;
  if ( a4 )
  {
    v22 = (glitch::gui::CGUIModalScreen *)operator new(0x168u, 0);
    v23 = v11;
    v11 = v22;
    glitch::gui::CGUIModalScreen::CGUIModalScreen(v22, this, v23, -1);
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v11 + *(_DWORD *)(*(_DWORD *)v11 - 16)));
  }
  v25[1] = v18;
  v25[0] = v17;
  v25[2] = v19;
  v25[3] = v20;
  v12 = operator new(0x1E0u, 0);
  glitch::gui::CGUIMessageBox::CGUIMessageBox(v12, this, a2, a3, a5, v11, a7, v25);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v12 + *(_DWORD *)(*v12 - 16)));
  return v12;
}


// ===== 5371e0 glitch::gui::CGUIEnvironment::addWindow(glitch::core::rect<int> const&,bool,wchar_t const*,glitch::gui::IGUIElement *,int) =====
char *__fastcall glitch::gui::CGUIEnvironment::addWindow(
        glitch::gui::IGUIEnvironment *a1,
        _DWORD *a2,
        int a3,
        int a4,
        glitch::gui::IGUIElement *a5,
        int a6)
{
  glitch::gui::IGUIElement *v6; // r5
  int v10; // r3
  int v11; // r12
  int v12; // r2
  char *v13; // r4
  glitch::gui::CGUIModalScreen *v15; // r0
  glitch::gui::IGUIElement *v16; // r2
  _DWORD v17[5]; // [sp+8h] [bp-14h] BYREF

  v6 = a5;
  if ( !a5 )
    v6 = (glitch::gui::IGUIEnvironment *)((char *)a1 + 8);
  if ( a3 )
  {
    v15 = (glitch::gui::CGUIModalScreen *)operator new(0x168u, 0);
    v16 = v6;
    v6 = v15;
    glitch::gui::CGUIModalScreen::CGUIModalScreen(v15, a1, v16, -1);
    glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)v6 + *(_DWORD *)(*(_DWORD *)v6 - 16)));
  }
  v10 = a2[3];
  v11 = a2[1];
  v12 = a2[2];
  v17[0] = *a2;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v10;
  v13 = (char *)operator new(0x17Cu, 0);
  ((void (__fastcall *)(char *, glitch::gui::IGUIEnvironment *, glitch::gui::IGUIElement *, int, _DWORD *))glitch::gui::CGUIWindow::CGUIWindow)(
    v13,
    a1,
    v6,
    a6,
    v17);
  if ( a4 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v13 + 68))(v13, a4);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v13[*(_DWORD *)(*(_DWORD *)v13 - 16)]);
  return v13;
}


// ===== 5372bc glitch::gui::CGUIEnvironment::addButton(glitch::core::rect<int> const&,glitch::gui::IGUIElement *,int,wchar_t const*,wchar_t const*) =====
char *__fastcall glitch::gui::CGUIEnvironment::addButton(int a1, _DWORD *a2, int a3, int a4, int a5, int a6)
{
  int v6; // r12
  int v7; // r4
  int v8; // lr
  char *v12; // r0
  char *v13; // r4
  _DWORD v15[5]; // [sp+8h] [bp-14h] BYREF

  v6 = a2[3];
  v7 = a2[1];
  v8 = a2[2];
  v15[0] = *a2;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v6;
  v12 = (char *)operator new(0x1E4u, 0);
  if ( !a3 )
    a3 = a1 + 8;
  v13 = v12;
  ((void (__fastcall *)(char *, int, int, int, _DWORD *, _DWORD))glitch::gui::CGUIButton::CGUIButton)(
    v12,
    a1,
    a3,
    a4,
    v15,
    0);
  if ( a5 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v13 + 68))(v13, a5);
  if ( a6 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v13 + 76))(v13, a6);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v13[*(_DWORD *)(*(_DWORD *)v13 - 16)]);
  return v13;
}


// ===== 537380 glitch::gui::CGUIEnvironment::loadGUI(glitch::io::IReadFile *,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::loadGUI(
        glitch::gui::CGUIEnvironment *this,
        glitch::io::IReadFile *a2,
        glitch::gui::IGUIElement *a3)
{
  glitch::IReferenceCounted *v5; // r4
  int v6; // r0

  if ( a2 )
  {
    v5 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 112) + 80))(*((_DWORD *)this + 112));
    if ( v5 )
    {
      while ( (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v5 + 12))(v5) )
        (*(void (**)(void))(*(_DWORD *)this + 260))();
      glitch::IReferenceCounted::drop(v5);
      return 1;
    }
    else
    {
      v6 = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
      glitch::os::Printer::log("GUI is not a valid XML file", v6, 3);
      return 0;
    }
  }
  else
  {
    glitch::os::Printer::log("Unable to open GUI file", 3);
    return 0;
  }
}


// ===== 537440 glitch::gui::CGUIEnvironment::createSkin(glitch::gui::EGUI_SKIN_TYPE) =====
void *__fastcall glitch::gui::CGUIEnvironment::createSkin(_DWORD *a1, int a2)
{
  void *v4; // r4
  int v5; // r0
  int v6; // r5
  int v7; // r1

  v4 = operator new(0x348u, 0);
  glitch::gui::CGUISkin::CGUISkin(v4, a2, a1[106]);
  v5 = (*(int (__fastcall **)(_DWORD *))(*a1 + 104))(a1);
  v6 = v5;
  if ( v5 && !(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5) )
  {
    (*(void (__fastcall **)(void *, int))(*(_DWORD *)v4 + 44))(v4, v6);
    v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 72))(v6);
  }
  else
  {
    (*(void (__fastcall **)(void *, int, _DWORD))(*(_DWORD *)v4 + 44))(v4, v6, 0);
    v7 = 0;
  }
  (*(void (__fastcall **)(void *, int))(*(_DWORD *)v4 + 52))(v4, v7);
  return v4;
}


// ===== 5374f4 glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>) =====
glitch::os::Timer *__fastcall glitch::gui::CGUIEnvironment::updateHoveredElement(_DWORD *a1, _DWORD *a2)
{
  int *v3; // r6
  int *v4; // r5
  glitch::os::Timer *result; // r0
  int v6; // r2
  int *v7; // r3
  glitch::os::Timer *v8; // r8
  bool v9; // zf
  char *v10; // r3
  int v11; // r3
  int v12; // r3
  int *v13; // r3
  unsigned int v14; // r3
  _DWORD v15[2]; // [sp+0h] [bp-18h] BYREF
  int *v16; // [sp+8h] [bp-10h]
  int v17; // [sp+10h] [bp-8h]

  v3 = a1 + 2;
  a1[109] = *a2;
  a1[110] = a2[1];
  v4 = (int *)a1[107];
  result = (glitch::os::Timer *)glitch::gui::IGUIElement::getElementFromPoint((int)(a1 + 2), (int)a2);
  a1[107] = result;
  if ( result )
  {
    result = (glitch::os::Timer *)glitch::os::Timer::getTime(result);
    v7 = (int *)a1[107];
    v8 = result;
    v9 = v3 == v7;
    if ( v3 == v7 )
      v7 = v3;
    else
      v6 = *v7;
    if ( !v9 )
    {
      v10 = (char *)v7 + *(_DWORD *)(v6 - 16);
      v6 = *((_DWORD *)v10 + 1) + 1;
      *((_DWORD *)v10 + 1) = v6;
      v7 = (int *)a1[107];
    }
    if ( v4 != v7 )
    {
      v15[0] = 0;
      if ( v4 )
      {
        v17 = 3;
        v16 = v4;
        (*(void (__fastcall **)(int *, _DWORD *, int))(*v4 + 8))(v4, v15, v6);
      }
      v11 = a1[90];
      if ( v11 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 28))(a1[90]);
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(a1[90] + *(_DWORD *)(*(_DWORD *)a1[90] - 16)));
        v12 = a1[88];
        a1[90] = 0;
        a1[88] = v12 + 500;
      }
      else
      {
        v14 = a1[88];
        if ( v14 <= (unsigned int)v8 - v14 )
          a1[88] = v8;
        else
          a1[88] = v14 + 500;
      }
      v13 = (int *)a1[107];
      v17 = 2;
      v16 = v13;
      result = (glitch::os::Timer *)(*(int (__fastcall **)(int *, _DWORD *))(*v13 + 8))(v13, v15);
    }
  }
  if ( v4 )
  {
    if ( v4 != v3 )
      return (glitch::os::Timer *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4
                                                                                              + *(_DWORD *)(*v4 - 16)));
  }
  return result;
}


// ===== 537648 glitch::gui::CGUIEnvironment::drawAll(void) =====
int __fastcall glitch::gui::CGUIEnvironment::drawAll(glitch::gui::CGUIEnvironment *this)
{
  int v1; // r3
  int v3; // r1
  int v4; // r2
  int v5; // r1
  int v6; // r0
  int v7; // r12
  int v8; // r1
  char *v9; // r5
  int v10; // r3
  int v11; // r1
  glitch::os::Timer *v12; // r0
  int (__fastcall *v13)(glitch::gui::CGUIEnvironment *, int); // r5
  int Time; // r0

  v1 = *((_DWORD *)this + 106);
  if ( !v1
    || (v3 = *(_DWORD *)(*(_DWORD *)(v1 + 204) - 4),
        v4 = *(_DWORD *)(v3 + 12),
        v5 = *(_DWORD *)(v3 + 16),
        *((_DWORD *)this + 18) == v4)
    && *((_DWORD *)this + 19) == v5 )
  {
    v9 = (char *)this + 8;
  }
  else
  {
    *((_DWORD *)this + 26) = v4;
    v6 = *((_DWORD *)this + 25);
    v7 = *((_DWORD *)this + 24);
    v8 = *(_DWORD *)(*(_DWORD *)(v1 + 204) - 4);
    v9 = (char *)this + 8;
    v10 = *((_DWORD *)this + 2);
    v11 = *(_DWORD *)(v8 + 16);
    *((_DWORD *)this + 17) = v6;
    *((_DWORD *)this + 21) = v6;
    *((_DWORD *)this + 16) = v7;
    *((_DWORD *)this + 18) = v4;
    *((_DWORD *)this + 19) = v11;
    *((_DWORD *)this + 27) = v11;
    *((_DWORD *)this + 20) = v7;
    *((_DWORD *)this + 22) = v4;
    *((_DWORD *)this + 23) = v11;
    (*(void (__fastcall **)(char *))(v10 + 12))((char *)this + 8);
  }
  if ( *((_DWORD *)this + 90) )
    (*(void (__fastcall **)(char *))(*((_DWORD *)this + 2) + 100))(v9);
  v12 = (glitch::os::Timer *)(*(int (__fastcall **)(char *))(*((_DWORD *)this + 2) + 32))(v9);
  v13 = *(int (__fastcall **)(glitch::gui::CGUIEnvironment *, int))(*(_DWORD *)this + 268);
  Time = glitch::os::Timer::getTime(v12);
  return v13(this, Time);
}


// ===== 537724 glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement*,int,glitch::core::rect<int>) [clone] =====
int __fastcall glitch::gui::IGUIElement::IGUIElement(int a1, int *a2, _DWORD *a3)
{
  int v6; // r1
  int v7; // r7
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  int v10; // r0
  int v11; // r12
  int v12; // r8
  int v13; // r7
  int v14; // r2
  int v15; // r1
  int v16; // r5
  int v17; // r6
  int v18; // r0
  int v19; // r1
  int v20; // r1
  int v21; // r2
  int v22; // r1
  int v23; // r3
  int v24; // r1
  bool v25; // cc
  int v26; // r3

  *(_DWORD *)a1 = off_95C300;
  v6 = *a2;
  v7 = a1 + 4;
  *(_DWORD *)a1 = v6;
  v8 = (_DWORD *)(a1 + 12);
  *(_DWORD *)(a1 + *(_DWORD *)(v6 - 12)) = a2[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[2];
  *(_DWORD *)(a1 + 28) = v8;
  *(_DWORD *)(a1 + 32) = v8;
  *(_DWORD *)(a1 + 8) = v7;
  *(_DWORD *)(a1 + 4) = v7;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8,
    0x10u);
  **(_BYTE **)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = *a3;
  *(_DWORD *)(a1 + 44) = a3[1];
  *(_DWORD *)(a1 + 48) = a3[2];
  *(_DWORD *)(a1 + 52) = a3[3];
  *(_DWORD *)(a1 + 56) = *a3;
  *(_DWORD *)(a1 + 60) = a3[1];
  *(_DWORD *)(a1 + 64) = a3[2];
  *(_DWORD *)(a1 + 68) = a3[3];
  *(_DWORD *)(a1 + 72) = *a3;
  *(_DWORD *)(a1 + 76) = a3[1];
  *(_DWORD *)(a1 + 80) = a3[2];
  *(_DWORD *)(a1 + 84) = a3[3];
  *(_DWORD *)(a1 + 88) = *a3;
  *(_DWORD *)(a1 + 92) = a3[1];
  *(_DWORD *)(a1 + 96) = a3[2];
  *(_DWORD *)(a1 + 100) = a3[3];
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 160),
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  v9 = *(_DWORD **)(a1 + 36);
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 23;
  *(_DWORD *)(a1 + 304) = 0;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  if ( v9 )
  {
    v10 = v9[15];
    v11 = v9[14];
    v12 = v9[16];
    v13 = v9[17];
    v14 = v10 + *(_DWORD *)(a1 + 68);
    v15 = v11 + *(_DWORD *)(a1 + 64);
    v16 = v10 + *(_DWORD *)(a1 + 60);
    v17 = v11 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v16;
    *(_DWORD *)(a1 + 84) = v14;
    *(_DWORD *)(a1 + 72) = v17;
    *(_DWORD *)(a1 + 80) = v15;
    *(_DWORD *)(a1 + 68) = v14;
    *(_DWORD *)(a1 + 112) = v12;
    *(_DWORD *)(a1 + 116) = v13;
    *(_DWORD *)(a1 + 104) = v11;
    *(_DWORD *)(a1 + 108) = v10;
    *(_DWORD *)(a1 + 56) = v17;
    *(_DWORD *)(a1 + 60) = v16;
    *(_DWORD *)(a1 + 64) = v15;
    v18 = v9[20];
    if ( v15 > v18 )
      *(_DWORD *)(a1 + 80) = v18;
    v19 = v9[21];
    if ( v14 > v19 )
      *(_DWORD *)(a1 + 84) = v19;
    v20 = v9[18];
    v21 = *(_DWORD *)(a1 + 72);
    if ( v20 > v21 )
    {
      *(_DWORD *)(a1 + 72) = v20;
      v21 = v20;
    }
    v22 = v9[19];
    v23 = *(_DWORD *)(a1 + 76);
    if ( v22 > v23 )
    {
      *(_DWORD *)(a1 + 76) = v22;
      v23 = v22;
    }
    v24 = *(_DWORD *)(a1 + 84);
    v25 = v24 < v23;
    v26 = *(_DWORD *)(a1 + 80);
    if ( v25 )
      *(_DWORD *)(a1 + 76) = v24;
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 72) = v26;
  }
  return a1;
}


// ===== 5379b4 glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, int a5, int a6)
{
  int v7; // r11
  int *v8; // r4
  int *v9; // r6
  int v10; // r11
  int v13; // r0
  int v15; // r3
  int v16; // r2
  bool v17; // cc
  int v18; // r2
  bool v19; // cc

  if ( a3 )
    v7 = -1;
  else
    v7 = 1;
  v9 = (int *)(a1 + 4);
  v8 = *(int **)(a1 + 4);
  v10 = v7 + a2;
  if ( v10 == -2 )
    v10 = 0x40000000;
  if ( v8 == v9 )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v8[2] + 44))(v8[2]) )
      goto LABEL_14;
    if ( a4 )
    {
      v13 = v8[2];
    }
    else
    {
      v13 = v8[2];
      if ( *(_BYTE *)(v13 + 316) )
        goto LABEL_14;
    }
    if ( !*(_BYTE *)(v13 + 308) || *(unsigned __int8 *)(v13 + 316) != a4 )
    {
LABEL_13:
      if ( glitch::gui::IGUIElement::getNextElement(v13, a2, a3, a4, a5, a6) )
        return 1;
      goto LABEL_14;
    }
    v15 = *(_DWORD *)(v13 + 312);
    if ( v15 == v10 )
      break;
    if ( *(_DWORD *)a6 )
    {
      v16 = *(_DWORD *)(*(_DWORD *)a6 + 312);
      if ( a3 )
      {
        v19 = a2 <= v15;
        if ( a2 > v15 )
          v19 = v15 <= v16;
        if ( !v19 )
        {
LABEL_23:
          *(_DWORD *)a6 = v13;
          v13 = v8[2];
        }
      }
      else
      {
        v17 = a2 < v15;
        if ( a2 < v15 )
          v17 = v15 < v16;
        if ( v17 )
          goto LABEL_23;
      }
    }
    else if ( a3 )
    {
      if ( a2 > v15 )
        goto LABEL_23;
    }
    else if ( a2 < v15 )
    {
      goto LABEL_23;
    }
    if ( *(_DWORD *)a5 )
    {
      v18 = *(_DWORD *)(*(_DWORD *)a5 + 312);
      if ( a3 )
      {
        if ( v15 <= v18 )
          goto LABEL_13;
      }
      else if ( v15 >= v18 )
      {
        goto LABEL_13;
      }
    }
    *(_DWORD *)a5 = v13;
    if ( glitch::gui::IGUIElement::getNextElement(v8[2], a2, a3, a4, a5, a6) )
      return 1;
LABEL_14:
    v8 = (int *)*v8;
    if ( v8 == v9 )
      return 0;
  }
  *(_DWORD *)a6 = v13;
  return 1;
}


// ===== 537b44 glitch::gui::CGUIEnvironment::getNextElement(bool,bool) =====
char *__fastcall glitch::gui::CGUIEnvironment::getNextElement(glitch::gui::CGUIEnvironment *this, int a2, int a3)
{
  int v3; // r12
  char *v7; // r0
  int v8; // r1
  char *result; // r0
  int v10; // r2
  char *v11; // [sp+8h] [bp-Ch] BYREF
  char *v12; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 108);
  if ( !v3 || *(_BYTE *)(v3 + 316) )
  {
    v7 = *((char **)this + 108);
  }
  else
  {
    v7 = *((char **)this + 108);
    do
      v7 = *((char **)v7 + 9);
    while ( v7 && !v7[316] );
  }
  if ( a3 )
  {
    if ( v7 )
      v8 = *((_DWORD *)v7 + 78);
    else
      v8 = -1;
LABEL_12:
    v7 = (char *)this + 8;
    goto LABEL_13;
  }
  if ( !v3 || *(_BYTE *)(v3 + 316) )
  {
    v8 = -1;
  }
  else
  {
    v8 = *(_DWORD *)(v3 + 312);
    if ( v8 == -1 )
    {
      v10 = *(_DWORD *)(v3 + 36);
      if ( v10 )
      {
        do
        {
          v8 = *(_DWORD *)(v10 + 312);
          v10 = *(_DWORD *)(v10 + 36);
        }
        while ( v10 && v8 == -1 );
      }
    }
  }
  if ( !v7 )
    goto LABEL_12;
LABEL_13:
  v11 = nullptr;
  v12 = nullptr;
  glitch::gui::IGUIElement::getNextElement((int)v7, v8, a2, a3, (int)&v11, (int)&v12);
  result = v12;
  if ( !v12 )
  {
    result = v11;
    if ( !v11 )
    {
      if ( a3 )
        return (char *)this + 8;
    }
  }
  return result;
}


// ===== 537c5c glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&) =====
char *__fastcall glitch::gui::CGUIEnvironment::postEventFromUser(glitch::gui::CGUIEnvironment *a1, int a2)
{
  int v5; // r2
  int v6; // r1
  int v7; // r3
  char *NextElement; // r0
  char *v9; // r3
  _DWORD v10[3]; // [sp+0h] [bp-Ch] BYREF

  if ( *(_DWORD *)a2 != 1 )
  {
    if ( *(_DWORD *)a2 != 2 )
      return nullptr;
    if ( !*(_BYTE *)(a2 + 16) )
      goto LABEL_17;
    if ( *(_DWORD *)(a2 + 12) != 9 )
      goto LABEL_17;
    NextElement = glitch::gui::CGUIEnvironment::getNextElement(
                    a1,
                    *(unsigned __int8 *)(a2 + 17),
                    *(unsigned __int8 *)(a2 + 18));
    if ( !NextElement )
      goto LABEL_17;
    v9 = *((char **)a1 + 108);
    if ( NextElement == v9 )
      goto LABEL_18;
    if ( !(*(int (__fastcall **)(glitch::gui::CGUIEnvironment *, char *))(*(_DWORD *)a1 + 16))(a1, NextElement) )
    {
LABEL_17:
      v9 = *((char **)a1 + 108);
LABEL_18:
      if ( !v9 )
        return nullptr;
      return (char *)(*(int (__fastcall **)(char *, int))(*(_DWORD *)v9 + 8))(v9, a2);
    }
    return (char *)&dword_0 + 1;
  }
  v5 = *(_DWORD *)(a2 + 12);
  v10[0] = *(_DWORD *)(a2 + 8);
  v10[1] = v5;
  glitch::gui::CGUIEnvironment::updateHoveredElement(a1, v10);
  if ( *(_DWORD *)(a2 + 20) )
  {
LABEL_9:
    v7 = *((_DWORD *)a1 + 108);
    if ( !v7 )
      goto LABEL_21;
    goto LABEL_10;
  }
  v6 = *((_DWORD *)a1 + 107);
  if ( v6 )
  {
    if ( v6 != *((_DWORD *)a1 + 108) )
    {
LABEL_8:
      (*(void (__fastcall **)(glitch::gui::CGUIEnvironment *))(*(_DWORD *)a1 + 16))(a1);
      goto LABEL_9;
    }
    v7 = *((_DWORD *)a1 + 107);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 108);
  }
  if ( !v7 )
    goto LABEL_8;
LABEL_10:
  if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 8))(v7, a2) )
    return (char *)&dword_0 + 1;
  if ( *((_DWORD *)a1 + 108) )
    return nullptr;
LABEL_21:
  v9 = *((char **)a1 + 107);
  if ( !v9 )
    return nullptr;
  return (char *)(*(int (__fastcall **)(char *, int))(*(_DWORD *)v9 + 8))(v9, a2);
}


// ===== 537dac glitch::gui::CGUIEnvironment::registerGUIElementFactory(glitch::gui::IGUIElementFactory *) =====
void __fastcall glitch::gui::CGUIEnvironment::registerGUIElementFactory(int a1, int a2)
{
  char *v4; // r8
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  char *v8; // r0
  _BYTE *v9; // r1
  char *v10; // r6
  size_t v11; // r8
  char *v12; // r8

  if ( a2 )
  {
    ++*(_DWORD *)(a2 + 4);
    v4 = *(char **)(a1 + 368);
    if ( v4 == *(char **)(a1 + 372) )
    {
      v5 = (int)&v4[-*(_DWORD *)(a1 + 364)] >> 2;
      if ( v5 )
        v6 = 2 * v5;
      else
        v6 = 1;
      if ( v6 > 0x3FFFFFFF || v5 > v6 )
        v7 = -4;
      else
        v7 = 4 * v6;
      v8 = (char *)GlitchAlloc(v7, 0);
      v9 = *(_BYTE **)(a1 + 364);
      v10 = v8;
      v11 = v4 - v9;
      if ( v11 )
        v12 = (char *)memmove(v8, v9, v11) + v11;
      else
        v12 = v8;
      *(_DWORD *)v12 = a2;
      GlitchFree(*(void **)(a1 + 364));
      *(_DWORD *)(a1 + 372) = &v10[v7];
      *(_DWORD *)(a1 + 368) = v12 + 4;
      *(_DWORD *)(a1 + 364) = v10;
    }
    else
    {
      *(_DWORD *)v4 = a2;
      *(_DWORD *)(a1 + 368) += 4;
    }
  }
}


// ===== 537e74 `non-virtual thunk to'glitch::gui::CGUIEnvironment::OnPostRender(uint) =====
int __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::OnPostRender(
        glitch::gui::CGUIEnvironment *this,
        unsigned int a2)
{
  return glitch::gui::CGUIEnvironment::OnPostRender((glitch::gui::CGUIEnvironment *)((char *)this - 8), a2);
}


// ===== 537e7c glitch::gui::CGUIEnvironment::OnPostRender(uint) =====
_DWORD *__fastcall glitch::gui::CGUIEnvironment::OnPostRender(_DWORD *this, unsigned int a2)
{
  int **v2; // r5
  _DWORD *v4; // r3
  _DWORD *v5; // r10
  int **v6; // r5
  int **i; // r6
  int **v8; // t1
  int v9; // r0
  int v10; // r2
  int *v11; // r3
  int v12; // r0
  int v13; // r8
  void (__fastcall *v14)(_DWORD *, int, _DWORD); // r6
  int v15; // r0
  int v16; // r9
  int v17; // r8
  int v18; // r0
  int v19; // r6
  int v20; // r0
  int v21; // r0
  int v22; // r12
  int v23; // r2
  int v24; // r11
  int (__fastcall *v25)(int **, _DWORD, int *, int, int, _DWORD *, int, int); // r8
  int v26; // r0
  int v27; // r0
  int v28; // r8
  void (__fastcall *v29)(int, int); // r10
  int v30; // r0
  int *v31; // r8
  void (__fastcall *v32)(int *, int); // r10
  int v33; // r0
  int *v34; // r8
  void (__fastcall *v35)(int *, int); // r10
  int v36; // r0
  int v37; // r0
  int v38; // r3
  int v39; // r0
  int *v40; // r3
  int *v41; // r2
  int v42; // lr
  int v43[4]; // [sp+18h] [bp-34h] BYREF
  int v44; // [sp+28h] [bp-24h] BYREF
  int *v45; // [sp+2Ch] [bp-20h]
  int v46; // [sp+30h] [bp-1Ch]
  int v47; // [sp+34h] [bp-18h]
  _DWORD v48[2]; // [sp+38h] [bp-14h] BYREF
  int v49; // [sp+40h] [bp-Ch]
  int v50; // [sp+44h] [bp-8h]

  v2 = (int **)this;
  if ( a2 - *(this + 88) >= *(this + 89) )
  {
    v4 = (_DWORD *)*(this + 107);
    if ( v4 )
    {
      v5 = this + 2;
      if ( v4 != this + 2 && !*(this + 90) )
      {
        this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*v4 + 80))(*(this + 107));
        if ( (unsigned int)(*(this + 16) - *(this + 17)) >> 2 )
        {
          this = (_DWORD *)((int (__fastcall *)(int **))(*v2)[14])(v2);
          if ( this )
          {
            v9 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
            this = (_DWORD *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v9 + 40))(v9, 4);
            if ( this )
            {
              v10 = (int)v2[109];
              v11 = v2[110];
              v47 = 0;
              v44 = v10;
              v46 = 0;
              v45 = v11;
              v12 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v13 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 40))(v12, 4);
              v14 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v13 + 28);
              v15 = (*(int (__fastcall **)(int *))(*v2[107] + 80))(v2[107]);
              v14(v48, v13, *(_DWORD *)(v15 + 68));
              v16 = v48[1];
              v17 = v48[0];
              v18 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v19 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 24))(v18, 8);
              v20 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v21 = v16 + 2 * (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 24))(v20, 9);
              v22 = (int)v2[17];
              v23 = (int)v2[18];
              v24 = (int)v2[19];
              v43[0] = (int)v2[16];
              v43[1] = v22;
              v46 = v17 + v44 + 2 * v19;
              v43[2] = v23;
              v45 = (int *)((char *)v45 + ~v21);
              v47 = (int)v45 + v21 - 1;
              v43[3] = v24;
              glitch::core::rect<int>::constrainTo(&v44, v43);
              v25 = (int (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*v2)[42];
              v26 = (*(int (__fastcall **)(int *))(*v2[107] + 80))(v2[107]);
              v27 = v25(v2, *(_DWORD *)(v26 + 68), &v44, 1, 1, v5, -1, 1);
              v2[90] = (int *)v27;
              v28 = v27;
              v29 = *(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v27 + 132);
              v30 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v50 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v30 + 16))(v30, 14);
              v29(v28, v50);
              v31 = v2[90];
              v32 = *(void (__fastcall **)(_DWORD, _DWORD))(*v31 + 148);
              v33 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v49 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v33 + 16))(v33, 15);
              v32(v31, v49);
              v34 = v2[90];
              v35 = *(void (__fastcall **)(_DWORD, _DWORD))(*v34 + 124);
              v36 = ((int (__fastcall *)(int **))(*v2)[14])(v2);
              v37 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v36 + 40))(v36, 4);
              v35(v34, v37);
              (*(void (__fastcall **)(int *, int))(*v2[90] + 56))(v2[90], 1);
              v38 = (int)v2[90] + *(_DWORD *)(*v2[90] - 16);
              ++*(_DWORD *)(v38 + 4);
              v39 = (*(int (__fastcall **)(int *))(*v2[90] + 172))(v2[90]);
              v40 = v2[90];
              v41 = (int *)v40[11];
              v42 = v40[12];
              v44 = v40[10];
              v46 = v42;
              v47 = (int)v41 + v39;
              v45 = v41;
              this = (_DWORD *)glitch::gui::IGUIElement::setRelativePosition((float *)v40, &v44);
            }
          }
        }
      }
    }
  }
  if ( *((_BYTE *)v2 + 160) )
  {
    v8 = (int **)v2[3];
    v6 = v2 + 3;
    for ( i = v8; i != v6; i = (int **)*i )
      this = (_DWORD *)(*(int (__fastcall **)(int *, unsigned int))(*i[2] + 36))(i[2], a2);
  }
  return this;
}


// ===== 538234 glitch::gui::IGUIElement::setToolTipText(wchar_t const*) =====
int __fastcall glitch::gui::IGUIElement::setToolTipText(glitch::gui::IGUIElement *this, const wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (int)this + 232,
           s,
           &s[v4]);
}


// ===== 53825c std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFont const*,glitch::gui::CGUIEnvironment::SFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,int>(glitch::gui::CGUIEnvironment::SFont const*,glitch::gui::CGUIEnvironment::SFont const*,glitch::gui::CGUIEnvironment::SFont const&,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFont const*,glitch::gui::CGUIEnvironment::SFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r9
  int i; // r7
  const void *v5; // r10
  int v6; // r8
  int v7; // r4
  int v8; // r5
  const void *v9; // r3
  int v10; // r6
  size_t v11; // r2
  int v12; // r0

  v3 = a1;
  for ( i = -1227133513 * ((a2 - a1) >> 2); i > 0; v3 = v8 + 28 )
  {
    v5 = *(const void **)(a3 + 20);
    v6 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
    while ( 1 )
    {
      v7 = i >> 1;
      v8 = v3 + 28 * (i >> 1);
      v9 = *(const void **)(v8 + 20);
      v10 = *(_DWORD *)(v8 + 16) - (_DWORD)v9;
      v11 = v6 >= v10 ? *(_DWORD *)(v8 + 16) - (_DWORD)v9 : v6;
      v12 = memcmp(v9, v5, v11);
      if ( v12 )
        break;
      if ( v10 < v6 )
        goto LABEL_10;
LABEL_4:
      i >>= 1;
      if ( !v7 )
        return v3;
    }
    if ( v12 >= 0 )
      goto LABEL_4;
LABEL_10:
    i = i - 1 - v7;
  }
  return v3;
}


// ===== 538314 glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::gui::CGUIEnvironment::SFont const&) =====
int __fastcall glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  int v8; // r6

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFont const*,glitch::gui::CGUIEnvironment::SFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont,glitch::gui::CGUIEnvironment::SFont>,int>(
         v4,
         v3,
         a2);
  v8 = v7;
  if ( v7 == a1[1]
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         v7,
         a2)
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         a2,
         v8) )
  {
    return -1;
  }
  else
  {
    return -1227133513 * ((v8 - *a1) >> 2);
  }
}


// ===== 5383b8 std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SSpriteBank const*,glitch::gui::CGUIEnvironment::SSpriteBank,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,int>(glitch::gui::CGUIEnvironment::SSpriteBank const*,glitch::gui::CGUIEnvironment::SSpriteBank const*,glitch::gui::CGUIEnvironment::SSpriteBank const&,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SSpriteBank const*,glitch::gui::CGUIEnvironment::SSpriteBank,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r9
  int i; // r7
  const void *v5; // r10
  int v6; // r8
  int v7; // r4
  int v8; // r5
  const void *v9; // r3
  int v10; // r6
  size_t v11; // r2
  int v12; // r0

  v3 = a1;
  for ( i = -1227133513 * ((a2 - a1) >> 2); i > 0; v3 = v8 + 28 )
  {
    v5 = *(const void **)(a3 + 20);
    v6 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
    while ( 1 )
    {
      v7 = i >> 1;
      v8 = v3 + 28 * (i >> 1);
      v9 = *(const void **)(v8 + 20);
      v10 = *(_DWORD *)(v8 + 16) - (_DWORD)v9;
      v11 = v6 >= v10 ? *(_DWORD *)(v8 + 16) - (_DWORD)v9 : v6;
      v12 = memcmp(v9, v5, v11);
      if ( v12 )
        break;
      if ( v10 < v6 )
        goto LABEL_10;
LABEL_4:
      i >>= 1;
      if ( !v7 )
        return v3;
    }
    if ( v12 >= 0 )
      goto LABEL_4;
LABEL_10:
    i = i - 1 - v7;
  }
  return v3;
}


// ===== 538470 glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::gui::CGUIEnvironment::SSpriteBank const&) =====
int __fastcall glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  int v8; // r6

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SSpriteBank const*,glitch::gui::CGUIEnvironment::SSpriteBank,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::gui::CGUIEnvironment::SSpriteBank>,int>(
         v4,
         v3,
         a2);
  v8 = v7;
  if ( v7 == a1[1]
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         v7,
         a2)
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         a2,
         v8) )
  {
    return -1;
  }
  else
  {
    return -1227133513 * ((v8 - *a1) >> 2);
  }
}


// ===== 538514 std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFace const*,glitch::gui::CGUIEnvironment::SFace,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,int>(glitch::gui::CGUIEnvironment::SFace const*,glitch::gui::CGUIEnvironment::SFace const*,glitch::gui::CGUIEnvironment::SFace const&,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFace const*,glitch::gui::CGUIEnvironment::SFace,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r9
  int i; // r7
  const void *v5; // r10
  int v6; // r8
  int v7; // r4
  int v8; // r5
  const void *v9; // r3
  int v10; // r6
  size_t v11; // r2
  int v12; // r0

  v3 = a1;
  for ( i = -1227133513 * ((a2 - a1) >> 2); i > 0; v3 = v8 + 28 )
  {
    v5 = *(const void **)(a3 + 20);
    v6 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
    while ( 1 )
    {
      v7 = i >> 1;
      v8 = v3 + 28 * (i >> 1);
      v9 = *(const void **)(v8 + 20);
      v10 = *(_DWORD *)(v8 + 16) - (_DWORD)v9;
      v11 = v6 >= v10 ? *(_DWORD *)(v8 + 16) - (_DWORD)v9 : v6;
      v12 = memcmp(v9, v5, v11);
      if ( v12 )
        break;
      if ( v10 < v6 )
        goto LABEL_10;
LABEL_4:
      i >>= 1;
      if ( !v7 )
        return v3;
    }
    if ( v12 >= 0 )
      goto LABEL_4;
LABEL_10:
    i = i - 1 - v7;
  }
  return v3;
}


// ===== 5385cc glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::gui::CGUIEnvironment::SFace const&) =====
int __fastcall glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  int v8; // r6

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFace const*,glitch::gui::CGUIEnvironment::SFace,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace,glitch::gui::CGUIEnvironment::SFace>,int>(
         v4,
         v3,
         a2);
  v8 = v7;
  if ( v7 == a1[1]
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         v7,
         a2)
    || std::operator<<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
         a2,
         v8) )
  {
    return -1;
  }
  else
  {
    return -1227133513 * ((v8 - *a1) >> 2);
  }
}


// ===== 538670 glitch::gui::CGUIEnvironment::writeGUIElement(glitch::io::IXMLWriter *,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::writeGUIElement(
        int this,
        glitch::io::IXMLWriter *a2,
        glitch::gui::IGUIElement *a3)
{
  bool v3; // zf
  int v6; // r8
  int v7; // r6
  glitch::io::IAttributes *v8; // r7
  int v9; // r0
  char *v10; // r9
  const char *v11; // r0
  _DWORD *i; // r8
  _BYTE v13[68]; // [sp+28h] [bp-5Ch] BYREF
  void *p; // [sp+6Ch] [bp-18h]
  _BYTE v15[20]; // [sp+70h] [bp-14h] BYREF

  v3 = a2 == nullptr;
  if ( a2 )
    v3 = a3 == nullptr;
  v6 = v3;
  v7 = this;
  if ( !v3 )
  {
    v8 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(this + 448) + 100))(
                                      *(_DWORD *)(this + 448),
                                      v6);
    (*(void (__fastcall **)(glitch::gui::IGUIElement *, glitch::io::IAttributes *, int))(*(_DWORD *)a3 + 116))(
      a3,
      v8,
      v6);
    v9 = (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)v8 + 12))(v8);
    v10 = (char *)v9;
    if ( v9 )
    {
      if ( a3 == (glitch::gui::IGUIElement *)(v7 + 8) )
      {
        v10 = glitch::gui::GLITCH_XML_FORMAT_GUI_ENV[0];
        (*(void (__fastcall **)(glitch::io::IXMLWriter *, char *, int, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)a2 + 16))(
          a2,
          glitch::gui::GLITCH_XML_FORMAT_GUI_ENV[0],
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6);
      }
      else
      {
        v10 = glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT[0];
        v11 = (const char *)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a3 + 112))(a3);
        glitch::core::stringc2stringw((glitch::core *)v13, v11);
        (*(void (__fastcall **)(glitch::io::IXMLWriter *, char *, int, char *, void *, int, int, int, int, int, int, int, int))(*(_DWORD *)a2 + 16))(
          a2,
          v10,
          v6,
          glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE,
          p,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6,
          v6);
        if ( p != v13 && p )
          GlitchFree(p);
      }
      (*(void (__fastcall **)(glitch::io::IXMLWriter *))(*(_DWORD *)a2 + 36))(a2);
      (*(void (__fastcall **)(glitch::io::IXMLWriter *))(*(_DWORD *)a2 + 36))(a2);
      glitch::io::CXMLAttributesWriter::CXMLAttributesWriter((glitch::io::CXMLAttributesWriter *)v15, a2, 1, nullptr);
      glitch::io::CXMLAttributesWriter::write((glitch::io::CXMLAttributesWriter *)v15, v8);
      (*(void (__fastcall **)(glitch::io::IXMLWriter *))(*(_DWORD *)a2 + 36))(a2);
      glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter((glitch::io::CXMLAttributesWriter *)v15);
    }
    for ( i = *(_DWORD **)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a3 + 104))(a3);
          i != (_DWORD *)(*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a3 + 104))(a3);
          i = (_DWORD *)*i )
    {
      if ( !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)i[2] + 52))(i[2]) )
        (*(void (__fastcall **)(int, glitch::io::IXMLWriter *, _DWORD))(*(_DWORD *)v7 + 256))(v7, a2, i[2]);
    }
    if ( (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)v8 + 12))(v8) )
    {
      (*(void (__fastcall **)(glitch::io::IXMLWriter *, char *))(*(_DWORD *)a2 + 28))(a2, v10);
      (*(void (__fastcall **)(glitch::io::IXMLWriter *))(*(_DWORD *)a2 + 36))(a2);
      (*(void (__fastcall **)(glitch::io::IXMLWriter *))(*(_DWORD *)a2 + 36))(a2);
    }
    return glitch::IReferenceCounted::drop(v8);
  }
  return this;
}


// ===== 53892c std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 7;
    v4 = (void **)v1[5];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 538984 std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 7;
    v4 = (void **)v1[5];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 5389dc std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 8;
    v4 = (void **)v1[5];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 538a34 std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 7;
    v4 = (void **)v1[5];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 538a8c std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIEnvironment::SFont const&) =====
void __fastcall std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  _DWORD *v10; // r10
  void **v11; // r5
  void **v12; // r8
  void **v13; // r3

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    v5 = -1227133513 * (((int)v2 - *a1) >> 2);
    if ( v5 )
      v6 = 1840700270 * (((int)v2 - *a1) >> 2);
    else
      v6 = 1;
    if ( v6 > 0x9249249 || v5 > v6 )
      v7 = -1;
    else
      v7 = 7 * v6;
    v8 = GlitchAlloc(v7 * 4, 0);
    v9 = std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFont *,glitch::gui::CGUIEnvironment::SFont *,int>(
           *a1,
           (int)v2,
           v8);
    v9[4] = v9;
    v9[5] = v9;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v10 = v9 + 7;
    v9[6] = *(_DWORD *)(a2 + 24);
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 7;
        v13 = (void **)v11[5];
        if ( v13 != v11 )
        {
          if ( v13 )
            GlitchFree(v11[5]);
        }
      }
      while ( v12 != v11 );
      v12 = (void **)*a1;
    }
    GlitchFree(v12);
    a1[2] = (int)&v8[v7];
    *a1 = (int)v8;
    a1[1] = (int)v10;
  }
  else
  {
    v2[4] = v2;
    v2[5] = v2;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v2[6] = *(_DWORD *)(a2 + 24);
    a1[1] += 28;
  }
}


// ===== 538bdc std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIEnvironment::SSpriteBank const&) =====
void __fastcall std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  _DWORD *v10; // r10
  void **v11; // r5
  void **v12; // r8
  void **v13; // r3

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    v5 = -1227133513 * (((int)v2 - *a1) >> 2);
    if ( v5 )
      v6 = 1840700270 * (((int)v2 - *a1) >> 2);
    else
      v6 = 1;
    if ( v6 > 0x9249249 || v5 > v6 )
      v7 = -1;
    else
      v7 = 7 * v6;
    v8 = GlitchAlloc(v7 * 4, 0);
    v9 = std::priv::__ucopy<glitch::gui::CGUIEnvironment::SSpriteBank *,glitch::gui::CGUIEnvironment::SSpriteBank *,int>(
           *a1,
           (int)v2,
           v8);
    v9[4] = v9;
    v9[5] = v9;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v10 = v9 + 7;
    v9[6] = *(_DWORD *)(a2 + 24);
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 7;
        v13 = (void **)v11[5];
        if ( v13 != v11 )
        {
          if ( v13 )
            GlitchFree(v11[5]);
        }
      }
      while ( v12 != v11 );
      v12 = (void **)*a1;
    }
    GlitchFree(v12);
    a1[2] = (int)&v8[v7];
    *a1 = (int)v8;
    a1[1] = (int)v10;
  }
  else
  {
    v2[4] = v2;
    v2[5] = v2;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v2[6] = *(_DWORD *)(a2 + 24);
    a1[1] += 28;
  }
}


// ===== 538d2c std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIEnvironment::SFace const&) =====
void __fastcall std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  _DWORD *v10; // r10
  void **v11; // r5
  void **v12; // r8
  void **v13; // r3

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    v5 = -1227133513 * (((int)v2 - *a1) >> 2);
    if ( v5 )
      v6 = 1840700270 * (((int)v2 - *a1) >> 2);
    else
      v6 = 1;
    if ( v6 > 0x9249249 || v5 > v6 )
      v7 = -1;
    else
      v7 = 7 * v6;
    v8 = GlitchAlloc(v7 * 4, 0);
    v9 = std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(
           *a1,
           (int)v2,
           v8);
    v9[4] = v9;
    v9[5] = v9;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v10 = v9 + 7;
    v9[6] = *(_DWORD *)(a2 + 24);
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 7;
        v13 = (void **)v11[5];
        if ( v13 != v11 )
        {
          if ( v13 )
            GlitchFree(v11[5]);
        }
      }
      while ( v12 != v11 );
      v12 = (void **)*a1;
    }
    GlitchFree(v12);
    a1[2] = (int)&v8[v7];
    *a1 = (int)v8;
    a1[1] = (int)v10;
  }
  else
  {
    v2[4] = v2;
    v2[5] = v2;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v2[6] = *(_DWORD *)(a2 + 24);
    a1[1] += 28;
  }
}


// ===== 538e7c std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIEnvironment::STTFont const&) =====
void __fastcall std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  _DWORD *v10; // r10
  void **v11; // r5
  void **v12; // r8
  void **v13; // r3

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    v5 = ((int)v2 - *a1) >> 5;
    if ( v5 )
      v6 = 2 * v5;
    else
      v6 = 1;
    if ( v6 > 0x7FFFFFF || v5 > v6 )
      v7 = -8;
    else
      v7 = 8 * v6;
    v8 = GlitchAlloc(v7 * 4, 0);
    v9 = std::priv::__ucopy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(
           *a1,
           (int)v2,
           v8);
    v9[4] = v9;
    v9[5] = v9;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v10 = v9 + 8;
    v9[6] = *(_DWORD *)(a2 + 24);
    v9[7] = *(_DWORD *)(a2 + 28);
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 8;
        v13 = (void **)v11[5];
        if ( v13 != v11 )
        {
          if ( v13 )
            GlitchFree(v11[5]);
        }
      }
      while ( v12 != v11 );
      v12 = (void **)*a1;
    }
    GlitchFree(v12);
    a1[2] = (int)&v8[v7];
    *a1 = (int)v8;
    a1[1] = (int)v10;
  }
  else
  {
    v2[4] = v2;
    v2[5] = v2;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v2[6] = *(_DWORD *)(a2 + 24);
    v2[7] = *(_DWORD *)(a2 + 28);
    a1[1] += 32;
  }
}


// ===== 538fb8 std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIEnvironment::SFace*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  int v2; // r3
  int v4; // r0
  void *v6; // r3
  void *v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = (int)(a2 + 7);
  if ( a2 + 7 != (_DWORD *)v2 )
  {
    std::priv::__copy<glitch::gui::CGUIEnvironment::SFace *,glitch::gui::CGUIEnvironment::SFace *,int>(v4, v2, a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  v6 = (void *)(v4 - 28);
  *(_DWORD *)(a1 + 4) = v4 - 28;
  v7 = *(void **)(v4 - 8);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  return a2;
}


// ===== 539020 glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this, int *a2)
{
  int v2; // r3
  char *i; // r4
  char *v5; // r5
  char *v6; // r0
  char *v7; // r0
  char *v8; // r0
  char *v9; // r0
  char *v10; // r4

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[1];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[2];
  v5 = (char *)this + 4;
  for ( i = *((char **)this + 1); i != v5; i = *(char **)i )
  {
    *(_DWORD *)(*((_DWORD *)i + 2) + 36) = 0;
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 16)));
  }
  v6 = *((char **)this + 75);
  if ( v6 != (char *)this + 232 && v6 )
    GlitchFree(v6);
  v7 = *((char **)this + 57);
  if ( v7 != (char *)this + 160 && v7 )
    GlitchFree(v7);
  v8 = *((char **)this + 8);
  if ( v8 != (char *)this + 12 && v8 )
    GlitchFree(v8);
  v9 = *((char **)this + 1);
  if ( v9 != v5 )
  {
    while ( 1 )
    {
      v10 = *(char **)v9;
      GlitchFree(v9);
      if ( v10 == v5 )
        break;
      v9 = v10;
    }
    v9 = v5;
  }
  *((_DWORD *)this + 1) = v9;
  *((_DWORD *)v5 + 1) = v9;
}


// ===== 539110 `non-virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(
        glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this - 8));
}


// ===== 539118 glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment *v1; // r2
  glitch::gui::IGUIElement *v3; // r8
  glitch::IReferenceCounted *v4; // r0
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  glitch::IReferenceCounted *v7; // r0
  _DWORD *v8; // r3
  int v9; // r1
  int v10; // r12
  int v11; // r5
  unsigned int v12; // r6
  glitch::IReferenceCounted *v13; // r0
  int v14; // r2
  int v15; // r5
  unsigned int v16; // r6
  int v17; // r2
  int v18; // r5
  unsigned int v19; // r6
  int v20; // r3
  unsigned int v21; // r5
  int v22; // r3
  unsigned int v23; // r5
  glitch::IReferenceCounted *v24; // r0
  void *v25; // r0

  v1 = *((glitch::gui::CGUIEnvironment **)this + 107);
  *(_DWORD *)this = off_96CDD8;
  *((_DWORD *)this + 2) = off_96CEF8;
  *((_DWORD *)this + 115) = off_96CF8C;
  *((_DWORD *)this + 116) = off_96CFAC;
  if ( v1 )
  {
    v3 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
    if ( v1 != (glitch::gui::CGUIEnvironment *)((char *)this + 8) )
    {
      glitch::IReferenceCounted::drop((glitch::gui::CGUIEnvironment *)((char *)v1 + *(_DWORD *)(*(_DWORD *)v1 - 16)));
      *((_DWORD *)this + 107) = 0;
    }
  }
  else
  {
    v3 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  }
  v4 = *((glitch::IReferenceCounted **)this + 106);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop(v4);
    *((_DWORD *)this + 106) = 0;
  }
  v5 = *((_DWORD **)this + 108);
  if ( v5 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
    *((_DWORD *)this + 108) = 0;
  }
  v6 = *((_DWORD **)this + 90);
  if ( v6 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
    *((_DWORD *)this + 90) = 0;
  }
  v7 = *((glitch::IReferenceCounted **)this + 114);
  if ( v7 )
  {
    glitch::IReferenceCounted::drop(v7);
    *((_DWORD *)this + 114) = 0;
  }
  v8 = *((_DWORD **)this + 111);
  if ( v8 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
    *((_DWORD *)this + 111) = 0;
  }
  v9 = *((_DWORD *)this + 103);
  v10 = *((_DWORD *)this + 104);
  if ( 1227133513 * ((v10 - v9) >> 2) )
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(glitch::IReferenceCounted **)(v9 + v11 + 24);
      ++v12;
      v11 += 28;
      if ( v13 )
      {
        glitch::IReferenceCounted::drop(v13);
        v9 = *((_DWORD *)this + 103);
        v10 = *((_DWORD *)this + 104);
      }
    }
    while ( v12 < -1227133513 * ((v10 - v9) >> 2) );
  }
  v14 = *((_DWORD *)this + 94);
  if ( 1227133513 * ((*((_DWORD *)this + 95) - v14) >> 2) )
  {
    v15 = 0;
    v16 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v14 + v15 + 24));
      v14 = *((_DWORD *)this + 94);
      ++v16;
      v15 += 28;
    }
    while ( v16 < -1227133513 * ((*((_DWORD *)this + 95) - v14) >> 2) );
  }
  v17 = *((_DWORD *)this + 100);
  if ( 1227133513 * ((*((_DWORD *)this + 101) - v17) >> 2) )
  {
    v18 = 0;
    v19 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v17 + v18 + 24));
      v17 = *((_DWORD *)this + 100);
      ++v19;
      v18 += 28;
    }
    while ( v19 < -1227133513 * ((*((_DWORD *)this + 101) - v17) >> 2) );
  }
  v20 = *((_DWORD *)this + 97);
  if ( (unsigned int)(*((_DWORD *)this + 98) - v20) >> 5 )
  {
    v21 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v20 + 32 * v21 + 28));
      v20 = *((_DWORD *)this + 97);
      ++v21;
    }
    while ( v21 < (*((_DWORD *)this + 98) - v20) >> 5 );
  }
  v22 = *((_DWORD *)this + 91);
  if ( (unsigned int)(*((_DWORD *)this + 92) - v22) >> 2 )
  {
    v23 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v22 + 4 * v23));
      v22 = *((_DWORD *)this + 91);
      ++v23;
    }
    while ( v23 < (*((_DWORD *)this + 92) - v22) >> 2 );
  }
  v24 = *((glitch::IReferenceCounted **)this + 112);
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 103);
  std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 100);
  std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 97);
  std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 94);
  v25 = *((void **)this + 91);
  if ( v25 )
    GlitchFree(v25);
  glitch::gui::IGUIElement::~IGUIElement(v3, (int *)&off_96CFBC);
}


// ===== 53946c `non-virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `non-virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(
        glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this - 8));
}


// ===== 539474 glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment(this);
  LC_API_FREE_0(this);
}


// ===== 539490 glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this, int *a2)
{
  int v2; // r3
  glitch::gui::CGUIEnvironment *v5; // r3
  glitch::gui::IGUIElement *v6; // r8
  glitch::IReferenceCounted *v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  _DWORD *v11; // r3
  int v12; // r1
  int v13; // r12
  int v14; // r5
  unsigned int v15; // r6
  glitch::IReferenceCounted *v16; // r0
  int v17; // r2
  int v18; // r5
  unsigned int v19; // r6
  int v20; // r2
  int v21; // r5
  unsigned int v22; // r6
  int v23; // r3
  unsigned int v24; // r5
  int v25; // r3
  unsigned int v26; // r5
  glitch::IReferenceCounted *v27; // r0
  void *v28; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *((_DWORD *)this + 2) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[5];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[6];
  v5 = *((glitch::gui::CGUIEnvironment **)this + 107);
  if ( v5 )
  {
    v6 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
    if ( v5 != (glitch::gui::CGUIEnvironment *)((char *)this + 8) )
    {
      glitch::IReferenceCounted::drop((glitch::gui::CGUIEnvironment *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 16)));
      *((_DWORD *)this + 107) = 0;
    }
  }
  else
  {
    v6 = (glitch::gui::CGUIEnvironment *)((char *)this + 8);
  }
  v7 = *((glitch::IReferenceCounted **)this + 106);
  if ( v7 )
  {
    glitch::IReferenceCounted::drop(v7);
    *((_DWORD *)this + 106) = 0;
  }
  v8 = *((_DWORD **)this + 108);
  if ( v8 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 16)));
    *((_DWORD *)this + 108) = 0;
  }
  v9 = *((_DWORD **)this + 90);
  if ( v9 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
    *((_DWORD *)this + 90) = 0;
  }
  v10 = *((glitch::IReferenceCounted **)this + 114);
  if ( v10 )
  {
    glitch::IReferenceCounted::drop(v10);
    *((_DWORD *)this + 114) = 0;
  }
  v11 = *((_DWORD **)this + 111);
  if ( v11 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v11 + *(_DWORD *)(*v11 - 12)));
    *((_DWORD *)this + 111) = 0;
  }
  v12 = *((_DWORD *)this + 103);
  v13 = *((_DWORD *)this + 104);
  if ( 1227133513 * ((v13 - v12) >> 2) )
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(glitch::IReferenceCounted **)(v12 + v14 + 24);
      ++v15;
      v14 += 28;
      if ( v16 )
      {
        glitch::IReferenceCounted::drop(v16);
        v12 = *((_DWORD *)this + 103);
        v13 = *((_DWORD *)this + 104);
      }
    }
    while ( v15 < -1227133513 * ((v13 - v12) >> 2) );
  }
  v17 = *((_DWORD *)this + 94);
  if ( 1227133513 * ((*((_DWORD *)this + 95) - v17) >> 2) )
  {
    v18 = 0;
    v19 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v17 + v18 + 24));
      v17 = *((_DWORD *)this + 94);
      ++v19;
      v18 += 28;
    }
    while ( v19 < -1227133513 * ((*((_DWORD *)this + 95) - v17) >> 2) );
  }
  v20 = *((_DWORD *)this + 100);
  if ( 1227133513 * ((*((_DWORD *)this + 101) - v20) >> 2) )
  {
    v21 = 0;
    v22 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v20 + v21 + 24));
      v20 = *((_DWORD *)this + 100);
      ++v22;
      v21 += 28;
    }
    while ( v22 < -1227133513 * ((*((_DWORD *)this + 101) - v20) >> 2) );
  }
  v23 = *((_DWORD *)this + 97);
  if ( (unsigned int)(*((_DWORD *)this + 98) - v23) >> 5 )
  {
    v24 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v23 + 32 * v24 + 28));
      v23 = *((_DWORD *)this + 97);
      ++v24;
    }
    while ( v24 < (*((_DWORD *)this + 98) - v23) >> 5 );
  }
  v25 = *((_DWORD *)this + 91);
  if ( (unsigned int)(*((_DWORD *)this + 92) - v25) >> 2 )
  {
    v26 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v25 + 4 * v26));
      v25 = *((_DWORD *)this + 91);
      ++v26;
    }
    while ( v26 < (*((_DWORD *)this + 92) - v25) >> 2 );
  }
  v27 = *((glitch::IReferenceCounted **)this + 112);
  if ( v27 )
    glitch::IReferenceCounted::drop(v27);
  std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 103);
  std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 100);
  std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 97);
  std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 94);
  v28 = *((void **)this + 91);
  if ( v28 )
    GlitchFree(v28);
  glitch::gui::IGUIElement::~IGUIElement(v6, a2 + 1);
}


// ===== 5397d0 std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIEnvironment::STTFont*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  int v2; // r3
  int v4; // r0
  void *v6; // r3
  void *v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = (int)(a2 + 8);
  if ( a2 + 8 != (_DWORD *)v2 )
  {
    std::priv::__copy<glitch::gui::CGUIEnvironment::STTFont *,glitch::gui::CGUIEnvironment::STTFont *,int>(v4, v2, a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  v6 = (void *)(v4 - 32);
  *(_DWORD *)(a1 + 4) = v4 - 32;
  v7 = *(void **)(v4 - 12);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  return a2;
}


// ===== 539838 glitch::gui::IGUIElement::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::IGUIElement::deserializeAttributes(float *a1, int a2)
{
  void (__fastcall *v4)(float *, int); // r8
  int v5; // r0
  void (__fastcall *v6)(float *, void *); // r10
  void (__fastcall *v7)(float *, void *); // r10
  void (__fastcall *v8)(float *, int); // r8
  int v9; // r0
  void (__fastcall *v10)(float *, int); // r8
  int v11; // r0
  int v12; // r2
  int v13; // r3
  bool v14; // cc
  int v15; // r9
  int v16; // r11
  int v17; // r10
  int v18; // r0
  _BYTE v20[68]; // [sp+Ch] [bp-88h] BYREF
  void *v21; // [sp+50h] [bp-44h]
  int v22[4]; // [sp+54h] [bp-40h] BYREF
  int v23; // [sp+64h] [bp-30h] BYREF
  int v24; // [sp+68h] [bp-2Ch]
  int v25; // [sp+6Ch] [bp-28h] BYREF
  int v26; // [sp+70h] [bp-24h]
  _BYTE v27[20]; // [sp+74h] [bp-20h] BYREF
  void *p; // [sp+88h] [bp-Ch]

  v4 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 88);
  v5 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "Id");
  v4(a1, v5);
  v6 = *(void (__fastcall **)(float *, void *))(*(_DWORD *)a1 + 96);
  (*(void (__fastcall **)(_BYTE *, int, const char *))(*(_DWORD *)a2 + 132))(v27, a2, "Name");
  v6(a1, p);
  if ( p != v27 && p )
    GlitchFree(p);
  v7 = *(void (__fastcall **)(float *, void *))(*(_DWORD *)a1 + 68);
  (*(void (__fastcall **)(_BYTE *, int, char *))(*(_DWORD *)a2 + 156))(v20, a2, "Caption");
  v7(a1, v21);
  if ( v21 != v20 && v21 )
    GlitchFree(v21);
  v8 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 48);
  v9 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Visible");
  v8(a1, v9);
  v10 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 64);
  v11 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Enabled");
  v10(a1, v11);
  *((_BYTE *)a1 + 308) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "TabStop");
  *((_BYTE *)a1 + 316) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "TabGroup");
  *((_DWORD *)a1 + 78) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "TabOrder");
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 484))(&v25, a2, "MaxSize");
  v12 = v25;
  *((_DWORD *)a1 + 35) = v26;
  *((_DWORD *)a1 + 34) = v12;
  (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 12))(a1);
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 484))(&v23, a2, "MinSize");
  v13 = v24;
  v14 = v23 <= 0;
  v25 = v23;
  v26 = v24;
  *((_DWORD *)a1 + 36) = v23;
  if ( v14 )
    *((_DWORD *)a1 + 36) = 1;
  *((_DWORD *)a1 + 37) = v13;
  if ( v13 <= 0 )
    *((_DWORD *)a1 + 37) = 1;
  (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 12))(a1);
  *((_BYTE *)a1 + 155) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "NoClip");
  *((_BYTE *)a1 + 156) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "IgnoreAllClipping");
  v15 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "LeftAlign",
          glitch::gui::GUIAlignmentNames);
  v16 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "RightAlign",
          glitch::gui::GUIAlignmentNames);
  v17 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "TopAlign",
          glitch::gui::GUIAlignmentNames);
  v18 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "BottomAlign",
          glitch::gui::GUIAlignmentNames);
  glitch::gui::IGUIElement::setAlignment(*(float *)&a1, v15, v16, v17, v18);
  (*(void (__fastcall **)(int *, int, char *))(*(_DWORD *)a2 + 508))(v22, a2, "Rect");
  return glitch::gui::IGUIElement::setRelativePosition(a1, v22);
}


// ===== 539bdc `virtual thunk to'glitch::gui::IGUIElement::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::IGUIElement::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::IGUIElement::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 539bec glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  char *i; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r0
  char *v6; // r0
  char *v7; // r0
  char *v8; // r4

  *(_DWORD *)this = off_96CBA8;
  *((_DWORD *)this + 86) = off_96CC3C;
  *((_DWORD *)this + 87) = off_96CC5C;
  v3 = (char *)this + 4;
  for ( i = *((char **)this + 1); i != v3; i = *(char **)i )
  {
    *(_DWORD *)(*((_DWORD *)i + 2) + 36) = 0;
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 16)));
  }
  v4 = *((char **)this + 75);
  if ( v4 != (char *)this + 232 && v4 )
    GlitchFree(v4);
  v5 = *((char **)this + 57);
  if ( v5 != (char *)this + 160 && v5 )
    GlitchFree(v5);
  v6 = *((char **)this + 8);
  if ( v6 != (char *)this + 12 && v6 )
    GlitchFree(v6);
  v7 = *((char **)this + 1);
  if ( v7 != v3 )
  {
    while ( 1 )
    {
      v8 = *(char **)v7;
      GlitchFree(v7);
      if ( v8 == v3 )
        break;
      v7 = v8;
    }
    v7 = v3;
  }
  *((_DWORD *)this + 1) = v7;
  *((_DWORD *)v3 + 1) = v7;
}


// ===== 539ce8 `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  glitch::gui::IGUIElement::~IGUIElement((glitch::gui::IGUIElement *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 539cf8 `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  glitch::gui::IGUIElement::~IGUIElement((glitch::gui::IGUIElement *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 539d08 glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  glitch::gui::IGUIElement::~IGUIElement(this);
  LC_API_FREE_0(this);
}


// ===== 539d24 `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  glitch::gui::IGUIElement::~IGUIElement((glitch::gui::IGUIElement *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 539d34 `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  glitch::gui::IGUIElement::~IGUIElement((glitch::gui::IGUIElement *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 539d44 glitch::gui::CGUIEnvironment::STTFont::operator<(glitch::gui::CGUIEnvironment::STTFont const&) =====
bool __fastcall glitch::gui::CGUIEnvironment::STTFont::operator<(int a1, int a2)
{
  const void *v2; // r6
  const void *v3; // r5
  signed int v4; // r4
  signed int v6; // r10
  size_t v8; // r2
  unsigned int v9; // r0

  v2 = *(const void **)(a1 + 20);
  v3 = *(const void **)(a2 + 20);
  v4 = *(_DWORD *)(a1 + 16) - (_DWORD)v2;
  v6 = *(_DWORD *)(a2 + 16) - (_DWORD)v3;
  if ( v4 == v6 && !memcmp(*(const void **)(a1 + 20), *(const void **)(a2 + 20), v4) )
    return *(_DWORD *)(a1 + 24) < *(_DWORD *)(a2 + 24);
  if ( v6 >= v4 )
    v8 = v4;
  else
    v8 = v6;
  v9 = memcmp(v2, v3, v8);
  if ( !v9 )
  {
    if ( v4 >= v6 )
      v9 = v4 > v6;
    else
      v9 = -1;
  }
  return v9 >> 31;
}


// ===== 539ddc std::priv::__lower_bound<glitch::gui::CGUIEnvironment::STTFont const*,glitch::gui::CGUIEnvironment::STTFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,int>(glitch::gui::CGUIEnvironment::STTFont const*,glitch::gui::CGUIEnvironment::STTFont const*,glitch::gui::CGUIEnvironment::STTFont const&,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::gui::CGUIEnvironment::STTFont const*,glitch::gui::CGUIEnvironment::STTFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r6
  int i; // r4
  int v6; // r5
  int v7; // r7

  v3 = (a2 - a1) >> 5;
  for ( i = a1; v3 > 0; i = v7 + 32 )
  {
    while ( 1 )
    {
      v6 = v3 >> 1;
      v7 = i + 32 * (v3 >> 1);
      if ( glitch::gui::CGUIEnvironment::STTFont::operator<(v7, a3) )
        break;
      v3 >>= 1;
      if ( !v6 )
        return i;
    }
    v3 = v3 - 1 - v6;
  }
  return i;
}


// ===== 539e3c glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::gui::CGUIEnvironment::STTFont const&) =====
int __fastcall glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  int v8; // r6

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::gui::CGUIEnvironment::STTFont const*,glitch::gui::CGUIEnvironment::STTFont,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont,glitch::gui::CGUIEnvironment::STTFont>,int>(
         v4,
         v3,
         a2);
  v8 = v7;
  if ( v7 == a1[1]
    || glitch::gui::CGUIEnvironment::STTFont::operator<(v7, a2)
    || glitch::gui::CGUIEnvironment::STTFont::operator<(a2, v8) )
  {
    return -1;
  }
  else
  {
    return (v8 - *a1) >> 5;
  }
}


// ===== 539ec8 glitch::gui::IGUIElement::setName(char const*) =====
_DWORD *__fastcall glitch::gui::IGUIElement::setName(glitch::gui::IGUIElement *this, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (_DWORD *)this + 3,
           a2,
           &a2[v4]);
}


// ===== 539ef0 glitch::gui::CGUIEnvironment::loadBuiltInFont(void) =====
void __fastcall glitch::gui::CGUIEnvironment::loadBuiltInFont(glitch::gui::CGUIEnvironment *this)
{
  _DWORD *v1; // r5
  glitch::IReferenceCounted *File; // r9
  glitch::gui::CGUIFont *v4; // r10
  bool v5; // [sp+0h] [bp-2Ch]
  int v6; // [sp+4h] [bp-28h]
  _DWORD v7[4]; // [sp+8h] [bp-24h] BYREF
  _BYTE *v8; // [sp+18h] [bp-14h]
  void *p; // [sp+1Ch] [bp-10h]
  glitch::gui::CGUIFont *v10; // [sp+20h] [bp-Ch]

  v1 = *((_DWORD **)this + 106);
  if ( v1 && (v1[34] & 0x2000) != 0 )
  {
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(*v1 + 160))(*((_DWORD *)this + 106), 0x2000, 0);
    v6 = 1;
  }
  else
  {
    v6 = 0;
  }
  File = (glitch::IReferenceCounted *)glitch::io::createMemoryReadFile(
                                        (glitch::io *)glitch::gui::BuiltInFontData,
                                        (void *)glitch::gui::BuiltInFontDataSize,
                                        (int)"#DefaultFont",
                                        nullptr,
                                        v5);
  v4 = (glitch::gui::CGUIFont *)operator new(0x48u, 0);
  glitch::gui::CGUIFont::CGUIFont(v4, this, "#DefaultFont");
  if ( glitch::gui::CGUIFont::load(v4, File) )
  {
    v8 = v7;
    p = v7;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v7,
      0x10u);
    *v8 = 0;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v7,
      "#DefaultFont",
      "");
    v10 = v4;
    std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      (int *)this + 94,
      (int)v7);
    glitch::IReferenceCounted::drop(File);
    if ( p != v7 && p )
      GlitchFree(p);
    if ( v1 && v6 != ((v1[34] >> 13) & 1) )
      goto LABEL_10;
  }
  else
  {
    glitch::os::Printer::log("Error: Could not load built-in Font. Did you compile without the BMP loader?", 3);
    glitch::IReferenceCounted::drop(v4);
    glitch::IReferenceCounted::drop(File);
    if ( v1 && ((v1[34] >> 13) & 1) != v6 )
LABEL_10:
      (*(void (__fastcall **)(_DWORD *, int))(*v1 + 160))(v1, 0x2000);
  }
}


// ===== 53a0c0 glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::video::IVideoDriver *,glitch::IOSOperator *) =====
int __fastcall glitch::gui::CGUIEnvironment::CGUIEnvironment(int a1, int *a2, int a3, int a4)
{
  int v6; // r0
  int v7; // r8
  int v9; // r3
  int v10; // r12
  int v11; // r3
  int v12; // r3
  bool v13; // zf
  int v14; // r3
  glitch::gui::CDefaultGUIElementFactory *v15; // r5
  _DWORD *Skin; // r5
  _DWORD v18[5]; // [sp+0h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 468) = 1;
  *(_DWORD *)(a1 + 460) = off_96D0BC;
  *(_DWORD *)(a1 + 464) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 460] = off_96D0DC;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_96CCC0;
  v6 = a1 + 8;
  v7 = a4;
  if ( a3 )
    a4 = *(_DWORD *)(a3 + 204);
  if ( a3 )
  {
    v9 = *(_DWORD *)(a4 - 4);
    v10 = *(_DWORD *)(v9 + 12);
    v11 = *(_DWORD *)(v9 + 16);
  }
  else
  {
    v10 = 0;
    v11 = 0;
  }
  v18[2] = v10;
  v18[3] = v11;
  v18[0] = 0;
  v18[1] = 0;
  glitch::gui::IGUIElement::IGUIElement(v6, (int *)&off_96CFBC, v18);
  *(_DWORD *)(a1 + 424) = a3;
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 464) = off_96CFAC;
  *(_DWORD *)a1 = off_96CDD8;
  *(_DWORD *)(a1 + 8) = off_96CEF8;
  *(_DWORD *)(a1 + 460) = off_96CF8C;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  v12 = *a2;
  v13 = *a2 == 0;
  *(_DWORD *)(a1 + 448) = *a2;
  if ( !v13 )
    ++*(_DWORD *)(v12 + 4);
  v14 = *(_DWORD *)(a1 + 424);
  *(_DWORD *)(a1 + 452) = 0;
  *(_DWORD *)(a1 + 456) = v7;
  if ( v14 )
  {
    ++*(_DWORD *)(v14 + 4);
    v7 = *(_DWORD *)(a1 + 456);
  }
  if ( v7 )
    ++*(_DWORD *)(v7 + 4);
  v15 = (glitch::gui::CDefaultGUIElementFactory *)operator new(0xCu, 0);
  glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(v15, (glitch::gui::IGUIEnvironment *)a1);
  glitch::gui::CGUIEnvironment::registerGUIElementFactory(a1, (int)v15);
  glitch::IReferenceCounted::drop(v15);
  glitch::gui::CGUIEnvironment::loadBuiltInFont((glitch::gui::CGUIEnvironment *)a1);
  Skin = glitch::gui::CGUIEnvironment::createSkin((_DWORD *)a1, 1);
  glitch::gui::CGUIEnvironment::setSkin(a1, Skin);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)Skin + *(_DWORD *)(*Skin - 12)));
  *(_DWORD *)(a1 + 356) = 1000;
  *(_DWORD *)(a1 + 360) = 0;
  *(_BYTE *)(a1 + 324) = 1;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 344) = a1;
  return a1;
}


// ===== 53a2d0 glitch::gui::createGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::video::IVideoDriver *,glitch::IOSOperator *) =====
void *__fastcall glitch::gui::createGUIEnvironment(int *a1, int a2, int a3)
{
  void *v6; // r4

  v6 = operator new(0x1D8u, 0);
  glitch::gui::CGUIEnvironment::CGUIEnvironment((int)v6, a1, a2, a3);
  return v6;
}


// ===== 53a308 glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::video::IVideoDriver *,glitch::IOSOperator *) =====
int __fastcall glitch::gui::CGUIEnvironment::CGUIEnvironment(int a1, int *a2, int *a3, int a4, int a5)
{
  Elf32_Dyn **v5; // r12
  bool v7; // zf
  int v9; // r3
  int v10; // r0
  int v12; // r3
  int v14; // r7
  int v15; // r3
  int v16; // r3
  int v17; // r3
  glitch::gui::CDefaultGUIElementFactory *v18; // r5
  _DWORD *Skin; // r5
  _DWORD v21[5]; // [sp+0h] [bp-14h] BYREF

  v5 = &__GLOBAL_OFFSET_TABLE_;
  v7 = a4 == 0;
  v9 = 1;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_96CCC0;
  v10 = a1 + 8;
  if ( v7 )
    v5 = (Elf32_Dyn **)a4;
  else
    v9 = *(_DWORD *)(*(_DWORD *)(a4 + 204) - 4);
  if ( v7 )
  {
    v12 = a4;
  }
  else
  {
    v5 = *(Elf32_Dyn ***)(v9 + 12);
    v12 = *(_DWORD *)(v9 + 16);
  }
  v21[2] = v5;
  v14 = a5;
  v21[3] = v12;
  v21[0] = 0;
  v21[1] = 0;
  glitch::gui::IGUIElement::IGUIElement(v10, a2 + 1, v21);
  v15 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + 8) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 12)) = a2[5];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[6];
  *(_DWORD *)(a1 + 424) = a4;
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  v16 = *a3;
  v7 = *a3 == 0;
  *(_DWORD *)(a1 + 448) = *a3;
  if ( !v7 )
    ++*(_DWORD *)(v16 + 4);
  v17 = *(_DWORD *)(a1 + 424);
  *(_DWORD *)(a1 + 452) = 0;
  *(_DWORD *)(a1 + 456) = a5;
  if ( v17 )
  {
    ++*(_DWORD *)(v17 + 4);
    v14 = *(_DWORD *)(a1 + 456);
  }
  if ( v14 )
    ++*(_DWORD *)(v14 + 4);
  v18 = (glitch::gui::CDefaultGUIElementFactory *)operator new(0xCu, 0);
  glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(v18, (glitch::gui::IGUIEnvironment *)a1);
  glitch::gui::CGUIEnvironment::registerGUIElementFactory(a1, (int)v18);
  glitch::IReferenceCounted::drop(v18);
  glitch::gui::CGUIEnvironment::loadBuiltInFont((glitch::gui::CGUIEnvironment *)a1);
  Skin = glitch::gui::CGUIEnvironment::createSkin((_DWORD *)a1, 1);
  glitch::gui::CGUIEnvironment::setSkin(a1, Skin);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)Skin + *(_DWORD *)(*Skin - 12)));
  *(_DWORD *)(a1 + 356) = 1000;
  *(_DWORD *)(a1 + 360) = 0;
  *(_BYTE *)(a1 + 324) = 1;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 344) = a1;
  return a1;
}


// ===== 53a4dc glitch::gui::CGUIEnvironment::removeTTFontFace(char const*) =====
int __fastcall glitch::gui::CGUIEnvironment::removeTTFontFace(glitch::gui::CGUIEnvironment *this, char *a2)
{
  size_t v4; // r0
  _BYTE *v5; // r2
  unsigned int v6; // r3
  char v7; // r1
  _BYTE *v8; // r2
  int v9; // r11
  int v10; // r0
  int v11; // r10
  int v12; // r5
  int v14; // r11
  _DWORD v15[4]; // [sp+8h] [bp-24h] BYREF
  _BYTE *v16; // [sp+18h] [bp-14h]
  void *p; // [sp+1Ch] [bp-10h]

  v16 = v15;
  p = v15;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v15,
    0x10u);
  *v16 = 0;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v15,
      a2,
      &a2[v4]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v15,
      "",
      "");
  }
  v5 = p;
  if ( v16 != p )
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      v8 = &v5[v6++];
      if ( (unsigned __int8)(v7 - 65) <= 0x19u )
        v7 += 32;
      *v8 = v7;
      v5 = p;
    }
    while ( v6 < v16 - (_BYTE *)p );
  }
  v9 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 100,
         (int)v15);
  if ( v9 != -1 )
  {
    v10 = *((_DWORD *)this + 97);
    if ( !((unsigned int)(*((_DWORD *)this + 98) - v10) >> 5) )
    {
LABEL_18:
      v14 = 28 * v9;
      v12 = 1;
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 100) + v14 + 24));
      std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 400,
        (_DWORD *)(*((_DWORD *)this + 100) + v14));
      goto LABEL_14;
    }
    v11 = 0;
    while ( !std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
               v10 + 32 * v11,
               a2) )
    {
      v10 = *((_DWORD *)this + 97);
      if ( ++v11 >= (unsigned int)((*((_DWORD *)this + 98) - v10) >> 5) )
        goto LABEL_18;
    }
  }
  v12 = 0;
LABEL_14:
  if ( p != v15 && p )
    GlitchFree(p);
  return v12;
}


// ===== 53a694 glitch::gui::CGUIEnvironment::getSpriteBank(char const*) =====
int __fastcall glitch::gui::CGUIEnvironment::getSpriteBank(glitch::gui::CGUIEnvironment *this, char *a2)
{
  size_t v4; // r0
  _BYTE *v5; // r2
  unsigned int v6; // r3
  char v7; // r1
  _BYTE *v8; // r2
  int v9; // r0
  int v10; // r8
  _DWORD v12[4]; // [sp+0h] [bp-20h] BYREF
  _BYTE *v13; // [sp+10h] [bp-10h]
  void *p; // [sp+14h] [bp-Ch]

  v13 = v12;
  p = v12;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v12,
    0x10u);
  *v13 = 0;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v12,
      a2,
      &a2[v4]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v12,
      "",
      "");
  }
  v5 = p;
  if ( p != v13 )
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      v8 = &v5[v6++];
      if ( (unsigned __int8)(v7 - 65) <= 0x19u )
        v7 += 32;
      *v8 = v7;
      v5 = p;
    }
    while ( v6 < v13 - (_BYTE *)p );
  }
  v9 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 103,
         (int)v12);
  if ( v9 == -1 )
  {
    v10 = (*(int (__fastcall **)(_DWORD, void *))(**((_DWORD **)this + 112) + 68))(*((_DWORD *)this + 112), p);
    if ( v10 )
      v10 = 0;
    else
      glitch::os::Printer::log("Could not load sprite bank because the file does not exist", a2, 3);
  }
  else
  {
    v10 = *(_DWORD *)(*((_DWORD *)this + 103) + 28 * v9 + 24);
  }
  if ( p != v12 && p )
    GlitchFree(p);
  return v10;
}


// ===== 53a814 glitch::gui::CGUIEnvironment::removeTTFontFace(glitch::io::IReadFile *) =====
int __fastcall glitch::gui::CGUIEnvironment::removeTTFontFace(
        glitch::gui::CGUIEnvironment *this,
        glitch::io::IReadFile *a2)
{
  char *v4; // r10
  size_t v5; // r0
  _BYTE *v6; // r2
  unsigned int v7; // r3
  char v8; // r1
  _BYTE *v9; // r2
  int v10; // r11
  int v11; // r9
  int v12; // r10
  char *v13; // r0
  int v14; // r4
  int v16; // r11
  _DWORD v17[4]; // [sp+10h] [bp-24h] BYREF
  _BYTE *v18; // [sp+20h] [bp-14h]
  void *p; // [sp+24h] [bp-10h]

  v18 = v17;
  p = v17;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v17,
    0x10u);
  *v18 = 0;
  if ( a2 )
  {
    v4 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
    v5 = LC_API_STRLEN_0(v4);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v17,
      v4,
      &v4[v5]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v17,
      "",
      "");
  }
  v6 = p;
  if ( v18 != p )
  {
    v7 = 0;
    do
    {
      v8 = v6[v7];
      v9 = &v6[v7++];
      if ( (unsigned __int8)(v8 - 65) <= 0x19u )
        v8 += 32;
      *v9 = v8;
      v6 = p;
    }
    while ( v7 < v18 - (_BYTE *)p );
  }
  v10 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
          (int *)this + 100,
          (int)v17);
  if ( v10 != -1 )
  {
    v11 = *((_DWORD *)this + 97);
    if ( !((unsigned int)(*((_DWORD *)this + 98) - v11) >> 5) )
    {
LABEL_18:
      v16 = 28 * v10;
      v14 = 1;
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 100) + v16 + 24));
      std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 400,
        (_DWORD *)(*((_DWORD *)this + 100) + v16));
      goto LABEL_14;
    }
    v12 = 0;
    while ( 1 )
    {
      v13 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
      if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
             v11 + 32 * v12,
             v13) )
      {
        break;
      }
      v11 = *((_DWORD *)this + 97);
      if ( ++v12 >= (unsigned int)((*((_DWORD *)this + 98) - v11) >> 5) )
        goto LABEL_18;
    }
  }
  v14 = 0;
LABEL_14:
  if ( p != v17 && p )
    GlitchFree(p);
  return v14;
}


// ===== 53a9f0 glitch::gui::CGUIEnvironment::addEmptySpriteBank(char const*) =====
glitch::gui::CGUISpriteBank *__fastcall glitch::gui::CGUIEnvironment::addEmptySpriteBank(
        glitch::gui::CGUIEnvironment *this,
        char *a2)
{
  size_t v4; // r0
  char *v5; // r1
  char *v6; // r2
  int *v7; // r8
  glitch::gui::CGUISpriteBank *v8; // r7
  glitch::gui::CGUISpriteBank *v10; // r10
  _DWORD v11[4]; // [sp+0h] [bp-24h] BYREF
  _BYTE *v12; // [sp+10h] [bp-14h]
  void *p; // [sp+14h] [bp-10h]
  glitch::gui::CGUISpriteBank *v14; // [sp+18h] [bp-Ch]

  v12 = v11;
  p = v11;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v11,
    0x10u);
  *v12 = 0;
  if ( !a2 )
  {
    v7 = (int *)((char *)this + 412);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v11,
      "",
      "");
    if ( glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>(
           (int *)this + 103,
           (int)v11) != -1 )
    {
      v8 = nullptr;
      goto LABEL_5;
    }
LABEL_11:
    v10 = (glitch::gui::CGUISpriteBank *)operator new(0x34u, 0);
    glitch::gui::CGUISpriteBank::CGUISpriteBank(v10, this);
    v14 = v10;
    std::vector<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v7,
      (int)v11);
    v8 = v14;
    goto LABEL_5;
  }
  v4 = LC_API_STRLEN_0(a2);
  v5 = a2;
  v6 = &a2[v4];
  v7 = (int *)((char *)this + 412);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v11,
    v5,
    v6);
  if ( glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 103,
         (int)v11) == -1 )
    goto LABEL_11;
  v8 = nullptr;
LABEL_5:
  if ( p != v11 && p )
    GlitchFree(p);
  return v8;
}


// ===== 53ab20 glitch::gui::CGUIEnvironment::removeTTFont(glitch::io::IReadFile *,uint) =====
int __fastcall glitch::gui::CGUIEnvironment::removeTTFont(
        glitch::gui::CGUIEnvironment *this,
        glitch::io::IReadFile *a2,
        unsigned int a3)
{
  char *v6; // r7
  size_t v7; // r0
  _BYTE *v8; // r2
  unsigned int v9; // r3
  char v10; // r1
  _BYTE *v11; // r2
  int v12; // r9
  char *v13; // r11
  size_t v14; // r0
  _BYTE *v15; // r2
  unsigned int v16; // r3
  char v17; // r1
  _BYTE *v18; // r2
  int v19; // r0
  int v21; // [sp+4h] [bp-50h]
  _DWORD v22[4]; // [sp+10h] [bp-44h] BYREF
  _BYTE *v23; // [sp+20h] [bp-34h]
  void *p; // [sp+24h] [bp-30h]
  unsigned int v25; // [sp+28h] [bp-2Ch]
  _DWORD v26[4]; // [sp+30h] [bp-24h] BYREF
  _BYTE *v27; // [sp+40h] [bp-14h]
  void *v28; // [sp+44h] [bp-10h]

  v27 = v26;
  v28 = v26;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v26,
    0x10u);
  *v27 = 0;
  if ( a2 )
  {
    v6 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
    v7 = LC_API_STRLEN_0(v6);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v26,
      v6,
      &v6[v7]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v26,
      "",
      "");
  }
  v8 = v28;
  if ( v27 != v28 )
  {
    v9 = 0;
    do
    {
      v10 = v8[v9];
      v11 = &v8[v9++];
      if ( (unsigned __int8)(v10 - 65) <= 0x19u )
        v10 += 32;
      *v11 = v10;
      v8 = v28;
    }
    while ( v9 < v27 - (_BYTE *)v28 );
  }
  if ( glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 100,
         (int)v26) == -1 )
  {
    v12 = 0;
  }
  else
  {
    v23 = v22;
    p = v22;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v22,
      0x10u);
    *v23 = 0;
    if ( a2 )
    {
      v13 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
      v14 = LC_API_STRLEN_0(v13);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v22,
        v13,
        &v13[v14]);
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v22,
        "",
        "");
    }
    v15 = v28;
    if ( v28 != v27 )
    {
      v16 = 0;
      do
      {
        v17 = v15[v16];
        v18 = &v15[v16++];
        if ( (unsigned __int8)(v17 - 65) <= 0x19u )
          v17 += 32;
        *v18 = v17;
        v15 = v28;
      }
      while ( v16 < v27 - (_BYTE *)v28 );
    }
    v25 = a3;
    v19 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 97,
            (int)v22);
    if ( v19 == -1 )
    {
      v12 = 0;
    }
    else
    {
      v12 = 1;
      v21 = 32 * v19;
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 97) + 32 * v19 + 28));
      std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 388,
        (_DWORD *)(*((_DWORD *)this + 97) + v21));
      (*(void (__fastcall **)(glitch::gui::CGUIEnvironment *, glitch::io::IReadFile *))(*(_DWORD *)this + 100))(
        this,
        a2);
    }
    if ( p != v22 && p )
      GlitchFree(p);
  }
  if ( v28 != v26 && v28 )
    GlitchFree(v28);
  return v12;
}


// ===== 53ada8 glitch::gui::CGUIEnvironment::getTTFont(char const*,uint) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIEnvironment::getTTFont(
        glitch::gui::CGUIEnvironment *this,
        char *a2,
        unsigned int a3)
{
  unsigned int v6; // r5
  size_t v7; // r0
  char *v8; // r3
  char v9; // r2
  char *v10; // r3
  int *v11; // r5
  int v12; // r0
  glitch::gui::CGUITTFace *v13; // r11
  char *v14; // r2
  unsigned int v15; // r3
  char v16; // r1
  char *v17; // r2
  int v18; // r0
  glitch::IReferenceCounted *v19; // r8
  glitch::IReferenceCounted *v21; // r12
  glitch::IReferenceCounted *v22; // [sp+Ch] [bp-50h]
  _DWORD v23[4]; // [sp+18h] [bp-44h] BYREF
  _BYTE *v24; // [sp+28h] [bp-34h]
  void *p; // [sp+2Ch] [bp-30h]
  unsigned int v26; // [sp+30h] [bp-2Ch]
  glitch::IReferenceCounted *v27; // [sp+34h] [bp-28h]
  _DWORD v28[4]; // [sp+38h] [bp-24h] BYREF
  char *v29; // [sp+48h] [bp-14h]
  char *v30; // [sp+4Ch] [bp-10h]
  glitch::gui::CGUITTFace *v31; // [sp+50h] [bp-Ch]

  v29 = (char *)v28;
  v30 = (char *)v28;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v28,
    0x10u);
  v6 = 0;
  *v29 = 0;
  if ( a2 )
  {
    v7 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v28,
      a2,
      &a2[v7]);
    v8 = v30;
    if ( v30 != v29 )
    {
      do
      {
        v9 = v8[v6];
        v10 = &v8[v6++];
        if ( (unsigned __int8)(v9 - 65) <= 0x19u )
          v9 += 32;
        *v10 = v9;
        v8 = v30;
      }
      while ( v6 < v29 - v30 );
    }
    v11 = (int *)((char *)this + 400);
    v12 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 100,
            (int)v28);
    if ( v12 != -1 )
      goto LABEL_7;
  }
  else
  {
    v11 = (int *)((char *)this + 400);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v28,
      "",
      "");
    v12 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 100,
            (int)v28);
    if ( v12 != -1 )
    {
LABEL_7:
      v13 = *(glitch::gui::CGUITTFace **)(*((_DWORD *)this + 100) + 28 * v12 + 24);
      goto LABEL_8;
    }
  }
  v13 = (glitch::gui::CGUITTFace *)operator new(0xCu, 0);
  glitch::gui::CGUITTFace::CGUITTFace(v13);
  if ( !glitch::gui::CGUITTFace::load(v13, v30) )
  {
    v19 = nullptr;
    glitch::IReferenceCounted::drop(v13);
    goto LABEL_20;
  }
  v31 = v13;
  std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v11,
    (int)v28);
LABEL_8:
  v24 = v23;
  p = v23;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v23,
    0x10u);
  *v24 = 0;
  if ( a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v23,
      v30,
      v29);
  else
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v23,
      "",
      "");
  v14 = v30;
  if ( v30 != v29 )
  {
    v15 = 0;
    do
    {
      v16 = v14[v15];
      v17 = &v14[v15++];
      if ( (unsigned __int8)(v16 - 65) <= 0x19u )
        v16 += 32;
      *v17 = v16;
      v14 = v30;
    }
    while ( v15 < v29 - v30 );
  }
  v26 = a3;
  v18 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(
          (int *)this + 97,
          (int)v23);
  if ( v18 == -1 )
  {
    v22 = (glitch::IReferenceCounted *)operator new(0x40u, 0);
    glitch::gui::CGUITTFont::CGUITTFont(v22, *((glitch::video::IVideoDriver **)this + 106));
    v21 = v22;
    if ( v22 )
    {
      if ( !(*(int (__fastcall **)(glitch::IReferenceCounted *, glitch::gui::CGUITTFace *, unsigned int))(*(_DWORD *)v22 + 108))(
              v22,
              v13,
              a3) )
      {
        v19 = nullptr;
        glitch::IReferenceCounted::drop(v22);
        goto LABEL_17;
      }
      v27 = v22;
      std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int *)this + 97,
        (int)v23);
      v21 = v22;
    }
    v19 = v21;
    goto LABEL_17;
  }
  v19 = *(glitch::IReferenceCounted **)(*((_DWORD *)this + 97) + 32 * v18 + 28);
LABEL_17:
  if ( p != v23 && p )
    GlitchFree(p);
LABEL_20:
  if ( v30 != (char *)v28 && v30 )
    GlitchFree(v30);
  return v19;
}


// ===== 53b0cc glitch::gui::CGUIEnvironment::getTTFont(glitch::io::IReadFile *,uint) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIEnvironment::getTTFont(
        glitch::gui::CGUIEnvironment *this,
        glitch::io::IReadFile *a2,
        unsigned int a3)
{
  unsigned int v6; // r5
  char *v7; // r11
  size_t v8; // r0
  _BYTE *v9; // r3
  char v10; // r2
  _BYTE *v11; // r3
  int *v12; // r5
  int v13; // r0
  glitch::gui::CGUITTFace *v14; // r11
  char *v15; // r8
  size_t v16; // r0
  _BYTE *v17; // r2
  unsigned int v18; // r3
  char v19; // r1
  _BYTE *v20; // r2
  int v21; // r0
  glitch::IReferenceCounted *v22; // r8
  glitch::IReferenceCounted *v24; // r12
  glitch::IReferenceCounted *v25; // [sp+Ch] [bp-50h]
  _DWORD v26[4]; // [sp+18h] [bp-44h] BYREF
  _BYTE *v27; // [sp+28h] [bp-34h]
  void *p; // [sp+2Ch] [bp-30h]
  unsigned int v29; // [sp+30h] [bp-2Ch]
  glitch::IReferenceCounted *v30; // [sp+34h] [bp-28h]
  _DWORD v31[4]; // [sp+38h] [bp-24h] BYREF
  _BYTE *v32; // [sp+48h] [bp-14h]
  void *v33; // [sp+4Ch] [bp-10h]
  glitch::gui::CGUITTFace *v34; // [sp+50h] [bp-Ch]

  v32 = v31;
  v33 = v31;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v31,
    0x10u);
  v6 = 0;
  *v32 = 0;
  if ( a2 )
  {
    v7 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
    v8 = LC_API_STRLEN_0(v7);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v31,
      v7,
      &v7[v8]);
    v9 = v33;
    if ( v33 != v32 )
    {
      do
      {
        v10 = v9[v6];
        v11 = &v9[v6++];
        if ( (unsigned __int8)(v10 - 65) <= 0x19u )
          v10 += 32;
        *v11 = v10;
        v9 = v33;
      }
      while ( v6 < v32 - (_BYTE *)v33 );
    }
    v12 = (int *)((char *)this + 400);
    v13 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 100,
            (int)v31);
    if ( v13 != -1 )
      goto LABEL_7;
  }
  else
  {
    v12 = (int *)((char *)this + 400);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v31,
      "",
      "");
    v13 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 100,
            (int)v31);
    if ( v13 != -1 )
    {
LABEL_7:
      v14 = *(glitch::gui::CGUITTFace **)(*((_DWORD *)this + 100) + 28 * v13 + 24);
      goto LABEL_8;
    }
  }
  v14 = (glitch::gui::CGUITTFace *)operator new(0xCu, 0);
  glitch::gui::CGUITTFace::CGUITTFace(v14);
  if ( !glitch::gui::CGUITTFace::load(v14, a2) )
  {
    v22 = nullptr;
    glitch::IReferenceCounted::drop(v14);
    goto LABEL_20;
  }
  v34 = v14;
  std::vector<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v12,
    (int)v31);
LABEL_8:
  v27 = v26;
  p = v26;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v26,
    0x10u);
  *v27 = 0;
  if ( a2 )
  {
    v15 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
    v16 = LC_API_STRLEN_0(v15);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v26,
      v15,
      &v15[v16]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v26,
      "",
      "");
  }
  v17 = v33;
  if ( v32 != v33 )
  {
    v18 = 0;
    do
    {
      v19 = v17[v18];
      v20 = &v17[v18++];
      if ( (unsigned __int8)(v19 - 65) <= 0x19u )
        v19 += 32;
      *v20 = v19;
      v17 = v33;
    }
    while ( v18 < v32 - (_BYTE *)v33 );
  }
  v29 = a3;
  v21 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(
          (int *)this + 97,
          (int)v26);
  if ( v21 == -1 )
  {
    v25 = (glitch::IReferenceCounted *)operator new(0x40u, 0);
    glitch::gui::CGUITTFont::CGUITTFont(v25, *((glitch::video::IVideoDriver **)this + 106));
    v24 = v25;
    if ( v25 )
    {
      if ( !(*(int (__fastcall **)(glitch::IReferenceCounted *, glitch::gui::CGUITTFace *, unsigned int))(*(_DWORD *)v25 + 108))(
              v25,
              v14,
              a3) )
      {
        v22 = nullptr;
        glitch::IReferenceCounted::drop(v25);
        goto LABEL_17;
      }
      v30 = v25;
      std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int *)this + 97,
        (int)v26);
      v24 = v25;
    }
    v22 = v24;
    goto LABEL_17;
  }
  v22 = *(glitch::IReferenceCounted **)(*((_DWORD *)this + 97) + 32 * v21 + 28);
LABEL_17:
  if ( p != v26 && p )
    GlitchFree(p);
LABEL_20:
  if ( v33 != v31 && v33 )
    GlitchFree(v33);
  return v22;
}


// ===== 53b418 glitch::gui::CGUIEnvironment::readGUIElement(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIEnvironment::readGUIElement(int result, int a2, int a3)
{
  int v4; // r7
  bool v6; // zf
  const wchar_t *v7; // r10
  const wchar_t *v8; // r0
  int v9; // r8
  int v10; // r0
  const wchar_t *v11; // r10
  const wchar_t *v12; // r0
  const wchar_t *v13; // r0
  glitch::io::IAttributes *v14; // r9
  const wchar_t *v15; // r10
  const wchar_t *v16; // r0
  const wchar_t *v17; // r10
  const wchar_t *v18; // r0
  const wchar_t *v19; // r10
  const wchar_t *v20; // r0
  const wchar_t *v21; // r0
  const wchar_t *v22; // r0
  int v23; // r0
  const wchar_t *v24; // r10
  const wchar_t *v25; // r0
  _BYTE v26[16]; // [sp+1Ch] [bp-48h] BYREF
  _BYTE v27[20]; // [sp+2Ch] [bp-38h] BYREF
  void *p; // [sp+40h] [bp-24h]
  _BYTE v29[20]; // [sp+44h] [bp-20h] BYREF
  void *v30; // [sp+58h] [bp-Ch]

  v4 = result;
  if ( a2 )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
    v6 = result == 0;
    if ( result )
      v6 = result == 6;
    if ( !v6 && result != 2 )
    {
      if ( a3
        || (v24 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ENV[0],
            v25 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2),
            wcscmp(v24, v25)) )
      {
        v7 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT[0];
        v8 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
        if ( !wcscmp(v7, v8) )
        {
          v22 = (const wchar_t *)(*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 36))(
                                   a2,
                                   glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE);
          glitch::core::stringw2stringc((glitch::core *)v29, v22);
          v23 = (*(int (__fastcall **)(int, void *, int))(*(_DWORD *)v4 + 228))(v4, v30, a3);
          v9 = v23;
          if ( !v23 )
            glitch::os::Printer::log("Could not create GUI element of unknown type", v30, 1);
          if ( v30 != v29 && v30 )
            GlitchFree(v30);
        }
        else
        {
          v9 = 0;
        }
      }
      else
      {
        v9 = v4 + 8;
      }
      while ( 1 )
      {
        result = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
        if ( !result )
          break;
        v10 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
        if ( v10 == 1 )
        {
          v13 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          if ( !wcscmp(U"attributes", v13) )
          {
            v14 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v4 + 448) + 100))(
                                               *(_DWORD *)(v4 + 448),
                                               *(_DWORD *)(v4 + 424));
            glitch::io::CXMLAttributesReader::CXMLAttributesReader(v26, a2, 1, 0);
            glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v26, v14);
            if ( v9 )
              (*(void (__fastcall **)(int, glitch::io::IAttributes *, _DWORD))(*(_DWORD *)v9 + 120))(v9, v14, 0);
            glitch::IReferenceCounted::drop(v14);
            glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v26);
          }
          else
          {
            v15 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT[0];
            v16 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
            if ( !wcscmp(v15, v16)
              || (v19 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ENV[0],
                  v20 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2),
                  !wcscmp(v19, v20)) )
            {
              (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v4 + 260))(v4, a2, v9);
            }
            else
            {
              v21 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
              glitch::core::stringw2stringc((glitch::core *)v27, v21);
              glitch::os::Printer::log("Found unknown element in glitch GUI file", p, 1);
              if ( p != v27 && p )
                GlitchFree(p);
            }
          }
        }
        else if ( v10 == 2 )
        {
          v11 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ELEMENT[0];
          v12 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          result = wcscmp(v11, v12);
          if ( !result )
            return result;
          v17 = (const wchar_t *)glitch::gui::GLITCH_XML_FORMAT_GUI_ENV[0];
          v18 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          result = wcscmp(v17, v18);
          if ( !result )
            return result;
        }
      }
    }
  }
  return result;
}


// ===== 53b7d4 glitch::gui::CGUIEnvironment::getFont(char const*) =====
int __fastcall glitch::gui::CGUIEnvironment::getFont(glitch::gui::CGUIEnvironment *this, char *a2)
{
  size_t v4; // r0
  _BYTE *v5; // r2
  unsigned int v6; // r3
  char v7; // r1
  _BYTE *v8; // r2
  int v9; // r0
  int v10; // r7
  glitch::IReferenceCounted *v12; // r5
  int v13; // r11
  const char *v14; // r7
  glitch::gui::CGUIFont *v15; // r5
  wchar_t *v16; // r0
  _BOOL4 v17; // r2
  wchar_t *v18; // r0
  _BOOL4 v19; // r3
  wchar_t *v20; // r0
  _BOOL4 v21; // r3
  int v22; // r2
  char *v23; // r0
  int v24; // r11
  void (__fastcall *v25)(int, void *); // r7
  int v26; // [sp+4h] [bp-158h]
  int v27; // [sp+4h] [bp-158h]
  int v28; // [sp+4h] [bp-158h]
  wchar_t *s; // [sp+8h] [bp-154h]
  int v30; // [sp+Ch] [bp-150h]
  _DWORD v31[17]; // [sp+20h] [bp-13Ch] BYREF
  void *v32; // [sp+64h] [bp-F8h]
  _DWORD v33[17]; // [sp+68h] [bp-F4h] BYREF
  void *v34; // [sp+ACh] [bp-B0h]
  _DWORD v35[17]; // [sp+B0h] [bp-ACh] BYREF
  void *v36; // [sp+F4h] [bp-68h]
  _DWORD v37[4]; // [sp+108h] [bp-54h] BYREF
  _BYTE *v38; // [sp+118h] [bp-44h]
  void *p; // [sp+11Ch] [bp-40h]
  int v40; // [sp+120h] [bp-3Ch]
  _BYTE v41[20]; // [sp+124h] [bp-38h] BYREF
  void *v42; // [sp+138h] [bp-24h]
  _DWORD v43[5]; // [sp+13Ch] [bp-20h] BYREF
  void *v44; // [sp+150h] [bp-Ch]

  v38 = v37;
  p = v37;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v37,
    0x10u);
  *v38 = 0;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v37,
      a2,
      &a2[v4]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v37,
      "",
      "");
  }
  v5 = p;
  if ( p != v38 )
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      v8 = &v5[v6++];
      if ( (unsigned __int8)(v7 - 65) <= 0x19u )
        v7 += 32;
      *v8 = v7;
      v5 = p;
    }
    while ( v6 < v38 - (_BYTE *)p );
  }
  v9 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 94,
         (int)v37);
  if ( v9 == -1 )
  {
    if ( !(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 112) + 68))(*((_DWORD *)this + 112), a2) )
    {
      glitch::os::Printer::log("Could not load font because the file does not exist", p, 3);
      v10 = 0;
      goto LABEL_10;
    }
    v12 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 112) + 76))(
                                         *((_DWORD *)this + 112),
                                         a2);
    if ( v12 )
    {
      v13 = 0;
      v30 = 3;
      while ( (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v12 + 12))(v12) && !v13 )
      {
        if ( (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v12 + 20))(v12) == 1 )
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v35,
            (wchar_t *)"f");
          v16 = (wchar_t *)(*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v12 + 60))(v12);
          v17 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                  (int)v35,
                  v16);
          if ( v36 != v35 && v36 )
          {
            v26 = v17;
            GlitchFree(v36);
            v17 = v26;
          }
          if ( v17 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
              v33,
              (wchar_t *)"v");
            v18 = (wchar_t *)(*(int (__fastcall **)(glitch::IReferenceCounted *, const char *))(*(_DWORD *)v12 + 36))(
                               v12,
                               "t");
            v19 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                    (int)v33,
                    v18);
            if ( v34 != v33 && v34 )
            {
              v27 = v19;
              GlitchFree(v34);
              v19 = v27;
            }
            v13 = 1;
            if ( v19 )
            {
              v30 = 1;
            }
            else
            {
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                v31,
                (wchar_t *)"b");
              v20 = (wchar_t *)(*(int (__fastcall **)(glitch::IReferenceCounted *, const char *))(*(_DWORD *)v12 + 36))(
                                 v12,
                                 "t");
              v21 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                      (int)v31,
                      v20);
              if ( v32 != v31 && v32 )
              {
                v28 = v21;
                GlitchFree(v32);
                v21 = v28;
              }
              v22 = v30;
              if ( v21 )
                v22 = 0;
              v30 = v22;
              v13 = 1;
            }
          }
        }
      }
      if ( v30 )
      {
        if ( v30 == 1 )
          glitch::os::Printer::log("Unable to load font, XML vector fonts are not supported yet", p, 3);
        glitch::IReferenceCounted::drop(v12);
      }
      else
      {
        s = (wchar_t *)operator new(0x48u, 0);
        glitch::gui::CGUIFont::CGUIFont((glitch::gui::CGUIFont *)s, this, a2);
        v23 = (char *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 112) + 44))(*((_DWORD *)this + 112));
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v43,
          v23);
        v24 = *((_DWORD *)this + 112);
        v25 = *(void (__fastcall **)(int, void *))(*(_DWORD *)v24 + 48);
        (*(void (__fastcall **)(_BYTE *, int, _DWORD *))(*(_DWORD *)v24 + 56))(v41, v24, v37);
        v25(v24, v42);
        if ( v42 != v41 && v42 )
          GlitchFree(v42);
        v10 = glitch::gui::CGUIFont::load(s, v12);
        if ( v10 )
          v10 = (int)s;
        else
          glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)s);
        (*(void (__fastcall **)(_DWORD, void *))(**((_DWORD **)this + 112) + 48))(*((_DWORD *)this + 112), v44);
        if ( v44 != v43 && v44 )
          GlitchFree(v44);
        glitch::IReferenceCounted::drop(v12);
        if ( v10 )
          goto LABEL_26;
      }
    }
    v14 = (const char *)p;
    v15 = (glitch::gui::CGUIFont *)operator new(0x48u, 0);
    glitch::gui::CGUIFont::CGUIFont(v15, this, v14);
    v10 = glitch::gui::CGUIFont::load(v15, (const char *)p);
    if ( !v10 )
    {
      glitch::IReferenceCounted::drop(v15);
      goto LABEL_10;
    }
    v10 = (int)v15;
LABEL_26:
    v40 = v10;
    std::vector<glitch::gui::CGUIEnvironment::SFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      (int *)this + 94,
      (int)v37);
    goto LABEL_10;
  }
  v10 = *(_DWORD *)(*((_DWORD *)this + 94) + 28 * v9 + 24);
LABEL_10:
  if ( p != v37 && p )
    GlitchFree(p);
  return v10;
}


// ===== 53bce4 glitch::gui::CGUIEnvironment::removeTTFont(char const*,uint) =====
int __fastcall glitch::gui::CGUIEnvironment::removeTTFont(
        glitch::gui::CGUIEnvironment *this,
        char *a2,
        unsigned int a3)
{
  size_t v6; // r0
  _BYTE *v7; // r2
  unsigned int v8; // r3
  char v9; // r1
  _BYTE *v10; // r2
  int v11; // r9
  size_t v12; // r0
  _BYTE *v13; // r2
  unsigned int v14; // r3
  char v15; // r1
  _BYTE *v16; // r2
  int v17; // r0
  int v19; // [sp+4h] [bp-50h]
  _DWORD v20[4]; // [sp+10h] [bp-44h] BYREF
  _BYTE *v21; // [sp+20h] [bp-34h]
  void *p; // [sp+24h] [bp-30h]
  unsigned int v23; // [sp+28h] [bp-2Ch]
  _DWORD v24[4]; // [sp+30h] [bp-24h] BYREF
  _BYTE *v25; // [sp+40h] [bp-14h]
  void *v26; // [sp+44h] [bp-10h]

  v25 = v24;
  v26 = v24;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v24,
    0x10u);
  *v25 = 0;
  if ( a2 )
  {
    v6 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v24,
      a2,
      &a2[v6]);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v24,
      "",
      "");
  }
  v7 = v26;
  if ( v25 != v26 )
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      v10 = &v7[v8++];
      if ( (unsigned __int8)(v9 - 65) <= 0x19u )
        v9 += 32;
      *v10 = v9;
      v7 = v26;
    }
    while ( v8 < v25 - (_BYTE *)v26 );
  }
  if ( glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 100,
         (int)v24) == -1 )
  {
    v11 = 0;
  }
  else
  {
    v21 = v20;
    p = v20;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v20,
      0x10u);
    *v21 = 0;
    if ( a2 )
    {
      v12 = LC_API_STRLEN_0(a2);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v20,
        a2,
        &a2[v12]);
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v20,
        "",
        "");
    }
    v13 = v26;
    if ( v26 != v25 )
    {
      v14 = 0;
      do
      {
        v15 = v13[v14];
        v16 = &v13[v14++];
        if ( (unsigned __int8)(v15 - 65) <= 0x19u )
          v15 += 32;
        *v16 = v15;
        v13 = v26;
      }
      while ( v14 < v25 - (_BYTE *)v26 );
    }
    v23 = a3;
    v17 = glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>(
            (int *)this + 97,
            (int)v20);
    if ( v17 == -1 )
    {
      v11 = 0;
    }
    else
    {
      v11 = 1;
      v19 = 32 * v17;
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 97) + 32 * v17 + 28));
      std::vector<glitch::gui::CGUIEnvironment::STTFont,glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 388,
        (_DWORD *)(*((_DWORD *)this + 97) + v19));
      (*(void (__fastcall **)(glitch::gui::CGUIEnvironment *, char *))(*(_DWORD *)this + 96))(this, a2);
    }
    if ( p != v20 && p )
      GlitchFree(p);
  }
  if ( v26 != v24 && v26 )
    GlitchFree(v26);
  return v11;
}


// ===== 53bf4c `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53bf5c `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53bf6c `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53bf7c `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::~CGUIEnvironment(glitch::gui::CGUIEnvironment *this)
{
  glitch::gui::CGUIEnvironment::~CGUIEnvironment((glitch::gui::CGUIEnvironment *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53bf8c `virtual thunk to'glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
_DWORD *__fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::deserializeAttributes(_DWORD *a1, int a2, int a3)
{
  return glitch::gui::CGUIEnvironment::deserializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2, a3);
}


// ===== 53bf9c `virtual thunk to'glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIEnvironment::serializeAttributes(_DWORD *a1, int a2, int a3)
{
  return glitch::gui::CGUIEnvironment::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 53bfac glitch::gui::CGUIFileOpenDialog::getFileName(void) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::getFileName(glitch::gui::CGUIFileOpenDialog *this)
{
  return *((_DWORD *)this + 105);
}


// ===== 53bfb4 glitch::gui::CGUIFileOpenDialog::sendSelectedEvent(void) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::sendSelectedEvent(glitch::gui::CGUIFileOpenDialog *this)
{
  int v1; // r3
  _DWORD v3[7]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)this + 9);
  v3[4] = 10;
  v3[2] = this;
  v3[3] = 0;
  v3[0] = 0;
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v1 + 8))(v1, v3);
}


// ===== 53bff4 glitch::gui::CGUIFileOpenDialog::sendCancelEvent(void) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::sendCancelEvent(glitch::gui::CGUIFileOpenDialog *this)
{
  int v1; // r3
  _DWORD v3[7]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)this + 9);
  v3[4] = 11;
  v3[2] = this;
  v3[3] = 0;
  v3[0] = 0;
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v1 + 8))(v1, v3);
}


// ===== 53c034 `global constructor keyed to'.._source_glitch_gui_CGUIFileOpenDialog.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIFileOpenDialog.cpp()
{
  dword_9F65EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F65E8 = 1056964608;
}


// ===== 53c054 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(wchar_t const*) =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        int a1,
        wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           a1,
           s,
           &s[v4]);
}


// ===== 53c07c glitch::gui::IGUIFileOpenDialog::IGUIFileOpenDialog(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIFileOpenDialog::IGUIFileOpenDialog(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  _DWORD *v13; // r9
  int v14; // r0
  _DWORD *v17; // r3
  int v18; // r0
  int v19; // r12
  int v20; // r10
  int v21; // r8
  int v22; // r2
  int v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r0
  int v27; // r1
  int v28; // r1
  int v29; // r2
  int v30; // r1
  int v31; // r3
  int v32; // r1
  bool v33; // cc
  int v34; // r3
  int v35; // r3
  int v37; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v13 = (_DWORD *)(a1 + 160);
  v37 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v14 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v14;
  *(_DWORD *)(a1 + 28) = v14;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v37;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v13,
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 6;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v17 = *(_DWORD **)(a1 + 36);
  if ( v17 )
  {
    v18 = v17[15];
    v19 = v17[14];
    v20 = v17[16];
    v21 = v17[17];
    v22 = v18 + *(_DWORD *)(a1 + 68);
    v23 = v19 + *(_DWORD *)(a1 + 64);
    v24 = v18 + *(_DWORD *)(a1 + 60);
    v25 = v19 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v24;
    *(_DWORD *)(a1 + 84) = v22;
    *(_DWORD *)(a1 + 72) = v25;
    *(_DWORD *)(a1 + 80) = v23;
    *(_DWORD *)(a1 + 68) = v22;
    *(_DWORD *)(a1 + 112) = v20;
    *(_DWORD *)(a1 + 116) = v21;
    *(_DWORD *)(a1 + 104) = v19;
    *(_DWORD *)(a1 + 108) = v18;
    *(_DWORD *)(a1 + 56) = v25;
    *(_DWORD *)(a1 + 60) = v24;
    *(_DWORD *)(a1 + 64) = v23;
    v26 = v17[20];
    if ( v23 > v26 )
      *(_DWORD *)(a1 + 80) = v26;
    v27 = v17[21];
    if ( v22 > v27 )
      *(_DWORD *)(a1 + 84) = v27;
    v28 = v17[18];
    v29 = *(_DWORD *)(a1 + 72);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 72) = v28;
      v29 = v28;
    }
    v30 = v17[19];
    v31 = *(_DWORD *)(a1 + 76);
    if ( v30 > v31 )
    {
      *(_DWORD *)(a1 + 76) = v30;
      v31 = v30;
    }
    v32 = *(_DWORD *)(a1 + 84);
    v33 = v32 < v31;
    v34 = *(_DWORD *)(a1 + 80);
    if ( v33 )
      *(_DWORD *)(a1 + 76) = v32;
    if ( v29 > v34 )
      *(_DWORD *)(a1 + 72) = v34;
  }
  v35 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v35 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 53c344 glitch::gui::CGUIFileOpenDialog::draw(void) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::draw(int this)
{
  int v1; // r4
  int v2; // r7
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r5
  int (__fastcall *v8)(_DWORD *, int, int, int, int, int *, int); // r8
  int v9; // r8
  bool v10; // zf
  int v11; // r4
  int *i; // r5
  int *v13; // t1
  int v14; // r8
  int v15; // r3
  int v16; // r0
  int (__fastcall *v17)(int, int, int *, int, _DWORD, int, int); // r5
  int v18; // r10
  _DWORD v19[2]; // [sp+18h] [bp-2Ch] BYREF
  int v20; // [sp+20h] [bp-24h]
  int v21; // [sp+24h] [bp-20h]
  int v22; // [sp+28h] [bp-1Ch] BYREF
  int v23; // [sp+2Ch] [bp-18h]
  int v24; // [sp+30h] [bp-14h]
  int v25; // [sp+34h] [bp-10h]
  int v26; // [sp+38h] [bp-Ch]
  int v27; // [sp+3Ch] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = this + 72;
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v4 = *(_DWORD *)(v1 + 60);
    v5 = *(_DWORD *)(v1 + 64);
    v6 = *(_DWORD *)(v1 + 68);
    v22 = *(_DWORD *)(v1 + 56);
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v7 = v3;
    v8 = *(int (__fastcall **)(_DWORD *, int, int, int, int, int *, int))(*(_DWORD *)v3 + 76);
    v27 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 16))(v3, 5);
    this = v8(v19, v7, v1, 1, v27, &v22, v2);
    v9 = v20;
    v10 = (unsigned int)(*(_DWORD *)(v1 + 224) - *(_DWORD *)(v1 + 228)) >> 2 == 0;
    v22 = v19[0];
    v24 = v20;
    v23 = v19[1];
    v25 = v21;
    if ( !v10 )
    {
      v22 = v19[0] + 2;
      v24 = v9 - 5 - (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 2);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 40))(v7, 2);
      v14 = this;
      if ( this )
      {
        v15 = *(_DWORD *)v7;
        v16 = v7;
        v17 = *(int (__fastcall **)(int, int, int *, int, _DWORD, int, int))(*(_DWORD *)v14 + 12);
        v18 = *(_DWORD *)(v1 + 228);
        v26 = (*(int (__fastcall **)(int, int))(v15 + 16))(v16, 6);
        this = v17(v14, v18, &v22, v26, 0, 1, v2);
      }
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v13 = *(int **)(v1 + 4);
      v11 = v1 + 4;
      for ( i = v13; i != (int *)v11; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 53c510 glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(glitch::gui::IGUIFileOpenDialog *this)
{
  *(_DWORD *)this = off_96D0F8;
  *((_DWORD *)this + 86) = off_96D190;
  *((_DWORD *)this + 87) = off_96D1B0;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D1C4);
}


// ===== 53c564 `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(
        glitch::gui::IGUIFileOpenDialog *this)
{
  glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog((glitch::gui::IGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53c574 `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(
        glitch::gui::IGUIFileOpenDialog *this)
{
  glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog((glitch::gui::IGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53c584 glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(glitch::gui::CGUIFileOpenDialog *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  _DWORD *v8; // r3
  _DWORD *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r0
  char *v12; // r0
  int v13; // r3
  int *v14; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 107);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 108);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 109);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = *((_DWORD **)this + 110);
  if ( v8 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 16)));
  v9 = *((_DWORD **)this + 111);
  if ( v9 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
  v10 = *((glitch::IReferenceCounted **)this + 114);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v11 = *((glitch::IReferenceCounted **)this + 113);
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  v12 = *((char **)this + 105);
  if ( v12 != (char *)this + 352 && v12 )
    GlitchFree(v12);
  v13 = a2[1];
  v14 = a2 + 1;
  *(_DWORD *)this = v13;
  *(_DWORD *)((char *)this + *(_DWORD *)(v13 - 12)) = v14[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v14[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v14 + 1);
}


// ===== 53c6b8 glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(glitch::gui::IGUIFileOpenDialog *this)
{
  *(_DWORD *)this = off_96D0F8;
  *((_DWORD *)this + 86) = off_96D190;
  *((_DWORD *)this + 87) = off_96D1B0;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D1C4);
  LC_API_FREE_0(this);
}


// ===== 53c714 `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(
        glitch::gui::IGUIFileOpenDialog *this)
{
  glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog((glitch::gui::IGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53c724 `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog(
        glitch::gui::IGUIFileOpenDialog *this)
{
  glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog((glitch::gui::IGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53c734 glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(glitch::gui::CGUIFileOpenDialog *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  glitch::IReferenceCounted *v7; // r0
  glitch::IReferenceCounted *v8; // r0
  char *v9; // r0

  v1 = *((_DWORD **)this + 107);
  *(_DWORD *)this = off_96D2F8;
  *((_DWORD *)this + 115) = off_96D390;
  *((_DWORD *)this + 116) = off_96D3B0;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 108);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((_DWORD **)this + 109);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  v5 = *((_DWORD **)this + 110);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 111);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((glitch::IReferenceCounted **)this + 114);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *((glitch::IReferenceCounted **)this + 113);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = *((char **)this + 105);
  if ( v9 != (char *)this + 352 && v9 )
    GlitchFree(v9);
  *(_DWORD *)this = off_96D400;
  *(int *)((char *)&elf_hash_bucket[60] + (_DWORD)this) = (int)off_96D498;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96D4B8;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D3C8);
}


// ===== 53c878 glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(glitch::gui::CGUIFileOpenDialog *this)
{
  glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(this);
  LC_API_FREE_0(this);
}


// ===== 53c894 glitch::gui::CGUIFileOpenDialog::fillListBox(void) =====
void __fastcall glitch::gui::CGUIFileOpenDialog::fillListBox(glitch::gui::CGUIFileOpenDialog *this)
{
  int v2; // r0
  int v3; // r6
  int v4; // r3
  bool v5; // zf
  glitch::IReferenceCounted *v6; // r0
  unsigned int v7; // r4
  const char *v8; // r0
  int v9; // r8
  void (__fastcall *v10)(int, void *, int); // r11
  int (__fastcall *v11)(int, int); // r9
  void *v12; // r10
  int v13; // r1
  int v14; // r0
  const char *v15; // r0
  _BYTE v16[64]; // [sp+8h] [bp-DCh] BYREF
  _DWORD *v17; // [sp+48h] [bp-9Ch]
  void *v18; // [sp+4Ch] [bp-98h]
  _BYTE v19[64]; // [sp+50h] [bp-94h] BYREF
  _DWORD *v20; // [sp+90h] [bp-54h]
  void *p; // [sp+94h] [bp-50h]
  _DWORD v22[16]; // [sp+98h] [bp-4Ch] BYREF
  _DWORD *v23; // [sp+D8h] [bp-Ch]
  void *v24; // [sp+DCh] [bp-8h]

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = v2;
  if ( *((_DWORD *)this + 113) )
  {
    v4 = *((_DWORD *)this + 110);
    v5 = v4 == 0;
    if ( v4 )
      v5 = v2 == 0;
    if ( !v5 )
    {
      v6 = *((glitch::IReferenceCounted **)this + 114);
      if ( v6 )
      {
        glitch::IReferenceCounted::drop(v6);
        v4 = *((_DWORD *)this + 110);
      }
      (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 152))(v4);
      *((_DWORD *)this + 114) = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 113) + 64))(*((_DWORD *)this + 113));
      v23 = v22;
      v24 = v22;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v22,
        0x10u);
      v7 = 0;
      *v23 = 0;
      while ( v7 < (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 114) + 12))(*((_DWORD *)this + 114)) )
      {
        v8 = (const char *)(*(int (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 114) + 16))(
                             *((_DWORD *)this + 114),
                             v7);
        glitch::core::stringc2stringw((glitch::core *)v19, v8);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v22,
          (const wchar_t *)p,
          v20);
        if ( p != v19 && p )
          GlitchFree(p);
        v9 = *((_DWORD *)this + 110);
        v10 = *(void (__fastcall **)(int, void *, int))(*(_DWORD *)v9 + 136);
        v11 = *(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 56);
        v12 = v24;
        if ( (*(int (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 114) + 24))(*((_DWORD *)this + 114), v7) )
          v13 = 22;
        else
          v13 = 21;
        v14 = v11(v3, v13);
        v10(v9, v12, v14);
        ++v7;
      }
      if ( *((_DWORD *)this + 111) )
      {
        v15 = (const char *)(*(int (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 113) + 44))(
                              *((_DWORD *)this + 113),
                              v7);
        glitch::core::stringc2stringw((glitch::core *)v16, v15);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v22,
          (const wchar_t *)v18,
          v17);
        if ( v18 != v16 && v18 )
          GlitchFree(v18);
        (*(void (__fastcall **)(_DWORD, void *))(**((_DWORD **)this + 111) + 68))(*((_DWORD *)this + 111), v24);
      }
      if ( v24 != v22 )
      {
        if ( v24 )
          GlitchFree(v24);
      }
    }
  }
}


// ===== 53ca9c glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(
        int this,
        const wchar_t *a2,
        glitch::gui::IGUIEnvironment *a3,
        glitch::gui::IGUIElement *a4,
        int a5)
{
  int v5; // kr00_4
  int v6; // r8
  size_t v10; // r0
  int v11; // r0
  int v12; // r5
  int v13; // r6
  int v14; // r0
  int v15; // r0
  int v16; // r8
  int (__fastcall *v17)(int, _DWORD *, int, int, wchar_t *, const char *); // r7
  const char *v18; // r0
  int v19; // r0
  int v20; // r8
  void (__fastcall *v21)(int, _DWORD, int, int, _DWORD); // r6
  int v22; // r0
  int v23; // r8
  void (__fastcall *v24)(int, int, int, int, _DWORD); // r6
  int v25; // r0
  int v26; // r3
  int v27; // r8
  int v28; // r3
  int (__fastcall *v29)(int, _DWORD *, int, int, const char *, _DWORD); // r7
  const char *v30; // r0
  int v31; // r0
  int v32; // r3
  int v33; // r7
  int v34; // r3
  int (__fastcall *v35)(int, _DWORD *, int, int, const char *, _DWORD); // r6
  const char *v36; // r0
  int v37; // r0
  int v38; // r0
  int v39; // r0
  int (__fastcall *v40)(int, _DWORD *, int, int, int); // r12
  int v41; // r0
  int v42; // r0
  int v43; // r0
  int (__fastcall *v44)(int, _DWORD, _DWORD *, int, _DWORD, int, int, _DWORD); // r12
  int v45; // r0
  int v46; // r3
  int v47; // r3
  glitch::IReferenceCounted *v48; // r0
  _DWORD v50[4]; // [sp+1Ch] [bp-64h] BYREF
  _DWORD v51[4]; // [sp+2Ch] [bp-54h] BYREF
  _DWORD v52[4]; // [sp+3Ch] [bp-44h] BYREF
  _DWORD v53[4]; // [sp+4Ch] [bp-34h] BYREF
  _DWORD v54[4]; // [sp+5Ch] [bp-24h] BYREF
  int v55[4]; // [sp+6Ch] [bp-14h] BYREF
  int v56; // [sp+7Ch] [bp-4h]

  *(_DWORD *)(this + 468) = 1;
  *(_DWORD *)(this + 464) = off_95B720;
  *(_DWORD *)(this + 460) = off_96D5A4;
  *(_DWORD *)&byte_4[this + 460] = off_96D5C4;
  v5 = *((_DWORD *)a4 + 16) - 350 - *((_DWORD *)a4 + 14);
  v6 = (*((_DWORD *)a4 + 17) - 250 - *((_DWORD *)a4 + 15)) / 2;
  v55[2] = v5 / 2 + 350;
  v55[3] = v6 + 250;
  v55[0] = v5 / 2;
  v55[1] = v6;
  glitch::gui::IGUIFileOpenDialog::IGUIFileOpenDialog(this, (int *)off_96D3C4, (int)a3, (int)a4, a5, v55);
  *(_DWORD *)(this + 416) = this + 352;
  *(_DWORD *)this = off_96D2F8;
  *(_DWORD *)(this + 420) = this + 352;
  *(_DWORD *)(this + 460) = off_96D390;
  *(_DWORD *)(this + 464) = off_96D3B0;
  *(_DWORD *)(this + 344) = 0;
  *(_DWORD *)(this + 348) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(this + 352),
    0x10u);
  **(_DWORD **)(this + 416) = 0;
  *(_DWORD *)(this + 456) = 0;
  *(_BYTE *)(this + 424) = 0;
  *(_DWORD *)(this + 444) = 0;
  *(_DWORD *)(this + 452) = 0;
  v10 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    this + 160,
    a2,
    &a2[v10]);
  v11 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
  v12 = v11;
  v56 = -1;
  if ( v11 )
  {
    v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11);
    v56 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 16))(v12, 18);
  }
  else
  {
    v13 = 0;
  }
  v14 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a3 + 56))(a3);
  v15 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 24))(v14, 2);
  v16 = *(_DWORD *)(this + 336);
  v17 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v16 + 120);
  v54[0] = *(_DWORD *)(this + 48) - 4 - *(_DWORD *)(this + 40) - v15;
  v54[1] = 3;
  v54[2] = v54[0] + v15;
  v54[3] = v15 + 3;
  if ( v12 )
    v18 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 28))(v12, 4);
  else
    v18 = "C";
  v19 = v17(v16, v54, this, -1, dword_8BEC18, v18);
  *(_DWORD *)(this + 428) = v19;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v19 + 56))(v19, 1);
  *(_BYTE *)(*(_DWORD *)(this + 428) + 308) = 0;
  if ( v13 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(this + 428) + 144))(*(_DWORD *)(this + 428), v13);
    v20 = *(_DWORD *)(this + 428);
    v21 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v20 + 148);
    v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 56))(v12, 2);
    v21(v20, 0, v22, v56, 0);
    v23 = *(_DWORD *)(this + 428);
    v24 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v23 + 148);
    v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 56))(v12, 2);
    v24(v23, 1, v25, v56, 0);
  }
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 428), 1, 1, 0, 0);
  v26 = *(_DWORD *)(this + 428) + *(_DWORD *)(**(_DWORD **)(this + 428) - 16);
  ++*(_DWORD *)(v26 + 4);
  v27 = *(_DWORD *)(this + 336);
  v28 = *(_DWORD *)(this + 48) - *(_DWORD *)(this + 40);
  v29 = *(int (__fastcall **)(int, _DWORD *, int, int, const char *, _DWORD))(*(_DWORD *)v27 + 120);
  v53[0] = v28 - 80;
  v53[2] = v28 - 10;
  v53[1] = 30;
  v53[3] = 50;
  if ( v12 )
    v30 = (const char *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v12 + 28))(v12, 0);
  else
    v30 = "O";
  v31 = v29(v27, v53, this, -1, v30, 0);
  *(_DWORD *)(this + 432) = v31;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v31 + 56))(v31, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 432), 1, 1, 0, 0);
  v32 = *(_DWORD *)(this + 432) + *(_DWORD *)(**(_DWORD **)(this + 432) - 16);
  ++*(_DWORD *)(v32 + 4);
  v33 = *(_DWORD *)(this + 336);
  v34 = *(_DWORD *)(this + 48) - *(_DWORD *)(this + 40);
  v35 = *(int (__fastcall **)(int, _DWORD *, int, int, const char *, _DWORD))(*(_DWORD *)v33 + 120);
  v52[0] = v34 - 80;
  v52[2] = v34 - 10;
  v52[1] = 55;
  v52[3] = 75;
  if ( v12 )
    v36 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 28))(v12, 1);
  else
    v36 = "C";
  v37 = v35(v33, v52, this, -1, v36, 0);
  *(_DWORD *)(this + 436) = v37;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v37 + 56))(v37, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 436), 1, 1, 0, 0);
  v38 = *(_DWORD *)(this + 436) + *(_DWORD *)(**(_DWORD **)(this + 436) - 16);
  ++*(_DWORD *)(v38 + 4);
  v39 = *(_DWORD *)(this + 336);
  v40 = *(int (__fastcall **)(int, _DWORD *, int, int, int))(*(_DWORD *)v39 + 152);
  v51[2] = *(_DWORD *)(this + 48) - 90 - *(_DWORD *)(this + 40);
  v51[3] = 230;
  v51[1] = 55;
  v51[0] = 10;
  v41 = v40(v39, v51, this, -1, 1);
  *(_DWORD *)(this + 440) = v41;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v41 + 56))(v41, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 440), 0, 1, 0, 1);
  v42 = *(_DWORD *)(this + 440) + *(_DWORD *)(**(_DWORD **)(this + 440) - 16);
  ++*(_DWORD *)(v42 + 4);
  v43 = *(_DWORD *)(this + 336);
  v44 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, _DWORD, int, int, _DWORD))(*(_DWORD *)v43 + 168);
  v50[2] = *(_DWORD *)(this + 48) - 90 - *(_DWORD *)(this + 40);
  v50[0] = 10;
  v50[3] = 50;
  v50[1] = 30;
  v45 = v44(v43, 0, v50, 1, 0, this, -1, 0);
  *(_DWORD *)(this + 444) = v45;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v45 + 56))(v45, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 444), 0, 1, 0, 0);
  v46 = *(_DWORD *)(this + 444) + *(_DWORD *)(**(_DWORD **)(this + 444) - 16);
  ++*(_DWORD *)(v46 + 4);
  v47 = *(_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 36))(*(_DWORD *)(this + 336));
  if ( v47 )
    ++*(_DWORD *)(v47 + 4);
  v48 = *(glitch::IReferenceCounted **)(this + 452);
  *(_DWORD *)(this + 452) = v47;
  if ( v48 )
    glitch::IReferenceCounted::drop(v48);
  *(_BYTE *)(this + 316) = 1;
  glitch::gui::CGUIFileOpenDialog::fillListBox((glitch::gui::CGUIFileOpenDialog *)this);
  return this;
}


// ===== 53d114 glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
glitch::gui::CGUIFileOpenDialog *__fastcall glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(
        glitch::gui::CGUIFileOpenDialog *this,
        const wchar_t *a2,
        const wchar_t *a3,
        glitch::gui::IGUIElement *a4,
        _DWORD *a5,
        int a6)
{
  int v8; // lr
  int v9; // r8
  int v12; // r2
  size_t v13; // r0
  int v14; // r0
  int v15; // r4
  int v16; // r6
  int v17; // r0
  int v18; // r0
  int v19; // r8
  int (__fastcall *v20)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, wchar_t *, const char *); // r5
  const char *v21; // r0
  int v22; // r0
  int v23; // r8
  void (__fastcall *v24)(int, _DWORD, int, int, _DWORD); // r6
  int v25; // r0
  int v26; // r8
  void (__fastcall *v27)(int, int, int, int, _DWORD); // r6
  int v28; // r0
  int v29; // r3
  int v30; // r8
  int v31; // r3
  int (__fastcall *v32)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, const char *, _DWORD); // r6
  const char *v33; // r0
  int v34; // r0
  int v35; // r3
  int v36; // r6
  int v37; // r3
  int (__fastcall *v38)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, const char *, _DWORD); // r5
  const char *v39; // r0
  int v40; // r0
  int v41; // r0
  int v42; // r0
  int (__fastcall *v43)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, int); // r12
  int v44; // r0
  int v45; // r0
  int v46; // r0
  int (__fastcall *v47)(int, _DWORD, _DWORD *, int, _DWORD, glitch::gui::CGUIFileOpenDialog *, int, _DWORD); // r12
  int v48; // r0
  int v49; // r3
  int v50; // r3
  glitch::IReferenceCounted *v51; // r0
  _DWORD v53[4]; // [sp+1Ch] [bp-64h] BYREF
  _DWORD v54[4]; // [sp+2Ch] [bp-54h] BYREF
  _DWORD v55[4]; // [sp+3Ch] [bp-44h] BYREF
  _DWORD v56[4]; // [sp+4Ch] [bp-34h] BYREF
  _DWORD v57[4]; // [sp+5Ch] [bp-24h] BYREF
  int v58[4]; // [sp+6Ch] [bp-14h] BYREF
  int v59; // [sp+7Ch] [bp-4h]

  v8 = (a5[16] - 350 - a5[14]) / 2;
  v9 = a5[17] - 250 - a5[15];
  v58[2] = v8 + 350;
  v58[0] = v8;
  v58[1] = v9 / 2;
  v58[3] = v9 / 2 + 250;
  glitch::gui::IGUIFileOpenDialog::IGUIFileOpenDialog((int)this, (int *)a2 + 1, (int)a4, (int)a5, a6, v58);
  v12 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v12 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  *((_DWORD *)this + 104) = (char *)this + 352;
  *((_DWORD *)this + 105) = (char *)this + 352;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 88,
    0x10u);
  **((_DWORD **)this + 104) = 0;
  *((_DWORD *)this + 114) = 0;
  *((_BYTE *)this + 424) = 0;
  *((_DWORD *)this + 111) = 0;
  *((_DWORD *)this + 113) = 0;
  v13 = wcslen(a3);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)this + 160,
    a3,
    &a3[v13]);
  v14 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v15 = v14;
  v59 = -1;
  if ( v14 )
  {
    v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14);
    v59 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 16))(v15, 18);
  }
  else
  {
    v16 = 0;
  }
  v17 = (*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a4 + 56))(a4);
  v18 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v17 + 24))(v17, 2);
  v19 = *((_DWORD *)this + 84);
  v20 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, wchar_t *, const char *))(*(_DWORD *)v19 + 120);
  v57[0] = *((_DWORD *)this + 12) - 4 - *((_DWORD *)this + 10) - v18;
  v57[1] = 3;
  v57[2] = v57[0] + v18;
  v57[3] = v18 + 3;
  if ( v15 )
    v21 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 28))(v15, 4);
  else
    v21 = "C";
  v22 = v20(v19, v57, this, -1, dword_8BEC18, v21);
  *((_DWORD *)this + 107) = v22;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 56))(v22, 1);
  *(_BYTE *)(*((_DWORD *)this + 107) + 308) = 0;
  if ( v16 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 107) + 144))(*((_DWORD *)this + 107), v16);
    v23 = *((_DWORD *)this + 107);
    v24 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v23 + 148);
    v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 56))(v15, 2);
    v24(v23, 0, v25, v59, 0);
    v26 = *((_DWORD *)this + 107);
    v27 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v26 + 148);
    v28 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 56))(v15, 2);
    v27(v26, 1, v28, v59, 0);
  }
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 107), 1, 1, 0, 0);
  v29 = *((_DWORD *)this + 107) + *(_DWORD *)(**((_DWORD **)this + 107) - 16);
  ++*(_DWORD *)(v29 + 4);
  v30 = *((_DWORD *)this + 84);
  v31 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
  v32 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, const char *, _DWORD))(*(_DWORD *)v30 + 120);
  v56[0] = v31 - 80;
  v56[2] = v31 - 10;
  v56[1] = 30;
  v56[3] = 50;
  if ( v15 )
    v33 = (const char *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v15 + 28))(v15, 0);
  else
    v33 = "O";
  v34 = v32(v30, v56, this, -1, v33, 0);
  *((_DWORD *)this + 108) = v34;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v34 + 56))(v34, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 108), 1, 1, 0, 0);
  v35 = *((_DWORD *)this + 108) + *(_DWORD *)(**((_DWORD **)this + 108) - 16);
  ++*(_DWORD *)(v35 + 4);
  v36 = *((_DWORD *)this + 84);
  v37 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
  v38 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, const char *, _DWORD))(*(_DWORD *)v36 + 120);
  v55[0] = v37 - 80;
  v55[2] = v37 - 10;
  v55[1] = 55;
  v55[3] = 75;
  if ( v15 )
    v39 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 28))(v15, 1);
  else
    v39 = "C";
  v40 = v38(v36, v55, this, -1, v39, 0);
  *((_DWORD *)this + 109) = v40;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v40 + 56))(v40, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 109), 1, 1, 0, 0);
  v41 = *((_DWORD *)this + 109) + *(_DWORD *)(**((_DWORD **)this + 109) - 16);
  ++*(_DWORD *)(v41 + 4);
  v42 = *((_DWORD *)this + 84);
  v43 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIFileOpenDialog *, int, int))(*(_DWORD *)v42 + 152);
  v54[2] = *((_DWORD *)this + 12) - 90 - *((_DWORD *)this + 10);
  v54[3] = 230;
  v54[1] = 55;
  v54[0] = 10;
  v44 = v43(v42, v54, this, -1, 1);
  *((_DWORD *)this + 110) = v44;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v44 + 56))(v44, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 110), 0, 1, 0, 1);
  v45 = *((_DWORD *)this + 110) + *(_DWORD *)(**((_DWORD **)this + 110) - 16);
  ++*(_DWORD *)(v45 + 4);
  v46 = *((_DWORD *)this + 84);
  v47 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, _DWORD, glitch::gui::CGUIFileOpenDialog *, int, _DWORD))(*(_DWORD *)v46 + 168);
  v53[2] = *((_DWORD *)this + 12) - 90 - *((_DWORD *)this + 10);
  v53[0] = 10;
  v53[3] = 50;
  v53[1] = 30;
  v48 = v47(v46, 0, v53, 1, 0, this, -1, 0);
  *((_DWORD *)this + 111) = v48;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v48 + 56))(v48, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 111), 0, 1, 0, 0);
  v49 = *((_DWORD *)this + 111) + *(_DWORD *)(**((_DWORD **)this + 111) - 16);
  ++*(_DWORD *)(v49 + 4);
  v50 = *(_DWORD *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 36))(*((_DWORD *)this + 84));
  if ( v50 )
    ++*(_DWORD *)(v50 + 4);
  v51 = *((glitch::IReferenceCounted **)this + 113);
  *((_DWORD *)this + 113) = v50;
  if ( v51 )
    glitch::IReferenceCounted::drop(v51);
  *((_BYTE *)this + 316) = 1;
  glitch::gui::CGUIFileOpenDialog::fillListBox(this);
  return this;
}


// ===== 53d74c glitch::gui::CGUIFileOpenDialog::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIFileOpenDialog::onEvent(glitch::gui::CGUIFileOpenDialog *this, _DWORD *a2)
{
  const char *v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r3
  size_t v8; // r2
  const wchar_t *v9; // r0
  int v10; // r0
  int v11; // r3
  int v12; // r6
  int v13; // r0
  int v14; // r3
  int v15; // r6
  int v16; // r7
  int v17; // r1
  void (__fastcall *v18)(int, int); // r6
  int v19; // r0
  int v20; // r3
  int v21; // r2
  _DWORD *v22; // r3
  int v23; // r2
  int v24; // r1
  int v25; // r2
  void (__fastcall *v26)(glitch::gui::CGUIFileOpenDialog *, _DWORD *); // r3
  const char *v27; // r0
  _DWORD **v28; // r4
  _DWORD *v29[17]; // [sp+0h] [bp-9Ch] BYREF
  void *v30; // [sp+44h] [bp-58h]
  _BYTE v31[64]; // [sp+48h] [bp-54h] BYREF
  _DWORD *v32; // [sp+88h] [bp-14h]
  void *p; // [sp+8Ch] [bp-10h]
  _DWORD v34[3]; // [sp+90h] [bp-Ch] BYREF

  if ( !*((_BYTE *)this + 153) )
  {
LABEL_9:
    v5 = *((_DWORD *)this + 9);
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)v5 + 8))(*((_DWORD *)this + 9), a2);
    else
      return 0;
  }
  if ( *a2 )
  {
    if ( *a2 == 1 )
    {
      switch ( a2[5] )
      {
        case 0:
          v20 = *((_DWORD *)this + 84);
          *((_DWORD *)this + 86) = a2[2];
          v21 = a2[3];
          *((_BYTE *)this + 424) = 1;
          *((_DWORD *)this + 87) = v21;
          (*(void (__fastcall **)(int, glitch::gui::CGUIFileOpenDialog *))(*(_DWORD *)v20 + 16))(v20, this);
          return 1;
        case 3:
          *((_BYTE *)this + 424) = 0;
          return 1;
        case 6:
          if ( !*((_BYTE *)this + 424) )
            goto LABEL_9;
          v22 = *((_DWORD **)this + 9);
          if ( v22 )
          {
            v23 = a2[2];
            if ( v23 <= v22[14] )
              return 1;
            v24 = a2[3];
            if ( v24 <= v22[15] || v23 >= v22[16] || v24 >= v22[17] )
              return 1;
          }
          else
          {
            v23 = a2[2];
            v24 = a2[3];
          }
          v25 = v23 - *((_DWORD *)this + 86);
          v26 = *(void (__fastcall **)(glitch::gui::CGUIFileOpenDialog *, _DWORD *))(*(_DWORD *)this + 40);
          v34[1] = v24 - *((_DWORD *)this + 87);
          v34[0] = v25;
          v26(this, v34);
          *((_DWORD *)this + 86) = a2[2];
          *((_DWORD *)this + 87) = a2[3];
          return 1;
        case 7:
          return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 110) + 8))(*((_DWORD *)this + 110));
        default:
          goto LABEL_9;
      }
    }
    goto LABEL_9;
  }
  switch ( a2[4] )
  {
    case 0:
      *((_BYTE *)this + 424) = 0;
      goto LABEL_9;
    case 5:
      v7 = a2[2];
      if ( v7 == *((_DWORD *)this + 107) || v7 == *((_DWORD *)this + 109) )
      {
        glitch::gui::CGUIFileOpenDialog::sendCancelEvent(this);
        (*(void (__fastcall **)(glitch::gui::CGUIFileOpenDialog *))(*(_DWORD *)this + 28))(this);
        return 1;
      }
      if ( v7 == *((_DWORD *)this + 108) )
      {
        v8 = wcslen(dword_8BEC18);
        v9 = *((const wchar_t **)this + 105);
        if ( v8 != (*((_DWORD *)this + 104) - (int)v9) >> 2 || wmemcmp(v9, dword_8BEC18, v8) )
        {
          glitch::gui::CGUIFileOpenDialog::sendSelectedEvent(this);
          (*(void (__fastcall **)(glitch::gui::CGUIFileOpenDialog *))(*(_DWORD *)this + 28))(this);
          return 1;
        }
      }
      goto LABEL_9;
    case 8:
      v10 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 110) + 156))(*((_DWORD *)this + 110));
      v11 = *((_DWORD *)this + 114);
      v12 = v10;
      if ( v11 && *((_DWORD *)this + 113) )
      {
        if ( (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v11 + 24))(*((_DWORD *)this + 114), v10) )
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)this + 352,
            dword_8BEC18);
        }
        else
        {
          v4 = (const char *)(*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 114) + 20))(
                               *((_DWORD *)this + 114),
                               v12);
          glitch::core::stringc2stringw((glitch::core *)v31, v4);
          if ( (char *)this + 352 != v31 )
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)this + 352,
              (const wchar_t *)p,
              v32);
          if ( p != v31 && p )
            GlitchFree(p);
        }
      }
      goto LABEL_9;
    case 9:
      v13 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 110) + 156))(*((_DWORD *)this + 110));
      v14 = *((_DWORD *)this + 114);
      v15 = v13;
      if ( !v14 || !*((_DWORD *)this + 113) )
        goto LABEL_9;
      if ( (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v14 + 24))(*((_DWORD *)this + 114), v13) )
      {
        v16 = *((_DWORD *)this + 113);
        v17 = v15;
        v18 = *(void (__fastcall **)(int, int))(*(_DWORD *)v16 + 48);
        v19 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 114) + 16))(*((_DWORD *)this + 114), v17);
        v18(v16, v19);
        glitch::gui::CGUIFileOpenDialog::fillListBox(this);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          (int)this + 352,
          dword_8BEC18);
        goto LABEL_9;
      }
      v27 = (const char *)(*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 114) + 20))(
                            *((_DWORD *)this + 114),
                            v15);
      v28 = (_DWORD **)((char *)this + 352);
      glitch::core::stringc2stringw((glitch::core *)v29, v27);
      if ( v28 != v29 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v28,
          (const wchar_t *)v30,
          v29[16]);
      if ( v30 == v29 || !v30 )
        return 1;
      GlitchFree(v30);
      result = 1;
      break;
    default:
      goto LABEL_9;
  }
  return result;
}


// ===== 53db8c `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(
        glitch::gui::CGUIFileOpenDialog *this)
{
  glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog((glitch::gui::CGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53db9c `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(
        glitch::gui::CGUIFileOpenDialog *this)
{
  glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog((glitch::gui::CGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53dbac `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(
        glitch::gui::CGUIFileOpenDialog *this)
{
  glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog((glitch::gui::CGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 53dbbc `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog(
        glitch::gui::CGUIFileOpenDialog *this)
{
  glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog((glitch::gui::CGUIFileOpenDialog *)((char *)this
                                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 53dbcc glitch::gui::IGUIFont::getType(void) =====
int __fastcall glitch::gui::IGUIFont::getType(glitch::gui::IGUIFont *this)
{
  return 3;
}


// ===== 53dbd4 glitch::gui::IGUIFontBitmap::getType(void) =====
int __fastcall glitch::gui::IGUIFontBitmap::getType(glitch::gui::IGUIFontBitmap *this)
{
  return 0;
}


// ===== 53dbdc glitch::gui::CGUIFont::draw(char const*,glitch::core::rect<int> const&,glitch::video::SColor,bool,bool,glitch::core::rect<int> const*) =====
void glitch::gui::CGUIFont::draw()
{
  ;
}


// ===== 53dbe8 glitch::gui::CGUIFont::drawInTexture(wchar_t const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int>,glitch::video::SColor,bool,bool) =====
void glitch::gui::CGUIFont::drawInTexture()
{
  ;
}


// ===== 53dbec glitch::gui::CGUIFont::drawInTexture(char const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int>,glitch::video::SColor,bool,bool) =====
void glitch::gui::CGUIFont::drawInTexture()
{
  ;
}


// ===== 53dbf0 glitch::gui::CGUIFont::setBorder(uint,glitch::video::SColor) =====
void glitch::gui::CGUIFont::setBorder()
{
  ;
}


// ===== 53dbfc glitch::gui::CGUIFont::getDimension(char const*) =====
_DWORD *__fastcall glitch::gui::CGUIFont::getDimension(_DWORD *this, const char *a2)
{
  *(this + 1) = 0;
  *this = 0;
  return this;
}


// ===== 53dc0c glitch::gui::CGUIFont::getType(void) =====
int __fastcall glitch::gui::CGUIFont::getType(glitch::gui::CGUIFont *this)
{
  return 0;
}


// ===== 53dc14 glitch::gui::CGUIFont::setTracking(int) =====
void __fastcall glitch::gui::CGUIFont::setTracking(glitch::gui::CGUIFont *this, int a2)
{
  ;
}


// ===== 53dc18 glitch::gui::CGUIFont::getTracking(void) =====
int __fastcall glitch::gui::CGUIFont::getTracking(glitch::gui::CGUIFont *this)
{
  return 0;
}


// ===== 53dc20 glitch::gui::IGUIFont::~IGUIFont() =====
void __fastcall glitch::gui::IGUIFont::~IGUIFont(glitch::gui::IGUIFont *this)
{
  ;
}


// ===== 53dc24 glitch::gui::IGUIFontBitmap::~IGUIFontBitmap() =====
void __fastcall glitch::gui::IGUIFontBitmap::~IGUIFontBitmap(glitch::gui::IGUIFontBitmap *this)
{
  ;
}


// ===== 53dc28 glitch::gui::CGUIFont::CGUIFont(glitch::gui::IGUIEnvironment *,char const*) =====
glitch::gui::CGUIFont *__fastcall glitch::gui::CGUIFont::CGUIFont(
        glitch::gui::CGUIFont *this,
        glitch::gui::IGUIEnvironment *a2,
        const char *a3)
{
  int v5; // r0
  int v6; // r3
  int v7; // r0
  int v8; // r3

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_96D680;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_BYTE *)this + 20) = 0;
  *((_DWORD *)this + 8) = (char *)this + 20;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 7) = (char *)this + 20;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = a2;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  if ( a2 )
  {
    v5 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a2 + 32))(a2);
    v6 = *((_DWORD *)this + 13);
    *((_DWORD *)this + 11) = v5;
    v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 112))(v6, a3);
    *((_DWORD *)this + 12) = v7;
    if ( v7 )
      ++*(_DWORD *)(v7 + 4);
    v8 = *((_DWORD *)this + 11);
    if ( v8 )
      ++*(_DWORD *)(v8 + 4);
  }
  return this;
}


// ===== 53dd04 glitch::gui::CGUIFont::CGUIFont(glitch::gui::IGUIEnvironment *,char const*) =====
glitch::gui::CGUIFont *__fastcall glitch::gui::CGUIFont::CGUIFont(
        glitch::gui::CGUIFont *this,
        glitch::gui::IGUIEnvironment *a2,
        const char *a3)
{
  int v5; // r0
  int v6; // r3
  int v7; // r0
  int v8; // r3

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_96D680;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_BYTE *)this + 20) = 0;
  *((_DWORD *)this + 8) = (char *)this + 20;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 7) = (char *)this + 20;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = a2;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  if ( a2 )
  {
    v5 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a2 + 32))(a2);
    v6 = *((_DWORD *)this + 13);
    *((_DWORD *)this + 11) = v5;
    v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 112))(v6, a3);
    *((_DWORD *)this + 12) = v7;
    if ( v7 )
      ++*(_DWORD *)(v7 + 4);
    v8 = *((_DWORD *)this + 11);
    if ( v8 )
      ++*(_DWORD *)(v8 + 4);
  }
  return this;
}


// ===== 53dde0 glitch::gui::CGUIFont::setMaxHeight(void) =====
int *__fastcall glitch::gui::CGUIFont::setMaxHeight(glitch::gui::CGUIFont *this)
{
  int v1; // r3
  unsigned int v2; // r5
  int *result; // r0
  int v5; // r2
  int v6; // r6
  int v7; // r3
  int v8; // r3

  v1 = *((_DWORD *)this + 12);
  v2 = 0;
  *((_DWORD *)this + 15) = 0;
  result = (int *)(*(int (__fastcall **)(int))(*(_DWORD *)v1 + 12))(v1);
  v5 = *result;
  v6 = result[1];
  if ( (unsigned int)(v6 - *result) >> 4 )
  {
    do
    {
      v7 = v5 + 16 * v2++;
      v8 = *(_DWORD *)(v7 + 12) - *(_DWORD *)(v7 + 4);
      if ( *((_DWORD *)this + 15) < v8 )
      {
        *((_DWORD *)this + 15) = v8;
        v5 = *result;
        v6 = result[1];
      }
    }
    while ( v2 < (v6 - v5) >> 4 );
  }
  return result;
}


// ===== 53de4c glitch::gui::CGUIFont::setKerningWidth(int) =====
int __fastcall glitch::gui::CGUIFont::setKerningWidth(int this, int a2)
{
  *(_DWORD *)(this + 64) = a2;
  return this;
}


// ===== 53de54 glitch::gui::CGUIFont::setKerningHeight(int) =====
int __fastcall glitch::gui::CGUIFont::setKerningHeight(int this, int a2)
{
  *(_DWORD *)(this + 68) = a2;
  return this;
}


// ===== 53de5c glitch::gui::CGUIFont::getKerningHeight(void) =====
int __fastcall glitch::gui::CGUIFont::getKerningHeight(glitch::gui::CGUIFont *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 53de64 glitch::gui::CGUIFont::getAreaFromCharacter(wchar_t) =====
int __fastcall glitch::gui::CGUIFont::getAreaFromCharacter(glitch::gui::CGUIFont *this, wchar_t a2)
{
  char *v2; // r3
  char *v3; // r4
  char *v4; // r12
  wchar_t v5; // r2
  bool v6; // cc
  char *v7; // r2

  v2 = *((char **)this + 6);
  v3 = (char *)this + 20;
  if ( !v2 )
    return *((_DWORD *)this + 14);
  v4 = (char *)this + 20;
  while ( 1 )
  {
    v5 = *((_DWORD *)v2 + 4);
    v6 = a2 > v5;
    v7 = a2 <= v5 ? *((char **)v2 + 2) : *((char **)v2 + 3);
    if ( v6 )
      v2 = v4;
    v4 = v2;
    if ( !v7 )
      break;
    v2 = v7;
  }
  if ( v3 == v2 || a2 < *((_DWORD *)v2 + 4) || v3 == v2 )
    return *((_DWORD *)this + 14);
  else
    return *((_DWORD *)v2 + 5);
}


// ===== 53dee4 glitch::gui::CGUIFont::getSpriteNoFromChar(wchar_t const*) =====
int __fastcall glitch::gui::CGUIFont::getSpriteNoFromChar(glitch::gui::CGUIFont *this, wchar_t *a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 2) + 16 * glitch::gui::CGUIFont::getAreaFromCharacter(this, *a2) + 12);
}


// ===== 53df04 glitch::gui::CGUIFont::getKerningWidth(wchar_t const*,wchar_t const*) =====
int __fastcall glitch::gui::CGUIFont::getKerningWidth(glitch::gui::CGUIFont *this, wchar_t *a2, wchar_t *a3)
{
  int v5; // r5

  v5 = *((_DWORD *)this + 16);
  if ( a2 )
  {
    v5 += *(_DWORD *)(*((_DWORD *)this + 2) + 16 * glitch::gui::CGUIFont::getAreaFromCharacter(this, *a2) + 4);
    if ( a3 )
      v5 += *(_DWORD *)(*((_DWORD *)this + 2) + 16 * glitch::gui::CGUIFont::getAreaFromCharacter(this, *a3));
  }
  return v5;
}


// ===== 53df5c glitch::gui::CGUIFont::getDimension(wchar_t const*) =====
glitch::gui::CGUIFont *__fastcall glitch::gui::CGUIFont::getDimension(
        glitch::gui::CGUIFont *this,
        wchar_t *a2,
        wchar_t *a3)
{
  int v3; // r6
  wchar_t v4; // r3
  wchar_t v7; // r8
  wchar_t *v8; // r5
  wchar_t v9; // t1
  int AreaFromCharacter; // r0
  wchar_t v11; // t1
  wchar_t v12; // r3
  int v13; // r2

  v3 = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v4 = *a3;
  v7 = a2[15];
  if ( !*a3 )
  {
    v3 = 0;
    goto LABEL_12;
  }
  v8 = a3;
  do
  {
    while ( 1 )
    {
      if ( v4 == 13 )
      {
        v11 = v8[1];
        ++v8;
        if ( v11 != 10 )
          goto LABEL_8;
        break;
      }
      if ( v4 == 10 )
        break;
      v9 = *v8++;
      AreaFromCharacter = glitch::gui::CGUIFont::getAreaFromCharacter((glitch::gui::CGUIFont *)a2, v9);
      v3 += *(_DWORD *)(a2[2] + 16 * AreaFromCharacter + 8)
          + *(_DWORD *)(a2[2] + 16 * AreaFromCharacter)
          + *(_DWORD *)(a2[2] + 16 * AreaFromCharacter + 4)
          + a2[16];
      v4 = *v8;
      if ( !*v8 )
        goto LABEL_11;
    }
    ++v8;
LABEL_8:
    v12 = *((_DWORD *)this + 1) + v7;
    if ( v3 > *(_DWORD *)this )
      *(_DWORD *)this = v3;
    *((_DWORD *)this + 1) = v12;
    v4 = *v8;
    v3 = 0;
  }
  while ( *v8 );
LABEL_11:
  v4 = *((_DWORD *)this + 1);
LABEL_12:
  v13 = *(_DWORD *)this;
  *((_DWORD *)this + 1) = v4 + v7;
  if ( v3 > v13 )
    *(_DWORD *)this = v3;
  return this;
}


// ===== 53e038 glitch::gui::CGUIFont::draw(wchar_t const*,glitch::core::rect<int> const&,glitch::video::SColor,bool,bool,glitch::core::rect<int> const*) =====
int __fastcall glitch::gui::CGUIFont::draw(
        glitch::gui::CGUIFont *a1,
        wchar_t *a2,
        int *a3,
        int a4,
        char a5,
        char a6,
        int a7)
{
  int result; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r1
  int v14; // r2
  int v15; // r3
  wchar_t v16; // r1
  int AreaFromCharacter; // r0
  int v18; // r1
  int v19; // r2
  _DWORD *v20; // r5
  int v21; // r0
  wchar_t v22; // t1
  int v23; // [sp+1Ch] [bp-18h] BYREF
  int v24; // [sp+20h] [bp-14h] BYREF
  int v25; // [sp+24h] [bp-10h]
  int v26; // [sp+28h] [bp-Ch] BYREF
  int v27; // [sp+2Ch] [bp-8h]

  result = *((_DWORD *)a1 + 11);
  v23 = a4;
  if ( !result )
    return result;
  v11 = *a3;
  v12 = a3[1];
  v24 = v11;
  v25 = v12;
  if ( a5 )
  {
    result = (*(int (__fastcall **)(int *, glitch::gui::CGUIFont *, wchar_t *))(*(_DWORD *)a1 + 28))(&v26, a1, a2);
    v13 = v27;
    v24 += (a3[2] - *a3 - v26) >> 1;
  }
  else
  {
    if ( !a6 && !a7 )
    {
LABEL_15:
      v16 = *a2;
      if ( *a2 )
      {
        do
        {
          AreaFromCharacter = glitch::gui::CGUIFont::getAreaFromCharacter(a1, v16);
          v18 = *((_DWORD *)a1 + 2);
          v19 = *(_DWORD *)(v18 + 16 * AreaFromCharacter);
          v20 = (_DWORD *)(v18 + 16 * AreaFromCharacter);
          v21 = *((_DWORD *)a1 + 12);
          v24 += v19;
          (*(void (__fastcall **)(int, _DWORD, int *, int, int *, _DWORD, _DWORD, int, _DWORD))(*(_DWORD *)v21 + 36))(
            v21,
            v20[3],
            &v24,
            a7,
            &v23,
            0,
            0,
            1,
            0);
          result = v20[1];
          v22 = a2[1];
          ++a2;
          v16 = v22;
          v24 += v20[2] + result + *((_DWORD *)a1 + 16);
        }
        while ( v22 );
      }
      return result;
    }
    result = (*(int (__fastcall **)(int *, glitch::gui::CGUIFont *, wchar_t *))(*(_DWORD *)a1 + 28))(&v26, a1, a2);
    v13 = v27;
  }
  if ( a6 )
    v25 += (a3[3] - a3[1] - v13) >> 1;
  if ( !a7 )
    goto LABEL_15;
  v14 = v25;
  result = *(_DWORD *)(a7 + 4);
  v15 = v25 + v13;
  if ( v25 + v13 >= *(_DWORD *)(a7 + 12) )
    v15 = *(_DWORD *)(a7 + 12);
  if ( v25 < result )
    v14 = *(_DWORD *)(a7 + 4);
  if ( v15 < v14 )
    v14 = v15;
  if ( v15 >= v14 )
    goto LABEL_15;
  return result;
}


// ===== 53e1f0 glitch::gui::CGUIFont::getCharacterFromPos(wchar_t const*,int) =====
int __fastcall glitch::gui::CGUIFont::getCharacterFromPos(glitch::gui::CGUIFont *this, wchar_t *a2, int a3)
{
  wchar_t v4; // r1
  int v7; // r6
  int v8; // r7
  int AreaFromCharacter; // r0

  v4 = *a2;
  if ( !v4 )
    return -1;
  v7 = 0;
  v8 = 0;
  while ( 1 )
  {
    AreaFromCharacter = glitch::gui::CGUIFont::getAreaFromCharacter(this, v4);
    v8 += *(_DWORD *)(*((_DWORD *)this + 2) + 16 * AreaFromCharacter + 4)
        + *(_DWORD *)(*((_DWORD *)this + 2) + 16 * AreaFromCharacter + 8)
        + *(_DWORD *)(*((_DWORD *)this + 2) + 16 * AreaFromCharacter);
    if ( v8 >= a3 )
      break;
    v4 = a2[++v7];
    if ( !v4 )
      return -1;
  }
  return v7;
}


// ===== 53e26c glitch::gui::CGUIFont::getSpriteBank(void) =====
int __fastcall glitch::gui::CGUIFont::getSpriteBank(glitch::gui::CGUIFont *this)
{
  return *((_DWORD *)this + 12);
}


// ===== 53e274 `global constructor keyed to'.._source_glitch_gui_CGUIFont.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIFont.cpp()
{
  dword_9F65F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F65F4 = 1056964608;
}


// ===== 53e294 std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r5
  size_t v4; // r7
  char *v6; // r0
  int v7; // r6
  _DWORD *v8; // t0
  char *v9; // r3
  int v10; // r7
  int v11; // r1
  char *v12; // r3
  int v13; // r2

  v2 = 0;
  v4 = (a2[1] - *a2) & 0xFFFFFFF8;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)GlitchAlloc(v4, 0);
  a1[2] = &v6[v4];
  *a1 = v6;
  a1[1] = v6;
  v8 = a2;
  v7 = *a2;
  v9 = v6;
  v10 = (v8[1] - v7) >> 3;
  if ( v10 > 0 )
  {
    v11 = v10;
    do
    {
      --v11;
      *(_DWORD *)&v6[v2] = *(_DWORD *)(v7 + v2);
      v12 = &v6[v2];
      v13 = *(_DWORD *)(v7 + v2 + 4);
      v2 += 8;
      *((_DWORD *)v12 + 1) = v13;
    }
    while ( v11 );
    v9 = &v6[8 * v10];
  }
  a1[1] = v9;
  return a1;
}


// ===== 53e328 std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<wchar_t const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r7
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == a3 )
  {
    v11 = GlitchAlloc(0x18u, 0);
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
    v10 = GlitchAlloc(0x18u, 0);
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
    v14 = GlitchAlloc(0x18u, 0);
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


// ===== 53e458 std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<wchar_t const,int> const&) =====
int __fastcall std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 53e5e0 std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<wchar_t const,int>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>>,std::pair<wchar_t const,int> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
        std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
            std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
              std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 53e954 std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 53e988 glitch::gui::CGUIFont::~CGUIFont() =====
void __fastcall glitch::gui::CGUIFont::~CGUIFont(glitch::gui::CGUIFont *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 11);
  *(_DWORD *)this = off_96D680;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 12);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  if ( *((_DWORD *)this + 9) )
  {
    std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 20,
      *((_DWORD **)this + 6));
    *((_DWORD *)this + 8) = (char *)this + 20;
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 7) = (char *)this + 20;
    *((_DWORD *)this + 6) = 0;
  }
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 53ea1c glitch::gui::CGUIFont::~CGUIFont() =====
void __fastcall glitch::gui::CGUIFont::~CGUIFont(glitch::gui::CGUIFont *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 11);
  *(_DWORD *)this = off_96D680;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 12);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  if ( *((_DWORD *)this + 9) )
  {
    std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 20,
      *((_DWORD **)this + 6));
    *((_DWORD *)this + 8) = (char *)this + 20;
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 7) = (char *)this + 20;
    *((_DWORD *)this + 6) = 0;
  }
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 53eab0 std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
bool __fastcall std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
        int a1,
        int a2)
{
  int v2; // r2
  const wchar_t *v3; // r0
  int v4; // r3
  const wchar_t *v5; // r1
  size_t v6; // r2

  v2 = *(_DWORD *)(a1 + 64);
  v3 = *(const wchar_t **)(a1 + 68);
  v4 = *(_DWORD *)(a2 + 64);
  v5 = *(const wchar_t **)(a2 + 68);
  v6 = (v2 - (int)v3) >> 2;
  return v6 == (v4 - (int)v5) >> 2 && wmemcmp(v3, v5, v6) == 0;
}


// ===== 53eaf0 glitch::gui::CGUIFont::~CGUIFont() =====
void __fastcall glitch::gui::CGUIFont::~CGUIFont(glitch::gui::CGUIFont *this)
{
  glitch::gui::CGUIFont::~CGUIFont(this);
  LC_API_FREE_0(this);
}


// ===== 53eb0c glitch::gui::IGUIFontBitmap::~IGUIFontBitmap() =====
void __fastcall glitch::gui::IGUIFontBitmap::~IGUIFontBitmap(glitch::gui::IGUIFontBitmap *this)
{
  LC_API_FREE_0(this);
}


// ===== 53eb20 glitch::gui::IGUIFont::~IGUIFont() =====
void __fastcall glitch::gui::IGUIFont::~IGUIFont(glitch::gui::IGUIFont *this)
{
  LC_API_FREE_0(this);
}


// ===== 53eb34 std::vector<glitch::gui::CGUIFont::SFontArea,glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUIFont::SFontArea*,glitch::gui::CGUIFont::SFontArea const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUIFont::SFontArea,glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r10
  size_t v8; // r10
  _DWORD *v9; // r0
  char *v10; // r7
  _DWORD *v11; // r4
  int v12; // r8
  _DWORD *v13; // r8
  int v14; // r6
  unsigned int v15; // lr
  _DWORD *v16; // r12
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  char *v24; // r0
  _DWORD *v25; // r8
  _DWORD *v26; // r10

  v6 = (a1[1] - *a1) >> 4;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0xFFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 4;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = 0;
    do
    {
      v16 = &v11[v15 / 4];
      --v14;
      v17 = *(_DWORD *)&v10[v15];
      v18 = *(_DWORD *)&v10[v15 + 4];
      v19 = *(_DWORD *)&v10[v15 + 8];
      v20 = *(_DWORD *)&v10[v15 + 12];
      v15 += 16;
      *v16 = v17;
      v16[1] = v18;
      v16[2] = v19;
      v16[3] = v20;
    }
    while ( v14 );
    v13 = &v11[4 * v12];
  }
  else
  {
    v13 = v9;
  }
  v21 = a3[1];
  v22 = a3[2];
  v23 = a3[3];
  *v13 = *a3;
  v13[1] = v21;
  v13[2] = v22;
  v13[3] = v23;
  v24 = (char *)a1[1];
  v25 = v13 + 4;
  v26 = &v11[v8];
  if ( v24 != (char *)*a1 )
    v24 += 16 * ~((unsigned int)&v24[-*a1 - 16] >> 4);
  GlitchFree(v24);
  *a1 = v11;
  a1[1] = v25;
  a1[2] = v26;
}


// ===== 53ec04 std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::SGUISpriteFrame*,glitch::gui::SGUISpriteFrame const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  char *v10; // lr
  _DWORD *v11; // r8
  int v12; // r5
  _DWORD *v13; // r5
  int v14; // r1
  int v15; // r0
  _DWORD *v16; // r3
  int v17; // r2
  _DWORD *v18; // r6
  char *v19; // r0

  v6 = (a1[1] - *a1) >> 3;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x1FFFFFFF || v6 > v7 )
    v8 = -2;
  else
    v8 = 2 * v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 3;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = 0;
    do
    {
      --v14;
      v11[v15] = *(_DWORD *)&v10[v15 * 4];
      v16 = &v11[v15];
      v17 = *(_DWORD *)&v10[v15 * 4 + 4];
      v15 += 2;
      v16[1] = v17;
    }
    while ( v14 );
    v13 = &v11[2 * v12];
  }
  else
  {
    v13 = v9;
  }
  v18 = &v11[v8];
  *v13 = *a3;
  v13[1] = a3[1];
  v19 = (char *)a1[1];
  if ( v19 != (char *)*a1 )
    v19 += 8 * ~((unsigned int)&v19[-*a1 - 8] >> 3);
  GlitchFree(v19);
  a1[2] = v18;
  *a1 = v11;
  a1[1] = v13 + 2;
}


// ===== 53ece8 std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::rect<int>*,glitch::core::rect<int> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  char *v10; // r3
  _DWORD *v11; // r8
  int v12; // r5
  _DWORD *v13; // r5
  int v14; // r1
  _DWORD *v15; // r2
  int v16; // r0
  _DWORD *v17; // r6
  char *v18; // r0

  v6 = (a1[1] - *a1) >> 4;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0xFFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 4;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = v9;
    do
    {
      --v14;
      *v15 = *(_DWORD *)v10;
      v15[1] = *((_DWORD *)v10 + 1);
      v15[2] = *((_DWORD *)v10 + 2);
      v16 = *((_DWORD *)v10 + 3);
      v10 += 16;
      v15[3] = v16;
      v15 += 4;
    }
    while ( v14 );
    v13 = &v11[4 * v12];
  }
  else
  {
    v13 = v9;
  }
  v17 = &v11[v8];
  *v13 = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  v13[3] = a3[3];
  v18 = (char *)a1[1];
  if ( v18 != (char *)*a1 )
    v18 += 16 * ~((unsigned int)&v18[-*a1 - 16] >> 4);
  GlitchFree(v18);
  a1[2] = v17;
  *a1 = v11;
  a1[1] = v13 + 4;
}


// ===== 53ede8 std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::SGUISprite const&) =====
void __fastcall std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r4
  int v3; // r5
  unsigned int v6; // r3
  unsigned int v7; // r9
  size_t v8; // r9
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  _DWORD *v11; // r10
  int v12; // r5
  int v13; // r11
  _DWORD *v14; // r4
  int v15; // r6
  _DWORD *v16; // r5
  int v17; // r3
  _DWORD *v18; // r6
  _DWORD *v19; // r4
  _DWORD *v20; // r5
  void *v21; // r0
  void *v22; // t1

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v6 = (v3 - *a1) >> 4;
    if ( v6 )
      v7 = 2 * v6;
    else
      v7 = 1;
    if ( v7 > 0xFFFFFFF || v6 > v7 )
      v8 = -4;
    else
      v8 = 4 * v7;
    v9 = GlitchAlloc(v8 * 4, 0);
    v10 = (_DWORD *)*a1;
    v11 = v9;
    v12 = v3 - *a1;
    v13 = v12 >> 4;
    if ( v12 >> 4 > 0 )
    {
      v15 = v12 >> 4;
      v16 = v9;
      do
      {
        std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::vector(
          v16,
          v10);
        v17 = v10[3];
        --v15;
        v10 += 4;
        v16[3] = v17;
        v16 += 4;
      }
      while ( v15 );
      v14 = &v11[4 * v13];
    }
    else
    {
      v14 = v9;
    }
    std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v14,
      a2);
    v18 = v14 + 4;
    v14[3] = a2[3];
    v19 = (_DWORD *)a1[1];
    v20 = (_DWORD *)*a1;
    if ( v19 != (_DWORD *)*a1 )
    {
      do
      {
        v22 = (void *)*(v19 - 4);
        v19 -= 4;
        v21 = v22;
        if ( v22 )
          GlitchFree(v21);
      }
      while ( v20 != v19 );
      v20 = (_DWORD *)*a1;
    }
    GlitchFree(v20);
    a1[1] = v18;
    a1[2] = &v11[v8];
    *a1 = v11;
  }
  else
  {
    std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      (_DWORD *)a1[1],
      a2);
    *(_DWORD *)(v2 + 12) = a2[3];
    a1[1] += 16;
  }
}


// ===== 53ef08 glitch::gui::CGUIFont::readPositions16bit(boost::intrusive_ptr<glitch::video::CImage> const&,int &) =====
void __fastcall glitch::gui::CGUIFont::readPositions16bit(int a1, int a2, unsigned int *a3)
{
  _WORD *v4; // r5
  int v6; // r10
  __int16 v7; // r2
  __int16 v8; // r11
  _WORD *v9; // r5
  int v10; // r4
  int v11; // r3
  _DWORD *v12; // r0
  _DWORD *v13; // r1
  _DWORD *v14; // r0
  int v15; // r3
  unsigned int v16; // r3
  int v17; // r3
  _DWORD *v18; // r0
  unsigned int v19; // r2
  int v20; // r3
  int v21; // r3
  _DWORD *v22; // r12
  _DWORD *v23; // r0
  int v24; // r1
  int v25; // r2
  unsigned int v26; // r3
  _DWORD *v27; // r12
  unsigned int v28; // r6
  _DWORD *v29; // r1
  _DWORD *i; // r3
  unsigned int v31; // r2
  bool v32; // cc
  _DWORD *v33; // r2
  _DWORD *v34; // r2
  unsigned int v35; // r3
  bool v36; // cc
  _DWORD *v37; // r3
  _DWORD *v38; // r3
  void *v39; // r0
  bool v40; // zf
  __int16 v41; // [sp+0h] [bp-9Ch]
  _DWORD *v42; // [sp+4h] [bp-98h]
  int v43; // [sp+8h] [bp-94h]
  unsigned int v44; // [sp+10h] [bp-8Ch]
  __int16 v45; // [sp+24h] [bp-78h]
  int v46; // [sp+28h] [bp-74h]
  _DWORD *v47; // [sp+3Ch] [bp-60h]
  int v48; // [sp+40h] [bp-5Ch] BYREF
  int v49; // [sp+44h] [bp-58h]
  int v50; // [sp+48h] [bp-54h]
  unsigned int v51; // [sp+4Ch] [bp-50h]
  void *p[3]; // [sp+50h] [bp-4Ch] BYREF
  int v53; // [sp+5Ch] [bp-40h]
  int v54; // [sp+60h] [bp-3Ch] BYREF
  int v55; // [sp+64h] [bp-38h]
  int v56; // [sp+68h] [bp-34h]
  int v57; // [sp+6Ch] [bp-30h]
  char v58[8]; // [sp+70h] [bp-2Ch] BYREF
  unsigned int v59[2]; // [sp+78h] [bp-24h] BYREF
  unsigned int v60[2]; // [sp+80h] [bp-1Ch] BYREF
  _DWORD v61[2]; // [sp+88h] [bp-14h] BYREF
  _DWORD *v62; // [sp+90h] [bp-Ch] BYREF
  _DWORD *v63; // [sp+94h] [bp-8h] BYREF

  v4 = *(_WORD **)(*(_DWORD *)a2 + 8);
  v46 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  v6 = *(_DWORD *)(*(_DWORD *)a2 + 16);
  if ( v4 )
  {
    v7 = v4[2];
    v41 = v7;
    v45 = *v4 | 1;
    v8 = v4[1];
    *v4 = v45;
    v4[1] = v7;
    if ( v46 > 0 )
    {
      v47 = (_DWORD *)(a1 + 8);
      v42 = (_DWORD *)(a1 + 20);
      v43 = 0;
      while ( v6 <= 0 )
      {
LABEL_14:
        if ( ++v43 == v46 )
          return;
      }
      v9 = v4 + 1;
      v10 = 0;
      while ( 1 )
      {
        while ( 1 )
        {
          v11 = (__int16)*(v9 - 1);
          if ( v45 == v11 )
            break;
          if ( v8 == v11 )
          {
            v14 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48));
            if ( *a3 >= (v14[1] - *v14) >> 4 )
            {
              *a3 = 0;
              return;
            }
            *(v9 - 1) = 0;
            v15 = *(_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48))
                + 16 * *a3;
            *(_DWORD *)(v15 + 8) = v10;
            *(_DWORD *)(v15 + 12) = v43;
            v16 = *a3;
            v61[0] = 0;
            v61[1] = v16;
            memset(p, 0, sizeof(p));
            v53 = 0;
            std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              p,
              0,
              v61);
            v17 = *(_DWORD *)(a1 + 48);
            v53 = 0;
            v18 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v17 + 16))(v17);
            std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              v18,
              p);
            v19 = *a3;
            v20 = *(_DWORD *)(a1 + 48);
            v50 = 0;
            v51 = v19;
            v48 = 0;
            v49 = 0;
            v21 = *(_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v20 + 12))(v20);
            v22 = *(_DWORD **)(a1 + 12);
            v23 = *(_DWORD **)(a1 + 16);
            v50 = *(_DWORD *)(v21 + 16 * *a3 + 8) - *(_DWORD *)(v21 + 16 * *a3);
            if ( v22 == v23 )
            {
              std::vector<glitch::gui::CGUIFont::SFontArea,glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                v47,
                (int)v22,
                &v48);
            }
            else
            {
              v24 = v49;
              v25 = v50;
              v26 = v51;
              *v22 = v48;
              v22[1] = v24;
              v22[2] = v25;
              v22[3] = v26;
              *(_DWORD *)(a1 + 12) += 16;
            }
            v27 = *(_DWORD **)(a1 + 24);
            v44 = *a3;
            v28 = *a3 + 32;
            if ( !v27 )
              goto LABEL_45;
            v29 = v42;
            for ( i = *(_DWORD **)(a1 + 24); ; i = v33 )
            {
              v31 = i[4];
              v32 = v28 > v31;
              if ( v28 <= v31 )
                v33 = (_DWORD *)i[2];
              else
                v33 = (_DWORD *)i[3];
              if ( v32 )
                i = v29;
              v29 = i;
              if ( !v33 )
                break;
            }
            if ( v42 == i || v28 < i[4] || v42 == i )
            {
LABEL_45:
              v60[0] = v44 + 32;
              v60[1] = v44;
              std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                (int)v58,
                v42,
                v60);
            }
            else
            {
              v34 = v42;
              while ( 1 )
              {
                v35 = v27[4];
                v36 = v28 > v35;
                if ( v28 <= v35 )
                  v37 = (_DWORD *)v27[2];
                else
                  v37 = (_DWORD *)v27[3];
                if ( v36 )
                  v27 = v34;
                v34 = v27;
                if ( !v37 )
                  break;
                v27 = v37;
              }
              if ( v42 == v27 || (v38 = v27, v28 < v27[4]) )
              {
                v59[0] = v44 + 32;
                v59[1] = 0;
                v63 = v27;
                std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                  &v62,
                  v42,
                  &v63,
                  v59);
                v44 = *a3;
                v38 = v62;
              }
              v38[5] = v44;
            }
            v39 = p[0];
            v40 = p[0] == nullptr;
            ++*a3;
            if ( !v40 )
              GlitchFree(v39);
          }
          else if ( v41 == v11 )
          {
            *(v9 - 1) = 0;
          }
LABEL_9:
          ++v10;
          ++v9;
          if ( v10 == v6 )
            goto LABEL_13;
        }
        *(v9 - 1) = 0;
        v12 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48));
        v54 = v10;
        v56 = v10;
        v55 = v43;
        v57 = v43;
        v13 = (_DWORD *)v12[1];
        if ( v13 == (_DWORD *)v12[2] )
        {
          std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            v12,
            (int)v13,
            &v54);
          goto LABEL_9;
        }
        *v13 = v10++;
        v13[1] = v55;
        ++v9;
        v13[2] = v56;
        v13[3] = v57;
        v12[1] += 16;
        if ( v10 == v6 )
        {
LABEL_13:
          v4 = v9 - 1;
          goto LABEL_14;
        }
      }
    }
  }
  else
  {
    glitch::os::Printer::log("Could not lock texture while preparing texture for a font.", 3);
  }
}


// ===== 53f354 glitch::gui::CGUIFont::readPositions32bit(boost::intrusive_ptr<glitch::video::CImage> const&,int &) =====
void __fastcall glitch::gui::CGUIFont::readPositions32bit(int a1, int *a2, unsigned int *a3)
{
  int *v4; // r5
  int v6; // r9
  int v7; // r11
  int v8; // r10
  int v9; // r3
  int v10; // r2
  _DWORD *v11; // r5
  int v12; // r4
  int v13; // r3
  _DWORD *v14; // r0
  _DWORD *v15; // r1
  _DWORD *v16; // r0
  int v17; // r3
  unsigned int v18; // r3
  int v19; // r3
  _DWORD *v20; // r0
  unsigned int v21; // r2
  int v22; // r3
  int v23; // r3
  _DWORD *v24; // r12
  _DWORD *v25; // r0
  int v26; // r1
  int v27; // r2
  unsigned int v28; // r3
  _DWORD *v29; // r12
  unsigned int v30; // r6
  _DWORD *v31; // r1
  _DWORD *i; // r3
  unsigned int v33; // r2
  bool v34; // cc
  _DWORD *v35; // r2
  _DWORD *v36; // r2
  unsigned int v37; // r3
  bool v38; // cc
  _DWORD *v39; // r3
  _DWORD *v40; // r3
  void *v41; // r0
  bool v42; // zf
  _DWORD *v43; // [sp+0h] [bp-94h]
  int v44; // [sp+4h] [bp-90h]
  int v45; // [sp+8h] [bp-8Ch]
  unsigned int v46; // [sp+10h] [bp-84h]
  _DWORD *v47; // [sp+34h] [bp-60h]
  int v48; // [sp+38h] [bp-5Ch] BYREF
  int v49; // [sp+3Ch] [bp-58h]
  int v50; // [sp+40h] [bp-54h]
  unsigned int v51; // [sp+44h] [bp-50h]
  void *p[3]; // [sp+48h] [bp-4Ch] BYREF
  int v53; // [sp+54h] [bp-40h]
  int v54; // [sp+58h] [bp-3Ch] BYREF
  int v55; // [sp+5Ch] [bp-38h]
  int v56; // [sp+60h] [bp-34h]
  int v57; // [sp+64h] [bp-30h]
  char v58[8]; // [sp+68h] [bp-2Ch] BYREF
  unsigned int v59[2]; // [sp+70h] [bp-24h] BYREF
  unsigned int v60[2]; // [sp+78h] [bp-1Ch] BYREF
  _DWORD v61[2]; // [sp+80h] [bp-14h] BYREF
  _DWORD *v62; // [sp+88h] [bp-Ch] BYREF
  _DWORD *v63; // [sp+8Ch] [bp-8h] BYREF

  v45 = *a2;
  v4 = *(int **)(*a2 + 8);
  if ( v4 )
  {
    v6 = v4[1];
    v7 = v4[2];
    v8 = *v4;
    v4[1] = v7;
    v9 = *(_DWORD *)(v45 + 20);
    if ( v9 > 0 )
    {
      v43 = (_DWORD *)(a1 + 20);
      v44 = 0;
      v47 = (_DWORD *)(a1 + 8);
      v10 = *(_DWORD *)(v45 + 16);
      while ( v10 <= 0 )
      {
LABEL_14:
        v34 = v9 <= ++v44;
        if ( v34 )
          return;
      }
      v11 = v4 + 1;
      v12 = 0;
      while ( 1 )
      {
        while ( 1 )
        {
          v13 = *(v11 - 1);
          if ( v13 != v8 )
            break;
          *(v11 - 1) = 0;
          v14 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48));
          v54 = v12;
          v56 = v12;
          v55 = v44;
          v57 = v44;
          v15 = (_DWORD *)v14[1];
          if ( v15 == (_DWORD *)v14[2] )
          {
            std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v14,
              (int)v15,
              &v54);
            v10 = *(_DWORD *)(v45 + 16);
            goto LABEL_9;
          }
          *v15 = v12++;
          ++v11;
          v15[1] = v55;
          v15[2] = v56;
          v15[3] = v57;
          v14[1] += 16;
          v10 = *(_DWORD *)(v45 + 16);
          if ( v10 <= v12 )
          {
LABEL_13:
            v4 = v11 - 1;
            v9 = *(_DWORD *)(v45 + 20);
            goto LABEL_14;
          }
        }
        if ( v6 != v13 )
        {
          if ( v7 == v13 )
          {
            *(v11 - 1) = 0;
            v10 = *(_DWORD *)(v45 + 16);
          }
          goto LABEL_9;
        }
        v16 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48));
        if ( *a3 >= (v16[1] - *v16) >> 4 )
        {
          *a3 = 0;
          return;
        }
        *(v11 - 1) = 0;
        v17 = *(_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48)) + 16 * *a3;
        *(_DWORD *)(v17 + 8) = v12;
        *(_DWORD *)(v17 + 12) = v44;
        v18 = *a3;
        v61[0] = 0;
        v61[1] = v18;
        memset(p, 0, sizeof(p));
        v53 = 0;
        std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          p,
          0,
          v61);
        v19 = *(_DWORD *)(a1 + 48);
        v53 = 0;
        v20 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v19 + 16))(v19);
        std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v20,
          p);
        v21 = *a3;
        v22 = *(_DWORD *)(a1 + 48);
        v50 = 0;
        v51 = v21;
        v48 = 0;
        v49 = 0;
        v23 = *(_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v22 + 12))(v22);
        v24 = *(_DWORD **)(a1 + 12);
        v25 = *(_DWORD **)(a1 + 16);
        v50 = *(_DWORD *)(v23 + 16 * *a3 + 8) - *(_DWORD *)(v23 + 16 * *a3);
        if ( v24 == v25 )
        {
          std::vector<glitch::gui::CGUIFont::SFontArea,glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            v47,
            (int)v24,
            &v48);
        }
        else
        {
          v26 = v49;
          v27 = v50;
          v28 = v51;
          *v24 = v48;
          v24[1] = v26;
          v24[2] = v27;
          v24[3] = v28;
          *(_DWORD *)(a1 + 12) += 16;
        }
        v29 = *(_DWORD **)(a1 + 24);
        v46 = *a3;
        v30 = *a3 + 32;
        if ( !v29 )
          goto LABEL_45;
        v31 = v43;
        for ( i = *(_DWORD **)(a1 + 24); ; i = v35 )
        {
          v33 = i[4];
          v34 = v30 > v33;
          if ( v30 <= v33 )
            v35 = (_DWORD *)i[2];
          else
            v35 = (_DWORD *)i[3];
          if ( v34 )
            i = v31;
          v31 = i;
          if ( !v35 )
            break;
        }
        if ( v43 == i || v30 < i[4] || v43 == i )
        {
LABEL_45:
          v60[1] = *a3;
          v60[0] = v46 + 32;
          std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
            (int)v58,
            v43,
            v60);
          v41 = p[0];
          v42 = p[0] == nullptr;
          ++*a3;
          if ( v42 )
            goto LABEL_47;
        }
        else
        {
          v36 = v43;
          while ( 1 )
          {
            v37 = v29[4];
            v38 = v30 > v37;
            if ( v30 <= v37 )
              v39 = (_DWORD *)v29[2];
            else
              v39 = (_DWORD *)v29[3];
            if ( v38 )
              v29 = v36;
            v36 = v29;
            if ( !v39 )
              break;
            v29 = v39;
          }
          if ( v43 == v29 || (v40 = v29, v30 < v29[4]) )
          {
            v59[0] = v46 + 32;
            v59[1] = 0;
            v63 = v29;
            std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
              &v62,
              v43,
              &v63,
              v59);
            v46 = *a3;
            v40 = v62;
          }
          v40[5] = v46;
          v41 = p[0];
          v42 = p[0] == nullptr;
          ++*a3;
          if ( v42 )
          {
LABEL_47:
            v10 = *(_DWORD *)(v45 + 16);
            goto LABEL_9;
          }
        }
        GlitchFree(v41);
        v10 = *(_DWORD *)(v45 + 16);
LABEL_9:
        ++v12;
        ++v11;
        if ( v10 <= v12 )
          goto LABEL_13;
      }
    }
  }
  else
  {
    glitch::os::Printer::log("Could not lock texture while preparing texture for a font.", 3);
  }
}


// ===== 53f7c0 glitch::gui::CGUIFont::loadTexture(boost::intrusive_ptr<glitch::video::CImage> const&,char const*) =====
int __fastcall glitch::gui::CGUIFont::loadTexture(int a1, glitch::IReferenceCounted **a2, int a3)
{
  glitch::IReferenceCounted *v3; // r3
  int v7; // r5
  glitch::IReferenceCounted *v8; // r6
  glitch::IReferenceCounted *v9; // r0
  int v10; // r0
  unsigned int v11; // r3
  _DWORD *v12; // r0
  _DWORD *v13; // r3
  int v14; // r7
  glitch::IReferenceCounted *v15; // r3
  int v16; // r2
  __int16 v17; // r1
  __int16 v18; // r1
  glitch::IReferenceCounted *v20; // r6
  glitch::IReferenceCounted *v21; // r0
  int AreaFromCharacter; // r0
  unsigned int v23; // r3
  _DWORD *v24; // r0
  _DWORD *v25; // r0
  glitch::IReferenceCounted *v26; // [sp+Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v27; // [sp+10h] [bp-8h] BYREF
  unsigned int v28; // [sp+14h] [bp-4h] BYREF

  v3 = *a2;
  if ( !*a2 )
    return 0;
  v28 = 0;
  v27 = v3;
  ++*((_DWORD *)v3 + 1);
  switch ( *((_DWORD *)*a2 + 8) )
  {
    case 5:
    case 8:
      v20 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
      glitch::video::CImage::CImage(v20, 9, a2);
      if ( v20 )
        ++*((_DWORD *)v20 + 1);
      v21 = v27;
      v27 = v20;
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
      goto LABEL_30;
    case 9:
LABEL_30:
      glitch::gui::CGUIFont::readPositions16bit(a1, (int)&v27, &v28);
      AreaFromCharacter = glitch::gui::CGUIFont::getAreaFromCharacter((glitch::gui::CGUIFont *)a1, 0x20u);
      v23 = v28;
      *(_DWORD *)(a1 + 56) = AreaFromCharacter;
      if ( v23 )
        goto LABEL_31;
      goto LABEL_9;
    case 0xA:
      v8 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
      glitch::video::CImage::CImage(v8, 12, a2);
      if ( v8 )
        ++*((_DWORD *)v8 + 1);
      v9 = v27;
      v27 = v8;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
      goto LABEL_8;
    case 0xC:
    case 0xD:
    case 0xE:
LABEL_8:
      glitch::gui::CGUIFont::readPositions32bit(a1, (int *)&v27, &v28);
      v10 = glitch::gui::CGUIFont::getAreaFromCharacter((glitch::gui::CGUIFont *)a1, 0x20u);
      v11 = v28;
      *(_DWORD *)(a1 + 56) = v10;
      if ( !v11 )
        goto LABEL_9;
LABEL_31:
      v24 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 16))(*(_DWORD *)(a1 + 48));
      if ( (unsigned int)(v24[1] - *v24) >> 4 )
      {
        v25 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 12))(*(_DWORD *)(a1 + 48));
        if ( v28 != (v25[1] - *v25) >> 4 )
          glitch::os::Printer::log(
            "The amount of upper corner pixels and the lower corner pixels is not equal, font file may be corrupted.",
            3);
      }
      else
      {
LABEL_9:
        glitch::os::Printer::log(
          "Either no upper or lower corner pixels in the font file. If this font was made using the newly font tool, plea"
          "se load the XML file instead. If not, the font may be corrupted.",
          3);
      }
      v12 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 48) + 16))(*(_DWORD *)(a1 + 48));
      if ( *v12 == v12[1] || !v28 )
      {
        v7 = 0;
      }
      else
      {
        v13 = *(_DWORD **)(a1 + 44);
        v14 = v13[34] & 0x10;
        (*(void (__fastcall **)(_DWORD *))(*v13 + 160))(v13);
        glitch::video::CTextureManager::addTexture(&v26, *(_DWORD *)(*(_DWORD *)(a1 + 44) + 224), a3, &v27, 1, 0);
        if ( v14 )
          (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 44) + 160))(*(_DWORD *)(a1 + 44), 16, 1);
        v15 = v26;
        if ( v26 )
        {
          v16 = *((_DWORD *)v26 + 14);
          if ( (v16 & 0x7000) != 0 )
          {
            v17 = *((_WORD *)v26 + 32);
            *((_DWORD *)v26 + 14) = v16 & 0xFFFF8FFF;
            *((_WORD *)v15 + 32) = v17 | 4;
            v15 = v26;
            v16 = *((_DWORD *)v26 + 14);
          }
          if ( (v16 & 0x38000) != 0 )
          {
            v18 = *((_WORD *)v15 + 32);
            *((_DWORD *)v15 + 14) = v16 & 0xFFFC7FFF;
            *((_WORD *)v15 + 32) = v18 | 8;
          }
        }
        (*(void (__fastcall **)(_DWORD, glitch::IReferenceCounted **))(**(_DWORD **)(a1 + 48) + 28))(
          *(_DWORD *)(a1 + 48),
          &v26);
        if ( v26 )
          glitch::IReferenceCounted::drop(v26);
        v7 = 1;
      }
      glitch::gui::CGUIFont::setMaxHeight((glitch::gui::CGUIFont *)a1);
LABEL_23:
      if ( v27 )
        glitch::IReferenceCounted::drop(v27);
      break;
    default:
      v7 = 0;
      glitch::os::Printer::log("CGUIFont::loadTexture : unsupported image type", 3);
      goto LABEL_23;
  }
  return v7;
}


// ===== 53fafc glitch::gui::CGUIFont::load(char const*) =====
int __fastcall glitch::gui::CGUIFont::load(glitch::gui::CGUIFont *this, const char *a2)
{
  int v3; // r0
  int v5; // r4
  glitch::IReferenceCounted *v7; // [sp+4h] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 11);
  if ( !v3 )
    return 0;
  glitch::video::CTextureManager::createImageFromFile((glitch::video::CTextureManager *)&v7, *(const char **)(v3 + 224));
  v5 = glitch::gui::CGUIFont::loadTexture((int)this, &v7, (int)a2);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  return v5;
}


// ===== 53fb60 glitch::gui::CGUIFont::load(glitch::io::IReadFile *) =====
int __fastcall glitch::gui::CGUIFont::load(glitch::gui::CGUIFont *this, glitch::io::IReadFile *a2)
{
  int v3; // r0
  int v5; // r4
  int v6; // r0
  glitch::IReferenceCounted *v8; // [sp+4h] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 11);
  if ( !v3 )
    return 0;
  glitch::video::CTextureManager::createImageFromFile(
    (glitch::video::CTextureManager *)&v8,
    *(glitch::io::IReadFile **)(v3 + 224));
  v6 = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
  v5 = glitch::gui::CGUIFont::loadTexture((int)this, &v8, v6);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  return v5;
}


// ===== 53fbd4 glitch::gui::CGUIFont::load(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *) =====
int __fastcall glitch::gui::CGUIFont::load(_DWORD *a1, int *a2)
{
  wchar_t *v4; // r0
  _BOOL4 v5; // r8
  const wchar_t *v6; // r0
  int v7; // r7
  wchar_t *v8; // r0
  unsigned int v9; // r8
  int v10; // r0
  void (__fastcall *v11)(int, glitch::IReferenceCounted **); // r3
  _DWORD *v12; // r3
  unsigned int v13; // r10
  glitch::IReferenceCounted *v14; // r3
  int v15; // r10
  int v16; // r2
  __int16 v17; // r1
  __int16 v18; // r1
  _BOOL4 v19; // r10
  char *v20; // r0
  wchar_t *v22; // r0
  _BOOL4 v23; // r8
  int v24; // r10
  int v25; // r0
  int v26; // r3
  _DWORD *v27; // r0
  int v28; // r3
  glitch::IReferenceCounted *v29; // r8
  const wchar_t *v30; // r0
  unsigned int *v31; // r0
  char *v32; // r2
  unsigned int v33; // lr
  char v34; // r3
  int v35; // r0
  char v36; // t1
  char v37; // r1
  int v38; // r3
  bool v39; // zf
  char v40; // t1
  bool v41; // zf
  int v42; // r0
  char v43; // r1
  char v44; // t1
  char v45; // r1
  int v46; // r3
  bool v47; // zf
  char v48; // t1
  bool v49; // zf
  int v50; // r0
  char v51; // r1
  char v52; // t1
  char v53; // r3
  int v54; // r1
  bool v55; // zf
  char v56; // t1
  bool v57; // zf
  int v58; // r3
  char v59; // r0
  char v60; // t1
  int v61; // r12
  int *v62; // r0
  int v63; // r2
  int v64; // r3
  glitch::IReferenceCounted **v65; // r1
  int v66; // r3
  _DWORD *v67; // r0
  int *v68; // r1
  int v69; // r3
  _DWORD *v70; // r0
  int *v71; // r12
  int v72; // r1
  int v73; // r2
  int v74; // r3
  int v75; // r10
  _DWORD *v76; // [sp+14h] [bp-1C8h]
  _DWORD *v77; // [sp+24h] [bp-1B8h]
  _DWORD v78[17]; // [sp+28h] [bp-1B4h] BYREF
  void *v79; // [sp+6Ch] [bp-170h]
  _DWORD v80[17]; // [sp+70h] [bp-16Ch] BYREF
  void *v81; // [sp+B4h] [bp-128h]
  int v82; // [sp+B8h] [bp-124h] BYREF
  int v83; // [sp+BCh] [bp-120h]
  int v84; // [sp+C0h] [bp-11Ch]
  int v85; // [sp+C4h] [bp-118h]
  void *v86; // [sp+FCh] [bp-E0h]
  _DWORD v87[17]; // [sp+100h] [bp-DCh] BYREF
  void *p; // [sp+144h] [bp-98h]
  char *v89; // [sp+148h] [bp-94h] BYREF
  glitch::IReferenceCounted **v90; // [sp+14Ch] [bp-90h]
  glitch::IReferenceCounted **v91; // [sp+150h] [bp-8Ch]
  int v92; // [sp+154h] [bp-88h]
  int v93; // [sp+158h] [bp-84h] BYREF
  int v94; // [sp+15Ch] [bp-80h]
  int v95; // [sp+160h] [bp-7Ch]
  int v96; // [sp+164h] [bp-78h]
  char v97[8]; // [sp+168h] [bp-74h] BYREF
  unsigned int v98[2]; // [sp+170h] [bp-6Ch] BYREF
  glitch::IReferenceCounted *v99; // [sp+178h] [bp-64h] BYREF
  int v100; // [sp+17Ch] [bp-60h]
  _DWORD v101[2]; // [sp+180h] [bp-5Ch] BYREF
  glitch::IReferenceCounted *v102; // [sp+188h] [bp-54h] BYREF
  glitch::IReferenceCounted *v103; // [sp+18Ch] [bp-50h] BYREF
  glitch::IReferenceCounted *v104; // [sp+190h] [bp-4Ch] BYREF
  _BYTE v105[20]; // [sp+1A4h] [bp-38h] BYREF
  void *v106; // [sp+1B8h] [bp-24h]
  _BYTE v107[20]; // [sp+1BCh] [bp-20h] BYREF
  char *v108; // [sp+1D0h] [bp-Ch]

  if ( !a1[12] )
    return 0;
  v77 = a1 + 2;
  v76 = a1 + 5;
LABEL_3:
  while ( (*(int (__fastcall **)(int *))(*a2 + 12))(a2) )
  {
    while ( (*(int (__fastcall **)(int *))(*a2 + 20))(a2) == 1 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v87,
        (wchar_t *)"T");
      v4 = (wchar_t *)(*(int (__fastcall **)(int *))(*a2 + 60))(a2);
      v5 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v87,
             v4);
      if ( p != v87 && p )
        GlitchFree(p);
      if ( v5 )
      {
        v6 = (const wchar_t *)(*(int (__fastcall **)(int *, const char *))(*a2 + 36))(a2, "f");
        glitch::core::stringw2stringc((glitch::core *)v107, v6);
        v7 = (*(int (__fastcall **)(int *, const char *))(*a2 + 44))(a2, "i");
        v8 = (wchar_t *)(*(int (__fastcall **)(int *, const char *))(*a2 + 36))(a2, "h");
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          &v82,
          v8);
        v9 = v7 + 1;
        while ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)a1[12] + 20))(a1[12]) < v9 )
        {
          while ( 1 )
          {
            v10 = a1[12];
            v11 = *(void (__fastcall **)(int, glitch::IReferenceCounted **))(*(_DWORD *)v10 + 28);
            v104 = nullptr;
            v11(v10, &v104);
            if ( !v104 )
              break;
            glitch::IReferenceCounted::drop(v104);
            if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)a1[12] + 20))(a1[12]) >= v9 )
              goto LABEL_13;
          }
        }
LABEL_13:
        v12 = (_DWORD *)a1[11];
        v13 = v12[34];
        (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v12 + 160))(v12, 16, 0);
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v99,
          *(const char **)(a1[11] + 224),
          v108);
        v14 = v99;
        v15 = (v13 >> 4) & 1;
        if ( v99 )
        {
          v16 = *((_DWORD *)v99 + 14);
          if ( (v16 & 0x7000) != 0 )
          {
            v17 = *((_WORD *)v99 + 32);
            *((_DWORD *)v99 + 14) = v16 & 0xFFFF8FFF;
            *((_WORD *)v14 + 32) = v17 | 4;
            v14 = v99;
            v16 = *((_DWORD *)v99 + 14);
          }
          if ( (v16 & 0x38000) != 0 )
          {
            v18 = *((_WORD *)v14 + 32);
            *((_DWORD *)v14 + 14) = v16 & 0xFFFC7FFF;
            *((_WORD *)v14 + 32) = v18 | 8;
          }
        }
        (*(void (__fastcall **)(_DWORD, int, glitch::IReferenceCounted **))(*(_DWORD *)a1[12] + 32))(a1[12], v7, &v99);
        (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)a1[11] + 160))(a1[11], 16, v15);
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)a1[12] + 24))(&v103, a1[12], v7);
        if ( !v103 )
        {
          glitch::os::Printer::log("Unable to load all textures in the font, aborting", 3);
          if ( v99 )
            glitch::IReferenceCounted::drop(v99);
          if ( v86 != &v82 && v86 )
            GlitchFree(v86);
          if ( v108 != v107 && v108 )
          {
            GlitchFree(v108);
            return 0;
          }
          return 0;
        }
        glitch::IReferenceCounted::drop(v103);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v80,
          U"false");
        v19 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                (int)&v82,
                (int)v80);
        if ( v81 != v80 && v81 )
          GlitchFree(v81);
        if ( v19 )
        {
          v75 = *(_DWORD *)(a1[11] + 224);
          (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)a1[12] + 24))(
            &v102,
            a1[12],
            v7);
          v101[1] = 0;
          v101[0] = 0;
          glitch::video::CTextureManager::makeColorKeyTexture(v75, &v102, v101);
          if ( v102 )
            glitch::IReferenceCounted::drop(v102);
        }
        if ( v99 )
          glitch::IReferenceCounted::drop(v99);
        if ( v86 != &v82 )
        {
          if ( v86 )
            GlitchFree(v86);
        }
        v20 = v108;
        if ( v108 == v107 )
          goto LABEL_3;
      }
      else
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v78,
          (wchar_t *)"c");
        v22 = (wchar_t *)(*(int (__fastcall **)(int *))(*a2 + 60))(a2);
        v23 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                (int)v78,
                v22);
        if ( v79 != v78 && v79 )
          GlitchFree(v79);
        if ( !v23 )
          goto LABEL_3;
        v24 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v89 = nullptr;
        v90 = nullptr;
        v91 = nullptr;
        v92 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v93 = (*(int (__fastcall **)(int *, const char *))(*a2 + 44))(a2, "u");
        v25 = (*(int (__fastcall **)(int *, const char *))(*a2 + 44))(a2, "o");
        v26 = a1[12];
        v94 = v25;
        v27 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v26 + 16))(v26);
        v28 = *a2;
        v96 = (v27[1] - *v27) >> 4;
        v29 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int *, void *))(v28 + 44))(a2, &unk_8DED20);
        v30 = (const wchar_t *)(*(int (__fastcall **)(int *, void *))(*a2 + 36))(a2, &unk_8DEF70);
        glitch::core::stringw2stringc((glitch::core *)v105, v30);
        v31 = (unsigned int *)(*(int (__fastcall **)(int *, const char *))(*a2 + 36))(a2, "c");
        v32 = (char *)v106;
        v33 = *v31;
        v34 = *(_BYTE *)v106;
        if ( (unsigned __int8)(*(_BYTE *)v106 - 48) <= 9u )
        {
          do
          {
            v35 = v34;
            v36 = *++v32;
            v34 = v36;
            v24 = v35 + 10 * v24 - 48;
          }
          while ( (unsigned __int8)(v36 - 48) <= 9u );
        }
        v82 = v24;
        v37 = *v32;
        v38 = *v32;
        v39 = v38 == 44;
        if ( v38 != 44 )
          v39 = v37 == 32;
        if ( v39 )
        {
          do
          {
            v40 = *++v32;
            v37 = v40;
            v38 = v40;
            v41 = v40 == 32;
            if ( v40 != 32 )
              v41 = v38 == 44;
          }
          while ( v41 );
        }
        if ( (unsigned __int8)(v37 - 48) <= 9u )
        {
          v42 = 0;
          while ( 1 )
          {
            v44 = *++v32;
            v43 = v44;
            v42 = v38 + 10 * v42 - 48;
            if ( (unsigned __int8)(v44 - 48) > 9u )
              break;
            v38 = v43;
          }
        }
        else
        {
          v42 = 0;
        }
        v83 = v42;
        v45 = *v32;
        v46 = *v32;
        v47 = v46 == 44;
        if ( v46 != 44 )
          v47 = v45 == 32;
        if ( v47 )
        {
          do
          {
            v48 = *++v32;
            v45 = v48;
            v46 = v48;
            v49 = v48 == 32;
            if ( v48 != 32 )
              v49 = v46 == 44;
          }
          while ( v49 );
        }
        if ( (unsigned __int8)(v45 - 48) <= 9u )
        {
          v50 = 0;
          while ( 1 )
          {
            v52 = *++v32;
            v51 = v52;
            v50 = v46 + 10 * v50 - 48;
            if ( (unsigned __int8)(v52 - 48) > 9u )
              break;
            v46 = v51;
          }
        }
        else
        {
          v50 = 0;
        }
        v84 = v50;
        v53 = *v32;
        v54 = *v32;
        v55 = v54 == 44;
        if ( v54 != 44 )
          v55 = v53 == 32;
        if ( v55 )
        {
          do
          {
            v56 = *++v32;
            v53 = v56;
            v54 = v56;
            v57 = v56 == 32;
            if ( v56 != 32 )
              v57 = v54 == 44;
          }
          while ( v57 );
        }
        if ( (unsigned __int8)(v53 - 48) <= 9u )
        {
          v58 = 0;
          while ( 1 )
          {
            v60 = *++v32;
            v59 = v60;
            v58 = v54 + 10 * v58 - 48;
            if ( (unsigned __int8)(v60 - 48) > 9u )
              break;
            v54 = v59;
          }
        }
        else
        {
          v58 = 0;
        }
        v61 = (a1[3] - a1[2]) >> 4;
        v85 = v58;
        v98[0] = v33;
        v98[1] = v61;
        std::priv::_Rb_tree<wchar_t,std::less<wchar_t>,std::pair<wchar_t const,int>,std::priv::_Select1st<std::pair<wchar_t const,int>>,std::priv::_MapTraitsT<std::pair<wchar_t const,int>>,glitch::core::SAllocator<std::pair<wchar_t const,int>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          (int)v97,
          v76,
          v98);
        v62 = (int *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)a1[12] + 12))(a1[12]);
        v63 = v62[1];
        v64 = *v62;
        v65 = v90;
        v99 = v29;
        v100 = (v63 - v64) >> 4;
        if ( v90 == v91 )
        {
          std::vector<glitch::gui::SGUISpriteFrame,glitch::core::SAllocator<glitch::gui::SGUISpriteFrame,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            &v89,
            (int)v90,
            &v99);
        }
        else
        {
          *v90 = v29;
          *(_DWORD *)&byte_4[(_DWORD)v65] = v100;
          v90 += 2;
        }
        v66 = a1[12];
        v92 = 0;
        v67 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v66 + 12))(v66);
        v68 = (int *)v67[1];
        if ( v68 == (int *)v67[2] )
        {
          std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            v67,
            (int)v68,
            &v82);
        }
        else
        {
          *v68 = v82;
          v68[1] = v83;
          v68[2] = v84;
          v68[3] = v85;
          v67[1] += 16;
        }
        v69 = a1[12];
        v95 = v84 - v82;
        v70 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v69 + 16))(v69);
        std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v70,
          &v89);
        v71 = (int *)a1[3];
        if ( v71 == (int *)a1[4] )
        {
          std::vector<glitch::gui::CGUIFont::SFontArea,glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            v77,
            a1[3],
            &v93);
        }
        else
        {
          v72 = v94;
          v73 = v95;
          v74 = v96;
          *v71 = v93;
          v71[1] = v72;
          v71[2] = v73;
          v71[3] = v74;
          a1[3] += 16;
        }
        if ( v106 != v105 && v106 )
          GlitchFree(v106);
        v20 = v89;
      }
      if ( !v20 )
        goto LABEL_3;
      GlitchFree(v20);
      if ( !(*(int (__fastcall **)(int *))(*a2 + 12))(a2) )
        goto LABEL_31;
    }
  }
LABEL_31:
  a1[14] = glitch::gui::CGUIFont::getAreaFromCharacter((glitch::gui::CGUIFont *)a1, 0x20u);
  glitch::gui::CGUIFont::setMaxHeight((glitch::gui::CGUIFont *)a1);
  return 1;
}


// ===== 5404c0 glitch::gui::CGUIImage::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::gui::CGUIImage::setImage(int result, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r2

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  v3 = *(glitch::IReferenceCounted **)(result + 348);
  *(_DWORD *)(result + 348) = v2;
  if ( v3 )
    return glitch::IReferenceCounted::drop(v3);
  return result;
}


// ===== 5404ec glitch::gui::CGUIImage::setColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUIImage::setColor(int result, int a2)
{
  *(_DWORD *)(result + 344) = a2;
  return result;
}


// ===== 540514 glitch::gui::CGUIImage::setUseAlphaChannel(bool) =====
int __fastcall glitch::gui::CGUIImage::setUseAlphaChannel(int this, bool a2)
{
  *(_BYTE *)(this + 352) = a2;
  return this;
}


// ===== 54051c glitch::gui::CGUIImage::setScaleImage(bool) =====
int __fastcall glitch::gui::CGUIImage::setScaleImage(int this, bool a2)
{
  *(_BYTE *)(this + 353) = a2;
  return this;
}


// ===== 540524 glitch::gui::CGUIImage::isImageScaled(void) =====
int __fastcall glitch::gui::CGUIImage::isImageScaled(glitch::gui::CGUIImage *this)
{
  return *((unsigned __int8 *)this + 353);
}


// ===== 54052c glitch::gui::CGUIImage::isAlphaChannelUsed(void) =====
int __fastcall glitch::gui::CGUIImage::isAlphaChannelUsed(glitch::gui::CGUIImage *this)
{
  return *((unsigned __int8 *)this + 352);
}


// ===== 540534 glitch::gui::CGUIImage::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIImage::serializeAttributes(int a1, int a2)
{
  void (__fastcall *v4)(int, const char *, glitch::IReferenceCounted **, _DWORD); // r12
  glitch::IReferenceCounted *v6; // [sp+4h] [bp-8h] BYREF

  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  v4 = *(void (__fastcall **)(int, const char *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)a2 + 688);
  v6 = *(glitch::IReferenceCounted **)(a1 + 348);
  if ( v6 )
    ++*((_DWORD *)v6 + 1);
  v4(a2, "Texture", &v6, 0);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "UseAlphaChannel",
    *(unsigned __int8 *)(a1 + 352),
    0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "Color", *(_DWORD *)(a1 + 344), 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "ScaleImage",
           *(unsigned __int8 *)(a1 + 353),
           0);
}


// ===== 540608 `global constructor keyed to'.._source_glitch_gui_CGUIImage.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIImage.cpp()
{
  dword_9F6604 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6600 = 1056964608;
}


// ===== 540628 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 54062c glitch::gui::IGUIImage::IGUIImage(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIImage::IGUIImage(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 9;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 5408ec glitch::gui::CGUIImage::CGUIImage(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIImage::CGUIImage(int a1, int a2, int a3, int a4, int *a5)
{
  int v5; // r10
  int v6; // r8
  int v7; // r9
  int v10[4]; // [sp+8h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 364) = 1;
  *(_DWORD *)(a1 + 360) = off_95B720;
  *(_DWORD *)(a1 + 356) = off_96DBBC;
  *(_DWORD *)&byte_4[a1 + 356] = off_96DBDC;
  v5 = a5[3];
  v6 = a5[1];
  v7 = a5[2];
  v10[0] = *a5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v5;
  glitch::gui::IGUIImage::IGUIImage(a1, (int *)off_96D9CC, a2, a3, a4, v10);
  *(_BYTE *)(a1 + 347) = -1;
  *(_BYTE *)(a1 + 353) = 0;
  *(_DWORD *)(a1 + 360) = off_96D9BC;
  *(_DWORD *)a1 = off_96D8F0;
  *(_DWORD *)(a1 + 356) = off_96D99C;
  *(_BYTE *)(a1 + 344) = -1;
  *(_BYTE *)(a1 + 345) = -1;
  *(_BYTE *)(a1 + 346) = -1;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 352) = 0;
  return a1;
}


// ===== 5409d8 glitch::gui::CGUIImage::CGUIImage(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIImage::CGUIImage(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // lr
  int v8; // r4
  int v9; // r12
  int v11; // r1
  int v13[4]; // [sp+8h] [bp-10h] BYREF

  v7 = a6[3];
  v8 = a6[1];
  v9 = a6[2];
  v13[0] = *a6;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v7;
  glitch::gui::IGUIImage::IGUIImage(a1, a2 + 1, a3, a4, a5, v13);
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_BYTE *)(a1 + 347) = -1;
  *(_BYTE *)(a1 + 353) = 0;
  *(_BYTE *)(a1 + 344) = -1;
  *(_BYTE *)(a1 + 345) = -1;
  *(_BYTE *)(a1 + 346) = -1;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 352) = 0;
  return a1;
}


// ===== 540a74 glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  *(_DWORD *)this = off_96D6E0;
  *((_DWORD *)this + 86) = off_96D78C;
  *((_DWORD *)this + 87) = off_96D7AC;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D7BC);
}


// ===== 540ac8 `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  glitch::gui::IGUIImage::~IGUIImage((glitch::gui::IGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 540ad8 `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  glitch::gui::IGUIImage::~IGUIImage((glitch::gui::IGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 540ae8 glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 87);
  *(_DWORD *)this = off_96D8F0;
  *((_DWORD *)this + 89) = off_96D99C;
  *((_DWORD *)this + 90) = off_96D9BC;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_96DA08;
  *(int *)((char *)&elf_hash_bucket[34] + (_DWORD)this) = (int)off_96DAB4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96DAD4;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D9D0);
}


// ===== 540b74 glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::gui::CGUIImage::~CGUIImage(this);
  LC_API_FREE_0(this);
}


// ===== 540b90 glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  int *v7; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 87);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = a2[1];
  v7 = a2 + 1;
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = v7[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v7[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v7 + 1);
}


// ===== 540c0c glitch::gui::CGUIImage::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIImage::deserializeAttributes(float *a1, int a2)
{
  void (__fastcall *v4)(float *, glitch::IReferenceCounted **); // r7
  void (__fastcall *v5)(float *, int); // r6
  int v6; // r0
  void (__fastcall *v7)(float *, int); // r6
  int v8; // r3
  int v9; // r0
  int (__fastcall *v10)(float *, int); // r5
  int v11; // r0
  int v13; // [sp+0h] [bp-14h]
  glitch::IReferenceCounted *v14[2]; // [sp+Ch] [bp-8h] BYREF

  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  v4 = *(void (__fastcall **)(float *, glitch::IReferenceCounted **))(*(_DWORD *)a1 + 124);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, const char *))(*(_DWORD *)a2 + 700))(v14, a2, "Texture");
  v4(a1, v14);
  if ( v14[0] )
    glitch::IReferenceCounted::drop(v14[0]);
  v5 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 136);
  v6 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "UseAlphaChannel");
  v5(a1, v6);
  v7 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 128);
  v13 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 292))(a2, "Color");
  v7(a1, v13);
  v8 = *(_DWORD *)a2;
  v9 = a2;
  v10 = *(int (__fastcall **)(float *, int))(*(_DWORD *)a1 + 132);
  v11 = (*(int (__fastcall **)(int, const char *))(v8 + 228))(v9, "ScaleImage");
  return v10(a1, v11);
}


// ===== 540d24 glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  *(_DWORD *)this = off_96D6E0;
  *((_DWORD *)this + 86) = off_96D78C;
  *((_DWORD *)this + 87) = off_96D7AC;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96D7BC);
  LC_API_FREE_0(this);
}


// ===== 540d80 `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  glitch::gui::IGUIImage::~IGUIImage((glitch::gui::IGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 540d90 `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIImage::~IGUIImage(glitch::gui::IGUIImage *this)
{
  glitch::gui::IGUIImage::~IGUIImage((glitch::gui::IGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 540da0 glitch::gui::CGUIImage::draw(void) =====
int __fastcall glitch::gui::CGUIImage::draw(int this)
{
  int v1; // r4
  int v2; // r6
  int v3; // r0
  int v4; // r1
  int v5; // r3
  int v6; // r6
  int v7; // lr
  int v8; // r12
  int v9; // r4
  int *i; // r5
  int *v11; // t1
  int v12; // r3
  int v13; // r5
  int (__fastcall *v14)(int, int, int *, int, int); // r5
  _DWORD v15[12]; // [sp+1Ch] [bp-38h] BYREF
  int v16; // [sp+4Ch] [bp-8h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 32))(*(_DWORD *)(v1 + 336));
    v4 = *(_DWORD *)(v1 + 348);
    if ( v4 )
    {
      v5 = *(unsigned __int8 *)(v1 + 353);
      if ( *(_BYTE *)(v1 + 353) )
      {
        v12 = *(_DWORD *)(v1 + 344);
        v15[5] = 0;
        v15[11] = v12;
        v15[8] = v12;
        v15[9] = v12;
        v15[10] = v12;
        v15[4] = 0;
        v13 = *(_DWORD *)(v4 + 36);
        v15[6] = *(_DWORD *)(v4 + 32);
        v15[7] = v13;
        this = glitch::video::C2DDriver::draw2DImage(v3);
      }
      else
      {
        v15[1] = *(unsigned __int8 *)(v1 + 353);
        v15[0] = v5;
        v6 = *(_DWORD *)(v4 + 36);
        v7 = *(_DWORD *)(v1 + 344);
        v8 = *(unsigned __int8 *)(v1 + 352);
        v15[2] = *(_DWORD *)(v4 + 32);
        v15[3] = v6;
        this = glitch::video::C2DDriver::draw2DImage(v3, v1 + 348, v1 + 56, v15, v1 + 72, v7, v8);
      }
    }
    else
    {
      v14 = *(int (__fastcall **)(int, int, int *, int, int))(*(_DWORD *)v2 + 100);
      v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
      this = v14(v2, v1, &v16, v1 + 56, v1 + 72);
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v11 = *(int **)(v1 + 4);
      v9 = v1 + 4;
      for ( i = v11; i != (int *)v9; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 540f2c `virtual thunk to'glitch::gui::CGUIImage::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIImage::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIImage::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 540f3c `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::gui::CGUIImage::~CGUIImage((glitch::gui::CGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 540f4c `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::gui::CGUIImage::~CGUIImage((glitch::gui::CGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 540f5c `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::gui::CGUIImage::~CGUIImage((glitch::gui::CGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 540f6c `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIImage::~CGUIImage(glitch::gui::CGUIImage *this)
{
  glitch::gui::CGUIImage::~CGUIImage((glitch::gui::CGUIImage *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 540f7c `virtual thunk to'glitch::gui::CGUIImage::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIImage::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIImage::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 540f8c glitch::video::SColor::getInterpolated(glitch::video::SColor const&,float) =====
int __fastcall glitch::video::SColor::getInterpolated(unsigned __int8 *a1, unsigned __int8 *a2, float a3)
{
  float v3; // r4
  float v4; // r4
  float v5; // r7
  unsigned __int8 v6; // r8
  float v7; // r7
  unsigned __int8 v8; // r10
  float v9; // r7
  unsigned __int8 v10; // r7
  float v11; // r4
  unsigned __int8 v12; // r3

  v3 = a3;
  if ( a3 >= 0.0 )
  {
    if ( a3 >= 1.0 )
      v3 = 1.0;
  }
  else
  {
    v3 = 0.0;
  }
  v4 = 1.0 - v3;
  v5 = (float)a1[3] + (float)(v4 * (float)((float)a2[3] - (float)a1[3]));
  if ( v5 >= 0.0 )
  {
    if ( v5 < 255.0 )
      v6 = (unsigned int)v5;
    else
      v6 = -1;
  }
  else
  {
    v6 = 0;
  }
  v7 = (float)*a1 + (float)(v4 * (float)((float)*a2 - (float)*a1));
  if ( v7 >= 0.0 )
  {
    if ( v7 < 255.0 )
      v8 = (unsigned int)v7;
    else
      v8 = -1;
  }
  else
  {
    v8 = 0;
  }
  v9 = (float)a1[1] + (float)(v4 * (float)((float)a2[1] - (float)a1[1]));
  if ( v9 >= 0.0 )
  {
    if ( v9 < 255.0 )
      v10 = (unsigned int)v9;
    else
      v10 = -1;
  }
  else
  {
    v10 = 0;
  }
  v11 = (float)a1[2] + (float)(v4 * (float)((float)a2[2] - (float)a1[2]));
  if ( v11 >= 0.0 )
  {
    if ( v11 < 255.0 )
      v12 = (unsigned int)v11;
    else
      v12 = -1;
  }
  else
  {
    v12 = 0;
  }
  return v8 | (unsigned __int16)(v10 << 8) | (v12 << 16) & 0xFFFFFF | (v6 << 24);
}


// ===== 5411d8 glitch::gui::CGUIInOutFader::getColor(void) =====
int __fastcall glitch::gui::CGUIInOutFader::getColor(glitch::gui::CGUIInOutFader *this)
{
  return (unsigned __int8)*((_DWORD *)this + 90)
       | (unsigned __int16)((unsigned __int8)BYTE1(*((_DWORD *)this + 90)) << 8)
       | ((unsigned __int8)BYTE2(*((_DWORD *)this + 90)) << 16) & 0xFFFFFF
       | ((unsigned __int8)HIBYTE(*((_DWORD *)this + 90)) << 24);
}


// ===== 54120c glitch::gui::CGUIInOutFader::setColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUIInOutFader::setColor(int a1, int a2)
{
  int v3; // [sp+8h] [bp-Ch]
  int v4; // [sp+Ch] [bp-8h]

  v3 = a2;
  v4 = a2;
  HIBYTE(v4) = -1;
  HIBYTE(v3) = 0;
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 132))(a1, v4, v3);
}


// ===== 54124c glitch::gui::CGUIInOutFader::setColor(glitch::video::SColor,glitch::video::SColor) =====
_DWORD *__fastcall glitch::gui::CGUIInOutFader::setColor(_DWORD *result, int a2, int a3)
{
  int v3; // r3
  int v4; // r3
  int v5; // r3

  v3 = result[88];
  result[89] = a2;
  result[90] = a3;
  if ( v3 == 2 )
  {
    v5 = result[89];
    result[91] = result[90];
    result[92] = v5;
  }
  else if ( v3 == 1 )
  {
    v4 = result[90];
    result[91] = result[89];
    result[92] = v4;
  }
  return result;
}


// ===== 5412cc glitch::gui::CGUIInOutFader::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIInOutFader::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes(a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "FullColor", a1[91], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "TransColor", a1[92], 0);
}


// ===== 541328 `global constructor keyed to'.._source_glitch_gui_CGUIInOutFader.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIInOutFader.cpp()
{
  dword_9F6610 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F660C = 1056964608;
}


// ===== 541348 glitch::gui::CGUIInOutFader::fadeOut(uint) =====
int __fastcall glitch::gui::CGUIInOutFader::fadeOut(glitch::gui::CGUIInOutFader *this, unsigned int a2)
{
  int Time; // r0

  Time = glitch::os::Timer::getTime(this);
  *((_DWORD *)this + 88) = 2;
  *((_DWORD *)this + 86) = Time;
  *((_DWORD *)this + 87) = Time + a2;
  return (*(int (__fastcall **)(glitch::gui::CGUIInOutFader *, _DWORD, _DWORD))(*(_DWORD *)this + 132))(
           this,
           *((_DWORD *)this + 89),
           *((_DWORD *)this + 90));
}


// ===== 541388 glitch::gui::CGUIInOutFader::fadeIn(uint) =====
int __fastcall glitch::gui::CGUIInOutFader::fadeIn(glitch::gui::CGUIInOutFader *this, unsigned int a2)
{
  int Time; // r0

  Time = glitch::os::Timer::getTime(this);
  *((_DWORD *)this + 88) = 1;
  *((_DWORD *)this + 86) = Time;
  *((_DWORD *)this + 87) = Time + a2;
  return (*(int (__fastcall **)(glitch::gui::CGUIInOutFader *, _DWORD, _DWORD))(*(_DWORD *)this + 132))(
           this,
           *((_DWORD *)this + 89),
           *((_DWORD *)this + 90));
}


// ===== 5413c8 glitch::gui::CGUIInOutFader::isReady(void) =====
bool __fastcall glitch::gui::CGUIInOutFader::isReady(glitch::gui::CGUIInOutFader *this)
{
  return glitch::os::Timer::getTime(this) > *((_DWORD *)this + 87);
}


// ===== 5413e8 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 5413ec glitch::gui::IGUIInOutFader::IGUIInOutFader(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIInOutFader::IGUIInOutFader(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 8;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 5416ac glitch::gui::CGUIInOutFader::CGUIInOutFader(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIInOutFader::CGUIInOutFader(int a1, int a2, int a3, int a4, int *a5)
{
  int v5; // r8
  int v6; // r9
  int v7; // r10
  int v10[4]; // [sp+Ch] [bp-14h] BYREF
  int v11; // [sp+1Ch] [bp-4h]

  *(_DWORD *)(a1 + 380) = 1;
  *(_DWORD *)(a1 + 376) = off_95B720;
  *(_DWORD *)(a1 + 372) = off_96E0D4;
  *(_DWORD *)&byte_4[a1 + 372] = off_96E0F4;
  v5 = a5[1];
  v6 = a5[2];
  v7 = a5[3];
  v10[0] = *a5;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  glitch::gui::IGUIInOutFader::IGUIInOutFader(a1, (int *)off_96DEE4, a2, a3, a4, v10);
  v11 = 0;
  *(_DWORD *)a1 = off_96DE08;
  *(_DWORD *)(a1 + 372) = off_96DEB4;
  *(_DWORD *)(a1 + 376) = off_96DED4;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  glitch::gui::CGUIInOutFader::setColor(a1, v11);
  return a1;
}


// ===== 5417a0 glitch::gui::CGUIInOutFader::CGUIInOutFader(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int *__fastcall glitch::gui::CGUIInOutFader::CGUIInOutFader(int *a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r6
  int v8; // r4
  int v9; // r12
  int v11; // r2
  int v12; // r1
  int v13; // r2
  int v15[4]; // [sp+Ch] [bp-14h] BYREF
  int v16; // [sp+1Ch] [bp-4h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v15[3] = a6[3];
  v15[1] = v8;
  v15[2] = v9;
  v15[0] = v7;
  glitch::gui::IGUIInOutFader::IGUIInOutFader((int)a1, a2 + 1, a3, a4, a5, v15);
  v11 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[7];
  v12 = a2[8];
  v13 = *(_DWORD *)(*a1 - 16);
  v16 = 0;
  *(int *)((char *)a1 + v13) = v12;
  a1[88] = 0;
  a1[86] = 0;
  a1[87] = 0;
  glitch::gui::CGUIInOutFader::setColor((int)a1, v16);
  return a1;
}


// ===== 541844 glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  *(_DWORD *)this = off_96DBF8;
  *((_DWORD *)this + 86) = off_96DCA4;
  *((_DWORD *)this + 87) = off_96DCC4;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96DCD4);
}


// ===== 541898 `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  glitch::gui::IGUIInOutFader::~IGUIInOutFader((glitch::gui::IGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5418a8 `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  glitch::gui::IGUIInOutFader::~IGUIInOutFader((glitch::gui::IGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5418b8 glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  *((_DWORD *)this + 93) = off_96DEB4;
  *((_DWORD *)this + 94) = off_96DED4;
  *(_DWORD *)this = off_96DF20;
  *(int *)((char *)&elf_hash_bucket[38] + (_DWORD)this) = (int)off_96DFCC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96DFEC;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96DEE8);
}


// ===== 541928 `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  glitch::gui::CGUIInOutFader::~CGUIInOutFader((glitch::gui::CGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 541938 `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  glitch::gui::CGUIInOutFader::~CGUIInOutFader((glitch::gui::CGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 541948 glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  glitch::gui::CGUIInOutFader::~CGUIInOutFader(this);
  LC_API_FREE_0(this);
}


// ===== 541964 `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  glitch::gui::CGUIInOutFader::~CGUIInOutFader((glitch::gui::CGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 541974 `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::~CGUIInOutFader(glitch::gui::CGUIInOutFader *this)
{
  glitch::gui::CGUIInOutFader::~CGUIInOutFader((glitch::gui::CGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 541984 glitch::gui::CGUIInOutFader::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIInOutFader::deserializeAttributes(int a1, int a2)
{
  int result; // r0

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  *(_DWORD *)(a1 + 364) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "FullColor");
  result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "TransColor");
  *(_DWORD *)(a1 + 368) = result;
  return result;
}


// ===== 541a08 glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  *(_DWORD *)this = off_96DBF8;
  *((_DWORD *)this + 86) = off_96DCA4;
  *((_DWORD *)this + 87) = off_96DCC4;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96DCD4);
  LC_API_FREE_0(this);
}


// ===== 541a64 `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  glitch::gui::IGUIInOutFader::~IGUIInOutFader((glitch::gui::IGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 541a74 `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIInOutFader::~IGUIInOutFader(glitch::gui::IGUIInOutFader *this)
{
  glitch::gui::IGUIInOutFader::~IGUIInOutFader((glitch::gui::IGUIInOutFader *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 541a84 glitch::gui::CGUIInOutFader::draw(void) =====
unsigned int __fastcall glitch::gui::CGUIInOutFader::draw(unsigned int this)
{
  unsigned int v1; // r4
  unsigned int v2; // r6
  unsigned int v3; // r5
  unsigned int v4; // r7
  float v5; // r2
  unsigned int v6; // r4
  int *i; // r5
  int *v8; // t1
  int Interpolated; // [sp+0h] [bp-14h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) && *(_DWORD *)(this + 352) )
  {
    this = glitch::os::Timer::getTime((glitch::os::Timer *)this);
    v2 = this;
    if ( this > *(_DWORD *)(v1 + 348) && *(_DWORD *)(v1 + 352) == 1 )
    {
      *(_DWORD *)(v1 + 352) = 0;
    }
    else
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 32))(*(_DWORD *)(v1 + 336));
      v3 = this;
      if ( this )
      {
        v4 = *(_DWORD *)(v1 + 348);
        if ( v2 <= v4 )
          v5 = (float)(v4 - v2) / (float)(v4 - *(_DWORD *)(v1 + 344));
        else
          v5 = 0.0;
        Interpolated = glitch::video::SColor::getInterpolated(
                         (unsigned __int8 *)(v1 + 364),
                         (unsigned __int8 *)(v1 + 368),
                         v5);
        this = glitch::video::C2DDriver::draw2DRectangle(v3, Interpolated, v1 + 56, v1 + 72, Interpolated);
      }
      if ( *(_BYTE *)(v1 + 152) )
      {
        v8 = *(int **)(v1 + 4);
        v6 = v1 + 4;
        for ( i = v8; i != (int *)v6; i = (int *)*i )
          this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
      }
    }
  }
  return this;
}


// ===== 541bac `virtual thunk to'glitch::gui::CGUIInOutFader::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIInOutFader::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 541bbc `virtual thunk to'glitch::gui::CGUIInOutFader::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIInOutFader::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIInOutFader::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 541bcc glitch::gui::CGUIListBox::getItemCount(void) =====
int __fastcall glitch::gui::CGUIListBox::getItemCount(glitch::gui::CGUIListBox *this)
{
  return -1431655765 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 5);
}


// ===== 541bf4 glitch::gui::CGUIListBox::getListItem(uint) =====
int __fastcall glitch::gui::CGUIListBox::getListItem(glitch::gui::CGUIListBox *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 86);
  v3 = (*((_DWORD *)this + 87) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 68);
  return result;
}


// ===== 541c30 glitch::gui::CGUIListBox::getIcon(uint) =====
int __fastcall glitch::gui::CGUIListBox::getIcon(glitch::gui::CGUIListBox *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 86);
  v3 = (*((_DWORD *)this + 87) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = -1;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 72);
  return result;
}


// ===== 541c6c glitch::gui::CGUIListBox::addItem(wchar_t const*) =====
int __fastcall glitch::gui::CGUIListBox::addItem(glitch::gui::CGUIListBox *this, const wchar_t *a2)
{
  return (*(int (__fastcall **)(glitch::gui::CGUIListBox *, const wchar_t *, int))(*(_DWORD *)this + 136))(this, a2, -1);
}


// ===== 541c84 glitch::gui::CGUIListBox::recalculateItemHeight(void) =====
int __fastcall glitch::gui::CGUIListBox::recalculateItemHeight(glitch::gui::CGUIListBox *this)
{
  int v2; // r0
  int v3; // r6
  int v4; // r5
  glitch::IReferenceCounted *v5; // r0
  int v6; // r0
  int v7; // r3
  int v8; // r2
  int v9; // r1
  int v10; // r3
  _DWORD v12[2]; // [sp+0h] [bp-8h] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = *((_DWORD *)this + 93);
  v4 = v2;
  if ( v3 == (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 40))(v2, 0) )
    goto LABEL_6;
  v5 = *((glitch::IReferenceCounted **)this + 93);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 40))(v4, 0);
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 93) = v6;
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)v6 + 28))(v12, v6, "A");
    v7 = *((_DWORD *)this + 93);
    *((_DWORD *)this + 90) = v12[1] + 4;
    ++*(_DWORD *)(v7 + 4);
LABEL_6:
    v6 = *((_DWORD *)this + 90) * -1431655765 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 5);
  }
  v8 = *((_DWORD *)this + 15);
  v9 = *((_DWORD *)this + 17);
  v10 = *((_DWORD *)this + 95);
  *((_DWORD *)this + 91) = v6;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v10 + 128))(v10, v6 - (v9 - v8));
  return (*(int (__fastcall **)(_DWORD, bool))(**((_DWORD **)this + 95) + 48))(
           *((_DWORD *)this + 95),
           *((_DWORD *)this + 91) > *((_DWORD *)this + 17) - *((_DWORD *)this + 15));
}


// ===== 541dc4 glitch::gui::CGUIListBox::getSelected(void) =====
int __fastcall glitch::gui::CGUIListBox::getSelected(glitch::gui::CGUIListBox *this)
{
  return *((_DWORD *)this + 89);
}


// ===== 541dcc glitch::gui::CGUIListBox::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUIListBox::updateAbsolutePosition(glitch::gui::CGUIListBox *this)
{
  glitch::gui::IGUIElement::updateAbsolutePosition(this);
  return glitch::gui::CGUIListBox::recalculateItemHeight(this);
}


// ===== 541de4 glitch::gui::CGUIListBox::setSpriteBank(glitch::gui::IGUISpriteBank *) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIListBox::setSpriteBank(int a1, int a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *(glitch::IReferenceCounted **)(a1 + 376);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *(_DWORD *)(a1 + 376) = a2;
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 541e18 glitch::gui::CGUIListBox::recalculateScrollPos(void) =====
int __fastcall glitch::gui::CGUIListBox::recalculateScrollPos(int this)
{
  _DWORD *v1; // r6
  int v2; // r3
  int v3; // r4
  int v4; // r7
  int v5; // r4
  int (__fastcall *v6)(int, int); // r5
  int v7; // r0
  int v8; // r4
  int (__fastcall *v9)(int, int); // r5
  int v10; // r0

  v1 = (_DWORD *)this;
  if ( *(_BYTE *)(this + 392) )
  {
    v2 = *(_DWORD *)(this + 356);
    if ( v2 == -1 )
      v3 = *(_DWORD *)(this + 364);
    else
      v3 = *(_DWORD *)(this + 360);
    if ( v2 != -1 )
      v3 *= v2;
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 380) + 148))(*(_DWORD *)(this + 380));
    v4 = v3 - this;
    if ( v3 - this < 0 )
    {
      v8 = v1[95];
      v9 = *(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 152);
      v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 148))(v8);
      return v9(v8, v10 + v4);
    }
    else if ( v4 > v1[17] - v1[15] - v1[90] )
    {
      v5 = v1[95];
      v6 = *(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 152);
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 148))(v5);
      return v6(v5, v1[90] - (v1[17] - v1[15]) + v4 + v7);
    }
  }
  return this;
}


// ===== 541ee4 glitch::gui::CGUIListBox::setAutoScrollEnabled(bool) =====
int __fastcall glitch::gui::CGUIListBox::setAutoScrollEnabled(int this, bool a2)
{
  *(_BYTE *)(this + 392) = a2;
  return this;
}


// ===== 541eec glitch::gui::CGUIListBox::isAutoScrollEnabled(void) =====
int __fastcall glitch::gui::CGUIListBox::isAutoScrollEnabled(glitch::gui::CGUIListBox *this)
{
  return *((unsigned __int8 *)this + 392);
}


// ===== 541ef4 glitch::gui::CGUIListBox::recalculateItemWidth(int) =====
_DWORD *__fastcall glitch::gui::CGUIListBox::recalculateItemWidth(_DWORD *this, unsigned int a2)
{
  int v2; // r3
  _BOOL4 v3; // r2
  _DWORD *v4; // r4
  unsigned int v6; // r5
  int v7; // r3

  v2 = *(this + 94);
  v3 = (a2 & 0x80000000) == 0;
  v4 = this;
  if ( !v2 )
    v3 = 0;
  if ( v3 )
  {
    this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 16))(*(this + 94));
    if ( a2 < (*(this + 1) - *this) >> 4 )
    {
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4[94] + 16))(v4[94]);
      if ( (unsigned int)(*(_DWORD *)(*this + 16 * a2 + 4) - *(_DWORD *)(*this + 16 * a2)) >> 3 )
      {
        v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4[94] + 16))(v4[94])
                                   + 16 * a2)
                       + 4);
        this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4[94] + 12))(v4[94]);
        if ( v6 < (*(this + 1) - *this) >> 4 )
        {
          this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4[94] + 12))(v4[94]);
          v7 = *(_DWORD *)(*this + 16 * v6 + 8) - *(_DWORD *)(*this + 16 * v6);
          if ( v4[92] < v7 )
            v4[92] = v7;
        }
      }
    }
  }
  return this;
}


// ===== 541ff4 glitch::gui::CGUIListBox::setItemOverrideColor(uint,glitch::video::SColor const&) =====
void *__fastcall glitch::gui::CGUIListBox::setItemOverrideColor(int a1, int a2, void *a3)
{
  int v3; // r6
  int i; // r4
  int v7; // r3
  void *result; // r0

  v3 = 96 * a2;
  for ( i = 0; i != 4; ++i )
  {
    v7 = 5 * i;
    *(_BYTE *)(*(_DWORD *)(a1 + 344) + 5 * i + v3 + 76) = 1;
    result = memcpy((void *)(*(_DWORD *)(a1 + 344) + v7 + v3 + 77), a3, 4u);
  }
  return result;
}


// ===== 542050 glitch::gui::CGUIListBox::setItemOverrideColor(uint,glitch::gui::EGUI_LISTBOX_COLOR,glitch::video::SColor const&) =====
_DWORD *__fastcall glitch::gui::CGUIListBox::setItemOverrideColor(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12

  v4 = result[86];
  if ( a2 < -1431655765 * ((result[87] - v4) >> 5) && !(((int)a3 > 3) | (a3 >> 31)) )
  {
    *(_BYTE *)(v4 + 5 * a3 + 96 * a2 + 76) = 1;
    return memcpy((void *)(result[86] + 5 * a3 + 96 * a2 + 77), a4, 4u);
  }
  return result;
}


// ===== 5420d4 glitch::gui::CGUIListBox::clearItemOverrideColor(uint) =====
int __fastcall glitch::gui::CGUIListBox::clearItemOverrideColor(int this, unsigned int a2)
{
  unsigned int v2; // r3
  int i; // r2
  int v4; // r1

  v2 = 96 * a2;
  for ( i = 0; i != 4; ++i )
  {
    v4 = 5 * i;
    *(_BYTE *)(*(_DWORD *)(this + 344) + v4 + v2 + 76) = 0;
  }
  return this;
}


// ===== 542114 glitch::gui::CGUIListBox::clearItemOverrideColor(uint,glitch::gui::EGUI_LISTBOX_COLOR) =====
int __fastcall glitch::gui::CGUIListBox::clearItemOverrideColor(int a1, unsigned int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int result; // r0

  v3 = *(_DWORD *)(a1 + 344);
  v4 = (*(_DWORD *)(a1 + 348) - v3) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    result = (unsigned int)a3 >> 31;
    if ( a3 > 3 )
      result = 1;
    if ( !result )
      *(_BYTE *)(v3 + 96 * a2 + 5 * a3 + 76) = 0;
  }
  return result;
}


// ===== 542168 glitch::gui::CGUIListBox::hasItemOverrideColor(uint,glitch::gui::EGUI_LISTBOX_COLOR) =====
int __fastcall glitch::gui::CGUIListBox::hasItemOverrideColor(int a1, unsigned int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a1 + 344);
  if ( a2 >= -1431655765 * ((*(_DWORD *)(a1 + 348) - v3) >> 5) || (a3 > 3) | ((unsigned int)a3 >> 31) )
    return 0;
  else
    return *(unsigned __int8 *)(v3 + 96 * a2 + 5 * a3 + 76);
}


// ===== 5421c8 glitch::gui::CGUIListBox::getItemOverrideColor(uint,glitch::gui::EGUI_LISTBOX_COLOR) =====
int __fastcall glitch::gui::CGUIListBox::getItemOverrideColor(int a1, unsigned int a2, int a3, unsigned __int8 a4)
{
  unsigned __int8 v4; // r4
  unsigned __int8 v5; // r5
  unsigned __int8 v6; // r12
  int v7; // r6
  int v8; // r0
  _BYTE *v10; // r2

  v7 = *(_DWORD *)(a1 + 348);
  v8 = *(_DWORD *)(a1 + 344);
  if ( a2 < -1431655765 * ((v7 - v8) >> 5) && !((a3 > 3) | ((unsigned int)a3 >> 31)) )
  {
    v10 = (_BYTE *)(v8 + 96 * a2 + 5 * a3 + 72);
    v5 = v10[5];
    v4 = v10[8];
    v6 = v10[7];
    a4 = v10[6];
  }
  return v5 | (unsigned __int16)(a4 << 8) | (v6 << 16) & 0xFFFFFF | (v4 << 24);
}


// ===== 542258 glitch::gui::CGUIListBox::getItemDefaultColor(glitch::gui::EGUI_LISTBOX_COLOR) =====
int __fastcall glitch::gui::CGUIListBox::getItemDefaultColor(int a1, int a2)
{
  int *v3; // r0
  int v5; // r3
  int v6; // [sp+Ch] [bp-4h]

  v3 = (int *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 56))(*(_DWORD *)(a1 + 336));
  if ( v3 )
  {
    switch ( a2 )
    {
      case 0:
        v5 = *v3;
        break;
      case 1:
        v5 = *v3;
        break;
      case 2:
        v5 = *v3;
        break;
      case 3:
        v5 = *v3;
        break;
      default:
        goto LABEL_3;
    }
    v6 = (*(int (**)(void))(v5 + 16))();
  }
  else
  {
LABEL_3:
    v6 = 0;
  }
  return (unsigned __int8)v6 | (unsigned __int16)(BYTE1(v6) << 8) | (BYTE2(v6) << 16) & 0xFFFFFF | (HIBYTE(v6) << 24);
}


// ===== 542348 `global constructor keyed to'.._source_glitch_gui_CGUIListBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIListBox.cpp()
{
  dword_9F661C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6618 = 1056964608;
}


// ===== 542368 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string() =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(
        _DWORD *a1)
{
  _DWORD *v2; // r0

  v2 = (_DWORD *)a1[17];
  if ( v2 != a1 && v2 )
    GlitchFree(v2);
  return a1;
}


// ===== 542390 glitch::core::wcsicmp(wchar_t const*,wchar_t const*) =====
size_t __fastcall glitch::core::wcsicmp(const wchar_t *this, const wchar_t *a2, const wchar_t *a3)
{
  size_t v5; // r4
  size_t result; // r0
  int v7; // r3
  int i; // r12
  int v9; // r1
  wchar_t v10; // r2

  v5 = wcslen(this);
  result = v5 - wcslen(a2);
  if ( !result && v5 )
  {
    v7 = 0;
    for ( i = 0; i != v5; ++i )
    {
      v9 = *(const wchar_t *)((char *)this + v7 * 4);
      v10 = a2[v7];
      if ( v9 != v10 && v10 != v9 - 65 && v9 != v10 - 65 )
        ++result;
      ++v7;
    }
  }
  return result;
}


// ===== 542400 glitch::gui::CGUIListBox::selectNew(int,bool) =====
int __fastcall glitch::gui::CGUIListBox::selectNew(glitch::gui::CGUIListBox *this, int a2, int a3)
{
  unsigned int Time; // r0
  int v7; // r6
  unsigned int v8; // r7
  int v9; // r0
  unsigned int v10; // r3
  int result; // r0
  int v12; // r3
  int v13; // r2
  int v14; // r2
  int v15; // r8
  _DWORD v16[6]; // [sp+0h] [bp-18h] BYREF

  Time = glitch::os::Timer::getTime(this);
  v7 = *((_DWORD *)this + 89);
  v8 = Time;
  if ( *((_DWORD *)this + 90) )
  {
    v15 = ~*((_DWORD *)this + 15) + a2;
    v9 = (v15 + (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 95) + 148))(*((_DWORD *)this + 95)))
       / *((_DWORD *)this + 90);
    *((_DWORD *)this + 89) = v9;
  }
  else
  {
    v9 = *((_DWORD *)this + 89);
  }
  if ( v9 >= 0 )
  {
    v10 = -1431655765 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 5);
    if ( v9 >= v10 )
      *((_DWORD *)this + 89) = v10 - 1;
  }
  else
  {
    *((_DWORD *)this + 89) = 0;
  }
  result = glitch::gui::CGUIListBox::recalculateScrollPos((int)this);
  v12 = *((_DWORD *)this + 9);
  if ( v12 && !a3 )
  {
    v13 = *((_DWORD *)this + 89);
    v16[3] = 0;
    v16[0] = 0;
    v16[2] = this;
    if ( v13 == v7 && v8 < *((_DWORD *)this + 97) + 500 )
      v14 = 9;
    else
      v14 = 8;
    v16[4] = v14;
    result = (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 8))(v12, v16);
  }
  *((_DWORD *)this + 97) = v8;
  return result;
}


// ===== 542518 glitch::gui::CGUIListBox::setSelected(int) =====
int __fastcall glitch::gui::CGUIListBox::setSelected(glitch::gui::CGUIListBox *this, unsigned int a2)
{
  if ( a2 < -1431655765 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 5) )
    *((_DWORD *)this + 89) = a2;
  else
    *((_DWORD *)this + 89) = -1;
  *((_DWORD *)this + 97) = glitch::os::Timer::getTime(this);
  return glitch::gui::CGUIListBox::recalculateScrollPos((int)this);
}


// ===== 542568 glitch::gui::IGUIListBox::IGUIListBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIListBox::IGUIListBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r10
  int v8; // r7
  int v9; // r6
  int v10; // r8
  int v11; // r0
  _DWORD *v13; // r1
  _DWORD *v15; // r3
  int v16; // r0
  int v17; // r12
  int v18; // r10
  int v19; // r8
  int v20; // r2
  int v21; // r1
  int v22; // r6
  int v23; // r7
  int v24; // r0
  int v25; // r1
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r3
  int v30; // r1
  bool v31; // cc
  int v32; // r3
  int v33; // r3

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  v13 = a2 + 1;
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = v13[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = v13[2];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 8) = a1 + 4;
  *(_DWORD *)(a1 + 4) = a1 + 4;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 12),
    0x10u);
  **(_BYTE **)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 92) = v9;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v7;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = v8;
  *(_DWORD *)(a1 + 44) = v9;
  *(_DWORD *)(a1 + 48) = v10;
  *(_DWORD *)(a1 + 52) = v7;
  *(_DWORD *)(a1 + 56) = v8;
  *(_DWORD *)(a1 + 60) = v9;
  *(_DWORD *)(a1 + 64) = v10;
  *(_DWORD *)(a1 + 68) = v7;
  *(_DWORD *)(a1 + 72) = v8;
  *(_DWORD *)(a1 + 76) = v9;
  *(_DWORD *)(a1 + 80) = v10;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 160),
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 340) = 10;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v15 = *(_DWORD **)(a1 + 36);
  if ( v15 )
  {
    v16 = v15[15];
    v17 = v15[14];
    v18 = v15[16];
    v19 = v15[17];
    v20 = v16 + *(_DWORD *)(a1 + 68);
    v21 = v17 + *(_DWORD *)(a1 + 64);
    v22 = v16 + *(_DWORD *)(a1 + 60);
    v23 = v17 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v22;
    *(_DWORD *)(a1 + 84) = v20;
    *(_DWORD *)(a1 + 72) = v23;
    *(_DWORD *)(a1 + 80) = v21;
    *(_DWORD *)(a1 + 68) = v20;
    *(_DWORD *)(a1 + 112) = v18;
    *(_DWORD *)(a1 + 116) = v19;
    *(_DWORD *)(a1 + 104) = v17;
    *(_DWORD *)(a1 + 108) = v16;
    *(_DWORD *)(a1 + 56) = v23;
    *(_DWORD *)(a1 + 60) = v22;
    *(_DWORD *)(a1 + 64) = v21;
    v24 = v15[20];
    if ( v21 > v24 )
      *(_DWORD *)(a1 + 80) = v24;
    v25 = v15[21];
    if ( v20 > v25 )
      *(_DWORD *)(a1 + 84) = v25;
    v26 = v15[18];
    v27 = *(_DWORD *)(a1 + 72);
    if ( v26 > v27 )
    {
      *(_DWORD *)(a1 + 72) = v26;
      v27 = v26;
    }
    v28 = v15[19];
    v29 = *(_DWORD *)(a1 + 76);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 76) = v28;
      v29 = v28;
    }
    v30 = *(_DWORD *)(a1 + 84);
    v31 = v29 <= v30;
    v32 = *(_DWORD *)(a1 + 80);
    if ( !v31 )
      *(_DWORD *)(a1 + 76) = v30;
    if ( v27 > v32 )
      *(_DWORD *)(a1 + 72) = v32;
  }
  v33 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v33 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 542840 glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 542994 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 542a40 glitch::gui::CGUIListBox::CGUIListBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool,bool) =====
int __fastcall glitch::gui::CGUIListBox::CGUIListBox(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        int *a6,
        unsigned __int8 a7,
        char a8,
        char a9)
{
  int v10; // r5
  int v11; // r4
  int v12; // r12
  int v14; // r3
  int v15; // r8
  int v16; // r3
  int v17; // r0
  int v18; // r0
  int v19; // r3
  int v20; // r2
  void *v21; // r7
  int v22; // r3
  int v23; // r1
  _DWORD v25[4]; // [sp+10h] [bp-20h] BYREF
  int v26[4]; // [sp+20h] [bp-10h] BYREF

  v10 = *a6;
  v11 = a6[1];
  v12 = a6[2];
  v26[3] = a6[3];
  v26[2] = v12;
  v26[0] = v10;
  v26[1] = v11;
  glitch::gui::IGUIListBox::IGUIListBox(a1, a2 + 1, a3, a4, a5, v26);
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[7];
  v15 = a7 ^ 1;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 356) = -1;
  *(_DWORD *)(a1 + 460) = a1 + 396;
  *(_DWORD *)(a1 + 464) = a1 + 396;
  *(_BYTE *)(a1 + 385) = a8;
  *(_BYTE *)(a1 + 386) = a9;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_BYTE *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 392) = 1;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 396),
    0x10u);
  **(_DWORD **)(a1 + 460) = 0;
  v16 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 468) = 0;
  *(_BYTE *)(a1 + 472) = 1;
  v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 56))(v16);
  v18 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v17 + 24))(v17, 0);
  v19 = *(_DWORD *)(a1 + 48) - *(_DWORD *)(a1 + 40);
  v20 = *(_DWORD *)(a1 + 52) - *(_DWORD *)(a1 + 44);
  v25[0] = v19 - v18;
  v25[2] = v19;
  v25[3] = v20;
  v25[1] = 0;
  v21 = operator new(0x1A0u, 0);
  glitch::gui::CGUIScrollBar::CGUIScrollBar(v21, 0, *(_DWORD *)(a1 + 336), a1, 0, v25, v15);
  *(_DWORD *)(a1 + 380) = v21;
  (*(void (__fastcall **)(void *, int))(*(_DWORD *)v21 + 56))(v21, 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 380) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 380), 1, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 380) + 48))(*(_DWORD *)(a1 + 380), 0);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*(_DWORD *)(a1 + 380)
                                                              + *(_DWORD *)(**(_DWORD **)(a1 + 380) - 16)));
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 380) + 152))(*(_DWORD *)(a1 + 380), 0);
  v22 = *(_DWORD *)(a1 + 380) + *(_DWORD *)(**(_DWORD **)(a1 + 380) - 16);
  ++*(_DWORD *)(v22 + 4);
  *(_BYTE *)(a1 + 155) = v15;
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v23);
  glitch::gui::CGUIListBox::updateAbsolutePosition((glitch::gui::CGUIListBox *)a1);
  return a1;
}


// ===== 542c64 glitch::gui::CGUIListBox::CGUIListBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool,bool) =====
int __fastcall glitch::gui::CGUIListBox::CGUIListBox(
        int a1,
        int a2,
        int a3,
        int a4,
        int *a5,
        unsigned __int8 a6,
        char a7,
        char a8)
{
  int v8; // r8
  int v9; // r9
  int v10; // r10
  int v12; // r3
  int v13; // r0
  int v14; // r0
  int v15; // r3
  int v16; // r2
  void *v17; // r7
  int v18; // r3
  int v19; // r1
  _DWORD v21[4]; // [sp+10h] [bp-20h] BYREF
  int v22[4]; // [sp+20h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 484) = 1;
  *(_DWORD *)(a1 + 476) = off_96E6AC;
  *(_DWORD *)(a1 + 480) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 476] = off_96E6CC;
  v8 = a5[1];
  v9 = a5[2];
  v10 = a5[3];
  v22[0] = *a5;
  v22[1] = v8;
  v22[2] = v9;
  v22[3] = v10;
  glitch::gui::IGUIListBox::IGUIListBox(a1, (int *)off_96E47C, a2, a3, a4, v22);
  *(_DWORD *)(a1 + 356) = -1;
  *(_DWORD *)(a1 + 476) = off_96E44C;
  *(_DWORD *)a1 = off_96E360;
  *(_DWORD *)(a1 + 480) = off_96E46C;
  *(_BYTE *)(a1 + 385) = a7;
  *(_DWORD *)(a1 + 460) = a1 + 396;
  *(_DWORD *)(a1 + 464) = a1 + 396;
  *(_BYTE *)(a1 + 386) = a8;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_BYTE *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 392) = 1;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 396),
    0x10u);
  **(_DWORD **)(a1 + 460) = 0;
  v12 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 468) = 0;
  *(_BYTE *)(a1 + 472) = 1;
  v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 56))(v12);
  v14 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v13 + 24))(v13, 0);
  v15 = *(_DWORD *)(a1 + 48) - *(_DWORD *)(a1 + 40);
  v16 = *(_DWORD *)(a1 + 52) - *(_DWORD *)(a1 + 44);
  v21[0] = v15 - v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[1] = 0;
  v17 = operator new(0x1A0u, 0);
  glitch::gui::CGUIScrollBar::CGUIScrollBar(v17, 0, *(_DWORD *)(a1 + 336), a1, 0, v21, a6 ^ 1);
  *(_DWORD *)(a1 + 380) = v17;
  (*(void (__fastcall **)(void *, int))(*(_DWORD *)v17 + 56))(v17, 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 380) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 380), 1, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 380) + 48))(*(_DWORD *)(a1 + 380), 0);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*(_DWORD *)(a1 + 380)
                                                              + *(_DWORD *)(**(_DWORD **)(a1 + 380) - 16)));
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 380) + 152))(*(_DWORD *)(a1 + 380), 0);
  v18 = *(_DWORD *)(a1 + 380) + *(_DWORD *)(**(_DWORD **)(a1 + 380) - 16);
  ++*(_DWORD *)(v18 + 4);
  *(_BYTE *)(a1 + 155) = a6 ^ 1;
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v19);
  glitch::gui::CGUIListBox::updateAbsolutePosition((glitch::gui::CGUIListBox *)a1);
  return a1;
}


// ===== 542ecc std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) [clone] =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r4
  _BYTE *result; // r0

  v4 = a2 - "text";
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a2 - "text" + 1);
  result = (_BYTE *)a1[5];
  if ( a2 != "text" )
    result = (char *)memcpy(result, "text", v4) + v4;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 542f1c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,uint,uint,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0> const&) [clone] =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        int a2,
        unsigned int a3)
{
  int v4; // r3
  _BYTE *v5; // r1
  unsigned int v6; // r3

  a1[16] = a1;
  a1[17] = a1;
  v4 = *(_DWORD *)(a2 + 64);
  v5 = *(_BYTE **)(a2 + 68);
  v6 = (v4 - (int)v5) >> 2;
  if ( v6 < a3 )
    a3 = v6;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    v5,
    &v5[4 * a3]);
  return a1;
}


// ===== 542f54 glitch::gui::CGUIListBox::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIListBox::onEvent(glitch::gui::CGUIListBox *this, float *a2)
{
  float v4; // r3
  int v5; // r3
  int result; // r0
  int v7; // r3
  int v8; // r2
  int v9; // r3
  bool v10; // zf
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r3
  bool v15; // zf
  int Time; // r6
  _DWORD *v17; // r3
  size_t v18; // r0
  int v19; // r8
  const wchar_t *v20; // r5
  unsigned int v21; // r2
  int v22; // r3
  int v23; // r1
  int v24; // r12
  int v25; // r5
  int v26; // r6
  const wchar_t *v27; // r7
  unsigned int v28; // r2
  const wchar_t *v29; // r2
  size_t v30; // r7
  int v31; // r5
  int v32; // r6
  void (__fastcall *v33)(int, int); // r4
  int v34; // r0
  int v35; // r12
  int v36; // r3
  int v37; // r0
  int v38; // r3
  int v39; // r3
  int v40; // r2
  int v41; // r5
  int v42; // r6
  const wchar_t *v43; // r7
  unsigned int v44; // r2
  const wchar_t *v45; // r2
  size_t v46; // r7
  int v47; // r3
  int v48; // r2
  const wchar_t *v49; // r2
  size_t v50; // r5
  size_t v51; // r0
  int v52; // r3
  int v53; // r2
  wchar_t *v54[18]; // [sp+4h] [bp-148h] BYREF
  wchar_t *v55[18]; // [sp+4Ch] [bp-100h] BYREF
  wchar_t *v56[18]; // [sp+94h] [bp-B8h] BYREF
  _DWORD v57[6]; // [sp+DCh] [bp-70h] BYREF
  _DWORD v58[6]; // [sp+F4h] [bp-58h] BYREF
  _DWORD v59[6]; // [sp+10Ch] [bp-40h] BYREF
  _DWORD v60[6]; // [sp+124h] [bp-28h] BYREF

  if ( !*((_BYTE *)this + 153) )
    goto LABEL_5;
  v4 = *a2;
  if ( *(_DWORD *)a2 == 1 )
  {
    v12 = *((_DWORD *)a2 + 2);
    v13 = *((_DWORD *)a2 + 5);
    *(float *)&v60[1] = a2[3];
    v60[0] = v12;
    switch ( v13 )
    {
      case 0:
        result = 1;
        *((_BYTE *)this + 384) = 1;
        break;
      case 3:
        *((_BYTE *)this + 384) = 0;
        if ( !(*(int (__fastcall **)(glitch::gui::CGUIListBox *, _DWORD *))(*(_DWORD *)this + 16))(this, v60) )
          return (int)&dword_0 + 1;
        glitch::gui::CGUIListBox::selectNew(this, *((_DWORD *)a2 + 3), 0);
        result = 1;
        break;
      case 6:
        if ( !*((_BYTE *)this + 384) && !*((_BYTE *)this + 386)
          || !(*(int (__fastcall **)(glitch::gui::CGUIListBox *, _DWORD *))(*(_DWORD *)this + 16))(this, v60) )
        {
          goto LABEL_5;
        }
        glitch::gui::CGUIListBox::selectNew(this, *((_DWORD *)a2 + 3), 1);
        result = 1;
        break;
      case 7:
        v32 = *((_DWORD *)this + 95);
        v33 = *(void (__fastcall **)(int, int))(*(_DWORD *)v32 + 152);
        v34 = (*(int (__fastcall **)(int))(*(_DWORD *)v32 + 148))(v32);
        v33(v32, v34 - 10 * (int)a2[4]);
        result = 1;
        break;
      default:
        goto LABEL_5;
    }
    return result;
  }
  if ( LODWORD(v4) != 2 )
  {
    if ( v4 == 0.0 )
    {
      v7 = *((_DWORD *)a2 + 4);
      if ( !v7 )
      {
        if ( *((glitch::gui::CGUIListBox **)a2 + 2) == this )
          *((_BYTE *)this + 384) = 0;
        goto LABEL_5;
      }
      if ( v7 == 6 && *((_DWORD *)a2 + 2) == *((_DWORD *)this + 95) )
        return (int)&dword_0 + 1;
    }
LABEL_5:
    v5 = *((_DWORD *)this + 9);
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, float *))(*(_DWORD *)v5 + 8))(*((_DWORD *)this + 9), a2);
    else
      return 0;
  }
  v8 = *((unsigned __int8 *)a2 + 16);
  if ( !*((_BYTE *)a2 + 16) )
  {
    v9 = *((_DWORD *)a2 + 3);
    v10 = v9 == 13;
    if ( v9 != 13 )
      v10 = v9 == 32;
    if ( !v10 )
      goto LABEL_5;
    v11 = *((_DWORD *)this + 9);
    if ( v11 )
    {
      v59[2] = this;
      v59[4] = 9;
      v59[3] = v8;
      v59[0] = v8;
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 8))(v11, v59);
      return 1;
    }
    return (int)&dword_0 + 1;
  }
  v14 = *((_DWORD *)a2 + 3);
  v15 = v14 == 40;
  if ( v14 != 40 )
    v15 = v14 == 38;
  if ( v15 )
  {
    v31 = *((_DWORD *)this + 89);
    switch ( v14 )
    {
      case '!':
        goto LABEL_71;
      case '"':
        goto LABEL_69;
      case '#':
        goto LABEL_67;
      case '$':
        goto LABEL_65;
      case '&':
        v37 = v31 - 1;
        *((_DWORD *)this + 89) = v31 - 1;
        v35 = *((_DWORD *)this + 87);
        v36 = *((_DWORD *)this + 86);
        break;
      case '(':
        v35 = *((_DWORD *)this + 87);
        v36 = *((_DWORD *)this + 86);
        v37 = v31 + 1;
        *((_DWORD *)this + 89) = v31 + 1;
        break;
      default:
        v37 = *((_DWORD *)this + 89);
        v35 = *((_DWORD *)this + 87);
        v36 = *((_DWORD *)this + 86);
        break;
    }
LABEL_54:
    v38 = -1431655765 * ((v35 - v36) >> 5);
    if ( v38 > v37 )
    {
      if ( v37 < 0 )
        *((_DWORD *)this + 89) = 0;
    }
    else
    {
      *((_DWORD *)this + 89) = v38 - 1;
    }
    glitch::gui::CGUIListBox::recalculateScrollPos((int)this);
    if ( *((_DWORD *)this + 89) != v31 )
    {
      v39 = *((_DWORD *)this + 9);
      if ( v39 )
      {
        if ( !*((_BYTE *)this + 384) )
        {
          v40 = *((unsigned __int8 *)this + 386);
          if ( !*((_BYTE *)this + 386) )
          {
            v60[4] = 8;
            v60[2] = this;
            v60[3] = v40;
            v60[0] = v40;
            (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v39 + 8))(v39, v60);
            return 1;
          }
        }
      }
    }
    return (int)&dword_0 + 1;
  }
  switch ( v14 )
  {
    case '$':
      v31 = *((_DWORD *)this + 89);
LABEL_65:
      v37 = 0;
      *((_DWORD *)this + 89) = 0;
      v35 = *((_DWORD *)this + 87);
      v36 = *((_DWORD *)this + 86);
      goto LABEL_54;
    case '#':
      v31 = *((_DWORD *)this + 89);
LABEL_67:
      v35 = *((_DWORD *)this + 87);
      v36 = *((_DWORD *)this + 86);
      v37 = -1431655765 * ((v35 - v36) >> 5) - 1;
      *((_DWORD *)this + 89) = v37;
      goto LABEL_54;
    case '"':
      v31 = *((_DWORD *)this + 89);
LABEL_69:
      v37 = v31 + (*((_DWORD *)this + 17) - *((_DWORD *)this + 15)) / *((_DWORD *)this + 90);
      *((_DWORD *)this + 89) = v37;
      v35 = *((_DWORD *)this + 87);
      v36 = *((_DWORD *)this + 86);
      goto LABEL_54;
    case '!':
      v31 = *((_DWORD *)this + 89);
LABEL_71:
      v37 = v31 - (*((_DWORD *)this + 17) - *((_DWORD *)this + 15)) / *((_DWORD *)this + 90);
      v35 = *((_DWORD *)this + 87);
      v36 = *((_DWORD *)this + 86);
      *((_DWORD *)this + 89) = v37;
      goto LABEL_54;
  }
  if ( !*((_DWORD *)a2 + 2) )
    goto LABEL_5;
  Time = glitch::os::Timer::getTime(this);
  if ( (unsigned int)(Time - *((_DWORD *)this + 117)) >= 0x1F4 )
  {
    v51 = wcslen((const wchar_t *)" ");
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)this + 396,
      (const wchar_t *)" ",
      &asc_8DE470[4 * v51]);
    **((float **)this + 116) = a2[2];
  }
  else
  {
    v17 = *((_DWORD **)this + 116);
    if ( (*((_DWORD *)this + 115) - (int)v17) >> 2 != 1 || *v17 != *((_DWORD *)a2 + 2) )
    {
      v18 = wcslen((const wchar_t *)" ");
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        (_DWORD *)this + 99,
        " ",
        &asc_8DE470[4 * v18]);
      *(float *)(*((_DWORD *)this + 116) + 4 * (((*((_DWORD *)this + 115) - *((_DWORD *)this + 116)) >> 2) - 1)) = a2[2];
    }
  }
  v19 = *((_DWORD *)this + 89);
  *((_DWORD *)this + 117) = Time;
  if ( v19 < 0 )
    goto LABEL_86;
  v20 = *((const wchar_t **)this + 116);
  v21 = (*((_DWORD *)this + 115) - (int)v20) >> 2;
  if ( v21 <= 1 )
    goto LABEL_86;
  v22 = *((_DWORD *)this + 86);
  v23 = v22 + 96 * v19;
  if ( v21 <= (*(_DWORD *)(v23 + 64) - *(_DWORD *)(v23 + 68)) >> 2 )
  {
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v56,
      v23,
      v21);
    v50 = glitch::core::wcsicmp(v20, v56[17], v49);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v56);
    if ( !v50 )
      return (int)&dword_0 + 1;
LABEL_86:
    v22 = *((_DWORD *)this + 86);
  }
  v24 = *((_DWORD *)this + 87);
  v25 = v19 + 1;
  if ( -1431655765 * ((v24 - v22) >> 5) > v19 + 1 )
  {
    v26 = 96 * v25;
    do
    {
      v27 = *((const wchar_t **)this + 116);
      v28 = (*((_DWORD *)this + 115) - (int)v27) >> 2;
      if ( v28 <= (*(_DWORD *)(v22 + v26 + 64) - *(_DWORD *)(v22 + v26 + 68)) >> 2 )
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v55,
          v22 + v26,
          v28);
        v30 = glitch::core::wcsicmp(v27, v55[17], v29);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v55);
        if ( !v30 )
        {
          v52 = *((_DWORD *)this + 9);
          if ( v52 )
          {
            if ( *((_DWORD *)this + 89) != v25 && !*((_BYTE *)this + 384) )
            {
              v53 = *((unsigned __int8 *)this + 386);
              if ( !*((_BYTE *)this + 386) )
              {
                v58[4] = 8;
                v58[3] = v53;
                v58[0] = v53;
                v58[2] = this;
                (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v52 + 8))(v52, v58);
              }
            }
          }
          (*(void (__fastcall **)(glitch::gui::CGUIListBox *, int))(*(_DWORD *)this + 160))(this, v25);
          return 1;
        }
        v24 = *((_DWORD *)this + 87);
        v22 = *((_DWORD *)this + 86);
      }
      ++v25;
      v26 += 96;
    }
    while ( v25 < -1431655765 * ((v24 - v22) >> 5) );
  }
  if ( v19 < 0 )
    return (int)&dword_0 + 1;
  v41 = 0;
  v42 = 0;
  while ( 1 )
  {
    v43 = *((const wchar_t **)this + 116);
    v44 = (*((_DWORD *)this + 115) - (int)v43) >> 2;
    if ( v44 <= (*(_DWORD *)(v22 + v41 + 64) - *(_DWORD *)(v22 + v41 + 68)) >> 2 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v54,
        v22 + v41,
        v44);
      v46 = glitch::core::wcsicmp(v43, v54[17], v45);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v54);
      if ( v46 )
        break;
    }
    ++v42;
    v41 += 96;
    if ( v19 < v42 )
      return (int)&dword_0 + 1;
    v22 = *((_DWORD *)this + 86);
  }
  v47 = *((_DWORD *)this + 9);
  if ( v47 )
  {
    if ( *((_DWORD *)this + 89) != v42 && !*((_BYTE *)this + 384) )
    {
      v48 = *((unsigned __int8 *)this + 386);
      if ( !*((_BYTE *)this + 386) )
      {
        v57[4] = 8;
        v57[3] = v48;
        *((_DWORD *)this + 89) = v42;
        v57[0] = v48;
        v57[2] = this;
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v47 + 8))(v47, v57);
      }
    }
  }
  (*(void (__fastcall **)(glitch::gui::CGUIListBox *, int))(*(_DWORD *)this + 160))(this, v42);
  return 1;
}


// ===== 5436b4 std::priv::__uninitialized_fill_n<glitch::gui::CGUIListBox::ListItem *,uint,glitch::gui::CGUIListBox::ListItem>(glitch::gui::CGUIListBox::ListItem *,uint,glitch::gui::CGUIListBox::ListItem const&) =====
_DWORD *__fastcall std::priv::__uninitialized_fill_n<glitch::gui::CGUIListBox::ListItem *,unsigned int,glitch::gui::CGUIListBox::ListItem>(
        _DWORD *a1,
        int a2,
        int a3)
{
  _DWORD *v3; // r9
  _DWORD *v4; // r5
  int v6; // r8
  int v7; // r7
  int v8; // r4
  char *v9; // r0
  const void *v10; // r1

  v3 = &a1[24 * a2];
  v4 = a1;
  v6 = -1431655765 * ((96 * a2) >> 5);
  if ( v6 > 0 )
  {
    v7 = a3 + 76;
    while ( 1 )
    {
      v4[16] = v4;
      v4[17] = v4;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v4,
        *(_BYTE **)(a3 + 68),
        *(_BYTE **)(a3 + 64));
      v8 = 0;
      v4[18] = *(_DWORD *)(a3 + 72);
      do
      {
        v9 = (char *)v4 + v8 + 76;
        v10 = (const void *)(v7 + v8);
        v8 += 5;
        memcpy(v9, v10, 5u);
      }
      while ( v8 != 20 );
      if ( !--v6 )
        break;
      v4 += 24;
    }
  }
  return v3;
}


// ===== 543748 std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *,std::__false_type const&) =====
_DWORD *__fastcall std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r6
  _DWORD *v5; // r9
  int v6; // r11
  int v7; // r10
  _DWORD *v8; // r5
  int i; // r4
  char *v10; // r0
  const void *v11; // r1

  v3 = (a2 - a1) >> 5;
  v4 = a1;
  v5 = a3;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v7 = -1431655765 * v3;
    v8 = a3;
    while ( 1 )
    {
      v8[16] = v8;
      v8[17] = v8;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v8,
        *(_BYTE **)(v4 + 68),
        *(_BYTE **)(v4 + 64));
      v8[18] = *(_DWORD *)(v4 + 72);
      for ( i = 0; i != 20; i += 5 )
      {
        v10 = (char *)v8 + i + 76;
        v11 = (const void *)(v4 + 76 + i);
        memcpy(v10, v11, 5u);
      }
      --v7;
      v8 += 24;
      if ( !v7 )
        break;
      v4 += 96;
    }
    v5 += 24 * v6;
  }
  return v5;
}


// ===== 5437e8 std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::gui::CGUIListBox::ListItem*,uint,glitch::gui::CGUIListBox::ListItem const&,std::__false_type const&) [clone] =====
_DWORD *__fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        char *a2,
        unsigned int a3)
{
  char *v6; // r8
  _BYTE *v7; // r1
  _BYTE *v8; // r2
  int v9; // r3
  unsigned int v10; // r4
  char *v11; // r8
  int i; // r7
  const void *v13; // r1
  _DWORD *result; // r0
  unsigned int v15; // r7
  _DWORD *v16; // r0
  int v17; // r3
  _DWORD *v18; // r4
  int v19; // r1
  int v20; // r2
  int v21; // r3
  char *v22; // r1
  char *v23; // r8
  int v24; // r10
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // r3
  _DWORD v29[20]; // [sp+0h] [bp-6Ch] BYREF
  char v30; // [sp+51h] [bp-1Bh] BYREF

  if ( *a1 > a3 )
  {
    v6 = (char *)a1[1];
  }
  else
  {
    v6 = (char *)a1[1];
    if ( a3 < (unsigned int)v6 )
    {
      v7 = *(_BYTE **)(a3 + 68);
      v8 = *(_BYTE **)(a3 + 64);
      v29[16] = v29;
      v29[17] = v29;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v29,
        v7,
        v8);
      v9 = *(_DWORD *)(a3 + 72);
      v10 = a3 + 76;
      v11 = &v30;
      v29[18] = v9;
      for ( i = 0; i != 20; i += 5 )
      {
        v13 = (const void *)(v10 + i);
        memcpy(v11 - 5, v13, 5u);
        v11 += 5;
      }
      std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        v29);
      return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v29);
    }
  }
  v15 = -1431655765 * ((v6 - a2) >> 5);
  if ( v15 > 1 )
  {
    v22 = v6;
    v23 = v6 - 96;
    std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(
      (int)v23,
      (int)v22,
      v22);
    a1[1] += 96;
    v24 = -1431655765 * ((v23 - a2) >> 5);
    if ( v24 > 0 )
    {
      do
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v23,
          *((const wchar_t **)v23 - 7),
          *((_DWORD **)v23 - 8));
        *((_DWORD *)v23 + 18) = *((_DWORD *)v23 - 6);
        v25 = *((_DWORD *)v23 - 4);
        v26 = *((_DWORD *)v23 - 3);
        v27 = *((_DWORD *)v23 - 2);
        *((_DWORD *)v23 + 19) = *((_DWORD *)v23 - 5);
        *((_DWORD *)v23 + 20) = v25;
        *((_DWORD *)v23 + 21) = v26;
        *((_DWORD *)v23 + 22) = v27;
        v28 = *((_DWORD *)v23 - 1);
        --v24;
        v23 -= 96;
        *((_DWORD *)v23 + 47) = v28;
      }
      while ( v24 );
    }
  }
  else
  {
    v16 = std::priv::__uninitialized_fill_n<glitch::gui::CGUIListBox::ListItem *,unsigned int,glitch::gui::CGUIListBox::ListItem>(
            v6,
            1 - v15,
            a3);
    a1[1] = (unsigned int)v16;
    result = std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(
               (int)a2,
               (int)v6,
               v16);
    a1[1] += 96 * v15;
    if ( v15 != 1 )
      return result;
  }
  if ( a2 != (char *)a3 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)a2,
      *(const wchar_t **)(a3 + 68),
      *(_DWORD **)(a3 + 64));
  v17 = *(_DWORD *)(a3 + 72);
  v18 = (_DWORD *)(a3 + 76);
  *((_DWORD *)a2 + 18) = v17;
  result = (_DWORD *)*v18;
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  *((_DWORD *)a2 + 19) = *v18;
  *((_DWORD *)a2 + 20) = v19;
  *((_DWORD *)a2 + 21) = v20;
  *((_DWORD *)a2 + 22) = v21;
  *((_DWORD *)a2 + 23) = v18[4];
  return result;
}


// ===== 5439b4 glitch::gui::CGUIListBox::draw(void) =====
glitch::gui::CGUIListBox *__fastcall glitch::gui::CGUIListBox::draw(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox *v1; // r4
  int v2; // r0
  int v3; // r12
  int v4; // r7
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r5
  int v9; // r0
  int v10; // r2
  int v11; // r1
  int v12; // r0
  int v13; // r3
  bool v14; // cc
  int v15; // r1
  int v16; // r0
  int v17; // r1
  void (__fastcall *v18)(int, glitch::gui::CGUIListBox *, int, int, int, int *, int *); // r5
  int v19; // r12
  int v20; // r1
  int v21; // r3
  int v22; // r2
  int v23; // r3
  int v24; // r5
  int v25; // r0
  int v26; // r3
  int v27; // r5
  int v28; // r0
  int v29; // r3
  int v30; // r10
  int v31; // r3
  int v32; // r2
  int v33; // r6
  int v34; // r5
  int v35; // r11
  int v36; // r7
  int v37; // r1
  int v38; // r8
  int v39; // lr
  int v40; // r12
  void (__fastcall *v41)(int, int, _DWORD *, int *, glitch::os::Timer **, _DWORD, int, _DWORD, int); // r10
  int v42; // r7
  glitch::os::Timer *v43; // r0
  int v44; // r0
  int v45; // r2
  void (__fastcall *v46)(int, int, _DWORD *, int, _DWORD, int, int *); // r10
  int v47; // r8
  int v48; // r0
  int v49; // r12
  char *v50; // r4
  char *i; // r5
  char *v52; // t1
  void (__fastcall *v53)(int, glitch::gui::CGUIListBox *, _DWORD *, int *, int *); // r7
  int v54; // r7
  void (__fastcall *v55)(int, int, _DWORD *, int *, glitch::os::Timer **, int, int, _DWORD, int); // r10
  glitch::os::Timer *v56; // r0
  void (__fastcall *v57)(int, int, _DWORD *, int, _DWORD, int, int *); // r10
  int v58; // r8
  int v59; // r0
  int v60; // r5
  int v61; // r5
  int v62; // [sp+0h] [bp-94h]
  int Time; // [sp+8h] [bp-8Ch]
  int v64; // [sp+18h] [bp-7Ch]
  _BOOL4 v65; // [sp+1Ch] [bp-78h]
  int v66; // [sp+38h] [bp-5Ch]
  _DWORD v67[4]; // [sp+40h] [bp-54h] BYREF
  int v68; // [sp+50h] [bp-44h] BYREF
  int v69; // [sp+54h] [bp-40h]
  int v70; // [sp+58h] [bp-3Ch]
  int v71; // [sp+5Ch] [bp-38h]
  int v72; // [sp+60h] [bp-34h] BYREF
  int v73; // [sp+64h] [bp-30h]
  int v74; // [sp+68h] [bp-2Ch]
  int v75; // [sp+6Ch] [bp-28h]
  _DWORD v76[4]; // [sp+70h] [bp-24h] BYREF
  glitch::os::Timer *v77; // [sp+80h] [bp-14h] BYREF
  glitch::os::Timer *v78; // [sp+84h] [bp-10h] BYREF
  _DWORD v79[3]; // [sp+88h] [bp-Ch] BYREF

  v1 = this;
  if ( *((_BYTE *)this + 152) )
  {
    glitch::gui::CGUIListBox::recalculateItemHeight(this);
    v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 84) + 56))(*((_DWORD *)v1 + 84));
    v3 = *((_DWORD *)v1 + 14);
    v4 = v2;
    v5 = *((_DWORD *)v1 + 16);
    v6 = *((_DWORD *)v1 + 17);
    v7 = *((_DWORD *)v1 + 95);
    v8 = *((_DWORD *)v1 + 15) + 1;
    v73 = *((_DWORD *)v1 + 15);
    v70 = v5;
    v71 = v6;
    v69 = v8;
    v68 = v3 + 1;
    v72 = v3;
    v74 = v5;
    v75 = v6;
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 44))(v7) )
    {
      v61 = *((_DWORD *)v1 + 16);
      v70 = v61 - (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 24))(v4, 0);
    }
    v9 = *((_DWORD *)v1 + 20);
    v10 = v70;
    v11 = --v71;
    if ( v9 < v70 )
    {
      v70 = v9;
      v10 = v9;
    }
    v12 = *((_DWORD *)v1 + 21);
    v13 = v11;
    v14 = v11 <= v12;
    if ( v11 > v12 )
      v71 = *((_DWORD *)v1 + 21);
    v15 = *((_DWORD *)v1 + 18);
    if ( !v14 )
      v13 = v12;
    v16 = v68;
    if ( v15 > v68 )
    {
      v68 = *((_DWORD *)v1 + 18);
      v16 = v15;
    }
    v17 = *((_DWORD *)v1 + 19);
    if ( v17 > v69 )
      v69 = *((_DWORD *)v1 + 19);
    else
      v17 = v69;
    if ( v13 < v17 )
      v69 = v13;
    if ( v16 > v10 )
      v68 = v10;
    v18 = *(void (__fastcall **)(int, glitch::gui::CGUIListBox *, int, int, int, int *, int *))(*(_DWORD *)v4 + 72);
    v66 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 16))(v4, 3);
    v62 = *((unsigned __int8 *)v1 + 385);
    v79[1] = v66;
    v18(v4, v1, v66, 1, v62, &v72, &v68);
    v19 = *((_DWORD *)v1 + 15);
    v20 = *((_DWORD *)v1 + 17);
    v21 = *((_DWORD *)v1 + 95);
    v22 = *((_DWORD *)v1 + 14) + 1;
    v74 = *((_DWORD *)v1 + 16);
    v73 = v19;
    v75 = v20;
    v72 = v22;
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v21 + 44))(v21) )
    {
      v60 = *((_DWORD *)v1 + 16);
      v74 = v60 - (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 24))(v4, 0);
    }
    v23 = *((_DWORD *)v1 + 95);
    v24 = v73;
    v75 = *((_DWORD *)v1 + 90) + *((_DWORD *)v1 + 15);
    v25 = (*(int (__fastcall **)(int))(*(_DWORD *)v23 + 148))(v23);
    v26 = *((_DWORD *)v1 + 95);
    v73 = v24 - v25;
    v27 = v75;
    v28 = (*(int (__fastcall **)(int))(*(_DWORD *)v26 + 148))(v26);
    v29 = *((unsigned __int8 *)v1 + 472);
    this = (glitch::gui::CGUIListBox *)(v27 - v28);
    v75 = (int)this;
    v65 = true;
    if ( !v29 )
    {
      this = (glitch::gui::CGUIListBox *)(*(int (__fastcall **)(_DWORD, glitch::gui::CGUIListBox *))(**((_DWORD **)v1 + 84) + 28))(
                                           *((_DWORD *)v1 + 84),
                                           v1);
      if ( !this )
      {
        this = (glitch::gui::CGUIListBox *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)v1 + 84) + 28))(
                                             *((_DWORD *)v1 + 84),
                                             *((_DWORD *)v1 + 95));
        if ( !this )
          v65 = false;
      }
    }
    v30 = *((_DWORD *)v1 + 87);
    v31 = *((_DWORD *)v1 + 86);
    if ( v30 - v31 > 95 )
    {
      this = (glitch::gui::CGUIListBox *)v75;
      v32 = v73;
      v33 = 0;
      v34 = 0;
      v35 = v4;
      do
      {
        if ( (int)this >= *((_DWORD *)v1 + 15) && v32 <= *((_DWORD *)v1 + 17) )
        {
          if ( *((_DWORD *)v1 + 89) == v34 && v65 )
          {
            v53 = *(void (__fastcall **)(int, glitch::gui::CGUIListBox *, _DWORD *, int *, int *))(*(_DWORD *)v35 + 100);
            v79[0] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v35 + 16))(v35, 10);
            v53(v35, v1, v79, &v72, &v68);
            v32 = v73;
            this = (glitch::gui::CGUIListBox *)v75;
            v31 = *((_DWORD *)v1 + 86);
          }
          v36 = *((_DWORD *)v1 + 93);
          v37 = v72 + 3;
          v67[2] = v74;
          v67[1] = v32;
          v67[3] = this;
          v67[0] = v72 + 3;
          if ( v36 )
          {
            v38 = *((_DWORD *)v1 + 94);
            if ( v38 && *(int *)(v31 + v33 + 72) >= 0 )
            {
              v39 = *((_DWORD *)v1 + 89);
              v40 = v37 + *((_DWORD *)v1 + 92) / 2;
              v76[1] = v32 + ((int)this - v32) / 2;
              v76[0] = v40;
              if ( v39 == v34 && v65 )
              {
                v54 = *(_DWORD *)(v31 + 96 * v34 + 72);
                v55 = *(void (__fastcall **)(int, int, _DWORD *, int *, glitch::os::Timer **, int, int, _DWORD, int))(*(_DWORD *)v38 + 36);
                if ( (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 188))(v1, v34, 3) )
                  v56 = (glitch::os::Timer *)(*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 192))(
                                               v1,
                                               v34,
                                               3);
                else
                  v56 = (glitch::os::Timer *)(*(int (__fastcall **)(glitch::gui::CGUIListBox *, int))(*(_DWORD *)v1 + 196))(
                                               v1,
                                               3);
                v78 = v56;
                v64 = *((_DWORD *)v1 + 97);
                Time = glitch::os::Timer::getTime(v56);
                v55(v38, v54, v76, &v68, &v78, v64, Time, 0, 1);
              }
              else
              {
                v41 = *(void (__fastcall **)(int, int, _DWORD *, int *, glitch::os::Timer **, _DWORD, int, _DWORD, int))(*(_DWORD *)v38 + 36);
                v42 = *(_DWORD *)(v31 + v33 + 72);
                if ( (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 188))(v1, v34, 2) )
                  v43 = (glitch::os::Timer *)(*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 192))(
                                               v1,
                                               v34,
                                               2);
                else
                  v43 = (glitch::os::Timer *)(*(int (__fastcall **)(glitch::gui::CGUIListBox *, int))(*(_DWORD *)v1 + 196))(
                                               v1,
                                               2);
                v77 = v43;
                if ( *((_DWORD *)v1 + 89) == v34 )
                  v44 = glitch::os::Timer::getTime(v43);
                else
                  v44 = 0;
                v41(v38, v42, v76, &v68, &v77, 0, v44, 0, 1);
              }
              v37 = v67[0];
              v31 = *((_DWORD *)v1 + 86);
              v36 = *((_DWORD *)v1 + 93);
            }
            v45 = *((_DWORD *)v1 + 89);
            v67[0] = *((_DWORD *)v1 + 92) + 3 + v37;
            if ( v45 == v34 && v65 )
            {
              v57 = *(void (__fastcall **)(int, int, _DWORD *, int, _DWORD, int, int *))(*(_DWORD *)v36 + 12);
              v58 = *(_DWORD *)(v31 + 96 * v34 + 68);
              if ( (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 188))(v1, v34, 1) )
                v59 = (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, int))(*(_DWORD *)v1 + 192))(v1, v34, 1);
              else
                v59 = (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int))(*(_DWORD *)v1 + 196))(v1, 1);
              v76[3] = v59;
              v57(v36, v58, v67, v59, 0, 1, &v68);
            }
            else
            {
              v46 = *(void (__fastcall **)(int, int, _DWORD *, int, _DWORD, int, int *))(*(_DWORD *)v36 + 12);
              v47 = *(_DWORD *)(v31 + v33 + 68);
              if ( (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, _DWORD))(*(_DWORD *)v1 + 188))(v1, v34, 0) )
                v48 = (*(int (__fastcall **)(glitch::gui::CGUIListBox *, int, _DWORD))(*(_DWORD *)v1 + 192))(v1, v34, 0);
              else
                v48 = (*(int (__fastcall **)(glitch::gui::CGUIListBox *))(*(_DWORD *)v1 + 196))(v1);
              v76[2] = v48;
              v46(v36, v47, v67, v48, 0, 1, &v68);
            }
            v32 = v73;
            v30 = *((_DWORD *)v1 + 87);
            v31 = *((_DWORD *)v1 + 86);
            v67[0] = v67[0] - 3 - *((_DWORD *)v1 + 92);
          }
          else
          {
            v30 = *((_DWORD *)v1 + 87);
          }
        }
        v49 = *((_DWORD *)v1 + 90);
        ++v34;
        this = (glitch::gui::CGUIListBox *)(v49 + v75);
        v32 += v49;
        v73 = v32;
        v75 += v49;
        v33 += 96;
      }
      while ( v34 < -1431655765 * ((v30 - v31) >> 5) );
    }
    if ( *((_BYTE *)v1 + 152) )
    {
      v52 = *((char **)v1 + 1);
      v50 = (char *)v1 + 4;
      for ( i = v52; i != v50; i = *(char **)i )
        this = (glitch::gui::CGUIListBox *)(*(int (__fastcall **)(int))(**((_DWORD **)i + 2) + 32))(*((_DWORD *)i + 2));
    }
  }
  return this;
}


// ===== 54414c std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 24;
    v4 = (void **)v1[17];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[17]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 5441a4 std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIListBox::ListItem*,glitch::gui::CGUIListBox::ListItem*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r4
  int v5; // r5
  int v6; // r3
  int v8; // r9
  _DWORD *v9; // r9
  int v10; // r7
  _DWORD *v11; // r6
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // r12
  _DWORD *v16; // r5
  _DWORD *v17; // r3
  bool v18; // zf

  v3 = *(_DWORD **)(a1 + 4);
  v5 = a3;
  v6 = ((int)v3 - a3) >> 5;
  v8 = -1431655765 * v6;
  if ( -1431655765 * v6 > 0 )
  {
    v10 = -1431655765 * v6;
    v11 = a2;
    while ( 1 )
    {
      if ( v11 != (_DWORD *)v5 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v11,
          *(const wchar_t **)(v5 + 68),
          *(_DWORD **)(v5 + 64));
      v11[18] = *(_DWORD *)(v5 + 72);
      v12 = *(_DWORD *)(v5 + 80);
      v13 = *(_DWORD *)(v5 + 84);
      v14 = *(_DWORD *)(v5 + 88);
      v11[19] = *(_DWORD *)(v5 + 76);
      v11[20] = v12;
      v11[21] = v13;
      v11[22] = v14;
      v15 = v11 + 23;
      --v10;
      v11 += 24;
      *v15 = *(_DWORD *)(v5 + 92);
      if ( !v10 )
        break;
      v5 += 96;
    }
    v9 = &a2[24 * v8];
    v3 = *(_DWORD **)(a1 + 4);
  }
  else
  {
    v9 = a2;
  }
  if ( v3 != v9 )
  {
    v16 = v9;
    do
    {
      v17 = (_DWORD *)v16[17];
      v18 = v17 == v16;
      v16 += 24;
      if ( !v18 && v17 )
        GlitchFree(v17);
    }
    while ( v3 != v16 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return a2;
}


// ===== 544280 glitch::gui::CGUIListBox::clear(void) =====
int __fastcall glitch::gui::CGUIListBox::clear(glitch::gui::CGUIListBox *this)
{
  _DWORD *v1; // r1
  int v2; // r2
  int v4; // r3

  v1 = *((_DWORD **)this + 86);
  v2 = *((_DWORD *)this + 87);
  if ( v1 != (_DWORD *)v2 )
    std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 344,
      v1,
      v2);
  v4 = *((_DWORD *)this + 95);
  *((_DWORD *)this + 89) = -1;
  *((_DWORD *)this + 92) = 0;
  if ( v4 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 152))(v4);
  return glitch::gui::CGUIListBox::recalculateItemHeight(this);
}


// ===== 5442e4 std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIListBox::ListItem*,std::__false_type const&) =====
int __fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v5; // r6
  int v6; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // r12
  int v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( a2 + 96 != v2 )
  {
    v5 = -1431655765 * ((v2 - (a2 + 96)) >> 5);
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v6,
          *(const wchar_t **)(v6 + 164),
          *(_DWORD **)(v6 + 160));
        *(_DWORD *)(v6 + 72) = *(_DWORD *)(v6 + 168);
        v7 = *(_DWORD *)(v6 + 176);
        v8 = *(_DWORD *)(v6 + 180);
        v9 = *(_DWORD *)(v6 + 184);
        *(_DWORD *)(v6 + 76) = *(_DWORD *)(v6 + 172);
        *(_DWORD *)(v6 + 80) = v7;
        *(_DWORD *)(v6 + 84) = v8;
        *(_DWORD *)(v6 + 88) = v9;
        v10 = (_DWORD *)(v6 + 92);
        v11 = *(_DWORD *)(v6 + 188);
        --v5;
        v6 += 96;
        *v10 = v11;
      }
      while ( v5 );
      v2 = *(_DWORD *)(a1 + 4);
    }
  }
  v12 = (_DWORD *)(v2 - 96);
  *(_DWORD *)(a1 + 4) = v12;
  v13 = (_DWORD *)v12[17];
  if ( v13 != v12 && v13 )
    GlitchFree(v13);
  return a2;
}


// ===== 544390 glitch::gui::CGUIListBox::removeItem(uint) =====
int __fastcall glitch::gui::CGUIListBox::removeItem(glitch::gui::CGUIListBox *this, unsigned int a2)
{
  int v2; // r3
  int v4; // r2
  int result; // r0
  unsigned int v6; // r2
  unsigned int v7; // [sp+4h] [bp-Ch]

  v2 = *((_DWORD *)this + 86);
  v4 = (*((_DWORD *)this + 87) - v2) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    v6 = *((_DWORD *)this + 89);
    if ( v6 == a2 )
    {
      *((_DWORD *)this + 89) = -1;
    }
    else if ( a2 < v6 )
    {
      *((_DWORD *)this + 89) = v6 - 1;
      v7 = a2;
      *((_DWORD *)this + 97) = glitch::os::Timer::getTime((glitch::os::Timer *)result);
      v2 = *((_DWORD *)this + 86);
      a2 = v7;
    }
    std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 344,
      v2 + 96 * a2);
    return glitch::gui::CGUIListBox::recalculateItemHeight(this);
  }
  return result;
}


// ===== 544428 glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  *(_DWORD *)this = off_96E110;
  *((_DWORD *)this + 86) = off_96E1FC;
  *((_DWORD *)this + 87) = off_96E21C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96E22C);
}


// ===== 54447c `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  glitch::gui::IGUIListBox::~IGUIListBox((glitch::gui::IGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54448c `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  glitch::gui::IGUIListBox::~IGUIListBox((glitch::gui::IGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54449c glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  _DWORD *v1; // r2
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  char *v5; // r0

  v1 = *((_DWORD **)this + 95);
  *(_DWORD *)this = off_96E360;
  *((_DWORD *)this + 119) = off_96E44C;
  *((_DWORD *)this + 120) = off_96E46C;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((glitch::IReferenceCounted **)this + 93);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 94);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((char **)this + 116);
  if ( v5 != (char *)this + 396 && v5 )
    GlitchFree(v5);
  std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  *(_DWORD *)this = off_96E4B8;
  *(int *)((char *)&elf_hash_bucket[64] + (_DWORD)this) = (int)off_96E5A4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96E5C4;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96E480);
}


// ===== 544578 glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox::~CGUIListBox(this);
  LC_API_FREE_0(this);
}


// ===== 544594 glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  char *v8; // r0
  int v9; // r3
  int *v10; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 95);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((glitch::IReferenceCounted **)this + 93);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 94);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *((char **)this + 116);
  if ( v8 != (char *)this + 396 && v8 )
    GlitchFree(v8);
  std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  v9 = a2[1];
  v10 = a2 + 1;
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 12)) = v10[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v10[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v10 + 1);
}


// ===== 544660 glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  *(_DWORD *)this = off_96E110;
  *((_DWORD *)this + 86) = off_96E1FC;
  *((_DWORD *)this + 87) = off_96E21C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96E22C);
  LC_API_FREE_0(this);
}


// ===== 5446bc `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  glitch::gui::IGUIListBox::~IGUIListBox((glitch::gui::IGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5446cc `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIListBox::~IGUIListBox(glitch::gui::IGUIListBox *this)
{
  glitch::gui::IGUIListBox::~IGUIListBox((glitch::gui::IGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5446dc glitch::gui::CGUIListBox::swapItems(uint,uint) =====
void __fastcall glitch::gui::CGUIListBox::swapItems(glitch::gui::CGUIListBox *this, unsigned int a2, unsigned int a3)
{
  int v3; // r10
  unsigned int v6; // r3
  unsigned int v7; // r9
  int v8; // r10
  int v9; // r3
  int v10; // r10
  char *v11; // r8
  int i; // r5
  const void *v13; // r1
  int v14; // r5
  unsigned int v15; // r7
  _DWORD *v16; // r9
  int v17; // r5
  int v18; // r3
  _DWORD *v19; // r5
  int v20; // r1
  int v21; // r2
  int v22; // r3
  _DWORD *v23; // r7
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD v27[16]; // [sp+0h] [bp-60h] BYREF
  _DWORD *v28; // [sp+40h] [bp-20h]
  void *p; // [sp+44h] [bp-1Ch]
  int v30; // [sp+48h] [bp-18h]
  int v31; // [sp+4Ch] [bp-14h]
  _DWORD v32[4]; // [sp+50h] [bp-10h] BYREF

  v3 = *((_DWORD *)this + 86);
  v6 = -1431655765 * ((*((_DWORD *)this + 87) - v3) >> 5);
  if ( a2 < v6 && a3 < v6 )
  {
    v7 = 96 * a2;
    v28 = v27;
    v8 = v3 + 96 * a2;
    p = v27;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v27,
      *(_BYTE **)(v8 + 68),
      *(_BYTE **)(v8 + 64));
    v9 = *(_DWORD *)(v8 + 72);
    v10 = v8 + 76;
    v11 = (char *)v32 + 1;
    v30 = v9;
    for ( i = 0; i != 20; i += 5 )
    {
      v13 = (const void *)(v10 + i);
      memcpy(v11 - 5, v13, 5u);
      v11 += 5;
    }
    v14 = *((_DWORD *)this + 86);
    v15 = 96 * a3;
    v16 = (_DWORD *)(v14 + v7);
    v17 = v14 + v15;
    if ( v16 != (_DWORD *)v17 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v16,
        *(const wchar_t **)(v17 + 68),
        *(_DWORD **)(v17 + 64));
    v18 = *(_DWORD *)(v17 + 72);
    v19 = (_DWORD *)(v17 + 76);
    v16[18] = v18;
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v16[19] = *v19;
    v16[20] = v20;
    v16[21] = v21;
    v16[22] = v22;
    v16[23] = v19[4];
    v23 = (_DWORD *)(*((_DWORD *)this + 86) + v15);
    if ( v23 != v27 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v23,
        (const wchar_t *)p,
        v28);
    v23[18] = v30;
    v24 = v32[0];
    v25 = v32[1];
    v26 = v32[2];
    v23[19] = v31;
    v23[20] = v24;
    v23[21] = v25;
    v23[22] = v26;
    v23[23] = v32[3];
    if ( p != v27 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
}


// ===== 544828 glitch::gui::CGUIListBox::setItem(uint,wchar_t const*,int) =====
glitch::gui::CGUIListBox *__fastcall glitch::gui::CGUIListBox::setItem(
        glitch::gui::CGUIListBox *this,
        unsigned int a2,
        const wchar_t *s,
        unsigned int a4)
{
  int v4; // r5
  glitch::gui::CGUIListBox *v6; // r4
  unsigned int v8; // r7
  size_t v9; // r0

  v4 = *((_DWORD *)this + 86);
  v6 = this;
  if ( a2 < -1431655765 * ((*((_DWORD *)this + 87) - v4) >> 5) )
  {
    v8 = 96 * a2;
    v9 = wcslen(s);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v4 + v8,
      s,
      &s[v9]);
    *(_DWORD *)(*((_DWORD *)v6 + 86) + v8 + 72) = a4;
    glitch::gui::CGUIListBox::recalculateItemHeight(v6);
    return (glitch::gui::CGUIListBox *)glitch::gui::CGUIListBox::recalculateItemWidth(v6, a4);
  }
  return this;
}


// ===== 5448ac glitch::gui::CGUIListBox::getSerializationLabels(glitch::gui::EGUI_LISTBOX_COLOR,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &) =====
int __fastcall glitch::gui::CGUIListBox::getSerializationLabels(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  int result; // r0

  switch ( a2 )
  {
    case 0:
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a3,
        "UseColText",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a4,
        "ColText",
        "");
      result = 1;
      break;
    case 1:
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a3,
        "UseColTextHl",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a4,
        "ColTextHl",
        "");
      result = 1;
      break;
    case 2:
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a3,
        "UseColIcon",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a4,
        "ColIcon",
        "");
      result = 1;
      break;
    case 3:
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a3,
        "UseColIconHl",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        a4,
        "ColIconHl",
        "");
      result = 1;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5449b8 glitch::gui::CGUIListBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::gui::CGUIListBox::serializeAttributes(int a1, int a2)
{
  int v4; // r11
  int i; // r4
  int v6; // r3
  unsigned __int8 *v7; // r9
  int v8; // [sp+8h] [bp-64h]
  _DWORD v9[4]; // [sp+1Ch] [bp-50h] BYREF
  _BYTE *v10; // [sp+2Ch] [bp-40h]
  void *p; // [sp+30h] [bp-3Ch]
  _DWORD v12[4]; // [sp+34h] [bp-38h] BYREF
  _BYTE *v13; // [sp+44h] [bp-28h]
  void *v14; // [sp+48h] [bp-24h]
  void *v15[5]; // [sp+4Ch] [bp-20h] BYREF
  void *v16; // [sp+60h] [bp-Ch]

  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "DrawBack",
    *(unsigned __int8 *)(a1 + 385),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "MoveOverSelect",
    *(unsigned __int8 *)(a1 + 386),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "AutoScroll",
    *(unsigned __int8 *)(a1 + 392),
    0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "ItemCount",
    -1431655765 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 5),
    0);
  if ( -1431655765 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 5) )
  {
    v4 = 0;
    v8 = 0;
    while ( 2 )
    {
      v15[4] = v15;
      v16 = v15;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v15,
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v8);
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(
        a2,
        v16,
        *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 68),
        0);
      for ( i = 0; i != 4; ++i )
      {
        v13 = v12;
        v14 = v12;
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v12,
          0x10u);
        *v13 = 0;
        v10 = v9;
        p = v9;
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v9,
          0x10u);
        *v10 = 0;
        if ( !glitch::gui::CGUIListBox::getSerializationLabels(a1, i, v12, v9) )
        {
          if ( p != v9 && p )
            GlitchFree(p);
          if ( v14 != v12 && v14 )
            GlitchFree(v14);
          if ( v16 != v15 && v16 )
            GlitchFree(v16);
          return;
        }
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v15,
          v14,
          v13);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v15,
          (_DWORD *)(char)v8);
        v6 = *(_DWORD *)(a1 + 344) + 5 * i + v4;
        if ( *(_BYTE *)(v6 + 76) )
        {
          (*(void (__fastcall **)(int, void *, int, _DWORD))(*(_DWORD *)a2 + 216))(a2, v16, 1, 0);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v15,
            p,
            v10);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v15,
            (_DWORD *)(char)v8);
          v7 = (unsigned __int8 *)(*(_DWORD *)(a1 + 344) + 5 * i + v4 + 72);
          (*(void (__fastcall **)(int, void *, int, _DWORD))(*(_DWORD *)a2 + 280))(
            a2,
            v16,
            v7[5] | (v7[6] << 8) | (v7[7] << 16) | (v7[8] << 24),
            0);
        }
        else
        {
          (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
            a2,
            v16,
            *(unsigned __int8 *)(v6 + 76),
            *(unsigned __int8 *)(v6 + 76));
        }
        if ( p != v9 && p )
          GlitchFree(p);
        if ( v14 != v12 && v14 )
          GlitchFree(v14);
      }
      if ( v16 != v15 )
      {
        if ( v16 )
          GlitchFree(v16);
      }
      v4 += 96;
      if ( ++v8 < (unsigned int)(-1431655765 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 5)) )
        continue;
      break;
    }
  }
}


// ===== 544d7c glitch::gui::CGUIListBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall glitch::gui::CGUIListBox::deserializeAttributes(float *a1, int a2)
{
  void *result; // r0
  int v5; // r4
  bool v6; // zf
  int v7; // r9
  int v8; // [sp+0h] [bp-124h]
  int v9; // [sp+4h] [bp-120h]
  int v10; // [sp+10h] [bp-114h]
  int v11; // [sp+20h] [bp-104h]
  _DWORD v12[16]; // [sp+2Ch] [bp-F8h] BYREF
  _DWORD *v13; // [sp+6Ch] [bp-B8h]
  void *v14; // [sp+70h] [bp-B4h]
  int v15; // [sp+74h] [bp-B0h]
  char v16; // [sp+78h] [bp-ACh]
  char v17; // [sp+7Dh] [bp-A7h]
  char v18; // [sp+82h] [bp-A2h]
  char v19; // [sp+87h] [bp-9Dh]
  _BYTE v20[64]; // [sp+8Ch] [bp-98h] BYREF
  _DWORD *v21; // [sp+CCh] [bp-58h]
  void *p; // [sp+D0h] [bp-54h]
  _DWORD v23[4]; // [sp+D4h] [bp-50h] BYREF
  _BYTE *v24; // [sp+E4h] [bp-40h]
  void *v25; // [sp+E8h] [bp-3Ch]
  _DWORD v26[4]; // [sp+ECh] [bp-38h] BYREF
  _BYTE *v27; // [sp+FCh] [bp-28h]
  void *v28; // [sp+100h] [bp-24h]
  void *v29[5]; // [sp+104h] [bp-20h] BYREF
  void *v30; // [sp+118h] [bp-Ch]

  (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 152))(a1);
  *((_BYTE *)a1 + 385) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "DrawBack");
  *((_BYTE *)a1 + 386) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "MoveOverSelect");
  *((_BYTE *)a1 + 392) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "AutoScroll");
  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  result = (void *)(*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ItemCount");
  v11 = (int)result;
  if ( (int)result > 0 )
  {
    v9 = 0;
    v10 = 0;
LABEL_3:
    v29[4] = v29;
    v30 = v29;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v29,
      "");
    v13 = v12;
    v14 = v12;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v12,
      0x10u);
    *v13 = 0;
    v15 = -1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v29,
      (_DWORD *)(char)v10);
    (*(void (__fastcall **)(_BYTE *, int, void *))(*(_DWORD *)a2 + 156))(v20, a2, v30);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v12,
      (const wchar_t *)p,
      v21);
    if ( p != v20 && p )
      GlitchFree(p);
    (*(void (__fastcall **)(float *, void *, int))(*(_DWORD *)a1 + 136))(a1, v14, v15);
    v5 = 0;
    while ( 1 )
    {
      v27 = v26;
      v28 = v26;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v26,
        0x10u);
      *v27 = 0;
      v24 = v23;
      v25 = v23;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v23,
        0x10u);
      *v24 = 0;
      if ( !glitch::gui::CGUIListBox::getSerializationLabels((int)a1, v5, v26, v23) )
        break;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v29,
        v28,
        v27);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v29,
        (_DWORD *)(char)v10);
      v8 = *((_DWORD *)a1 + 86) + v9;
      *(_BYTE *)(v8 + 5 * v5 + 76) = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 228))(a2, v30);
      if ( *(_BYTE *)(*((_DWORD *)a1 + 86) + 5 * v5 + v9 + 76) )
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v29,
          v25,
          v24);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v29,
          (_DWORD *)(char)v10);
        v7 = *((_DWORD *)a1 + 86) + 5 * v5 + v9;
        *(_DWORD *)(v7 + 77) = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 292))(a2, v30);
      }
      if ( v25 != v23 && v25 )
        GlitchFree(v25);
      if ( v28 != v26 && v28 )
        GlitchFree(v28);
      if ( ++v5 == 4 )
      {
        if ( v14 != v12 && v14 )
          GlitchFree(v14);
        result = v30;
        if ( v30 != v29 )
        {
          if ( v30 )
            GlitchFree(v30);
        }
        v6 = ++v10 == v11;
        v9 += 96;
        if ( v6 )
          return result;
        goto LABEL_3;
      }
    }
    if ( v25 != v23 && v25 )
      GlitchFree(v25);
    if ( v28 != v26 && v28 )
      GlitchFree(v28);
    if ( v14 != v12 && v14 )
      GlitchFree(v14);
    result = v30;
    if ( v30 != v29 && v30 )
      GlitchFree(v30);
  }
  return result;
}


// ===== 5451a4 std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUIListBox::ListItem*,glitch::gui::CGUIListBox::ListItem const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int *a1,
        int a2,
        int a3,
        int a4)
{
  unsigned int v6; // r12
  unsigned int v7; // r3
  size_t v8; // r7
  _DWORD *v9; // r6
  _DWORD *v10; // r8
  int v11; // r9
  int i; // r5
  char *v13; // r0
  const void *v14; // r1
  _DWORD *v15; // r8
  void **v16; // r5
  void **v17; // r10
  void **v18; // r3

  v6 = -1431655765 * ((a1[1] - *a1) >> 5);
  if ( v6 )
    v7 = 1431655766 * ((a1[1] - *a1) >> 5);
  else
    v7 = 1;
  if ( v7 <= 0x2AAAAAA && v6 <= v7 )
    v8 = 24 * v7;
  else
    v8 = -16;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(*a1, a2, v9);
  v10[16] = v10;
  v10[17] = v10;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v10,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
  v11 = a3 + 76;
  v10[18] = *(_DWORD *)(a3 + 72);
  for ( i = 0; i != 20; i += 5 )
  {
    v13 = (char *)v10 + i + 76;
    v14 = (const void *)(v11 + i);
    memcpy(v13, v14, 5u);
  }
  v15 = v10 + 24;
  if ( !a4 )
    v15 = std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem *,glitch::gui::CGUIListBox::ListItem *>(
            a2,
            a1[1],
            v15);
  v16 = (void **)a1[1];
  v17 = (void **)*a1;
  if ( v16 != (void **)*a1 )
  {
    do
    {
      v16 -= 24;
      v18 = (void **)v16[17];
      if ( v18 != v16 && v18 )
        GlitchFree(v16[17]);
    }
    while ( v17 != v16 );
    v17 = (void **)*a1;
  }
  GlitchFree(v17);
  a1[2] = (int)&v9[v8];
  *a1 = (int)v9;
  a1[1] = (int)v15;
}


// ===== 545304 glitch::gui::CGUIListBox::insertItem(uint,wchar_t const*,int) =====
unsigned int __fastcall glitch::gui::CGUIListBox::insertItem(
        glitch::gui::CGUIListBox *this,
        unsigned int a2,
        const wchar_t *a3,
        unsigned int a4)
{
  size_t v8; // r0
  int v9; // r2
  char *v10; // r1
  unsigned int *v11; // r0
  _DWORD v13[16]; // [sp+0h] [bp-60h] BYREF
  _DWORD *v14; // [sp+40h] [bp-20h]
  void *p; // [sp+44h] [bp-1Ch]
  unsigned int v16; // [sp+48h] [bp-18h]
  char v17; // [sp+4Ch] [bp-14h]
  char v18; // [sp+51h] [bp-Fh]
  char v19; // [sp+56h] [bp-Ah]
  char v20; // [sp+5Bh] [bp-5h]

  v14 = v13;
  p = v13;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v13,
    0x10u);
  *v14 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = -1;
  v8 = wcslen(a3);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)v13,
    a3,
    &a3[v8]);
  v9 = (*((_DWORD *)this + 88) - *((_DWORD *)this + 87)) >> 5;
  v10 = (char *)(*((_DWORD *)this + 86) + 96 * a2);
  v16 = a4;
  v11 = (unsigned int *)((char *)this + 344);
  if ( -1431655765 * v9 )
    std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
      v11,
      v10,
      (unsigned int)v13);
  else
    std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (int *)v11,
      (int)v10,
      (int)v13,
      0);
  glitch::gui::CGUIListBox::recalculateItemHeight(this);
  glitch::gui::CGUIListBox::recalculateItemWidth(this, a4);
  if ( p != v13 && p )
    GlitchFree(p);
  return a2;
}


// ===== 5453f8 std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIListBox::ListItem const&) =====
void __fastcall std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r4
  int v5; // r3
  _DWORD *v6; // r7
  int v7; // r6
  int i; // r4
  char *v9; // r0
  const void *v10; // r1

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a1,
      a1[1],
      a2,
      1);
  }
  else
  {
    v2[16] = v2;
    v2[17] = v2;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
    v5 = *(_DWORD *)(a2 + 72);
    v6 = v2 + 19;
    v7 = a2 + 76;
    v2[18] = v5;
    for ( i = 0; i != 20; i += 5 )
    {
      v9 = (char *)v6 + i;
      v10 = (const void *)(v7 + i);
      memcpy(v9, v10, 5u);
    }
    a1[1] += 96;
  }
}


// ===== 545480 glitch::gui::CGUIListBox::addItem(wchar_t const*,int) =====
int __fastcall glitch::gui::CGUIListBox::addItem(glitch::gui::CGUIListBox *this, const wchar_t *a2, unsigned int a3)
{
  size_t v6; // r0
  int v7; // r4
  _DWORD v9[16]; // [sp+0h] [bp-64h] BYREF
  _DWORD *v10; // [sp+40h] [bp-24h]
  void *p; // [sp+44h] [bp-20h]
  unsigned int v12; // [sp+48h] [bp-1Ch]
  char v13; // [sp+4Ch] [bp-18h]
  char v14; // [sp+51h] [bp-13h]
  char v15; // [sp+56h] [bp-Eh]
  char v16; // [sp+5Bh] [bp-9h]

  v10 = v9;
  p = v9;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v9,
    0x10u);
  *v10 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = -1;
  v6 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)v9,
    a2,
    &a2[v6]);
  v12 = a3;
  std::vector<glitch::gui::CGUIListBox::ListItem,glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (int *)this + 86,
    (int)v9);
  glitch::gui::CGUIListBox::recalculateItemHeight(this);
  glitch::gui::CGUIListBox::recalculateItemWidth(this, a3);
  v7 = -1431655765 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 5) - 1;
  if ( p != v9 && p )
    GlitchFree(p);
  return v7;
}


// ===== 545558 `virtual thunk to'glitch::gui::CGUIListBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall `virtual thunk to'glitch::gui::CGUIListBox::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIListBox::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 545568 `virtual thunk to'glitch::gui::CGUIListBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::gui::CGUIListBox::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::gui::CGUIListBox::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 545578 `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox::~CGUIListBox((glitch::gui::CGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 545588 `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox::~CGUIListBox((glitch::gui::CGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 545598 `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox::~CGUIListBox((glitch::gui::CGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5455a8 `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIListBox::~CGUIListBox(glitch::gui::CGUIListBox *this)
{
  glitch::gui::CGUIListBox::~CGUIListBox((glitch::gui::CGUIListBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5455b8 glitch::gui::CGUIMenu::recalculateSize(void) =====
float *__fastcall glitch::gui::CGUIMenu::recalculateSize(glitch::gui::CGUIMenu *this)
{
  int v2; // r5
  float *result; // r0
  float *v4; // r9
  int v5; // r5
  int v6; // r6
  int v7; // r10
  int v8; // r7
  int v9; // r8
  int v10; // r1
  int v11; // r6
  int v12; // r3
  bool v13; // zf
  int v14; // r2
  int v15; // r12
  int v16; // r5
  int v17; // r6
  int v18; // r3
  int v19; // r3
  int v20; // r2
  int v21; // r3
  int v22; // r0
  int v23; // r2
  int v24; // r5
  _DWORD v25[2]; // [sp+8h] [bp-34h] BYREF
  int v26[4]; // [sp+10h] [bp-2Ch] BYREF
  int v27[2]; // [sp+20h] [bp-1Ch] BYREF
  int v28; // [sp+28h] [bp-14h]
  int v29; // [sp+2Ch] [bp-10h]
  _BYTE v30[4]; // [sp+30h] [bp-Ch] BYREF
  int v31; // [sp+34h] [bp-8h]

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  result = (float *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 40))(v2, 3);
  v4 = result;
  if ( result )
  {
    v5 = 0;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    v29 = 0;
    (*(void (__fastcall **)(_BYTE *, float *, const char *))(*(_DWORD *)result + 28))(v30, result, "A");
    v6 = *((_DWORD *)this + 87);
    v7 = v31 + 5;
    if ( *((_DWORD *)this + 88) - v6 > 95 )
    {
      v9 = 0;
      v8 = 0;
      do
      {
        v11 = v6 + v5;
        if ( *(_BYTE *)(v11 + 72) )
        {
          *(_DWORD *)(v11 + 76) = 0;
          *(_DWORD *)(*((_DWORD *)this + 87) + v5 + 80) = v7;
        }
        else
        {
          (*(void (__fastcall **)(_DWORD *, float *, _DWORD))(*(_DWORD *)v4 + 28))(v25, v4, *(_DWORD *)(v11 + 68));
          *(_DWORD *)(v11 + 76) = v25[0];
          *(_DWORD *)(v11 + 80) = v25[1];
          *(_DWORD *)(*((_DWORD *)this + 87) + v5 + 76) += 20;
        }
        ++v9;
        *(_DWORD *)(*((_DWORD *)this + 87) + v5 + 84) = v8;
        v6 = *((_DWORD *)this + 87);
        v10 = *(_DWORD *)(v6 + v5 + 76);
        v5 += 96;
        v8 += v10;
      }
      while ( v9 < -1431655765 * ((*((_DWORD *)this + 88) - v6) >> 5) );
    }
    else
    {
      v8 = 0;
    }
    v12 = *((_DWORD *)this + 9);
    v13 = v12 == 0;
    if ( v12 )
    {
      v8 = *(_DWORD *)(v12 + 64);
      v12 = *(_DWORD *)(v12 + 56);
    }
    v29 = v7;
    if ( !v13 )
      v8 -= v12;
    v28 = v8;
    result = (float *)glitch::gui::IGUIElement::setRelativePosition((float *)this, v27);
    v14 = *((_DWORD *)this + 87);
    v15 = *((_DWORD *)this + 88);
    if ( v15 - v14 > 95 )
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = v14 + v16;
        result = *(float **)(v14 + v16 + 88);
        ++v17;
        v16 += 96;
        if ( result )
        {
          v19 = *(_DWORD *)(v18 + 84);
          v20 = v7 - *((_DWORD *)result + 15) + *((_DWORD *)result + 17);
          v26[2] = v19 + *((_DWORD *)result + 16) - 5 - *((_DWORD *)result + 14);
          v26[3] = v20;
          v26[0] = v19;
          v26[1] = v7;
          result = (float *)glitch::gui::IGUIElement::setRelativePosition(result, v26);
          v14 = *((_DWORD *)this + 87);
          v15 = *((_DWORD *)this + 88);
        }
      }
      while ( v17 < -1431655765 * ((v15 - v14) >> 5) );
    }
  }
  else
  {
    v21 = *((_DWORD *)this + 9);
    if ( v21 )
    {
      v22 = v2;
      v23 = *(_DWORD *)v2;
      v24 = *(_DWORD *)(v21 + 64);
      result = (float *)(*(int (__fastcall **)(int, int))(v23 + 24))(v22, 1);
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 13) = result;
      *((_DWORD *)this + 12) = v24;
      *((_DWORD *)this + 10) = 0;
    }
  }
  return result;
}


// ===== 545818 glitch::gui::CGUIMenu::getHRect(glitch::gui::CGUIContextMenu::SItem const&,glitch::core::rect<int> const&) =====
int *__fastcall glitch::gui::CGUIMenu::getHRect(int *result, int a2, int a3, int *a4)
{
  int v4; // r12
  int v5; // r12

  v4 = *a4;
  *result = *a4;
  result[1] = a4[1];
  result[2] = a4[2];
  result[3] = a4[3];
  v5 = v4 + *(_DWORD *)(a3 + 84);
  *result = v5;
  result[2] = v5 + *(_DWORD *)(a3 + 76);
  return result;
}


// ===== 54585c glitch::gui::CGUIMenu::getRect(glitch::gui::CGUIContextMenu::SItem const&,glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::CGUIMenu::getRect(int a1, int a2)
{
  (*(void (**)(void))(*(_DWORD *)a2 + 200))();
  return a1;
}


// ===== 545878 glitch::gui::CGUIMenu::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUIMenu::updateAbsolutePosition(glitch::gui::IGUIElement *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 9);
  if ( v1 )
    *((_DWORD *)this + 24) = *(_DWORD *)(v1 + 64) - *(_DWORD *)(v1 + 56);
  return glitch::gui::IGUIElement::updateAbsolutePosition(this);
}


// ===== 545894 `global constructor keyed to'.._source_glitch_gui_CGUIMenu.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIMenu.cpp()
{
  dword_9F6628 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6624 = 1056964608;
}


// ===== 5458b4 glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  *(_DWORD *)this = off_96E920;
  *((_DWORD *)this + 96) = off_96EA08;
  *((_DWORD *)this + 97) = off_96EA28;
  glitch::gui::CGUIContextMenu::~CGUIContextMenu(this);
}


// ===== 545908 `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  glitch::gui::CGUIMenu::~CGUIMenu((glitch::gui::CGUIMenu *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 545918 `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  glitch::gui::CGUIMenu::~CGUIMenu((glitch::gui::CGUIMenu *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 545928 glitch::gui::CGUIMenu::CGUIMenu(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIMenu::CGUIMenu(int a1, int a2, int a3, int a4, _DWORD *a5)
{
  int v5; // r9
  int v6; // r10
  int v7; // r11
  _DWORD v10[5]; // [sp+10h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 392) = 1;
  *(_DWORD *)(a1 + 384) = off_96ED84;
  *(_DWORD *)(a1 + 388) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 384] = off_96EDA4;
  v5 = a5[3];
  v6 = a5[1];
  v7 = a5[2];
  v10[0] = *a5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v5;
  glitch::gui::CGUIContextMenu::CGUIContextMenu(a1, off_96EA3C, a2, a3, a4, v10, 0, 1);
  *(_DWORD *)(a1 + 340) = 4;
  *(_BYTE *)(a1 + 155) = 0;
  *(_DWORD *)a1 = off_96E920;
  *(_DWORD *)(a1 + 384) = off_96EA08;
  *(_DWORD *)(a1 + 388) = off_96EA28;
  glitch::gui::CGUIMenu::recalculateSize((glitch::gui::CGUIMenu *)a1);
  return a1;
}


// ===== 545a10 glitch::gui::CGUIMenu::CGUIMenu(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIMenu::CGUIMenu(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // lr
  int v8; // r7
  int v9; // r12
  int v11; // r3
  _DWORD v13[5]; // [sp+10h] [bp-14h] BYREF

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[2];
  v13[1] = a6[1];
  v13[2] = v9;
  v13[3] = v7;
  v13[0] = v8;
  glitch::gui::CGUIContextMenu::CGUIContextMenu(a1, a2 + 1, a3, a4, a5, v13, 0, 1);
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[11];
  *(_DWORD *)(a1 + 340) = 4;
  *(_BYTE *)(a1 + 155) = 0;
  glitch::gui::CGUIMenu::recalculateSize((glitch::gui::CGUIMenu *)a1);
  return a1;
}


// ===== 545aac glitch::gui::IGUIElement::~IGUIElement() [clone] =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  char *i; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r0
  char *v6; // r0
  char *v7; // r0
  char *v8; // r4

  *(_DWORD *)this = off_96E818;
  *(int *)((char *)&elf_hash_bucket[31] + (_DWORD)this) = (int)off_96E8AC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96E8CC;
  v3 = (char *)this + 4;
  for ( i = *((char **)this + 1); i != v3; i = *(char **)i )
  {
    *(_DWORD *)(*((_DWORD *)i + 2) + 36) = 0;
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 16)));
  }
  v4 = *((char **)this + 75);
  if ( v4 != (char *)this + 232 && v4 )
    GlitchFree(v4);
  v5 = *((char **)this + 57);
  if ( v5 != (char *)this + 160 && v5 )
    GlitchFree(v5);
  v6 = *((char **)this + 8);
  if ( v6 != (char *)this + 12 && v6 )
    GlitchFree(v6);
  v7 = *((char **)this + 1);
  if ( v7 != v3 )
  {
    while ( 1 )
    {
      v8 = *(char **)v7;
      GlitchFree(v7);
      if ( v8 == v3 )
        break;
      v7 = v8;
    }
    v7 = v3;
  }
  *((_DWORD *)this + 1) = v7;
  *((_DWORD *)v3 + 1) = v7;
}


// ===== 545bb4 glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  *(_DWORD *)this = off_96E6E8;
  *((_DWORD *)this + 86) = off_96E7B8;
  *((_DWORD *)this + 87) = off_96E7D8;
  glitch::gui::IGUIElement::~IGUIElement(this);
}


// ===== 545bf8 `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  glitch::gui::IGUIContextMenu::~IGUIContextMenu((glitch::gui::IGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 545c08 `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  glitch::gui::IGUIContextMenu::~IGUIContextMenu((glitch::gui::IGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 545c18 glitch::gui::CGUIMenu::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIMenu::onEvent(glitch::gui::CGUIContextMenu *this, _DWORD *a2)
{
  int v4; // r3
  glitch::gui::CGUIContextMenu *v5; // r2
  int v6; // r3
  int v8; // r3
  int v9; // r2
  int v10; // r3
  void (__fastcall *v11)(glitch::gui::CGUIContextMenu *, _DWORD *, int); // r6
  int v12; // r0
  int v13; // r3
  int v14; // r3
  int v15; // r3
  int hasOpenSubMenu; // r5
  int v17; // r2
  void (__fastcall *v18)(glitch::gui::CGUIContextMenu *, _DWORD *, int); // r3
  glitch::gui::CGUIContextMenu *v19; // r0
  glitch::gui::CGUIContextMenu *i; // r3
  bool v21; // zf
  _DWORD v22[2]; // [sp+0h] [bp-18h] BYREF
  _DWORD v23[2]; // [sp+8h] [bp-10h] BYREF
  int v24; // [sp+10h] [bp-8h] BYREF
  int v25; // [sp+14h] [bp-4h]

  if ( !*((_BYTE *)this + 153) )
    goto LABEL_5;
  if ( *a2 )
  {
    if ( *a2 != 1 )
      goto LABEL_5;
    v8 = a2[5];
    if ( v8 == 3 )
    {
      if ( !(*(int (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 28))(
              *((_DWORD *)this + 84),
              this) )
        (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 16))(
          *((_DWORD *)this + 84),
          this);
      v14 = *((_DWORD *)this + 9);
      if ( v14 )
        (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(*(_DWORD *)v14 + 100))(
          *((_DWORD *)this + 9),
          this);
      v15 = a2[2];
      v25 = a2[3];
      v24 = v15;
      hasOpenSubMenu = glitch::gui::CGUIContextMenu::hasOpenSubMenu(this);
      if ( *((_DWORD *)this + 18) > v24
        || *((_DWORD *)this + 19) > v25
        || v24 > *((_DWORD *)this + 20)
        || v25 > *((_DWORD *)this + 21) )
      {
        if ( (unsigned int)(*(int (__fastcall **)(glitch::gui::CGUIContextMenu *, int *))(*(_DWORD *)this + 196))(
                             this,
                             &v24) <= 1
          && (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 28))(
               *((_DWORD *)this + 84),
               this) )
        {
          hasOpenSubMenu = 0;
          (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 24))(
            *((_DWORD *)this + 84),
            this);
        }
        else
        {
          hasOpenSubMenu = 0;
        }
      }
      v17 = a2[3];
      v18 = *(void (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD *, int))(*(_DWORD *)this + 192);
      v23[0] = a2[2];
      v23[1] = v17;
      v18(this, v23, 1);
      if ( hasOpenSubMenu )
      {
        glitch::gui::CGUIContextMenu::closeAllSubMenus(this);
        return 1;
      }
    }
    else
    {
      if ( v8 != 6 )
        goto LABEL_5;
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        v9 = a2[2];
        v10 = a2[3];
        v11 = *(void (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD *, int))(*(_DWORD *)this + 192);
        v22[0] = v9;
        v22[1] = v10;
        v12 = glitch::gui::CGUIContextMenu::hasOpenSubMenu(this);
        v11(this, v22, v12);
        return 1;
      }
    }
    return 1;
  }
  v4 = a2[4];
  if ( !v4 )
  {
    v5 = (glitch::gui::CGUIContextMenu *)a2[2];
    if ( v5 == this )
    {
      v19 = (glitch::gui::CGUIContextMenu *)a2[3];
      if ( !v19 )
        goto LABEL_39;
      for ( i = *((glitch::gui::CGUIContextMenu **)v19 + 9); i; i = *((glitch::gui::CGUIContextMenu **)i + 9) )
      {
        v19 = i;
        v21 = v5 == i;
        if ( v5 != i )
          v21 = *((_DWORD *)i + 9) == 0;
        if ( v21 )
          goto LABEL_38;
      }
      i = v19;
LABEL_38:
      if ( v5 != i )
      {
LABEL_39:
        glitch::gui::CGUIContextMenu::closeAllSubMenus(this);
        *((_DWORD *)this + 86) = -1;
      }
    }
LABEL_5:
    v6 = *((_DWORD *)this + 9);
    if ( v6 )
      return (*(int (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)v6 + 8))(*((_DWORD *)this + 9), a2);
    return 0;
  }
  if ( v4 != 1 || (glitch::gui::CGUIContextMenu *)a2[2] != this )
    goto LABEL_5;
  v13 = *((_DWORD *)this + 9);
  if ( v13 )
  {
    (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(*(_DWORD *)v13 + 100))(*((_DWORD *)this + 9), this);
    goto LABEL_5;
  }
  return 0;
}


// ===== 545edc glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  *(_DWORD *)this = off_96E920;
  *((_DWORD *)this + 96) = off_96EA08;
  *((_DWORD *)this + 97) = off_96EA28;
  glitch::gui::CGUIContextMenu::~CGUIContextMenu(this);
  LC_API_FREE_0(this);
}


// ===== 545f38 `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  glitch::gui::CGUIMenu::~CGUIMenu((glitch::gui::CGUIMenu *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 545f48 `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMenu::~CGUIMenu(glitch::gui::CGUIMenu *this)
{
  glitch::gui::CGUIMenu::~CGUIMenu((glitch::gui::CGUIMenu *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 545f58 glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  *(_DWORD *)this = off_96E6E8;
  *((_DWORD *)this + 86) = off_96E7B8;
  *((_DWORD *)this + 87) = off_96E7D8;
  glitch::gui::IGUIElement::~IGUIElement(this);
  LC_API_FREE_0(this);
}


// ===== 545fa4 `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  glitch::gui::IGUIContextMenu::~IGUIContextMenu((glitch::gui::IGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 545fb4 `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIContextMenu::~IGUIContextMenu(glitch::gui::IGUIContextMenu *this)
{
  glitch::gui::IGUIContextMenu::~IGUIContextMenu((glitch::gui::IGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 545fc4 glitch::gui::CGUIMenu::draw(void) =====
int __fastcall glitch::gui::CGUIMenu::draw(int this)
{
  int v1; // r4
  int v2; // r10
  glitch::IReferenceCounted *v3; // r8
  glitch::IReferenceCounted *v4; // r0
  int v5; // r0
  int v6; // r1
  int v7; // r3
  int v8; // r1
  int v9; // r12
  int v10; // r2
  int v11; // r3
  int v12; // r5
  int v13; // r6
  int v14; // r7
  bool v15; // zf
  int v16; // r3
  int v17; // r11
  void (__fastcall *v18)(glitch::IReferenceCounted *, int, int *, int, int, int, int); // r7
  int v19; // r4
  int *i; // r5
  int *v21; // t1
  int v22; // r1
  void (__fastcall *v23)(int, int); // r7
  _DWORD v24[4]; // [sp+28h] [bp-2Ch] BYREF
  int v25; // [sp+38h] [bp-1Ch] BYREF
  int v26; // [sp+3Ch] [bp-18h]
  int v27; // [sp+40h] [bp-14h]
  int v28; // [sp+44h] [bp-10h]
  int v29; // [sp+48h] [bp-Ch]
  int v30; // [sp+4Ch] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v3 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 40))(v2, 3);
    v4 = *(glitch::IReferenceCounted **)(v1 + 380);
    if ( v3 != v4 )
    {
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      *(_DWORD *)(v1 + 380) = v3;
      if ( v3 )
        ++*((_DWORD *)v3 + 1);
      (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 188))(v1);
    }
    v5 = *(_DWORD *)(v1 + 56);
    v6 = *(_DWORD *)(v1 + 60);
    v7 = *(_DWORD *)(v1 + 68);
    v27 = *(_DWORD *)(v1 + 64);
    v28 = v7;
    v25 = v5;
    v26 = v6;
    (*(void (__fastcall **)(int, int, int *, int))(*(_DWORD *)v2 + 84))(v2, v1, &v25, v1 + 72);
    this = *(_DWORD *)(v1 + 348);
    v8 = *(_DWORD *)(v1 + 352);
    v9 = *(_DWORD *)(v1 + 60);
    v10 = *(_DWORD *)(v1 + 64);
    v11 = *(_DWORD *)(v1 + 68);
    v25 = *(_DWORD *)(v1 + 56);
    v26 = v9;
    v27 = v10;
    v28 = v11;
    if ( v8 - this > 95 )
    {
      v12 = 0;
      v13 = 0;
      while ( 1 )
      {
        v14 = *(unsigned __int8 *)(this + v12 + 72);
        if ( !*(_BYTE *)(this + v12 + 72) )
          break;
LABEL_10:
        ++v13;
        v12 += 96;
        if ( v13 >= -1431655765 * ((v8 - this) >> 5) )
          goto LABEL_19;
      }
      (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)v1 + 204))(v24, v1);
      v15 = *(_DWORD *)(v1 + 344) == v13;
      v25 = v24[0];
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      if ( !v15 )
        goto LABEL_13;
      this = *(_DWORD *)(v1 + 348);
      v16 = this + v12;
      if ( !*(_BYTE *)(this + v12 + 73) )
        goto LABEL_14;
      v22 = v14;
      v23 = *(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 72);
      v30 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v22);
      v23(v2, v1);
      if ( v13 == *(_DWORD *)(v1 + 344) )
      {
        this = *(_DWORD *)(v1 + 348);
        v16 = this + v12;
      }
      else
      {
LABEL_13:
        this = *(_DWORD *)(v1 + 348);
        v16 = this + v12;
      }
LABEL_14:
      if ( v3 )
      {
        v17 = *(_DWORD *)(v16 + 68);
        v18 = *(void (__fastcall **)(glitch::IReferenceCounted *, int, int *, int, int, int, int))(*(_DWORD *)v3 + 12);
        v29 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
        v18(v3, v17, &v25, v29, 1, 1, v1 + 72);
        this = *(_DWORD *)(v1 + 348);
      }
      v8 = *(_DWORD *)(v1 + 352);
      goto LABEL_10;
    }
LABEL_19:
    if ( *(_BYTE *)(v1 + 152) )
    {
      v21 = *(int **)(v1 + 4);
      v19 = v1 + 4;
      for ( i = v21; i != (int *)v19; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 5462c4 glitch::gui::CGUIMeshViewer::setMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&) =====
int __fastcall glitch::gui::CGUIMeshViewer::setMesh(int result, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r2

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  v3 = *(glitch::IReferenceCounted **)(result + 348);
  *(_DWORD *)(result + 348) = v2;
  if ( v3 )
    return glitch::IReferenceCounted::drop(v3);
  return result;
}


// ===== 5462f0 glitch::gui::CGUIMeshViewer::getMesh(void) =====
_DWORD *__fastcall glitch::gui::CGUIMeshViewer::getMesh(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 348);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 54630c glitch::gui::CGUIMeshViewer::getMaterial(void) =====
_DWORD *__fastcall glitch::gui::CGUIMeshViewer::getMaterial(_DWORD *this, int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 344);
  *this = v2;
  if ( v2 )
    ++*v2;
  return this;
}


// ===== 546328 `global constructor keyed to'.._source_glitch_gui_CGUIMeshViewer.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIMeshViewer.cpp()
{
  dword_9F6634 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6630 = 1056964608;
}


// ===== 546348 glitch::gui::CGUIMeshViewer::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
glitch::video::CMaterial **__fastcall glitch::gui::CGUIMeshViewer::setMaterial(int a1, glitch::video::CMaterial **a2)
{
  glitch::video::CMaterial *v2; // r3
  glitch::video::CMaterial *v3; // r1
  glitch::video::CMaterial *v5; // [sp+4h] [bp-8h] BYREF

  v2 = *a2;
  v5 = v2;
  if ( v2 )
    ++*(_DWORD *)v2;
  v3 = *(glitch::video::CMaterial **)(a1 + 344);
  if ( v2 )
    v2 = v5;
  *(_DWORD *)(a1 + 344) = v2;
  v5 = v3;
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
}


// ===== 54638c std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 546390 glitch::gui::IGUIMeshViewer::IGUIMeshViewer(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIMeshViewer::IGUIMeshViewer(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 11;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 546650 glitch::gui::CGUIMeshViewer::CGUIMeshViewer(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIMeshViewer::CGUIMeshViewer(int a1, int a2, int a3, int a4, int *a5)
{
  int v5; // r10
  int v6; // r8
  int v7; // r9
  int v10[4]; // [sp+8h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 360) = 1;
  *(_DWORD *)(a1 + 356) = off_95B720;
  *(_DWORD *)(a1 + 352) = off_96F284;
  *(_DWORD *)&byte_4[a1 + 352] = off_96F2A4;
  v5 = a5[3];
  v6 = a5[1];
  v7 = a5[2];
  v10[0] = *a5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v5;
  glitch::gui::IGUIMeshViewer::IGUIMeshViewer(a1, (int *)off_96F09C, a2, a3, a4, v10);
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)a1 = off_96EFC8;
  *(_DWORD *)(a1 + 352) = off_96F06C;
  *(_DWORD *)(a1 + 356) = off_96F08C;
  return a1;
}


// ===== 546728 glitch::gui::CGUIMeshViewer::CGUIMeshViewer(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int *__fastcall glitch::gui::CGUIMeshViewer::CGUIMeshViewer(int *a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // lr
  int v8; // r4
  int v9; // r12
  int v11; // r2
  int v13[4]; // [sp+8h] [bp-10h] BYREF

  v7 = a6[3];
  v8 = a6[1];
  v9 = a6[2];
  v13[0] = *a6;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v7;
  glitch::gui::IGUIMeshViewer::IGUIMeshViewer((int)a1, a2 + 1, a3, a4, a5, v13);
  v11 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[8];
  a1[87] = 0;
  a1[86] = 0;
  return a1;
}


// ===== 5467ac glitch::gui::CGUIMeshViewer::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIMeshViewer::onEvent(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 36);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 8))(*(_DWORD *)(a1 + 36));
  else
    return 0;
}


// ===== 5467d8 glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  *(_DWORD *)this = off_96EDC0;
  *((_DWORD *)this + 86) = off_96EE64;
  *((_DWORD *)this + 87) = off_96EE84;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96EE94);
}


// ===== 54682c `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  glitch::gui::IGUIMeshViewer::~IGUIMeshViewer((glitch::gui::IGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54683c `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  glitch::gui::IGUIMeshViewer::~IGUIMeshViewer((glitch::gui::IGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54684c glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 87);
  *(_DWORD *)this = off_96EFC8;
  *((_DWORD *)this + 88) = off_96F06C;
  *((_DWORD *)this + 89) = off_96F08C;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 86);
  *(_DWORD *)this = off_96F0D8;
  *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)this) = (int)off_96F17C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96F19C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96F0A0);
}


// ===== 5468e0 glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(this);
  LC_API_FREE_0(this);
}


// ===== 5468fc glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  int *v7; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 87);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 86);
  v6 = a2[1];
  v7 = a2 + 1;
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = v7[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v7[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v7 + 1);
}


// ===== 546980 glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  *(_DWORD *)this = off_96EDC0;
  *((_DWORD *)this + 86) = off_96EE64;
  *((_DWORD *)this + 87) = off_96EE84;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96EE94);
  LC_API_FREE_0(this);
}


// ===== 5469dc `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  glitch::gui::IGUIMeshViewer::~IGUIMeshViewer((glitch::gui::IGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5469ec `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIMeshViewer::~IGUIMeshViewer(glitch::gui::IGUIMeshViewer *this)
{
  glitch::gui::IGUIMeshViewer::~IGUIMeshViewer((glitch::gui::IGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5469fc glitch::gui::CGUIMeshViewer::draw(void) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIMeshViewer::draw(glitch::IReferenceCounted *this)
{
  glitch::IReferenceCounted *v1; // r4
  int v2; // r6
  glitch::video::CVertexStreams **v3; // r5
  int v4; // r0
  int v5; // r12
  int v6; // r3
  int v7; // lr
  int v8; // r2
  int v9; // r2
  int v10; // r1
  int v11; // r2
  void (__fastcall *v12)(int, glitch::IReferenceCounted *, int *, int *, char *); // r10
  void (__fastcall *v13)(int, glitch::IReferenceCounted *, int *, int *, char *); // r10
  int v14; // r3
  int v15; // r1
  void (__fastcall *v16)(int, glitch::IReferenceCounted *, int *, int *, char *); // r10
  int v17; // r3
  int v18; // r1
  int (__fastcall *v19)(int, glitch::IReferenceCounted *, int *, int *, char *); // r10
  _DWORD *v20; // r3
  glitch::video::CMaterial *v21; // r0
  int Technique; // r2
  glitch::os::Timer *v23; // r0
  unsigned int v24; // r6
  bool v25; // cf
  unsigned int v26; // r2
  char *v27; // r4
  char *i; // r5
  char *v29; // t1
  _DWORD v30[16]; // [sp+10h] [bp-94h] BYREF
  char v31; // [sp+50h] [bp-54h]
  _DWORD v32[4]; // [sp+54h] [bp-50h] BYREF
  int v33; // [sp+64h] [bp-40h] BYREF
  int v34; // [sp+68h] [bp-3Ch]
  int v35; // [sp+6Ch] [bp-38h]
  int v36; // [sp+70h] [bp-34h]
  int v37; // [sp+74h] [bp-30h] BYREF
  int v38; // [sp+78h] [bp-2Ch]
  int v39; // [sp+7Ch] [bp-28h]
  int v40; // [sp+80h] [bp-24h]
  glitch::IReferenceCounted *v41; // [sp+84h] [bp-20h] BYREF
  glitch::IReferenceCounted *v42; // [sp+88h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v43; // [sp+8Ch] [bp-18h] BYREF
  int v44; // [sp+90h] [bp-14h] BYREF
  int v45; // [sp+94h] [bp-10h] BYREF
  int v46; // [sp+98h] [bp-Ch] BYREF
  int v47; // [sp+9Ch] [bp-8h] BYREF

  v1 = this;
  if ( *((_BYTE *)this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
    v3 = (glitch::video::CVertexStreams **)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 84) + 32))(*((_DWORD *)v1 + 84));
    v4 = *((_DWORD *)v1 + 16);
    v5 = *((_DWORD *)v1 + 14);
    v6 = *((_DWORD *)v1 + 15);
    v7 = *((_DWORD *)v1 + 20);
    v8 = *((_DWORD *)v1 + 17) - 1;
    v37 = v5 + 1;
    v38 = v6 + 1;
    v39 = v4 - 1;
    v40 = v8;
    if ( v4 - 1 > v7 )
      v39 = v7;
    if ( v8 > *((_DWORD *)v1 + 21) )
      v40 = *((_DWORD *)v1 + 21);
    v9 = *((_DWORD *)v1 + 18);
    v10 = v37;
    if ( v9 > v37 )
    {
      v37 = *((_DWORD *)v1 + 18);
      v10 = v9;
    }
    v11 = *((_DWORD *)v1 + 19);
    v33 = v5;
    v35 = v4;
    if ( v11 > v38 )
      v38 = v11;
    else
      v11 = v38;
    v34 = v6;
    if ( v11 > v40 )
      v38 = v40;
    if ( v10 > v39 )
      v37 = v39;
    v36 = v6 + 1;
    v12 = *(void (__fastcall **)(int, glitch::IReferenceCounted *, int *, int *, char *))(*(_DWORD *)v2 + 100);
    v47 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 1);
    v12(v2, v1, &v47, &v33, (char *)v1 + 72);
    v36 = *((_DWORD *)v1 + 17);
    v35 = v33 + 1;
    v13 = *(void (__fastcall **)(int, glitch::IReferenceCounted *, int *, int *, char *))(*(_DWORD *)v2 + 100);
    v46 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
    v13(v2, v1, &v46, &v33, (char *)v1 + 72);
    v14 = *((_DWORD *)v1 + 16);
    v15 = *((_DWORD *)v1 + 17);
    v34 = *((_DWORD *)v1 + 15);
    v36 = v15;
    v33 = v14 - 1;
    v35 = v14;
    v16 = *(void (__fastcall **)(int, glitch::IReferenceCounted *, int *, int *, char *))(*(_DWORD *)v2 + 100);
    v45 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
    v16(v2, v1, &v45, &v33, (char *)v1 + 72);
    v17 = *((_DWORD *)v1 + 17);
    v18 = *((_DWORD *)v1 + 16);
    v33 = *((_DWORD *)v1 + 14);
    v35 = v18;
    v34 = v17 - 1;
    v36 = v17;
    v19 = *(int (__fastcall **)(int, glitch::IReferenceCounted *, int *, int *, char *))(*(_DWORD *)v2 + 100);
    v44 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
    this = (glitch::IReferenceCounted *)v19(v2, v1, &v44, &v33, (char *)v1 + 72);
    if ( *((_DWORD *)v1 + 87) )
    {
      v20 = *((_DWORD **)v3[51] - 1);
      v32[0] = v20[5];
      v32[1] = v20[6];
      v32[2] = v20[7];
      v32[3] = v20[8];
      (*(void (__fastcall **)(_DWORD, int *))(**((_DWORD **)v3[51] - 1) + 12))(*((_DWORD *)v3[51] - 1), &v37);
      LC_API_MEMSET_0(v30, 0, 0x40u);
      LC_API_MEMSET_0(v30, 0, 0x40u);
      v30[15] = 1065353216;
      v31 = 0;
      v30[0] = 1065353216;
      v30[5] = 1065353216;
      v30[10] = 1065353216;
      (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, _DWORD *))*v3 + 27))(v3, 1, v30);
      v21 = *((glitch::video::CMaterial **)v1 + 86);
      if ( v21 )
        Technique = glitch::video::CMaterial::getTechnique(v21);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v3, (char *)v1 + 344, Technique, 0);
      v23 = (glitch::os::Timer *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 87) + 48))(*((_DWORD *)v1 + 87));
      if ( v23 )
      {
        glitch::os::Timer::getTime(v23);
        (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 87) + 48))(*((_DWORD *)v1 + 87));
      }
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)v1 + 87) + 52))(
        &v43,
        *((_DWORD *)v1 + 87));
      v24 = 0;
      while ( 1 )
      {
        v25 = v24 >= (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v43 + 16))(v43);
        v26 = v24;
        if ( v25 )
          break;
        ++v24;
        (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, unsigned int))(*(_DWORD *)v43 + 20))(
          &v42,
          v43,
          v26);
        v41 = v42;
        if ( v42 )
          ++*((_DWORD *)v42 + 1);
        glitch::video::IVideoDriver::drawMeshBuffer(v3, (int)&v41);
        if ( v41 )
          glitch::IReferenceCounted::drop(v41);
        if ( v42 )
          glitch::IReferenceCounted::drop(v42);
      }
      (*(void (__fastcall **)(_DWORD, _DWORD *, unsigned int))(**((_DWORD **)v3[51] - 1) + 12))(
        *((_DWORD *)v3[51] - 1),
        v32,
        v24);
      this = v43;
      if ( v43 )
        this = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v43);
    }
    if ( *((_BYTE *)v1 + 152) )
    {
      v29 = *((char **)v1 + 1);
      v27 = (char *)v1 + 4;
      for ( i = v29; i != v27; i = *(char **)i )
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int))(**((_DWORD **)i + 2) + 32))(*((_DWORD *)i + 2));
    }
  }
  return this;
}


// ===== 546edc `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::gui::CGUIMeshViewer::~CGUIMeshViewer((glitch::gui::CGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 546eec `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::gui::CGUIMeshViewer::~CGUIMeshViewer((glitch::gui::CGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 546efc `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::gui::CGUIMeshViewer::~CGUIMeshViewer((glitch::gui::CGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 546f0c `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMeshViewer::~CGUIMeshViewer(glitch::gui::CGUIMeshViewer *this)
{
  glitch::gui::CGUIMeshViewer::~CGUIMeshViewer((glitch::gui::CGUIMeshViewer *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 546f1c glitch::gui::CGUIMessageBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIMessageBox::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes(a1, a2);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216))(a2, "OkayButton", a1[97] & 1, 0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "CancelButton",
    (a1[97] >> 1) & 1,
    0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216))(a2, "YesButton", (a1[97] >> 2) & 1, 0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216))(a2, "NoButton", (a1[97] >> 3) & 1, 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(a2, "MessageText", a1[115], 0);
}


// ===== 546ff4 `global constructor keyed to'.._source_glitch_gui_CGUIMessageBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIMessageBox.cpp()
{
  dword_9F6640 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F663C = 1056964608;
}


// ===== 547014 glitch::gui::CGUIMessageBox::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIMessageBox::onEvent(int a1, _DWORD *a2)
{
  int v4; // r3
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r3
  _DWORD v13[7]; // [sp+0h] [bp-1Ch] BYREF

  if ( !*(_BYTE *)(a1 + 153) )
    return glitch::gui::CGUIWindow::onEvent(a1, a2);
  v4 = *a2;
  v13[0] = 0;
  v13[2] = a1;
  v13[3] = 0;
  if ( !v4 )
  {
    if ( a2[4] != 5 )
      return glitch::gui::CGUIWindow::onEvent(a1, a2);
    v10 = a2[2];
    if ( v10 != *(_DWORD *)(a1 + 368) )
    {
      if ( v10 != *(_DWORD *)(a1 + 372) && v10 != *(_DWORD *)(a1 + 356) )
      {
        if ( v10 != *(_DWORD *)(a1 + 376) )
        {
          if ( v10 != *(_DWORD *)(a1 + 380) )
            return glitch::gui::CGUIWindow::onEvent(a1, a2);
          goto LABEL_16;
        }
LABEL_51:
        v6 = *(_DWORD *)(a1 + 36);
        v7 = 12;
        goto LABEL_17;
      }
LABEL_35:
      v6 = *(_DWORD *)(a1 + 36);
      v7 = 15;
      goto LABEL_17;
    }
LABEL_36:
    v6 = *(_DWORD *)(a1 + 36);
    v7 = 14;
    goto LABEL_17;
  }
  if ( v4 != 2 )
    return glitch::gui::CGUIWindow::onEvent(a1, a2);
  if ( *((_BYTE *)a2 + 16) )
  {
    v8 = a2[3];
    if ( v8 == 27 )
    {
      if ( *(_BYTE *)(a1 + 464) )
      {
        v11 = *(_DWORD *)(a1 + 368);
        if ( v11 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 156))(*(_DWORD *)(a1 + 368));
        if ( *(_DWORD *)(a1 + 376) )
          (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 368) + 156))(*(_DWORD *)(a1 + 368), 0);
        if ( *(_DWORD *)(a1 + 380) )
          (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 368) + 156))(*(_DWORD *)(a1 + 368), 0);
        *(_BYTE *)(a1 + 464) = 0;
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
      }
      v9 = *(_DWORD *)(a1 + 372);
      if ( !v9 )
      {
        v12 = *(_DWORD *)(a1 + 356);
        if ( v12 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v12 + 44))(*(_DWORD *)(a1 + 356)) )
        {
          (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 356) + 156))(*(_DWORD *)(a1 + 356), 1);
          *(_BYTE *)(a1 + 464) = 1;
        }
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
      }
    }
    else if ( v8 <= 27 )
    {
      if ( v8 != 13 )
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
      v9 = *(_DWORD *)(a1 + 368);
      if ( !v9 )
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
    }
    else if ( v8 == 78 )
    {
      v9 = *(_DWORD *)(a1 + 380);
      if ( !v9 )
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
    }
    else
    {
      if ( v8 != 89 )
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
      v9 = *(_DWORD *)(a1 + 376);
      if ( !v9 )
        return glitch::gui::CGUIWindow::onEvent(a1, a2);
    }
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v9 + 156))(v9, 1);
    *(_BYTE *)(a1 + 464) = 1;
    return glitch::gui::CGUIWindow::onEvent(a1, a2);
  }
  if ( !*(_BYTE *)(a1 + 464) )
    return glitch::gui::CGUIWindow::onEvent(a1, a2);
  if ( *(_DWORD *)(a1 + 368) && a2[3] == 13 )
    goto LABEL_36;
  if ( (*(_DWORD *)(a1 + 372) || *(_DWORD *)(a1 + 356)) && a2[3] == 27 )
    goto LABEL_35;
  if ( *(_DWORD *)(a1 + 376) && a2[3] == 89 )
    goto LABEL_51;
  if ( !*(_DWORD *)(a1 + 380) || a2[3] != 78 )
    return glitch::gui::CGUIWindow::onEvent(a1, a2);
LABEL_16:
  v6 = *(_DWORD *)(a1 + 36);
  v7 = 13;
LABEL_17:
  v13[4] = v7;
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 8))(v6, v13);
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
  return 1;
}


// ===== 5472e0 glitch::gui::CGUIMessageBox::refreshControls(void) =====
int __fastcall glitch::gui::CGUIMessageBox::refreshControls(glitch::gui::CGUIMessageBox *this)
{
  int v2; // r5
  int v3; // r7
  int v4; // r6
  int v5; // r8
  float *v6; // r0
  int v7; // r3
  int v8; // r12
  int v9; // r2
  int v10; // r10
  int v11; // r0
  float *v12; // r3
  int v13; // r9
  int v14; // r8
  float *v15; // r0
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r8
  int v21; // r3
  int v22; // r3
  int v23; // r2
  int v24; // r8
  int v25; // r9
  int v26; // r2
  int v27; // r6
  void (__fastcall *v28)(int, int); // r7
  int v29; // r0
  int v30; // r6
  int v31; // r10
  int v32; // r7
  void (__fastcall *v33)(int, int); // r10
  int v34; // r0
  int v35; // r10
  int v36; // r7
  void (__fastcall *v37)(int, int); // r10
  int v38; // r0
  int v39; // r7
  int v40; // r7
  int v41; // r3
  int v42; // r0
  void (__fastcall *v43)(int, int); // r5
  int v44; // r0
  int result; // r0
  _DWORD *v46; // r2
  _DWORD *v47; // r2
  _DWORD *v48; // r2
  int v49; // r3
  _DWORD *v50; // r3
  int v51; // r0
  int v52; // r3
  int v53; // r0
  int v54; // r3
  int v55; // r0
  int v56; // r3
  int v57; // r0
  int v58; // r3
  int v59; // lr
  int v60; // r1
  int (__fastcall *v61)(int, int, _DWORD *, _DWORD, _DWORD, glitch::gui::CGUIMessageBox *, int, _DWORD); // r9
  int v62; // r0
  int v63; // r3
  int v64; // [sp+14h] [bp-48h]
  int v65[2]; // [sp+18h] [bp-44h] BYREF
  int v66; // [sp+20h] [bp-3Ch]
  int v67; // [sp+24h] [bp-38h]
  int v68; // [sp+28h] [bp-34h] BYREF
  int v69; // [sp+2Ch] [bp-30h]
  int v70; // [sp+30h] [bp-2Ch]
  int v71; // [sp+34h] [bp-28h]
  int v72[4]; // [sp+38h] [bp-24h] BYREF
  _DWORD v73[5]; // [sp+48h] [bp-14h] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 7);
  v4 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 6);
  v5 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 2) + 2;
  v64 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 2);
  v6 = *((float **)this + 96);
  v7 = *((_DWORD *)this + 21) - *((_DWORD *)this + 19) - 3 * v3;
  v8 = *((_DWORD *)this + 20) - *((_DWORD *)this + 18) - v4;
  v9 = v4 / 2;
  v10 = v3 / 2 + v5;
  if ( v6 )
  {
    v72[3] = v10 + v7;
    v72[2] = v9 + v8;
    v72[0] = v4 / 2;
    v72[1] = v3 / 2 + v5;
    glitch::gui::IGUIElement::setRelativePosition(v6, v72);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 96) + 68))(
      *((_DWORD *)this + 96),
      *((_DWORD *)this + 115));
  }
  else
  {
    v59 = *((_DWORD *)this + 84);
    v60 = *((_DWORD *)this + 115);
    v61 = *(int (__fastcall **)(int, int, _DWORD *, _DWORD, _DWORD, glitch::gui::CGUIMessageBox *, int, _DWORD))(*(_DWORD *)v59 + 168);
    v73[3] = v10 + v7;
    v73[2] = v9 + v8;
    v73[0] = v4 / 2;
    v73[1] = v3 / 2 + v5;
    v62 = v61(v59, v60, v73, 0, 0, this, -1, 0);
    *((_DWORD *)this + 96) = v62;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v62 + 164))(v62, 1);
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 96) + 56))(*((_DWORD *)this + 96), 1);
    v63 = *((_DWORD *)this + 96) + *(_DWORD *)(**((_DWORD **)this + 96) - 16);
    ++*(_DWORD *)(v63 + 4);
  }
  v11 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 96) + 172))(*((_DWORD *)this + 96));
  v12 = *((float **)this + 96);
  v13 = v11;
  v14 = v11 + v5;
  v15 = v12;
  v68 = *((_DWORD *)v12 + 10);
  v69 = *((_DWORD *)v12 + 11);
  v16 = *((_DWORD *)v12 + 12);
  v71 = v13 + v69;
  v70 = v16;
  glitch::gui::IGUIElement::setRelativePosition(v15, &v68);
  v17 = *((_DWORD *)this + 11);
  v18 = *((_DWORD *)this + 12);
  v19 = *((_DWORD *)this + 13);
  v68 = *((_DWORD *)this + 10);
  v70 = v18;
  v71 = v19;
  v69 = v17;
  v20 = v14 + (int)floorf((float)v3 * 2.5);
  v21 = (*(_DWORD *)(*((_DWORD *)this + 9) + 68) - *(_DWORD *)(*((_DWORD *)this + 9) + 60) - v20) / 2;
  v71 = v21 + v20;
  v69 = v21;
  glitch::gui::IGUIElement::setRelativePosition((float *)this, &v68);
  v22 = *((_DWORD *)this + 97);
  v23 = v22 & 1;
  if ( (v22 & 2) != 0 )
    ++v23;
  if ( (v22 & 4) != 0 )
    ++v23;
  v24 = v64 + v4;
  if ( (v22 & 8) != 0 )
    ++v23;
  v25 = v10 + v3 / 2 + v13;
  v26 = (*((_DWORD *)this + 20) - *((_DWORD *)this + 18) - v24 * v23) / 2;
  v67 = v25 + v3;
  v66 = v26 + v4;
  v65[1] = v25;
  v65[0] = v26;
  if ( (v22 & 1) != 0 )
  {
    if ( *((_DWORD *)this + 92) )
    {
      glitch::gui::IGUIElement::setRelativePosition(*((float **)this + 92), v65);
    }
    else
    {
      v57 = (*(int (__fastcall **)(_DWORD, int *, glitch::gui::CGUIMessageBox *, int, _DWORD, _DWORD))(**((_DWORD **)this + 84) + 120))(
              *((_DWORD *)this + 84),
              v65,
              this,
              -1,
              0,
              0);
      *((_DWORD *)this + 92) = v57;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v57 + 56))(v57, 1);
      v58 = *((_DWORD *)this + 92) + *(_DWORD *)(**((_DWORD **)this + 92) - 16);
      ++*(_DWORD *)(v58 + 4);
    }
    v27 = *((_DWORD *)this + 92);
    v28 = *(void (__fastcall **)(int, int))(*(_DWORD *)v27 + 68);
    v29 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 28))(v2, 0);
    v28(v27, v29);
    v30 = *((_DWORD *)this + 92);
    v66 += v24;
    v65[0] += v24;
    v22 = *((_DWORD *)this + 97);
  }
  else
  {
    v46 = *((_DWORD **)this + 92);
    if ( v46 )
    {
      v30 = 0;
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v46 + *(_DWORD *)(*v46 - 16)));
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 92) + 28))(*((_DWORD *)this + 92));
      v22 = *((_DWORD *)this + 97);
      *((_DWORD *)this + 92) = 0;
      v31 = v22 & 2;
      if ( (v22 & 2) != 0 )
        goto LABEL_14;
      goto LABEL_37;
    }
    v30 = 0;
  }
  v31 = v22 & 2;
  if ( (v22 & 2) != 0 )
  {
LABEL_14:
    if ( *((_DWORD *)this + 93) )
    {
      glitch::gui::IGUIElement::setRelativePosition(*((float **)this + 93), v65);
    }
    else
    {
      v53 = (*(int (__fastcall **)(_DWORD, int *, glitch::gui::CGUIMessageBox *, int, _DWORD, _DWORD))(**((_DWORD **)this + 84) + 120))(
              *((_DWORD *)this + 84),
              v65,
              this,
              -1,
              0,
              0);
      *((_DWORD *)this + 93) = v53;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v53 + 56))(v53, 1);
      v54 = *((_DWORD *)this + 93) + *(_DWORD *)(**((_DWORD **)this + 93) - 16);
      ++*(_DWORD *)(v54 + 4);
    }
    v32 = *((_DWORD *)this + 93);
    v33 = *(void (__fastcall **)(int, int))(*(_DWORD *)v32 + 68);
    v34 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 28))(v2, 1);
    v33(v32, v34);
    v66 += v24;
    v65[0] += v24;
    if ( !v30 )
      v30 = *((_DWORD *)this + 93);
    v22 = *((_DWORD *)this + 97);
    goto LABEL_19;
  }
LABEL_37:
  v47 = *((_DWORD **)this + 93);
  if ( v47 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v47 + *(_DWORD *)(*v47 - 16)));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 28))(*((_DWORD *)this + 93));
    v22 = *((_DWORD *)this + 97);
    *((_DWORD *)this + 93) = v31;
    v35 = v22 & 4;
    if ( (v22 & 4) != 0 )
      goto LABEL_20;
    goto LABEL_39;
  }
LABEL_19:
  v35 = v22 & 4;
  if ( (v22 & 4) != 0 )
  {
LABEL_20:
    if ( *((_DWORD *)this + 94) )
    {
      glitch::gui::IGUIElement::setRelativePosition(*((float **)this + 94), v65);
    }
    else
    {
      v51 = (*(int (__fastcall **)(_DWORD, int *, glitch::gui::CGUIMessageBox *, int, _DWORD, _DWORD))(**((_DWORD **)this + 84) + 120))(
              *((_DWORD *)this + 84),
              v65,
              this,
              -1,
              0,
              0);
      *((_DWORD *)this + 94) = v51;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v51 + 56))(v51, 1);
      v52 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 16);
      ++*(_DWORD *)(v52 + 4);
    }
    v36 = *((_DWORD *)this + 94);
    v37 = *(void (__fastcall **)(int, int))(*(_DWORD *)v36 + 68);
    v38 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 28))(v2, 2);
    v37(v36, v38);
    v66 += v24;
    v65[0] += v24;
    if ( !v30 )
      v30 = *((_DWORD *)this + 94);
    v22 = *((_DWORD *)this + 97);
LABEL_25:
    v39 = v22 & 8;
    if ( (v22 & 8) != 0 )
      goto LABEL_26;
    goto LABEL_41;
  }
LABEL_39:
  v48 = *((_DWORD **)this + 94);
  if ( !v48 )
    goto LABEL_25;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v48 + *(_DWORD *)(*v48 - 16)));
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 28))(*((_DWORD *)this + 94));
  v49 = *((_DWORD *)this + 97);
  *((_DWORD *)this + 94) = v35;
  v39 = v49 & 8;
  if ( (v49 & 8) != 0 )
  {
LABEL_26:
    if ( *((_DWORD *)this + 95) )
    {
      glitch::gui::IGUIElement::setRelativePosition(*((float **)this + 95), v65);
    }
    else
    {
      v55 = (*(int (__fastcall **)(_DWORD, int *, glitch::gui::CGUIMessageBox *, int, _DWORD, _DWORD))(**((_DWORD **)this + 84) + 120))(
              *((_DWORD *)this + 84),
              v65,
              this,
              -1,
              0,
              0);
      *((_DWORD *)this + 95) = v55;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v55 + 56))(v55, 1);
      v56 = *((_DWORD *)this + 95) + *(_DWORD *)(**((_DWORD **)this + 95) - 16);
      ++*(_DWORD *)(v56 + 4);
    }
    v40 = *((_DWORD *)this + 95);
    v41 = *(_DWORD *)v2;
    v42 = v2;
    v43 = *(void (__fastcall **)(int, int))(*(_DWORD *)v40 + 68);
    v44 = (*(int (__fastcall **)(int, int))(v41 + 28))(v42, 3);
    v43(v40, v44);
    v66 += v24;
    v65[0] += v24;
    if ( !v30 )
      v30 = *((_DWORD *)this + 95);
    goto LABEL_30;
  }
LABEL_41:
  v50 = *((_DWORD **)this + 95);
  if ( v50 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v50 + *(_DWORD *)(*v50 - 16)));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 95) + 28))(*((_DWORD *)this + 95));
    *((_DWORD *)this + 95) = v39;
  }
LABEL_30:
  result = (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIMessageBox *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this);
  if ( result )
  {
    if ( v30 )
      return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 84) + 16))(*((_DWORD *)this + 84), v30);
  }
  return result;
}


// ===== 547a0c glitch::gui::CGUIMessageBox::CGUIMessageBox(glitch::gui::IGUIEnvironment *,wchar_t const*,wchar_t const*,int,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIMessageBox::CGUIMessageBox(
        int a1,
        int *a2,
        int a3,
        const wchar_t *a4,
        wchar_t *s,
        int a6,
        int a7,
        int a8,
        int *a9)
{
  int v11; // lr
  int v12; // r7
  int v13; // r4
  int v15; // r3
  int v16; // r3
  int MaximizeButton; // r0
  int MinimizeButton; // r0
  size_t v19; // r0
  _DWORD v21[4]; // [sp+Ch] [bp-18h] BYREF

  v11 = a9[3];
  v12 = *a9;
  v13 = a9[1];
  v21[2] = a9[2];
  v21[3] = v11;
  v21[0] = v12;
  v21[1] = v13;
  glitch::gui::CGUIWindow::CGUIWindow(a1, a2 + 1, a3, a7, a8, v21);
  v15 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 12)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[11];
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 388) = a6;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 392),
    s);
  v16 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 340) = 12;
  *(_BYTE *)(a1 + 464) = 0;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v16 + 16))(v16, 0);
  MaximizeButton = glitch::gui::CGUIWindow::getMaximizeButton((glitch::gui::CGUIWindow *)a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)MaximizeButton + 28))(MaximizeButton);
  MinimizeButton = glitch::gui::CGUIWindow::getMinimizeButton((glitch::gui::CGUIWindow *)a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)MinimizeButton + 28))(MinimizeButton);
  if ( a4 )
  {
    v19 = wcslen(a4);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 160,
      a4,
      &a4[v19]);
  }
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 16))(*(_DWORD *)(a1 + 336), a1);
  glitch::gui::CGUIMessageBox::refreshControls((glitch::gui::CGUIMessageBox *)a1);
  return a1;
}


// ===== 547b48 glitch::gui::IGUIElement::~IGUIElement() [clone] =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  char *i; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r0
  char *v6; // r0
  char *v7; // r0
  char *v8; // r4

  *(_DWORD *)this = off_96F3C0;
  *(int *)((char *)&elf_hash_bucket[31] + (_DWORD)this) = (int)off_96F454;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96F474;
  v3 = (char *)this + 4;
  for ( i = *((char **)this + 1); i != v3; i = *(char **)i )
  {
    *(_DWORD *)(*((_DWORD *)i + 2) + 36) = 0;
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 16)));
  }
  v4 = *((char **)this + 75);
  if ( v4 != (char *)this + 232 && v4 )
    GlitchFree(v4);
  v5 = *((char **)this + 57);
  if ( v5 != (char *)this + 160 && v5 )
    GlitchFree(v5);
  v6 = *((char **)this + 8);
  if ( v6 != (char *)this + 12 && v6 )
    GlitchFree(v6);
  v7 = *((char **)this + 1);
  if ( v7 != v3 )
  {
    while ( 1 )
    {
      v8 = *(char **)v7;
      GlitchFree(v7);
      if ( v8 == v3 )
        break;
      v7 = v8;
    }
    v7 = v3;
  }
  *((_DWORD *)this + 1) = v7;
  *((_DWORD *)v3 + 1) = v7;
}


// ===== 547c50 glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  *(_DWORD *)this = off_96F2C0;
  *((_DWORD *)this + 86) = off_96F360;
  *((_DWORD *)this + 87) = off_96F380;
  glitch::gui::IGUIElement::~IGUIElement(this);
}


// ===== 547c94 `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  glitch::gui::IGUIWindow::~IGUIWindow((glitch::gui::IGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 547ca4 `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  glitch::gui::IGUIWindow::~IGUIWindow((glitch::gui::IGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 547cb4 glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  char *v7; // r0

  v1 = *((_DWORD **)this + 96);
  *(_DWORD *)this = off_96F4C8;
  *((_DWORD *)this + 117) = off_96F568;
  *((_DWORD *)this + 118) = off_96F588;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 92);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((_DWORD **)this + 93);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  v5 = *((_DWORD **)this + 94);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 95);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((char **)this + 115);
  if ( v7 != (char *)this + 392 && v7 )
    GlitchFree(v7);
  glitch::gui::CGUIWindow::~CGUIWindow(this);
}


// ===== 547db4 glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  glitch::gui::CGUIMessageBox::~CGUIMessageBox(this);
  LC_API_FREE_0(this);
}


// ===== 547dd0 glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this, int *a2)
{
  int v2; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  _DWORD *v8; // r3
  char *v9; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[11];
  v4 = *((_DWORD **)this + 96);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  v5 = *((_DWORD **)this + 92);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 93);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 94);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = *((_DWORD **)this + 95);
  if ( v8 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 16)));
  v9 = *((char **)this + 115);
  if ( v9 != (char *)this + 392 && v9 )
    GlitchFree(v9);
  glitch::gui::CGUIWindow::~CGUIWindow(this);
}


// ===== 547ebc glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  *(_DWORD *)this = off_96F2C0;
  *((_DWORD *)this + 86) = off_96F360;
  *((_DWORD *)this + 87) = off_96F380;
  glitch::gui::IGUIElement::~IGUIElement(this);
  LC_API_FREE_0(this);
}


// ===== 547f08 `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  glitch::gui::IGUIWindow::~IGUIWindow((glitch::gui::IGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 547f18 `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIWindow::~IGUIWindow(glitch::gui::IGUIWindow *this)
{
  glitch::gui::IGUIWindow::~IGUIWindow((glitch::gui::IGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 547f28 glitch::gui::CGUIMessageBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIMessageBox::deserializeAttributes(int a1, int a2)
{
  int v4; // r0
  int v5; // r6
  int v6; // r0
  int v7; // r6
  int v8; // r0
  int v9; // r6
  int v10; // r0
  size_t v11; // r0
  _BYTE v13[68]; // [sp+0h] [bp-48h] BYREF
  wchar_t *s; // [sp+44h] [bp-4h]

  *(_DWORD *)(a1 + 388) = 0;
  v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "OkayButton");
  *(_DWORD *)(a1 + 388) = v4;
  v5 = v4;
  if ( (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "CancelButton") )
    v6 = 2;
  else
    v6 = 0;
  v7 = v6 | v5;
  *(_DWORD *)(a1 + 388) = v7;
  if ( (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "YesButton") )
    v8 = 4;
  else
    v8 = 0;
  v9 = v8 | v7;
  *(_DWORD *)(a1 + 388) = v9;
  if ( (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "NoButton") )
    v10 = 8;
  else
    v10 = 0;
  *(_DWORD *)(a1 + 388) = v10 | v9;
  (*(void (__fastcall **)(_BYTE *, int, const char *))(*(_DWORD *)a2 + 156))(v13, a2, "MessageText");
  v11 = wcslen(s);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 392,
    s,
    &s[v11]);
  if ( s != (wchar_t *)v13 && s )
    GlitchFree(s);
  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  return glitch::gui::CGUIMessageBox::refreshControls((glitch::gui::CGUIMessageBox *)a1);
}


// ===== 548070 glitch::gui::CGUIMessageBox::CGUIMessageBox(glitch::gui::IGUIEnvironment *,wchar_t const*,wchar_t const*,int,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIMessageBox::CGUIMessageBox(
        int a1,
        int a2,
        const wchar_t *a3,
        wchar_t *a4,
        int a5,
        int a6,
        int a7,
        _DWORD *a8)
{
  int v8; // r10
  int v9; // r8
  int v10; // r11
  int v14; // r3
  int MaximizeButton; // r0
  int MinimizeButton; // r0
  size_t v17; // r0
  _DWORD v19[4]; // [sp+Ch] [bp-18h] BYREF

  *(_DWORD *)(a1 + 476) = 1;
  *(_DWORD *)(a1 + 472) = off_95B720;
  *(_DWORD *)(a1 + 468) = off_96F86C;
  *(_DWORD *)&byte_4[a1 + 468] = off_96F88C;
  v8 = a8[3];
  v9 = a8[1];
  v10 = a8[2];
  v19[0] = *a8;
  v19[1] = v9;
  v19[2] = v10;
  v19[3] = v8;
  glitch::gui::CGUIWindow::CGUIWindow(a1, off_96F59C, a2, a6, a7, v19);
  *(_DWORD *)(a1 + 388) = a5;
  *(_DWORD *)a1 = off_96F4C8;
  *(_DWORD *)(a1 + 468) = off_96F568;
  *(_DWORD *)(a1 + 472) = off_96F588;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 392),
    a4);
  v14 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 340) = 12;
  *(_BYTE *)(a1 + 464) = 0;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v14 + 16))(v14, 0);
  MaximizeButton = glitch::gui::CGUIWindow::getMaximizeButton((glitch::gui::CGUIWindow *)a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)MaximizeButton + 28))(MaximizeButton);
  MinimizeButton = glitch::gui::CGUIWindow::getMinimizeButton((glitch::gui::CGUIWindow *)a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)MinimizeButton + 28))(MinimizeButton);
  if ( a3 )
  {
    v17 = wcslen(a3);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 160,
      a3,
      &a3[v17]);
  }
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 16))(*(_DWORD *)(a1 + 336), a1);
  glitch::gui::CGUIMessageBox::refreshControls((glitch::gui::CGUIMessageBox *)a1);
  return a1;
}


// ===== 548200 `virtual thunk to'glitch::gui::CGUIMessageBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIMessageBox::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 548210 `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  glitch::gui::CGUIMessageBox::~CGUIMessageBox((glitch::gui::CGUIMessageBox *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 548220 `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  glitch::gui::CGUIMessageBox::~CGUIMessageBox((glitch::gui::CGUIMessageBox *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 548230 `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  glitch::gui::CGUIMessageBox::~CGUIMessageBox((glitch::gui::CGUIMessageBox *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 548240 `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::~CGUIMessageBox(glitch::gui::CGUIMessageBox *this)
{
  glitch::gui::CGUIMessageBox::~CGUIMessageBox((glitch::gui::CGUIMessageBox *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 548250 `virtual thunk to'glitch::gui::CGUIMessageBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIMessageBox::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIMessageBox::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 548260 glitch::gui::CGUIModalScreen::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUIModalScreen::updateAbsolutePosition(glitch::gui::IGUIElement *this)
{
  _DWORD *v1; // r3
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r12

  v1 = *((_DWORD **)this + 9);
  if ( v1 )
  {
    v2 = v1[17];
    v3 = v1[14];
    v4 = v1[15];
    v5 = v1[16];
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 12) = v5 - v3;
    *((_DWORD *)this + 13) = v2 - v4;
    *((_DWORD *)this + 10) = 0;
  }
  return glitch::gui::IGUIElement::updateAbsolutePosition(this);
}


// ===== 5482a0 glitch::gui::CGUIModalScreen::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::gui::CGUIModalScreen::serializeAttributes()
{
  ;
}


// ===== 5482a4 glitch::gui::CGUIModalScreen::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::gui::CGUIModalScreen::deserializeAttributes()
{
  ;
}


// ===== 5482a8 `global constructor keyed to'.._source_glitch_gui_CGUIModalScreen.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIModalScreen.cpp()
{
  dword_9F664C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6648 = 1056964608;
}


// ===== 5482c8 glitch::gui::CGUIModalScreen::removeChild(glitch::gui::IGUIElement *) =====
void __fastcall glitch::gui::CGUIModalScreen::removeChild(
        glitch::gui::CGUIModalScreen *this,
        glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement::removeChild(this, a2);
  if ( *((glitch::gui::CGUIModalScreen **)this + 1) == (glitch::gui::CGUIModalScreen *)((char *)this + 4) )
    (*(void (__fastcall **)(glitch::gui::CGUIModalScreen *))(*(_DWORD *)this + 28))(this);
}


// ===== 5482fc glitch::gui::CGUIModalScreen::addChild(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIModalScreen::addChild(glitch::gui::CGUIModalScreen *this, glitch::gui::IGUIElement *a2)
{
  glitch::gui::IGUIElement::addChild(this, a2);
  return (*(int (__fastcall **)(_DWORD, glitch::gui::IGUIElement *))(**((_DWORD **)this + 84) + 16))(
           *((_DWORD *)this + 84),
           a2);
}


// ===== 548328 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 54832c glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement*,int,glitch::core::rect<int>) [clone] =====
int __fastcall glitch::gui::IGUIElement::IGUIElement(int a1, int *a2, int a3, int a4, int a5, _DWORD *a6)
{
  int v7; // r8
  int v8; // r0
  int v11; // r3
  _DWORD *v12; // r3
  int v13; // r0
  int v14; // r12
  int v15; // r8
  int v16; // r7
  int v17; // r2
  int v18; // r1
  int v19; // r5
  int v20; // r6
  int v21; // r0
  int v22; // r1
  int v23; // r1
  int v24; // r2
  int v25; // r1
  int v26; // r3
  int v27; // r1
  bool v28; // cc
  int v29; // r3

  v7 = a1 + 4;
  *(_DWORD *)a1 = off_95C300;
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 12)) = a2[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[2];
  *(_DWORD *)(a1 + 8) = v7;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 4) = v7;
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = *a6;
  *(_DWORD *)(a1 + 44) = a6[1];
  *(_DWORD *)(a1 + 48) = a6[2];
  *(_DWORD *)(a1 + 52) = a6[3];
  *(_DWORD *)(a1 + 56) = *a6;
  *(_DWORD *)(a1 + 60) = a6[1];
  *(_DWORD *)(a1 + 64) = a6[2];
  *(_DWORD *)(a1 + 68) = a6[3];
  *(_DWORD *)(a1 + 72) = *a6;
  *(_DWORD *)(a1 + 76) = a6[1];
  *(_DWORD *)(a1 + 80) = a6[2];
  *(_DWORD *)(a1 + 84) = a6[3];
  *(_DWORD *)(a1 + 88) = *a6;
  *(_DWORD *)(a1 + 92) = a6[1];
  *(_DWORD *)(a1 + 96) = a6[2];
  v11 = a6[3];
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 100) = v11;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 13;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v12 = *(_DWORD **)(a1 + 36);
  if ( v12 )
  {
    v13 = v12[15];
    v14 = v12[14];
    v15 = v12[16];
    v16 = v12[17];
    v17 = v13 + *(_DWORD *)(a1 + 68);
    v18 = v14 + *(_DWORD *)(a1 + 64);
    v19 = v13 + *(_DWORD *)(a1 + 60);
    v20 = v14 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v19;
    *(_DWORD *)(a1 + 84) = v17;
    *(_DWORD *)(a1 + 72) = v20;
    *(_DWORD *)(a1 + 80) = v18;
    *(_DWORD *)(a1 + 68) = v17;
    *(_DWORD *)(a1 + 112) = v15;
    *(_DWORD *)(a1 + 116) = v16;
    *(_DWORD *)(a1 + 104) = v14;
    *(_DWORD *)(a1 + 108) = v13;
    *(_DWORD *)(a1 + 56) = v20;
    *(_DWORD *)(a1 + 60) = v19;
    *(_DWORD *)(a1 + 64) = v18;
    v21 = v12[20];
    if ( v18 > v21 )
      *(_DWORD *)(a1 + 80) = v21;
    v22 = v12[21];
    if ( v17 > v22 )
      *(_DWORD *)(a1 + 84) = v22;
    v23 = v12[18];
    v24 = *(_DWORD *)(a1 + 72);
    if ( v23 > v24 )
    {
      *(_DWORD *)(a1 + 72) = v23;
      v24 = v23;
    }
    v25 = v12[19];
    v26 = *(_DWORD *)(a1 + 76);
    if ( v25 > v26 )
    {
      *(_DWORD *)(a1 + 76) = v25;
      v26 = v25;
    }
    v27 = *(_DWORD *)(a1 + 84);
    v28 = v27 < v26;
    v29 = *(_DWORD *)(a1 + 80);
    if ( v28 )
      *(_DWORD *)(a1 + 76) = v27;
    if ( v24 > v29 )
      *(_DWORD *)(a1 + 72) = v29;
  }
  return a1;
}


// ===== 5485c8 glitch::gui::CGUIModalScreen::CGUIModalScreen(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
glitch::gui::CGUIModalScreen *__fastcall glitch::gui::CGUIModalScreen::CGUIModalScreen(
        glitch::gui::CGUIModalScreen *this,
        glitch::gui::IGUIEnvironment *a2,
        glitch::gui::IGUIElement *a3,
        _DWORD *a4,
        int a5)
{
  int v5; // lr
  int v6; // r6
  int v7; // r4
  int v10; // r3
  _DWORD v12[4]; // [sp+8h] [bp-10h] BYREF

  v5 = a4[17];
  v6 = a4[14];
  v7 = a4[15];
  v12[2] = a4[16];
  v12[0] = v6;
  v12[1] = v7;
  v12[3] = v5;
  glitch::gui::IGUIElement::IGUIElement((int)this, (int *)a2 + 1, (int)a3, (int)a4, a5, v12);
  v10 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v10 - 12)) = *((_DWORD *)a2 + 4);
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 86) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)&this, 0, 1, 0, 1);
  *((_BYTE *)this + 316) = 1;
  return this;
}


// ===== 548668 glitch::gui::CGUIModalScreen::CGUIModalScreen(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
float __fastcall glitch::gui::CGUIModalScreen::CGUIModalScreen(
        float this,
        glitch::gui::IGUIEnvironment *a2,
        glitch::gui::IGUIElement *a3,
        int a4)
{
  int v4; // r8
  int v5; // r10
  int v6; // r9
  _DWORD v9[4]; // [sp+8h] [bp-10h] BYREF

  *(_DWORD *)(LODWORD(this) + 352) = off_95B720;
  *(_DWORD *)(LODWORD(this) + 356) = 1;
  *(_DWORD *)(LODWORD(this) + 348) = off_96FA64;
  *(_DWORD *)&byte_4[LODWORD(this) + 348] = off_96FA84;
  v4 = *((_DWORD *)a3 + 15);
  v5 = *((_DWORD *)a3 + 16);
  v6 = *((_DWORD *)a3 + 17);
  v9[0] = *((_DWORD *)a3 + 14);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  glitch::gui::IGUIElement::IGUIElement(SLODWORD(this), (int *)&off_96F96C, (int)a2, (int)a3, a4, v9);
  *(_DWORD *)(LODWORD(this) + 344) = 0;
  *(_DWORD *)(LODWORD(this) + 348) = off_96F93C;
  *(_DWORD *)(LODWORD(this) + 352) = off_96F95C;
  *(_DWORD *)LODWORD(this) = off_96F8A8;
  glitch::gui::IGUIElement::setAlignment(this, 0, 1, 0, 1);
  *(_BYTE *)(LODWORD(this) + 316) = 1;
  return this;
}


// ===== 548750 glitch::gui::IGUIElement::~IGUIElement() [clone] =====
void __fastcall glitch::gui::IGUIElement::~IGUIElement(glitch::gui::IGUIElement *this)
{
  char *i; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r0
  char *v6; // r0
  char *v7; // r0
  char *v8; // r4

  *(_DWORD *)this = off_96F998;
  *(int *)((char *)&elf_hash_bucket[32] + (_DWORD)this) = (int)off_96FA2C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96FA4C;
  v3 = (char *)this + 4;
  for ( i = *((char **)this + 1); i != v3; i = *(char **)i )
  {
    *(_DWORD *)(*((_DWORD *)i + 2) + 36) = 0;
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 16)));
  }
  v4 = *((char **)this + 75);
  if ( v4 != (char *)this + 232 && v4 )
    GlitchFree(v4);
  v5 = *((char **)this + 57);
  if ( v5 != (char *)this + 160 && v5 )
    GlitchFree(v5);
  v6 = *((char **)this + 8);
  if ( v6 != (char *)this + 12 && v6 )
    GlitchFree(v6);
  v7 = *((char **)this + 1);
  if ( v7 != v3 )
  {
    while ( 1 )
    {
      v8 = *(char **)v7;
      GlitchFree(v7);
      if ( v8 == v3 )
        break;
      v7 = v8;
    }
    v7 = v3;
  }
  *((_DWORD *)this + 1) = v7;
  *((_DWORD *)v3 + 1) = v7;
}


// ===== 548858 glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  *(_DWORD *)this = off_96F8A8;
  *((_DWORD *)this + 87) = off_96F93C;
  *((_DWORD *)this + 88) = off_96F95C;
  glitch::gui::IGUIElement::~IGUIElement(this);
}


// ===== 54889c `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  glitch::gui::CGUIModalScreen::~CGUIModalScreen((glitch::gui::CGUIModalScreen *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5488ac `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  glitch::gui::CGUIModalScreen::~CGUIModalScreen((glitch::gui::CGUIModalScreen *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5488bc glitch::gui::CGUIModalScreen::draw(void) =====
unsigned int __fastcall glitch::gui::CGUIModalScreen::draw(glitch::gui::CGUIModalScreen *this)
{
  unsigned int result; // r0
  unsigned int v3; // r6
  int v4; // r3
  _DWORD **v5; // r4
  int v6; // r0
  bool v7; // zf
  _DWORD *v8; // r12
  int v9; // lr
  int v10; // r7
  int v11; // r11
  int v12; // r12
  char *j; // r4
  char *v14; // r5
  char *v15; // t1
  int v16; // [sp+1Ch] [bp-18h] BYREF
  int v17; // [sp+20h] [bp-14h]
  int v18; // [sp+24h] [bp-10h]
  int v19; // [sp+28h] [bp-Ch]
  unsigned int i; // [sp+2Ch] [bp-8h] BYREF

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = result;
  if ( result )
  {
    result = glitch::os::Timer::getTime((glitch::os::Timer *)result);
    if ( result - *((_DWORD *)this + 86) < 0x12C )
    {
      result >>= 1;
      if ( ((3926827243LL * result) & 0x2000000000LL) != 0 )
      {
        v4 = *((_DWORD *)this + 84);
        v19 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5 = *((_DWORD ***)this + 1);
        v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 56))(v4);
        result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v6 + 16))(v6, 3);
        for ( i = result; (_DWORD **)((char *)this + 4) != v5; v5 = (_DWORD **)*v5 )
        {
          v7 = (*(int (__fastcall **)(_DWORD *))(*v5[2] + 44))(v5[2]) == 0;
          result = v3;
          if ( !v7 )
          {
            v8 = v5[2];
            v9 = v8[14];
            v10 = v8[16];
            v11 = v8[15];
            v12 = v8[17];
            v16 = v9 - 1;
            v18 = v10 + 1;
            v19 = v12 + 1;
            v17 = v11 - 1;
            result = (*(int (__fastcall **)(unsigned int, glitch::gui::CGUIModalScreen *, unsigned int *, int *, char *))(*(_DWORD *)v3 + 100))(
                       v3,
                       this,
                       &i,
                       &v16,
                       (char *)this + 72);
          }
        }
      }
    }
    if ( *((_BYTE *)this + 152) )
    {
      v15 = *((char **)this + 1);
      v14 = (char *)this + 4;
      for ( j = v15; j != v14; j = *(char **)j )
        result = (*(int (__fastcall **)(int))(**((_DWORD **)j + 2) + 32))(*((_DWORD *)j + 2));
    }
  }
  return result;
}


// ===== 548a50 glitch::gui::CGUIModalScreen::onEvent(glitch::SEvent const&) =====
char *__fastcall glitch::gui::CGUIModalScreen::onEvent(int a1, _DWORD *a2)
{
  glitch::os::Timer *v3; // r5
  int v4; // r3
  glitch::os::Timer *v5; // r0
  glitch::os::Timer *v6; // r3
  glitch::os::Timer *v7; // r1
  bool v8; // zf
  int v10; // r3
  int v11; // r1
  int i; // r3
  bool v13; // zf

  v3 = (glitch::os::Timer *)a1;
  if ( *a2 )
  {
    if ( *a2 == 1 && !a2[5] )
      *(_DWORD *)(a1 + 344) = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
LABEL_17:
    v10 = *((_DWORD *)v3 + 9);
    if ( v10 )
      (*(void (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)v10 + 8))(*((_DWORD *)v3 + 9), a2);
    return (char *)&dword_0 + 1;
  }
  v4 = a2[4];
  if ( v4 != 1 )
  {
    if ( v4 == 4 )
      return (char *)glitch::gui::IGUIElement::onEvent(a1);
    if ( !v4 )
    {
      v5 = (glitch::os::Timer *)a2[3];
      if ( !v5 )
        goto LABEL_33;
      v6 = *((glitch::os::Timer **)v5 + 9);
      v7 = (glitch::os::Timer *)a2[3];
      while ( v6 )
      {
        v7 = v6;
        v8 = v3 == v6;
        if ( v3 != v6 )
          v8 = *((_DWORD *)v6 + 9) == 0;
        if ( v8 )
          goto LABEL_13;
        v6 = *((glitch::os::Timer **)v6 + 9);
      }
      v6 = v7;
LABEL_13:
      if ( v3 != v6 )
      {
LABEL_33:
        if ( v3 != v5 )
        {
          *((_DWORD *)v3 + 86) = glitch::os::Timer::getTime(v5);
          return (_BYTE *)(&dword_0 + 1);
        }
      }
      a1 = (int)v3;
      return (char *)glitch::gui::IGUIElement::onEvent(a1);
    }
    goto LABEL_17;
  }
  v11 = a2[2];
  if ( v11 == a1 )
    return nullptr;
  if ( !v11 )
    goto LABEL_35;
  for ( i = *(_DWORD *)(v11 + 36); i; i = *(_DWORD *)(i + 36) )
  {
    v11 = i;
    v13 = a1 == i;
    if ( a1 != i )
      v13 = *(_DWORD *)(i + 36) == 0;
    if ( v13 )
      goto LABEL_31;
  }
  i = v11;
LABEL_31:
  if ( a1 == i )
    return nullptr;
LABEL_35:
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 16))(*(_DWORD *)(a1 + 336), a1);
  return nullptr;
}


// ===== 548ba8 glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  *(_DWORD *)this = off_96F8A8;
  *((_DWORD *)this + 87) = off_96F93C;
  *((_DWORD *)this + 88) = off_96F95C;
  glitch::gui::IGUIElement::~IGUIElement(this);
  LC_API_FREE_0(this);
}


// ===== 548bf4 `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  glitch::gui::CGUIModalScreen::~CGUIModalScreen((glitch::gui::CGUIModalScreen *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 548c04 `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIModalScreen::~CGUIModalScreen(glitch::gui::CGUIModalScreen *this)
{
  glitch::gui::CGUIModalScreen::~CGUIModalScreen((glitch::gui::CGUIModalScreen *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 548c14 `virtual thunk to'glitch::gui::CGUIModalScreen::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void `virtual thunk to'glitch::gui::CGUIModalScreen::deserializeAttributes()
{
  glitch::gui::CGUIModalScreen::deserializeAttributes();
}


// ===== 548c24 `virtual thunk to'glitch::gui::CGUIModalScreen::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void `virtual thunk to'glitch::gui::CGUIModalScreen::serializeAttributes()
{
  glitch::gui::CGUIModalScreen::serializeAttributes();
}


// ===== 548c34 glitch::gui::CGUIScrollBar::getPosFromMousePos(int,int) =====
int __fastcall glitch::gui::CGUIScrollBar::getPosFromMousePos(glitch::gui::CGUIScrollBar *this, int a2, int a3)
{
  float v4; // r0
  float v6; // r6

  if ( *((_BYTE *)this + 369) )
  {
    v6 = (float)(*((_DWORD *)this + 13) - *((_DWORD *)this + 11));
    return (int)(float)((float)((float)((float)(a2 - *((_DWORD *)this + 14)) + (float)(v6 * -1.5))
                              / (float)((float)(*((_DWORD *)this + 12) - *((_DWORD *)this + 10)) + (float)(v6 * -3.0)))
                      * (float)*((int *)this + 96));
  }
  else
  {
    v4 = (float)(*((_DWORD *)this + 12) - *((_DWORD *)this + 10));
    return (int)(float)((float)((float)((float)(a3 - *((_DWORD *)this + 15)) + (float)(v4 * -1.5))
                              / (float)((float)(*((_DWORD *)this + 13) - *((_DWORD *)this + 11)) + (float)(v4 * -3.0)))
                      * (float)*((int *)this + 96));
  }
}


// ===== 548d90 glitch::gui::CGUIScrollBar::setPos(int) =====
int __fastcall glitch::gui::CGUIScrollBar::setPos(glitch::gui::CGUIScrollBar *this, int a2)
{
  int v2; // r5
  int v4; // r3
  int v5; // r10
  int v6; // r7
  int v7; // r6
  float v8; // r10
  int v9; // r8
  int result; // r0
  int v11; // r6

  v2 = a2;
  if ( a2 < 0 )
    v2 = 0;
  if ( a2 >= 0 )
  {
    v4 = *((_DWORD *)this + 96);
    if ( v2 <= v4 )
    {
      *((_DWORD *)this + 93) = v2;
    }
    else
    {
      *((_DWORD *)this + 93) = v4;
      v2 = v4;
    }
  }
  else
  {
    *((_DWORD *)this + 93) = v2;
  }
  if ( *((_BYTE *)this + 369) )
  {
    v11 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
    result = (int)(float)((float)((float)v2
                                * (float)((float)((float)(*((_DWORD *)this + 12) - *((_DWORD *)this + 10))
                                                + (float)((float)v11 * -3.0))
                                        / (float)*((int *)this + 96)))
                        + (float)((float)v11 * 0.5));
    *((_DWORD *)this + 95) = v11;
    *((_DWORD *)this + 94) = result;
  }
  else
  {
    v5 = *((_DWORD *)this + 96);
    v6 = *((_DWORD *)this + 12);
    v7 = *((_DWORD *)this + 10);
    if ( v5 )
    {
      v9 = v6 - v7;
      v8 = (float)((float)(*((_DWORD *)this + 13) - *((_DWORD *)this + 11)) + (float)((float)(v6 - v7) * -3.0))
         / (float)v5;
    }
    else
    {
      v8 = 0.0;
      v9 = v6 - v7;
    }
    result = (int)(float)((float)((float)v2 * v8) + (float)((float)v9 * 0.5));
    *((_DWORD *)this + 95) = v6 - v7;
    *((_DWORD *)this + 94) = result;
  }
  return result;
}


// ===== 548f2c glitch::gui::CGUIScrollBar::getSmallStep(void) =====
int __fastcall glitch::gui::CGUIScrollBar::getSmallStep(glitch::gui::CGUIScrollBar *this)
{
  return *((_DWORD *)this + 97);
}


// ===== 548f34 glitch::gui::CGUIScrollBar::setSmallStep(int) =====
int __fastcall glitch::gui::CGUIScrollBar::setSmallStep(int this, int a2, int a3, int a4)
{
  if ( a2 > 0 )
    *(_DWORD *)(this + 388) = a2;
  else
    a4 = 10;
  if ( a2 <= 0 )
    *(_DWORD *)(this + 388) = a4;
  return this;
}


// ===== 548f48 glitch::gui::CGUIScrollBar::getLargeStep(void) =====
int __fastcall glitch::gui::CGUIScrollBar::getLargeStep(glitch::gui::CGUIScrollBar *this)
{
  return *((_DWORD *)this + 98);
}


// ===== 548f50 glitch::gui::CGUIScrollBar::setLargeStep(int) =====
int __fastcall glitch::gui::CGUIScrollBar::setLargeStep(int this, int a2, int a3, int a4)
{
  if ( a2 > 0 )
    *(_DWORD *)(this + 392) = a2;
  else
    a4 = 50;
  if ( a2 <= 0 )
    *(_DWORD *)(this + 392) = a4;
  return this;
}


// ===== 548f64 glitch::gui::CGUIScrollBar::getMax(void) =====
int __fastcall glitch::gui::CGUIScrollBar::getMax(glitch::gui::CGUIScrollBar *this)
{
  return *((_DWORD *)this + 96);
}


// ===== 548f6c glitch::gui::CGUIScrollBar::setMax(int) =====
int __fastcall glitch::gui::CGUIScrollBar::setMax(glitch::gui::CGUIScrollBar *this, int a2)
{
  int v2; // r3
  int v3; // r5

  v2 = *((_DWORD *)this + 86);
  if ( a2 > 0 )
  {
    *((_DWORD *)this + 96) = a2;
    v3 = 1;
  }
  else
  {
    v3 = 0;
  }
  if ( a2 <= 0 )
    *((_DWORD *)this + 96) = v3;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 64))(v2, v3);
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 87) + 64))(*((_DWORD *)this + 87), v3);
  return (*(int (__fastcall **)(glitch::gui::CGUIScrollBar *, _DWORD))(*(_DWORD *)this + 152))(
           this,
           *((_DWORD *)this + 93));
}


// ===== 548fd0 glitch::gui::CGUIScrollBar::getPos(void) =====
int __fastcall glitch::gui::CGUIScrollBar::getPos(glitch::gui::CGUIScrollBar *this)
{
  return *((_DWORD *)this + 93);
}


// ===== 548fd8 glitch::gui::CGUIScrollBar::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIScrollBar::serializeAttributes(int a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Horizontal",
    *(unsigned __int8 *)(a1 + 369),
    0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Value", *(_DWORD *)(a1 + 372), 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Max", *(_DWORD *)(a1 + 384), 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "SmallStep",
    *(_DWORD *)(a1 + 388),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
           a2,
           "LargeStep",
           *(_DWORD *)(a1 + 392),
           0);
}


// ===== 5490a0 `global constructor keyed to'.._source_glitch_gui_CGUIScrollBar.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIScrollBar.cpp()
{
  dword_9F6658 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6654 = 1056964608;
}


// ===== 5490c0 glitch::gui::CGUIScrollBar::refreshControls(void) =====
float __fastcall glitch::gui::CGUIScrollBar::refreshControls(glitch::gui::CGUIScrollBar *this)
{
  int v1; // r3
  int v3; // r0
  int v4; // r5
  int v5; // r6
  float *v6; // r7
  int v7; // r8
  int v8; // r10
  void (__fastcall *v9)(int, _DWORD, int, int, _DWORD); // r9
  int v10; // r0
  int v11; // r9
  void (__fastcall *v12)(int, int, int, int, _DWORD); // r10
  int v13; // r0
  float *v14; // r7
  int v15; // r10
  void (__fastcall *v16)(int, _DWORD, int, int, _DWORD); // r7
  int v17; // r0
  int v18; // r7
  int v19; // r3
  int v20; // r0
  void (__fastcall *v21)(int, int, int, int, _DWORD); // r5
  int v22; // r0
  int v23; // r3
  float *v25; // r7
  int v26; // r8
  int v27; // r10
  void (__fastcall *v28)(int, _DWORD, int, int, _DWORD); // r9
  int v29; // r0
  int v30; // r9
  void (__fastcall *v31)(int, int, int, int, _DWORD); // r10
  int v32; // r0
  float *v33; // r7
  int v34; // r10
  void (__fastcall *v35)(int, _DWORD, int, int, _DWORD); // r7
  int v36; // r0
  int v37; // r7
  int v38; // r3
  int v39; // r0
  void (__fastcall *v40)(int, int, int, int, _DWORD); // r5
  int v41; // r0
  int v42; // r3
  int v43; // r3
  void *v44; // r9
  void *v45; // r10
  int v46; // r3
  void *v47; // r10
  void *v48; // r10
  int v49; // [sp+8h] [bp-90h]
  int v50[4]; // [sp+14h] [bp-84h] BYREF
  _DWORD v51[4]; // [sp+24h] [bp-74h] BYREF
  int v52[4]; // [sp+34h] [bp-64h] BYREF
  _DWORD v53[4]; // [sp+44h] [bp-54h] BYREF
  int v54[4]; // [sp+54h] [bp-44h] BYREF
  _DWORD v55[4]; // [sp+64h] [bp-34h] BYREF
  int v56[4]; // [sp+74h] [bp-24h] BYREF
  _DWORD v57[4]; // [sp+84h] [bp-14h] BYREF
  int v58; // [sp+94h] [bp-4h]

  v1 = *((_DWORD *)this + 84);
  v58 = -1;
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 56))(v1);
  v4 = v3;
  if ( v3 )
  {
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 48))(v3);
    v49 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 16))(v4, 18);
    v58 = v49;
  }
  else
  {
    v5 = 0;
  }
  if ( *((_BYTE *)this + 369) )
  {
    v6 = *((float **)this + 86);
    v7 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
    if ( !v6 )
    {
      v57[0] = 0;
      v57[1] = 0;
      v57[2] = v7;
      v57[3] = v7;
      v48 = operator new(0x1E4u, 0);
      glitch::gui::CGUIButton::CGUIButton(
        v48,
        *((_DWORD *)this + 84),
        this,
        -1,
        v57,
        *((unsigned __int8 *)this + 155),
        v49);
      *((_DWORD *)this + 86) = v48;
      (*(void (__fastcall **)(void *, int))(*(_DWORD *)v48 + 56))(v48, 1);
      *(_BYTE *)(*((_DWORD *)this + 86) + 308) = 0;
      v6 = *((float **)this + 86);
    }
    if ( v5 )
    {
      (*(void (__fastcall **)(float *, int))(*(_DWORD *)v6 + 144))(v6, v5);
      v8 = *((_DWORD *)this + 86);
      v9 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v8 + 148);
      v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 7);
      v9(v8, 0, v10, v58, 0);
      v11 = *((_DWORD *)this + 86);
      v12 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v11 + 148);
      v13 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 7);
      v12(v11, 1, v13, v58, 0);
      v6 = *((float **)this + 86);
    }
    v56[0] = 0;
    v56[1] = 0;
    v56[2] = v7;
    v56[3] = v7;
    glitch::gui::IGUIElement::setRelativePosition(v6, v56);
    glitch::gui::IGUIElement::setAlignment(*((float *)this + 86), 0, 0, 0, 1);
    v14 = *((float **)this + 87);
    if ( !v14 )
    {
      v43 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
      v55[0] = v43 - v7;
      v55[2] = v43;
      v55[1] = 0;
      v55[3] = v7;
      v44 = operator new(0x1E4u, 0);
      glitch::gui::CGUIButton::CGUIButton(
        v44,
        *((_DWORD *)this + 84),
        this,
        -1,
        v55,
        *((unsigned __int8 *)this + 155),
        v49);
      *((_DWORD *)this + 87) = v44;
      (*(void (__fastcall **)(void *, int))(*(_DWORD *)v44 + 56))(v44, 1);
      *(_BYTE *)(*((_DWORD *)this + 87) + 308) = 0;
      v14 = *((float **)this + 87);
    }
    if ( v5 )
    {
      (*(void (__fastcall **)(float *, int))(*(_DWORD *)v14 + 144))(v14, v5);
      v15 = *((_DWORD *)this + 87);
      v16 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v15 + 148);
      v17 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 8);
      v16(v15, 0, v17, v58, 0);
      v18 = *((_DWORD *)this + 87);
      v19 = *(_DWORD *)v4;
      v20 = v4;
      v21 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v18 + 148);
      v22 = (*(int (__fastcall **)(int, int))(v19 + 56))(v20, 8);
      v21(v18, 1, v22, v58, 0);
      v14 = *((float **)this + 87);
    }
    v23 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
    v54[0] = v23 - v7;
    v54[2] = v23;
    v54[3] = v7;
    v54[1] = 0;
    glitch::gui::IGUIElement::setRelativePosition(v14, v54);
    return glitch::gui::IGUIElement::setAlignment(*((float *)this + 87), 1, 1, 0, 1);
  }
  else
  {
    v25 = *((float **)this + 86);
    v26 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
    if ( !v25 )
    {
      v53[0] = 0;
      v53[1] = 0;
      v53[2] = v26;
      v53[3] = v26;
      v45 = operator new(0x1E4u, 0);
      glitch::gui::CGUIButton::CGUIButton(
        v45,
        *((_DWORD *)this + 84),
        this,
        -1,
        v53,
        *((unsigned __int8 *)this + 155),
        v49);
      *((_DWORD *)this + 86) = v45;
      (*(void (__fastcall **)(void *, int))(*(_DWORD *)v45 + 56))(v45, 1);
      *(_BYTE *)(*((_DWORD *)this + 86) + 308) = 0;
      v25 = *((float **)this + 86);
    }
    if ( v5 )
    {
      (*(void (__fastcall **)(float *, int))(*(_DWORD *)v25 + 144))(v25, v5);
      v27 = *((_DWORD *)this + 86);
      v28 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v27 + 148);
      v29 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 5);
      v28(v27, 0, v29, v58, 0);
      v30 = *((_DWORD *)this + 86);
      v31 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v30 + 148);
      v32 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 5);
      v31(v30, 1, v32, v58, 0);
      v25 = *((float **)this + 86);
    }
    v52[0] = 0;
    v52[1] = 0;
    v52[2] = v26;
    v52[3] = v26;
    glitch::gui::IGUIElement::setRelativePosition(v25, v52);
    glitch::gui::IGUIElement::setAlignment(*((float *)this + 86), 0, 1, 0, 0);
    v33 = *((float **)this + 87);
    if ( !v33 )
    {
      v46 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
      v51[1] = v46 - v26;
      v51[3] = v46;
      v51[0] = 0;
      v51[2] = v26;
      v47 = operator new(0x1E4u, 0);
      glitch::gui::CGUIButton::CGUIButton(
        v47,
        *((_DWORD *)this + 84),
        this,
        -1,
        v51,
        *((unsigned __int8 *)this + 155),
        v49);
      *((_DWORD *)this + 87) = v47;
      (*(void (__fastcall **)(void *, int))(*(_DWORD *)v47 + 56))(v47, 1);
      *(_BYTE *)(*((_DWORD *)this + 87) + 308) = 0;
      v33 = *((float **)this + 87);
    }
    if ( v5 )
    {
      (*(void (__fastcall **)(float *, int))(*(_DWORD *)v33 + 144))(v33, v5);
      v34 = *((_DWORD *)this + 87);
      v35 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v34 + 148);
      v36 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 56))(v4, 6);
      v35(v34, 0, v36, v58, 0);
      v37 = *((_DWORD *)this + 87);
      v38 = *(_DWORD *)v4;
      v39 = v4;
      v40 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v37 + 148);
      v41 = (*(int (__fastcall **)(int, int))(v38 + 56))(v39, 6);
      v40(v37, 1, v41, v58, 0);
      v33 = *((float **)this + 87);
    }
    v42 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
    v50[1] = v42 - v26;
    v50[3] = v42;
    v50[2] = v26;
    v50[0] = 0;
    glitch::gui::IGUIElement::setRelativePosition(v33, v50);
    return glitch::gui::IGUIElement::setAlignment(*((float *)this + 87), 0, 1, 1, 1);
  }
}


// ===== 5496b4 glitch::gui::CGUIScrollBar::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUIScrollBar::updateAbsolutePosition(glitch::gui::CGUIScrollBar *this)
{
  int v2; // r8
  int v3; // r6
  int v4; // r5
  float v5; // r8
  int v6; // r7
  int result; // r0
  int v8; // r5

  glitch::gui::IGUIElement::updateAbsolutePosition(this);
  glitch::gui::CGUIScrollBar::refreshControls(this);
  if ( *((_BYTE *)this + 369) )
  {
    v8 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
    result = (int)(float)((float)((float)*((int *)this + 93)
                                * (float)((float)((float)(*((_DWORD *)this + 12) - *((_DWORD *)this + 10))
                                                + (float)((float)v8 * -3.0))
                                        / (float)*((int *)this + 96)))
                        + (float)((float)v8 * 0.5));
    *((_DWORD *)this + 95) = v8;
    *((_DWORD *)this + 94) = result;
  }
  else
  {
    v2 = *((_DWORD *)this + 96);
    v3 = *((_DWORD *)this + 12);
    v4 = *((_DWORD *)this + 10);
    if ( v2 )
    {
      v6 = v3 - v4;
      v5 = (float)((float)(*((_DWORD *)this + 13) - *((_DWORD *)this + 11)) + (float)((float)(v3 - v4) * -3.0))
         / (float)v2;
    }
    else
    {
      v5 = 0.0;
      v6 = v3 - v4;
    }
    result = (int)(float)((float)((float)*((int *)this + 93) * v5) + (float)((float)v6 * 0.5));
    *((_DWORD *)this + 95) = v3 - v4;
    *((_DWORD *)this + 94) = result;
  }
  return result;
}


// ===== 549838 glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 54998c glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 549a38 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 549a3c glitch::gui::IGUIScrollBar::IGUIScrollBar(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIScrollBar::IGUIScrollBar(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 14;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 549cfc glitch::gui::CGUIScrollBar::CGUIScrollBar(bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool) =====
int __fastcall glitch::gui::CGUIScrollBar::CGUIScrollBar(int a1, char a2, int a3, int a4, int a5, int *a6, char a7)
{
  int v7; // r10
  int v8; // r7
  int v9; // r8
  int v12; // r1
  int v14[4]; // [sp+8h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 412) = 1;
  *(_DWORD *)(a1 + 404) = off_96FF94;
  *(_DWORD *)(a1 + 408) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 404] = off_96FFB4;
  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v14[2] = a6[2];
  v14[0] = v8;
  v14[1] = v9;
  v14[3] = v7;
  glitch::gui::IGUIScrollBar::IGUIScrollBar(a1, (int *)off_96FD9C, a3, a4, a5, v14);
  *(_BYTE *)(a1 + 369) = a2;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 404) = off_96FD6C;
  *(_DWORD *)(a1 + 384) = 100;
  *(_DWORD *)(a1 + 388) = 10;
  *(_DWORD *)a1 = off_96FCB8;
  *(_DWORD *)(a1 + 408) = off_96FD8C;
  *(_DWORD *)(a1 + 392) = 50;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_BYTE *)(a1 + 370) = 0;
  *(_BYTE *)(a1 + 371) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  glitch::gui::CGUIScrollBar::refreshControls((glitch::gui::CGUIScrollBar *)a1);
  *(_BYTE *)(a1 + 155) = a7;
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v12);
  glitch::gui::CGUIScrollBar::setPos((glitch::gui::CGUIScrollBar *)a1, 0);
  return a1;
}


// ===== 549e3c glitch::gui::CGUIScrollBar::CGUIScrollBar(bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool) =====
int __fastcall glitch::gui::CGUIScrollBar::CGUIScrollBar(
        int a1,
        int *a2,
        char a3,
        int a4,
        int a5,
        int a6,
        int *a7,
        char a8)
{
  int v10; // lr
  int v11; // r6
  int v12; // r4
  int v14; // r3
  int v15; // r1
  int v17[4]; // [sp+8h] [bp-10h] BYREF

  v10 = a7[3];
  v11 = *a7;
  v12 = a7[1];
  v17[2] = a7[2];
  v17[3] = v10;
  v17[0] = v11;
  v17[1] = v12;
  glitch::gui::IGUIScrollBar::IGUIScrollBar(a1, a2 + 1, a4, a5, a6, v17);
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 384) = 100;
  *(_DWORD *)(a1 + 388) = 10;
  *(_DWORD *)(a1 + 392) = 50;
  *(_BYTE *)(a1 + 369) = a3;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_BYTE *)(a1 + 370) = 0;
  *(_BYTE *)(a1 + 371) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  glitch::gui::CGUIScrollBar::refreshControls((glitch::gui::CGUIScrollBar *)a1);
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 155) = a8;
  glitch::gui::IGUIElement::setTabOrder(a1, v15);
  glitch::gui::CGUIScrollBar::setPos((glitch::gui::CGUIScrollBar *)a1, 0);
  return a1;
}


// ===== 549f44 glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  *(_DWORD *)this = off_96FAA0;
  *((_DWORD *)this + 86) = off_96FB54;
  *((_DWORD *)this + 87) = off_96FB74;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96FB84);
}


// ===== 549f98 `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  glitch::gui::IGUIScrollBar::~IGUIScrollBar((glitch::gui::IGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 549fa8 `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  glitch::gui::IGUIScrollBar::~IGUIScrollBar((glitch::gui::IGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 549fb8 glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3

  v1 = *((_DWORD **)this + 86);
  *(_DWORD *)this = off_96FCB8;
  *((_DWORD *)this + 101) = off_96FD6C;
  *((_DWORD *)this + 102) = off_96FD8C;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 87);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  *(_DWORD *)this = off_96FDD8;
  *(int *)((char *)&elf_hash_bucket[46] + (_DWORD)this) = (int)off_96FE8C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_96FEAC;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96FDA0);
}


// ===== 54a06c glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  glitch::gui::CGUIScrollBar::~CGUIScrollBar(this);
  LC_API_FREE_0(this);
}


// ===== 54a088 glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  int v7; // r3
  int *v8; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 86);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 87);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = a2[1];
  v8 = a2 + 1;
  *(_DWORD *)this = v7;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 12)) = v8[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v8[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v8 + 1);
}


// ===== 54a12c glitch::gui::CGUIScrollBar::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
float __fastcall glitch::gui::CGUIScrollBar::deserializeAttributes(int a1, int a2)
{
  char v4; // r0
  float v5; // r2
  void (__fastcall *v6)(int, int); // r6
  int v7; // r0
  void (__fastcall *v8)(int, int); // r6
  int v9; // r0
  void (__fastcall *v10)(int, int); // r6
  int v11; // r0
  int v12; // r3
  int v13; // r0
  void (__fastcall *v14)(int, int); // r5
  int v15; // r0

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Horizontal");
  v5 = *(float *)a1;
  *(_BYTE *)(a1 + 369) = v4;
  v6 = *(void (__fastcall **)(int, int))(LODWORD(v5) + 128);
  v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "Max");
  v6(a1, v7);
  v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 152);
  v9 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 88))(a2, "Value");
  v8(a1, v9);
  v10 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 136);
  v11 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "SmallStep");
  v10(a1, v11);
  v12 = *(_DWORD *)a2;
  v13 = a2;
  v14 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 144);
  v15 = (*(int (__fastcall **)(int, const char *))(v12 + 88))(v13, "LargeStep");
  v14(a1, v15);
  return glitch::gui::CGUIScrollBar::refreshControls((glitch::gui::CGUIScrollBar *)a1);
}


// ===== 54a228 glitch::gui::CGUIScrollBar::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIScrollBar::onEvent(glitch::gui::CGUIScrollBar *this, float *a2)
{
  float v4; // r3
  int v5; // r3
  int v6; // r3
  int v8; // r6
  int v9; // r3
  void (__fastcall *v10)(glitch::gui::CGUIScrollBar *, int); // r6
  int v11; // r0
  int v12; // r3
  int PosFromMousePos; // r0
  char v14; // r2
  int v15; // r3
  int v16; // r6
  int v17; // r3
  int v18; // r3
  int v19; // r1
  char v20; // r2
  int v21; // r0
  int v22; // r1
  char v23; // r3
  int v24; // r1
  int v25; // r3
  int v26; // r3
  int v27; // r1
  int v28; // r3
  int v29; // r3
  int v30; // r1
  int v31; // r7
  int v32; // r1
  _DWORD v33[6]; // [sp+0h] [bp-64h] BYREF
  _DWORD v34[6]; // [sp+18h] [bp-4Ch] BYREF
  _DWORD v35[6]; // [sp+30h] [bp-34h] BYREF
  _DWORD v36[7]; // [sp+48h] [bp-1Ch] BYREF

  if ( !*((_BYTE *)this + 153) )
    goto LABEL_9;
  v4 = *a2;
  if ( *(_DWORD *)a2 == 1 )
  {
    v9 = *((_DWORD *)a2 + 5);
    switch ( v9 )
    {
      case 0:
        v18 = *((_DWORD *)a2 + 2);
        v19 = *((_DWORD *)a2 + 3);
        if ( v18 < *((_DWORD *)this + 18)
          || v19 < *((_DWORD *)this + 19)
          || v18 > *((_DWORD *)this + 20)
          || v19 > *((_DWORD *)this + 21) )
        {
          goto LABEL_9;
        }
        v20 = 1;
        *((_BYTE *)this + 368) = 1;
        v21 = *((_DWORD *)a2 + 2);
        v22 = *((_DWORD *)a2 + 3);
        if ( v21 < *((_DWORD *)this + 88)
          || v22 < *((_DWORD *)this + 89)
          || v21 > *((_DWORD *)this + 90)
          || v22 > *((_DWORD *)this + 91) )
        {
          v23 = 1;
          v20 = 0;
        }
        else
        {
          v23 = 0;
        }
        *((_BYTE *)this + 370) = v20;
        *((_BYTE *)this + 371) = v23;
        *((_DWORD *)this + 99) = glitch::gui::CGUIScrollBar::getPosFromMousePos(
                                   this,
                                   *((_DWORD *)a2 + 2),
                                   *((_DWORD *)a2 + 3));
        return 1;
      case 3:
      case 6:
        if ( !*((_BYTE *)this + 368) )
          goto LABEL_9;
        if ( v9 == 3 )
          *((_BYTE *)this + 368) = 0;
        PosFromMousePos = glitch::gui::CGUIScrollBar::getPosFromMousePos(this, *((_DWORD *)a2 + 2), *((_DWORD *)a2 + 3));
        v14 = *((_BYTE *)this + 370);
        v15 = *((_DWORD *)this + 93);
        v16 = v15;
        if ( v14 )
          goto LABEL_21;
        v30 = *((_DWORD *)a2 + 2);
        v31 = *((_DWORD *)a2 + 3);
        if ( v30 < *((_DWORD *)this + 18)
          || v31 < *((_DWORD *)this + 19)
          || v30 > *((_DWORD *)this + 20)
          || v31 > *((_DWORD *)this + 21) )
        {
          *((_BYTE *)this + 371) = 0;
          if ( *((_DWORD *)a2 + 5) == 6 )
            return 1;
        }
        else
        {
          if ( v30 < *((_DWORD *)this + 88)
            || v31 < *((_DWORD *)this + 89)
            || v30 > *((_DWORD *)this + 90)
            || v31 > *((_DWORD *)this + 91) )
          {
            v14 = 1;
            v32 = 0;
          }
          else
          {
            v32 = 1;
          }
          *((_BYTE *)this + 371) = v14;
          *((_BYTE *)this + 370) = v32;
          if ( v32 )
          {
LABEL_21:
            (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152))(this, PosFromMousePos);
            v15 = *((_DWORD *)this + 93);
            goto LABEL_22;
          }
        }
        *((_DWORD *)this + 99) = PosFromMousePos;
LABEL_22:
        if ( v15 != v16 )
        {
          v17 = *((_DWORD *)this + 9);
          if ( v17 )
          {
            v33[4] = 6;
            v33[2] = this;
            v33[3] = 0;
            v33[0] = 0;
            (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v17 + 8))(v17, v33);
            return 1;
          }
        }
        break;
      case 7:
        if ( !(*(int (__fastcall **)(_DWORD, glitch::gui::CGUIScrollBar *))(**((_DWORD **)this + 84) + 28))(
                *((_DWORD *)this + 84),
                this) )
          goto LABEL_9;
        v10 = *(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152);
        v11 = (*(int (__fastcall **)(glitch::gui::CGUIScrollBar *))(*(_DWORD *)this + 148))(this);
        v10(this, v11 + (int)a2[4] * -*((_DWORD *)this + 97));
        v12 = *((_DWORD *)this + 9);
        v34[4] = 6;
        v34[3] = 0;
        v34[0] = 0;
        v34[2] = this;
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 8))(v12, v34);
        return (int)&dword_0 + 1;
      default:
        goto LABEL_9;
    }
    return 1;
  }
  if ( LODWORD(v4) == 2 )
  {
    if ( !*((_BYTE *)a2 + 16) )
    {
LABEL_9:
      v6 = *((_DWORD *)this + 9);
      if ( v6 )
        return (*(int (__fastcall **)(_DWORD, float *))(*(_DWORD *)v6 + 8))(*((_DWORD *)this + 9), a2);
      else
        return 0;
    }
    v8 = *((_DWORD *)this + 93);
    switch ( *((_DWORD *)a2 + 3) )
    {
      case '!':
        v27 = *((_DWORD *)this + 98);
        goto LABEL_43;
      case '"':
        v24 = *((_DWORD *)this + 98);
        goto LABEL_37;
      case '#':
        (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, _DWORD))(*(_DWORD *)this + 152))(
          this,
          *((_DWORD *)this + 96));
        v25 = *((_DWORD *)this + 93);
        break;
      case '$':
        (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, _DWORD))(*(_DWORD *)this + 152))(this, 0);
        v25 = *((_DWORD *)this + 93);
        break;
      case '%':
      case '&':
        v27 = *((_DWORD *)this + 97);
LABEL_43:
        (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152))(this, v8 - v27);
        v25 = *((_DWORD *)this + 93);
        break;
      case '\'':
      case '(':
        v24 = *((_DWORD *)this + 97);
LABEL_37:
        (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152))(this, v8 + v24);
        v25 = *((_DWORD *)this + 93);
        break;
      default:
        goto LABEL_9;
    }
    if ( v8 != v25 )
    {
      v26 = *((_DWORD *)this + 9);
      v36[4] = 6;
      v36[3] = 0;
      v36[0] = 0;
      v36[2] = this;
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v26 + 8))(v26, v36);
      return 1;
    }
    return 1;
  }
  if ( v4 != 0.0 )
    goto LABEL_9;
  v5 = *((_DWORD *)a2 + 4);
  if ( v5 != 5 )
  {
    if ( !v5 && *((glitch::gui::CGUIScrollBar **)a2 + 2) == this )
      *((_BYTE *)this + 368) = 0;
    goto LABEL_9;
  }
  v28 = *((_DWORD *)a2 + 2);
  if ( v28 == *((_DWORD *)this + 86) )
  {
    (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152))(
      this,
      *((_DWORD *)this + 93) - *((_DWORD *)this + 97));
  }
  else if ( v28 == *((_DWORD *)this + 87) )
  {
    (*(void (__fastcall **)(glitch::gui::CGUIScrollBar *, int))(*(_DWORD *)this + 152))(
      this,
      *((_DWORD *)this + 97) + *((_DWORD *)this + 93));
  }
  v29 = *((_DWORD *)this + 9);
  v35[4] = 6;
  v35[3] = 0;
  v35[0] = 0;
  v35[2] = this;
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v29 + 8))(v29, v35);
  return 1;
}


// ===== 54a6dc glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  *(_DWORD *)this = off_96FAA0;
  *((_DWORD *)this + 86) = off_96FB54;
  *((_DWORD *)this + 87) = off_96FB74;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_96FB84);
  LC_API_FREE_0(this);
}


// ===== 54a738 `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  glitch::gui::IGUIScrollBar::~IGUIScrollBar((glitch::gui::IGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54a748 `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIScrollBar::~IGUIScrollBar(glitch::gui::IGUIScrollBar *this)
{
  glitch::gui::IGUIScrollBar::~IGUIScrollBar((glitch::gui::IGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54a758 glitch::gui::CGUIScrollBar::draw(void) =====
int __fastcall glitch::gui::CGUIScrollBar::draw(int this)
{
  int v1; // r4
  int v2; // r5
  unsigned int RealTime; // r0
  int v4; // r6
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int (__fastcall *v12)(int, int, int *, int, int); // r8
  int v13; // r3
  int v14; // r2
  int v15; // r4
  int *i; // r5
  int *v17; // t1
  int v18; // r2
  _DWORD v19[6]; // [sp+14h] [bp-1Ch] BYREF
  int v20; // [sp+2Ch] [bp-4h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v2 = this;
    if ( this )
    {
      RealTime = glitch::os::Timer::getRealTime((glitch::os::Timer *)this);
      if ( *(_BYTE *)(v1 + 368)
        && !*(_BYTE *)(v1 + 370)
        && *(_BYTE *)(v1 + 371)
        && RealTime > *(_DWORD *)(v1 + 400) + 200 )
      {
        v4 = *(_DWORD *)(v1 + 372);
        v5 = *(_DWORD *)(v1 + 392);
        v6 = *(_DWORD *)(v1 + 396);
        *(_DWORD *)(v1 + 400) = RealTime;
        v7 = v5 + v4;
        if ( v6 < v5 + v4 )
        {
          v7 = v4 - v5;
          if ( v6 > v4 - v5 )
            v7 = v6;
        }
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v1 + 152))(v1, v7);
        if ( *(_DWORD *)(v1 + 372) != v4 )
        {
          v8 = *(_DWORD *)(v1 + 36);
          if ( v8 )
          {
            v19[4] = 6;
            v19[3] = 0;
            v19[0] = 0;
            v19[2] = v1;
            (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 8))(v8, v19);
          }
        }
      }
      v9 = *(_DWORD *)(v1 + 60);
      v10 = *(_DWORD *)(v1 + 64);
      v11 = *(_DWORD *)(v1 + 68);
      *(_DWORD *)(v1 + 352) = *(_DWORD *)(v1 + 56);
      *(_DWORD *)(v1 + 356) = v9;
      *(_DWORD *)(v1 + 360) = v10;
      *(_DWORD *)(v1 + 364) = v11;
      v12 = *(int (__fastcall **)(int, int, int *, int, int))(*(_DWORD *)v2 + 100);
      v20 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 16);
      this = v12(v2, v1, &v20, v1 + 352, v1 + 72);
      if ( *(_DWORD *)(v1 + 384) )
      {
        v13 = *(_DWORD *)(v1 + 380);
        if ( *(_BYTE *)(v1 + 369) )
        {
          v14 = *(_DWORD *)(v1 + 376) + *(_DWORD *)(v1 + 56) + *(_DWORD *)(v1 + 52) - *(_DWORD *)(v1 + 44) - v13 / 2;
          *(_DWORD *)(v1 + 360) = v14 + v13;
          *(_DWORD *)(v1 + 352) = v14;
        }
        else
        {
          v18 = *(_DWORD *)(v1 + 376) + *(_DWORD *)(v1 + 60) + *(_DWORD *)(v1 + 48) - v13 / 2 - *(_DWORD *)(v1 + 40);
          *(_DWORD *)(v1 + 364) = v18 + v13;
          *(_DWORD *)(v1 + 356) = v18;
        }
        this = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)v2 + 64))(v2, v1, v1 + 352, v1 + 72);
      }
      if ( *(_BYTE *)(v1 + 152) )
      {
        v17 = *(int **)(v1 + 4);
        v15 = v1 + 4;
        for ( i = v17; i != (int *)v15; i = (int *)*i )
          this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
      }
    }
  }
  return this;
}


// ===== 54a998 `virtual thunk to'glitch::gui::CGUIScrollBar::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
float __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIScrollBar::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 54a9a8 `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  glitch::gui::CGUIScrollBar::~CGUIScrollBar((glitch::gui::CGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54a9b8 `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  glitch::gui::CGUIScrollBar::~CGUIScrollBar((glitch::gui::CGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54a9c8 `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  glitch::gui::CGUIScrollBar::~CGUIScrollBar((glitch::gui::CGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54a9d8 `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::~CGUIScrollBar(glitch::gui::CGUIScrollBar *this)
{
  glitch::gui::CGUIScrollBar::~CGUIScrollBar((glitch::gui::CGUIScrollBar *)((char *)this
                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54a9e8 `virtual thunk to'glitch::gui::CGUIScrollBar::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIScrollBar::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIScrollBar::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 54a9f8 glitch::gui::IGUISkin::getType(void) =====
int __fastcall glitch::gui::IGUISkin::getType(glitch::gui::IGUISkin *this)
{
  return 3;
}


// ===== 54aa00 glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  ;
}


// ===== 54aa04 `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  glitch::gui::IGUISkin::~IGUISkin((glitch::gui::IGUISkin *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54aa14 `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  glitch::gui::IGUISkin::~IGUISkin((glitch::gui::IGUISkin *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54aa24 glitch::gui::CGUISkin::getColor(glitch::gui::EGUI_DEFAULT_COLOR) =====
int __fastcall glitch::gui::CGUISkin::getColor(int a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  unsigned __int8 v4; // r4
  unsigned __int8 v5; // r12
  _BYTE *v6; // r1

  if ( a2 <= 0x14 )
  {
    v6 = (_BYTE *)(a1 + 4 * a2);
    v4 = v6[4];
    v5 = v6[5];
    a3 = v6[6];
    a4 = v6[7];
  }
  return v4 | (unsigned __int16)(v5 << 8) | (a3 << 16) & 0xFFFFFF | (a4 << 24);
}


// ===== 54aa64 glitch::gui::CGUISkin::setColor(glitch::gui::EGUI_DEFAULT_COLOR,glitch::video::SColor) =====
int __fastcall glitch::gui::CGUISkin::setColor(int result, unsigned int a2, int a3)
{
  if ( a2 <= 0x14 )
    *(_DWORD *)(result + 4 * a2 + 4) = a3;
  return result;
}


// ===== 54aaa0 glitch::gui::CGUISkin::getSize(glitch::gui::EGUI_DEFAULT_SIZE) =====
int __fastcall glitch::gui::CGUISkin::getSize(int result, unsigned int a2)
{
  bool v2; // cc

  v2 = a2 > 9;
  if ( a2 > 9 )
    result = 0;
  else
    a2 += 22;
  if ( !v2 )
    return *(_DWORD *)(result + 4 * a2);
  return result;
}


// ===== 54aab4 glitch::gui::CGUISkin::setSize(glitch::gui::EGUI_DEFAULT_SIZE,int) =====
int __fastcall glitch::gui::CGUISkin::setSize(int result, unsigned int a2, int a3)
{
  if ( a2 <= 9 )
    *(_DWORD *)(result + 4 * (a2 + 22)) = a3;
  return result;
}


// ===== 54aac4 glitch::gui::CGUISkin::getFont(glitch::gui::EGUI_DEFAULT_FONT) =====
int __fastcall glitch::gui::CGUISkin::getFont(int a1, unsigned int a2)
{
  int v2; // r1

  if ( a2 <= 9 && (v2 = a1 + 4 * a2, *(_DWORD *)(v2 + 220)) )
    return *(_DWORD *)(v2 + 220);
  else
    return *(_DWORD *)(a1 + 220);
}


// ===== 54aaf0 glitch::gui::CGUISkin::setFont(glitch::gui::IGUIFont *,glitch::gui::EGUI_DEFAULT_FONT) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUISkin::setFont(
        glitch::IReferenceCounted *result,
        int a2,
        unsigned int a3)
{
  glitch::IReferenceCounted *v3; // r4
  unsigned int v5; // r6

  v3 = result;
  if ( a3 <= 9 )
  {
    v5 = a3 + 54;
    result = *((glitch::IReferenceCounted **)result + a3 + 55);
    if ( result )
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
    *((_DWORD *)v3 + v5 + 1) = a2;
    if ( a2 )
      ++*(_DWORD *)(a2 + 4);
  }
  return result;
}


// ===== 54ab38 glitch::gui::CGUISkin::getSpriteBank(void) =====
int __fastcall glitch::gui::CGUISkin::getSpriteBank(glitch::gui::CGUISkin *this)
{
  return *((_DWORD *)this + 60);
}


// ===== 54ab40 glitch::gui::CGUISkin::setSpriteBank(glitch::gui::IGUISpriteBank *) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUISkin::setSpriteBank(int a1, int a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *(glitch::IReferenceCounted **)(a1 + 240);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  *(_DWORD *)(a1 + 240) = a2;
  return result;
}


// ===== 54ab74 glitch::gui::CGUISkin::getIcon(glitch::gui::EGUI_DEFAULT_ICON) =====
int __fastcall glitch::gui::CGUISkin::getIcon(int result, unsigned int a2)
{
  bool v2; // cc

  v2 = a2 > 0x16;
  if ( a2 > 0x16 )
    result = 0;
  else
    a2 += 32;
  if ( !v2 )
    return *(_DWORD *)(result + 4 * a2);
  return result;
}


// ===== 54ab88 glitch::gui::CGUISkin::setIcon(glitch::gui::EGUI_DEFAULT_ICON,uint) =====
int __fastcall glitch::gui::CGUISkin::setIcon(int result, unsigned int a2, int a3)
{
  if ( a2 <= 0x16 )
    *(_DWORD *)(result + 4 * (a2 + 32)) = a3;
  return result;
}


// ===== 54ab98 glitch::gui::CGUISkin::getDefaultText(glitch::gui::EGUI_DEFAULT_TEXT) =====
int __fastcall glitch::gui::CGUISkin::getDefaultText(int result, unsigned int a2)
{
  bool v2; // cc

  v2 = a2 > 7;
  if ( a2 > 7 )
    result = *(_DWORD *)(result + 312);
  else
    a2 = result + 72 * a2;
  if ( !v2 )
    return *(_DWORD *)(a2 + 312);
  return result;
}


// ===== 54abb0 glitch::gui::CGUISkin::drawIcon(glitch::gui::IGUIElement *,glitch::gui::EGUI_DEFAULT_ICON,glitch::core::position2d<int>,uint,uint,bool,glitch::core::rect<int> const*) =====
int __fastcall glitch::gui::CGUISkin::drawIcon(
        int result,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        unsigned __int8 a7,
        int a8)
{
  int v8; // r4
  int v9; // r1
  int (__fastcall *v10)(int, int, int, int, _BYTE *, int, int, _DWORD, int); // r12
  _BYTE v11[8]; // [sp+1Ch] [bp-8h] BYREF

  v8 = *(_DWORD *)(result + 240);
  if ( v8 )
  {
    v9 = *(_DWORD *)(result + 4 * (a3 + 32));
    v10 = *(int (__fastcall **)(int, int, int, int, _BYTE *, int, int, _DWORD, int))(*(_DWORD *)v8 + 36);
    v11[3] = -1;
    v11[2] = 0;
    v11[0] = 0;
    v11[1] = 0;
    return v10(v8, v9, a4, a8, v11, a5, a6, a7, 1);
  }
  return result;
}


// ===== 54ac2c glitch::gui::CGUISkin::getType(void) =====
int __fastcall glitch::gui::CGUISkin::getType(glitch::gui::CGUISkin *this)
{
  return *((_DWORD *)this + 207);
}

