// ===== 6acd9c `virtual thunk to'glitch::gui::CGUIComboBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall `virtual thunk to'glitch::gui::CGUIComboBox::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIComboBox::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 6acdac glitch::gui::CGUIContextMenu::getItemCount(void) =====
int __fastcall glitch::gui::CGUIContextMenu::getItemCount(glitch::gui::CGUIContextMenu *this)
{
  return -1431655765 * ((*((_DWORD *)this + 88) - *((_DWORD *)this + 87)) >> 5);
}


// ===== 6acdd4 glitch::gui::CGUIContextMenu::setSubMenu(uint,glitch::gui::CGUIContextMenu*) =====
unsigned int __fastcall glitch::gui::CGUIContextMenu::setSubMenu(
        glitch::gui::CGUIContextMenu *this,
        unsigned int a2,
        glitch::gui::CGUIContextMenu *a3)
{
  int v4; // r3
  unsigned int result; // r0
  unsigned int v7; // r6
  unsigned int v8; // r3
  _DWORD *v9; // r2

  v4 = *((_DWORD *)this + 87);
  result = -1431655765 * ((*((_DWORD *)this + 88) - v4) >> 5);
  if ( a2 < result )
  {
    v7 = 96 * a2;
    v8 = v4 + 96 * a2;
    v9 = *(_DWORD **)(v8 + 88);
    if ( v9 )
    {
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
      v8 = *((_DWORD *)this + 87) + v7;
    }
    *(_DWORD *)(v8 + 88) = a3;
    (*(void (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD))(*(_DWORD *)a3 + 48))(a3, 0);
    if ( *(_DWORD *)(*((_DWORD *)this + 87) + v7 + 88) )
    {
      ++*(_DWORD *)((char *)a3 + *(_DWORD *)(*(_DWORD *)a3 - 16) + 4);
      *((_BYTE *)a3 + 376) = 0;
      if ( a3 == (glitch::gui::CGUIContextMenu *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 20))(*((_DWORD *)this + 84)) )
        (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 16))(
          *((_DWORD *)this + 84),
          this);
    }
    return (*(int (__fastcall **)(glitch::gui::CGUIContextMenu *))(*(_DWORD *)this + 188))(this);
  }
  return result;
}


// ===== 6aced4 glitch::gui::CGUIContextMenu::addSeparator(void) =====
int __fastcall glitch::gui::CGUIContextMenu::addSeparator(glitch::gui::CGUIContextMenu *this)
{
  return (*(int (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)this + 128))(
           this,
           0,
           -1,
           1,
           0,
           0);
}


// ===== 6acf08 glitch::gui::CGUIContextMenu::getItemText(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::getItemText(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 87);
  v3 = (*((_DWORD *)this + 88) - v2) >> 5;
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


// ===== 6acf44 glitch::gui::CGUIContextMenu::isItemEnabled(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::isItemEnabled(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 87);
  v3 = (*((_DWORD *)this + 88) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(unsigned __int8 *)(v2 + 73);
  return result;
}


// ===== 6acf80 glitch::gui::CGUIContextMenu::isItemChecked(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::isItemChecked(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 87);
  v3 = (*((_DWORD *)this + 88) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(unsigned __int8 *)(v2 + 74);
  return result;
}


// ===== 6acfbc glitch::gui::CGUIContextMenu::setItemEnabled(uint,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::setItemEnabled(
        glitch::gui::CGUIContextMenu *this,
        unsigned int a2,
        bool a3)
{
  int v3; // r3
  int v4; // r12
  int result; // r0

  v3 = *((_DWORD *)this + 87);
  v4 = (*((_DWORD *)this + 88) - v3) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    *(_BYTE *)(v3 + 96 * a2 + 73) = a3;
    return 96;
  }
  return result;
}


// ===== 6acff4 glitch::gui::CGUIContextMenu::setItemChecked(uint,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::setItemChecked(
        glitch::gui::CGUIContextMenu *this,
        unsigned int a2,
        bool a3)
{
  int v3; // r3
  int v4; // r12
  int result; // r0

  v3 = *((_DWORD *)this + 87);
  v4 = (*((_DWORD *)this + 88) - v3) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    *(_BYTE *)(v3 + 96 * a2 + 74) = a3;
    return 96;
  }
  return result;
}


// ===== 6ad02c glitch::gui::CGUIContextMenu::sendClick(glitch::core::position2d<int> const&) =====
int __fastcall glitch::gui::CGUIContextMenu::sendClick(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r2
  int v6; // r4
  int v7; // r7
  unsigned int v8; // r0
  int v9; // r1
  int v10; // r1
  int result; // r0
  int v12; // r0
  int v13; // r3
  _DWORD v14[7]; // [sp+0h] [bp-1Ch] BYREF

  v2 = a1[87];
  v3 = a1[88];
  if ( v3 - v2 <= 95 )
  {
LABEL_7:
    if ( (*(int (__fastcall **)(_DWORD *, int))(*a1 + 16))(a1, a2) )
      goto LABEL_8;
    return 0;
  }
  v6 = 0;
  v7 = 0;
  while ( !*(_DWORD *)(v2 + v6 + 88) )
  {
LABEL_6:
    ++v7;
    v6 += 96;
    if ( v7 >= -1431655765 * ((v3 - v2) >> 5) )
      goto LABEL_7;
  }
  if ( !(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + v6 + 88) + 44))(*(_DWORD *)(v2 + v6 + 88)) )
  {
    v2 = a1[87];
    v3 = a1[88];
    goto LABEL_6;
  }
  v12 = *(_DWORD *)(a1[87] + v6 + 88);
  result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 196))(v12, a2);
  if ( result )
    return result;
  if ( !(*(int (__fastcall **)(_DWORD *, int))(*a1 + 16))(a1, a2) )
    return 0;
LABEL_8:
  v8 = a1[86];
  v9 = a1[87];
  if ( v8 >= -1431655765 * ((a1[88] - v9) >> 5) )
    return 0;
  v10 = v9 + 96 * v8;
  if ( !*(_BYTE *)(v10 + 73) || *(_BYTE *)(v10 + 72) || *(_DWORD *)(v10 + 88) )
    return 2;
  v13 = a1[9];
  v14[3] = 0;
  v14[4] = 18;
  v14[0] = 0;
  v14[2] = a1;
  if ( !v13 )
  {
    v13 = a1[93];
    if ( !v13 )
      return 1;
  }
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v13 + 8))(v13, v14);
  return 1;
}


// ===== 6ad1d0 glitch::gui::CGUIContextMenu::getHRect(glitch::gui::CGUIContextMenu::SItem const&,glitch::core::rect<int> const&) =====
_DWORD *__fastcall glitch::gui::CGUIContextMenu::getHRect(_DWORD *result, int a2, int a3, _DWORD *a4)
{
  int v4; // r12
  int v5; // r3

  *result = *a4;
  v4 = a4[1];
  result[1] = v4;
  result[2] = a4[2];
  result[3] = a4[3];
  v5 = v4 + *(_DWORD *)(a3 + 84);
  result[1] = v5;
  result[3] = v5 + *(_DWORD *)(a3 + 80);
  return result;
}


// ===== 6ad214 glitch::gui::CGUIContextMenu::getRect(glitch::gui::CGUIContextMenu::SItem const&,glitch::core::rect<int> const&) =====
int *__fastcall glitch::gui::CGUIContextMenu::getRect(int *result, int a2, int a3, int *a4)
{
  int v4; // r12
  int v5; // r4
  int v6; // r3
  int v7; // r2

  v4 = *a4;
  *result = *a4;
  v5 = a4[1];
  result[1] = v5;
  result[2] = a4[2];
  result[3] = a4[3];
  v6 = v5 + *(_DWORD *)(a3 + 84);
  result[1] = v6;
  v7 = *(_DWORD *)(a3 + 80);
  *result = v4 + 20;
  result[3] = v6 + v7;
  return result;
}


// ===== 6ad260 glitch::gui::CGUIContextMenu::recalculateSize(void) =====
int __fastcall glitch::gui::CGUIContextMenu::recalculateSize(glitch::gui::CGUIContextMenu *this)
{
  int v2; // r0
  int result; // r0
  int v4; // r9
  int v5; // r6
  int v6; // r3
  int v7; // r1
  int v8; // r2
  int v9; // r5
  int v10; // r11
  int v11; // r7
  int v12; // r10
  unsigned int v13; // r8
  int v14; // r7
  int v15; // r12
  int v16; // r3
  int v17; // r0
  int v18; // r6
  int v19; // r1
  int v20; // r2
  int v21; // r12
  int v22; // r5
  unsigned int v23; // r6
  int v24; // r3
  int v25; // r3
  int v26; // r2
  int v27; // [sp+4h] [bp-30h]
  _DWORD v28[2]; // [sp+8h] [bp-2Ch] BYREF
  int v29[4]; // [sp+10h] [bp-24h] BYREF
  int v30[2]; // [sp+20h] [bp-14h] BYREF
  int v31; // [sp+28h] [bp-Ch]
  int v32; // [sp+2Ch] [bp-8h]

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 40))(v2, 3);
  v4 = result;
  if ( result )
  {
    v5 = *((_DWORD *)this + 87);
    v6 = *((_DWORD *)this + 10);
    v7 = *((_DWORD *)this + 11);
    v8 = (*((_DWORD *)this + 88) - v5) >> 5;
    v9 = 0;
    v31 = 0;
    v32 = 0;
    v30[0] = v6;
    v30[1] = v7;
    if ( -1431655765 * v8 )
    {
      v12 = 100;
      v13 = 0;
      v14 = 3;
      v15 = 100;
      do
      {
        v18 = v5 + v9;
        v19 = v12;
        if ( *(_BYTE *)(v18 + 72) )
        {
          *(_DWORD *)(v18 + 76) = v15;
          *(_DWORD *)(*((_DWORD *)this + 87) + v9 + 80) = 10;
          v16 = *((_DWORD *)this + 87) + v9;
        }
        else
        {
          v27 = v15;
          (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*(_DWORD *)v4 + 28))(v28, v4, *(_DWORD *)(v18 + 68));
          *(_DWORD *)(v18 + 76) = v28[0];
          *(_DWORD *)(v18 + 80) = v28[1];
          *(_DWORD *)(*((_DWORD *)this + 87) + v9 + 76) += 40;
          v15 = v27;
          v16 = *((_DWORD *)this + 87) + v9;
          v19 = *(_DWORD *)(v16 + 76);
          if ( v19 < v12 )
            v19 = v12;
        }
        *(_DWORD *)(v16 + 84) = v14;
        v5 = *((_DWORD *)this + 87);
        ++v13;
        v17 = *(_DWORD *)(v5 + v9 + 80);
        v9 += 96;
        v14 += v17;
        v12 = v19;
      }
      while ( v13 < -1431655765 * ((*((_DWORD *)this + 88) - v5) >> 5) );
      v11 = v14 + 5;
      v10 = v19;
      v6 = *((_DWORD *)this + 10);
      v7 = *((_DWORD *)this + 11);
      if ( v11 <= 9 )
        v11 = 10;
    }
    else
    {
      v10 = 100;
      v11 = 10;
    }
    v31 = v10 + v6;
    v32 = v11 + v7;
    result = glitch::gui::IGUIElement::setRelativePosition((float *)this, v30);
    v20 = *((_DWORD *)this + 87);
    v21 = *((_DWORD *)this + 88);
    if ( -1431655765 * ((v21 - v20) >> 5) )
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v20 + v22;
        result = *(_DWORD *)(v20 + v22 + 88);
        ++v23;
        v22 += 96;
        if ( result )
        {
          v25 = *(_DWORD *)(v24 + 84);
          v26 = v25 + *(_DWORD *)(result + 68) - *(_DWORD *)(result + 60);
          v29[2] = *(_DWORD *)(result + 64) - 5 - *(_DWORD *)(result + 56) + v10;
          v29[3] = v26;
          v29[1] = v25;
          v29[0] = v10 - 5;
          result = glitch::gui::IGUIElement::setRelativePosition((float *)result, v29);
          v20 = *((_DWORD *)this + 87);
          v21 = *((_DWORD *)this + 88);
        }
      }
      while ( v23 < -1431655765 * ((v21 - v20) >> 5) );
    }
  }
  return result;
}


// ===== 6ad4d4 glitch::gui::CGUIContextMenu::getSelectedItem(void) =====
int __fastcall glitch::gui::CGUIContextMenu::getSelectedItem(glitch::gui::CGUIContextMenu *this)
{
  return *((_DWORD *)this + 86);
}


// ===== 6ad4dc glitch::gui::CGUIContextMenu::getSubMenu(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::getSubMenu(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 87);
  v3 = (*((_DWORD *)this + 88) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 88);
  return result;
}


// ===== 6ad518 glitch::gui::CGUIContextMenu::getItemCommandId(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::getItemCommandId(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 87);
  v3 = (*((_DWORD *)this + 88) - v2) >> 5;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = -1;
  else
    v2 += 96 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 92);
  return result;
}


// ===== 6ad554 glitch::gui::CGUIContextMenu::setItemCommandId(uint,int) =====
int __fastcall glitch::gui::CGUIContextMenu::setItemCommandId(
        glitch::gui::CGUIContextMenu *this,
        unsigned int a2,
        int a3)
{
  int v3; // r3
  int v4; // r12
  int result; // r0

  v3 = *((_DWORD *)this + 87);
  v4 = (*((_DWORD *)this + 88) - v3) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    *(_DWORD *)(v3 + 96 * a2 + 92) = a3;
    return 96;
  }
  return result;
}


// ===== 6ad58c glitch::gui::CGUIContextMenu::setEventParent(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUIContextMenu::setEventParent(
        glitch::gui::CGUIContextMenu *this,
        glitch::gui::IGUIElement *a2)
{
  int v2; // r3
  int v3; // r2
  int v6; // r1
  int result; // r0
  int v8; // r4
  unsigned int v9; // r5
  glitch::gui::CGUIContextMenu *v10; // r0
  int v11; // r1

  v2 = *((_DWORD *)this + 87);
  v3 = *((_DWORD *)this + 88);
  *((_DWORD *)this + 93) = a2;
  v6 = (v3 - v2) >> 5;
  result = 1431655765 * v6;
  if ( -1431655765 * v6 )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(glitch::gui::CGUIContextMenu **)(v2 + v8 + 88);
      ++v9;
      v8 += 96;
      if ( v10 )
      {
        glitch::gui::CGUIContextMenu::setEventParent(v10, a2);
        v2 = *((_DWORD *)this + 87);
        v3 = *((_DWORD *)this + 88);
      }
      v11 = (v3 - v2) >> 5;
      result = 1431655765 * v11;
    }
    while ( v9 < -1431655765 * v11 );
  }
  return result;
}


// ===== 6ad620 glitch::gui::CGUIContextMenu::hasOpenSubMenu(void) =====
int __fastcall glitch::gui::CGUIContextMenu::hasOpenSubMenu(glitch::gui::CGUIContextMenu *this)
{
  int v1; // r2
  int v2; // r1
  int v4; // r4
  unsigned int v5; // r5

  v1 = *((_DWORD *)this + 87);
  v2 = *((_DWORD *)this + 88);
  if ( !(-1431655765 * ((v2 - v1) >> 5)) )
    return 0;
  v4 = 0;
  v5 = 0;
  while ( !*(_DWORD *)(v1 + v4 + 88) )
  {
LABEL_6:
    ++v5;
    v4 += 96;
    if ( v5 >= -1431655765 * ((v2 - v1) >> 5) )
      return 0;
  }
  if ( !(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + v4 + 88) + 44))(*(_DWORD *)(v1 + v4 + 88)) )
  {
    v1 = *((_DWORD *)this + 87);
    v2 = *((_DWORD *)this + 88);
    goto LABEL_6;
  }
  return 1;
}


// ===== 6ad6c4 glitch::gui::CGUIContextMenu::closeAllSubMenus(void) =====
int __fastcall glitch::gui::CGUIContextMenu::closeAllSubMenus(glitch::gui::CGUIContextMenu *this)
{
  int v2; // r1
  int result; // r0
  int v4; // r4
  unsigned int v5; // r5
  int v6; // r3

  v2 = *((_DWORD *)this + 87);
  result = *((_DWORD *)this + 88);
  if ( -1431655765 * ((result - v2) >> 5) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(_DWORD *)(v2 + v4 + 88);
      ++v5;
      v4 += 96;
      if ( v6 )
      {
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v6 + 48))(v6, 0);
        v2 = *((_DWORD *)this + 87);
        result = *((_DWORD *)this + 88);
      }
    }
    while ( v5 < -1431655765 * ((result - v2) >> 5) );
  }
  return result;
}


// ===== 6ad75c `global constructor keyed to'.._source_glitch_gui_CGUIContextMenu.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIContextMenu.cpp()
{
  dword_9F76C4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76C0 = 1056964608;
}


// ===== 6ad77c std::priv::__ufill<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem,int>(glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem,int>(
        _DWORD *result,
        int a2,
        int a3)
{
  int v4; // r6
  _DWORD *i; // r4

  v4 = -1431655765 * ((a2 - (int)result) >> 5);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 24 )
    {
      i[16] = i;
      i[17] = i;
      result = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 68),
                 *(_BYTE **)(a3 + 64));
      --v4;
      *((_BYTE *)i + 72) = *(_BYTE *)(a3 + 72);
      *((_BYTE *)i + 73) = *(_BYTE *)(a3 + 73);
      *((_BYTE *)i + 74) = *(_BYTE *)(a3 + 74);
      i[19] = *(_DWORD *)(a3 + 76);
      i[20] = *(_DWORD *)(a3 + 80);
      i[21] = *(_DWORD *)(a3 + 84);
      i[22] = *(_DWORD *)(a3 + 88);
      i[23] = *(_DWORD *)(a3 + 92);
      if ( !v4 )
        break;
    }
  }
  return result;
}


// ===== 6ad818 std::priv::__ucopy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r4
  int v9; // r3

  v3 = (a2 - a1) >> 5;
  v4 = a1;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 <= 0 )
    return a3;
  v7 = -1431655765 * v3;
  v8 = a3;
  do
  {
    *(_DWORD *)(v8 + 64) = v8;
    *(_DWORD *)(v8 + 68) = v8;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      (_DWORD *)v8,
      *(_BYTE **)(v4 + 68),
      *(_BYTE **)(v4 + 64));
    --v7;
    *(_BYTE *)(v8 + 72) = *(_BYTE *)(v4 + 72);
    *(_BYTE *)(v8 + 73) = *(_BYTE *)(v4 + 73);
    *(_BYTE *)(v8 + 74) = *(_BYTE *)(v4 + 74);
    *(_DWORD *)(v8 + 76) = *(_DWORD *)(v4 + 76);
    *(_DWORD *)(v8 + 80) = *(_DWORD *)(v4 + 80);
    *(_DWORD *)(v8 + 84) = *(_DWORD *)(v4 + 84);
    *(_DWORD *)(v8 + 88) = *(_DWORD *)(v4 + 88);
    v9 = *(_DWORD *)(v4 + 92);
    v4 += 96;
    *(_DWORD *)(v8 + 92) = v9;
    v8 += 96;
  }
  while ( v7 );
  return a3 + 96 * v6;
}


// ===== 6ad8cc glitch::gui::CGUIContextMenu::setItemText(uint,wchar_t const*) =====
int __fastcall glitch::gui::CGUIContextMenu::setItemText(int this, unsigned int a2, const wchar_t *s)
{
  int v3; // r5
  int v5; // r4
  size_t v7; // r0

  v3 = *(_DWORD *)(this + 348);
  v5 = this;
  if ( a2 < -1431655765 * ((*(_DWORD *)(this + 352) - v3) >> 5) )
  {
    v7 = wcslen(s);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v3 + 96 * a2,
      s,
      &s[v7]);
    return (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 188))(v5);
  }
  return this;
}


// ===== 6ad938 std::priv::__copy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v4; // r4
  int v5; // r7
  int v6; // r8
  int v7; // r6
  int v8; // r5
  int v9; // r3

  v3 = (a2 - a1) >> 5;
  v4 = a1;
  v5 = a3;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v7 = -1431655765 * v3;
    v8 = a3;
    do
    {
      if ( v8 != v4 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v8,
          *(const wchar_t **)(v4 + 68),
          *(_DWORD **)(v4 + 64));
      --v7;
      *(_BYTE *)(v8 + 72) = *(_BYTE *)(v4 + 72);
      *(_BYTE *)(v8 + 73) = *(_BYTE *)(v4 + 73);
      *(_BYTE *)(v8 + 74) = *(_BYTE *)(v4 + 74);
      *(_DWORD *)(v8 + 76) = *(_DWORD *)(v4 + 76);
      *(_DWORD *)(v8 + 80) = *(_DWORD *)(v4 + 80);
      *(_DWORD *)(v8 + 84) = *(_DWORD *)(v4 + 84);
      *(_DWORD *)(v8 + 88) = *(_DWORD *)(v4 + 88);
      v9 = *(_DWORD *)(v4 + 92);
      v4 += 96;
      *(_DWORD *)(v8 + 92) = v9;
      v8 += 96;
    }
    while ( v7 );
    v5 += 96 * v6;
  }
  return v5;
}


// ===== 6ad9e8 glitch::gui::CGUIContextMenu::highlight(glitch::core::position2d<int> const&,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::highlight(_DWORD *a1, _DWORD *a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v6; // r8
  int v9; // r2
  int v10; // r5
  int v11; // r6
  int v12; // r11
  int v13; // r5
  int v14; // r6
  glitch::os::Timer *v15; // r0
  int v16; // r2
  unsigned int Time; // r0
  int v18; // r3
  int v19; // r12
  int v20; // r7
  int v21; // r5
  int v22; // r2
  int v24; // r0
  glitch::os::Timer *v25; // r0
  _DWORD v26[5]; // [sp+0h] [bp-14h] BYREF

  v3 = a1[87];
  v4 = a1[88];
  v6 = v4 - v3;
  v9 = v3;
  if ( v4 - v3 <= 95 )
  {
LABEL_7:
    v12 = -1;
LABEL_8:
    if ( v6 <= 95 )
    {
LABEL_23:
      a1[86] = v12;
      return 0;
    }
    else
    {
      v13 = 0;
      v14 = 0;
      while ( 1 )
      {
        v15 = (glitch::os::Timer *)(*(int (__fastcall **)(_DWORD *, _DWORD *, int, _DWORD *))(*a1 + 200))(
                                     v26,
                                     a1,
                                     v9 + v13,
                                     a1 + 14);
        v13 += 96;
        if ( v26[0] <= *a2 )
        {
          v16 = a2[1];
          if ( v26[1] <= v16 && *a2 <= v26[2] && v16 <= v26[3] )
            break;
        }
        v9 = a1[87];
        if ( ++v14 >= -1431655765 * ((a1[88] - v9) >> 5) )
          goto LABEL_23;
      }
      a1[86] = v14;
      Time = glitch::os::Timer::getTime(v15);
      v18 = a1[87];
      v19 = a1[88];
      a1[92] = Time;
      if ( v19 - v18 > 95 )
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = *(_DWORD *)(v18 + v20 + 88);
          if ( v22 )
          {
            if ( v21 == v14 )
            {
              if ( a3 )
              {
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 48))(v22, 1);
                v18 = a1[87];
                v19 = a1[88];
              }
            }
            else
            {
              (*(void (__fastcall **)(int))(*(_DWORD *)v22 + 48))(v22);
              v18 = a1[87];
              v19 = a1[88];
            }
          }
          ++v21;
          v20 += 96;
        }
        while ( v21 < -1431655765 * ((v19 - v18) >> 5) );
      }
      return 1;
    }
  }
  v10 = 0;
  v11 = 0;
  while ( !*(_DWORD *)(v3 + v10 + 88) )
  {
LABEL_6:
    v6 = v4 - v3;
    ++v11;
    v10 += 96;
    v9 = v3;
    if ( v11 >= -1431655765 * ((v4 - v3) >> 5) )
      goto LABEL_7;
  }
  if ( !(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + v10 + 88) + 44))(*(_DWORD *)(v3 + v10 + 88)) )
  {
    v3 = a1[87];
    v4 = a1[88];
    goto LABEL_6;
  }
  v24 = *(_DWORD *)(a1[87] + v10 + 88);
  v25 = (glitch::os::Timer *)(*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v24 + 192))(v24, a2, a3);
  if ( !v25 )
  {
    v9 = a1[87];
    v12 = v11;
    v6 = a1[88] - v9;
    goto LABEL_8;
  }
  a1[86] = v11;
  a1[92] = glitch::os::Timer::getTime(v25);
  return 1;
}


// ===== 6adc3c glitch::gui::CGUIContextMenu::setVisible(bool) =====
int __fastcall glitch::gui::CGUIContextMenu::setVisible(glitch::gui::CGUIContextMenu *this, bool a2)
{
  unsigned int Time; // r0
  int v5; // r2
  int v6; // r1
  int v7; // r3
  int result; // r0
  int v9; // r4
  unsigned int v10; // r5
  int v11; // r3
  int v12; // r3

  *((_DWORD *)this + 86) = -1;
  Time = glitch::os::Timer::getTime(this);
  v5 = *((_DWORD *)this + 87);
  v6 = *((_DWORD *)this + 88);
  *((_DWORD *)this + 92) = Time;
  v7 = (v6 - v5) >> 5;
  result = 1431655765 * v7;
  if ( -1431655765 * v7 )
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(_DWORD *)(v5 + v9 + 88);
      ++v10;
      v9 += 96;
      if ( v11 )
      {
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v11 + 48))(v11, 0);
        v5 = *((_DWORD *)this + 87);
        v6 = *((_DWORD *)this + 88);
      }
      v12 = (v6 - v5) >> 5;
      result = 1431655765 * v12;
    }
    while ( v10 < -1431655765 * v12 );
  }
  *((_BYTE *)this + 152) = a2;
  return result;
}


// ===== 6adcec std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 6adcf0 glitch::gui::IGUIContextMenu::IGUIContextMenu(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIContextMenu::IGUIContextMenu(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r6
  int v8; // r10
  int v9; // r8
  int v10; // r7
  int v11; // r0
  _DWORD *v14; // r3
  int v15; // r0
  int v16; // r12
  int v17; // r10
  int v18; // r8
  int v19; // r2
  int v20; // r1
  int v21; // r6
  int v22; // r7
  int v23; // r0
  int v24; // r1
  int v25; // r1
  int v26; // r2
  int v27; // r1
  int v28; // r3
  int v29; // r1
  bool v30; // cc
  int v31; // r3
  int v32; // r3

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[2];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 8) = a1 + 4;
  *(_DWORD *)(a1 + 4) = a1 + 4;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 28) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
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
  *(_DWORD *)(a1 + 340) = 3;
  *(_DWORD *)(a1 + 336) = a3;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v14 = *(_DWORD **)(a1 + 36);
  if ( v14 )
  {
    v15 = v14[15];
    v16 = v14[14];
    v17 = v14[16];
    v18 = v14[17];
    v19 = v15 + *(_DWORD *)(a1 + 68);
    v20 = v16 + *(_DWORD *)(a1 + 64);
    v21 = v15 + *(_DWORD *)(a1 + 60);
    v22 = v16 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v21;
    *(_DWORD *)(a1 + 84) = v19;
    *(_DWORD *)(a1 + 72) = v22;
    *(_DWORD *)(a1 + 80) = v20;
    *(_DWORD *)(a1 + 68) = v19;
    *(_DWORD *)(a1 + 112) = v17;
    *(_DWORD *)(a1 + 116) = v18;
    *(_DWORD *)(a1 + 104) = v16;
    *(_DWORD *)(a1 + 108) = v15;
    *(_DWORD *)(a1 + 56) = v22;
    *(_DWORD *)(a1 + 60) = v21;
    *(_DWORD *)(a1 + 64) = v20;
    v23 = v14[20];
    if ( v20 > v23 )
      *(_DWORD *)(a1 + 80) = v23;
    v24 = v14[21];
    if ( v19 > v24 )
      *(_DWORD *)(a1 + 84) = v24;
    v25 = v14[18];
    v26 = *(_DWORD *)(a1 + 72);
    if ( v25 > v26 )
    {
      *(_DWORD *)(a1 + 72) = v25;
      v26 = v25;
    }
    v27 = v14[19];
    v28 = *(_DWORD *)(a1 + 76);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 76) = v27;
      v28 = v27;
    }
    v29 = *(_DWORD *)(a1 + 84);
    v30 = v28 <= v29;
    v31 = *(_DWORD *)(a1 + 80);
    if ( !v30 )
      *(_DWORD *)(a1 + 76) = v29;
    if ( v26 > v31 )
      *(_DWORD *)(a1 + 72) = v31;
  }
  v32 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v32 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 6adfb8 glitch::gui::CGUIContextMenu::CGUIContextMenu(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::CGUIContextMenu(int a1, int a2, int a3, int a4, int *a5, char a6, char a7)
{
  int v7; // r10
  int v8; // r9
  int v9; // r11
  int v12[5]; // [sp+8h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 392) = 1;
  *(_DWORD *)(a1 + 388) = off_95B720;
  *(_DWORD *)(a1 + 384) = off_9871DC;
  *(_DWORD *)&byte_4[a1 + 384] = off_9871FC;
  v7 = a5[1];
  v8 = a5[2];
  v9 = a5[3];
  v12[0] = *a5;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  glitch::gui::IGUIContextMenu::IGUIContextMenu(a1, (int *)off_986FC4, a2, a3, a4, v12);
  *(_DWORD *)(a1 + 344) = -1;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)a1 = off_986EA8;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 376) = a7;
  *(_DWORD *)(a1 + 384) = off_986F90;
  *(_DWORD *)(a1 + 388) = off_986FB0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 360) = *a5;
  *(_DWORD *)(a1 + 364) = a5[1];
  glitch::gui::CGUIContextMenu::recalculateSize((glitch::gui::CGUIContextMenu *)a1);
  if ( a6 )
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 16))(*(_DWORD *)(a1 + 336), a1);
  *(_BYTE *)(a1 + 155) = 1;
  return a1;
}


// ===== 6ae100 glitch::gui::CGUIContextMenu::CGUIContextMenu(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::CGUIContextMenu(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        int *a6,
        char a7,
        char a8)
{
  int v9; // r7
  int v10; // r4
  int v11; // lr
  int v13; // r2
  int v15[4]; // [sp+8h] [bp-10h] BYREF

  v9 = *a6;
  v10 = a6[1];
  v11 = a6[2];
  v15[3] = a6[3];
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  glitch::gui::IGUIContextMenu::IGUIContextMenu(a1, a2 + 1, a3, a4, a5, v15);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 344) = -1;
  *(_BYTE *)(a1 + 376) = a8;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 360) = *a6;
  *(_DWORD *)(a1 + 364) = a6[1];
  glitch::gui::CGUIContextMenu::recalculateSize((glitch::gui::CGUIContextMenu *)a1);
  if ( a7 )
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 16))(*(_DWORD *)(a1 + 336), a1);
  *(_BYTE *)(a1 + 155) = 1;
  return a1;
}


// ===== 6ae1f4 glitch::gui::CGUIContextMenu::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIContextMenu::onEvent(glitch::gui::CGUIContextMenu *this, int a2)
{
  int v4; // r3
  glitch::gui::CGUIContextMenu *v5; // r4
  int v6; // r4
  int v8; // r3
  int v9; // r2
  int (__fastcall *v10)(glitch::gui::CGUIContextMenu *, _DWORD *); // r3
  int v11; // r2
  void (__fastcall *v12)(glitch::gui::CGUIContextMenu *, _DWORD *, int); // r3
  glitch::gui::CGUIContextMenu *v13; // r1
  glitch::gui::CGUIContextMenu *i; // r3
  bool v15; // zf
  _DWORD v16[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD v17[2]; // [sp+8h] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 153) )
    goto LABEL_5;
  if ( !*(_DWORD *)a2 )
  {
    v4 = *(_DWORD *)(a2 + 16);
    if ( v4 )
    {
      if ( v4 == 1 && *(glitch::gui::CGUIContextMenu **)(a2 + 8) == this && !*((_BYTE *)this + 376) )
        return 1;
    }
    else
    {
      v5 = *(glitch::gui::CGUIContextMenu **)(a2 + 8);
      if ( v5 == this )
      {
        v13 = *(glitch::gui::CGUIContextMenu **)(a2 + 12);
        if ( !v13 )
          goto LABEL_36;
        for ( i = *((glitch::gui::CGUIContextMenu **)v13 + 9); i; i = *((glitch::gui::CGUIContextMenu **)i + 9) )
        {
          v13 = i;
          v15 = v5 == i;
          if ( v5 != i )
            v15 = *((_DWORD *)i + 9) == 0;
          if ( v15 )
            goto LABEL_29;
        }
        i = v13;
LABEL_29:
        if ( v5 != i )
        {
LABEL_36:
          if ( *((_BYTE *)this + 376) )
          {
            glitch::gui::CGUIContextMenu::setEventParent(this, *((glitch::gui::IGUIElement **)this + 9));
            (*(void (__fastcall **)(glitch::gui::CGUIContextMenu *))(*(_DWORD *)this + 28))(v5);
            return 0;
          }
        }
      }
    }
    goto LABEL_5;
  }
  if ( *(_DWORD *)a2 != 1 )
    goto LABEL_5;
  v8 = *(_DWORD *)(a2 + 20);
  if ( v8 != 3 )
  {
    if ( v8 == 6 )
    {
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        v11 = *(_DWORD *)(a2 + 12);
        v12 = *(void (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD *, int))(*(_DWORD *)this + 192);
        v16[0] = *(_DWORD *)(a2 + 8);
        v16[1] = v11;
        v12(this, v16, 1);
        return 1;
      }
      return 1;
    }
    if ( !v8 )
      return 1;
LABEL_5:
    v6 = *((_DWORD *)this + 9);
    if ( v6 )
      return (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v6 + 8))(*((_DWORD *)this + 9), a2);
    else
      return 0;
  }
  ++*(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16) + 4);
  v9 = *(_DWORD *)(a2 + 12);
  v10 = *(int (__fastcall **)(glitch::gui::CGUIContextMenu *, _DWORD *))(*(_DWORD *)this + 196);
  v17[0] = *(_DWORD *)(a2 + 8);
  v17[1] = v9;
  if ( (unsigned int)v10(this, v17) <= 1
    && (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 28))(
         *((_DWORD *)this + 84),
         this) )
  {
    (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIContextMenu *))(**((_DWORD **)this + 84) + 24))(
      *((_DWORD *)this + 84),
      this);
  }
  glitch::IReferenceCounted::drop((glitch::gui::CGUIContextMenu *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)));
  return 1;
}


// ===== 6ae404 std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIContextMenu::SItem*,glitch::gui::CGUIContextMenu::SItem*,std::__false_type const&) =====
int __fastcall std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  _DWORD *v6; // r7
  int v7; // r8
  _DWORD *v8; // r6
  _DWORD *v9; // r3
  bool v10; // zf

  v5 = std::priv::__copy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(_DWORD **)(a1 + 4);
  v7 = v5;
  if ( v6 != (_DWORD *)v5 )
  {
    v8 = (_DWORD *)v5;
    do
    {
      v9 = (_DWORD *)v8[17];
      v10 = v9 == v8;
      v8 += 24;
      if ( !v10 && v9 )
        GlitchFree(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 6ae480 glitch::gui::CGUIContextMenu::removeAllItems(void) =====
int __fastcall glitch::gui::CGUIContextMenu::removeAllItems(glitch::gui::CGUIContextMenu *this)
{
  int v1; // r2
  int v2; // r1
  int v4; // r5
  unsigned int v5; // r6
  _DWORD *v6; // r3

  v1 = *((_DWORD *)this + 88);
  v2 = *((_DWORD *)this + 87);
  if ( -1431655765 * ((v1 - v2) >> 5) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(_DWORD **)(v2 + v4 + 88);
      ++v5;
      v4 += 96;
      if ( v6 )
      {
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
        v1 = *((_DWORD *)this + 88);
        v2 = *((_DWORD *)this + 87);
      }
    }
    while ( v5 < -1431655765 * ((v1 - v2) >> 5) );
  }
  if ( v1 != v2 )
    std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 348,
      v2,
      v1);
  return (*(int (__fastcall **)(glitch::gui::CGUIContextMenu *))(*(_DWORD *)this + 188))(this);
}


// ===== 6ae540 std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUIContextMenu::SItem const&) =====
void __fastcall std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  int v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  void *v8; // r6
  int v9; // r8
  int v10; // r10
  void **v11; // r4
  void **v12; // r8
  void **v13; // r3

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    v5 = -1431655765 * ((v2 - *a1) >> 5);
    if ( v5 )
      v6 = 1431655766 * ((v2 - *a1) >> 5);
    else
      v6 = 1;
    if ( v6 > 0x2AAAAAA || v5 > v6 )
      v7 = -64;
    else
      v7 = 96 * v6;
    v8 = GlitchAlloc(v7, 0);
    v9 = std::priv::__ucopy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(
           *a1,
           v2,
           (int)v8);
    *(_DWORD *)(v9 + 64) = v9;
    *(_DWORD *)(v9 + 68) = v9;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      (_DWORD *)v9,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
    v10 = v9 + 96;
    *(_BYTE *)(v9 + 72) = *(_BYTE *)(a2 + 72);
    *(_BYTE *)(v9 + 73) = *(_BYTE *)(a2 + 73);
    *(_BYTE *)(v9 + 74) = *(_BYTE *)(a2 + 74);
    *(_DWORD *)(v9 + 76) = *(_DWORD *)(a2 + 76);
    *(_DWORD *)(v9 + 80) = *(_DWORD *)(a2 + 80);
    *(_DWORD *)(v9 + 84) = *(_DWORD *)(a2 + 84);
    *(_DWORD *)(v9 + 88) = *(_DWORD *)(a2 + 88);
    *(_DWORD *)(v9 + 92) = *(_DWORD *)(a2 + 92);
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 24;
        v13 = (void **)v11[17];
        if ( v13 != v11 )
        {
          if ( v13 )
            GlitchFree(v11[17]);
        }
      }
      while ( v12 != v11 );
      v12 = (void **)*a1;
    }
    GlitchFree(v12);
    a1[2] = (int)v8 + v7;
    *a1 = (int)v8;
    a1[1] = v10;
  }
  else
  {
    *(_DWORD *)(v2 + 64) = v2;
    *(_DWORD *)(v2 + 68) = v2;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      (_DWORD *)v2,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
    *(_BYTE *)(v2 + 72) = *(_BYTE *)(a2 + 72);
    *(_BYTE *)(v2 + 73) = *(_BYTE *)(a2 + 73);
    *(_BYTE *)(v2 + 74) = *(_BYTE *)(a2 + 74);
    *(_DWORD *)(v2 + 76) = *(_DWORD *)(a2 + 76);
    *(_DWORD *)(v2 + 80) = *(_DWORD *)(a2 + 80);
    *(_DWORD *)(v2 + 84) = *(_DWORD *)(a2 + 84);
    *(_DWORD *)(v2 + 88) = *(_DWORD *)(a2 + 88);
    *(_DWORD *)(v2 + 92) = *(_DWORD *)(a2 + 92);
    a1[1] += 96;
  }
}


// ===== 6ae6fc std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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


// ===== 6ae754 std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUIContextMenu::SItem*,std::__false_type const&) =====
int __fastcall std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v4; // r0
  void *v6; // r3
  void *v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = a2 + 96;
  if ( a2 + 96 != v2 )
  {
    std::priv::__copy<glitch::gui::CGUIContextMenu::SItem *,glitch::gui::CGUIContextMenu::SItem *,int>(v4, v2, a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  v6 = (void *)(v4 - 96);
  *(_DWORD *)(a1 + 4) = v4 - 96;
  v7 = *(void **)(v4 - 28);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  return a2;
}


// ===== 6ae7bc glitch::gui::CGUIContextMenu::removeItem(uint) =====
int __fastcall glitch::gui::CGUIContextMenu::removeItem(glitch::gui::CGUIContextMenu *this, unsigned int a2)
{
  int v2; // r3
  int v4; // r2
  int result; // r0
  unsigned int v6; // r5
  int v7; // r1
  _DWORD *v8; // r3

  v2 = *((_DWORD *)this + 87);
  v4 = (*((_DWORD *)this + 88) - v2) >> 5;
  result = 1431655765 * v4;
  if ( a2 < -1431655765 * v4 )
  {
    v6 = 96 * a2;
    v7 = v2 + 96 * a2;
    v8 = *(_DWORD **)(v7 + 88);
    if ( v8 )
    {
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 16)));
      *(_DWORD *)(*((_DWORD *)this + 87) + v6 + 88) = 0;
      v7 = *((_DWORD *)this + 87) + v6;
    }
    std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 348,
      v7);
    return (*(int (__fastcall **)(glitch::gui::CGUIContextMenu *))(*(_DWORD *)this + 188))(this);
  }
  return result;
}


// ===== 6ae858 glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  int v2; // r1
  int v3; // r0
  int v4; // r5
  unsigned int v5; // r6
  _DWORD *v6; // r3
  glitch::IReferenceCounted *v7; // r0

  v2 = *((_DWORD *)this + 87);
  v3 = *((_DWORD *)this + 88);
  *(_DWORD *)this = off_986EA8;
  *((_DWORD *)this + 96) = off_986F90;
  *((_DWORD *)this + 97) = off_986FB0;
  if ( -1431655765 * ((v3 - v2) >> 5) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(_DWORD **)(v2 + v4 + 88);
      ++v5;
      v4 += 96;
      if ( v6 )
      {
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
        v2 = *((_DWORD *)this + 87);
        v3 = *((_DWORD *)this + 88);
      }
    }
    while ( v5 < -1431655765 * ((v3 - v2) >> 5) );
  }
  v7 = *((glitch::IReferenceCounted **)this + 95);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 87);
  *(_DWORD *)this = off_987000;
  *(int *)((char *)&elf_hash_bucket[41] + (_DWORD)this) = (int)off_9870D0;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_9870F0;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986FC8);
}


// ===== 6ae974 glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  glitch::gui::CGUIContextMenu::~CGUIContextMenu(this);
  LC_API_FREE_0(this);
}


// ===== 6ae990 glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this, int *a2)
{
  int v2; // r3
  int v5; // r1
  int v6; // r0
  int v7; // r5
  unsigned int v8; // r6
  _DWORD *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  int v11; // r3
  int *v12; // r7

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD *)this + 87);
  v6 = *((_DWORD *)this + 88);
  if ( -1431655765 * ((v6 - v5) >> 5) )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(_DWORD **)(v5 + v7 + 88);
      ++v8;
      v7 += 96;
      if ( v9 )
      {
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
        v5 = *((_DWORD *)this + 87);
        v6 = *((_DWORD *)this + 88);
      }
    }
    while ( v8 < -1431655765 * ((v6 - v5) >> 5) );
  }
  v10 = *((glitch::IReferenceCounted **)this + 95);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 87);
  v11 = a2[1];
  v12 = a2 + 1;
  *(_DWORD *)this = v11;
  *(_DWORD *)((char *)this + *(_DWORD *)(v11 - 12)) = v12[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v12[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v12 + 1);
}


// ===== 6aea9c glitch::gui::CGUIContextMenu::addItem(wchar_t const*,int,bool,bool,bool) =====
int __fastcall glitch::gui::CGUIContextMenu::addItem(
        glitch::gui::CGUIContextMenu *this,
        const wchar_t *a2,
        int a3,
        bool a4,
        bool a5,
        bool a6)
{
  const wchar_t *v10; // r10
  size_t v11; // r0
  void *v12; // r7
  int v13; // r4
  _DWORD v15[16]; // [sp+10h] [bp-70h] BYREF
  _DWORD *v16; // [sp+50h] [bp-30h]
  void *p; // [sp+54h] [bp-2Ch]
  bool v18; // [sp+58h] [bp-28h]
  bool v19; // [sp+59h] [bp-27h]
  bool v20; // [sp+5Ah] [bp-26h]
  int v21; // [sp+5Ch] [bp-24h]
  int v22; // [sp+60h] [bp-20h]
  void *v23; // [sp+68h] [bp-18h]
  int v24; // [sp+6Ch] [bp-14h]
  int v25[4]; // [sp+70h] [bp-10h] BYREF

  v16 = v15;
  p = v15;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v15,
    0x10u);
  *v16 = 0;
  v19 = a4;
  v22 = 0;
  v20 = a6;
  v21 = 0;
  if ( a2 )
    v10 = a2;
  else
    v10 = dword_8BEC18;
  v11 = wcslen(v10);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)v15,
    v10,
    &v10[v11]);
  v18 = a2 == nullptr;
  v23 = nullptr;
  v24 = a3;
  if ( a5 )
  {
    v25[3] = 100;
    v25[2] = 100;
    v25[0] = 0;
    v25[1] = 0;
    v12 = operator new(0x18Cu, 0);
    glitch::gui::CGUIContextMenu::CGUIContextMenu((int)v12, *((_DWORD *)this + 84), (int)this, a3, v25, 0, 0);
    v23 = v12;
    (*(void (__fastcall **)(void *, _DWORD))(*(_DWORD *)v12 + 48))(v12, 0);
  }
  std::vector<glitch::gui::CGUIContextMenu::SItem,glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (int *)this + 87,
    (int)v15);
  (*(void (__fastcall **)(glitch::gui::CGUIContextMenu *))(*(_DWORD *)this + 188))(this);
  v13 = -1431655765 * ((*((_DWORD *)this + 88) - *((_DWORD *)this + 87)) >> 5) - 1;
  if ( p != v15 && p )
    GlitchFree(p);
  return v13;
}


// ===== 6aec08 glitch::gui::CGUIContextMenu::draw(void) =====
int __fastcall glitch::gui::CGUIContextMenu::draw(int this)
{
  int v1; // r4
  int v2; // r5
  glitch::IReferenceCounted *v3; // r9
  glitch::IReferenceCounted *v4; // r0
  int v5; // r8
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r2
  int v10; // r1
  int v11; // r3
  int v12; // r6
  int v13; // r7
  int v14; // r6
  int v15; // r3
  int v16; // r1
  int v17; // r12
  int v18; // r3
  void (__fastcall *v19)(int, int, int *, int *, _DWORD); // r11
  int (__fastcall *v20)(int, int, int *, int *, _DWORD); // r11
  int v21; // r2
  int v22; // r10
  bool v23; // zf
  int v24; // r10
  int v25; // r3
  int v26; // r1
  int v27; // r11
  int v28; // r11
  glitch::os::Timer *v29; // r0
  int v30; // r3
  unsigned int Time; // r0
  int v32; // r0
  int v33; // r11
  glitch::os::Timer *v34; // r0
  int v35; // r3
  unsigned int v36; // r0
  int v37; // r2
  int v38; // r3
  int (__fastcall *v39)(int, int, int *, _DWORD *, int); // r11
  int v40; // r4
  int *i; // r5
  int *v42; // t1
  int v43; // [sp+1Ch] [bp-A0h]
  int v44; // [sp+1Ch] [bp-A0h]
  int v45; // [sp+20h] [bp-9Ch]
  int v46; // [sp+20h] [bp-9Ch]
  int (__fastcall *v47)(glitch::IReferenceCounted *, int, int *); // [sp+24h] [bp-98h]
  int v48; // [sp+24h] [bp-98h]
  int v49; // [sp+28h] [bp-94h]
  int (__fastcall *v50)(int, int, _DWORD *, _DWORD, glitch::os::Timer **, int, unsigned int, bool, int); // [sp+28h] [bp-94h]
  int (__fastcall *v51)(int, int, _DWORD *, _DWORD, _DWORD *, int, unsigned int, bool, int); // [sp+34h] [bp-88h]
  _DWORD v52[4]; // [sp+60h] [bp-5Ch] BYREF
  int v53; // [sp+70h] [bp-4Ch] BYREF
  int v54; // [sp+74h] [bp-48h]
  int v55; // [sp+78h] [bp-44h]
  int v56; // [sp+7Ch] [bp-40h]
  int v57; // [sp+80h] [bp-3Ch] BYREF
  int v58; // [sp+84h] [bp-38h]
  int v59; // [sp+88h] [bp-34h]
  int v60; // [sp+8Ch] [bp-30h]
  _DWORD v61[2]; // [sp+90h] [bp-2Ch] BYREF
  _DWORD v62[2]; // [sp+98h] [bp-24h] BYREF
  glitch::os::Timer *v63; // [sp+A0h] [bp-1Ch] BYREF
  _DWORD v64[2]; // [sp+A4h] [bp-18h] BYREF
  int v65; // [sp+ACh] [bp-10h] BYREF
  int v66; // [sp+B0h] [bp-Ch] BYREF
  int v67; // [sp+B4h] [bp-8h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v2 = this;
    if ( this )
    {
      v3 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)this + 40))(this, 3);
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
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 48))(v2);
      v6 = *(_DWORD *)(v1 + 60);
      v7 = *(_DWORD *)(v1 + 64);
      v8 = *(_DWORD *)(v1 + 68);
      v57 = *(_DWORD *)(v1 + 56);
      v58 = v6;
      v59 = v7;
      v60 = v8;
      (*(void (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)v2 + 80))(v2, v1, v1 + 56, 0);
      v9 = *(_DWORD *)(v1 + 348);
      this = *(_DWORD *)(v1 + 60);
      v10 = *(_DWORD *)(v1 + 64);
      v11 = *(_DWORD *)(v1 + 68);
      v12 = *(_DWORD *)(v1 + 352) - v9;
      v57 = *(_DWORD *)(v1 + 56);
      v58 = this;
      v59 = v10;
      v60 = v11;
      if ( v12 > 95 )
      {
        v13 = 0;
        v14 = 0;
        while ( 1 )
        {
          v21 = v9 + v13;
          v22 = *(unsigned __int8 *)(v21 + 72);
          if ( !*(_BYTE *)(v21 + 72) )
            break;
          v15 = *(_DWORD *)(v1 + 60);
          v16 = *(_DWORD *)(v1 + 64);
          v17 = *(_DWORD *)(v1 + 68);
          v57 = *(_DWORD *)(v1 + 56);
          v58 = v15;
          v60 = v17;
          v59 = v16;
          v18 = v15 + *(_DWORD *)(v21 + 84);
          v60 = v18 + 4;
          v57 += 5;
          v59 = v16 - 5;
          v58 = v18 + 3;
          v19 = *(void (__fastcall **)(int, int, int *, int *, _DWORD))(*(_DWORD *)v2 + 100);
          v67 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 1);
          v19(v2, v1, &v67, &v57, 0);
          ++v60;
          ++v58;
          v20 = *(int (__fastcall **)(int, int, int *, int *, _DWORD))(*(_DWORD *)v2 + 100);
          v66 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
          this = v20(v2, v1, &v66, &v57, 0);
          v9 = *(_DWORD *)(v1 + 348);
LABEL_13:
          ++v14;
          v13 += 96;
          if ( v14 >= -1431655765 * ((*(_DWORD *)(v1 + 352) - v9) >> 5) )
            goto LABEL_40;
        }
        (*(void (__fastcall **)(int *, int))(*(_DWORD *)v1 + 204))(&v53, v1);
        this = v56;
        v23 = *(_DWORD *)(v1 + 344) == v14;
        v58 = v54;
        v60 = v56;
        v57 = v53;
        v59 = v55;
        if ( !v23 )
          goto LABEL_16;
        v9 = *(_DWORD *)(v1 + 348);
        v25 = v9 + v13;
        if ( !*(_BYTE *)(v9 + v13 + 73) )
          goto LABEL_36;
        v37 = *(_DWORD *)(v1 + 56);
        v38 = *(_DWORD *)(v1 + 64);
        v52[3] = v56;
        v52[1] = v54;
        v52[0] = v37 + 5;
        v52[2] = v38 - 5;
        v39 = *(int (__fastcall **)(int, int, int *, _DWORD *, int))(*(_DWORD *)v2 + 100);
        v65 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 10);
        this = v39(v2, v1, &v65, v52, v22);
        if ( v14 == *(_DWORD *)(v1 + 344) )
        {
          v9 = *(_DWORD *)(v1 + 348);
          v24 = 11;
          v25 = v9 + v13;
          v26 = *(unsigned __int8 *)(v9 + v13 + 73);
        }
        else
        {
LABEL_16:
          v9 = *(_DWORD *)(v1 + 348);
          v24 = 8;
          v25 = v9 + v13;
          v26 = *(unsigned __int8 *)(v9 + v13 + 73);
        }
        if ( v26 )
        {
LABEL_18:
          if ( v3 )
          {
            v27 = *(_DWORD *)(v25 + 68);
            v47 = *(int (__fastcall **)(glitch::IReferenceCounted *, int, int *))(*(_DWORD *)v3 + 12);
            v64[1] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v24);
            this = v47(v3, v27, &v57);
            v9 = *(_DWORD *)(v1 + 348);
            v25 = v9 + v13;
          }
          if ( *(_DWORD *)(v25 + 88) && v5 )
          {
            v45 = v58;
            v43 = v60;
            v51 = *(int (__fastcall **)(int, int, _DWORD *, _DWORD, _DWORD *, int, unsigned int, bool, int))(*(_DWORD *)v5 + 36);
            v28 = (2 * v59 - 15) / 2;
            v49 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 56))(v2, 8);
            v62[0] = v28;
            v62[1] = (v43 + v45) / 2;
            v29 = (glitch::os::Timer *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v24);
            v30 = *(_DWORD *)(v1 + 344);
            if ( v30 != v14 )
              v28 = 0;
            v64[0] = v29;
            if ( v30 == v14 )
            {
              v28 = *(_DWORD *)(v1 + 368);
              Time = glitch::os::Timer::getTime(v29);
              v30 = *(_DWORD *)(v1 + 344);
            }
            else
            {
              Time = v28;
            }
            this = v51(v5, v49, v62, 0, v64, v28, Time, v14 == v30, 1);
            v9 = *(_DWORD *)(v1 + 348);
            v25 = v9 + v13;
          }
          if ( *(_BYTE *)(v25 + 74) && v5 )
          {
            v50 = *(int (__fastcall **)(int, int, _DWORD *, _DWORD, glitch::os::Timer **, int, unsigned int, bool, int))(*(_DWORD *)v5 + 36);
            v46 = v60;
            v44 = v57;
            v48 = v58;
            v32 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 56))(v2, 10);
            v61[1] = (v46 + v48) / 2;
            v61[0] = (2 * v44 - 15) / 2;
            v33 = v32;
            v34 = (glitch::os::Timer *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v24);
            v35 = *(_DWORD *)(v1 + 344);
            if ( v35 != v14 )
              v24 = 0;
            v63 = v34;
            if ( v35 == v14 )
            {
              v24 = *(_DWORD *)(v1 + 368);
              v36 = glitch::os::Timer::getTime(v34);
              v35 = *(_DWORD *)(v1 + 344);
            }
            else
            {
              v36 = v24;
            }
            this = v50(v5, v33, v61, 0, &v63, v24, v36, v14 == v35, 1);
            v9 = *(_DWORD *)(v1 + 348);
          }
          goto LABEL_13;
        }
LABEL_36:
        v24 = 9;
        goto LABEL_18;
      }
LABEL_40:
      if ( *(_BYTE *)(v1 + 152) )
      {
        v42 = *(int **)(v1 + 4);
        v40 = v1 + 4;
        for ( i = v42; i != (int *)v40; i = (int *)*i )
          this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
      }
    }
  }
  return this;
}


// ===== 6af2bc glitch::gui::CGUIContextMenu::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall glitch::gui::CGUIContextMenu::serializeAttributes(_DWORD *a1, int a2)
{
  int v4; // r3
  void (__fastcall *v5)(int, char *, _DWORD *, _DWORD); // r12
  _DWORD *v6; // r6
  int v7; // r3
  int v8; // r6
  unsigned int v9; // r8
  int v10; // r3
  int v11; // r9
  void *result; // r0
  unsigned int i; // r7
  _DWORD v14[2]; // [sp+24h] [bp-28h] BYREF
  _DWORD v15[4]; // [sp+2Ch] [bp-20h] BYREF
  _BYTE *v16; // [sp+3Ch] [bp-10h]
  void *p; // [sp+40h] [bp-Ch]

  glitch::gui::IGUIElement::serializeAttributes(a1, a2);
  v4 = a1[91];
  v5 = *(void (__fastcall **)(int, char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 472);
  v14[0] = a1[90];
  v14[1] = v4;
  v5(a2, "Position", v14, 0);
  v6 = (_DWORD *)a1[9];
  v7 = v6[85];
  if ( v7 == 3 || v7 == 4 )
  {
    for ( i = 0;
          i < (*(int (__fastcall **)(_DWORD *))(*v6 + 124))(v6)
       && a1 != (_DWORD *)(*(int (__fastcall **)(_DWORD *, unsigned int))(*v6 + 180))(v6, i);
          ++i )
    {
      ;
    }
    (*(void (__fastcall **)(int, const char *, unsigned int, _DWORD))(*(_DWORD *)a2 + 76))(a2, "ParentItem", i, 0);
  }
  v8 = 0;
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "ItemCount",
    -1431655765 * ((a1[88] - a1[87]) >> 5),
    0);
  v16 = v15;
  p = v15;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  *v16 = 0;
  if ( -1431655765 * ((a1[88] - a1[87]) >> 5) )
  {
    v9 = 0;
    do
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v15,
        "IsSeparator",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v9);
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
        a2,
        p,
        *(unsigned __int8 *)(a1[87] + v8 + 72),
        0);
      v10 = a1[87];
      v11 = *(unsigned __int8 *)(v10 + v8 + 72);
      if ( !*(_BYTE *)(v10 + v8 + 72) )
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v15,
          "Text",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v15,
          (_DWORD *)(char)v9);
        (*(void (__fastcall **)(int, void *, _DWORD, int))(*(_DWORD *)a2 + 148))(
          a2,
          p,
          *(_DWORD *)(a1[87] + v8 + 68),
          v11);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v15,
          "CommandID",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v15,
          (_DWORD *)(char)v9);
        (*(void (__fastcall **)(int, void *, _DWORD, int))(*(_DWORD *)a2 + 76))(
          a2,
          p,
          *(_DWORD *)(a1[87] + v8 + 92),
          v11);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v15,
          "Enabled",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v15,
          (_DWORD *)(char)v9);
        (*(void (__fastcall **)(int, void *, _DWORD, int))(*(_DWORD *)a2 + 216))(
          a2,
          p,
          *(unsigned __int8 *)(a1[87] + v8 + 73),
          v11);
        v10 = a1[87];
      }
      ++v9;
      v8 += 96;
    }
    while ( v9 < -1431655765 * ((a1[88] - v10) >> 5) );
  }
  result = p;
  if ( p != v15 )
  {
    if ( p )
      GlitchFree(p);
  }
  return result;
}


// ===== 6af62c glitch::gui::CGUIContextMenu::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIContextMenu::deserializeAttributes(int a1, int a2)
{
  _DWORD *v4; // r6
  int v5; // r2
  int v6; // r3
  int i; // r7
  int v8; // r11
  int v9; // r9
  void (__fastcall *v11)(_DWORD *, int, int); // r4
  int v12; // r0
  int v13; // [sp+8h] [bp-13Ch]
  void (__fastcall *v14)(int, void *, int, int, _DWORD, int); // [sp+Ch] [bp-138h]
  int v15; // [sp+10h] [bp-134h]
  _DWORD v16[17]; // [sp+40h] [bp-104h] BYREF
  void *v17; // [sp+84h] [bp-C0h]
  _BYTE v18[64]; // [sp+88h] [bp-BCh] BYREF
  _DWORD *v19; // [sp+C8h] [bp-7Ch]
  void *v20; // [sp+CCh] [bp-78h]
  _DWORD v21[16]; // [sp+D0h] [bp-74h] BYREF
  _DWORD *v22; // [sp+110h] [bp-34h]
  void *p; // [sp+114h] [bp-30h]
  _DWORD v24[2]; // [sp+118h] [bp-2Ch] BYREF
  _DWORD v25[4]; // [sp+124h] [bp-20h] BYREF
  _BYTE *v26; // [sp+134h] [bp-10h]
  void *v27; // [sp+138h] [bp-Ch]

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  (*(void (__fastcall **)(_DWORD *, int, char *))(*(_DWORD *)a2 + 484))(v24, a2, "Position");
  v4 = *(_DWORD **)(a1 + 36);
  v5 = v24[0];
  *(_DWORD *)(a1 + 364) = v24[1];
  *(_DWORD *)(a1 + 360) = v5;
  if ( v4 )
  {
    v6 = v4[85];
    if ( v6 == 3 || v6 == 4 )
    {
      v11 = *(void (__fastcall **)(_DWORD *, int, int))(*v4 + 184);
      v12 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ParentItem");
      v11(v4, v12, a1);
    }
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 164))(a1);
  v15 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ItemCount");
  if ( v15 > 0 )
  {
    for ( i = 0; i != v15; ++i )
    {
      v26 = v25;
      v27 = v25;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
      *v26 = 0;
      v22 = v21;
      p = v21;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v21,
        0x10u);
      *v22 = 0;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v25,
        "IsSeparator",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v25,
        (_DWORD *)(char)i);
      if ( (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 228))(a2, v27) )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 132))(a1);
      }
      else
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v25,
          "Text",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v25,
          (_DWORD *)(char)i);
        (*(void (__fastcall **)(_BYTE *, int, void *))(*(_DWORD *)a2 + 156))(v18, a2, v27);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v21,
          (const wchar_t *)v20,
          v19);
        if ( v20 != v18 && v20 )
          GlitchFree(v20);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v25,
          "CommandID",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v25,
          (_DWORD *)(char)i);
        v8 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 88))(a2, v27);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v25,
          "Enabled",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v25,
          (_DWORD *)(char)i);
        v13 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 228))(a2, v27);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v25,
          "Checked",
          "");
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v25,
          (_DWORD *)(char)i);
        v9 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 228))(a2, v27);
        v14 = *(void (__fastcall **)(int, void *, int, int, _DWORD, int))(*(_DWORD *)a1 + 128);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v16,
          (wchar_t *)p);
        v14(a1, v17, v8, v13, 0, v9);
        if ( v17 != v16 && v17 )
          GlitchFree(v17);
      }
      if ( p != v21 && p )
        GlitchFree(p);
      if ( v27 != v25 && v27 )
        GlitchFree(v27);
    }
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 188))(a1);
}


// ===== 6afa10 `virtual thunk to'glitch::gui::CGUIContextMenu::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIContextMenu::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 6afa20 `virtual thunk to'glitch::gui::CGUIContextMenu::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIContextMenu::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 6afa30 `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  glitch::gui::CGUIContextMenu::~CGUIContextMenu((glitch::gui::CGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6afa40 `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  glitch::gui::CGUIContextMenu::~CGUIContextMenu((glitch::gui::CGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6afa50 `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  glitch::gui::CGUIContextMenu::~CGUIContextMenu((glitch::gui::CGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6afa60 `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIContextMenu::~CGUIContextMenu(glitch::gui::CGUIContextMenu *this)
{
  glitch::gui::CGUIContextMenu::~CGUIContextMenu((glitch::gui::CGUIContextMenu *)((char *)this
                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6afa70 glitch::gui::CGUIEditBox::setOverrideColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUIEditBox::setOverrideColor(int result, int a2)
{
  *(_BYTE *)(result + 346) = 1;
  *(_DWORD *)(result + 356) = a2;
  return result;
}


// ===== 6afaa8 glitch::gui::CGUIEditBox::setDrawBorder(bool) =====
int __fastcall glitch::gui::CGUIEditBox::setDrawBorder(int this, bool a2)
{
  *(_BYTE *)(this + 345) = a2;
  return this;
}


// ===== 6afab0 glitch::gui::CGUIEditBox::enableOverrideColor(bool) =====
int __fastcall glitch::gui::CGUIEditBox::enableOverrideColor(int this, bool a2)
{
  *(_BYTE *)(this + 346) = a2;
  return this;
}


// ===== 6afab8 glitch::gui::CGUIEditBox::isWordWrapEnabled(void) =====
int __fastcall glitch::gui::CGUIEditBox::isWordWrapEnabled(glitch::gui::CGUIEditBox *this)
{
  return *((unsigned __int8 *)this + 392);
}


// ===== 6afac0 glitch::gui::CGUIEditBox::setMultiLine(bool) =====
int __fastcall glitch::gui::CGUIEditBox::setMultiLine(int this, bool a2)
{
  *(_BYTE *)(this + 393) = a2;
  return this;
}


// ===== 6afac8 glitch::gui::CGUIEditBox::isMultiLineEnabled(void) =====
int __fastcall glitch::gui::CGUIEditBox::isMultiLineEnabled(glitch::gui::CGUIEditBox *this)
{
  return *((unsigned __int8 *)this + 393);
}


// ===== 6afad0 glitch::gui::CGUIEditBox::isPasswordBox(void) =====
int __fastcall glitch::gui::CGUIEditBox::isPasswordBox(glitch::gui::CGUIEditBox *this)
{
  return *((unsigned __int8 *)this + 395);
}


// ===== 6afad8 glitch::gui::CGUIEditBox::setTextAlignment(glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT) =====
int __fastcall glitch::gui::CGUIEditBox::setTextAlignment(int result, int a2, int a3)
{
  *(_DWORD *)(result + 404) = a3;
  *(_DWORD *)(result + 400) = a2;
  return result;
}


// ===== 6afae4 glitch::gui::CGUIEditBox::setAutoScroll(bool) =====
int __fastcall glitch::gui::CGUIEditBox::setAutoScroll(int this, bool a2)
{
  *(_BYTE *)(this + 394) = a2;
  return this;
}


// ===== 6afaec glitch::gui::CGUIEditBox::isAutoScrollEnabled(void) =====
int __fastcall glitch::gui::CGUIEditBox::isAutoScrollEnabled(glitch::gui::CGUIEditBox *this)
{
  return *((unsigned __int8 *)this + 394);
}


// ===== 6afaf4 glitch::gui::CGUIEditBox::getMax(void) =====
int __fastcall glitch::gui::CGUIEditBox::getMax(glitch::gui::CGUIEditBox *this)
{
  return *((_DWORD *)this + 97);
}


// ===== 6afafc glitch::gui::CGUIEditBox::setTextRect(int) =====
int __fastcall glitch::gui::CGUIEditBox::setTextRect(glitch::gui::CGUIEditBox *this, int a2)
{
  int v2; // r5
  int v5; // r0
  int v6; // r3
  int v7; // r7
  int v8; // r8
  int v9; // r10
  int v10; // r0
  int v11; // r3
  int v12; // r10
  int v13; // r2
  int v14; // r3
  int v15; // r3
  int v16; // r0
  int v17; // r1
  int v18; // r12
  int result; // r0
  int v20; // r3
  int v21; // r8
  int v22; // r3
  _DWORD v23[3]; // [sp+0h] [bp-Ch] BYREF

  v2 = *((_DWORD *)this + 90);
  v5 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( !v2 )
    v2 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 40))(v5, 0);
  if ( *((_BYTE *)this + 392) || *((_BYTE *)this + 393) )
  {
    v6 = *((_DWORD *)this + 102);
    v7 = 954437177 * ((*((_DWORD *)this + 103) - v6) >> 3);
    (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*(_DWORD *)v2 + 28))(v23, v2, *(_DWORD *)(v6 + 72 * a2 + 68));
    v8 = v23[0];
    v9 = v23[1];
  }
  else
  {
    (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*(_DWORD *)v2 + 28))(v23, v2, *((_DWORD *)this + 57));
    v8 = v23[0];
    v7 = 1;
    v9 = *((_DWORD *)this + 17) - *((_DWORD *)this + 15);
  }
  v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 60))(v2);
  v11 = *((_DWORD *)this + 100);
  v12 = v9 + v10;
  if ( v11 != 1 )
  {
    v13 = *((_DWORD *)this + 112);
    if ( v11 == 2 )
    {
      v22 = (*((_DWORD *)this + 114) - v13) / 2;
      *((_DWORD *)this + 108) = v22 - v8 / 2;
      *((_DWORD *)this + 110) = v22 + v8 / 2;
    }
    else
    {
      *((_DWORD *)this + 108) = 0;
      *((_DWORD *)this + 110) = v8;
    }
    v14 = *((_DWORD *)this + 101);
    if ( v14 != 1 )
      goto LABEL_10;
LABEL_14:
    v15 = *((_DWORD *)this + 113);
    *((_DWORD *)this + 109) = *((_DWORD *)this + 115) - v15 + v12 * (a2 - v7);
    goto LABEL_12;
  }
  v13 = *((_DWORD *)this + 112);
  v20 = *((_DWORD *)this + 114) - v13;
  v21 = v20 - v8;
  *((_DWORD *)this + 110) = v20;
  v14 = *((_DWORD *)this + 101);
  *((_DWORD *)this + 108) = v21;
  if ( v14 == 1 )
    goto LABEL_14;
LABEL_10:
  if ( v14 == 2 )
  {
    v15 = *((_DWORD *)this + 113);
    *((_DWORD *)this + 109) = (*((_DWORD *)this + 115) - v15) / 2 + a2 * v12 - v7 * v12 / 2;
  }
  else
  {
    v15 = *((_DWORD *)this + 113);
    *((_DWORD *)this + 109) = a2 * v12;
  }
LABEL_12:
  v16 = *((_DWORD *)this + 95);
  v17 = *((_DWORD *)this + 109) - *((_DWORD *)this + 96);
  v18 = *((_DWORD *)this + 108) - v16;
  result = *((_DWORD *)this + 110) - v16 + v13;
  *((_DWORD *)this + 111) = v12 + v17 + v15;
  *((_DWORD *)this + 108) = v18 + v13;
  *((_DWORD *)this + 109) = v17 + v15;
  *((_DWORD *)this + 110) = result;
  return result;
}


// ===== 6afd18 glitch::gui::CGUIEditBox::getCursorPos(int,int) =====
int __fastcall glitch::gui::CGUIEditBox::getCursorPos(glitch::gui::CGUIEditBox *this, int a2, int a3)
{
  int v6; // r8
  int v7; // r0
  unsigned int v8; // r9
  int v9; // r10
  unsigned int v10; // r5
  int v11; // r7
  int v12; // r3
  int v13; // r6
  char *v14; // r5
  int v15; // r2
  int v16; // r2
  int v17; // r0
  int v18; // r3
  bool v19; // zf
  int result; // r0

  v6 = *((_DWORD *)this + 90);
  v7 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( !*((_DWORD *)this + 90) )
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 40))(v7);
  if ( *((_BYTE *)this + 392) || (v8 = *((unsigned __int8 *)this + 393), *((_BYTE *)this + 393)) )
  {
    v9 = a2 + 3;
    v10 = 954437177 * ((*((_DWORD *)this + 103) - *((_DWORD *)this + 102)) >> 3);
    if ( !v10 )
    {
LABEL_21:
      v13 = 0;
      v14 = nullptr;
      goto LABEL_22;
    }
    v8 = v10 - 1;
  }
  else
  {
    v9 = a2 + 3;
    v10 = 1;
  }
  v11 = 0;
  while ( 1 )
  {
    glitch::gui::CGUIEditBox::setTextRect(this, v11);
    if ( v11 )
    {
      v12 = *((_DWORD *)this + 109);
    }
    else
    {
      v12 = *((_DWORD *)this + 109);
      if ( a3 < v12 )
        a3 = *((_DWORD *)this + 109);
    }
    if ( v11 == v8 && a3 >= *((_DWORD *)this + 111) )
      a3 = *((_DWORD *)this + 111);
    if ( a3 >= v12 && a3 <= *((_DWORD *)this + 111) )
      break;
    if ( ++v11 >= v10 )
      goto LABEL_21;
  }
  if ( *((_BYTE *)this + 392) || (v13 = *((unsigned __int8 *)this + 393), *((_BYTE *)this + 393)) )
  {
    v14 = (char *)(*((_DWORD *)this + 102) + 72 * v11);
    v13 = *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v11);
  }
  else
  {
    v14 = (char *)this + 160;
  }
LABEL_22:
  v15 = *((_DWORD *)this + 108);
  if ( v9 < v15 )
    v16 = 0;
  else
    v16 = v9 - v15;
  v17 = (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v6 + 36))(v6, *((_DWORD *)v14 + 17), v16);
  v19 = v17 == -1;
  if ( v17 == -1 )
  {
    result = *((_DWORD *)v14 + 16);
    v18 = *((_DWORD *)v14 + 17);
  }
  else
  {
    result = v17 + v13;
  }
  if ( v19 )
    return v13 + ((result - v18) >> 2);
  return result;
}


// ===== 6afe9c glitch::gui::CGUIEditBox::getTextDimension(void) =====
glitch::gui::CGUIEditBox *__fastcall glitch::gui::CGUIEditBox::getTextDimension(
        glitch::gui::CGUIEditBox *this,
        glitch::gui::CGUIEditBox *a2)
{
  int v3; // r6
  int v4; // r7
  int v5; // r11
  unsigned int v6; // r5
  int v7; // r0
  int v8; // r2
  int v9; // r12
  int v10; // r1
  int v11; // r9
  int v12; // r3
  int v13; // r10
  int v15; // [sp+0h] [bp-Ch]

  glitch::gui::CGUIEditBox::setTextRect(a2, 0);
  v3 = *((_DWORD *)a2 + 108);
  v15 = *((_DWORD *)a2 + 109);
  v4 = *((_DWORD *)a2 + 110);
  v5 = *((_DWORD *)a2 + 111);
  if ( (unsigned int)(954437177 * ((*((_DWORD *)a2 + 103) - *((_DWORD *)a2 + 102)) >> 3)) > 1 )
  {
    v6 = 1;
    do
    {
      glitch::gui::CGUIEditBox::setTextRect(a2, v6);
      v7 = *((_DWORD *)a2 + 108);
      v8 = *((_DWORD *)a2 + 109);
      v9 = *((_DWORD *)a2 + 110);
      v10 = *((_DWORD *)a2 + 111);
      if ( v9 >= v7 )
        v11 = *((_DWORD *)a2 + 108);
      else
        v11 = *((_DWORD *)a2 + 110);
      v12 = v15;
      if ( v10 >= v8 )
        v13 = *((_DWORD *)a2 + 109);
      else
        v13 = *((_DWORD *)a2 + 111);
      if ( v9 >= v7 )
        v7 = *((_DWORD *)a2 + 110);
      if ( v10 >= v8 )
        v8 = *((_DWORD *)a2 + 111);
      ++v6;
      if ( v15 >= v13 )
        v12 = v13;
      if ( v4 < v7 )
        v4 = v7;
      if ( v5 < v8 )
        v5 = v8;
      if ( v3 >= v11 )
        v3 = v11;
      v15 = v12;
    }
    while ( v6 < 954437177 * ((*((_DWORD *)a2 + 103) - *((_DWORD *)a2 + 102)) >> 3) );
  }
  *(_DWORD *)this = v4 - v3;
  *((_DWORD *)this + 1) = v5 - v15;
  return this;
}


// ===== 6affcc glitch::gui::CGUIEditBox::getLineFromPos(int) =====
int __fastcall glitch::gui::CGUIEditBox::getLineFromPos(glitch::gui::CGUIEditBox *this, int a2)
{
  _DWORD *v3; // r12
  int v4; // r0
  int v5; // r3

  if ( !*((_BYTE *)this + 392) && !*((_BYTE *)this + 393) )
    return *((unsigned __int8 *)this + 393);
  v3 = *((_DWORD **)this + 105);
  v4 = (*((_DWORD *)this + 106) - (int)v3) >> 2;
  if ( v4 > 0 )
  {
    if ( a2 < *v3 )
      return -1;
    v5 = 0;
    while ( ++v5 != v4 )
    {
      if ( v3[v5] > a2 )
        return v5 - 1;
    }
  }
  return v4 - 1;
}


// ===== 6b0040 `global constructor keyed to'.._source_glitch_gui_CGUIEditBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIEditBox.cpp()
{
  dword_9F76D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76CC = 1056964608;
}


// ===== 6b0060 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        int a1,
        int a2)
{
  if ( a2 != a1 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1,
      *(const wchar_t **)(a2 + 68),
      *(_DWORD **)(a2 + 64));
  return a1;
}


// ===== 6b0084 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::append(wchar_t const*) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::append(
        _DWORD *a1,
        wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
           a1,
           s,
           &s[v4]);
}


// ===== 6b00ac std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  char *v10; // r0
  char *v11; // r7
  size_t v12; // r10
  char *v13; // r10
  unsigned int v14; // r2
  int v15; // r3
  size_t v16; // r4

  v9 = 4 * std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(a1, a5);
  v10 = (char *)GlitchAlloc(v9, 0);
  v11 = v10;
  if ( a2 != *a1 )
  {
    v12 = a2 - (_BYTE *)*a1;
    v10 = (char *)memmove(v10, *a1, v12) + v12;
  }
  v13 = v10;
  if ( a5 )
  {
    v14 = a5;
    v15 = 0;
    do
    {
      --v14;
      *(_DWORD *)&v10[v15] = *a3;
      v15 += 4;
    }
    while ( v14 );
    v13 = &v10[4 * a5];
  }
  if ( !a6 )
  {
    v16 = (_BYTE *)a1[1] - a2;
    if ( v16 )
      v13 = (char *)memmove(v13, a2, v16) + v16;
  }
  GlitchFree((void *)*a1);
  a1[2] = &v11[v9];
  *a1 = v11;
  a1[1] = v13;
}


// ===== 6b0170 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(uint,uint) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1,
    a2,
    a3,
    a4);
  return a1;
}


// ===== 6b0194 glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
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


// ===== 6b02e8 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
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


// ===== 6b0394 glitch::gui::IGUIEditBox::IGUIEditBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIEditBox::IGUIEditBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
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
  *(_DWORD *)(a1 + 340) = 5;
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
    v31 = v30 < v29;
    v32 = *(_DWORD *)(a1 + 80);
    if ( v31 )
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


// ===== 6b066c std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void ***a1,
        int a2,
        int a3)
{
  unsigned int v5; // r0
  unsigned int v6; // r2
  size_t v7; // r11
  void **v8; // r0
  void **v9; // r12
  void **v10; // r10
  int v11; // r3
  int v12; // r9
  void **v13; // r9
  int v14; // r5
  void **v15; // lr
  void **v16; // r3
  void *v17; // r1
  void *v18; // r2
  void *v19; // r3
  void *v20; // r1
  void *v21; // r2
  void *v22; // r3
  void *v23; // r1
  void *v24; // r2
  void *v25; // r3
  void *v26; // r1
  void *v27; // r2
  void *v28; // r3
  _BYTE *v29; // r2
  _BYTE *v30; // r3
  void **v31; // r0
  void **v32; // r9
  void **v33; // r5
  void **v34; // r6
  void **v35; // r3

  v5 = 954437177 * (((char *)a1[1] - (char *)*a1) >> 3);
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 <= 0x38E38E3 && v5 <= v6 )
    v7 = 18 * v6;
  else
    v7 = -10;
  v8 = (void **)GlitchAlloc(v7 * 4, 0);
  v9 = *a1;
  v10 = v8;
  v11 = (a2 - (int)*a1) >> 3;
  v12 = 954437177 * v11;
  if ( 954437177 * v11 <= 0 )
  {
    v13 = v8;
    goto LABEL_15;
  }
  v14 = 954437177 * v11;
  v15 = v8;
  while ( 1 )
  {
    v15[17] = v9[17];
    v16 = (void **)v9[17];
    if ( v16 == v9 )
      break;
    v15[17] = v16;
    --v14;
    v15[16] = v9[16];
    *v15 = *v9;
    v9[17] = nullptr;
    v15 += 18;
    if ( !v14 )
      goto LABEL_14;
LABEL_11:
    v9 += 18;
  }
  v17 = v9[1];
  v18 = v9[2];
  v19 = v9[3];
  *v15 = *v9;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v20 = v9[5];
  v21 = v9[6];
  v22 = v9[7];
  v15[4] = v9[4];
  v15[5] = v20;
  v15[6] = v21;
  v15[7] = v22;
  v23 = v9[9];
  v24 = v9[10];
  v25 = v9[11];
  v15[8] = v9[8];
  v15[9] = v23;
  v15[10] = v24;
  v15[11] = v25;
  v26 = v9[13];
  v27 = v9[14];
  v28 = v9[15];
  v15[12] = v9[12];
  v15[13] = v26;
  v15[14] = v27;
  v15[15] = v28;
  v29 = v9[16];
  v30 = v9[17];
  --v14;
  v15[17] = v15;
  v15[16] = (char *)v15 + ((v29 - v30) & 0xFFFFFFFC);
  v15 += 18;
  if ( v14 )
    goto LABEL_11;
LABEL_14:
  v13 = &v8[18 * v12];
LABEL_15:
  v13[16] = v13;
  v13[17] = v13;
  v31 = v13;
  v32 = v13 + 18;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v31,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
  v33 = a1[1];
  v34 = *a1;
  if ( v33 != *a1 )
  {
    do
    {
      v33 -= 18;
      v35 = (void **)v33[17];
      if ( v35 != v33 && v35 )
        GlitchFree(v33[17]);
    }
    while ( v34 != v33 );
    v34 = *a1;
  }
  GlitchFree(v34);
  a1[1] = v32;
  a1[2] = &v10[v7];
  *a1 = v10;
}


// ===== 6b0844 glitch::gui::CGUIEditBox::setPasswordBox(bool,wchar_t) =====
_DWORD *__fastcall glitch::gui::CGUIEditBox::setPasswordBox(_DWORD *this, int a2, wchar_t a3)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r1
  _DWORD *v5; // r2

  v3 = this;
  *((_BYTE *)this + 395) = a2;
  if ( a2 )
  {
    *(this + 99) = a3;
    (*(void (__fastcall **)(_DWORD *, _DWORD))(*this + 152))(this, 0);
    this = (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD))(*v3 + 144))(v3, 0);
    v4 = (_DWORD *)v3[102];
    v5 = (_DWORD *)v3[103];
    if ( v4 != v5 )
      return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
               (int)(v3 + 102),
               v4,
               v5);
  }
  return this;
}


// ===== 6b08ac glitch::gui::CGUIEditBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::gui::CGUIEditBox::deserializeAttributes(float *a1, int a2)
{
  void (__fastcall *v4)(float *, int); // r7
  void (__fastcall *v5)(float *, int); // r7
  int v6; // r0
  void (__fastcall *v7)(float *, int); // r7
  int v8; // r0
  void (__fastcall *v9)(float *, int); // r7
  int v10; // r0
  void (__fastcall *v11)(float *, int); // r7
  int v12; // r0
  void (__fastcall *v13)(float *, int); // r7
  int v14; // r0
  void (__fastcall *v15)(float *, int, int); // r7
  int v16; // r0
  void (__fastcall *v17)(float *, int, int); // r8
  int v18; // r10
  int v19; // r0
  int v20; // r0
  _BYTE v21[64]; // [sp+Ch] [bp-50h] BYREF
  int v22; // [sp+4Ch] [bp-10h]
  void *p; // [sp+50h] [bp-Ch]
  int v24; // [sp+54h] [bp-8h]

  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  v4 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 128);
  v24 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "OverrideColor");
  v4(a1, v24);
  v5 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 132);
  v6 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "OverrideColorEnabled");
  v5(a1, v6);
  v7 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 180);
  v8 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "MaxChars");
  v7(a1, v8);
  v9 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 144);
  v10 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "WordWrap");
  v9(a1, v10);
  v11 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 152);
  v12 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "MultiLine");
  v11(a1, v12);
  v13 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 160);
  v14 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "AutoScroll");
  v13(a1, v14);
  (*(void (__fastcall **)(_BYTE *, int, const char *))(*(_DWORD *)a2 + 156))(v21, a2, "PasswordChar");
  v15 = *(void (__fastcall **)(float *, int, int))(*(_DWORD *)a1 + 168);
  if ( (unsigned int)(v22 - (_DWORD)p) >> 2 )
  {
    v16 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "PasswordBox");
    v15(a1, v16, *(_DWORD *)p);
  }
  else
  {
    v20 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "PasswordBox");
    v15(a1, v20, 42);
  }
  v17 = *(void (__fastcall **)(float *, int, int))(*(_DWORD *)a1 + 140);
  v18 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "HTextAlign",
          glitch::gui::GUIAlignmentNames);
  v19 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "VTextAlign",
          glitch::gui::GUIAlignmentNames);
  v17(a1, v18, v19);
  if ( p != v21 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 6b0b38 glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  *(_DWORD *)this = off_987218;
  *((_DWORD *)this + 86) = off_9872EC;
  *((_DWORD *)this + 87) = off_98730C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98731C);
}


// ===== 6b0b8c `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  glitch::gui::IGUIEditBox::~IGUIEditBox((glitch::gui::IGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6b0b9c `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  glitch::gui::IGUIEditBox::~IGUIEditBox((glitch::gui::IGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6b0bac glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 90);
  *(_DWORD *)this = off_987450;
  *((_DWORD *)this + 116) = off_987524;
  *((_DWORD *)this + 117) = off_987544;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 92);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((void **)this + 105);
  if ( v4 )
    GlitchFree(v4);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 102);
  *(_DWORD *)this = off_987590;
  *(int *)((char *)&elf_hash_bucket[61] + (_DWORD)this) = (int)off_987664;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_987684;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_987558);
}


// ===== 6b0c60 glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::CGUIEditBox::~CGUIEditBox(this);
  LC_API_FREE_0(this);
}


// ===== 6b0c7c glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0
  int v8; // r3
  int *v9; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 90);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 92);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((void **)this + 105);
  if ( v7 )
    GlitchFree(v7);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 102);
  v8 = a2[1];
  v9 = a2 + 1;
  *(_DWORD *)this = v8;
  *(_DWORD *)((char *)this + *(_DWORD *)(v8 - 12)) = v9[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v9[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v9 + 1);
}


// ===== 6b0d20 glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  *(_DWORD *)this = off_987218;
  *((_DWORD *)this + 86) = off_9872EC;
  *((_DWORD *)this + 87) = off_98730C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98731C);
  LC_API_FREE_0(this);
}


// ===== 6b0d7c `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  glitch::gui::IGUIEditBox::~IGUIEditBox((glitch::gui::IGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6b0d8c `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIEditBox::~IGUIEditBox(glitch::gui::IGUIEditBox *this)
{
  glitch::gui::IGUIEditBox::~IGUIEditBox((glitch::gui::IGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6b0d9c glitch::gui::CGUIEditBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::gui::CGUIEditBox::serializeAttributes(int a1, int a2)
{
  _DWORD v4[17]; // [sp+Ch] [bp-50h] BYREF
  void *p; // [sp+50h] [bp-Ch]

  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "OverrideColorEnabled",
    *(unsigned __int8 *)(a1 + 346),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "OverrideColor",
    *(_DWORD *)(a1 + 356),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MaxChars",
    *(_DWORD *)(a1 + 388),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "WordWrap",
    *(unsigned __int8 *)(a1 + 392),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "MultiLine",
    *(unsigned __int8 *)(a1 + 393),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "AutoScroll",
    *(unsigned __int8 *)(a1 + 394),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "PasswordBox",
    *(unsigned __int8 *)(a1 + 395),
    0);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v4,
    (wchar_t *)" ");
  *(_DWORD *)p = *(_DWORD *)(a1 + 396);
  (*(void (__fastcall **)(int, const char *, void *, _DWORD))(*(_DWORD *)a2 + 148))(a2, "PasswordChar", p, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "HTextAlign",
    *(_DWORD *)(a1 + 400),
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "VTextAlign",
    *(_DWORD *)(a1 + 404),
    glitch::gui::GUIAlignmentNames,
    0);
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  if ( p != v4 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 6b0f8c glitch::gui::CGUIEditBox::breakText(void) =====
void __fastcall glitch::gui::CGUIEditBox::breakText(glitch::gui::CGUIEditBox *this)
{
  int v2; // r0
  int v3; // r5
  _DWORD *v4; // r1
  _DWORD *v5; // r2
  char *v6; // r1
  char *v7; // r3
  int v8; // r2
  int v9; // r8
  int v10; // r3
  int v11; // r0
  unsigned int v12; // r6
  int v13; // r5
  bool v14; // zf
  int v15; // r3
  signed int v16; // r10
  int v17; // r7
  _BYTE *v18; // r1
  size_t v19; // r0
  size_t v20; // r0
  size_t v21; // r0
  _BYTE *v22; // r1
  unsigned int v23; // r3
  int v24; // r1
  unsigned int v25; // r3
  unsigned int v26; // r3
  unsigned int v27; // r2
  size_t v28; // r0
  size_t v29; // r0
  _BYTE *v30; // r1
  int v31; // r12
  int v32; // [sp+8h] [bp-13Ch]
  int v33; // [sp+8h] [bp-13Ch]
  int v34; // [sp+Ch] [bp-138h]
  int v35; // [sp+18h] [bp-12Ch]
  int v36; // [sp+20h] [bp-124h]
  char *v37; // [sp+24h] [bp-120h]
  int v38; // [sp+28h] [bp-11Ch]
  int v39; // [sp+2Ch] [bp-118h]
  const void **v40; // [sp+30h] [bp-114h]
  int v41[16]; // [sp+40h] [bp-104h] BYREF
  int *v42; // [sp+80h] [bp-C4h]
  void *p; // [sp+84h] [bp-C0h]
  int v44[16]; // [sp+88h] [bp-BCh] BYREF
  char *v45; // [sp+C8h] [bp-7Ch]
  void *v46; // [sp+CCh] [bp-78h]
  _DWORD v47[16]; // [sp+D0h] [bp-74h] BYREF
  _DWORD *v48; // [sp+110h] [bp-34h]
  void *v49; // [sp+114h] [bp-30h]
  int v50; // [sp+118h] [bp-2Ch] BYREF
  int v51; // [sp+120h] [bp-24h] BYREF
  unsigned int v52; // [sp+128h] [bp-1Ch] BYREF
  int v53; // [sp+12Ch] [bp-18h] BYREF
  char v54[4]; // [sp+130h] [bp-14h] BYREF
  char v55[4]; // [sp+134h] [bp-10h] BYREF
  char v56[4]; // [sp+138h] [bp-Ch] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = v2;
  if ( (*((_BYTE *)this + 392) || *((_BYTE *)this + 393)) && v2 )
  {
    v4 = *((_DWORD **)this + 102);
    v5 = *((_DWORD **)this + 103);
    v37 = (char *)this + 408;
    if ( v4 != v5 )
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 408,
        v4,
        v5);
    v6 = *((char **)this + 106);
    v7 = *((char **)this + 105);
    v53 = 0;
    v8 = (v6 - v7) >> 2;
    v40 = (const void **)((char *)this + 420);
    if ( v8 )
    {
      if ( v6 != v7 )
        *((_DWORD *)this + 106) = v7;
    }
    else
    {
      std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        (int)v40,
        v6,
        0,
        (char *)&v53);
    }
    v35 = *((_DWORD *)this + 90);
    if ( v35 || (v35 = (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v3 + 40))(v3, 0, v8)) != 0 )
    {
      *((_DWORD *)this + 91) = v35;
      v48 = v47;
      v49 = v47;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v47,
        0x10u);
      v9 = 0;
      *v48 = 0;
      v45 = (char *)v44;
      v46 = v44;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v44,
        0x10u);
      *(_DWORD *)v45 = 0;
      v42 = v41;
      p = v41;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v41,
        0x10u);
      *v42 = 0;
      v10 = *((_DWORD *)this + 57);
      v11 = (*((_DWORD *)this + 56) - v10) >> 2;
      v34 = v11;
      v39 = *((_DWORD *)this + 12) - 6 - *((_DWORD *)this + 10);
      v52 = 0;
      if ( v11 > 0 )
      {
        v12 = 1;
        v36 = 0;
        while ( 1 )
        {
          v13 = *(_DWORD *)(v10 + 4 * v9);
          if ( v13 == 13 )
          {
            v16 = v12;
            if ( *(_DWORD *)(v10 + 4 * v12) == 10 )
            {
              v24 = v10;
              v25 = (*((_DWORD *)this + 56) - v10) >> 2;
              if ( v12 > v25 )
              {
                __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
                v24 = *((_DWORD *)this + 57);
                v25 = (*((_DWORD *)this + 56) - v24) >> 2;
              }
              v26 = v25 - v12;
              if ( v26 > 1 )
                v27 = v12 + 1;
              else
                v27 = v12 + v26;
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::erase(
                (int)this + 160,
                (wchar_t *)(v24 + 4 * v12),
                (wchar_t *)(v24 + 4 * v27));
              v15 = 1;
              v17 = 1;
              --v34;
              v13 = 32;
            }
            else
            {
              v15 = 1;
              v17 = 1;
              v13 = 32;
            }
          }
          else if ( v13 == 10 )
          {
            v15 = 1;
            v16 = v12;
            v17 = 1;
            v13 = 32;
          }
          else
          {
            v14 = v13 == 0;
            if ( v13 )
              v14 = v13 == 32;
            v15 = v14;
            v16 = v12;
            v17 = 0;
          }
          if ( !*((_BYTE *)this + 393) )
            v17 = 0;
          if ( !v15 && v34 - 1 != v9 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              v44,
              v13);
LABEL_14:
            ++v9;
            ++v12;
            if ( v34 <= v16 )
              goto LABEL_32;
            goto LABEL_15;
          }
          if ( (unsigned int)(v45 - (_BYTE *)v46) >> 2 )
            break;
LABEL_28:
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v41,
            v13);
          if ( !v17 )
            goto LABEL_14;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v47,
            p,
            v42);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v47,
            v46,
            v45);
          std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            (int)v37,
            (unsigned int)v47);
          v18 = *((_BYTE **)this + 106);
          if ( v18 == *((_BYTE **)this + 107) )
          {
            std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
              v40,
              v18,
              &v52,
              (int)v55,
              1u,
              1);
          }
          else
          {
            *(_DWORD *)v18 = v52;
            *((_DWORD *)this + 106) += 4;
          }
          v52 = v12;
          v19 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v47,
            dword_8BEC18,
            &dword_8BEC18[v19]);
          v20 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v44,
            dword_8BEC18,
            &dword_8BEC18[v20]);
          v21 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v41,
            dword_8BEC18,
            &dword_8BEC18[v21]);
          v36 = 0;
          ++v9;
          ++v12;
          if ( v34 <= v16 )
            goto LABEL_32;
LABEL_15:
          v10 = *((_DWORD *)this + 57);
        }
        (*(void (__fastcall **)(int *))(*(_DWORD *)v35 + 28))(&v51);
        v38 = v51;
        (*(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v35 + 28))(&v50, v35, v46);
        if ( *((_BYTE *)this + 392) )
        {
          v36 += v50 + v38;
          if ( v39 < v36 )
          {
            v32 = v50;
            std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              (int)v37,
              (unsigned int)v47);
            v30 = *((_BYTE **)this + 106);
            v31 = v32;
            if ( v30 == *((_BYTE **)this + 107) )
            {
              std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
                v40,
                v30,
                &v52,
                (int)v56,
                1u,
                1);
              v31 = v32;
            }
            else
            {
              *(_DWORD *)v30 = v52;
              *((_DWORD *)this + 106) += 4;
            }
            v33 = v31;
            v52 = v9 - ((v45 - (_BYTE *)v46) >> 2);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v47,
              (const wchar_t *)v46,
              v45);
            v36 = v33;
            goto LABEL_57;
          }
        }
        else
        {
          v36 += v50 + v38;
        }
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v47,
          p,
          v42);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v47,
          v46,
          v45);
LABEL_57:
        v28 = wcslen(dword_8BEC18);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v44,
          dword_8BEC18,
          &dword_8BEC18[v28]);
        v29 = wcslen(dword_8BEC18);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v41,
          dword_8BEC18,
          &dword_8BEC18[v29]);
        goto LABEL_28;
      }
LABEL_32:
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v47,
        p,
        v42);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v47,
        v46,
        v45);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v37,
        (unsigned int)v47);
      v22 = *((_BYTE **)this + 106);
      if ( v22 == *((_BYTE **)this + 107) )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          v40,
          v22,
          &v52,
          (int)v54,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v22 = v52;
        *((_DWORD *)this + 106) += 4;
      }
      v23 = (*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2;
      if ( *((_DWORD *)this + 94) > v23 )
        *((_DWORD *)this + 94) = v23;
      if ( p != v41 && p )
        GlitchFree(p);
      if ( v46 != v44 && v46 )
        GlitchFree(v46);
      if ( v49 != v47 )
      {
        if ( v49 )
          GlitchFree(v49);
      }
    }
  }
}


// ===== 6b15c8 glitch::gui::CGUIEditBox::setText(wchar_t const*) =====
void __fastcall glitch::gui::CGUIEditBox::setText(glitch::gui::CGUIEditBox *this, const wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)this + 160,
    s,
    &s[v4]);
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_DWORD *)this + 95) = 0;
  *((_DWORD *)this + 87) = 0;
  glitch::gui::CGUIEditBox::breakText(this);
}


// ===== 6b160c glitch::gui::CGUIEditBox::updateAbsolutePosition(void) =====
void __fastcall glitch::gui::CGUIEditBox::updateAbsolutePosition(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::IGUIElement::updateAbsolutePosition(this);
  glitch::gui::CGUIEditBox::breakText(this);
}


// ===== 6b1624 glitch::gui::CGUIEditBox::setWordWrap(bool) =====
void __fastcall glitch::gui::CGUIEditBox::setWordWrap(glitch::gui::CGUIEditBox *this, bool a2)
{
  *((_BYTE *)this + 392) = a2;
  glitch::gui::CGUIEditBox::breakText(this);
}


// ===== 6b162c glitch::gui::CGUIEditBox::setOverrideFont(glitch::gui::IGUIFont *) =====
void __fastcall glitch::gui::CGUIEditBox::setOverrideFont(glitch::gui::CGUIEditBox *this, glitch::gui::IGUIFont *a2)
{
  glitch::IReferenceCounted *v3; // r0

  v3 = *((glitch::IReferenceCounted **)this + 90);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  *((_DWORD *)this + 90) = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  glitch::gui::CGUIEditBox::breakText(this);
}


// ===== 6b1668 glitch::gui::CGUIEditBox::inputChar(wchar_t) =====
void __fastcall glitch::gui::CGUIEditBox::inputChar(glitch::gui::CGUIEditBox *this, wchar_t a2)
{
  unsigned int v4; // r3
  signed int v5; // r10
  signed int v6; // r8
  unsigned int v7; // r12
  unsigned int v8; // r2
  glitch::os::Timer *v9; // r0
  unsigned int v10; // [sp+4h] [bp-178h]
  _DWORD v11[18]; // [sp+8h] [bp-174h] BYREF
  _DWORD v12[18]; // [sp+50h] [bp-12Ch] BYREF
  _DWORD v13[18]; // [sp+98h] [bp-E4h] BYREF
  _DWORD v14[18]; // [sp+E0h] [bp-9Ch] BYREF
  _DWORD v15[16]; // [sp+128h] [bp-54h] BYREF
  _DWORD *v16; // [sp+168h] [bp-14h]
  _DWORD *v17; // [sp+16Ch] [bp-10h]
  wchar_t v18; // [sp+170h] [bp-Ch] BYREF
  int v19; // [sp+174h] [bp-8h]

  if ( *((_BYTE *)this + 153) )
  {
    if ( a2 )
    {
      v4 = *((_DWORD *)this + 97);
      if ( v4 > (*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2 || !v4 )
      {
        v16 = v15;
        v17 = v15;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v15,
          0x10u);
        *v16 = 0;
        v5 = *((_DWORD *)this + 87);
        v6 = *((_DWORD *)this + 88);
        if ( v5 == v6 )
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v12,
            (int)this + 160,
            0,
            *((_DWORD *)this + 94));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)v15,
            (int)v12);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v12);
          v18 = a2;
          v19 = 0;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::append(
            v15,
            &v18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v11,
            (int)this + 160,
            *((_DWORD *)this + 94),
            ((*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2) - *((_DWORD *)this + 94));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v15,
            (_DWORD *)v11[17],
            (_DWORD *)v11[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v11);
          v9 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                      (int)this + 160,
                                      (int)v15);
          ++*((_DWORD *)this + 94);
        }
        else
        {
          if ( v6 >= v5 )
            v7 = *((_DWORD *)this + 87);
          else
            v7 = *((_DWORD *)this + 88);
          v10 = v7;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v14,
            (int)this + 160,
            0,
            v7);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)v15,
            (int)v14);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v14);
          v18 = a2;
          v19 = 0;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::append(
            v15,
            &v18);
          if ( v6 < v5 )
            v8 = v5;
          else
            v8 = v6;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v13,
            (int)this + 160,
            v8,
            ((*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2) - v8);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v15,
            (_DWORD *)v13[17],
            (_DWORD *)v13[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v13);
          v9 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                      (int)this + 160,
                                      (int)v15);
          *((_DWORD *)this + 94) = v10 + 1;
        }
        *((_DWORD *)this + 93) = glitch::os::Timer::getTime(v9);
        *((_DWORD *)this + 88) = 0;
        *((_DWORD *)this + 87) = 0;
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v15);
      }
    }
    glitch::gui::CGUIEditBox::breakText(this);
  }
}


// ===== 6b185c glitch::gui::CGUIEditBox::setMax(uint) =====
void __fastcall glitch::gui::CGUIEditBox::setMax(glitch::gui::CGUIEditBox *this, unsigned int a2)
{
  int v2; // r12
  int v3; // r2
  void **v4; // r5
  void *v5[17]; // [sp+Ch] [bp-50h] BYREF
  void *p; // [sp+50h] [bp-Ch]

  v2 = *((_DWORD *)this + 56);
  v3 = *((_DWORD *)this + 57);
  *((_DWORD *)this + 97) = a2;
  if ( a2 < (v2 - v3) >> 2 && a2 )
  {
    v4 = (void **)((char *)this + 160);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v5,
      (int)this + 160,
      0,
      a2);
    if ( v4 != v5 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v4,
        (const wchar_t *)p,
        (_DWORD *)v5[16]);
    if ( p != v5 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
}


// ===== 6b18e0 glitch::gui::CGUIEditBox::draw(void) =====
void __fastcall glitch::gui::CGUIEditBox::draw(glitch::gui::CGUIEditBox *this)
{
  int v2; // r0
  int v3; // r8
  int v4; // lr
  int v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r1
  int v9; // r0
  int v10; // r2
  int v11; // r12
  int v12; // r3
  int v13; // r2
  int v14; // r3
  int v15; // r6
  int v16; // r2
  char *v17; // r0
  int v18; // r3
  int v19; // r12
  bool v20; // cc
  int v21; // r5
  int v22; // r10
  int v23; // r3
  int v24; // r3
  int v25; // r5
  char *v26; // r7
  int v27; // r3
  int v28; // r2
  char *v29; // r2
  int v30; // r0
  _DWORD *v31; // r2
  const wchar_t *v32; // r1
  int v33; // r11
  int v34; // r3
  unsigned int v35; // r3
  void (__fastcall *v36)(int, int, char *, int, _DWORD, int, int *); // r9
  unsigned int v37; // r8
  _BOOL4 v38; // r3
  int v39; // r11
  int v40; // r12
  int v41; // r9
  int v42; // r11
  int v43; // r12
  int v44; // r3
  void (__fastcall *v45)(int, glitch::gui::CGUIEditBox *, int *, char *, int *); // r9
  void *v46; // r8
  void (__fastcall *v47)(int, void *, char *, int, _DWORD, int, int *); // r9
  int v48; // r7
  glitch::os::Timer *v49; // r0
  int v50; // r5
  char *v51; // r4
  char *i; // r5
  char *v53; // t1
  void (__fastcall *v54)(int, glitch::gui::CGUIEditBox *, int, _DWORD, int, char *, char *); // r5
  int v55; // r5
  int v56; // r5
  int v57; // r5
  int v58; // r5
  int v59; // r0
  void (__fastcall *v60)(int, const char *, char *, int, _DWORD, int, int *); // r5
  int v61; // [sp+10h] [bp-2C4h]
  int v62; // [sp+18h] [bp-2BCh]
  char *v63; // [sp+1Ch] [bp-2B8h]
  int v64; // [sp+24h] [bp-2B0h]
  int v65; // [sp+28h] [bp-2ACh]
  char *v66; // [sp+2Ch] [bp-2A8h]
  int v67; // [sp+34h] [bp-2A0h]
  int v68; // [sp+38h] [bp-29Ch]
  int LineFromPos; // [sp+3Ch] [bp-298h]
  int v70; // [sp+40h] [bp-294h]
  char *v71; // [sp+44h] [bp-290h]
  char v72; // [sp+48h] [bp-28Ch]
  int v73; // [sp+4Ch] [bp-288h]
  char v74; // [sp+50h] [bp-284h]
  char v75; // [sp+54h] [bp-280h]
  char v76; // [sp+58h] [bp-27Ch]
  char v77; // [sp+5Ch] [bp-278h]
  int v78; // [sp+64h] [bp-270h]
  int v79; // [sp+70h] [bp-264h]
  void *v80[17]; // [sp+8Ch] [bp-248h] BYREF
  void *v81; // [sp+D0h] [bp-204h]
  _DWORD v82[18]; // [sp+D4h] [bp-200h] BYREF
  _DWORD v83[18]; // [sp+11Ch] [bp-1B8h] BYREF
  _DWORD v84[18]; // [sp+164h] [bp-170h] BYREF
  _DWORD v85[16]; // [sp+1ACh] [bp-128h] BYREF
  _DWORD *v86; // [sp+1ECh] [bp-E8h]
  void *p; // [sp+1F0h] [bp-E4h]
  _DWORD v88[16]; // [sp+1F4h] [bp-E0h] BYREF
  char *v89; // [sp+234h] [bp-A0h]
  void *v90; // [sp+238h] [bp-9Ch]
  _DWORD v91[16]; // [sp+23Ch] [bp-98h] BYREF
  char *v92; // [sp+27Ch] [bp-58h]
  void *v93; // [sp+280h] [bp-54h]
  int v94; // [sp+284h] [bp-50h] BYREF
  int v95; // [sp+288h] [bp-4Ch]
  int v96; // [sp+28Ch] [bp-48h]
  int v97; // [sp+290h] [bp-44h]
  int v98; // [sp+294h] [bp-40h] BYREF
  int v99; // [sp+29Ch] [bp-38h] BYREF
  int v100; // [sp+2A4h] [bp-30h] BYREF
  int v101; // [sp+2ACh] [bp-28h] BYREF
  int v102; // [sp+2B4h] [bp-20h]
  int v103; // [sp+2B8h] [bp-1Ch]
  int v104; // [sp+2BCh] [bp-18h] BYREF
  int v105; // [sp+2C0h] [bp-14h]
  int v106; // [sp+2C4h] [bp-10h]

  if ( !*((_BYTE *)this + 152) )
    return;
  v64 = (*(int (__fastcall **)(_DWORD, glitch::gui::CGUIEditBox *))(**((_DWORD **)this + 84) + 28))(
          *((_DWORD *)this + 84),
          this);
  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = v2;
  if ( !v2 )
    return;
  v4 = *((unsigned __int8 *)this + 345);
  v5 = *((_DWORD *)this + 14);
  v6 = *((_DWORD *)this + 16);
  v7 = *((_DWORD *)this + 17);
  *((_DWORD *)this + 113) = *((_DWORD *)this + 15);
  *((_DWORD *)this + 114) = v6;
  *((_DWORD *)this + 115) = v7;
  *((_DWORD *)this + 112) = v5;
  if ( v4 )
  {
    v54 = *(void (__fastcall **)(int, glitch::gui::CGUIEditBox *, int, _DWORD, int, char *, char *))(*(_DWORD *)v2 + 72);
    v106 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 17);
    v54(v3, this, v106, 0, 1, (char *)this + 448, (char *)this + 72);
    v55 = *((_DWORD *)this + 112);
    *((_DWORD *)this + 112) = v55 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 24))(v3, 8);
    v56 = *((_DWORD *)this + 113);
    *((_DWORD *)this + 113) = v56 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 24))(v3, 9);
    v57 = *((_DWORD *)this + 114);
    *((_DWORD *)this + 114) = ~(*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 24))(v3, 8) + v57;
    v58 = *((_DWORD *)this + 115);
    v59 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 24))(v3, 9);
    v5 = *((_DWORD *)this + 112);
    *((_DWORD *)this + 115) = ~v59 + v58;
  }
  v8 = *((_DWORD *)this + 114);
  v9 = *((_DWORD *)this + 20);
  v10 = *((_DWORD *)this + 115);
  v11 = *((_DWORD *)this + 113);
  v94 = v5;
  v95 = v11;
  v96 = v8;
  v97 = v10;
  if ( v8 > v9 )
    v96 = v9;
  if ( v10 > *((_DWORD *)this + 21) )
    v97 = *((_DWORD *)this + 21);
  v12 = *((_DWORD *)this + 18);
  v13 = v94;
  if ( v12 > v94 )
  {
    v94 = *((_DWORD *)this + 18);
    v13 = v12;
  }
  v14 = *((_DWORD *)this + 19);
  if ( v14 > v95 )
    v95 = *((_DWORD *)this + 19);
  else
    v14 = v95;
  if ( v97 < v14 )
    v95 = v97;
  if ( v13 > v96 )
    v94 = v96;
  v15 = *((_DWORD *)this + 90);
  if ( !v15 )
  {
    v15 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v3 + 40))(v3, 0);
    if ( !v15 )
      goto LABEL_97;
  }
  if ( *((_DWORD *)this + 91) != v15 )
    glitch::gui::CGUIEditBox::breakText(this);
  v92 = (char *)v91;
  v93 = v91;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v91,
    0x10u);
  *(_DWORD *)v92 = 0;
  v89 = (char *)v88;
  v90 = v88;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v88,
    0x10u);
  v17 = (char *)this + 160;
  v63 = (char *)this + 160;
  *(_DWORD *)v89 = 0;
  if ( *((_BYTE *)this + 395) )
  {
    v65 = 0;
  }
  else
  {
    if ( *((_BYTE *)this + 392) )
      v65 = 1;
    else
      v16 = *((unsigned __int8 *)this + 393);
    if ( !*((_BYTE *)this + 392) )
      v65 = v16;
  }
  v18 = *((_DWORD *)this + 87);
  v70 = v18;
  v19 = *((_DWORD *)this + 88);
  v20 = v18 < v19;
  if ( v18 >= v19 )
  {
    v17 = *((char **)this + 87);
    v18 = *((_DWORD *)this + 88);
  }
  v68 = *((_DWORD *)this + 88);
  if ( !v20 )
  {
    v70 = v18;
    v68 = (int)v17;
  }
  if ( v65 )
  {
    LineFromPos = glitch::gui::CGUIEditBox::getLineFromPos(this, v70);
    v21 = glitch::gui::CGUIEditBox::getLineFromPos(this, v68) + 1 - LineFromPos;
    v22 = 954437177 * ((*((_DWORD *)this + 103) - *((_DWORD *)this + 102)) >> 3);
  }
  else
  {
    v21 = 1;
    LineFromPos = 0;
    v22 = 1;
  }
  v72 = *((_BYTE *)this + 346);
  v23 = (*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2;
  v74 = *((_BYTE *)this + 359);
  v75 = *((_BYTE *)this + 358);
  v76 = *((_BYTE *)this + 357);
  if ( !v23 )
    v62 = 0;
  v77 = *((_BYTE *)this + 356);
  if ( !v23 )
    goto LABEL_85;
  if ( !*((_BYTE *)this + 153) && !*((_BYTE *)this + 346) )
  {
    *((_BYTE *)this + 346) = 1;
    *((_DWORD *)this + 89) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 16))(v3, 9);
  }
  if ( v22 <= 0 )
  {
    v62 = 0;
    goto LABEL_84;
  }
  v73 = v21 + LineFromPos;
  v24 = v21 + LineFromPos - 1;
  v62 = 0;
  v25 = 0;
  v26 = (char *)this + 160;
  v71 = (char *)this + 408;
  v66 = (char *)this + 432;
  v78 = v24;
  v67 = v3;
  do
  {
    glitch::gui::CGUIEditBox::setTextRect(this, v25);
    v27 = *((_DWORD *)this + 111);
    v28 = *((_DWORD *)this + 109);
    if ( v97 < v27 )
      v27 = v97;
    if ( v95 >= v28 )
      v28 = v95;
    if ( v27 < v28 )
      v28 = v27;
    if ( v28 <= v27 )
    {
      if ( *((_BYTE *)this + 395) )
      {
        v26 = *((char **)this + 102);
        v29 = *((char **)this + 103);
        v30 = (int)v26;
        if ( 954437177 * ((v29 - v26) >> 3) != 1 )
        {
          if ( v29 != v26 )
            std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
              (int)v71,
              *((_DWORD **)this + 102),
              v29);
          v86 = v85;
          p = v85;
          std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
            v85,
            0x10u);
          *v86 = 0;
          std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            (int)v71,
            (unsigned int)v85);
          if ( p != v85 && p )
            GlitchFree(p);
          v30 = *((_DWORD *)this + 102);
          v26 = (char *)v30;
        }
        v31 = *((_DWORD **)this + 56);
        v32 = *((const wchar_t **)this + 57);
        v33 = *(_DWORD *)(v30 + 68);
        v34 = v31 - v32;
        if ( v34 != (*(_DWORD *)(v30 + 64) - v33) >> 2 )
        {
          if ( v63 != (char *)v30 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              v30,
              v32,
              v31);
            v30 = *((_DWORD *)this + 102);
            v33 = *(_DWORD *)(v30 + 68);
            v34 = (*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2;
          }
          if ( v34 )
          {
            v35 = 0;
            while ( 1 )
            {
              *(_DWORD *)(v33 + 4 * v35++) = *((_DWORD *)this + 99);
              if ( v35 >= (*((_DWORD *)this + 56) - *((_DWORD *)this + 57)) >> 2 )
                break;
              v33 = *(_DWORD *)(*((_DWORD *)this + 102) + 68);
            }
            v26 = *((char **)this + 102);
            v33 = *((_DWORD *)v26 + 17);
          }
          else
          {
            v26 = (char *)v30;
            v33 = *(_DWORD *)(v30 + 68);
          }
        }
        v62 = 0;
      }
      else
      {
        if ( !v65 )
        {
          v33 = *((_DWORD *)this + 57);
          v62 = 0;
          v26 = (char *)this + 160;
          v36 = *(void (__fastcall **)(int, int, char *, int, _DWORD, int, int *))(*(_DWORD *)v15 + 12);
          if ( *((_BYTE *)this + 346) )
            goto LABEL_67;
          goto LABEL_112;
        }
        v26 = (char *)(*((_DWORD *)this + 102) + 72 * v25);
        v62 = *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v25);
        v33 = *((_DWORD *)v26 + 17);
      }
      v36 = *(void (__fastcall **)(int, int, char *, int, _DWORD, int, int *))(*(_DWORD *)v15 + 12);
      if ( *((_BYTE *)this + 346) )
      {
LABEL_67:
        v105 = *((_DWORD *)this + 89);
        goto LABEL_68;
      }
LABEL_112:
      v105 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v67 + 16))(v67, 8);
LABEL_68:
      v37 = 0;
      v36(v15, v33, v66, v105, 0, 1, &v94);
      if ( v64 )
      {
        v38 = v25 >= LineFromPos;
        if ( *((_DWORD *)this + 87) == *((_DWORD *)this + 88) )
          v38 = 0;
        if ( v38 && v73 > v25 )
        {
          v39 = *((_DWORD *)v26 + 16);
          v40 = *((_DWORD *)v26 + 17);
          if ( v25 == LineFromPos )
          {
            v61 = *((_DWORD *)v26 + 17);
            v79 = v70 - v62;
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
              v84,
              (int)v26,
              0,
              v70 - v62);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v91,
              (int)v84);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v84);
            (*(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v15 + 28))(&v101, v15, v93);
            v41 = v101;
            v37 = v70 - v62;
            v40 = v61;
          }
          else
          {
            v41 = 0;
            v79 = 0;
          }
          if ( v78 == v25 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
              v83,
              (int)v26,
              0,
              v68 - v62);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v88,
              (int)v83);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v83);
            (*(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v15 + 28))(&v100, v15, v90);
            v43 = v100;
            v42 = (v89 - (_BYTE *)v90) >> 2;
          }
          else
          {
            v42 = (v39 - v40) >> 2;
            (*(void (__fastcall **)(int *, int, _DWORD))(*(_DWORD *)v15 + 28))(&v99, v15, *((_DWORD *)v26 + 17));
            v43 = v99;
          }
          v44 = v41 + *((_DWORD *)this + 108);
          *((_DWORD *)this + 110) = *((_DWORD *)this + 108) + v43;
          *((_DWORD *)this + 108) = v44;
          v45 = *(void (__fastcall **)(int, glitch::gui::CGUIEditBox *, int *, char *, int *))(*(_DWORD *)v67 + 100);
          v104 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v67 + 16))(v67, 10);
          v45(v67, this, &v104, v66, &v94);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v82,
            (int)v26,
            v37,
            v42 - v79);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)v91,
            (int)v82);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v82);
          v46 = v93;
          if ( (unsigned int)(v92 - (_BYTE *)v93) >> 2 )
          {
            v47 = *(void (__fastcall **)(int, void *, char *, int, _DWORD, int, int *))(*(_DWORD *)v15 + 12);
            if ( *((_BYTE *)this + 346) )
              v103 = *((_DWORD *)this + 89);
            else
              v103 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v67 + 16))(v67, 11);
            v47(v15, v46, v66, v103, 0, 1, &v94);
          }
        }
      }
    }
    ++v25;
  }
  while ( v25 != v22 );
  v3 = v67;
  v63 = v26;
LABEL_84:
  *((_BYTE *)this + 346) = v72;
  *((_BYTE *)this + 359) = v74;
  *((_BYTE *)this + 358) = v75;
  *((_BYTE *)this + 357) = v76;
  *((_BYTE *)this + 356) = v77;
LABEL_85:
  if ( *((_BYTE *)this + 392) || (v48 = *((unsigned __int8 *)this + 393), *((_BYTE *)this + 393)) )
  {
    v48 = glitch::gui::CGUIEditBox::getLineFromPos(this, *((_DWORD *)this + 94));
    v63 = (char *)(*((_DWORD *)this + 102) + 72 * v48);
    v62 = *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v48);
  }
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v80,
    (int)v63,
    0,
    *((_DWORD *)this + 94) - v62);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)v91,
    (const wchar_t *)v81,
    (_DWORD *)v80[16]);
  if ( v81 != v80 && v81 )
    GlitchFree(v81);
  v49 = (glitch::os::Timer *)(*(int (__fastcall **)(int *, int, void *))(*(_DWORD *)v15 + 28))(&v98, v15, v93);
  v50 = v98;
  if ( v64 && (glitch::os::Timer::getTime(v49) - *((_DWORD *)this + 93)) % 0x2BC <= 0x15D )
  {
    glitch::gui::CGUIEditBox::setTextRect(this, v48);
    *((_DWORD *)this + 108) += v50;
    v60 = *(void (__fastcall **)(int, const char *, char *, int, _DWORD, int, int *))(*(_DWORD *)v15 + 12);
    if ( *((_BYTE *)this + 346) )
      v102 = *((_DWORD *)this + 89);
    else
      v102 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 16))(v3, 8);
    v60(v15, "_", (char *)this + 432, v102, 0, 1, &v94);
  }
  if ( v90 != v88 && v90 )
    GlitchFree(v90);
  if ( v93 != v91 && v93 )
    GlitchFree(v93);
LABEL_97:
  if ( *((_BYTE *)this + 152) )
  {
    v53 = *((char **)this + 1);
    v51 = (char *)this + 4;
    for ( i = v53; i != v51; i = *(char **)i )
      (*(void (__fastcall **)(int))(**((_DWORD **)i + 2) + 32))(*((_DWORD *)i + 2));
  }
}


// ===== 6b246c glitch::gui::CGUIEditBox::calculateScrollPos(void) =====
int __fastcall glitch::gui::CGUIEditBox::calculateScrollPos(int this)
{
  int v1; // r4
  int LineFromPos; // r6
  int v3; // r3
  int v4; // r2
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r3
  int v9; // r5
  int v10; // r0
  int v11; // r2
  int v12; // r1
  int v13; // r3
  bool v14; // zf
  int v15; // r1
  unsigned int v16; // r3
  void (__fastcall *v17)(int *, int, void *); // r7
  int v18; // r8
  int v19; // r8
  int v20; // r3
  int v21; // r3
  bool v22; // cc
  _DWORD v23[17]; // [sp+Ch] [bp-5Ch] BYREF
  void *p; // [sp+50h] [bp-18h]
  int v25; // [sp+54h] [bp-14h] BYREF
  int v26; // [sp+5Ch] [bp-Ch] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 394) )
  {
    LineFromPos = glitch::gui::CGUIEditBox::getLineFromPos((glitch::gui::CGUIEditBox *)this, *(_DWORD *)(this + 376));
    this = glitch::gui::CGUIEditBox::setTextRect((glitch::gui::CGUIEditBox *)v1, LineFromPos);
    if ( !*(_BYTE *)(v1 + 392) )
    {
      v9 = *(_DWORD *)(v1 + 360);
      v10 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 56))(*(_DWORD *)(v1 + 336));
      v12 = *(_DWORD *)(v1 + 360);
      if ( !v12 )
      {
        v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 40))(v10);
        v9 = v10;
      }
      v13 = *(unsigned __int8 *)(v1 + 393);
      v14 = v13 == 0;
      if ( *(_BYTE *)(v1 + 393) )
      {
        v12 = *(_DWORD *)(v1 + 408);
        v11 = *(_DWORD *)(v1 + 376);
        v13 = *(_DWORD *)(*(_DWORD *)(v1 + 420) + 4 * LineFromPos);
        v10 = 72;
      }
      if ( v14 )
      {
        v16 = *(_DWORD *)(v1 + 376);
        v15 = v1 + 160;
      }
      else
      {
        v15 = v12 + v10 * LineFromPos;
        v16 = v11 - v13;
      }
      v17 = *(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v9 + 28);
      v18 = *(_DWORD *)(v1 + 380) + *(_DWORD *)(v1 + 432);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v23,
        v15,
        0,
        v16);
      v17(&v26, v9, p);
      v19 = v18 + v26;
      if ( p != v23 && p )
        GlitchFree(p);
      this = (*(int (__fastcall **)(int *, int, const char *))(*(_DWORD *)v9 + 28))(&v25, v9, "_");
      v20 = *(_DWORD *)(v1 + 456);
      if ( v19 + v25 <= v20 )
      {
        v21 = *(_DWORD *)(v1 + 448);
        v22 = v19 < v21;
        if ( v19 >= v21 )
          v21 = 0;
        else
          v19 -= v21;
        if ( v22 )
          *(_DWORD *)(v1 + 380) = v19;
        else
          *(_DWORD *)(v1 + 380) = v21;
      }
      else
      {
        *(_DWORD *)(v1 + 380) = v19 + v25 - v20;
      }
    }
    v3 = *(_DWORD *)(v1 + 384);
    v4 = *(_DWORD *)(v1 + 460);
    v5 = v3 + *(_DWORD *)(v1 + 444);
    if ( v4 >= v5 )
    {
      v6 = *(_DWORD *)(v1 + 452);
      v7 = v3 + *(_DWORD *)(v1 + 436);
      if ( v6 <= v7 )
        v8 = 0;
      else
        v8 = v7 - v6;
      *(_DWORD *)(v1 + 384) = v8;
    }
    else
    {
      *(_DWORD *)(v1 + 384) = v5 - v4;
    }
  }
  return this;
}


// ===== 6b2608 glitch::gui::CGUIEditBox::CGUIEditBox(wchar_t const*,bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::CGUIEditBox::CGUIEditBox(
        int a1,
        const wchar_t *a2,
        char a3,
        int a4,
        int a5,
        int a6,
        int *a7)
{
  int v7; // lr
  int v8; // r9
  int v9; // r11
  size_t v13; // r0
  int v14; // r0
  int v15; // r1
  int v16; // r0
  int v17; // r5
  int v18; // r6
  int v19; // r6
  int v20; // r6
  int v21; // r0
  int v22; // r3
  int v23; // r5
  int v26[5]; // [sp+10h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 468) = off_95B720;
  *(_DWORD *)(a1 + 472) = 1;
  *(_DWORD *)(a1 + 464) = off_98776C;
  *(_DWORD *)&byte_4[a1 + 464] = off_98778C;
  v7 = a7[1];
  v8 = a7[2];
  v9 = a7[3];
  v26[0] = *a7;
  v26[1] = v7;
  v26[2] = v8;
  v26[3] = v9;
  glitch::gui::IGUIEditBox::IGUIEditBox(a1, (int *)off_987554, a4, a5, a6, v26);
  *(_DWORD *)(a1 + 464) = off_987524;
  *(_DWORD *)a1 = off_987450;
  *(_DWORD *)(a1 + 468) = off_987544;
  *(_BYTE *)(a1 + 359) = 101;
  *(_DWORD *)(a1 + 396) = 42;
  *(_BYTE *)(a1 + 344) = 0;
  *(_BYTE *)(a1 + 346) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 392) = 0;
  *(_BYTE *)(a1 + 393) = 0;
  *(_BYTE *)(a1 + 395) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_BYTE *)(a1 + 345) = a3;
  *(_BYTE *)(a1 + 358) = -1;
  *(_DWORD *)(a1 + 404) = 2;
  *(_BYTE *)(a1 + 356) = -1;
  *(_BYTE *)(a1 + 357) = -1;
  *(_BYTE *)(a1 + 394) = 1;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 444) = 1;
  *(_DWORD *)(a1 + 440) = 1;
  *(_DWORD *)(a1 + 448) = *a7;
  *(_DWORD *)(a1 + 452) = a7[1];
  *(_DWORD *)(a1 + 456) = a7[2];
  *(_DWORD *)(a1 + 460) = a7[3];
  if ( !a2 )
    a2 = dword_8BEC18;
  v13 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 160,
    a2,
    &a2[v13]);
  v14 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 40))(a4);
  *(_DWORD *)(a1 + 368) = v14;
  if ( v14 )
    ++*(_DWORD *)(v14 + 4);
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v15);
  v16 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 56))(*(_DWORD *)(a1 + 336));
  v17 = v16;
  if ( *(_BYTE *)(a1 + 345) && v16 )
  {
    v18 = *(_DWORD *)(a1 + 448);
    *(_DWORD *)(a1 + 448) = v18 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 24))(v16, 8);
    v19 = *(_DWORD *)(a1 + 452);
    *(_DWORD *)(a1 + 452) = v19 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v17 + 24))(v17, 9);
    v20 = *(_DWORD *)(a1 + 456);
    *(_DWORD *)(a1 + 456) = ~(*(int (__fastcall **)(int, int))(*(_DWORD *)v17 + 24))(v17, 8) + v20;
    v21 = v17;
    v22 = *(_DWORD *)v17;
    v23 = *(_DWORD *)(a1 + 460);
    *(_DWORD *)(a1 + 460) = ~(*(int (__fastcall **)(int, int))(v22 + 24))(v21, 9) + v23;
  }
  glitch::gui::CGUIEditBox::breakText((glitch::gui::CGUIEditBox *)a1);
  glitch::gui::CGUIEditBox::calculateScrollPos(a1);
  return a1;
}


// ===== 6b28c8 glitch::gui::CGUIEditBox::CGUIEditBox(wchar_t const*,bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::CGUIEditBox::CGUIEditBox(
        int a1,
        int *a2,
        const wchar_t *a3,
        char a4,
        int a5,
        int a6,
        int a7,
        int *a8)
{
  int v9; // r4
  int v10; // r9
  int v11; // lr
  int v15; // r2
  size_t v16; // r0
  int v17; // r0
  int v18; // r1
  int v19; // r0
  int v20; // r5
  int v21; // r6
  int v22; // r6
  int v23; // r6
  int v24; // r0
  int v25; // r3
  int v26; // r5
  int v28[4]; // [sp+8h] [bp-10h] BYREF

  v9 = a8[3];
  v10 = *a8;
  v11 = a8[1];
  v28[2] = a8[2];
  v28[3] = v9;
  v28[0] = v10;
  v28[1] = v11;
  glitch::gui::IGUIEditBox::IGUIEditBox(a1, a2 + 1, a5, a6, a7, v28);
  v15 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_BYTE *)(a1 + 359) = 101;
  *(_DWORD *)(a1 + 396) = 42;
  *(_BYTE *)(a1 + 344) = 0;
  *(_BYTE *)(a1 + 346) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 392) = 0;
  *(_BYTE *)(a1 + 393) = 0;
  *(_BYTE *)(a1 + 395) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_BYTE *)(a1 + 345) = a4;
  *(_BYTE *)(a1 + 358) = -1;
  *(_DWORD *)(a1 + 404) = 2;
  *(_BYTE *)(a1 + 356) = -1;
  *(_BYTE *)(a1 + 357) = -1;
  *(_BYTE *)(a1 + 394) = 1;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 444) = 1;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 440) = 1;
  *(_DWORD *)(a1 + 448) = *a8;
  *(_DWORD *)(a1 + 452) = a8[1];
  *(_DWORD *)(a1 + 456) = a8[2];
  *(_DWORD *)(a1 + 460) = a8[3];
  if ( !a3 )
    a3 = dword_8BEC18;
  v16 = wcslen(a3);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 160,
    a3,
    &a3[v16]);
  v17 = (*(int (__fastcall **)(int))(*(_DWORD *)a5 + 40))(a5);
  *(_DWORD *)(a1 + 368) = v17;
  if ( v17 )
    ++*(_DWORD *)(v17 + 4);
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v18);
  v19 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 56))(*(_DWORD *)(a1 + 336));
  v20 = v19;
  if ( *(_BYTE *)(a1 + 345) && v19 )
  {
    v21 = *(_DWORD *)(a1 + 448);
    *(_DWORD *)(a1 + 448) = v21 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v19 + 24))(v19, 8);
    v22 = *(_DWORD *)(a1 + 452);
    *(_DWORD *)(a1 + 452) = v22 + 1 + (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 24))(v20, 9);
    v23 = *(_DWORD *)(a1 + 456);
    *(_DWORD *)(a1 + 456) = ~(*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 24))(v20, 8) + v23;
    v24 = v20;
    v25 = *(_DWORD *)v20;
    v26 = *(_DWORD *)(a1 + 460);
    *(_DWORD *)(a1 + 460) = ~(*(int (__fastcall **)(int, int))(v25 + 24))(v24, 9) + v26;
  }
  glitch::gui::CGUIEditBox::breakText((glitch::gui::CGUIEditBox *)a1);
  glitch::gui::CGUIEditBox::calculateScrollPos(a1);
  return a1;
}


// ===== 6b2b3c glitch::gui::CGUIEditBox::processMouse(glitch::SEvent const&) =====
char *__fastcall glitch::gui::CGUIEditBox::processMouse(int a1, int *a2)
{
  int v2; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r0
  int v8; // r3
  bool v9; // zf
  int v10; // r3
  int v12; // r0
  int v13; // r3
  int CursorPos; // r0
  int v15; // r0

  v2 = a2[5];
  if ( v2 != 3 )
  {
    if ( v2 == 6 )
    {
      if ( *(_BYTE *)(a1 + 344) )
      {
        CursorPos = glitch::gui::CGUIEditBox::getCursorPos((glitch::gui::CGUIEditBox *)a1, a2[2], a2[3]);
        *(_DWORD *)(a1 + 352) = CursorPos;
        *(_DWORD *)(a1 + 376) = CursorPos;
        glitch::gui::CGUIEditBox::calculateScrollPos(a1);
        return (_BYTE *)(&dword_0 + 1);
      }
    }
    else if ( !v2 )
    {
      if ( !(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 28))(*(_DWORD *)(a1 + 336), a1) )
      {
        *(_DWORD *)(a1 + 372) = glitch::os::Timer::getTime(nullptr);
        *(_BYTE *)(a1 + 344) = 1;
        v15 = glitch::gui::CGUIEditBox::getCursorPos((glitch::gui::CGUIEditBox *)a1, a2[2], a2[3]);
        *(_DWORD *)(a1 + 352) = v15;
        *(_DWORD *)(a1 + 376) = v15;
        *(_DWORD *)(a1 + 348) = v15;
        glitch::gui::CGUIEditBox::calculateScrollPos(a1);
        return (_BYTE *)(&dword_0 + 1);
      }
      v5 = a2[2];
      v6 = a2[3];
      if ( v5 >= *(_DWORD *)(a1 + 72)
        && v6 >= *(_DWORD *)(a1 + 76)
        && v5 <= *(_DWORD *)(a1 + 80)
        && v6 <= *(_DWORD *)(a1 + 84) )
      {
        v7 = glitch::gui::CGUIEditBox::getCursorPos((glitch::gui::CGUIEditBox *)a1, v5, v6);
        v8 = *(unsigned __int8 *)(a1 + 344);
        *(_DWORD *)(a1 + 376) = v7;
        v9 = v8 == 0;
        v10 = *(_DWORD *)(a1 + 376);
        if ( v9 )
          *(_DWORD *)(a1 + 348) = v7;
        *(_BYTE *)(a1 + 344) = 1;
        *(_DWORD *)(a1 + 352) = v10;
        glitch::gui::CGUIEditBox::calculateScrollPos(a1);
        return (_BYTE *)(&dword_0 + 1);
      }
    }
    return nullptr;
  }
  if ( !(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 28))(*(_DWORD *)(a1 + 336), a1) )
    return nullptr;
  v12 = glitch::gui::CGUIEditBox::getCursorPos((glitch::gui::CGUIEditBox *)a1, a2[2], a2[3]);
  v13 = *(unsigned __int8 *)(a1 + 344);
  *(_DWORD *)(a1 + 376) = v12;
  if ( v13 )
    *(_DWORD *)(a1 + 352) = v12;
  *(_BYTE *)(a1 + 344) = 0;
  glitch::gui::CGUIEditBox::calculateScrollPos(a1);
  return (char *)&dword_0 + 1;
}


// ===== 6b2cc0 glitch::gui::CGUIEditBox::processKey(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIEditBox::processKey(int this, int a2)
{
  glitch::gui::CGUIEditBox *v3; // r5
  int v4; // r7
  unsigned int v6; // r7
  signed int v7; // r3
  signed int v8; // r9
  unsigned int v9; // r1
  char *v10; // r10
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r3
  int v15; // r1
  unsigned int v16; // r2
  unsigned int v17; // r3
  int *v18; // r3
  signed int v19; // r9
  signed int v20; // r11
  int v21; // r0
  int v22; // r3
  signed int v23; // r2
  unsigned int v24; // r3
  int v25; // r1
  int v26; // r2
  int *v27; // r7
  signed int v28; // r11
  signed int v29; // r9
  signed int v30; // r10
  unsigned int v31; // r2
  glitch::os::Timer *v32; // r0
  int v33; // r3
  int v34; // r1
  int v35; // r2
  unsigned int v36; // r3
  int v37; // r0
  int v38; // r12
  int v39; // r3
  int v40; // r1
  int v41; // r1
  int v42; // r3
  int v43; // r10
  int v44; // r9
  int v45; // r1
  int v46; // r3
  int v47; // r0
  int v48; // r1
  bool v49; // cc
  int v50; // r3
  bool v51; // zf
  signed int v52; // r9
  signed int v53; // r6
  signed int v54; // r10
  unsigned int v55; // r2
  int v56; // r2
  int v57; // r3
  int v58; // r2
  int v59; // r1
  int v60; // r2
  int v61; // r2
  int v62; // r1
  int v63; // r2
  int v64; // r3
  int v65; // r2
  int v66; // r3
  int v67; // r3
  int v68; // r1
  int LineFromPos; // r0
  int v70; // r3
  int v71; // r2
  int v72; // r1
  int v73; // r3
  int v74; // r2
  int v75; // r10
  int v76; // r9
  int v77; // r3
  int v78; // r0
  int v79; // r3
  bool v80; // cc
  int v81; // r3
  int v82; // r1
  int v83; // r2
  int v84; // r3
  unsigned int v85; // r3
  int v86; // r3
  int v87; // r10
  size_t v88; // r0
  int v89; // [sp+0h] [bp-6DCh]
  int v90; // [sp+0h] [bp-6DCh]
  unsigned int v91; // [sp+8h] [bp-6D4h]
  char *v92; // [sp+Ch] [bp-6D0h]
  _DWORD v93[18]; // [sp+14h] [bp-6C8h] BYREF
  _DWORD v94[3]; // [sp+5Ch] [bp-680h] BYREF
  _DWORD v95[18]; // [sp+A4h] [bp-638h] BYREF
  _DWORD v96[3]; // [sp+ECh] [bp-5F0h] BYREF
  int v97; // [sp+134h] [bp-5A8h] BYREF
  int *v98; // [sp+174h] [bp-568h]
  int *v99; // [sp+178h] [bp-564h]
  _DWORD v100[18]; // [sp+17Ch] [bp-560h] BYREF
  int v101; // [sp+1C4h] [bp-518h] BYREF
  _DWORD v102[18]; // [sp+20Ch] [bp-4D0h] BYREF
  int v103; // [sp+254h] [bp-488h] BYREF
  _DWORD v104[3]; // [sp+29Ch] [bp-440h] BYREF
  _DWORD *v105; // [sp+2DCh] [bp-400h]
  _DWORD *v106; // [sp+2E0h] [bp-3FCh]
  _DWORD v107[18]; // [sp+2E4h] [bp-3F8h] BYREF
  _DWORD v108[18]; // [sp+32Ch] [bp-3B0h] BYREF
  _DWORD v109[18]; // [sp+374h] [bp-368h] BYREF
  _DWORD v110[16]; // [sp+3BCh] [bp-320h] BYREF
  int v111; // [sp+3FCh] [bp-2E0h]
  int v112; // [sp+400h] [bp-2DCh]
  _DWORD v113[15]; // [sp+404h] [bp-2D8h] BYREF
  _DWORD v114[18]; // [sp+44Ch] [bp-290h] BYREF
  _DWORD v115[18]; // [sp+494h] [bp-248h] BYREF
  _DWORD v116[16]; // [sp+4DCh] [bp-200h] BYREF
  int v117; // [sp+51Ch] [bp-1C0h]
  int v118; // [sp+520h] [bp-1BCh]
  _DWORD v119[18]; // [sp+524h] [bp-1B8h] BYREF
  _DWORD v120[17]; // [sp+56Ch] [bp-170h] BYREF
  _DWORD v121[15]; // [sp+5B4h] [bp-128h] BYREF
  unsigned int *v122; // [sp+5F4h] [bp-E8h]
  _DWORD *v123; // [sp+5F8h] [bp-E4h]
  wchar_t *v124[18]; // [sp+5FCh] [bp-E0h] BYREF
  wchar_t *v125[18]; // [sp+644h] [bp-98h] BYREF
  _DWORD v126[5]; // [sp+68Ch] [bp-50h] BYREF
  _BYTE v127[12]; // [sp+6A4h] [bp-38h] BYREF
  void *p; // [sp+6B8h] [bp-24h]
  _BYTE v129[20]; // [sp+6BCh] [bp-20h] BYREF
  glitch::gui::CGUIEditBox *v130; // [sp+6D0h] [bp-Ch]

  v3 = (glitch::gui::CGUIEditBox *)this;
  if ( !*(_BYTE *)(a2 + 16) )
    return 0;
  v4 = *(unsigned __int8 *)(a2 + 18);
  if ( !*(_BYTE *)(a2 + 18) )
    goto LABEL_4;
  switch ( *(_DWORD *)(a2 + 12) )
  {
    case '#':
      v4 = *(unsigned __int8 *)(a2 + 17);
      if ( *(_BYTE *)(a2 + 17) )
      {
        v4 = 0;
        v12 = (*(_DWORD *)(this + 224) - *(_DWORD *)(this + 228)) >> 2;
        *(_DWORD *)(this + 348) = *(_DWORD *)(this + 376);
        *(_DWORD *)(this + 352) = v12;
        *(_DWORD *)(this + 376) = 0;
        v11 = *(unsigned __int8 *)(a2 + 18);
      }
      else
      {
        v82 = *(_DWORD *)(this + 224);
        v83 = *(_DWORD *)(this + 228);
        *(_DWORD *)(this + 348) = v4;
        *(_DWORD *)(this + 352) = v4;
        *(_DWORD *)(this + 376) = (v82 - v83) >> 2;
LABEL_154:
        v11 = *(unsigned __int8 *)(a2 + 18);
      }
      break;
    case '$':
      v4 = *(unsigned __int8 *)(a2 + 17);
      if ( *(_BYTE *)(a2 + 17) )
      {
        v13 = *(_DWORD *)(this + 376);
        v4 = 0;
        *(_DWORD *)(this + 348) = 0;
        *(_DWORD *)(this + 352) = v13;
        *(_DWORD *)(this + 376) = 0;
      }
      else
      {
        *(_DWORD *)(this + 376) = v4;
        *(_DWORD *)(this + 348) = v4;
        *(_DWORD *)(this + 352) = v4;
      }
      v11 = *(unsigned __int8 *)(a2 + 18);
      break;
    case 'A':
      v25 = *(_DWORD *)(this + 224);
      v26 = *(_DWORD *)(this + 228);
      v4 = 0;
      *(_DWORD *)(this + 348) = 0;
      *(_DWORD *)(this + 352) = (v25 - v26) >> 2;
      v11 = *(unsigned __int8 *)(a2 + 18);
      break;
    case 'C':
      v4 = *(unsigned __int8 *)(this + 395);
      if ( *(_BYTE *)(this + 395) )
        goto LABEL_24;
      if ( !*(_DWORD *)(this + 368) )
        goto LABEL_24;
      v14 = *(_DWORD *)(this + 348);
      v15 = *(_DWORD *)(this + 352);
      if ( v14 == v15 )
        goto LABEL_24;
      if ( v15 >= v14 )
        v16 = *(_DWORD *)(this + 348);
      else
        v16 = *(_DWORD *)(this + 352);
      if ( v15 < v14 )
        v17 = v14 - v16;
      else
        v17 = v15 - v16;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
        v125,
        this + 160,
        v16,
        v17);
      glitch::core::stringw2stringc((glitch::core *)v129, v125[17]);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v125);
      (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIEditBox *))(**((_DWORD **)v3 + 92) + 16))(
        *((_DWORD *)v3 + 92),
        v130);
      this = (int)v130;
      if ( v130 == (glitch::gui::CGUIEditBox *)v129 )
        goto LABEL_154;
      if ( v130 )
      {
LABEL_21:
        GlitchFree((void *)this);
        v11 = *(unsigned __int8 *)(a2 + 18);
      }
      else
      {
        v4 = 0;
        v11 = *(unsigned __int8 *)(a2 + 18);
      }
      break;
    case 'V':
      if ( !*(_BYTE *)(this + 153) )
        goto LABEL_24;
      v18 = *(int **)(this + 368);
      if ( !v18 )
        goto LABEL_24;
      v19 = *(_DWORD *)(this + 348);
      v20 = *(_DWORD *)(this + 352);
      v21 = *(_DWORD *)(this + 368);
      v22 = *v18;
      if ( v19 >= v20 )
      {
        v23 = v20;
        v20 = v19;
        v19 = v23;
      }
      this = (*(int (__fastcall **)(int))(v22 + 20))(v21);
      v92 = (char *)this;
      if ( this )
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
          v116,
          (int)v3 + 160,
          0,
          *((_DWORD *)v3 + 94));
        if ( *((_DWORD *)v3 + 87) == *((_DWORD *)v3 + 88) )
        {
          glitch::core::stringc2stringw((glitch::core *)v115, v92);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v116,
            (_DWORD *)v115[17],
            (_DWORD *)v115[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v115);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v114,
            (int)v3 + 160,
            *((_DWORD *)v3 + 94),
            ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - *((_DWORD *)v3 + 94));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v116,
            (_DWORD *)v114[17],
            (_DWORD *)v114[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v114);
          v85 = *((_DWORD *)v3 + 97);
          if ( !v85 || v85 >= (v117 - v118) >> 2 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v3 + 160,
              (int)v116);
            glitch::core::stringc2stringw((glitch::core *)v113, v92);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v116,
              (int)v113);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v113);
            *((_DWORD *)v3 + 94) += (v117 - v118) >> 2;
          }
        }
        else
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v110,
            (int)v3 + 160,
            0,
            v19);
          glitch::core::stringc2stringw((glitch::core *)v109, v92);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v110,
            (_DWORD *)v109[17],
            (_DWORD *)v109[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v109);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v108,
            (int)v3 + 160,
            v20,
            ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - v20);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v110,
            (_DWORD *)v108[17],
            (_DWORD *)v108[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v108);
          v24 = *((_DWORD *)v3 + 97);
          if ( !v24 || v24 >= (v111 - v112) >> 2 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v3 + 160,
              (int)v110);
            glitch::core::stringc2stringw((glitch::core *)v107, v92);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v110,
              (int)v107);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v107);
            *((_DWORD *)v3 + 94) = v19 + ((v111 - v112) >> 2);
          }
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v110);
        }
        this = (int)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v116);
      }
      *((_DWORD *)v3 + 88) = 0;
      *((_DWORD *)v3 + 87) = 0;
      v11 = *(unsigned __int8 *)(a2 + 18);
      v4 = 1;
      break;
    case 'X':
      v6 = *(unsigned __int8 *)(this + 395);
      if ( *(_BYTE *)(this + 395) )
        goto LABEL_24;
      if ( !*(_DWORD *)(this + 368) )
        goto LABEL_24;
      v7 = *(_DWORD *)(this + 348);
      v8 = *(_DWORD *)(this + 352);
      if ( v7 == v8 )
        goto LABEL_24;
      if ( v8 < v7 )
        v9 = *(_DWORD *)(this + 348);
      else
        v9 = *(_DWORD *)(this + 352);
      if ( v8 >= v7 )
        v8 = *(_DWORD *)(this + 348);
      v10 = (char *)(this + 160);
      v91 = v9;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
        v124,
        this + 160,
        v8,
        v9 - v8);
      glitch::core::stringw2stringc((glitch::core *)v127, v124[17]);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v124);
      (*(void (__fastcall **)(_DWORD, void *))(**((_DWORD **)v3 + 92) + 16))(*((_DWORD *)v3 + 92), p);
      if ( *((_BYTE *)v3 + 153) )
      {
        v122 = v121;
        v123 = v121;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v121,
          0x10u);
        *v122 = v6;
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
          v120,
          (int)v10,
          v6,
          v8);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          (int)v121,
          (int)v120);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v120);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
          v119,
          (int)v10,
          v91,
          ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - v91);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v121,
          (_DWORD *)v119[17],
          (_DWORD *)v119[16]);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v119);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          (int)v10,
          (int)v121);
        *((_DWORD *)v3 + 88) = v6;
        *((_DWORD *)v3 + 87) = v6;
        *((_DWORD *)v3 + 94) = v8;
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v121);
        v4 = 1;
      }
      else
      {
        v4 = *((unsigned __int8 *)v3 + 153);
      }
      this = (int)p;
      if ( p != v127 && p )
        goto LABEL_21;
      goto LABEL_154;
    default:
      return 0;
  }
  if ( !v11 )
  {
LABEL_4:
    switch ( *(_DWORD *)(a2 + 12) )
    {
      case 8:
        if ( !*((_BYTE *)v3 + 153) || !((unsigned int)(*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) )
          break;
        v27 = v104;
        v105 = v104;
        v106 = v104;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v104,
          0x10u);
        *v105 = 0;
        v52 = *((_DWORD *)v3 + 87);
        v53 = *((_DWORD *)v3 + 88);
        if ( v52 == v53 )
        {
          v86 = *((_DWORD *)v3 + 94);
          v87 = (int)v3 + 160;
          if ( v86 <= 0 )
          {
            v88 = wcslen(dword_8BEC18);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v104,
              dword_8BEC18,
              &dword_8BEC18[v88]);
          }
          else
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
              &v101,
              (int)v3 + 160,
              0,
              v86 - 1);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (int)v104,
              (int)&v101);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(&v101);
          }
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v100,
            v87,
            *((_DWORD *)v3 + 94),
            ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - *((_DWORD *)v3 + 94));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v104,
            (_DWORD *)v100[17],
            (_DWORD *)v100[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v100);
          v32 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                       v87,
                                       (int)v104);
          v54 = *((_DWORD *)v3 + 94) - 1;
          *((_DWORD *)v3 + 94) = v54;
        }
        else
        {
          if ( v53 >= v52 )
            v54 = *((_DWORD *)v3 + 87);
          else
            v54 = *((_DWORD *)v3 + 88);
          v90 = (int)v3 + 160;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            &v103,
            (int)v3 + 160,
            0,
            v54);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)v104,
            (int)&v103);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(&v103);
          if ( v53 < v52 )
            v55 = v52;
          else
            v55 = v53;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v102,
            v90,
            v55,
            ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - v55);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v104,
            (_DWORD *)v102[17],
            (_DWORD *)v102[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v102);
          v32 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                       v90,
                                       (int)v104);
          *((_DWORD *)v3 + 94) = v54;
        }
        if ( v54 < 0 )
          *((_DWORD *)v3 + 94) = 0;
        goto LABEL_67;
      case 9:
      case 0x10:
      case 0x1B:
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
      case 0x74:
      case 0x75:
      case 0x76:
      case 0x77:
      case 0x78:
      case 0x79:
      case 0x7A:
      case 0x7B:
      case 0x7C:
      case 0x7D:
      case 0x7E:
      case 0x7F:
      case 0x80:
      case 0x81:
      case 0x82:
      case 0x83:
      case 0x84:
      case 0x85:
      case 0x86:
      case 0x87:
        return 0;
      case 0xD:
        v56 = *((unsigned __int8 *)v3 + 393);
        if ( *((_BYTE *)v3 + 393) )
        {
          glitch::gui::CGUIEditBox::inputChar(v3, 0xAu);
        }
        else
        {
          v84 = *((_DWORD *)v3 + 9);
          v126[4] = 16;
          v126[3] = v56;
          v126[0] = v56;
          v126[2] = v3;
          (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v84 + 8))(v84, v126);
        }
        break;
      case 0x23:
        if ( *((_BYTE *)v3 + 392) || *((_BYTE *)v3 + 393) )
        {
          this = glitch::gui::CGUIEditBox::getLineFromPos(v3, *((_DWORD *)v3 + 94));
          v58 = *(_DWORD *)(*((_DWORD *)v3 + 105) + 4 * this)
              + ((*(_DWORD *)(*((_DWORD *)v3 + 102) + 72 * this + 64)
                - *(_DWORD *)(*((_DWORD *)v3 + 102) + 72 * this + 68)) >> 2);
          if ( v58 <= 0
            || (v57 = v58 - 1, v59 = *(_DWORD *)(*((_DWORD *)v3 + 57) + 4 * (v58 - 1)), v59 != 13) && v59 != 10 )
          {
            v57 = *(_DWORD *)(*((_DWORD *)v3 + 105) + 4 * this)
                + ((*(_DWORD *)(*((_DWORD *)v3 + 102) + 72 * this + 64)
                  - *(_DWORD *)(*((_DWORD *)v3 + 102) + 72 * this + 68)) >> 2);
          }
        }
        else
        {
          v57 = (*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2;
        }
        v60 = *(unsigned __int8 *)(a2 + 17);
        if ( *(_BYTE *)(a2 + 17) )
        {
          v61 = *((_DWORD *)v3 + 88);
          v62 = *((_DWORD *)v3 + 87);
          *((_DWORD *)v3 + 88) = v57;
          if ( v62 == v61 )
            *((_DWORD *)v3 + 87) = *((_DWORD *)v3 + 94);
        }
        else
        {
          *((_DWORD *)v3 + 88) = v60;
          *((_DWORD *)v3 + 87) = v60;
        }
        *((_DWORD *)v3 + 94) = v57;
        *((_DWORD *)v3 + 93) = glitch::os::Timer::getTime((glitch::os::Timer *)this);
        break;
      case 0x24:
        if ( *((_BYTE *)v3 + 392) || (v65 = *((unsigned __int8 *)v3 + 393), *((_BYTE *)v3 + 393)) )
        {
          this = glitch::gui::CGUIEditBox::getLineFromPos(v3, *((_DWORD *)v3 + 94));
          v65 = *(_DWORD *)(*((_DWORD *)v3 + 105) + 4 * this);
        }
        v66 = *(unsigned __int8 *)(a2 + 17);
        if ( *(_BYTE *)(a2 + 17) )
        {
          v67 = *((_DWORD *)v3 + 88);
          v68 = *((_DWORD *)v3 + 87);
          *((_DWORD *)v3 + 88) = v65;
          if ( v68 == v67 )
            *((_DWORD *)v3 + 87) = *((_DWORD *)v3 + 94);
        }
        else
        {
          *((_DWORD *)v3 + 88) = v66;
          *((_DWORD *)v3 + 87) = v66;
        }
        *((_DWORD *)v3 + 94) = v65;
        *((_DWORD *)v3 + 93) = glitch::os::Timer::getTime((glitch::os::Timer *)this);
        break;
      case 0x25:
        v63 = *(unsigned __int8 *)(a2 + 17);
        if ( *(_BYTE *)(a2 + 17) )
        {
          v64 = *((_DWORD *)v3 + 94);
          if ( v64 <= 0 )
            goto LABEL_76;
          if ( *((_DWORD *)v3 + 87) == *((_DWORD *)v3 + 88) )
            *((_DWORD *)v3 + 87) = v64;
          *((_DWORD *)v3 + 88) = v64 - 1;
        }
        else
        {
          v64 = *((_DWORD *)v3 + 94);
          *((_DWORD *)v3 + 88) = v63;
          *((_DWORD *)v3 + 87) = v63;
        }
        if ( v64 > 0 )
          *((_DWORD *)v3 + 94) = v64 - 1;
        goto LABEL_76;
      case 0x26:
        if ( !*((_BYTE *)v3 + 393)
          && (!*((_BYTE *)v3 + 392)
           || (unsigned int)(954437177 * ((*((_DWORD *)v3 + 103) - *((_DWORD *)v3 + 102)) >> 3)) <= 1) )
        {
          return 0;
        }
        LineFromPos = glitch::gui::CGUIEditBox::getLineFromPos(v3, *((_DWORD *)v3 + 94));
        v70 = *((_DWORD *)v3 + 87);
        v71 = *((_DWORD *)v3 + 88);
        if ( v70 == v71 )
        {
          v38 = *((_DWORD *)v3 + 94);
        }
        else if ( v71 < v70 )
        {
          v38 = *((_DWORD *)v3 + 87);
        }
        else
        {
          v38 = *((_DWORD *)v3 + 88);
        }
        if ( LineFromPos > 0 )
        {
          v72 = LineFromPos - 1;
          v73 = *((_DWORD *)v3 + 102) + 72 * (LineFromPos - 1);
          v74 = *((_DWORD *)v3 + 105);
          v75 = *(_DWORD *)(v73 + 68);
          v76 = *(_DWORD *)(v73 + 64);
          v77 = *(_DWORD *)(v74 + 4 * LineFromPos);
          v78 = (v76 - v75) >> 2;
          v79 = *((_DWORD *)v3 + 94) - v77;
          v80 = v79 <= v78;
          if ( v79 <= v78 )
            v74 = *(_DWORD *)(v74 + 4 * v72);
          else
            v79 = *(_DWORD *)(v74 + 4 * v72);
          if ( v80 )
            v81 = v74 + v79;
          else
            v81 = v78 - 1 + v79;
          *((_DWORD *)v3 + 94) = v81;
        }
        goto LABEL_89;
      case 0x27:
        this = *(unsigned __int8 *)(a2 + 17);
        if ( *(_BYTE *)(a2 + 17) )
        {
          v34 = *((_DWORD *)v3 + 56);
          v35 = *((_DWORD *)v3 + 57);
          v36 = *((_DWORD *)v3 + 94);
          this = v34 - v35;
          if ( v36 >= (v34 - v35) >> 2 )
            goto LABEL_76;
          this = v36 + 1;
          if ( *((_DWORD *)v3 + 87) == *((_DWORD *)v3 + 88) )
            *((_DWORD *)v3 + 87) = v36;
          *((_DWORD *)v3 + 88) = this;
        }
        else
        {
          v34 = *((_DWORD *)v3 + 56);
          v35 = *((_DWORD *)v3 + 57);
          v36 = *((_DWORD *)v3 + 94);
          *((_DWORD *)v3 + 88) = this;
          *((_DWORD *)v3 + 87) = this;
        }
        if ( v36 < (v34 - v35) >> 2 )
          *((_DWORD *)v3 + 94) = v36 + 1;
LABEL_76:
        *((_DWORD *)v3 + 93) = glitch::os::Timer::getTime((glitch::os::Timer *)this);
        break;
      case 0x28:
        if ( !*((_BYTE *)v3 + 393)
          && (!*((_BYTE *)v3 + 392)
           || (unsigned int)(954437177 * ((*((_DWORD *)v3 + 103) - *((_DWORD *)v3 + 102)) >> 3)) <= 1) )
        {
          return 0;
        }
        v37 = glitch::gui::CGUIEditBox::getLineFromPos(v3, *((_DWORD *)v3 + 94));
        v38 = *((_DWORD *)v3 + 88);
        v39 = *((_DWORD *)v3 + 87);
        if ( v39 == v38 )
        {
          v38 = *((_DWORD *)v3 + 94);
        }
        else if ( v38 >= v39 )
        {
          v38 = *((_DWORD *)v3 + 87);
        }
        v40 = *((_DWORD *)v3 + 102);
        if ( v37 < 954437177 * ((*((_DWORD *)v3 + 103) - v40) >> 3) - 1 )
        {
          v41 = v40 + 72 * (v37 + 1);
          v42 = *((_DWORD *)v3 + 105);
          v43 = *(_DWORD *)(v41 + 68);
          v44 = *(_DWORD *)(v41 + 64);
          v45 = *(_DWORD *)(v42 + 4 * v37);
          v46 = *(_DWORD *)(v42 + 4 * (v37 + 1));
          v47 = (v44 - v43) >> 2;
          v48 = *((_DWORD *)v3 + 94) - v45;
          v49 = v48 <= v47;
          if ( v48 <= v47 )
            v48 += v46;
          else
            v46 += v47 - 1;
          if ( v49 )
            *((_DWORD *)v3 + 94) = v48;
          else
            *((_DWORD *)v3 + 94) = v46;
        }
LABEL_89:
        v50 = *(unsigned __int8 *)(a2 + 17);
        v51 = v50 == 0;
        if ( *(_BYTE *)(a2 + 17) )
        {
          v50 = *((_DWORD *)v3 + 94);
          *((_DWORD *)v3 + 87) = v38;
        }
        else
        {
          *((_DWORD *)v3 + 88) = v50;
        }
        if ( v51 )
          *((_DWORD *)v3 + 87) = v50;
        else
          *((_DWORD *)v3 + 88) = v50;
        break;
      case 0x2E:
        if ( !*((_BYTE *)v3 + 153) || !((unsigned int)(*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) )
          break;
        v27 = &v97;
        v98 = &v97;
        v99 = &v97;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          &v97,
          0x10u);
        *v98 = 0;
        v28 = *((_DWORD *)v3 + 87);
        v29 = *((_DWORD *)v3 + 88);
        if ( v28 == v29 )
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v94,
            (int)v3 + 160,
            0,
            *((_DWORD *)v3 + 94));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)&v97,
            (int)v94);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v94);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v93,
            (int)v3 + 160,
            *((_DWORD *)v3 + 94) + 1,
            ~*((_DWORD *)v3 + 94) + ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2));
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            &v97,
            (_DWORD *)v93[17],
            (_DWORD *)v93[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v93);
          v32 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                       (int)v3 + 160,
                                       (int)&v97);
          v30 = *((_DWORD *)v3 + 94);
        }
        else
        {
          if ( v29 >= v28 )
            v30 = *((_DWORD *)v3 + 87);
          else
            v30 = *((_DWORD *)v3 + 88);
          v89 = (int)v3 + 160;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v96,
            (int)v3 + 160,
            0,
            v30);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
            (int)&v97,
            (int)v96);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v96);
          if ( v29 < v28 )
            v31 = v28;
          else
            v31 = v29;
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::substr(
            v95,
            v89,
            v31,
            ((*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2) - v31);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            &v97,
            (_DWORD *)v95[17],
            (_DWORD *)v95[16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v95);
          v32 = (glitch::os::Timer *)std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
                                       v89,
                                       (int)&v97);
          *((_DWORD *)v3 + 94) = v30;
        }
        v33 = (*((_DWORD *)v3 + 56) - *((_DWORD *)v3 + 57)) >> 2;
        if ( v30 > v33 )
          *((_DWORD *)v3 + 94) = v33;
LABEL_67:
        *((_DWORD *)v3 + 93) = glitch::os::Timer::getTime(v32);
        *((_DWORD *)v3 + 88) = 0;
        *((_DWORD *)v3 + 87) = 0;
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v27);
        goto LABEL_68;
      default:
        glitch::gui::CGUIEditBox::inputChar(v3, *(_DWORD *)(a2 + 8));
        break;
    }
  }
  if ( v4 )
LABEL_68:
    glitch::gui::CGUIEditBox::breakText(v3);
LABEL_24:
  glitch::gui::CGUIEditBox::calculateScrollPos((int)v3);
  return 1;
}


// ===== 6b3d70 glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIEditBox::onEvent(int a1, int *a2)
{
  int v4; // r3
  int v5; // r3

  if ( *(_BYTE *)(a1 + 153) )
  {
    v4 = *a2;
    if ( *a2 == 1 )
    {
      if ( glitch::gui::CGUIEditBox::processMouse(a1, a2) )
        return 1;
    }
    else
    {
      if ( v4 != 2 )
      {
        if ( !v4 && !a2[4] && a2[2] == a1 )
        {
          *(_DWORD *)(a1 + 352) = 0;
          *(_BYTE *)(a1 + 344) = 0;
          *(_DWORD *)(a1 + 348) = 0;
        }
        goto LABEL_8;
      }
      if ( glitch::gui::CGUIEditBox::processKey(a1, (int)a2) )
        return 1;
    }
  }
LABEL_8:
  v5 = *(_DWORD *)(a1 + 36);
  if ( v5 )
    return (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)v5 + 8))(*(_DWORD *)(a1 + 36), a2);
  else
    return 0;
}


// ===== 6b3e14 `virtual thunk to'glitch::gui::CGUIEditBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::gui::CGUIEditBox::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6b3e24 `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::CGUIEditBox::~CGUIEditBox((glitch::gui::CGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6b3e34 `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::CGUIEditBox::~CGUIEditBox((glitch::gui::CGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6b3e44 `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::CGUIEditBox::~CGUIEditBox((glitch::gui::CGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6b3e54 `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::~CGUIEditBox(glitch::gui::CGUIEditBox *this)
{
  glitch::gui::CGUIEditBox::~CGUIEditBox((glitch::gui::CGUIEditBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6b3e64 `virtual thunk to'glitch::gui::CGUIEditBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::gui::CGUIEditBox::deserializeAttributes(_DWORD *a1, int a2)
{
  glitch::gui::CGUIEditBox::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 6b3e74 glitch::io::IFileList::~IFileList() =====
void __fastcall glitch::io::IFileList::~IFileList(glitch::io::IFileList *this)
{
  ;
}


// ===== 6b3e78 glitch::io::CFileList::getFileCount(void) =====
int __fastcall glitch::io::CFileList::getFileCount(glitch::io::CFileList *this)
{
  return -1227133513 * ((*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 3);
}


// ===== 6b3ea4 glitch::io::CFileList::getFileName(uint) =====
int __fastcall glitch::io::CFileList::getFileName(glitch::io::CFileList *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 8);
  v3 = (*((_DWORD *)this + 9) - v2) >> 3;
  result = 153391689 * v3;
  v5 = -1227133513 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 56 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 20);
  return result;
}


// ===== 6b3ee4 glitch::io::CFileList::isDirectory(uint) =====
int __fastcall glitch::io::CFileList::isDirectory(glitch::io::CFileList *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 8);
  v3 = (*((_DWORD *)this + 9) - v2) >> 3;
  result = 153391689 * v3;
  v5 = -1227133513 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 56 * a2;
  if ( a2 < v5 )
    return *(unsigned __int8 *)(v2 + 52);
  return result;
}


// ===== 6b3f24 `global constructor keyed to'.._source_glitch_io_CFileList.cpp =====
void `global constructor keyed to'.._source_glitch_io_CFileList.cpp()
{
  dword_9F76DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76D8 = 1056964608;
}


// ===== 6b3f44 glitch::io::IFileList::~IFileList() =====
void __fastcall glitch::io::IFileList::~IFileList(glitch::io::IFileList *this)
{
  LC_API_FREE_0(this);
}


// ===== 6b3f58 glitch::io::CFileList::FileEntry::~FileEntry() =====
void __fastcall glitch::io::CFileList::FileEntry::~FileEntry(glitch::io::CFileList::FileEntry *this)
{
  char *v1; // r3
  char *v3; // r0
  glitch::io::CFileList::FileEntry *v4; // r0

  v1 = (char *)this + 24;
  v3 = *((char **)this + 11);
  if ( v3 != v1 && v3 )
    GlitchFree(v3);
  v4 = *((glitch::io::CFileList::FileEntry **)this + 5);
  if ( v4 != this )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 6b3f9c std::vector<glitch::io::CFileList::FileEntry,glitch::core::SAllocator<glitch::io::CFileList::FileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::io::CFileList::FileEntry **__fastcall std::vector<glitch::io::CFileList::FileEntry,glitch::core::SAllocator<glitch::io::CFileList::FileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::io::CFileList::FileEntry **a1)
{
  glitch::io::CFileList::FileEntry *v1; // r4
  glitch::io::CFileList::FileEntry *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::io::CFileList::FileEntry *)((char *)v1 - 56);
    glitch::io::CFileList::FileEntry::~FileEntry(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 6b3fe0 glitch::io::CFileList::~CFileList() =====
void __fastcall glitch::io::CFileList::~CFileList(glitch::io::CFileList::FileEntry **this)
{
  glitch::io::CFileList::FileEntry **v2; // r0

  *this = (glitch::io::CFileList::FileEntry *)off_9877C8;
  std::vector<glitch::io::CFileList::FileEntry,glitch::core::SAllocator<glitch::io::CFileList::FileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 8);
  v2 = (glitch::io::CFileList::FileEntry **)*(this + 7);
  if ( v2 != this + 2 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 6b4030 glitch::io::CFileList::~CFileList() =====
void __fastcall glitch::io::CFileList::~CFileList(glitch::io::CFileList::FileEntry **this)
{
  glitch::io::CFileList::~CFileList(this);
  LC_API_FREE_0(this);
}


// ===== 6b404c glitch::io::CFileList::FileEntry::operator=(glitch::io::CFileList::FileEntry const&) =====
int __fastcall glitch::io::CFileList::FileEntry::operator=(int a1, int a2)
{
  if ( a1 != a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a1,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
  if ( a1 + 24 != a2 + 24 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 24),
      *(_BYTE **)(a2 + 44),
      *(_BYTE **)(a2 + 40));
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 48);
  *(_BYTE *)(a1 + 52) = *(_BYTE *)(a2 + 52);
  return a1;
}


// ===== 6b40a0 glitch::io::CFileList::getFullFileName(uint) =====
int __fastcall glitch::io::CFileList::getFullFileName(glitch::io::CFileList *this, unsigned int a2)
{
  int v2; // r3
  unsigned int v4; // r5
  unsigned int v5; // r3
  int result; // r0
  _DWORD *v7; // r0

  v2 = *((_DWORD *)this + 8);
  if ( a2 >= -1227133513 * ((*((_DWORD *)this + 9) - v2) >> 3) )
    return 0;
  v4 = 56 * a2;
  v5 = v2 + 56 * a2;
  result = *(_DWORD *)(v5 + 44);
  if ( *(_DWORD *)(v5 + 40) - result < (unsigned int)(*(_DWORD *)(v5 + 16) - *(_DWORD *)(v5 + 20)) )
  {
    v7 = (_DWORD *)(v5 + 24);
    if ( (glitch::io::CFileList *)(v5 + 24) != (glitch::io::CFileList *)((char *)this + 8) )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v7,
        *((_BYTE **)this + 7),
        *((_BYTE **)this + 6));
      v5 = *((_DWORD *)this + 8) + v4;
      v7 = (_DWORD *)(v5 + 24);
    }
    if ( (unsigned int)(*((_DWORD *)this + 6) - *((_DWORD *)this + 7)) > 3 )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v7,
        "/",
        "");
      v5 = *((_DWORD *)this + 8) + v4;
      v7 = (_DWORD *)(v5 + 24);
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v7,
      *(_BYTE **)(v5 + 20),
      *(_BYTE **)(v5 + 16));
    return *(_DWORD *)(*((_DWORD *)this + 8) + v4 + 44);
  }
  return result;
}


// ===== 6b4188 glitch::io::CFileList::FileEntry::FileEntry(glitch::io::CFileList::FileEntry const&) =====
glitch::io::CFileList::FileEntry *__fastcall glitch::io::CFileList::FileEntry::FileEntry(
        glitch::io::CFileList::FileEntry *this,
        const glitch::io::CFileList::FileEntry *a2)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    this,
    *((_BYTE **)a2 + 5),
    *((_BYTE **)a2 + 4));
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)this + 6,
    *((_BYTE **)a2 + 11),
    *((_BYTE **)a2 + 10));
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_BYTE *)this + 52) = *((_BYTE *)a2 + 52);
  return this;
}


// ===== 6b41d8 glitch::core::heapsink<glitch::io::CFileList::FileEntry>(glitch::io::CFileList::FileEntry *,int,int) =====
unsigned int __fastcall glitch::core::heapsink<glitch::io::CFileList::FileEntry>(unsigned int result, int a2, int a3)
{
  int v3; // r3
  int v5; // r5
  unsigned int v6; // r10
  int v7; // r6
  unsigned int v8; // r2
  int v9; // r7
  unsigned int v10; // r0
  int v11; // r5
  int v12; // r4
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-50h]
  _BYTE v15[56]; // [sp+14h] [bp-40h] BYREF

  v3 = a2;
  v5 = 2 * a2;
  v6 = result;
  if ( a3 > 2 * a2 )
  {
    do
    {
      v12 = v5 + 1;
      if ( a3 > v5 + 1 )
      {
        v7 = v6 + 56 * v5;
        v8 = v6 + 56 * v12;
        v9 = *(unsigned __int8 *)(v7 + 52);
        if ( *(unsigned __int8 *)(v8 + 52) == v9 )
        {
          v14 = v3;
          v13 = LC_API_STRCASECMP_0(*(const char **)(v7 + 20), *(const char **)(v8 + 20));
          v3 = v14;
          v10 = v13 >> 31;
        }
        else
        {
          v10 = *(unsigned __int8 *)(v7 + 52);
        }
        if ( v10 )
        {
          v7 = v6 + 56 * v12;
          v11 = v6 + 56 * v3;
          result = *(unsigned __int8 *)(v11 + 52);
          if ( result != *(unsigned __int8 *)(v7 + 52) )
            goto LABEL_8;
          goto LABEL_13;
        }
      }
      else
      {
        v7 = v6 + 56 * v5;
        v9 = *(unsigned __int8 *)(v7 + 52);
      }
      v12 = v5;
      v11 = v6 + 56 * v3;
      result = *(unsigned __int8 *)(v11 + 52);
      if ( result != v9 )
      {
LABEL_8:
        if ( !result )
          return result;
        goto LABEL_9;
      }
LABEL_13:
      result = (unsigned int)LC_API_STRCASECMP_0(*(const char **)(v11 + 20), *(const char **)(v7 + 20)) >> 31;
      if ( !result )
        return result;
LABEL_9:
      glitch::io::CFileList::FileEntry::FileEntry(
        (glitch::io::CFileList::FileEntry *)v15,
        (const glitch::io::CFileList::FileEntry *)v7);
      glitch::io::CFileList::FileEntry::operator=(v7, v11);
      glitch::io::CFileList::FileEntry::operator=(v11, (int)v15);
      v5 = 2 * v12;
      glitch::io::CFileList::FileEntry::~FileEntry((glitch::io::CFileList::FileEntry *)v15);
      v3 = v12;
    }
    while ( 2 * v12 < a3 );
  }
  return result;
}


// ===== 6b4338 glitch::core::heapsort<glitch::io::CFileList::FileEntry>(glitch::io::CFileList::FileEntry *,int) =====
void __fastcall glitch::core::heapsort<glitch::io::CFileList::FileEntry>(glitch::io::CFileList::FileEntry *a1, int a2)
{
  int v2; // r10
  int v3; // r9
  char *v5; // r6
  int v6; // r4
  int v7; // r7
  char *v8; // r10
  _BYTE v9[56]; // [sp+4h] [bp-40h] BYREF

  v2 = a2 - 1;
  v3 = a2;
  v5 = (char *)a1 - 56;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      glitch::core::heapsink<glitch::io::CFileList::FileEntry>((unsigned int)v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = (char *)a1 + 56 * v2;
    do
    {
      glitch::io::CFileList::FileEntry::FileEntry((glitch::io::CFileList::FileEntry *)v9, a1);
      glitch::io::CFileList::FileEntry::operator=((int)a1, (int)v8);
      glitch::io::CFileList::FileEntry::operator=((int)v8, (int)v9);
      glitch::core::heapsink<glitch::io::CFileList::FileEntry>((unsigned int)v5, 1, v3);
      glitch::io::CFileList::FileEntry::~FileEntry((glitch::io::CFileList::FileEntry *)v9);
      --v3;
      v8 -= 56;
    }
    while ( v3 );
  }
}


// ===== 6b4418 glitch::io::CFileList::CFileList(void) =====
glitch::io::CFileList *__fastcall glitch::io::CFileList::CFileList(glitch::io::CFileList *this)
{
  _DWORD *v2; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877C8;
  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 7) = v2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  return this;
}


// ===== 6b4480 glitch::io::CFileList::CFileList(void) =====
glitch::io::CFileList *__fastcall glitch::io::CFileList::CFileList(glitch::io::CFileList *this)
{
  _DWORD *v2; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877C8;
  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 7) = v2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  return this;
}


// ===== 6b44e8 glitch::io::CLimitReadFile::read(void *,uint) =====
int __fastcall glitch::io::CLimitReadFile::read(glitch::io::CLimitReadFile *this, void *a2, int a3)
{
  int v6; // r0
  signed int v7; // r3
  int result; // r0

  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 18) + 36))(*((_DWORD *)this + 18));
  if ( v6 != *((_DWORD *)this + 19) )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 18) + 24))(*((_DWORD *)this + 18));
    v6 = *((_DWORD *)this + 19);
  }
  v7 = *((_DWORD *)this + 17);
  if ( v6 >= v7 )
    return 0;
  if ( v7 <= v6 + a3 )
    a3 = v7 - v6;
  result = (*(int (__fastcall **)(_DWORD, void *, int))(**((_DWORD **)this + 18) + 12))(*((_DWORD *)this + 18), a2, a3);
  *((_DWORD *)this + 19) += result;
  return result;
}


// ===== 6b4580 glitch::io::CLimitReadFile::readAsync(void *,uint,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CLimitReadFile::readAsync(
        glitch::io::CLimitReadFile *this,
        void *a2,
        unsigned int a3,
        void (*a4)(int, int, glitch::io::IReadFile *, void *),
        void *a5)
{
  int (__fastcall *v9)(glitch::io::CLimitReadFile *, void *, unsigned int, int, void (*)(int, int, glitch::io::IReadFile *, void *), void *); // r5
  int v10; // r0

  v9 = *(int (__fastcall **)(glitch::io::CLimitReadFile *, void *, unsigned int, int, void (*)(int, int, glitch::io::IReadFile *, void *), void *))(*(_DWORD *)this + 20);
  v10 = (*(int (__fastcall **)(glitch::io::CLimitReadFile *))(*(_DWORD *)this + 36))(this);
  return v9(this, a2, a3, v10, a4, a5);
}


// ===== 6b45d0 glitch::io::CLimitReadFile::readAsync(void *,uint,long,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CLimitReadFile::readAsync(
        glitch::io::CLimitReadFile *this,
        void *a2,
        unsigned int a3,
        int a4,
        void (*a5)(int, int, glitch::io::IReadFile *, void *),
        void *a6)
{
  int v6; // r12
  signed int v8; // r0
  signed int v9; // r3
  unsigned int v10; // r5
  int result; // r0

  v6 = *((_DWORD *)this + 16);
  v8 = *((_DWORD *)this + 17);
  v9 = a4 + v6;
  v10 = a3;
  *((_DWORD *)this + 19) = v9;
  if ( v9 >= v8 )
    return 0;
  if ( v8 <= (int)(v9 + a3) )
    v10 = v8 - v9;
  result = (*(int (__fastcall **)(_DWORD, void *, unsigned int, signed int, void (*)(int, int, glitch::io::IReadFile *, void *), void *))(**((_DWORD **)this + 18) + 20))(
             *((_DWORD *)this + 18),
             a2,
             v10,
             v9,
             a5,
             a6);
  *((_DWORD *)this + 19) += v10;
  return result;
}


// ===== 6b4644 glitch::io::CLimitReadFile::seek(long,bool) =====
int __fastcall glitch::io::CLimitReadFile::seek(glitch::io::CLimitReadFile *this, int a2, int a3)
{
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v10; // r1

  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 18) + 36))(*((_DWORD *)this + 18));
  v7 = a2 - *((_DWORD *)this + 19) + v6;
  if ( a3 )
  {
    v8 = *((_DWORD *)this + 17);
    if ( a2 + v6 > v8 )
      v7 = v8 - v6;
    *((_DWORD *)this + 19) = v7 + v6;
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 18) + 24))(*((_DWORD *)this + 18));
  }
  v10 = v7 + *((_DWORD *)this + 16);
  if ( v10 <= *((_DWORD *)this + 17) )
  {
    *((_DWORD *)this + 19) = v10;
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 18) + 24))(*((_DWORD *)this + 18));
  }
  return 0;
}


// ===== 6b46d0 glitch::io::CLimitReadFile::getSize(void) =====
int __fastcall glitch::io::CLimitReadFile::getSize(glitch::io::CLimitReadFile *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 6b46d8 glitch::io::CLimitReadFile::getPos(void) =====
int __fastcall glitch::io::CLimitReadFile::getPos(glitch::io::CLimitReadFile *this)
{
  return *((_DWORD *)this + 19) - *((_DWORD *)this + 16);
}


// ===== 6b46e8 glitch::io::CLimitReadFile::getFileName(void) =====
int __fastcall glitch::io::CLimitReadFile::getFileName(glitch::io::CLimitReadFile *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 6b46f0 glitch::io::CLimitReadFile::getFullPath(void) =====
int __fastcall glitch::io::CLimitReadFile::getFullPath(glitch::io::CLimitReadFile *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 6b46f8 `global constructor keyed to'.._source_glitch_io_CLimitReadFile.cpp =====
void `global constructor keyed to'.._source_glitch_io_CLimitReadFile.cpp()
{
  dword_9F76E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76E4 = 1056964608;
}


// ===== 6b4718 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::operator+=(char const*) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::operator+=(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
           a1,
           a2,
           &a2[v4]);
}


// ===== 6b4740 glitch::io::CLimitReadFile::init(char const*) =====
_DWORD *__fastcall glitch::io::CLimitReadFile::init(_DWORD *this, char *a2)
{
  int v2; // r3
  _DWORD *v3; // r4
  int v5; // r0
  int v6; // r2
  int v7; // r3
  size_t v8; // r0
  char *v9; // r0

  v2 = *(this + 18);
  v3 = this;
  if ( v2 )
  {
    v5 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 36))(*(this + 18));
    v6 = v3[15];
    v7 = v3[18];
    v3[16] = v5;
    v3[17] = v5 + v6;
    (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v7 + 24))(v7, v5, 0);
    v3[19] = v3[16];
    if ( a2 )
    {
      v8 = LC_API_STRLEN_0(a2);
      return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
               v3 + 9,
               a2,
               &a2[v8]);
    }
    else
    {
      v9 = (char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3[18] + 44))(v3[18]);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::operator+=(
        v3 + 9,
        v9);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::operator+=(
        v3 + 9,
        "/");
      return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
               v3 + 9,
               (_BYTE *)v3[8],
               (_BYTE *)v3[7]);
    }
  }
  return this;
}


// ===== 6b4810 glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile *,long,char const*,char const*) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::CLimitReadFile::CLimitReadFile(
        glitch::io::CLimitReadFile *this,
        glitch::io::IReadFile *a2,
        int a3,
        char *a4,
        char *a5)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877F0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a4);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 15) = a3;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = a2;
  *((_DWORD *)this + 18) = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 28))(a2);
  glitch::io::CLimitReadFile::init(this, a5);
  return this;
}


// ===== 6b48bc glitch::io::CLimitReadFile::clone(void) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::CLimitReadFile::clone(glitch::io::CLimitReadFile *this)
{
  char *v2; // r7
  char *v3; // r6
  glitch::io::CLimitReadFile *v4; // r5

  v2 = *((char **)this + 8);
  v3 = *((char **)this + 14);
  v4 = (glitch::io::CLimitReadFile *)operator new(0x50u, 0);
  glitch::io::CLimitReadFile::CLimitReadFile(v4, *((glitch::io::IReadFile **)this + 18), *((_DWORD *)this + 15), v2, v3);
  *((_DWORD *)v4 + 17) = *((_DWORD *)this + 17);
  *((_DWORD *)v4 + 16) = *((_DWORD *)this + 16);
  *((_DWORD *)v4 + 19) = *((_DWORD *)this + 19);
  return v4;
}


// ===== 6b4918 glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile *,long,char const*,char const*) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::CLimitReadFile::CLimitReadFile(
        glitch::io::CLimitReadFile *this,
        glitch::io::IReadFile *a2,
        int a3,
        char *a4,
        char *a5)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877F0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a4);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 15) = a3;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = a2;
  *((_DWORD *)this + 18) = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 28))(a2);
  glitch::io::CLimitReadFile::init(this, a5);
  return this;
}


// ===== 6b49c4 glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile *,long,char const*) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::CLimitReadFile::CLimitReadFile(
        glitch::io::CLimitReadFile *this,
        glitch::io::IReadFile *a2,
        int a3,
        char *a4)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877F0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a4);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 15) = a3;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = a2;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 18) = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 28))(a2);
  glitch::io::CLimitReadFile::init(this, nullptr);
  return this;
}


// ===== 6b4a70 glitch::io::createLimitReadFile(char const*,glitch::io::IReadFile *,long) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::createLimitReadFile(
        glitch::io *this,
        glitch::io::IReadFile *a2,
        glitch::io::IReadFile *a3,
        int a4)
{
  glitch::io::CLimitReadFile *v7; // r4

  v7 = (glitch::io::CLimitReadFile *)operator new(0x50u, 0);
  glitch::io::CLimitReadFile::CLimitReadFile(v7, a2, (int)a3, (char *)this);
  return v7;
}


// ===== 6b4aa8 glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile *,long,char const*) =====
glitch::io::CLimitReadFile *__fastcall glitch::io::CLimitReadFile::CLimitReadFile(
        glitch::io::CLimitReadFile *this,
        glitch::io::IReadFile *a2,
        int a3,
        char *a4)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9877F0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a4);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 15) = a3;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = a2;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 18) = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 28))(a2);
  glitch::io::CLimitReadFile::init(this, nullptr);
  return this;
}


// ===== 6b4b54 glitch::io::CLimitReadFile::~CLimitReadFile() =====
void __fastcall glitch::io::CLimitReadFile::~CLimitReadFile(glitch::io::CLimitReadFile *this)
{
  glitch::IReferenceCounted *v2; // r0
  char *v3; // r0
  char *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 18);
  *(_DWORD *)this = off_9877F0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((char **)this + 14);
  if ( v3 != (char *)this + 36 && v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 8);
  if ( v4 != (char *)this + 12 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 6b4bcc glitch::io::CLimitReadFile::~CLimitReadFile() =====
void __fastcall glitch::io::CLimitReadFile::~CLimitReadFile(glitch::io::CLimitReadFile *this)
{
  glitch::IReferenceCounted *v2; // r0
  char *v3; // r0
  char *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 18);
  *(_DWORD *)this = off_9877F0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((char **)this + 14);
  if ( v3 != (char *)this + 36 && v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 8);
  if ( v4 != (char *)this + 12 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 6b4c44 glitch::io::CLimitReadFile::~CLimitReadFile() =====
void __fastcall glitch::io::CLimitReadFile::~CLimitReadFile(glitch::io::CLimitReadFile *this)
{
  glitch::io::CLimitReadFile::~CLimitReadFile(this);
  LC_API_FREE_0(this);
}


// ===== 6b4c60 glitch::io::CMemoryWriteFile::flush(void) =====
void __fastcall glitch::io::CMemoryWriteFile::flush(glitch::io::CMemoryWriteFile *this)
{
  ;
}


// ===== 6b4c64 glitch::io::CMemoryWriteFile::getPos(void) =====
int __fastcall glitch::io::CMemoryWriteFile::getPos(glitch::io::CMemoryWriteFile *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 6b4c6c glitch::io::CMemoryWriteFile::getFileName(void) =====
const char *__fastcall glitch::io::CMemoryWriteFile::getFileName(glitch::io::CMemoryWriteFile *this)
{
  return "<memory>";
}


// ===== 6b4c7c glitch::io::CMemoryWriteFile::getFullPath(void) =====
const char *__fastcall glitch::io::CMemoryWriteFile::getFullPath(glitch::io::CMemoryWriteFile *this)
{
  return "<memory>";
}


// ===== 6b4c8c glitch::io::CMemoryWriteFile::getBuffer(void) =====
int __fastcall glitch::io::CMemoryWriteFile::getBuffer(glitch::io::CMemoryWriteFile *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 6b4c94 glitch::io::CMemoryWriteFile::getBufferSize(void) =====
int __fastcall glitch::io::CMemoryWriteFile::getBufferSize(glitch::io::CMemoryWriteFile *this)
{
  return *((_DWORD *)this + 4) - *((_DWORD *)this + 3);
}


// ===== 6b4ca4 `global constructor keyed to'.._source_glitch_io_CMemoryWriteFile.cpp =====
void `global constructor keyed to'.._source_glitch_io_CMemoryWriteFile.cpp()
{
  dword_9F76F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76F0 = 1056964608;
}


// ===== 6b4cc4 glitch::io::CMemoryWriteFile::~CMemoryWriteFile() =====
void __fastcall glitch::io::CMemoryWriteFile::~CMemoryWriteFile(glitch::io::CMemoryWriteFile *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_987838;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6b4d04 glitch::io::CMemoryWriteFile::CMemoryWriteFile(uint) =====
glitch::io::CMemoryWriteFile *__fastcall glitch::io::CMemoryWriteFile::CMemoryWriteFile(
        glitch::io::CMemoryWriteFile *this,
        size_t a2)
{
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_987838;
  std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 12,
    a2);
  return this;
}


// ===== 6b4d58 glitch::io::CMemoryWriteFile::CMemoryWriteFile(uint) =====
glitch::io::CMemoryWriteFile *__fastcall glitch::io::CMemoryWriteFile::CMemoryWriteFile(
        glitch::io::CMemoryWriteFile *this,
        size_t a2)
{
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_987838;
  std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 12,
    a2);
  return this;
}


// ===== 6b4dac glitch::io::CMemoryWriteFile::seek(long,bool) =====
int __fastcall glitch::io::CMemoryWriteFile::seek(glitch::io::CMemoryWriteFile *this, int a2, int a3)
{
  int v4; // r3
  int v5; // r1
  int v6; // r3
  char *v7; // r5
  char v9; // [sp+7h] [bp-5h] BYREF

  if ( a3 )
  {
    v4 = *((_DWORD *)this + 2);
    v5 = a2 + v4;
    if ( v5 < 0 )
      v4 = 0;
    *((_DWORD *)this + 2) = v5;
    if ( v5 >= 0 )
    {
      v6 = *((_DWORD *)this + 3);
      if ( v5 > (unsigned int)(*((_DWORD *)this + 4) - v6) )
      {
        v7 = (char *)this + 12;
        if ( v5 > (unsigned int)(*((_DWORD *)this + 5) - v6) )
        {
          std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
            (int)this + 12,
            2 * (v5 + 1));
          v5 = *((_DWORD *)this + 2);
        }
        v9 = 0;
        std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
          (int)v7,
          v5 + 1,
          &v9);
      }
    }
    else
    {
      *((_DWORD *)this + 2) = v4;
    }
  }
  return 1;
}


// ===== 6b4e44 glitch::io::CMemoryWriteFile::write(void const*,uint) =====
size_t __fastcall glitch::io::CMemoryWriteFile::write(glitch::io::CMemoryWriteFile *this, const void *a2, size_t a3)
{
  int v4; // r3
  int v5; // r0
  unsigned int v6; // r12
  char v10; // [sp+7h] [bp-5h] BYREF

  v4 = *((_DWORD *)this + 3);
  v5 = *((_DWORD *)this + 2);
  v6 = a3 + v5;
  if ( a3 + v5 > *((_DWORD *)this + 4) - v4 )
  {
    if ( v6 > *((_DWORD *)this + 5) - v4 )
    {
      std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        (int)this + 12,
        2 * v6);
      v6 = a3 + *((_DWORD *)this + 2);
    }
    v10 = 0;
    std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)this + 12,
      v6,
      &v10);
    v5 = *((_DWORD *)this + 2);
    v4 = *((_DWORD *)this + 3);
  }
  memcpy((void *)(v4 + v5), a2, a3);
  *((_DWORD *)this + 2) += a3;
  return a3;
}


// ===== 6b4eec glitch::io::CMemoryWriteFile::~CMemoryWriteFile() =====
void __fastcall glitch::io::CMemoryWriteFile::~CMemoryWriteFile(glitch::io::CMemoryWriteFile *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_987838;
  if ( v2 )
    GlitchFree(v2);
  LC_API_FREE_0(this);
}


// ===== 6b4f34 glitch::io::CZipWriter::CZipWriter(glitch::io::IWriteFile *) =====
int __fastcall glitch::io::CZipWriter::CZipWriter(int this, glitch::io::IWriteFile *a2)
{
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)this = off_987868;
  *(_DWORD *)(this + 4) = 1;
  *(_DWORD *)(this + 8) = a2;
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  return this;
}


// ===== 6b4f90 glitch::io::CZipWriter::CZipWriter(glitch::io::IWriteFile *) =====
int __fastcall glitch::io::CZipWriter::CZipWriter(int this, glitch::io::IWriteFile *a2)
{
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)this = off_987868;
  *(_DWORD *)(this + 4) = 1;
  *(_DWORD *)(this + 8) = a2;
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  return this;
}


// ===== 6b4fec glitch::io::CZipWriter::close(void) =====
int __fastcall glitch::io::CZipWriter::close(glitch::io::CZipWriter *this)
{
  int v1; // r2
  int v2; // r3
  int v4; // r5
  int v5; // r4
  int v6; // r0
  int v7; // r12
  __int16 v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-18h] BYREF
  __int16 v12; // [sp+4h] [bp-14h]
  __int16 v13; // [sp+6h] [bp-12h]
  __int16 v14; // [sp+8h] [bp-10h]
  __int16 v15; // [sp+Ah] [bp-Eh]
  int v16; // [sp+Ch] [bp-Ch]
  int v17; // [sp+10h] [bp-8h]
  __int16 v18; // [sp+14h] [bp-4h]

  v1 = *((_DWORD *)this + 6);
  v2 = *((_DWORD *)this + 7);
  *((_BYTE *)this + 12) = 1;
  v4 = *((_DWORD *)this + 9);
  v5 = v1;
  if ( v1 != v2 )
  {
    do
    {
      (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2), v5, 46);
      v5 += 46;
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 2) + 12))(
        *((_DWORD *)this + 2),
        *(_DWORD *)(v4 + 20),
        *(_DWORD *)(v4 + 16) - *(_DWORD *)(v4 + 20));
      v2 = *((_DWORD *)this + 7);
      v4 += 24;
    }
    while ( v5 != v2 );
    v1 = *((_DWORD *)this + 6);
  }
  v6 = *((_DWORD *)this + 4);
  v7 = *((_DWORD *)this + 5);
  v8 = 14247 * ((v2 - v1) >> 1);
  v9 = *((_DWORD *)this + 2);
  v11 = 101010256;
  v15 = v8;
  v17 = v6;
  v12 = 0;
  v13 = 0;
  v14 = v8;
  v18 = 0;
  v16 = v7;
  (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v9 + 12))(v9, &v11, 22);
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 16))(*((_DWORD *)this + 2));
}


// ===== 6b50ec boost::detail::crc_table_t<32u,79764919u,true>::init_table(void) =====
void boost::detail::crc_table_t<32u,79764919u,true>::init_table()
{
  int v0; // r12
  int v1; // r1
  unsigned int v2; // r2
  unsigned int v3; // r8
  int v4; // r3
  int v5; // r1
  int v6; // r8
  bool v7; // cf
  int v8; // r2
  int v9; // r1

  v0 = (unsigned __int8)boost::detail::crc_table_t<32u,79764919u,true>::init_table(void)::did_init;
  if ( !boost::detail::crc_table_t<32u,79764919u,true>::init_table(void)::did_init )
  {
    do
    {
      v1 = 0;
      v2 = (unsigned __int8)v0;
      v3 = 128;
      v4 = 0;
      do
      {
        if ( ((unsigned __int8)v0 & (unsigned __int8)v3) != 0 )
          v4 += 0x80000000;
        ++v1;
        if ( v4 >= 0 )
          v4 *= 2;
        else
          v4 = (2 * v4) ^ 0x4C11DB7;
        v3 >>= 1;
      }
      while ( v1 != 8 );
      v5 = 7;
      v6 = 0;
      while ( 1 )
      {
        if ( (v2 & 1) != 0 )
          v6 = (unsigned __int8)(v6 | (1 << v5));
        v7 = v5-- != 0;
        if ( !v7 )
          break;
        v2 >>= 1;
      }
      v8 = 31;
      v9 = 0;
      while ( 1 )
      {
        if ( (v4 & 1) != 0 )
          v9 |= 1 << v8;
        v7 = v8-- != 0;
        if ( !v7 )
          break;
        v4 = (unsigned int)v4 >> 1;
      }
      ++v0;
      boost::detail::crc_table_t<32u,79764919u,true>::table_[v6] = v9;
    }
    while ( v0 != 256 );
    boost::detail::crc_table_t<32u,79764919u,true>::init_table(void)::did_init = 1;
  }
}


// ===== 6b51c8 `global constructor keyed to'.._source_glitch_io_CZipWriter.cpp =====
void `global constructor keyed to'.._source_glitch_io_CZipWriter.cpp()
{
  dword_9F7700 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76FC = 1056964608;
}


// ===== 6b51e8 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 6;
      v4 = (void **)v1[5];
      if ( v4 != v1 && v4 )
        GlitchFree(v1[5]);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  GlitchFree(v1);
}


// ===== 6b5238 glitch::io::CZipWriter::~CZipWriter() =====
void __fastcall glitch::io::CZipWriter::~CZipWriter(glitch::io::CZipWriter *this)
{
  void ***v2; // r5
  void *v3; // r0

  *(_DWORD *)this = off_987868;
  v2 = (void ***)((char *)this + 36);
  glitch::io::CZipWriter::close(this);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v2);
  v3 = *((void **)this + 6);
  if ( v3 )
    GlitchFree(v3);
}


// ===== 6b5288 glitch::io::CZipWriter::~CZipWriter() =====
void __fastcall glitch::io::CZipWriter::~CZipWriter(glitch::io::CZipWriter *this)
{
  void ***v2; // r5
  void *v3; // r0

  *(_DWORD *)this = off_987868;
  v2 = (void ***)((char *)this + 36);
  glitch::io::CZipWriter::close(this);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v2);
  v3 = *((void **)this + 6);
  if ( v3 )
    GlitchFree(v3);
}


// ===== 6b52d8 glitch::io::CZipWriter::~CZipWriter() =====
void __fastcall glitch::io::CZipWriter::~CZipWriter(glitch::io::CZipWriter *this)
{
  glitch::io::CZipWriter::~CZipWriter(this);
  LC_API_FREE_0(this);
}


// ===== 6b52f4 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int a1,
        int a2,
        int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r10
  _DWORD *v9; // r0
  _DWORD *v10; // r12
  _DWORD *v11; // r8
  int v12; // r3
  int v13; // r7
  _DWORD *v14; // r7
  int v15; // r5
  _DWORD *v16; // lr
  _DWORD *v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r2
  int v22; // r3

  v6 = -1431655765 * ((*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 3);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0xAAAAAAA && v6 <= v7 )
    v8 = 6 * v7;
  else
    v8 = -4;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = *(_DWORD **)a1;
  v11 = v9;
  v12 = (a2 - *(_DWORD *)a1) >> 3;
  v13 = -1431655765 * v12;
  if ( -1431655765 * v12 > 0 )
  {
    v15 = -1431655765 * v12;
    v16 = v9;
    while ( 1 )
    {
      v16[5] = v10[5];
      v17 = (_DWORD *)v10[5];
      if ( v17 == v10 )
      {
        v18 = v10[1];
        v19 = v10[2];
        v20 = v10[3];
        *v16 = *v10;
        v16[1] = v18;
        v16[2] = v19;
        v16[3] = v20;
        v21 = v10[4];
        v22 = v10[5];
        --v15;
        v16[5] = v16;
        v16[4] = (char *)v16 + v21 - v22;
        v16 += 6;
        if ( !v15 )
        {
LABEL_14:
          v14 = &v9[6 * v13];
          goto LABEL_15;
        }
      }
      else
      {
        v16[5] = v17;
        --v15;
        v16[4] = v10[4];
        *v16 = *v10;
        v10[5] = 0;
        v16 += 6;
        if ( !v15 )
          goto LABEL_14;
      }
      v10 += 6;
    }
  }
  v14 = v9;
LABEL_15:
  v14[4] = v14;
  v14[5] = v14;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v14,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void ***)a1);
  *(_DWORD *)(a1 + 4) = v14 + 6;
  *(_DWORD *)(a1 + 8) = &v11[v8];
  *(_DWORD *)a1 = v11;
}


// ===== 6b5448 glitch::io::CZipWriter::addNewFile(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,void const*,uint) =====
int __fastcall glitch::io::CZipWriter::addNewFile(_DWORD *a1, unsigned int a2, unsigned int a3, int a4)
{
  int v8; // r3
  unsigned int v9; // r9
  unsigned int i; // r2
  char *v12; // r3
  char v13; // t1
  void *v14; // r1
  void *v15; // r7
  unsigned __int16 v16; // r3
  int v17; // r9
  int v18; // r11
  int v19; // r1
  int v20; // r3
  unsigned int v22; // r1
  unsigned int v23; // r0
  int v24; // r1
  unsigned __int16 v25; // r3
  char *v26; // r7
  int v27; // r10
  int v28; // r7
  unsigned int v29; // r9
  int v30; // r5
  char *v31; // r0
  const void *v32; // r1
  char *v33; // r0
  char *v34; // r3
  char *v35; // r7
  unsigned __int16 v36; // [sp+0h] [bp-6Ch]
  char *v37; // [sp+4h] [bp-68h]
  size_t v38; // [sp+8h] [bp-64h]
  int v39; // [sp+14h] [bp-58h]
  _DWORD v40[12]; // [sp+18h] [bp-54h] BYREF
  int v41; // [sp+48h] [bp-24h] BYREF
  __int16 v42; // [sp+4Ch] [bp-20h]
  __int16 v43; // [sp+4Eh] [bp-1Eh]
  __int16 v44; // [sp+50h] [bp-1Ch]
  int v45; // [sp+56h] [bp-16h]
  int v46; // [sp+5Ah] [bp-12h]
  int v47; // [sp+5Eh] [bp-Eh]
  unsigned __int16 v48; // [sp+62h] [bp-Ah]
  __int16 v49; // [sp+64h] [bp-8h]

  v8 = 31;
  v9 = 0;
  for ( i = -1; ; i >>= 1 )
  {
    if ( (i & 1) != 0 )
      v9 |= 1 << v8;
    if ( v8-- == 0 )
      break;
  }
  boost::detail::crc_table_t<32u,79764919u,true>::init_table();
  v12 = (char *)a3;
  if ( a3 < a3 + a4 )
  {
    do
    {
      v13 = *v12++;
      v9 = boost::detail::crc_table_t<32u,79764919u,true>::table_[(unsigned __int8)(v9 ^ v13)] ^ (v9 >> 8);
    }
    while ( v12 != (char *)(a3 + a4) );
  }
  v14 = (void *)a1[8];
  v15 = (void *)a1[7];
  v16 = *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20);
  v17 = ~v9;
  v41 = 67324752;
  v42 = 10;
  v47 = a4;
  v43 = 0;
  v44 = 0;
  v45 = v17;
  v46 = a4;
  v48 = v16;
  v49 = 0;
  v18 = a1[4];
  if ( v15 == v14 )
  {
    v22 = -373475417 * (((int)v15 - a1[6]) >> 1);
    if ( v22 )
      v23 = -746950834 * (((int)v15 - a1[6]) >> 1);
    else
      v23 = 1;
    if ( v23 > 0x590B216 || v22 > v23 )
      v38 = -12;
    else
      v38 = 46 * v23;
    v36 = v16;
    v37 = (char *)GlitchAlloc(v38, 0);
    v24 = ((int)v15 - a1[6]) >> 1;
    v25 = v36;
    if ( -373475417 * v24 > 0 )
    {
      v27 = 2 * v24;
      v39 = v17;
      v28 = 0;
      v29 = a2;
      v30 = a1[6];
      do
      {
        v31 = &v37[v28];
        v32 = (const void *)(v30 + v28);
        v28 += 46;
        memcpy(v31, v32, 0x2Eu);
      }
      while ( v28 != v27 );
      a2 = v29;
      v25 = v36;
      v17 = v39;
      v26 = &v37[v28];
    }
    else
    {
      v26 = v37;
    }
    v40[7] = v25;
    *(_DWORD *)((char *)&v40[10] + 2) = v18;
    v40[0] = 33639248;
    memset(&v40[8], 0, 10);
    v40[2] = 0;
    v40[1] = 655370;
    v40[4] = v17;
    v40[6] = a4;
    v40[5] = a4;
    memcpy(v26, v40, 0x2Eu);
    v33 = (char *)a1[7];
    v34 = (char *)a1[6];
    v35 = v26 + 46;
    if ( v33 != v34 )
      v33 += -46 * ((1774008231 * ((unsigned int)(v33 - 46 - v34) >> 1)) & 0x7FFFFFFF) - 46;
    GlitchFree(v33);
    a1[7] = v35;
    a1[6] = v37;
    a1[8] = &v37[v38];
  }
  else
  {
    v40[7] = v16;
    *(_DWORD *)((char *)&v40[10] + 2) = v18;
    v40[0] = 33639248;
    memset(&v40[8], 0, 10);
    v40[2] = 0;
    v40[1] = 655370;
    v40[4] = v17;
    v40[6] = a4;
    v40[5] = a4;
    memcpy(v15, v40, 0x2Eu);
    a1[7] += 46;
  }
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (int)(a1 + 9),
    a2);
  v19 = a1[4];
  a1[5] += 46 + *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20);
  v20 = a1[2];
  a1[4] = v19 + 30 + *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20) + a4;
  (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v20 + 12))(v20, &v41, 30);
  (*(void (__fastcall **)(_DWORD, _DWORD, int))(*(_DWORD *)a1[2] + 12))(
    a1[2],
    *(_DWORD *)(a2 + 20),
    *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20));
  return (*(int (__fastcall **)(_DWORD, unsigned int, int))(*(_DWORD *)a1[2] + 12))(a1[2], a3, a4);
}


// ===== 6b581c glitch::io::CZipWriter::addNewFile(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::io::IReadFile *) =====
void __fastcall glitch::io::CZipWriter::addNewFile(_DWORD *a1, unsigned int a2, int a3)
{
  size_t v6; // r0
  void *v7; // r4
  void (__fastcall *v8)(int, void *, int); // r8
  int v9; // r0
  int v10; // r0

  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 32))(a3);
  v7 = operator new[](v6, 0);
  v8 = *(void (__fastcall **)(int, void *, int))(*(_DWORD *)a3 + 12);
  v9 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 32))(a3);
  v8(a3, v7, v9);
  v10 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 32))(a3);
  glitch::io::CZipWriter::addNewFile(a1, a2, (unsigned int)v7, v10);
  if ( v7 )
    operator delete[](v7);
}


// ===== 6b58a8 glitch::io::getVertexStreamsStride(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&) =====
unsigned int __fastcall glitch::io::getVertexStreamsStride(int *a1)
{
  int v1; // r4
  int v2; // r3
  int v3; // r9
  unsigned int v4; // r6
  unsigned int v5; // r11
  int v6; // r8
  unsigned int v7; // r5
  unsigned int v8; // r11
  unsigned int v9; // r4

  v1 = *a1;
  v2 = *(_DWORD *)(*a1 + 16);
  v3 = *a1 + 20;
  if ( v3 == v2 )
    return 0;
  v5 = (unsigned int)(v2 - (v1 + 36)) >> 4;
  v6 = v1 + 16 + 16 * v5;
  v4 = 0;
  do
  {
    if ( *(_DWORD *)(v1 + 20) )
    {
      v7 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v1 + 30)];
      v4 += *(unsigned __int16 *)(v1 + 32) * v7 + (v7 - v4 % v7) % v7;
    }
    v1 += 16;
  }
  while ( v1 != v6 );
  v8 = v3 + 16 * (v5 + 1);
  while ( !*(_DWORD *)v3 )
  {
    v3 += 16;
    if ( v3 == v8 )
      return v4;
  }
  v9 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v3 + 10)];
  v4 += (v9 - v4 % v9) % v9;
  return v4;
}


// ===== 6b5990 glitch::io::SStreamItrWriter::writeAndAdvance(glitch::io::IWriteFile *,bool) =====
int __fastcall glitch::io::SStreamItrWriter::writeAndAdvance(int this, glitch::io::IWriteFile *a2, int a3)
{
  int v3; // r4
  unsigned int v5; // r2
  _BYTE *v6; // r10
  char *v7; // r9
  char *v8; // r11
  unsigned int v9; // r6
  char v10; // r3
  char v11; // lr
  char v12; // r12
  _BYTE *v13; // r7
  unsigned int v14; // r6
  char v15; // r3
  unsigned int v16; // r7
  int v17; // r3
  int i; // r2
  char v19; // r1
  __int64 v20; // [sp+0h] [bp-14h]
  int v21; // [sp+Ch] [bp-8h]

  v3 = this;
  if ( !a3 )
  {
    v5 = *(unsigned __int16 *)(this + 22);
    goto LABEL_8;
  }
  v5 = *(unsigned __int16 *)(this + 22);
  if ( v5 <= 1 )
  {
LABEL_8:
    this = (*(int (__fastcall **)(glitch::io::IWriteFile *, _DWORD, unsigned int))(*(_DWORD *)a2 + 12))(
             a2,
             *(_DWORD *)(this + 16),
             *(unsigned __int16 *)(this + 20) * v5);
    goto LABEL_6;
  }
  if ( v5 == 4 )
  {
    if ( *(_WORD *)(this + 20) )
    {
      v6 = (_BYTE *)(this + 3);
      v7 = (char *)(this + 2);
      v8 = (char *)(this + 1);
      v9 = 0;
      do
      {
        *(_DWORD *)v3 = *(_DWORD *)(*(_DWORD *)(v3 + 16) + 4 * v9);
        v10 = *(_BYTE *)v3;
        v11 = *v7;
        v12 = *v8;
        LOBYTE(v21) = *v6;
        BYTE1(v21) = v11;
        BYTE2(v21) = v12;
        HIBYTE(v21) = v10;
        v9 = (unsigned __int16)(v9 + 1);
        *(_DWORD *)v3 = v21;
        this = (*(int (__fastcall **)(glitch::io::IWriteFile *, int, int))(*(_DWORD *)a2 + 12))(a2, v3, 4);
      }
      while ( *(unsigned __int16 *)(v3 + 20) > v9 );
    }
  }
  else if ( v5 == 8 )
  {
    if ( *(_WORD *)(this + 20) )
    {
      v16 = 0;
      do
      {
        v17 = 7;
        *(_QWORD *)v3 = *(_QWORD *)(*(_DWORD *)(v3 + 16) + 8 * v16);
        for ( i = 0; i != 8; ++i )
        {
          v19 = *(_BYTE *)(v3 + v17--);
          *((_BYTE *)&v20 + i) = v19;
        }
        *(_QWORD *)v3 = v20;
        this = (*(int (__fastcall **)(glitch::io::IWriteFile *, int))(*(_DWORD *)a2 + 12))(a2, v3);
        v16 = (unsigned __int16)(v16 + 1);
      }
      while ( *(unsigned __int16 *)(v3 + 20) > v16 );
    }
  }
  else if ( v5 == 2 && *(_WORD *)(this + 20) )
  {
    v13 = (_BYTE *)(this + 1);
    v14 = 0;
    do
    {
      *(_WORD *)v3 = *(_WORD *)(*(_DWORD *)(v3 + 16) + 2 * v14);
      v15 = *(_BYTE *)v3;
      v14 = (unsigned __int16)(v14 + 1);
      LOBYTE(v21) = *v13;
      BYTE1(v21) = v15;
      *(_WORD *)v3 = v21;
      this = (*(int (__fastcall **)(glitch::io::IWriteFile *, int, int))(*(_DWORD *)a2 + 12))(a2, v3, 2);
    }
    while ( *(unsigned __int16 *)(v3 + 20) > v14 );
  }
LABEL_6:
  *(_DWORD *)(v3 + 16) += *(unsigned __int16 *)(v3 + 24);
  return this;
}


// ===== 6b5b74 glitch::io::SStreamItrLoader::loadAndAdvance(glitch::io::IReadFile *,bool) =====
int __fastcall glitch::io::SStreamItrLoader::loadAndAdvance(int this, glitch::io::IReadFile *a2, int a3)
{
  int v3; // r4
  unsigned int v5; // r3
  _BYTE *v6; // r7
  unsigned int v7; // r6
  char v8; // r3
  int v9; // r1
  __int16 v10; // r3
  unsigned int v11; // r7
  int v12; // r2
  int i; // r3
  char v14; // r1
  __int64 v15; // r2
  unsigned __int8 *v16; // r7
  char *v17; // r10
  _BYTE *v18; // r9
  unsigned int v19; // r6
  char v20; // r1
  char v21; // r3
  int v22; // r3
  int v23; // r1
  __int64 v24; // [sp+0h] [bp-10h]
  int v25; // [sp+Ch] [bp-4h]

  v3 = this;
  if ( a3 )
  {
    v5 = *(unsigned __int16 *)(this + 22);
    if ( v5 > 1 )
    {
      if ( v5 == 4 )
      {
        if ( *(_WORD *)(this + 20) )
        {
          v16 = (unsigned __int8 *)(this + 3);
          v17 = (char *)(this + 2);
          v18 = (_BYTE *)(this + 1);
          v19 = 0;
          do
          {
            (*(void (__fastcall **)(glitch::io::IReadFile *, int, int))(*(_DWORD *)a2 + 12))(a2, v3, 4);
            v20 = *v17;
            v21 = *(_BYTE *)v3;
            this = *v16;
            BYTE2(v25) = *v18;
            BYTE1(v25) = v20;
            LOBYTE(v25) = this;
            HIBYTE(v25) = v21;
            v22 = v25;
            v23 = *(_DWORD *)(v3 + 16);
            *(_DWORD *)v3 = v25;
            *(_DWORD *)(v23 + 4 * v19) = v22;
            v19 = (unsigned __int16)(v19 + 1);
          }
          while ( *(unsigned __int16 *)(v3 + 20) > v19 );
        }
      }
      else if ( v5 == 8 )
      {
        if ( *(_WORD *)(this + 20) )
        {
          v11 = 0;
          do
          {
            (*(void (__fastcall **)(glitch::io::IReadFile *, int, int))(*(_DWORD *)a2 + 12))(a2, v3, 8);
            v12 = 7;
            for ( i = 0; i != 8; ++i )
            {
              v14 = *(_BYTE *)(v3 + v12--);
              *((_BYTE *)&v24 + i) = v14;
            }
            this = *(_DWORD *)(v3 + 16);
            v15 = v24;
            *(_QWORD *)v3 = v24;
            *(_QWORD *)(this + 8 * v11) = v15;
            v11 = (unsigned __int16)(v11 + 1);
          }
          while ( *(unsigned __int16 *)(v3 + 20) > v11 );
        }
      }
      else if ( v5 == 2 && *(_WORD *)(this + 20) )
      {
        v6 = (_BYTE *)(this + 1);
        v7 = 0;
        do
        {
          this = (*(int (__fastcall **)(glitch::io::IReadFile *, int, int))(*(_DWORD *)a2 + 12))(a2, v3, 2);
          v8 = *(_BYTE *)v3;
          v9 = *(_DWORD *)(v3 + 16);
          LOBYTE(v25) = *v6;
          BYTE1(v25) = v8;
          v10 = v25;
          *(_WORD *)v3 = v25;
          *(_WORD *)(v9 + 2 * v7) = v10;
          v7 = (unsigned __int16)(v7 + 1);
        }
        while ( *(unsigned __int16 *)(v3 + 20) > v7 );
      }
    }
  }
  *(_DWORD *)(v3 + 16) += *(unsigned __int16 *)(v3 + 24);
  return this;
}


// ===== 6b5d2c `global constructor keyed to'.._source_glitch_io_IOUtils.cpp =====
void `global constructor keyed to'.._source_glitch_io_IOUtils.cpp()
{
  dword_9F7B10 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B0C = 1056964608;
}


// ===== 6b5d4c std::allocator<glitch::io::SVertexStreamHeader>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::io::SVertexStreamHeader>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 6b5dd4 glitch::io::save(glitch::video::CPrimitiveStream const&,glitch::io::IWriteFile *,bool) =====
int __fastcall glitch::io::save(
        glitch::io *this,
        const glitch::video::CPrimitiveStream *a2,
        glitch::io::IWriteFile *a3,
        bool a4)
{
  int v7; // r3
  int v8; // r3
  unsigned int PrimitiveCount; // r0
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r1
  int v14; // r3
  unsigned int v16; // r3
  int v17; // r2
  char *v18; // r5
  char *v19; // r7
  int v20; // r3
  char v21; // t1
  char *v22; // r5
  char *v23; // r7
  int v24; // r3
  char v25; // t1
  unsigned int v26; // [sp+4h] [bp-10h]
  __int16 v27; // [sp+4h] [bp-10h]
  int v28; // [sp+4h] [bp-10h]
  int v29; // [sp+8h] [bp-Ch] BYREF
  unsigned int v30; // [sp+Ch] [bp-8h] BYREF

  if ( a3 )
  {
    LOWORD(v26) = 0;
    BYTE2(v26) = HIBYTE(*((_WORD *)this + 11));
    HIBYTE(v26) = *((_WORD *)this + 11);
    v30 = v26;
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    LOWORD(v26) = 0;
    BYTE2(v26) = HIBYTE(*((_WORD *)this + 10));
    HIBYTE(v26) = *((_WORD *)this + 10);
    v7 = *(_DWORD *)a2;
    v30 = v26;
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(v7 + 12))(a2, &v30, 4);
    LOBYTE(v26) = HIBYTE(*((_DWORD *)this + 2));
    BYTE2(v26) = BYTE1(*((_DWORD *)this + 2));
    BYTE1(v26) = BYTE2(*((_DWORD *)this + 2));
    HIBYTE(v26) = *((_DWORD *)this + 2);
    v8 = *(_DWORD *)a2;
    v30 = v26;
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(v8 + 12))(a2, &v30, 4);
    PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount(this);
    LOBYTE(v26) = HIBYTE(PrimitiveCount);
    HIBYTE(v26) = PrimitiveCount;
    BYTE1(v26) = BYTE2(PrimitiveCount);
    BYTE2(v26) = BYTE1(PrimitiveCount);
    v10 = *(_DWORD *)a2;
    v30 = v26;
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(v10 + 12))(a2, &v30, 4);
    v11 = *(_DWORD *)a2;
    LOBYTE(v26) = HIBYTE(*((_DWORD *)this + 3));
    BYTE2(v26) = BYTE1(*((_DWORD *)this + 3));
    HIBYTE(v26) = *((_DWORD *)this + 3);
    BYTE1(v26) = BYTE2(*((_DWORD *)this + 3));
    v30 = v26;
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(v11 + 12))(a2, &v30, 4);
    v12 = *(_DWORD *)a2;
    BYTE2(v26) = BYTE1(*((_DWORD *)this + 4));
    HIBYTE(v26) = *((_DWORD *)this + 4);
    LOBYTE(v26) = HIBYTE(*((_DWORD *)this + 4));
    BYTE1(v26) = BYTE2(*((_DWORD *)this + 4));
    v30 = v26;
  }
  else
  {
    v30 = *((unsigned __int16 *)this + 11);
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    v30 = *((unsigned __int16 *)this + 10);
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    v30 = *((_DWORD *)this + 2);
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    v30 = glitch::video::CPrimitiveStream::getPrimitiveCount(this);
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    v30 = *((_DWORD *)this + 3);
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(*(_DWORD *)a2 + 12))(
      a2,
      &v30,
      4);
    v12 = *(_DWORD *)a2;
    v30 = *((_DWORD *)this + 4);
  }
  (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, unsigned int *, int))(v12 + 12))(a2, &v30, 4);
  if ( !*(_DWORD *)this )
    return 24;
  v13 = *(_DWORD *)(*(_DWORD *)this + 8) + *((_DWORD *)this + 1);
  if ( !a3 )
  {
    v16 = *((unsigned __int16 *)this + 10) - 1;
    if ( v16 <= 1 )
    {
      v17 = *((_DWORD *)this + 2) * CSWTCH_4544[v16];
      goto LABEL_12;
    }
LABEL_11:
    v17 = 0;
LABEL_12:
    (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, int, int))(*(_DWORD *)a2 + 12))(a2, v13, v17);
    return 24;
  }
  v14 = *((unsigned __int16 *)this + 10);
  if ( !*((_WORD *)this + 10) )
    goto LABEL_11;
  if ( v14 == 1 )
  {
    v18 = (char *)(*(_DWORD *)(*(_DWORD *)this + 8) + *((_DWORD *)this + 1));
    v19 = (char *)(v13 + 2 * *((_DWORD *)this + 2));
    if ( (char *)v13 != v19 )
    {
      do
      {
        v20 = *(_DWORD *)a2;
        LOBYTE(v27) = v18[1];
        v21 = *v18;
        v18 += 2;
        HIBYTE(v27) = v21;
        LOWORD(v29) = v27;
        (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, int *, int))(v20 + 12))(a2, &v29, 2);
      }
      while ( v19 != v18 );
    }
  }
  else if ( v14 == 2 )
  {
    v22 = (char *)(*(_DWORD *)(*(_DWORD *)this + 8) + *((_DWORD *)this + 1));
    v23 = (char *)(v13 + 4 * *((_DWORD *)this + 2));
    if ( (char *)v13 != v23 )
    {
      do
      {
        v24 = *(_DWORD *)a2;
        LOBYTE(v28) = v22[3];
        BYTE1(v28) = v22[2];
        BYTE2(v28) = v22[1];
        v25 = *v22;
        v22 += 4;
        HIBYTE(v28) = v25;
        v29 = v28;
        (*(void (__fastcall **)(const glitch::video::CPrimitiveStream *, int *, int))(v24 + 12))(a2, &v29, 4);
      }
      while ( v23 != v22 );
    }
  }
  return 24;
}


// ===== 6b6194 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
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


// ===== 6b61fc glitch::io::loadPS(glitch::io::IReadFile *,bool,glitch::video::IVideoDriver *) =====
glitch::io *__fastcall glitch::io::loadPS(
        glitch::io *this,
        glitch::io::IReadFile *a2,
        int a3,
        glitch::video::IVideoDriver *a4)
{
  glitch::IReferenceCounted *v8; // r6
  glitch::IReferenceCounted *v9; // r11
  void (__fastcall *v10)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, size_t, void *, int); // r8
  size_t v11; // r7
  void *v12; // r0
  int v13; // r10
  int v14; // r12
  glitch::IReferenceCounted *v15; // r5
  char v16; // r3
  glitch::IReferenceCounted *v17; // r0
  glitch::IReferenceCounted *v18; // r1
  glitch::IReferenceCounted *v19; // r2
  bool v20; // zf
  glitch::IReferenceCounted *v21; // r3
  glitch::IReferenceCounted *v23; // r0
  glitch::IReferenceCounted *v24; // r2
  glitch::IReferenceCounted *v25; // r1
  glitch::IReferenceCounted *v26; // r2
  unsigned int i; // r8
  unsigned int v28; // r8
  int v29; // r2
  glitch::IReferenceCounted *v30; // [sp+2Ch] [bp+0h] BYREF
  glitch::IReferenceCounted *v31; // [sp+30h] [bp+4h]
  glitch::IReferenceCounted *v32; // [sp+34h] [bp+8h]
  glitch::IReferenceCounted *v33; // [sp+38h] [bp+Ch]
  glitch::IReferenceCounted *v34; // [sp+3Ch] [bp+10h]
  glitch::IReferenceCounted *v35; // [sp+40h] [bp+14h]
  int v36; // [sp+44h] [bp+18h]
  glitch::IReferenceCounted *v37; // [sp+48h] [bp+1Ch] BYREF
  _DWORD v38[2]; // [sp+4Ch] [bp+20h] BYREF

  (*(void (__fastcall **)(glitch::io::IReadFile *, glitch::IReferenceCounted **, int))(*(_DWORD *)a2 + 12))(
    a2,
    &v30,
    24);
  if ( !a3 )
  {
    v8 = v31;
    LOWORD(v9) = (_WORD)v30;
    if ( v31 != (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[8] + 3) )
      goto LABEL_3;
LABEL_16:
    v25 = v34;
    v26 = v35;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = v26 - v25;
    *((_DWORD *)this + 3) = v25;
    *((_DWORD *)this + 4) = v26;
    *((_WORD *)this + 10) = (_WORD)v8;
    *((_WORD *)this + 11) = (_WORD)v9;
    *(_DWORD *)this = 0;
    return this;
  }
  LOBYTE(v37) = HIBYTE(v30);
  BYTE1(v37) = BYTE2(v30);
  BYTE2(v37) = BYTE1(v30);
  HIBYTE(v37) = (_BYTE)v30;
  v9 = v37;
  LOBYTE(v37) = HIBYTE(v31);
  BYTE1(v37) = BYTE2(v31);
  BYTE2(v37) = BYTE1(v31);
  HIBYTE(v37) = (_BYTE)v31;
  v8 = v37;
  LOBYTE(v37) = HIBYTE(v32);
  BYTE1(v37) = BYTE2(v32);
  BYTE2(v37) = BYTE1(v32);
  HIBYTE(v37) = (_BYTE)v32;
  v23 = v37;
  v30 = v9;
  LOBYTE(v37) = HIBYTE(v33);
  BYTE1(v37) = BYTE2(v33);
  v32 = v23;
  v31 = v8;
  BYTE2(v37) = BYTE1(v33);
  HIBYTE(v37) = (_BYTE)v33;
  v33 = v37;
  LOBYTE(v37) = HIBYTE(v34);
  BYTE1(v37) = BYTE2(v34);
  BYTE2(v37) = BYTE1(v34);
  HIBYTE(v37) = (_BYTE)v34;
  v24 = v37;
  LOBYTE(v37) = HIBYTE(v35);
  BYTE1(v37) = BYTE2(v35);
  BYTE2(v37) = BYTE1(v35);
  HIBYTE(v37) = (_BYTE)v35;
  v34 = v24;
  v35 = v37;
  if ( v8 == (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[8] + 3) )
    goto LABEL_16;
LABEL_3:
  v10 = *(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, size_t, void *, int))(*(_DWORD *)a4 + 120);
  v11 = (_DWORD)v32 * glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[(_DWORD)v8];
  v12 = operator new[](v11, 0);
  v10(&v37, a4, 1, 4, v11, v12, 1);
  v13 = glitch::video::IBuffer::map((int)v37, 4);
  if ( a3 && v8 )
  {
    if ( v8 == (glitch::IReferenceCounted *)((char *)&dword_0 + 1) )
    {
      if ( v32 )
      {
        v28 = 0;
        do
        {
          (*(void (__fastcall **)(glitch::io::IReadFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v38, 2);
          v29 = 2 * v28++;
          LOBYTE(v36) = BYTE1(v38[0]);
          BYTE1(v36) = v38[0];
          LOWORD(v38[0]) = v36;
          *(_WORD *)(v13 + v29) = v36;
        }
        while ( (unsigned int)v32 > v28 );
        LOWORD(v8) = 1;
      }
    }
    else if ( v8 == (glitch::IReferenceCounted *)((char *)&dword_0 + 2) && v32 )
    {
      for ( i = 0; i < (unsigned int)v32; ++i )
      {
        (*(void (__fastcall **)(glitch::io::IReadFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v38, 4);
        LOBYTE(v36) = HIBYTE(v38[0]);
        BYTE1(v36) = BYTE2(v38[0]);
        BYTE2(v36) = BYTE1(v38[0]);
        HIBYTE(v36) = v38[0];
        v38[0] = v36;
        *(_DWORD *)(v13 + 4 * i) = v36;
      }
    }
  }
  else
  {
    (*(void (__fastcall **)(glitch::io::IReadFile *, int, size_t))(*(_DWORD *)a2 + 12))(a2, v13, v11);
  }
  v15 = v37;
  v16 = *((_BYTE *)v37 + 19);
  if ( (v16 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v37 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v37 + 24))(v37);
    *((_BYTE *)v15 + 19) = 0;
  }
  else
  {
    *((_BYTE *)v37 + 19) = ((v16 & 0x1F) - 1) | v16 & 0xE0;
  }
  v17 = v37;
  v18 = v32;
  v19 = v34;
  v20 = v37 == nullptr;
  *(_DWORD *)this = v37;
  if ( !v20 )
    v14 = *((_DWORD *)v17 + 1);
  v21 = v35;
  if ( !v20 )
  {
    *((_DWORD *)v17 + 1) = v14 + 1;
    v17 = v37;
  }
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = v18;
  *((_DWORD *)this + 3) = v19;
  *((_DWORD *)this + 4) = v21;
  *((_WORD *)this + 10) = (_WORD)v8;
  *((_WORD *)this + 11) = (_WORD)v9;
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  return this;
}


// ===== 6b6654 std::vector<glitch::io::SStreamItrLoader,std::allocator<glitch::io::SStreamItrLoader>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::io::SStreamItrLoader>::_M_clear_after_move(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r6
  glitch::IReferenceCounted *v4; // r0
  _BYTE *v5; // r5
  char v6; // r3
  size_t v7; // r1

  v1 = (_DWORD *)a1[1];
  v2 = (_DWORD *)*a1;
  if ( v1 != (_DWORD *)*a1 )
  {
    do
    {
      v1 -= 8;
      v5 = (_BYTE *)v1[2];
      v6 = v5[19];
      if ( (v6 & 0x1Fu) > 1 )
      {
        v5[19] = ((v6 & 0x1F) - 1) | v6 & 0xE0;
      }
      else
      {
        if ( (v5[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 24))(v1[2]);
        v5[19] = 0;
      }
      v4 = (glitch::IReferenceCounted *)v1[2];
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
    v1 = (_DWORD *)*a1;
  }
  if ( v1 )
  {
    v7 = (a1[2] - (_DWORD)v1) & 0xFFFFFFE0;
    if ( v7 > 0x80 )
      LC_API_FREE_0(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v7);
  }
}


// ===== 6b6718 std::vector<glitch::io::SVertexStreamHeader,std::allocator<glitch::io::SVertexStreamHeader>>::~vector() =====
int __fastcall std::vector<glitch::io::SVertexStreamHeader>::~vector(int a1)
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
  LC_API_FREE_0(v2);
  return a1;
}


// ===== 6b6774 std::vector<glitch::io::SStreamItrLoader,std::allocator<glitch::io::SStreamItrLoader>>::~vector() =====
void **__fastcall std::vector<glitch::io::SStreamItrLoader>::~vector(void **a1)
{
  glitch::IReferenceCounted **v1; // r5
  glitch::IReferenceCounted **v2; // r7
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r6
  char v6; // r3
  _BYTE *v7; // r0
  size_t v8; // r1

  v1 = (glitch::IReferenceCounted **)a1[1];
  v2 = (glitch::IReferenceCounted **)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 8;
      v5 = v1[2];
      v6 = *((_BYTE *)v5 + 19);
      if ( (v6 & 0x1Fu) > 1 )
      {
        *((_BYTE *)v5 + 19) = ((v6 & 0x1F) - 1) | v6 & 0xE0;
      }
      else
      {
        if ( (*((_BYTE *)v5 + 18) & 0x20) != 0 )
          (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v5 + 24))(v1[2]);
        *((_BYTE *)v5 + 19) = 0;
      }
      v4 = v1[2];
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  v7 = *a1;
  if ( !*a1 )
    return a1;
  v8 = ((_BYTE *)a1[2] - v7) & 0xFFFFFFE0;
  if ( v8 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
    return a1;
  }
  LC_API_FREE_0(v7);
  return a1;
}


// ===== 6b6834 std::vector<glitch::io::SStreamItrWriter,std::allocator<glitch::io::SStreamItrWriter>>::~vector() =====
int __fastcall std::vector<glitch::io::SStreamItrWriter>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFE0;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  LC_API_FREE_0(v2);
  return a1;
}


// ===== 6b6874 std::allocator<glitch::io::SStreamItrLoader>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::io::SStreamItrLoader>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = (void *)operator new(32 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 5;
  return result;
}


// ===== 6b68e4 std::vector<glitch::io::SStreamItrLoader,std::allocator<glitch::io::SStreamItrLoader>>::push_back(glitch::io::SStreamItrLoader const&) =====
void __fastcall std::vector<glitch::io::SStreamItrLoader>::push_back(int *a1, int a2)
{
  int v2; // r3
  int v3; // r6
  int v6; // r2
  unsigned int v7; // r3
  unsigned int v8; // r1
  char *v9; // r0
  int v10; // r2
  char *v11; // r7
  int v12; // r6
  char *v13; // r6
  int v14; // r0
  char *v15; // r3
  int v16; // r1
  int v17; // r3
  size_t v18; // r3
  size_t v19; // [sp+4h] [bp-8h] BYREF

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v7 = (v3 - *a1) >> 5;
    if ( v7 )
      v8 = 2 * v7;
    else
      v8 = 1;
    if ( v8 > 0x7FFFFFF || v7 > v8 )
      v8 = 0x7FFFFFF;
    v19 = v8;
    v9 = (char *)std::allocator<glitch::io::SStreamItrLoader>::_M_allocate((int)(a1 + 2), v8, &v19);
    v10 = *a1;
    v11 = v9;
    v12 = (v3 - *a1) >> 5;
    if ( v12 > 0 )
    {
      v14 = v12;
      v15 = v11;
      while ( 1 )
      {
        *(_QWORD *)v15 = *(_QWORD *)v10;
        v16 = *(_DWORD *)(v10 + 8);
        *((_DWORD *)v15 + 2) = v16;
        if ( v16 )
          ++*(_DWORD *)(v16 + 4);
        --v14;
        v15[12] = *(_BYTE *)(v10 + 12);
        *((_DWORD *)v15 + 4) = *(_DWORD *)(v10 + 16);
        *((_WORD *)v15 + 10) = *(_WORD *)(v10 + 20);
        *((_WORD *)v15 + 11) = *(_WORD *)(v10 + 22);
        *((_WORD *)v15 + 12) = *(_WORD *)(v10 + 24);
        v15 += 32;
        if ( !v14 )
          break;
        v10 += 32;
      }
      v13 = &v11[32 * v12];
    }
    else
    {
      v13 = v9;
    }
    *(_QWORD *)v13 = *(_QWORD *)a2;
    v17 = *(_DWORD *)(a2 + 8);
    *((_DWORD *)v13 + 2) = v17;
    if ( v17 )
      ++*(_DWORD *)(v17 + 4);
    v13[12] = *(_BYTE *)(a2 + 12);
    *((_DWORD *)v13 + 4) = *(_DWORD *)(a2 + 16);
    *((_WORD *)v13 + 10) = *(_WORD *)(a2 + 20);
    *((_WORD *)v13 + 11) = *(_WORD *)(a2 + 22);
    *((_WORD *)v13 + 12) = *(_WORD *)(a2 + 24);
    std::vector<glitch::io::SStreamItrLoader>::_M_clear_after_move(a1);
    v18 = v19;
    *a1 = (int)v11;
    a1[1] = (int)(v13 + 32);
    a1[2] = (int)&v11[32 * v18];
  }
  else
  {
    *(_QWORD *)v2 = *(_QWORD *)a2;
    v6 = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v2 + 8) = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
    *(_BYTE *)(v2 + 12) = *(_BYTE *)(a2 + 12);
    *(_DWORD *)(v2 + 16) = *(_DWORD *)(a2 + 16);
    *(_WORD *)(v2 + 20) = *(_WORD *)(a2 + 20);
    *(_WORD *)(v2 + 22) = *(_WORD *)(a2 + 22);
    *(_WORD *)(v2 + 24) = *(_WORD *)(a2 + 24);
    a1[1] += 32;
  }
}


// ===== 6b6a88 std::allocator<glitch::io::SStreamItrWriter>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::io::SStreamItrWriter>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = (void *)operator new(32 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 5;
  return result;
}


// ===== 6b6af8 std::vector<glitch::io::SVertexStreamHeader,std::allocator<glitch::io::SVertexStreamHeader>>::_M_insert_overflow_aux(glitch::io::SVertexStreamHeader*,glitch::io::SVertexStreamHeader const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::io::SVertexStreamHeader>::_M_insert_overflow_aux(void **a1, int a2, _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  _DWORD *v8; // r0
  char *v9; // r12
  _DWORD *v10; // r7
  int v11; // r5
  _DWORD *v12; // r3
  int v13; // r0
  int v14; // r3
  _DWORD *v15; // r2
  int v16; // r1
  _DWORD *v17; // r5
  _BYTE *v18; // r0
  _BYTE *v19; // r3
  size_t v20; // r1
  size_t v21; // r3
  size_t v22; // [sp+4h] [bp-4h] BYREF

  v6 = -1431655765 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x15555555 || v6 > v7 )
    v7 = 357913941;
  v22 = v7;
  v8 = std::allocator<glitch::io::SVertexStreamHeader>::_M_allocate((int)(a1 + 2), v7, &v22);
  v9 = (char *)*a1;
  v10 = v8;
  v11 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v11 > 0 )
  {
    v13 = v11;
    v14 = 0;
    do
    {
      v10[v14] = *(_DWORD *)&v9[v14 * 4];
      v10[v14 + 1] = *(_DWORD *)&v9[v14 * 4 + 4];
      v15 = &v10[v14 + 2];
      v16 = *(_DWORD *)&v9[v14 * 4 + 8];
      --v13;
      v14 += 3;
      *v15 = v16;
    }
    while ( v13 );
    v12 = &v10[3 * v11];
  }
  else
  {
    v12 = v8;
  }
  v17 = v12 + 3;
  *v12 = *a3;
  v12[1] = a3[1];
  v12[2] = a3[2];
  v18 = *a1;
  v19 = a1[1];
  if ( v19 != *a1 )
    v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - v18) >> 2)) & 0x3FFFFFFF) - 12;
  if ( v19 )
  {
    v20 = 4 * (((_BYTE *)a1[2] - v19) >> 2);
    if ( v20 > 0x80 )
      LC_API_FREE_0(v18);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, v20);
  }
  v21 = v22;
  *a1 = v10;
  a1[1] = v17;
  a1[2] = &v10[3 * v21];
}


// ===== 6b6cac glitch::io::loadHeadersAndSkipData(glitch::io::IReadFile *,glitch::io::SPrimitiveStreamDesc &,bool) =====
glitch::video::CVertexStreams **__fastcall glitch::io::loadHeadersAndSkipData(
        glitch::video::CVertexStreams **a1,
        int *a2,
        _BYTE *a3,
        int a4)
{
  unsigned int v6; // r11
  unsigned int v7; // r7
  char v8; // r3
  glitch::IReferenceCounted **v9; // r1
  glitch::IReferenceCounted **v10; // r7
  int v11; // r8
  glitch::video::CVertexStreams *v12; // r0
  glitch::IReferenceCounted *v13; // lr
  unsigned __int16 v14; // r12
  unsigned __int16 v15; // r3
  int v16; // r1
  glitch::video::CVertexStreams *v17; // r3
  unsigned int i; // r2
  int v19; // r0
  int v20; // r2
  glitch::video::CVertexStreams *v21; // r3
  unsigned int v22; // r1
  int v23; // r3
  _DWORD *v24; // r3
  int v25; // r2
  _DWORD *v26; // r3
  int v27; // r6
  unsigned __int8 v28; // r7
  int v29; // r3
  int v30; // r0
  int v31; // r3
  int v32; // r1
  int v33; // r2
  int v34; // r3
  int v35; // r3
  int v36; // r12
  char v37; // r1
  char v38; // r2
  char v39; // r3
  char v40; // r12
  char v41; // r0
  char v42; // r3
  char v43; // r3
  char v44; // r12
  char v45; // r0
  char v46; // r2
  char v47; // r0
  char v48; // r0
  char v49; // r1
  glitch::IReferenceCounted *v50; // r0
  char v51; // r1
  char v52; // r2
  glitch::IReferenceCounted *v53; // r2
  char v54; // r3
  glitch::video::CVertexStreams *v56; // r3
  _DWORD *v57; // r3
  glitch::IReferenceCounted *v60; // [sp+20h] [bp-6Ch] BYREF
  glitch::IReferenceCounted *v61; // [sp+24h] [bp-68h]
  glitch::IReferenceCounted *v62; // [sp+28h] [bp-64h]
  unsigned __int16 v63; // [sp+2Ch] [bp-60h]
  unsigned __int16 v64; // [sp+2Eh] [bp-5Eh]
  _DWORD v65[3]; // [sp+30h] [bp-5Ch] BYREF
  _DWORD v66[3]; // [sp+3Ch] [bp-50h] BYREF
  _DWORD v67[3]; // [sp+48h] [bp-44h] BYREF
  _DWORD v68[3]; // [sp+54h] [bp-38h] BYREF
  int v69; // [sp+60h] [bp-2Ch] BYREF
  int v70; // [sp+64h] [bp-28h]
  int v71; // [sp+68h] [bp-24h]
  glitch::IReferenceCounted **v72; // [sp+6Ch] [bp-20h] BYREF
  glitch::IReferenceCounted **v73; // [sp+70h] [bp-1Ch]
  glitch::IReferenceCounted **v74; // [sp+74h] [bp-18h]
  glitch::IReferenceCounted *v75; // [sp+78h] [bp-14h]
  int v76; // [sp+7Ch] [bp-10h] BYREF
  unsigned int v77; // [sp+80h] [bp-Ch] BYREF
  char v78[5]; // [sp+87h] [bp-5h] BYREF

  v74 = nullptr;
  v72 = nullptr;
  v73 = nullptr;
  (*(void (__fastcall **)(int *, char *, int))(*a2 + 12))(a2, v78, 1);
  (*(void (__fastcall **)(int *, unsigned int *, int))(*a2 + 12))(a2, &v77, 4);
  if ( a4 )
  {
    LOBYTE(v75) = HIBYTE(v77);
    BYTE1(v75) = BYTE2(v77);
    BYTE2(v75) = BYTE1(v77);
    HIBYTE(v75) = v77;
    v6 = (unsigned int)v75;
    v77 = (unsigned int)v75;
  }
  else
  {
    v6 = v77;
  }
  if ( v6 )
  {
    v7 = 0;
    v6 = 0;
    do
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(int *, glitch::IReferenceCounted **, int))(*a2 + 12))(a2, &v60, 12);
        if ( a4 )
        {
          LOBYTE(v75) = HIBYTE(v60);
          BYTE1(v75) = BYTE2(v60);
          BYTE2(v75) = BYTE1(v60);
          HIBYTE(v75) = (_BYTE)v60;
          v60 = v75;
          LOBYTE(v75) = BYTE1(v61);
          BYTE1(v75) = (_BYTE)v61;
          v8 = BYTE1(v61);
          LOWORD(v61) = (_WORD)v75;
          LOBYTE(v75) = HIBYTE(v61);
          BYTE1(v75) = BYTE2(v61);
          HIWORD(v61) = (_WORD)v75;
          LOBYTE(v75) = BYTE1(v62);
          BYTE1(v75) = (_BYTE)v62;
          LOWORD(v62) = (_WORD)v75;
          LOBYTE(v75) = HIBYTE(v62);
          BYTE1(v75) = BYTE2(v62);
          HIWORD(v62) = (_WORD)v75;
        }
        else
        {
          v8 = (char)v61;
        }
        v9 = v73;
        v6 |= 1 << v8;
        if ( v73 == v74 )
          break;
        ++v7;
        *v73 = v60;
        v9[1] = v61;
        v9[2] = v62;
        v73 += 3;
        if ( v77 <= v7 )
          goto LABEL_12;
      }
      std::vector<glitch::io::SVertexStreamHeader>::_M_insert_overflow_aux((void **)&v72, (int)v73, &v60);
      ++v7;
    }
    while ( v77 > v7 );
  }
LABEL_12:
  glitch::video::CVertexStreams::allocate(a1, v6);
  v10 = v72;
  if ( v72 != v73 )
  {
    v11 = 0;
    do
    {
      v12 = *a1;
      v13 = (glitch::IReferenceCounted *)*((unsigned __int16 *)v10 + 3);
      v14 = *((_WORD *)v10 + 4);
      v15 = *((_WORD *)v10 + 5);
      v16 = (int)*a1 + v11 + 20;
      v61 = *v10;
      v62 = v13;
      v63 = v14;
      v64 = v15;
      v60 = nullptr;
      glitch::video::CVertexStreams::setStream(v12, v16, &v60);
      v10 += 3;
      v11 += 16;
      if ( v60 )
        glitch::IReferenceCounted::drop(v60);
    }
    while ( v10 != v73 );
  }
  v17 = *a1;
  if ( *((_WORD *)*a1 + 15) == 6 )
    *((_WORD *)v17 + 7) &= ~4u;
  else
    *((_WORD *)v17 + 7) |= 4u;
  for ( i = 0; ; i = v22 )
  {
    v21 = *a1;
    v22 = (unsigned __int8)(i + 1);
    if ( *((unsigned __int8 *)*a1 + 12) <= i )
      break;
    v19 = *((unsigned __int16 *)v21 + 7);
    if ( *((_WORD *)*a1 + 8 * v22 + 15) == 6 )
      v20 = v19 & ~(8 << i);
    else
      v20 = v19 | (8 << i);
    *((_WORD *)v21 + 7) = v20;
  }
  v23 = *a2;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  (*(void (__fastcall **)(int *, int *, int))(v23 + 12))(a2, &v69, 12);
  if ( a4 )
  {
    glitch::os::byteswap<float>(v68, &v69);
    v56 = *a1;
    v70 = v68[1];
    v69 = v68[0];
    v71 = v68[2];
    v57 = *((_DWORD **)v56 + 4);
    *v57 = v68[0];
    v57[1] = v70;
    v57[2] = v71;
    (*(void (__fastcall **)(int *, int *, int))(*a2 + 12))(a2, &v69, 12);
    glitch::os::byteswap<float>(v67, &v69);
    v25 = v67[0];
    v70 = v67[1];
    v69 = v67[0];
    v71 = v67[2];
  }
  else
  {
    v24 = *((_DWORD **)*a1 + 4);
    *v24 = v69;
    v24[1] = v70;
    v24[2] = v71;
    (*(void (__fastcall **)(int *, int *, int))(*a2 + 12))(a2, &v69, 12);
    v25 = v69;
  }
  v26 = *((_DWORD **)*a1 + 4);
  v26[3] = v25;
  v26 += 3;
  v26[1] = v70;
  v26[2] = v71;
  if ( *((_BYTE *)*a1 + 12) )
  {
    v27 = 0;
    do
    {
      (*(void (__fastcall **)(int *, int *, int))(*a2 + 12))(a2, &v69, 12);
      if ( a4 )
      {
        glitch::os::byteswap<float>(v66, &v69);
        v36 = v66[0];
        v70 = v66[1];
        v69 = v66[0];
        v71 = v66[2];
      }
      else
      {
        v36 = v69;
      }
      v28 = v27 + 1;
      v29 = 24 * (v27 + 1);
      v30 = *((_DWORD *)*a1 + 4);
      *(_DWORD *)(v30 + v29) = v36;
      v31 = v30 + v29;
      *(_DWORD *)(v31 + 4) = v70;
      *(_DWORD *)(v31 + 8) = v71;
      (*(void (__fastcall **)(int *, int *, int))(*a2 + 12))(a2, &v69, 12);
      if ( a4 )
      {
        glitch::os::byteswap<float>(v65, &v69);
        v32 = v65[0];
        v70 = v65[1];
        v69 = v65[0];
        v71 = v65[2];
      }
      else
      {
        v32 = v69;
      }
      v33 = *((_DWORD *)*a1 + 4);
      v34 = 24 * v27 + 36;
      v27 = v28;
      *(_DWORD *)(v33 + v34) = v32;
      v35 = v33 + v34;
      *(_DWORD *)(v35 + 4) = v70;
      *(_DWORD *)(v35 + 8) = v71;
    }
    while ( *((unsigned __int8 *)*a1 + 12) > (unsigned int)v28 );
  }
  (*(void (__fastcall **)(int *, int *, int))(*a2 + 12))(a2, &v76, 4);
  (*(void (__fastcall **)(int *, int, int))(*a2 + 24))(a2, v76 * *((unsigned __int16 *)v72 + 5), 1);
  (*(void (__fastcall **)(int *, _BYTE *, int))(*a2 + 12))(a2, a3, 24);
  if ( a4 )
  {
    v37 = a3[2];
    v38 = a3[1];
    v39 = *a3;
    LOBYTE(v75) = a3[3];
    BYTE2(v75) = v38;
    HIBYTE(v75) = v39;
    BYTE1(v75) = v37;
    *(_DWORD *)a3 = v75;
    v40 = a3[7];
    v41 = a3[6];
    v42 = a3[4];
    BYTE2(v75) = a3[5];
    LOBYTE(v75) = v40;
    BYTE1(v75) = v41;
    HIBYTE(v75) = v42;
    v43 = a3[8];
    *((_DWORD *)a3 + 1) = v75;
    v44 = a3[9];
    v45 = a3[11];
    v46 = a3[10];
    HIBYTE(v75) = v43;
    BYTE2(v75) = v44;
    BYTE1(v75) = v46;
    LOBYTE(v75) = v45;
    *((_DWORD *)a3 + 2) = v75;
    v47 = a3[14];
    LOBYTE(v75) = a3[15];
    BYTE1(v75) = v47;
    v48 = a3[12];
    v49 = a3[16];
    BYTE2(v75) = a3[13];
    HIBYTE(v75) = v48;
    v50 = v75;
    HIBYTE(v75) = v49;
    v51 = a3[20];
    *((_DWORD *)a3 + 3) = v50;
    LOBYTE(v50) = a3[19];
    v52 = a3[18];
    BYTE2(v75) = a3[17];
    LOBYTE(v75) = (_BYTE)v50;
    BYTE1(v75) = v52;
    v53 = v75;
    HIBYTE(v75) = v51;
    *((_DWORD *)a3 + 4) = v53;
    LOBYTE(v53) = a3[23];
    v54 = a3[22];
    BYTE2(v75) = a3[21];
    LOBYTE(v75) = (_BYTE)v53;
    BYTE1(v75) = v54;
    *((_DWORD *)a3 + 5) = v75;
  }
  (*(void (__fastcall **)(int *, int, int))(*a2 + 24))(
    a2,
    *((_DWORD *)a3 + 2) * glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[*((_DWORD *)a3 + 1)],
    1);
  std::vector<glitch::io::SVertexStreamHeader>::~vector((int)&v72);
  return a1;
}


// ===== 6b73d8 glitch::io::loadVS(glitch::io::IReadFile *,bool,glitch::video::IVideoDriver *) =====
glitch::video::CVertexStreams **__fastcall glitch::io::loadVS(
        glitch::video::CVertexStreams **this,
        glitch::io::IReadFile *a2,
        int a3,
        glitch::video::IVideoDriver *a4)
{
  unsigned int v7; // r12
  unsigned int v8; // r7
  unsigned int v9; // r5
  glitch::IReferenceCounted **v10; // r1
  glitch::IReferenceCounted **v11; // r3
  int v12; // r3
  _DWORD *v13; // r3
  int v14; // r2
  _DWORD *v15; // r3
  int v16; // r6
  unsigned __int8 v17; // r7
  int v18; // r3
  int v19; // r0
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r3
  int v25; // r12
  int (__fastcall *v26)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, int, size_t, void *, int); // r7
  size_t v27; // r6
  void *v28; // r0
  glitch::IReferenceCounted *v29; // r0
  unsigned int v30; // r3
  int v31; // r7
  unsigned int v32; // r8
  glitch::IReferenceCounted *v33; // r0
  bool v34; // zf
  unsigned __int16 *v35; // r6
  glitch::IReferenceCounted *v36; // r6
  char v37; // r3
  unsigned int v38; // r2
  unsigned __int16 *v39; // r3
  unsigned int v40; // r7
  unsigned int v41; // r10
  glitch::io *v42; // r8
  unsigned __int16 *v43; // r5
  unsigned int v44; // r6
  int v45; // r2
  int v46; // r1
  glitch::IReferenceCounted **v47; // r4
  int v48; // r7
  glitch::IReferenceCounted *v49; // r8
  glitch::IReferenceCounted *v50; // lr
  unsigned __int16 v51; // r12
  unsigned __int16 v52; // r3
  glitch::video::CVertexStreams *v53; // r0
  glitch::video::CVertexStreams *v54; // r3
  unsigned int i; // r2
  int v56; // r0
  int v57; // r2
  glitch::video::CVertexStreams *v58; // r3
  unsigned int v59; // r1
  glitch::video::CVertexStreams *v61; // r3
  _DWORD *v62; // r3
  int v63; // r0
  glitch::IReferenceCounted *v64; // r4
  char v65; // r3
  glitch::io *v67; // [sp+2Ch] [bp-A0h]
  char v68[8]; // [sp+30h] [bp-9Ch] BYREF
  glitch::IReferenceCounted *v69; // [sp+38h] [bp-94h]
  int v70; // [sp+40h] [bp-8Ch]
  unsigned __int16 v71; // [sp+44h] [bp-88h]
  __int16 v72; // [sp+46h] [bp-86h]
  unsigned __int16 v73; // [sp+48h] [bp-84h]
  glitch::IReferenceCounted *v74; // [sp+54h] [bp-78h] BYREF
  glitch::IReferenceCounted *v75; // [sp+58h] [bp-74h]
  glitch::IReferenceCounted *v76; // [sp+5Ch] [bp-70h]
  unsigned __int16 v77; // [sp+60h] [bp-6Ch]
  unsigned __int16 v78; // [sp+62h] [bp-6Ah]
  _DWORD v79[3]; // [sp+64h] [bp-68h] BYREF
  _DWORD v80[3]; // [sp+70h] [bp-5Ch] BYREF
  _DWORD v81[3]; // [sp+7Ch] [bp-50h] BYREF
  _DWORD v82[3]; // [sp+88h] [bp-44h] BYREF
  int v83; // [sp+94h] [bp-38h] BYREF
  int v84; // [sp+98h] [bp-34h]
  int v85; // [sp+9Ch] [bp-30h]
  unsigned __int16 *v86; // [sp+A0h] [bp-2Ch] BYREF
  unsigned __int16 *v87; // [sp+A4h] [bp-28h]
  int v88; // [sp+A8h] [bp-24h]
  glitch::IReferenceCounted **v89; // [sp+ACh] [bp-20h] BYREF
  glitch::IReferenceCounted **v90; // [sp+B0h] [bp-1Ch]
  glitch::IReferenceCounted **v91; // [sp+B4h] [bp-18h]
  glitch::IReferenceCounted *v92; // [sp+B8h] [bp-14h]
  glitch::IReferenceCounted *v93; // [sp+BCh] [bp-10h] BYREF
  unsigned int v94; // [sp+C0h] [bp-Ch] BYREF
  unsigned int v95; // [sp+C4h] [bp-8h] BYREF

  v88 = 0;
  v89 = nullptr;
  v90 = nullptr;
  v91 = nullptr;
  v86 = nullptr;
  v87 = nullptr;
  (*(void (__fastcall **)(glitch::io::IReadFile *, unsigned int *, int))(*(_DWORD *)a2 + 12))(a2, &v95, 4);
  if ( a3 )
  {
    LOBYTE(v92) = HIBYTE(v95);
    BYTE1(v92) = BYTE2(v95);
    BYTE2(v92) = BYTE1(v95);
    HIBYTE(v92) = v95;
    v7 = (unsigned int)v92;
    v95 = (unsigned int)v92;
  }
  else
  {
    v7 = v95;
  }
  if ( v7 )
  {
    v8 = 0;
    v67 = (glitch::io *)this;
    v9 = 0;
    do
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(glitch::io::IReadFile *, glitch::IReferenceCounted **, int))(*(_DWORD *)a2 + 12))(
          a2,
          &v74,
          12);
        if ( a3 )
        {
          LOBYTE(v92) = HIBYTE(v74);
          BYTE1(v92) = BYTE2(v74);
          BYTE2(v92) = BYTE1(v74);
          HIBYTE(v92) = (_BYTE)v74;
          v74 = v92;
          LOBYTE(v92) = BYTE1(v75);
          BYTE1(v92) = (_BYTE)v75;
          LOWORD(v75) = (_WORD)v92;
          LOBYTE(v92) = HIBYTE(v75);
          BYTE1(v92) = BYTE2(v75);
          HIWORD(v75) = (_WORD)v92;
          LOBYTE(v92) = BYTE1(v76);
          BYTE1(v92) = (_BYTE)v76;
          LOWORD(v76) = (_WORD)v92;
          LOBYTE(v92) = HIBYTE(v76);
          BYTE1(v92) = BYTE2(v76);
          HIWORD(v76) = (_WORD)v92;
        }
        v10 = v90;
        v11 = v90;
        if ( v90 == v91 )
          break;
        ++v8;
        *v90 = v74;
        v10[1] = v75;
        v11[2] = v76;
        v90 += 3;
        v9 |= 1 << (char)v75;
        if ( v95 <= v8 )
          goto LABEL_11;
      }
      std::vector<glitch::io::SVertexStreamHeader>::_M_insert_overflow_aux((void **)&v89, (int)v90, &v74);
      ++v8;
      v9 |= 1 << (char)v75;
    }
    while ( v95 > v8 );
LABEL_11:
    v7 = v9;
    this = (glitch::video::CVertexStreams **)v67;
  }
  glitch::video::CVertexStreams::allocate(this, v7);
  v12 = *(_DWORD *)a2;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  (*(void (__fastcall **)(glitch::io::IReadFile *, int *, int))(v12 + 12))(a2, &v83, 12);
  if ( a3 )
  {
    glitch::os::byteswap<float>(v82, &v83);
    v61 = *this;
    v84 = v82[1];
    v83 = v82[0];
    v85 = v82[2];
    v62 = *((_DWORD **)v61 + 4);
    *v62 = v82[0];
    v62[1] = v84;
    v62[2] = v85;
    (*(void (__fastcall **)(glitch::io::IReadFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v83, 12);
    glitch::os::byteswap<float>(v81, &v83);
    v14 = v81[0];
    v84 = v81[1];
    v83 = v81[0];
    v85 = v81[2];
  }
  else
  {
    v13 = *((_DWORD **)*this + 4);
    *v13 = v83;
    v13[1] = v84;
    v13[2] = v85;
    (*(void (__fastcall **)(glitch::io::IReadFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v83, 12);
    v14 = v83;
  }
  v15 = *((_DWORD **)*this + 4);
  v15[3] = v14;
  v15 += 3;
  v15[1] = v84;
  v15[2] = v85;
  if ( *((_BYTE *)*this + 12) )
  {
    v16 = 0;
    do
    {
      (*(void (__fastcall **)(glitch::io::IReadFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v83, 12);
      if ( a3 )
      {
        glitch::os::byteswap<float>(v80, &v83);
        v25 = v80[0];
        v84 = v80[1];
        v83 = v80[0];
        v85 = v80[2];
      }
      else
      {
        v25 = v83;
      }
      v17 = v16 + 1;
      v18 = 24 * (v16 + 1);
      v19 = *((_DWORD *)*this + 4);
      *(_DWORD *)(v19 + v18) = v25;
      v20 = v19 + v18;
      *(_DWORD *)(v20 + 4) = v84;
      *(_DWORD *)(v20 + 8) = v85;
      (*(void (__fastcall **)(glitch::io::IReadFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v83, 12);
      if ( a3 )
      {
        glitch::os::byteswap<float>(v79, &v83);
        v21 = v79[0];
        v84 = v79[1];
        v83 = v79[0];
        v85 = v79[2];
      }
      else
      {
        v21 = v83;
      }
      v22 = *((_DWORD *)*this + 4);
      v23 = 24 * v16 + 36;
      v16 = v17;
      *(_DWORD *)(v22 + v23) = v21;
      v24 = v22 + v23;
      *(_DWORD *)(v24 + 4) = v84;
      *(_DWORD *)(v24 + 8) = v85;
    }
    while ( *((unsigned __int8 *)*this + 12) > (unsigned int)v17 );
  }
  (*(void (__fastcall **)(glitch::io::IReadFile *, unsigned int *, int))(*(_DWORD *)a2 + 12))(a2, &v94, 4);
  v26 = *(int (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, int, size_t, void *, int))(*(_DWORD *)a4 + 120);
  v27 = v94 * *((unsigned __int16 *)v89 + 5);
  v28 = operator new[](v27, 0);
  v29 = (glitch::IReferenceCounted *)v26(&v93, a4, 0, 4, v27, v28, 1);
  if ( a3 )
  {
    if ( v95 )
    {
      v30 = 4360;
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = v93;
        v34 = v93 == nullptr;
        v69 = v93;
        if ( v93 )
          v30 = *((_DWORD *)v93 + 1);
        v35 = (unsigned __int16 *)&v89[v31];
        if ( v93 )
          *((_DWORD *)v93 + 1) = v30 + 1;
        if ( !v34 )
          v33 = v93;
        v73 = v35[5];
        v71 = v35[4];
        v72 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v35[3]];
        v70 = glitch::video::IBuffer::map((int)v33, 4) + *(_DWORD *)v35;
        std::vector<glitch::io::SStreamItrLoader>::push_back((int *)&v86, (int)v68);
        v36 = v69;
        v37 = *((_BYTE *)v69 + 19);
        if ( (v37 & 0x1Fu) > 1 )
        {
          *((_BYTE *)v69 + 19) = ((v37 & 0x1F) - 1) | v37 & 0xE0;
        }
        else
        {
          if ( (*((_BYTE *)v69 + 18) & 0x20) != 0 )
            (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v69 + 24))(v69);
          *((_BYTE *)v36 + 19) = 0;
        }
        v29 = v69;
        ++v32;
        v31 += 3;
        if ( v69 )
          v29 = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v69);
        v30 = v95;
      }
      while ( v95 > v32 );
    }
    v38 = v94;
    if ( v94 )
    {
      v39 = v87;
      v40 = 0;
      v41 = 0;
      v42 = (glitch::io *)this;
      do
      {
        v43 = v86;
        if ( v86 != v39 )
        {
          do
          {
            v44 = (v43[11] - v40 % v43[11]) % v43[11];
            (*(void (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 24))(a2);
            v29 = (glitch::IReferenceCounted *)glitch::io::SStreamItrLoader::loadAndAdvance((int)v43, a2, 1);
            v45 = v43[10];
            v46 = v43[11];
            v39 = v87;
            v43 += 16;
            v40 += v44 + v46 * v45;
          }
          while ( v43 != v87 );
          v38 = v94;
        }
        ++v41;
      }
      while ( v38 > v41 );
      this = (glitch::video::CVertexStreams **)v42;
    }
  }
  else
  {
    v63 = glitch::video::IBuffer::map((int)v93, 4);
    v29 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::io::IReadFile *, int, size_t))(*(_DWORD *)a2 + 12))(
                                         a2,
                                         v63,
                                         v27);
    v64 = v93;
    v65 = *((_BYTE *)v93 + 19);
    if ( (v65 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v93 + 18) & 0x20) != 0 )
        v29 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v93 + 24))(v93);
      *((_BYTE *)v64 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v93 + 19) = ((v65 & 0x1F) - 1) | v65 & 0xE0;
    }
  }
  v47 = v89;
  if ( v90 != v89 )
  {
    v48 = 0;
    do
    {
      v49 = *v47;
      v50 = (glitch::IReferenceCounted *)*((unsigned __int16 *)v47 + 3);
      v51 = *((_WORD *)v47 + 4);
      v52 = *((_WORD *)v47 + 5);
      v74 = v93;
      if ( v93 )
        v29 = *((glitch::IReferenceCounted **)v93 + 1);
      v47 += 3;
      if ( v93 )
        *((_DWORD *)v93 + 1) = (char *)v29 + 1;
      v53 = *this;
      v75 = v49;
      v76 = v50;
      v77 = v51;
      v78 = v52;
      glitch::video::CVertexStreams::setStream(v53, (int)v53 + v48 + 20, &v74);
      v29 = v74;
      v48 += 16;
      if ( v74 )
        v29 = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v74);
    }
    while ( v47 != v90 );
  }
  v54 = *this;
  if ( *((_WORD *)*this + 15) == 6 )
    *((_WORD *)v54 + 7) &= ~4u;
  else
    *((_WORD *)v54 + 7) |= 4u;
  for ( i = 0; ; i = v59 )
  {
    v58 = *this;
    v59 = (unsigned __int8)(i + 1);
    if ( *((unsigned __int8 *)*this + 12) <= i )
      break;
    v56 = *((unsigned __int16 *)v58 + 7);
    if ( *((_WORD *)*this + 8 * v59 + 15) == 6 )
      v57 = v56 & ~(8 << i);
    else
      v57 = v56 | (8 << i);
    *((_WORD *)v58 + 7) = v57;
  }
  *((_DWORD *)v58 + 2) = v94;
  if ( v93 )
    glitch::IReferenceCounted::drop(v93);
  std::vector<glitch::io::SStreamItrLoader>::~vector((void **)&v86);
  std::vector<glitch::io::SVertexStreamHeader>::~vector((int)&v89);
  return this;
}


// ===== 6b7c1c glitch::io::loadMB(glitch::io::IReadFile *,bool,glitch::video::IVideoDriver *) =====
glitch::io *__fastcall glitch::io::loadMB(
        glitch::io *this,
        glitch::io::IReadFile *a2,
        int a3,
        glitch::video::IVideoDriver *a4)
{
  _DWORD *v8; // r0
  char v9; // r1
  glitch::video::CVertexStreams *v10; // r3
  glitch::IReferenceCounted *v11; // r3
  __int16 v12; // r3
  glitch::video::CVertexStreams *v13; // r4
  glitch::IReferenceCounted *v16[5]; // [sp+0h] [bp-24h] BYREF
  __int16 v17; // [sp+14h] [bp-10h]
  __int16 v18; // [sp+16h] [bp-Eh]
  glitch::video::CVertexStreams *v19; // [sp+18h] [bp-Ch] BYREF
  _BYTE v20[5]; // [sp+1Fh] [bp-5h] BYREF

  (*(void (__fastcall **)(glitch::io::IReadFile *, _BYTE *, int))(*(_DWORD *)a2 + 12))(a2, v20, 1);
  glitch::io::loadVS(&v19, a2, a3, a4);
  glitch::io::loadPS((glitch::io *)v16, a2, a3, a4);
  v8 = operator new(0x38u, 0);
  v9 = v20[0];
  v8[1] = 0;
  *v8 = off_988098;
  v8[4] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v10 = v19;
  v8[5] = v19;
  if ( v10 )
    ++*(_DWORD *)v10;
  v11 = v16[0];
  v8[6] = v16[0];
  if ( v11 )
    ++*((_DWORD *)v11 + 1);
  v8[7] = v16[1];
  v8[8] = v16[2];
  v8[9] = v16[3];
  v8[10] = v16[4];
  *((_WORD *)v8 + 22) = v17;
  v12 = v18;
  *((_BYTE *)v8 + 52) = v9;
  *((_WORD *)v8 + 23) = v12;
  v8[12] = 0;
  *(_DWORD *)this = v8;
  ++v8[1];
  if ( v16[0] )
    glitch::IReferenceCounted::drop(v16[0]);
  v13 = v19;
  if ( v19 )
  {
    if ( (*(_DWORD *)v19)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v13);
      LC_API_FREE_0(v13);
    }
  }
  return this;
}


// ===== 6b7d84 glitch::io::save(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::io::IWriteFile *,bool) =====
int __fastcall glitch::io::save(_DWORD *a1, glitch::io::IWriteFile *a2, int a3)
{
  int v3; // r3
  size_t v4; // r8
  _DWORD *v5; // r7
  glitch::io::IWriteFile *v6; // r4
  int v7; // r5
  int v8; // r6
  unsigned int v9; // r4
  size_t *v10; // r3
  char *v11; // r4
  __int16 v12; // r7
  __int16 v13; // r1
  int v14; // r5
  __int16 v15; // r10
  int v16; // r2
  int v17; // r1
  int v18; // r3
  unsigned int v19; // r6
  size_t *v20; // r3
  size_t *v21; // r2
  int v22; // r3
  size_t *v23; // r2
  size_t *i; // r6
  int v25; // r2
  int v26; // r3
  __int16 v27; // r2
  int v28; // r3
  __int16 v29; // r2
  int v30; // r3
  int v31; // r3
  char v32; // r0
  int v33; // r3
  char v34; // r1
  int v35; // r0
  int *v36; // r1
  int v37; // r9
  _DWORD *v38; // r3
  int v39; // r2
  int v40; // r3
  int v41; // r9
  int v42; // r6
  int v43; // r8
  int v44; // r2
  int v45; // r3
  int v46; // r1
  int v47; // r3
  unsigned __int8 v48; // r5
  int v49; // r2
  int v50; // r3
  int v51; // r1
  int v52; // r3
  int v53; // r3
  unsigned int v54; // r2
  int v55; // r7
  char *v56; // r3
  unsigned int v57; // r10
  char *v58; // r6
  int v59; // r2
  int v60; // r1
  unsigned int v61; // r8
  unsigned int v62; // r2
  unsigned int v64; // r2
  unsigned int v65; // r3
  char *v66; // r0
  char *v67; // r12
  int v68; // r10
  int v69; // r4
  int v70; // r5
  char *v71; // r7
  char *v72; // r12
  int v73; // r1
  int v74; // r2
  int v75; // r3
  int v76; // r12
  int v77; // r0
  int v78; // r1
  int v79; // r2
  char *v80; // r4
  _DWORD *v81; // r3
  int v82; // r2
  __int16 v83; // [sp+8h] [bp-D4h]
  char *v87; // [sp+2Ch] [bp-B0h]
  int v88; // [sp+38h] [bp-A4h]
  __int16 v89; // [sp+40h] [bp-9Ch]
  __int16 v90; // [sp+44h] [bp-98h]
  int v91; // [sp+48h] [bp-94h]
  int v92; // [sp+4Ch] [bp-90h]
  int v93; // [sp+50h] [bp-8Ch]
  int v94; // [sp+54h] [bp-88h]
  int v95; // [sp+5Ch] [bp-80h]
  int v96; // [sp+5Ch] [bp-80h]
  _DWORD v97[3]; // [sp+68h] [bp-74h] BYREF
  _DWORD v98[3]; // [sp+74h] [bp-68h] BYREF
  _DWORD v99[3]; // [sp+80h] [bp-5Ch] BYREF
  _DWORD v100[3]; // [sp+8Ch] [bp-50h] BYREF
  int v101; // [sp+98h] [bp-44h] BYREF
  int v102; // [sp+9Ch] [bp-40h]
  int v103; // [sp+A0h] [bp-3Ch]
  size_t v104; // [sp+A4h] [bp-38h] BYREF
  size_t v105; // [sp+A8h] [bp-34h]
  size_t v106; // [sp+ACh] [bp-30h]
  void *__p; // [sp+B0h] [bp-2Ch] BYREF
  char *v108; // [sp+B4h] [bp-28h]
  char *v109; // [sp+B8h] [bp-24h] BYREF
  size_t *v110; // [sp+BCh] [bp-20h] BYREF
  size_t *v111; // [sp+C0h] [bp-1Ch]
  size_t *v112; // [sp+C4h] [bp-18h]
  size_t v113; // [sp+C8h] [bp-14h] BYREF
  unsigned int v114; // [sp+CCh] [bp-10h] BYREF
  int v115; // [sp+D0h] [bp-Ch] BYREF
  __int16 v116; // [sp+D6h] [bp-6h] BYREF

  v3 = *a1;
  v4 = 0;
  v110 = nullptr;
  v111 = nullptr;
  v112 = nullptr;
  __p = nullptr;
  v108 = nullptr;
  v109 = nullptr;
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ( *(_DWORD *)(v3 + 16) != v3 + 20 )
  {
    v8 = v3 + 36;
    do
    {
      if ( *(_DWORD *)(v8 - 16) )
      {
        v9 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v8 - 6)];
        v104 = (v9 - v4 % v9) % v9 + v4;
        v105 = *(_DWORD *)(v8 - 8);
        v10 = v111;
        v4 = v104 + *(unsigned __int16 *)(v8 - 4) * v9;
        LOWORD(v106) = *(_WORD *)(v8 - 4);
        if ( v111 == v112 )
        {
          std::vector<glitch::io::SVertexStreamHeader>::_M_insert_overflow_aux((void **)&v110, (int)v111, &v104);
        }
        else
        {
          *v111 = v104;
          v10[1] = v105;
          v10[2] = v106;
          v111 += 3;
        }
        v11 = v108;
        v12 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v8 - 6)];
        v13 = *(_WORD *)(v8 - 2);
        v83 = v13;
        v14 = *(_DWORD *)(*(_DWORD *)(v8 - 16) + 8) + *(_DWORD *)(v8 - 12);
        v15 = *(_WORD *)(v8 - 4);
        if ( v108 == v109 )
        {
          v64 = (v108 - (_BYTE *)__p) >> 5;
          if ( v64 )
            v65 = 2 * v64;
          else
            v65 = 1;
          if ( v65 > 0x7FFFFFF || v64 > v65 )
            v65 = 0x7FFFFFF;
          v113 = v65;
          v66 = (char *)std::allocator<glitch::io::SStreamItrWriter>::_M_allocate((int)&v109, v65, &v113);
          v87 = v66;
          v88 = (v11 - (_BYTE *)__p) >> 5;
          if ( v88 > 0 )
          {
            v89 = v15;
            v90 = v12;
            v68 = v14;
            v69 = 0;
            v70 = v88;
            v71 = (char *)__p;
            do
            {
              v72 = &v87[v69];
              v73 = *(_DWORD *)&v71[v69 + 4];
              v74 = *(_DWORD *)&v71[v69 + 8];
              v75 = *(_DWORD *)&v71[v69 + 12];
              *(_DWORD *)v72 = *(_DWORD *)&v71[v69];
              *((_DWORD *)v72 + 1) = v73;
              *((_DWORD *)v72 + 2) = v74;
              *((_DWORD *)v72 + 3) = v75;
              v76 = (int)&v87[v69 + 16];
              --v70;
              v77 = *(_DWORD *)&v71[v69 + 16];
              v78 = *(_DWORD *)&v71[v69 + 20];
              v79 = *(_DWORD *)&v71[v69 + 24];
              v69 += 32;
              *(_WORD *)(v76 + 8) = v79;
              *(_DWORD *)v76 = v77;
              *(_DWORD *)(v76 + 4) = v78;
            }
            while ( v70 );
            v14 = v68;
            v12 = v90;
            v15 = v89;
            v67 = &v87[32 * v88];
          }
          else
          {
            v67 = v66;
          }
          HIWORD(v96) = v12;
          LOWORD(v96) = v15;
          *(_DWORD *)v67 = v91;
          *((_DWORD *)v67 + 1) = v92;
          *((_DWORD *)v67 + 2) = v93;
          *((_DWORD *)v67 + 3) = v94;
          *((_DWORD *)v67 + 4) = v14;
          *((_DWORD *)v67 + 5) = v96;
          *((_WORD *)v67 + 12) = v83;
          v80 = v67 + 32;
          if ( __p )
          {
            if ( ((v109 - (_BYTE *)__p) & 0xFFFFFFE0) > 0x80 )
              LC_API_FREE_0(__p);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, (v109 - (_BYTE *)__p) & 0xFFFFFFE0);
          }
          v3 = *a1;
          __p = v87;
          v108 = v80;
          v109 = &v87[32 * v113];
        }
        else
        {
          HIWORD(v95) = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v8 - 6)];
          LOWORD(v95) = *(_WORD *)(v8 - 4);
          *(_DWORD *)v108 = v91;
          *((_DWORD *)v11 + 1) = v92;
          *((_DWORD *)v11 + 2) = v93;
          *((_DWORD *)v11 + 3) = v94;
          *((_DWORD *)v11 + 4) = v14;
          *((_DWORD *)v11 + 5) = v95;
          *((_WORD *)v11 + 12) = v13;
          v3 = *a1;
          v108 += 32;
        }
      }
      v16 = *(_DWORD *)(v3 + 16);
      v17 = v8;
      v8 += 16;
    }
    while ( v16 != v17 );
    v18 = v3 + 20;
    v5 = a1;
    v6 = a2;
    v7 = a3;
    if ( v16 != v18 )
    {
      while ( !*(_DWORD *)v18 )
      {
        v18 += 16;
        if ( v18 == v16 )
          goto LABEL_12;
      }
      v19 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v18 + 10)];
      v4 += (v19 - v4 % v19) % v19;
    }
  }
LABEL_12:
  v20 = v110;
  v21 = v110;
  if ( v110 != v111 )
  {
    do
    {
      *((_WORD *)v20 + 5) = v4;
      v20 += 3;
    }
    while ( v20 != v111 );
    v21 = v110;
  }
  v115 = -1431655765 * (v20 - v21);
  if ( v7 )
  {
    LOBYTE(v104) = HIBYTE(v115);
    BYTE1(v104) = BYTE2(v115);
    BYTE2(v104) = BYTE1(v115);
    HIBYTE(v104) = v115;
    v22 = *(_DWORD *)v6;
    v115 = v104;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(v22 + 12))(v6, &v115, 4);
    v23 = v110;
    if ( v110 == v111 )
    {
      i = v110;
      goto LABEL_22;
    }
    for ( i = v110 + 3; ; i += 3 )
    {
      v25 = *(i - 3);
      v26 = *(_DWORD *)v6;
      LOBYTE(v104) = HIBYTE(v25);
      BYTE2(v104) = BYTE1(v25);
      HIBYTE(v104) = v25;
      BYTE1(v104) = BYTE2(v25);
      v113 = v104;
      (*(void (__fastcall **)(glitch::io::IWriteFile *, size_t *, int))(v26 + 12))(v6, &v113, 4);
      v27 = *((_WORD *)i - 4);
      v28 = *(_DWORD *)v6;
      LOBYTE(v104) = HIBYTE(v27);
      BYTE1(v104) = v27;
      v116 = v104;
      (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(v28 + 12))(v6, &v116, 2);
      v29 = *((_WORD *)i - 3);
      v30 = *(_DWORD *)v6;
      LOBYTE(v104) = HIBYTE(v29);
      BYTE1(v104) = v29;
      v116 = v104;
      (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(v30 + 12))(v6, &v116, 2);
      v31 = *(_DWORD *)v6;
      v32 = HIBYTE(*((_WORD *)i - 2));
      BYTE1(v104) = *((_WORD *)i - 2);
      LOBYTE(v104) = v32;
      v116 = v104;
      (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(v31 + 12))(v6, &v116, 2);
      v33 = *(_DWORD *)v6;
      v34 = HIBYTE(*((_WORD *)i - 1));
      BYTE1(v104) = *((_WORD *)i - 1);
      LOBYTE(v104) = v34;
      v116 = v104;
      (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(v33 + 12))(v6, &v116, 2);
      if ( i == v111 )
        break;
    }
    goto LABEL_21;
  }
  (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v115, 4);
  v23 = v110;
  i = v110;
  if ( v111 != v110 )
  {
    do
    {
      (*(void (__fastcall **)(glitch::io::IWriteFile *, size_t *, int))(*(_DWORD *)v6 + 12))(v6, i, 12);
      i += 3;
    }
    while ( i != v111 );
LABEL_21:
    v23 = v110;
  }
LABEL_22:
  v35 = *v5;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v36 = *(int **)(v35 + 16);
  v101 = *v36;
  v102 = v36[1];
  v37 = 4 * (i - v23);
  v103 = v36[2];
  if ( v7 )
  {
    glitch::os::byteswap<float>(v100, &v101);
    v101 = v100[0];
    v102 = v100[1];
    v103 = v100[2];
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v101, 12);
    v81 = *(_DWORD **)(*v5 + 16);
    v82 = v81[3];
    v81 += 3;
    v101 = v82;
    v102 = v81[1];
    v103 = v81[2];
    glitch::os::byteswap<float>(v99, &v101);
    v101 = v99[0];
    v102 = v99[1];
    v103 = v99[2];
  }
  else
  {
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v101, 12);
    v38 = *(_DWORD **)(*v5 + 16);
    v39 = v38[3];
    v38 += 3;
    v101 = v39;
    v102 = v38[1];
    v103 = v38[2];
  }
  (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v101, 12);
  v40 = *v5;
  v41 = v37 + 28;
  if ( *(_BYTE *)(*v5 + 12) )
  {
    v42 = 0;
    v43 = v7;
    do
    {
      v48 = v42 + 1;
      v49 = *(_DWORD *)(v40 + 16);
      v50 = 24 * (v42 + 1);
      v51 = *(_DWORD *)(v49 + v50);
      v52 = v49 + v50;
      v41 += 24;
      v101 = v51;
      v102 = *(_DWORD *)(v52 + 4);
      v103 = *(_DWORD *)(v52 + 8);
      if ( v43 )
      {
        glitch::os::byteswap<float>(v98, &v101);
        v101 = v98[0];
        v102 = v98[1];
        v103 = v98[2];
      }
      (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v101, 12);
      v44 = *(_DWORD *)(*v5 + 16);
      v45 = 24 * v42 + 36;
      v46 = *(_DWORD *)(v44 + v45);
      v47 = v44 + v45;
      v42 = v48;
      v101 = v46;
      v102 = *(_DWORD *)(v47 + 4);
      v103 = *(_DWORD *)(v47 + 8);
      if ( v43 )
      {
        glitch::os::byteswap<float>(v97, &v101);
        v101 = v97[0];
        v102 = v97[1];
        v103 = v97[2];
      }
      (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)v6 + 12))(v6, &v101, 12);
      v40 = *v5;
    }
    while ( *(unsigned __int8 *)(*v5 + 12) > (unsigned int)v48 );
    v7 = v43;
  }
  v114 = *(_DWORD *)(v40 + 8);
  if ( v7 )
  {
    LOBYTE(v104) = HIBYTE(v114);
    BYTE1(v104) = BYTE2(v114);
    BYTE2(v104) = BYTE1(v114);
    HIBYTE(v104) = v114;
    v53 = *(_DWORD *)v6;
    v113 = v104;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, size_t *, int))(v53 + 12))(v6, &v113, 4);
  }
  else
  {
    (*(void (__fastcall **)(glitch::io::IWriteFile *, unsigned int *, int))(*(_DWORD *)v6 + 12))(v6, &v114, 4);
  }
  v54 = v114;
  if ( v114 )
  {
    v56 = v108;
    v57 = 0;
    v55 = 0;
    do
    {
      v58 = (char *)__p;
      if ( __p != v56 )
      {
        do
        {
          v61 = ((unsigned int)*((unsigned __int16 *)v58 + 11) - v55 % *((unsigned __int16 *)v58 + 11))
              % *((unsigned __int16 *)v58 + 11);
          if ( v61 )
            (*(void (__fastcall **)(glitch::io::IWriteFile *, void *, unsigned int))(*(_DWORD *)v6 + 12))(
              v6,
              &glitch::io::save(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::io::IWriteFile *,bool)::paddingData,
              v61);
          glitch::io::SStreamItrWriter::writeAndAdvance((int)v58, v6, v7);
          v59 = *((unsigned __int16 *)v58 + 10);
          v60 = *((unsigned __int16 *)v58 + 11);
          v56 = v108;
          v58 += 32;
          v55 += v60 * v59 + v61;
        }
        while ( v58 != v108 );
        v54 = v114;
      }
      ++v57;
    }
    while ( v54 > v57 );
  }
  else
  {
    v55 = 0;
  }
  v62 = ((unsigned int)*((unsigned __int16 *)v110 + 5) - v55 % *((unsigned __int16 *)v110 + 5))
      % *((unsigned __int16 *)v110 + 5);
  if ( v62 )
    (*(void (__fastcall **)(glitch::io::IWriteFile *, void *, unsigned int))(*(_DWORD *)v6 + 12))(
      v6,
      &glitch::io::save(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::io::IWriteFile *,bool)::paddingData,
      v62);
  std::vector<glitch::io::SStreamItrWriter>::~vector((int)&__p);
  std::vector<glitch::io::SVertexStreamHeader>::~vector((int)&v110);
  return v41 + 4;
}


// ===== 6b875c glitch::io::save(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&,glitch::io::IWriteFile *,bool,uint *,uint *) =====
int __fastcall glitch::io::save(int a1, glitch::io::IWriteFile *a2, glitch::io::IWriteFile *a3, _DWORD *a4, int *a5)
{
  int v7; // r12
  int v10; // r0
  int v11; // r3
  glitch::video::CVertexStreams *v12; // r9
  int v13; // r10
  bool v14; // zf
  int result; // r0
  glitch::video::CVertexStreams *v16; // [sp+0h] [bp-8h] BYREF
  char v17; // [sp+7h] [bp-1h] BYREF

  v7 = *(_DWORD *)a2;
  v17 = *(_BYTE *)(*(_DWORD *)a1 + 52);
  (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(v7 + 12))(a2, &v17, 1);
  v16 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a1 + 20);
  if ( v16 )
    ++*(_DWORD *)v16;
  v10 = glitch::io::save(&v16, a2, (int)a3);
  v12 = v16;
  v13 = v10;
  if ( v16 )
  {
    v11 = *(_DWORD *)v16 - 1;
    v14 = *(_DWORD *)v16 == 1;
    *(_DWORD *)v16 = v11;
    if ( v14 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v12);
      LC_API_FREE_0(v12);
    }
  }
  result = glitch::io::save((glitch::io *)(*(_DWORD *)a1 + 24), a2, a3, v11);
  if ( a4 )
    *a4 = v13 + 1;
  if ( a5 )
    *a5 = result;
  return result;
}


// ===== 6b8834 glitch::scene::CAppendMeshBuffer::adjustStride(ushort) =====
_DWORD *__fastcall glitch::scene::CAppendMeshBuffer::adjustStride(_DWORD *this, int a2)
{
  int v2; // r3
  unsigned int v3; // r2
  int v4; // r12

  v2 = *(this + 25);
  if ( *(this + 26) != v2 )
  {
    v3 = 0;
    do
    {
      v4 = *(unsigned __int8 *)(v2 + v3++);
      *(_WORD *)(*(this + 5) + 16 * v4 + 34) = a2;
      v2 = *(this + 25);
    }
    while ( v3 < *(this + 26) - v2 );
  }
  *(this + 18) = a2;
  return this;
}


// ===== 6b8878 glitch::scene::CAppendMeshBuffer::clear(void) =====
int __fastcall glitch::scene::CAppendMeshBuffer::clear(int this)
{
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 60) = 0;
  return this;
}


// ===== 6b8888 `global constructor keyed to'.._source_glitch_scene_CAppendMeshBuffer.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CAppendMeshBuffer.cpp()
{
  dword_9F7B1C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B18 = 1056964608;
}


// ===== 6b88a8 glitch::scene::CMeshBuffer::CMeshBuffer(uint,glitch::video::CPrimitiveStream const&,bool) [clone] =====
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
  *((_DWORD *)this + 12) = 0;
  *((_WORD *)this + 23) = v8;
  *((_BYTE *)this + 52) = 1;
  return result;
}


// ===== 6b8950 glitch::scene::CAppendMeshBuffer::configureStream(uchar,int,glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE,ushort) =====
void __fastcall glitch::scene::CAppendMeshBuffer::configureStream(int a1, int a2, int a3, int a4, __int16 a5)
{
  glitch::IReferenceCounted *v5; // r4
  __int16 v6; // r11
  int v7; // r7
  int v8; // r10
  int v10; // r3
  glitch::IReferenceCounted *v11; // r0
  char v12; // r6
  int v13; // r8
  _BYTE *v14; // r10
  size_t v15; // r3
  size_t v16; // r7
  char *v17; // r0
  _BYTE *v18; // r1
  char *v19; // r8
  size_t v20; // r10
  char *v21; // r10

  v5 = *(glitch::IReferenceCounted **)(a1 + 88);
  v6 = a4;
  if ( v5 )
    a4 = *((_DWORD *)v5 + 1);
  v7 = a3;
  if ( v5 )
  {
    *((_DWORD *)v5 + 1) = a4 + 1;
    a3 = *((_DWORD *)v5 + 1);
  }
  v8 = *(_DWORD *)(a1 + 20);
  if ( v5 )
    ++a3;
  v10 = v8 + 20;
  if ( v5 )
    *((_DWORD *)v5 + 1) = a3;
  v11 = *(glitch::IReferenceCounted **)(v10 + 16 * a2);
  v12 = a2;
  v13 = v10 + 16 * a2;
  *(_DWORD *)v13 = v5;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  *(_WORD *)(v13 + 14) = 0;
  *(_DWORD *)(v13 + 4) = v7;
  *(_WORD *)(v13 + 10) = v6;
  *(_WORD *)(v13 + 12) = a5;
  glitch::video::CVertexStreams::updateHomogeneityInternal(v8, 0);
  v14 = *(_BYTE **)(a1 + 104);
  if ( v14 == *(_BYTE **)(a1 + 108) )
  {
    v15 = (size_t)&v14[-*(_DWORD *)(a1 + 100)];
    if ( v15 == -1 )
    {
      v16 = -1;
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
    }
    else
    {
      if ( v15 )
        v16 = 2 * v15;
      else
        v16 = 1;
      if ( v15 > v16 )
        v16 = -1;
    }
    v17 = (char *)GlitchAlloc(v16, 0);
    v18 = *(_BYTE **)(a1 + 100);
    v19 = v17;
    v20 = v14 - v18;
    if ( v20 )
      v21 = (char *)memmove(v17, v18, v20) + v20;
    else
      v21 = v17;
    *v21 = v12;
    GlitchFree(*(void **)(a1 + 100));
    *(_DWORD *)(a1 + 108) = &v19[v16];
    *(_DWORD *)(a1 + 104) = v21 + 1;
    *(_DWORD *)(a1 + 100) = v19;
  }
  else
  {
    *v14 = v12;
    ++*(_DWORD *)(a1 + 104);
  }
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
}


// ===== 6b8aa0 glitch::scene::CAppendMeshBuffer::endAppend(void) =====
_DWORD *__fastcall glitch::scene::CAppendMeshBuffer::endAppend(_DWORD *this)
{
  _DWORD *v1; // r4
  _BYTE *v2; // r5
  char v3; // r3
  _BYTE *v4; // r5
  char v5; // r3
  char v6; // r2

  v1 = this;
  if ( *(this + 20) )
  {
    v2 = (_BYTE *)*(this + 22);
    v3 = v2[19];
    if ( (v3 & 0x1Fu) <= 1 )
    {
      if ( (v2[18] & 0x20) != 0 )
        this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 24))(*(this + 22));
      v2[19] = 0;
      v4 = (_BYTE *)v1[23];
      v5 = v4[19];
      v6 = v5 & 0x1F;
      if ( (v5 & 0x1Fu) > 1 )
        goto LABEL_4;
    }
    else
    {
      v2[19] = ((v3 & 0x1F) - 1) | v3 & 0xE0;
      v4 = (_BYTE *)*(this + 23);
      v5 = v4[19];
      v6 = v5 & 0x1F;
      if ( (v5 & 0x1Fu) > 1 )
      {
LABEL_4:
        v4[19] = (v6 - 1) | v5 & 0xE0;
LABEL_5:
        v1[21] = 0;
        v1[20] = 0;
        return this;
      }
    }
    if ( (v4[18] & 0x20) != 0 )
      this = (_DWORD *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v4 + 24))(v4);
    v4[19] = 0;
    goto LABEL_5;
  }
  return this;
}


// ===== 6b8b74 glitch::scene::CAppendMeshBuffer::resize(uint,uint) =====
void __fastcall glitch::scene::CAppendMeshBuffer::resize(
        glitch::video::IBuffer **this,
        unsigned int a2,
        unsigned int a3)
{
  glitch::scene::CAppendMeshBuffer::endAppend(this);
  glitch::video::IBuffer::reset(*(this + 22), a2, nullptr, 1);
  glitch::video::IBuffer::reset(*(this + 23), a3, nullptr, 1);
}


// ===== 6b8bb4 glitch::scene::CAppendMeshBuffer::reset(void) =====
int __fastcall glitch::scene::CAppendMeshBuffer::reset(glitch::scene::CAppendMeshBuffer *this)
{
  int result; // r0
  int v3; // r2
  int v4; // r3
  unsigned int v5; // r4
  int v6; // r7
  glitch::IReferenceCounted *v7; // r0

  glitch::scene::CAppendMeshBuffer::endAppend(this);
  result = glitch::scene::CAppendMeshBuffer::clear((int)this);
  v3 = *((_DWORD *)this + 26);
  v4 = *((_DWORD *)this + 25);
  if ( v4 != v3 )
  {
    v5 = 0;
    do
    {
      v6 = *((_DWORD *)this + 5);
      v7 = *(glitch::IReferenceCounted **)(v6 + 20 + 16 * v5);
      *(_DWORD *)(v6 + 20 + 16 * v5++) = 0;
      if ( v7 )
        glitch::IReferenceCounted::drop(v7);
      result = glitch::video::CVertexStreams::updateHomogeneityInternal(v6, 0);
      v3 = *((_DWORD *)this + 26);
      v4 = *((_DWORD *)this + 25);
    }
    while ( v5 < v3 - v4 );
  }
  if ( v3 != v4 )
    *((_DWORD *)this + 26) = v4;
  return result;
}


// ===== 6b8c2c glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer() =====
void __fastcall glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer(glitch::scene::CAppendMeshBuffer *this)
{
  void *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  *(_DWORD *)this = off_987880;
  glitch::scene::CAppendMeshBuffer::endAppend(this);
  v2 = *((void **)this + 25);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((glitch::IReferenceCounted **)this + 23);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 22);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::scene::CMeshBuffer::~CMeshBuffer(this);
}


// ===== 6b8c98 glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer() =====
void __fastcall glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer(glitch::scene::CAppendMeshBuffer *this)
{
  glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 6b8cb4 glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(uint,uint,glitch::video::IVideoDriver *,glitch::video::E_BUFFER_USAGE,uint) =====
int __fastcall glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(
        int a1,
        size_t a2,
        size_t a3,
        int a4,
        int a5,
        unsigned int a6)
{
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  _BYTE *v14; // r3
  int v15; // r1
  int v16; // r3
  int v17; // r1
  glitch::IReferenceCounted *v18; // r0
  void *v20; // r0
  _BYTE *v21; // r3
  void *v22; // r0
  glitch::IReferenceCounted *v23[5]; // [sp+10h] [bp-24h] BYREF
  __int16 v24; // [sp+24h] [bp-10h]
  __int16 v25; // [sp+26h] [bp-Eh]
  glitch::IReferenceCounted *v26; // [sp+28h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v27; // [sp+2Ch] [bp-8h] BYREF

  v24 = 255;
  memset(v23, 0, sizeof(v23));
  v25 = 6;
  glitch::scene::CMeshBuffer::CMeshBuffer(
    (glitch::scene::CMeshBuffer *)a1,
    a6,
    (const glitch::video::CPrimitiveStream *)v23,
    6);
  if ( v23[0] )
    glitch::IReferenceCounted::drop(v23[0]);
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 76) = 2;
  *(_DWORD *)a1 = off_987880;
  *(_DWORD *)(a1 + 72) = 1;
  *(_DWORD *)(a1 + 56) = a2;
  *(_DWORD *)(a1 + 64) = a3;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a4 + 120))(&v27, a4);
  v10 = v27;
  if ( v27 )
    ++*((_DWORD *)v27 + 1);
  v11 = *(glitch::IReferenceCounted **)(a1 + 88);
  *(_DWORD *)(a1 + 88) = v10;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  if ( v27 )
    glitch::IReferenceCounted::drop(v27);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a4 + 120))(&v26, a4);
  v12 = v26;
  if ( v26 )
    ++*((_DWORD *)v26 + 1);
  v13 = *(glitch::IReferenceCounted **)(a1 + 92);
  *(_DWORD *)(a1 + 92) = v12;
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  if ( v26 )
    glitch::IReferenceCounted::drop(v26);
  v14 = *(_BYTE **)(a1 + 88);
  v15 = v14[18] & 8;
  if ( (v14[18] & 8) == 0 || (v14[18] & 2) != 0 )
  {
    if ( v14[17] != 4 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v14 + 12))(*(_DWORD *)(a1 + 88), 0);
      v15 = *(_BYTE *)(*(_DWORD *)(a1 + 88) + 18) & 8;
    }
    if ( !v15 )
    {
      v20 = operator new[](a2, 0);
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 88), a2, v20, 1);
      v21 = *(_BYTE **)(a1 + 88);
      if ( ((v21[18] & 8) == 0 || (v21[18] & 2) != 0) && v21[17] != 4 )
        (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v21 + 12))(*(_DWORD *)(a1 + 88), 0);
      *(_BYTE *)(a1 + 96) = 1;
    }
  }
  v16 = *(_DWORD *)(a1 + 92);
  v17 = *(_BYTE *)(v16 + 18) & 8;
  if ( (*(_BYTE *)(v16 + 18) & 8) == 0 || (*(_BYTE *)(v16 + 18) & 2) != 0 )
  {
    if ( *(_BYTE *)(v16 + 17) != 4 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v16 + 12))(*(_DWORD *)(a1 + 92), 0);
      v16 = *(_DWORD *)(a1 + 92);
      v17 = *(_BYTE *)(v16 + 18) & 8;
    }
    if ( !v17 )
    {
      v22 = operator new[](a3, 0);
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 92), a3, v22, 1);
      v16 = *(_DWORD *)(a1 + 92);
      if ( ((*(_BYTE *)(v16 + 18) & 8) == 0 || (*(_BYTE *)(v16 + 18) & 2) != 0) && *(_BYTE *)(v16 + 17) != 4 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v16 + 12))(*(_DWORD *)(a1 + 92), 0);
        v16 = *(_DWORD *)(a1 + 92);
      }
      *(_BYTE *)(a1 + 96) = 1;
    }
  }
  if ( v16 )
    ++*(_DWORD *)(v16 + 4);
  v18 = *(glitch::IReferenceCounted **)(a1 + 24);
  *(_DWORD *)(a1 + 24) = v16;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  *(_DWORD *)(a1 + 40) = 0;
  *(_WORD *)(a1 + 44) = 1;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  return a1;
}


// ===== 6b8fe0 glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(uint,uint,glitch::video::IVideoDriver *,glitch::video::E_BUFFER_USAGE,uint) =====
int __fastcall glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(
        int a1,
        size_t a2,
        size_t a3,
        int a4,
        int a5,
        unsigned int a6)
{
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  _BYTE *v14; // r3
  int v15; // r1
  int v16; // r3
  int v17; // r1
  glitch::IReferenceCounted *v18; // r0
  void *v20; // r0
  _BYTE *v21; // r3
  void *v22; // r0
  glitch::IReferenceCounted *v23[5]; // [sp+10h] [bp-24h] BYREF
  __int16 v24; // [sp+24h] [bp-10h]
  __int16 v25; // [sp+26h] [bp-Eh]
  glitch::IReferenceCounted *v26; // [sp+28h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v27; // [sp+2Ch] [bp-8h] BYREF

  v24 = 255;
  memset(v23, 0, sizeof(v23));
  v25 = 6;
  glitch::scene::CMeshBuffer::CMeshBuffer(
    (glitch::scene::CMeshBuffer *)a1,
    a6,
    (const glitch::video::CPrimitiveStream *)v23,
    6);
  if ( v23[0] )
    glitch::IReferenceCounted::drop(v23[0]);
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 76) = 2;
  *(_DWORD *)a1 = off_987880;
  *(_DWORD *)(a1 + 72) = 1;
  *(_DWORD *)(a1 + 56) = a2;
  *(_DWORD *)(a1 + 64) = a3;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a4 + 120))(&v27, a4);
  v10 = v27;
  if ( v27 )
    ++*((_DWORD *)v27 + 1);
  v11 = *(glitch::IReferenceCounted **)(a1 + 88);
  *(_DWORD *)(a1 + 88) = v10;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  if ( v27 )
    glitch::IReferenceCounted::drop(v27);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a4 + 120))(&v26, a4);
  v12 = v26;
  if ( v26 )
    ++*((_DWORD *)v26 + 1);
  v13 = *(glitch::IReferenceCounted **)(a1 + 92);
  *(_DWORD *)(a1 + 92) = v12;
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  if ( v26 )
    glitch::IReferenceCounted::drop(v26);
  v14 = *(_BYTE **)(a1 + 88);
  v15 = v14[18] & 8;
  if ( (v14[18] & 8) == 0 || (v14[18] & 2) != 0 )
  {
    if ( v14[17] != 4 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v14 + 12))(*(_DWORD *)(a1 + 88), 0);
      v15 = *(_BYTE *)(*(_DWORD *)(a1 + 88) + 18) & 8;
    }
    if ( !v15 )
    {
      v20 = operator new[](a2, 0);
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 88), a2, v20, 1);
      v21 = *(_BYTE **)(a1 + 88);
      if ( ((v21[18] & 8) == 0 || (v21[18] & 2) != 0) && v21[17] != 4 )
        (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v21 + 12))(*(_DWORD *)(a1 + 88), 0);
      *(_BYTE *)(a1 + 96) = 1;
    }
  }
  v16 = *(_DWORD *)(a1 + 92);
  v17 = *(_BYTE *)(v16 + 18) & 8;
  if ( (*(_BYTE *)(v16 + 18) & 8) == 0 || (*(_BYTE *)(v16 + 18) & 2) != 0 )
  {
    if ( *(_BYTE *)(v16 + 17) != 4 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v16 + 12))(*(_DWORD *)(a1 + 92), 0);
      v16 = *(_DWORD *)(a1 + 92);
      v17 = *(_BYTE *)(v16 + 18) & 8;
    }
    if ( !v17 )
    {
      v22 = operator new[](a3, 0);
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 92), a3, v22, 1);
      v16 = *(_DWORD *)(a1 + 92);
      if ( ((*(_BYTE *)(v16 + 18) & 8) == 0 || (*(_BYTE *)(v16 + 18) & 2) != 0) && *(_BYTE *)(v16 + 17) != 4 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v16 + 12))(*(_DWORD *)(a1 + 92), 0);
        v16 = *(_DWORD *)(a1 + 92);
      }
      *(_BYTE *)(a1 + 96) = 1;
    }
  }
  if ( v16 )
    ++*(_DWORD *)(v16 + 4);
  v18 = *(glitch::IReferenceCounted **)(a1 + 24);
  *(_DWORD *)(a1 + 24) = v16;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  *(_DWORD *)(a1 + 40) = 0;
  *(_WORD *)(a1 + 44) = 1;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  return a1;
}


// ===== 6b930c glitch::scene::IMeshLoader::~IMeshLoader() =====
void __fastcall glitch::scene::IMeshLoader::~IMeshLoader(glitch::scene::IMeshLoader *this)
{
  ;
}


// ===== 6b9310 glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(glitch::scene::CSceneManager *,boost::intrusive_ptr<glitch::io::IFileSystem> const&) =====
_DWORD *__fastcall glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(_DWORD *result, int a2, int *a3)
{
  int v3; // r2

  result[1] = 1;
  *result = off_9878B8;
  result[2] = a2;
  v3 = *a3;
  result[3] = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  return result;
}


// ===== 6b9360 glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(glitch::scene::CSceneManager *,boost::intrusive_ptr<glitch::io::IFileSystem> const&) =====
_DWORD *__fastcall glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(_DWORD *result, int a2, int *a3)
{
  int v3; // r2

  result[1] = 1;
  *result = off_9878B8;
  result[2] = a2;
  v3 = *a3;
  result[3] = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  return result;
}


// ===== 6b93b0 glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader() =====
void __fastcall glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader(
        glitch::scene::CColladaBinaryFileLoader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_9878B8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 6b93f0 glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader() =====
void __fastcall glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader(
        glitch::scene::CColladaBinaryFileLoader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_9878B8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 6b9430 glitch::scene::CColladaBinaryFileLoader::createScene(glitch::io::IReadFile *) =====
int __fastcall glitch::scene::CColladaBinaryFileLoader::createScene(
        glitch::scene::CColladaBinaryFileLoader *this,
        glitch::io::IReadFile *a2)
{
  return 0;
}


// ===== 6b9438 `global constructor keyed to'.._source_glitch_scene_CColladaBinaryFileLoader.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CColladaBinaryFileLoader.cpp()
{
  dword_9F7B28 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B24 = 1056964608;
}


// ===== 6b9458 glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile *) =====
glitch::scene::CColladaBinaryFileLoader *__fastcall glitch::scene::CColladaBinaryFileLoader::createMesh(
        glitch::scene::CColladaBinaryFileLoader *this,
        glitch::io::IReadFile *a2,
        glitch::io::IReadFile *a3)
{
  glitch::collada::CResFile *v5; // r0
  int v6; // r3
  glitch::collada::CRootSceneNode *v7; // r7
  int v8; // r0
  glitch::IReferenceCounted *v10[3]; // [sp+8h] [bp-Ch] BYREF

  v5 = glitch::collada::CResFileManager::load(
         (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
         a3,
         0,
         0,
         0);
  v10[0] = v5;
  v10[1] = (glitch::IReferenceCounted *)&glitch::collada::CColladaDatabase::DefaultFactory;
  if ( v5 )
  {
    v6 = *((_DWORD *)v5 + 1);
    if ( v6 )
      *((_DWORD *)v5 + 1) = v6 + 1;
  }
  v7 = glitch::collada::CColladaDatabase::constructScene(
         (glitch::collada::CColladaDatabase *)v10,
         *(glitch::video::IVideoDriver **)(*((_DWORD *)a2 + 2) + 20));
  v8 = glitch::collada::CColladaDatabase::constructAnimator((glitch::collada::CColladaDatabase *)v10);
  (*(void (__fastcall **)(glitch::collada::CRootSceneNode *, int))(*(_DWORD *)v7 + 108))(v7, v8);
  (*(void (__fastcall **)(_DWORD, glitch::collada::CRootSceneNode *))(**(_DWORD **)(*((_DWORD *)a2 + 2) + 4) + 92))(
    *(_DWORD *)(*((_DWORD *)a2 + 2) + 4),
    v7);
  *(_DWORD *)this = 0;
  glitch::collada::CColladaDatabase::~CColladaDatabase(v10);
  return this;
}


// ===== 6b9538 glitch::scene::CColladaBinaryFileLoader::isALoadableFileExtension(char const*) =====
bool __fastcall glitch::scene::CColladaBinaryFileLoader::isALoadableFileExtension(
        glitch::scene::CColladaBinaryFileLoader *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".bdae") != nullptr;
}


// ===== 6b955c glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader() =====
void __fastcall glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader(
        glitch::scene::CColladaBinaryFileLoader *this)
{
  glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader(this);
  LC_API_FREE_0(this);
}


// ===== 6b9578 glitch::scene::IMeshLoader::~IMeshLoader() =====
void __fastcall glitch::scene::IMeshLoader::~IMeshLoader(glitch::scene::IMeshLoader *this)
{
  LC_API_FREE_0(this);
}


// ===== 6b958c glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory() =====
void __fastcall glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory(
        glitch::scene::ISceneNodeAnimatorFactory *this)
{
  ;
}


// ===== 6b9590 glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(glitch::scene::CSceneManager *,glitch::gui::ICursorControl *) =====
_DWORD *__fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(
        _DWORD *this,
        glitch::scene::CSceneManager *a2,
        glitch::gui::ICursorControl *a3)
{
  *(this + 1) = 1;
  *this = off_987908;
  *(this + 2) = a2;
  *(this + 3) = a3;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  return this;
}


// ===== 6b95dc glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(glitch::scene::CSceneManager *,glitch::gui::ICursorControl *) =====
_DWORD *__fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(
        _DWORD *this,
        glitch::scene::CSceneManager *a2,
        glitch::gui::ICursorControl *a3)
{
  *(this + 1) = 1;
  *this = off_987908;
  *(this + 2) = a2;
  *(this + 3) = a3;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  return this;
}


// ===== 6b9628 glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory() =====
void __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_987908;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 6b9668 glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory() =====
void __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_987908;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 6b96a8 glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreatableSceneNodeAnimatorTypeCount(void) =====
int __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreatableSceneNodeAnimatorTypeCount(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this)
{
  return 9;
}


// ===== 6b96b0 glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorType(uint) =====
int __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorType(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this,
        unsigned int a2)
{
  if ( a2 > 8 )
    return 10;
  else
    return a2;
}


// ===== 6b96c0 glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(uint) =====
char *__fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this,
        unsigned int a2)
{
  if ( a2 <= 8 )
    return glitch::scene::SceneNodeAnimatorTypeNames[a2];
  else
    return nullptr;
}


// ===== 6b96e0 glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE) =====
char *__fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(
        int a1,
        int a2)
{
  if ( a2 <= 8 )
    return glitch::scene::SceneNodeAnimatorTypeNames[a2];
  else
    return nullptr;
}


// ===== 6b9700 `global constructor keyed to'.._source_glitch_scene_CDefaultSceneNodeAnimatorFactory.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CDefaultSceneNodeAnimatorFactory.cpp()
{
  dword_9F7B34 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B30 = 1056964608;
}


// ===== 6b9720 glitch::scene::CDefaultSceneNodeAnimatorFactory::getTypeFromName(char const*) =====
int __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::getTypeFromName(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this,
        const char *a2)
{
  int v3; // r4
  const char *v4; // r1

  v3 = 0;
  v4 = "flyCircle";
  do
  {
    if ( !LC_API_STRCMP_0(a2, v4) )
      return v3;
    v4 = glitch::scene::SceneNodeAnimatorTypeNames[++v3];
  }
  while ( v4 );
  return 10;
}


// ===== 6b9778 glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(char const*,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this,
        const char *a2,
        glitch::scene::ISceneNode *a3)
{
  int (__fastcall *v5)(glitch::scene::CDefaultSceneNodeAnimatorFactory *, int, glitch::scene::ISceneNode *); // r5
  int TypeFromName; // r0

  v5 = *(int (__fastcall **)(glitch::scene::CDefaultSceneNodeAnimatorFactory *, int, glitch::scene::ISceneNode *))(*(_DWORD *)this + 12);
  TypeFromName = glitch::scene::CDefaultSceneNodeAnimatorFactory::getTypeFromName(this, a2);
  return v5(this, TypeFromName, a3);
}


// ===== 6b97a4 glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory() =====
void __fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory(
        glitch::scene::CDefaultSceneNodeAnimatorFactory *this)
{
  glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory(this);
  LC_API_FREE_0(this);
}


// ===== 6b97c0 glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory() =====
void __fastcall glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory(
        glitch::scene::ISceneNodeAnimatorFactory *this)
{
  LC_API_FREE_0(this);
}


// ===== 6b97d4 std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::vector3d<float>*,glitch::core::vector3d<float> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r6
  _DWORD *v9; // r0
  char *v10; // r3
  _DWORD *v11; // r8
  int v12; // r5
  _DWORD *v13; // r3
  int v14; // r1
  _DWORD *v15; // r2
  int v16; // r0
  _DWORD *v17; // r5
  char *v18; // r0

  v6 = -1431655765 * ((a1[1] - *a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0x15555555 && v6 <= v7 )
    v8 = 3 * v7;
  else
    v8 = -1;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = -1431655765 * ((a2 - *a1) >> 2);
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = v9;
    do
    {
      --v14;
      *v15 = *(_DWORD *)v10;
      v15[1] = *((_DWORD *)v10 + 1);
      v16 = *((_DWORD *)v10 + 2);
      v10 += 12;
      v15[2] = v16;
      v15 += 3;
    }
    while ( v14 );
    v13 = &v11[3 * v12];
  }
  else
  {
    v13 = v9;
  }
  v17 = v13 + 3;
  *v13 = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  v18 = (char *)a1[1];
  if ( v18 != (char *)*a1 )
    v18 += -12 * ((715827883 * ((unsigned int)&v18[-*a1 - 12] >> 2)) & 0x3FFFFFFF) - 12;
  GlitchFree(v18);
  a1[1] = v17;
  a1[2] = &v11[v8];
  *a1 = v11;
}


// ===== 6b9928 glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE,glitch::scene::ISceneNode *) =====
glitch::scene::CSceneNodeAnimatorDelete *__fastcall glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(
        glitch::scene::CSceneManager **a1,
        int a2,
        int a3)
{
  glitch::scene::CSceneNodeAnimatorDelete *v5; // r5
  bool v6; // zf
  unsigned int Time; // r6
  unsigned int v9; // r6
  _DWORD *v10; // r1
  unsigned int v11; // r7
  glitch::scene::CSceneNodeAnimatorRotation *v12; // r6
  unsigned int v13; // r7
  glitch::scene::CSceneNodeAnimatorDelete *v14; // r6
  unsigned int v15; // r6
  _BYTE v16[16]; // [sp+14h] [bp-98h] BYREF
  _DWORD v17[3]; // [sp+24h] [bp-88h] BYREF
  _DWORD v18[3]; // [sp+30h] [bp-7Ch] BYREF
  _DWORD v19[3]; // [sp+3Ch] [bp-70h] BYREF
  void *v20[3]; // [sp+48h] [bp-64h] BYREF
  int v21; // [sp+54h] [bp-58h] BYREF
  int v22; // [sp+58h] [bp-54h]
  int v23; // [sp+5Ch] [bp-50h]
  void *v24[3]; // [sp+60h] [bp-4Ch] BYREF
  void *p; // [sp+6Ch] [bp-40h] BYREF
  _DWORD *v26; // [sp+70h] [bp-3Ch]
  _DWORD *v27; // [sp+74h] [bp-38h]
  _DWORD v28[3]; // [sp+78h] [bp-34h] BYREF
  _DWORD v29[3]; // [sp+84h] [bp-28h] BYREF
  _DWORD v30[3]; // [sp+90h] [bp-1Ch] BYREF
  _DWORD v31[4]; // [sp+9Ch] [bp-10h] BYREF

  switch ( a2 )
  {
    case 0:
      Time = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      v30[1] = 1065353216;
      v30[2] = 0;
      memset(v31, 0, 12);
      v30[0] = 0;
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x50u, 0);
      glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(v5, Time, v31, 1092616192, 981668463, v30);
      goto LABEL_3;
    case 1:
      v28[2] = 1120403456;
      memset(v29, 0, sizeof(v29));
      v28[0] = 1120403456;
      v28[1] = 1120403456;
      v9 = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x4Cu, 0);
      glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(v5, v29, v28, 10000, 1, v9);
      goto LABEL_3;
    case 2:
      p = nullptr;
      v26 = nullptr;
      v27 = nullptr;
      memset(v24, 0, sizeof(v24));
      std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        &p,
        0,
        v24);
      v10 = v26;
      v21 = 1092616192;
      v22 = 1084227584;
      v23 = 1092616192;
      if ( v26 == v27 )
      {
        std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          &p,
          (int)v26,
          &v21);
      }
      else
      {
        *v26 = 1092616192;
        *(_DWORD *)&byte_4[(_DWORD)v10] = v22;
        *(_DWORD *)&byte_8[(_DWORD)v10] = v23;
        v26 += 3;
      }
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x2Cu, 0);
      glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(v5, 0, &p, 1065353216, 1056964608);
      if ( p )
        GlitchFree(p);
      goto LABEL_3;
    case 3:
      v11 = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      glitch::core::quaternion::set((glitch::core::quaternion *)v16, 0.3, 0.0, 0.0);
      v12 = (glitch::scene::CSceneNodeAnimatorRotation *)operator new(0x28u, 0);
      glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(
        v12,
        v11,
        (const glitch::core::quaternion *)v16);
      v5 = v12;
      goto LABEL_3;
    case 4:
      memset(v20, 0, sizeof(v20));
      v13 = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      v14 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x30u, 0);
      glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(v14, v20, 250, 1, v13);
      v5 = v14;
      std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v20);
      goto LABEL_3;
    case 5:
      v15 = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x1Cu, 0);
      glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(v5, a1[2], v15 + 5000);
      goto LABEL_3;
    case 6:
      v19[1] = 1114636288;
      v19[2] = 1106247680;
      v18[1] = -1027080192;
      v19[0] = 1106247680;
      v18[0] = 0;
      v18[2] = 0;
      memset(v17, 0, sizeof(v17));
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x84u, 0);
      glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(
        v5,
        a1[2],
        0,
        a3,
        v19,
        v18,
        v17,
        973279855);
      goto LABEL_3;
    case 7:
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x64u, 0);
      glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(
        v5,
        a1[3],
        1120403456,
        1140457472,
        0,
        0,
        0,
        0);
      goto LABEL_3;
    case 8:
      v5 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x80u, 0);
      glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(v5, a1[3], -1500.0, 200.0, 1500.0);
LABEL_3:
      v6 = v5 == nullptr;
      if ( v5 )
        v6 = a3 == 0;
      if ( !v6 )
        (*(void (__fastcall **)(int, glitch::scene::CSceneNodeAnimatorDelete *))(*(_DWORD *)a3 + 108))(a3, v5);
      break;
    default:
      v5 = nullptr;
      break;
  }
  return v5;
}


// ===== 6b9cec glitch::scene::ISceneNodeFactory::~ISceneNodeFactory() =====
void __fastcall glitch::scene::ISceneNodeFactory::~ISceneNodeFactory(glitch::scene::ISceneNodeFactory *this)
{
  ;
}


// ===== 6b9cf0 glitch::scene::CDefaultSceneNodeFactory::getCreatableSceneNodeTypeCount(void) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::getCreatableSceneNodeTypeCount(
        glitch::scene::CDefaultSceneNodeFactory *this)
{
  return -1227133513 * ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2);
}


// ===== 6b9d1c glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeType(uint) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeType(
        glitch::scene::CDefaultSceneNodeFactory *this,
        unsigned int a2)
{
  int v2; // r3
  unsigned int v3; // r2
  int result; // r0
  bool v5; // cf

  v2 = *((_DWORD *)this + 2);
  v3 = (*((_DWORD *)this + 3) - v2) >> 2;
  result = 153391689 * v3;
  v3 *= -1227133513;
  v5 = a2 >= v3;
  if ( a2 >= v3 )
    result = 1852534389;
  else
    a2 *= 28;
  if ( !v5 )
    return *(_DWORD *)(v2 + a2);
  return result;
}


// ===== 6b9d60 glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(uint) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(
        glitch::scene::CDefaultSceneNodeFactory *this,
        unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 2);
  v3 = (*((_DWORD *)this + 3) - v2) >> 2;
  result = 153391689 * v3;
  v5 = -1227133513 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 28 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 24);
  return result;
}


// ===== 6b9da0 glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(glitch::scene::E_SCENE_NODE_TYPE) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(int a1, int a2)
{
  _DWORD *v2; // r3
  int v3; // r5
  int v4; // r0
  int v5; // r2
  _DWORD *v6; // r12

  v2 = *(_DWORD **)(a1 + 8);
  v3 = -1227133513 * ((*(_DWORD *)(a1 + 12) - (int)v2) >> 2);
  if ( !v3 )
    return 0;
  if ( *v2 != a2 )
  {
    v4 = 7;
    v5 = 0;
    while ( 1 )
    {
      ++v5;
      v6 = &v2[v4];
      if ( v5 == v3 )
        break;
      v4 += 7;
      if ( *v6 == a2 )
      {
        v2 = v6;
        return v2[6];
      }
    }
    return 0;
  }
  return v2[6];
}


// ===== 6b9e24 `global constructor keyed to'.._source_glitch_scene_CDefaultSceneNodeFactory.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CDefaultSceneNodeFactory.cpp()
{
  dword_9F7B40 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B3C = 1056964608;
}


// ===== 6b9e44 glitch::scene::ISceneNodeFactory::~ISceneNodeFactory() =====
void __fastcall glitch::scene::ISceneNodeFactory::~ISceneNodeFactory(glitch::scene::ISceneNodeFactory *this)
{
  LC_API_FREE_0(this);
}


// ===== 6b9e58 glitch::scene::CDefaultSceneNodeFactory::getTypeFromName(char const*) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::getTypeFromName(
        glitch::scene::CDefaultSceneNodeFactory *this,
        char *a2)
{
  int v3; // r3
  int v4; // r0
  int v6; // r4
  unsigned int v7; // r5

  v3 = *((_DWORD *)this + 3);
  v4 = *((_DWORD *)this + 2);
  if ( !(1227133513 * ((v3 - v4) >> 2)) )
    return 1852534389;
  v6 = 0;
  v7 = 0;
  while ( 1 )
  {
    ++v7;
    if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
           v4 + v6 + 4,
           a2) )
    {
      break;
    }
    v4 = *((_DWORD *)this + 2);
    v6 += 28;
    if ( v7 >= -1227133513 * ((*((_DWORD *)this + 3) - v4) >> 2) )
      return 1852534389;
  }
  return *(_DWORD *)(*((_DWORD *)this + 2) + v6);
}


// ===== 6b9f04 glitch::scene::CDefaultSceneNodeFactory::addSceneNode(char const*,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CDefaultSceneNodeFactory::addSceneNode(
        glitch::scene::CDefaultSceneNodeFactory *this,
        char *a2,
        glitch::scene::ISceneNode *a3)
{
  int (__fastcall *v5)(glitch::scene::CDefaultSceneNodeFactory *, int, glitch::scene::ISceneNode *); // r5
  int TypeFromName; // r0

  v5 = *(int (__fastcall **)(glitch::scene::CDefaultSceneNodeFactory *, int, glitch::scene::ISceneNode *))(*(_DWORD *)this + 12);
  TypeFromName = glitch::scene::CDefaultSceneNodeFactory::getTypeFromName(this, a2);
  return v5(this, TypeFromName, a3);
}


// ===== 6b9f30 glitch::scene::CDefaultSceneNodeFactory::addSceneNode(glitch::scene::E_SCENE_NODE_TYPE,glitch::scene::ISceneNode *) =====
glitch::scene::ICameraSceneNode *__fastcall glitch::scene::CDefaultSceneNodeFactory::addSceneNode(
        int a1,
        int a2,
        int a3)
{
  glitch::scene::ICameraSceneNode *v5; // r4
  int v7; // r7
  char *v8; // r4
  bool v9; // zf
  _DWORD *v10; // r10
  int v11; // r7
  int v12; // r6
  glitch::scene::CSceneNodeAnimatorCameraMaya *v13; // r7
  _DWORD v14[4]; // [sp+18h] [bp-188h] BYREF
  _DWORD v15[4]; // [sp+28h] [bp-178h] BYREF
  _DWORD v16[4]; // [sp+38h] [bp-168h] BYREF
  _DWORD v17[4]; // [sp+48h] [bp-158h] BYREF
  _DWORD v18[4]; // [sp+58h] [bp-148h] BYREF
  _DWORD v19[3]; // [sp+68h] [bp-138h] BYREF
  _DWORD v20[3]; // [sp+74h] [bp-12Ch] BYREF
  _DWORD v21[3]; // [sp+80h] [bp-120h] BYREF
  _DWORD v22[3]; // [sp+8Ch] [bp-114h] BYREF
  _DWORD v23[3]; // [sp+98h] [bp-108h] BYREF
  _DWORD v24[3]; // [sp+A4h] [bp-FCh] BYREF
  _DWORD v25[3]; // [sp+B0h] [bp-F0h] BYREF
  _DWORD v26[3]; // [sp+BCh] [bp-E4h] BYREF
  _DWORD v27[3]; // [sp+C8h] [bp-D8h] BYREF
  _DWORD v28[3]; // [sp+D4h] [bp-CCh] BYREF
  _DWORD v29[3]; // [sp+E0h] [bp-C0h] BYREF
  _DWORD v30[3]; // [sp+ECh] [bp-B4h] BYREF
  _DWORD v31[3]; // [sp+F8h] [bp-A8h] BYREF
  _DWORD v32[3]; // [sp+104h] [bp-9Ch] BYREF
  _DWORD v33[3]; // [sp+110h] [bp-90h] BYREF
  _DWORD v34[3]; // [sp+11Ch] [bp-84h] BYREF
  _DWORD v35[3]; // [sp+128h] [bp-78h] BYREF
  _DWORD v36[3]; // [sp+134h] [bp-6Ch] BYREF
  _DWORD v37[3]; // [sp+140h] [bp-60h] BYREF
  _DWORD v38[3]; // [sp+14Ch] [bp-54h] BYREF
  _DWORD v39[3]; // [sp+158h] [bp-48h] BYREF
  float v40[2]; // [sp+164h] [bp-3Ch] BYREF
  glitch::IReferenceCounted *v41[3]; // [sp+16Ch] [bp-34h] BYREF
  glitch::IReferenceCounted *v42; // [sp+178h] [bp-28h] BYREF
  glitch::IReferenceCounted *v43; // [sp+17Ch] [bp-24h] BYREF
  glitch::IReferenceCounted *v44; // [sp+180h] [bp-20h] BYREF
  glitch::IReferenceCounted *v45; // [sp+184h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v46; // [sp+188h] [bp-18h] BYREF
  glitch::IReferenceCounted *v47; // [sp+18Ch] [bp-14h] BYREF
  glitch::IReferenceCounted *v48[2]; // [sp+190h] [bp-10h] BYREF
  glitch::IReferenceCounted *v49; // [sp+198h] [bp-8h] BYREF
  glitch::IReferenceCounted *v50; // [sp+19Ch] [bp-4h] BYREF

  if ( a2 == 1818457200 )
  {
    v19[2] = 1065353216;
    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    v19[0] = 1065353216;
    v19[1] = 1065353216;
    v5 = (glitch::scene::ICameraSceneNode *)operator new(0x190u, 0);
    glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(v5, 1, -1, v21, v20, v19);
    goto LABEL_22;
  }
  if ( a2 <= 1818457200 )
  {
    if ( a2 == 1601792883 )
    {
      v12 = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 20);
      v48[0] = nullptr;
      v47 = nullptr;
      v46 = nullptr;
      v45 = nullptr;
      v44 = nullptr;
      v43 = nullptr;
      v5 = (glitch::scene::ICameraSceneNode *)operator new(0x174u, 0);
      glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(v5, v12, v48, &v47, &v46, &v45, &v44, &v43, -1);
      if ( v43 )
        glitch::IReferenceCounted::drop(v43);
      if ( v44 )
        glitch::IReferenceCounted::drop(v44);
      if ( v45 )
        glitch::IReferenceCounted::drop(v45);
      if ( v46 )
        glitch::IReferenceCounted::drop(v46);
      if ( v47 )
        glitch::IReferenceCounted::drop(v47);
      if ( v48[0] )
        glitch::IReferenceCounted::drop(v48[0]);
      goto LABEL_22;
    }
    if ( a2 <= 1601792883 )
    {
      switch ( a2 )
      {
        case 1299013987:
          v27[1] = 0;
          v27[2] = 1120403456;
          memset(v28, 0, sizeof(v28));
          v27[0] = 0;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x38Cu, 0);
          glitch::scene::CCameraSceneNode::CCameraSceneNode((int)v5, -1, (int)v28, v27, 0);
          v13 = (glitch::scene::CSceneNodeAnimatorCameraMaya *)operator new(0x80u, 0);
          glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(
            v13,
            *(glitch::gui::ICursorControl **)(a1 + 24),
            -1500.0,
            200.0,
            1500.0);
          (*(void (__fastcall **)(glitch::scene::ICameraSceneNode *, glitch::scene::CSceneNodeAnimatorCameraMaya *))(*(_DWORD *)v5 + 108))(
            v5,
            v13);
          glitch::IReferenceCounted::drop((glitch::scene::CSceneNodeAnimatorCameraMaya *)((char *)v13
                                                                                        + *(_DWORD *)(*(_DWORD *)v13 - 12)));
          glitch::scene::CSceneManager::setActiveCamera(*(_DWORD *)(a1 + 20), v5);
          goto LABEL_22;
        case 1601003875:
          v29[1] = 0;
          v29[2] = 1120403456;
          memset(v30, 0, sizeof(v30));
          v29[0] = 0;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x38Cu, 0);
          glitch::scene::CCameraSceneNode::CCameraSceneNode((int)v5, -1, (int)v30, v29, 0);
          glitch::scene::CSceneManager::setActiveCamera(*(_DWORD *)(a1 + 20), v5);
          goto LABEL_22;
        case 1181573475:
          memset(v26, 0, sizeof(v26));
          v25[0] = 0;
          v25[1] = 0;
          v25[2] = 1120403456;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x38Cu, 0);
          glitch::scene::CCameraSceneNode::CCameraSceneNode((int)v5, -1, (int)v26, v25, 0);
          v10 = operator new(0x64u, 0);
          glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(
            v10,
            *(_DWORD *)(a1 + 24),
            1120403456,
            1140457472,
            0,
            0,
            0,
            0);
          (*(void (__fastcall **)(glitch::scene::ICameraSceneNode *, _DWORD *))(*(_DWORD *)v5 + 108))(v5, v10);
          glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 12)));
          glitch::scene::CSceneManager::setActiveCamera(*(_DWORD *)(a1 + 20), v5);
          goto LABEL_22;
      }
    }
    else
    {
      switch ( a2 )
      {
        case 1752393069:
          v31[2] = 1065353216;
          v42 = nullptr;
          memset(v32, 0, sizeof(v32));
          memset(v15, 0, 12);
          v15[3] = 1065353216;
          v31[0] = 1065353216;
          v31[1] = 1065353216;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x140u, 0);
          glitch::scene::CMeshSceneNode::CMeshSceneNode(v5, (int *)&v42, -1, (int)v32, (int)v15, (int)v31);
          if ( v42 )
            glitch::IReferenceCounted::drop(v42);
          goto LABEL_22;
        case 1752395105:
          v22[2] = 1065353216;
          v41[0] = nullptr;
          memset(v23, 0, sizeof(v23));
          memset(v14, 0, 12);
          v14[3] = 1065353216;
          v22[0] = 1065353216;
          v22[1] = 1065353216;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x17Cu, 0);
          glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(v5, v41, -1, v23, v14, v22);
          if ( v41[0] )
            glitch::IReferenceCounted::drop(v41[0]);
          goto LABEL_22;
        case 1700951395:
          glitch::scene::createCubeMesh(
            (glitch::scene *)&v50,
            0x60003u,
            *(glitch::video::IVideoDriver **)(*(_DWORD *)(a1 + 20) + 20),
            1.0);
          v38[2] = 1065353216;
          memset(v39, 0, sizeof(v39));
          memset(v18, 0, 12);
          v18[3] = 1065353216;
          v38[0] = 1065353216;
          v38[1] = 1065353216;
          v5 = (glitch::scene::ICameraSceneNode *)operator new(0x140u, 0);
          glitch::scene::CMeshSceneNode::CMeshSceneNode(v5, (int *)&v50, -1, (int)v39, (int)v18, (int)v38);
          if ( v50 )
            glitch::IReferenceCounted::drop(v50);
          goto LABEL_22;
      }
    }
    return nullptr;
  }
  if ( a2 == 1952999276 )
  {
    v5 = (glitch::scene::ICameraSceneNode *)operator new(0x15Cu, 0);
    glitch::scene::CLightSceneNode::CLightSceneNode(v5, 1);
  }
  else
  {
    if ( a2 <= 1952999276 )
    {
      if ( a2 == 1919447155 )
      {
        glitch::scene::createSphereMesh(
          (glitch::scene *)&v49,
          0x60003u,
          *(glitch::video::IVideoDriver **)(*(_DWORD *)(a1 + 20) + 20),
          5.0,
          0x10u,
          0x10u);
        v36[2] = 1065353216;
        memset(v37, 0, sizeof(v37));
        memset(v17, 0, 12);
        v17[3] = 1065353216;
        v36[0] = 1065353216;
        v36[1] = 1065353216;
        v5 = (glitch::scene::ICameraSceneNode *)operator new(0x140u, 0);
        glitch::scene::CMeshSceneNode::CMeshSceneNode(v5, (int *)&v49, -1, (int)v37, (int)v17, (int)v36);
        if ( v49 )
          glitch::IReferenceCounted::drop(v49);
        goto LABEL_22;
      }
      if ( a2 == 1920099700 )
      {
        v33[2] = 1065353216;
        memset(v34, 0, sizeof(v34));
        memset(v16, 0, 12);
        v16[3] = 1065353216;
        v33[0] = 1065353216;
        v33[1] = 1065353216;
        v5 = (glitch::scene::ICameraSceneNode *)operator new(0x214u, 0);
        glitch::scene::CTerrainSceneNode::CTerrainSceneNode(v5, a1 + 28, -1, 4, 17, 17, v34, v16, v33);
        goto LABEL_22;
      }
      if ( a2 != 1819044194 )
        return nullptr;
      v7 = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 20);
      v40[1] = 0.0;
      memset(v24, 0, sizeof(v24));
      v40[0] = 0.0;
      v41[2] = (glitch::IReferenceCounted *)-1;
      v41[1] = (glitch::IReferenceCounted *)-1;
      v8 = (char *)operator new(0x1F4u, 0);
      glitch::scene::CBillboardSceneNode::CBillboardSceneNode((int)v8, v7, -1, (int)v24, v40, -1, -1);
      if ( !v8 )
        return nullptr;
    }
    else
    {
      if ( a2 == 2037214564 )
      {
        v5 = (glitch::scene::ICameraSceneNode *)operator new(0x194u, 0);
        glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(v5, -1);
        goto LABEL_22;
      }
      if ( a2 == 2037673317 )
      {
        v5 = (glitch::scene::ICameraSceneNode *)operator new(0x150u, 0);
        glitch::scene::CEmptySceneNode::CEmptySceneNode(v5, -1);
        goto LABEL_22;
      }
      if ( a2 != 1954047348 )
        return nullptr;
      v11 = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 44);
      memset(v35, 0, sizeof(v35));
      v48[1] = (glitch::IReferenceCounted *)1694498815;
      v8 = (char *)operator new(0x1A8u, 0);
      glitch::scene::CTextSceneNode::CTextSceneNode((int)v8, -1, 0, v11, (int)v35, (wchar_t *)"e", 1694498815);
      if ( !v8 )
        return nullptr;
    }
    v5 = (glitch::scene::ICameraSceneNode *)(v8 + 4);
  }
LABEL_22:
  v9 = v5 == nullptr;
  if ( v5 )
    v9 = a3 == 0;
  if ( !v9 )
  {
    (*(void (__fastcall **)(int, glitch::scene::ICameraSceneNode *))(*(_DWORD *)a3 + 92))(a3, v5);
    glitch::IReferenceCounted::drop((glitch::scene::ICameraSceneNode *)((char *)v5 + *(_DWORD *)(*(_DWORD *)v5 - 12)));
  }
  return v5;
}


// ===== 6ba774 glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(glitch::scene::E_SCENE_NODE_TYPE,char const*) =====
_DWORD *__fastcall glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(
        _DWORD *a1,
        int a2,
        char *a3)
{
  _DWORD *v3; // r4
  size_t v6; // r0

  *a1 = a2;
  v3 = a1 + 1;
  a1[5] = a1 + 1;
  a1[6] = a1 + 1;
  v6 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v3,
    a3,
    &a3[v6]);
  return a1;
}


// ===== 6ba7b0 std::priv::__ufill<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,int>(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,int>(
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
      *i = *(_DWORD *)a3;
      i[5] = i + 1;
      i[6] = i + 1;
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i + 1,
                 *(_BYTE **)(a3 + 24),
                 *(_BYTE **)(a3 + 20));
      if ( !--v4 )
        break;
    }
  }
  return result;
}


// ===== 6ba818 std::priv::__ucopy<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,int>(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4

  v3 = (a2 - a1) >> 2;
  v4 = a1;
  v6 = -1227133513 * v3;
  if ( -1227133513 * v3 <= 0 )
    return a3;
  v7 = -1227133513 * v3;
  v8 = a3;
  while ( 1 )
  {
    *v8 = *(_DWORD *)v4;
    v8[5] = v8 + 1;
    v8[6] = v8 + 1;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8 + 1,
      *(_BYTE **)(v4 + 24),
      *(_BYTE **)(v4 + 20));
    --v7;
    v8 += 7;
    if ( !v7 )
      break;
    v4 += 28;
  }
  return &a3[7 * v6];
}


// ===== 6ba89c std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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
    v4 = (void **)v1[6];
    if ( v4 != v1 + 1 && v4 )
      GlitchFree(v1[6]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 6ba8f8 glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory() =====
void __fastcall glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory(
        glitch::scene::CDefaultSceneNodeFactory *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 7);
  *(_DWORD *)this = off_987968;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 2);
}


// ===== 6ba940 glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory() =====
void __fastcall glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory(
        glitch::scene::CDefaultSceneNodeFactory *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 7);
  *(_DWORD *)this = off_987968;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 2);
  LC_API_FREE_0(this);
}


// ===== 6ba990 std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair const&) =====
void __fastcall std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r0
  _DWORD *v10; // r8
  void **v11; // r5
  void **v12; // r10
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
    v9 = std::priv::__ucopy<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair *,int>(
           *a1,
           (int)v2,
           v8);
    v10 = v9 + 7;
    *v9 = *(_DWORD *)a2;
    v9[5] = v9 + 1;
    v9[6] = v9 + 1;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9 + 1,
      *(_BYTE **)(a2 + 24),
      *(_BYTE **)(a2 + 20));
    v11 = (void **)a1[1];
    v12 = (void **)*a1;
    if ( v11 != (void **)*a1 )
    {
      do
      {
        v11 -= 7;
        v13 = (void **)v11[6];
        if ( v13 != v11 + 1 )
        {
          if ( v13 )
            GlitchFree(v11[6]);
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
    *v2 = *(_DWORD *)a2;
    v2[6] = v2 + 1;
    v2[5] = v2 + 1;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2 + 1,
      *(_BYTE **)(a2 + 24),
      *(_BYTE **)(a2 + 20));
    a1[1] += 28;
  }
}


// ===== 6baae8 glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(glitch::scene::CSceneManager *,glitch::gui::ICursorControl *,boost::intrusive_ptr<glitch::io::IFileSystem> const&) =====
_DWORD *__fastcall glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(
        _DWORD *a1,
        int a2,
        int a3,
        int *a4)
{
  int v5; // lr
  int v6; // r3
  int v7; // r1
  int v9; // [sp+4h] [bp-1C4h] BYREF
  int v10; // [sp+8h] [bp-1C0h] BYREF
  void *v11; // [sp+1Ch] [bp-1ACh]
  int v12; // [sp+20h] [bp-1A8h] BYREF
  int v13; // [sp+24h] [bp-1A4h] BYREF
  void *v14; // [sp+38h] [bp-190h]
  int v15; // [sp+3Ch] [bp-18Ch] BYREF
  int v16; // [sp+40h] [bp-188h] BYREF
  void *v17; // [sp+54h] [bp-174h]
  int v18; // [sp+58h] [bp-170h] BYREF
  int v19; // [sp+5Ch] [bp-16Ch] BYREF
  void *v20; // [sp+70h] [bp-158h]
  int v21; // [sp+74h] [bp-154h] BYREF
  int v22; // [sp+78h] [bp-150h] BYREF
  void *v23; // [sp+8Ch] [bp-13Ch]
  int v24; // [sp+90h] [bp-138h] BYREF
  int v25; // [sp+94h] [bp-134h] BYREF
  void *v26; // [sp+A8h] [bp-120h]
  int v27; // [sp+ACh] [bp-11Ch] BYREF
  int v28; // [sp+B0h] [bp-118h] BYREF
  void *v29; // [sp+C4h] [bp-104h]
  int v30; // [sp+C8h] [bp-100h] BYREF
  int v31; // [sp+CCh] [bp-FCh] BYREF
  void *v32; // [sp+E0h] [bp-E8h]
  int v33; // [sp+E4h] [bp-E4h] BYREF
  int v34; // [sp+E8h] [bp-E0h] BYREF
  void *v35; // [sp+FCh] [bp-CCh]
  int v36; // [sp+100h] [bp-C8h] BYREF
  int v37; // [sp+104h] [bp-C4h] BYREF
  void *v38; // [sp+118h] [bp-B0h]
  int v39; // [sp+11Ch] [bp-ACh] BYREF
  int v40; // [sp+120h] [bp-A8h] BYREF
  void *v41; // [sp+134h] [bp-94h]
  int v42; // [sp+138h] [bp-90h] BYREF
  int v43; // [sp+13Ch] [bp-8Ch] BYREF
  void *v44; // [sp+150h] [bp-78h]
  int v45; // [sp+154h] [bp-74h] BYREF
  int v46; // [sp+158h] [bp-70h] BYREF
  void *v47; // [sp+16Ch] [bp-5Ch]
  int v48; // [sp+170h] [bp-58h] BYREF
  int v49; // [sp+174h] [bp-54h] BYREF
  void *v50; // [sp+188h] [bp-40h]
  int v51; // [sp+18Ch] [bp-3Ch] BYREF
  int v52; // [sp+190h] [bp-38h] BYREF
  void *v53; // [sp+1A4h] [bp-24h]
  int v54; // [sp+1A8h] [bp-20h] BYREF
  int v55; // [sp+1ACh] [bp-1Ch] BYREF
  void *p; // [sp+1C0h] [bp-8h]
  int v57; // [sp+1C4h] [bp-4h]

  v5 = _stack_chk_guard;
  a1[6] = a3;
  a1[1] = 1;
  *a1 = off_987968;
  a1[4] = 0;
  a1[5] = a2;
  a1[2] = 0;
  a1[3] = 0;
  v6 = *a4;
  v57 = v5;
  a1[7] = v6;
  if ( v6 )
    a3 = *(_DWORD *)(v6 + 4);
  LOWORD(v7) = 30051;
  if ( v6 )
    *(_DWORD *)(v6 + 4) = a3 + 1;
  HIWORD(v7) = 25954;
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v54, v7, "cube");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v54);
  if ( p != &v55 && p )
    GlitchFree(p);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v51, 1919447155, "sphere");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v51);
  if ( v53 != &v52 && v53 )
    GlitchFree(v53);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v48, 1954047348, "text");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v48);
  if ( v50 != &v49 && v50 )
    GlitchFree(v50);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v45, 1920099700, "terrain");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v45);
  if ( v47 != &v46 && v47 )
    GlitchFree(v47);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v42, 1601792883, "skyBox");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v42);
  if ( v44 != &v43 && v44 )
    GlitchFree(v44);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v39, 2003069043, "shadowVolume");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v39);
  if ( v41 != &v40 && v41 )
    GlitchFree(v41);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v36, 1752393069, "mesh");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v36);
  if ( v38 != &v37 && v38 )
    GlitchFree(v38);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v33, 1952999276, "light");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v33);
  if ( v35 != &v34 && v35 )
    GlitchFree(v35);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v30, 2037673317, "empty");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v30);
  if ( v32 != &v31 && v32 )
    GlitchFree(v32);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(
    &v27,
    2037214564,
    "dummyTransformation");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v27);
  if ( v29 != &v28 && v29 )
    GlitchFree(v29);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v24, 1601003875, "camera");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v24);
  if ( v26 != &v25 && v26 )
    GlitchFree(v26);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v21, 1819044194, "billBoard");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v21);
  if ( v23 != &v22 && v23 )
    GlitchFree(v23);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v18, 1752395105, "animatedMesh");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v18);
  if ( v20 != &v19 && v20 )
    GlitchFree(v20);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v15, 1818457200, "particleSystem");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v15);
  if ( v17 != &v16 && v17 )
    GlitchFree(v17);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v12, 1299013987, "cameraMaya");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v12);
  if ( v14 != &v13 && v14 )
    GlitchFree(v14);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v9, 1181573475, "cameraFPS");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v9);
  if ( v11 != &v10 && v11 )
    GlitchFree(v11);
  return a1;
}


// ===== 6bb008 glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(glitch::scene::CSceneManager *,glitch::gui::ICursorControl *,boost::intrusive_ptr<glitch::io::IFileSystem> const&) =====
_DWORD *__fastcall glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(
        _DWORD *a1,
        int a2,
        int a3,
        int *a4)
{
  int v5; // lr
  int v6; // r3
  int v7; // r1
  int v9; // [sp+4h] [bp-1C4h] BYREF
  int v10; // [sp+8h] [bp-1C0h] BYREF
  void *v11; // [sp+1Ch] [bp-1ACh]
  int v12; // [sp+20h] [bp-1A8h] BYREF
  int v13; // [sp+24h] [bp-1A4h] BYREF
  void *v14; // [sp+38h] [bp-190h]
  int v15; // [sp+3Ch] [bp-18Ch] BYREF
  int v16; // [sp+40h] [bp-188h] BYREF
  void *v17; // [sp+54h] [bp-174h]
  int v18; // [sp+58h] [bp-170h] BYREF
  int v19; // [sp+5Ch] [bp-16Ch] BYREF
  void *v20; // [sp+70h] [bp-158h]
  int v21; // [sp+74h] [bp-154h] BYREF
  int v22; // [sp+78h] [bp-150h] BYREF
  void *v23; // [sp+8Ch] [bp-13Ch]
  int v24; // [sp+90h] [bp-138h] BYREF
  int v25; // [sp+94h] [bp-134h] BYREF
  void *v26; // [sp+A8h] [bp-120h]
  int v27; // [sp+ACh] [bp-11Ch] BYREF
  int v28; // [sp+B0h] [bp-118h] BYREF
  void *v29; // [sp+C4h] [bp-104h]
  int v30; // [sp+C8h] [bp-100h] BYREF
  int v31; // [sp+CCh] [bp-FCh] BYREF
  void *v32; // [sp+E0h] [bp-E8h]
  int v33; // [sp+E4h] [bp-E4h] BYREF
  int v34; // [sp+E8h] [bp-E0h] BYREF
  void *v35; // [sp+FCh] [bp-CCh]
  int v36; // [sp+100h] [bp-C8h] BYREF
  int v37; // [sp+104h] [bp-C4h] BYREF
  void *v38; // [sp+118h] [bp-B0h]
  int v39; // [sp+11Ch] [bp-ACh] BYREF
  int v40; // [sp+120h] [bp-A8h] BYREF
  void *v41; // [sp+134h] [bp-94h]
  int v42; // [sp+138h] [bp-90h] BYREF
  int v43; // [sp+13Ch] [bp-8Ch] BYREF
  void *v44; // [sp+150h] [bp-78h]
  int v45; // [sp+154h] [bp-74h] BYREF
  int v46; // [sp+158h] [bp-70h] BYREF
  void *v47; // [sp+16Ch] [bp-5Ch]
  int v48; // [sp+170h] [bp-58h] BYREF
  int v49; // [sp+174h] [bp-54h] BYREF
  void *v50; // [sp+188h] [bp-40h]
  int v51; // [sp+18Ch] [bp-3Ch] BYREF
  int v52; // [sp+190h] [bp-38h] BYREF
  void *v53; // [sp+1A4h] [bp-24h]
  int v54; // [sp+1A8h] [bp-20h] BYREF
  int v55; // [sp+1ACh] [bp-1Ch] BYREF
  void *p; // [sp+1C0h] [bp-8h]
  int v57; // [sp+1C4h] [bp-4h]

  v5 = _stack_chk_guard;
  a1[6] = a3;
  a1[1] = 1;
  *a1 = off_987968;
  a1[4] = 0;
  a1[5] = a2;
  a1[2] = 0;
  a1[3] = 0;
  v6 = *a4;
  v57 = v5;
  a1[7] = v6;
  if ( v6 )
    a3 = *(_DWORD *)(v6 + 4);
  LOWORD(v7) = 30051;
  if ( v6 )
    *(_DWORD *)(v6 + 4) = a3 + 1;
  HIWORD(v7) = 25954;
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v54, v7, "cube");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v54);
  if ( p != &v55 && p )
    GlitchFree(p);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v51, 1919447155, "sphere");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v51);
  if ( v53 != &v52 && v53 )
    GlitchFree(v53);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v48, 1954047348, "text");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v48);
  if ( v50 != &v49 && v50 )
    GlitchFree(v50);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v45, 1920099700, "terrain");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v45);
  if ( v47 != &v46 && v47 )
    GlitchFree(v47);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v42, 1601792883, "skyBox");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v42);
  if ( v44 != &v43 && v44 )
    GlitchFree(v44);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v39, 2003069043, "shadowVolume");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v39);
  if ( v41 != &v40 && v41 )
    GlitchFree(v41);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v36, 1752393069, "mesh");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v36);
  if ( v38 != &v37 && v38 )
    GlitchFree(v38);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v33, 1952999276, "light");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v33);
  if ( v35 != &v34 && v35 )
    GlitchFree(v35);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v30, 2037673317, "empty");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v30);
  if ( v32 != &v31 && v32 )
    GlitchFree(v32);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(
    &v27,
    2037214564,
    "dummyTransformation");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v27);
  if ( v29 != &v28 && v29 )
    GlitchFree(v29);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v24, 1601003875, "camera");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v24);
  if ( v26 != &v25 && v26 )
    GlitchFree(v26);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v21, 1819044194, "billBoard");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v21);
  if ( v23 != &v22 && v23 )
    GlitchFree(v23);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v18, 1752395105, "animatedMesh");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v18);
  if ( v20 != &v19 && v20 )
    GlitchFree(v20);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v15, 1818457200, "particleSystem");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v15);
  if ( v17 != &v16 && v17 )
    GlitchFree(v17);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v12, 1299013987, "cameraMaya");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v12);
  if ( v14 != &v13 && v14 )
    GlitchFree(v14);
  glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(&v9, 1181573475, "cameraFPS");
  std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    a1 + 2,
    (int)&v9);
  if ( v11 != &v10 && v11 )
    GlitchFree(v11);
  return a1;
}


// ===== 6bb528 glitch::scene::CDummyTransformationSceneNode::render(void *) =====
void __fastcall glitch::scene::CDummyTransformationSceneNode::render(
        glitch::scene::CDummyTransformationSceneNode *this,
        void *a2)
{
  ;
}


// ===== 6bb52c glitch::scene::CDummyTransformationSceneNode::getType(void) =====
int __fastcall glitch::scene::CDummyTransformationSceneNode::getType(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  return 2037214564;
}


// ===== 6bb538 glitch::scene::CDummyTransformationSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CDummyTransformationSceneNode::getBoundingBox(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  return (char *)this + 372;
}


// ===== 6bb540 glitch::scene::CDummyTransformationSceneNode::getRelativeTransformationMatrix(void) =====
char *__fastcall glitch::scene::CDummyTransformationSceneNode::getRelativeTransformationMatrix(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  return (char *)this + 304;
}


// ===== 6bb548 `global constructor keyed to'.._source_glitch_scene_CDummyTransformationSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CDummyTransformationSceneNode.cpp()
{
  dword_9F7B4C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B48 = 1056964608;
}


// ===== 6bb568 glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  *(_DWORD *)this = off_9879AC;
  *((_DWORD *)this + 76) = off_987AB8;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_987ACC);
}


// ===== 6bb5b4 `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode((glitch::scene::IDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6bb5c4 `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode((glitch::scene::IDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6bb5d4 glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  *((_DWORD *)this + 99) = off_987D78;
  *(_DWORD *)this = off_987DD4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_987DD4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_987EE0;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_987D90);
}


// ===== 6bb63c `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode((glitch::scene::CDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6bb64c `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode((glitch::scene::CDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6bb65c glitch::scene::CDummyTransformationSceneNode::setRelativeTransformationMatrix(glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::scene::CDummyTransformationSceneNode::setRelativeTransformationMatrix(int a1, _DWORD *a2)
{
  int v4; // r0
  int v5; // r1
  void (__fastcall *v6)(int, _DWORD *); // r3
  void (__fastcall *v7)(int, float *); // r7
  float *v8; // r1
  int (__fastcall *v9)(int, float *); // r5
  float v11[4]; // [sp+0h] [bp-2Ch] BYREF
  float v12[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v13[4]; // [sp+1Ch] [bp-10h] BYREF

  memcpy((void *)(a1 + 304), a2, 0x41u);
  v4 = a2[13];
  v5 = a2[12];
  v6 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)a1 + 164);
  v13[2] = a2[14];
  v13[1] = v4;
  v13[0] = v5;
  v6(a1, v13);
  v7 = *(void (__fastcall **)(int, float *))(*(_DWORD *)a1 + 156);
  glitch::core::quaternion::operator=(v11, (float *)a2);
  v7(a1, v11);
  v8 = (float *)a2;
  v9 = *(int (__fastcall **)(int, float *))(*(_DWORD *)a1 + 148);
  glitch::core::CMatrix4<float>::getScale(v12, v8);
  return v9(a1, v12);
}


// ===== 6bb6f0 glitch::scene::IDummyTransformationSceneNode::IDummyTransformationSceneNode(int) =====
glitch::scene::IDummyTransformationSceneNode *__fastcall glitch::scene::IDummyTransformationSceneNode::IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this,
        int *a2,
        int a3)
{
  int v5; // r3
  _DWORD v7[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v9[4]; // [sp+24h] [bp-10h] BYREF

  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)this, a2 + 1, a3, v9, v7, v8);
  v5 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  return this;
}


// ===== 6bb77c glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(int) =====
glitch::scene::CDummyTransformationSceneNode *__fastcall glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this,
        int a2)
{
  *((_DWORD *)this + 99) = off_95B720;
  *((_DWORD *)this + 100) = 1;
  *(_DWORD *)this = off_98802C;
  *(int *)((char *)&elf_hash_bucket[44] + (_DWORD)this) = (int)off_98804C;
  glitch::scene::IDummyTransformationSceneNode::IDummyTransformationSceneNode(this, (int *)off_987D8C, a2);
  *((_BYTE *)this + 368) = 0;
  *(_DWORD *)this = off_987C6C;
  *((_DWORD *)this + 99) = off_987D78;
  LC_API_MEMSET_0((char *)this + 304, 0, 0x40u);
  *((_BYTE *)this + 368) = 1;
  *((_DWORD *)this + 98) = 1065353216;
  *((_DWORD *)this + 95) = -1082130432;
  *((_DWORD *)this + 76) = 1065353216;
  *((_DWORD *)this + 81) = 1065353216;
  *((_DWORD *)this + 86) = 1065353216;
  *((_DWORD *)this + 91) = 1065353216;
  *((_DWORD *)this + 93) = -1082130432;
  *((_DWORD *)this + 94) = -1082130432;
  *((_DWORD *)this + 96) = 1065353216;
  *((_DWORD *)this + 97) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling((int)this, 0);
  return this;
}


// ===== 6bb858 glitch::scene::CDummyTransformationSceneNode::clone(void) =====
_DWORD *__fastcall glitch::scene::CDummyTransformationSceneNode::clone(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  _DWORD *v2; // r4

  v2 = operator new(0x194u, 0);
  glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(
    (glitch::scene::CDummyTransformationSceneNode *)v2,
    *((_DWORD *)this + 67));
  glitch::scene::ISceneNode::cloneMembers((glitch::scene::ISceneNode *)v2, this);
  memcpy(v2 + 76, (char *)this + 304, 0x41u);
  v2[93] = *((_DWORD *)this + 93);
  v2[94] = *((_DWORD *)this + 94);
  v2[95] = *((_DWORD *)this + 95);
  v2[96] = *((_DWORD *)this + 96);
  v2[97] = *((_DWORD *)this + 97);
  v2[98] = *((_DWORD *)this + 98);
  return v2;
}


// ===== 6bb8cc glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  *(_DWORD *)this = off_9879AC;
  *((_DWORD *)this + 76) = off_987AB8;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_987ACC);
  LC_API_FREE_0(this);
}


// ===== 6bb920 `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode((glitch::scene::IDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6bb930 `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode(
        glitch::scene::IDummyTransformationSceneNode *this)
{
  glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode((glitch::scene::IDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6bb940 glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(int) =====
glitch::scene::CDummyTransformationSceneNode *__fastcall glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this,
        int *a2,
        int a3)
{
  int v5; // r3

  glitch::scene::IDummyTransformationSceneNode::IDummyTransformationSceneNode(this, a2 + 1, a3);
  v5 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  *((_BYTE *)this + 368) = 0;
  LC_API_MEMSET_0((char *)this + 304, 0, 0x40u);
  *((_BYTE *)this + 368) = 1;
  *((_DWORD *)this + 95) = -1082130432;
  *((_DWORD *)this + 98) = 1065353216;
  *((_DWORD *)this + 76) = 1065353216;
  *((_DWORD *)this + 81) = 1065353216;
  *((_DWORD *)this + 86) = 1065353216;
  *((_DWORD *)this + 91) = 1065353216;
  *((_DWORD *)this + 93) = -1082130432;
  *((_DWORD *)this + 94) = -1082130432;
  *((_DWORD *)this + 96) = 1065353216;
  *((_DWORD *)this + 97) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling((int)this, 0);
  return this;
}


// ===== 6bb9e0 glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  *((_DWORD *)this + 99) = off_987D78;
  *(_DWORD *)this = off_987DD4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_987DD4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_987EE0;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_987D90);
  LC_API_FREE_0(this);
}


// ===== 6bba50 `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode((glitch::scene::CDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6bba60 `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode(
        glitch::scene::CDummyTransformationSceneNode *this)
{
  glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode((glitch::scene::CDummyTransformationSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6bba70 glitch::scene::CMesh::CMesh(void) =====
_DWORD *__fastcall glitch::scene::CMesh::CMesh(_DWORD *this)
{
  *(this + 10) = 1065353216;
  *this = off_988060;
  *(this + 4) = 0;
  *(this + 7) = -1082130432;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = -1082130432;
  *(this + 6) = -1082130432;
  *(this + 8) = 1065353216;
  *(this + 9) = 1065353216;
  return this;
}


// ===== 6bbad4 glitch::scene::CMesh::CMesh(void) =====
_DWORD *__fastcall glitch::scene::CMesh::CMesh(_DWORD *this)
{
  *(this + 10) = 1065353216;
  *this = off_988060;
  *(this + 4) = 0;
  *(this + 7) = -1082130432;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = -1082130432;
  *(this + 6) = -1082130432;
  *(this + 8) = 1065353216;
  *(this + 9) = 1065353216;
  return this;
}


// ===== 6bbb38 glitch::scene::CMesh::getMeshBufferCount(void) =====
int __fastcall glitch::scene::CMesh::getMeshBufferCount(glitch::scene::CMesh *this)
{
  return -1431655765 * ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2);
}


// ===== 6bbb60 glitch::scene::CMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::scene::CMesh::getMeshBuffer(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a2 + 8);
  if ( a3 < -1431655765 * ((*(_DWORD *)(a2 + 12) - v3) >> 2) )
  {
    v4 = *(_DWORD *)(v3 + 12 * a3);
    *this = v4;
    if ( v4 )
      ++*(_DWORD *)(v4 + 4);
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 6bbbb8 glitch::scene::CMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::scene::CMesh::getMaterial(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  _DWORD *v4; // r3

  v3 = *(_DWORD *)(a2 + 8);
  if ( a3 < -1431655765 * ((*(_DWORD *)(a2 + 12) - v3) >> 2) )
  {
    v4 = *(_DWORD **)(v3 + 12 * a3 + 4);
    *this = v4;
    if ( v4 )
      ++*v4;
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 6bbc10 glitch::scene::CMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::scene::CMesh::getMaterialVertexAttributeMap(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  _DWORD *v4; // r3

  v3 = *(_DWORD *)(a2 + 8);
  if ( a3 < -1431655765 * ((*(_DWORD *)(a2 + 12) - v3) >> 2) )
  {
    v4 = *(_DWORD **)(v3 + 12 * a3 + 8);
    *this = v4;
    if ( v4 )
      ++*v4;
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 6bbc68 glitch::scene::CMesh::getBoundingBox(void) =====
char *__fastcall glitch::scene::CMesh::getBoundingBox(glitch::scene::CMesh *this)
{
  return (char *)this + 20;
}


// ===== 6bbc70 glitch::scene::CMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CMesh::setBoundingBox(_DWORD *result, _DWORD *a2)
{
  result[5] = *a2;
  result[6] = a2[1];
  result[7] = a2[2];
  result[8] = a2[3];
  result[9] = a2[4];
  result[10] = a2[5];
  return result;
}


// ===== 6bbca4 `global constructor keyed to'.._source_glitch_scene_CMesh.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CMesh.cpp()
{
  dword_9F7B58 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B54 = 1056964608;
}


// ===== 6bbcc4 glitch::scene::CMesh::SBuffer::operator=(glitch::scene::CMesh::SBuffer const&) =====
glitch::IReferenceCounted **__fastcall glitch::scene::CMesh::SBuffer::operator=(
        glitch::IReferenceCounted **a1,
        glitch::IReferenceCounted **a2,
        int a3)
{
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

  v3 = *a2;
  if ( *a2 )
    a3 = *((_DWORD *)v3 + 1);
  if ( *a2 )
    *((_DWORD *)v3 + 1) = a3 + 1;
  v6 = *a1;
  *a1 = v3;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = a2[1];
  v13 = v7;
  if ( v7 )
    ++*(_DWORD *)v7;
  v8 = a1[1];
  if ( v7 )
    v7 = v13;
  a1[1] = v7;
  v13 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  v9 = a2[2];
  v12 = v9;
  if ( v9 )
  {
    ++*(_DWORD *)v9;
    v9 = v12;
  }
  v10 = a1[2];
  a1[2] = v9;
  v12 = v10;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v12);
  return a1;
}


// ===== 6bbd6c glitch::scene::CMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall glitch::scene::CMesh::setMaterial(
        int a1,
        unsigned int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  int v4; // r12
  glitch::video::CMaterialVertexAttributeMap **result; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterialVertexAttributeMap **v8; // r4
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v11; // [sp+4h] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 12);
  result = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 8);
  if ( a2 < -1431655765 * ((v4 - (int)result) >> 2) )
  {
    v7 = *a3;
    v8 = &result[3 * a2];
    v11 = v7;
    if ( v7 )
    {
      ++*(_DWORD *)v7;
      v7 = v11;
    }
    v11 = v8[1];
    v8[1] = v7;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
    v9 = *a4;
    v10 = v9;
    if ( v9 )
    {
      ++*(_DWORD *)v9;
      v9 = v10;
    }
    v10 = v8[2];
    v8[2] = v9;
    return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v10);
  }
  return result;
}


// ===== 6bbe18 glitch::scene::CMesh::SBuffer::~SBuffer() =====
void __fastcall glitch::scene::CMesh::SBuffer::~SBuffer(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 6bbe48 std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CMesh::SBuffer*,glitch::scene::CMesh::SBuffer*,std::__false_type const&) =====
glitch::scene::CMesh::SBuffer *__fastcall std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::scene::CMesh::SBuffer *this,
        int a3)
{
  glitch::scene::CMesh::SBuffer *v3; // r4
  int v6; // r3
  int v8; // r10
  glitch::scene::CMesh::SBuffer *v9; // r10
  int v10; // r6
  int v11; // r4
  glitch::video::CMaterialVertexAttributeMap **v12; // r6
  glitch::video::CMaterialVertexAttributeMap **v13; // r0

  v3 = *(glitch::scene::CMesh::SBuffer **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -1431655765 * v6;
  if ( -1431655765 * v6 > 0 )
  {
    v10 = -1431655765 * v6;
    v11 = 0;
    do
    {
      glitch::scene::CMesh::SBuffer::operator=(
        (glitch::IReferenceCounted **)((char *)this + v11),
        (glitch::IReferenceCounted **)(a3 + v11),
        a3);
      --v10;
      v11 += 12;
    }
    while ( v10 );
    v9 = (glitch::scene::CMesh::SBuffer *)((char *)this + 12 * v8);
    v3 = *(glitch::scene::CMesh::SBuffer **)(a1 + 4);
  }
  else
  {
    v9 = this;
  }
  if ( v3 != v9 )
  {
    v12 = (glitch::video::CMaterialVertexAttributeMap **)v9;
    do
    {
      v13 = v12;
      v12 += 3;
      glitch::scene::CMesh::SBuffer::~SBuffer(v13);
    }
    while ( v3 != (glitch::scene::CMesh::SBuffer *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 6bbedc glitch::scene::CMesh::clear(void) =====
glitch::scene::CMesh::SBuffer *__fastcall glitch::scene::CMesh::clear(glitch::scene::CMesh::SBuffer *this)
{
  glitch::scene::CMesh::SBuffer *v1; // r1
  int v2; // r2

  v1 = *((glitch::scene::CMesh::SBuffer **)this + 2);
  v2 = *((_DWORD *)this + 3);
  if ( v1 != (glitch::scene::CMesh::SBuffer *)v2 )
    return std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)this + 8,
             v1,
             v2);
  return this;
}


// ===== 6bbf08 std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMesh::SBuffer const*>(uint &,glitch::scene::CMesh::SBuffer const*,glitch::scene::CMesh::SBuffer const*) =====
int *__fastcall std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMesh::SBuffer const*>(
        int a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  int *v4; // r4
  int v5; // r5
  int *result; // r0
  int v7; // r5
  int *i; // r3
  int v9; // r2
  _DWORD *v10; // r2
  _DWORD *v11; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = (int *)GlitchAlloc(12 * *a2, 0);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 3 )
    {
      v9 = *v4;
      *i = *v4;
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = (_DWORD *)v4[1];
      i[1] = (int)v10;
      if ( v10 )
        ++*v10;
      v11 = (_DWORD *)v4[2];
      v4 += 3;
      i[2] = (int)v11;
      if ( v11 )
        ++*v11;
      if ( !--v7 )
        break;
    }
  }
  return result;
}


// ===== 6bbfb0 std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        glitch::video::CMaterialVertexAttributeMap ***a1,
        int a2)
{
  int v4; // r3
  int *v5; // r10
  glitch::video::CMaterialVertexAttributeMap **v6; // r6
  int v7; // r5
  int v8; // r8
  glitch::video::CMaterialVertexAttributeMap **v9; // r7
  int v10; // r1
  int v11; // r2
  unsigned int v12; // r1
  int v13; // r7
  glitch::video::CMaterialVertexAttributeMap **v14; // r0
  int *v16; // r2
  int v17; // r8
  int v18; // r7
  int v19; // r3
  int v20; // r1
  glitch::video::CMaterialVertexAttributeMap *v21; // r1
  glitch::video::CMaterialVertexAttributeMap *v22; // r1
  int *v23; // r0
  glitch::video::CMaterialVertexAttributeMap **v24; // r7
  glitch::video::CMaterialVertexAttributeMap **v25; // r8
  int v26; // r3
  int v27; // [sp+4h] [bp-4h] BYREF

  if ( (glitch::video::CMaterialVertexAttributeMap ***)a2 != a1 )
  {
    v4 = *(_DWORD *)(a2 + 4);
    v5 = *(int **)a2;
    v6 = *a1;
    v7 = -1431655765 * ((v4 - *(_DWORD *)a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1431655765 * (a1[2] - *a1)) )
    {
      v27 = -1431655765 * ((v4 - *(_DWORD *)a2) >> 2);
      v23 = std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMesh::SBuffer const*>(
              (int)a1,
              &v27,
              v5,
              v4);
      v24 = a1[1];
      v25 = *a1;
      v6 = (glitch::video::CMaterialVertexAttributeMap **)v23;
      if ( v24 != *a1 )
      {
        do
        {
          v24 -= 3;
          glitch::scene::CMesh::SBuffer::~SBuffer(v24);
        }
        while ( v25 != v24 );
        v24 = *a1;
      }
      GlitchFree(v24);
      v26 = v27;
      *a1 = v6;
      a1[2] = &v6[3 * v26];
      goto LABEL_11;
    }
    v9 = a1[1];
    v10 = v9 - v6;
    v11 = 1431655765 * v10;
    v12 = -1431655765 * v10;
    if ( v7 > v12 )
    {
      v16 = &v5[3 * v12];
      v17 = -1431655765 * ((int)(12 * v12) >> 2);
      if ( v17 > 0 )
      {
        v18 = 0;
        do
        {
          glitch::scene::CMesh::SBuffer::operator=(&v6[v18], (glitch::IReferenceCounted **)&v5[v18], (int)v16);
          --v17;
          v18 += 3;
        }
        while ( v17 );
        v6 = *a1;
        v9 = a1[1];
        v4 = *(_DWORD *)(a2 + 4);
        v16 = (int *)(*(_DWORD *)a2 + 4 * (v9 - *a1));
      }
      v19 = -1431655765 * ((v4 - (int)v16) >> 2);
      if ( v19 <= 0 )
        goto LABEL_11;
      while ( 1 )
      {
        v20 = *v16;
        *v9 = (glitch::video::CMaterialVertexAttributeMap *)*v16;
        if ( v20 )
          ++*(_DWORD *)(v20 + 4);
        v21 = (glitch::video::CMaterialVertexAttributeMap *)v16[1];
        v9[1] = v21;
        if ( v21 )
          ++*(_DWORD *)v21;
        v22 = (glitch::video::CMaterialVertexAttributeMap *)v16[2];
        v16 += 3;
        v9[2] = v22;
        if ( v22 )
          ++*(_DWORD *)v22;
        if ( !--v19 )
          break;
        v9 += 3;
      }
    }
    else
    {
      if ( v7 <= 0 )
        goto LABEL_9;
      v13 = 0;
      do
      {
        glitch::scene::CMesh::SBuffer::operator=(&v6[v13], (glitch::IReferenceCounted **)&v5[v13], v11);
        --v8;
        v13 += 3;
      }
      while ( v8 );
      v6 += 3 * v7;
      v9 = a1[1];
      while ( v6 != v9 )
      {
        v14 = v6;
        v6 += 3;
        glitch::scene::CMesh::SBuffer::~SBuffer(v14);
LABEL_9:
        ;
      }
    }
    v6 = *a1;
LABEL_11:
    a1[1] = &v6[3 * v7];
  }
  return a1;
}


// ===== 6bc204 std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialVertexAttributeMap ***a1)
{
  glitch::video::CMaterialVertexAttributeMap **v1; // r4
  glitch::video::CMaterialVertexAttributeMap **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 3;
    glitch::scene::CMesh::SBuffer::~SBuffer(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 6bc248 glitch::scene::CMesh::~CMesh() =====
void __fastcall glitch::scene::CMesh::~CMesh(glitch::video::CMaterialVertexAttributeMap ***this)
{
  *this = (glitch::video::CMaterialVertexAttributeMap **)off_988060;
  std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 2);
}


// ===== 6bc27c glitch::scene::CMesh::~CMesh() =====
void __fastcall glitch::scene::CMesh::~CMesh(glitch::video::CMaterialVertexAttributeMap ***this)
{
  glitch::scene::CMesh::~CMesh(this);
  LC_API_FREE_0(this);
}


// ===== 6bc298 glitch::scene::CMesh::~CMesh() =====
void __fastcall glitch::scene::CMesh::~CMesh(glitch::video::CMaterialVertexAttributeMap ***this)
{
  *this = (glitch::video::CMaterialVertexAttributeMap **)off_988060;
  std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 2);
}


// ===== 6bc2cc glitch::scene::CMesh::recalculateBoundingBox(void) =====
int __fastcall glitch::scene::CMesh::recalculateBoundingBox(int this)
{
  int v1; // r10
  int v2; // r5
  _DWORD *v3; // r4
  float *v4; // r11
  int v5; // r8
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r0
  int v12; // r1
  int v13; // [sp+0h] [bp-1Ch] BYREF
  int v14; // [sp+4h] [bp-18h]
  int v15; // [sp+8h] [bp-14h]
  int v16; // [sp+Ch] [bp-10h]
  int v17; // [sp+10h] [bp-Ch]
  int v18; // [sp+14h] [bp-8h]

  v1 = *(_DWORD *)(this + 12);
  v2 = *(_DWORD *)(this + 8);
  v3 = (_DWORD *)this;
  if ( -1431655765 * ((v1 - v2) >> 2) )
  {
    if ( v1 != v2 )
    {
      v4 = (float *)(this + 20);
      v5 = 1;
      do
      {
        while ( 1 )
        {
          v10 = *(_DWORD *)(*(_DWORD *)v2 + 40);
          v11 = *(_DWORD *)(*(_DWORD *)v2 + 20);
          v12 = *(_DWORD *)(*(_DWORD *)v2 + 36);
          v13 = -1082130432;
          v14 = -1082130432;
          v15 = -1082130432;
          v16 = 1065353216;
          v17 = 1065353216;
          v18 = 1065353216;
          glitch::video::CVertexStreams::computeBoundingBox(v11, v12, v10, (float *)&v13);
          if ( !v5 )
            break;
          v6 = v14;
          this = v15;
          v7 = v16;
          v8 = v17;
          v9 = v18;
          v2 += 12;
          v3[5] = v13;
          v3[6] = v6;
          v3[7] = this;
          v3[8] = v7;
          v3[9] = v8;
          v3[10] = v9;
          v5 = 0;
          if ( v2 == v1 )
            return this;
        }
        v2 += 12;
        this = glitch::core::aabbox3d<float>::addInternalBox(v4, (float *)&v13);
        v5 = 0;
      }
      while ( v2 != v1 );
    }
  }
  else
  {
    *(_DWORD *)(this + 28) = 0;
    *(_DWORD *)(this + 32) = 0;
    *(_DWORD *)(this + 36) = 0;
    *(_DWORD *)(this + 40) = 0;
    *(_DWORD *)(this + 20) = 0;
    *(_DWORD *)(this + 24) = 0;
  }
  return this;
}


// ===== 6bc3e4 glitch::scene::CMesh::clone(void) =====
glitch::scene::CMesh *__fastcall glitch::scene::CMesh::clone(glitch::scene::CMesh *this, _DWORD *a2)
{
  glitch::video::CMaterialVertexAttributeMap ***v4; // r4

  v4 = (glitch::video::CMaterialVertexAttributeMap ***)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v4);
  if ( v4 )
    v4[1] = (glitch::video::CMaterialVertexAttributeMap **)((char *)v4[1] + 1);
  std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
    v4 + 2,
    (int)(a2 + 2));
  v4[5] = (glitch::video::CMaterialVertexAttributeMap **)a2[5];
  v4[6] = (glitch::video::CMaterialVertexAttributeMap **)a2[6];
  v4[7] = (glitch::video::CMaterialVertexAttributeMap **)a2[7];
  v4[8] = (glitch::video::CMaterialVertexAttributeMap **)a2[8];
  v4[9] = (glitch::video::CMaterialVertexAttributeMap **)a2[9];
  v4[10] = (glitch::video::CMaterialVertexAttributeMap **)a2[10];
  *(_DWORD *)this = v4;
  v4[1] = (glitch::video::CMaterialVertexAttributeMap **)((char *)v4[1] + 1);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v4);
  return this;
}


// ===== 6bc470 std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CMesh::SBuffer const&) =====
void __fastcall std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::video::CMaterialVertexAttributeMap ***a1,
        glitch::video::CMaterialVertexAttributeMap **a2)
{
  glitch::video::CMaterialVertexAttributeMap **v2; // r3
  glitch::video::CMaterialVertexAttributeMap **v3; // r6
  glitch::video::CMaterialVertexAttributeMap *v6; // r2
  glitch::video::CMaterialVertexAttributeMap *v7; // r2
  glitch::video::CMaterialVertexAttributeMap *v8; // r2
  unsigned int v9; // r2
  unsigned int v10; // r1
  size_t v11; // r7
  glitch::video::CMaterialVertexAttributeMap **v12; // r0
  int v13; // r12
  glitch::video::CMaterialVertexAttributeMap **v14; // r3
  glitch::video::CMaterialVertexAttributeMap **v15; // r8
  int v16; // r2
  int v17; // r6
  glitch::video::CMaterialVertexAttributeMap **v18; // r10
  int v19; // r0
  glitch::video::CMaterialVertexAttributeMap *v20; // r1
  int *v21; // r1
  int *v22; // r1
  glitch::video::CMaterialVertexAttributeMap *v23; // r3
  int *v24; // r3
  int *v25; // r3
  glitch::video::CMaterialVertexAttributeMap **v26; // r10
  glitch::video::CMaterialVertexAttributeMap **v27; // r5
  glitch::video::CMaterialVertexAttributeMap **v28; // r6

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v9 = -1431655765 * (v3 - *a1);
    if ( v9 )
      v10 = 1431655766 * (v3 - *a1);
    else
      v10 = 1;
    if ( v10 > 0x15555555 || v9 > v10 )
      v11 = -1;
    else
      v11 = 3 * v10;
    v12 = (glitch::video::CMaterialVertexAttributeMap **)GlitchAlloc(v11 * 4, 0);
    v14 = *a1;
    v15 = v12;
    v16 = v3 - *a1;
    v17 = -1431655765 * v16;
    if ( -1431655765 * v16 > 0 )
    {
      v19 = -1431655765 * v16;
      v16 = (int)v15;
      do
      {
        v20 = *v14;
        *(_DWORD *)v16 = *v14;
        if ( v20 )
        {
          v13 = *((_DWORD *)v20 + 1) + 1;
          *((_DWORD *)v20 + 1) = v13;
        }
        v21 = (int *)v14[1];
        *(_DWORD *)(v16 + 4) = v21;
        if ( v21 )
        {
          v13 = *v21 + 1;
          *v21 = v13;
        }
        v22 = (int *)v14[2];
        v14 += 3;
        *(_DWORD *)(v16 + 8) = v22;
        if ( v22 )
          v13 = *v22;
        v16 += 12;
        if ( v22 )
          *v22 = ++v13;
        --v19;
      }
      while ( v19 );
      v18 = &v15[3 * v17];
    }
    else
    {
      v18 = v12;
    }
    v23 = *a2;
    *v18 = *a2;
    if ( v23 )
    {
      v16 = *((_DWORD *)v23 + 1) + 1;
      *((_DWORD *)v23 + 1) = v16;
    }
    v24 = (int *)a2[1];
    v18[1] = (glitch::video::CMaterialVertexAttributeMap *)v24;
    if ( v24 )
    {
      v16 = *v24 + 1;
      *v24 = v16;
    }
    v25 = (int *)a2[2];
    v18[2] = (glitch::video::CMaterialVertexAttributeMap *)v25;
    if ( v25 )
      v16 = *v25;
    v26 = v18 + 3;
    if ( v25 )
      *v25 = v16 + 1;
    v27 = a1[1];
    v28 = *a1;
    if ( v27 != *a1 )
    {
      do
      {
        v27 -= 3;
        glitch::scene::CMesh::SBuffer::~SBuffer(v27);
      }
      while ( v28 != v27 );
      v28 = *a1;
    }
    GlitchFree(v28);
    a1[2] = &v15[v11];
    *a1 = v15;
    a1[1] = v26;
  }
  else
  {
    v6 = *a2;
    *v2 = *a2;
    if ( v6 )
      ++*((_DWORD *)v6 + 1);
    v7 = a2[1];
    v2[1] = v7;
    if ( v7 )
      ++*(_DWORD *)v7;
    v8 = a2[2];
    v2[2] = v8;
    if ( v8 )
      ++*(_DWORD *)v8;
    a1[1] += 3;
  }
}


// ===== 6bc664 glitch::scene::CMesh::addMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
void __fastcall glitch::scene::CMesh::addMeshBuffer(
        int a1,
        glitch::video::CMaterialVertexAttributeMap **a2,
        glitch::video::CMaterialVertexAttributeMap **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  glitch::video::CMaterialVertexAttributeMap *v4; // r1
  glitch::video::CMaterialVertexAttributeMap ***v5; // r0
  glitch::video::CMaterialVertexAttributeMap *v6; // r2
  glitch::video::CMaterialVertexAttributeMap *v7; // r3
  glitch::video::CMaterialVertexAttributeMap *v8[3]; // [sp+4h] [bp-Ch] BYREF

  v4 = *a2;
  if ( v4 )
  {
    v8[0] = v4;
    v5 = (glitch::video::CMaterialVertexAttributeMap ***)(a1 + 8);
    ++*((_DWORD *)v4 + 1);
    v6 = *a3;
    v8[1] = v6;
    if ( v6 )
      ++*(_DWORD *)v6;
    v7 = *a4;
    v8[2] = v7;
    if ( v7 )
      ++*(_DWORD *)v7;
    std::vector<glitch::scene::CMesh::SBuffer,glitch::core::SAllocator<glitch::scene::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v5,
      v8);
    glitch::scene::CMesh::SBuffer::~SBuffer(v8);
  }
}


// ===== 6bc6d8 glitch::scene::CMeshBuffer::onDelete(void) =====
int __fastcall glitch::scene::CMeshBuffer::onDelete(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 48);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 8))(*(_DWORD *)(this + 48));
  return this;
}


// ===== 6bc6fc `global constructor keyed to'.._source_glitch_scene_CMeshBuffer.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CMeshBuffer.cpp()
{
  dword_9F7B64 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B60 = 1056964608;
}


// ===== 6bc71c glitch::res::onDemandPointer<uint>::~onDemandPointer() =====
_DWORD **__fastcall glitch::res::onDemandPointer<unsigned int>::~onDemandPointer(_DWORD **a1)
{
  _DWORD *v1; // r4
  void *v4; // r0

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*v1)-- == 1 )
    {
      v4 = (void *)v1[3];
      if ( v4 )
        operator delete[](v4);
      v1[3] = 0;
    }
    *a1 = nullptr;
  }
  return a1;
}


// ===== 6bc76c glitch::res::onDemandPointer<uint>::operator=(glitch::res::onDemandPointer<uint> const&) =====
_DWORD **__fastcall glitch::res::onDemandPointer<unsigned int>::operator=(_DWORD **a1, _DWORD **a2)
{
  _DWORD *v4; // r4
  void *v6; // r0

  if ( *a2 )
    ++**a2;
  v4 = *a1;
  if ( *a1 )
  {
    if ( (*v4)-- == 1 )
    {
      v6 = (void *)v4[3];
      if ( v6 )
        operator delete[](v6);
      v4[3] = 0;
    }
  }
  *a1 = *a2;
  return a1;
}


// ===== 6bc7d4 glitch::res::onDemandPointer<ushort>::~onDemandPointer() =====
_DWORD **__fastcall glitch::res::onDemandPointer<unsigned short>::~onDemandPointer(_DWORD **a1)
{
  _DWORD *v1; // r4
  void *v4; // r0

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*v1)-- == 1 )
    {
      v4 = (void *)v1[3];
      if ( v4 )
        operator delete[](v4);
      v1[3] = 0;
    }
    *a1 = nullptr;
  }
  return a1;
}


// ===== 6bc824 glitch::res::onDemandPointer<ushort>::operator=(glitch::res::onDemandPointer<ushort> const&) =====
_DWORD **__fastcall glitch::res::onDemandPointer<unsigned short>::operator=(_DWORD **a1, _DWORD **a2)
{
  _DWORD *v4; // r4
  void *v6; // r0

  if ( *a2 )
    ++**a2;
  v4 = *a1;
  if ( *a1 )
  {
    if ( (*v4)-- == 1 )
    {
      v6 = (void *)v4[3];
      if ( v6 )
        operator delete[](v6);
      v4[3] = 0;
    }
  }
  *a1 = *a2;
  return a1;
}


// ===== 6bc88c boost::intrusive_ptr<glitch::video::IBuffer>::operator=(boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::IBuffer>::operator=(
        glitch::IReferenceCounted **a1,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *v2; // r3
  glitch::IReferenceCounted *v4; // r0

  v2 = *a2;
  if ( *a2 )
    ++*((_DWORD *)v2 + 1);
  v4 = *a1;
  *a1 = v2;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return a1;
}


// ===== 6bc8c4 glitch::scene::CMeshBuffer::~CMeshBuffer() =====
void __fastcall glitch::scene::CMeshBuffer::~CMeshBuffer(glitch::scene::CMeshBuffer *this)
{
  int v1; // r1
  glitch::IReferenceCounted *v3; // r0
  glitch::video::CVertexStreams *v4; // r5
  bool v5; // zf
  _DWORD *v6; // r5
  void *v7; // r0
  _DWORD *v8; // r5
  void *v9; // r0
  _DWORD *v10; // r5
  void *v11; // r0

  v1 = *((_DWORD *)this + 12);
  *(_DWORD *)this = off_988098;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 12) = 0;
  }
  v3 = *((glitch::IReferenceCounted **)this + 6);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::video::CVertexStreams **)this + 5);
  if ( v4 )
  {
    v5 = (*(_DWORD *)v4)-- == 1;
    if ( v5 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v4);
      LC_API_FREE_0(v4);
    }
  }
  v6 = *((_DWORD **)this + 4);
  if ( v6 )
  {
    v5 = (*v6)-- == 1;
    if ( v5 )
    {
      v7 = (void *)v6[3];
      if ( v7 )
        operator delete[](v7);
      v6[3] = 0;
    }
    *((_DWORD *)this + 4) = 0;
  }
  v8 = *((_DWORD **)this + 3);
  if ( v8 )
  {
    v5 = (*v8)-- == 1;
    if ( v5 )
    {
      v9 = (void *)v8[3];
      if ( v9 )
        operator delete[](v9);
      v8[3] = 0;
    }
    *((_DWORD *)this + 3) = 0;
  }
  v10 = *((_DWORD **)this + 2);
  if ( v10 )
  {
    v5 = (*v10)-- == 1;
    if ( v5 )
    {
      v11 = (void *)v10[3];
      if ( v11 )
        operator delete[](v11);
      v10[3] = 0;
    }
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 6bca1c glitch::scene::CMeshBuffer::~CMeshBuffer() =====
void __fastcall glitch::scene::CMeshBuffer::~CMeshBuffer(glitch::scene::CMeshBuffer *this)
{
  glitch::scene::CMeshBuffer::~CMeshBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 6bca38 glitch::scene::CMeshBuffer::~CMeshBuffer() =====
void __fastcall glitch::scene::CMeshBuffer::~CMeshBuffer(glitch::scene::CMeshBuffer *this)
{
  int v1; // r1
  glitch::IReferenceCounted *v3; // r0
  glitch::video::CVertexStreams *v4; // r5
  bool v5; // zf
  _DWORD *v6; // r5
  void *v7; // r0
  _DWORD *v8; // r5
  void *v9; // r0
  _DWORD *v10; // r5
  void *v11; // r0

  v1 = *((_DWORD *)this + 12);
  *(_DWORD *)this = off_988098;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 12) = 0;
  }
  v3 = *((glitch::IReferenceCounted **)this + 6);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::video::CVertexStreams **)this + 5);
  if ( v4 )
  {
    v5 = (*(_DWORD *)v4)-- == 1;
    if ( v5 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v4);
      LC_API_FREE_0(v4);
    }
  }
  v6 = *((_DWORD **)this + 4);
  if ( v6 )
  {
    v5 = (*v6)-- == 1;
    if ( v5 )
    {
      v7 = (void *)v6[3];
      if ( v7 )
        operator delete[](v7);
      v6[3] = 0;
    }
    *((_DWORD *)this + 4) = 0;
  }
  v8 = *((_DWORD **)this + 3);
  if ( v8 )
  {
    v5 = (*v8)-- == 1;
    if ( v5 )
    {
      v9 = (void *)v8[3];
      if ( v9 )
        operator delete[](v9);
      v8[3] = 0;
    }
    *((_DWORD *)this + 3) = 0;
  }
  v10 = *((_DWORD **)this + 2);
  if ( v10 )
  {
    v5 = (*v10)-- == 1;
    if ( v5 )
    {
      v11 = (void *)v10[3];
      if ( v11 )
        operator delete[](v11);
      v10[3] = 0;
    }
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 6bcb90 glitch::scene::CMeshBuffer::clone(void) =====
glitch::scene::CMeshBuffer *__fastcall glitch::scene::CMeshBuffer::clone(
        glitch::scene::CMeshBuffer *this,
        int a2,
        int a3,
        int a4)
{
  glitch::video::CVertexStreams *v4; // r5
  int v7; // r1
  char v8; // r8
  _DWORD *v9; // r0
  glitch::video::CVertexStreams *v10; // r3
  int v11; // r3
  __int16 v12; // r4
  glitch::video::CVertexStreams *v13; // r4
  bool v14; // zf
  glitch::video::CVertexStreams *v16; // [sp+4h] [bp-4h] BYREF

  v4 = *(glitch::video::CVertexStreams **)(a2 + 20);
  if ( v4 )
    a4 = *(_DWORD *)v4;
  v7 = *(_DWORD *)(a2 + 20);
  if ( v4 )
    *(_DWORD *)v4 = a4 + 1;
  glitch::video::CVertexStreams::clone(&v16, v7);
  v8 = *(_BYTE *)(a2 + 52);
  v9 = operator new(0x38u, 0);
  v9[1] = 0;
  v9[4] = 0;
  *v9 = off_988098;
  v9[2] = 0;
  v9[3] = 0;
  v10 = v16;
  v9[5] = v16;
  if ( v10 )
    ++*(_DWORD *)v10;
  v11 = *(_DWORD *)(a2 + 24);
  v9[6] = v11;
  if ( v11 )
    ++*(_DWORD *)(v11 + 4);
  v9[7] = *(_DWORD *)(a2 + 28);
  v9[8] = *(_DWORD *)(a2 + 32);
  v9[9] = *(_DWORD *)(a2 + 36);
  v9[10] = *(_DWORD *)(a2 + 40);
  *((_WORD *)v9 + 22) = *(_WORD *)(a2 + 44);
  v12 = *(_WORD *)(a2 + 46);
  v9[12] = 0;
  *((_WORD *)v9 + 23) = v12;
  *((_BYTE *)v9 + 52) = v8;
  *(_DWORD *)this = v9;
  ++v9[1];
  v13 = v16;
  if ( v16 )
  {
    v14 = (*(_DWORD *)v16)-- == 1;
    if ( v14 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v13);
      LC_API_FREE_0(v13);
    }
  }
  if ( v4 )
  {
    v14 = (*(_DWORD *)v4)-- == 1;
    if ( v14 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v4);
      LC_API_FREE_0(v4);
    }
  }
  return this;
}


// ===== 6bccf0 glitch::scene::`anonymous namespace'::addStream(glitch::video::IVideoDriver *,glitch::collada::SMesh &,glitch::collada::SMeshBuffer &,char,glitch::video::SVertexStreamData *,uchar,glitch::collada::SBufferConfig const&) =====
int __fastcall glitch::scene::`anonymous namespace'::addStream(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        unsigned __int8 a6,
        int *a7)
{
  __int16 *v9; // r2
  glitch::IReferenceCounted *v10; // r4
  int v11; // r12
  int v12; // r2
  int v13; // r8
  int v14; // r3
  __int16 v15; // r0
  int v16; // r1
  int v17; // r10
  __int16 v18; // r2
  int v20; // r3
  int v21; // r9
  int v22; // r11
  int v23; // r11
  glitch::IReferenceCounted *v24[2]; // [sp+1Ch] [bp-8h] BYREF

  if ( *a2 )
  {
    v9 = (__int16 *)a2[2];
    v10 = *((glitch::IReferenceCounted **)v9 + 10);
    if ( !v10 )
      goto LABEL_9;
    goto LABEL_3;
  }
  v20 = a2[2];
  v21 = 20 * a4;
  v22 = v20 + 20 * a4;
  v10 = *(glitch::IReferenceCounted **)(v22 + 16);
  if ( v10 )
  {
    v23 = *a7;
    if ( *a7 != *((unsigned __int8 *)v10 + 17) )
    {
      if ( (*((_BYTE *)v10 + 18) & 8) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v10 + 16))(v10);
      *((_BYTE *)v10 + 17) = v23;
      if ( (unsigned __int8)v23 != 4 && *((_DWORD *)v10 + 2) )
        *((_BYTE *)v10 + 18) |= 2u;
      v10 = *(glitch::IReferenceCounted **)(a2[2] + v21 + 16);
    }
  }
  else
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a1 + 120))(
      v24,
      a1,
      0,
      *a7,
      glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(_DWORD *)(v20 + 20 * a4)]
    * *(_DWORD *)(v22 + 4)
    * (*(_DWORD *)(v20 + 20 * *(char *)(a3 + 12) + 8)
     / 3),
      *(_DWORD *)(v22 + 12),
      0);
    boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v22 + 16), v24);
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(v24);
    v10 = *(glitch::IReferenceCounted **)(a2[2] + v21 + 16);
  }
  if ( *((_BYTE *)a7 + 4)
    && ((*((_BYTE *)v10 + 18) & 8) == 0 || (*((_BYTE *)v10 + 18) & 2) != 0)
    && *((_BYTE *)v10 + 17) != 4 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v10 + 12))(
      v10,
      *((unsigned __int8 *)a7 + 5));
    v10 = *(glitch::IReferenceCounted **)(a2[2] + v21 + 16);
  }
  if ( v10 )
LABEL_3:
    ++*((_DWORD *)v10 + 1);
  v11 = *a2;
  if ( *a2 )
  {
    v9 = (__int16 *)a2[2];
LABEL_9:
    v16 = *(_DWORD *)(*((_DWORD *)v9 + 6) + 4 * a4);
    v11 = *(_DWORD *)(*((_DWORD *)v9 + 2) + 4 * a4);
    v14 = *(_DWORD *)(*((_DWORD *)v9 + 4) + 4 * a4);
    v18 = *v9;
    *(_DWORD *)(a5 + 16 * a6) = v10;
    v17 = a5 + 16 * a6;
    if ( v10 )
      goto LABEL_6;
LABEL_10:
    *(_WORD *)(v17 + 14) = v18;
    *(_DWORD *)(v17 + 4) = v11;
    *(_DWORD *)(v17 + 8) = v14;
    *(_WORD *)(v17 + 12) = v16;
    return (unsigned __int8)(a6 + 1);
  }
  v12 = a2[2];
  v13 = 20 * a4;
  v14 = *(_DWORD *)(v12 + v13);
  v15 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v14];
  LOWORD(v16) = *(_DWORD *)(v12 + v13 + 4);
  *(_DWORD *)(a5 + 16 * a6) = v10;
  v17 = a5 + 16 * a6;
  v18 = v16 * v15;
  if ( !v10 )
    goto LABEL_10;
LABEL_6:
  ++*((_DWORD *)v10 + 1);
  *(_WORD *)(v17 + 14) = v18;
  *(_DWORD *)(v17 + 4) = v11;
  *(_DWORD *)(v17 + 8) = v14;
  *(_WORD *)(v17 + 12) = v16;
  glitch::IReferenceCounted::drop(v10);
  return (unsigned __int8)(a6 + 1);
}


// ===== 6bcf80 glitch::scene::CMeshBuffer::CMeshBuffer(glitch::video::IVideoDriver *,glitch::collada::SMesh &,uint,glitch::collada::SBufferConfig const&,glitch::collada::SBufferConfig const&,bool) =====
int __fastcall glitch::scene::CMeshBuffer::CMeshBuffer(int a1, int a2, int *a3, int a4, int *a5, _DWORD *a6, char a7)
{
  int v8; // r5
  _DWORD *v11; // r1
  int v12; // r0
  int v13; // lr
  int v14; // r12
  __int16 v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // r0
  int v19; // r5
  int v20; // r10
  int v21; // r11
  int v22; // r7
  int v23; // r10
  int v24; // r7
  int *v25; // r7
  int v26; // r11
  unsigned int v27; // r10
  int v28; // r8
  int v29; // r3
  int v30; // r3
  int v31; // r3
  int v32; // r11
  int v33; // r11
  int v34; // r3
  int v35; // r3
  glitch::video::CVertexStreams *v36; // r3
  glitch::video::CVertexStreams *v37; // r10
  bool v38; // zf
  glitch::video::CVertexStreams *v39; // r10
  int v40; // r3
  int *v41; // r3
  int v42; // r1
  _DWORD *v43; // r2
  int v44; // r12
  int v45; // r0
  int v46; // r12
  int v47; // r1
  _DWORD *v48; // r3
  int v49; // r0
  int v50; // r2
  char *v51; // r1
  int v52; // r3
  _DWORD *v53; // r3
  int v54; // r10
  int v55; // r9
  _DWORD *v56; // r12
  int v57; // r5
  int v58; // r7
  int v59; // r10
  _DWORD *v60; // r3
  glitch::IReferenceCounted **v61; // r8
  glitch::IReferenceCounted **v62; // r5
  glitch::IReferenceCounted *v63; // r0
  int v65; // r1
  int v66; // r1
  glitch::IReferenceCounted *v67; // r3
  glitch::IReferenceCounted *v68; // r0
  int v69; // r3
  glitch::IReferenceCounted *v70; // r0
  _BYTE *v71; // r3
  int v72; // r3
  int v73; // r3
  int v74; // r1
  int v75; // r1
  _DWORD *v76; // r7
  _DWORD *v77; // r8
  void *v78; // r0
  void *v79; // r0
  int v80; // r1
  _DWORD *v81; // r2
  glitch::IReferenceCounted **v82; // r8
  _BYTE *v83; // r3
  int v84; // r1
  int v85; // r1
  glitch::core *v86; // [sp+10h] [bp-34h]
  glitch::core *v87; // [sp+10h] [bp-34h]
  glitch::core *v88; // [sp+10h] [bp-34h]
  glitch::core *v89; // [sp+10h] [bp-34h]
  glitch::video::CVertexStreams *v90; // [sp+18h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v91; // [sp+1Ch] [bp-28h] BYREF
  glitch::IReferenceCounted *v92; // [sp+20h] [bp-24h] BYREF
  glitch::IReferenceCounted *v93; // [sp+24h] [bp-20h] BYREF
  _DWORD *v94; // [sp+28h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v95; // [sp+2Ch] [bp-18h] BYREF
  _DWORD *v96; // [sp+30h] [bp-14h] BYREF
  _DWORD *v97; // [sp+34h] [bp-10h] BYREF
  glitch::IReferenceCounted *v98; // [sp+38h] [bp-Ch] BYREF
  _DWORD *v99; // [sp+3Ch] [bp-8h] BYREF

  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_988098;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v8 = 56 * a4;
  v11 = (_DWORD *)(a3[4] + 56 * a4);
  v12 = v11[9];
  v13 = glitch::scene::`anonymous namespace'::ColladaPrimitiveMap[*v11];
  v14 = v11[10];
  if ( v12 < 0x10000 )
    v15 = 1;
  else
    v15 = 2;
  v16 = v11[12];
  v17 = v11[8];
  v18 = v12 + 1;
  *(_DWORD *)(a1 + 24) = v16;
  if ( v16 )
    ++*(_DWORD *)(v16 + 4);
  *(_DWORD *)(a1 + 32) = v14;
  *(_DWORD *)(a1 + 36) = v17;
  *(_DWORD *)(a1 + 40) = v18;
  *(_WORD *)(a1 + 44) = v15;
  *(_WORD *)(a1 + 46) = v13;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  v19 = a3[4] + v8;
  v20 = *(_DWORD *)(v19 + 48);
  if ( v20 )
  {
    v21 = *a6;
    if ( *a6 == *(unsigned __int8 *)(v20 + 17) )
      goto LABEL_11;
    if ( (*(_BYTE *)(v20 + 18) & 8) != 0 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v20 + 16))(*(_DWORD *)(v19 + 48));
      *(_BYTE *)(v20 + 17) = v21;
      if ( (unsigned __int8)v21 == 4 )
        goto LABEL_11;
    }
    else
    {
      *(_BYTE *)(v20 + 17) = v21;
      if ( (unsigned __int8)v21 == 4 )
        goto LABEL_11;
    }
    if ( *(_DWORD *)(v20 + 8) )
      *(_BYTE *)(v20 + 18) |= 2u;
  }
  else
  {
    if ( a7 )
    {
      v72 = *(_DWORD *)(v19 + 40);
      if ( *(int *)(v19 + 36) < 0x10000 )
        v73 = 2 * v72;
      else
        v73 = 4 * v72;
      if ( v73 < 0x10000 )
      {
        v96 = *(_DWORD **)(v19 + 44);
        if ( v96 )
          ++*v96;
        glitch::res::onDemandPointer<unsigned short>::operator=((_DWORD **)(a1 + 8), &v96);
        glitch::res::onDemandPointer<unsigned short>::~onDemandPointer(&v96);
        v84 = *(_DWORD *)(v19 + 40);
        if ( *(int *)(v19 + 36) < 0x10000 )
          v85 = 2 * v84;
        else
          v85 = 4 * v84;
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
          &v95,
          a2,
          1,
          *a6,
          v85,
          *(_DWORD *)(*(_DWORD *)(a1 + 8) + 12),
          0);
        boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v19 + 48), &v95);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v95);
        v94 = nullptr;
        glitch::res::onDemandPointer<unsigned int>::operator=((_DWORD **)(a1 + 12), &v94);
        glitch::res::onDemandPointer<unsigned int>::~onDemandPointer(&v94);
      }
      else
      {
        v99 = *(_DWORD **)(v19 + 44);
        if ( v99 )
          ++*v99;
        glitch::res::onDemandPointer<unsigned int>::operator=((_DWORD **)(a1 + 12), &v99);
        glitch::res::onDemandPointer<unsigned int>::~onDemandPointer(&v99);
        v74 = *(_DWORD *)(v19 + 40);
        if ( *(int *)(v19 + 36) < 0x10000 )
          v75 = 2 * v74;
        else
          v75 = 4 * v74;
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
          &v98,
          a2,
          1,
          *a6,
          v75,
          *(_DWORD *)(*(_DWORD *)(a1 + 12) + 12),
          0);
        boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v19 + 48), &v98);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v98);
        v97 = nullptr;
        glitch::res::onDemandPointer<unsigned short>::operator=((_DWORD **)(a1 + 8), &v97);
        glitch::res::onDemandPointer<unsigned short>::~onDemandPointer(&v97);
      }
    }
    else
    {
      v65 = *(_DWORD *)(v19 + 40);
      if ( *(int *)(v19 + 36) < 0x10000 )
        v66 = 2 * v65;
      else
        v66 = 4 * v65;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v93,
        a2,
        1,
        *a6,
        v66,
        *(_DWORD *)(v19 + 44),
        0);
      v67 = v93;
      if ( v93 )
        ++*((_DWORD *)v93 + 1);
      v68 = *(glitch::IReferenceCounted **)(v19 + 48);
      *(_DWORD *)(v19 + 48) = v67;
      if ( v68 )
        glitch::IReferenceCounted::drop(v68);
      if ( v93 )
        glitch::IReferenceCounted::drop(v93);
    }
    v69 = *(_DWORD *)(v19 + 48);
    if ( v69 )
      ++*(_DWORD *)(v69 + 4);
    v70 = *(glitch::IReferenceCounted **)(a1 + 24);
    *(_DWORD *)(a1 + 24) = v69;
    if ( v70 )
    {
      glitch::IReferenceCounted::drop(v70);
      if ( !*((_BYTE *)a6 + 4) )
        goto LABEL_12;
      goto LABEL_83;
    }
  }
LABEL_11:
  if ( !*((_BYTE *)a6 + 4) )
    goto LABEL_12;
LABEL_83:
  v71 = *(_BYTE **)(v19 + 48);
  v17 = *((unsigned __int8 *)a6 + 5);
  if ( ((v71[18] & 8) == 0 || (v71[18] & 2) != 0) && v71[17] != 4 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v71 + 12))(*(_DWORD *)(v19 + 48));
LABEL_12:
  if ( *a3 )
  {
    v22 = a3[2];
    v23 = *(_DWORD *)(v22 + 40);
    if ( v23 )
    {
      v24 = *a5;
      if ( *a5 != *(unsigned __int8 *)(v23 + 17) )
      {
        if ( (*(_BYTE *)(v23 + 18) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v23 + 16))(v23);
        *(_BYTE *)(v23 + 17) = v24;
        if ( (unsigned __int8)v24 != 4 && *(_DWORD *)(v23 + 8) )
          *(_BYTE *)(v23 + 18) |= 2u;
      }
    }
    else if ( a7 )
    {
      v76 = *(_DWORD **)(v22 + 36);
      if ( v76 )
        *v76 += 2;
      v77 = *(_DWORD **)(a1 + 16);
      if ( v77 )
      {
        v38 = (*v77)-- == 1;
        if ( v38 )
        {
          v78 = (void *)v77[3];
          if ( v78 )
            operator delete[](v78);
          v77[3] = 0;
        }
      }
      *(_DWORD *)(a1 + 16) = v76;
      if ( v76 )
      {
        v38 = (*v76)-- == 1;
        if ( v38 )
        {
          v79 = (void *)v76[3];
          if ( v79 )
            operator delete[](v79);
          v76[3] = 0;
        }
      }
      v80 = *a3;
      v81 = (_DWORD *)a3[2];
      if ( *a3 )
        v80 = a3[1];
      v82 = (glitch::IReferenceCounted **)(v81 + 10);
      if ( *a3 )
        v80 *= *v81;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v92,
        a2,
        0,
        *a5,
        v80,
        *(_DWORD *)(*(_DWORD *)(a1 + 16) + 12),
        0);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=(v82, &v92);
      boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v92);
    }
    else
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v91,
        a2,
        0,
        *a5,
        *(_DWORD *)v22 * a3[1],
        *(_DWORD *)(v22 + 36),
        0);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v22 + 40), &v91);
      boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v91);
    }
    v17 = (int)a5;
    if ( *((_BYTE *)a5 + 4) )
    {
      v17 = *((unsigned __int8 *)a5 + 5);
      v83 = *(_BYTE **)(a3[2] + 40);
      if ( ((v83[18] & 8) == 0 || (v83[18] & 2) != 0) && v83[17] != 4 )
        (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v83 + 12))(*(_DWORD *)(a3[2] + 40), v17);
    }
  }
  v25 = (int *)glitch::core::allocProcessBuffer((glitch::core *)&elf_hash_bucket[65], v17);
  v26 = 0;
  v27 = 1;
  v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *(char *)(v19 + 12), (int)v25, 0, a5);
  v86 = (glitch::core *)v19;
  do
  {
    if ( *((char *)v86 + 16) < 0 )
      break;
    v27 |= 2 << v26++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v86 + 16), (int)v25, v28, a5);
    v86 = (glitch::core *)((char *)v86 + 1);
  }
  while ( v26 != 4 );
  v29 = *(char *)(v19 + 13);
  if ( v29 >= 0 )
  {
    v27 |= 0x20000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v29, (int)v25, v28, a5);
  }
  v30 = *(char *)(v19 + 14);
  if ( v30 >= 0 )
  {
    v27 |= 0x40000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v30, (int)v25, v28, a5);
  }
  v31 = *(char *)(v19 + 15);
  if ( v31 >= 0 )
  {
    v27 |= 0x80000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v31, (int)v25, v28, a5);
  }
  v87 = (glitch::core *)v19;
  v32 = 0;
  do
  {
    if ( *((char *)v87 + 24) < 0 )
      break;
    v27 |= 0x100000 << v32++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v87 + 24), (int)v25, v28, a5);
    v87 = (glitch::core *)((char *)v87 + 1);
  }
  while ( v32 != 4 );
  v88 = (glitch::core *)v19;
  v33 = 0;
  do
  {
    if ( *((char *)v88 + 20) < 0 )
      break;
    v27 |= 0x1000000 << v33++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v88 + 20), (int)v25, v28, a5);
    v88 = (glitch::core *)((char *)v88 + 1);
  }
  while ( v33 != 4 );
  v34 = *(char *)(v19 + 28);
  if ( v34 >= 0 )
  {
    v27 |= 0x10000000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v34, (int)v25, v28, a5);
  }
  v35 = *(char *)(v19 + 29);
  if ( v35 >= 0 )
  {
    v27 |= 0x20000000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v35, (int)v25, v28, a5);
  }
  glitch::video::CVertexStreams::allocate(&v90, v27);
  v36 = v90;
  if ( v90 )
    ++*(_DWORD *)v90;
  v37 = *(glitch::video::CVertexStreams **)(a1 + 20);
  *(_DWORD *)(a1 + 20) = v36;
  if ( v37 )
  {
    v38 = (*(_DWORD *)v37)-- == 1;
    if ( v38 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v37);
      LC_API_FREE_0(v37);
    }
  }
  v39 = v90;
  if ( v90 )
  {
    v38 = (*(_DWORD *)v90)-- == 1;
    if ( v38 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v39);
      LC_API_FREE_0(v39);
    }
  }
  glitch::video::CVertexStreams::setupStreams(*(glitch::video::CVertexStreams **)(a1 + 20), v25, -1, 0);
  v40 = *a3;
  if ( *a3 )
    v40 = a3[1];
  *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8) = v40;
  if ( *a3 )
  {
    v41 = *(int **)(*(_DWORD *)(a3[2] + 32) + 4 * *(char *)(v19 + 12));
    if ( v41 )
    {
      v42 = v41[1];
      v43 = *(_DWORD **)(*(_DWORD *)(a1 + 20) + 16);
      v44 = *v41;
      v43[2] = v41[2];
      *v43 = v44;
      v43[1] = v42;
      v45 = v41[5];
      v46 = v41[3];
      v47 = v41[4];
      v48 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + 12);
      *v48 = v46;
      v48[2] = v45;
      v48[1] = v47;
      *(_WORD *)(*(_DWORD *)(a1 + 20) + 14) |= 4u;
    }
  }
  v49 = v19;
  v50 = 36;
  v51 = nullptr;
  v89 = (glitch::core *)v25;
  do
  {
    v52 = *(char *)(v49 + 16);
    if ( v52 < 0 )
      break;
    if ( *a3 )
    {
      v53 = *(_DWORD **)(*(_DWORD *)(a3[2] + 32) + 4 * v52);
      if ( v53 )
      {
        v54 = v53[2];
        v55 = v53[1];
        v56 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + v50 - 12);
        *v56 = *v53;
        v56[2] = v54;
        v56[1] = v55;
        v57 = v53[5];
        v58 = v53[3];
        v59 = v53[4];
        v60 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + v50);
        *v60 = v58;
        v60[2] = v57;
        v60[1] = v59;
        *(_WORD *)(*(_DWORD *)(a1 + 20) + 14) |= 8 << (char)v51;
      }
    }
    ++v51;
    ++v49;
    v50 += 24;
  }
  while ( v51 != byte_4 );
  v61 = (glitch::IReferenceCounted **)((char *)v89 + 16 * v28);
  if ( v89 != (glitch::core *)v61 )
  {
    v62 = (glitch::IReferenceCounted **)v89;
    do
    {
      v63 = *v62;
      v62 += 4;
      if ( v63 )
        glitch::IReferenceCounted::drop(v63);
    }
    while ( v61 != v62 );
  }
  if ( v89 )
    glitch::core::releaseProcessBuffer(v89, v51);
  return a1;
}


// ===== 6bd9f8 glitch::scene::CMeshBuffer::CMeshBuffer(glitch::video::IVideoDriver *,glitch::collada::SMesh &,uint,glitch::collada::SBufferConfig const&,glitch::collada::SBufferConfig const&,bool) =====
int __fastcall glitch::scene::CMeshBuffer::CMeshBuffer(int a1, int a2, int *a3, int a4, int *a5, _DWORD *a6, char a7)
{
  int v8; // r5
  _DWORD *v11; // r1
  int v12; // r0
  int v13; // lr
  int v14; // r12
  __int16 v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // r0
  int v19; // r5
  int v20; // r10
  int v21; // r11
  int v22; // r7
  int v23; // r10
  int v24; // r7
  int *v25; // r7
  int v26; // r11
  unsigned int v27; // r10
  int v28; // r8
  int v29; // r3
  int v30; // r3
  int v31; // r3
  int v32; // r11
  int v33; // r11
  int v34; // r3
  int v35; // r3
  glitch::video::CVertexStreams *v36; // r3
  glitch::video::CVertexStreams *v37; // r10
  bool v38; // zf
  glitch::video::CVertexStreams *v39; // r10
  int v40; // r3
  int *v41; // r3
  int v42; // r1
  _DWORD *v43; // r2
  int v44; // r12
  int v45; // r0
  int v46; // r12
  int v47; // r1
  _DWORD *v48; // r3
  int v49; // r0
  int v50; // r2
  char *v51; // r1
  int v52; // r3
  _DWORD *v53; // r3
  int v54; // r10
  int v55; // r9
  _DWORD *v56; // r12
  int v57; // r5
  int v58; // r7
  int v59; // r10
  _DWORD *v60; // r3
  glitch::IReferenceCounted **v61; // r8
  glitch::IReferenceCounted **v62; // r5
  glitch::IReferenceCounted *v63; // r0
  int v65; // r1
  int v66; // r1
  glitch::IReferenceCounted *v67; // r3
  glitch::IReferenceCounted *v68; // r0
  int v69; // r3
  glitch::IReferenceCounted *v70; // r0
  _BYTE *v71; // r3
  int v72; // r3
  int v73; // r3
  int v74; // r1
  int v75; // r1
  _DWORD *v76; // r7
  _DWORD *v77; // r8
  void *v78; // r0
  void *v79; // r0
  int v80; // r1
  _DWORD *v81; // r2
  glitch::IReferenceCounted **v82; // r8
  _BYTE *v83; // r3
  int v84; // r1
  int v85; // r1
  glitch::core *v86; // [sp+10h] [bp-34h]
  glitch::core *v87; // [sp+10h] [bp-34h]
  glitch::core *v88; // [sp+10h] [bp-34h]
  glitch::core *v89; // [sp+10h] [bp-34h]
  glitch::video::CVertexStreams *v90; // [sp+18h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v91; // [sp+1Ch] [bp-28h] BYREF
  glitch::IReferenceCounted *v92; // [sp+20h] [bp-24h] BYREF
  glitch::IReferenceCounted *v93; // [sp+24h] [bp-20h] BYREF
  _DWORD *v94; // [sp+28h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v95; // [sp+2Ch] [bp-18h] BYREF
  _DWORD *v96; // [sp+30h] [bp-14h] BYREF
  _DWORD *v97; // [sp+34h] [bp-10h] BYREF
  glitch::IReferenceCounted *v98; // [sp+38h] [bp-Ch] BYREF
  _DWORD *v99; // [sp+3Ch] [bp-8h] BYREF

  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_988098;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v8 = 56 * a4;
  v11 = (_DWORD *)(a3[4] + 56 * a4);
  v12 = v11[9];
  v13 = glitch::scene::`anonymous namespace'::ColladaPrimitiveMap[*v11];
  v14 = v11[10];
  if ( v12 < 0x10000 )
    v15 = 1;
  else
    v15 = 2;
  v16 = v11[12];
  v17 = v11[8];
  v18 = v12 + 1;
  *(_DWORD *)(a1 + 24) = v16;
  if ( v16 )
    ++*(_DWORD *)(v16 + 4);
  *(_DWORD *)(a1 + 32) = v14;
  *(_DWORD *)(a1 + 36) = v17;
  *(_DWORD *)(a1 + 40) = v18;
  *(_WORD *)(a1 + 44) = v15;
  *(_WORD *)(a1 + 46) = v13;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  v19 = a3[4] + v8;
  v20 = *(_DWORD *)(v19 + 48);
  if ( v20 )
  {
    v21 = *a6;
    if ( *a6 == *(unsigned __int8 *)(v20 + 17) )
      goto LABEL_11;
    if ( (*(_BYTE *)(v20 + 18) & 8) != 0 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v20 + 16))(*(_DWORD *)(v19 + 48));
      *(_BYTE *)(v20 + 17) = v21;
      if ( (unsigned __int8)v21 == 4 )
        goto LABEL_11;
    }
    else
    {
      *(_BYTE *)(v20 + 17) = v21;
      if ( (unsigned __int8)v21 == 4 )
        goto LABEL_11;
    }
    if ( *(_DWORD *)(v20 + 8) )
      *(_BYTE *)(v20 + 18) |= 2u;
  }
  else
  {
    if ( a7 )
    {
      v72 = *(_DWORD *)(v19 + 40);
      if ( *(int *)(v19 + 36) < 0x10000 )
        v73 = 2 * v72;
      else
        v73 = 4 * v72;
      if ( v73 < 0x10000 )
      {
        v96 = *(_DWORD **)(v19 + 44);
        if ( v96 )
          ++*v96;
        glitch::res::onDemandPointer<unsigned short>::operator=((_DWORD **)(a1 + 8), &v96);
        glitch::res::onDemandPointer<unsigned short>::~onDemandPointer(&v96);
        v84 = *(_DWORD *)(v19 + 40);
        if ( *(int *)(v19 + 36) < 0x10000 )
          v85 = 2 * v84;
        else
          v85 = 4 * v84;
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
          &v95,
          a2,
          1,
          *a6,
          v85,
          *(_DWORD *)(*(_DWORD *)(a1 + 8) + 12),
          0);
        boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v19 + 48), &v95);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v95);
        v94 = nullptr;
        glitch::res::onDemandPointer<unsigned int>::operator=((_DWORD **)(a1 + 12), &v94);
        glitch::res::onDemandPointer<unsigned int>::~onDemandPointer(&v94);
      }
      else
      {
        v99 = *(_DWORD **)(v19 + 44);
        if ( v99 )
          ++*v99;
        glitch::res::onDemandPointer<unsigned int>::operator=((_DWORD **)(a1 + 12), &v99);
        glitch::res::onDemandPointer<unsigned int>::~onDemandPointer(&v99);
        v74 = *(_DWORD *)(v19 + 40);
        if ( *(int *)(v19 + 36) < 0x10000 )
          v75 = 2 * v74;
        else
          v75 = 4 * v74;
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
          &v98,
          a2,
          1,
          *a6,
          v75,
          *(_DWORD *)(*(_DWORD *)(a1 + 12) + 12),
          0);
        boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v19 + 48), &v98);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v98);
        v97 = nullptr;
        glitch::res::onDemandPointer<unsigned short>::operator=((_DWORD **)(a1 + 8), &v97);
        glitch::res::onDemandPointer<unsigned short>::~onDemandPointer(&v97);
      }
    }
    else
    {
      v65 = *(_DWORD *)(v19 + 40);
      if ( *(int *)(v19 + 36) < 0x10000 )
        v66 = 2 * v65;
      else
        v66 = 4 * v65;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v93,
        a2,
        1,
        *a6,
        v66,
        *(_DWORD *)(v19 + 44),
        0);
      v67 = v93;
      if ( v93 )
        ++*((_DWORD *)v93 + 1);
      v68 = *(glitch::IReferenceCounted **)(v19 + 48);
      *(_DWORD *)(v19 + 48) = v67;
      if ( v68 )
        glitch::IReferenceCounted::drop(v68);
      if ( v93 )
        glitch::IReferenceCounted::drop(v93);
    }
    v69 = *(_DWORD *)(v19 + 48);
    if ( v69 )
      ++*(_DWORD *)(v69 + 4);
    v70 = *(glitch::IReferenceCounted **)(a1 + 24);
    *(_DWORD *)(a1 + 24) = v69;
    if ( v70 )
    {
      glitch::IReferenceCounted::drop(v70);
      if ( !*((_BYTE *)a6 + 4) )
        goto LABEL_12;
      goto LABEL_83;
    }
  }
LABEL_11:
  if ( !*((_BYTE *)a6 + 4) )
    goto LABEL_12;
LABEL_83:
  v71 = *(_BYTE **)(v19 + 48);
  v17 = *((unsigned __int8 *)a6 + 5);
  if ( ((v71[18] & 8) == 0 || (v71[18] & 2) != 0) && v71[17] != 4 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v71 + 12))(*(_DWORD *)(v19 + 48));
LABEL_12:
  if ( *a3 )
  {
    v22 = a3[2];
    v23 = *(_DWORD *)(v22 + 40);
    if ( v23 )
    {
      v24 = *a5;
      if ( *a5 != *(unsigned __int8 *)(v23 + 17) )
      {
        if ( (*(_BYTE *)(v23 + 18) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v23 + 16))(v23);
        *(_BYTE *)(v23 + 17) = v24;
        if ( (unsigned __int8)v24 != 4 && *(_DWORD *)(v23 + 8) )
          *(_BYTE *)(v23 + 18) |= 2u;
      }
    }
    else if ( a7 )
    {
      v76 = *(_DWORD **)(v22 + 36);
      if ( v76 )
        *v76 += 2;
      v77 = *(_DWORD **)(a1 + 16);
      if ( v77 )
      {
        v38 = (*v77)-- == 1;
        if ( v38 )
        {
          v78 = (void *)v77[3];
          if ( v78 )
            operator delete[](v78);
          v77[3] = 0;
        }
      }
      *(_DWORD *)(a1 + 16) = v76;
      if ( v76 )
      {
        v38 = (*v76)-- == 1;
        if ( v38 )
        {
          v79 = (void *)v76[3];
          if ( v79 )
            operator delete[](v79);
          v76[3] = 0;
        }
      }
      v80 = *a3;
      v81 = (_DWORD *)a3[2];
      if ( *a3 )
        v80 = a3[1];
      v82 = (glitch::IReferenceCounted **)(v81 + 10);
      if ( *a3 )
        v80 *= *v81;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v92,
        a2,
        0,
        *a5,
        v80,
        *(_DWORD *)(*(_DWORD *)(a1 + 16) + 12),
        0);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=(v82, &v92);
      boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v92);
    }
    else
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 120))(
        &v91,
        a2,
        0,
        *a5,
        *(_DWORD *)v22 * a3[1],
        *(_DWORD *)(v22 + 36),
        0);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v22 + 40), &v91);
      boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v91);
    }
    v17 = (int)a5;
    if ( *((_BYTE *)a5 + 4) )
    {
      v17 = *((unsigned __int8 *)a5 + 5);
      v83 = *(_BYTE **)(a3[2] + 40);
      if ( ((v83[18] & 8) == 0 || (v83[18] & 2) != 0) && v83[17] != 4 )
        (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v83 + 12))(*(_DWORD *)(a3[2] + 40), v17);
    }
  }
  v25 = (int *)glitch::core::allocProcessBuffer((glitch::core *)&elf_hash_bucket[65], v17);
  v26 = 0;
  v27 = 1;
  v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *(char *)(v19 + 12), (int)v25, 0, a5);
  v86 = (glitch::core *)v19;
  do
  {
    if ( *((char *)v86 + 16) < 0 )
      break;
    v27 |= 2 << v26++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v86 + 16), (int)v25, v28, a5);
    v86 = (glitch::core *)((char *)v86 + 1);
  }
  while ( v26 != 4 );
  v29 = *(char *)(v19 + 13);
  if ( v29 >= 0 )
  {
    v27 |= 0x20000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v29, (int)v25, v28, a5);
  }
  v30 = *(char *)(v19 + 14);
  if ( v30 >= 0 )
  {
    v27 |= 0x40000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v30, (int)v25, v28, a5);
  }
  v31 = *(char *)(v19 + 15);
  if ( v31 >= 0 )
  {
    v27 |= 0x80000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v31, (int)v25, v28, a5);
  }
  v87 = (glitch::core *)v19;
  v32 = 0;
  do
  {
    if ( *((char *)v87 + 24) < 0 )
      break;
    v27 |= 0x100000 << v32++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v87 + 24), (int)v25, v28, a5);
    v87 = (glitch::core *)((char *)v87 + 1);
  }
  while ( v32 != 4 );
  v88 = (glitch::core *)v19;
  v33 = 0;
  do
  {
    if ( *((char *)v88 + 20) < 0 )
      break;
    v27 |= 0x1000000 << v33++;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, *((char *)v88 + 20), (int)v25, v28, a5);
    v88 = (glitch::core *)((char *)v88 + 1);
  }
  while ( v33 != 4 );
  v34 = *(char *)(v19 + 28);
  if ( v34 >= 0 )
  {
    v27 |= 0x10000000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v34, (int)v25, v28, a5);
  }
  v35 = *(char *)(v19 + 29);
  if ( v35 >= 0 )
  {
    v27 |= 0x20000000u;
    v28 = glitch::scene::`anonymous namespace'::addStream(a2, a3, v19, v35, (int)v25, v28, a5);
  }
  glitch::video::CVertexStreams::allocate(&v90, v27);
  v36 = v90;
  if ( v90 )
    ++*(_DWORD *)v90;
  v37 = *(glitch::video::CVertexStreams **)(a1 + 20);
  *(_DWORD *)(a1 + 20) = v36;
  if ( v37 )
  {
    v38 = (*(_DWORD *)v37)-- == 1;
    if ( v38 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v37);
      LC_API_FREE_0(v37);
    }
  }
  v39 = v90;
  if ( v90 )
  {
    v38 = (*(_DWORD *)v90)-- == 1;
    if ( v38 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v39);
      LC_API_FREE_0(v39);
    }
  }
  glitch::video::CVertexStreams::setupStreams(*(glitch::video::CVertexStreams **)(a1 + 20), v25, -1, 0);
  v40 = *a3;
  if ( *a3 )
    v40 = a3[1];
  *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8) = v40;
  if ( *a3 )
  {
    v41 = *(int **)(*(_DWORD *)(a3[2] + 32) + 4 * *(char *)(v19 + 12));
    if ( v41 )
    {
      v42 = v41[1];
      v43 = *(_DWORD **)(*(_DWORD *)(a1 + 20) + 16);
      v44 = *v41;
      v43[2] = v41[2];
      *v43 = v44;
      v43[1] = v42;
      v45 = v41[5];
      v46 = v41[3];
      v47 = v41[4];
      v48 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + 12);
      *v48 = v46;
      v48[2] = v45;
      v48[1] = v47;
      *(_WORD *)(*(_DWORD *)(a1 + 20) + 14) |= 4u;
    }
  }
  v49 = v19;
  v50 = 36;
  v51 = nullptr;
  v89 = (glitch::core *)v25;
  do
  {
    v52 = *(char *)(v49 + 16);
    if ( v52 < 0 )
      break;
    if ( *a3 )
    {
      v53 = *(_DWORD **)(*(_DWORD *)(a3[2] + 32) + 4 * v52);
      if ( v53 )
      {
        v54 = v53[2];
        v55 = v53[1];
        v56 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + v50 - 12);
        *v56 = *v53;
        v56[2] = v54;
        v56[1] = v55;
        v57 = v53[5];
        v58 = v53[3];
        v59 = v53[4];
        v60 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 16) + v50);
        *v60 = v58;
        v60[2] = v57;
        v60[1] = v59;
        *(_WORD *)(*(_DWORD *)(a1 + 20) + 14) |= 8 << (char)v51;
      }
    }
    ++v51;
    ++v49;
    v50 += 24;
  }
  while ( v51 != byte_4 );
  v61 = (glitch::IReferenceCounted **)((char *)v89 + 16 * v28);
  if ( v89 != (glitch::core *)v61 )
  {
    v62 = (glitch::IReferenceCounted **)v89;
    do
    {
      v63 = *v62;
      v62 += 4;
      if ( v63 )
        glitch::IReferenceCounted::drop(v63);
    }
    while ( v61 != v62 );
  }
  if ( v89 )
    glitch::core::releaseProcessBuffer(v89, v51);
  return a1;
}


// ===== 6be470 glitch::scene::IMeshCache::~IMeshCache() =====
void __fastcall glitch::scene::IMeshCache::~IMeshCache(glitch::scene::IMeshCache *this)
{
  ;
}


// ===== 6be474 glitch::scene::CMeshCache::CMeshCache(glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::scene::CMeshCache::CMeshCache(_DWORD *this, glitch::video::IVideoDriver *a2)
{
  *(this + 5) = a2;
  *(this + 1) = 1;
  *this = off_988118;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}


// ===== 6be4bc glitch::scene::CMeshCache::CMeshCache(glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::scene::CMeshCache::CMeshCache(_DWORD *this, glitch::video::IVideoDriver *a2)
{
  *(this + 5) = a2;
  *(this + 1) = 1;
  *this = off_988118;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}


// ===== 6be504 glitch::scene::CMeshCache::getMeshCount(void) =====
int __fastcall glitch::scene::CMeshCache::getMeshCount(glitch::scene::CMeshCache *this)
{
  return -1227133513 * ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2);
}


// ===== 6be530 glitch::scene::CMeshCache::getMeshIndex(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&) =====
int __fastcall glitch::scene::CMeshCache::getMeshIndex(int a1, int *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r4
  int result; // r0
  int v6; // r2
  int v7; // r1

  v2 = *(_DWORD *)(a1 + 8);
  v3 = -1227133513 * ((*(_DWORD *)(a1 + 12) - v2) >> 2);
  if ( v3 )
  {
    v4 = *a2;
    if ( *(_DWORD *)(v2 + 24) == *a2 )
      return 0;
    v6 = 28;
    result = 0;
    while ( 1 )
    {
      ++result;
      v7 = v2 + v6;
      if ( result == v3 )
        break;
      v6 += 28;
      if ( *(_DWORD *)(v7 + 24) == v4 )
        return result;
    }
  }
  return -1;
}


// ===== 6be5b0 glitch::scene::CMeshCache::getMeshByIndex(uint) =====
_DWORD *__fastcall glitch::scene::CMeshCache::getMeshByIndex(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a2 + 8);
  if ( a3 < -1227133513 * ((*(_DWORD *)(a2 + 12) - v3) >> 2) )
  {
    v4 = *(_DWORD *)(v3 + 28 * a3 + 24);
    *this = v4;
    if ( v4 )
      ++*(_DWORD *)(v4 + 4);
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 6be60c glitch::scene::CMeshCache::getMeshFilename(uint) =====
int __fastcall glitch::scene::CMeshCache::getMeshFilename(glitch::scene::CMeshCache *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 2);
  v3 = (*((_DWORD *)this + 3) - v2) >> 2;
  result = 153391689 * v3;
  v5 = -1227133513 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 28 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 20);
  return result;
}


// ===== 6be64c glitch::scene::CMeshCache::getMeshFilename(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&) =====
int __fastcall glitch::scene::CMeshCache::getMeshFilename(int a1, int *a2)
{
  int v2; // r3
  int v3; // r4
  int v4; // r5
  int v5; // r1
  int v6; // r2
  int v7; // r0

  v2 = *(_DWORD *)(a1 + 8);
  v3 = -1227133513 * ((*(_DWORD *)(a1 + 12) - v2) >> 2);
  if ( !v3 )
    return 0;
  v4 = *a2;
  if ( *(_DWORD *)(v2 + 24) != *a2 )
  {
    v5 = 28;
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      v7 = v2 + v5;
      if ( v6 == v3 )
        break;
      v5 += 28;
      if ( *(_DWORD *)(v7 + 24) == v4 )
      {
        v2 = v7;
        return *(_DWORD *)(v2 + 20);
      }
    }
    return 0;
  }
  return *(_DWORD *)(v2 + 20);
}


// ===== 6be6d4 glitch::scene::CMeshCache::isMeshLoaded(char const*) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CMeshCache::isMeshLoaded(
        glitch::scene::CMeshCache *this,
        const char *a2)
{
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v3; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::scene::CMeshCache *, const char *))(*(_DWORD *)this + 40))(
    &v3,
    this,
    a2);
  result = v3;
  if ( v3 )
  {
    glitch::IReferenceCounted::drop(v3);
    return (glitch::IReferenceCounted *)(&dword_0 + 1);
  }
  return result;
}


// ===== 6be710 `global constructor keyed to'.._source_glitch_scene_CMeshCache.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CMeshCache.cpp()
{
  dword_9F7B70 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B6C = 1056964608;
}


// ===== 6be730 glitch::scene::CMeshCache::MeshEntry::~MeshEntry() =====
void __fastcall glitch::scene::CMeshCache::MeshEntry::~MeshEntry(glitch::scene::CMeshCache::MeshEntry *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::scene::CMeshCache::MeshEntry *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 6);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::scene::CMeshCache::MeshEntry **)this + 5);
  if ( v3 != this )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 6be768 std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::scene::CMeshCache::MeshEntry **__fastcall std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::scene::CMeshCache::MeshEntry **a1)
{
  glitch::scene::CMeshCache::MeshEntry *v1; // r4
  glitch::scene::CMeshCache::MeshEntry *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v1 - 28);
    glitch::scene::CMeshCache::MeshEntry::~MeshEntry(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 6be7ac glitch::scene::IMeshCache::~IMeshCache() =====
void __fastcall glitch::scene::IMeshCache::~IMeshCache(glitch::scene::IMeshCache *this)
{
  LC_API_FREE_0(this);
}


// ===== 6be7c0 glitch::scene::CMeshCache::MeshEntry::operator=(glitch::scene::CMeshCache::MeshEntry const&) =====
_DWORD *__fastcall glitch::scene::CMeshCache::MeshEntry::operator=(_DWORD *a1, int a2)
{
  int v4; // r3
  glitch::IReferenceCounted *v5; // r0

  if ( a1 != (_DWORD *)a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  if ( v4 )
    ++*(_DWORD *)(v4 + 4);
  v5 = (glitch::IReferenceCounted *)a1[6];
  a1[6] = v4;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  return a1;
}


// ===== 6be810 std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CMeshCache::MeshEntry*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r0
  int v5; // r4
  _DWORD *v6; // r0
  _DWORD *v7; // r5
  glitch::scene::CMeshCache::MeshEntry *v8; // r0

  v3 = *(_DWORD **)(a1 + 4);
  if ( a2 + 7 != v3 )
  {
    v5 = -1227133513 * (v3 - (a2 + 7));
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        v7 = v6 + 7;
        glitch::scene::CMeshCache::MeshEntry::operator=(v6, (int)(v6 + 7));
        --v5;
        v6 = v7;
      }
      while ( v5 );
      v3 = *(_DWORD **)(a1 + 4);
    }
  }
  v8 = (glitch::scene::CMeshCache::MeshEntry *)(v3 - 7);
  *(_DWORD *)(a1 + 4) = v8;
  glitch::scene::CMeshCache::MeshEntry::~MeshEntry(v8);
  return a2;
}


// ===== 6be888 glitch::scene::CMeshCache::clearUnusedMeshes(void) =====
int __fastcall glitch::scene::CMeshCache::clearUnusedMeshes(glitch::scene::CMeshCache *this)
{
  int v2; // r12
  int result; // r0
  unsigned int v4; // r4
  _DWORD *v5; // r1

  v2 = *((_DWORD *)this + 3);
  result = *((_DWORD *)this + 2);
  if ( 1227133513 * ((v2 - result) >> 2) )
  {
    v4 = 0;
    do
    {
      v5 = (_DWORD *)(result + 28 * v4);
      if ( *(_DWORD *)(v5[6] + 4) == 1 )
      {
        std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
          (int)this + 8,
          v5);
        --v4;
        result = *((_DWORD *)this + 2);
        v2 = *((_DWORD *)this + 3);
      }
      ++v4;
    }
    while ( v4 < -1227133513 * ((v2 - result) >> 2) );
  }
  return result;
}


// ===== 6be938 glitch::scene::CMeshCache::removeMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&) =====
_DWORD *__fastcall glitch::scene::CMeshCache::removeMesh(_DWORD *result, int *a2)
{
  int v2; // r3
  _DWORD *v3; // r1
  int v4; // r4
  _DWORD *v5; // r1
  int v6; // r2

  v2 = *a2;
  if ( *a2 )
  {
    v3 = (_DWORD *)result[2];
    v4 = -1227133513 * ((result[3] - (int)v3) >> 2);
    if ( v4 )
    {
      if ( v2 == v3[6] )
      {
        return std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                 (int)(result + 2),
                 v3);
      }
      else
      {
        v5 = v3 + 7;
        v6 = 0;
        while ( 1 )
        {
          ++v6;
          v5 += 7;
          if ( v6 == v4 )
            break;
          if ( v2 == *(v5 - 1) )
          {
            v3 = v5 - 7;
            return std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                     (int)(result + 2),
                     v3);
          }
        }
      }
    }
  }
  return result;
}


// ===== 6be9cc std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CMeshCache::MeshEntry*,glitch::scene::CMeshCache::MeshEntry*,std::__false_type const&) =====
glitch::scene::CMeshCache::MeshEntry *__fastcall std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::scene::CMeshCache::MeshEntry *this,
        int a3)
{
  glitch::scene::CMeshCache::MeshEntry *v3; // r4
  int v6; // r3
  int v8; // r10
  glitch::scene::CMeshCache::MeshEntry *v9; // r10
  int v10; // r6
  int v11; // r4
  glitch::scene::CMeshCache::MeshEntry *v12; // r6
  glitch::scene::CMeshCache::MeshEntry *v13; // r0

  v3 = *(glitch::scene::CMeshCache::MeshEntry **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -1227133513 * v6;
  if ( -1227133513 * v6 > 0 )
  {
    v10 = -1227133513 * v6;
    v11 = 0;
    do
    {
      glitch::scene::CMeshCache::MeshEntry::operator=(
        (glitch::scene::CMeshCache::MeshEntry *)((char *)this + v11),
        a3 + v11);
      --v10;
      v11 += 28;
    }
    while ( v10 );
    v9 = (glitch::scene::CMeshCache::MeshEntry *)((char *)this + 28 * v8);
    v3 = *(glitch::scene::CMeshCache::MeshEntry **)(a1 + 4);
  }
  else
  {
    v9 = this;
  }
  if ( v3 != v9 )
  {
    v12 = v9;
    do
    {
      v13 = v12;
      v12 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v12 + 28);
      glitch::scene::CMeshCache::MeshEntry::~MeshEntry(v13);
    }
    while ( v3 != v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 6bea64 glitch::scene::CMeshCache::clear(void) =====
glitch::scene::CMeshCache::MeshEntry *__fastcall glitch::scene::CMeshCache::clear(
        glitch::scene::CMeshCache::MeshEntry *this)
{
  glitch::scene::CMeshCache::MeshEntry *v1; // r1
  int v2; // r2

  v1 = *((glitch::scene::CMeshCache::MeshEntry **)this + 2);
  v2 = *((_DWORD *)this + 3);
  if ( v1 != (glitch::scene::CMeshCache::MeshEntry *)v2 )
    return std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)this + 8,
             v1,
             v2);
  return this;
}


// ===== 6bea90 glitch::scene::CMeshCache::~CMeshCache() =====
void __fastcall glitch::scene::CMeshCache::~CMeshCache(glitch::scene::CMeshCache *this)
{
  glitch::scene::CMeshCache::MeshEntry **v1; // r4

  *(_DWORD *)this = off_988118;
  v1 = (glitch::scene::CMeshCache::MeshEntry **)((char *)this + 8);
  glitch::scene::CMeshCache::clear(this);
  std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v1);
}


// ===== 6bead0 glitch::scene::CMeshCache::~CMeshCache() =====
void __fastcall glitch::scene::CMeshCache::~CMeshCache(glitch::scene::CMeshCache *this)
{
  glitch::scene::CMeshCache::~CMeshCache(this);
  LC_API_FREE_0(this);
}


// ===== 6beaec glitch::scene::CMeshCache::~CMeshCache() =====
void __fastcall glitch::scene::CMeshCache::~CMeshCache(glitch::scene::CMeshCache *this)
{
  glitch::scene::CMeshCache::MeshEntry **v1; // r4

  *(_DWORD *)this = off_988118;
  v1 = (glitch::scene::CMeshCache::MeshEntry **)((char *)this + 8);
  glitch::scene::CMeshCache::clear(this);
  std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v1);
}


// ===== 6beb2c std::priv::__lower_bound<glitch::scene::CMeshCache::MeshEntry const*,glitch::scene::CMeshCache::MeshEntry,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,int>(glitch::scene::CMeshCache::MeshEntry const*,glitch::scene::CMeshCache::MeshEntry const*,glitch::scene::CMeshCache::MeshEntry const&,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::scene::CMeshCache::MeshEntry const*,glitch::scene::CMeshCache::MeshEntry,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,int>(
        int result,
        int a2,
        int a3)
{
  int v4; // r10
  char *v5; // r7
  unsigned int v6; // r4
  int v7; // r6
  int v8; // r8
  char *v9; // r5
  unsigned int v10; // r2
  int v11; // r1
  int v12; // r3

  v4 = -1227133513 * ((a2 - result) >> 2);
  if ( v4 >= 0 && 1227133513 * ((a2 - result) >> 2) != 0 )
  {
    do
    {
      v5 = *(char **)(a3 + 20);
      v6 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
      while ( 1 )
      {
        v7 = v4 >> 1;
        v8 = result + 28 * (v4 >> 1);
        v9 = *(char **)(v8 + 20);
        v10 = *(_DWORD *)(v8 + 16) - (_DWORD)v9;
        if ( !v10 || !v6 )
          goto LABEL_3;
        v11 = *v9 - *v5;
        if ( v11 )
          break;
        v12 = 0;
        while ( ++v12 != v10 && v12 != v6 )
        {
          v11 = v9[v12] - v5[v12];
          if ( v11 )
            goto LABEL_13;
        }
LABEL_3:
        if ( v10 < v6 )
          goto LABEL_14;
LABEL_4:
        v4 >>= 1;
        if ( !v7 )
          return result;
      }
LABEL_13:
      if ( v11 >= 0 )
        goto LABEL_4;
LABEL_14:
      v4 = v4 - 1 - v7;
      result = v8 + 28;
    }
    while ( v4 > 0 );
  }
  return result;
}


// ===== 6bec0c glitch::scene::CMeshCache::removeMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&) =====
_DWORD *__fastcall glitch::scene::CMeshCache::removeMesh(_DWORD *result, glitch::IReferenceCounted **a2)
{
  _DWORD *v3; // r10
  int v4; // r6
  int v5; // r8
  int v6; // r4
  unsigned int i; // r5
  int v8; // r12
  glitch::IReferenceCounted *v9; // r6
  glitch::IReferenceCounted *v10; // r8
  glitch::IReferenceCounted *v11; // [sp+8h] [bp-Ch] BYREF

  v3 = result;
  if ( *a2 )
  {
    v4 = result[2];
    v5 = result[3];
    if ( 1227133513 * ((v5 - v4) >> 2) )
    {
      v6 = 0;
      for ( i = 0; i < -1227133513 * ((v5 - v4) >> 2); ++i )
      {
        v8 = *(_DWORD *)(v4 + v6 + 24);
        result = &v11;
        if ( v8 )
        {
          (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v8 + 52))(
            &v11,
            *(_DWORD *)(v4 + v6 + 24));
          v9 = v11;
          v10 = *a2;
          result = v11;
          if ( v11 )
            result = (_DWORD *)glitch::IReferenceCounted::drop(v11);
          if ( v9 == v10 )
            return std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                     (int)(v3 + 2),
                     (_DWORD *)(v3[2] + v6));
          v4 = v3[2];
          v5 = v3[3];
        }
        v6 += 28;
      }
    }
  }
  return result;
}


// ===== 6bed10 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::scene::IMesh>*,boost::intrusive_ptr<glitch::scene::IMesh> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        char **a1,
        int a2,
        int *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  char *v11; // r12
  char *v12; // r8
  int v13; // r5
  int *v14; // r10
  int v15; // r1
  int v16; // r3
  int v17; // r3
  char *v18; // r10
  char *v19; // r5
  char *v20; // r7
  glitch::IReferenceCounted *v21; // r0

  v6 = (a1[1] - *a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = GlitchAlloc(v8, 0);
  v11 = *a1;
  v12 = (char *)v9;
  v13 = (a2 - (int)*a1) >> 2;
  if ( v13 > 0 )
  {
    v15 = v13;
    v10 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v10];
      *(_DWORD *)&v12[v10] = v16;
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
    v14 = (int *)&v12[4 * v13];
  }
  else
  {
    v14 = v9;
  }
  v17 = *a3;
  *v14 = *a3;
  if ( v17 )
    v10 = *(_DWORD *)(v17 + 4);
  v18 = (char *)(v14 + 1);
  if ( v17 )
    *(_DWORD *)(v17 + 4) = v10 + 1;
  v19 = a1[1];
  v20 = *a1;
  if ( v19 != *a1 )
  {
    do
    {
      v21 = *((glitch::IReferenceCounted **)v19 - 1);
      v19 -= 4;
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
    }
    while ( v20 != v19 );
    v20 = *a1;
  }
  GlitchFree(v20);
  a1[2] = &v12[v8];
  *a1 = v12;
  a1[1] = v18;
}


// ===== 6bee14 glitch::scene::CMeshCache::getMeshFilename(boost::intrusive_ptr<glitch::scene::IMesh const> const&) =====
int __fastcall glitch::scene::CMeshCache::getMeshFilename(int a1, glitch::IReferenceCounted **a2)
{
  int v2; // r6
  int v3; // r8
  int v6; // r4
  unsigned int i; // r5
  int v8; // r12
  glitch::IReferenceCounted *v9; // r6
  glitch::IReferenceCounted *v10; // r8
  glitch::IReferenceCounted *v12; // [sp+Ch] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 8);
  v3 = *(_DWORD *)(a1 + 12);
  if ( 1227133513 * ((v3 - v2) >> 2) )
  {
    v6 = 0;
    for ( i = 0; i < -1227133513 * ((v3 - v2) >> 2); ++i )
    {
      v8 = *(_DWORD *)(v2 + v6 + 24);
      if ( v8 )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v8 + 52))(
          &v12,
          *(_DWORD *)(v2 + v6 + 24));
        v9 = v12;
        v10 = *a2;
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        if ( v9 == v10 )
          return *(_DWORD *)(*(_DWORD *)(a1 + 8) + v6 + 20);
        v2 = *(_DWORD *)(a1 + 8);
        v3 = *(_DWORD *)(a1 + 12);
      }
      v6 += 28;
    }
  }
  return 0;
}


// ===== 6bef0c glitch::scene::CMeshCache::getMeshIndex(boost::intrusive_ptr<glitch::scene::IMesh const> const&) =====
int __fastcall glitch::scene::CMeshCache::getMeshIndex(int a1, glitch::IReferenceCounted **a2)
{
  int v2; // r6
  int v3; // r8
  int v6; // r4
  unsigned int i; // r5
  int v8; // r12
  glitch::IReferenceCounted *v9; // r6
  glitch::IReferenceCounted *v10; // r8
  glitch::IReferenceCounted *v12; // [sp+Ch] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 8);
  v3 = *(_DWORD *)(a1 + 12);
  if ( 1227133513 * ((v3 - v2) >> 2) )
  {
    v6 = 0;
    for ( i = 0; i < -1227133513 * ((v3 - v2) >> 2); ++i )
    {
      v8 = *(_DWORD *)(v2 + v6 + 24);
      if ( v8 )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v8 + 52))(
          &v12,
          *(_DWORD *)(v2 + v6 + 24));
        v9 = v12;
        v10 = *a2;
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        if ( v9 == v10 )
          return i;
        v2 = *(_DWORD *)(a1 + 8);
        v3 = *(_DWORD *)(a1 + 12);
      }
      v6 += 28;
    }
  }
  return -1;
}


// ===== 6beffc glitch::core::heapsink<glitch::scene::CMeshCache::MeshEntry>(glitch::scene::CMeshCache::MeshEntry *,int,int) =====
void __fastcall glitch::core::heapsink<glitch::scene::CMeshCache::MeshEntry>(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r3
  int v6; // r5
  _DWORD *v7; // r4
  _BYTE *v8; // r1
  _BYTE *v9; // r2
  unsigned int v10; // r12
  _DWORD *v11; // r6
  char *v12; // r9
  unsigned int v13; // r0
  unsigned int v14; // r8
  int v15; // r3
  _BOOL4 v16; // r8
  int v17; // r0
  int v18; // r10
  char *v19; // r0
  unsigned int v20; // r10
  unsigned int v21; // r8
  int v22; // r0
  _BOOL4 v23; // r8
  char *v25; // [sp+Ch] [bp-30h]
  _DWORD v26[6]; // [sp+18h] [bp-24h] BYREF
  int v27; // [sp+30h] [bp-Ch]

  v3 = a2;
  v4 = 2 * a2;
  if ( a3 > 2 * a2 )
  {
    while ( 1 )
    {
      v6 = v4 + 1;
      if ( a3 <= v4 + 1 )
      {
        v7 = (_DWORD *)(a1 + 28 * v4);
        v8 = (_BYTE *)v7[5];
        v9 = (_BYTE *)v7[4];
        v10 = v9 - v8;
        goto LABEL_4;
      }
      v7 = (_DWORD *)(a1 + 28 * v4);
      v17 = a1 + 28 * v6;
      v8 = (_BYTE *)v7[5];
      v9 = (_BYTE *)v7[4];
      v10 = v9 - v8;
      if ( v9 == v8 )
        break;
      v18 = *(_DWORD *)(v17 + 16);
      v19 = *(char **)(v17 + 20);
      v20 = v18 - (_DWORD)v19;
      v25 = v19;
      if ( !v20 )
        goto LABEL_26;
      v21 = (char)*v8 - *v19;
      if ( !v21 )
      {
        v22 = 0;
        while ( ++v22 != v10 && v22 != v20 )
        {
          v21 = (char)v8[v22] - v25[v22];
          if ( v21 )
            goto LABEL_31;
        }
        goto LABEL_26;
      }
LABEL_31:
      v23 = v21 >> 31;
LABEL_27:
      if ( v23 )
      {
        v7 = (_DWORD *)(a1 + 28 * v6);
        v8 = (_BYTE *)v7[5];
        v9 = (_BYTE *)v7[4];
        v10 = v9 - v8;
        goto LABEL_5;
      }
LABEL_4:
      v6 = v4;
LABEL_5:
      v11 = (_DWORD *)(a1 + 28 * v3);
      v12 = (char *)v11[5];
      v13 = v11[4] - (_DWORD)v12;
      if ( !v13 || !v10 )
        goto LABEL_11;
      v14 = *v12 - (char)*v8;
      if ( !v14 )
      {
        v15 = 0;
        while ( v13 != ++v15 && v15 != v10 )
        {
          v14 = v12[v15] - (char)v8[v15];
          if ( v14 )
            goto LABEL_19;
        }
LABEL_11:
        v16 = v13 < v10;
        goto LABEL_12;
      }
LABEL_19:
      v16 = v14 >> 31;
LABEL_12:
      if ( v16 )
      {
        v26[4] = v26;
        v26[5] = v26;
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
          v26,
          v8,
          v9);
        v27 = v7[6];
        if ( v27 )
          ++*(_DWORD *)(v27 + 4);
        glitch::scene::CMeshCache::MeshEntry::operator=(v7, (int)v11);
        glitch::scene::CMeshCache::MeshEntry::operator=(v11, (int)v26);
        glitch::scene::CMeshCache::MeshEntry::~MeshEntry((glitch::scene::CMeshCache::MeshEntry *)v26);
        v4 = 2 * v6;
        v3 = v6;
        if ( 2 * v6 < a3 )
          continue;
      }
      return;
    }
    v20 = *(_DWORD *)(v17 + 16) - *(_DWORD *)(v17 + 20);
LABEL_26:
    v23 = v10 < v20;
    goto LABEL_27;
  }
}


// ===== 6bf228 glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(glitch::scene::CMeshCache::MeshEntry *,int) =====
void __fastcall glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(_DWORD *a1, int a2)
{
  int v2; // r10
  int v3; // r9
  int v5; // r6
  int v6; // r5
  int v7; // r7
  _DWORD *v8; // r10
  _BYTE *v9; // r2
  _BYTE *v10; // r1
  _DWORD v11[6]; // [sp+0h] [bp-24h] BYREF
  int v12; // [sp+18h] [bp-Ch]

  v2 = a2 - 1;
  v3 = a2;
  v5 = (int)(a1 - 7);
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      glitch::core::heapsink<glitch::scene::CMeshCache::MeshEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = &a1[7 * v2];
    do
    {
      v9 = (_BYTE *)a1[4];
      v10 = (_BYTE *)a1[5];
      v11[4] = v11;
      v11[5] = v11;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v11,
        v10,
        v9);
      v12 = a1[6];
      if ( v12 )
        ++*(_DWORD *)(v12 + 4);
      glitch::scene::CMeshCache::MeshEntry::operator=(a1, (int)v8);
      glitch::scene::CMeshCache::MeshEntry::operator=(v8, (int)v11);
      glitch::core::heapsink<glitch::scene::CMeshCache::MeshEntry>(v5, 1, v3);
      glitch::scene::CMeshCache::MeshEntry::~MeshEntry((glitch::scene::CMeshCache::MeshEntry *)v11);
      --v3;
      v8 -= 7;
    }
    while ( v3 );
  }
}


// ===== 6bf32c glitch::scene::CMeshCache::setMeshFilename(uint,char const*) =====
int __fastcall glitch::scene::CMeshCache::setMeshFilename(glitch::scene::CMeshCache *this, unsigned int a2, char *a3)
{
  int v3; // r5
  size_t v8; // r0
  _DWORD *v9; // r0
  unsigned int v10; // r1

  v3 = *((_DWORD *)this + 2);
  if ( a2 >= -1227133513 * ((*((_DWORD *)this + 3) - v3) >> 2) )
    return 0;
  v8 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)(v3 + 28 * a2),
    a3,
    &a3[v8]);
  v9 = *((_DWORD **)this + 2);
  v10 = -1227133513 * ((*((_DWORD *)this + 3) - (int)v9) >> 2);
  if ( v10 > 1 )
    glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(v9, v10);
  return 1;
}


// ===== 6bf3d4 std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CMeshCache::MeshEntry const&) =====
void __fastcall std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::scene::CMeshCache::MeshEntry **a1,
        int a2)
{
  glitch::scene::CMeshCache::MeshEntry *v2; // r4
  char *v3; // r6
  int v6; // r3
  unsigned int v7; // r2
  unsigned int v8; // r1
  size_t v9; // r11
  glitch::scene::CMeshCache::MeshEntry *v10; // r0
  glitch::scene::CMeshCache::MeshEntry *v11; // r5
  glitch::scene::CMeshCache::MeshEntry *v12; // r10
  int v13; // r6
  int v14; // r9
  glitch::scene::CMeshCache::MeshEntry *v15; // r9
  int v16; // r6
  glitch::scene::CMeshCache::MeshEntry *v17; // r4
  int v18; // r2
  int v19; // r3
  int v20; // r2
  int v21; // r3
  glitch::scene::CMeshCache::MeshEntry *v22; // r9
  glitch::scene::CMeshCache::MeshEntry *v23; // r4
  glitch::scene::CMeshCache::MeshEntry *v24; // r5

  v2 = a1[1];
  v3 = (char *)a1[2];
  if ( v2 == (glitch::scene::CMeshCache::MeshEntry *)v3 )
  {
    v7 = -1227133513 * ((v3 - (char *)*a1) >> 2);
    if ( v7 )
      v8 = 1840700270 * ((v3 - (char *)*a1) >> 2);
    else
      v8 = 1;
    if ( v8 > 0x9249249 || v7 > v8 )
      v9 = -4;
    else
      v9 = 28 * v8;
    v10 = (glitch::scene::CMeshCache::MeshEntry *)GlitchAlloc(v9, 0);
    v11 = *a1;
    v12 = v10;
    v13 = (v3 - (char *)*a1) >> 2;
    v14 = -1227133513 * v13;
    if ( -1227133513 * v13 > 0 )
    {
      v16 = -1227133513 * v13;
      v17 = v10;
      do
      {
        *((_DWORD *)v17 + 4) = v17;
        *((_DWORD *)v17 + 5) = v17;
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
          v17,
          *((_BYTE **)v11 + 5),
          *((_BYTE **)v11 + 4));
        v19 = *((_DWORD *)v11 + 6);
        v11 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v11 + 28);
        *((_DWORD *)v17 + 6) = v19;
        if ( v19 )
          v18 = *(_DWORD *)(v19 + 4);
        v17 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v17 + 28);
        if ( v19 )
          *(_DWORD *)(v19 + 4) = v18 + 1;
        --v16;
      }
      while ( v16 );
      v15 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v12 + 28 * v14);
    }
    else
    {
      v15 = v10;
    }
    *((_DWORD *)v15 + 4) = v15;
    *((_DWORD *)v15 + 5) = v15;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v15,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v21 = *(_DWORD *)(a2 + 24);
    *((_DWORD *)v15 + 6) = v21;
    if ( v21 )
      v20 = *(_DWORD *)(v21 + 4);
    v22 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v15 + 28);
    if ( v21 )
      *(_DWORD *)(v21 + 4) = v20 + 1;
    v23 = a1[1];
    v24 = *a1;
    if ( v23 != *a1 )
    {
      do
      {
        v23 = (glitch::scene::CMeshCache::MeshEntry *)((char *)v23 - 28);
        glitch::scene::CMeshCache::MeshEntry::~MeshEntry(v23);
      }
      while ( v24 != v23 );
      v24 = *a1;
    }
    GlitchFree(v24);
    a1[1] = v22;
    a1[2] = (glitch::scene::CMeshCache::MeshEntry *)((char *)v12 + v9);
    *a1 = v12;
  }
  else
  {
    *((_DWORD *)v2 + 4) = v2;
    *((_DWORD *)v2 + 5) = v2;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
    v6 = *(_DWORD *)(a2 + 24);
    *((_DWORD *)v2 + 6) = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
    a1[1] = (glitch::scene::CMeshCache::MeshEntry *)((char *)a1[1] + 28);
  }
}


// ===== 6bf588 glitch::scene::CMeshCache::addMesh(char const*,boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&) =====
void __fastcall glitch::scene::CMeshCache::addMesh(int a1, char *a2, glitch::IReferenceCounted **a3)
{
  glitch::IReferenceCounted *v6; // r3
  glitch::IReferenceCounted *v7; // r0
  size_t v8; // r0
  _DWORD *v9; // r2
  unsigned int v10; // r3
  char v11; // r1
  _BYTE *v12; // r2
  _DWORD v13[4]; // [sp+0h] [bp-24h] BYREF
  _BYTE *v14; // [sp+10h] [bp-14h]
  _DWORD *v15; // [sp+14h] [bp-10h]
  glitch::IReferenceCounted *v16; // [sp+18h] [bp-Ch]

  v14 = v13;
  v15 = v13;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v13,
    0x10u);
  *v14 = 0;
  v6 = *a3;
  v16 = nullptr;
  if ( v6 )
  {
    ++*((_DWORD *)v6 + 1);
    v7 = v16;
    v16 = v6;
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
  }
  else
  {
    v16 = nullptr;
  }
  v8 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v13,
    a2,
    &a2[v8]);
  v9 = v15;
  if ( v14 != (_BYTE *)v15 )
  {
    v10 = 0;
    do
    {
      v11 = *((_BYTE *)v9 + v10);
      v12 = (char *)v9 + v10++;
      if ( (unsigned __int8)(v11 - 65) <= 0x19u )
        v11 += 32;
      *v12 = v11;
      v9 = v15;
    }
    while ( v10 < v14 - (_BYTE *)v15 );
  }
  std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (glitch::scene::CMeshCache::MeshEntry **)(a1 + 8),
    (int)v13);
  glitch::scene::CMeshCache::MeshEntry::~MeshEntry((glitch::scene::CMeshCache::MeshEntry *)v13);
}


// ===== 6bf6b0 glitch::scene::CMeshCache::addTerrainMesh(char const*,boost::intrusive_ptr<glitch::video::CImage> const&,boost::intrusive_ptr<glitch::video::CImage> const&,glitch::core::dimension2d<float> const&,float,glitch::core::dimension2d<int> const&) =====
char ***__fastcall glitch::scene::CMeshCache::addTerrainMesh(
        char ***a1,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8)
{
  char **v12; // r10
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted **v14; // r1
  void (__fastcall *v15)(_DWORD *, int, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v16; // r0
  glitch::IReferenceCounted *v18; // [sp+14h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v19; // [sp+18h] [bp-8h] BYREF
  glitch::IReferenceCounted *v20; // [sp+1Ch] [bp-4h] BYREF

  if ( a3 )
  {
    if ( (*(int (__fastcall **)(_DWORD *, int))(*a2 + 68))(a2, a3) )
    {
      (*(void (__fastcall **)(char ***, _DWORD *, int))(*a2 + 40))(a1, a2, a3);
    }
    else
    {
      glitch::scene::createTerrainMesh(&v20, a4, a5, a6, a7, a2[5], a8, 0);
      if ( v20 )
      {
        v19 = nullptr;
        v12 = (char **)operator new(0x30u, 0);
        glitch::scene::SAnimatedMesh::SAnimatedMesh((glitch::scene::SAnimatedMesh *)v12, (int *)&v19, 0);
        if ( v19 )
          glitch::IReferenceCounted::drop(v19);
        if ( v12 )
        {
          v13 = v20;
          if ( v20 )
          {
            v14 = (glitch::IReferenceCounted **)v12[9];
            if ( v14 == (glitch::IReferenceCounted **)v12[10] )
            {
              std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                v12 + 8,
                (int)v14,
                (int *)&v20);
            }
            else
            {
              *v14 = v20;
              ++*((_DWORD *)v13 + 1);
              v12[9] += 4;
            }
          }
          glitch::scene::SAnimatedMesh::recalculateBoundingBox((int)v12);
          v15 = *(void (__fastcall **)(_DWORD *, int, glitch::IReferenceCounted **))(*a2 + 12);
          v18 = (glitch::IReferenceCounted *)v12;
          ++v12[1];
          v15(a2, a3, &v18);
          if ( v18 )
            glitch::IReferenceCounted::drop(v18);
          *a1 = v12;
          ++v12[1];
          v16 = v20;
        }
        else
        {
          *a1 = nullptr;
          v16 = v20;
        }
        if ( v16 )
          glitch::IReferenceCounted::drop(v16);
      }
      else
      {
        *a1 = nullptr;
      }
    }
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 6bf848 glitch::scene::CMeshCache::setMeshFilename(boost::intrusive_ptr<glitch::scene::IMesh const> const&,char const*) =====
int __fastcall glitch::scene::CMeshCache::setMeshFilename(int a1, glitch::IReferenceCounted **a2, char *a3)
{
  int v3; // r6
  int v4; // r8
  int v7; // r4
  unsigned int v8; // r5
  int v9; // r12
  glitch::IReferenceCounted *v10; // r6
  glitch::IReferenceCounted *v11; // r8
  size_t v12; // r0
  _DWORD *v13; // r0
  unsigned int v14; // r1
  glitch::IReferenceCounted *v17; // [sp+14h] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 8);
  v4 = *(_DWORD *)(a1 + 12);
  if ( !(1227133513 * ((v4 - v3) >> 2)) )
    return 0;
  v7 = 0;
  v8 = 0;
  while ( 1 )
  {
    v9 = *(_DWORD *)(v3 + v7 + 24);
    if ( !v9 )
      goto LABEL_4;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v9 + 52))(&v17, *(_DWORD *)(v3 + v7 + 24));
    v10 = v17;
    v11 = *a2;
    if ( v17 )
      glitch::IReferenceCounted::drop(v17);
    if ( v10 == v11 )
      break;
    v3 = *(_DWORD *)(a1 + 8);
    v4 = *(_DWORD *)(a1 + 12);
LABEL_4:
    ++v8;
    v7 += 28;
    if ( v8 >= -1227133513 * ((v4 - v3) >> 2) )
      return 0;
  }
  v12 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)(*(_DWORD *)(a1 + 8) + v7),
    a3,
    &a3[v12]);
  v13 = *(_DWORD **)(a1 + 8);
  v14 = -1227133513 * ((*(_DWORD *)(a1 + 12) - (int)v13) >> 2);
  if ( v14 > 1 )
    glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(v13, v14);
  return 1;
}


// ===== 6bf98c glitch::scene::CMeshCache::setMeshFilename(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&,char const*) =====
int __fastcall glitch::scene::CMeshCache::setMeshFilename(int a1, int *a2, char *a3)
{
  _DWORD *v3; // r4
  int v6; // r12
  int v7; // r7
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // r1
  size_t v12; // r0
  _DWORD *v13; // r0
  unsigned int v14; // r1

  v3 = *(_DWORD **)(a1 + 8);
  v6 = -1227133513 * ((*(_DWORD *)(a1 + 12) - (int)v3) >> 2);
  if ( !v6 )
    return 0;
  v7 = *a2;
  if ( v3[6] != *a2 )
  {
    v8 = 7;
    v9 = 0;
    while ( 1 )
    {
      ++v9;
      v10 = &v3[v8];
      if ( v6 == v9 )
        return 0;
      v8 += 7;
      if ( v10[6] == v7 )
      {
        v3 = v10;
        break;
      }
    }
  }
  v12 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v3,
    a3,
    &a3[v12]);
  v13 = *(_DWORD **)(a1 + 8);
  v14 = -1227133513 * ((*(_DWORD *)(a1 + 12) - (int)v13) >> 2);
  if ( v14 > 1 )
    glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(v13, v14);
  return 1;
}


// ===== 6bfa64 glitch::core::binary_search<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::scene::CMeshCache::MeshEntry const&) =====
int __fastcall glitch::core::binary_search<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  char *v8; // r7
  unsigned int v9; // r2
  char *v10; // r8
  char *v11; // r6
  unsigned int v12; // r5
  unsigned int v13; // r3
  unsigned int v14; // r8
  unsigned int v15; // r1
  _BOOL4 v16; // r2
  unsigned int v17; // r1
  int v18; // r3

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::scene::CMeshCache::MeshEntry const*,glitch::scene::CMeshCache::MeshEntry,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry,glitch::scene::CMeshCache::MeshEntry>,int>(
         v4,
         v3,
         a2);
  if ( v7 == a1[1] )
    return -1;
  v8 = *(char **)(v7 + 20);
  v9 = *(_DWORD *)(v7 + 16) - (_DWORD)v8;
  if ( !v9 )
  {
    v10 = *(char **)(a2 + 16);
    v11 = *(char **)(a2 + 20);
    v12 = v10 - v11;
LABEL_6:
    v13 = v12 > v9;
    goto LABEL_7;
  }
  v10 = *(char **)(a2 + 16);
  v11 = *(char **)(a2 + 20);
  v12 = v10 - v11;
  if ( v10 == v11 )
    goto LABEL_6;
  v17 = *v8 - *v11;
  if ( !v17 )
  {
    v18 = 0;
    while ( ++v18 != v9 && v18 != v12 )
    {
      v17 = v8[v18] - v11[v18];
      if ( v17 )
        goto LABEL_22;
    }
    goto LABEL_6;
  }
LABEL_22:
  v13 = v17 >> 31;
LABEL_7:
  if ( v13 )
    return -1;
  v14 = v10 - v11;
  if ( !v14 || !v9 )
    goto LABEL_12;
  v15 = *v11 - *v8;
  if ( !v15 )
  {
    while ( v14 != ++v13 && v13 != v9 )
    {
      v15 = v11[v13] - v8[v13];
      if ( v15 )
        goto LABEL_25;
    }
LABEL_12:
    v16 = v14 < v9;
    goto LABEL_13;
  }
LABEL_25:
  v16 = v15 >> 31;
LABEL_13:
  if ( v16 )
    return -1;
  return -1227133513 * ((v7 - *a1) >> 2);
}


// ===== 6bfbc0 glitch::scene::CMeshCache::getMeshByFilename(char const*) =====
glitch::scene::CMeshCache *__fastcall glitch::scene::CMeshCache::getMeshByFilename(
        glitch::scene::CMeshCache *this,
        const char *a2,
        char *a3)
{
  unsigned int v6; // r6
  size_t v7; // r0
  _DWORD *v8; // r3
  char v9; // r2
  _BYTE *v10; // r3
  int v11; // r0
  int v12; // r3
  _DWORD v14[4]; // [sp+0h] [bp-20h] BYREF
  _BYTE *v15; // [sp+10h] [bp-10h]
  _DWORD *v16; // [sp+14h] [bp-Ch]
  int v17; // [sp+18h] [bp-8h]

  v15 = v14;
  v16 = v14;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v14,
    0x10u);
  v6 = 0;
  *v15 = 0;
  v17 = 0;
  v7 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v14,
    a3,
    &a3[v7]);
  v8 = v16;
  if ( v16 != (_DWORD *)v15 )
  {
    do
    {
      v9 = *((_BYTE *)v8 + v6);
      v10 = (char *)v8 + v6++;
      if ( (unsigned __int8)(v9 - 65) <= 0x19u )
        v9 += 32;
      *v10 = v9;
      v8 = v16;
    }
    while ( v6 < v15 - (_BYTE *)v16 );
  }
  v11 = glitch::core::binary_search<glitch::scene::CMeshCache::MeshEntry,glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry,(glitch::memory::E_MEMORY_HINT)0>>(
          (int *)a2 + 2,
          (int)v14);
  if ( v11 == -1 )
  {
    *(_DWORD *)this = 0;
  }
  else
  {
    v12 = *(_DWORD *)(*((_DWORD *)a2 + 2) + 28 * v11 + 24);
    *(_DWORD *)this = v12;
    if ( v12 )
      ++*(_DWORD *)(v12 + 4);
  }
  glitch::scene::CMeshCache::MeshEntry::~MeshEntry((glitch::scene::CMeshCache::MeshEntry *)v14);
  return this;
}


// ===== 6bfcec glitch::scene::CMeshCache::addHillPlaneMesh(uint,char const*,glitch::core::dimension2d<float> const&,glitch::core::dimension2d<uint> const&,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&,float,glitch::core::dimension2d<float> const&,glitch::core::dimension2d<float> const&) =====
char ***__fastcall glitch::scene::CMeshCache::addHillPlaneMesh(
        char ***a1,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10,
        int a11)
{
  char **v15; // r10
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted **v17; // r1
  void (__fastcall *v18)(_DWORD *, int, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v19; // r0
  glitch::IReferenceCounted *v21; // [sp+1Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v22; // [sp+20h] [bp-8h] BYREF
  glitch::IReferenceCounted *v23; // [sp+24h] [bp-4h] BYREF

  if ( a4 )
  {
    if ( (*(int (__fastcall **)(_DWORD *, int))(*a2 + 68))(a2, a4) )
    {
      (*(void (__fastcall **)(char ***, _DWORD *, int))(*a2 + 40))(a1, a2, a4);
    }
    else
    {
      glitch::scene::createHillPlaneMesh(&v23, a3, a2[5], a5, a6, a7, a8, a9, a10, a11);
      if ( v23 )
      {
        v22 = nullptr;
        v15 = (char **)operator new(0x30u, 0);
        glitch::scene::SAnimatedMesh::SAnimatedMesh((glitch::scene::SAnimatedMesh *)v15, (int *)&v22, 0);
        if ( v22 )
          glitch::IReferenceCounted::drop(v22);
        if ( v15 )
        {
          v16 = v23;
          if ( v23 )
          {
            v17 = (glitch::IReferenceCounted **)v15[9];
            if ( v17 == (glitch::IReferenceCounted **)v15[10] )
            {
              std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                v15 + 8,
                (int)v17,
                (int *)&v23);
            }
            else
            {
              *v17 = v23;
              ++*((_DWORD *)v16 + 1);
              v15[9] += 4;
            }
          }
          glitch::scene::SAnimatedMesh::recalculateBoundingBox((int)v15);
          v18 = *(void (__fastcall **)(_DWORD *, int, glitch::IReferenceCounted **))(*a2 + 12);
          v21 = (glitch::IReferenceCounted *)v15;
          ++v15[1];
          v18(a2, a4, &v21);
          if ( v21 )
            glitch::IReferenceCounted::drop(v21);
          *a1 = v15;
          ++v15[1];
          v19 = v23;
        }
        else
        {
          *a1 = nullptr;
          v19 = v23;
        }
        if ( v19 )
          glitch::IReferenceCounted::drop(v19);
      }
      else
      {
        *a1 = nullptr;
      }
    }
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 6bfe98 glitch::scene::CMeshCache::addSphereMesh(uint,char const*,float,uint,uint) =====
glitch::scene::CMeshCache *__fastcall glitch::scene::CMeshCache::addSphereMesh(
        glitch::scene::CMeshCache *this,
        glitch::video::IVideoDriver **a2,
        const char *a3,
        float a4,
        float a5,
        unsigned int a6,
        unsigned int a7)
{
  char **v11; // r10
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted **v13; // r1
  void (__fastcall *v14)(glitch::video::IVideoDriver **, _DWORD, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+10h] [bp-8h] BYREF
  glitch::IReferenceCounted *v19; // [sp+14h] [bp-4h] BYREF

  if ( a4 == 0.0 )
  {
    *(_DWORD *)this = 0;
  }
  else if ( (*((int (__fastcall **)(glitch::video::IVideoDriver **, _DWORD))*a2 + 17))(a2, LODWORD(a4)) )
  {
    (*((void (__fastcall **)(glitch::scene::CMeshCache *, glitch::video::IVideoDriver **, _DWORD))*a2 + 10))(
      this,
      a2,
      LODWORD(a4));
  }
  else
  {
    glitch::scene::createSphereMesh((glitch::scene *)&v19, (unsigned int)a3, a2[5], a5, a6, a7);
    if ( v19 )
    {
      v18 = nullptr;
      v11 = (char **)operator new(0x30u, 0);
      glitch::scene::SAnimatedMesh::SAnimatedMesh((glitch::scene::SAnimatedMesh *)v11, (int *)&v18, 0);
      if ( v18 )
        glitch::IReferenceCounted::drop(v18);
      if ( v11 )
      {
        v12 = v19;
        if ( v19 )
        {
          v13 = (glitch::IReferenceCounted **)v11[9];
          if ( v13 == (glitch::IReferenceCounted **)v11[10] )
          {
            std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v11 + 8,
              (int)v13,
              (int *)&v19);
          }
          else
          {
            *v13 = v19;
            ++*((_DWORD *)v12 + 1);
            v11[9] += 4;
          }
        }
        glitch::scene::SAnimatedMesh::recalculateBoundingBox((int)v11);
        v14 = *((void (__fastcall **)(glitch::video::IVideoDriver **, _DWORD, glitch::IReferenceCounted **))*a2 + 3);
        v17 = (glitch::IReferenceCounted *)v11;
        ++v11[1];
        v14(a2, LODWORD(a4), &v17);
        if ( v17 )
          glitch::IReferenceCounted::drop(v17);
        *(_DWORD *)this = v11;
        ++v11[1];
        v15 = v19;
      }
      else
      {
        *(_DWORD *)this = 0;
        v15 = v19;
      }
      if ( v15 )
        glitch::IReferenceCounted::drop(v15);
    }
    else
    {
      *(_DWORD *)this = 0;
    }
  }
  return this;
}


// ===== 6c0024 glitch::scene::CMeshCache::addArrowMesh(uint,char const*,glitch::video::SColor,glitch::video::SColor,uint,uint,float,float,float,float) =====
char ***__fastcall glitch::scene::CMeshCache::addArrowMesh(
        char ***a1,
        int *a2,
        int a3,
        int a4,
        char a5,
        char a6,
        int a7,
        int a8,
        int a9,
        int a10,
        int a11,
        int a12)
{
  char **v16; // r10
  glitch::IReferenceCounted *v17; // r3
  glitch::IReferenceCounted **v18; // r1
  void (__fastcall *v19)(int *, int, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v20; // r0
  glitch::IReferenceCounted *v22; // [sp+24h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v23; // [sp+28h] [bp-8h] BYREF
  glitch::IReferenceCounted *v24; // [sp+2Ch] [bp-4h] BYREF

  if ( a4 )
  {
    if ( (*(int (__fastcall **)(int *, int))(*a2 + 68))(a2, a4) )
    {
      (*(void (__fastcall **)(char ***, int *, int))(*a2 + 40))(a1, a2, a4);
    }
    else
    {
      glitch::scene::createArrowMesh((int)&v24, a3, a2[5], a7, a8, a9, a10, a11, a12, a5, a6);
      if ( v24 )
      {
        v23 = nullptr;
        v16 = (char **)operator new(0x30u, 0);
        glitch::scene::SAnimatedMesh::SAnimatedMesh((glitch::scene::SAnimatedMesh *)v16, (int *)&v23, 0);
        if ( v23 )
          glitch::IReferenceCounted::drop(v23);
        if ( v16 )
        {
          v17 = v24;
          if ( v24 )
          {
            v18 = (glitch::IReferenceCounted **)v16[9];
            if ( v18 == (glitch::IReferenceCounted **)v16[10] )
            {
              std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                v16 + 8,
                (int)v18,
                (int *)&v24);
            }
            else
            {
              *v18 = v24;
              ++*((_DWORD *)v17 + 1);
              v16[9] += 4;
            }
          }
          glitch::scene::SAnimatedMesh::recalculateBoundingBox((int)v16);
          v19 = *(void (__fastcall **)(int *, int, glitch::IReferenceCounted **))(*a2 + 12);
          v22 = (glitch::IReferenceCounted *)v16;
          ++v16[1];
          v19(a2, a4, &v22);
          if ( v22 )
            glitch::IReferenceCounted::drop(v22);
          *a1 = v16;
          ++v16[1];
          v20 = v24;
        }
        else
        {
          *a1 = nullptr;
          v20 = v24;
        }
        if ( v20 )
          glitch::IReferenceCounted::drop(v20);
      }
      else
      {
        *a1 = nullptr;
      }
    }
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 6c01d8 glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::getPerParticleTexCoords(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::ps::SParticle const*) =====
void glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::getPerParticleTexCoords()
{
  ;
}


// ===== 6c01dc glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::getPerParticleTexCoords(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::ps::GNPSParticle const*) =====
int __fastcall glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::getPerParticleTexCoords(
        int a1,
        _DWORD *a2)
{
  int v2; // r3
  int result; // r0
  int v4; // r3

  glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::TexCoords[0] = a2[16];
  dword_9F7B8C = a2[17];
  v2 = a2[19];
  dword_9F7B90 = a2[16];
  dword_9F7B94 = v2;
  dword_9F7B98 = a2[18];
  dword_9F7B9C = a2[19];
  result = a2[17];
  v4 = a2[18];
  dword_9F7BA4 = result;
  dword_9F7BA0 = v4;
  return result;
}


// ===== 6c0238 glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::ps::SParticle const*) =====
float __fastcall glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(int a1, int a2)
{
  float v2; // r8
  float v3; // r7
  float v4; // r6
  float v5; // r11
  float v6; // r9
  float v7; // r10
  float *v8; // r0
  float v9; // r5
  float v10; // r7
  float v11; // r6
  _BOOL4 v12; // r0
  float v13; // r1
  int v15; // r2
  int v16; // r3
  float *v17; // r8
  int v18; // r6
  int v19; // r0
  float *v20; // r5
  float v21; // r0
  float v23[4]; // [sp+Ch] [bp-68h] BYREF
  float v24[3]; // [sp+1Ch] [bp-58h] BYREF
  float v25[3]; // [sp+28h] [bp-4Ch] BYREF
  float v26[3]; // [sp+34h] [bp-40h] BYREF
  float v27[3]; // [sp+40h] [bp-34h] BYREF
  float v28[3]; // [sp+4Ch] [bp-28h] BYREF
  float v29; // [sp+58h] [bp-1Ch] BYREF
  int v30; // [sp+5Ch] [bp-18h]
  int v31; // [sp+60h] [bp-14h]
  float v32; // [sp+64h] [bp-10h] BYREF
  float v33; // [sp+68h] [bp-Ch]
  float v34; // [sp+6Ch] [bp-8h]

  v2 = *(float *)&dword_9F7BF8;
  v3 = *(float *)&dword_9F7BFC;
  v4 = *(float *)&dword_9F7C00;
  v5 = *(float *)&dword_9F7C04;
  v6 = *(float *)&dword_9F7C08;
  v7 = *(float *)&dword_9F7C0C;
  v23[3] = 1.0;
  memset(v23, 0, 12);
  v32 = *(float *)&dword_9F7BF8;
  v33 = *(float *)&dword_9F7BFC;
  v34 = *(float *)&dword_9F7C00;
  v29 = *(float *)&dword_9F7C04;
  v30 = dword_9F7C08;
  v31 = dword_9F7C0C;
  if ( *(_BYTE *)(a1 + 32) )
  {
    v15 = *(_DWORD *)(a2 + 16);
    v16 = *(_DWORD *)(a2 + 20);
    v29 = *(float *)(a2 + 12);
    v30 = v15;
    v31 = v16;
    v17 = glitch::core::vector3d<float>::normalize(&v29);
    *(float *)&v18 = v17[1] * 0.5;
    *(float *)&v19 = v17[2] * 0.5;
    v29 = *v17 * 0.5;
    v30 = v18;
    v31 = v19;
    v28[0] = (float)(COERCE_FLOAT(v18 + 0x80000000) * *(float *)&dword_9F7BF4)
           + (float)(*(float *)&v19 * *(float *)&dword_9F7BF0);
    v28[1] = (float)(COERCE_FLOAT(v19 + 0x80000000) * *(float *)&dword_9F7BEC) + (float)(v29 * *(float *)&dword_9F7BF4);
    v28[2] = (float)(*(float *)&dword_9F7BF0 * COERCE_FLOAT(LODWORD(v29) + 0x80000000))
           + (float)(*(float *)&v18 * *(float *)&dword_9F7BEC);
    v20 = glitch::core::vector3d<float>::normalize(v28);
    v2 = COERCE_FLOAT(*(_DWORD *)v20 + 0x80000000) * 0.5;
    v3 = COERCE_FLOAT(*((_DWORD *)v20 + 1) + 0x80000000) * 0.5;
    v21 = COERCE_FLOAT(*((_DWORD *)v20 + 2) + 0x80000000) * 0.5;
    v7 = *(float *)&v31;
    v4 = v21;
    v6 = *(float *)&v30;
    v5 = v29;
    v32 = v2;
    v33 = v3;
    v34 = v21;
  }
  if ( *(float *)(a2 + 80) != 0.0 )
  {
    v27[0] = (float)(COERCE_FLOAT(LODWORD(v3) + 0x80000000) * v7) + (float)(v4 * v6);
    v27[1] = (float)(COERCE_FLOAT(LODWORD(v4) + 0x80000000) * v5) + (float)(v7 * v2);
    v27[2] = (float)(COERCE_FLOAT(LODWORD(v2) + 0x80000000) * v6) + (float)(v3 * v5);
    v8 = glitch::core::vector3d<float>::normalize(v27);
    v9 = v8[2];
    v10 = *v8;
    v11 = v8[1];
    v12 = *(float *)(a2 + 84) > 0.0;
    if ( *(float *)(a2 + 84) > 0.0 )
      LODWORD(v9) += 0x80000000;
    v13 = *(float *)(a2 + 80);
    v26[2] = v9;
    if ( v12 )
    {
      LODWORD(v10) += 0x80000000;
      LODWORD(v11) += 0x80000000;
    }
    v26[0] = v10;
    v26[1] = v11;
    glitch::core::quaternion::fromAngleAxis(v23, v13, v26);
    glitch::core::quaternion::operator*(v25, v23, &v32);
    v32 = v25[0];
    v33 = v25[1];
    v34 = v25[2];
    glitch::core::quaternion::operator*(v24, v23, &v29);
    v5 = v24[0];
    v6 = v24[1];
    v7 = v24[2];
    v2 = v32;
    v3 = v33;
    v4 = v34;
  }
  *(float *)&dword_9F7C10 = v5 - v2;
  *(float *)&dword_9F7C14 = v6 - v3;
  *(float *)&dword_9F7C18 = v7 - v4;
  *(float *)&dword_9F7C1C = COERCE_FLOAT(LODWORD(v2) + 0x80000000) - v5;
  *(float *)&dword_9F7C20 = COERCE_FLOAT(LODWORD(v3) + 0x80000000) - v6;
  *(float *)&dword_9F7C24 = COERCE_FLOAT(LODWORD(v4) + 0x80000000) - v7;
  *(float *)&dword_9F7C28 = v2 - v5;
  *(float *)&dword_9F7C2C = v3 - v6;
  *(float *)&dword_9F7C30 = v4 - v7;
  *(float *)&dword_9F7C34 = v5 + v2;
  *(float *)&dword_9F7C38 = v6 + v3;
  *(float *)&dword_9F7C3C = v7 + v4;
  return v7 + v4;
}


// ===== 6c063c glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::ps::GNPSParticle const*) =====
float __fastcall glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(
        int a1,
        float *a2)
{
  float v2; // r8
  float v3; // r7
  float v4; // r6
  float v5; // r11
  float v6; // r9
  float v7; // r10
  float *v8; // r0
  float v9; // r5
  float v10; // r7
  float v11; // r6
  _BOOL4 v12; // r0
  float v13; // r1
  float v14; // r10
  int v15; // r8
  int v16; // r7
  float v18; // r2
  float v19; // r3
  float *v20; // r8
  float v21; // r6
  float v22; // r0
  float *v23; // r5
  float v24; // r0
  float v26[4]; // [sp+8h] [bp-74h] BYREF
  float v27[3]; // [sp+18h] [bp-64h] BYREF
  float v28[3]; // [sp+24h] [bp-58h] BYREF
  float v29[3]; // [sp+30h] [bp-4Ch] BYREF
  float v30[3]; // [sp+3Ch] [bp-40h] BYREF
  float v31[3]; // [sp+48h] [bp-34h] BYREF
  float v32[3]; // [sp+54h] [bp-28h] BYREF
  float v33; // [sp+60h] [bp-1Ch] BYREF
  float v34; // [sp+64h] [bp-18h]
  float v35; // [sp+68h] [bp-14h]
  float v36; // [sp+6Ch] [bp-10h] BYREF
  float v37; // [sp+70h] [bp-Ch]
  float v38; // [sp+74h] [bp-8h]

  v2 = *(float *)&dword_9F7C64;
  v3 = *(float *)&dword_9F7C68;
  v4 = *(float *)&dword_9F7C6C;
  v5 = *(float *)&dword_9F7C70;
  v6 = *(float *)&dword_9F7C74;
  v7 = *(float *)&dword_9F7C78;
  v26[3] = 1.0;
  memset(v26, 0, 12);
  v36 = *(float *)&dword_9F7C64;
  v37 = *(float *)&dword_9F7C68;
  v38 = *(float *)&dword_9F7C6C;
  v33 = *(float *)&dword_9F7C70;
  v34 = *(float *)&dword_9F7C74;
  v35 = *(float *)&dword_9F7C78;
  if ( *(_BYTE *)(a1 + 32) )
  {
    v18 = a2[4];
    v19 = a2[5];
    v33 = a2[3];
    v34 = v18;
    v35 = v19;
    v20 = glitch::core::vector3d<float>::normalize(&v33);
    v21 = v20[1] * 0.5;
    v22 = v20[2] * 0.5;
    v33 = *v20 * 0.5;
    v34 = v21;
    v35 = v22;
    v32[0] = (float)(COERCE_FLOAT(LODWORD(v21) + 0x80000000) * *(float *)&dword_9F7C60)
           + (float)(v22 * *(float *)&dword_9F7C5C);
    v32[1] = (float)(COERCE_FLOAT(LODWORD(v22) + 0x80000000) * *(float *)&dword_9F7C58)
           + (float)(v33 * *(float *)&dword_9F7C60);
    v32[2] = (float)(*(float *)&dword_9F7C5C * COERCE_FLOAT(LODWORD(v33) + 0x80000000))
           + (float)(v21 * *(float *)&dword_9F7C58);
    v23 = glitch::core::vector3d<float>::normalize(v32);
    v2 = COERCE_FLOAT(*(_DWORD *)v23 + 0x80000000) * 0.5;
    v3 = COERCE_FLOAT(*((_DWORD *)v23 + 1) + 0x80000000) * 0.5;
    v24 = COERCE_FLOAT(*((_DWORD *)v23 + 2) + 0x80000000) * 0.5;
    v7 = v35;
    v4 = v24;
    v6 = v34;
    v5 = v33;
    v36 = v2;
    v37 = v3;
    v38 = v24;
  }
  if ( a2[28] != 0.0 )
  {
    v31[0] = (float)(COERCE_FLOAT(LODWORD(v3) + 0x80000000) * v7) + (float)(v4 * v6);
    v31[1] = (float)(COERCE_FLOAT(LODWORD(v4) + 0x80000000) * v5) + (float)(v7 * v2);
    v31[2] = (float)(COERCE_FLOAT(LODWORD(v2) + 0x80000000) * v6) + (float)(v3 * v5);
    v8 = glitch::core::vector3d<float>::normalize(v31);
    v9 = v8[2];
    v10 = *v8;
    v11 = v8[1];
    v12 = a2[29] > 0.0;
    if ( a2[29] > 0.0 )
      LODWORD(v11) += 0x80000000;
    v13 = a2[28];
    v30[1] = v11;
    if ( v12 )
    {
      LODWORD(v10) += 0x80000000;
      LODWORD(v9) += 0x80000000;
    }
    v30[0] = v10;
    v30[2] = v9;
    glitch::core::quaternion::fromAngleAxis(v26, v13, v30);
    v14 = a2[35];
    *(float *)&v15 = (float)((float)(a2[34] * v37) + (float)(v14 * v34))
                   + (float)((float)(a2[34] * v37) + (float)(v14 * v34));
    *(float *)&v16 = (float)((float)(a2[34] * v38) + (float)(v14 * v35))
                   + (float)((float)(a2[34] * v38) + (float)(v14 * v35));
    *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot = (float)((float)(a2[34] * v36)
                                                                                             + (float)(v14 * v33))
                                                                                     + (float)((float)(a2[34] * v36)
                                                                                             + (float)(v14 * v33));
    dword_9F7CC8 = v15;
    dword_9F7CCC = v16;
    glitch::core::quaternion::operator*(v29, v26, &v36);
    v36 = v29[0];
    v37 = v29[1];
    v38 = v29[2];
    glitch::core::quaternion::operator*(v28, v26, &v33);
    v33 = v28[0];
    v34 = v28[1];
    v35 = v28[2];
    glitch::core::quaternion::operator*(
      v27,
      v26,
      (float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot);
    v5 = v33;
    v2 = v36;
    dword_9F7CCC = LODWORD(v27[2]);
    v6 = v34;
    v3 = v37;
    glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot = LODWORD(v27[0]);
    v7 = v35;
    v4 = v38;
    dword_9F7CC8 = LODWORD(v27[1]);
  }
  *(float *)&dword_9F7C7C = v5 - v2;
  *(float *)&dword_9F7C80 = v6 - v3;
  *(float *)&dword_9F7C84 = v7 - v4;
  *(float *)&dword_9F7C88 = COERCE_FLOAT(LODWORD(v2) + 0x80000000) - v5;
  *(float *)&dword_9F7C8C = COERCE_FLOAT(LODWORD(v3) + 0x80000000) - v6;
  *(float *)&dword_9F7C90 = COERCE_FLOAT(LODWORD(v4) + 0x80000000) - v7;
  *(float *)&dword_9F7C94 = v2 - v5;
  *(float *)&dword_9F7C98 = v3 - v6;
  *(float *)&dword_9F7C9C = v4 - v7;
  *(float *)&dword_9F7CA0 = v5 + v2;
  *(float *)&dword_9F7CA4 = v3 + v6;
  *(float *)&dword_9F7CA8 = v7 + v4;
  return v7 + v4;
}


// ===== 6c0b3c `global constructor keyed to'.._source_particlesystem_scr_CParticleBillboardBakerModel.cpp =====
int *`global constructor keyed to'.._source_particlesystem_scr_CParticleBillboardBakerModel.cpp()
{
  int *v0; // r3
  int *v1; // r3

  dword_9F7B7C = 1056964608;
  byte_9F7B87 = -1;
  byte_9F7B83 = -1;
  glitch::ps::vHalf = 1056964608;
  dword_9F7B78 = 1056964608;
  dword_9F7BA4 = 0;
  dword_9F7BC4 = 0;
  glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>::Color = -1;
  byte_9F7B81 = -1;
  byte_9F7B82 = -1;
  glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>::Color = -1;
  byte_9F7B85 = -1;
  byte_9F7B86 = -1;
  glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::TexCoords[0] = 0;
  dword_9F7B8C = 0;
  dword_9F7B90 = 0;
  dword_9F7B94 = 0;
  dword_9F7B98 = 0;
  dword_9F7B9C = 0;
  dword_9F7BA0 = 0;
  glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::TexCoords[0] = 0;
  dword_9F7BAC = 0;
  dword_9F7BB0 = 0;
  dword_9F7BB4 = 1065353216;
  dword_9F7BB8 = 1065353216;
  dword_9F7BBC = 1065353216;
  dword_9F7BC0 = 1065353216;
  glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>::Normal = 0;
  dword_9F7BCC = 1065353216;
  dword_9F7BD0 = 0;
  dword_9F7BD8 = 1065353216;
  dword_9F7BDC = 0;
  glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>::Normal = 0;
  v0 = &dword_9F7BEC;
  do
  {
    *(v0 - 3) = 0;
    *(v0 - 2) = 0;
    *(v0 - 1) = 0;
    v0 += 3;
  }
  while ( v0 != &dword_9F7C58 );
  v1 = &dword_9F7C58;
  do
  {
    *(v1 - 3) = 0;
    *(v1 - 2) = 0;
    *(v1 - 1) = 0;
    v1 += 3;
  }
  while ( v1 != &glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot );
  dword_9F7CC0 = 0;
  glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Pivot = 0;
  dword_9F7CCC = 0;
  dword_9F7CBC = 0;
  byte_9F7CD3 = -1;
  glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot = 0;
  dword_9F7CC8 = 0;
  glitch::ps::PSBillboardShaderParametersBaker::DiffuseColor = -1;
  byte_9F7CD1 = -1;
  byte_9F7CD2 = -1;
  return &glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot;
}


// ===== 6c0ce4 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_DWORD *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_DWORD *a1)
{
  *((_BYTE *)a1 + 64) = 0;
  LC_API_MEMSET_0(a1, 0, 0x40u);
  *((_BYTE *)a1 + 64) = 1;
  a1[15] = 1065353216;
  *a1 = 1065353216;
  a1[5] = 1065353216;
  a1[10] = 1065353216;
  return a1;
}


// ===== 6c0d20 `global constructor keyed to'.._source_particlesystem_scr_CParticleGenericBakerModel.cpp =====
_DWORD *`global constructor keyed to'.._source_particlesystem_scr_CParticleGenericBakerModel.cpp()
{
  dword_9F7CDC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7CD8 = 1056964608;
  dword_9F7CF4 = 0;
  dword_9F7CE8 = 0;
  glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::Position = 0;
  dword_9F7CE4 = 0;
  glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::Position = 0;
  dword_9F7CF0 = 0;
  glitch::core::CMatrix4<float>::CMatrix4(&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SpinMat);
  glitch::core::CMatrix4<float>::CMatrix4(&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SpinMat);
  glitch::core::CMatrix4<float>::CMatrix4(&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::RotMat);
  return glitch::core::CMatrix4<float>::CMatrix4(&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::RotMat);
}


// ===== 6c0dc4 glitch::scene::CParticleSystemSceneNode::getType(void) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::getType(glitch::scene::CParticleSystemSceneNode *this)
{
  return 1818457200;
}


// ===== 6c0dd0 glitch::scene::CParticleSystemSceneNode::getNumberOfParticles(void) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::getNumberOfParticles(
        glitch::scene::CParticleSystemSceneNode *this)
{
  return -252645135 * ((*((_DWORD *)this + 80) - *((_DWORD *)this + 79)) >> 2);
}


// ===== 6c0df8 glitch::scene::CParticleSystemSceneNode::getEmitter(void) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::getEmitter(glitch::scene::CParticleSystemSceneNode *this)
{
  return *((_DWORD *)this + 78);
}


// ===== 6c0e00 glitch::scene::CParticleSystemSceneNode::setEmitter(glitch::scene::IParticleEmitter *) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::setEmitter(int result, _DWORD *a2)
{
  _DWORD *v2; // r3
  int v3; // r4

  v2 = *(_DWORD **)(result + 312);
  v3 = result;
  if ( v2 )
    result = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
  *(_DWORD *)(v3 + 312) = a2;
  if ( a2 )
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*a2 - 12) + 4);
  return result;
}


// ===== 6c0e50 glitch::scene::CParticleSystemSceneNode::getMaterial(uint) =====
char *__fastcall glitch::scene::CParticleSystemSceneNode::getMaterial(
        glitch::scene::CParticleSystemSceneNode *this,
        unsigned int a2)
{
  return (char *)this + 372;
}


// ===== 6c0e58 glitch::scene::CParticleSystemSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::getMaterialCount(glitch::scene::CParticleSystemSceneNode *this)
{
  return 1;
}


// ===== 6c0e60 glitch::scene::CParticleSystemSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::onRegisterSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  if ( -252645135 * ((*((_DWORD *)this + 80) - *((_DWORD *)this + 79)) >> 2) )
    (*(void (__fastcall **)(_DWORD, glitch::scene::CParticleSystemSceneNode *, char *, int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
      *((_DWORD *)this + 68),
      this,
      (char *)this + 372,
      1,
      3,
      0,
      0x7FFFFFFF);
  return 1;
}


// ===== 6c0ed8 glitch::scene::CParticleSystemSceneNode::setTransparency(float) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::setTransparency(int this, float a2)
{
  *(float *)(this + 388) = a2;
  return this;
}


// ===== 6c0ee0 glitch::scene::CParticleSystemSceneNode::render(void *) =====
void __fastcall glitch::scene::CParticleSystemSceneNode::render(
        glitch::scene::CParticleSystemSceneNode *this,
        void *a2)
{
  ;
}


// ===== 6c0ee4 glitch::scene::CParticleSystemSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CParticleSystemSceneNode::getBoundingBox(glitch::scene::CParticleSystemSceneNode *this)
{
  return (char *)this + 344;
}


// ===== 6c0eec glitch::scene::CParticleSystemSceneNode::setParticlesAreGlobal(bool) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::setParticlesAreGlobal(int this, bool a2)
{
  *(_BYTE *)(this + 384) = a2;
  return this;
}


// ===== 6c0ef4 glitch::scene::CParticleSystemSceneNode::setParticleSize(glitch::core::dimension2d<float> const&) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::setParticleSize(int result, _DWORD *a2)
{
  *(_DWORD *)(result + 328) = *a2;
  *(_DWORD *)(result + 332) = a2[1];
  return result;
}


// ===== 6c0f08 glitch::scene::CParticleSystemSceneNode::reallocateBuffers(void) =====
void __fastcall glitch::scene::CParticleSystemSceneNode::reallocateBuffers(
        glitch::scene::CParticleSystemSceneNode *this)
{
  ;
}


// ===== 6c0f0c glitch::scene::CParticleSystemSceneNode::setBillboardType(glitch::scene::E_PARTICLE_BILLBOARD_TYPE) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::setBillboardType(int result, int a2)
{
  *(_DWORD *)(result + 380) = a2;
  return result;
}


// ===== 6c0f14 std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(glitch::scene::SParticle *,glitch::scene::SParticle *,glitch::scene::SParticle *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r3
  int v4; // r1
  int v5; // r4
  _DWORD *v6; // r12
  int v7; // r5

  v3 = a1;
  v4 = -252645135 * ((a2 - (int)a1) >> 2);
  if ( v4 > 0 )
  {
    v5 = v4;
    v6 = a3;
    do
    {
      --v5;
      *v6 = *v3;
      v6[1] = v3[1];
      v6[2] = v3[2];
      v6[3] = v3[3];
      v6[4] = v3[4];
      v6[5] = v3[5];
      v6[6] = v3[6];
      v6[7] = v3[7];
      v6[8] = v3[8];
      v6[9] = v3[9];
      v6[10] = v3[10];
      v6[11] = v3[11];
      v6[12] = v3[12];
      v6[13] = v3[13];
      v6[14] = v3[14];
      v6[15] = v3[15];
      v7 = v3[16];
      v3 += 17;
      v6[16] = v7;
      v6 += 17;
    }
    while ( v5 );
    a3 += 17 * v4;
  }
  return a3;
}


// ===== 6c0ff4 std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(glitch::scene::SParticle *,glitch::scene::SParticle *,glitch::scene::SParticle *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v5; // r12
  _DWORD *v6; // r1
  int v7; // r4

  v3 = -252645135 * ((a2 - (int)a1) >> 2);
  if ( v3 <= 0 )
    return a3;
  v5 = -252645135 * ((a2 - (int)a1) >> 2);
  v6 = a3;
  do
  {
    --v5;
    *v6 = *a1;
    v6[1] = a1[1];
    v6[2] = a1[2];
    v6[3] = a1[3];
    v6[4] = a1[4];
    v6[5] = a1[5];
    v6[6] = a1[6];
    v6[7] = a1[7];
    v6[8] = a1[8];
    v6[9] = a1[9];
    v6[10] = a1[10];
    v6[11] = a1[11];
    v6[12] = a1[12];
    v6[13] = a1[13];
    v6[14] = a1[14];
    v6[15] = a1[15];
    v7 = a1[16];
    a1 += 17;
    v6[16] = v7;
    v6 += 17;
  }
  while ( v5 );
  return &a3[17 * v3];
}


// ===== 6c10d0 std::priv::__copy_backward<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(glitch::scene::SParticle *,glitch::scene::SParticle *,glitch::scene::SParticle *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy_backward<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r4
  int v6; // r5

  v3 = -252645135 * ((a2 - a1) >> 2);
  if ( v3 > 0 )
  {
    v4 = a3;
    v5 = -252645135 * ((a2 - a1) >> 2);
    do
    {
      --v5;
      *(_DWORD *)(v4 - 68) = *(_DWORD *)(a2 - 68);
      *(_DWORD *)(v4 - 64) = *(_DWORD *)(a2 - 64);
      *(_DWORD *)(v4 - 60) = *(_DWORD *)(a2 - 60);
      *(_DWORD *)(v4 - 56) = *(_DWORD *)(a2 - 56);
      *(_DWORD *)(v4 - 52) = *(_DWORD *)(a2 - 52);
      *(_DWORD *)(v4 - 48) = *(_DWORD *)(a2 - 48);
      *(_DWORD *)(v4 - 44) = *(_DWORD *)(a2 - 44);
      *(_DWORD *)(v4 - 40) = *(_DWORD *)(a2 - 40);
      *(_DWORD *)(v4 - 36) = *(_DWORD *)(a2 - 36);
      *(_DWORD *)(v4 - 32) = *(_DWORD *)(a2 - 32);
      *(_DWORD *)(v4 - 28) = *(_DWORD *)(a2 - 28);
      *(_DWORD *)(v4 - 24) = *(_DWORD *)(a2 - 24);
      *(_DWORD *)(v4 - 20) = *(_DWORD *)(a2 - 20);
      *(_DWORD *)(v4 - 16) = *(_DWORD *)(a2 - 16);
      *(_DWORD *)(v4 - 12) = *(_DWORD *)(a2 - 12);
      *(_DWORD *)(v4 - 8) = *(_DWORD *)(a2 - 8);
      v6 = *(_DWORD *)(a2 - 4);
      a2 -= 68;
      *(_DWORD *)(v4 - 4) = v6;
      v4 -= 68;
    }
    while ( v5 );
    a3 += -68 * (v3 - 1) - 68;
  }
  return a3;
}


// ===== 6c11b8 std::priv::__fill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(glitch::scene::SParticle *,glitch::scene::SParticle *,glitch::scene::SParticle const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__fill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(
        _DWORD *result,
        int a2,
        _DWORD *a3)
{
  int v3; // r3

  v3 = -252645135 * ((a2 - (int)result) >> 2);
  if ( v3 > 0 )
  {
    do
    {
      --v3;
      *result = *a3;
      result[1] = a3[1];
      result[2] = a3[2];
      result[3] = a3[3];
      result[4] = a3[4];
      result[5] = a3[5];
      result[6] = a3[6];
      result[7] = a3[7];
      result[8] = a3[8];
      result[9] = a3[9];
      result[10] = a3[10];
      result[11] = a3[11];
      result[12] = a3[12];
      result[13] = a3[13];
      result[14] = a3[14];
      result[15] = a3[15];
      result[16] = a3[16];
      result += 17;
    }
    while ( v3 );
  }
  return result;
}


// ===== 6c1274 std::priv::__ufill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(glitch::scene::SParticle *,glitch::scene::SParticle *,glitch::scene::SParticle const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(
        _DWORD *result,
        int a2,
        _DWORD *a3)
{
  int v3; // r3

  v3 = -252645135 * ((a2 - (int)result) >> 2);
  if ( v3 > 0 )
  {
    while ( 1 )
    {
      --v3;
      *result = *a3;
      result[1] = a3[1];
      result[2] = a3[2];
      result[3] = a3[3];
      result[4] = a3[4];
      result[5] = a3[5];
      result[6] = a3[6];
      result[7] = a3[7];
      result[8] = a3[8];
      result[9] = a3[9];
      result[10] = a3[10];
      result[11] = a3[11];
      result[12] = a3[12];
      result[13] = a3[13];
      result[14] = a3[14];
      result[15] = a3[15];
      result[16] = a3[16];
      if ( !v3 )
        break;
      result += 17;
    }
  }
  return result;
}


// ===== 6c1330 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::SParticle*,uint,glitch::scene::SParticle const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v7; // r6
  unsigned int v9; // r8
  _DWORD *v10; // r10
  int v11; // r10

  if ( (unsigned int)a4 >= *a1 )
  {
    v7 = (_DWORD *)a1[1];
    if ( a4 < v7 )
      return (_DWORD *)std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(a1);
  }
  else
  {
    v7 = (_DWORD *)a1[1];
  }
  v9 = -252645135 * (v7 - a2);
  if ( a3 < v9 )
  {
    v11 = 68 * a3;
    std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(&v7[-17 * a3], (int)v7, v7);
    a1[1] += v11;
    std::priv::__copy_backward<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
      (int)a2,
      (int)&v7[v11 / 0xFFFFFFFC],
      (int)v7);
    return std::priv::__fill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(a2, (int)&a2[v11 / 4u], a4);
  }
  else
  {
    v10 = &v7[17 * (a3 - v9)];
    std::priv::__ufill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(v7, (int)v10, a4);
    a1[1] = v10;
    std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(a2, (int)v7, v10);
    a1[1] += 4 * (v7 - a2);
    return std::priv::__fill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(a2, (int)v7, a4);
  }
}


// ===== 6c1534 `global constructor keyed to'.._source_glitch_scene_CParticleSystemSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleSystemSceneNode.cpp()
{
  dword_9F7E18 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E14 = 1056964608;
}


// ===== 6c1554 glitch::scene::CParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::serializeAttributes(int a1, int a2, _DWORD *a3)
{
  int v6; // r3
  int v7; // r2
  int result; // r0
  int (__fastcall ***v9)(_DWORD, int, _DWORD *); // r3
  int *i; // r4
  int v11; // r7
  int *v12; // t1
  int v13; // r0

  glitch::scene::ISceneNode::serializeAttributes(a1, a2, a3);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "GlobalParticles",
    *(unsigned __int8 *)(a1 + 384),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "ParticleWidth",
    *(_DWORD *)(a1 + 328),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "ParticleHeight",
    *(_DWORD *)(a1 + 332),
    0);
  v6 = *(_DWORD *)(a1 + 312);
  if ( v6 )
    v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 64))(*(_DWORD *)(a1 + 312));
  else
    v7 = 7;
  result = (*(int (__fastcall **)(int, const char *, int, _UNKNOWN **, _DWORD))(*(_DWORD *)a2 + 244))(
             a2,
             "Emitter",
             v7,
             &glitch::scene::ParticleEmitterTypeNames,
             0);
  v9 = *(int (__fastcall ****)(_DWORD, int, _DWORD *))(a1 + 312);
  if ( v9 )
    result = (**v9)(*(_DWORD *)(a1 + 312), a2, a3);
  v12 = *(int **)(a1 + 304);
  v11 = a1 + 304;
  for ( i = v12; (int *)v11 != i; i = (int *)*i )
  {
    v13 = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    (*(void (__fastcall **)(int, const char *, int, char **, _DWORD))(*(_DWORD *)a2 + 244))(
      a2,
      "Affector",
      v13,
      glitch::scene::ParticleAffectorTypeNames,
      0);
    result = (**(int (__fastcall ***)(int, int, _DWORD))i[2])(i[2], a2, 0);
  }
  if ( a3 )
  {
    if ( (*a3 & 2) != 0 )
      return (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 244))(a2, "Affector");
  }
  return result;
}


// ===== 6c1724 glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  *(_DWORD *)this = off_988194;
  *((_DWORD *)this + 76) = off_9882F0;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_988304);
}


// ===== 6c1770 `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::scene::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6c1780 `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::scene::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c1790 glitch::scene::CParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
const char *__fastcall glitch::scene::CParticleSystemSceneNode::deserializeAttributes(int a1, int *a2, _DWORD *a3)
{
  const char *result; // r0
  _DWORD *v6; // r3
  int v7; // r0
  int v8; // r3
  int (__fastcall *v9)(int, _DWORD *, _DWORD *, int, int, _BYTE *, _BYTE *, int, int, _DWORD); // r12
  unsigned int v10; // r4
  const char *v11; // r10
  const char *v12; // r1
  bool v13; // zf
  char *v14; // r6
  int (__fastcall *v15)(int, _DWORD *, int); // r3
  int (__fastcall *v16)(int, _BYTE *, int); // r3
  int (__fastcall *v17)(int, _DWORD *, int, int, _BYTE *, _BYTE *, int, int, _DWORD); // r12
  _DWORD v19[6]; // [sp+20h] [bp-54h] BYREF
  _DWORD v20[3]; // [sp+38h] [bp-3Ch] BYREF
  _DWORD v21[3]; // [sp+44h] [bp-30h] BYREF
  _DWORD v22[3]; // [sp+50h] [bp-24h] BYREF
  _BYTE v23[4]; // [sp+5Ch] [bp-18h] BYREF
  _BYTE v24[4]; // [sp+60h] [bp-14h] BYREF
  _BYTE v25[4]; // [sp+64h] [bp-10h] BYREF
  _BYTE v26[4]; // [sp+68h] [bp-Ch] BYREF
  _BYTE v27[8]; // [sp+6Ch] [bp-8h] BYREF

  glitch::scene::ISceneNode::deserializeAttributes(a1, a2, a3);
  *(_BYTE *)(a1 + 384) = (*(int (__fastcall **)(int *, const char *))(*a2 + 228))(a2, "GlobalParticles");
  *(_DWORD *)(a1 + 328) = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "ParticleWidth");
  *(_DWORD *)(a1 + 332) = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "ParticleHeight");
  result = (const char *)(*(int (__fastcall **)(int *, const char *))(*a2 + 40))(a2, "Emitter");
  if ( result != (const char *)-1 )
  {
    v6 = *(_DWORD **)(a1 + 312);
    if ( v6 )
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 12)));
    *(_DWORD *)(a1 + 312) = 0;
    v7 = (*(int (__fastcall **)(int *, const char *, _UNKNOWN **))(*a2 + 256))(
           a2,
           "Emitter",
           &glitch::scene::ParticleEmitterTypeNames);
    if ( v7 )
    {
      if ( v7 == 2 )
      {
        v9 = *(int (__fastcall **)(int, _DWORD *, _DWORD *, int, int, _BYTE *, _BYTE *, int, int, _DWORD))(*(_DWORD *)a1 + 272);
        v19[3] = 1084227584;
        v19[4] = 1106247680;
        v19[5] = 1092616192;
        v21[1] = 1022739087;
        v19[2] = -1054867456;
        v21[2] = 0;
        v24[3] = -1;
        v19[0] = -1054867456;
        v19[1] = 0;
        v21[0] = 0;
        v25[3] = -1;
        v24[0] = -1;
        v24[1] = -1;
        v24[2] = -1;
        v25[0] = 0;
        v25[1] = 0;
        v25[2] = 0;
        v8 = v9(a1, v19, v21, 5, 10, v25, v24, 2000, 4000, 0);
        *(_DWORD *)(a1 + 312) = v8;
      }
      else
      {
        v8 = *(_DWORD *)(a1 + 312);
      }
    }
    else
    {
      v17 = *(int (__fastcall **)(int, _DWORD *, int, int, _BYTE *, _BYTE *, int, int, _DWORD))(*(_DWORD *)a1 + 284);
      v22[1] = 1022739087;
      v22[2] = 0;
      v26[3] = -1;
      v22[0] = 0;
      v27[0] = 0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = -1;
      v26[0] = -1;
      v26[1] = -1;
      v26[2] = -1;
      v8 = v17(a1, v22, 5, 10, v27, v26, 2000, 4000, 0);
      *(_DWORD *)(a1 + 312) = v8;
    }
    v10 = v8 ? (*(int (__fastcall **)(int, _DWORD, int *, _DWORD))(*(_DWORD *)v8 + 60))(v8, 0, a2, 0) + 1 : 1;
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 264))(a1);
    result = (const char *)(*(int (__fastcall **)(int *))(*a2 + 12))(a2);
    v11 = result;
LABEL_12:
    if ( (unsigned int)v11 > v10 )
    {
      while ( 1 )
      {
        v12 = (const char *)(*(int (__fastcall **)(int *, unsigned int))(*a2 + 16))(a2, v10);
        result = "Affector";
        if ( !v12 )
          return result;
        v13 = LC_API_STRCMP_0("Affector", v12) == 0;
        result = (const char *)a2;
        if ( !v13 )
          return result;
        switch ( (*(int (__fastcall **)(int *, unsigned int, char **))(*a2 + 260))(
                   a2,
                   v10,
                   glitch::scene::ParticleAffectorTypeNames) )
        {
          case 2:
            v16 = *(int (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a1 + 300);
            v23[0] = 0;
            v23[1] = 0;
            v23[2] = 0;
            v23[3] = 0;
            result = (const char *)v16(a1, v23, 1000);
            goto LABEL_18;
          case 3:
            v15 = *(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)a1 + 304);
            v20[2] = 0;
            v20[0] = 0;
            v20[1] = -1124744561;
            result = (const char *)v15(a1, v20, 1000);
            goto LABEL_18;
          case 5:
            result = (const char *)(*(int (__fastcall **)(int, int, _DWORD, int, _DWORD))(*(_DWORD *)a1 + 312))(
                                     a1,
                                     1065353216,
                                     0,
                                     1000,
                                     0);
            ++v10;
            if ( result )
              goto LABEL_22;
            goto LABEL_19;
          case 6:
            result = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 316))(a1, 1000, 0);
            goto LABEL_18;
          default:
            result = nullptr;
LABEL_18:
            ++v10;
            if ( result )
            {
LABEL_22:
              v14 = (char *)result;
              v10 = (*(int (__fastcall **)(const char *, unsigned int, int *, _DWORD *))(*(_DWORD *)result + 28))(
                      result,
                      v10,
                      a2,
                      a3);
              (*(void (__fastcall **)(int, char *))(*(_DWORD *)a1 + 260))(a1, v14);
              result = (const char *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v14[*(_DWORD *)(*(_DWORD *)v14 - 12)]);
              goto LABEL_12;
            }
LABEL_19:
            if ( (unsigned int)v11 <= v10 )
              return result;
            break;
        }
      }
    }
  }
  return result;
}


// ===== 6c1bd4 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int v4; // r3
  unsigned int result; // r0

  v3 = -252645135 * ((a1[1] - *a1) >> 2);
  if ( 63161283 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  LOWORD(v4) = -15421;
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  HIWORD(v4) = 963;
  if ( result > v4 || result < v3 )
    return 63161283;
  return result;
}


// ===== 6c1c54 glitch::scene::CParticleSystemSceneNode::addAffector(glitch::scene::IParticleAffector *) =====
_DWORD *__fastcall glitch::scene::CParticleSystemSceneNode::addAffector(int a1, _DWORD *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*a2 - 12) + 4);
  result = GlitchAlloc(0xCu, 0);
  result[2] = a2;
  v5 = *(_DWORD **)(a1 + 308);
  *result = a1 + 304;
  result[1] = v5;
  *v5 = result;
  *(_DWORD *)(a1 + 308) = result;
  return result;
}


// ===== 6c1ca0 glitch::scene::CParticleSystemSceneNode::removeAllAffectors(void) =====
void __fastcall glitch::scene::CParticleSystemSceneNode::removeAllAffectors(
        glitch::scene::CParticleSystemSceneNode *this)
{
  _DWORD *v1; // r4
  char *v2; // r5
  _DWORD *v3; // r2
  void *v4; // r0

  v2 = (char *)this + 304;
  v1 = *((_DWORD **)this + 76);
  while ( v2 != (char *)v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(v1[2] + *(_DWORD *)(*(_DWORD *)v1[2] - 12)));
    v3 = (_DWORD *)v1[1];
    v4 = v1;
    v1 = (_DWORD *)*v1;
    *v3 = v1;
    v1[1] = v3;
    GlitchFree(v4);
  }
}


// ===== 6c1cec glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  _DWORD *v1; // r2
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r0
  glitch::scene::CParticleSystemSceneNode **v5; // r0
  glitch::scene::CParticleSystemSceneNode *v6; // r5

  v1 = *((_DWORD **)this + 78);
  *(_DWORD *)this = off_9884A4;
  *((_DWORD *)this + 98) = off_988604;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  glitch::scene::CParticleSystemSceneNode::removeAllAffectors(this);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 93);
  v3 = *((glitch::IReferenceCounted **)this + 92);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((void **)this + 79);
  if ( v4 )
    GlitchFree(v4);
  v5 = *((glitch::scene::CParticleSystemSceneNode ***)this + 76);
  if ( v5 != (glitch::scene::CParticleSystemSceneNode **)((char *)this + 304) )
  {
    while ( 1 )
    {
      v6 = *v5;
      GlitchFree(v5);
      if ( v6 == (glitch::scene::CParticleSystemSceneNode *)((char *)this + 304) )
        break;
      v5 = (glitch::scene::CParticleSystemSceneNode **)v6;
    }
    v5 = (glitch::scene::CParticleSystemSceneNode **)((char *)this + 304);
  }
  *((_DWORD *)this + 76) = v5;
  *((_DWORD *)this + 77) = v5;
  *(_DWORD *)this = off_98865C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98865C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_9887B8;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_988618);
}


// ===== 6c1de0 glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6c1dfc glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this,
        int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0
  char *v8; // r0
  char *v9; // r6
  char *v10; // r5
  int v11; // r3
  int *v12; // r7

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((_DWORD **)this + 78);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
  glitch::scene::CParticleSystemSceneNode::removeAllAffectors(this);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 93);
  v6 = *((glitch::IReferenceCounted **)this + 92);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((void **)this + 79);
  if ( v7 )
    GlitchFree(v7);
  v8 = *((char **)this + 76);
  v9 = (char *)this + 304;
  if ( (char *)this + 304 != v8 )
  {
    while ( 1 )
    {
      v10 = *(char **)v8;
      GlitchFree(v8);
      if ( v9 == v10 )
        break;
      v8 = v10;
    }
  }
  *((_DWORD *)this + 76) = v9;
  *((_DWORD *)this + 77) = (char *)this + 304;
  v11 = a2[1];
  v12 = a2 + 1;
  *(_DWORD *)this = v11;
  *(_DWORD *)((char *)this + *(_DWORD *)(v11 - 28)) = v12[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v12[5];
  glitch::scene::ISceneNode::~ISceneNode(this, v12 + 1);
}


// ===== 6c1ee4 glitch::scene::CParticleSystemSceneNode::createSpinAffector(uint,float) =====
glitch::scene::CParticleSpinAffector *__fastcall glitch::scene::CParticleSystemSceneNode::createSpinAffector(
        glitch::scene::CParticleSystemSceneNode *this,
        unsigned int a2,
        float a3)
{
  glitch::scene::CParticleSpinAffector *v5; // r4

  v5 = (glitch::scene::CParticleSpinAffector *)operator new(0x18u, 0);
  glitch::scene::CParticleSpinAffector::CParticleSpinAffector(v5, a2, a3);
  return v5;
}


// ===== 6c1f14 glitch::scene::CParticleSystemSceneNode::createSizeAffector(float,float,uint,uint) =====
glitch::scene::CParticleSizeAffector *__fastcall glitch::scene::CParticleSystemSceneNode::createSizeAffector(
        glitch::scene::CParticleSystemSceneNode *this,
        float a2,
        float a3,
        unsigned int a4,
        unsigned int a5)
{
  glitch::scene::CParticleSizeAffector *v8; // r4

  v8 = (glitch::scene::CParticleSizeAffector *)operator new(0x20u, 0);
  glitch::scene::CParticleSizeAffector::CParticleSizeAffector(v8, a2, a3, a4, a5);
  return v8;
}


// ===== 6c1f5c glitch::scene::CParticleSystemSceneNode::createRotationAffector(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createRotationAffector(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x2Cu, 0);
  glitch::scene::CParticleRotationAffector::CParticleRotationAffector(v5, a2, a3);
  return v5;
}


// ===== 6c1f8c glitch::scene::CParticleSystemSceneNode::createGravityAffector(glitch::core::vector3d<float> const&,uint) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createGravityAffector(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x20u, 0);
  glitch::scene::CParticleGravityAffector::CParticleGravityAffector(v5, a2, a3);
  return v5;
}


// ===== 6c1fbc glitch::scene::CParticleSystemSceneNode::createFadeOutParticleAffector(glitch::video::SColor const&,uint) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createFadeOutParticleAffector(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x18u, 0);
  glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(v5, a2, a3);
  return v5;
}


// ===== 6c1fec glitch::scene::CParticleSystemSceneNode::createAttractionAffector(glitch::core::vector3d<float> const&,float,bool,bool,bool,bool) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createAttractionAffector(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        unsigned __int8 a6,
        unsigned __int8 a7)
{
  void *v10; // r9

  v10 = operator new(0x28u, 0);
  glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(v10, a2, a3, a4, a5, a6, a7);
  return v10;
}


// ===== 6c2044 glitch::scene::CParticleSystemSceneNode::createSphereEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createSphereEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        void *a7,
        void *a8,
        int a9,
        int a10,
        int a11)
{
  void *v14; // r4

  v14 = operator new(0x58u, 0);
  glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter((int)v14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v14;
}


// ===== 6c20bc glitch::scene::CParticleSystemSceneNode::createRingEmitter(glitch::core::vector3d<float> const&,float,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createRingEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        void *a8,
        void *a9,
        int a10,
        int a11,
        int a12)
{
  void *v15; // r4

  v15 = operator new(0x64u, 0);
  glitch::scene::CParticleRingEmitter::CParticleRingEmitter((int)v15, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v15;
}


// ===== 6c213c glitch::scene::CParticleSystemSceneNode::createPointEmitter(glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createPointEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
        void *a5,
        void *a6,
        int a7,
        int a8,
        int a9)
{
  void *v12; // r4
  _BYTE v14[4]; // [sp+0h] [bp-18h] BYREF
  _BYTE v15[4]; // [sp+4h] [bp-14h] BYREF
  int v16; // [sp+8h] [bp-10h]
  int v17; // [sp+Ch] [bp-Ch]
  int v18; // [sp+10h] [bp-8h]

  v12 = operator new(0x80u, 0);
  memcpy(v14, a5, sizeof(v14));
  memcpy(v15, a6, sizeof(v15));
  v16 = a7;
  v17 = a8;
  v18 = a9;
  glitch::scene::CParticlePointEmitter::CParticlePointEmitter(v12, a2, a3, a4);
  return v12;
}


// ===== 6c21bc glitch::scene::CParticleSystemSceneNode::createMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createMeshEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
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
  void *v17; // r4

  v17 = operator new(0x6Cu, 0);
  glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(
    (int)v17,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14);
  return v17;
}


// ===== 6c224c glitch::scene::CParticleSystemSceneNode::createCylinderEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,float,bool,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createCylinderEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        char a6,
        int a7,
        int a8,
        int a9,
        void *a10,
        void *a11,
        int a12,
        int a13,
        int a14)
{
  void *v17; // r4

  v17 = operator new(0x6Cu, 0);
  glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(
    (int)v17,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14);
  return v17;
}


// ===== 6c22dc glitch::scene::CParticleSystemSceneNode::createBoxEmitter(glitch::core::aabbox3d<float> const&,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createBoxEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        void *a6,
        void *a7,
        int a8,
        int a9,
        int a10)
{
  void *v13; // r4
  _BYTE v15[4]; // [sp+4h] [bp-14h] BYREF
  _BYTE v16[4]; // [sp+8h] [bp-10h] BYREF
  int v17; // [sp+Ch] [bp-Ch]
  int v18; // [sp+10h] [bp-8h]
  int v19; // [sp+14h] [bp-4h]

  v13 = operator new(0x60u, 0);
  memcpy(v15, a6, sizeof(v15));
  memcpy(v16, a7, sizeof(v16));
  v17 = a8;
  v18 = a9;
  v19 = a10;
  glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(v13, a2, a3, a4, a5);
  return v13;
}


// ===== 6c2364 glitch::scene::CParticleSystemSceneNode::createAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode *,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
void *__fastcall glitch::scene::CParticleSystemSceneNode::createAnimatedMeshSceneNodeEmitter(
        int a1,
        int a2,
        int a3,
        int a4,
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
  void *v17; // r4

  v17 = operator new(0x74u, 0);
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(
    (int)v17,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14);
  return v17;
}


// ===== 6c23f4 glitch::scene::IParticleSystemSceneNode::IParticleSystemSceneNode(int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::scene::IParticleSystemSceneNode::IParticleSystemSceneNode(
        int *a1,
        int *a2,
        int a3,
        _DWORD *a4,
        float *a5,
        _DWORD *a6)
{
  int v10; // r3
  _DWORD v12[5]; // [sp+8h] [bp-14h] BYREF

  glitch::core::quaternion::set((glitch::core::quaternion *)v12, *a5, a5[1], a5[2]);
  glitch::scene::ISceneNode::ISceneNode((int)a1, a2 + 1, a3, a4, v12, a6);
  v10 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v10 - 28)) = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[5];
  return a1;
}


// ===== 6c2478 glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(bool,int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(
        int a1,
        int a2,
        int a3,
        _DWORD *a4,
        float *a5,
        _DWORD *a6)
{
  _DWORD v8[3]; // [sp+8h] [bp-Ch] BYREF

  *(_DWORD *)(a1 + 396) = 1;
  *(_DWORD *)a1 = off_988904;
  *(_DWORD *)(a1 + 392) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[43] + a1) = (int)off_988924;
  glitch::scene::IParticleSystemSceneNode::IParticleSystemSceneNode((int *)a1, (int *)off_988614, a3, a4, a5, a6);
  *(_DWORD *)a1 = off_9884A4;
  *(_DWORD *)(a1 + 340) = 0xFFFF;
  *(_DWORD *)(a1 + 388) = 1065353216;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = 1065353216;
  *(_DWORD *)(a1 + 364) = 1065353216;
  *(_DWORD *)(a1 + 392) = off_988604;
  *(_DWORD *)(a1 + 308) = a1 + 304;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 352) = -1082130432;
  *(_DWORD *)(a1 + 380) = 0;
  *(_BYTE *)(a1 + 384) = 1;
  *(_DWORD *)(a1 + 304) = a1 + 304;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 348) = -1082130432;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  v8[1] = 1084227584;
  v8[0] = 1084227584;
  glitch::scene::CParticleSystemSceneNode::setParticleSize(a1, v8);
  return a1;
}


// ===== 6c2598 glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(bool,int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(
        int a1,
        int *a2,
        int a3,
        int a4,
        _DWORD *a5,
        float *a6,
        _DWORD *a7)
{
  int v9; // r3
  _DWORD v11[2]; // [sp+8h] [bp-8h] BYREF

  glitch::scene::IParticleSystemSceneNode::IParticleSystemSceneNode((int *)a1, a2 + 1, a4, a5, a6, a7);
  v9 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 340) = 0xFFFF;
  *(_DWORD *)(a1 + 352) = -1082130432;
  *(_DWORD *)(a1 + 388) = 1065353216;
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 348) = -1082130432;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = 1065353216;
  *(_DWORD *)(a1 + 364) = 1065353216;
  *(_DWORD *)(a1 + 308) = a1 + 304;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_BYTE *)(a1 + 384) = 1;
  *(_DWORD *)(a1 + 304) = a1 + 304;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  v11[1] = 1084227584;
  v11[0] = 1084227584;
  glitch::scene::CParticleSystemSceneNode::setParticleSize(a1, v11);
  return a1;
}


// ===== 6c2688 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::SParticle*,uint,glitch::scene::SParticle const&) =====
void __fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        void **a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  size_t v8; // r10
  _DWORD *v9; // r8
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  _DWORD *v12; // r5

  if ( a3 )
  {
    if ( a3 <= -252645135 * (((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 2) )
    {
      std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 17
         * std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = GlitchAlloc(v8 * 4, 0);
      v10 = std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(*a1, (int)a2, v9);
      if ( a3 == 1 )
      {
        v11 = v10 + 17;
        *v10 = *a4;
        v10[1] = a4[1];
        v10[2] = a4[2];
        v10[3] = a4[3];
        v10[4] = a4[4];
        v10[5] = a4[5];
        v10[6] = a4[6];
        v10[7] = a4[7];
        v10[8] = a4[8];
        v10[9] = a4[9];
        v10[10] = a4[10];
        v10[11] = a4[11];
        v10[12] = a4[12];
        v10[13] = a4[13];
        v10[14] = a4[14];
        v10[15] = a4[15];
        v10[16] = a4[16];
      }
      else
      {
        v11 = &v10[17 * a3];
        std::priv::__ufill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(v10, (int)v11, a4);
      }
      v12 = std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(a2, (int)a1[1], v11);
      GlitchFree(*a1);
      a1[1] = v12;
      a1[2] = &v9[v8];
      *a1 = v9;
    }
  }
}


// ===== 6c2804 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::SParticle const&) =====
void __fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        _DWORD *a3)
{
  int v3; // r12
  unsigned int v5; // r2
  _DWORD *v6; // r2

  v3 = *(_DWORD *)(a1 + 4);
  v5 = -252645135 * ((v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (void **)a1,
      *(_DWORD **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (_DWORD *)(*(_DWORD *)a1 + 68 * a2);
    if ( v6 != (_DWORD *)v3 )
      *(_DWORD *)(a1 + 4) = std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
                              *(_DWORD **)(a1 + 4),
                              v3,
                              v6);
  }
}


// ===== 6c2880 glitch::scene::CParticleSystemSceneNode::doParticleSystem(uint) =====
float __fastcall glitch::scene::CParticleSystemSceneNode::doParticleSystem(float this, unsigned int a2)
{
  int v2; // r3
  float v3; // r4
  unsigned int v4; // r6
  int v5; // r2
  int v6; // r10
  int *v7; // r5
  int v8; // r2
  int v9; // r8
  unsigned int v10; // r5
  float v11; // r7
  int v12; // r1
  int v13; // r9
  int v14; // r10
  int v15; // r0
  float v16; // r0
  float v17; // r0
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r2
  int v23; // r8
  int v24; // r2
  int v25; // r12
  int v26; // r11
  int v27; // r12
  int v28; // r1
  int v29; // r6
  _DWORD *v30; // r2
  _DWORD *v31; // r3
  float *v32; // r5
  float v33; // r9
  float v34; // r10
  float v35; // r7
  int v36; // r7
  float v37; // r9
  int v38; // r5
  float v39; // r10
  float v40; // r11
  float v41; // r11
  int v42; // r9
  float v43; // r10
  float v44; // r9
  float v45; // r1
  _BOOL4 v46; // r0
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  _BOOL4 v52; // r0
  float v53; // r1
  float v54; // [sp+Ch] [bp-B0h]
  float v55; // [sp+Ch] [bp-B0h]
  float v56; // [sp+10h] [bp-ACh]
  unsigned int v57; // [sp+18h] [bp-A4h]
  int v58; // [sp+1Ch] [bp-A0h]
  int v59; // [sp+20h] [bp-9Ch]
  unsigned int v60; // [sp+24h] [bp-98h]
  _BYTE v61[64]; // [sp+28h] [bp-94h] BYREF
  char v62; // [sp+68h] [bp-54h]
  _DWORD v63[17]; // [sp+6Ch] [bp-50h] BYREF
  int v64; // [sp+B0h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(LODWORD(this) + 336);
  v3 = this;
  v4 = a2;
  if ( v2 )
  {
    v5 = *(_DWORD *)(LODWORD(this) + 312);
    v57 = a2 - v2;
    *(_DWORD *)(LODWORD(this) + 336) = a2;
    if ( v5 )
    {
      if ( (*(_DWORD *)(LODWORD(this) + 284) & 1) != 0 )
      {
        this = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v5 + 48))(v5));
        if ( this != 0.0 )
        {
          v22 = *(_DWORD *)(LODWORD(v3) + 312);
          v23 = 0;
          v64 = 0;
          this = COERCE_FLOAT(
                   (*(int (__fastcall **)(int, unsigned int, unsigned int, int *))(*(_DWORD *)v22 + 16))(
                     v22,
                     v4,
                     v57,
                     &v64));
          if ( this != 0.0 )
          {
            if ( v64 )
            {
              v24 = *(_DWORD *)(LODWORD(v3) + 316);
              v25 = *(_DWORD *)(LODWORD(v3) + 320);
              v63[12] = 0;
              v63[0] = 0;
              v63[1] = 0;
              v26 = -252645135 * ((v25 - v24) >> 2);
              v27 = SLODWORD(this) > 16250 - v26 ? 16250 : v26 + LODWORD(this);
              v58 = v27;
              memset(&v63[2], 0, 16);
              v63[10] = 0;
              v63[11] = 0;
              this = COERCE_FLOAT(
                       std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
                         LODWORD(v3) + 316,
                         v27,
                         v63));
              if ( v58 > v26 )
              {
                v60 = v4;
                v59 = 68 * v26;
                do
                {
                  v28 = *(_DWORD *)(LODWORD(v3) + 316);
                  v29 = v23 + v59;
                  v30 = (_DWORD *)(v64 + v23);
                  *(_DWORD *)(v28 + v23 + v59) = *(_DWORD *)(v64 + v23);
                  v31 = (_DWORD *)(v28 + v23 + v59);
                  v31[1] = v30[1];
                  v31[2] = v30[2];
                  v31[3] = v30[3];
                  v31[4] = v30[4];
                  v31[5] = v30[5];
                  v31[6] = v30[6];
                  v31[7] = v30[7];
                  v31[8] = v30[8];
                  v31[9] = v30[9];
                  v31[10] = v30[10];
                  v31[11] = v30[11];
                  v31[12] = v30[12];
                  v31[13] = v30[13];
                  v31[14] = v30[14];
                  v31[15] = v30[15];
                  v31[16] = v30[16];
                  v32 = (float *)(*(_DWORD *)(LODWORD(v3) + 316) + v23 + v59);
                  v33 = v32[10];
                  v34 = v32[11];
                  v35 = v32[12];
                  v32[10] = (float)((float)(v33 * *(float *)(LODWORD(v3) + 36))
                                  + (float)(v34 * *(float *)(LODWORD(v3) + 52)))
                          + (float)(v35 * *(float *)(LODWORD(v3) + 68));
                  v32[11] = (float)((float)(v33 * *(float *)(LODWORD(v3) + 40))
                                  + (float)(v34 * *(float *)(LODWORD(v3) + 56)))
                          + (float)(v35 * *(float *)(LODWORD(v3) + 72));
                  this = (float)((float)(v33 * *(float *)(LODWORD(v3) + 44))
                               + (float)(v34 * *(float *)(LODWORD(v3) + 60)))
                       + (float)(v35 * *(float *)(LODWORD(v3) + 76));
                  v32[12] = this;
                  if ( *(_BYTE *)(LODWORD(v3) + 384) )
                  {
                    v36 = *(_DWORD *)(LODWORD(v3) + 316);
                    v37 = *(float *)(v36 + v29);
                    v38 = v36 + v29;
                    v39 = *(float *)(v36 + v29 + 4);
                    v56 = (float)((float)((float)(v37 * *(float *)(LODWORD(v3) + 40))
                                        + (float)(v39 * *(float *)(LODWORD(v3) + 56)))
                                + (float)(*(float *)(v36 + v29 + 8) * *(float *)(LODWORD(v3) + 72)))
                        + *(float *)(LODWORD(v3) + 88);
                    v54 = (float)((float)((float)(v37 * *(float *)(LODWORD(v3) + 44))
                                        + (float)(v39 * *(float *)(LODWORD(v3) + 60)))
                                + (float)(*(float *)(v36 + v29 + 8) * *(float *)(LODWORD(v3) + 76)))
                        + *(float *)(LODWORD(v3) + 92);
                    this = (float)((float)((float)(v37 * *(float *)(LODWORD(v3) + 36))
                                         + (float)(v39 * *(float *)(LODWORD(v3) + 52)))
                                 + (float)(*(float *)(v36 + v29 + 8) * *(float *)(LODWORD(v3) + 68)))
                         + *(float *)(LODWORD(v3) + 84);
                    *(float *)(v36 + v29) = this;
                    *(float *)(v38 + 8) = v54;
                    *(float *)(v38 + 4) = v56;
                  }
                  ++v26;
                  v23 += 68;
                }
                while ( v26 != v58 );
                v4 = v60;
              }
            }
          }
        }
      }
    }
    v6 = *(_DWORD *)(LODWORD(v3) + 320);
    if ( -252645135 * ((v6 - *(_DWORD *)(LODWORD(v3) + 316)) >> 2) )
    {
      v7 = *(int **)(LODWORD(v3) + 304);
      v8 = *(_DWORD *)(LODWORD(v3) + 316);
      while ( v7 != (int *)(LODWORD(v3) + 304) )
      {
        (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v7[2] + 16))(v7[2], v4);
        v7 = (int *)*v7;
        v6 = *(_DWORD *)(LODWORD(v3) + 320);
        v8 = *(_DWORD *)(LODWORD(v3) + 316);
      }
      v9 = v8;
      if ( *(_BYTE *)(LODWORD(v3) + 384) )
      {
        v19 = *(_DWORD *)(LODWORD(v3) + 84);
        v20 = *(_DWORD *)(LODWORD(v3) + 88);
        v21 = *(_DWORD *)(LODWORD(v3) + 92);
        *(_DWORD *)(LODWORD(v3) + 344) = v19;
        *(_DWORD *)(LODWORD(v3) + 348) = v20;
        *(_DWORD *)(LODWORD(v3) + 352) = v21;
        *(_DWORD *)(LODWORD(v3) + 356) = v19;
        *(_DWORD *)(LODWORD(v3) + 360) = v20;
        *(_DWORD *)(LODWORD(v3) + 364) = v21;
      }
      else
      {
        *(_DWORD *)(LODWORD(v3) + 352) = 0;
        *(_DWORD *)(LODWORD(v3) + 356) = 0;
        *(_DWORD *)(LODWORD(v3) + 360) = 0;
        *(_DWORD *)(LODWORD(v3) + 364) = 0;
        *(_DWORD *)(LODWORD(v3) + 344) = 0;
        *(_DWORD *)(LODWORD(v3) + 348) = 0;
      }
      v10 = 0;
      v11 = (float)v57;
      v12 = v6;
      while ( v10 < -252645135 * ((v12 - v9) >> 2) )
      {
        v13 = 68 * v10;
        v14 = v9 + 68 * v10;
        if ( v4 <= *(_DWORD *)(v14 + 28) )
        {
          v40 = v11 * *(float *)(v14 + 16);
          v55 = v11 * *(float *)(v14 + 20);
          *(float *)(v9 + 68 * v10) = *(float *)(v9 + 68 * v10) + (float)(v11 * *(float *)(v14 + 12));
          *(float *)(v14 + 4) = *(float *)(v14 + 4) + v40;
          ++v10;
          *(float *)(v14 + 8) = *(float *)(v14 + 8) + v55;
          v9 = *(_DWORD *)(LODWORD(v3) + 316);
          v41 = *(float *)(v9 + v13);
          v42 = v9 + v13;
          v43 = *(float *)(v42 + 8);
          v44 = *(float *)(v42 + 4);
          v45 = *(float *)(LODWORD(v3) + 360);
          if ( v41 > *(float *)(LODWORD(v3) + 356) )
            *(float *)(LODWORD(v3) + 356) = v41;
          v46 = v44 > v45;
          v47 = *(float *)(LODWORD(v3) + 364);
          if ( v46 )
            *(float *)(LODWORD(v3) + 360) = v44;
          v48 = v43 > v47;
          v49 = *(float *)(LODWORD(v3) + 344);
          if ( v48 )
            *(float *)(LODWORD(v3) + 364) = v43;
          v50 = v41 < v49;
          v51 = *(float *)(LODWORD(v3) + 348);
          if ( v50 )
            *(float *)(LODWORD(v3) + 344) = v41;
          v52 = v44 < v51;
          v53 = *(float *)(LODWORD(v3) + 352);
          if ( v52 )
            *(float *)(LODWORD(v3) + 348) = v44;
          if ( v43 < v53 )
            *(float *)(LODWORD(v3) + 352) = v43;
          v12 = *(_DWORD *)(LODWORD(v3) + 320);
        }
        else
        {
          v15 = v14 + 68;
          if ( v14 + 68 != v12 )
          {
            std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(v15);
            v15 = *(_DWORD *)(LODWORD(v3) + 320);
            v9 = *(_DWORD *)(LODWORD(v3) + 316);
          }
          v12 = v15 - 68;
          *(_DWORD *)(LODWORD(v3) + 320) = v15 - 68;
        }
      }
      v16 = *(float *)(LODWORD(v3) + 328) > *(float *)(LODWORD(v3) + 332)
          ? *(float *)(LODWORD(v3) + 328)
          : *(float *)(LODWORD(v3) + 332);
      v17 = v16 * 0.5;
      *(float *)(LODWORD(v3) + 356) = *(float *)(LODWORD(v3) + 356) + v17;
      *(float *)(LODWORD(v3) + 360) = *(float *)(LODWORD(v3) + 360) + v17;
      *(float *)(LODWORD(v3) + 364) = *(float *)(LODWORD(v3) + 364) + v17;
      *(float *)(LODWORD(v3) + 344) = *(float *)(LODWORD(v3) + 344) - v17;
      *(float *)(LODWORD(v3) + 348) = *(float *)(LODWORD(v3) + 348) - v17;
      this = *(float *)(LODWORD(v3) + 352) - v17;
      v18 = *(unsigned __int8 *)(LODWORD(v3) + 384);
      *(float *)(LODWORD(v3) + 352) = this;
      if ( v18 )
      {
        v62 = 0;
        if ( !glitch::core::CMatrix4<float>::getInverse((void *)(LODWORD(v3) + 36), v61) )
        {
          v62 = 0;
          LC_API_MEMSET_0(v61, 0, 0x40u);
        }
        return COERCE_FLOAT(glitch::core::CMatrix4<float>::transformBoxEx(v61, LODWORD(v3) + 344));
      }
    }
  }
  else
  {
    *(_DWORD *)(LODWORD(this) + 336) = a2;
  }
  return this;
}


// ===== 6c2ff8 glitch::scene::CParticleSystemSceneNode::onAnimate(uint) =====
float __fastcall glitch::scene::CParticleSystemSceneNode::onAnimate(
        glitch::scene::CParticleSystemSceneNode *this,
        unsigned int a2)
{
  glitch::os::Timer *v3; // r0
  float result; // r0
  unsigned int Time; // r1

  v3 = (glitch::os::Timer *)glitch::scene::ISceneNode::onAnimate(this, a2);
  result = COERCE_FLOAT(glitch::os::Timer::isStopped(v3));
  if ( result == 0.0 )
  {
    Time = glitch::os::Timer::getTime(nullptr);
    return glitch::scene::CParticleSystemSceneNode::doParticleSystem(*(float *)&this, Time);
  }
  return result;
}


// ===== 6c3028 glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  *(_DWORD *)this = off_988194;
  *((_DWORD *)this + 76) = off_9882F0;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_988304);
  LC_API_FREE_0(this);
}


// ===== 6c307c `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::scene::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6c308c `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::scene::IParticleSystemSceneNode *this)
{
  glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::scene::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c309c glitch::scene::CParticleSystemSceneNode::clone(void) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CParticleSystemSceneNode::clone(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::ISceneNode *v2; // r4
  glitch::video::CMaterial *v3; // r3
  _DWORD *i; // r6
  int v5; // r6
  int v6; // r7
  int v7; // r11
  int v8; // r9
  int v9; // r10
  int v10; // r8
  int v11; // r0
  int v12; // r0
  int v14; // r8
  int v15; // r10
  int v16; // r7
  int v17; // r6
  int v18; // r11
  int v19; // r9
  int v20; // r0
  int v21; // r0
  int v22; // r6
  int v23; // r0
  int v24; // r11
  int v25; // r9
  int v26; // r10
  int v27; // r8
  int v28; // r7
  int v29; // r0
  int v30; // r7
  int v31; // r8
  int v32; // r6
  int v33; // r11
  int v34; // r9
  int v35; // r10
  int v36; // r0
  int v37; // r6
  int v38; // r11
  int v39; // r9
  int v40; // r10
  int v41; // r8
  int v42; // r7
  int v43; // r0
  int v44; // r0
  int v45; // r6
  glitch::IReferenceCounted *v46; // r3
  int v47; // r11
  int v48; // r9
  int v49; // r10
  int v50; // r8
  int v51; // r7
  int v52; // r0
  int v53; // r0
  int v54; // r6
  int v55; // r11
  int v56; // r9
  int v57; // r10
  int v58; // r8
  int v59; // r7
  int v60; // r0
  int v61; // [sp+28h] [bp-68h]
  int v62; // [sp+28h] [bp-68h]
  int v63; // [sp+28h] [bp-68h]
  int v64; // [sp+28h] [bp-68h]
  int v65; // [sp+28h] [bp-68h]
  int v66; // [sp+28h] [bp-68h]
  int v67; // [sp+28h] [bp-68h]
  int v68; // [sp+2Ch] [bp-64h]
  int v69; // [sp+2Ch] [bp-64h]
  int v70; // [sp+2Ch] [bp-64h]
  int v71; // [sp+2Ch] [bp-64h]
  int v72; // [sp+2Ch] [bp-64h]
  int v73; // [sp+2Ch] [bp-64h]
  int v74; // [sp+2Ch] [bp-64h]
  int v75; // [sp+30h] [bp-60h]
  int (__fastcall *v76)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int); // [sp+30h] [bp-60h]
  int v77; // [sp+30h] [bp-60h]
  int v78; // [sp+30h] [bp-60h]
  int v79; // [sp+30h] [bp-60h]
  int v80; // [sp+30h] [bp-60h]
  int v81; // [sp+30h] [bp-60h]
  int v82; // [sp+34h] [bp-5Ch]
  int v83; // [sp+34h] [bp-5Ch]
  int (__fastcall *v84)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int); // [sp+34h] [bp-5Ch]
  int v85; // [sp+34h] [bp-5Ch]
  int v86; // [sp+34h] [bp-5Ch]
  int v87; // [sp+34h] [bp-5Ch]
  int (__fastcall *v88)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int); // [sp+38h] [bp-58h]
  int v89; // [sp+38h] [bp-58h]
  int v90; // [sp+38h] [bp-58h]
  int v91; // [sp+38h] [bp-58h]
  int v92; // [sp+38h] [bp-58h]
  int v93; // [sp+3Ch] [bp-54h]
  int v94; // [sp+3Ch] [bp-54h]
  int (__fastcall *v95)(glitch::scene::CParticleSystemSceneNode *, glitch::IReferenceCounted **, int, int, int, int, int, int, int, int, int, int, int, int); // [sp+3Ch] [bp-54h]
  int (__fastcall *v96)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int); // [sp+3Ch] [bp-54h]
  int (__fastcall *v97)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int, int, int); // [sp+40h] [bp-50h]
  int v98; // [sp+40h] [bp-50h]
  int v99; // [sp+40h] [bp-50h]
  int v100; // [sp+44h] [bp-4Ch]
  int (__fastcall *v101)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int, int, int); // [sp+44h] [bp-4Ch]
  _BYTE v102[68]; // [sp+4Ch] [bp-44h] BYREF
  float v103; // [sp+90h] [bp+0h] BYREF
  float v104; // [sp+94h] [bp+4h]
  float v105; // [sp+98h] [bp+8h]
  glitch::video::CMaterial *v106; // [sp+9Ch] [bp+Ch] BYREF
  glitch::IReferenceCounted *v107; // [sp+A0h] [bp+10h] BYREF
  glitch::video::CMaterial *v108; // [sp+A4h] [bp+14h] BYREF

  v102[64] = 0;
  glitch::core::quaternion::getMatrix_transposed((float *)this + 46, (int)v102);
  glitch::core::CMatrix4<float>::getRotationDegrees(&v103, (int)v102);
  v103 = v103 * 0.017453;
  v104 = v104 * 0.017453;
  v105 = v105 * 0.017453;
  v2 = (glitch::scene::ISceneNode *)operator new(0x190u, 0);
  glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(
    (int)v2,
    0,
    *((_DWORD *)this + 67),
    (_DWORD *)this + 43,
    &v103,
    (_DWORD *)this + 50);
  glitch::scene::ISceneNode::cloneMembers(v2, this);
  glitch::video::CMaterial::clone(&v108, *((const char **)this + 93), nullptr);
  v3 = v108;
  v106 = v108;
  if ( v108 )
  {
    ++*(_DWORD *)v108;
    v3 = v106;
  }
  v106 = *((glitch::video::CMaterial **)v2 + 93);
  *((_DWORD *)v2 + 93) = v3;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v106);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v108);
  for ( i = *((_DWORD **)this + 76); (_DWORD *)((char *)this + 304) != i; i = (_DWORD *)*i )
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD))(*(_DWORD *)v2 + 260))(v2, i[2]);
  *((_DWORD *)v2 + 82) = *((_DWORD *)this + 82);
  *((_DWORD *)v2 + 83) = *((_DWORD *)this + 83);
  *((_DWORD *)v2 + 84) = *((_DWORD *)this + 84);
  *((_DWORD *)v2 + 85) = *((_DWORD *)this + 85);
  *((_DWORD *)v2 + 94) = *((_DWORD *)this + 94);
  *((_BYTE *)v2 + 384) = *((_BYTE *)this + 384);
  switch ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 78) + 64))(*((_DWORD *)this + 78)) )
  {
    case 0:
      v14 = *((_DWORD *)this + 78);
      v76 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 284);
      v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 40))(v14);
      v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 44))(v14);
      v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14);
      v62 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 52))(v14);
      v69 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 56))(v14);
      v18 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 68))(v14);
      v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 72))(v14);
      v20 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 76))(v14);
      v21 = v76(this, v15, v16, v17, v62, v69, v18, v19, v20);
      goto LABEL_11;
    case 1:
      v22 = *((_DWORD *)this + 78);
      v23 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 84))(v22);
      v97 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 268);
      v93 = (*(int (__fastcall **)(int))(*(_DWORD *)v23 + 192))(v23);
      v100 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 100))(v22);
      v89 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 40))(v22);
      v63 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 92))(v22);
      v70 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 104))(v22);
      v24 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 96))(v22);
      v25 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 44))(v22);
      v26 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 48))(v22);
      v27 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 52))(v22);
      v83 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 56))(v22);
      v77 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 108))(v22);
      v28 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 112))(v22);
      v29 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 116))(v22);
      v21 = v97(this, v93, v100, v89, v63, v70, v24, v25, v26, v27, v83, v77, v28, v29);
      goto LABEL_11;
    case 2:
      v30 = *((_DWORD *)this + 78);
      v84 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 272);
      v31 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 72))(v30);
      v32 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 40))(v30);
      v78 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 44))(v30);
      v64 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 48))(v30);
      v71 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 52))(v30);
      v33 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 56))(v30);
      v34 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 76))(v30);
      v35 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 80))(v30);
      v36 = (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 84))(v30);
      v21 = v84(this, v31, v32, v78, v64, v71, v33, v34, v35, v36);
      goto LABEL_11;
    case 3:
      v37 = *((_DWORD *)this + 78);
      v101 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 276);
      v98 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 88))(v37);
      v94 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 96))(v37);
      v90 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 92))(v37);
      v65 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 100))(v37);
      v72 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 104))(v37);
      v38 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 40))(v37);
      v39 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 44))(v37);
      v40 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 48))(v37);
      v41 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 52))(v37);
      v85 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 56))(v37);
      v79 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 108))(v37);
      v42 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 112))(v37);
      v43 = (*(int (__fastcall **)(int))(*(_DWORD *)v37 + 116))(v37);
      v44 = v101(this, v98, v94, v90, v65, v72, v38, v39, v40, v41, v85, v79, v42, v43);
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v2 + 256))(v2, v44);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)v2 + 78)
                                                                  + *(_DWORD *)(**((_DWORD **)v2 + 78) - 12)));
      return v2;
    case 4:
      v45 = *((_DWORD *)this + 78);
      v46 = *(glitch::IReferenceCounted **)(*(int (__fastcall **)(int))(*(_DWORD *)v45 + 84))(v45);
      v107 = v46;
      if ( v46 )
        ++*((_DWORD *)v46 + 1);
      v95 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, glitch::IReferenceCounted **, int, int, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 280);
      v99 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 100))(v45);
      v91 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 40))(v45);
      v66 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 92))(v45);
      v73 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 104))(v45);
      v47 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 96))(v45);
      v48 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 44))(v45);
      v49 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 48))(v45);
      v50 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 52))(v45);
      v86 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 56))(v45);
      v80 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 108))(v45);
      v51 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 112))(v45);
      v52 = (*(int (__fastcall **)(int))(*(_DWORD *)v45 + 116))(v45);
      v53 = v95(this, &v107, v99, v91, v66, v73, v47, v48, v49, v50, v86, v80, v51, v52);
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v2 + 256))(v2, v53);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)v2 + 78)
                                                                  + *(_DWORD *)(**((_DWORD **)v2 + 78) - 12)));
      if ( v107 )
        glitch::IReferenceCounted::drop(v107);
      return v2;
    case 5:
      v54 = *((_DWORD *)this + 78);
      v96 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 288);
      v81 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 80))(v54);
      v92 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 84))(v54);
      v87 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 88))(v54);
      v67 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 40))(v54);
      v74 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 44))(v54);
      v55 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 48))(v54);
      v56 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 52))(v54);
      v57 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 56))(v54);
      v58 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 92))(v54);
      v59 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 96))(v54);
      v60 = (*(int (__fastcall **)(int))(*(_DWORD *)v54 + 100))(v54);
      v21 = v96(this, v81, v92, v87, v67, v74, v55, v56, v57, v58, v59, v60);
LABEL_11:
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v2 + 256))(v2, v21);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)v2 + 78)
                                                                  + *(_DWORD *)(**((_DWORD **)v2 + 78) - 12)));
      return v2;
    case 6:
      v5 = *((_DWORD *)this + 78);
      v88 = *(int (__fastcall **)(glitch::scene::CParticleSystemSceneNode *, int, int, int, int, int, int, int, int, int, int))(*(_DWORD *)this + 292);
      v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 76))(v5);
      v75 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 80))(v5);
      v82 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
      v61 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 44))(v5);
      v68 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 48))(v5);
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 52))(v5);
      v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 56))(v5);
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 84))(v5);
      v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 88))(v5);
      v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 92))(v5);
      v12 = v88(this, v6, v75, v82, v61, v68, v7, v8, v9, v10, v11);
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v2 + 256))(v2, v12);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)v2 + 78)
                                                                  + *(_DWORD *)(**((_DWORD **)v2 + 78) - 12)));
      goto LABEL_8;
    default:
LABEL_8:
      *((_DWORD *)v2 + 78) = 0;
      return v2;
  }
}


// ===== 6c3b88 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::scene::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6c3b98 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::scene::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c3ba8 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::scene::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6c3bb8 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::scene::CParticleSystemSceneNode *this)
{
  glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::scene::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c3bc8 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
const char *__fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::scene::CParticleSystemSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 6c3bd8 `virtual thunk to'glitch::scene::CParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleSystemSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::scene::CParticleSystemSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 6c3be8 glitch::scene::ISceneCollisionManager::~ISceneCollisionManager() =====
void __fastcall glitch::scene::ISceneCollisionManager::~ISceneCollisionManager(
        glitch::scene::ISceneCollisionManager *this)
{
  ;
}


// ===== 6c3bec glitch::scene::CSceneCollisionManager::CSceneCollisionManager(glitch::scene::CSceneManager *,glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::scene::CSceneCollisionManager::CSceneCollisionManager(
        _DWORD *this,
        glitch::scene::CSceneManager *a2,
        glitch::video::IVideoDriver *a3)
{
  *(this + 1) = 1;
  *this = off_988968;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  return this;
}


// ===== 6c3c48 glitch::scene::CSceneCollisionManager::CSceneCollisionManager(glitch::scene::CSceneManager *,glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::scene::CSceneCollisionManager::CSceneCollisionManager(
        _DWORD *this,
        glitch::scene::CSceneManager *a2,
        glitch::video::IVideoDriver *a3)
{
  *(this + 1) = 1;
  *this = off_988968;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  return this;
}


// ===== 6c3ca4 glitch::scene::CSceneCollisionManager::getSceneNodeFromScreenCoordinatesBB(glitch::core::position2d<int>,int,bool) =====
int __fastcall glitch::scene::CSceneCollisionManager::getSceneNodeFromScreenCoordinatesBB(
        int *a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r12
  int v6; // r0
  void (__fastcall *v7)(float *, int *, _DWORD *, _DWORD); // r12
  float v9; // r10
  float v10; // r8
  float v11; // r11
  float v12; // r9
  int (__fastcall *v14)(int *, _DWORD *, int, int, _DWORD); // r12
  _DWORD v16[6]; // [sp+10h] [bp-3Ch] BYREF
  float v17; // [sp+28h] [bp-24h] BYREF
  float v18; // [sp+2Ch] [bp-20h]
  float v19; // [sp+30h] [bp-1Ch]
  float v20; // [sp+34h] [bp-18h]
  float v21; // [sp+38h] [bp-14h]
  float v22; // [sp+3Ch] [bp-10h]
  _DWORD v23[3]; // [sp+40h] [bp-Ch] BYREF

  v5 = *a1;
  v6 = a2[1];
  v7 = *(void (__fastcall **)(float *, int *, _DWORD *, _DWORD))(v5 + 20);
  v23[0] = *a2;
  v23[1] = v6;
  v7(&v17, a1, v23, 0);
  if ( v17 == v20 )
  {
    v9 = v18;
    v10 = v21;
    if ( v18 == v21 )
    {
      v11 = v19;
      v12 = v22;
      if ( v19 == v22 )
        return 0;
    }
    else
    {
      v11 = v19;
      v12 = v22;
    }
  }
  else
  {
    v9 = v18;
    v11 = v19;
    v10 = v21;
    v12 = v22;
  }
  v14 = *(int (__fastcall **)(int *, _DWORD *, int, int, _DWORD))(*a1 + 32);
  *(float *)v16 = v17;
  *(float *)&v16[1] = v9;
  *(float *)&v16[2] = v11;
  *(float *)&v16[3] = v20;
  *(float *)&v16[4] = v10;
  *(float *)&v16[5] = v12;
  return v14(a1, v16, a3, a4, 0);
}


// ===== 6c3da0 glitch::core::triangle3d<float>::isPointInsideFast(glitch::core::vector3d<float> const&) =====
unsigned int __fastcall glitch::core::triangle3d<float>::isPointInsideFast(float *a1, float *a2)
{
  float v2; // r11
  float v4; // r9
  float v5; // r10
  float v6; // r8
  float v7; // r7
  float v8; // r6
  float v9; // r5
  float v10; // r0
  float v11; // r11
  float v12; // r9
  float v13; // r7
  float v14; // r0
  float v16; // [sp+4h] [bp-20h]
  float v17; // [sp+10h] [bp-14h]
  float v18; // [sp+14h] [bp-10h]
  float v19; // [sp+18h] [bp-Ch]
  float v20; // [sp+1Ch] [bp-8h]

  v2 = *a1;
  v4 = a1[1];
  v5 = a1[3] - *a1;
  v6 = a1[4] - v4;
  v16 = a1[2];
  v7 = a1[5] - v16;
  v8 = a1[6] - *a1;
  v9 = a1[7] - v4;
  v10 = a1[8] - v16;
  v18 = (float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7);
  v17 = (float)((float)(v5 * v8) + (float)(v6 * v9)) + (float)(v7 * v10);
  v19 = (float)((float)(v8 * v8) + (float)(v9 * v9)) + (float)(v10 * v10);
  v20 = *a2 - v2;
  v11 = a2[1] - v4;
  v12 = a2[2] - v16;
  v13 = (float)((float)(v5 * v20) + (float)(v6 * v11)) + (float)(v7 * v12);
  v14 = (float)((float)(v8 * v20) + (float)(v9 * v11)) + (float)((float)(a1[8] - v16) * v12);
  return (~(COERCE_UNSIGNED_INT((float)(v18 * v14) - (float)(v17 * v13))
          | COERCE_UNSIGNED_INT((float)(v19 * v13) - (float)(v17 * v14)))
        & COERCE_UNSIGNED_INT(
            (float)((float)((float)(v19 * v13) - (float)(v17 * v14)) + (float)((float)(v18 * v14) - (float)(v17 * v13)))
          - (float)((float)(v18 * v19) - (float)(v17 * v17)))) >> 31;
}


// ===== 6c40b0 `global constructor keyed to'.._source_glitch_scene_CSceneCollisionManager.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneCollisionManager.cpp()
{
  dword_9F7E24 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E20 = 1056964608;
}


// ===== 6c40d0 glitch::scene::CSceneCollisionManager::~CSceneCollisionManager() =====
void __fastcall glitch::scene::CSceneCollisionManager::~CSceneCollisionManager(
        glitch::scene::CSceneCollisionManager *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_988968;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 4);
  if ( v3 )
    GlitchFree(v3);
}


// ===== 6c4120 glitch::scene::CSceneCollisionManager::~CSceneCollisionManager() =====
void __fastcall glitch::scene::CSceneCollisionManager::~CSceneCollisionManager(
        glitch::scene::CSceneCollisionManager *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_988968;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 4);
  if ( v3 )
    GlitchFree(v3);
}


// ===== 6c4170 glitch::scene::CSceneCollisionManager::getLowestRoot(float,float,float,float,float *) =====
int __fastcall glitch::scene::CSceneCollisionManager::getLowestRoot(
        glitch::scene::CSceneCollisionManager *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float *a6)
{
  float v9; // r10
  float v10; // r0
  float v11; // r6
  float v12; // r5
  float v13; // r0
  float v14; // r4
  float v15; // r3

  if ( (float)((float)(a3 * a3) + (float)((float)(a2 * -4.0) * a4)) < 0.0 )
    return 0;
  v9 = sqrtf((float)(a3 * a3) + (float)((float)(a2 * -4.0) * a4));
  v10 = a2 + a2;
  v11 = a2 + a2;
  v12 = (float)(COERCE_FLOAT(LODWORD(a3) + 0x80000000) - v9) / (float)(a2 + a2);
  v13 = (float)(v9 - a3) / v10;
  v14 = (float)(v9 - a3) / v11;
  v15 = v12;
  if ( v12 > v13 )
  {
    v12 = v14;
    v14 = v15;
  }
  if ( v12 <= 0.0 || v12 >= a5 )
  {
    if ( v14 <= 0.0 || v14 >= a5 )
      return 0;
    *a6 = v14;
    return 1;
  }
  else
  {
    *a6 = v12;
    return 1;
  }
}


// ===== 6c42a8 glitch::scene::CSceneCollisionManager::testTriangleIntersection(glitch::scene::CSceneCollisionManager::SCollisionData *,glitch::core::triangle3d<float> const&) =====
float __fastcall glitch::scene::CSceneCollisionManager::testTriangleIntersection(
        glitch::scene::CSceneCollisionManager *a1,
        int a2,
        float *a3)
{
  float result; // r0
  float v6; // r11
  float v7; // r6
  float v8; // r7
  float v9; // r10
  float v10; // r0
  float v11; // r9
  float v12; // r0
  float v13; // r10
  float v14; // r8
  float v15; // r10
  float v16; // r0
  float v17; // r9
  float v18; // r8
  float v19; // r10
  float v20; // r9
  float v21; // r9
  float v22; // r0
  float v23; // r8
  float v24; // r10
  float v25; // r7
  float v26; // r0
  float v27; // r6
  int v28; // r2
  int v29; // r3
  float v30; // r1
  bool v31; // zf
  float v32; // r3
  float v33; // r9
  float v34; // r9
  float v35; // [sp+Ch] [bp-78h]
  float v36; // [sp+10h] [bp-74h]
  float v37; // [sp+14h] [bp-70h]
  float v38; // [sp+14h] [bp-70h]
  float v39; // [sp+14h] [bp-70h]
  float v40; // [sp+18h] [bp-6Ch]
  float v41; // [sp+18h] [bp-6Ch]
  float v42; // [sp+1Ch] [bp-68h]
  float v43; // [sp+1Ch] [bp-68h]
  float v44; // [sp+1Ch] [bp-68h]
  float v45; // [sp+1Ch] [bp-68h]
  float v46; // [sp+1Ch] [bp-68h]
  float v47; // [sp+1Ch] [bp-68h]
  float v48; // [sp+20h] [bp-64h]
  float v49; // [sp+20h] [bp-64h]
  float v50; // [sp+20h] [bp-64h]
  float v51; // [sp+20h] [bp-64h]
  float v52; // [sp+24h] [bp-60h]
  float v53; // [sp+24h] [bp-60h]
  float v54; // [sp+28h] [bp-5Ch]
  float v55; // [sp+28h] [bp-5Ch]
  float v56; // [sp+2Ch] [bp-58h]
  float v57; // [sp+2Ch] [bp-58h]
  float v58; // [sp+2Ch] [bp-58h]
  float v59; // [sp+2Ch] [bp-58h]
  float v60; // [sp+30h] [bp-54h]
  float v61; // [sp+34h] [bp-50h]
  float v62; // [sp+34h] [bp-50h]
  float v63; // [sp+34h] [bp-50h]
  float v64; // [sp+38h] [bp-4Ch]
  float v65; // [sp+38h] [bp-4Ch]
  float v67; // [sp+40h] [bp-44h]
  float v68; // [sp+44h] [bp-40h]
  float v69; // [sp+44h] [bp-40h]
  float v70; // [sp+48h] [bp-3Ch]
  float v71; // [sp+4Ch] [bp-38h]
  float v72; // [sp+50h] [bp-34h]
  float v73; // [sp+54h] [bp-30h]
  float v74; // [sp+58h] [bp-2Ch]
  int v75; // [sp+5Ch] [bp-28h]
  float v76; // [sp+60h] [bp-24h] BYREF
  float v77; // [sp+64h] [bp-20h]
  float v78; // [sp+68h] [bp-1Ch]
  float v79; // [sp+6Ch] [bp-18h]
  float v80; // [sp+70h] [bp-14h] BYREF
  float v81; // [sp+74h] [bp-10h]
  float v82; // [sp+78h] [bp-Ch]
  float v83[2]; // [sp+7Ch] [bp-8h] BYREF

  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  glitch::core::plane3d<float>::setPlane((int)&v76, a3, a3 + 3, a3 + 6);
  LODWORD(result) = (float)((float)((float)(v76 * *(float *)(a2 + 48)) + (float)(v77 * *(float *)(a2 + 52)))
                          + (float)(v78 * *(float *)(a2 + 56))) <= 0.0;
  if ( (float)((float)((float)(v76 * *(float *)(a2 + 48)) + (float)(v77 * *(float *)(a2 + 52)))
             + (float)(v78 * *(float *)(a2 + 56))) > 0.0 )
    return result;
  v52 = *(float *)(a2 + 60);
  v54 = *(float *)(a2 + 64);
  v60 = *(float *)(a2 + 68);
  v40 = (float)((float)((float)(v76 * v52) + (float)(v77 * v54)) + (float)(v78 * v60)) + v79;
  v6 = *(float *)(a2 + 36);
  v7 = *(float *)(a2 + 40);
  v8 = *(float *)(a2 + 44);
  v37 = (float)((float)(v76 * v6) + (float)(v77 * v7)) + (float)(v78 * v8);
  if ( fabs(v37) <= 0.000001 )
  {
    LODWORD(result) = fabs((float)((float)((float)(v76 * v52) + (float)(v77 * v54)) + (float)(v78 * v60)) + v79) >= 1.0;
    if ( fabs((float)((float)((float)(v76 * v52) + (float)(v77 * v54)) + (float)(v78 * v60)) + v79) >= 1.0 )
      return result;
    goto LABEL_4;
  }
  v47 = (float)(-1.0 - v40) * (float)(1.0 / v37);
  v41 = (float)(1.0 - v40) * (float)(1.0 / v37);
  v31 = v47 <= v41;
  if ( v47 <= v41 )
    v30 = v47;
  v32 = v41;
  if ( v47 <= v41 )
    v41 = v30;
  if ( v31 )
    v47 = v32;
  LODWORD(result) = v41 > 1.0;
  if ( v41 <= 1.0 )
  {
    LODWORD(result) = v47 < 0.0;
    if ( v47 >= 0.0 )
    {
      if ( v41 >= 0.0 )
      {
        if ( v41 >= 1.0 )
          v41 = 1.0;
      }
      else
      {
        v41 = 0.0;
      }
      v80 = (float)(v52 - v76) + (float)(v6 * v41);
      v81 = (float)(v54 - v77) + (float)(v7 * v41);
      v82 = (float)(v60 - v78) + (float)(v8 * v41);
      if ( glitch::core::triangle3d<float>::isPointInsideFast(a3, &v80) )
      {
        v71 = v80;
        v72 = v81;
        v73 = v82;
        v63 = v41;
LABEL_17:
        v26 = sqrt((float)((float)((float)(*(float *)(a2 + 36) * *(float *)(a2 + 36))
                                 + (float)(*(float *)(a2 + 40) * *(float *)(a2 + 40)))
                         + (float)(*(float *)(a2 + 44) * *(float *)(a2 + 44))));
        result = v63 * v26;
        v27 = result;
        if ( !*(_BYTE *)(a2 + 72) || (LODWORD(result) = *(float *)(a2 + 76) > result, *(float *)(a2 + 76) > v27) )
        {
          *(float *)(a2 + 76) = v27;
          *(float *)(a2 + 80) = v71;
          v28 = *(_DWORD *)(a2 + 128);
          *(float *)(a2 + 84) = v72;
          *(_BYTE *)(a2 + 72) = 1;
          *(float *)(a2 + 88) = v73;
          *(float *)(a2 + 92) = *a3;
          *(float *)(a2 + 96) = a3[1];
          *(float *)(a2 + 100) = a3[2];
          *(float *)(a2 + 104) = a3[3];
          *(float *)(a2 + 108) = a3[4];
          *(float *)(a2 + 112) = a3[5];
          *(float *)(a2 + 116) = a3[6];
          *(float *)(a2 + 120) = a3[7];
          v29 = *((_DWORD *)a3 + 8);
          *(_DWORD *)(a2 + 128) = v28 + 1;
          *(_DWORD *)(a2 + 124) = v29;
        }
        return result;
      }
      v52 = *(float *)(a2 + 60);
      v54 = *(float *)(a2 + 64);
      v60 = *(float *)(a2 + 68);
      v6 = *(float *)(a2 + 36);
      v7 = *(float *)(a2 + 40);
      v8 = *(float *)(a2 + 44);
LABEL_4:
      v56 = (float)((float)(v6 * v6) + (float)(v7 * v7)) + (float)(v8 * v8);
      v9 = a3[1];
      v10 = (float)(v6 * (float)(v52 - *a3)) + (float)(v7 * (float)(v54 - v9));
      if ( glitch::scene::CSceneCollisionManager::getLowestRoot(
             a1,
             v56,
             (float)(v10 + (float)(v8 * (float)(v60 - a3[2]))) + (float)(v10 + (float)(v8 * (float)(v60 - a3[2]))),
             (float)((float)((float)((float)(*a3 - v52) * (float)(*a3 - v52))
                           + (float)((float)(v9 - v54) * (float)(v9 - v54)))
                   + (float)((float)(a3[2] - v60) * (float)(a3[2] - v60)))
           - 1.0,
             1.0,
             v83) )
      {
        v71 = *a3;
        v11 = *a3;
        v72 = a3[1];
        v74 = v83[0];
        v73 = a3[2];
        v12 = a3[3];
        v13 = a3[4];
        v42 = a3[5];
        v48 = v73;
        v68 = v72;
      }
      else
      {
        v33 = a3[4];
        if ( glitch::scene::CSceneCollisionManager::getLowestRoot(
               a1,
               v56,
               (float)((float)((float)(v6 * (float)(v52 - a3[3])) + (float)(v7 * (float)(v54 - v33)))
                     + (float)(v8 * (float)(v60 - a3[5])))
             + (float)((float)((float)(v6 * (float)(v52 - a3[3])) + (float)(v7 * (float)(v54 - v33)))
                     + (float)(v8 * (float)(v60 - a3[5]))),
               (float)((float)((float)((float)(a3[3] - v52) * (float)(a3[3] - v52))
                             + (float)((float)(v33 - v54) * (float)(v33 - v54)))
                     + (float)((float)(a3[5] - v60) * (float)(a3[5] - v60)))
             - 1.0,
               1.0,
               v83) )
        {
          v71 = a3[3];
          v12 = v71;
          v72 = a3[4];
          v74 = v83[0];
          v13 = v72;
          v73 = a3[5];
          v11 = *a3;
          v68 = a3[1];
          v42 = v73;
          v48 = a3[2];
        }
        else
        {
          v34 = a3[7];
          if ( !glitch::scene::CSceneCollisionManager::getLowestRoot(
                  a1,
                  v56,
                  (float)((float)((float)(v6 * (float)(v52 - a3[6])) + (float)(v7 * (float)(v54 - v34)))
                        + (float)(v8 * (float)(v60 - a3[8])))
                + (float)((float)((float)(v6 * (float)(v52 - a3[6])) + (float)(v7 * (float)(v54 - v34)))
                        + (float)(v8 * (float)(v60 - a3[8]))),
                  (float)((float)((float)((float)(a3[6] - v52) * (float)(a3[6] - v52))
                                + (float)((float)(v34 - v54) * (float)(v34 - v54)))
                        + (float)((float)(a3[8] - v60) * (float)(a3[8] - v60)))
                - 1.0,
                  1.0,
                  v83) )
          {
            v71 = 0.0;
            v74 = 1.0;
            v75 = 0;
            v12 = a3[3];
            v11 = *a3;
            v13 = a3[4];
            v68 = a3[1];
            v42 = a3[5];
            v72 = 0.0;
            v73 = 0.0;
            v48 = a3[2];
            goto LABEL_7;
          }
          v74 = v83[0];
          v71 = a3[6];
          v72 = a3[7];
          v73 = a3[8];
          v12 = a3[3];
          v11 = *a3;
          v13 = a3[4];
          v68 = a3[1];
          v42 = a3[5];
          v48 = a3[2];
        }
      }
      v75 = 1;
LABEL_7:
      v14 = v12 - v11;
      v15 = v13 - v68;
      v43 = v42 - v48;
      v61 = v11 - v52;
      v64 = v68 - v54;
      v67 = v48 - v60;
      v49 = (float)((float)(v14 * v14) + (float)(v15 * v15)) + (float)(v43 * v43);
      v16 = (float)((float)(v6 * (float)(v12 - v11)) + (float)(v7 * v15)) + (float)(v8 * v43);
      LODWORD(v69) = LODWORD(v56) + 0x80000000;
      v57 = (float)((float)(v14 * (float)(v11 - v52)) + (float)(v15 * v64)) + (float)(v43 * v67);
      if ( glitch::scene::CSceneCollisionManager::getLowestRoot(
             a1,
             (float)(v69 * v49) + (float)(v16 * v16),
             (float)((float)((float)((float)((float)(v6 * v61) + (float)(v7 * v64)) + (float)(v8 * v67))
                           + (float)((float)((float)(v6 * v61) + (float)(v7 * v64)) + (float)(v8 * v67)))
                   * v49)
           + (float)((float)(v16 * -2.0) * v57),
             (float)((float)(1.0 - (float)((float)((float)(v61 * v61) + (float)(v64 * v64)) + (float)(v67 * v67))) * v49)
           + (float)(v57 * v57),
             v74,
             v83)
        && (v70 = v83[0],
            v17 = (float)((float)(v83[0] * (float)((float)((float)(v6 * v14) + (float)(v7 * v15)) + (float)(v8 * v43)))
                        - v57)
                / v49,
            v17 >= 0.0)
        && v17 <= 1.0 )
      {
        v71 = (float)(v17 * v14) + *a3;
        v72 = (float)(v17 * v15) + a3[1];
        v73 = (float)(v17 * v43) + a3[2];
        v75 = 1;
      }
      else
      {
        v70 = v74;
      }
      v38 = a3[3];
      v18 = a3[6] - v38;
      v36 = a3[4];
      v19 = a3[7] - v36;
      v35 = a3[5];
      v20 = a3[8] - v35;
      v62 = v38 - v52;
      v44 = (float)((float)(v18 * v18) + (float)(v19 * v19)) + (float)(v20 * v20);
      v50 = (float)((float)(v6 * v18) + (float)(v7 * v19)) + (float)(v8 * v20);
      v58 = (float)((float)(v18 * (float)(v38 - v52)) + (float)(v19 * (float)(v36 - v54)))
          + (float)(v20 * (float)(v35 - v60));
      v39 = (float)(v6 * (float)(v38 - v52)) + (float)(v7 * (float)(v36 - v54));
      if ( glitch::scene::CSceneCollisionManager::getLowestRoot(
             a1,
             (float)(v69 * v44) + (float)(v50 * v50),
             (float)((float)((float)(v39 + (float)(v8 * (float)(v35 - v60)))
                           + (float)(v39 + (float)(v8 * (float)(v35 - v60))))
                   * v44)
           + (float)((float)(v50 * -2.0) * v58),
             (float)((float)(1.0
                           - (float)((float)((float)(v62 * v62) + (float)((float)(v36 - v54) * (float)(v36 - v54)))
                                   + (float)((float)(v35 - v60) * (float)(v35 - v60))))
                   * v44)
           + (float)(v58 * v58),
             v70,
             v83)
        && (v63 = v83[0], v45 = (float)((float)(v83[0] * v50) - v58) / v44, v45 >= 0.0)
        && v45 <= 1.0 )
      {
        v71 = (float)(v45 * v18) + a3[3];
        v72 = (float)(v45 * v19) + a3[4];
        v73 = (float)(v45 * v20) + a3[5];
        v75 = 1;
      }
      else
      {
        v63 = v70;
      }
      v46 = *a3 - a3[6];
      v51 = a3[1] - a3[7];
      v59 = a3[2] - a3[8];
      v65 = a3[6] - v52;
      v55 = a3[7] - v54;
      v21 = a3[8] - v60;
      v53 = (float)((float)(v46 * v46) + (float)(v51 * v51)) + (float)(v59 * v59);
      v22 = (float)((float)(v6 * v46) + (float)(v7 * v51)) + (float)(v8 * v59);
      v23 = v22;
      v24 = (float)((float)(v46 * v65) + (float)(v51 * v55)) + (float)(v59 * v21);
      result = COERCE_FLOAT(
                 glitch::scene::CSceneCollisionManager::getLowestRoot(
                   a1,
                   (float)(v69 * v53) + (float)(v22 * v22),
                   (float)((float)((float)((float)((float)(v6 * v65) + (float)(v7 * v55)) + (float)(v8 * v21))
                                 + (float)((float)((float)(v6 * v65) + (float)(v7 * v55)) + (float)(v8 * v21)))
                         * v53)
                 + (float)((float)(v22 * -2.0) * v24),
                   (float)((float)(1.0 - (float)((float)((float)(v65 * v65) + (float)(v55 * v55)) + (float)(v21 * v21)))
                         * v53)
                 + (float)(v24 * v24),
                   v63,
                   v83));
      if ( result == 0.0
        || (v25 = (float)((float)(v83[0] * v23) - v24) / v53, LODWORD(result) = v25 >= 0.0, v25 < 0.0)
        || (LODWORD(result) = v25 <= 1.0, v25 > 1.0) )
      {
        if ( !v75 )
          return result;
      }
      else
      {
        v71 = (float)(v25 * v46) + a3[6];
        v72 = (float)(v25 * v51) + a3[7];
        v63 = v83[0];
        v73 = (float)(v25 * v59) + a3[8];
      }
      goto LABEL_17;
    }
  }
  return result;
}


// ===== 6c5674 glitch::scene::CSceneCollisionManager::getSceneNodeFromCameraBB(glitch::scene::ICameraSceneNode *,int,bool) =====
int __fastcall glitch::scene::CSceneCollisionManager::getSceneNodeFromCameraBB(
        glitch::scene::CSceneCollisionManager *this,
        glitch::scene::ICameraSceneNode *a2,
        int a3,
        int a4)
{
  float *v9; // r0
  float v10; // r6
  float v11; // r7
  float *v12; // r11
  float v13; // r0
  float v14; // r9
  float v15; // r0
  int (__fastcall *v16)(glitch::scene::CSceneCollisionManager *, _DWORD *, int, int, _DWORD); // r12
  float v17; // [sp+Ch] [bp-38h]
  _DWORD v18[6]; // [sp+10h] [bp-34h] BYREF
  float v19[3]; // [sp+28h] [bp-1Ch] BYREF
  float v20; // [sp+34h] [bp-10h] BYREF
  float v21; // [sp+38h] [bp-Ch]
  float v22; // [sp+3Ch] [bp-8h]

  if ( !a2 )
    return 0;
  glitch::scene::ISceneNode::getAbsolutePosition(&v20, a2);
  v9 = (float *)(*(int (__fastcall **)(glitch::scene::ICameraSceneNode *))(*(_DWORD *)a2 + 264))(a2);
  v10 = v9[2];
  v11 = v9[1] - v21;
  v19[0] = *v9 - v20;
  v19[1] = v11;
  v19[2] = v10 - v22;
  v12 = glitch::core::vector3d<float>::normalize(v19);
  v13 = COERCE_FLOAT((*(int (__fastcall **)(glitch::scene::ICameraSceneNode *))(*(_DWORD *)a2 + 288))(a2));
  v14 = (float)(v13 * *v12) + v20;
  v17 = (float)(v13 * v12[1]) + v21;
  v15 = v13 * v12[2];
  v16 = *(int (__fastcall **)(glitch::scene::CSceneCollisionManager *, _DWORD *, int, int, _DWORD))(*(_DWORD *)this + 32);
  *(float *)&v18[4] = v17;
  *(float *)&v18[5] = v15 + v22;
  *(float *)v18 = v20;
  *(float *)&v18[1] = v21;
  *(float *)&v18[2] = v22;
  *(float *)&v18[3] = v14;
  return v16(this, v18, a3, a4, 0);
}


// ===== 6c57a8 glitch::scene::CSceneCollisionManager::~CSceneCollisionManager() =====
void __fastcall glitch::scene::CSceneCollisionManager::~CSceneCollisionManager(
        glitch::scene::CSceneCollisionManager *this)
{
  glitch::scene::CSceneCollisionManager::~CSceneCollisionManager(this);
  LC_API_FREE_0(this);
}


// ===== 6c57c4 glitch::scene::ISceneCollisionManager::~ISceneCollisionManager() =====
void __fastcall glitch::scene::ISceneCollisionManager::~ISceneCollisionManager(
        glitch::scene::ISceneCollisionManager *this)
{
  LC_API_FREE_0(this);
}


// ===== 6c57d8 glitch::scene::CSceneCollisionManager::getScreenCoordinatesFrom3DPosition(glitch::core::vector3d<float>,glitch::scene::ICameraSceneNode *) =====
_DWORD *__fastcall glitch::scene::CSceneCollisionManager::getScreenCoordinatesFrom3DPosition(
        _DWORD *a1,
        int a2,
        float *a3,
        int a4)
{
  int v4; // r12
  int v8; // r3
  _DWORD *v9; // r2
  int v10; // r10
  int v11; // r9
  int v12; // r11
  const void *v13; // r0
  _BYTE *v14; // r0
  int v15; // r3
  float v16; // r2
  float v17; // lr
  float v18; // r5
  float v19; // r6
  int v20; // r11
  float v21; // r0
  int v23; // [sp+4h] [bp-60h]
  float v24[17]; // [sp+Ch] [bp-58h] BYREF
  float v25; // [sp+50h] [bp-14h] BYREF
  float v26; // [sp+54h] [bp-10h]
  int v27; // [sp+58h] [bp-Ch]
  float v28; // [sp+5Ch] [bp-8h]

  v4 = *(_DWORD *)(a2 + 8);
  if ( v4 && (v8 = *(_DWORD *)(a2 + 12)) != 0 && (a4 || (a4 = *(_DWORD *)(v4 + 228)) != 0) )
  {
    v9 = *(_DWORD **)(*(_DWORD *)(v8 + 204) - 4);
    v23 = v9[6];
    v10 = v9[7];
    v11 = v9[5];
    v12 = v9[8];
    v13 = (const void *)(*(int (__fastcall **)(int))(*(_DWORD *)a4 + 248))(a4);
    LOBYTE(v24[16]) = 0;
    memcpy(v24, v13, 0x41u);
    v14 = (_BYTE *)(*(int (__fastcall **)(int))(*(_DWORD *)a4 + 252))(a4);
    glitch::core::detail::CMatrix4Base<float>::multEq(v24, v14);
    v15 = *((_DWORD *)a3 + 2);
    v16 = *a3;
    v17 = a3[1];
    v18 = 1.0;
    v25 = v16;
    v26 = v17;
    v27 = v15;
    v28 = 1.0;
    glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(v24, &v25);
    if ( v28 < 0.0 )
    {
      a1[1] = -10000;
      *a1 = -10000;
    }
    else
    {
      if ( v28 != 0.0 )
        v18 = 1.0 / v28;
      v19 = floorf((float)(v18 * (float)((float)((v10 - v11) / 2) * v25)) + 0.5);
      v20 = (v12 - v23) / 2;
      v21 = floorf((float)((float)v20 * (float)(v18 * v26)) + 0.5);
      *a1 = (int)v19 + (v10 - v11) / 2;
      a1[1] = v20 - (int)v21;
    }
  }
  else
  {
    a1[1] = -1000;
    *a1 = -1000;
  }
  return a1;
}


// ===== 6c59c0 glitch::scene::CSceneCollisionManager::getRayFromScreenCoordinates(glitch::core::position2d<int>,glitch::scene::ICameraSceneNode *) =====
float *__fastcall glitch::scene::CSceneCollisionManager::getRayFromScreenCoordinates(
        float *a1,
        int a2,
        int *a3,
        int a4)
{
  int v5; // r1
  int v8; // r7
  float *v9; // r0
  float *v10; // r8
  float *v11; // r11
  float *v12; // r6
  float v13; // r11
  float v14; // r8
  _DWORD *v15; // r12
  float v16; // r10
  float v17; // r5
  float v18; // r7
  float v19; // r8
  float v21; // [sp+0h] [bp-44h]
  float *v22; // [sp+4h] [bp-40h]
  float v23; // [sp+4h] [bp-40h]
  float v24; // [sp+8h] [bp-3Ch]
  float v25; // [sp+Ch] [bp-38h]
  float v26; // [sp+10h] [bp-34h]
  float v27; // [sp+14h] [bp-30h]
  float v28; // [sp+1Ch] [bp-28h] BYREF
  float v29; // [sp+20h] [bp-24h]
  float v30; // [sp+24h] [bp-20h]
  float v31; // [sp+28h] [bp-1Ch] BYREF
  float v32; // [sp+2Ch] [bp-18h]
  float v33; // [sp+30h] [bp-14h]
  float v34; // [sp+34h] [bp-10h] BYREF
  float v35; // [sp+38h] [bp-Ch]
  float v36; // [sp+3Ch] [bp-8h]

  a1[5] = 0.0;
  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  a1[3] = 0.0;
  a1[4] = 0.0;
  v5 = *(_DWORD *)(a2 + 8);
  v8 = a4;
  if ( v5 )
  {
    if ( a4 || (v8 = *(_DWORD *)(v5 + 228)) != 0 )
    {
      v9 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 324))(v8);
      v10 = v9 + 3;
      v11 = v9 + 23;
      v12 = v9;
      v22 = v9 + 11;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      glitch::core::plane3d<float>::getIntersectionWithPlanes(v9 + 3, v9 + 23, v9 + 11, &v34);
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      glitch::core::plane3d<float>::getIntersectionWithPlanes(v10, v11, v12 + 15, &v31);
      v25 = v31 - v34;
      v26 = v32 - v35;
      v27 = v33 - v36;
      v30 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      glitch::core::plane3d<float>::getIntersectionWithPlanes(v10, v12 + 19, v22, &v28);
      v24 = v28 - v34;
      v13 = v29 - v35;
      v14 = v30 - v36;
      v15 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)(a2 + 12) + 204) - 4);
      v16 = (float)*a3 / (float)(v15[7] - v15[5]);
      v17 = (float)a3[1] / (float)(v15[8] - v15[6]);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 336))(v8) )
      {
        v21 = (float)((float)((float)(v16 - 0.5) * v26) + v12[1]) + (float)((float)(v17 - 0.5) * v13);
        v23 = (float)((float)((float)(v16 - 0.5) * v27) + v12[2]) + (float)((float)(v17 - 0.5) * v14);
        *a1 = (float)((float)((float)(v16 - 0.5) * v25) + *v12) + (float)((float)(v17 - 0.5) * v24);
        a1[1] = v21;
        a1[2] = v23;
      }
      else
      {
        *a1 = *v12;
        a1[1] = v12[1];
        a1[2] = v12[2];
      }
      v18 = (float)((float)(v16 * v27) + v36) + (float)(v17 * v14);
      v19 = (float)(v16 * v25) + v34;
      a1[4] = (float)((float)(v16 * v26) + v35) + (float)(v17 * v13);
      a1[3] = v19 + (float)(v17 * v24);
      a1[5] = v18;
    }
  }
  return a1;
}


// ===== 6c5d40 glitch::scene::CSceneCollisionManager::getPickedNodeBB(glitch::scene::ISceneNode *,glitch::core::line3d<float> const&,int,bool,float &,glitch::scene::ISceneNode *&) =====
int __fastcall glitch::scene::CSceneCollisionManager::getPickedNodeBB(
        int result,
        int a2,
        float *a3,
        int a4,
        unsigned __int8 a5,
        float *a6,
        float *a7)
{
  int *v8; // r3
  _DWORD *v9; // r4
  _DWORD *v10; // r6
  glitch::scene::ISceneNode *v11; // r5
  float *v12; // r0
  float v13; // r11
  float v14; // r9
  float v15; // r10
  float v16; // r0
  float v17; // r11
  float v18; // r9
  float v19; // r10
  float *v20; // r10
  float *v21; // r12
  float *v22; // r10
  float v23; // r7
  float v24; // r4
  float v25; // [sp+14h] [bp-110h]
  _DWORD *v27; // [sp+28h] [bp-FCh]
  float *v28; // [sp+34h] [bp-F0h]
  int v29; // [sp+40h] [bp-E4h]
  float v30[2]; // [sp+5Ch] [bp-C8h] BYREF
  int v31; // [sp+64h] [bp-C0h] BYREF
  int v32; // [sp+68h] [bp-BCh] BYREF
  float v33; // [sp+BCh] [bp-68h] BYREF
  float v34; // [sp+C0h] [bp-64h]
  float v35; // [sp+C4h] [bp-60h] BYREF
  int v36; // [sp+C8h] [bp-5Ch] BYREF
  float v37; // [sp+CCh] [bp-58h]
  float v38; // [sp+D0h] [bp-54h]
  float v39; // [sp+D4h] [bp-50h]
  float v40; // [sp+DCh] [bp-48h]
  float v41; // [sp+E0h] [bp-44h]
  float v42; // [sp+E4h] [bp-40h]
  float v43; // [sp+ECh] [bp-38h]
  float v44; // [sp+F0h] [bp-34h]
  float v45; // [sp+F4h] [bp-30h]
  int v46; // [sp+F8h] [bp-2Ch]
  char v47; // [sp+FCh] [bp-28h]
  float v48; // [sp+100h] [bp-24h] BYREF
  float v49; // [sp+104h] [bp-20h]
  float v50; // [sp+108h] [bp-1Ch]
  float v51; // [sp+10Ch] [bp-18h]
  float v52; // [sp+110h] [bp-14h]
  float v53; // [sp+114h] [bp-10h]
  float v54; // [sp+118h] [bp-Ch] BYREF
  float v55[2]; // [sp+11Ch] [bp-8h] BYREF

  v29 = result;
  v8 = &v32;
  do
  {
    *(v8 - 3) = 0;
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
    v8 += 3;
  }
  while ( v8 != &v36 );
  v10 = (_DWORD *)(a2 + 244);
  v9 = *(_DWORD **)(a2 + 244);
  if ( v9 != (_DWORD *)(a2 + 244) )
  {
    result = (int)&v48;
    while ( 1 )
    {
      if ( v9 )
        v11 = (glitch::scene::ISceneNode *)(v9 - 1);
      else
        v11 = nullptr;
      if ( (*((_DWORD *)v11 + 71) & 1) == 0 )
        goto LABEL_14;
      if ( a5 )
      {
        result = glitch::scene::ISceneNode::isDebugObject(v11);
        if ( result )
          goto LABEL_13;
        if ( a4 )
        {
LABEL_20:
          result = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v11 + 76))(v11);
          if ( (result & a4) == 0 )
            goto LABEL_13;
        }
      }
      else if ( a4 )
      {
        goto LABEL_20;
      }
      LC_API_MEMSET_0(&v33, 0, 0x40u);
      v47 = 1;
      v33 = 1.0;
      v38 = 1.0;
      v42 = 1.0;
      v46 = 1065353216;
      v12 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v11 + 56))(v11);
      result = glitch::core::CMatrix4<float>::getInverse(v12, &v33);
      if ( result )
      {
        v13 = *a3;
        v14 = a3[1];
        v15 = a3[2];
        v48 = (float)((float)((float)(*a3 * v33) + (float)(v14 * v37)) + (float)(v15 * v40)) + v43;
        v49 = (float)((float)((float)(v13 * v34) + (float)(v14 * v38)) + (float)(v15 * v41)) + v44;
        v16 = (float)((float)(v13 * v35) + (float)(v14 * v39)) + (float)(v15 * v42);
        v17 = a3[3];
        v18 = a3[4];
        v19 = a3[5];
        v50 = v16 + v45;
        v51 = v43 + (float)((float)((float)(v17 * v33) + (float)(v18 * v37)) + (float)(v19 * v40));
        v52 = v44 + (float)((float)((float)(v17 * v34) + (float)(v18 * v38)) + (float)(v19 * v41));
        v53 = v45 + (float)((float)((float)(v17 * v35) + (float)(v18 * v39)) + (float)(v19 * v42));
        v20 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v11 + 48))(v11);
        result = glitch::core::aabbox3d<float>::intersectsWithSegment(v20, &v48, v55, &v54);
        if ( result )
        {
          glitch::core::aabbox3d<float>::getEdges(v20, v30);
          v21 = v30;
          v22 = (float *)&v31;
          v28 = a3;
          v27 = v9;
          v23 = 0.0;
          do
          {
            v24 = (float)((float)((float)(*(v22 - 2) - v48) * (float)(*(v22 - 2) - v48))
                        + (float)((float)(*(v22 - 1) - v49) * (float)(*(v22 - 1) - v49)))
                + (float)((float)(*v22 - v50) * (float)(*v22 - v50));
            v22 += 3;
            if ( v23 < v24 )
              v23 = v24;
          }
          while ( v22 != &v35 );
          v25 = v23;
          result = *a6 > v23;
          if ( *a6 > v23 )
            v21 = a7;
          v9 = v27;
          a3 = v28;
          if ( result )
          {
            *(_DWORD *)v21 = v11;
            result = (int)a6;
            *a6 = v25;
          }
        }
LABEL_13:
        if ( (*((_DWORD *)v11 + 71) & 1) == 0 )
          goto LABEL_14;
        result = glitch::scene::CSceneCollisionManager::getPickedNodeBB(v29, v11, a3, a4, a5, a6, a7);
        v9 = (_DWORD *)*v9;
        if ( v10 == v9 )
          return result;
      }
      else
      {
LABEL_14:
        v9 = (_DWORD *)*v9;
        if ( v10 == v9 )
          return result;
      }
    }
  }
  return result;
}


// ===== 6c6280 glitch::scene::CSceneCollisionManager::getSceneNodeFromRayBB(glitch::core::line3d<float>,int,bool,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneCollisionManager::getSceneNodeFromRayBB(
        int a1,
        float *a2,
        int a3,
        unsigned __int8 a4,
        int a5)
{
  int v5; // r12
  int v7; // [sp+10h] [bp-Ch] BYREF
  float v8[2]; // [sp+14h] [bp-8h] BYREF

  v5 = a5;
  v8[0] = 0.0;
  v7 = 2139095039;
  if ( !a5 )
    v5 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4);
  glitch::scene::CSceneCollisionManager::getPickedNodeBB(a1, v5, a2, a3, a4, (float *)&v7, v8);
  return LODWORD(v8[0]);
}


// ===== 6c62e8 glitch::scene::CSceneCollisionManager::getCollisionPoint(glitch::core::line3d<float> const&,glitch::scene::ITriangleSelector *,glitch::core::vector3d<float> &,glitch::core::triangle3d<float> &) =====
int __fastcall glitch::scene::CSceneCollisionManager::getCollisionPoint(
        int a1,
        float *a2,
        int a3,
        float *a4,
        _DWORD *a5)
{
  signed int v8; // r0
  signed int v9; // r5
  float v10; // r3
  float v11; // r9
  float v12; // r2
  float v13; // r11
  float v14; // r8
  float v15; // r6
  float v16; // r5
  float v17; // r4
  float *v18; // r0
  float v19; // r8
  float v20; // r9
  float v21; // r2
  float v22; // r3
  int v23; // r4
  int v24; // r5
  int v25; // r6
  float v26; // r10
  int v27; // r6
  float v28; // r11
  float v30; // r10
  float v31; // r11
  float v32; // r10
  float v33; // [sp+10h] [bp-ACh]
  int v34; // [sp+14h] [bp-A8h]
  int v35; // [sp+14h] [bp-A8h]
  float v36; // [sp+18h] [bp-A4h]
  float v37; // [sp+1Ch] [bp-A0h]
  float v38; // [sp+20h] [bp-9Ch]
  float v39; // [sp+24h] [bp-98h]
  float v40; // [sp+28h] [bp-94h]
  float v41; // [sp+28h] [bp-94h]
  int v42; // [sp+2Ch] [bp-90h]
  float *v43; // [sp+30h] [bp-8Ch]
  float v44; // [sp+34h] [bp-88h]
  float v46; // [sp+3Ch] [bp-80h]
  float v47; // [sp+48h] [bp-74h]
  float v48; // [sp+48h] [bp-74h]
  float v49; // [sp+4Ch] [bp-70h]
  int v50[9]; // [sp+54h] [bp-68h] BYREF
  float v51; // [sp+78h] [bp-44h] BYREF
  float v52; // [sp+7Ch] [bp-40h]
  float v53; // [sp+80h] [bp-3Ch]
  float v54; // [sp+84h] [bp-38h]
  float v55; // [sp+88h] [bp-34h]
  float v56; // [sp+8Ch] [bp-30h]
  float v57; // [sp+90h] [bp-2Ch] BYREF
  float v58; // [sp+94h] [bp-28h]
  float v59; // [sp+98h] [bp-24h]
  float v60[3]; // [sp+9Ch] [bp-20h] BYREF
  float v61[3]; // [sp+A8h] [bp-14h] BYREF
  int v62; // [sp+B4h] [bp-8h] BYREF

  if ( a3 )
  {
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 12))(a3);
    v9 = v8;
    v34 = *(_DWORD *)(a1 + 16);
    if ( v8 > 954437177 * ((*(_DWORD *)(a1 + 20) - v34) >> 2) )
    {
      memset(v50, 0, sizeof(v50));
      std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        a1 + 16,
        v8,
        v50);
      v34 = *(_DWORD *)(a1 + 16);
    }
    v10 = *a2;
    v11 = a2[3];
    v12 = a2[2];
    v13 = a2[1];
    v62 = 0;
    v56 = v12;
    v51 = v10;
    v53 = v12;
    v54 = v10;
    v52 = v13;
    v55 = v13;
    v14 = a2[4];
    v15 = a2[5];
    if ( v10 < v11 )
      v54 = v11;
    if ( v13 < v14 )
      v55 = v14;
    if ( v15 > v56 )
      v56 = v15;
    if ( v11 < v51 )
      v51 = v11;
    if ( v14 < v52 )
      v52 = v14;
    if ( v15 < v53 )
      v53 = v15;
    (*(void (__fastcall **)(int, int, signed int, int *, float *, _DWORD))(*(_DWORD *)a3 + 20))(
      a3,
      v34,
      v9,
      &v62,
      &v51,
      0);
    v16 = a2[4] - a2[1];
    v17 = a2[5] - a2[2];
    v60[0] = a2[3] - *a2;
    v60[1] = v16;
    v60[2] = v17;
    v18 = glitch::core::vector3d<float>::normalize(v60);
    v19 = *a2;
    v20 = a2[3];
    v61[0] = *v18;
    v61[1] = v18[1];
    v21 = v18[2];
    v59 = 0.0;
    v61[2] = v21;
    v57 = 0.0;
    v58 = 0.0;
    v36 = a2[1];
    v37 = a2[4];
    v38 = a2[2];
    v39 = a2[5];
    v46 = (float)((float)((float)(v19 - v20) * (float)(v19 - v20)) + (float)((float)(v36 - v37) * (float)(v36 - v37)))
        + (float)((float)(v38 - v39) * (float)(v38 - v39));
    if ( v19 >= v20 )
    {
      v22 = v20;
      v20 = v19;
      v19 = v22;
    }
    if ( v36 >= v37 )
    {
      v36 = a2[4];
      v37 = a2[1];
    }
    if ( v38 >= v39 )
    {
      v38 = a2[5];
      v39 = a2[2];
    }
    v35 = v62;
    if ( v62 > 0 )
    {
      v23 = 0;
      v44 = 3.4028e38;
      v24 = 0;
      v42 = 0;
      v43 = a2;
      while ( 1 )
      {
        while ( 1 )
        {
          v25 = *(_DWORD *)(a1 + 16);
          v26 = *(float *)(v25 + v23);
          v27 = v25 + v23;
          if ( (v26 >= v19 || *(float *)(v27 + 12) >= v19 || *(float *)(v27 + 24) >= v19)
            && (v20 >= v26 || *(float *)(v27 + 12) <= v20 || *(float *)(v27 + 24) <= v20) )
          {
            break;
          }
LABEL_35:
          ++v24;
          v23 += 36;
          if ( v35 <= v24 )
            return v42;
        }
        v28 = *(float *)(v27 + 4);
        if ( v28 >= v36 || *(float *)(v27 + 16) >= v36 || *(float *)(v27 + 28) >= v36 )
        {
          if ( v37 >= v28 || *(float *)(v27 + 16) <= v37 || *(float *)(v27 + 28) <= v37 )
          {
            v40 = *(float *)(v27 + 8);
            if ( (v40 >= v38 || *(float *)(v27 + 20) >= v38 || *(float *)(v27 + 32) >= v38)
              && (v39 >= v40 || *(float *)(v27 + 20) <= v39 || *(float *)(v27 + 32) <= v39) )
            {
              v47 = *v43;
              v33 = *v43 - v26;
              v49 = v43[1];
              v30 = v43[2];
              if ( v44 > (float)((float)((float)(v33 * v33) + (float)((float)(v49 - v28) * (float)(v49 - v28)))
                               + (float)((float)(v30 - v40) * (float)(v30 - v40)))
                || v44 > (float)((float)((float)((float)(v47 - *(float *)(v27 + 12))
                                               * (float)(v47 - *(float *)(v27 + 12)))
                                       + (float)((float)(v49 - *(float *)(v27 + 16))
                                               * (float)(v49 - *(float *)(v27 + 16))))
                               + (float)((float)(v30 - *(float *)(v27 + 20)) * (float)(v30 - *(float *)(v27 + 20))))
                || v44 > (float)((float)((float)((float)(v47 - *(float *)(v27 + 24))
                                               * (float)(v47 - *(float *)(v27 + 24)))
                                       + (float)((float)(v49 - *(float *)(v27 + 28))
                                               * (float)(v49 - *(float *)(v27 + 28))))
                               + (float)((float)(v30 - *(float *)(v27 + 32)) * (float)(v30 - *(float *)(v27 + 32)))) )
              {
                if ( glitch::core::triangle3d<float>::getIntersectionWithLine((float *)v27, v43, v61, &v57)
                  && (v31 = v57,
                      v41 = v58,
                      v48 = v59,
                      v32 = (float)((float)((float)(v57 - *v43) * (float)(v57 - *v43))
                                  + (float)((float)(v58 - v43[1]) * (float)(v58 - v43[1])))
                          + (float)((float)(v59 - v43[2]) * (float)(v59 - v43[2])),
                      v46 > v32) )
                {
                  if ( v46 > (float)((float)((float)((float)(v57 - v43[3]) * (float)(v57 - v43[3]))
                                           + (float)((float)(v58 - v43[4]) * (float)(v58 - v43[4])))
                                   + (float)((float)(v59 - v43[5]) * (float)(v59 - v43[5]))) )
                  {
                    if ( v44 > v32 )
                    {
                      v44 = (float)((float)((float)(v57 - *v43) * (float)(v57 - *v43))
                                  + (float)((float)(v58 - v43[1]) * (float)(v58 - v43[1])))
                          + (float)((float)(v59 - v43[2]) * (float)(v59 - v43[2]));
                      v35 = v62;
                      *a5 = *(_DWORD *)v27;
                      v42 = 1;
                      a5[1] = *(_DWORD *)(v27 + 4);
                      a5[2] = *(_DWORD *)(v27 + 8);
                      a5[3] = *(_DWORD *)(v27 + 12);
                      a5[4] = *(_DWORD *)(v27 + 16);
                      a5[5] = *(_DWORD *)(v27 + 20);
                      a5[6] = *(_DWORD *)(v27 + 24);
                      a5[7] = *(_DWORD *)(v27 + 28);
                      a5[8] = *(_DWORD *)(v27 + 32);
                      *a4 = v31;
                      a4[1] = v41;
                      a4[2] = v48;
                    }
                    else
                    {
                      v35 = v62;
                    }
                  }
                  else
                  {
                    v35 = v62;
                  }
                }
                else
                {
                  v35 = v62;
                }
              }
            }
          }
          goto LABEL_35;
        }
        ++v24;
        v23 += 36;
        if ( v35 <= v24 )
          return v42;
      }
    }
  }
  return 0;
}


// ===== 6c6c04 glitch::scene::CSceneCollisionManager::collideWithWorld(int,glitch::scene::CSceneCollisionManager::SCollisionData &,glitch::core::vector3d<float>,glitch::core::vector3d<float>) =====
float *__fastcall glitch::scene::CSceneCollisionManager::collideWithWorld(
        float *a1,
        glitch::scene::CSceneCollisionManager *a2,
        int a3,
        int a4,
        float *a5,
        float *a6)
{
  float v10; // r10
  float v11; // r8
  float v12; // r11
  int v13; // r3
  float v14; // r1
  float v15; // r3
  float v16; // r11
  int v17; // r3
  int v18; // r10
  unsigned int v19; // r11
  float v20; // r1
  float v21; // r0
  int v22; // r12
  int v23; // r1
  int v24; // r8
  float v25; // r11
  float v26; // r8
  float v27; // r6
  float v28; // r10
  float v29; // r8
  float v30; // r7
  float v31; // r10
  float v32; // r7
  float v33; // r8
  float v34; // r10
  float v35; // r0
  float v36; // r3
  float v37; // r0
  float v38; // r6
  float v39; // r1
  float v40; // r7
  float v41; // r0
  float v42; // r0
  float v43; // r4
  float v44; // r0
  float v45; // [sp+8h] [bp-DCh]
  float v46; // [sp+8h] [bp-DCh]
  float v47; // [sp+Ch] [bp-D8h]
  float v48; // [sp+Ch] [bp-D8h]
  float v49; // [sp+10h] [bp-D4h]
  float v50; // [sp+10h] [bp-D4h]
  float v52; // [sp+18h] [bp-CCh]
  float v53; // [sp+1Ch] [bp-C8h]
  float v54; // [sp+20h] [bp-C4h]
  float v55; // [sp+24h] [bp-C0h]
  _DWORD v56[16]; // [sp+2Ch] [bp-B8h] BYREF
  char v57; // [sp+6Ch] [bp-78h]
  int v58[9]; // [sp+70h] [bp-74h] BYREF
  float v59; // [sp+94h] [bp-50h] BYREF
  float v60; // [sp+98h] [bp-4Ch]
  float v61; // [sp+9Ch] [bp-48h]
  float v62; // [sp+A0h] [bp-44h]
  float v63; // [sp+A4h] [bp-40h]
  float v64; // [sp+A8h] [bp-3Ch]
  _DWORD v65[3]; // [sp+ACh] [bp-38h] BYREF
  _DWORD v66[3]; // [sp+B8h] [bp-2Ch] BYREF
  float v67; // [sp+C4h] [bp-20h] BYREF
  float v68; // [sp+C8h] [bp-1Ch]
  float v69; // [sp+CCh] [bp-18h]
  float v70; // [sp+D0h] [bp-14h] BYREF
  float v71; // [sp+D4h] [bp-10h]
  float v72; // [sp+D8h] [bp-Ch]
  int v73; // [sp+DCh] [bp-8h] BYREF

  v52 = *(float *)(a4 + 132);
  if ( a3 <= 5 )
  {
    *(float *)(a4 + 36) = *a6;
    *(float *)(a4 + 40) = a6[1];
    *(float *)(a4 + 44) = a6[2];
    *(float *)(a4 + 48) = *a6;
    *(float *)(a4 + 52) = a6[1];
    *(float *)(a4 + 56) = a6[2];
    glitch::core::vector3d<float>::normalize((float *)(a4 + 48));
    v10 = *(float *)(a4 + 24);
    v11 = *(float *)(a4 + 28);
    *(float *)(a4 + 60) = *a5;
    v12 = *(float *)(a4 + 32);
    *(float *)(a4 + 64) = a5[1];
    v13 = *((_DWORD *)a5 + 2);
    v14 = *(float *)(a4 + 12);
    *(_BYTE *)(a4 + 72) = 0;
    *(_DWORD *)(a4 + 68) = v13;
    v15 = 3.4028e38;
    *(_DWORD *)(a4 + 76) = 2139095039;
    v59 = v10;
    v60 = v11;
    v61 = v12;
    v62 = v10;
    v63 = v11;
    v64 = v12;
    v47 = v10 + v14;
    v49 = v11 + *(float *)(a4 + 16);
    v16 = v12 + *(float *)(a4 + 20);
    if ( v10 < (float)(v10 + v14) )
      v15 = v10 + v14;
    if ( v10 < v47 )
      v62 = v15;
    if ( v11 < v49 )
      v63 = v49;
    if ( v16 > v64 )
      v64 = v16;
    if ( v47 < v59 )
      v59 = v10 + v14;
    if ( v49 < v60 )
      v60 = v49;
    if ( v16 < v61 )
      v61 = v16;
    v59 = v59 - *(float *)a4;
    v60 = v60 - *(float *)(a4 + 4);
    v61 = v61 - *(float *)(a4 + 8);
    v62 = v62 + *(float *)a4;
    v63 = v63 + *(float *)(a4 + 4);
    v17 = *(_DWORD *)(a4 + 136);
    v64 = v64 + *(float *)(a4 + 8);
    v18 = 0;
    v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v17 + 12))(v17);
    memset(v58, 0, sizeof(v58));
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)a2 + 16,
      v19,
      v58);
    LC_API_MEMSET_0(v56, 0, 0x40u);
    v20 = *(float *)a4;
    v56[15] = 1065353216;
    v45 = 1.0 / v20;
    v50 = 1.0 / *(float *)(a4 + 4);
    v21 = 1.0 / *(float *)(a4 + 8);
    v22 = *(_DWORD *)(a4 + 136);
    v23 = *((_DWORD *)a2 + 4);
    *(float *)v56 = v45;
    v73 = 0;
    *(float *)&v56[10] = v21;
    *(float *)&v56[5] = v50;
    v57 = 0;
    (*(void (__fastcall **)(int, int, unsigned int, int *, float *, _DWORD *))(*(_DWORD *)v22 + 20))(
      v22,
      v23,
      v19,
      &v73,
      &v59,
      v56);
    if ( v73 > 0 )
    {
      v24 = 0;
      do
      {
        glitch::scene::CSceneCollisionManager::testTriangleIntersection(a2, a4, (float *)(*((_DWORD *)a2 + 4) + v24));
        ++v18;
        v24 += 36;
      }
      while ( v73 > v18 );
    }
    if ( *(_BYTE *)(a4 + 72) )
    {
      v25 = *a5;
      v26 = *a6;
      v53 = *a5 + *a6;
      v48 = a5[1];
      v54 = v48 + a6[1];
      v27 = a5[2];
      v55 = v27 + a6[2];
      if ( *(float *)(a4 + 76) >= v52 )
      {
        v36 = a6[1];
        v37 = *(float *)(a4 + 76);
        v72 = a6[2];
        v71 = v36;
        v70 = v26;
        v38 = v37 - v52;
        glitch::core::vector3d<float>::normalize(&v70);
        v70 = v38 * v70;
        v71 = v38 * v71;
        v39 = *(float *)(a4 + 60);
        v72 = v38 * v72;
        v25 = v70 + v39;
        v48 = v71 + *(float *)(a4 + 64);
        v27 = v72 + *(float *)(a4 + 68);
        glitch::core::vector3d<float>::normalize(&v70);
        v40 = v52 * v71;
        v46 = v52 * v72;
        v41 = *(float *)(a4 + 80) - (float)(v52 * v70);
        *(float *)(a4 + 80) = v41;
        v28 = v41;
        v42 = *(float *)(a4 + 84) - v40;
        *(float *)(a4 + 84) = v42;
        v29 = v42;
        v30 = *(float *)(a4 + 88) - v46;
        *(float *)(a4 + 88) = v30;
      }
      else
      {
        v28 = *(float *)(a4 + 80);
        v29 = *(float *)(a4 + 84);
        v30 = *(float *)(a4 + 88);
      }
      v67 = v25 - v28;
      v68 = v48 - v29;
      v69 = v27 - v30;
      glitch::core::vector3d<float>::normalize(&v67);
      v31 = COERCE_FLOAT(COERCE_INT((float)((float)(v67 * v28) + (float)(v68 * v29)) + (float)(v69 * v30)) + 0x80000000)
          + (float)((float)((float)(v53 * v67) + (float)(v54 * v68)) + (float)(v55 * v69));
      v32 = (float)(v53 - (float)(v67 * v31)) - *(float *)(a4 + 80);
      v33 = (float)(v54 - (float)(v68 * v31)) - *(float *)(a4 + 84);
      v34 = (float)(v55 - (float)(v69 * v31)) - *(float *)(a4 + 88);
      v35 = sqrt((float)((float)((float)(v32 * v32) + (float)(v33 * v33)) + (float)(v34 * v34)));
      if ( v52 > v35 )
      {
        *a1 = v25;
        a1[2] = v27;
        a1[1] = v48;
      }
      else
      {
        *(float *)v66 = v25;
        *(float *)&v66[1] = v48;
        *(float *)&v66[2] = v27;
        *(float *)v65 = v32;
        *(float *)&v65[1] = v33;
        *(float *)&v65[2] = v34;
        glitch::scene::CSceneCollisionManager::collideWithWorld(a1, a2, a3 + 1, a4, v66, v65);
      }
    }
    else
    {
      v43 = a5[2] + a6[2];
      v44 = *a5 + *a6;
      a1[1] = a5[1] + a6[1];
      *a1 = v44;
      a1[2] = v43;
    }
  }
  else
  {
    *a1 = *a5;
    a1[1] = a5[1];
    a1[2] = a5[2];
  }
  return a1;
}


// ===== 6c72f4 glitch::scene::CSceneCollisionManager::collideEllipsoidWithWorld(glitch::scene::ITriangleSelector *,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,glitch::core::triangle3d<float> &,bool &) =====
float *__fastcall glitch::scene::CSceneCollisionManager::collideEllipsoidWithWorld(
        float *a1,
        glitch::scene::CSceneCollisionManager *a2,
        int a3,
        float *a4,
        float *a5,
        float *a6,
        int a7,
        int a8,
        float *a9,
        bool *a10)
{
  float v15; // r1
  float v16; // r0
  int v17; // r3
  float v18; // r12
  float v19; // r2
  float v20; // r11
  int v21; // lr
  float v22; // r12
  float v23; // r12
  int v24; // r3
  int v25; // lr
  int v26; // r3
  float v27; // r0
  float v28; // r1
  float v29; // r2
  float v30; // r2
  float v31; // r3
  float v32; // r0
  float v33; // r11
  float v34; // r9
  float v35; // r10
  float v36; // r8
  float v37; // r7
  float v38; // r5
  float v39; // r4
  float v40; // r0
  float v41; // [sp+10h] [bp-FCh] BYREF
  float v42; // [sp+14h] [bp-F8h]
  float v43; // [sp+18h] [bp-F4h]
  float v44; // [sp+1Ch] [bp-F0h] BYREF
  int v45; // [sp+20h] [bp-ECh]
  int v46; // [sp+24h] [bp-E8h]
  float v47; // [sp+28h] [bp-E4h] BYREF
  float v48; // [sp+2Ch] [bp-E0h]
  float v49; // [sp+30h] [bp-DCh]
  int v50; // [sp+34h] [bp-D8h]
  int v51; // [sp+38h] [bp-D4h]
  int v52; // [sp+3Ch] [bp-D0h]
  int v53; // [sp+40h] [bp-CCh]
  int v54; // [sp+44h] [bp-C8h]
  int v55; // [sp+48h] [bp-C4h]
  int v56; // [sp+4Ch] [bp-C0h]
  int v57; // [sp+50h] [bp-BCh]
  int v58; // [sp+54h] [bp-B8h]
  int v59; // [sp+5Ch] [bp-B0h]
  int v60; // [sp+60h] [bp-ACh]
  int v61; // [sp+64h] [bp-A8h]
  int v62; // [sp+68h] [bp-A4h]
  float v63; // [sp+6Ch] [bp-A0h]
  float v64; // [sp+70h] [bp-9Ch]
  float v65; // [sp+74h] [bp-98h]
  float v66; // [sp+78h] [bp-94h]
  float v67; // [sp+7Ch] [bp-90h]
  float v68; // [sp+80h] [bp-8Ch]
  float v69; // [sp+84h] [bp-88h]
  float v70; // [sp+88h] [bp-84h]
  float v71; // [sp+8Ch] [bp-80h]
  int v72; // [sp+90h] [bp-7Ch]
  int v73; // [sp+94h] [bp-78h]
  int v74; // [sp+98h] [bp-74h]
  float v75[3]; // [sp+9Ch] [bp-70h] BYREF
  float v76[3]; // [sp+A8h] [bp-64h] BYREF
  float v77[3]; // [sp+B4h] [bp-58h] BYREF
  float v78; // [sp+C0h] [bp-4Ch] BYREF
  float v79; // [sp+C4h] [bp-48h]
  float v80; // [sp+C8h] [bp-44h]
  float v81[3]; // [sp+CCh] [bp-40h] BYREF
  float v82[3]; // [sp+D8h] [bp-34h] BYREF
  float v83; // [sp+E4h] [bp-28h] BYREF
  float v84; // [sp+E8h] [bp-24h]
  float v85; // [sp+ECh] [bp-20h]
  float v86; // [sp+F0h] [bp-1Ch] BYREF
  float v87; // [sp+F4h] [bp-18h]
  float v88; // [sp+F8h] [bp-14h]
  float v89[4]; // [sp+FCh] [bp-10h] BYREF

  if ( !a3 || *a5 == 0.0 || a5[1] == 0.0 || a5[2] == 0.0 )
  {
    *a1 = *a4;
    a1[1] = a4[1];
    a1[2] = a4[2];
  }
  else
  {
    v15 = a4[2];
    v16 = *a4;
    v17 = *((_DWORD *)a6 + 2);
    v18 = a4[1];
    v19 = *a6;
    v20 = *a5;
    v21 = *((_DWORD *)a6 + 1);
    v47 = v16;
    v48 = v18;
    v45 = v21;
    v49 = v15;
    v44 = v19;
    v46 = v17;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0.0;
    v64 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    v41 = v20;
    v71 = 0.0;
    v22 = a5[1];
    v43 = a5[2];
    v59 = 2139095039;
    v42 = v22;
    v73 = a7;
    v74 = a3;
    v72 = 0;
    glitch::core::vector3d<float>::operator/(v89, &v47, &v41);
    glitch::core::vector3d<float>::operator/(&v86, &v44, &v41);
    v82[0] = v89[0];
    v82[1] = v89[1];
    v82[2] = v89[2];
    v81[0] = v86;
    v81[1] = v87;
    v81[2] = v88;
    glitch::scene::CSceneCollisionManager::collideWithWorld(&v83, a2, 0, (int)&v41, v82, v81);
    *a10 = 0;
    if ( *(float *)a8 == 0.0 && *(float *)(a8 + 4) == 0.0 && *(float *)(a8 + 8) == 0.0 )
    {
      v26 = v72;
    }
    else
    {
      v23 = *(float *)a8;
      v24 = *(_DWORD *)(a8 + 4);
      v25 = *(_DWORD *)(a8 + 8);
      v47 = v83 * v41;
      v49 = v85 * v43;
      v44 = v23;
      v45 = v24;
      v46 = v25;
      v72 = 0;
      v48 = v84 * v42;
      glitch::core::vector3d<float>::operator/(&v78, (float *)a8, &v41);
      v77[0] = v83;
      v77[1] = v84;
      v77[2] = v85;
      v76[0] = v78;
      v86 = v78;
      v76[1] = v79;
      v76[2] = v80;
      v87 = v79;
      v88 = v80;
      glitch::scene::CSceneCollisionManager::collideWithWorld(v75, a2, 0, (int)&v41, v77, v76);
      v26 = v72;
      v27 = v75[0];
      v28 = v75[1];
      v29 = v75[2];
      *a10 = v72 == 0;
      v83 = v27;
      v84 = v28;
      v85 = v29;
    }
    if ( v26 )
    {
      v30 = v71;
      v31 = v70;
      v32 = v63;
      v33 = v64;
      v34 = v65;
      v35 = v66;
      v36 = v67;
      v37 = v68;
      v38 = v69;
      a9[8] = v71;
      a9[7] = v31;
      *a9 = v32;
      a9[1] = v33;
      a9[2] = v34;
      a9[3] = v35;
      a9[4] = v36;
      a9[5] = v37;
      a9[6] = v38;
      *a9 = v32 * v41;
      a9[1] = v33 * v42;
      a9[2] = v34 * v43;
      a9[3] = v35 * v41;
      a9[4] = v36 * v42;
      a9[5] = v37 * v43;
      a9[6] = v38 * v41;
      a9[7] = v31 * v42;
      a9[8] = v30 * v43;
    }
    v39 = v84 * v42;
    v40 = v85 * v43;
    *a1 = v83 * v41;
    a1[1] = v39;
    a1[2] = v40;
  }
  return a1;
}


// ===== 6c7720 glitch::scene::CSceneCollisionManager::getCollisionResultPosition(glitch::scene::ITriangleSelector *,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::triangle3d<float> &,bool &,float,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CSceneCollisionManager::getCollisionResultPosition(
        int a1,
        glitch::scene::CSceneCollisionManager *a2,
        int a3,
        int a4,
        float *a5,
        float *a6,
        float *a7,
        bool *a8,
        int a9,
        int a10)
{
  if ( !a3 || *a5 == 0.0 || a5[1] == 0.0 || a5[2] == 0.0 )
  {
    *(_DWORD *)a1 = *(_DWORD *)a4;
    *(_DWORD *)(a1 + 4) = *(_DWORD *)(a4 + 4);
    *(_DWORD *)(a1 + 8) = *(_DWORD *)(a4 + 8);
  }
  else
  {
    glitch::scene::CSceneCollisionManager::collideEllipsoidWithWorld(
      (float *)a1,
      a2,
      a3,
      (float *)a4,
      a5,
      a6,
      a9,
      a10,
      a7,
      a8);
  }
  return a1;
}


// ===== 6c77e4 glitch::scene::CSceneNodeAnimatorCameraFPS::isEventReceiverEnabled(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::isEventReceiverEnabled(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  return 1;
}


// ===== 6c77ec glitch::scene::CSceneNodeAnimatorCameraFPS::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::getType(glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  return 7;
}


// ===== 6c77f4 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(int a1)
{
  return glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(a1 - 4);
}


// ===== 6c77fc glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(float *a1, int a2)
{
  _DWORD *v4; // r0
  int v5; // r5
  int v6; // r12
  int v7; // r3
  int v8; // r3
  int v9; // r2
  _DWORD v10[2]; // [sp+0h] [bp-8h] BYREF

  if ( *(_DWORD *)a2 == 1 )
  {
    if ( *(_DWORD *)(a2 + 20) == 6 )
    {
      v8 = *((_DWORD *)a1 + 3);
      if ( v8 )
      {
        (*(void (__fastcall **)(_DWORD *, _DWORD))(*(_DWORD *)v8 + 40))(v10, *((_DWORD *)a1 + 3));
        v9 = v10[0];
        a1[18] = *(float *)&v10[1];
        *((_DWORD *)a1 + 17) = v9;
      }
      else
      {
        a1[17] = (float)((float)(*(_DWORD *)(a2 + 8) - 320) / 640.0) + 0.5;
        a1[18] = (float)((float)(*(_DWORD *)(a2 + 12) - 240) / 480.0) + 0.5;
      }
      return 1;
    }
    return 0;
  }
  if ( *(_DWORD *)a2 != 2 )
    return 0;
  v4 = *((_DWORD **)a1 + 12);
  v5 = (*((_DWORD *)a1 + 13) - (int)v4) >> 3;
  if ( !v5 )
    return 0;
  v6 = *(_DWORD *)(a2 + 12);
  if ( v4[1] != v6 )
  {
    v7 = 0;
    while ( ++v7 != v5 )
    {
      if ( v4[2 * v7 + 1] == v6 )
      {
        v4 += 2 * v7;
        goto LABEL_16;
      }
    }
    return 0;
  }
LABEL_16:
  *((_BYTE *)a1 + *v4 + 76) = *(_BYTE *)(a2 + 16);
  return 1;
}


// ===== 6c7928 glitch::scene::CSceneNodeAnimatorCameraFPS::allKeysUp(void) =====
_BYTE *__fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::allKeysUp(_BYTE *this)
{
  *(this + 81) = 0;
  *(this + 76) = 0;
  *(this + 77) = 0;
  *(this + 78) = 0;
  *(this + 79) = 0;
  *(this + 80) = 0;
  return this;
}


// ===== 6c7948 glitch::scene::CSceneNodeAnimatorCameraFPS::setRotateSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::setRotateSpeed(int this, float a2)
{
  *(float *)(this + 24) = a2;
  return this;
}


// ===== 6c7950 glitch::scene::CSceneNodeAnimatorCameraFPS::setMoveSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::setMoveSpeed(int this, float a2)
{
  *(float *)(this + 20) = a2;
  return this;
}


// ===== 6c7958 glitch::scene::CSceneNodeAnimatorCameraFPS::getRotateSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::getRotateSpeed(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 6c7960 glitch::scene::CSceneNodeAnimatorCameraFPS::getMoveSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::getMoveSpeed(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 6c7968 glitch::scene::CSceneNodeAnimatorCameraFPS::setVerticalMovement(bool) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::setVerticalMovement(int this, bool a2)
{
  *(_BYTE *)(this + 83) = !a2;
  return this;
}


// ===== 6c7974 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCameraFPS.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCameraFPS.cpp()
{
  dword_9F7E30 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E2C = 1056964608;
}


// ===== 6c7994 `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS((glitch::scene::ISceneNodeAnimatorCameraFPS *)((char *)this - 4));
}


// ===== 6c799c glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  *(_DWORD *)this = off_98899C;
  *((_DWORD *)this + 3) = off_988A2C;
  *((_DWORD *)this + 1) = off_988A10;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988A3C);
}


// ===== 6c79f0 `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS((glitch::scene::ISceneNodeAnimatorCameraFPS *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c7a00 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS((glitch::scene::CSceneNodeAnimatorCameraFPS *)((char *)this - 4));
}


// ===== 6c7a08 glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 3);
  *(_DWORD *)this = off_988B14;
  *((_DWORD *)this + 23) = off_988BA4;
  *((_DWORD *)this + 1) = off_988B88;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 12);
  if ( v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_988BDC;
  *(int *)((char *)&dword_5C + (_DWORD)this) = (int)off_988C58;
  *((_DWORD *)this + 1) = off_988A10;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988BB8);
}


// ===== 6c7aa8 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS((glitch::scene::CSceneNodeAnimatorCameraFPS *)((char *)this - 4));
}


// ===== 6c7ab0 glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(this);
  LC_API_FREE_0(this);
}


// ===== 6c7acc glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this,
        int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  void *v6; // r0
  int v7; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v5 = *((glitch::IReferenceCounted **)this + 3);
  *((_DWORD *)this + 1) = off_988B88;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((void **)this + 12);
  if ( v6 )
    GlitchFree(v6);
  v7 = a2[1];
  *(_DWORD *)this = v7;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 12)) = a2[6];
  *((_DWORD *)this + 1) = off_988A10;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 2);
}


// ===== 6c7b6c glitch::core::vector3d<float>::getHorizontalAngle(void) =====
float *__fastcall glitch::core::vector3d<float>::getHorizontalAngle(float *a1, float *a2)
{
  float v4; // r0
  float v5; // r7
  double v6; // r0
  float v7; // r0
  float v8; // r5

  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  v4 = atan2f(*a2, a2[2]) * 57.2957795;
  a1[1] = v4;
  v5 = v4;
  if ( v4 < 0.0 )
  {
    v5 = v4 + 360.0;
    a1[1] = v4 + 360.0;
  }
  if ( v5 >= 360.0 )
    a1[1] = v5 - 360.0;
  v6 = sqrtf((float)(*a2 * *a2) + (float)(a2[2] * a2[2]));
  v7 = atan2(v6, a2[1]) * 57.2957795 - 90.0;
  *a1 = v7;
  v8 = v7;
  if ( v7 < 0.0 )
  {
    v8 = v7 + 360.0;
    *a1 = v7 + 360.0;
  }
  if ( v8 >= 360.0 )
    *a1 = v8 - 360.0;
  return a1;
}


// ===== 6c7cf0 glitch::core::CMatrix4<float>::setRotationRadians(glitch::core::vector3d<float> const&) =====
int __fastcall glitch::core::CMatrix4<float>::setRotationRadians(int a1, float *a2)
{
  float v2; // r6
  double v5; // r0
  float v6; // r6
  double v7; // r10
  float v8; // r5
  double v9; // r8
  double v10; // r0
  double v11; // r6
  float v13; // [sp+4h] [bp-30h]
  double v14; // [sp+8h] [bp-2Ch]
  double v15; // [sp+10h] [bp-24h]
  double v16; // [sp+18h] [bp-1Ch]
  double v17; // [sp+20h] [bp-14h]

  v2 = *a2;
  v16 = cosf(*a2);
  v5 = sinf(v2);
  v6 = a2[1];
  v7 = v5;
  v17 = cosf(v6);
  v13 = sinf(v6);
  v8 = a2[2];
  v9 = cosf(v8);
  v10 = sinf(v8);
  *(_BYTE *)(a1 + 64) = 0;
  v11 = v10;
  *(float *)&v10 = v17 * v9;
  *(_DWORD *)a1 = LODWORD(v10);
  *(float *)&v10 = v17 * v11;
  *(_DWORD *)(a1 + 4) = LODWORD(v10);
  *(_DWORD *)(a1 + 8) = LODWORD(v13) + 0x80000000;
  v14 = v7 * v13;
  v15 = v16 * v13;
  *(float *)&v10 = v14 * v9 - v16 * v11;
  *(_DWORD *)(a1 + 16) = LODWORD(v10);
  *(float *)&v10 = v14 * v11 + v16 * v9;
  *(_DWORD *)(a1 + 20) = LODWORD(v10);
  *(float *)&v10 = v7 * v17;
  *(_DWORD *)(a1 + 24) = LODWORD(v10);
  *(float *)&v10 = v15 * v9 + v7 * v11;
  *(_DWORD *)(a1 + 32) = LODWORD(v10);
  *(float *)&v10 = v15 * v11 - v7 * v9;
  *(_DWORD *)(a1 + 36) = LODWORD(v10);
  *(float *)&v10 = v16 * v17;
  *(_DWORD *)(a1 + 40) = LODWORD(v10);
  return a1;
}


// ===== 6c7f1c glitch::scene::CSceneNodeAnimatorCameraFPS::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::animateNode(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  int result; // r0
  unsigned int v7; // r0
  float v8; // r6
  float *v9; // r0
  int v10; // r3
  float *v11; // r7
  float v12; // r10
  float v13; // r8
  int v14; // r7
  float v15; // r10
  float v16; // r9
  int v17; // r1
  float v18; // r11
  float v19; // r0
  float v20; // r7
  float v21; // r7
  float *v22; // r0
  float v23; // r8
  float v24; // r9
  float v25; // r10
  float v26; // r7
  float v27; // r11
  int v28; // r3
  float v29; // r7
  float v30; // r7
  float v31; // r0
  float v32; // r7
  float v33; // r6
  int v34; // r3
  float v35; // r8
  int v36; // r7
  int v37; // r3
  int v38; // r3
  float *v39; // r8
  float v40; // r7
  float v41; // r9
  float v42; // r0
  float v43; // r10
  float v44; // r9
  float v45; // r7
  int v46; // r2
  int v47; // r3
  float v48; // [sp+4h] [bp-C8h]
  float v49; // [sp+8h] [bp-C4h]
  float v50; // [sp+14h] [bp-B8h] BYREF
  float v51; // [sp+18h] [bp-B4h]
  float v52; // [sp+1Ch] [bp-B0h]
  float v53; // [sp+24h] [bp-A8h]
  float v54; // [sp+28h] [bp-A4h]
  float v55; // [sp+2Ch] [bp-A0h]
  float v56; // [sp+34h] [bp-98h]
  float v57; // [sp+38h] [bp-94h]
  float v58; // [sp+3Ch] [bp-90h]
  float v59; // [sp+44h] [bp-88h]
  float v60; // [sp+48h] [bp-84h]
  float v61; // [sp+4Ch] [bp-80h]
  int v62; // [sp+50h] [bp-7Ch]
  char v63; // [sp+54h] [bp-78h]
  float v64[3]; // [sp+58h] [bp-74h] BYREF
  float v65[3]; // [sp+64h] [bp-68h] BYREF
  float v66; // [sp+70h] [bp-5Ch] BYREF
  float v67; // [sp+74h] [bp-58h]
  float v68; // [sp+78h] [bp-54h]
  float v69; // [sp+7Ch] [bp-50h] BYREF
  float v70; // [sp+80h] [bp-4Ch]
  float v71; // [sp+84h] [bp-48h]
  float v72; // [sp+88h] [bp-44h] BYREF
  float v73; // [sp+8Ch] [bp-40h]
  float v74[3]; // [sp+94h] [bp-38h] BYREF
  float v75; // [sp+A0h] [bp-2Ch] BYREF
  float v76; // [sp+A4h] [bp-28h]
  float v77; // [sp+A8h] [bp-24h]
  float v78; // [sp+ACh] [bp-20h] BYREF
  float v79; // [sp+B0h] [bp-1Ch]
  float v80; // [sp+B4h] [bp-18h]
  _DWORD v81[2]; // [sp+B8h] [bp-14h] BYREF
  _DWORD v82[3]; // [sp+C0h] [bp-Ch] BYREF

  result = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 188))(a2);
  if ( result == 1601003875 )
  {
    if ( *((_BYTE *)this + 82) )
    {
      v34 = *((_DWORD *)this + 3);
      if ( v34 )
      {
        (*(void (__fastcall **)(_DWORD *, _DWORD))(*(_DWORD *)v34 + 40))(v82, *((_DWORD *)this + 3));
        v46 = v82[0];
        v47 = v82[1];
        *((_DWORD *)this + 17) = v82[0];
        *((_DWORD *)this + 18) = v47;
        *((_DWORD *)this + 15) = v46;
        *((_DWORD *)this + 16) = v47;
      }
      *((_BYTE *)this + 82) = 0;
      *((_DWORD *)this + 8) = a3;
      v7 = a3;
    }
    else
    {
      v7 = *((_DWORD *)this + 8);
    }
    *((_DWORD *)this + 8) = a3;
    v8 = (float)(a3 - v7);
    v9 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 160))(a2);
    v10 = *(_DWORD *)a2;
    v78 = *v9;
    v79 = v9[1];
    v80 = v9[2];
    v11 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(v10 + 264))(a2);
    glitch::scene::ISceneNode::getAbsolutePosition(v74, a2);
    v12 = v11[1] - v74[1];
    v13 = v11[2] - v74[2];
    v75 = *v11 - v74[0];
    v76 = v12;
    v77 = v13;
    glitch::core::vector3d<float>::getHorizontalAngle(&v72, &v75);
    v14 = *((_DWORD *)this + 3);
    if ( v14 )
    {
      if ( *((float *)this + 17) != *((float *)this + 15) || *((float *)this + 18) != *((float *)this + 16) )
      {
        v73 = v73 + (float)((float)(0.5 - *((float *)this + 17)) * *((float *)this + 6));
        v35 = *((float *)this + 4);
        v72 = v72 - (float)((float)(0.5 - *((float *)this + 18)) * *((float *)this + 6));
        if ( v72 <= (float)(v35 + v35) || v72 >= (float)(360.0 - v35) )
        {
          if ( v72 > v35 && v72 < (float)(360.0 - v35) )
            v72 = v35;
        }
        else
        {
          v72 = 360.0 - v35;
        }
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v14 + 24))(v14, 1056964608, 1056964608);
        (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)this + 3) + 40))(v81, *((_DWORD *)this + 3));
        v36 = v81[0];
        v37 = v81[1];
        *((_DWORD *)this + 15) = v81[0];
        *((_DWORD *)this + 16) = v37;
        v38 = *((_DWORD *)this + 16);
        *((_DWORD *)this + 17) = v36;
        *((_DWORD *)this + 18) = v38;
      }
    }
    else
    {
      v43 = *((float *)this + 17);
      v44 = *((float *)this + 18);
      v73 = v73 + (float)((float)(0.5 - v43) * *((float *)this + 6));
      v45 = *((float *)this + 4);
      v72 = v72 - (float)((float)(0.5 - v44) * *((float *)this + 6));
      if ( v72 <= (float)(v45 + v45) || v72 >= (float)(360.0 - v45) )
      {
        if ( v72 > v45 && v72 < (float)(360.0 - v45) )
          v72 = v45;
      }
      else
      {
        v72 = 360.0 - v45;
      }
      *((float *)this + 15) = v43;
      *((float *)this + 16) = v44;
    }
    v71 = 100.0;
    v77 = 100.0;
    v75 = 0.0;
    v76 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    LC_API_MEMSET_0(&v50, 0, 0x40u);
    v63 = 1;
    v62 = 1065353216;
    v50 = 1.0;
    v54 = 1.0;
    v58 = 1.0;
    v65[0] = v72 * 0.017453;
    v65[1] = v73 * 0.017453;
    v65[2] = 0.0;
    glitch::core::CMatrix4<float>::setRotationRadians((int)&v50, v65);
    v15 = v77;
    v48 = (float)((float)((float)(v75 * v50) + (float)(v76 * v53)) + (float)(v77 * v56)) + v59;
    v49 = (float)((float)((float)(v75 * v51) + (float)(v76 * v54)) + (float)(v77 * v57)) + v60;
    v16 = (float)(v75 * v52) + (float)(v76 * v55);
    v75 = v48;
    v17 = *((unsigned __int8 *)this + 83);
    v77 = (float)(v16 + (float)(v77 * v58)) + v61;
    v76 = v49;
    if ( v17 )
    {
      v64[0] = 0.0;
      v64[1] = v73 * 0.017453;
      v64[2] = 0.0;
      glitch::core::CMatrix4<float>::setRotationRadians((int)&v50, v64);
      v18 = (float)((float)((float)(v69 * v51) + (float)(v70 * v54)) + (float)(v71 * v57)) + v60;
      v19 = (float)(v69 * v52) + (float)(v70 * v55);
      v69 = (float)((float)((float)(v69 * v50) + (float)(v70 * v53)) + (float)(v71 * v56)) + v59;
      v70 = v18;
      v71 = (float)(v19 + (float)(v71 * v58)) + v61;
    }
    else
    {
      v69 = v48;
      v70 = v49;
      v71 = (float)(v16 + (float)(v15 * v58)) + v61;
    }
    glitch::core::vector3d<float>::normalize(&v69);
    if ( *((_BYTE *)this + 76) )
    {
      v20 = *((float *)this + 5);
      v78 = v78 + (float)(v20 * (float)(v8 * v69));
      v79 = v79 + (float)(v20 * (float)(v8 * v70));
      v80 = v80 + (float)(v20 * (float)(v8 * v71));
    }
    if ( *((_BYTE *)this + 77) )
    {
      v21 = *((float *)this + 5);
      v78 = v78 - (float)(v21 * (float)(v8 * v69));
      v79 = v79 - (float)(v21 * (float)(v8 * v70));
      v80 = v80 - (float)(v21 * (float)(v8 * v71));
    }
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v22 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 280))(a2);
    v23 = v67;
    v24 = v22[2];
    v25 = v22[1];
    v26 = *v22;
    v27 = v66;
    v66 = (float)(COERCE_FLOAT(LODWORD(v67) + 0x80000000) * v24) + (float)(v68 * v25);
    v67 = (float)(COERCE_FLOAT(LODWORD(v68) + 0x80000000) * v26) + (float)(v24 * v27);
    v28 = *((unsigned __int8 *)this + 83);
    v68 = (float)(v25 * COERCE_FLOAT(LODWORD(v27) + 0x80000000)) + (float)(v23 * v26);
    if ( v28 )
      v67 = 0.0;
    glitch::core::vector3d<float>::normalize(&v66);
    if ( *((_BYTE *)this + 78) )
    {
      v29 = *((float *)this + 5);
      v78 = v78 + (float)(v29 * (float)(v8 * v66));
      v79 = v79 + (float)(v29 * (float)(v8 * v67));
      v80 = v80 + (float)(v29 * (float)(v8 * v68));
    }
    if ( *((_BYTE *)this + 79) )
    {
      v30 = *((float *)this + 5);
      v78 = v78 - (float)(v30 * (float)(v8 * v66));
      v79 = v79 - (float)(v30 * (float)(v8 * v67));
      v80 = v80 - (float)(v30 * (float)(v8 * v68));
    }
    if ( *((_BYTE *)this + 80) )
    {
      v39 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 280))(a2);
      v40 = *((float *)this + 7);
      v41 = v40 * (float)(v8 * v39[1]);
      v42 = v40 * (float)(v8 * v39[2]);
      v78 = v78 + (float)(v40 * (float)(v8 * *v39));
      v79 = v79 + v41;
      v80 = v80 + v42;
    }
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164))(a2, &v78);
    v31 = v75;
    v32 = v76;
    v33 = v77;
    *((float *)this + 9) = v75;
    *((float *)this + 10) = v32;
    *((float *)this + 11) = v33;
    v75 = v31 + v78;
    v76 = v32 + v79;
    v77 = v33 + v80;
    return (*(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 260))(a2, &v75);
  }
  return result;
}


// ===== 6c8a2c glitch::scene::ISceneNodeAnimatorCameraFPS::ISceneNodeAnimatorCameraFPS(void) =====
glitch::scene::ISceneNodeAnimatorCameraFPS *__fastcall glitch::scene::ISceneNodeAnimatorCameraFPS::ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this,
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
  *((_DWORD *)this + 1) = off_988A10;
  return this;
}


// ===== 6c8ad4 std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap*,glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
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


// ===== 6c8bb8 `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS((glitch::scene::ISceneNodeAnimatorCameraFPS *)((char *)this - 4));
}


// ===== 6c8bc0 glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  *(_DWORD *)this = off_98899C;
  *((_DWORD *)this + 3) = off_988A2C;
  *((_DWORD *)this + 1) = off_988A10;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988A3C);
  LC_API_FREE_0(this);
}


// ===== 6c8c1c `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS(
        glitch::scene::ISceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS((glitch::scene::ISceneNodeAnimatorCameraFPS *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c8c2c glitch::scene::CSceneNodeAnimatorCameraFPS::setKeyMap(glitch::SKeyMap *,uint) =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::setKeyMap(_DWORD *a1, int a2, int a3)
{
  int v4; // r3
  int v7; // r4
  int v8; // r6
  int v9; // r3
  _DWORD *v10; // r1
  _DWORD *v11; // r12
  _DWORD *v12; // r1
  _DWORD *v13; // r0
  int v14; // r2
  _DWORD *v15; // r1
  _DWORD *v16; // r0
  int v17; // r2
  _DWORD *v18; // r1
  _DWORD *v19; // r0
  int v20; // r2
  int *v21; // r1
  int *v22; // r0
  int v23; // r2
  int v24; // [sp+4h] [bp-48h]
  int v25; // [sp+4h] [bp-48h]
  int v26; // [sp+4h] [bp-48h]
  int v27; // [sp+4h] [bp-48h]
  int v28; // [sp+4h] [bp-48h]
  _DWORD *v29; // [sp+8h] [bp-44h]
  int v30; // [sp+20h] [bp-2Ch] BYREF
  int v31; // [sp+24h] [bp-28h]
  int v32; // [sp+28h] [bp-24h] BYREF
  int v33; // [sp+2Ch] [bp-20h]
  int v34; // [sp+30h] [bp-1Ch] BYREF
  int v35; // [sp+34h] [bp-18h]
  int v36; // [sp+38h] [bp-14h] BYREF
  int v37; // [sp+3Ch] [bp-10h]
  int v38; // [sp+40h] [bp-Ch] BYREF
  int v39; // [sp+44h] [bp-8h]

  v4 = a1[12];
  if ( v4 != a1[13] )
    a1[13] = v4;
  if ( a3 )
  {
    v29 = a1 + 12;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while ( 2 )
    {
      switch ( *(_DWORD *)(a2 + v7) )
      {
        case 0:
          v10 = (_DWORD *)a1[13];
          v11 = (_DWORD *)a1[14];
          v39 = *(_DWORD *)(a2 + v7 + 4);
          v38 = 0;
          if ( v10 != v11 )
          {
            *v10 = 0;
            v10[1] = v39;
            a1[13] += 8;
            goto LABEL_8;
          }
          ++v8;
          v28 = v9;
          std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            v29,
            (int)v10,
            &v38);
          v9 = v28;
          v7 += 8;
          if ( v8 != a3 )
            continue;
          break;
        case 1:
          v21 = (int *)a1[13];
          v22 = (int *)a1[14];
          v23 = *(_DWORD *)(a2 + v7 + 4);
          v36 = v9;
          v37 = v23;
          if ( v21 == v22 )
          {
            ++v8;
            v27 = v9;
            std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v29,
              (int)v21,
              &v36);
            v9 = v27;
            v7 += 8;
            if ( v8 != a3 )
              continue;
          }
          else
          {
            *v21 = v9;
            ++v8;
            v21[1] = v37;
            v7 += 8;
            a1[13] += 8;
            if ( v8 != a3 )
              continue;
          }
          break;
        case 2:
          v18 = (_DWORD *)a1[13];
          v19 = (_DWORD *)a1[14];
          v20 = *(_DWORD *)(a2 + v7 + 4);
          v34 = 2;
          v35 = v20;
          if ( v18 == v19 )
          {
            ++v8;
            v26 = v9;
            std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v29,
              (int)v18,
              &v34);
            v9 = v26;
            v7 += 8;
            if ( v8 != a3 )
              continue;
          }
          else
          {
            *v18 = 2;
            ++v8;
            v18[1] = v35;
            v7 += 8;
            a1[13] += 8;
            if ( v8 != a3 )
              continue;
          }
          break;
        case 3:
          v15 = (_DWORD *)a1[13];
          v16 = (_DWORD *)a1[14];
          v17 = *(_DWORD *)(a2 + v7 + 4);
          v32 = 3;
          v33 = v17;
          if ( v15 == v16 )
          {
            ++v8;
            v25 = v9;
            std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v29,
              (int)v15,
              &v32);
            v9 = v25;
            v7 += 8;
            if ( v8 != a3 )
              continue;
          }
          else
          {
            *v15 = 3;
            ++v8;
            v15[1] = v33;
            v7 += 8;
            a1[13] += 8;
            if ( v8 != a3 )
              continue;
          }
          break;
        case 4:
          v12 = (_DWORD *)a1[13];
          v13 = (_DWORD *)a1[14];
          v14 = *(_DWORD *)(a2 + v7 + 4);
          v30 = 4;
          v31 = v14;
          if ( v12 == v13 )
          {
            ++v8;
            v24 = v9;
            std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              v29,
              (int)v12,
              &v30);
            v9 = v24;
            v7 += 8;
            if ( v8 != a3 )
              continue;
          }
          else
          {
            *v12 = 4;
            ++v8;
            v12[1] = v31;
            v7 += 8;
            a1[13] += 8;
            if ( v8 != a3 )
              continue;
          }
          break;
        default:
LABEL_8:
          ++v8;
          v7 += 8;
          if ( v8 != a3 )
            continue;
          break;
      }
      break;
    }
  }
}


// ===== 6c8f10 glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(glitch::gui::ICursorControl *,float,float,float,glitch::SKeyMap *,uint,bool) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(
        int a1,
        int a2,
        int a3,
        float a4,
        int a5,
        int a6,
        int a7,
        char a8)
{
  int v12; // r1
  int v13; // r2
  _DWORD *v14; // r2
  _DWORD *v15; // r1
  _DWORD *v16; // r1
  _DWORD *v17; // r2
  _DWORD *v18; // r1
  _DWORD *v19; // r2
  _DWORD *v20; // r1
  _DWORD *v21; // r2
  _DWORD *v22; // r1
  _DWORD *v23; // r2
  int v25; // [sp+0h] [bp-28h] BYREF
  int v26; // [sp+4h] [bp-24h]
  int v27; // [sp+8h] [bp-20h] BYREF
  int v28; // [sp+Ch] [bp-1Ch]
  int v29; // [sp+10h] [bp-18h] BYREF
  int v30; // [sp+14h] [bp-14h]
  int v31; // [sp+18h] [bp-10h] BYREF
  int v32; // [sp+1Ch] [bp-Ch]
  int v33; // [sp+20h] [bp-8h] BYREF
  int v34; // [sp+24h] [bp-4h]

  *(_DWORD *)(a1 + 92) = off_95B720;
  *(_DWORD *)(a1 + 96) = 1;
  glitch::scene::ISceneNodeAnimatorCameraFPS::ISceneNodeAnimatorCameraFPS(
    (glitch::scene::ISceneNodeAnimatorCameraFPS *)a1,
    (int *)off_988BB4);
  *(_DWORD *)(a1 + 16) = 1118830592;
  *(_DWORD *)(a1 + 12) = a2;
  *(_DWORD *)a1 = off_988B14;
  *(_DWORD *)(a1 + 92) = off_988BA4;
  *(_DWORD *)(a1 + 4) = off_988B88;
  *(_DWORD *)(a1 + 24) = a3;
  *(float *)(a1 + 20) = a4 / 1000.0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 28) = a5;
  *(_DWORD *)(a1 + 56) = 0;
  *(_BYTE *)(a1 + 82) = 1;
  *(_BYTE *)(a1 + 83) = a8;
  *(_DWORD *)(a1 + 84) = a6;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 88) = a7;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  glitch::scene::CSceneNodeAnimatorCameraFPS::allKeysUp((_BYTE *)a1);
  v12 = *(_DWORD *)(a1 + 84);
  if ( v12 && (v13 = *(_DWORD *)(a1 + 88)) != 0 )
  {
    glitch::scene::CSceneNodeAnimatorCameraFPS::setKeyMap((_DWORD *)a1, v12, v13);
  }
  else
  {
    v14 = *(_DWORD **)(a1 + 56);
    v15 = *(_DWORD **)(a1 + 52);
    v33 = 0;
    v34 = 38;
    if ( v15 == v14 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v15,
        &v33);
      v16 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v15 = 0;
      v15[1] = v34;
      v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v16;
    }
    v17 = *(_DWORD **)(a1 + 56);
    v31 = 1;
    v32 = 40;
    if ( v16 == v17 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v16,
        &v31);
      v18 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v16 = 1;
      v16[1] = v32;
      v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v18;
    }
    v19 = *(_DWORD **)(a1 + 56);
    v29 = 2;
    v30 = 37;
    if ( v18 == v19 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v18,
        &v29);
      v20 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v18 = 2;
      v18[1] = v30;
      v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v20;
    }
    v21 = *(_DWORD **)(a1 + 56);
    v27 = 3;
    v28 = 39;
    if ( v20 == v21 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v20,
        &v27);
      v22 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v20 = 3;
      v20[1] = v28;
      v22 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v22;
    }
    v23 = *(_DWORD **)(a1 + 56);
    v25 = 4;
    v26 = 74;
    if ( v22 == v23 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v22,
        &v25);
    }
    else
    {
      *v22 = 4;
      v22[1] = v26;
      *(_DWORD *)(a1 + 52) += 8;
    }
  }
  return a1;
}


// ===== 6c91bc glitch::scene::CSceneNodeAnimatorCameraFPS::createClone(void) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::createClone(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  void *v2; // r4

  v2 = operator new(0x64u, 0);
  glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(
    (int)v2,
    *((_DWORD *)this + 3),
    *((_DWORD *)this + 6),
    *((float *)this + 5) * 1000.0,
    *((_DWORD *)this + 7),
    *((_DWORD *)this + 21),
    *((_DWORD *)this + 22),
    *((_BYTE *)this + 83));
  return v2;
}


// ===== 6c922c glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(glitch::gui::ICursorControl *,float,float,float,glitch::SKeyMap *,uint,bool) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(
        int a1,
        int *a2,
        int a3,
        int a4,
        float a5,
        int a6,
        int a7,
        int a8,
        char a9)
{
  int v13; // r2
  int v14; // r1
  int v15; // r2
  _DWORD *v16; // r2
  _DWORD *v17; // r1
  _DWORD *v18; // r1
  _DWORD *v19; // r2
  _DWORD *v20; // r1
  _DWORD *v21; // r2
  _DWORD *v22; // r1
  _DWORD *v23; // r2
  _DWORD *v24; // r1
  _DWORD *v25; // r2
  int v27; // [sp+0h] [bp-2Ch] BYREF
  int v28; // [sp+4h] [bp-28h]
  int v29; // [sp+8h] [bp-24h] BYREF
  int v30; // [sp+Ch] [bp-20h]
  int v31; // [sp+10h] [bp-1Ch] BYREF
  int v32; // [sp+14h] [bp-18h]
  int v33; // [sp+18h] [bp-14h] BYREF
  int v34; // [sp+1Ch] [bp-10h]
  int v35; // [sp+20h] [bp-Ch] BYREF
  int v36; // [sp+24h] [bp-8h]

  glitch::scene::ISceneNodeAnimatorCameraFPS::ISceneNodeAnimatorCameraFPS(
    (glitch::scene::ISceneNodeAnimatorCameraFPS *)a1,
    a2 + 1);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  *(_DWORD *)(a1 + 4) = off_988B88;
  *(_DWORD *)(a1 + 16) = 1118830592;
  *(_DWORD *)(a1 + 12) = a3;
  *(_DWORD *)(a1 + 24) = a4;
  *(float *)(a1 + 20) = a5 / 1000.0;
  *(_DWORD *)(a1 + 28) = a6;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_BYTE *)(a1 + 82) = 1;
  *(_BYTE *)(a1 + 83) = a9;
  *(_DWORD *)(a1 + 84) = a7;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 88) = a8;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  if ( a3 )
    ++*(_DWORD *)(a3 + 4);
  glitch::scene::CSceneNodeAnimatorCameraFPS::allKeysUp((_BYTE *)a1);
  v14 = *(_DWORD *)(a1 + 84);
  if ( v14 && (v15 = *(_DWORD *)(a1 + 88)) != 0 )
  {
    glitch::scene::CSceneNodeAnimatorCameraFPS::setKeyMap((_DWORD *)a1, v14, v15);
  }
  else
  {
    v16 = *(_DWORD **)(a1 + 56);
    v17 = *(_DWORD **)(a1 + 52);
    v35 = 0;
    v36 = 38;
    if ( v17 == v16 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v17,
        &v35);
      v18 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v17 = 0;
      v17[1] = v36;
      v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v18;
    }
    v19 = *(_DWORD **)(a1 + 56);
    v33 = 1;
    v34 = 40;
    if ( v18 == v19 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v18,
        &v33);
      v20 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v18 = 1;
      v18[1] = v34;
      v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v20;
    }
    v21 = *(_DWORD **)(a1 + 56);
    v31 = 2;
    v32 = 37;
    if ( v20 == v21 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v20,
        &v31);
      v22 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v20 = 2;
      v20[1] = v32;
      v22 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v22;
    }
    v23 = *(_DWORD **)(a1 + 56);
    v29 = 3;
    v30 = 39;
    if ( v22 == v23 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v22,
        &v29);
      v24 = *(_DWORD **)(a1 + 52);
    }
    else
    {
      *v22 = 3;
      v22[1] = v30;
      v24 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 8);
      *(_DWORD *)(a1 + 52) = v24;
    }
    v25 = *(_DWORD **)(a1 + 56);
    v27 = 4;
    v28 = 74;
    if ( v24 == v25 )
    {
      std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(a1 + 48),
        (int)v24,
        &v27);
    }
    else
    {
      *v24 = 4;
      v24[1] = v28;
      *(_DWORD *)(a1 + 52) += 8;
    }
  }
  return a1;
}


// ===== 6c94b8 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS((glitch::scene::CSceneNodeAnimatorCameraFPS *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c94c8 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS(
        glitch::scene::CSceneNodeAnimatorCameraFPS *this)
{
  glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS((glitch::scene::CSceneNodeAnimatorCameraFPS *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c94d8 glitch::scene::CSceneNodeAnimatorCameraMaya::isEventReceiverEnabled(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::isEventReceiverEnabled(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  return 1;
}


// ===== 6c94e0 glitch::scene::CSceneNodeAnimatorCameraMaya::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::getType(glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  return 8;
}


// ===== 6c94e8 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(int a1)
{
  return glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(a1 - 4);
}


// ===== 6c94f0 glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r2
  _DWORD v5[2]; // [sp+0h] [bp-8h] BYREF

  if ( *a2 != 1 )
    return 0;
  switch ( a2[5] )
  {
    case 0:
      result = 1;
      *(_BYTE *)(a1 + 12) = 1;
      return result;
    case 1:
      result = 1;
      *(_BYTE *)(a1 + 14) = 1;
      return result;
    case 2:
      result = 1;
      *(_BYTE *)(a1 + 13) = 1;
      return result;
    case 3:
      *(_BYTE *)(a1 + 12) = 0;
      goto LABEL_6;
    case 4:
      *(_BYTE *)(a1 + 14) = 0;
      return 1;
    case 5:
      *(_BYTE *)(a1 + 13) = 0;
      return 1;
    case 6:
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(a1 + 16) + 40))(v5, *(_DWORD *)(a1 + 16));
      v4 = v5[0];
      result = 1;
      *(_DWORD *)(a1 + 116) = v5[1];
      *(_DWORD *)(a1 + 112) = v4;
      return result;
    case 7:
    case 8:
      return 0;
    default:
LABEL_6:
      result = 1;
      break;
  }
  return result;
}


// ===== 6c95cc glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(int) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this,
        int a2)
{
  return *((unsigned __int8 *)this + a2 + 12);
}


// ===== 6c95d8 glitch::scene::CSceneNodeAnimatorCameraMaya::allKeysUp(void) =====
_BYTE *__fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::allKeysUp(_BYTE *this)
{
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  return this;
}


// ===== 6c95ec glitch::scene::CSceneNodeAnimatorCameraMaya::setRotateSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::setRotateSpeed(int this, float a2)
{
  *(float *)(this + 40) = a2;
  return this;
}


// ===== 6c95f4 glitch::scene::CSceneNodeAnimatorCameraMaya::setMoveSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::setMoveSpeed(int this, float a2)
{
  *(float *)(this + 44) = a2;
  return this;
}


// ===== 6c95fc glitch::scene::CSceneNodeAnimatorCameraMaya::setZoomSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::setZoomSpeed(int this, float a2)
{
  *(float *)(this + 36) = a2;
  return this;
}


// ===== 6c9604 glitch::scene::CSceneNodeAnimatorCameraMaya::getRotateSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::getRotateSpeed(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 6c960c glitch::scene::CSceneNodeAnimatorCameraMaya::getMoveSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::getMoveSpeed(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  return *((_DWORD *)this + 11);
}


// ===== 6c9614 glitch::scene::CSceneNodeAnimatorCameraMaya::getZoomSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::getZoomSpeed(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 6c961c `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCameraMaya.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCameraMaya.cpp()
{
  dword_9F7E3C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E38 = 1056964608;
}


// ===== 6c963c `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya((glitch::scene::ISceneNodeAnimatorCameraMaya *)((char *)this - 4));
}


// ===== 6c9644 glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  *(_DWORD *)this = off_988D2C;
  *((_DWORD *)this + 3) = off_988DBC;
  *((_DWORD *)this + 1) = off_988DA0;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988DCC);
}


// ===== 6c9698 `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya((glitch::scene::ISceneNodeAnimatorCameraMaya *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6c96a8 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya((glitch::scene::CSceneNodeAnimatorCameraMaya *)((char *)this - 4));
}


// ===== 6c96b0 glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 4);
  *(_DWORD *)this = off_988EA4;
  *((_DWORD *)this + 30) = off_988F34;
  *((_DWORD *)this + 1) = off_988F18;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_988F6C;
  *(int *)((char *)&dword_78 + (_DWORD)this) = (int)off_988FE8;
  *((_DWORD *)this + 1) = off_988DA0;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988F48);
}


// ===== 6c9740 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya((glitch::scene::CSceneNodeAnimatorCameraMaya *)((char *)this - 4));
}


// ===== 6c9748 glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(this);
  LC_API_FREE_0(this);
}


// ===== 6c9764 glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this,
        int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v5 = *((glitch::IReferenceCounted **)this + 4);
  *((_DWORD *)this + 1) = off_988F18;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = a2[1];
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = a2[6];
  *((_DWORD *)this + 1) = off_988DA0;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 2);
}


// ===== 6c97f4 glitch::scene::CSceneNodeAnimatorCameraMaya::updateAnimationState(void) =====
float __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::updateAnimationState(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  float v2; // r6
  float v3; // r7
  double v4; // r0
  double v5; // r0
  float v6; // r7
  float v7; // r6
  float result; // r0
  float v9[3]; // [sp+8h] [bp-24h] BYREF
  float v10; // [sp+14h] [bp-18h] BYREF
  float v11; // [sp+18h] [bp-14h]
  float v12; // [sp+1Ch] [bp-10h]
  float v13; // [sp+20h] [bp-Ch] BYREF
  float v14; // [sp+24h] [bp-8h]

  v2 = *((float *)this + 5) - *((float *)this + 21);
  v3 = *((float *)this + 6) - *((float *)this + 22);
  v14 = *((float *)this + 7) - *((float *)this + 23);
  v12 = v14;
  v11 = v3;
  v13 = v2;
  v10 = v2;
  LODWORD(v4) = glitch::core::vector2d<float>::getAngle(&v13);
  *(float *)&v4 = v4;
  *((_DWORD *)this + 19) = LODWORD(v4);
  memset(v9, 0, sizeof(v9));
  glitch::core::vector3d<float>::rotateXZBy(&v10, *(float *)&v4, v9);
  v14 = v11;
  v13 = v10;
  LODWORD(v5) = glitch::core::vector2d<float>::getAngle(&v13);
  *(float *)&v5 = v5;
  HIDWORD(v5) = *((_DWORD *)this + 21);
  *((_DWORD *)this + 20) = LODWORD(v5) + 0x80000000;
  v6 = *((float *)this + 6) - *((float *)this + 22);
  v7 = *((float *)this + 7) - *((float *)this + 23);
  result = sqrt((float)((float)((float)((float)(*((float *)this + 5) - *((float *)&v5 + 1))
                                      * (float)(*((float *)this + 5) - *((float *)&v5 + 1)))
                              + (float)(v6 * v6))
                      + (float)(v7 * v7)));
  *((float *)this + 18) = result;
  return result;
}


// ===== 6c9934 glitch::scene::CSceneNodeAnimatorCameraMaya::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::animateNode(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  int result; // r0
  _DWORD *v6; // r0
  int v7; // r3
  _DWORD *v8; // r0
  float *v9; // r7
  float v10; // r5
  int v11; // r3
  float v12; // r2
  float *v13; // r0
  float v14; // r8
  float v15; // r1
  float *v16; // r3
  float v17; // r0
  float v18; // r0
  float v19; // r10
  float v20; // r7
  float v21; // r0
  float v22; // r5
  float v23; // r8
  float v24; // r11
  float v25; // r7
  float v26; // r0
  float v27; // r5
  float v28; // r5
  float *v29; // r7
  float *v30; // r6
  float v31; // r8
  float v32; // r0
  int v33; // r2
  float v34; // r3
  int v35; // r2
  float v36; // r1
  float v37; // r7
  float v38; // r0
  float v39; // r5
  float v40; // [sp+10h] [bp-84h]
  float v41; // [sp+14h] [bp-80h]
  float v42; // [sp+18h] [bp-7Ch]
  float v43; // [sp+1Ch] [bp-78h]
  float v44; // [sp+20h] [bp-74h]
  float v45; // [sp+2Ch] [bp-68h]
  float v46; // [sp+30h] [bp-64h]
  float v47; // [sp+34h] [bp-60h]
  float v48[3]; // [sp+3Ch] [bp-58h] BYREF
  float v49[3]; // [sp+48h] [bp-4Ch] BYREF
  float v50; // [sp+54h] [bp-40h] BYREF
  float v51; // [sp+58h] [bp-3Ch]
  float v52; // [sp+5Ch] [bp-38h]
  float v53; // [sp+60h] [bp-34h] BYREF
  float v54; // [sp+64h] [bp-30h]
  float v55; // [sp+68h] [bp-2Ch]
  float v56; // [sp+6Ch] [bp-28h] BYREF
  float v57; // [sp+70h] [bp-24h]
  float v58; // [sp+74h] [bp-20h]
  float v59; // [sp+78h] [bp-1Ch] BYREF
  float v60; // [sp+7Ch] [bp-18h]
  float v61; // [sp+80h] [bp-14h]
  float v62; // [sp+84h] [bp-10h] BYREF
  float v63; // [sp+88h] [bp-Ch]
  float v64; // [sp+8Ch] [bp-8h]

  result = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 188))(a2);
  if ( result == 1601003875 )
  {
    if ( *((glitch::scene::ISceneNode **)this + 27) != a2 )
    {
      v6 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 264))(a2);
      *((_DWORD *)this + 24) = *v6;
      *((_DWORD *)this + 25) = v6[1];
      v7 = v6[2];
      *((_DWORD *)this + 27) = a2;
      *((_DWORD *)this + 26) = v7;
    }
    v8 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 264))(a2);
    *((_DWORD *)this + 21) = *v8;
    *((_DWORD *)this + 22) = v8[1];
    *((_DWORD *)this + 23) = v8[2];
    v9 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 324))(a2);
    v44 = *((float *)this + 19);
    v43 = *((float *)this + 20);
    v10 = *((float *)this + 18);
    if ( glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(this, 0)
      && glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(this, 2)
      || glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(this, 1) )
    {
      if ( *((_BYTE *)this + 32) )
      {
        v47 = (float)((float)(*((float *)this + 14) - *((float *)this + 28)) * *((float *)this + 9)) + v10;
        if ( v47 >= 0.1 )
        {
          if ( v47 < 0.0 )
            v47 = v10;
        }
        else
        {
          v47 = 0.1;
        }
      }
      else
      {
        v11 = *((_DWORD *)this + 29);
        *((_DWORD *)this + 14) = *((_DWORD *)this + 28);
        v12 = *((float *)this + 18);
        *((_DWORD *)this + 15) = v11;
        *((_BYTE *)this + 32) = 1;
        v47 = v12;
      }
    }
    else
    {
      if ( *((_BYTE *)this + 32) )
      {
        v31 = *((float *)this + 18);
        v32 = v31 + (float)((float)(*((float *)this + 14) - *((float *)this + 28)) * *((float *)this + 9));
        *((float *)this + 18) = v32;
        v10 = v32;
        if ( v32 < 0.0 )
        {
          *((float *)this + 18) = v31;
          v10 = v31;
        }
      }
      *((_BYTE *)this + 32) = 0;
      v47 = v10;
    }
    v40 = *((float *)this + 24);
    v41 = *((float *)this + 25);
    v42 = *((float *)this + 26);
    v13 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 280))(a2);
    v14 = *v13;
    v15 = *((float *)this + 21);
    v16 = v13;
    v17 = *((float *)this + 5);
    v62 = v14;
    v63 = v16[1];
    v64 = v16[2];
    v45 = v17 - v15;
    v46 = *((float *)this + 6) - *((float *)this + 22);
    v18 = *((float *)this + 7) - *((float *)this + 23);
    v59 = (float)(v64 * COERCE_FLOAT(LODWORD(v46) + 0x80000000)) + (float)(v63 * v18);
    v60 = (float)(v14 * COERCE_FLOAT(LODWORD(v18) + 0x80000000)) + (float)(v64 * v45);
    v61 = (float)(v63 * COERCE_FLOAT(LODWORD(v45) + 0x80000000)) + (float)(v14 * v46);
    glitch::core::vector3d<float>::normalize(&v59);
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v9 + 3, v9 + 19, v9 + 11, &v53);
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    glitch::core::plane3d<float>::getIntersectionWithPlanes(v9 + 3, v9 + 19, v9 + 15, &v50);
    v19 = v53 - v50;
    v20 = v54 - v51;
    v21 = v55 - v52;
    if ( v63 <= 0.0 )
    {
      v22 = *((float *)this + 21) - *((float *)this + 5);
      v23 = *((float *)this + 22) - *((float *)this + 6);
      v24 = *((float *)this + 23) - *((float *)this + 7);
    }
    else
    {
      v22 = *((float *)this + 5) - *((float *)this + 21);
      v23 = *((float *)this + 6) - *((float *)this + 22);
      v24 = *((float *)this + 7) - *((float *)this + 23);
    }
    v56 = (float)(COERCE_FLOAT(LODWORD(v20) + 0x80000000) * v24) + (float)(v23 * v21);
    v57 = (float)(v22 * COERCE_FLOAT(LODWORD(v21) + 0x80000000)) + (float)(v19 * v24);
    v58 = (float)(v23 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v22 * v20);
    glitch::core::vector3d<float>::normalize(&v56);
    if ( !glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(this, 2) || *((_BYTE *)this + 32) )
    {
      if ( *((_BYTE *)this + 35) )
      {
        v37 = *((float *)this + 16) - *((float *)this + 28);
        v38 = *((float *)this + 17) - *((float *)this + 29);
        v39 = *((float *)this + 11);
        v40 = v40 + (float)((float)(v39 * (float)(v37 * v59)) + (float)(v39 * (float)(v38 * v56)));
        v41 = v41 + (float)((float)(v39 * (float)(v37 * v60)) + (float)(v39 * (float)(v38 * v57)));
        v42 = v42 + (float)((float)(v39 * (float)(v37 * v61)) + (float)(v39 * (float)(v38 * v58)));
        *((float *)this + 24) = v40;
        *((float *)this + 25) = v41;
        *((float *)this + 26) = v42;
      }
      *((_BYTE *)this + 35) = 0;
    }
    else if ( *((_BYTE *)this + 35) )
    {
      v25 = *((float *)this + 16) - *((float *)this + 28);
      v26 = *((float *)this + 17) - *((float *)this + 29);
      v27 = *((float *)this + 11);
      v40 = v40 + (float)((float)(v27 * (float)(v25 * v59)) + (float)(v27 * (float)(v26 * v56)));
      v41 = v41 + (float)((float)(v27 * (float)(v25 * v60)) + (float)(v27 * (float)(v26 * v57)));
      v42 = v42 + (float)((float)(v27 * (float)(v25 * v61)) + (float)(v27 * (float)(v26 * v58)));
    }
    else
    {
      v35 = *((_DWORD *)this + 28);
      *((_DWORD *)this + 17) = *((_DWORD *)this + 29);
      *((_DWORD *)this + 16) = v35;
      *((_BYTE *)this + 35) = 1;
    }
    if ( !glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(this, 0) || *((_BYTE *)this + 32) )
    {
      if ( *((_BYTE *)this + 33) )
      {
        v44 = (float)((float)(*((float *)this + 12) - *((float *)this + 28)) * *((float *)this + 10))
            + *((float *)this + 19);
        v36 = *((float *)this + 29);
        *((float *)this + 19) = v44;
        v43 = (float)((float)(*((float *)this + 13) - v36) * *((float *)this + 10)) + *((float *)this + 20);
        *((float *)this + 20) = v43;
      }
      *((_BYTE *)this + 33) = 0;
    }
    else if ( *((_BYTE *)this + 33) )
    {
      v28 = *((float *)this + 10);
      v44 = v44 + (float)((float)(*((float *)this + 12) - *((float *)this + 28)) * v28);
      v43 = v43 + (float)(v28 * (float)(*((float *)this + 13) - *((float *)this + 29)));
    }
    else
    {
      v33 = *((_DWORD *)this + 28);
      *((_DWORD *)this + 13) = *((_DWORD *)this + 29);
      *((_BYTE *)this + 33) = 1;
      v34 = *((float *)this + 19);
      *((_DWORD *)this + 12) = v33;
      v44 = v34;
      v43 = *((float *)this + 20);
    }
    v29 = (float *)((char *)this + 20);
    *((float *)this + 21) = v40;
    *((float *)this + 22) = v41;
    *((float *)this + 23) = v42;
    *((float *)this + 5) = v47 + v40;
    *((float *)this + 6) = v41;
    *((float *)this + 7) = v42;
    v30 = (float *)((char *)this + 84);
    glitch::core::vector3d<float>::rotateXYBy(v29, v43, v30);
    glitch::core::vector3d<float>::rotateXZBy(v29, v44, v30);
    v62 = 0.0;
    v64 = 0.0;
    v63 = 1.0;
    memset(v49, 0, sizeof(v49));
    glitch::core::vector3d<float>::rotateXYBy(&v62, COERCE_FLOAT(LODWORD(v43) + 0x80000000), v49);
    memset(v48, 0, sizeof(v48));
    glitch::core::vector3d<float>::rotateXZBy(&v62, (float)(v44 + 180.0), v48);
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164))(a2, v29);
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 260))(a2, v30);
    return (*(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 276))(a2, &v62);
  }
  return result;
}


// ===== 6ca290 glitch::scene::ISceneNodeAnimatorCameraMaya::ISceneNodeAnimatorCameraMaya(void) =====
glitch::scene::ISceneNodeAnimatorCameraMaya *__fastcall glitch::scene::ISceneNodeAnimatorCameraMaya::ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this,
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
  *((_DWORD *)this + 1) = off_988DA0;
  return this;
}


// ===== 6ca338 glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(glitch::gui::ICursorControl *,float,float,float) =====
glitch::scene::CSceneNodeAnimatorCameraMaya *__fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this,
        glitch::gui::ICursorControl *a2,
        float a3,
        float a4,
        float a5)
{
  int v9; // r2
  _DWORD v11[2]; // [sp+0h] [bp-8h] BYREF

  *((_DWORD *)this + 31) = 1;
  *((_DWORD *)this + 30) = off_95B720;
  glitch::scene::ISceneNodeAnimatorCameraMaya::ISceneNodeAnimatorCameraMaya(this, (int *)off_988F44);
  *((float *)this + 9) = a4;
  *((float *)this + 10) = a3;
  *(_DWORD *)this = off_988EA4;
  *((_DWORD *)this + 30) = off_988F34;
  *((_DWORD *)this + 1) = off_988F18;
  *((float *)this + 11) = a5;
  *((_DWORD *)this + 18) = 1116471296;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 1056964608;
  *((_DWORD *)this + 4) = a2;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 33) = 0;
  *((_BYTE *)this + 34) = 0;
  *((_BYTE *)this + 35) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 28) = 1056964608;
  if ( a2 )
  {
    ++*((_DWORD *)a2 + 1);
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)this + 4) + 40))(v11, *((_DWORD *)this + 4));
    v9 = v11[0];
    *((_DWORD *)this + 29) = v11[1];
    *((_DWORD *)this + 28) = v9;
  }
  glitch::scene::CSceneNodeAnimatorCameraMaya::allKeysUp(this);
  return this;
}


// ===== 6ca48c glitch::scene::CSceneNodeAnimatorCameraMaya::createClone(void) =====
glitch::scene::CSceneNodeAnimatorCameraMaya *__fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::createClone(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya *v2; // r4

  v2 = (glitch::scene::CSceneNodeAnimatorCameraMaya *)operator new(0x80u, 0);
  glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(
    v2,
    *((glitch::gui::ICursorControl **)this + 4),
    *((float *)this + 10),
    *((float *)this + 9),
    *((float *)this + 11));
  return v2;
}


// ===== 6ca4cc glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(glitch::gui::ICursorControl *,float,float,float) =====
glitch::scene::CSceneNodeAnimatorCameraMaya *__fastcall glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this,
        glitch::gui::ICursorControl *a2,
        float a3,
        float a4,
        float a5,
        int a6)
{
  int v10; // r3
  int v11; // r2
  _DWORD v13[2]; // [sp+0h] [bp-8h] BYREF

  glitch::scene::ISceneNodeAnimatorCameraMaya::ISceneNodeAnimatorCameraMaya(this, (int *)a2 + 1);
  v10 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v10 - 12)) = *((_DWORD *)a2 + 7);
  *((_DWORD *)this + 1) = off_988F18;
  *((float *)this + 10) = a4;
  *((float *)this + 9) = a5;
  *((_DWORD *)this + 11) = a6;
  *((_DWORD *)this + 18) = 1116471296;
  *((_DWORD *)this + 26) = 0;
  *((float *)this + 4) = a3;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 33) = 0;
  *((_BYTE *)this + 34) = 0;
  *((_BYTE *)this + 35) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 1056964608;
  *((_DWORD *)this + 28) = 1056964608;
  if ( a3 != 0.0 )
  {
    ++*(_DWORD *)(LODWORD(a3) + 4);
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)this + 4) + 40))(v13, *((_DWORD *)this + 4));
    v11 = v13[0];
    *((_DWORD *)this + 29) = v13[1];
    *((_DWORD *)this + 28) = v11;
  }
  glitch::scene::CSceneNodeAnimatorCameraMaya::allKeysUp(this);
  return this;
}


// ===== 6ca600 `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya((glitch::scene::ISceneNodeAnimatorCameraMaya *)((char *)this - 4));
}


// ===== 6ca608 glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  *(_DWORD *)this = off_988D2C;
  *((_DWORD *)this + 3) = off_988DBC;
  *((_DWORD *)this + 1) = off_988DA0;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_988DCC);
  LC_API_FREE_0(this);
}

