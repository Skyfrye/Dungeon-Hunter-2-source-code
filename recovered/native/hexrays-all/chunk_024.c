// ===== 519584 TiXmlComment::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlComment::Parse(int a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  int Document; // r9
  unsigned __int8 *v9; // r8
  unsigned __int8 *v10; // r7
  bool v12; // zf
  char *v13; // r1

  Document = TiXmlNode::GetDocument((TiXmlNode *)a1);
  std::string::_M_assign((std::string *const)(a1 + 32), "", "");
  v9 = TiXmlBase::SkipWhiteSpace(a2, a4);
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)v9, a4);
    *(_DWORD *)(a1 + 4) = *a3;
    *(_DWORD *)(a1 + 8) = a3[1];
  }
  v10 = (unsigned __int8 *)TiXmlBase::StringEqual(v9, "<!--", 0);
  if ( v10 )
  {
    v10 = v9 + 4;
    std::string::_M_assign((std::string *const)(a1 + 32), "", "");
    if ( v9 != (unsigned __int8 *)-4 )
    {
      if ( v9[4] )
      {
        do
        {
          v12 = !TiXmlBase::StringEqual(v10, "-->", 0);
          v13 = (char *)v10;
          if ( !v12 )
            break;
          std::string::_M_append((std::string *)(a1 + 32), v13, (char *)++v10);
          if ( !v10 )
            return v10;
        }
        while ( *v10 );
      }
      v10 += 3;
    }
  }
  else
  {
    TiXmlDocument::SetError(Document, 11, (unsigned int)v9, a3, a4);
  }
  return v10;
}


// ===== 5196cc TiXmlUnknown::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlUnknown::Parse(_DWORD *a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  int Document; // r8
  unsigned __int8 *v9; // r6
  std::string *v10; // r7
  unsigned __int8 *v11; // r5
  int v12; // r3
  int v13; // r1
  unsigned __int8 *v14; // r5
  _DWORD *v16; // r3

  Document = TiXmlNode::GetDocument((TiXmlNode *)a1);
  v9 = TiXmlBase::SkipWhiteSpace(a2, a4);
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)v9, a4);
    a1[1] = *a3;
    a1[2] = a3[1];
  }
  if ( !v9 || !*v9 || *v9 != 60 )
  {
    if ( !Document )
      return nullptr;
    v16 = a3;
    v11 = nullptr;
    TiXmlDocument::SetError(Document, 10, (unsigned int)v9, v16, a4);
    return v11;
  }
  v10 = (std::string *)(a1 + 8);
  v11 = v9 + 1;
  std::string::_M_assign(v10, "", "");
  if ( v9 == (unsigned __int8 *)-1 )
    goto LABEL_17;
  v12 = v9[1];
  if ( !v9[1] )
  {
LABEL_14:
    v13 = v12;
    goto LABEL_15;
  }
  v13 = (char)v12;
  if ( (char)v12 != 62 )
  {
    v14 = v9;
    while ( 1 )
    {
      std::string::push_back(v10, (_BYTE *)v13);
      if ( v14 == (unsigned __int8 *)-2 )
        break;
      v12 = v14[2];
      v13 = (char)v12;
      if ( !v14[2] )
      {
        v11 = v14 + 2;
        goto LABEL_14;
      }
      ++v14;
      if ( (char)v12 == 62 )
      {
        v11 = v14 + 1;
        goto LABEL_22;
      }
    }
LABEL_17:
    v11 = nullptr;
    if ( Document )
      TiXmlDocument::SetError(Document, 10, 0, nullptr, a4);
    v13 = 127;
  }
LABEL_15:
  if ( v13 == 62 )
LABEL_22:
    ++v11;
  return v11;
}


// ===== 51983c TiXmlDeclaration::StreamIn(std::istream *,std::string *) =====
void __fastcall TiXmlDeclaration::StreamIn(TiXmlDeclaration *this, std::istream *a2, std::string *a3)
{
  int v6; // r7
  int Document; // r0

  while ( !*(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
  {
    v6 = std::istream::get(a2);
    if ( v6 <= 0 )
    {
      Document = TiXmlNode::GetDocument(this);
      if ( Document )
        TiXmlDocument::SetError(Document, 14, 0, nullptr, 0);
      return;
    }
    std::string::push_back(a3, (_BYTE *)(char)v6);
    if ( v6 == 62 )
      return;
  }
}


// ===== 5198bc TiXmlUnknown::StreamIn(std::istream *,std::string *) =====
void __fastcall TiXmlUnknown::StreamIn(TiXmlUnknown *this, std::istream *a2, std::string *a3)
{
  int v6; // r7
  int Document; // r0

  while ( !*(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
  {
    v6 = std::istream::get(a2);
    if ( v6 <= 0 )
    {
      Document = TiXmlNode::GetDocument(this);
      if ( Document )
        TiXmlDocument::SetError(Document, 14, 0, nullptr, 0);
      return;
    }
    std::string::push_back(a3, (_BYTE *)(char)v6);
    if ( v6 == 62 )
      return;
  }
}


// ===== 51993c TiXmlText::StreamIn(std::istream *,std::string *) =====
std::string *__fastcall TiXmlText::StreamIn(TiXmlText *this, std::string *a2, std::string *a3)
{
  std::string *result; // r0
  int v7; // r6
  char *M_finish; // r2

  while ( 1 )
  {
    result = a2;
    if ( *(_DWORD *)&a2->_M_buffers._M_static_buf[*((_DWORD *)a2->_M_buffers._M_end_of_storage - 3) + 8] )
      break;
    v7 = std::istream::peek((std::istream *)a2);
    result = a3;
    if ( !*((_BYTE *)this + 64) && v7 == 60 )
      break;
    if ( v7 <= 0 )
    {
      result = (std::string *)TiXmlNode::GetDocument(this);
      if ( result )
        return TiXmlDocument::SetError((int)result, 14, 0, nullptr, 0);
      return result;
    }
    std::string::push_back(a3, (_BYTE *)(char)v7);
    result = (std::string *)std::istream::get((std::istream *)a2);
    if ( *((_BYTE *)this + 64) )
    {
      if ( v7 == 62 )
      {
        M_finish = a3->_M_finish;
        if ( (unsigned int)(M_finish - a3->_M_start_of_storage._M_data) > 2
          && *(M_finish - 2) == 93
          && *(M_finish - 3) == 93 )
        {
          return result;
        }
      }
    }
  }
  return result;
}


// ===== 519a1c TiXmlComment::StreamIn(std::istream *,std::string *) =====
void __fastcall TiXmlComment::StreamIn(TiXmlComment *this, std::istream *a2, std::string *a3)
{
  int v6; // r7
  char *M_data; // r3
  char *v8; // r4
  bool v9; // cf
  char *v10; // r4
  char *v11; // r4
  char *v12; // r4
  int Document; // r0

  while ( !*(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
  {
    v6 = std::istream::get(a2);
    if ( v6 <= 0 )
    {
      Document = TiXmlNode::GetDocument(this);
      if ( Document )
        TiXmlDocument::SetError(Document, 14, 0, nullptr, 0);
      return;
    }
    std::string::push_back(a3, (_BYTE *)(char)v6);
    if ( v6 == 62 )
    {
      M_data = a3->_M_start_of_storage._M_data;
      v8 = (char *)(a3->_M_finish - M_data);
      v9 = (unsigned int)v8 >= 2;
      v10 = v8 - 2;
      if ( !v9 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
        M_data = a3->_M_start_of_storage._M_data;
      }
      if ( v10[(_DWORD)M_data] == 45 )
      {
        v11 = (char *)(a3->_M_finish - M_data);
        v9 = (unsigned int)v11 >= 3;
        v12 = v11 - 3;
        if ( !v9 )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
          M_data = a3->_M_start_of_storage._M_data;
        }
        if ( v12[(_DWORD)M_data] == 45 )
          return;
      }
    }
  }
}


// ===== 519b10 TiXmlNode::Identify(char const*,TiXmlEncoding) =====
int __fastcall TiXmlNode::Identify(TiXmlNode *a1, unsigned __int8 *a2, int a3)
{
  unsigned __int8 *v5; // r0
  unsigned __int8 *v6; // r7
  int v7; // r5
  int Document; // r9
  unsigned __int8 *v10; // r0
  unsigned __int8 *v11; // r7
  _DWORD *v12; // r7
  const char *v13; // r1
  _DWORD *v14; // r7

  v5 = TiXmlBase::SkipWhiteSpace(a2, a3);
  v6 = v5;
  if ( !v5 )
    return 0;
  if ( !*v5 )
    return 0;
  if ( *v5 != 60 )
    return 0;
  Document = TiXmlNode::GetDocument(a1);
  v10 = TiXmlBase::SkipWhiteSpace(v6, a3);
  v11 = v10;
  if ( !v10 || !*v10 )
    return 0;
  if ( TiXmlBase::StringEqual(v10, "<?xml", 1) )
  {
    v7 = operator new(0x88u, 0);
    TiXmlDeclaration::TiXmlDeclaration((TiXmlDeclaration *)v7);
  }
  else if ( TiXmlBase::StringEqual(v11, "<!--", 0) )
  {
    v12 = (_DWORD *)operator new(0x40u, 0);
    TiXmlNode::TiXmlNode(v12, 2);
    v7 = (int)v12;
    *v12 = off_96C528;
  }
  else if ( TiXmlBase::StringEqual(v11, "<![CDATA[", 0) )
  {
    v7 = operator new(0x44u, 0);
    TiXmlText::TiXmlText((TiXmlText *)v7, v13);
    *(_BYTE *)(v7 + 64) = 1;
  }
  else if ( !TiXmlBase::StringEqual(v11, "<!", 0) && (TiXmlBase::IsAlpha(v11[1]) || v11[1] == 95) )
  {
    v7 = operator new(0x8Cu, 0);
    TiXmlElement::TiXmlElement((TiXmlElement *)v7, "");
  }
  else
  {
    v14 = (_DWORD *)operator new(0x40u, 0);
    TiXmlNode::TiXmlNode(v14, 3);
    v7 = (int)v14;
    *v14 = off_96C420;
  }
  if ( v7 )
  {
    *(_DWORD *)(v7 + 16) = a1;
  }
  else if ( Document )
  {
    TiXmlDocument::SetError(Document, 3, 0, nullptr, 0);
  }
  return v7;
}


// ===== 519d30 TiXmlElement::ReadValue(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlElement::ReadValue(TiXmlNode *a1, unsigned __int8 *a2, int a3, int a4)
{
  unsigned __int8 *v8; // r0
  unsigned __int8 *v9; // r5
  int v10; // r3
  int v11; // r4
  int v12; // r12
  unsigned __int8 *v13; // r1
  unsigned __int8 *v14; // r0
  int v16; // r0
  TiXmlNode *v17; // r4
  int Document; // [sp+14h] [bp-8h]

  Document = TiXmlNode::GetDocument(a1);
  v8 = TiXmlBase::SkipWhiteSpace(a2, a4);
  v9 = v8;
  if ( v8 )
  {
    v10 = *v8;
    if ( *v8 )
    {
      do
      {
        if ( v10 == 60 )
        {
          if ( TiXmlBase::StringEqual(v9, "</", 0) )
            return v9;
          v16 = TiXmlNode::Identify(a1, v9, a4);
          v17 = (TiXmlNode *)v16;
          if ( !v16 )
            return nullptr;
          a2 = (unsigned __int8 *)(*(int (__fastcall **)(int, unsigned __int8 *, int, int))(*(_DWORD *)v16 + 12))(
                                    v16,
                                    v9,
                                    a3,
                                    a4);
          TiXmlNode::LinkEndChild(a1, v17);
        }
        else
        {
          v11 = operator new(0x44u, 0);
          TiXmlNode::TiXmlNode((_DWORD *)v11, 4);
          *(_DWORD *)v11 = off_96C4D0;
          std::string::_M_assign((std::string *const)(v11 + 32), "", "");
          v12 = *(_DWORD *)v11;
          *(_BYTE *)(v11 + 64) = 0;
          if ( TiXmlBase::condenseWhiteSpace )
            v13 = v9;
          else
            v13 = a2;
          a2 = (unsigned __int8 *)(*(int (__fastcall **)(int, unsigned __int8 *, int, int))(v12 + 12))(v11, v13, a3, a4);
          if ( TiXmlText::Blank((TiXmlText *)v11) )
            (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 4))(v11);
          else
            TiXmlNode::LinkEndChild(a1, (TiXmlNode *)v11);
        }
        v14 = TiXmlBase::SkipWhiteSpace(a2, a4);
        v9 = v14;
        if ( !v14 )
          goto LABEL_12;
        v10 = *v14;
      }
      while ( *v14 );
    }
  }
  else
  {
LABEL_12:
    if ( Document )
    {
      v9 = nullptr;
      TiXmlDocument::SetError(Document, 6, 0, nullptr, a4);
    }
    else
    {
      return nullptr;
    }
  }
  return v9;
}


// ===== 519f1c TiXmlElement::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
char *__fastcall TiXmlElement::Parse(int a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  unsigned __int8 *v7; // r4
  unsigned __int8 v8; // r7
  unsigned __int8 *v9; // r4
  const char *Name; // r0
  unsigned int v11; // r10
  char *M_data; // r3
  char *v13; // r2
  TiXmlAttributeSet *v14; // r11
  unsigned __int8 *v15; // r0
  unsigned int v16; // r7
  unsigned __int8 v17; // r3
  int v18; // r4
  unsigned __int8 *v19; // r0
  TiXmlAttributeSet *v20; // r0
  unsigned int v22; // r2
  unsigned __int8 *Value; // r0
  unsigned int v24; // r4
  unsigned int v25; // r2
  int Document; // [sp+10h] [bp-2Ch]
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+1Ch] [bp-20h] BYREF

  v7 = TiXmlBase::SkipWhiteSpace(a2, a4);
  Document = TiXmlNode::GetDocument((TiXmlNode *)a1);
  if ( !v7 || (v8 = *v7) == 0 )
  {
    if ( Document )
    {
      v11 = 0;
      TiXmlDocument::SetError(Document, 4, 0, nullptr, a4);
      return (char *)v11;
    }
    return nullptr;
  }
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)v7, a4);
    *(_DWORD *)(a1 + 4) = *a3;
    *(_DWORD *)(a1 + 8) = a3[1];
    v8 = *v7;
  }
  if ( v8 != 60 )
  {
    if ( Document )
    {
      v11 = 0;
      TiXmlDocument::SetError(Document, 4, (unsigned int)v7, a3, a4);
      return (char *)v11;
    }
    return nullptr;
  }
  v9 = TiXmlBase::SkipWhiteSpace(v7 + 1, a4);
  Name = TiXmlBase::ReadName((const char *)v9, (std::string *)(a1 + 32));
  v11 = (unsigned int)Name;
  if ( !Name || !*Name )
  {
    if ( Document )
    {
      v11 = 0;
      TiXmlDocument::SetError(Document, 5, (unsigned int)v9, a3, a4);
      return (char *)v11;
    }
    return nullptr;
  }
  v27._M_finish = (char *)&v27;
  v27._M_start_of_storage._M_data = (char *)&v27;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v27, 3u);
  M_data = v27._M_start_of_storage._M_data;
  v13 = v27._M_start_of_storage._M_data + 2;
  *v27._M_start_of_storage._M_data = 60;
  M_data[1] = 47;
  v27._M_finish = v13;
  M_data[2] = 0;
  std::string::_M_append((std::string *)&v27, *(char **)(a1 + 52), *(char **)(a1 + 48));
  std::string::_M_append((std::string *)&v27, ">", "");
  if ( !*(_BYTE *)v11 )
    goto LABEL_19;
  v14 = (TiXmlAttributeSet *)(a1 + 64);
  while ( 1 )
  {
    v15 = TiXmlBase::SkipWhiteSpace((unsigned __int8 *)v11, a4);
    v16 = (unsigned int)v15;
    if ( !v15 || (v17 = *v15) == 0 )
    {
      if ( Document )
      {
        v22 = v11;
        v11 = 0;
        TiXmlDocument::SetError(Document, 7, v22, a3, a4);
        goto LABEL_19;
      }
      goto LABEL_43;
    }
    if ( v17 == 47 )
    {
      if ( v15[1] == 62 )
      {
        v11 = (unsigned int)(v15 + 2);
        goto LABEL_19;
      }
      if ( Document )
      {
        v11 = 0;
        TiXmlDocument::SetError(Document, 8, (unsigned int)(v15 + 1), a3, a4);
        goto LABEL_19;
      }
      goto LABEL_43;
    }
    if ( v17 == 62 )
      break;
    v18 = operator new(0x4Cu, 0);
    TiXmlAttribute::TiXmlAttribute((TiXmlAttribute *)v18);
    if ( !v18 )
    {
      if ( Document )
      {
        v25 = v11;
        v11 = 0;
        TiXmlDocument::SetError(Document, 3, v25, a3, a4);
        goto LABEL_19;
      }
      goto LABEL_43;
    }
    *(_DWORD *)(v18 + 16) = Document;
    v19 = (unsigned __int8 *)(*(int (__fastcall **)(int, unsigned int, _DWORD *, int))(*(_DWORD *)v18 + 12))(
                               v18,
                               v16,
                               a3,
                               a4);
    v11 = (unsigned int)v19;
    if ( !v19 || !*v19 )
    {
      if ( Document )
        TiXmlDocument::SetError(Document, 4, v16, a3, a4);
      goto LABEL_32;
    }
    v20 = TiXmlAttributeSet::Find(v14, (const std::string *)(v18 + 20));
    if ( v20 )
    {
      std::string::operator=((std::string *)((char *)v20 + 44), *(char **)(v18 + 64));
LABEL_32:
      (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
      v11 = 0;
      goto LABEL_19;
    }
    TiXmlAttributeSet::Add((int)v14, (TiXmlAttribute *)v18);
    if ( !*(_BYTE *)v11 )
      goto LABEL_19;
  }
  Value = TiXmlElement::ReadValue((TiXmlNode *)a1, v15 + 1, (int)a3, a4);
  v24 = (unsigned int)Value;
  if ( !Value || !*Value )
  {
    if ( Document )
    {
      v11 = 0;
      TiXmlDocument::SetError(Document, 9, (unsigned int)Value, a3, a4);
      goto LABEL_19;
    }
    goto LABEL_43;
  }
  v11 = TiXmlBase::StringEqual(Value, v27._M_start_of_storage._M_data, 0);
  if ( v11 )
  {
    v11 = v24 + v27._M_finish - v27._M_start_of_storage._M_data;
    goto LABEL_19;
  }
  if ( !Document )
  {
LABEL_43:
    v11 = 0;
    goto LABEL_19;
  }
  TiXmlDocument::SetError(Document, 9, v24, a3, a4);
LABEL_19:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
  return (char *)v11;
}


// ===== 51a368 TiXmlElement::StreamIn(std::istream *,std::string *) =====
void __fastcall TiXmlElement::StreamIn(TiXmlElement *this, std::istream *a2, std::string *a3)
{
  _DWORD *v5; // r4
  int v6; // r10
  char *M_data; // r2
  char *v8; // r3
  char *v9; // r4
  int Document; // r0
  std::string *v11; // r2
  const char *v12; // r1
  int v13; // r11
  int v14; // r0
  int v15; // r10
  int v16; // r0
  int v17; // r4
  int v18; // r3
  int v19; // r2
  int v20; // r0
  int v22; // [sp+Ch] [bp-68h]
  char *v23; // [sp+1Ch] [bp-58h]
  char *M_finish; // [sp+20h] [bp-54h]
  _DWORD v25[17]; // [sp+28h] [bp-4Ch] BYREF

  do
  {
    v5 = *(_DWORD **)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
    if ( v5 )
      break;
    v6 = std::istream::get(a2);
    if ( v6 <= 0 )
    {
LABEL_9:
      Document = TiXmlNode::GetDocument(this);
      if ( Document )
        TiXmlDocument::SetError(Document, 14, (unsigned int)v5, v5, (int)v5);
      return;
    }
    std::string::push_back(a3, (_BYTE *)(char)v6);
  }
  while ( v6 != 62 );
  M_data = a3->_M_start_of_storage._M_data;
  v8 = (char *)(a3->_M_finish - M_data);
  if ( (unsigned int)v8 <= 2 )
    return;
  if ( *(a3->_M_finish - 1) == 62 )
  {
    if ( *(a3->_M_finish - 2) == 47 )
      return;
    v9 = (char *)(a3->_M_finish - M_data - 1);
    if ( a3->_M_finish == M_data )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
      M_data = a3->_M_start_of_storage._M_data;
    }
  }
  else
  {
    v9 = v8 - 1;
  }
  if ( v9[(_DWORD)M_data] == 62 )
  {
    v11 = (std::string *)(elf_hash_bucket + 7424);
LABEL_15:
    while ( 1 )
    {
      TiXmlBase::StreamWhiteSpace(a2, a3, v11);
      if ( *(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
        break;
      if ( std::istream::peek(a2) == 60 )
      {
        v5 = *(_DWORD **)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
        if ( v5 )
          return;
        v13 = 0;
        M_finish = a3->_M_finish;
        v22 = 0;
        v23 = a3->_M_start_of_storage._M_data;
LABEL_20:
        if ( v5 )
          return;
        while ( 1 )
        {
          v14 = std::istream::peek(a2);
          v15 = v14;
          if ( v14 <= 0 )
            goto LABEL_9;
          if ( v14 == 62
            || (std::string::push_back(a3, (_BYTE *)(char)v14), std::istream::get(a2), v15 == 91)
            && (unsigned int)(a3->_M_finish - a3->_M_start_of_storage._M_data) > 8
            && !LC_API_STRCMP_0((const char *)a3->_M_finish - 9, "<![CDATA[") )
          {
            if ( !v22 )
            {
              v16 = TiXmlNode::Identify(this, (unsigned __int8 *)&a3->_M_start_of_storage._M_data[M_finish - v23], 0);
              v17 = v16;
              if ( !v16 )
                return;
              (*(void (__fastcall **)(int, std::istream *, std::string *))(*(_DWORD *)v16 + 72))(v16, a2, a3);
              (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 4))(v17);
              goto LABEL_15;
            }
            v5 = *(_DWORD **)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
            if ( v5 )
              return;
            v20 = std::istream::get(a2);
            if ( v20 > 0 )
            {
              std::string::push_back(a3, (_BYTE *)(char)v20);
              return;
            }
            goto LABEL_9;
          }
          if ( v13 || v15 == 60 )
            goto LABEL_29;
          if ( v15 <= 255 )
          {
            v18 = (*(unsigned __int8 *)(ctype_ + (unsigned __int8)v15 + 1) >> 3) & 1;
            if ( (char)v15 == 10 )
              v18 = 1;
            if ( v18 || (char)v15 == 13 )
            {
LABEL_29:
              v5 = *(_DWORD **)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
              goto LABEL_20;
            }
            v19 = v22;
            if ( v15 == 47 )
              v19 = 1;
            v22 = v19;
          }
          v13 = 1;
          v5 = *(_DWORD **)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
          if ( v5 )
            return;
        }
      }
      TiXmlText::TiXmlText((TiXmlText *)v25, v12);
      TiXmlText::StreamIn((TiXmlText *)v25, (std::string *)a2, a3);
      v25[0] = off_96C4D0;
      TiXmlNode::~TiXmlNode((TiXmlNode *)v25);
    }
  }
}


// ===== 51a734 TiXmlDocument::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlDocument::Parse(int a1, unsigned __int8 *a2, int *a3, int a4)
{
  int v8; // r2
  int v9; // r1
  int v10; // r3
  unsigned __int8 *v11; // r0
  unsigned __int8 *v12; // r5
  int v13; // r0
  TiXmlNode *v14; // r6
  unsigned __int8 *v15; // r5
  unsigned __int8 *v16; // r0
  int v18; // r0
  unsigned __int8 *v19; // r6
  _DWORD v20[4]; // [sp+8h] [bp-10h] BYREF

  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  std::string::_M_assign((std::string *const)(a1 + 72), "", "");
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  if ( !a2 || !*a2 )
  {
    v12 = nullptr;
LABEL_38:
    TiXmlDocument::SetError(a1, 13, (unsigned int)v12, v12, (int)v12);
    return v12;
  }
  *(_DWORD *)(a1 + 4) = -1;
  *(_DWORD *)(a1 + 8) = -1;
  if ( a3 )
    v8 = *a3;
  v9 = *(_DWORD *)(a1 + 96);
  if ( a3 )
  {
    *(_DWORD *)(a1 + 4) = v8;
    v10 = a3[1];
  }
  else
  {
    v10 = 0;
  }
  if ( a3 )
  {
    *(_DWORD *)(a1 + 8) = v10;
  }
  else
  {
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = 0;
  }
  if ( !a3 )
    v8 = v10;
  *(_DWORD *)(a1 + 4) = v8;
  v20[3] = v9;
  *(_DWORD *)(a1 + 8) = v10;
  v20[2] = a2;
  v20[0] = v8;
  v20[1] = v10;
  if ( !a4 && *a2 == 239 && a2[1] && a2[1] == 187 && a2[2] && a2[2] == 191 )
  {
    a4 = 1;
    *(_BYTE *)(a1 + 108) = 1;
  }
  v11 = TiXmlBase::SkipWhiteSpace(a2, a4);
  v12 = v11;
  if ( !v11 )
    goto LABEL_38;
  if ( *v11 )
  {
    do
    {
      v13 = TiXmlNode::Identify((TiXmlNode *)a1, v12, a4);
      v14 = (TiXmlNode *)v13;
      if ( !v13 )
        break;
      v15 = (unsigned __int8 *)(*(int (__fastcall **)(int, unsigned __int8 *, _DWORD *, int))(*(_DWORD *)v13 + 12))(
                                 v13,
                                 v12,
                                 v20,
                                 a4);
      TiXmlNode::LinkEndChild((TiXmlNode *)a1, v14);
      if ( !a4 && (*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v14 + 60))(v14) )
      {
        v18 = (*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v14 + 60))(v14);
        v19 = *(unsigned __int8 **)(v18 + 108);
        if ( !*v19 || TiXmlBase::StringEqual(*(unsigned __int8 **)(v18 + 108), "UTF-8", 1) )
        {
          a4 = 1;
        }
        else if ( TiXmlBase::StringEqual(v19, "UTF8", 1) )
        {
          a4 = 1;
        }
        else
        {
          a4 = 2;
        }
      }
      v16 = TiXmlBase::SkipWhiteSpace(v15, a4);
      v12 = v16;
      if ( !v16 )
        break;
    }
    while ( *v16 );
  }
  if ( !*(_DWORD *)(a1 + 24) )
  {
    v12 = nullptr;
    TiXmlDocument::SetError(a1, 13, 0, nullptr, a4);
  }
  return v12;
}


// ===== 51a99c TiXmlDocument::StreamIn(std::istream *,std::string *) =====
std::string *__fastcall TiXmlDocument::StreamIn(
        TiXmlDocument *this,
        std::istream *a2,
        std::string *a3,
        std::string *a4)
{
  int v7; // r8
  int v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r8
  int v12; // r5
  std::string *result; // r0

  if ( !TiXmlBase::StreamTo(a2, (std::istream *)&off_3C, a3, a4) )
    return TiXmlDocument::SetError((int)this, 8, 0, nullptr, 0);
  while ( !*(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
  {
    v7 = a3->_M_finish - a3->_M_start_of_storage._M_data;
    while ( 1 )
    {
      if ( std::istream::peek(a2) == 62 )
      {
        v9 = *(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
        goto LABEL_10;
      }
      v8 = std::istream::get(a2);
      if ( v8 <= 0 )
        break;
      std::string::push_back(a3, (_BYTE *)(char)v8);
      if ( *(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)] )
        return TiXmlDocument::SetError((int)this, 1, 0, nullptr, 0);
    }
    TiXmlDocument::SetError((int)this, 14, 0, nullptr, 0);
    v9 = *(_DWORD *)&a2->gap8[*((_DWORD *)a2->_vptr.basic_istream - 3)];
LABEL_10:
    if ( v9 )
      break;
    v10 = TiXmlNode::Identify(this, (unsigned __int8 *)&a3->_M_start_of_storage._M_data[v7], 0);
    v11 = v10;
    if ( !v10 )
      break;
    (*(void (__fastcall **)(int, std::istream *, std::string *))(*(_DWORD *)v10 + 72))(v10, a2, a3);
    v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 44))(v11);
    result = (std::string *)(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 4))(v11);
    if ( v12 )
      return result;
  }
  return TiXmlDocument::SetError((int)this, 1, 0, nullptr, 0);
}


// ===== 51ab30 TiXmlText::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlText::Parse(int a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  std::string *v4; // r10
  int Document; // r11
  unsigned __int8 *v10; // r6
  unsigned __int8 *v11; // r6
  unsigned __int8 *Text; // r0
  _BYTE *v14; // t1
  std::string v15; // [sp+Ch] [bp-20h] BYREF

  v4 = (std::string *)(a1 + 32);
  std::string::_M_assign((std::string *const)(a1 + 32), "", "");
  Document = TiXmlNode::GetDocument((TiXmlNode *)a1);
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)a2, a4);
    *(_DWORD *)(a1 + 4) = *a3;
    *(_DWORD *)(a1 + 8) = a3[1];
  }
  if ( *(_BYTE *)(a1 + 64) || TiXmlBase::StringEqual(a2, "<![CDATA[", *(unsigned __int8 *)(a1 + 64)) )
  {
    *(_BYTE *)(a1 + 64) = 1;
    v10 = (unsigned __int8 *)TiXmlBase::StringEqual(a2, "<![CDATA[", 0);
    if ( v10 )
    {
      v11 = a2 + 9;
      if ( a2 != (unsigned __int8 *)-9 && a2[9] )
      {
        do
        {
          if ( TiXmlBase::StringEqual(v11, "]]>", 0) )
            break;
          v14 = (_BYTE *)(char)*v11++;
          std::string::push_back(v4, v14);
          if ( !v11 )
            break;
        }
        while ( *v11 );
      }
      v15._M_finish = (char *)&v15;
      v15._M_start_of_storage._M_data = (char *)&v15;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v15, 0x10u);
      *v15._M_finish = 0;
      v10 = TiXmlBase::ReadText(v11, &v15, 0, "]]>", 0, a4);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    }
    else
    {
      TiXmlDocument::SetError(Document, 15, (unsigned int)a2, a3, a4);
    }
  }
  else
  {
    Text = TiXmlBase::ReadText(a2, v4, 1, "<", 0, a4);
    v10 = Text;
    if ( Text )
      return Text - 1;
  }
  return v10;
}


// ===== 51ad38 TiXmlAttribute::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlAttribute::Parse(int a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  unsigned __int8 *v7; // r0
  const char *v8; // r6
  unsigned __int8 *Name; // r0
  unsigned __int8 *v11; // r0
  unsigned int v12; // r2
  unsigned __int8 *v13; // r0
  unsigned __int8 v14; // r3
  int v15; // r2
  int v16; // r5
  bool v17; // zf
  int v18; // r0
  unsigned int v19; // r2
  int v20; // r0

  v7 = TiXmlBase::SkipWhiteSpace(a2, a4);
  v8 = (const char *)v7;
  if ( !v7 )
    return (unsigned __int8 *)v8;
  if ( !*v7 )
    return nullptr;
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)v7, a4);
    *(_DWORD *)(a1 + 4) = *a3;
    *(_DWORD *)(a1 + 8) = a3[1];
  }
  Name = (unsigned __int8 *)TiXmlBase::ReadName(v8, (std::string *)(a1 + 20));
  if ( !Name || !*Name )
    goto LABEL_31;
  v11 = TiXmlBase::SkipWhiteSpace(Name, a4);
  v12 = (unsigned int)v11;
  if ( !v11 || !*v11 || *v11 != 61 )
  {
    v20 = *(_DWORD *)(a1 + 16);
    if ( !v20 )
      return nullptr;
    goto LABEL_34;
  }
  v13 = TiXmlBase::SkipWhiteSpace(v11 + 1, a4);
  v8 = (const char *)v13;
  if ( !v13 || (v14 = *v13) == 0 )
  {
LABEL_31:
    v20 = *(_DWORD *)(a1 + 16);
    if ( !v20 )
      return nullptr;
    v12 = (unsigned int)v8;
LABEL_34:
    v8 = nullptr;
    TiXmlDocument::SetError(v20, 7, v12, a3, a4);
    return (unsigned __int8 *)v8;
  }
  if ( v14 == 39 )
    return TiXmlBase::ReadText(v13 + 1, (std::string *)(a1 + 44), 0, "'", 0, a4);
  if ( v14 == 34 )
    return TiXmlBase::ReadText(v13 + 1, (std::string *)(a1 + 44), 0, "\"", 0, a4);
  std::string::operator=((std::string *)(a1 + 44), "");
  v15 = *(unsigned __int8 *)v8;
  if ( *v8 )
  {
    while ( 1 )
    {
      v16 = (*(unsigned __int8 *)(ctype_ + v15 + 1) >> 3) & 1;
      if ( (char)v15 == 10 )
        v16 = 1;
      if ( v16 || (char)v15 == 13 || (char)v15 == 47 || (char)v15 == 62 )
        break;
      v17 = (char)v15 == 39;
      if ( (char)v15 != 39 )
        v17 = (char)v15 == 34;
      if ( v17 )
      {
        v18 = *(_DWORD *)(a1 + 16);
        if ( !v18 )
          return nullptr;
        v19 = (unsigned int)v8;
        v8 = nullptr;
        TiXmlDocument::SetError(v18, 7, v19, a3, a4);
        return (unsigned __int8 *)v8;
      }
      std::string::push_back((std::string *)(a1 + 44), (_BYTE *)(char)v15);
      if ( ++v8 )
      {
        v15 = *(unsigned __int8 *)v8;
        if ( *v8 )
          continue;
      }
      return (unsigned __int8 *)v8;
    }
  }
  return (unsigned __int8 *)v8;
}


// ===== 51af8c TiXmlDeclaration::Parse(char const*,TiXmlParsingData *,TiXmlEncoding) =====
unsigned __int8 *__fastcall TiXmlDeclaration::Parse(int a1, unsigned __int8 *a2, _DWORD *a3, int a4)
{
  unsigned __int8 *v7; // r7
  int Document; // r10
  unsigned __int8 *v9; // r4
  size_t v11; // r0
  int v12; // r3
  size_t v13; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r3
  unsigned __int8 *v17; // r0
  char *M_data; // r7
  size_t v19; // r0
  const char *__f; // [sp+8h] [bp-114h]
  const char *__fa; // [sp+8h] [bp-114h]
  std::string *v22; // [sp+Ch] [bp-110h]
  std::string *v23; // [sp+18h] [bp-104h]
  std::string *v24; // [sp+24h] [bp-F8h]
  _DWORD v25[5]; // [sp+30h] [bp-ECh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+44h] [bp-D8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+5Ch] [bp-C0h] BYREF
  _DWORD v28[5]; // [sp+7Ch] [bp-A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+90h] [bp-8Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v30; // [sp+A8h] [bp-74h] BYREF
  _DWORD v31[5]; // [sp+C8h] [bp-54h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+DCh] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+F4h] [bp-28h] BYREF

  v7 = TiXmlBase::SkipWhiteSpace(a2, a4);
  Document = TiXmlNode::GetDocument((TiXmlNode *)a1);
  if ( !v7 || !*v7 || !TiXmlBase::StringEqual(v7, "<?xml", 1) )
  {
    if ( Document )
    {
      v9 = nullptr;
      TiXmlDocument::SetError(Document, 12, 0, nullptr, a4);
      return v9;
    }
    return nullptr;
  }
  if ( a3 )
  {
    TiXmlParsingData::Stamp((int)a3, (unsigned int)v7, a4);
    *(_DWORD *)(a1 + 4) = *a3;
    *(_DWORD *)(a1 + 8) = a3[1];
  }
  v23 = (std::string *)(a1 + 88);
  v22 = (std::string *)(a1 + 64);
  std::string::_M_assign((std::string *const)(a1 + 64), "", "");
  std::string::_M_assign((std::string *const)(a1 + 88), "", "");
  v24 = (std::string *)(a1 + 112);
  v9 = v7 + 5;
  std::string::_M_assign(v24, "", "");
  if ( v7 == (unsigned __int8 *)-5 )
    return v9;
  if ( !v7[5] )
    return nullptr;
  if ( v7[5] != 62 )
  {
    do
    {
      v9 = TiXmlBase::SkipWhiteSpace(v9, a4);
      if ( TiXmlBase::StringEqual(v9, "version", 1) )
      {
        TiXmlAttribute::TiXmlAttribute((TiXmlAttribute *)v31);
        v9 = TiXmlAttribute::Parse((int)v31, v9, a3, a4);
        __f = v33._M_start_of_storage._M_data;
        v11 = LC_API_STRLEN_0(v33._M_start_of_storage._M_data);
        std::string::_M_assign(v22, __f, &__f[v11]);
        v31[0] = off_96C688;
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
        v31[0] = off_96C3A8;
      }
      else if ( TiXmlBase::StringEqual(v9, "encoding", 1) )
      {
        TiXmlAttribute::TiXmlAttribute((TiXmlAttribute *)v28);
        v9 = TiXmlAttribute::Parse((int)v28, v9, a3, a4);
        __fa = v30._M_start_of_storage._M_data;
        v13 = LC_API_STRLEN_0(v30._M_start_of_storage._M_data);
        std::string::_M_assign(v23, __fa, &__fa[v13]);
        v28[0] = off_96C688;
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v30);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
        v28[0] = off_96C3A8;
      }
      else if ( TiXmlBase::StringEqual(v9, "standalone", 1) )
      {
        TiXmlAttribute::TiXmlAttribute((TiXmlAttribute *)v25);
        v17 = TiXmlAttribute::Parse((int)v25, v9, a3, a4);
        M_data = v27._M_start_of_storage._M_data;
        v9 = v17;
        v19 = LC_API_STRLEN_0(v27._M_start_of_storage._M_data);
        std::string::_M_assign(v24, M_data, &M_data[v19]);
        v25[0] = off_96C688;
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
        v25[0] = off_96C3A8;
      }
      else
      {
        if ( !v9 )
          return v9;
        v14 = *v9;
        if ( !*v9 )
          return nullptr;
        v15 = (char)v14;
        if ( (char)v14 == 62 )
        {
LABEL_33:
          v12 = 62;
          continue;
        }
        while ( 1 )
        {
          v16 = (*(unsigned __int8 *)(ctype_ + v14 + 1) >> 3) & 1;
          if ( v15 == 10 )
            v16 |= 1u;
          if ( v16 || v15 == 13 )
            break;
          if ( !++v9 )
            return v9;
          v14 = *v9;
          if ( !*v9 )
            return nullptr;
          v15 = (char)v14;
          if ( (char)v14 == 62 )
            goto LABEL_33;
        }
      }
      if ( !v9 )
        return v9;
      v12 = *v9;
      if ( !*v9 )
        return nullptr;
    }
    while ( v12 != 62 );
  }
  return ++v9;
}


// ===== 51b3a4 OnScreenKeyboard::ClearString(void) =====
int *__fastcall OnScreenKeyboard::ClearString(OnScreenKeyboard *this)
{
  int *result; // r0

  if ( OnScreenKeyboard::s_outBufLen )
  {
    OnScreenKeyboard::s_bufIdx = 0;
    *(_BYTE *)OnScreenKeyboard::s_outBuffer = 0;
    return &OnScreenKeyboard::s_outBuffer;
  }
  return result;
}


// ===== 51b3f4 OnScreenKeyboard::OnScreenKeyboard(void) =====
void __fastcall OnScreenKeyboard::OnScreenKeyboard(OnScreenKeyboard *this)
{
  *(_DWORD *)this = off_96C6A0;
}


// ===== 51b418 OnScreenKeyboard::OnScreenKeyboard(void) =====
void __fastcall OnScreenKeyboard::OnScreenKeyboard(OnScreenKeyboard *this)
{
  *(_DWORD *)this = off_96C6A0;
}


// ===== 51b43c OnScreenKeyboard::~OnScreenKeyboard() =====
void __fastcall OnScreenKeyboard::~OnScreenKeyboard(OnScreenKeyboard *this)
{
  ;
}


// ===== 51b440 OnScreenKeyboard::~OnScreenKeyboard() =====
void __fastcall OnScreenKeyboard::~OnScreenKeyboard(OnScreenKeyboard *this)
{
  ;
}


// ===== 51b444 OnScreenKeyboard::onEvent(IEvent const*,EventManager const*) =====
int __fastcall OnScreenKeyboard::onEvent(OnScreenKeyboard *this, const IEvent *a2, const EventManager *a3)
{
  int v4; // r3
  int v5; // r3

  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) )
    return 0;
  v4 = *((_DWORD *)a2 + 3);
  if ( v4 != 13 )
  {
    if ( v4 != 8 )
    {
      v5 = *((_DWORD *)a2 + 2);
      if ( v5 && *((_BYTE *)a2 + 16) && OnScreenKeyboard::s_outBufLen - 1 > (unsigned int)OnScreenKeyboard::s_bufIdx )
      {
        *(_BYTE *)(OnScreenKeyboard::s_outBuffer + OnScreenKeyboard::s_bufIdx++) = v5;
        return 1;
      }
      return 1;
    }
    if ( *((_BYTE *)a2 + 16) && OnScreenKeyboard::s_bufIdx )
    {
      --OnScreenKeyboard::s_bufIdx;
      *(_BYTE *)(OnScreenKeyboard::s_outBuffer + OnScreenKeyboard::s_bufIdx) = 0;
      return 1;
    }
    return 1;
  }
  if ( *((_BYTE *)a2 + 16) )
    return 1;
  EventManager::Detach(
    (EventManager *)dword_99F740,
    *((unsigned __int8 *)a2 + 16),
    (IEventReceiver *)&OnScreenKeyboard::s_inst);
  OnScreenKeyboard::s_isOver = 1;
  return 1;
}


// ===== 51b588 OnScreenKeyboard::ReleaseKeyboard(void) =====
int __fastcall OnScreenKeyboard::ReleaseKeyboard(OnScreenKeyboard *this)
{
  int result; // r0

  result = EventManager::Detach((EventManager *)dword_99F740, 0, (IEventReceiver *)&OnScreenKeyboard::s_inst);
  OnScreenKeyboard::s_isOver = 1;
  return result;
}


// ===== 51b5d4 OnScreenKeyboard::~OnScreenKeyboard() =====
void __fastcall OnScreenKeyboard::~OnScreenKeyboard(OnScreenKeyboard *this)
{
  OnScreenKeyboard::~OnScreenKeyboard(this);
  CustomFree(this);
}


// ===== 51b5f0 OnScreenKeyboard::GetString(char const*,char *,uint,char const*) =====
int __fastcall OnScreenKeyboard::GetString(OnScreenKeyboard *this, char *a2, char *a3, char *a4, const char *a5)
{
  if ( OnScreenKeyboard::s_isQuerying || !OnScreenKeyboard::s_isOver )
    return 0;
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
        "outbuffer",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\OnScreenKeyboard.cpp",
        98);
    }
  }
  OnScreenKeyboard::s_isQuerying = 1;
  OnScreenKeyboard::s_isOver = 0;
  OnScreenKeyboard::s_bufIdx = 0;
  if ( a4 )
  {
    OnScreenKeyboard::s_bufIdx = LC_API_STRLEN_0(a4);
    OnScreenKeyboard::s_outBuffer = (int)a2;
    OnScreenKeyboard::s_outBufLen = (int)a3;
    LC_API_STRNCPY_0(a2, a4, OnScreenKeyboard::s_bufIdx);
  }
  else
  {
    OnScreenKeyboard::s_outBuffer = (int)a2;
    OnScreenKeyboard::s_outBufLen = (int)a3;
  }
  EventManager::Attach((EventManager *)dword_99F740, 0, (IEventReceiver *)&OnScreenKeyboard::s_inst, 0x7FFFFFFF);
  OnScreenKeyboard::s_isQuerying = 0;
  return 1;
}


// ===== 51b784 `global constructor keyed to'.._.._sources_Modules_OnScreenKeyboard.cpp =====
int `global constructor keyed to'.._.._sources_Modules_OnScreenKeyboard.cpp()
{
  int result; // r0

  dword_9F62A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F62A4 = 1056964608;
  OnScreenKeyboard::OnScreenKeyboard((OnScreenKeyboard *)&OnScreenKeyboard::s_inst);
  result = _aeabi_atexit((int)&OnScreenKeyboard::s_inst, (int)OnScreenKeyboard::~OnScreenKeyboard, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 51b83c PFGInnerNode::~PFGInnerNode() =====
void __fastcall PFGInnerNode::~PFGInnerNode(PFGInnerNode *this)
{
  ;
}


// ===== 51b840 PFGInnerEdge::~PFGInnerEdge() =====
void __fastcall PFGInnerEdge::~PFGInnerEdge(PFGInnerEdge *this)
{
  ;
}


// ===== 51b844 PFGInnerEdge::GetSource(void) =====
int __fastcall PFGInnerEdge::GetSource(PFGInnerEdge *this)
{
  return (*(int (__fastcall **)(PFGInnerEdge *))(*(_DWORD *)this + 4))(this) + 8;
}


// ===== 51b85c PFGInnerEdge::GetDestination(void) =====
int __fastcall PFGInnerEdge::GetDestination(PFGInnerEdge *this)
{
  return (*(int (__fastcall **)(PFGInnerEdge *))(*(_DWORD *)this + 12))(this) + 8;
}


// ===== 51b874 PFFloor::GetCollisionAt(Point3D<float> const&,Point3D<float> const&,Point3D<float>&) =====
int __fastcall PFFloor::GetCollisionAt(int a1, int *a2, int *a3, _DWORD *a4)
{
  int v4; // r6
  int v5; // r4
  int v6; // r5
  int v7; // r7
  int v8; // r10
  int v9; // r1
  int v10; // r2
  int v11; // r6
  int (__fastcall *v13)(int, _DWORD *, int, int *, _DWORD *); // r5
  int v14; // r0
  int result; // r0
  int v16; // r3
  int v17; // r1
  _DWORD v18[9]; // [sp+8h] [bp-4Ch] BYREF
  _DWORD v19[6]; // [sp+2Ch] [bp-28h] BYREF
  int v20; // [sp+44h] [bp-10h] BYREF
  int v21; // [sp+48h] [bp-Ch]
  int v22; // [sp+4Ch] [bp-8h]

  v4 = *a2;
  v5 = *a3;
  v6 = a2[2];
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[1];
  v10 = *(_DWORD *)(dword_99F73C + 28);
  v19[3] = v5;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19[0] = v4;
  v19[1] = v7;
  v19[2] = v6;
  v19[4] = v9;
  v19[5] = v8;
  v11 = *(_DWORD *)(v10 + 44);
  v13 = *(int (__fastcall **)(int, _DWORD *, int, int *, _DWORD *))(*(_DWORD *)v11 + 12);
  v14 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 64) + 176))(*(_DWORD *)(a1 + 64));
  result = v13(v11, v19, v14, &v20, v18);
  if ( result )
  {
    v16 = v22;
    v17 = v20;
    a4[1] = v21;
    *a4 = v17;
    a4[2] = v16;
    return 1;
  }
  return result;
}


// ===== 51b96c PFFloor::GetCollisionAt(Point3D<float> const&,Point3D<float>&,glitch::core::triangle3d<float> &) =====
int __fastcall PFFloor::GetCollisionAt(int a1, float *a2, _DWORD *a3, int a4)
{
  float v4; // r5
  float v8; // r9
  float v9; // r6
  int v10; // r8
  int v11; // r5
  int (__fastcall *v12)(int, _DWORD *, int, int *, int); // r4
  int v13; // r0
  int v14; // r3
  int v15; // r1
  _DWORD v16[6]; // [sp+Ch] [bp-24h] BYREF
  int v17; // [sp+24h] [bp-Ch] BYREF
  int v18; // [sp+28h] [bp-8h]
  int v19; // [sp+2Ch] [bp-4h]

  v4 = *a2;
  if ( *(float *)(a1 + 68) > *a2 )
    return 0;
  if ( v4 > *(float *)(a1 + 80) )
    return 0;
  v8 = a2[1];
  if ( *(float *)(a1 + 72) > v8 )
    return 0;
  if ( v8 > *(float *)(a1 + 84) )
    return 0;
  v9 = a2[2];
  if ( *(float *)(a1 + 76) > v9 )
    return 0;
  if ( v9 > *(float *)(a1 + 88) )
    return 0;
  v10 = *(_DWORD *)(dword_99F73C + 28);
  v19 = 0;
  v17 = 0;
  v18 = 0;
  *(float *)&v16[3] = v4;
  *(float *)v16 = v4;
  *(float *)&v16[4] = v8;
  *(float *)&v16[1] = v8;
  *(float *)&v16[2] = v9 + 1000.0;
  *(float *)&v16[5] = v9 - 1000.0;
  v11 = *(_DWORD *)(v10 + 44);
  v12 = *(int (__fastcall **)(int, _DWORD *, int, int *, int))(*(_DWORD *)v11 + 12);
  v13 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 64) + 176))(*(_DWORD *)(a1 + 64));
  if ( !v12(v11, v16, v13, &v17, a4) )
    return 0;
  v14 = v19;
  v15 = v17;
  a3[1] = v18;
  *a3 = v15;
  a3[2] = v14;
  return 1;
}


// ===== 51badc PFFloor::GetFloorHeightAt(Point3D<float> const&,float *,Point3D<float>*) =====
int __fastcall PFFloor::GetFloorHeightAt(int a1, int a2, _DWORD *a3, float *a4)
{
  int result; // r0
  float v7; // r8
  float v8; // r6
  float v9; // r0
  float v10; // r5
  float v11; // r7
  float v12; // r9
  float v13; // [sp+0h] [bp-34h] BYREF
  float v14; // [sp+4h] [bp-30h]
  float v15; // [sp+8h] [bp-2Ch]
  float v16; // [sp+Ch] [bp-28h]
  float v17; // [sp+10h] [bp-24h]
  float v18; // [sp+14h] [bp-20h]
  float v19; // [sp+18h] [bp-1Ch]
  float v20; // [sp+1Ch] [bp-18h]
  float v21; // [sp+20h] [bp-14h]
  _DWORD v22[2]; // [sp+24h] [bp-10h] BYREF
  int v23; // [sp+2Ch] [bp-8h]

  v21 = 0.0;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  result = PFFloor::GetCollisionAt(a1, a2, v22, &v13);
  if ( result )
  {
    if ( a3 )
      *a3 = v23;
    if ( a4 )
    {
      v7 = v16 - v13;
      v8 = v17 - v14;
      v9 = v18 - v15;
      v10 = v19 - v13;
      v11 = v20 - v14;
      v12 = v21 - v15;
      *a4 = (float)((float)(v21 - v15) * COERCE_FLOAT(COERCE_INT(v17 - v14) + 0x80000000))
          + (float)((float)(v18 - v15) * (float)(v20 - v14));
      a4[1] = (float)(v10 * COERCE_FLOAT(LODWORD(v9) + 0x80000000)) + (float)(v7 * v12);
      a4[2] = (float)(v11 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v8 * v10);
    }
    return 1;
  }
  return result;
}


// ===== 51bc40 sfc::math::graph::Node<uint>::~Node() =====
void sfc::math::graph::Node<unsigned int>::~Node()
{
  ;
}


// ===== 51bc44 sfc::math::graph::Edge<PFGInnerNode,float>::~Edge() =====
void sfc::math::graph::Edge<PFGInnerNode,float>::~Edge()
{
  ;
}


// ===== 51bc48 sfc::math::graph::Edge<PFGInnerNode,float>::getFromNode(void) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::getFromNode(int a1)
{
  return *(_DWORD *)(a1 + 4);
}


// ===== 51bc50 sfc::math::graph::Edge<PFGInnerNode,float>::getToNode(void) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::getToNode(int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 51bc58 sfc::math::graph::Node<uint>::getID(void) =====
int __fastcall sfc::math::graph::Node<unsigned int>::getID(int a1)
{
  return *(_DWORD *)(a1 + 4);
}


// ===== 51bc60 sfc::math::graph::Edge<PFGInnerNode,float>::setWeight(float) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::setWeight(int result, int a2)
{
  *(_DWORD *)(result + 12) = a2;
  return result;
}


// ===== 51bc68 sfc::math::graph::Edge<PFGInnerNode,float>::getFromNode(void) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::getFromNode(int a1)
{
  return *(_DWORD *)(a1 + 4);
}


// ===== 51bc70 sfc::math::graph::Edge<PFGInnerNode,float>::getToNode(void) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::getToNode(int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 51bc78 std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<CompPos>(CompPos const&) =====
float *__fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<CompPos>(
        int a1,
        float *a2)
{
  int v2; // r4
  float v3; // r6
  float *v4; // r8
  bool v5; // r3
  bool v6; // r4

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return (float *)a1;
  v3 = *a2;
  v4 = (float *)a1;
  do
  {
    if ( fabs(*(float *)(v2 + 16) - v3) >= 0.0001 )
    {
      v5 = *(float *)(v2 + 16) < v3;
    }
    else if ( fabs(*(float *)(v2 + 20) - a2[1]) >= 0.0001 )
    {
      v5 = *(float *)(v2 + 20) < a2[1];
    }
    else
    {
      v5 = *(float *)(v2 + 24) < a2[2];
    }
    if ( v5 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v4 = (float *)v2;
    if ( !v5 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v4 != (float *)a1 )
  {
    if ( fabs(v3 - v4[4]) >= 0.0001 )
      v6 = v4[4] > v3;
    else
      v6 = fabs(a2[1] - v4[5]) >= 0.0001 ? a2[1] < v4[5] : a2[2] < v4[6];
    if ( v6 )
      return (float *)a1;
  }
  return v4;
}


// ===== 51be10 std::vector<PFFloor::InvalidNode,std::allocator<PFFloor::InvalidNode>>::_M_erase(PFFloor::InvalidNode*,PFFloor::InvalidNode*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<PFFloor::InvalidNode>::_M_erase(int a1, _DWORD *a2, _DWORD *a3)
{
  int v4; // r12
  int v5; // r0
  _DWORD *v6; // r0
  int v7; // r4
  _DWORD *v8; // r12
  int v9; // r5

  v4 = (*(_DWORD *)(a1 + 4) - (int)a3) >> 3;
  v5 = -1227133513 * v4;
  if ( -1227133513 * v4 > 0 )
  {
    v7 = -1227133513 * v4;
    v8 = a2;
    do
    {
      --v7;
      *v8 = *a3;
      v8[1] = a3[1];
      v8[2] = a3[2];
      v8[3] = a3[3];
      v8[4] = a3[4];
      v8[5] = a3[5];
      v8[6] = a3[6];
      v8[7] = a3[7];
      v8[8] = a3[8];
      v8[9] = a3[9];
      v8[10] = a3[10];
      v8[11] = a3[11];
      v8[12] = a3[12];
      v9 = a3[13];
      a3 += 14;
      v8[13] = v9;
      v8 += 14;
    }
    while ( v7 );
    v6 = &a2[14 * v5];
  }
  else
  {
    v6 = a2;
  }
  *(_DWORD *)(a1 + 4) = v6;
  return a2;
}


// ===== 51bee8 PFFloor::_PostLoad(void) =====
int __fastcall PFFloor::_PostLoad(int this)
{
  int v1; // r4
  int v2; // r3

  v1 = this;
  if ( *(_DWORD *)(this + 168) != *(_DWORD *)(this + 172) )
    this = std::vector<PFFloor::InvalidNode>::_M_erase(this + 168);
  v2 = *(_DWORD *)(v1 + 180);
  if ( v2 != *(_DWORD *)(v1 + 184) )
    *(_DWORD *)(v1 + 184) = v2;
  return this;
}


// ===== 51bf28 std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<Point3D<float>>(Point3D<float> const&) =====
float *__fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<Point3D<float>>(
        int a1,
        float *a2)
{
  int v2; // r4
  float v3; // r9
  float v4; // r6
  float v5; // r8
  float *v6; // r7
  bool v7; // r3
  bool v8; // r4

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return (float *)a1;
  v3 = a2[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = (float *)a1;
  do
  {
    if ( fabs(*(float *)(v2 + 16) - v4) >= 0.0001 )
    {
      v7 = *(float *)(v2 + 16) < v4;
    }
    else if ( fabs(*(float *)(v2 + 20) - v5) >= 0.0001 )
    {
      v7 = *(float *)(v2 + 20) < v5;
    }
    else
    {
      v7 = *(float *)(v2 + 24) < v3;
    }
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = (float *)v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != (float *)a1 )
  {
    if ( fabs(v4 - v6[4]) >= 0.0001 )
      v8 = v4 < v6[4];
    else
      v8 = fabs(v5 - v6[5]) >= 0.0001 ? v5 < v6[5] : v3 < v6[6];
    if ( v8 )
      return (float *)a1;
  }
  return v6;
}


// ===== 51c0bc PFFloor::_GetNodeAt(Point3D<float> const&) =====
int __fastcall PFFloor::_GetNodeAt(int a1, float *a2)
{
  float *v2; // r4
  float *v3; // r0

  v2 = (float *)(a1 + 144);
  v3 = std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<Point3D<float>>(
         a1 + 144,
         a2);
  if ( v3 == v2 )
    return 0;
  else
    return *((_DWORD *)v3 + 7);
}


// ===== 51c0dc PFFloor::_GetNodeAt(Point3D<float> const&) =====
int __fastcall PFFloor::_GetNodeAt(int a1, float *a2)
{
  float *v2; // r4
  float *v3; // r0

  v2 = (float *)(a1 + 144);
  v3 = std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<Point3D<float>>(
         a1 + 144,
         a2);
  if ( v3 == v2 )
    return 0;
  else
    return *((_DWORD *)v3 + 7);
}


// ===== 51c0fc sfc::math::graph::Node<uint>::isValid(void) =====
int sfc::math::graph::Node<unsigned int>::isValid()
{
  return 1;
}


// ===== 51c104 sfc::math::graph::Edge<PFGInnerNode,float>::getWeight(void) =====
int __fastcall sfc::math::graph::Edge<PFGInnerNode,float>::getWeight(int a1)
{
  return *(_DWORD *)(a1 + 12);
}


// ===== 51c10c sfc::math::graph::Edge<PFGInnerNode,float>::isValid(void) =====
int sfc::math::graph::Edge<PFGInnerNode,float>::isValid()
{
  return 1;
}


// ===== 51c114 PFGInnerEdge::~PFGInnerEdge() =====
void __fastcall PFGInnerEdge::~PFGInnerEdge(PFGInnerEdge *this)
{
  *(_DWORD *)this = off_96C6F0;
  CustomFree(this);
}


// ===== 51c148 sfc::math::graph::Edge<PFGInnerNode,float>::~Edge() =====
_DWORD *__fastcall sfc::math::graph::Edge<PFGInnerNode,float>::~Edge(_DWORD *a1)
{
  *a1 = off_96C6F0;
  CustomFree(a1);
  return a1;
}


// ===== 51c17c PFGInnerNode::~PFGInnerNode() =====
void __fastcall PFGInnerNode::~PFGInnerNode(PFGInnerNode *this)
{
  *(_DWORD *)this = off_96C778;
  CustomFree(this);
}


// ===== 51c1b0 sfc::math::graph::Node<uint>::~Node() =====
_DWORD *__fastcall sfc::math::graph::Node<unsigned int>::~Node(_DWORD *a1)
{
  *a1 = off_96C778;
  CustomFree(a1);
  return a1;
}


// ===== 51c1e4 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFFloor.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFFloor.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F62D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F62CC = 1056964608;
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


// ===== 51c2c0 PFFloor::_DBG_Draw(void) =====
glitch::video::CMaterial **__fastcall PFFloor::_DBG_Draw(PFFloor *this)
{
  _DWORD *v2; // r5
  int v3; // r6
  int v4; // r2
  int Technique; // r2
  int v6; // r3
  char v7; // r8
  int v8; // r10
  char v9; // r9
  int v10; // r1
  int *v11; // r7
  int *v12; // r4
  int v13; // r9
  void (__fastcall *v14)(_DWORD *, _DWORD *, _DWORD *, int); // r6
  _DWORD *v15; // r0
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r0
  int v19; // r2
  int v20; // r3
  int v22; // r6
  unsigned int v23; // r7
  void (__fastcall *v24)(_DWORD *, int, int); // r3
  _DWORD v25[3]; // [sp+8h] [bp-24h] BYREF
  _DWORD v26[3]; // [sp+14h] [bp-18h] BYREF
  int v27; // [sp+20h] [bp-Ch]
  glitch::video::CMaterial *v28[2]; // [sp+24h] [bp-8h] BYREF

  v2 = *(_DWORD **)(dword_99F73C + 16);
  v3 = v2[55];
  v4 = *(unsigned __int16 *)(v3 + 46);
  if ( v4 == 0xFFFF )
    LOBYTE(v4) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v2[55], 1);
  glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)v28, v3, v4);
  if ( v28[0] )
    Technique = glitch::video::CMaterial::getTechnique(v28[0]);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(v2, v28, Technique, 0);
  v6 = *((_DWORD *)this + 9);
  if ( (v6 & 0x3000000) != 0 )
  {
    v7 = 0;
    LOBYTE(v8) = 127;
    v9 = 0;
  }
  else
  {
    v9 = *((_DWORD *)this + 8) & 1;
    if ( v9 )
    {
      v8 = *((_DWORD *)this + 8) & 2;
      if ( v8 )
      {
        LOBYTE(v8) = -1;
        v9 = 0;
        v7 = -1;
      }
      else if ( (v6 & 2) != 0 )
      {
        v7 = 127;
        v9 = -1;
      }
      else
      {
        if ( (v6 & 1) != 0 )
          LOBYTE(v8) = 127;
        else
          LOBYTE(v8) = -1;
        v7 = v8;
        v9 = v8;
      }
    }
    else
    {
      LOBYTE(v8) = -1;
      v7 = 127;
    }
  }
  v10 = *((_DWORD *)this + 26);
  if ( v10 && *((_DWORD *)this + 27) )
  {
    v22 = 0;
    v23 = 0;
    while ( 1 )
    {
      v24 = *(void (__fastcall **)(_DWORD *, int, int))(*v2 + 36);
      HIBYTE(v27) = -1;
      BYTE2(v27) = v9;
      BYTE1(v27) = v7;
      LOBYTE(v27) = v8;
      v24(v2, v10 + v22, v27);
      ++v23;
      v22 += 36;
      if ( *((_DWORD *)this + 27) <= v23 )
        break;
      v10 = *((_DWORD *)this + 26);
    }
  }
  v11 = *((int **)this + 49);
  v12 = *((int **)this + 48);
  v27 = -16711936;
  while ( v12 != v11 )
  {
    v13 = *v12++;
    if ( v13 )
    {
      v14 = *(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v2 + 28);
      v15 = (_DWORD *)(**(int (__fastcall ***)(int))v13)(v13);
      v16 = v15[3];
      v17 = v15[4];
      v26[0] = v15[2];
      v26[1] = v16;
      v26[2] = v17;
      v18 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v13 + 8))(v13);
      v19 = v18[3];
      v20 = v18[4];
      v25[0] = v18[2];
      v25[1] = v19;
      v25[2] = v20;
      v14(v2, v26, v25, v27);
    }
  }
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v28);
}


// ===== 51c4e8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<uint const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<uint const,PFGInnerEdge *>>,std::allocator<std::pair<uint const,PFGInnerEdge *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 51c520 sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode() =====
int __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode(int a1)
{
  int v1; // r1
  int v3; // r5

  v1 = *(_DWORD *)(a1 + 60);
  *(_DWORD *)a1 = off_96C748;
  if ( v1 )
  {
    v3 = a1 + 44;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_erase(
      a1 + 44,
      *(_DWORD **)(a1 + 48));
    *(_DWORD *)(a1 + 56) = v3;
    *(_DWORD *)(a1 + 60) = 0;
    *(_DWORD *)(a1 + 52) = v3;
    *(_DWORD *)(a1 + 48) = 0;
  }
  return a1;
}


// ===== 51c580 sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode() =====
char *__fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode(char *p)
{
  int v1; // r2
  char *v3; // r6

  v1 = *((_DWORD *)p + 15);
  *(_DWORD *)p = off_96C748;
  if ( v1 )
  {
    v3 = p + 44;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_erase(
      (int)(p + 44),
      *((_DWORD **)p + 12));
    *((_DWORD *)p + 14) = v3;
    *((_DWORD *)p + 15) = 0;
    *((_DWORD *)p + 13) = v3;
    *((_DWORD *)p + 12) = 0;
  }
  *(_DWORD *)p = off_96C778;
  CustomFree(p);
  return p;
}


// ===== 51c5fc std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_erase(
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
      std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 51c634 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_erase(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 51c66c std::vector<PFFloor::InvalidNode,std::allocator<PFFloor::InvalidNode>>::~vector() =====
int __fastcall std::vector<PFFloor::InvalidNode>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 8 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 3);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 51c6cc std::allocator<PFFloor::InvalidNode>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PFFloor::InvalidNode>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x4924924 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 56 * a2;
  if ( 56 * a2 > 0x80 )
    result = CustomAlloc(56 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x38;
  return result;
}


// ===== 51c754 std::allocator<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = CustomAlloc(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 51c7c4 std::allocator<PFGInnerEdge *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PFGInnerEdge *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 51c834 std::vector<PFGInnerEdge *,std::allocator<PFGInnerEdge *>>::_M_insert_overflow(PFGInnerEdge **,PFGInnerEdge * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<PFGInnerEdge *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<PFGInnerEdge *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 51c8fc std::vector<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>,std::allocator<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>>::_M_insert_overflow(std::pair<PFFloor::InvalidNode *,PFGInnerNode *>*,std::pair<PFFloor::InvalidNode *,PFGInnerNode *> const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r7
  char *v11; // r7
  void *v12; // r0
  size_t v13; // r1
  size_t v14; // r3
  size_t v15; // [sp+4h] [bp-4h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 3;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x1FFFFFFF || v5 > v6 )
    v6 = 0x1FFFFFFF;
  v15 = v6;
  v8 = (char *)std::allocator<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_allocate(a1 + 8, v6, &v15);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  *((_DWORD *)v11 + 1) = a3[1];
  v12 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v13 = (*(_DWORD *)(a1 + 8) - (_DWORD)v12) & 0xFFFFFFF8;
    if ( v13 > 0x80 )
      CustomFree(v12);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v13);
  }
  v14 = v15;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v11 + 8;
  *(_DWORD *)(a1 + 8) = &v9[8 * v14];
}


// ===== 51c9d0 std::vector<PFFloor::InvalidNode,std::allocator<PFFloor::InvalidNode>>::push_back(PFFloor::InvalidNode const&) =====
void __fastcall std::vector<PFFloor::InvalidNode>::push_back(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  unsigned int v6; // r2
  unsigned int v7; // r1
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  _DWORD *v10; // r7
  int v11; // r6
  _DWORD *v12; // r12
  int v13; // r1
  _DWORD *v14; // r2
  int v15; // r0
  _DWORD *v16; // r6
  _DWORD *v17; // r0
  int v18; // r3
  size_t v19; // r1
  size_t v20; // r3
  size_t v21; // [sp+4h] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  v3 = (_DWORD *)a1[2];
  if ( v2 == v3 )
  {
    v6 = -1227133513 * (((int)v3 - *a1) >> 3);
    if ( v6 )
      v7 = 1840700270 * (((int)v3 - *a1) >> 3);
    else
      v7 = 1;
    if ( v7 > 0x4924924 || v6 > v7 )
      v7 = 76695844;
    v21 = v7;
    v8 = std::allocator<PFFloor::InvalidNode>::_M_allocate((int)(a1 + 2), v7, &v21);
    v9 = (_DWORD *)*a1;
    v10 = v8;
    v11 = ((int)v3 - *a1) >> 3;
    if ( -1227133513 * v11 > 0 )
    {
      v13 = -1227133513 * v11;
      v14 = v8;
      do
      {
        --v13;
        *v14 = *v9;
        v14[1] = v9[1];
        v14[2] = v9[2];
        v14[3] = v9[3];
        v14[4] = v9[4];
        v14[5] = v9[5];
        v14[6] = v9[6];
        v14[7] = v9[7];
        v14[8] = v9[8];
        v14[9] = v9[9];
        v14[10] = v9[10];
        v14[11] = v9[11];
        v14[12] = v9[12];
        v15 = v9[13];
        v9 += 14;
        v14[13] = v15;
        v14 += 14;
      }
      while ( v13 );
      v12 = &v10[2 * v11];
    }
    else
    {
      v12 = v8;
    }
    v16 = v12 + 14;
    *v12 = *a2;
    v12[1] = a2[1];
    v12[2] = a2[2];
    v12[3] = a2[3];
    v12[4] = a2[4];
    v12[5] = a2[5];
    v12[6] = a2[6];
    v12[7] = a2[7];
    v12[8] = a2[8];
    v12[9] = a2[9];
    v12[10] = a2[10];
    v12[11] = a2[11];
    v12[12] = a2[12];
    v12[13] = a2[13];
    v17 = (_DWORD *)*a1;
    v18 = a1[1];
    if ( v18 != *a1 )
      v18 += -56 * ((383479223 * ((unsigned int)(v18 - 56 - (_DWORD)v17) >> 3)) & 0x1FFFFFFF) - 56;
    if ( v18 )
    {
      v19 = 8 * ((a1[2] - v18) >> 3);
      if ( v19 > 0x80 )
        CustomFree(v17);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v17, v19);
    }
    v20 = v21;
    *a1 = v10;
    a1[1] = v16;
    a1[2] = &v10[14 * v20];
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    v2[3] = a2[3];
    v2[4] = a2[4];
    v2[5] = a2[5];
    v2[6] = a2[6];
    v2[7] = a2[7];
    v2[8] = a2[8];
    v2[9] = a2[9];
    v2[10] = a2[10];
    v2[11] = a2[11];
    v2[12] = a2[12];
    v2[13] = a2[13];
    a1[1] += 56;
  }
}


// ===== 51cca4 PFFloor::~PFFloor() =====
void __fastcall PFFloor::~PFFloor(PFFloor *this)
{
  void *v2; // r0
  _DWORD *v3; // r3
  void *v4; // r0
  size_t v5; // r1
  char *v6; // r0
  size_t v7; // r1
  char *v8; // r0
  size_t v9; // r1

  v2 = *((void **)this + 26);
  *(_DWORD *)this = off_96C7A0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 26) = 0;
  }
  v3 = *((_DWORD **)this + 16);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 12)));
    *((_DWORD *)this + 16) = 0;
  }
  v4 = *((void **)this + 48);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 50) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  std::vector<Point3D<float>>::~vector((int)this + 180);
  std::vector<PFFloor::InvalidNode>::~vector((int)this + 168);
  if ( *((_DWORD *)this + 40) )
  {
    std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_erase(
      (int)this + 144,
      *((_DWORD **)this + 37));
    *((_DWORD *)this + 39) = (char *)this + 144;
    *((_DWORD *)this + 40) = 0;
    *((_DWORD *)this + 38) = (char *)this + 144;
    *((_DWORD *)this + 37) = 0;
  }
  if ( *((_DWORD *)this + 34) )
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_erase(
      (int)this + 120,
      *((_DWORD **)this + 31));
    *((_DWORD *)this + 33) = (char *)this + 120;
    *((_DWORD *)this + 34) = 0;
    *((_DWORD *)this + 32) = (char *)this + 120;
    *((_DWORD *)this + 31) = 0;
  }
  v6 = *((char **)this + 15);
  if ( v6 != (char *)this + 40 && v6 )
  {
    v7 = *((_DWORD *)this + 10) - (_DWORD)v6;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  v8 = *((char **)this + 6);
  if ( v8 != (char *)this + 4 && v8 )
  {
    v9 = *((_DWORD *)this + 1) - (_DWORD)v8;
    if ( v9 > 0x80 )
      CustomFree(v8);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
  }
}


// ===== 51ce20 PFFloor::~PFFloor() =====
void __fastcall PFFloor::~PFFloor(PFFloor *this)
{
  PFFloor::~PFFloor(this);
  CustomFree(this);
}


// ===== 51ce3c PFFloor::~PFFloor() =====
void __fastcall PFFloor::~PFFloor(PFFloor *this)
{
  void *v2; // r0
  _DWORD *v3; // r3
  void *v4; // r0
  size_t v5; // r1
  char *v6; // r0
  size_t v7; // r1
  char *v8; // r0
  size_t v9; // r1

  v2 = *((void **)this + 26);
  *(_DWORD *)this = off_96C7A0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 26) = 0;
  }
  v3 = *((_DWORD **)this + 16);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 12)));
    *((_DWORD *)this + 16) = 0;
  }
  v4 = *((void **)this + 48);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 50) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  std::vector<Point3D<float>>::~vector((int)this + 180);
  std::vector<PFFloor::InvalidNode>::~vector((int)this + 168);
  if ( *((_DWORD *)this + 40) )
  {
    std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_erase(
      (int)this + 144,
      *((_DWORD **)this + 37));
    *((_DWORD *)this + 39) = (char *)this + 144;
    *((_DWORD *)this + 40) = 0;
    *((_DWORD *)this + 38) = (char *)this + 144;
    *((_DWORD *)this + 37) = 0;
  }
  if ( *((_DWORD *)this + 34) )
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_erase(
      (int)this + 120,
      *((_DWORD **)this + 31));
    *((_DWORD *)this + 33) = (char *)this + 120;
    *((_DWORD *)this + 34) = 0;
    *((_DWORD *)this + 32) = (char *)this + 120;
    *((_DWORD *)this + 31) = 0;
  }
  v6 = *((char **)this + 15);
  if ( v6 != (char *)this + 40 && v6 )
  {
    v7 = *((_DWORD *)this + 10) - (_DWORD)v6;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  v8 = *((char **)this + 6);
  if ( v8 != (char *)this + 4 && v8 )
  {
    v9 = *((_DWORD *)this + 1) - (_DWORD)v8;
    if ( v9 > 0x80 )
      CustomFree(v8);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
  }
}


// ===== 51cfb8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char const*>(
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
  if ( v4 != a1 )
  {
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
LABEL_35:
      if ( v16 < 0 )
        return a1;
    }
    else
    {
      if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)v12) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v19._M_buffers._M_end_of_storage - (char *)v12);
        goto LABEL_35;
      }
      CustomFree(v12);
      if ( v16 < 0 )
        return a1;
    }
  }
  return v4;
}


// ===== 51d1b4 PFFloor::PFFloor(char const*,PFRoom *,PFGOuterGraph *,PFGInnerGraph *,uint) =====
int __fastcall PFFloor::PFFloor(int a1, char *a2, int a3, int a4, int a5, int a6)
{
  int v9; // r3

  *(_DWORD *)a1 = off_96C7A0;
  std::string::string(a1 + 4, a2);
  *(_DWORD *)(a1 + 28) = a3;
  *(_DWORD *)(a1 + 32) = a6;
  *(_DWORD *)(a1 + 56) = a1 + 40;
  *(_DWORD *)(a1 + 60) = a1 + 40;
  *(_DWORD *)(a1 + 36) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 40, 0x10u);
  **(_BYTE **)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 116) = a5;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = a4;
  *(_DWORD *)(a1 + 124) = 0;
  *(_BYTE *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 132) = a1 + 120;
  *(_DWORD *)(a1 + 128) = a1 + 120;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_BYTE *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 156) = a1 + 144;
  *(_DWORD *)(a1 + 152) = a1 + 144;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  v9 = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  if ( !v9 )
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
        "m_room",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        34);
      a4 = *(_DWORD *)(a1 + 112);
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
        "m_oGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        35);
    }
  }
  if ( !*(_DWORD *)(a1 + 116) )
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
        "m_iGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        36);
    }
  }
  return a1;
}


// ===== 51d40c PFFloor::PFFloor(char const*,PFRoom *,PFGOuterGraph *,PFGInnerGraph *,uint) =====
int __fastcall PFFloor::PFFloor(int a1, char *a2, int a3, int a4, int a5, int a6)
{
  int v9; // r3

  *(_DWORD *)a1 = off_96C7A0;
  std::string::string((std::string *)(a1 + 4), a2);
  *(_DWORD *)(a1 + 28) = a3;
  *(_DWORD *)(a1 + 32) = a6;
  *(_DWORD *)(a1 + 56) = a1 + 40;
  *(_DWORD *)(a1 + 60) = a1 + 40;
  *(_DWORD *)(a1 + 36) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 40), 0x10u);
  **(_BYTE **)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 116) = a5;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = a4;
  *(_DWORD *)(a1 + 124) = 0;
  *(_BYTE *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 132) = a1 + 120;
  *(_DWORD *)(a1 + 128) = a1 + 120;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_BYTE *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 156) = a1 + 144;
  *(_DWORD *)(a1 + 152) = a1 + 144;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  v9 = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  if ( !v9 )
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
        "m_room",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        34);
      a4 = *(_DWORD *)(a1 + 112);
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
        "m_oGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        35);
    }
  }
  if ( !*(_DWORD *)(a1 + 116) )
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
        "m_iGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        36);
    }
  }
  return a1;
}


// ===== 51d664 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 51d684 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::allocate();
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


// ===== 51d7a8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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


// ===== 51d930 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 51dca4 sfc::math::graph::GraphSparse<PFGInnerEdge>::addNode(uint) =====
int __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::addNode(int a1, unsigned int a2)
{
  _DWORD *v2; // r3
  _DWORD *v5; // r6
  _DWORD *v6; // r1
  unsigned int v7; // r2
  bool v8; // cc
  _DWORD *v9; // r2
  int v11; // r0
  int v12; // r5
  int v13; // r3
  _DWORD *v14; // r12
  _DWORD *v15; // r2
  unsigned int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  unsigned int v20[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v21; // [sp+8h] [bp-8h] BYREF
  _DWORD *v22; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD **)(a1 + 8);
  v5 = (_DWORD *)(a1 + 4);
  if ( !v2 )
    goto LABEL_15;
  v6 = (_DWORD *)(a1 + 4);
  while ( 1 )
  {
    v7 = v2[4];
    v8 = a2 > v7;
    if ( a2 <= v7 )
      v9 = (_DWORD *)v2[2];
    else
      v9 = (_DWORD *)v2[3];
    if ( v8 )
      v2 = v6;
    v6 = v2;
    if ( !v9 )
      break;
    v2 = v9;
  }
  if ( v5 == v2 )
    goto LABEL_16;
  if ( a2 < v2[4] )
LABEL_15:
    v2 = (_DWORD *)(a1 + 4);
  if ( v5 != v2 )
    return v2[5];
LABEL_16:
  v11 = operator new(0x44u, 0);
  *(_DWORD *)(v11 + 4) = a2;
  *(_DWORD *)v11 = off_96C760;
  v12 = v11;
  *(_DWORD *)(v11 + 8) = Vec3f_Origin;
  *(_DWORD *)(v11 + 12) = dword_99F858;
  *(_DWORD *)(v11 + 16) = dword_99F85C;
  *(_DWORD *)(v11 + 20) = Vec3f_Origin;
  *(_DWORD *)(v11 + 24) = dword_99F858;
  v13 = dword_99F85C;
  *(_DWORD *)(v11 + 36) = 0;
  *(_DWORD *)v11 = off_96C748;
  *(_DWORD *)(v11 + 28) = v13;
  *(_DWORD *)(v11 + 32) = 0;
  *(_DWORD *)(v11 + 40) = 0;
  *(_DWORD *)(v11 + 48) = 0;
  *(_BYTE *)(v11 + 44) = 0;
  *(_DWORD *)(v11 + 56) = v11 + 44;
  *(_DWORD *)(v11 + 60) = 0;
  *(_DWORD *)(v11 + 52) = v11 + 44;
  v14 = *(_DWORD **)(a1 + 8);
  if ( v14 )
  {
    v15 = v5;
    while ( 1 )
    {
      v16 = v14[4];
      v17 = a2 > v16;
      if ( a2 <= v16 )
        v18 = (_DWORD *)v14[2];
      else
        v18 = (_DWORD *)v14[3];
      if ( v17 )
        v14 = v15;
      v15 = v14;
      if ( !v18 )
        break;
      v14 = v18;
    }
  }
  else
  {
    v14 = v5;
  }
  if ( v5 == v14 || (v19 = v14, a2 < v14[4]) )
  {
    v20[0] = a2;
    v20[1] = 0;
    v22 = v14;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::insert_unique(
      &v21,
      v5,
      &v22,
      v20);
    v19 = v21;
  }
  v19[5] = v12;
  return v12;
}


// ===== 51de58 std::allocator<std::priv::_Rb_tree_node<PFFloor *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<PFFloor *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 51de78 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_insert(std::priv::_Rb_tree_node_base *,PFFloor * const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_insert(
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
    v8 = std::allocator<std::priv::_Rb_tree_node<PFFloor *>>::allocate();
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
    v7 = std::allocator<std::priv::_Rb_tree_node<PFFloor *>>::allocate();
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
    v13 = std::allocator<std::priv::_Rb_tree_node<PFFloor *>>::allocate();
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


// ===== 51df98 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::insert_unique(PFFloor * const&) =====
int __fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::insert_unique(
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
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_insert(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::_M_insert(
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


// ===== 51e118 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,PFGInnerEdge *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,PFGInnerEdge *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 51e138 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<uint const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<uint const,PFGInnerEdge *>>,std::allocator<std::pair<uint const,PFGInnerEdge *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,PFGInnerEdge *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,PFGInnerEdge *>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,PFGInnerEdge *>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,PFGInnerEdge *>>>::allocate();
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


// ===== 51e25c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<uint const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<uint const,PFGInnerEdge *>>,std::allocator<std::pair<uint const,PFGInnerEdge *>>>::insert_unique(std::pair<uint const,PFGInnerEdge *> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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


// ===== 51e3e4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<uint const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<uint const,PFGInnerEdge *>>,std::allocator<std::pair<uint const,PFGInnerEdge *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,PFGInnerEdge *>,std::priv::_MapTraitsT<std::pair<uint const,PFGInnerEdge *>>>,std::pair<uint const,PFGInnerEdge *> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 51e758 sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(uint,uint) =====
_DWORD *__fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(int a1, unsigned int a2, unsigned int a3)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r0
  _DWORD *i; // r7
  _DWORD *v6; // r12
  unsigned int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r1
  unsigned int v11; // r3
  bool v12; // cf
  _DWORD *v13; // r3
  int v14; // r5
  unsigned int v15; // r0
  _DWORD *v16; // r3
  _DWORD *v17; // r5
  _DWORD *v18; // r1
  unsigned int v19; // r2
  bool v20; // cc
  _DWORD *v21; // r2
  int v22; // r8
  int v24; // r10
  _DWORD *v25; // r0
  _DWORD *v26; // r5
  int v27; // r6
  unsigned int v28; // r0
  _DWORD *v29; // r12
  _DWORD *v30; // r1
  _DWORD *v31; // r2
  unsigned int v32; // r3
  bool v33; // cc
  _DWORD *v34; // r3
  _DWORD *v35; // r3
  unsigned int v36[2]; // [sp+0h] [bp-14h] BYREF
  _DWORD *v37; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v38; // [sp+Ch] [bp-8h] BYREF

  v3 = *(_DWORD **)(a1 + 8);
  v4 = (_DWORD *)(a1 + 4);
  if ( v3 )
  {
    v6 = v4;
    for ( i = v3; ; i = v9 )
    {
      v7 = i[4];
      v8 = a2 > v7;
      if ( a2 <= v7 )
        v9 = (_DWORD *)i[2];
      else
        v9 = (_DWORD *)i[3];
      if ( v8 )
        i = v6;
      v6 = i;
      if ( !v9 )
        break;
    }
    if ( v4 != i && a2 < i[4] )
      i = v4;
    v10 = v4;
    while ( 1 )
    {
      v11 = v3[4];
      v12 = v11 >= a3;
      if ( v11 >= a3 )
        v13 = (_DWORD *)v3[2];
      else
        v13 = (_DWORD *)v3[3];
      if ( !v12 )
        v3 = v10;
      v10 = v3;
      if ( !v13 )
        break;
      v3 = v13;
    }
    if ( v4 != v3 && v3[4] > a3 )
      v3 = v4;
  }
  else
  {
    i = v4;
    v3 = v4;
  }
  if ( v4 == i || v4 == v3 )
    return nullptr;
  v14 = i[5];
  v15 = (**(int (__fastcall ***)(_DWORD))v3[5])(v3[5]);
  v16 = *(_DWORD **)(v14 + 48);
  v17 = (_DWORD *)(v14 + 44);
  if ( !v16 )
    goto LABEL_39;
  v18 = v17;
  while ( 1 )
  {
    v19 = v16[4];
    v20 = v15 > v19;
    if ( v15 <= v19 )
      v21 = (_DWORD *)v16[2];
    else
      v21 = (_DWORD *)v16[3];
    if ( v20 )
      v16 = v18;
    v18 = v16;
    if ( !v21 )
      break;
    v16 = v21;
  }
  if ( v17 != v16 && v15 < v16[4] )
LABEL_39:
    v16 = v17;
  v22 = i[5];
  if ( v16 != (_DWORD *)(v22 + 44) )
    return (_DWORD *)v16[5];
  v24 = v3[5];
  v25 = (_DWORD *)operator new(0x18u, 0);
  v25[3] = 1065353216;
  v25[1] = v22;
  v25[2] = v24;
  *v25 = off_96C6B8;
  v25[5] = 0;
  v25[4] = 0;
  v26 = v25;
  v27 = i[5];
  v28 = (**(int (__fastcall ***)(_DWORD))v3[5])(v3[5]);
  v29 = *(_DWORD **)(v27 + 48);
  v30 = (_DWORD *)(v27 + 44);
  if ( v29 )
  {
    v31 = (_DWORD *)(v27 + 44);
    while ( 1 )
    {
      v32 = v29[4];
      v33 = v28 > v32;
      if ( v28 <= v32 )
        v34 = (_DWORD *)v29[2];
      else
        v34 = (_DWORD *)v29[3];
      if ( v33 )
        v29 = v31;
      v31 = v29;
      if ( !v34 )
        break;
      v29 = v34;
    }
  }
  else
  {
    v29 = (_DWORD *)(v27 + 44);
  }
  if ( v30 == v29 || (v35 = v29, v28 < v29[4]) )
  {
    v36[0] = v28;
    v36[1] = 0;
    v38 = v29;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::insert_unique(
      &v37,
      v30,
      &v38,
      v36);
    v35 = v37;
  }
  v35[5] = v26;
  return v26;
}


// ===== 51e98c PFFloor::_CreateEdge(PFGInnerNode *,PFGInnerNode *) =====
float *__fastcall PFFloor::_CreateEdge(PFFloor *this, PFGInnerNode *a2, PFGInnerNode *a3)
{
  float *v5; // r6
  bool v7; // zf
  int v8; // r7
  unsigned int v9; // r6
  unsigned int v10; // r0
  float v11; // r0
  float v12; // r10
  float v13; // r8
  float v14; // r0
  float v15; // r5
  float v16; // r4

  if ( (*((_DWORD *)this + 8) & 0x2000000) != 0 )
    return nullptr;
  v7 = a2 == nullptr;
  if ( a2 )
    v7 = a3 == nullptr;
  if ( v7 )
    return nullptr;
  v8 = *((_DWORD *)this + 29);
  v9 = (**(int (__fastcall ***)(PFGInnerNode *))a2)(a2);
  v10 = (**(int (__fastcall ***)(PFGInnerNode *))a3)(a3);
  v5 = (float *)sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(v8, v9, v10);
  v12 = *((float *)a3 + 3) - *((float *)a2 + 3);
  v13 = *((float *)a3 + 4) - *((float *)a2 + 4);
  v11 = *((float *)a3 + 2) - *((float *)a2 + 2);
  v14 = sqrtf((float)((float)(v11 * v11) + (float)(v12 * v12)) + (float)(v13 * v13));
  v5[4] = v14;
  v15 = *((float *)a3 + 8);
  v16 = *((float *)a2 + 8);
  if ( v15 >= v16 )
    v15 = v16;
  v5[5] = v15;
  (*(void (__fastcall **)(float *, float))(*(_DWORD *)v5 + 20))(v5, COERCE_FLOAT(LODWORD(v14)));
  return v5;
}


// ===== 51eab4 std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const,PFGInnerNode *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const,PFGInnerNode *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 32;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 51ead4 std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<CompPos const,PFGInnerNode *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        float *a4,
        _BOOL4 a5,
        int a6)
{
  bool v10; // r7
  _DWORD *v11; // r0
  _DWORD *v12; // r7
  int v13; // r2
  _DWORD *v15; // r0
  int v16; // r2
  int v17; // r2
  float v18; // r10
  float v19; // r9

  v10 = a5;
  if ( a2 == (_DWORD *)a3 )
  {
    v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const,PFGInnerNode *>>>::allocate();
    v12[4] = *(_DWORD *)a4;
    v12[5] = *((_DWORD *)a4 + 1);
    v12[6] = *((_DWORD *)a4 + 2);
    v17 = *((_DWORD *)a4 + 3);
    v12[3] = 0;
    v12[2] = 0;
    v12[7] = v17;
    a2[2] = v12;
    a2[1] = v12;
    a2[3] = v12;
  }
  else
  {
    if ( a6 )
      goto LABEL_3;
    if ( a5 )
      goto LABEL_7;
    v18 = *(float *)(a3 + 16);
    v19 = *a4;
    if ( fabs(*a4 - v18) >= 0.0001 || (v19 = a4[1], v18 = *(float *)(a3 + 20), fabs(v19 - v18) >= 0.0001) )
    {
      if ( v19 < v18 )
        v10 = 1;
    }
    else
    {
      v10 = a4[2] < *(float *)(a3 + 24);
    }
    if ( v10 )
    {
LABEL_7:
      v15 = std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const,PFGInnerNode *>>>::allocate();
      v12 = v15;
      v15[4] = *(_DWORD *)a4;
      v15[5] = *((_DWORD *)a4 + 1);
      v15[6] = *((_DWORD *)a4 + 2);
      v16 = *((_DWORD *)a4 + 3);
      v15[3] = 0;
      v15[2] = 0;
      v15[7] = v16;
      *(_DWORD *)(a3 + 8) = v15;
      if ( a3 == a2[2] )
        a2[2] = v15;
    }
    else
    {
LABEL_3:
      v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const,PFGInnerNode *>>>::allocate();
      v12 = v11;
      v11[4] = *(_DWORD *)a4;
      v11[5] = *((_DWORD *)a4 + 1);
      v11[6] = *((_DWORD *)a4 + 2);
      v13 = *((_DWORD *)a4 + 3);
      v11[3] = 0;
      v11[2] = 0;
      v11[7] = v13;
      *(_DWORD *)(a3 + 12) = v11;
      if ( a3 == a2[3] )
        a2[3] = v11;
    }
  }
  v12[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v12, a2 + 1);
  ++a2[4];
  *a1 = v12;
  return a1;
}


// ===== 51eca8 std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(std::pair<CompPos const,PFGInnerNode *> const&) =====
int __fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
        int a1,
        _DWORD *a2,
        float *a3)
{
  int v3; // r5
  int v6; // r12
  float v7; // r8
  float v8; // r7
  int v9; // r11
  int v10; // r2
  int v11; // r3
  int v12; // r10
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // [sp+10h] [bp-Ch] BYREF
  int v18; // [sp+14h] [bp-8h] BYREF

  v3 = a2[1];
  if ( !v3 )
  {
    v6 = (int)a2;
    goto LABEL_21;
  }
  v7 = *a3;
  while ( 1 )
  {
    v8 = *(float *)(v3 + 16);
    v9 = v3;
    if ( fabs(v7 - v8) < 0.0001 )
      break;
    if ( v8 > v7 )
      goto LABEL_10;
LABEL_7:
    v10 = 0;
    v11 = *(_DWORD *)(v3 + 12);
    if ( !v11 )
      goto LABEL_11;
LABEL_8:
    v3 = v11;
  }
  if ( fabs(a3[1] - *(float *)(v3 + 20)) < 0.0001 )
  {
    if ( a3[2] < *(float *)(v3 + 24) )
      goto LABEL_10;
    goto LABEL_7;
  }
  if ( a3[1] >= *(float *)(v3 + 20) )
    goto LABEL_7;
LABEL_10:
  v10 = 1;
  v11 = *(_DWORD *)(v3 + 8);
  if ( v11 )
    goto LABEL_8;
LABEL_11:
  if ( !v10 )
  {
    v12 = v3;
    goto LABEL_14;
  }
  v6 = v3;
LABEL_21:
  if ( v6 == a2[2] )
  {
    std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
      &v18,
      a2,
      v6,
      a3,
      v6,
      0);
    v16 = v18;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v16;
    return a1;
  }
  if ( !*(_BYTE *)v6 && v6 == *(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) )
  {
    v9 = *(_DWORD *)(v6 + 12);
    v3 = v6;
    v7 = *a3;
    v8 = *(float *)(v9 + 16);
    v12 = v9;
  }
  else
  {
    v9 = *(_DWORD *)(v6 + 8);
    if ( v9 )
    {
      while ( *(_DWORD *)(v9 + 12) )
        v9 = *(_DWORD *)(v9 + 12);
LABEL_28:
      v3 = v6;
      v7 = *a3;
      v8 = *(float *)(v9 + 16);
      v12 = v9;
    }
    else
    {
      v15 = *(_DWORD *)(v6 + 4);
      v3 = *(_DWORD *)(v15 + 8);
      if ( v3 != v6 )
      {
        v9 = *(_DWORD *)(v6 + 4);
        goto LABEL_28;
      }
      while ( 1 )
      {
        v9 = *(_DWORD *)(v15 + 4);
        if ( *(_DWORD *)(v9 + 8) != v15 )
          break;
        v15 = *(_DWORD *)(v15 + 4);
      }
      v7 = *a3;
      v8 = *(float *)(v9 + 16);
      v12 = *(_DWORD *)(v15 + 4);
    }
  }
LABEL_14:
  if ( fabs(v8 - v7) >= 0.0001 )
  {
    if ( v7 > v8 )
      goto LABEL_30;
LABEL_17:
    *(_DWORD *)a1 = v12;
    *(_BYTE *)(a1 + 4) = 0;
    return a1;
  }
  if ( fabs(*(float *)(v9 + 20) - a3[1]) >= 0.0001 )
  {
    if ( *(float *)(v9 + 20) < a3[1] )
      goto LABEL_30;
    goto LABEL_17;
  }
  if ( *(float *)(v9 + 24) >= a3[2] )
    goto LABEL_17;
LABEL_30:
  std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
    &v17,
    a2,
    v3,
    a3,
    0,
    0);
  v14 = v17;
  *(_BYTE *)(a1 + 4) = 1;
  *(_DWORD *)a1 = v14;
  return a1;
}


// ===== 51efb8 std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<CompPos const,PFGInnerNode *>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>>,std::pair<CompPos const,PFGInnerNode *> const&) =====
int *__fastcall std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        float *a4)
{
  int v4; // r5
  int v7; // r4
  float v8; // r10
  float v9; // r9
  int v10; // r11
  bool v11; // r3
  int v12; // r3
  int i; // r4
  bool v14; // r3
  float v16; // r9
  float v17; // r4
  bool v18; // r10
  int v19; // r10
  int v20; // r2
  bool v21; // r3
  float *v22; // r4
  float v23; // r10
  float v24; // r9
  char v25; // r3
  int v26; // r3
  int v27; // r3
  float v28; // [sp+Ch] [bp-30h]
  float v29; // [sp+Ch] [bp-30h]
  float v30; // [sp+Ch] [bp-30h]
  float v31; // [sp+10h] [bp-2Ch]
  int v32; // [sp+18h] [bp-24h] BYREF
  int v33; // [sp+20h] [bp-1Ch] BYREF
  int v34; // [sp+28h] [bp-14h] BYREF
  int v35[3]; // [sp+30h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
        (int)v35,
        a2,
        a4);
      *a1 = v35[0];
      return a1;
    }
    v16 = *a4;
    v17 = *(float *)(v4 + 16);
    if ( fabs(*a4 - v17) >= 0.0001 )
    {
      v18 = 0;
      if ( v16 >= v17 )
        goto LABEL_52;
    }
    else
    {
      if ( fabs(a4[1] - *(float *)(v4 + 20)) >= 0.0001 )
      {
        v18 = a4[1] < *(float *)(v4 + 20);
LABEL_52:
        if ( v18 )
          goto LABEL_17;
        if ( fabs(v17 - v16) >= 0.0001 )
        {
          if ( v16 <= v17 )
            goto LABEL_56;
        }
        else
        {
          if ( fabs(*(float *)(v4 + 20) - a4[1]) >= 0.0001 )
          {
            v18 = *(float *)(v4 + 20) < a4[1];
LABEL_56:
            if ( !v18 )
              goto LABEL_79;
            v19 = *(_DWORD *)(v4 + 12);
            if ( v19 )
            {
              for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
                ;
            }
            else
            {
              v27 = *(_DWORD *)(v4 + 4);
              if ( v4 == *(_DWORD *)(v27 + 12) )
              {
                do
                {
                  i = v27;
                  v27 = *(_DWORD *)(v27 + 4);
                }
                while ( i == *(_DWORD *)(v27 + 12) );
              }
              else
              {
                i = *a3;
              }
              if ( v27 != *(_DWORD *)(i + 12) )
                i = v27;
            }
            if ( a2 == (_DWORD *)i )
            {
              v20 = *a3;
LABEL_74:
              std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
                a1,
                a2,
                v20,
                a4,
                0,
                v4);
              return a1;
            }
            if ( fabs(v16 - *(float *)(i + 16)) >= 0.0001 )
            {
              v21 = 0;
              if ( v16 >= *(float *)(i + 16) )
                goto LABEL_66;
            }
            else
            {
              if ( fabs(a4[1] - *(float *)(i + 20)) >= 0.0001 )
              {
                v21 = a4[1] < *(float *)(i + 20);
LABEL_66:
                if ( !v21 )
                {
                  std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
                    (int)&v34,
                    a2,
                    a4);
                  *a1 = v34;
                  return a1;
                }
                if ( v19 )
                  goto LABEL_33;
                goto LABEL_68;
              }
              v21 = 0;
              if ( a4[2] >= *(float *)(i + 24) )
                goto LABEL_66;
            }
            v21 = 1;
            goto LABEL_66;
          }
          if ( *(float *)(v4 + 24) >= a4[2] )
            goto LABEL_56;
        }
        v18 = 1;
        goto LABEL_56;
      }
      v18 = 0;
      if ( a4[2] >= *(float *)(v4 + 24) )
        goto LABEL_52;
    }
    v18 = 1;
    goto LABEL_52;
  }
  if ( (_DWORD *)v4 == a2 )
  {
    v22 = *(float **)(v4 + 12);
    v23 = *a4;
    v24 = v22[4];
    if ( fabs(v24 - *a4) >= 0.0001 || (v24 = v22[5], v23 = a4[1], fabs(v24 - v23) >= 0.0001) )
    {
      v25 = 0;
      if ( v24 >= v23 )
        goto LABEL_72;
    }
    else
    {
      v25 = 0;
      if ( v22[6] >= a4[2] )
      {
LABEL_72:
        if ( !v25 )
        {
          std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
            (int)&v33,
            a2,
            a4);
          *a1 = v33;
          return a1;
        }
        v20 = *(_DWORD *)(v4 + 12);
        goto LABEL_74;
      }
    }
    v25 = 1;
    goto LABEL_72;
  }
  if ( !*(_BYTE *)v4 )
  {
    if ( v4 == *(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) )
    {
      v7 = *(_DWORD *)(v4 + 12);
      goto LABEL_8;
    }
    v7 = *(_DWORD *)(v4 + 8);
    if ( !v7 )
      goto LABEL_37;
LABEL_7:
    while ( *(_DWORD *)(v7 + 12) )
      v7 = *(_DWORD *)(v7 + 12);
    goto LABEL_8;
  }
  v7 = *(_DWORD *)(v4 + 8);
  if ( v7 )
    goto LABEL_7;
LABEL_37:
  v7 = *(_DWORD *)(v4 + 4);
  if ( v4 == *(_DWORD *)(v7 + 8) )
  {
    while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
      v7 = *(_DWORD *)(v7 + 4);
    v7 = *(_DWORD *)(v7 + 4);
  }
LABEL_8:
  v8 = *a4;
  v9 = *(float *)(v4 + 16);
  if ( fabs(*a4 - v9) >= 0.0001 )
  {
    if ( v8 >= v9 )
      goto LABEL_11;
  }
  else
  {
    v28 = *(float *)(v4 + 20);
    if ( fabs(a4[1] - v28) >= 0.0001 )
    {
      if ( a4[1] >= v28 )
        goto LABEL_11;
    }
    else if ( a4[2] >= *(float *)(v4 + 24) )
    {
LABEL_11:
      v10 = 0;
      goto LABEL_20;
    }
  }
  v10 = 1;
  v29 = *(float *)(v7 + 16);
  if ( fabs(v29 - v8) >= 0.0001 )
  {
    v11 = 0;
    if ( v8 <= v29 )
      goto LABEL_15;
LABEL_43:
    v11 = 1;
    goto LABEL_15;
  }
  v31 = a4[1];
  if ( fabs(*(float *)(v7 + 20) - v31) >= 0.0001 )
  {
    v11 = *(float *)(v7 + 20) < v31;
    goto LABEL_15;
  }
  v11 = 0;
  if ( *(float *)(v7 + 24) < a4[2] )
    goto LABEL_43;
LABEL_15:
  if ( !v11 )
  {
LABEL_20:
    v12 = *(_DWORD *)(v4 + 12);
    if ( v12 )
    {
      do
      {
        i = v12;
        v12 = *(_DWORD *)(v12 + 8);
      }
      while ( v12 );
    }
    else
    {
      v26 = *(_DWORD *)(v4 + 4);
      if ( v4 == *(_DWORD *)(v26 + 12) )
      {
        do
        {
          i = v26;
          v26 = *(_DWORD *)(v26 + 4);
        }
        while ( i == *(_DWORD *)(v26 + 12) );
      }
      else
      {
        i = *a3;
      }
      if ( v26 != *(_DWORD *)(i + 12) )
        i = v26;
    }
    if ( v10 )
      goto LABEL_46;
    if ( fabs(v9 - v8) >= 0.0001 )
    {
      if ( v8 <= v9 )
        goto LABEL_26;
    }
    else
    {
      v30 = a4[1];
      if ( fabs(*(float *)(v4 + 20) - v30) >= 0.0001 )
      {
        LOBYTE(v10) = *(float *)(v4 + 20) < v30;
LABEL_26:
        if ( (_BYTE)v10 )
        {
          if ( a2 == (_DWORD *)i )
            goto LABEL_32;
          if ( fabs(v8 - *(float *)(i + 16)) >= 0.0001 )
          {
            v14 = 0;
            if ( v8 >= *(float *)(i + 16) )
              goto LABEL_31;
          }
          else
          {
            if ( fabs(a4[1] - *(float *)(i + 20)) >= 0.0001 )
            {
              v14 = a4[1] < *(float *)(i + 20);
LABEL_31:
              if ( v14 )
              {
LABEL_32:
                if ( *(_DWORD *)(v4 + 12) )
                {
LABEL_33:
                  std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
                    a1,
                    a2,
                    i,
                    a4,
                    i,
                    0);
                  return a1;
                }
LABEL_68:
                std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
                  a1,
                  a2,
                  v4,
                  a4,
                  0,
                  v4);
                return a1;
              }
LABEL_46:
              std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
                (int)&v32,
                a2,
                a4);
              *a1 = v32;
              return a1;
            }
            v14 = 0;
            if ( a4[2] >= *(float *)(i + 24) )
              goto LABEL_31;
          }
          v14 = 1;
          goto LABEL_31;
        }
LABEL_79:
        *a1 = v4;
        return a1;
      }
      if ( *(float *)(v4 + 24) >= a4[2] )
        goto LABEL_26;
    }
    LOBYTE(v10) = 1;
    goto LABEL_26;
  }
  if ( !*(_DWORD *)(v7 + 12) )
  {
    std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
      a1,
      a2,
      v7,
      a4,
      0,
      v7);
    return a1;
  }
LABEL_17:
  std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_insert(
    a1,
    a2,
    v4,
    a4,
    v4,
    0);
  return a1;
}


// ===== 51f848 std::map<CompPos,PFGInnerNode *,std::less<CompPos>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::operator[]<CompPos>(CompPos const&) =====
int __fastcall std::map<CompPos,PFGInnerNode *>::operator[]<CompPos>(_DWORD *a1, float *a2)
{
  int v2; // r4
  float v3; // r5
  _DWORD *v4; // r7
  int v5; // r3
  int v6; // r6
  bool v7; // r3
  float v8; // lr
  float v10[4]; // [sp+0h] [bp-18h] BYREF
  int v11; // [sp+10h] [bp-8h] BYREF
  int v12; // [sp+14h] [bp-4h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      if ( fabs(*(float *)(v2 + 16) - v3) >= 0.0001 )
      {
        if ( *(float *)(v2 + 16) >= v3 )
          goto LABEL_6;
      }
      else if ( fabs(*(float *)(v2 + 20) - a2[1]) >= 0.0001 )
      {
        if ( *(float *)(v2 + 20) >= a2[1] )
        {
LABEL_6:
          v5 = *(_DWORD *)(v2 + 8);
          if ( !v5 )
            goto LABEL_10;
          goto LABEL_7;
        }
      }
      else if ( *(float *)(v2 + 24) >= a2[2] )
      {
        goto LABEL_6;
      }
      v5 = *(_DWORD *)(v2 + 12);
      v2 = (int)v4;
      if ( !v5 )
        goto LABEL_10;
LABEL_7:
      v4 = (_DWORD *)v2;
      v2 = v5;
    }
  }
  v3 = *a2;
  v2 = (int)a1;
LABEL_10:
  if ( a1 == (_DWORD *)v2
    || ((v6 = v2, fabs(v3 - *(float *)(v2 + 16)) >= 0.0001)
      ? (v7 = v3 < *(float *)(v2 + 16))
      : fabs(a2[1] - *(float *)(v2 + 20)) >= 0.0001
      ? (v7 = a2[1] < *(float *)(v2 + 20))
      : (v7 = a2[2] < *(float *)(v2 + 24)),
        v7) )
  {
    v8 = a2[1];
    v10[2] = a2[2];
    v10[0] = v3;
    v10[1] = v8;
    v10[3] = 0.0;
    v11 = v2;
    std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::insert_unique(
      &v12,
      a1,
      &v11,
      v10);
    v6 = v12;
  }
  return v6 + 28;
}


// ===== 51fa64 PFFloor::_CreateNode(Point3D<float> const&,Point3D<float> const&,Point3D<float> const&,bool) =====
int __fastcall PFFloor::_CreateNode(_DWORD *a1, float *a2, float *a3, float *a4, char a5)
{
  float v9; // r1
  float v10; // r0
  float v11; // r10
  float *v12; // r0
  int v13; // r8
  float v15; // r10
  float v16; // r9
  float v17; // r4
  float v18; // r8
  int v19; // r3
  unsigned int v20; // r1
  int *v21; // r0
  int v22; // r3
  int v23; // r1
  float v24; // r0
  float v25; // [sp+4h] [bp-50h]
  float v26; // [sp+Ch] [bp-48h]
  float v27[3]; // [sp+14h] [bp-40h] BYREF
  float v28[3]; // [sp+20h] [bp-34h] BYREF
  float v29[3]; // [sp+2Ch] [bp-28h] BYREF
  float v30; // [sp+38h] [bp-1Ch] BYREF
  float v31; // [sp+3Ch] [bp-18h]
  float v32; // [sp+40h] [bp-14h]
  float v33; // [sp+44h] [bp-10h] BYREF
  float v34; // [sp+48h] [bp-Ch]
  float v35; // [sp+4Ch] [bp-8h]

  if ( (a1[8] & 0x1000000) != 0 )
    return 0;
  v9 = a3[1];
  v10 = a2[1];
  v32 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v11 = (float)(a2[2] + a3[2]) * 0.5;
  v33 = (float)(*a2 + *a3) * 0.5;
  v34 = (float)(v10 + v9) * 0.5;
  v35 = v11;
  v12 = std::priv::_Rb_tree<CompPos,std::less<CompPos>,std::pair<CompPos const,PFGInnerNode *>,std::priv::_Select1st<std::pair<CompPos const,PFGInnerNode *>>,std::priv::_MapTraitsT<std::pair<CompPos const,PFGInnerNode *>>,std::allocator<std::pair<CompPos const,PFGInnerNode *>>>::_M_find<CompPos>(
          (int)(a1 + 36),
          &v33);
  if ( v12 == (float *)(a1 + 36) )
  {
    v15 = *a3 - *a2;
    v16 = a3[1] - a2[1];
    v17 = a3[2] - a2[2];
    v26 = a4[1];
    v25 = a4[2];
    v18 = *a4;
    v30 = (float)(v16 * v25) - (float)(v17 * v26);
    v31 = (float)(v17 * v18) - (float)(v15 * v25);
    v32 = (float)(v15 * v26) - (float)(v16 * v18);
    Point3D<float>::normalize(&v30);
    if ( a5
      || (v29[0] = v33 + v30,
          v29[1] = v34 + v31,
          v29[2] = v35 + v32,
          PFFloor::GetFloorHeightAt((int)a1, (int)v29, nullptr, nullptr))
      && (v28[0] = v33 - v30,
          v28[1] = v34 - v31,
          v28[2] = v35 - v32,
          PFFloor::GetFloorHeightAt((int)a1, (int)v28, nullptr, nullptr)) )
    {
      v19 = a1[29];
      v20 = *(_DWORD *)(v19 + 28) + 1;
      *(_DWORD *)(v19 + 28) = v20;
      v13 = sfc::math::graph::GraphSparse<PFGInnerEdge>::addNode(v19, v20);
      *(float *)(v13 + 8) = v33;
      *(float *)(v13 + 12) = v34;
      *(float *)(v13 + 16) = v35;
      v27[0] = v15;
      v27[1] = v16;
      v27[2] = v17;
      v21 = (int *)Point3D<float>::normalize(v27);
      v22 = v21[2];
      v23 = *v21;
      *(_DWORD *)(v13 + 24) = v21[1];
      *(_DWORD *)(v13 + 28) = v22;
      *(_DWORD *)(v13 + 20) = v23;
      v24 = sqrtf((float)((float)(v15 * v15) + (float)(v16 * v16)) + (float)(v17 * v17));
      *(_DWORD *)(v13 + 40) = a1;
      *(float *)(v13 + 36) = v24;
      *(float *)(v13 + 32) = v24;
      *(_DWORD *)std::map<CompPos,PFGInnerNode *>::operator[]<CompPos>(a1 + 36, &v33) = v13;
      return v13;
    }
    return 0;
  }
  return *((_DWORD *)v12 + 7);
}


// ===== 51fd78 PFFloor::_Link(PFFloor*) =====
void __fastcall PFFloor::_Link(PFFloor *this, PFFloor *a2)
{
  PFFloor *v3; // r9
  float *v4; // r5
  float *v5; // r6
  size_t v6; // r1
  size_t v7; // r1
  float *v8; // r6
  float *v9; // r5
  int v10; // r0
  float **v11; // r1
  _DWORD *v12; // r3
  float *v13; // r6
  float *Edge; // r0
  float **v15; // r1
  float **v16; // r3
  float *v17; // r0
  float **v18; // r1
  float **v19; // r3
  _DWORD *v20; // r3
  int v21; // r7
  float v22; // r9
  float v23; // r11
  float v24; // r10
  float v25; // r0
  PFFloor *v26; // r10
  float *v27; // r0
  float **v28; // r1
  PFFloor *v29; // r10
  float *v30; // r0
  float **v31; // r1
  float *v32; // r0
  float **v33; // r1
  float **v34; // r3
  float *v35; // r0
  float **v36; // r1
  float **v37; // r3
  int v38; // r8
  float *v39; // r5
  PFFloor *v40; // r10
  float *v41; // r0
  float **v42; // r1
  PFFloor *v43; // r10
  float *v44; // r0
  float **v45; // r1
  int Node; // r0
  float **v47; // r1
  int v48; // [sp+Ch] [bp-A8h]
  int v49; // [sp+10h] [bp-A4h]
  int v50; // [sp+14h] [bp-A0h]
  int v51; // [sp+34h] [bp-80h]
  char *v52; // [sp+38h] [bp-7Ch]
  PFFloor *v53; // [sp+4Ch] [bp-68h] BYREF
  void *__p; // [sp+54h] [bp-60h] BYREF
  float **v55; // [sp+58h] [bp-5Ch]
  char *v56; // [sp+5Ch] [bp-58h]
  void *p; // [sp+60h] [bp-54h] BYREF
  float **v58; // [sp+64h] [bp-50h]
  char *v59; // [sp+68h] [bp-4Ch]
  char v60[8]; // [sp+6Ch] [bp-48h] BYREF
  char v61[8]; // [sp+74h] [bp-40h] BYREF
  float *v62; // [sp+7Ch] [bp-38h] BYREF
  int v63; // [sp+80h] [bp-34h]
  float *v64; // [sp+84h] [bp-30h] BYREF
  int v65; // [sp+88h] [bp-2Ch]
  PFFloor *v66; // [sp+8Ch] [bp-28h] BYREF
  float *v67; // [sp+90h] [bp-24h] BYREF
  float *v68; // [sp+94h] [bp-20h] BYREF
  float *v69; // [sp+98h] [bp-1Ch] BYREF
  float *v70; // [sp+9Ch] [bp-18h] BYREF
  float *v71; // [sp+A0h] [bp-14h] BYREF
  float *v72; // [sp+A4h] [bp-10h] BYREF
  float *v73; // [sp+A8h] [bp-Ch] BYREF
  float *v74; // [sp+ACh] [bp-8h] BYREF

  v53 = a2;
  v3 = a2;
  if ( ((*((_DWORD *)a2 + 8) | *((_DWORD *)this + 8)) & 0x4000000) == 0 )
  {
    v4 = *((float **)this + 42);
    v5 = *((float **)this + 43);
    v56 = nullptr;
    p = nullptr;
    v58 = nullptr;
    v59 = nullptr;
    __p = nullptr;
    v55 = nullptr;
    if ( v4 != v5 )
    {
      while ( 1 )
      {
        if ( *((float *)v3 + 17) <= (float)(*v4 + 1.0)
          && *((float *)v3 + 20) >= (float)(*v4 - 1.0)
          && *((float *)v3 + 18) <= (float)(v4[1] + 1.0)
          && *((float *)v3 + 21) >= (float)(v4[1] - 1.0)
          && *((float *)v3 + 19) <= (float)(v4[2] + 1.0)
          && *((float *)v3 + 22) >= (float)(v4[2] - 1.0) )
        {
          Node = PFFloor::_CreateNode(this, v4 + 3, v4 + 6, v4 + 11, 1);
          v47 = v58;
          v65 = Node;
          v64 = v4;
          if ( v58 == (float **)v59 )
          {
            std::vector<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_insert_overflow((int)&p, (int)v58, &v64);
            v3 = v53;
          }
          else
          {
            *v58 = v4;
            v47[1] = (float *)v65;
            v3 = v53;
            v58 += 2;
          }
        }
        v4 += 14;
        if ( v4 == v5 )
          break;
        v3 = v53;
      }
    }
    v8 = *((float **)v3 + 43);
    v9 = *((float **)v3 + 42);
    if ( v9 != v8 )
    {
      while ( 1 )
      {
        if ( *((float *)this + 17) > (float)(*v9 + 1.0)
          || *((float *)this + 20) < (float)(*v9 - 1.0)
          || *((float *)this + 18) > (float)(v9[1] + 1.0)
          || *((float *)this + 21) < (float)(v9[1] - 1.0)
          || *((float *)this + 19) > (float)(v9[2] + 1.0)
          || *((float *)this + 22) < (float)(v9[2] - 1.0) )
        {
          goto LABEL_25;
        }
        v10 = PFFloor::_CreateNode(v53, v9 + 3, v9 + 6, v9 + 11, 1);
        v11 = v55;
        v63 = v10;
        v62 = v9;
        if ( v55 == (float **)v56 )
        {
          v9 += 14;
          std::vector<std::pair<PFFloor::InvalidNode *,PFGInnerNode *>>::_M_insert_overflow((int)&__p, (int)v55, &v62);
          if ( v9 == v8 )
            break;
        }
        else
        {
          *v55 = v9;
          v11[1] = (float *)v63;
          v55 += 2;
LABEL_25:
          v9 += 14;
          if ( v9 == v8 )
            break;
        }
      }
    }
    v12 = p;
    v51 = ((char *)v58 - (_BYTE *)p) >> 3;
    if ( v51 )
    {
      v52 = (char *)this + 192;
      v49 = 0;
      while ( 1 )
      {
        v48 = v12[2 * v49];
        v13 = (float *)v12[2 * v49 + 1];
        PFFloor::_CreateEdge(this, (PFGInnerNode *)v13, *(PFGInnerNode **)(v48 + 36));
        Edge = PFFloor::_CreateEdge(this, *(PFGInnerNode **)(v48 + 36), (PFGInnerNode *)v13);
        v15 = *((float ***)this + 49);
        v16 = *((float ***)this + 50);
        v74 = Edge;
        if ( v15 == v16 )
        {
          std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v52, (int)v15, &v74);
        }
        else
        {
          *v15 = Edge;
          *((_DWORD *)this + 49) += 4;
        }
        PFFloor::_CreateEdge(this, (PFGInnerNode *)v13, *(PFGInnerNode **)(v48 + 40));
        v17 = PFFloor::_CreateEdge(this, *(PFGInnerNode **)(v48 + 40), (PFGInnerNode *)v13);
        v18 = *((float ***)this + 49);
        v19 = *((float ***)this + 50);
        v73 = v17;
        if ( v18 == v19 )
        {
          std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v52, (int)v18, &v73);
        }
        else
        {
          *v18 = v17;
          *((_DWORD *)this + 49) += 4;
        }
        v20 = __p;
        v50 = ((char *)v55 - (_BYTE *)__p) >> 3;
        if ( v50 )
        {
          v21 = 0;
          while ( 1 )
          {
            v38 = v20[2 * v21];
            v39 = (float *)v20[2 * v21 + 1];
            if ( !v49 )
            {
              PFFloor::_CreateEdge(v53, (PFGInnerNode *)v39, *(PFGInnerNode **)(v38 + 36));
              v40 = v53;
              v41 = PFFloor::_CreateEdge(v53, *(PFGInnerNode **)(v38 + 36), (PFGInnerNode *)v39);
              v72 = v41;
              v42 = *((float ***)v40 + 49);
              if ( v42 == *((float ***)v40 + 50) )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v40 + 192, (int)v42, &v72);
              }
              else
              {
                *v42 = v41;
                *((_DWORD *)v40 + 49) += 4;
              }
              PFFloor::_CreateEdge(v53, (PFGInnerNode *)v39, *(PFGInnerNode **)(v38 + 40));
              v43 = v53;
              v44 = PFFloor::_CreateEdge(v53, *(PFGInnerNode **)(v38 + 40), (PFGInnerNode *)v39);
              v71 = v44;
              v45 = *((float ***)v43 + 49);
              if ( v45 == *((float ***)v43 + 50) )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v43 + 192, (int)v45, &v71);
              }
              else
              {
                *v45 = v44;
                *((_DWORD *)v43 + 49) += 4;
              }
            }
            v22 = v13[2] - v39[2];
            v23 = v13[3] - v39[3];
            v24 = v13[4] - v39[4];
            v25 = v13[8] + v39[8];
            if ( (float)(v25 * v25) > (float)((float)((float)(v22 * v22) + (float)(v23 * v23)) + (float)(v24 * v24))
              && fabs(v13[4] - v39[4]) < 100.0 )
            {
              PFFloor::_CreateEdge(this, (PFGInnerNode *)v13, *(PFGInnerNode **)(v38 + 36));
              v26 = v53;
              v27 = PFFloor::_CreateEdge(v53, *(PFGInnerNode **)(v38 + 36), (PFGInnerNode *)v13);
              v70 = v27;
              v28 = *((float ***)v26 + 49);
              if ( v28 == *((float ***)v26 + 50) )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v26 + 192, (int)v28, &v70);
              }
              else
              {
                *v28 = v27;
                *((_DWORD *)v26 + 49) += 4;
              }
              PFFloor::_CreateEdge(this, (PFGInnerNode *)v13, *(PFGInnerNode **)(v38 + 40));
              v29 = v53;
              v30 = PFFloor::_CreateEdge(v53, *(PFGInnerNode **)(v38 + 40), (PFGInnerNode *)v13);
              v69 = v30;
              v31 = *((float ***)v29 + 49);
              if ( v31 == *((float ***)v29 + 50) )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v29 + 192, (int)v31, &v69);
              }
              else
              {
                *v31 = v30;
                *((_DWORD *)v29 + 49) += 4;
              }
              PFFloor::_CreateEdge(v53, (PFGInnerNode *)v39, *(PFGInnerNode **)(v48 + 36));
              v32 = PFFloor::_CreateEdge(this, *(PFGInnerNode **)(v48 + 36), (PFGInnerNode *)v39);
              v33 = *((float ***)this + 49);
              v34 = *((float ***)this + 50);
              v68 = v32;
              if ( v33 == v34 )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v52, (int)v33, &v68);
              }
              else
              {
                *v33 = v32;
                *((_DWORD *)this + 49) += 4;
              }
              PFFloor::_CreateEdge(v53, (PFGInnerNode *)v39, *(PFGInnerNode **)(v48 + 40));
              v35 = PFFloor::_CreateEdge(this, *(PFGInnerNode **)(v48 + 40), (PFGInnerNode *)v39);
              v36 = *((float ***)this + 49);
              v37 = *((float ***)this + 50);
              v67 = v35;
              if ( v36 == v37 )
              {
                std::vector<PFGInnerEdge *>::_M_insert_overflow((int)v52, (int)v36, &v67);
              }
              else
              {
                *v36 = v35;
                *((_DWORD *)this + 49) += 4;
              }
            }
            std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::insert_unique(
              (int)v61,
              (_DWORD *)this + 30,
              (int *)&v53);
            v66 = this;
            std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,PFFloor *,std::priv::_Identity<PFFloor *>,std::priv::_SetTraitsT<PFFloor *>,std::allocator<PFFloor *>>::insert_unique(
              (int)v60,
              (_DWORD *)v53 + 30,
              (int *)&v66);
            if ( ++v21 == v50 )
              break;
            v20 = __p;
          }
        }
        if ( ++v49 == v51 )
          break;
        v12 = p;
      }
    }
    if ( __p )
    {
      v6 = (v56 - (_BYTE *)__p) & 0xFFFFFFF8;
      if ( v6 > 0x80 )
        CustomFree(__p);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v6);
    }
    if ( p )
    {
      v7 = (v59 - (_BYTE *)p) & 0xFFFFFFF8;
      if ( v7 > 0x80 )
        CustomFree(p);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v7);
    }
  }
}


// ===== 520588 PFFloor::_CreateNodes(glitch::core::triangle3d<float> *,uint) =====
void __fastcall PFFloor::_CreateNodes(_DWORD *a1, int a2, int a3)
{
  int v4; // r5
  float v5; // r10
  float *v6; // r6
  float v7; // r8
  float v8; // r9
  float v9; // r7
  float v10; // r11
  float v11; // r1
  float v12; // r2
  float v13; // r3
  float v14; // lr
  float v15; // r6
  PFGInnerNode *v16; // r7
  PFGInnerNode *v17; // r6
  PFGInnerNode *v18; // r8
  float *Edge; // r0
  float **v20; // r1
  float **v21; // r3
  float *v22; // r0
  float **v23; // r1
  float **v24; // r3
  float *v25; // r0
  float **v26; // r1
  float **v27; // r3
  float v28; // [sp+Ch] [bp-140h]
  int i; // [sp+18h] [bp-134h]
  float v30; // [sp+20h] [bp-12Ch]
  float v31; // [sp+24h] [bp-128h]
  float v32; // [sp+28h] [bp-124h]
  _DWORD *v35; // [sp+40h] [bp-10Ch]
  int v36; // [sp+44h] [bp-108h]
  float v37[14]; // [sp+64h] [bp-E8h] BYREF
  float v38[14]; // [sp+9Ch] [bp-B0h] BYREF
  float v39[14]; // [sp+D4h] [bp-78h] BYREF
  float v40; // [sp+10Ch] [bp-40h] BYREF
  float v41; // [sp+110h] [bp-3Ch]
  float v42; // [sp+114h] [bp-38h]
  float v43; // [sp+118h] [bp-34h] BYREF
  float v44; // [sp+11Ch] [bp-30h]
  float v45; // [sp+120h] [bp-2Ch]
  float v46; // [sp+124h] [bp-28h] BYREF
  float v47; // [sp+128h] [bp-24h]
  float v48; // [sp+12Ch] [bp-20h]
  float v49; // [sp+130h] [bp-1Ch] BYREF
  float v50; // [sp+134h] [bp-18h]
  float v51; // [sp+138h] [bp-14h]
  float *v52; // [sp+13Ch] [bp-10h] BYREF
  float *v53; // [sp+140h] [bp-Ch] BYREF
  float *v54; // [sp+144h] [bp-8h] BYREF

  v4 = a1[8] & 0x1000000;
  if ( !v4 && a3 )
  {
    v36 = (int)(a1 + 48);
    v35 = a1 + 42;
    for ( i = 0; i != a3; ++i )
    {
      while ( 1 )
      {
        v5 = *(float *)(a2 + v4);
        v6 = (float *)(a2 + v4);
        v7 = *(float *)(a2 + v4 + 4);
        v8 = *(float *)(a2 + v4 + 12) - v5;
        v30 = v6[4] - v6[1];
        v9 = *(float *)(a2 + v4 + 8);
        v10 = v6[5] - v6[2];
        v31 = *(float *)(a2 + v4 + 24) - v5;
        v32 = *(float *)(a2 + v4 + 28) - v7;
        v28 = *(float *)(a2 + v4 + 32) - v9;
        v49 = (float)(v28 * COERCE_FLOAT(LODWORD(v30) + 0x80000000)) + (float)(v10 * v32);
        v50 = (float)(v31 * COERCE_FLOAT(LODWORD(v10) + 0x80000000)) + (float)(v8 * v28);
        v11 = *(float *)(a2 + v4 + 12);
        v12 = *(float *)(a2 + v4 + 16);
        v13 = *(float *)(a2 + v4 + 20);
        v51 = (float)(v32 * COERCE_FLOAT(LODWORD(v8) + 0x80000000)) + (float)(v30 * v31);
        v43 = v11;
        v44 = v12;
        v47 = v7;
        v48 = v9;
        v45 = v13;
        v46 = v5;
        v14 = *(float *)(a2 + v4 + 24);
        v15 = *(float *)(a2 + v4 + 28);
        v42 = *(float *)(a2 + v4 + 32);
        v40 = v14;
        v41 = v15;
        v16 = (PFGInnerNode *)PFFloor::_CreateNode(a1, &v46, &v43, &v49, 0);
        v17 = (PFGInnerNode *)PFFloor::_CreateNode(a1, &v46, &v40, &v49, 0);
        v18 = (PFGInnerNode *)PFFloor::_CreateNode(a1, &v43, &v40, &v49, 0);
        PFFloor::_CreateEdge((PFFloor *)a1, v16, v17);
        Edge = PFFloor::_CreateEdge((PFFloor *)a1, v17, v16);
        v20 = (float **)a1[49];
        v21 = (float **)a1[50];
        v54 = Edge;
        if ( v20 == v21 )
        {
          std::vector<PFGInnerEdge *>::_M_insert_overflow(v36, (int)v20, &v54);
        }
        else
        {
          *v20 = Edge;
          a1[49] += 4;
        }
        PFFloor::_CreateEdge((PFFloor *)a1, v16, v18);
        v22 = PFFloor::_CreateEdge((PFFloor *)a1, v18, v16);
        v23 = (float **)a1[49];
        v24 = (float **)a1[50];
        v53 = v22;
        if ( v23 == v24 )
        {
          std::vector<PFGInnerEdge *>::_M_insert_overflow(v36, (int)v23, &v53);
        }
        else
        {
          *v23 = v22;
          a1[49] += 4;
        }
        PFFloor::_CreateEdge((PFFloor *)a1, v17, v18);
        v25 = PFFloor::_CreateEdge((PFFloor *)a1, v18, v17);
        v26 = (float **)a1[49];
        v27 = (float **)a1[50];
        v52 = v25;
        if ( v26 == v27 )
        {
          std::vector<PFGInnerEdge *>::_M_insert_overflow(v36, (int)v26, &v52);
        }
        else
        {
          *v26 = v25;
          a1[49] += 4;
        }
        if ( !v16 )
          break;
        if ( !v17 )
          goto LABEL_15;
LABEL_5:
        if ( v18 )
          goto LABEL_6;
LABEL_16:
        v37[0] = (float)(v43 + v40) * 0.5;
        v37[1] = (float)(v44 + v41) * 0.5;
        v37[2] = (float)(v45 + v42) * 0.5;
        v37[7] = v41;
        v37[11] = v49;
        v37[8] = v42;
        v37[3] = v43;
        v37[12] = v50;
        v37[4] = v44;
        v37[5] = v45;
        v37[13] = v51;
        v37[6] = v40;
        LODWORD(v37[9]) = v16;
        LODWORD(v37[10]) = v17;
        std::vector<PFFloor::InvalidNode>::push_back(v35, v37);
        v4 += 36;
        if ( ++i == a3 )
          return;
      }
      v39[0] = (float)(v46 + v43) * 0.5;
      v39[1] = (float)(v47 + v44) * 0.5;
      v39[6] = v43;
      v39[2] = (float)(v48 + v45) * 0.5;
      v39[11] = v49;
      v39[3] = v46;
      v39[12] = v50;
      v39[4] = v47;
      v39[5] = v48;
      v39[7] = v44;
      v39[8] = v45;
      v39[13] = v51;
      LODWORD(v39[9]) = v17;
      LODWORD(v39[10]) = v18;
      std::vector<PFFloor::InvalidNode>::push_back(v35, v39);
      if ( v17 )
        goto LABEL_5;
LABEL_15:
      v38[0] = (float)(v46 + v40) * 0.5;
      v38[1] = (float)(v47 + v41) * 0.5;
      v38[6] = v40;
      v38[2] = (float)(v48 + v42) * 0.5;
      v38[11] = v49;
      v38[3] = v46;
      v38[12] = v50;
      v38[4] = v47;
      v38[5] = v48;
      v38[7] = v41;
      v38[8] = v42;
      v38[13] = v51;
      LODWORD(v38[9]) = v16;
      LODWORD(v38[10]) = v18;
      std::vector<PFFloor::InvalidNode>::push_back(v35, v38);
      if ( !v18 )
        goto LABEL_16;
LABEL_6:
      v4 += 36;
    }
  }
}


// ===== 520b40 PFFloor::_LoadNavMesh(glitch::scene::IMeshSceneNode *) =====
void __fastcall PFFloor::_LoadNavMesh(PFFloor *this, glitch::scene::IMeshSceneNode *a2)
{
  int Parent; // r0
  const char *v5; // r0
  const char *v6; // r9
  size_t v7; // r0
  const char *v8; // r9
  char *v9; // r0
  int v10; // r10
  void (__fastcall *v11)(glitch::scene::IMeshSceneNode *, _DWORD *); // r10
  _DWORD *v12; // r0
  int v13; // r2
  int v14; // r0
  float v15; // r5
  int v16; // r3
  glitch::IReferenceCounted *v17; // r5
  glitch::scene::COctTreeTriangleSelector *v18; // r6
  int v19; // r0
  const char *v20; // r10
  int v21; // r5
  _DWORD *v22; // r3
  const char *v23; // r1
  const char *v24; // r3
  int v25; // r6
  unsigned int v26; // r7
  char v27[4]; // [sp+8h] [bp-30h] BYREF
  _BYTE v28[24]; // [sp+Ch] [bp-2Ch] BYREF
  _DWORD v29[3]; // [sp+24h] [bp-14h] BYREF
  const char *v30; // [sp+30h] [bp-8h] BYREF
  glitch::IReferenceCounted *v31; // [sp+34h] [bp-4h] BYREF

  Parent = glitch::scene::ISceneNode::getParent(a2);
  v5 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)Parent + 172))(Parent);
  UserProperties::UserProperties((UserProperties *)v27, v5);
  v30 = "floortypes";
  if ( v28 != (_BYTE *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char const*>(
                         v28,
                         &v30) )
  {
    v30 = "floortypes";
    v6 = *(const char **)(std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char const*>(
                            v28,
                            &v30)
                        + 60);
    v7 = LC_API_STRLEN_0(v6);
    std::string::_M_assign((std::string *const)((char *)this + 40), v6, &v6[v7]);
  }
  v8 = *((const char **)this + 15);
  v9 = LC_API_STRSTR_0(v8, "void");
  v10 = *((_DWORD *)this + 9);
  if ( v9 )
  {
    v10 |= 0x1000000u;
    *((_DWORD *)this + 9) = v10;
  }
  if ( LC_API_STRSTR_0(v8, "wall") )
  {
    v10 |= 0x2000000u;
    *((_DWORD *)this + 9) = v10;
  }
  if ( LC_API_STRSTR_0(v8, "hole") )
  {
    v10 |= 1u;
    *((_DWORD *)this + 9) = v10;
  }
  if ( LC_API_STRSTR_0(v8, "water") )
  {
    v10 |= 2u;
    *((_DWORD *)this + 9) = v10;
  }
  if ( (v10 & 0x3000000) != 0 )
    *((_DWORD *)this + 8) |= 0x7000000u;
  if ( !glitch::scene::ISceneNode::getParent(a2) )
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
        "node->getParent()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp",
        138);
    }
  }
  if ( glitch::scene::ISceneNode::getParent(a2) )
  {
    v11 = *(void (__fastcall **)(glitch::scene::IMeshSceneNode *, _DWORD *))(*(_DWORD *)a2 + 164);
    glitch::scene::ISceneNode::getAbsolutePosition(v29, a2);
    v11(a2, v29);
  }
  *((_DWORD *)this + 16) = CopyMeshSceneNode(a2);
  (*(void (__fastcall **)(glitch::scene::IMeshSceneNode *, _DWORD))(*(_DWORD *)a2 + 72))(a2, 0);
  (*(void (__fastcall **)(glitch::scene::IMeshSceneNode *))(*(_DWORD *)a2 + 104))(a2);
  v12 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 160))(*((_DWORD *)this + 16));
  v13 = *((_DWORD *)this + 16);
  *((_DWORD *)this + 23) = *v12;
  *((_DWORD *)this + 24) = v12[1];
  *((_DWORD *)this + 25) = v12[2];
  v14 = (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 52))(v13);
  *((_DWORD *)this + 17) = *(_DWORD *)v14;
  *((_DWORD *)this + 18) = *(_DWORD *)(v14 + 4);
  v15 = *(float *)(v14 + 8);
  *((float *)this + 19) = v15;
  *((_DWORD *)this + 20) = *(_DWORD *)(v14 + 12);
  *((_DWORD *)this + 21) = *(_DWORD *)(v14 + 16);
  *((float *)this + 22) = *(float *)(v14 + 20) + 1000.0;
  v16 = *((_DWORD *)this + 16);
  *((float *)this + 19) = v15 - 1000.0;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v16 + 248))(&v31, v16);
  v17 = v31;
  v18 = (glitch::scene::COctTreeTriangleSelector *)operator new(184, 0);
  glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(
    v18,
    v17,
    *((const glitch::scene::ISceneNode **)this + 16),
    15,
    1);
  if ( v31 )
    glitch::IReferenceCounted::drop(v31);
  (*(void (__fastcall **)(_DWORD, glitch::scene::COctTreeTriangleSelector *))(**((_DWORD **)this + 16) + 180))(
    *((_DWORD *)this + 16),
    v18);
  glitch::IReferenceCounted::drop(v18);
  v19 = (*(int (__fastcall **)(glitch::scene::COctTreeTriangleSelector *))(*(_DWORD *)v18 + 12))(v18);
  v20 = (const char *)v19;
  v30 = (const char *)v19;
  if ( v19 > 0 )
  {
    v21 = operator new[](36 * v19, 0);
    v22 = (_DWORD *)v21;
    v23 = nullptr;
    while ( 1 )
    {
      ++v23;
      *v22 = 0;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v22[6] = 0;
      v22[7] = 0;
      v22[8] = 0;
      if ( v20 == v23 )
        break;
      v22 += 9;
    }
    (*(void (__fastcall **)(glitch::scene::COctTreeTriangleSelector *, int, const char *, const char **, _DWORD))(*(_DWORD *)v18 + 16))(
      v18,
      v21,
      v30,
      &v30,
      0);
    v20 = v30;
  }
  else
  {
    v21 = 0;
  }
  PFFloor::_CreateNodes(this, v21, v20);
  v24 = v30;
  *((_DWORD *)this + 26) = v21;
  *((_DWORD *)this + 27) = v24;
  if ( v24 )
  {
    v25 = 0;
    v26 = 0;
    while ( 1 )
    {
      *(float *)(v21 + v25 + 8) = *(float *)(v21 + v25 + 8) + 1.0;
      ++v26;
      *(float *)(*((_DWORD *)this + 26) + v25 + 20) = *(float *)(*((_DWORD *)this + 26) + v25 + 20) + 1.0;
      *(float *)(*((_DWORD *)this + 26) + v25 + 32) = *(float *)(*((_DWORD *)this + 26) + v25 + 32) + 1.0;
      v25 += 36;
      if ( *((_DWORD *)this + 27) <= v26 )
        break;
      v21 = *((_DWORD *)this + 26);
    }
  }
  UserProperties::~UserProperties((UserProperties *)v27);
}


// ===== 520f98 PFRoom::GetFloorHeightAt(Point3D<float> const&,float *,Point3D<float>*,PFFloor **,bool) =====
int __fastcall PFRoom::GetFloorHeightAt(int a1, float *a2, int a3, int a4, _DWORD *a5, unsigned __int8 a6)
{
  int v10; // r4
  int v11; // r3
  unsigned int v12; // r4
  int FloorHeightAt; // r0
  int v14; // r3
  int v16; // r3
  int v17; // r1

  v10 = a6;
  if ( *(float *)(a1 + 60) > *a2
    || *a2 > *(float *)(a1 + 72)
    || *(float *)(a1 + 64) > a2[1]
    || a2[1] > *(float *)(a1 + 76)
    || *(float *)(a1 + 68) > a2[2]
    || a2[2] > *(float *)(a1 + 80) )
  {
    return 0;
  }
  if ( a6 )
  {
    v11 = *(_DWORD *)(a1 + 48);
    if ( (unsigned int)(*(_DWORD *)(a1 + 52) - v11) >> 2 )
    {
      v12 = 0;
      while ( 1 )
      {
        FloorHeightAt = PFFloor::GetFloorHeightAt(*(_DWORD *)(v11 + 4 * v12), a2, a3, a4);
        v14 = 4 * v12++;
        if ( FloorHeightAt )
          break;
        v11 = *(_DWORD *)(a1 + 48);
        if ( v12 >= (*(_DWORD *)(a1 + 52) - v11) >> 2 )
          return 0;
      }
      if ( a5 )
      {
        *a5 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + v14);
        return 1;
      }
      return 1;
    }
    return 0;
  }
  v16 = *(_DWORD *)(a1 + 48);
  v17 = *(_DWORD *)(a1 + 52);
  if ( !((unsigned int)(v17 - v16) >> 2) )
    return 0;
  while ( (*(_DWORD *)(*(_DWORD *)(v16 + 4 * v10) + 36) & 0x3000000) != 0 )
  {
LABEL_18:
    if ( ++v10 >= (unsigned int)((v17 - v16) >> 2) )
      return 0;
  }
  if ( !((int (*)(void))PFFloor::GetFloorHeightAt)() )
  {
    v16 = *(_DWORD *)(a1 + 48);
    v17 = *(_DWORD *)(a1 + 52);
    goto LABEL_18;
  }
  if ( a5 )
  {
    *a5 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * v10);
    return 1;
  }
  return 1;
}


// ===== 52113c PFRoom::GetCollisionAt(Point3D<float> const&,Point3D<float>&,glitch::core::triangle3d<float> &,PFFloor **,bool) =====
int __fastcall PFRoom::GetCollisionAt(int a1, float *a2, _DWORD *a3, int a4, _DWORD *a5, unsigned __int8 a6)
{
  int v10; // r4
  int v11; // r3
  unsigned int v12; // r4
  int CollisionAt; // r0
  int v14; // r3
  int v16; // r3
  int v17; // r1
  int v18; // r0

  v10 = a6;
  if ( *(float *)(a1 + 60) > *a2
    || *a2 > *(float *)(a1 + 72)
    || *(float *)(a1 + 64) > a2[1]
    || a2[1] > *(float *)(a1 + 76)
    || *(float *)(a1 + 68) > a2[2]
    || a2[2] > *(float *)(a1 + 80) )
  {
    return 0;
  }
  if ( a6 )
  {
    v11 = *(_DWORD *)(a1 + 48);
    if ( (unsigned int)(*(_DWORD *)(a1 + 52) - v11) >> 2 )
    {
      v12 = 0;
      while ( 1 )
      {
        CollisionAt = PFFloor::GetCollisionAt(*(_DWORD *)(v11 + 4 * v12), a2, a3, a4);
        v14 = 4 * v12++;
        if ( CollisionAt )
          break;
        v11 = *(_DWORD *)(a1 + 48);
        if ( v12 >= (*(_DWORD *)(a1 + 52) - v11) >> 2 )
          return 0;
      }
      if ( a5 )
      {
        *a5 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + v14);
        return 1;
      }
      return 1;
    }
    return 0;
  }
  v16 = *(_DWORD *)(a1 + 48);
  v17 = *(_DWORD *)(a1 + 52);
  if ( !((unsigned int)(v17 - v16) >> 2) )
    return 0;
  while ( 1 )
  {
    v18 = *(_DWORD *)(v16 + 4 * v10);
    if ( (*(_DWORD *)(v18 + 36) & 0x3000000) == 0 )
      break;
LABEL_18:
    if ( ++v10 >= (unsigned int)((v17 - v16) >> 2) )
      return 0;
  }
  if ( !PFFloor::GetCollisionAt(v18, a2, a3, a4) )
  {
    v16 = *(_DWORD *)(a1 + 48);
    v17 = *(_DWORD *)(a1 + 52);
    goto LABEL_18;
  }
  if ( a5 )
  {
    *a5 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * v10);
    return 1;
  }
  return 1;
}


// ===== 5212e0 PFRoom::GetCollisionAt(Point3D<float> const&,Point3D<float> const&,Point3D<float>&,bool) =====
int __fastcall PFRoom::GetCollisionAt(int a1, int *a2, int *a3, _DWORD *a4, unsigned __int8 a5)
{
  int v5; // r4
  int v10; // r3
  unsigned int v11; // r4
  int *v14; // r3
  int v15; // r1
  int v16; // r0

  v5 = a5;
  if ( !a5 )
  {
    v14 = *(int **)(a1 + 48);
    v15 = *(_DWORD *)(a1 + 52);
    if ( (unsigned int)(v15 - (_DWORD)v14) >> 2 )
    {
      v16 = *v14;
      if ( (*(_DWORD *)(*v14 + 36) & 0x3000000) == 0 )
        goto LABEL_12;
      while ( ++v5 < (unsigned int)((v15 - (int)v14) >> 2) )
      {
        v16 = v14[v5];
        if ( (*(_DWORD *)(v16 + 36) & 0x3000000) == 0 )
        {
LABEL_12:
          if ( PFFloor::GetCollisionAt(v16, a2, a3, a4) )
            return 1;
          v14 = *(int **)(a1 + 48);
          v15 = *(_DWORD *)(a1 + 52);
        }
      }
    }
    return 0;
  }
  v10 = *(_DWORD *)(a1 + 48);
  if ( !((unsigned int)(*(_DWORD *)(a1 + 52) - v10) >> 2) )
    return 0;
  v11 = 0;
  while ( !PFFloor::GetCollisionAt(*(_DWORD *)(v10 + 4 * v11++), a2, a3, a4) )
  {
    v10 = *(_DWORD *)(a1 + 48);
    if ( v11 >= (*(_DWORD *)(a1 + 52) - v10) >> 2 )
      return 0;
  }
  return 1;
}


// ===== 5213c4 PFRoom::_DBG_Draw(void) =====
glitch::video::CMaterial **__fastcall PFRoom::_DBG_Draw(glitch::video::CMaterial **this)
{
  glitch::video::CMaterial *v1; // r3
  glitch::video::CMaterial **v2; // r5
  unsigned int v3; // r4

  v1 = *(this + 12);
  v2 = this;
  if ( (unsigned int)(*(this + 13) - v1) >> 2 )
  {
    v3 = 0;
    do
    {
      this = PFFloor::_DBG_Draw(*((PFFloor **)v1 + v3));
      v1 = v2[12];
      ++v3;
    }
    while ( v3 < (v2[13] - v1) >> 2 );
  }
  return this;
}


// ===== 521408 PFRoom::_PostLoad(void) =====
int __fastcall PFRoom::_PostLoad(int this)
{
  int v1; // r10
  int v2; // r7
  int v3; // r2
  int v4; // r3
  unsigned int v5; // r9
  int v6; // r11
  int v7; // r8
  int v8; // r5
  unsigned int v9; // r4
  int v10; // r6
  bool v11; // cf
  int v12; // [sp+4h] [bp-8h]

  v12 = this;
  v1 = *(_DWORD *)(this + 52);
  v2 = *(_DWORD *)(this + 48);
  v3 = v1 - v2;
  if ( (unsigned int)(v1 - v2) >> 2 )
  {
    v4 = *(_DWORD *)(this + 48);
    v5 = 1;
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + v6);
      if ( (*(_DWORD *)(v7 + 32) & 0x4000000) == 0 )
      {
        if ( v5 < v3 >> 2 )
        {
          v8 = 4 * v5;
          v9 = v5;
          do
          {
            v10 = *(_DWORD *)(v4 + v8);
            ++v9;
            v8 += 4;
            if ( (*(_DWORD *)(v10 + 32) & 0x4000000) == 0
              && *(float *)(v7 + 68) <= *(float *)(v10 + 80)
              && *(float *)(v7 + 80) >= *(float *)(v10 + 68)
              && *(float *)(v7 + 72) <= *(float *)(v10 + 84)
              && *(float *)(v7 + 84) >= *(float *)(v10 + 72)
              && *(float *)(v7 + 76) <= *(float *)(v10 + 88)
              && *(float *)(v7 + 88) >= *(float *)(v10 + 76) )
            {
              PFFloor::_Link((PFFloor *)v7, (PFFloor *)v10);
              v2 = *(_DWORD *)(v12 + 48);
              v1 = *(_DWORD *)(v12 + 52);
            }
            v4 = v2;
          }
          while ( v9 < (v1 - v2) >> 2 );
        }
        this = PFFloor::_PostLoad(v7);
        v1 = *(_DWORD *)(v12 + 52);
        v2 = *(_DWORD *)(v12 + 48);
      }
      v3 = v1 - v2;
      v11 = v5 >= (v1 - v2) >> 2;
      v6 += 4;
      ++v5;
      if ( v11 )
        break;
      v4 = v2;
    }
  }
  return this;
}


// ===== 521540 PFRoom::PFRoom(char const*,uint,PFWorld *,PFGOuterGraph *,PFGInnerGraph *) =====
_DWORD *__fastcall PFRoom::PFRoom(_DWORD *a1, char *a2, int a3, int a4, int a5, int a6)
{
  int v9; // r7

  *a1 = off_96C7B0;
  v9 = a5;
  std::string::string((int)(a1 + 1), a2);
  a1[7] = a3;
  a1[11] = a6;
  a1[14] = 0;
  a1[20] = 0;
  a1[8] = a4;
  a1[9] = 0;
  a1[10] = a5;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
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
        "m_world",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        28);
      v9 = a1[10];
    }
  }
  if ( !v9 )
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
        "m_oGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        29);
    }
  }
  if ( !a1[11] )
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
        "m_iGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        30);
    }
  }
  return a1;
}


// ===== 521718 PFRoom::PFRoom(char const*,uint,PFWorld *,PFGOuterGraph *,PFGInnerGraph *) =====
int __fastcall PFRoom::PFRoom(int a1, char *a2, int a3, int a4, int a5, int a6)
{
  int v9; // r7

  *(_DWORD *)a1 = off_96C7B0;
  v9 = a5;
  std::string::string((std::string *)(a1 + 4), a2);
  *(_DWORD *)(a1 + 28) = a3;
  *(_DWORD *)(a1 + 44) = a6;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 32) = a4;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = a5;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
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
        "m_world",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        28);
      v9 = *(_DWORD *)(a1 + 40);
    }
  }
  if ( !v9 )
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
        "m_oGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        29);
    }
  }
  if ( !*(_DWORD *)(a1 + 44) )
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
        "m_iGraph",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        30);
    }
  }
  return a1;
}


// ===== 5218f0 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFRoom.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFRoom.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F62DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F62D8 = 1056964608;
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


// ===== 5219cc PFRoom::_Link(PFRoom*) =====
int __fastcall PFRoom::_Link(PFRoom *this, PFRoom *a2)
{
  int v3; // r3
  int v4; // r2
  int result; // r0
  int v7; // r7
  int v8; // r6
  int v9; // r4
  int v10; // r9
  int v11; // r11
  int v12; // r5
  int Switch; // r9
  char *M_data; // r0
  glitch::os::Timer *v15; // r0
  std::string v16; // [sp+1Ch] [bp-20h] BYREF

  v3 = *((_DWORD *)this + 12);
  v4 = *((_DWORD *)this + 13);
  result = _stack_chk_guard;
  if ( (unsigned int)(v4 - v3) >> 2 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v3 + 4 * v7);
      v9 = *(_DWORD *)(v8 + 32) & 0x4000000;
      if ( !v9 )
      {
        v10 = *((_DWORD *)a2 + 12);
        v11 = *((_DWORD *)a2 + 13);
        if ( (unsigned int)(v11 - v10) >> 2 )
          break;
      }
LABEL_20:
      if ( ++v7 >= (unsigned int)((v4 - v3) >> 2) )
        return result;
    }
    while ( 1 )
    {
      v12 = *(_DWORD *)(v10 + 4 * v9);
      if ( (*(_DWORD *)(v12 + 32) & 0x4000000) != 0 )
        goto LABEL_18;
      result = *(float *)(v8 + 68) <= (float)(*(float *)(v12 + 80) + 50.0);
      if ( *(float *)(v8 + 68) > (float)(*(float *)(v12 + 80) + 50.0) )
        goto LABEL_18;
      result = *(float *)(v8 + 80) >= (float)(*(float *)(v12 + 68) - 50.0);
      if ( *(float *)(v8 + 80) < (float)(*(float *)(v12 + 68) - 50.0) )
        goto LABEL_18;
      result = *(float *)(v8 + 72) <= (float)(*(float *)(v12 + 84) + 50.0);
      if ( *(float *)(v8 + 72) > (float)(*(float *)(v12 + 84) + 50.0) )
        goto LABEL_18;
      result = *(float *)(v8 + 84) >= (float)(*(float *)(v12 + 72) - 50.0);
      if ( *(float *)(v8 + 84) < (float)(*(float *)(v12 + 72) - 50.0) )
        goto LABEL_18;
      result = *(float *)(v8 + 76) <= (float)(*(float *)(v12 + 88) + 50.0);
      if ( *(float *)(v8 + 76) > (float)(*(float *)(v12 + 88) + 50.0) )
        goto LABEL_18;
      result = *(float *)(v8 + 88) >= (float)(*(float *)(v12 + 76) - 50.0);
      if ( *(float *)(v8 + 88) < (float)(*(float *)(v12 + 76) - 50.0) )
        goto LABEL_18;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v16, "isTracingNavMeshLinkTime");
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
      M_data = v16._M_start_of_storage._M_data;
      if ( (std::string *)v16._M_start_of_storage._M_data != &v16 && v16._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v16._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v16._M_start_of_storage._M_data,
            v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data);
      }
      if ( Switch )
      {
        glitch::os::Timer::getRealTime((glitch::os::Timer *)M_data);
        v15 = (glitch::os::Timer *)PFFloor::_Link((PFFloor *)v8, (PFFloor *)v12);
        result = glitch::os::Timer::getRealTime(v15);
        v10 = *((_DWORD *)a2 + 12);
        v11 = *((_DWORD *)a2 + 13);
LABEL_18:
        if ( ++v9 >= (unsigned int)((v11 - v10) >> 2) )
          goto LABEL_19;
      }
      else
      {
        result = PFFloor::_Link((PFFloor *)v8, (PFFloor *)v12);
        v10 = *((_DWORD *)a2 + 12);
        v11 = *((_DWORD *)a2 + 13);
        if ( ++v9 >= (unsigned int)((v11 - v10) >> 2) )
        {
LABEL_19:
          v3 = *((_DWORD *)this + 12);
          v4 = *((_DWORD *)this + 13);
          goto LABEL_20;
        }
      }
    }
  }
  return result;
}


// ===== 521c54 PFRoom::~PFRoom() =====
void __fastcall PFRoom::~PFRoom(PFRoom *this)
{
  int v2; // r0
  int v3; // r1
  unsigned int v4; // r5
  int v5; // r3
  bool v6; // zf
  void *v7; // r0
  size_t v8; // r1
  char *v9; // r0
  size_t v10; // r1

  v2 = *((_DWORD *)this + 13);
  v3 = *((_DWORD *)this + 12);
  *(_DWORD *)this = off_96C7B0;
  if ( (unsigned int)(v2 - v3) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v3 + 4 * v4++);
      if ( v5 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
        v2 = *((_DWORD *)this + 13);
        v3 = *((_DWORD *)this + 12);
      }
    }
    while ( v4 < (v2 - v3) >> 2 );
  }
  v6 = v3 == v2;
  v7 = *((void **)this + 12);
  if ( !v6 )
    *((_DWORD *)this + 13) = v3;
  if ( v7 )
  {
    v8 = (*((_DWORD *)this + 14) - (_DWORD)v7) & 0xFFFFFFFC;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *((char **)this + 6);
  if ( v9 != (char *)this + 4 && v9 )
  {
    v10 = *((_DWORD *)this + 1) - (_DWORD)v9;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
}


// ===== 521d40 std::allocator<PFFloor *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PFFloor *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 521db0 PFRoom::~PFRoom() =====
void __fastcall PFRoom::~PFRoom(PFRoom *this)
{
  int v2; // r0
  int v3; // r1
  unsigned int v4; // r5
  int v5; // r3
  bool v6; // zf
  void *v7; // r0
  size_t v8; // r1
  char *v9; // r0
  size_t v10; // r1

  v2 = *((_DWORD *)this + 13);
  v3 = *((_DWORD *)this + 12);
  *(_DWORD *)this = off_96C7B0;
  if ( (unsigned int)(v2 - v3) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v3 + 4 * v4++);
      if ( v5 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
        v2 = *((_DWORD *)this + 13);
        v3 = *((_DWORD *)this + 12);
      }
    }
    while ( v4 < (v2 - v3) >> 2 );
  }
  v6 = v3 == v2;
  v7 = *((void **)this + 12);
  if ( !v6 )
    *((_DWORD *)this + 13) = v3;
  if ( v7 )
  {
    v8 = (*((_DWORD *)this + 14) - (_DWORD)v7) & 0xFFFFFFFC;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *((char **)this + 6);
  if ( v9 != (char *)this + 4 && v9 )
  {
    v10 = *((_DWORD *)this + 1) - (_DWORD)v9;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
}


// ===== 521e9c PFRoom::~PFRoom() =====
void __fastcall PFRoom::~PFRoom(PFRoom *this)
{
  PFRoom::~PFRoom(this);
  CustomFree(this);
}


// ===== 521eb8 PFRoom::_LoadFloor(glitch::scene::IMeshSceneNode *,char const*) =====
int __fastcall PFRoom::_LoadFloor(PFRoom *this, glitch::scene::IMeshSceneNode *a2, char *a3)
{
  int v6; // r5
  int *v7; // r8
  int Switch; // r10
  char *M_data; // r0
  glitch::os::Timer *v10; // r0
  float v11; // r8
  float v12; // r8
  float v13; // r8
  float v14; // r8
  float v15; // r8
  float v16; // r8
  unsigned int v18; // r3
  unsigned int v19; // r1
  char *v20; // r0
  _BYTE *v21; // r1
  char *v22; // r10
  size_t v23; // r8
  int *v24; // r8
  _DWORD *v25; // r8
  void *v26; // r0
  size_t v27; // r1
  unsigned int v28; // r3
  unsigned int v29; // [sp+Ch] [bp-24h] BYREF
  std::string v30; // [sp+14h] [bp-1Ch] BYREF

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
        "node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp",
        53);
    }
  }
  v6 = operator new(0xCCu, 0);
  PFFloor::PFFloor(v6, a3, (int)this, *((_DWORD *)this + 10), *((_DWORD *)this + 11), 1);
  v7 = *((int **)this + 13);
  if ( v7 == *((int **)this + 14) )
  {
    v18 = ((int)v7 - *((_DWORD *)this + 12)) >> 2;
    if ( v18 )
      v19 = 2 * v18;
    else
      v19 = 1;
    if ( v19 > 0x3FFFFFFF || v18 > v19 )
      v19 = 0x3FFFFFFF;
    v29 = v19;
    v20 = (char *)std::allocator<PFFloor *>::_M_allocate((char *)this + 56, v19, &v29);
    v21 = *((_BYTE **)this + 12);
    v22 = v20;
    v23 = (char *)v7 - v21;
    if ( v23 )
      v24 = (int *)((char *)memmove(v20, v21, v23) + v23);
    else
      v24 = (int *)v20;
    *v24 = v6;
    v25 = v24 + 1;
    v26 = *((void **)this + 12);
    if ( v26 )
    {
      v27 = (*((_DWORD *)this + 14) - (_DWORD)v26) & 0xFFFFFFFC;
      if ( v27 > 0x80 )
        CustomFree(v26);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v26, v27);
    }
    v28 = v29;
    *((_DWORD *)this + 12) = v22;
    *((_DWORD *)this + 13) = v25;
    *((_DWORD *)this + 14) = &v22[4 * v28];
  }
  else
  {
    *v7 = v6;
    *((_DWORD *)this + 13) += 4;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v30, "isTracingNavMeshLoadTime");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v30);
  M_data = v30._M_start_of_storage._M_data;
  if ( (std::string *)v30._M_start_of_storage._M_data != &v30 && v30._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v30._M_buffers._M_end_of_storage - v30._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v30._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v30._M_start_of_storage._M_data,
        v30._M_buffers._M_end_of_storage - v30._M_start_of_storage._M_data);
  }
  if ( !Switch )
  {
    PFFloor::_LoadNavMesh((PFFloor *)v6, a2);
    if ( (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2 != 1 )
      goto LABEL_10;
LABEL_25:
    *((_DWORD *)this + 15) = *(_DWORD *)(v6 + 68);
    *((_DWORD *)this + 16) = *(_DWORD *)(v6 + 72);
    *((_DWORD *)this + 17) = *(_DWORD *)(v6 + 76);
    *((_DWORD *)this + 18) = *(_DWORD *)(v6 + 80);
    *((_DWORD *)this + 19) = *(_DWORD *)(v6 + 84);
    *((_DWORD *)this + 20) = *(_DWORD *)(v6 + 88);
    return SceneManager::AddNodeToMap(*(SceneManager **)(dword_99F73C + 28), *(glitch::scene::ISceneNode **)(v6 + 64));
  }
  glitch::os::Timer::getRealTime((glitch::os::Timer *)M_data);
  PFFloor::_LoadNavMesh((PFFloor *)v6, a2);
  glitch::os::Timer::getRealTime(v10);
  if ( (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2 == 1 )
    goto LABEL_25;
LABEL_10:
  v11 = *(float *)(v6 + 68);
  if ( v11 >= *((float *)this + 15) )
    v11 = *((float *)this + 15);
  *((float *)this + 15) = v11;
  v12 = *(float *)(v6 + 72);
  if ( v12 >= *((float *)this + 16) )
    v12 = *((float *)this + 16);
  *((float *)this + 16) = v12;
  v13 = *(float *)(v6 + 76);
  if ( v13 >= *((float *)this + 17) )
    v13 = *((float *)this + 17);
  *((float *)this + 17) = v13;
  v14 = *(float *)(v6 + 80);
  if ( *((float *)this + 18) >= v14 )
    v14 = *((float *)this + 18);
  *((float *)this + 18) = v14;
  v15 = *(float *)(v6 + 84);
  if ( *((float *)this + 19) >= v15 )
    v15 = *((float *)this + 19);
  *((float *)this + 19) = v15;
  v16 = *(float *)(v6 + 88);
  if ( *((float *)this + 20) >= v16 )
    v16 = *((float *)this + 20);
  *((float *)this + 20) = v16;
  return SceneManager::AddNodeToMap(*(SceneManager **)(dword_99F73C + 28), *(glitch::scene::ISceneNode **)(v6 + 64));
}


// ===== 52224c PFWorld::DBG_DumpMeshList(void) =====
void __fastcall PFWorld::DBG_DumpMeshList(PFWorld *this)
{
  ;
}


// ===== 522250 PFWorld::DBG_DumpMeshLinks(void) =====
int __fastcall PFWorld::DBG_DumpMeshLinks(int this)
{
  int v1; // r7
  int v2; // r8
  int i; // r6
  int v4; // r3
  int v5; // r4
  int v6; // r5
  int j; // r12
  int v8; // r3
  int v9; // r3
  int v10; // r2
  int v11; // r1

  v1 = *(_DWORD *)(this + 8);
  v2 = (*(_DWORD *)(this + 12) - v1) >> 2;
  if ( v2 )
  {
    for ( i = 0; i != v2; ++i )
    {
      v4 = *(_DWORD *)(v1 + 4 * i);
      v5 = *(_DWORD *)(v4 + 48);
      v6 = (*(_DWORD *)(v4 + 52) - v5) >> 2;
      if ( v6 )
      {
        for ( j = 0; j != v6; ++j )
        {
          v8 = *(_DWORD *)(v5 + 4 * j);
          this = v8 + 120;
          v9 = *(_DWORD *)(v8 + 128);
          while ( v9 != this )
          {
            while ( 1 )
            {
              v10 = *(_DWORD *)(v9 + 12);
              if ( !v10 )
                break;
              while ( *(_DWORD *)(v10 + 8) )
                v10 = *(_DWORD *)(v10 + 8);
              v9 = v10;
              if ( v10 == this )
                goto LABEL_12;
            }
            v11 = *(_DWORD *)(v9 + 4);
            if ( v9 == *(_DWORD *)(v11 + 12) )
            {
              do
              {
                v9 = v11;
                v11 = *(_DWORD *)(v11 + 4);
              }
              while ( *(_DWORD *)(v11 + 12) == v9 );
              v10 = *(_DWORD *)(v9 + 12);
            }
            if ( v11 != v10 )
              v9 = v11;
          }
LABEL_12:
          ;
        }
      }
    }
  }
  return this;
}


// ===== 52231c PFWorld::DBG_WorldInfo(uint &,uint &,uint &) =====
int __fastcall PFWorld::DBG_WorldInfo(int this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  int v4; // r12
  int v5; // r1
  int v6; // r7
  int v7; // r8
  int v8; // r1
  int v9; // r4
  int v10; // r5
  unsigned int v11; // r12
  int v12; // r1
  int v13; // r4

  v4 = 0;
  *a2 = (*(_DWORD *)(this + 12) - *(_DWORD *)(this + 8)) >> 2;
  *a4 = 0;
  *a3 = 0;
  v5 = *(_DWORD *)(this + 8);
  v6 = (*(_DWORD *)(this + 12) - v5) >> 2;
  if ( v6 )
  {
    v7 = 0;
    while ( 1 )
    {
      *a3 = v4 + ((*(_DWORD *)(*(_DWORD *)(v5 + 4 * v7) + 52) - *(_DWORD *)(*(_DWORD *)(v5 + 4 * v7) + 48)) >> 2);
      v8 = *(_DWORD *)(*(_DWORD *)(this + 8) + 4 * v7);
      v9 = *(_DWORD *)(v8 + 48);
      v10 = (*(_DWORD *)(v8 + 52) - v9) >> 2;
      if ( v10 )
      {
        v11 = *a4;
        v12 = 0;
        while ( 1 )
        {
          v13 = *(_DWORD *)(v9 + 4 * v12++);
          v11 += *(_DWORD *)(v13 + 108);
          *a4 = v11;
          if ( v12 == v10 )
            break;
          v9 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(this + 8) + 4 * v7) + 48);
        }
      }
      if ( ++v7 == v6 )
        break;
      v4 = *a3;
      v5 = *(_DWORD *)(this + 8);
    }
  }
  return this;
}


// ===== 5223e4 PFWorld::DBG_PFInfo(uint &,uint &) =====
int __fastcall PFWorld::DBG_PFInfo(int this, unsigned int *a2, unsigned int *a3)
{
  unsigned int v3; // r3

  v3 = *(_DWORD *)(this + 72);
  if ( v3 )
    v3 = *(_DWORD *)(v3 + 20);
  *a2 = v3;
  *a3 = 0;
  return this;
}


// ===== 522400 std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(std::priv::_Deque_iterator_base<PFObject *> const&) =====
int __fastcall std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 522444 PFWorld::DBG_ObstaclesInfo(uint &) =====
unsigned int __fastcall PFWorld::DBG_ObstaclesInfo(unsigned int this, unsigned int *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r7
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r8
  _DWORD *v9; // r2
  int v10; // r3
  _DWORD v11[4]; // [sp+0h] [bp-10h] BYREF

  v2 = *(_DWORD **)(this + 52);
  v4 = (_DWORD *)(this + 44);
  *a2 = 0;
  while ( v4 != v2 )
  {
    while ( 1 )
    {
      v5 = v2[6];
      v6 = v2[7];
      v7 = v2[8];
      v11[0] = v2[5];
      v11[1] = v5;
      v11[2] = v6;
      v11[3] = v7;
      v8 = *a2;
      this = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(v2 + 9, v11) + v8;
      *a2 = this;
      v9 = (_DWORD *)v2[3];
      if ( !v9 )
        break;
      while ( v9[2] )
        v9 = (_DWORD *)v9[2];
      v2 = v9;
      if ( v4 == v9 )
        return this;
    }
    v10 = v2[1];
    if ( v2 == *(_DWORD **)(v10 + 12) )
    {
      do
      {
        v2 = (_DWORD *)v10;
        v10 = *(_DWORD *)(v10 + 4);
      }
      while ( *(_DWORD **)(v10 + 12) == v2 );
      v9 = (_DWORD *)v2[3];
    }
    if ( v9 != (_DWORD *)v10 )
      v2 = (_DWORD *)v10;
  }
  return this;
}


// ===== 5224f8 std::priv::_Deque_iterator_base<uint>::_M_subtract(std::priv::_Deque_iterator_base<uint> const&) =====
int __fastcall std::priv::_Deque_iterator_base<unsigned int>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 52253c PFWorld::DBG_SearchInfo(uint &) =====
unsigned int __fastcall PFWorld::DBG_SearchInfo(PFWorld *this, unsigned int *a2)
{
  _DWORD *v2; // r6
  _DWORD *v3; // r4
  int v6; // r1
  int v7; // r2
  int v8; // r3
  unsigned int result; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  unsigned int v13; // r5
  _DWORD v14[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v15[5]; // [sp+10h] [bp-14h] BYREF

  v2 = (_DWORD *)((char *)this + 92);
  v3 = (_DWORD *)((char *)this + 76);
  v6 = *((_DWORD *)this + 20);
  v7 = *((_DWORD *)this + 21);
  v8 = *((_DWORD *)this + 22);
  v15[0] = *((_DWORD *)this + 19);
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  result = std::priv::_Deque_iterator_base<unsigned int>::_M_subtract((_DWORD *)this + 23, v15);
  if ( result )
  {
    v10 = v3[1];
    v11 = v3[2];
    v12 = v3[3];
    v13 = *((_DWORD *)this + 29);
    v14[0] = *v3;
    v14[1] = v10;
    v14[2] = v11;
    v14[3] = v12;
    result = v13 / std::priv::_Deque_iterator_base<unsigned int>::_M_subtract(v2, v14);
    *a2 = result;
  }
  else
  {
    *a2 = 0;
  }
  return result;
}


// ===== 5225ac PFWorld::DBG_MemInfo(uint &) =====
PFGInnerGraph *__fastcall PFWorld::DBG_MemInfo(PFWorld *this, PFGInnerGraph **a2)
{
  PFGInnerGraph *result; // r0

  result = *((PFGInnerGraph **)this + 18);
  if ( result )
    result = (PFGInnerGraph *)PFGInnerGraph::DBG_GetMemUsage(result);
  *a2 = result;
  return result;
}


// ===== 5225cc PFWorld::DBG_ObstacleInfo(PFObject const&,uint &,Point3D<float> &) =====
int __fastcall PFWorld::DBG_ObstacleInfo(int a1, int a2, int *a3, int a4)
{
  int result; // r0

  result = PFWorld::_CalcObstaclesForce(a1, a2, a4, 0);
  *a3 = result;
  return result;
}


// ===== 5225e8 PFWorld::DBG_Draw(Point3D<float> const*) =====
float __fastcall PFWorld::DBG_Draw(float result, float *a2)
{
  glitch::video::CMaterial *v2; // r10
  glitch::video::CMaterial *v3; // r9
  glitch::video::CMaterial **v4; // r11
  int v6; // r4
  unsigned int i; // r5
  int v8; // r6
  float v9; // r7
  float v10; // r7
  float v11; // r7

  v2 = *(glitch::video::CMaterial **)(LODWORD(result) + 8);
  v3 = *(glitch::video::CMaterial **)(LODWORD(result) + 12);
  v4 = (glitch::video::CMaterial **)LODWORD(result);
  if ( (unsigned int)(v3 - v2) >> 2 )
  {
    v6 = 0;
    for ( i = 0; i < (v3 - v2) >> 2; ++i )
    {
      if ( a2 )
      {
        v9 = *a2;
        v8 = *(_DWORD *)((char *)v2 + v6);
        result = *a2;
        if ( *(float *)(v8 + 60) > *a2 )
          goto LABEL_12;
        LODWORD(result) = v9 <= *(float *)(v8 + 72);
        if ( v9 > *(float *)(v8 + 72) )
          goto LABEL_12;
        v10 = a2[1];
        result = v10;
        if ( *(float *)(v8 + 64) > v10 )
          goto LABEL_12;
        LODWORD(result) = v10 <= *(float *)(v8 + 76);
        if ( v10 > *(float *)(v8 + 76) )
          goto LABEL_12;
        v11 = a2[2];
        result = v11;
        if ( *(float *)(v8 + 68) > v11 )
          goto LABEL_12;
        LODWORD(result) = v11 <= *(float *)(v8 + 80);
        if ( v11 > *(float *)(v8 + 80) )
          goto LABEL_12;
      }
      else
      {
        v8 = *(_DWORD *)((char *)v2 + v6);
      }
      result = COERCE_FLOAT(PFRoom::_DBG_Draw((glitch::video::CMaterial **)v8));
      v2 = v4[2];
      v3 = v4[3];
LABEL_12:
      v6 += 4;
    }
  }
  return result;
}


// ===== 5226cc PFWorld::PostLoad(void) =====
_DWORD *__fastcall PFWorld::PostLoad(_DWORD *this)
{
  _DWORD *v1; // r11
  int v2; // r10
  int v3; // r7
  int v4; // r2
  unsigned int v5; // r3
  unsigned int v6; // r9
  float *v7; // r8
  int v8; // r5
  unsigned int v9; // r4
  float *v10; // r6

  v1 = this;
  if ( *(this + 1) == 1 )
  {
    v2 = *(this + 3);
    v3 = *(this + 2);
    *(this + 1) = 2;
    v4 = v2 - v3;
    if ( (unsigned int)(v2 - v3) >> 2 )
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(float **)(v3 + 4 * v5);
        if ( v5 + 1 < v4 >> 2 )
        {
          v8 = 4 * v6;
          v9 = v5 + 1;
          do
          {
            v10 = *(float **)(v3 + v8);
            ++v9;
            if ( v7[15] <= (float)(v10[18] + 50.0)
              && v7[18] >= (float)(v10[15] - 50.0)
              && v7[16] <= (float)(v10[19] + 50.0)
              && v7[19] >= (float)(v10[16] - 50.0)
              && v7[17] <= (float)(v10[20] + 50.0)
              && v7[20] >= (float)(v10[17] - 50.0) )
            {
              PFRoom::_Link((PFRoom *)v7, *(PFRoom **)(v3 + v8));
              v2 = v1[3];
              v3 = v1[2];
            }
            v8 += 4;
          }
          while ( v9 < (v2 - v3) >> 2 );
        }
        this = (_DWORD *)PFRoom::_PostLoad((int)v7);
        v2 = v1[3];
        v3 = v1[2];
        v5 = v6;
        v4 = v2 - v3;
      }
      while ( v6 < (v2 - v3) >> 2 );
    }
  }
  return this;
}


// ===== 522844 PFWorld::_Init(void) =====
int __fastcall PFWorld::_Init(int this)
{
  _DWORD *v1; // r5
  int v2; // r0

  v1 = (_DWORD *)this;
  if ( *(_DWORD *)(this + 4) )
  {
    if ( !*(_DWORD *)(this + 68) )
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
                 "m_oGraph",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
                 46);
      }
    }
    if ( !v1[18] )
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
                 "m_iGraph",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
                 47);
      }
    }
  }
  else
  {
    if ( *(_DWORD *)(this + 68) )
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
          "m_oGraph == 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
          51);
      }
    }
    if ( v1[18] )
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
          "m_iGraph == 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
          52);
      }
    }
    v2 = operator new(0x1Cu, 0);
    *(_DWORD *)(v2 + 8) = 0;
    *(_BYTE *)(v2 + 4) = 0;
    *(_DWORD *)(v2 + 16) = v2 + 4;
    *(_DWORD *)v2 = off_96C7C0;
    *(_DWORD *)(v2 + 12) = v2 + 4;
    *(_DWORD *)(v2 + 20) = 0;
    v1[17] = v2;
    this = operator new(0x20u, 0);
    *(_DWORD *)(this + 8) = 0;
    *(_BYTE *)(this + 4) = 0;
    *(_DWORD *)(this + 16) = this + 4;
    *(_DWORD *)(this + 12) = this + 4;
    *(_DWORD *)this = off_96C7E0;
    *(_DWORD *)(this + 28) = 0;
    *(_DWORD *)(this + 20) = 0;
    v1[1] = 1;
    v1[18] = this;
  }
  return this;
}


// ===== 522ab8 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F62E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F62E4 = 1056964608;
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


// ===== 522b94 std::allocator<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xFFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 16 * a2;
  if ( 16 * a2 > 0x80 )
    result = CustomAlloc(16 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 4;
  return result;
}


// ===== 522c04 std::allocator<PFRoom *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PFRoom *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 522c74 std::allocator<uint *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<unsigned int *>::allocate(int a1, unsigned int a2)
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
    return CustomAlloc(4 * a2);
  else
    return __ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
}


// ===== 522cd4 std::priv::_Deque_base<uint,std::allocator<uint>>::_M_initialize_map(uint) [clone] =====
void *__fastcall std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::_M_initialize_map(_DWORD *a1)
{
  _DWORD *v2; // r5
  int v3; // r6
  void *result; // r0
  unsigned int v5; // r6
  int *v6; // r3
  int v7; // r2
  int v8; // r3
  size_t v9; // [sp+4h] [bp-4h] BYREF

  a1[9] = 8;
  v2 = std::allocator<unsigned int *>::allocate((int)(a1 + 8), 8u);
  v3 = a1[9];
  v9 = 128;
  a1[8] = v2;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v9);
  v5 = (unsigned int)(v3 - 1) >> 1;
  v2[v5] = result;
  v6 = &v2[v5];
  a1[3] = v6;
  v7 = *v6;
  a1[7] = v6;
  a1[1] = v7;
  a1[2] = v7 + 128;
  v8 = *v6;
  *a1 = v7;
  a1[4] = v8;
  a1[6] = v8 + 128;
  a1[5] = v8;
  return result;
}


// ===== 522d58 PFWorld::PFWorld(void) =====
void __fastcall PFWorld::PFWorld(PFWorld *this)
{
  char *v2; // r0

  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_96C800;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 44) = 0;
  v2 = (char *)this + 44;
  *((_DWORD *)this + 14) = v2;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::_M_initialize_map((_DWORD *)this + 19);
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 36) = 1120403456;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
}


// ===== 522e2c PFWorld::PFWorld(void) =====
void __fastcall PFWorld::PFWorld(PFWorld *this)
{
  char *v2; // r0

  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_96C800;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 44) = 0;
  v2 = (char *)this + 44;
  *((_DWORD *)this + 14) = v2;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::_M_initialize_map((_DWORD *)this + 19);
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 36) = 1120403456;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
}


// ===== 522f00 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,PFGOuterEdge *>,std::priv::_Select1st<std::pair<uint const,PFGOuterEdge *>>,std::priv::_MapTraitsT<std::pair<uint const,PFGOuterEdge *>>,std::allocator<std::pair<uint const,PFGOuterEdge *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGOuterEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGOuterEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGOuterEdge *>>,std::allocator<std::pair<unsigned int const,PFGOuterEdge *>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGOuterEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGOuterEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGOuterEdge *>>,std::allocator<std::pair<unsigned int const,PFGOuterEdge *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 522f38 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 522f70 sfc::math::graph::GraphSparse<PFGOuterEdge>::clear(void) =====
void __fastcall sfc::math::graph::GraphSparse<PFGOuterEdge>::clear(int a1)
{
  _DWORD *i; // r4
  int v3; // r7
  int v4; // r6
  _DWORD *v5; // r9
  _DWORD *v6; // r5
  int v7; // r3
  _DWORD *v8; // r2
  _DWORD *v9; // r2
  int v10; // r3
  int v11; // r3

  i = *(_DWORD **)(a1 + 12);
  v3 = a1 + 4;
  while ( (_DWORD *)v3 != i )
  {
    while ( 1 )
    {
      v4 = i[5];
      v5 = *(_DWORD **)(v4 + 16);
      v6 = (_DWORD *)(v4 + 8);
      while ( v6 != v5 )
      {
        while ( 1 )
        {
          v7 = v5[5];
          if ( v7 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 32))(v5[5]);
          v8 = (_DWORD *)v5[3];
          if ( !v8 )
            break;
          while ( v8[2] )
            v8 = (_DWORD *)v8[2];
          v5 = v8;
          if ( v6 == v8 )
            goto LABEL_12;
        }
        v10 = v5[1];
        if ( v5 == *(_DWORD **)(v10 + 12) )
        {
          do
          {
            v5 = (_DWORD *)v10;
            v10 = *(_DWORD *)(v10 + 4);
          }
          while ( *(_DWORD **)(v10 + 12) == v5 );
          v8 = (_DWORD *)v5[3];
        }
        if ( v8 != (_DWORD *)v10 )
          v5 = (_DWORD *)v10;
      }
LABEL_12:
      if ( *(_DWORD *)(v4 + 24) )
        break;
      (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
      v9 = (_DWORD *)i[3];
      if ( !v9 )
        goto LABEL_28;
LABEL_14:
      for ( i = v9; i[2]; i = (_DWORD *)i[2] )
        ;
      if ( (_DWORD *)v3 == i )
        goto LABEL_18;
    }
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGOuterEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGOuterEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGOuterEdge *>>,std::allocator<std::pair<unsigned int const,PFGOuterEdge *>>>::_M_erase(
      v4 + 8,
      *(_DWORD **)(v4 + 12));
    *(_DWORD *)(v4 + 20) = v6;
    *(_DWORD *)(v4 + 16) = v6;
    *(_DWORD *)(v4 + 12) = 0;
    *(_DWORD *)(v4 + 24) = 0;
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
    v9 = (_DWORD *)i[3];
    if ( v9 )
      goto LABEL_14;
LABEL_28:
    v11 = i[1];
    if ( i == *(_DWORD **)(v11 + 12) )
    {
      do
      {
        i = (_DWORD *)v11;
        v11 = *(_DWORD *)(v11 + 4);
      }
      while ( *(_DWORD **)(v11 + 12) == i );
      v9 = (_DWORD *)i[3];
    }
    if ( (_DWORD *)v11 != v9 )
      i = (_DWORD *)v11;
  }
LABEL_18:
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(
      v3,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 16) = v3;
    *(_DWORD *)(a1 + 12) = v3;
    *(_DWORD *)(a1 + 8) = 0;
  }
}


// ===== 523100 sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse() =====
int __fastcall sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse(int a1)
{
  *(_DWORD *)a1 = off_96C7D0;
  sfc::math::graph::GraphSparse<PFGOuterEdge>::clear(a1);
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(
      a1 + 4,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 16) = a1 + 4;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 12) = a1 + 4;
    *(_DWORD *)(a1 + 8) = 0;
  }
  return a1;
}


// ===== 523164 PFGOuterGraph::~PFGOuterGraph() =====
void __fastcall PFGOuterGraph::~PFGOuterGraph(PFGOuterGraph *this)
{
  *(_DWORD *)this = off_96C7C0;
  sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse((int)this);
}


// ===== 523198 PFGOuterGraph::~PFGOuterGraph() =====
void __fastcall PFGOuterGraph::~PFGOuterGraph(PFGOuterGraph *this)
{
  *(_DWORD *)this = off_96C7C0;
  sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse((int)this);
  CustomFree(this);
}


// ===== 5231d4 sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse() =====
int __fastcall sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse(int a1)
{
  *(_DWORD *)a1 = off_96C7D0;
  sfc::math::graph::GraphSparse<PFGOuterEdge>::clear(a1);
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode *>>>::_M_erase(
      a1 + 4,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 16) = a1 + 4;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 12) = a1 + 4;
    *(_DWORD *)(a1 + 8) = 0;
  }
  return a1;
}


// ===== 523238 sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse() =====
void *__fastcall sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse(void *a1)
{
  sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse((int)a1);
  CustomFree(a1);
  return a1;
}


// ===== 523254 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<uint const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 52328c sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(void) =====
void __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(int a1)
{
  _DWORD *i; // r4
  int v3; // r7
  int v4; // r6
  _DWORD *v5; // r9
  _DWORD *v6; // r5
  int v7; // r3
  _DWORD *v8; // r2
  _DWORD *v9; // r2
  int v10; // r3
  int v11; // r3

  i = *(_DWORD **)(a1 + 12);
  v3 = a1 + 4;
  while ( (_DWORD *)v3 != i )
  {
    while ( 1 )
    {
      v4 = i[5];
      v5 = *(_DWORD **)(v4 + 52);
      v6 = (_DWORD *)(v4 + 44);
      while ( v6 != v5 )
      {
        while ( 1 )
        {
          v7 = v5[5];
          if ( v7 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 32))(v5[5]);
          v8 = (_DWORD *)v5[3];
          if ( !v8 )
            break;
          while ( v8[2] )
            v8 = (_DWORD *)v8[2];
          v5 = v8;
          if ( v6 == v8 )
            goto LABEL_12;
        }
        v10 = v5[1];
        if ( v5 == *(_DWORD **)(v10 + 12) )
        {
          do
          {
            v5 = (_DWORD *)v10;
            v10 = *(_DWORD *)(v10 + 4);
          }
          while ( *(_DWORD **)(v10 + 12) == v5 );
          v8 = (_DWORD *)v5[3];
        }
        if ( v8 != (_DWORD *)v10 )
          v5 = (_DWORD *)v10;
      }
LABEL_12:
      if ( *(_DWORD *)(v4 + 60) )
        break;
      (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
      v9 = (_DWORD *)i[3];
      if ( !v9 )
        goto LABEL_28;
LABEL_14:
      for ( i = v9; i[2]; i = (_DWORD *)i[2] )
        ;
      if ( (_DWORD *)v3 == i )
        goto LABEL_18;
    }
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,PFGInnerEdge *>,std::priv::_Select1st<std::pair<unsigned int const,PFGInnerEdge *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,PFGInnerEdge *>>,std::allocator<std::pair<unsigned int const,PFGInnerEdge *>>>::_M_erase(
      v4 + 44,
      *(_DWORD **)(v4 + 48));
    *(_DWORD *)(v4 + 56) = v6;
    *(_DWORD *)(v4 + 52) = v6;
    *(_DWORD *)(v4 + 48) = 0;
    *(_DWORD *)(v4 + 60) = 0;
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
    v9 = (_DWORD *)i[3];
    if ( v9 )
      goto LABEL_14;
LABEL_28:
    v11 = i[1];
    if ( i == *(_DWORD **)(v11 + 12) )
    {
      do
      {
        i = (_DWORD *)v11;
        v11 = *(_DWORD *)(v11 + 4);
      }
      while ( *(_DWORD **)(v11 + 12) == i );
      v9 = (_DWORD *)i[3];
    }
    if ( (_DWORD *)v11 != v9 )
      i = (_DWORD *)v11;
  }
LABEL_18:
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(
      v3,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 16) = v3;
    *(_DWORD *)(a1 + 12) = v3;
    *(_DWORD *)(a1 + 8) = 0;
  }
}


// ===== 52341c sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse() =====
int __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse(int a1)
{
  *(_DWORD *)a1 = off_96C7F0;
  sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(a1);
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(
      a1 + 4,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 16) = a1 + 4;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 12) = a1 + 4;
    *(_DWORD *)(a1 + 8) = 0;
  }
  return a1;
}


// ===== 523480 PFGInnerGraph::~PFGInnerGraph() =====
void __fastcall PFGInnerGraph::~PFGInnerGraph(PFGInnerGraph *this)
{
  *(_DWORD *)this = off_96C7E0;
  sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse((int)this);
}


// ===== 5234b4 PFGInnerGraph::~PFGInnerGraph() =====
void __fastcall PFGInnerGraph::~PFGInnerGraph(PFGInnerGraph *this)
{
  *(_DWORD *)this = off_96C7E0;
  sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse((int)this);
  CustomFree(this);
}


// ===== 5234f0 sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse() =====
int __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse(int a1)
{
  *(_DWORD *)a1 = off_96C7F0;
  sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(a1);
  if ( *(_DWORD *)(a1 + 20) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode *>>>::_M_erase(
      a1 + 4,
      *(_DWORD **)(a1 + 8));
    *(_DWORD *)(a1 + 16) = a1 + 4;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 12) = a1 + 4;
    *(_DWORD *)(a1 + 8) = 0;
  }
  return a1;
}


// ===== 523554 sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse() =====
void *__fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse(void *a1)
{
  sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse((int)a1);
  CustomFree(a1);
  return a1;
}


// ===== 523570 std::vector<SearchFailCache::Entry,std::allocator<SearchFailCache::Entry>>::~vector() =====
int __fastcall std::vector<SearchFailCache::Entry>::~vector(int a1)
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


// ===== 5235cc std::vector<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>,std::allocator<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>>::~vector() =====
int __fastcall std::vector<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF0;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 52360c std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::~_Deque_base(_DWORD *a1)
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
  CustomFree(v2);
  return a1;
}


// ===== 523690 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_erase(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::~_Deque_base(v2 + 5);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x3Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5236d0 PFWorld::Flush(void) =====
void __fastcall PFWorld::Flush(PFWorld *this)
{
  int v1; // r1
  int v2; // r2
  unsigned int v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r3
  int v9; // r3

  v1 = *((_DWORD *)this + 3);
  v2 = *((_DWORD *)this + 2);
  if ( (unsigned int)(v1 - v2) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v2 + 4 * v4++);
      if ( v5 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
        v1 = *((_DWORD *)this + 3);
        v2 = *((_DWORD *)this + 2);
      }
    }
    while ( v4 < (v1 - v2) >> 2 );
  }
  if ( v1 != v2 )
    *((_DWORD *)this + 3) = v2;
  v6 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  if ( v6 )
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  v7 = *((_DWORD *)this + 33);
  if ( v7 != *((_DWORD *)this + 34) )
    *((_DWORD *)this + 34) = v7;
  v8 = *((_DWORD *)this + 17);
  if ( v8 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*((_DWORD *)this + 17));
    *((_DWORD *)this + 17) = 0;
  }
  v9 = *((_DWORD *)this + 18);
  if ( v9 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)this + 18));
    *((_DWORD *)this + 18) = 0;
  }
  *((_DWORD *)this + 1) = 0;
}


// ===== 5237e0 std::priv::_Deque_base<uint,std::allocator<uint>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::~_Deque_base(_DWORD *a1)
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
  CustomFree(v2);
  return a1;
}


// ===== 523864 PFWorld::~PFWorld() =====
void __fastcall PFWorld::~PFWorld(PFWorld *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_96C800;
  v2 = (char *)this + 132;
  PFWorld::Flush(this);
  std::vector<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::~vector((int)v2);
  std::vector<SearchFailCache::Entry>::~vector((int)this + 120);
  std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::~_Deque_base((_DWORD *)this + 19);
  if ( *((_DWORD *)this + 15) )
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 4) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 523918 PFWorld::~PFWorld() =====
void __fastcall PFWorld::~PFWorld(PFWorld *this)
{
  PFWorld::~PFWorld(this);
  CustomFree(this);
}


// ===== 523934 PFWorld::~PFWorld() =====
void __fastcall PFWorld::~PFWorld(PFWorld *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_96C800;
  v2 = (char *)this + 132;
  PFWorld::Flush(this);
  std::vector<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::~vector((int)v2);
  std::vector<SearchFailCache::Entry>::~vector((int)this + 120);
  std::priv::_Deque_base<unsigned int,std::allocator<unsigned int>>::~_Deque_base((_DWORD *)this + 19);
  if ( *((_DWORD *)this + 15) )
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 4) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 5239e8 PFWorld::_AddExitPosition(glitch::scene::ISceneNode *,char const*) =====
int __fastcall PFWorld::_AddExitPosition(PFWorld *this, glitch::scene::ISceneNode *a2, const char *a3)
{
  const char *v5; // r0
  int v6; // r9
  int *v7; // r3
  int *v8; // r6
  int v9; // r10
  int v10; // r8
  int v11; // r7
  unsigned int v13; // r3
  unsigned int v14; // r1
  _DWORD *v15; // r0
  int v16; // r2
  _DWORD *v17; // r11
  int v18; // r6
  int *v19; // r6
  int v20; // r2
  char *v21; // r3
  int v22; // r1
  int v23; // r0
  char *v24; // r3
  char *v25; // r0
  _DWORD *v26; // r6
  size_t v27; // r1
  size_t v28; // r3
  const char *v29; // r0
  const char *v30; // r0
  const char *v31; // r0
  _DWORD v32[2]; // [sp+0h] [bp-14h] BYREF
  int v33; // [sp+8h] [bp-Ch]
  size_t v34; // [sp+Ch] [bp-8h] BYREF

  v5 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
  if ( LC_API_STRSTR_0(v5, "_north") )
  {
    v6 = 0;
  }
  else
  {
    v29 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
    if ( LC_API_STRSTR_0(v29, "_south") )
    {
      v6 = 1;
    }
    else
    {
      v30 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
      if ( LC_API_STRSTR_0(v30, "_east") )
      {
        v6 = 2;
      }
      else
      {
        v31 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
        if ( LC_API_STRSTR_0(v31, "_west") )
          v6 = 3;
        else
          v6 = 0;
      }
    }
  }
  glitch::scene::ISceneNode::getAbsolutePosition(v32, a2);
  v7 = *((int **)this + 34);
  v8 = *((int **)this + 35);
  v9 = v32[0];
  v10 = v32[1];
  v11 = v33;
  if ( v7 == v8 )
  {
    v13 = ((int)v8 - *((_DWORD *)this + 33)) >> 4;
    if ( v13 )
      v14 = 2 * v13;
    else
      v14 = 1;
    if ( v14 > 0xFFFFFFF || v13 > v14 )
      v14 = 0xFFFFFFF;
    v34 = v14;
    v15 = std::allocator<std::pair<PFWorld::ExitDirection,glitch::core::vector3d<float>>>::_M_allocate(
            (int)this + 140,
            v14,
            &v34);
    v16 = *((_DWORD *)this + 33);
    v17 = v15;
    v18 = ((int)v8 - v16) >> 4;
    if ( v18 > 0 )
    {
      v20 = v16 + 16;
      v21 = (char *)(v15 + 4);
      v22 = v18;
      do
      {
        --v22;
        *((_DWORD *)v21 - 4) = *(_DWORD *)(v20 - 16);
        *((_DWORD *)v21 - 3) = *(_DWORD *)(v20 - 12);
        *((_DWORD *)v21 - 2) = *(_DWORD *)(v20 - 8);
        v23 = *(_DWORD *)(v20 - 4);
        v20 += 16;
        *((_DWORD *)v21 - 1) = v23;
        v21 += 16;
      }
      while ( v22 );
      v19 = &v17[4 * v18];
    }
    else
    {
      v19 = v15;
    }
    *v19 = v6;
    v19[1] = v9;
    v19[2] = v10;
    v19[3] = v11;
    v24 = *((char **)this + 34);
    v25 = *((char **)this + 33);
    v26 = v19 + 4;
    if ( v24 != v25 )
      v24 += 16 * ~((unsigned int)(v24 - 16 - v25) >> 4);
    if ( v24 )
    {
      v27 = (*((_DWORD *)this + 35) - (_DWORD)v24) & 0xFFFFFFF0;
      if ( v27 > 0x80 )
        CustomFree(v25);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v25, v27);
    }
    v28 = v34;
    *((_DWORD *)this + 33) = v17;
    *((_DWORD *)this + 34) = v26;
    *((_DWORD *)this + 35) = &v17[4 * v28];
  }
  else
  {
    v7[3] = v33;
    *v7 = v6;
    v7[1] = v9;
    v7[2] = v10;
    *((_DWORD *)this + 34) += 16;
  }
  return (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 104))(a2);
}


// ===== 523c14 PFWorld::LoadRoom(glitch::scene::ISceneNode *,uint,char const*) =====
float *__fastcall PFWorld::LoadRoom(PFWorld *this, glitch::scene::ISceneNode *a2, int a3, char *a4)
{
  PFWorld *v4; // r4
  float *v8; // r5
  char *v9; // r7
  glitch::scene::ISceneNode *v10; // r10
  int v11; // r0
  glitch::scene::ISceneNode **v12; // r6
  glitch::scene::ISceneNode **v13; // r7
  const char *v14; // r9
  int Parent; // r0
  const char *v16; // r0
  glitch::scene::ISceneNode **v17; // r7
  glitch::scene::ISceneNode **v18; // r11
  int v19; // r9
  float *v20; // r8
  glitch::scene::ISceneNode *v21; // r6
  char *v22; // r4
  int v23; // r0
  float v24; // r6
  float v25; // r6
  float v26; // r6
  float v27; // r6
  float v28; // r6
  float v29; // r6
  unsigned int v31; // r3
  unsigned int v32; // r1
  char *v33; // r0
  _BYTE *v34; // r1
  char *v35; // r8
  size_t v36; // r7
  float **v37; // r7
  _DWORD *v38; // r7
  void *v39; // r0
  size_t v40; // r1
  unsigned int v41; // r3
  void *p; // [sp+18h] [bp-14h] BYREF
  glitch::scene::ISceneNode **v43; // [sp+1Ch] [bp-10h]
  int v44; // [sp+20h] [bp-Ch]
  unsigned int v45; // [sp+24h] [bp-8h] BYREF

  v4 = this;
  PFWorld::_Init(this);
  if ( *((_DWORD *)v4 + 1) != 1 )
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
        "m_state == RS_LOADING",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
        92);
    }
  }
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
        "node",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp",
        98);
    }
  }
  v8 = (float *)operator new(0x54u, 0);
  PFRoom::PFRoom(v8, a4, a3, (int)v4, *((_DWORD *)v4 + 17), *((_DWORD *)v4 + 18));
  v9 = *((char **)v4 + 3);
  if ( v9 == *((char **)v4 + 4) )
  {
    v31 = (int)&v9[-*((_DWORD *)v4 + 2)] >> 2;
    if ( v31 )
      v32 = 2 * v31;
    else
      v32 = 1;
    if ( v32 > 0x3FFFFFFF || v31 > v32 )
      v32 = 0x3FFFFFFF;
    v45 = v32;
    v33 = (char *)std::allocator<PFRoom *>::_M_allocate((char *)v4 + 16, v32, &v45);
    v34 = *((_BYTE **)v4 + 2);
    v35 = v33;
    v36 = v9 - v34;
    if ( v36 )
      v37 = (float **)((char *)memmove(v33, v34, v36) + v36);
    else
      v37 = (float **)v33;
    *v37 = v8;
    v38 = v37 + 1;
    v39 = *((void **)v4 + 2);
    if ( v39 )
    {
      v40 = (*((_DWORD *)v4 + 4) - (_DWORD)v39) & 0xFFFFFFFC;
      if ( v40 > 0x80 )
        CustomFree(v39);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v39, v40);
    }
    v41 = v45;
    *((_DWORD *)v4 + 2) = v35;
    *((_DWORD *)v4 + 3) = v38;
    *((_DWORD *)v4 + 4) = &v35[4 * v41];
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *((_DWORD *)v4 + 3) += 4;
  }
  v10 = nullptr;
  v11 = *(_DWORD *)(dword_99F73C + 28);
  p = nullptr;
  v43 = nullptr;
  v44 = 0;
  SceneManager::SearchByType(v11, a2, &p, 1835360612);
  v12 = (glitch::scene::ISceneNode **)p;
  v13 = v43;
  if ( p == v43 )
    goto LABEL_54;
  do
  {
    while ( 1 )
    {
      v14 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)*v12 + 36))(*v12);
      if ( *v14 || !glitch::scene::ISceneNode::getParent(*v12) )
        break;
      Parent = glitch::scene::ISceneNode::getParent(*v12);
      v16 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)Parent + 36))(Parent);
      if ( LC_API_STRSTR_0(v16, "minimap") )
        v10 = *v12;
      if ( ++v12 == v13 )
        goto LABEL_19;
    }
    if ( LC_API_STRSTR_0(v14, "minimap") )
      v10 = *v12;
    ++v12;
  }
  while ( v12 != v13 );
LABEL_19:
  v17 = (glitch::scene::ISceneNode **)p;
  v18 = v43;
  if ( p == v43 )
    goto LABEL_54;
  v19 = 0;
  v20 = (float *)v4;
  do
  {
    v21 = *v17;
    v22 = (char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)*v17 + 36))(*v17);
    if ( !*v22 && glitch::scene::ISceneNode::getParent(*v17) )
    {
      v23 = glitch::scene::ISceneNode::getParent(*v17);
      v22 = (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v23 + 36))(v23);
      v21 = (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::getParent(v21);
    }
    if ( LC_API_STRSTR_0(v22, "floor") )
    {
      PFRoom::_LoadFloor((PFRoom *)v8, *v17, v22);
      ++v19;
      if ( v10 )
        SceneManager::AddNodeToMap(*(SceneManager **)(dword_99F73C + 28), v10);
      else
        SceneManager::AddNodeToMap(
          *(SceneManager **)(dword_99F73C + 28),
          *(glitch::scene::ISceneNode **)(*(_DWORD *)(*((_DWORD *)v8 + 13) - 4) + 64));
    }
    ++v17;
    if ( LC_API_STRSTR_0(v22, "_exit_") )
      PFWorld::_AddExitPosition((PFWorld *)v20, v21, v22);
  }
  while ( v17 != v18 );
  v4 = (PFWorld *)v20;
  if ( !v19 )
  {
LABEL_54:
    *((_DWORD *)v4 + 3) -= 4;
    if ( v8 )
    {
      (*(void (__fastcall **)(float *))(*(_DWORD *)v8 + 4))(v8);
      v8 = nullptr;
    }
  }
  else if ( (*((_DWORD *)v20 + 3) - *((_DWORD *)v20 + 2)) >> 2 == 1 )
  {
    v20[5] = v8[15];
    v20[6] = v8[16];
    v20[7] = v8[17];
    v20[8] = v8[18];
    v20[9] = v8[19];
    v20[10] = v8[20];
  }
  else
  {
    v24 = v8[15];
    if ( v24 >= v20[5] )
      v24 = v20[5];
    v20[5] = v24;
    v25 = v8[16];
    if ( v25 >= v20[6] )
      v25 = v20[6];
    v20[6] = v25;
    v26 = v8[17];
    if ( v26 >= v20[7] )
      v26 = v20[7];
    v20[7] = v26;
    v27 = v8[18];
    if ( v20[8] >= v27 )
      v27 = v20[8];
    v20[8] = v27;
    v28 = v8[19];
    if ( v20[9] >= v28 )
      v28 = v20[9];
    v20[9] = v28;
    v29 = v8[20];
    if ( v20[10] >= v29 )
      v29 = v20[10];
    v20[10] = v29;
  }
  if ( p )
    GlitchFree(p);
  return v8;
}


// ===== 5241ac PFGInnerDirectEdge::~PFGInnerDirectEdge() =====
void __fastcall PFGInnerDirectEdge::~PFGInnerDirectEdge(PFGInnerDirectEdge *this)
{
  ;
}


// ===== 5241b0 PFGInnerDirectEdge::GetSource(void) =====
char *__fastcall PFGInnerDirectEdge::GetSource(PFGInnerDirectEdge *this)
{
  return (char *)this + 24;
}


// ===== 5241b8 PFGInnerDirectEdge::GetDestination(void) =====
char *__fastcall PFGInnerDirectEdge::GetDestination(PFGInnerDirectEdge *this)
{
  return (char *)this + 36;
}


// ===== 5241c0 PFObject::IsOverAHole(void) =====
int __fastcall PFObject::IsOverAHole(PFObject *this)
{
  int result; // r0

  result = *((_DWORD *)this + 4);
  if ( result )
    return *(_DWORD *)(result + 36) & 1;
  return result;
}


// ===== 5241d4 PFObject::IsInWater(void) =====
int __fastcall PFObject::IsInWater(PFObject *this)
{
  int result; // r0

  result = *((_DWORD *)this + 4);
  if ( result )
    return (*(_DWORD *)(result + 36) >> 1) & 1;
  return result;
}


// ===== 5241e8 PFObject::IsFlying(void) =====
int __fastcall PFObject::IsFlying(PFObject *this)
{
  return *((_DWORD *)this + 5) & 1;
}


// ===== 5241f4 PFObject::SetFlying(bool) =====
int __fastcall PFObject::SetFlying(int this, int a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *(_DWORD *)(this + 20);
  if ( a2 )
    v3 = v2 | 1;
  else
    v3 = v2 & 0xFFFFFFFE;
  *(_DWORD *)(this + 20) = v3;
  return this;
}


// ===== 52420c PFObject::IsSwimming(void) =====
int __fastcall PFObject::IsSwimming(PFObject *this)
{
  return (*((_DWORD *)this + 5) >> 1) & 1;
}


// ===== 524218 PFObject::SetSwimming(bool) =====
int __fastcall PFObject::SetSwimming(int this, int a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *(_DWORD *)(this + 20);
  if ( a2 )
    v3 = v2 | 2;
  else
    v3 = v2 & 0xFFFFFFFD;
  *(_DWORD *)(this + 20) = v3;
  return this;
}


// ===== 524230 PFObject::CanPathOn(PFFloor *) =====
bool __fastcall PFObject::CanPathOn(PFObject *this, PFFloor *a2)
{
  int v3; // r3
  int v4; // r0

  if ( !a2 )
    return 0;
  v3 = *((_DWORD *)a2 + 9);
  v4 = *((_DWORD *)this + 5);
  return !v3 || v3 == (v3 & v4);
}


// ===== 524264 PFObject::GetPathLengthSQ(void) =====
int __fastcall PFObject::GetPathLengthSQ(PFObject *this)
{
  char *v1; // r4
  char *v2; // r8
  float v3; // r7
  float *v4; // r5
  float *v5; // r6
  float v6; // r10
  float v7; // r0

  v2 = (char *)this + 56;
  v1 = *((char **)this + 14);
  if ( v1 == (char *)this + 56 )
  {
    v3 = 0.0;
  }
  else
  {
    v3 = 0.0;
    do
    {
      v4 = (float *)(*(int (__fastcall **)(_DWORD *))(**((_DWORD **)v1 + 2) + 36))(*((_DWORD **)v1 + 2));
      v5 = (float *)(*(int (__fastcall **)(_DWORD *))(**((_DWORD **)v1 + 2) + 40))(*((_DWORD **)v1 + 2));
      v6 = v4[1] - v5[1];
      v7 = v4[2] - v5[2];
      v1 = *(char **)v1;
      v3 = v3 + (float)((float)((float)((float)(*v4 - *v5) * (float)(*v4 - *v5)) + (float)(v6 * v6)) + (float)(v7 * v7));
    }
    while ( v2 != v1 );
  }
  return LODWORD(v3);
}


// ===== 524348 PFGInnerDirectEdge::~PFGInnerDirectEdge() =====
void __fastcall PFGInnerDirectEdge::~PFGInnerDirectEdge(PFGInnerDirectEdge *this)
{
  *(_DWORD *)this = off_96C6F0;
  CustomFree(this);
}


// ===== 52437c `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld__PFObject.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld__PFObject.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F62F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F62F0 = 1056964608;
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


// ===== 5244ac glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) [clone] =====
int __fastcall glitch::video::IVideoDriver::setMaterial(int a1, glitch::video::CMaterial **a2)
{
  int Technique; // r2

  if ( *a2 )
    Technique = glitch::video::CMaterial::getTechnique(*a2);
  else
    Technique = 255;
  return glitch::video::IVideoDriver::setMaterial(a1, a2, Technique, 0);
}


// ===== 5244e8 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "-";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "-" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "-" )
    result = (char *)memcpy(result, "-", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 524538 PFObject::PFObject(void) =====
void __fastcall PFObject::PFObject(PFObject *this)
{
  int v1; // r7

  *((_DWORD *)this + 1) = 8;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 2;
  *((_DWORD *)this + 2) = 1065353216;
  *((_DWORD *)this + 9) = Vec3f_K;
  *((_DWORD *)this + 10) = dword_99F87C;
  v1 = dword_99F880;
  *((_DWORD *)this + 19) = off_96C810;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 11) = v1;
  *((_DWORD *)this + 15) = (char *)this + 56;
  *((_DWORD *)this + 22) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 14) = (char *)this + 56;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 39) = (char *)this + 140;
  *((_DWORD *)this + 40) = (char *)this + 140;
  std::string::_M_range_initialize((std::string *)((char *)this + 140), "", nullptr);
}


// ===== 524644 PFObject::PFObject(void) =====
void __fastcall PFObject::PFObject(PFObject *this)
{
  int v1; // r7

  *((_DWORD *)this + 1) = 8;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 2;
  *((_DWORD *)this + 2) = 1065353216;
  *((_DWORD *)this + 9) = Vec3f_K;
  *((_DWORD *)this + 10) = dword_99F87C;
  v1 = dword_99F880;
  *((_DWORD *)this + 19) = off_96C810;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 11) = v1;
  *((_DWORD *)this + 15) = (char *)this + 56;
  *((_DWORD *)this + 22) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 14) = (char *)this + 56;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 39) = (char *)this + 140;
  *((_DWORD *)this + 40) = (char *)this + 140;
  std::string::_M_range_initialize((std::string *)((char *)this + 140), "", nullptr);
}


// ===== 524750 PFObject::~PFObject() =====
void __fastcall PFObject::~PFObject(PFObject ***this)
{
  PFObject ***v2; // r0
  size_t v3; // r1
  PFObject **v4; // r0
  PFObject *v5; // r5

  PFWorld::DropPath((PFWorld *)&Singleton<PFWorld>::s_inst, (PFObject *)this);
  PFWorld::InitObstacle((PFWorld *)&Singleton<PFWorld>::s_inst, (PFObject *)this, 0, 0.0, 0.0);
  v2 = (PFObject ***)*(this + 40);
  if ( v2 != this + 35 && v2 )
  {
    v3 = (char *)*(this + 35) - (char *)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *(this + 14);
  *(this + 19) = (PFObject **)off_96C6F0;
  if ( v4 != (PFObject **)(this + 14) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
      if ( v5 == (PFObject *)(this + 14) )
        break;
      v4 = (PFObject **)v5;
    }
    v4 = (PFObject **)(this + 14);
  }
  *(this + 14) = v4;
  *(this + 15) = v4;
}


// ===== 524828 PFObject::DBG_DrawPath(void) =====
glitch::video::CMaterial **__fastcall PFObject::DBG_DrawPath(glitch::video::CMaterial **this)
{
  glitch::video::CMaterial **v1; // r3
  glitch::video::CMaterial **v2; // r5
  glitch::video::CMaterial **v3; // r8
  _DWORD *v4; // r6
  int v5; // r4
  int v6; // r2
  glitch::video::CMaterial *v7; // r4
  void (__fastcall *v8)(_DWORD *, _DWORD *, _DWORD *, int); // r7
  float *v9; // r0
  float v10; // r11
  float v11; // r9
  float v12; // r0
  float *v13; // r0
  float v14; // r11
  float v15; // r9
  float v16; // r0
  int v17; // r4
  void (__fastcall *v18)(_DWORD *, float *, float *, int); // r7
  float v19; // r9
  float v20; // r10
  glitch::video::CMaterial *v21; // r3
  float *v22; // r5
  float v23; // r9
  float v24; // r0
  void (__fastcall *v25)(_DWORD *, _DWORD *, _DWORD *, int); // r5
  float v26; // r10
  float v27; // r0
  float *v28; // r0
  float v29; // r8
  float v30; // r7
  float v31; // r0
  _DWORD v32[3]; // [sp+14h] [bp-58h] BYREF
  _DWORD v33[3]; // [sp+20h] [bp-4Ch] BYREF
  float v34[3]; // [sp+2Ch] [bp-40h] BYREF
  float v35[3]; // [sp+38h] [bp-34h] BYREF
  _DWORD v36[3]; // [sp+44h] [bp-28h] BYREF
  _DWORD v37[3]; // [sp+50h] [bp-1Ch] BYREF
  int v38; // [sp+5Ch] [bp-10h]
  int v39; // [sp+60h] [bp-Ch]
  glitch::video::CMaterial *v40[2]; // [sp+64h] [bp-8h] BYREF

  v2 = this + 14;
  v1 = (glitch::video::CMaterial **)*(this + 14);
  v3 = this;
  if ( v1 != this + 14 )
  {
    do
      v1 = (glitch::video::CMaterial **)*v1;
    while ( v2 != v1 );
    v4 = *(_DWORD **)(dword_99F73C + 16);
    v5 = v4[55];
    v6 = *(unsigned __int16 *)(v5 + 46);
    if ( v6 == 0xFFFF )
      LOBYTE(v6) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v4[55], 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)v40, v5, v6);
    glitch::video::IVideoDriver::setMaterial((int)v4, v40);
    v7 = v3[14];
    v39 = -256;
    if ( v7 != (glitch::video::CMaterial *)v2 )
    {
      do
      {
        v8 = *(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 28);
        v9 = (float *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v7 + 2) + 36))(*((_DWORD *)v7 + 2));
        v10 = v9[1] + 0.0;
        v11 = v9[2] + 1.0;
        v12 = *v9 + 0.0;
        *(float *)&v37[1] = v10;
        *(float *)v37 = v12;
        *(float *)&v37[2] = v11;
        v13 = (float *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v7 + 2) + 40))(*((_DWORD *)v7 + 2));
        v14 = v13[1] + 0.0;
        v15 = v13[2] + 1.0;
        v16 = *v13 + 0.0;
        *(float *)&v36[1] = v14;
        *(float *)v36 = v16;
        *(float *)&v36[2] = v15;
        v8(v4, v37, v36, v39);
        v7 = *(glitch::video::CMaterial **)v7;
      }
      while ( v2 != (glitch::video::CMaterial **)v7 );
      v2 = (glitch::video::CMaterial **)v3[14];
    }
    v38 = -65281;
    v17 = *((_DWORD *)v3[15] + 2);
    v18 = *(void (__fastcall **)(_DWORD *, float *, float *, int))(*v4 + 28);
    v19 = *((float *)v3 + 7) + 0.0;
    v20 = *((float *)v3 + 8) + 1.0;
    v21 = v2[2];
    v35[0] = *((float *)v3 + 6) + 0.0;
    v35[1] = v19;
    v35[2] = v20;
    v22 = (float *)(*(int (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v21 + 36))(v21);
    v23 = v22[1] + 0.0;
    v24 = v22[2] + 1.0;
    v34[0] = *v22 + 0.0;
    v34[2] = v24;
    v34[1] = v23;
    v18(v4, v35, v34, v38);
    v25 = *(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 28);
    v26 = *((float *)v3 + 17) + 0.0;
    v27 = *((float *)v3 + 16) + 0.0;
    *(float *)&v33[2] = *((float *)v3 + 18) + 1.0;
    *(float *)v33 = v27;
    *(float *)&v33[1] = v26;
    v28 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v17 + 40))(v17);
    v29 = v28[1] + 0.0;
    v30 = v28[2] + 1.0;
    v31 = *v28 + 0.0;
    *(float *)&v32[1] = v29;
    *(float *)v32 = v31;
    *(float *)&v32[2] = v30;
    v25(v4, v33, v32, v38);
    return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v40);
  }
  return this;
}


// ===== 524b30 PFObject::DBG_DrawObstacle(void) =====
float __fastcall PFObject::DBG_DrawObstacle(float this)
{
  float v1; // r5
  int v2; // r7
  int v3; // r10
  int v4; // r2
  float v5; // r3
  float v6; // r0
  int v7; // r6
  float v8[2]; // [sp+Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v9[2]; // [sp+14h] [bp-8h] BYREF

  v1 = this;
  if ( (*(_DWORD *)(LODWORD(this) + 4) & 0xC) == 0xC )
  {
    if ( (`guard variable for'PFObject::DBG_DrawObstacle(void)::obsC & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'PFObject::DBG_DrawObstacle(void)::obsC) )
    {
      byte_9F62FF = -1;
      byte_9F62FE = 0;
      PFObject::DBG_DrawObstacle(void)const::obsC = -1;
      byte_9F62FD = 0;
      _cxa_guard_release(&`guard variable for'PFObject::DBG_DrawObstacle(void)::obsC);
    }
    v2 = *(_DWORD *)(dword_99F73C + 16);
    v3 = *(_DWORD *)(v2 + 220);
    v4 = *(unsigned __int16 *)(v3 + 46);
    if ( v4 == 0xFFFF )
      LOBYTE(v4) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(v2 + 220), 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)v9, v3, v4);
    glitch::video::IVideoDriver::setMaterial(v2, v9);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v9);
    v5 = *(float *)(LODWORD(v1) + 28);
    v6 = *(float *)(LODWORD(v1) + 32);
    v7 = *(_DWORD *)(dword_99F73C + 28);
    v8[0] = *(float *)(LODWORD(v1) + 24);
    v8[1] = v5;
    return SceneManager::DBG_DrawCircle(
             v7,
             v8,
             v6 + 10.0,
             *(float *)(LODWORD(v1) + 8) + *(float *)(LODWORD(v1) + 48),
             (unsigned __int8 *)&PFObject::DBG_DrawObstacle(void)const::obsC);
  }
  return this;
}


// ===== 524c74 std::vector<PFWorld::ObstacleForce,std::allocator<PFWorld::ObstacleForce>>::~vector() =====
int __fastcall std::vector<PFWorld::ObstacleForce>::~vector(int a1)
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


// ===== 524cd0 PFObject::DBG_DrawObstacleForces(void) =====
int __fastcall PFObject::DBG_DrawObstacleForces(int this)
{
  int v1; // r3
  float *v2; // r5
  _DWORD *v3; // r7
  int v4; // r6
  int v5; // r2
  int v6; // r4
  int i; // r6
  int v8; // r11
  float *v9; // r10
  float *v10; // r8
  float v11; // r0
  float v12; // r9
  float v13; // r8
  void (__fastcall *v14)(_DWORD *, float *, float *, _DWORD); // r12
  float v15; // r0
  float v16; // [sp+8h] [bp-54h]
  int v17; // [sp+10h] [bp-4Ch]
  float v18[3]; // [sp+24h] [bp-38h] BYREF
  float v19; // [sp+30h] [bp-2Ch] BYREF
  float v20; // [sp+34h] [bp-28h]
  float v21; // [sp+38h] [bp-24h]
  _DWORD v22[3]; // [sp+3Ch] [bp-20h] BYREF
  _DWORD v23[3]; // [sp+48h] [bp-14h] BYREF
  glitch::video::CMaterial *v24[2]; // [sp+54h] [bp-8h] BYREF

  v1 = *(_DWORD *)(this + 4);
  v2 = (float *)this;
  if ( (v1 & 1) == 0 && (v1 & 2) != 0 )
  {
    memset(v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    if ( (`guard variable for'PFObject::DBG_DrawObstacleForces(void)::forceC & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'PFObject::DBG_DrawObstacleForces(void)::forceC) )
    {
      byte_9F6307 = -1;
      byte_9F6306 = 0;
      PFObject::DBG_DrawObstacleForces(void)const::forceC = -1;
      byte_9F6305 = 0;
      _cxa_guard_release(&`guard variable for'PFObject::DBG_DrawObstacleForces(void)::forceC);
    }
    v17 = PFWorld::_CalcObstaclesForce(&Singleton<PFWorld>::s_inst, v2, v22, v23);
    v3 = *(_DWORD **)(dword_99F73C + 16);
    v4 = v3[55];
    v5 = *(unsigned __int16 *)(v4 + 46);
    if ( v5 == 0xFFFF )
      LOBYTE(v5) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v3[55], 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)v24, v4, v5);
    glitch::video::IVideoDriver::setMaterial((int)v3, v24);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v24);
    if ( v17 )
    {
      v6 = 0;
      for ( i = 0; i != v17; ++i )
      {
        v8 = v23[0];
        v9 = (float *)(v23[0] + v6);
        byte_9F6305 = ~(unsigned __int8)(unsigned int)(float)(*(float *)(v23[0] + v6 + 12) * 255.0);
        byte_9F6306 = byte_9F6305;
        v10 = (float *)Point3D<float>::normalize((float *)(v23[0] + v6));
        v11 = (float)(v9[3] * 100.0) + 100.0;
        *v10 = *v10 * v11;
        v10[1] = v10[1] * v11;
        v10[2] = v10[2] * v11;
        v12 = v2[8];
        v13 = v2[6];
        v14 = *(void (__fastcall **)(_DWORD *, float *, float *, _DWORD))(*v3 + 28);
        v20 = v2[7];
        v19 = v13;
        v21 = v12;
        v16 = v20 + v9[1];
        v15 = v12 + v9[2];
        v18[0] = v13 + *(float *)(v8 + v6);
        v18[1] = v16;
        v18[2] = v15;
        v14(v3, &v19, v18, *(_DWORD *)&PFObject::DBG_DrawObstacleForces(void)const::forceC);
        v6 += 20;
      }
    }
    return std::vector<PFWorld::ObstacleForce>::~vector((int)v23);
  }
  return this;
}


// ===== 524f50 PFObject::~PFObject() =====
void __fastcall PFObject::~PFObject(PFObject ***this)
{
  PFObject ***v2; // r0
  size_t v3; // r1
  PFObject **v4; // r0
  PFObject *v5; // r5

  PFWorld::DropPath((PFWorld *)&Singleton<PFWorld>::s_inst, (PFObject *)this);
  PFWorld::InitObstacle((PFWorld *)&Singleton<PFWorld>::s_inst, (PFObject *)this, 0, 0.0, 0.0);
  v2 = (PFObject ***)*(this + 40);
  if ( v2 != this + 35 && v2 )
  {
    v3 = (char *)*(this + 35) - (char *)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *(this + 14);
  *(this + 19) = (PFObject **)off_96C6F0;
  if ( v4 != (PFObject **)(this + 14) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
      if ( v5 == (PFObject *)(this + 14) )
        break;
      v4 = (PFObject **)v5;
    }
    v4 = (PFObject **)(this + 14);
  }
  *(this + 14) = v4;
  *(this + 15) = v4;
}


// ===== 525028 PFInnerTest_BasicIdentity::operator()(PFGInnerNode const*) =====
bool __fastcall PFInnerTest_BasicIdentity::operator()(int a1, int a2)
{
  return *(_DWORD *)(a1 + 4) == a2;
}


// ===== 52503c PFInnerTest_PathValidity::isValid(PFGInnerEdge const*) =====
int __fastcall PFInnerTest_PathValidity::isValid(PFInnerTest_PathValidity *this, const PFGInnerEdge *a2)
{
  return (*(int (__fastcall **)(const PFGInnerEdge *))(*(_DWORD *)a2 + 24))(a2);
}


// ===== 525054 PFInnerTest_PathValidity::isValid(PFGInnerNode const*) =====
int __fastcall PFInnerTest_PathValidity::isValid(PFInnerTest_PathValidity *this, const PFGInnerNode *a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(const PFGInnerNode *))(*(_DWORD *)a2 + 4))(a2);
  if ( result )
    return *(_DWORD *)(*((_DWORD *)a2 + 10) + 32) & 1;
  return result;
}


// ===== 525080 PFInnerTest_PFObject::isValid(PFGInnerEdge const*) =====
int __fastcall PFInnerTest_PFObject::isValid(PFInnerTest_PFObject *this, const PFGInnerEdge *a2)
{
  int result; // r0

  result = PFInnerTest_PathValidity::isValid(this, a2);
  if ( result )
    return *((float *)a2 + 5) >= *(float *)(*((_DWORD *)this + 1) + 8);
  return result;
}


// ===== 5250bc sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(PFGInnerEdge const*) =====
int __fastcall sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(int a1, int a2)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 24))(a2);
}


// ===== 5250d4 sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(PFGInnerNode const*) =====
int __fastcall sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(int a1, int a2)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 4))(a2);
}


// ===== 5250ec `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld__Tests.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld__Tests.cpp()
{
  dword_9F6310 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F630C = 1056964608;
}


// ===== 52510c PFInnerTest_PFObject::isValid(PFGInnerNode const*) =====
int __fastcall PFInnerTest_PFObject::isValid(PFObject **this, PFFloor **a2)
{
  int result; // r0

  result = PFInnerTest_PathValidity::isValid((PFInnerTest_PathValidity *)this, (const PFGInnerNode *)a2);
  if ( result )
    return PFObject::CanPathOn(*(this + 1), a2[10]);
  return result;
}


// ===== 525138 `virtual thunk to'PFInnerTest_PFObject::isValid(PFGInnerNode const*) =====
int __fastcall `virtual thunk to'PFInnerTest_PFObject::isValid(PFInnerTest_PFObject *this, PFFloor **a2)
{
  return PFInnerTest_PFObject::isValid((PFObject **)((char *)this + *(_DWORD *)(*(_DWORD *)this - 20)), a2);
}


// ===== 525148 `virtual thunk to'PFInnerTest_PFObject::isValid(PFGInnerEdge const*) =====
int __fastcall `virtual thunk to'PFInnerTest_PFObject::isValid(PFInnerTest_PFObject *this, const PFGInnerEdge *a2)
{
  return PFInnerTest_PFObject::isValid((PFInnerTest_PFObject *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)), a2);
}


// ===== 525158 `virtual thunk to'PFInnerTest_PathValidity::isValid(PFGInnerNode const*) =====
int __fastcall `virtual thunk to'PFInnerTest_PathValidity::isValid(
        PFInnerTest_PathValidity *this,
        const PFGInnerNode *a2)
{
  return PFInnerTest_PathValidity::isValid(
           (PFInnerTest_PathValidity *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 20)),
           a2);
}


// ===== 525168 `virtual thunk to'PFInnerTest_PathValidity::isValid(PFGInnerEdge const*) =====
int __fastcall `virtual thunk to'PFInnerTest_PathValidity::isValid(
        PFInnerTest_PathValidity *this,
        const PFGInnerEdge *a2)
{
  return PFInnerTest_PathValidity::isValid(
           (PFInnerTest_PathValidity *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)),
           a2);
}


// ===== 525178 `virtual thunk to'PFInnerTest_BasicIdentity::operator()(PFGInnerNode const*) =====
bool __fastcall `virtual thunk to'PFInnerTest_BasicIdentity::operator()(_DWORD *a1, int a2)
{
  return PFInnerTest_BasicIdentity::operator()((int)a1 + *(_DWORD *)(*a1 - 12), a2);
}


// ===== 525188 PFWorld::GetRoomAt(Point3D<float> const&) =====
float *__fastcall PFWorld::GetRoomAt(int a1, float *a2)
{
  float v2; // r5
  float *v3; // r4
  float v5; // r7
  float v6; // r9
  int v7; // r8
  int v8; // r10
  int v9; // r6

  v2 = *a2;
  if ( *(float *)(a1 + 20) > *a2 )
    return nullptr;
  if ( v2 > *(float *)(a1 + 32) )
    return nullptr;
  v5 = a2[1];
  if ( *(float *)(a1 + 24) > v5 )
    return nullptr;
  if ( v5 > *(float *)(a1 + 36) )
    return nullptr;
  v6 = a2[2];
  if ( *(float *)(a1 + 28) > v6 )
    return nullptr;
  if ( v6 > *(float *)(a1 + 40) )
    return nullptr;
  v7 = *(_DWORD *)(a1 + 8);
  v8 = (*(_DWORD *)(a1 + 12) - v7) >> 2;
  if ( !v8 )
    return nullptr;
  v9 = 0;
  while ( 1 )
  {
    v3 = *(float **)(v7 + 4 * v9);
    if ( v2 >= v3[15] && v2 <= v3[18] && v5 >= v3[16] && v5 <= v3[19] && v6 >= v3[17] && v6 <= v3[20] )
      break;
    if ( ++v9 == v8 )
      return nullptr;
  }
  return v3;
}


// ===== 5252c8 PFWorld::FlagFloorAsEnabled(PFObject const&,bool) =====
void __fastcall PFWorld::FlagFloorAsEnabled(PFWorld *this, const PFObject *a2, int a3)
{
  int v3; // r3
  bool v4; // zf
  int v5; // r2
  unsigned int v6; // r2

  v3 = *((_DWORD *)a2 + 4);
  if ( v3 )
  {
    v4 = a3 == 0;
    v5 = *(_DWORD *)(v3 + 32);
    if ( v4 )
      v6 = v5 & 0xFFFFFFFE;
    else
      v6 = v5 | 1;
    *(_DWORD *)(v3 + 32) = v6;
  }
}


// ===== 5252ec PFWorld::FlagFloorAsDeadEnd(PFObject const&,bool) =====
void __fastcall PFWorld::FlagFloorAsDeadEnd(PFWorld *this, const PFObject *a2, int a3)
{
  int v3; // r3
  bool v4; // zf
  int v5; // r2
  unsigned int v6; // r2

  v3 = *((_DWORD *)a2 + 4);
  if ( v3 )
  {
    v4 = a3 == 0;
    v5 = *(_DWORD *)(v3 + 32);
    if ( v4 )
      v6 = v5 & 0xFFFFFFFD;
    else
      v6 = v5 | 2;
    *(_DWORD *)(v3 + 32) = v6;
  }
}


// ===== 525310 glitch::core::line2d<float>::intersectWith(glitch::core::line2d<float> const&,glitch::core::vector2d<float> &) =====
int __fastcall glitch::core::line2d<float>::intersectWith(float *a1, float *a2, float *a3)
{
  float v4; // r9
  float v5; // r7
  float v6; // r6
  float v7; // r8
  float v8; // r4
  float v9; // r11
  float v10; // r11
  float v11; // r5
  float v12; // r10
  float v13; // r5
  float v15; // [sp+4h] [bp-10h]
  float v16; // [sp+8h] [bp-Ch]

  v4 = a1[2] - *a1;
  v15 = a1[3] - a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 - a2[2];
  v8 = a2[1] - a2[3];
  v9 = (float)(v4 * v8) - (float)(v15 * v7);
  if ( v9 > -0.000001 && v9 < 0.000001 )
    return 0;
  v10 = 1.0 / v9;
  v11 = v5 - *a1;
  v12 = v6 - a1[1];
  v16 = (float)((float)(v8 * v11) - (float)(v7 * v12)) * v10;
  if ( v16 < 0.0 )
    return 0;
  if ( v16 > 1.0 )
    return 0;
  v13 = (float)((float)(v4 * v12) - (float)(v15 * v11)) * v10;
  if ( v13 < 0.0 || v13 > 1.0 )
    return 0;
  *a3 = v5 - (float)(v13 * v7);
  a3[1] = v6 - (float)(v13 * v8);
  return 1;
}


// ===== 525508 PFWorld::GetFloorHeightAt(Point3D<float> const&,float *,Point3D<float>*,PFRoom **,PFFloor **,bool) =====
int __fastcall PFWorld::GetFloorHeightAt(int a1, float *a2, int a3, int a4, _DWORD *a5, int a6, unsigned __int8 a7)
{
  int result; // r0
  int v12; // r3
  unsigned int v13; // r4
  int v14; // r2
  int v15; // r3

  if ( *(float *)(a1 + 20) > *a2 )
    return 0;
  if ( *a2 > *(float *)(a1 + 32) )
    return 0;
  if ( *(float *)(a1 + 24) > a2[1] )
    return 0;
  if ( a2[1] > *(float *)(a1 + 36) )
    return 0;
  if ( *(float *)(a1 + 28) > a2[2] )
    return 0;
  if ( a2[2] > *(float *)(a1 + 40) )
    return 0;
  v12 = *(_DWORD *)(a1 + 8);
  if ( !((unsigned int)(*(_DWORD *)(a1 + 12) - v12) >> 2) )
    return 0;
  v13 = 0;
  while ( 1 )
  {
    result = PFRoom::GetFloorHeightAt(*(_DWORD *)(v12 + 4 * v13), a2, a3, a4, a6, a7);
    v15 = 4 * v13++;
    if ( result )
      break;
    v12 = *(_DWORD *)(a1 + 8);
    if ( v13 >= (*(_DWORD *)(a1 + 12) - v12) >> 2 )
      return 0;
  }
  if ( a5 )
    v14 = *(_DWORD *)(a1 + 8);
  else
    result = 1;
  if ( a5 )
  {
    *a5 = *(_DWORD *)(v14 + v15);
    return 1;
  }
  return result;
}


// ===== 525634 PFWorld::FlagFloorAsDeadEnd(Point3D<float> const&,bool) =====
int __fastcall PFWorld::FlagFloorAsDeadEnd(int a1, float *a2, int a3)
{
  int result; // r0
  int v5; // r2
  unsigned int v6; // r2
  int v7; // [sp+14h] [bp-4h] BYREF

  result = PFWorld::GetFloorHeightAt(a1, a2, 0, 0, nullptr, (int)&v7, 0);
  if ( result )
  {
    v5 = *(_DWORD *)(v7 + 32);
    if ( a3 )
      v6 = v5 | 2;
    else
      v6 = v5 & 0xFFFFFFFD;
    *(_DWORD *)(v7 + 32) = v6;
  }
  return result;
}


// ===== 525684 PFWorld::FlagFloorAsEnabled(Point3D<float> const&,bool) =====
int __fastcall PFWorld::FlagFloorAsEnabled(int a1, float *a2, int a3)
{
  int result; // r0
  int v5; // r2
  unsigned int v6; // r2
  int v7; // [sp+14h] [bp-4h] BYREF

  result = PFWorld::GetFloorHeightAt(a1, a2, 0, 0, nullptr, (int)&v7, 0);
  if ( result )
  {
    v5 = *(_DWORD *)(v7 + 32);
    if ( a3 )
      v6 = v5 | 1;
    else
      v6 = v5 & 0xFFFFFFFE;
    *(_DWORD *)(v7 + 32) = v6;
  }
  return result;
}


// ===== 5256d4 PFWorld::GetCollisionAt(Point3D<float> const&,Point3D<float>&,glitch::core::triangle3d<float> &,PFRoom **,PFFloor **,bool) =====
int __fastcall PFWorld::GetCollisionAt(
        int a1,
        float *a2,
        _DWORD *a3,
        int a4,
        _DWORD *a5,
        _DWORD *a6,
        unsigned __int8 a7)
{
  int result; // r0
  int v12; // r3
  unsigned int v13; // r4
  int v14; // r2
  int v15; // r3

  if ( *(float *)(a1 + 20) > *a2 )
    return 0;
  if ( *a2 > *(float *)(a1 + 32) )
    return 0;
  if ( *(float *)(a1 + 24) > a2[1] )
    return 0;
  if ( a2[1] > *(float *)(a1 + 36) )
    return 0;
  if ( *(float *)(a1 + 28) > a2[2] )
    return 0;
  if ( a2[2] > *(float *)(a1 + 40) )
    return 0;
  v12 = *(_DWORD *)(a1 + 8);
  if ( !((unsigned int)(*(_DWORD *)(a1 + 12) - v12) >> 2) )
    return 0;
  v13 = 0;
  while ( 1 )
  {
    result = PFRoom::GetCollisionAt(*(_DWORD *)(v12 + 4 * v13), a2, a3, a4, a6, a7);
    v15 = 4 * v13++;
    if ( result )
      break;
    v12 = *(_DWORD *)(a1 + 8);
    if ( v13 >= (*(_DWORD *)(a1 + 12) - v12) >> 2 )
      return 0;
  }
  if ( a5 )
    v14 = *(_DWORD *)(a1 + 8);
  else
    result = 1;
  if ( a5 )
  {
    *a5 = *(_DWORD *)(v14 + v15);
    return 1;
  }
  return result;
}


// ===== 525800 PFWorld::GetCollisionAt(Point3D<float> const&,Point3D<float> const&,Point3D<float>&,bool) =====
int __fastcall PFWorld::GetCollisionAt(int a1, int *a2, int *a3, _DWORD *a4, unsigned __int8 a5)
{
  int v6; // r12
  int v7; // r0
  unsigned int v11; // r4

  v6 = *(_DWORD *)(a1 + 12);
  v7 = *(_DWORD *)(a1 + 8);
  if ( !((unsigned int)(v6 - v7) >> 2) )
    return 0;
  v11 = 0;
  while ( !PFRoom::GetCollisionAt(*(_DWORD *)(v7 + 4 * v11++), a2, a3, a4, a5) )
  {
    v7 = *(_DWORD *)(a1 + 8);
    if ( v11 >= (*(_DWORD *)(a1 + 12) - v7) >> 2 )
      return 0;
  }
  return 1;
}


// ===== 525884 PFWorld::TranslateScreenToWorld(Point2D<float> const&,Point3D<float> &) =====
int __fastcall PFWorld::TranslateScreenToWorld(int a1, float *a2, _DWORD *a3)
{
  int v6; // r0
  int v7; // r1
  void (__fastcall *v8)(_DWORD *, int, _DWORD *, _DWORD); // r12
  _DWORD v10[6]; // [sp+8h] [bp-38h] BYREF
  int v11[3]; // [sp+20h] [bp-20h] BYREF
  int v12[3]; // [sp+2Ch] [bp-14h] BYREF
  _DWORD v13[2]; // [sp+38h] [bp-8h] BYREF

  v6 = (int)*a2;
  v7 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 44);
  v8 = *(void (__fastcall **)(_DWORD *, int, _DWORD *, _DWORD))(*(_DWORD *)v7 + 20);
  v13[1] = (int)a2[1];
  v13[0] = v6;
  v8(v10, v7, v13, 0);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v12[2] = v10[2];
  v11[0] = v10[3];
  v11[1] = v10[4];
  v11[2] = v10[5];
  return PFWorld::GetCollisionAt(a1, v12, v11, a3, 0);
}


// ===== 525944 PFWorld::ValidateDirection(Point3D<float> &,Point3D<float> const&,float,uint) =====
int __fastcall PFWorld::ValidateDirection(int a1, float *a2, float *a3, int a4, int a5)
{
  float v5; // r8
  float v6; // r10
  int v10; // r3
  float *v11; // r0
  float v12; // r8
  float v13; // r10
  int v14; // r3
  float v15; // r3
  float v16; // r6
  float v17; // r0
  float *v18; // r6
  float v19; // r0
  float v20; // r9
  float v21; // r6
  float v22; // r6
  float v23; // r8
  float v25; // r5
  float v26; // r6
  float v27; // r0
  float v28; // [sp+1Ch] [bp-B0h] BYREF
  float v29; // [sp+20h] [bp-ACh]
  int v30; // [sp+24h] [bp-A8h]
  float v31; // [sp+28h] [bp-A4h]
  float v32; // [sp+2Ch] [bp-A0h]
  int v33; // [sp+30h] [bp-9Ch]
  float v34; // [sp+34h] [bp-98h]
  float v35; // [sp+38h] [bp-94h]
  int v36; // [sp+3Ch] [bp-90h]
  float v37[4]; // [sp+40h] [bp-8Ch] BYREF
  float v38[4]; // [sp+50h] [bp-7Ch] BYREF
  float v39[4]; // [sp+60h] [bp-6Ch] BYREF
  float v40[4]; // [sp+70h] [bp-5Ch] BYREF
  float v41[3]; // [sp+80h] [bp-4Ch] BYREF
  float v42; // [sp+8Ch] [bp-40h] BYREF
  float v43; // [sp+90h] [bp-3Ch]
  float v44; // [sp+94h] [bp-38h]
  float v45[3]; // [sp+98h] [bp-34h] BYREF
  float v46; // [sp+A4h] [bp-28h] BYREF
  float v47; // [sp+A8h] [bp-24h]
  float v48; // [sp+ACh] [bp-20h]
  _DWORD v49[3]; // [sp+B0h] [bp-1Ch] BYREF
  float v50[2]; // [sp+BCh] [bp-10h] BYREF
  _DWORD v51[2]; // [sp+C4h] [bp-8h] BYREF

  v5 = a2[1];
  v6 = a2[2];
  v46 = *a2;
  v36 = 0;
  v47 = v5;
  v48 = v6;
  memset(v49, 0, sizeof(v49));
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0;
  v34 = 0.0;
  v35 = 0.0;
  if ( !PFWorld::GetCollisionAt(a1, a3, v49, (int)&v28, nullptr, v51, 0) )
    return 0;
  v10 = *(_DWORD *)(v51[0] + 36);
  if ( v10 )
  {
    if ( v10 != (a5 & v10) )
      return 0;
  }
  v11 = (float *)Point3D<float>::normalize(&v46);
  *v11 = *v11 * 10.0;
  v11[1] = v11[1] * 10.0;
  v11[2] = v11[2] * 10.0;
  v12 = a3[1] + v47;
  v13 = a3[2] + v48;
  v45[0] = *a3 + v46;
  v45[1] = v12;
  v45[2] = v13;
  if ( !PFWorld::GetFloorHeightAt(a1, v45, 0, 0, nullptr, (int)v51, 0)
    || (v14 = *(_DWORD *)(v51[0] + 36)) != 0 && v14 != (a5 & v14) )
  {
    v15 = a3[1];
    v16 = *a3;
    v50[1] = 0.0;
    v50[0] = 0.0;
    v40[1] = v15;
    v40[0] = v16;
    v40[3] = v15 + v47;
    v17 = v16 + v46;
    v38[1] = v29;
    v37[3] = v35;
    v18 = v39;
    v39[1] = v29;
    v40[2] = v17;
    v38[0] = v28;
    v37[0] = v31;
    v37[1] = v32;
    v37[2] = v34;
    v39[0] = v28;
    v39[2] = v31;
    v39[3] = v32;
    v38[2] = v34;
    v38[3] = v35;
    if ( glitch::core::line2d<float>::intersectWith(v40, v39, v50)
      || (v18 = v38, glitch::core::line2d<float>::intersectWith(v40, v38, v50))
      || (v18 = v37, glitch::core::line2d<float>::intersectWith(v40, v37, v50)) )
    {
      v48 = 0.0;
      v19 = *v18 - v18[2];
      v20 = v18[1];
      v21 = v18[3];
      v42 = v19;
      v43 = v20 - v21;
      v44 = 0.0;
      if ( COERCE_FLOAT(COERCE_UNSIGNED_INT(Point3D<float>::angle()) & 0x7FFFFFFF) >= 1.5708 )
      {
        LODWORD(v42) += 0x80000000;
        LODWORD(v43) += 0x80000000;
        LODWORD(v44) += 0x80000000;
      }
      Point3D<float>::normalize(&v42);
      v22 = (float)(v43 * 10.0) + a3[1];
      v23 = (float)(v44 * 10.0) + a3[2];
      v41[0] = (float)(v42 * 10.0) + *a3;
      v41[1] = v22;
      v41[2] = v23;
      if ( PFWorld::GetFloorHeightAt(a1, v41, 0, 0, nullptr, 0, 0) )
      {
        v25 = sqrtf((float)((float)(*a2 * *a2) + (float)(a2[1] * a2[1])) + (float)(a2[2] * a2[2]));
        v26 = v25 * v43;
        v27 = v25 * v42;
        a2[2] = v25 * v44;
        *a2 = v27;
        a2[1] = v26;
        return 1;
      }
      return 0;
    }
  }
  return 1;
}


// ===== 525d60 PFWorld::ValidateDirection(Point3D<float> &,PFObject const&) =====
int __fastcall PFWorld::ValidateDirection(int a1, float *a2, int a3)
{
  return PFWorld::ValidateDirection(a1, a2, (float *)(a3 + 24), *(_DWORD *)(a3 + 8), *(_DWORD *)(a3 + 20));
}


// ===== 525d84 PFWorld::ValidatePosition(Point3D<float> &,PFObject *) =====
int __fastcall PFWorld::ValidatePosition(int a1, int a2, int a3)
{
  int result; // r0
  int v7; // r3
  float v8; // r3
  int v9; // [sp+10h] [bp-1Ch] BYREF
  int v10; // [sp+14h] [bp-18h]
  int v11; // [sp+18h] [bp-14h]
  PFFloor *v12; // [sp+1Ch] [bp-10h] BYREF
  int v13; // [sp+20h] [bp-Ch] BYREF
  float v14[2]; // [sp+24h] [bp-8h] BYREF

  if ( a3 && Point3D<float>::operator==(a3 + 24) )
    return 1;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  if ( a3 )
  {
    v7 = *(_DWORD *)(a3 + 12);
    v13 = v7;
    v12 = *(PFFloor **)(a3 + 16);
    if ( v12 )
    {
      if ( PFFloor::GetFloorHeightAt(v12, a2, v14, &v9) )
        goto LABEL_10;
      v7 = v13;
    }
    if ( !v7 || !PFRoom::GetFloorHeightAt(v7, (float *)a2, (int)v14, (int)&v9, &v12, 0) )
    {
      result = PFWorld::GetFloorHeightAt(a1, (float *)a2, (int)v14, (int)&v9, &v13, (int)&v12, 0);
      if ( !result )
      {
LABEL_16:
        *(_DWORD *)a2 = *(_DWORD *)(a3 + 24);
        *(_DWORD *)(a2 + 4) = *(_DWORD *)(a3 + 28);
        *(_DWORD *)(a2 + 8) = *(_DWORD *)(a3 + 32);
        return result;
      }
    }
LABEL_10:
    if ( PFObject::CanPathOn((PFObject *)a3, v12)
      && (*(_BYTE *)(a1 + 148) || *(float *)(a1 + 144) > fabs(v14[0] - *(float *)(a2 + 8))) )
    {
      PFWorld::_ChangeObstacleParentList((PFWorld *)a1, (const PFObject *)a3, v12);
      v8 = *(float *)a2;
      *(float *)(a2 + 8) = v14[0];
      *(float *)(a3 + 24) = v8;
      *(_DWORD *)(a3 + 28) = *(_DWORD *)(a2 + 4);
      *(_DWORD *)(a3 + 32) = *(_DWORD *)(a2 + 8);
      *(_DWORD *)(a3 + 36) = v9;
      *(_DWORD *)(a3 + 40) = v10;
      *(_DWORD *)(a3 + 44) = v11;
      *(_DWORD *)(a3 + 12) = v13;
      *(_DWORD *)(a3 + 16) = v12;
      return 1;
    }
    result = 1;
    goto LABEL_16;
  }
  result = PFWorld::GetFloorHeightAt(a1, (float *)a2, (int)v14, 0, nullptr, 0, 0);
  if ( result )
    *(float *)(a2 + 8) = v14[0];
  return result;
}


// ===== 525f68 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_Meshes.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_Meshes.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F631C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6318 = 1056964608;
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


// ===== 526044 std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject *>(std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject *>(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r0
  _DWORD *v14; // r2
  _DWORD *v15; // r3
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  _DWORD *v18; // r2
  _DWORD *v19; // r3
  _DWORD *v20; // r2
  _DWORD *v21; // r3
  _DWORD **v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD **v27; // r2
  _DWORD **v28; // r2
  int *v29; // r2
  int v30; // r3
  int v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r3
  _DWORD *v38; // r3
  _DWORD *v39; // r2
  _DWORD *v40; // r3
  _DWORD *v41; // r2
  _DWORD **v42; // r2
  _DWORD **v43; // r2
  _DWORD v44[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v45[5]; // [sp+10h] [bp-14h] BYREF

  v8 = (_DWORD *)*a2;
  v12 = a2 + 1;
  v9 = a2[1];
  v10 = *++v12;
  v11 = v12[1];
  v45[0] = v8;
  v45[1] = v9;
  v45[2] = v10;
  v45[3] = v11;
  v13 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v45) >> 2;
  if ( v13 > 0 )
  {
    while ( *(_DWORD *)*a2 != *a4 )
    {
      v20 = (_DWORD *)a2[2];
      v21 = (_DWORD *)(*a2 + 4);
      *a2 = v21;
      if ( v21 == v20 )
      {
        v22 = (_DWORD **)(a2[3] + 4);
        a2[3] = v22;
        v21 = *v22;
        a2[2] = *v22 + 32;
        a2[1] = v21;
        *a2 = v21;
        if ( *v21 == *a4 )
          goto LABEL_15;
      }
      else if ( *v21 == *a4 )
      {
        goto LABEL_15;
      }
      v14 = (_DWORD *)a2[2];
      v15 = v21 + 1;
      *a2 = v15;
      if ( v15 == v14 )
      {
        v27 = (_DWORD **)(a2[3] + 4);
        a2[3] = v27;
        v15 = *v27;
        a2[2] = *v27 + 32;
        a2[1] = v15;
        *a2 = v15;
      }
      if ( *v15 == *a4 )
        break;
      v16 = (_DWORD *)a2[2];
      v17 = v15 + 1;
      *a2 = v17;
      if ( v17 == v16 )
      {
        v28 = (_DWORD **)(a2[3] + 4);
        a2[3] = v28;
        v17 = *v28;
        a2[2] = *v28 + 32;
        a2[1] = v17;
        *a2 = v17;
      }
      if ( *v17 == *a4 )
        break;
      v18 = (_DWORD *)a2[2];
      v19 = v17 + 1;
      *a2 = v19;
      if ( v19 == v18 )
      {
        --v13;
        v29 = (int *)(a2[3] + 4);
        a2[3] = v29;
        v30 = *v29;
        a2[2] = *v29 + 128;
        *a2 = v30;
        a2[1] = v30;
        if ( !v13 )
          goto LABEL_18;
      }
      else if ( !--v13 )
      {
        goto LABEL_18;
      }
    }
    goto LABEL_15;
  }
LABEL_18:
  v31 = a2[1];
  v32 = a2[2];
  v33 = a2[3];
  v44[0] = *a2;
  v44[1] = v31;
  v44[2] = v32;
  v44[3] = v33;
  v34 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v44);
  switch ( v34 )
  {
    case 2:
      v38 = (_DWORD *)*a2;
      break;
    case 3:
      if ( *(_DWORD *)*a2 == *a4 )
        goto LABEL_15;
      v41 = (_DWORD *)a2[2];
      v38 = (_DWORD *)(*a2 + 4);
      *a2 = v38;
      if ( v38 == v41 )
      {
        v42 = (_DWORD **)(a2[3] + 4);
        a2[3] = v42;
        v38 = *v42;
        a2[2] = *v42 + 32;
        a2[1] = v38;
        *a2 = v38;
      }
      break;
    case 1:
      v40 = (_DWORD *)*a2;
      goto LABEL_26;
    default:
LABEL_21:
      v35 = a3[1];
      v36 = a3[2];
      v37 = a3[3];
      *a1 = *a3;
      a1[1] = v35;
      a1[2] = v36;
      a1[3] = v37;
      return a1;
  }
  if ( *v38 == *a4 )
    goto LABEL_15;
  v39 = (_DWORD *)a2[2];
  v40 = v38 + 1;
  *a2 = v40;
  if ( v40 == v39 )
  {
    v43 = (_DWORD **)(a2[3] + 4);
    a2[3] = v43;
    v40 = *v43;
    a2[2] = *v43 + 32;
    a2[1] = v40;
    *a2 = v40;
  }
LABEL_26:
  if ( *v40 != *a4 )
    goto LABEL_21;
LABEL_15:
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  *a1 = *a2;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  return a1;
}


// ===== 5262c4 std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject const*>(std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject const* const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject const*>(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r0
  _DWORD *v14; // r2
  _DWORD *v15; // r3
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  _DWORD *v18; // r2
  _DWORD *v19; // r3
  _DWORD *v20; // r2
  _DWORD *v21; // r3
  _DWORD **v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD **v27; // r2
  _DWORD **v28; // r2
  int *v29; // r2
  int v30; // r3
  int v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r3
  _DWORD *v38; // r3
  _DWORD *v39; // r2
  _DWORD *v40; // r3
  _DWORD *v41; // r2
  _DWORD **v42; // r2
  _DWORD **v43; // r2
  _DWORD v44[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v45[5]; // [sp+10h] [bp-14h] BYREF

  v8 = (_DWORD *)*a2;
  v12 = a2 + 1;
  v9 = a2[1];
  v10 = *++v12;
  v11 = v12[1];
  v45[0] = v8;
  v45[1] = v9;
  v45[2] = v10;
  v45[3] = v11;
  v13 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v45) >> 2;
  if ( v13 > 0 )
  {
    while ( *(_DWORD *)*a2 != *a4 )
    {
      v20 = (_DWORD *)a2[2];
      v21 = (_DWORD *)(*a2 + 4);
      *a2 = v21;
      if ( v21 == v20 )
      {
        v22 = (_DWORD **)(a2[3] + 4);
        a2[3] = v22;
        v21 = *v22;
        a2[2] = *v22 + 32;
        a2[1] = v21;
        *a2 = v21;
        if ( *v21 == *a4 )
          goto LABEL_15;
      }
      else if ( *v21 == *a4 )
      {
        goto LABEL_15;
      }
      v14 = (_DWORD *)a2[2];
      v15 = v21 + 1;
      *a2 = v15;
      if ( v15 == v14 )
      {
        v27 = (_DWORD **)(a2[3] + 4);
        a2[3] = v27;
        v15 = *v27;
        a2[2] = *v27 + 32;
        a2[1] = v15;
        *a2 = v15;
      }
      if ( *v15 == *a4 )
        break;
      v16 = (_DWORD *)a2[2];
      v17 = v15 + 1;
      *a2 = v17;
      if ( v17 == v16 )
      {
        v28 = (_DWORD **)(a2[3] + 4);
        a2[3] = v28;
        v17 = *v28;
        a2[2] = *v28 + 32;
        a2[1] = v17;
        *a2 = v17;
      }
      if ( *v17 == *a4 )
        break;
      v18 = (_DWORD *)a2[2];
      v19 = v17 + 1;
      *a2 = v19;
      if ( v19 == v18 )
      {
        --v13;
        v29 = (int *)(a2[3] + 4);
        a2[3] = v29;
        v30 = *v29;
        a2[2] = *v29 + 128;
        *a2 = v30;
        a2[1] = v30;
        if ( !v13 )
          goto LABEL_18;
      }
      else if ( !--v13 )
      {
        goto LABEL_18;
      }
    }
    goto LABEL_15;
  }
LABEL_18:
  v31 = a2[1];
  v32 = a2[2];
  v33 = a2[3];
  v44[0] = *a2;
  v44[1] = v31;
  v44[2] = v32;
  v44[3] = v33;
  v34 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v44);
  switch ( v34 )
  {
    case 2:
      v38 = (_DWORD *)*a2;
      break;
    case 3:
      if ( *(_DWORD *)*a2 == *a4 )
        goto LABEL_15;
      v41 = (_DWORD *)a2[2];
      v38 = (_DWORD *)(*a2 + 4);
      *a2 = v38;
      if ( v38 == v41 )
      {
        v42 = (_DWORD **)(a2[3] + 4);
        a2[3] = v42;
        v38 = *v42;
        a2[2] = *v42 + 32;
        a2[1] = v38;
        *a2 = v38;
      }
      break;
    case 1:
      v40 = (_DWORD *)*a2;
      goto LABEL_26;
    default:
LABEL_21:
      v35 = a3[1];
      v36 = a3[2];
      v37 = a3[3];
      *a1 = *a3;
      a1[1] = v35;
      a1[2] = v36;
      a1[3] = v37;
      return a1;
  }
  if ( *v38 == *a4 )
    goto LABEL_15;
  v39 = (_DWORD *)a2[2];
  v40 = v38 + 1;
  *a2 = v40;
  if ( v40 == v39 )
  {
    v43 = (_DWORD **)(a2[3] + 4);
    a2[3] = v43;
    v40 = *v43;
    a2[2] = *v43 + 32;
    a2[1] = v40;
    *a2 = v40;
  }
LABEL_26:
  if ( *v40 != *a4 )
    goto LABEL_21;
LABEL_15:
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  *a1 = *a2;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  return a1;
}


// ===== 526544 std::priv::__ucopy<std::priv::_Deque_iterator<PFObject *,std::_Const_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(std::priv::_Deque_iterator<PFObject *,std::_Const_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Const_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::random_access_iterator_tag const&,int *) =====
int *std::priv::__ucopy<std::priv::_Deque_iterator<PFObject *,std::_Const_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
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
  v5 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract((int *)&va1, (_DWORD **)&varg_r1a);
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


// ===== 526634 std::priv::__copy_backward<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__copy_backward<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
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
  v12 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v25);
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


// ===== 526730 std::priv::__copy<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
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
  v13 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v28);
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


// ===== 526828 std::priv::_Deque_iterator_base<PFObject *>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<PFObject *>::_M_advance(_DWORD *result, int a2)
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


// ===== 52689c std::deque<PFObject *,std::allocator<PFObject *>>::_M_erase(std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::__false_type const&) =====
int *__fastcall std::deque<PFObject *>::_M_erase(int *a1, int *a2, int *a3)
{
  int v3; // r7
  int v4; // r11
  int v5; // r6
  int v6; // r9
  int v7; // t1
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // t0
  unsigned int v16; // r8
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r12
  int v21; // r5
  unsigned int v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v30; // lr
  int v31; // r5
  unsigned int v32; // r2
  std::__node_alloc *v33; // r0
  int *v34; // r2
  int v35; // r3
  int v36; // r2
  std::__node_alloc *v37; // r0
  int *v38; // r2
  int v39; // r3
  int v40; // [sp+8h] [bp-D4h]
  int v41; // [sp+8h] [bp-D4h]
  int v42; // [sp+Ch] [bp-D0h]
  int v43; // [sp+Ch] [bp-D0h]
  int v44; // [sp+10h] [bp-CCh]
  int v45; // [sp+10h] [bp-CCh]
  int v46; // [sp+14h] [bp-C8h]
  int v47; // [sp+18h] [bp-C4h]
  int v48; // [sp+18h] [bp-C4h]
  int v49; // [sp+1Ch] [bp-C0h]
  int v50; // [sp+20h] [bp-BCh] BYREF
  int v51; // [sp+24h] [bp-B8h]
  int v52; // [sp+28h] [bp-B4h]
  int v53; // [sp+2Ch] [bp-B0h]
  _DWORD v54[4]; // [sp+30h] [bp-ACh] BYREF
  _DWORD v55[4]; // [sp+40h] [bp-9Ch] BYREF
  _DWORD v56[4]; // [sp+50h] [bp-8Ch] BYREF
  int v57[4]; // [sp+60h] [bp-7Ch] BYREF
  int v58[4]; // [sp+70h] [bp-6Ch] BYREF
  int v59[4]; // [sp+80h] [bp-5Ch] BYREF
  int v60[4]; // [sp+90h] [bp-4Ch] BYREF
  int v61[4]; // [sp+A0h] [bp-3Ch] BYREF
  _DWORD v62[4]; // [sp+B0h] [bp-2Ch] BYREF
  _DWORD v63[4]; // [sp+C0h] [bp-1Ch] BYREF

  v3 = a3[2];
  v4 = a3[3];
  v5 = *a3 + 4;
  v6 = a3[1];
  if ( v5 == v3 )
  {
    v7 = *(_DWORD *)(v4 + 4);
    v4 += 4;
    v6 = v7;
  }
  v11 = *a2;
  v15 = a2 + 1;
  v12 = a2[1];
  v13 = *++v15;
  v14 = v15[1];
  v63[0] = v11;
  v63[1] = v12;
  v63[2] = v13;
  v63[3] = v14;
  if ( v5 == v3 )
  {
    v3 = v6 + 128;
    v5 = v6;
  }
  v16 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a3, v63);
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v62[0] = *a2;
  v62[1] = v17;
  v62[2] = v18;
  v62[3] = v19;
  if ( v16 >= (unsigned int)std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a2 + 4, v62) >> 1 )
  {
    v41 = a3[3];
    v48 = a2[4];
    v46 = a2[5];
    v30 = a2[6];
    v45 = *a3;
    v43 = a3[1];
    v31 = a3[2];
    v55[3] = a2[7];
    v55[2] = v30;
    v55[1] = v46;
    v55[0] = v48;
    v54[2] = v31;
    v54[3] = v41;
    v56[3] = v4;
    v56[2] = v3;
    v56[1] = v6;
    v56[0] = v5;
    v54[1] = v43;
    v54[0] = v45;
    std::priv::__copy<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
      v57,
      (int)v56,
      v55,
      (int)v54);
    v33 = (std::__node_alloc *)a2[4];
    if ( v33 == (std::__node_alloc *)a2[5] )
    {
      if ( v33 )
        std::__node_alloc::deallocate(v33, (unsigned int)&dword_80, v32);
      v34 = (int *)(a2[7] - 4);
      a2[7] = (int)v34;
      v35 = *v34;
      v36 = *v34 + 124;
      a2[6] = v35 + 128;
      a2[4] = v36;
      a2[5] = v35;
    }
    else
    {
      a2[4] = (int)&v33[-4];
    }
  }
  else
  {
    v40 = a3[3];
    v49 = *a2;
    v47 = a2[1];
    v44 = *a3;
    v42 = a3[1];
    v20 = a3[2];
    v21 = a2[3];
    v60[2] = a2[2];
    v60[3] = v21;
    v59[2] = v20;
    v60[1] = v47;
    v60[0] = v49;
    v59[0] = v44;
    v59[3] = v40;
    v59[1] = v42;
    v58[3] = v4;
    v58[2] = v3;
    v58[1] = v6;
    v58[0] = v5;
    std::priv::__copy_backward<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
      v61,
      v60,
      v59,
      v58);
    v22 = a2[2] - 4;
    if ( *a2 == v22 )
    {
      v37 = (std::__node_alloc *)a2[1];
      if ( v37 )
        std::__node_alloc::deallocate(v37, (unsigned int)&dword_80, v22);
      v38 = (int *)(a2[3] + 4);
      a2[3] = (int)v38;
      v39 = *v38;
      a2[2] = *v38 + 128;
      *a2 = v39;
      a2[1] = v39;
    }
    else
    {
      *a2 += 4;
    }
  }
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  v50 = *a2;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  std::priv::_Deque_iterator_base<PFObject *>::_M_advance(&v50, v16);
  v26 = v51;
  v27 = v52;
  v28 = v53;
  *a1 = v50;
  a1[1] = v26;
  a1[2] = v27;
  a1[3] = v28;
  return a1;
}


// ===== 526b18 PFWorld::InitObject(PFObject &,bool,Point3D<float> const&,float,void *) =====
int __fastcall PFWorld::InitObject(int a1, int *a2, int a3, int *a4, float a5, int a6)
{
  bool v6; // zf
  int v8; // r2
  int v10; // r3
  int v11; // r8
  unsigned int v12; // r3
  float *v14; // r1

  v6 = a3 == 0;
  v8 = a6;
  v10 = a2[1];
  *a2 = a6;
  v11 = LODWORD(a5);
  if ( v6 )
    v12 = v10 & 0xFFFFFFFE;
  else
    v12 = v10 | 1;
  a2[1] = v12;
  if ( a5 < 1.0 )
    v11 = 1065353216;
  a2[2] = v11;
  a2[6] = *a4;
  v14 = (float *)(a2 + 6);
  if ( !a3 )
    v8 = (int)(a2 + 8);
  a2[7] = a4[1];
  if ( a3 )
    v8 = 0;
  a2[8] = a4[2];
  return PFWorld::GetFloorHeightAt(a1, v14, v8, (int)(a2 + 9), a2 + 3, (int)(a2 + 4), 0);
}


// ===== 526bb4 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_Objects.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_Objects.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9F6328 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6324 = 1056964608;
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


// ===== 526c90 std::allocator<PFWorld::ObstacleForce>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PFWorld::ObstacleForce>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 526d18 std::allocator<PFObject **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<PFObject **>::allocate(int a1, unsigned int a2)
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
    return CustomAlloc(4 * a2);
  else
    return __ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
}


// ===== 526d78 std::allocator<PFObject *>::allocate(uint,void const*) [clone] =====
void *std::allocator<PFObject *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 526d98 std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::_M_initialize_map(uint) =====
char *__fastcall std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::_M_initialize_map(
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

  v2 = a2 >> 5;
  v3 = a2;
  v4 = (a2 >> 5) + 3;
  if ( v4 < 8 )
    v4 = 8;
  a1[9] = v4;
  result = (char *)std::allocator<PFObject **>::allocate((int)(a1 + 8), v4);
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
      result = (char *)std::allocator<PFObject *>::allocate();
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
  a1[4] = v14 + 4 * (v3 & 0x1F);
  a1[6] = v14 + 128;
  a1[5] = v14;
  return result;
}


// ===== 526e44 std::deque<PFObject *,std::allocator<PFObject *>>::deque(std::deque<PFObject *,std::allocator<PFObject *>> const&) =====
int *__fastcall std::deque<PFObject *>::deque(int *a1, int *a2)
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
  v9 = std::priv::_Deque_iterator_base<PFObject *>::_M_subtract(a2 + 4, v25);
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
  std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::_M_initialize_map(a1, v9);
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
  std::priv::__ucopy<std::priv::_Deque_iterator<PFObject *,std::_Const_traits<PFObject *>>,std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,int>(
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


// ===== 526f40 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::_M_create_node(std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 60;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[4] = *a2;
  std::deque<PFObject *>::deque(v3 + 5, a2 + 1);
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 526f8c std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_create_node(
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


// ===== 527064 std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::insert_unique(std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>> const&) =====
int __fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
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
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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


// ===== 5271ec std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>,std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
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
      std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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
        std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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
            std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
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
              std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
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
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 527560 std::map<PFFloor *,std::deque<PFObject *,std::allocator<PFObject *>>,std::less<PFFloor *>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *,std::allocator<PFObject *>>>>>::operator[]<PFFloor *>(PFFloor * const&) =====
_DWORD *__fastcall std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>(_DWORD *a1, unsigned int *a2)
{
  _DWORD *v2; // r4
  unsigned int v5; // r1
  _DWORD *v6; // r2
  unsigned int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  _DWORD *v11; // r4
  unsigned int v13; // [sp+4h] [bp-5Ch] BYREF
  int v14[10]; // [sp+8h] [bp-58h] BYREF
  int v15[10]; // [sp+30h] [bp-30h] BYREF
  _DWORD *v16; // [sp+58h] [bp-8h] BYREF
  _DWORD *v17; // [sp+5Ch] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = v2[4];
      v8 = v5 > v7;
      if ( v5 <= v7 )
        v9 = (_DWORD *)v2[2];
      else
        v9 = (_DWORD *)v2[3];
      if ( v8 )
        v2 = v6;
      v6 = v2;
      if ( !v9 )
        break;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = v2, *a2 < v2[4]) )
  {
    memset(v15, 0, sizeof(v15));
    std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::_M_initialize_map(v15, 0);
    v13 = *a2;
    std::deque<PFObject *>::deque(v14, v15);
    v16 = v2;
    std::priv::_Rb_tree<PFFloor *,std::less<PFFloor *>,std::pair<PFFloor * const,std::deque<PFObject *>>,std::priv::_Select1st<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::priv::_MapTraitsT<std::pair<PFFloor * const,std::deque<PFObject *>>>,std::allocator<std::pair<PFFloor * const,std::deque<PFObject *>>>>::insert_unique(
      &v17,
      a1,
      &v16,
      &v13);
    v11 = v17;
    std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::~_Deque_base(v14);
    std::priv::_Deque_base<PFObject *,std::allocator<PFObject *>>::~_Deque_base(v15);
    v10 = v11;
  }
  return v10 + 5;
}


// ===== 527660 PFWorld::_CalcObstaclesForce(PFObject const&,Point3D<float> &,std::vector<PFWorld::ObstacleForce,std::allocator<PFWorld::ObstacleForce>> *) =====
int __fastcall PFWorld::_CalcObstaclesForce(int a1, int a2, float *a3, _DWORD *a4)
{
  _DWORD *v5; // r0
  _DWORD *v6; // r10
  _DWORD *v7; // r4
  _DWORD *v8; // r8
  _DWORD *v9; // r7
  float *v10; // r5
  int v11; // r3
  PhysicalObject *v12; // r0
  float v13; // r3
  PhysicalObject *v14; // r1
  bool v15; // zf
  float v16; // r11
  float v17; // r0
  float v18; // r9
  float v19; // r0
  int v20; // r2
  float v21; // r11
  float v22; // r9
  _DWORD *v23; // r3
  float *v24; // r2
  float v26; // r3
  float v27; // r11
  float v28; // r11
  float v29; // r9
  float v30; // r11
  float v31; // r3
  int v32; // r2
  int v33; // r12
  unsigned int v34; // r0
  unsigned int v35; // r1
  _DWORD *v36; // r2
  int v37; // r12
  float *v38; // r2
  _DWORD *v39; // r1
  int v40; // r0
  int v41; // lr
  char *v42; // r5
  _DWORD *v43; // r0
  int v44; // r3
  size_t v45; // r1
  _DWORD *v46; // r3
  float v47; // [sp+8h] [bp-54h]
  int v48; // [sp+Ch] [bp-50h]
  int v50; // [sp+18h] [bp-44h]
  float v51; // [sp+1Ch] [bp-40h]
  float v52; // [sp+1Ch] [bp-40h]
  float v53; // [sp+20h] [bp-3Ch]
  _DWORD *v54; // [sp+20h] [bp-3Ch]
  float v56; // [sp+2Ch] [bp-30h]
  int v57; // [sp+30h] [bp-2Ch]
  float v58; // [sp+48h] [bp-14h] BYREF
  float v59; // [sp+4Ch] [bp-10h]
  float v60; // [sp+50h] [bp-Ch]
  size_t v61; // [sp+54h] [bp-8h] BYREF

  v5 = std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>((_DWORD *)(a1 + 44), (unsigned int *)(a2 + 16));
  v6 = (_DWORD *)v5[4];
  v7 = (_DWORD *)*v5;
  v50 = v5[3];
  v8 = (_DWORD *)v5[2];
  v58 = 0.0;
  v59 = 0.0;
  v60 = 0.0;
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 0.0;
  if ( v7 != v6 )
  {
    v9 = (_DWORD *)(a2 + 56);
    v57 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v10 = (float *)*v7;
        if ( !*v7 )
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
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_Objects.cpp",
              60);
          }
        }
        v11 = *((_DWORD *)v10 + 1);
        if ( (v11 & 4) == 0 || (float *)a2 == v10 || (v11 & 8) == 0 )
          goto LABEL_20;
        v12 = *(PhysicalObject **)a2;
        v13 = *v10;
        if ( *(_DWORD *)a2 )
          v12 = *((PhysicalObject **)v12 + 183);
        if ( v13 == 0.0 )
          break;
        v14 = *(PhysicalObject **)(LODWORD(v13) + 732);
        v15 = v12 == nullptr;
        if ( v12 )
          v15 = v14 == nullptr;
        if ( v15 || PhysicalObject::canCollide(v12, v14) )
          break;
        if ( v8 == ++v7 )
        {
          v7 = *(_DWORD **)(v50 + 4);
          v50 += 4;
          v8 = v7 + 32;
        }
        if ( v6 == v7 )
          return v57;
      }
      v16 = *(float *)(a2 + 24) - v10[6];
      v17 = *(float *)(a2 + 28) - v10[7];
      v18 = v17;
      v60 = *(float *)(a2 + 32) - v10[8];
      v58 = v16;
      v59 = v17;
      v19 = v16 * v16;
      v20 = *(_DWORD *)(a2 + 56);
      v21 = *(float *)(a2 + 8);
      v53 = v10[2];
      v22 = v19 + (float)(v18 * v18);
      v51 = v10[12];
      if ( (_DWORD *)v20 == v9 )
        break;
      v23 = *(_DWORD **)(a2 + 56);
      do
        v23 = (_DWORD *)*v23;
      while ( v9 != v23 );
      v24 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v20 + 8) + 40))(*(_DWORD *)(v20 + 8));
      v56 = *(float *)(a2 + 28);
      v26 = *(float *)(a2 + 24);
      if ( v22 < (float)((float)((float)(*v24 - v26) * (float)(*v24 - v26))
                       + (float)((float)(v24[1] - v56) * (float)(v24[1] - v56))) )
        goto LABEL_24;
LABEL_20:
      if ( v8 == ++v7 )
      {
        v7 = *(_DWORD **)(v50 + 4);
        v50 += 4;
        v8 = v7 + 32;
      }
      if ( v6 == v7 )
        return v57;
    }
    v26 = *(float *)(a2 + 24);
    v56 = *(float *)(a2 + 28);
LABEL_24:
    if ( v22 < (float)((float)((float)(*(float *)(a2 + 64) - v26) * (float)(*(float *)(a2 + 64) - v26))
                     + (float)((float)(*(float *)(a2 + 68) - v56) * (float)(*(float *)(a2 + 68) - v56))) )
    {
      v27 = (float)((float)(v21 + v53) + v51) * (float)((float)(v21 + v53) + v51);
      if ( v27 > v22 )
      {
        v52 = 1.0 - (float)(v22 / v27);
        v60 = 0.0;
        Point3D<float>::normalize(&v58);
        v28 = v52 * v10[13];
        v29 = v28 * v58;
        v58 = v28 * v58;
        v59 = v28 * v59;
        v47 = v59;
        v30 = v28 * v60;
        v60 = v30;
        v31 = v59;
        if ( a4 )
        {
          v32 = a4[1];
          v33 = a4[2];
          if ( v32 == v33 )
          {
            v34 = -858993459 * ((v33 - *a4) >> 2);
            if ( v34 )
              v35 = -1717986918 * ((v33 - *a4) >> 2);
            else
              v35 = 1;
            if ( v35 > 0xCCCCCCC || v34 > v35 )
              v35 = 214748364;
            v61 = v35;
            v48 = v33;
            v54 = std::allocator<PFWorld::ObstacleForce>::_M_allocate((int)(a4 + 2), v35, &v61);
            v36 = (_DWORD *)*a4;
            v37 = -858993459 * ((v48 - *a4) >> 2);
            if ( v37 > 0 )
            {
              v39 = v54;
              v40 = -858993459 * ((v48 - *a4) >> 2);
              do
              {
                --v40;
                *v39 = *v36;
                v39[1] = v36[1];
                v39[2] = v36[2];
                v39[3] = v36[3];
                v41 = v36[4];
                v36 += 5;
                v39[4] = v41;
                v39 += 5;
              }
              while ( v40 );
              v38 = (float *)&v54[5 * v37];
            }
            else
            {
              v38 = (float *)v54;
            }
            *v38 = v29;
            v38[1] = v47;
            v38[2] = v30;
            *((_DWORD *)v38 + 4) = v10;
            v42 = (char *)(v38 + 5);
            v38[3] = v52;
            v43 = (_DWORD *)*a4;
            v44 = a4[1];
            if ( v44 != *a4 )
              v44 += -20 * ((214748365 * ((unsigned int)(v44 - 20 - (_DWORD)v43) >> 2)) & 0x3FFFFFFF) - 20;
            if ( v44 )
            {
              v45 = 4 * ((a4[2] - v44) >> 2);
              if ( v45 > 0x80 )
                CustomFree(v43);
              else
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v43, v45);
            }
            v29 = v58;
            v46 = &v54[5 * v61];
            *a4 = v54;
            a4[1] = v42;
            a4[2] = v46;
          }
          else
          {
            *(_DWORD *)(v32 + 16) = v10;
            *(float *)v32 = v29;
            *(float *)(v32 + 4) = v31;
            *(float *)(v32 + 8) = v30;
            *(float *)(v32 + 12) = v52;
            v29 = v58;
            a4[1] += 20;
          }
        }
        *a3 = *a3 + v29;
        a3[1] = a3[1] + v59;
        a3[2] = a3[2] + v60;
        ++v57;
      }
    }
    goto LABEL_20;
  }
  return 0;
}


// ===== 527cc4 PFWorld::AvoidObstacles(PFObject const&,Point3D<float> &) =====
int __fastcall PFWorld::AvoidObstacles(int result, int a2, float *a3)
{
  int v4; // r3
  float v5; // r10
  float v6; // r8
  float v7; // r9
  float *v8; // r0
  float v9; // r8
  float v10; // r6
  float v11; // r4
  float v12; // r11
  float v13; // r10
  float v14; // r0
  float v15; // r9
  float v16; // r0
  float v17; // r2
  float v18; // r3
  float v19; // [sp+8h] [bp-3Ch]
  unsigned int v20; // [sp+Ch] [bp-38h]
  float v21[3]; // [sp+10h] [bp-34h] BYREF
  float v22; // [sp+1Ch] [bp-28h]
  float v23; // [sp+20h] [bp-24h]
  float v24; // [sp+24h] [bp-20h]
  _DWORD v25[3]; // [sp+28h] [bp-1Ch] BYREF
  float v26; // [sp+34h] [bp-10h] BYREF
  float v27; // [sp+38h] [bp-Ch]
  float v28; // [sp+3Ch] [bp-8h]

  if ( *(_DWORD *)(a2 + 16) )
  {
    v4 = *(_DWORD *)(a2 + 4);
    if ( (v4 & 1) == 0 && (v4 & 2) != 0 )
    {
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      memset(v25, 0, sizeof(v25));
      v20 = PFWorld::_CalcObstaclesForce(result, a2, &v26, v25);
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      if ( !v20 )
        return std::vector<PFWorld::ObstacleForce>::~vector((int)v25);
      v5 = *a3;
      v6 = a3[1];
      v7 = a3[2];
      if ( (float)((float)((float)(*a3 * v26) + (float)(v6 * v27)) + (float)(v7 * v28)) >= 0.0 )
        return std::vector<PFWorld::ObstacleForce>::~vector((int)v25);
      v21[0] = (float)(v6 * *(float *)&dword_99F880) - (float)(v7 * *(float *)&dword_99F87C);
      v21[1] = (float)(v7 * *(float *)&Vec3f_K) - (float)(v5 * *(float *)&dword_99F880);
      v21[2] = (float)(v5 * *(float *)&dword_99F87C) - (float)(v6 * *(float *)&Vec3f_K);
      v8 = (float *)Point3D<float>::normalize(v21);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = (float)((float)(*v8 * v26) + (float)(v10 * v27)) + (float)(v11 * v28);
      v13 = sqrtf((float)((float)(v26 * v26) + (float)(v27 * v27)) + (float)(v28 * v28));
      v19 = sqrtf((float)((float)(*a3 * *a3) + (float)(a3[1] * a3[1])) + (float)(a3[2] * a3[2]));
      if ( COERCE_FLOAT(LODWORD(v12) & 0x7FFFFFFF) >= 0.0001 )
      {
        v14 = v12 / COERCE_FLOAT(LODWORD(v12) & 0x7FFFFFFF);
        v9 = v9 * v14;
        v10 = v10 * v14;
        v11 = v11 * v14;
      }
      v15 = (float)(v13 * v9) + *a3;
      v16 = (float)(v13 * v11) + a3[2];
      v23 = (float)(v13 * v10) + a3[1];
      v24 = v16;
      v22 = v15;
      if ( v20 > 1 )
      {
        if ( Point3D<float>::angle() >= 0.087266 )
        {
          *a3 = *a3 + (float)((float)(v19 * 0.087489) * v9);
          a3[1] = a3[1] + (float)((float)(v19 * 0.087489) * v10);
          a3[2] = a3[2] + (float)((float)(v19 * 0.087489) * v11);
          return std::vector<PFWorld::ObstacleForce>::~vector((int)v25);
        }
        v15 = v22;
      }
      v17 = v23;
      v18 = v24;
      *a3 = v15;
      a3[1] = v17;
      a3[2] = v18;
      return std::vector<PFWorld::ObstacleForce>::~vector((int)v25);
    }
  }
  return result;
}


// ===== 5280b0 std::deque<PFObject *,std::allocator<PFObject *>>::_M_push_back_aux_v(PFObject * const&) =====
void *__fastcall std::deque<PFObject *>::_M_push_back_aux_v(int a1, _DWORD *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  void *result; // r0
  int *v8; // r2
  int v9; // r3
  int v10; // r2
  char *v11; // r1
  int v12; // r7
  int v13; // r9
  char *v14; // r6
  int v15; // r2
  unsigned int v16; // r8
  char *v17; // r0
  const void *v18; // r1
  size_t v19; // r2
  char *v20; // r10
  void *v21; // r0
  size_t v22; // r1
  int v23; // r3
  int v24; // r3

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v11 = *(char **)(a1 + 12);
    v12 = ((v2 - v11) >> 2) + 1;
    v13 = ((v2 - v11) >> 2) + 2;
    if ( v4 <= 2 * v13 )
    {
      if ( v4 )
        v15 = *(_DWORD *)(a1 + 36);
      else
        v15 = 1;
      v16 = v4 + 2 + v15;
      v17 = (char *)std::allocator<PFObject **>::allocate(a1 + 32, v16);
      v18 = *(const void **)(a1 + 12);
      v19 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v18;
      v20 = v17;
      v14 = &v17[4 * ((v16 - v13) >> 1)];
      if ( v19 )
        memmove(&v17[4 * ((v16 - v13) >> 1)], v18, v19);
      v21 = *(void **)(a1 + 32);
      if ( v21 )
      {
        v22 = 4 * *(_DWORD *)(a1 + 36);
        if ( v22 > 0x80 )
          CustomFree(v21);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v21, v22);
      }
      *(_DWORD *)(a1 + 32) = v20;
      *(_DWORD *)(a1 + 36) = v16;
    }
    else
    {
      v14 = (char *)(v3 + 4 * ((v4 - v13) >> 1));
      if ( v11 <= v14 )
      {
        if ( v2 + 4 - v11 > 0 )
          memmove(&v14[4 * v12 - (v2 + 4 - v11)], v11, v2 + 4 - v11);
      }
      else if ( v2 + 4 != v11 )
      {
        memmove(v14, v11, v2 + 4 - v11);
      }
    }
    *(_DWORD *)(a1 + 12) = v14;
    v23 = *(_DWORD *)v14;
    v2 = &v14[4 * v12 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v14 + 128;
    *(_DWORD *)(a1 + 4) = v23;
    *(_DWORD *)(a1 + 28) = v2;
    v24 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 128;
    *(_DWORD *)(a1 + 20) = v24;
  }
  result = std::allocator<PFObject *>::allocate();
  *((_DWORD *)v2 + 1) = result;
  **(_DWORD **)(a1 + 16) = *a2;
  v8 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v8;
  v9 = *v8;
  v10 = *v8 + 128;
  *(_DWORD *)(a1 + 16) = v9;
  *(_DWORD *)(a1 + 24) = v10;
  *(_DWORD *)(a1 + 20) = v9;
  return result;
}


// ===== 528234 PFWorld::InitObstacle(PFObject &,bool,float,float) =====
int __fastcall PFWorld::InitObstacle(PFWorld *this, PFObject *a2, int a3, float a4, float a5)
{
  int result; // r0
  int v10; // r3
  int v11; // r3
  char *v12; // r2
  unsigned int *v13; // r6
  _DWORD *v14; // r2
  int *v15; // r0
  int v16; // r6
  int v17; // r7
  int v18; // r11
  int v19; // lr
  int v20; // r8
  int v21; // r10
  int v22; // r9
  int *v23; // r5
  int v24[4]; // [sp+10h] [bp-64h] BYREF
  int v25[4]; // [sp+20h] [bp-54h] BYREF
  _DWORD v26[4]; // [sp+30h] [bp-44h] BYREF
  _DWORD v27[4]; // [sp+40h] [bp-34h] BYREF
  _DWORD v28[4]; // [sp+50h] [bp-24h] BYREF
  PFObject *v29; // [sp+60h] [bp-14h] BYREF
  PFObject *v30; // [sp+64h] [bp-10h] BYREF

  result = a4 >= 0.0;
  if ( a4 < 0.0 )
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
                 "radius >= 0.0f",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_Objects.cpp",
                 156);
    }
  }
  if ( !a3 || (result = a5 == 0.0) != 0 )
  {
    v10 = *((_DWORD *)a2 + 1);
    if ( (v10 & 4) != 0 )
    {
      v15 = std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>(
              (_DWORD *)this + 11,
              (unsigned int *)a2 + 4);
      v16 = v15[1];
      v17 = v15[2];
      v18 = v15[3];
      v19 = *v15;
      v20 = v15[6];
      v21 = v15[5];
      v22 = v15[4];
      v23 = v15;
      v27[3] = v15[7];
      v26[3] = v18;
      v26[2] = v17;
      v26[1] = v16;
      v26[0] = v19;
      v27[2] = v20;
      v27[1] = v21;
      v27[0] = v22;
      v29 = a2;
      result = (int)std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject *>(
                      v28,
                      v26,
                      v27,
                      &v29);
      if ( v23[4] != v28[0] )
      {
        v24[3] = v28[3];
        v24[2] = v28[2];
        v24[0] = v28[0];
        v24[1] = v28[1];
        result = (int)std::deque<PFObject *>::_M_erase(v25, v23, v24);
      }
      v10 = *((_DWORD *)a2 + 1);
    }
    *((_DWORD *)a2 + 1) = v10 & 0xFFFFFFFB;
    *((_DWORD *)a2 + 13) = 0;
    *((_DWORD *)a2 + 12) = 0;
    return result;
  }
  v11 = *((_DWORD *)a2 + 1);
  if ( (v11 & 4) != 0 )
  {
LABEL_18:
    *((_DWORD *)a2 + 1) = v11 | 4;
    *((float *)a2 + 12) = a4;
    *((float *)a2 + 13) = a5;
    return result;
  }
  v12 = *((char **)a2 + 4);
  if ( v12 )
  {
    v13 = (unsigned int *)((char *)a2 + 16);
LABEL_15:
    result = (int)std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>((_DWORD *)this + 11, v13);
    v30 = a2;
    v14 = *(_DWORD **)(result + 16);
    if ( v14 == (_DWORD *)(*(_DWORD *)(result + 24) - 4) )
    {
      result = (int)std::deque<PFObject *>::_M_push_back_aux_v(result, &v30);
    }
    else
    {
      *v14 = a2;
      *(_DWORD *)(result + 16) += 4;
    }
    v11 = *((_DWORD *)a2 + 1);
    goto LABEL_18;
  }
  if ( (v11 & 1) == 0 )
    v12 = (char *)a2 + 32;
  v13 = (unsigned int *)((char *)a2 + 16);
  result = PFWorld::GetFloorHeightAt(
             (int)this,
             (float *)a2 + 6,
             (int)v12,
             (int)a2 + 36,
             (_DWORD *)a2 + 3,
             (int)a2 + 16,
             0);
  if ( *((_DWORD *)a2 + 4) )
    goto LABEL_15;
  return result;
}


// ===== 528484 PFWorld::_ChangeObstacleParentList(PFObject const&,PFFloor *) =====
_DWORD *__fastcall PFWorld::_ChangeObstacleParentList(_DWORD *this, const PFObject *a2, PFFloor *a3)
{
  int v3; // r3
  _DWORD *v5; // r6
  int *v6; // r0
  int v7; // r7
  int v8; // lr
  int *v9; // r4
  int v10; // r8
  int v11; // r10
  int v12; // r9
  int v13; // r11
  _DWORD *v14; // r2
  int v15; // [sp+Ch] [bp-70h]
  PFFloor *v16; // [sp+14h] [bp-68h] BYREF
  int v17[4]; // [sp+18h] [bp-64h] BYREF
  int v18[4]; // [sp+28h] [bp-54h] BYREF
  _DWORD v19[4]; // [sp+38h] [bp-44h] BYREF
  _DWORD v20[4]; // [sp+48h] [bp-34h] BYREF
  _DWORD v21[4]; // [sp+58h] [bp-24h] BYREF
  const PFObject *v22; // [sp+68h] [bp-14h] BYREF
  const PFObject *v23; // [sp+6Ch] [bp-10h] BYREF

  v3 = *((_DWORD *)a2 + 1);
  v16 = a3;
  if ( (v3 & 4) != 0 && *((PFFloor **)a2 + 4) != a3 )
  {
    v5 = this + 11;
    v6 = std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>(this + 11, (unsigned int *)a2 + 4);
    v7 = v6[2];
    v8 = v6[1];
    v9 = v6;
    v15 = *v6;
    v10 = v6[7];
    v11 = v6[6];
    v12 = v6[5];
    v13 = v6[4];
    v19[3] = v6[3];
    v19[0] = v15;
    v19[2] = v7;
    v19[1] = v8;
    v20[3] = v10;
    v20[2] = v11;
    v20[1] = v12;
    v20[0] = v13;
    v23 = a2;
    this = std::priv::__find<std::priv::_Deque_iterator<PFObject *,std::_Nonconst_traits<PFObject *>>,PFObject const*>(
             v21,
             v19,
             v20,
             &v23);
    if ( v9[4] != v21[0] )
    {
      v17[3] = v21[3];
      v17[2] = v21[2];
      v17[0] = v21[0];
      v17[1] = v21[1];
      std::deque<PFObject *>::_M_erase(v18, v9, v17);
      this = std::map<PFFloor *,std::deque<PFObject *>>::operator[]<PFFloor *>(v5, (unsigned int *)&v16);
      v22 = a2;
      v14 = (_DWORD *)*(this + 4);
      if ( v14 == (_DWORD *)(*(this + 6) - 4) )
      {
        return std::deque<PFObject *>::_M_push_back_aux_v((int)this, &v22);
      }
      else
      {
        *v14 = a2;
        *(this + 4) += 4;
      }
    }
  }
  return this;
}


// ===== 5285b0 std::vector<SearchFailCache::Entry,std::allocator<SearchFailCache::Entry>>::_M_fill_insert_aux(SearchFailCache::Entry*,uint,SearchFailCache::Entry const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<SearchFailCache::Entry>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        int *a4)
{
  _DWORD *v4; // r12
  unsigned int v6; // r6
  int v7; // r5
  int v8; // lr
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r8
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r2
  _DWORD *v15; // r1
  int v16; // r0
  int v17; // r1
  unsigned int v18; // r2
  int v19; // r4
  int v20; // r1
  _DWORD *v21; // r2
  unsigned int v22; // r4
  int v23; // r8
  int v24; // r1
  _DWORD *v25; // r2
  int v26; // r6
  int v27; // r2
  _DWORD *v28; // r1
  int v29; // r0
  int v30; // r1
  _DWORD *v31; // r2
  _DWORD v32[3]; // [sp+8h] [bp-10h] BYREF
  char v33[4]; // [sp+14h] [bp-4h] BYREF

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v6 = result[1];
    if ( (unsigned int)a4 < v6 )
    {
      v7 = *a4;
      v8 = a4[2];
      v32[1] = a4[1];
      v32[2] = v8;
      v32[0] = v7;
      return (_DWORD *)std::vector<SearchFailCache::Entry>::_M_fill_insert_aux(result, a2, a3, v32, v33);
    }
  }
  else
  {
    v6 = result[1];
  }
  v9 = -1431655765 * ((int)(v6 - a2) >> 2);
  if ( a3 >= v9 )
  {
    v22 = v6 + 12 * (a3 - v9);
    v23 = -1431655765 * ((int)(12 * (a3 - v9)) >> 2);
    if ( v23 > 0 )
    {
      result = a4 + 1;
      v24 = 0;
      do
      {
        v25 = (_DWORD *)(v6 + v24 + 4);
        *(_DWORD *)(v6 + v24) = *a4;
        --v23;
        v24 += 12;
        *v25 = *result;
        v25[1] = a4[2];
      }
      while ( v23 );
    }
    v4[1] = v22;
    if ( v9 <= 0 )
    {
      v4[1] = v22 + 4 * ((int)(v6 - a2) >> 2);
    }
    else
    {
      v26 = -1431655765 * ((int)(v6 - a2) >> 2);
      v27 = 0;
      do
      {
        *(_DWORD *)(v22 + v27) = *(_DWORD *)(a2 + v27);
        *(_DWORD *)(v22 + v27 + 4) = *(_DWORD *)(a2 + v27 + 4);
        v28 = (_DWORD *)(v22 + v27 + 8);
        v29 = *(_DWORD *)(a2 + v27 + 8);
        --v26;
        v27 += 12;
        *v28 = v29;
      }
      while ( v26 );
      result = a4 + 1;
      v30 = 0;
      v4[1] += 12 * v9;
      do
      {
        v31 = (_DWORD *)(a2 + v30 + 4);
        *(_DWORD *)(a2 + v30) = *a4;
        --v9;
        v30 += 12;
        *v31 = *result;
        v31[1] = a4[2];
      }
      while ( v9 );
    }
  }
  else
  {
    v10 = 12 * a3;
    v11 = v6 - 12 * a3;
    v12 = -1431655765 * ((int)(12 * a3) >> 2);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        *(_DWORD *)(v6 + v14) = *(_DWORD *)(v11 + v14);
        *(_DWORD *)(v6 + v14 + 4) = *(_DWORD *)(v11 + v14 + 4);
        v15 = (_DWORD *)(v6 + v14 + 8);
        v16 = *(_DWORD *)(v11 + v14 + 8);
        --v12;
        v14 += 12;
        *v15 = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v6;
    }
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    v17 = -1431655765 * ((int)(v11 - a2) >> 2);
    if ( v17 > 0 )
    {
      v18 = v6 - v10;
      do
      {
        --v17;
        *(_DWORD *)(v6 - 12) = *(_DWORD *)(v18 - 12);
        *(_DWORD *)(v6 - 8) = *(_DWORD *)(v18 - 8);
        result = *(_DWORD **)(v18 - 4);
        v18 -= 12;
        *(_DWORD *)(v6 - 4) = result;
        v6 -= 12;
      }
      while ( v17 );
    }
    v19 = -1431655765 * (v10 >> 2);
    if ( v19 > 0 )
    {
      result = a4 + 1;
      v20 = 0;
      do
      {
        v21 = (_DWORD *)(a2 + v20 + 4);
        *(_DWORD *)(a2 + v20) = *a4;
        --v19;
        v20 += 12;
        *v21 = *result;
        v21[1] = a4[2];
      }
      while ( v19 );
    }
  }
  return result;
}


// ===== 528868 PFWorld::_IsPastWaypoint(PFObject &) =====
bool __fastcall PFWorld::_IsPastWaypoint(PFWorld *this, PFObject *a2)
{
  int v3; // r1
  char *v4; // r2
  char *v5; // r3
  float *v6; // r5

  v4 = (char *)a2 + 56;
  v3 = *((_DWORD *)a2 + 14);
  if ( (char *)v3 == v4 )
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
        "pfo.path.size() > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp",
        325);
      v3 = *((_DWORD *)a2 + 14);
    }
  }
  else
  {
    v5 = (char *)v3;
    do
      v5 = *(char **)v5;
    while ( v4 != v5 );
  }
  v6 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + 8) + 36))(*(_DWORD *)(v3 + 8));
  return (float)((float)((float)((float)(*((float *)a2 + 6) - *v6) * *((float *)a2 + 32))
                       + (float)((float)(*((float *)a2 + 7) - v6[1]) * *((float *)a2 + 33)))
               + (float)(*((float *)a2 + 34) * 0.0)) >= 0.0;
}


// ===== 52899c PFWorld::_CalcWaypointVec(PFObject &) =====
float __fastcall PFWorld::_CalcWaypointVec(PFWorld *this, PFObject *a2)
{
  int v3; // r1
  char *v4; // r2
  char *v5; // r3
  float *v6; // r5
  float *v7; // r0
  float v8; // r7
  float result; // r0

  v4 = (char *)a2 + 56;
  v3 = *((_DWORD *)a2 + 14);
  if ( (char *)v3 == v4 )
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
        "pfo.path.size() > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp",
        313);
      v3 = *((_DWORD *)a2 + 14);
    }
  }
  else
  {
    v5 = (char *)v3;
    do
      v5 = *(char **)v5;
    while ( v4 != v5 );
  }
  v6 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + 8) + 40))(*(_DWORD *)(v3 + 8));
  v7 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)a2 + 14) + 8) + 36))(*(_DWORD *)(*((_DWORD *)a2 + 14) + 8));
  v8 = v6[1] - v7[1];
  result = *v6 - *v7;
  *((float *)a2 + 32) = result;
  *((float *)a2 + 33) = v8;
  *((_DWORD *)a2 + 34) = 0;
  return result;
}


// ===== 528aac std::vector<SearchFailCache::Entry,std::allocator<SearchFailCache::Entry>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<SearchFailCache::Entry>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -1431655765 * ((a1[1] - *a1) >> 2);
  if ( 357913941 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0x15555555 || result < v3 )
    return 357913941;
  return result;
}


// ===== 528b2c PFWorld::_GetClosestNode(Point3D<float> const&) =====
float *__fastcall PFWorld::_GetClosestNode(int a1, float *a2)
{
  float *NodeAt; // r5
  float *v5; // r7
  float *v6; // r6
  float v7; // r0
  float v8; // r10
  float v9; // r8
  float v10; // r0
  float v11; // r9
  float v12; // r0
  float v13; // r7
  float v14; // [sp+10h] [bp-5Ch] BYREF
  float v15; // [sp+14h] [bp-58h]
  float v16; // [sp+18h] [bp-54h]
  float v17; // [sp+1Ch] [bp-50h]
  float v18; // [sp+20h] [bp-4Ch]
  float v19; // [sp+24h] [bp-48h]
  float v20; // [sp+28h] [bp-44h]
  float v21; // [sp+2Ch] [bp-40h]
  float v22; // [sp+30h] [bp-3Ch]
  float v23[3]; // [sp+34h] [bp-38h] BYREF
  float v24[3]; // [sp+40h] [bp-2Ch] BYREF
  float v25[3]; // [sp+4Ch] [bp-20h] BYREF
  _DWORD v26[3]; // [sp+58h] [bp-14h] BYREF
  int v27; // [sp+64h] [bp-8h] BYREF

  v22 = 0.0;
  memset(v26, 0, sizeof(v26));
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v27 = 0;
  if ( !PFWorld::GetCollisionAt(a1, a2, v26, (int)&v14, nullptr, &v27, 0) || !v27 )
    return nullptr;
  v25[0] = (float)(v14 + v17) * 0.5;
  v25[1] = (float)(v15 + v18) * 0.5;
  v25[2] = (float)(v16 + v19) * 0.5;
  NodeAt = (float *)PFFloor::_GetNodeAt(v27, v25);
  v24[0] = (float)(v14 + v20) * 0.5;
  v24[1] = (float)(v15 + v21) * 0.5;
  v24[2] = (float)(v16 + v22) * 0.5;
  v5 = (float *)PFFloor::_GetNodeAt(v27, v24);
  v23[0] = (float)(v17 + v20) * 0.5;
  v23[2] = (float)(v19 + v22) * 0.5;
  v23[1] = (float)(v18 + v21) * 0.5;
  v6 = (float *)PFFloor::_GetNodeAt(v27, v23);
  if ( !NodeAt
    || (v8 = NodeAt[4] - a2[2],
        v7 = NodeAt[3] - a2[1],
        v9 = (float)((float)((float)(NodeAt[2] - *a2) * (float)(NodeAt[2] - *a2)) + (float)(v7 * v7)) + (float)(v8 * v8),
        v9 >= 3.4028e38) )
  {
    v9 = 3.4028e38;
    NodeAt = nullptr;
  }
  if ( v5 )
  {
    v11 = v5[4] - a2[2];
    v10 = v5[3] - a2[1];
    if ( v9 > (float)((float)((float)((float)(v5[2] - *a2) * (float)(v5[2] - *a2)) + (float)(v10 * v10))
                    + (float)(v11 * v11)) )
    {
      v9 = (float)((float)((float)(v5[2] - *a2) * (float)(v5[2] - *a2)) + (float)(v10 * v10)) + (float)(v11 * v11);
      NodeAt = v5;
    }
  }
  if ( v6 )
  {
    v13 = v6[4] - a2[2];
    v12 = v6[3] - a2[1];
    if ( v9 > (float)((float)((float)((float)(v6[2] - *a2) * (float)(v6[2] - *a2)) + (float)(v12 * v12))
                    + (float)(v13 * v13)) )
      return v6;
  }
  return NodeAt;
}


// ===== 528ea0 PFWorld::_GetClosestNode(PFObject const&) =====
float *__fastcall PFWorld::_GetClosestNode(PFWorld *this, const PFObject *a2)
{
  float *CollisionAt; // r5
  int v4; // r3
  int v5; // r3
  float *NodeAt; // r7
  int v7; // r3
  float *v8; // r6
  float v9; // r8
  float v10; // r0
  float v11; // r10
  float v12; // r8
  float v13; // r10
  float v14; // r0
  float v15; // r9
  float v16; // r10
  float v17; // r9
  float v18; // r0
  float v19; // r7
  float v21; // [sp+14h] [bp-58h] BYREF
  float v22; // [sp+18h] [bp-54h]
  float v23; // [sp+1Ch] [bp-50h]
  float v24; // [sp+20h] [bp-4Ch]
  float v25; // [sp+24h] [bp-48h]
  float v26; // [sp+28h] [bp-44h]
  float v27; // [sp+2Ch] [bp-40h]
  float v28; // [sp+30h] [bp-3Ch]
  float v29; // [sp+34h] [bp-38h]
  float v30[3]; // [sp+38h] [bp-34h] BYREF
  float v31[3]; // [sp+44h] [bp-28h] BYREF
  float v32[3]; // [sp+50h] [bp-1Ch] BYREF
  _DWORD v33[4]; // [sp+5Ch] [bp-10h] BYREF

  v29 = 0.0;
  memset(v33, 0, 12);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  CollisionAt = (float *)PFWorld::GetCollisionAt(
                           (int)this,
                           (float *)a2 + 6,
                           v33,
                           (int)&v21,
                           (_DWORD *)a2 + 3,
                           (_DWORD *)a2 + 4,
                           0);
  if ( CollisionAt )
  {
    v4 = *((_DWORD *)a2 + 4);
    v32[0] = (float)(v21 + v24) * 0.5;
    v32[1] = (float)(v22 + v25) * 0.5;
    v32[2] = (float)(v23 + v26) * 0.5;
    CollisionAt = (float *)PFFloor::_GetNodeAt(v4, v32);
    v5 = *((_DWORD *)a2 + 4);
    v31[0] = (float)(v21 + v27) * 0.5;
    v31[1] = (float)(v22 + v28) * 0.5;
    v31[2] = (float)(v23 + v29) * 0.5;
    NodeAt = (float *)PFFloor::_GetNodeAt(v5, v31);
    v7 = *((_DWORD *)a2 + 4);
    v30[0] = (float)(v24 + v27) * 0.5;
    v30[2] = (float)(v26 + v29) * 0.5;
    v30[1] = (float)(v25 + v28) * 0.5;
    v8 = (float *)PFFloor::_GetNodeAt(v7, v30);
    if ( !CollisionAt
      || (v9 = CollisionAt[2] - *((float *)a2 + 6),
          v11 = CollisionAt[4] - *((float *)a2 + 8),
          v10 = CollisionAt[3] - *((float *)a2 + 7),
          v12 = (float)((float)(v9 * v9) + (float)(v10 * v10)) + (float)(v11 * v11),
          v12 >= 3.4028e38) )
    {
      v12 = 3.4028e38;
      CollisionAt = nullptr;
    }
    if ( NodeAt )
    {
      v13 = NodeAt[2] - *((float *)a2 + 6);
      v15 = NodeAt[4] - *((float *)a2 + 8);
      v14 = NodeAt[3] - *((float *)a2 + 7);
      v16 = (float)((float)(v13 * v13) + (float)(v14 * v14)) + (float)(v15 * v15);
      if ( v12 > v16 )
      {
        v12 = v16;
        CollisionAt = NodeAt;
      }
    }
    if ( v8 )
    {
      v17 = v8[2] - *((float *)a2 + 6);
      v19 = v8[4] - *((float *)a2 + 8);
      v18 = v8[3] - *((float *)a2 + 7);
      if ( v12 > (float)((float)((float)(v17 * v17) + (float)(v18 * v18)) + (float)(v19 * v19)) )
        return v8;
    }
  }
  return CollisionAt;
}


// ===== 529214 `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_PathFinding.cpp =====
int `global constructor keyed to'.._.._sources_Modules_PathFinding_PFWorld_PathFinding.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9F6334 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6330 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 52929c std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,int,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp) [clone] =====
int __fastcall std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>(
        int result,
        int a2,
        int a3)
{
  int v3; // r5
  int v4; // r4
  int v6; // r7
  int v7; // r6
  int v8; // r2
  int v9; // r1
  bool v10; // zf

  v3 = a2;
  v4 = result;
  if ( a2 > 0 )
  {
    v6 = (a2 - 1) >> 1;
    while ( 1 )
    {
      v7 = v4 + 12 * v6;
      result = *(float *)(v7 + 8) > *(float *)(a3 + 8);
      v8 = v7 + 4;
      v9 = v4 + 12 * v3;
      if ( *(float *)(v7 + 8) <= *(float *)(a3 + 8) )
        break;
      v10 = v6 == 0;
      result = v6 - 1;
      *(_DWORD *)(v4 + 12 * v3) = *(_DWORD *)(v4 + 12 * v6);
      v3 = v6;
      v6 = (v6 - 1) >> 1;
      *(_DWORD *)(v9 + 4) = *(_DWORD *)(v7 + 4);
      *(_DWORD *)(v9 + 8) = *(_DWORD *)(v7 + 8);
      if ( v10 )
        goto LABEL_6;
    }
  }
  v7 = v4 + 12 * v3;
  v8 = v7 + 4;
LABEL_6:
  *(_DWORD *)v7 = *(_DWORD *)a3;
  *(_DWORD *)(v7 + 4) = *(_DWORD *)(a3 + 4);
  *(_DWORD *)(v8 + 4) = *(_DWORD *)(a3 + 8);
  return result;
}


// ===== 529340 std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *) =====
int __fastcall std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>(
        int a1,
        int a2)
{
  int v2; // lr
  int v3; // r12
  _DWORD v5[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(a2 - 8);
  v3 = *(_DWORD *)(a2 - 4);
  v5[0] = *(_DWORD *)(a2 - 12);
  v5[1] = v2;
  v5[2] = v3;
  return std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>(
           a1,
           -1431655765 * ((a2 - a1) >> 2) - 1,
           (int)v5);
}


// ===== 529398 std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,int,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp) [clone] =====
int __fastcall std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>(
        int result,
        int a2,
        int a3)
{
  int v3; // r5
  int v4; // r4
  int v6; // r7
  int v7; // r6
  int v8; // r2
  int v9; // r1
  bool v10; // zf

  v3 = a2;
  v4 = result;
  if ( a2 > 0 )
  {
    v6 = (a2 - 1) >> 1;
    while ( 1 )
    {
      v7 = v4 + 12 * v6;
      result = *(float *)(v7 + 8) > *(float *)(a3 + 8);
      v8 = v7 + 4;
      v9 = v4 + 12 * v3;
      if ( *(float *)(v7 + 8) <= *(float *)(a3 + 8) )
        break;
      v10 = v6 == 0;
      result = v6 - 1;
      *(_DWORD *)(v4 + 12 * v3) = *(_DWORD *)(v4 + 12 * v6);
      v3 = v6;
      v6 = (v6 - 1) >> 1;
      *(_DWORD *)(v9 + 4) = *(_DWORD *)(v7 + 4);
      *(_DWORD *)(v9 + 8) = *(_DWORD *)(v7 + 8);
      if ( v10 )
        goto LABEL_6;
    }
  }
  v7 = v4 + 12 * v3;
  v8 = v7 + 4;
LABEL_6:
  *(_DWORD *)v7 = *(_DWORD *)a3;
  *(_DWORD *)(v7 + 4) = *(_DWORD *)(a3 + 4);
  *(_DWORD *)(v8 + 4) = *(_DWORD *)(a3 + 8);
  return result;
}


// ===== 52943c std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int *) =====
int __fastcall std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int *a4)
{
  int v5; // r11
  int i; // r5
  int v7; // r2
  int v8; // r9
  float *v9; // r6
  float *v10; // r10
  _BOOL4 v11; // r0
  int v12; // r9
  _DWORD *v13; // r1
  int v15; // r11
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  int v18; // [sp+4h] [bp-20h]
  int v19; // [sp+8h] [bp-1Ch]
  int v20; // [sp+Ch] [bp-18h]
  _DWORD v21[4]; // [sp+14h] [bp-10h] BYREF

  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  v20 = a4[2];
  v18 = *a4;
  v5 = -1431655765 * ((a2 - (int)a1) >> 2);
  v19 = a4[1];
  if ( v5 > 2 )
  {
    v8 = 0;
    for ( i = 2; ; i = 2 * (i + 1) )
    {
      v9 = (float *)&a1[3 * i];
      v10 = (float *)&a1[3 * i - 3];
      v11 = v9[2] > v10[2];
      if ( v9[2] > v10[2] )
        v9 = (float *)&a1[3 * i - 3];
      v12 = 3 * v8;
      if ( v11 )
        --i;
      a1[v12] = *(_DWORD *)v9;
      v13 = &a1[v12];
      v13[1] = *((_DWORD *)v9 + 1);
      v7 = 2 * (i + 1);
      v8 = i;
      v13[2] = *((_DWORD *)v9 + 2);
      if ( v5 <= v7 )
        break;
    }
  }
  else
  {
    i = 0;
    v7 = 2;
  }
  if ( v5 == v7 )
  {
    v15 = v5 - 1;
    v16 = &a1[3 * v15];
    v17 = &a1[3 * i];
    *v17 = *v16;
    i = v15;
    v17[1] = v16[1];
    v17[2] = v16[2];
  }
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20;
  return std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>(
           (int)a1,
           i,
           (int)v21);
}


// ===== 52958c std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *) =====
int __fastcall std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>(
        int a1,
        int a2)
{
  int v2; // lr
  int v3; // r12
  _DWORD v5[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(a2 - 8);
  v3 = *(_DWORD *)(a2 - 4);
  v5[0] = *(_DWORD *)(a2 - 12);
  v5[1] = v2;
  v5[2] = v3;
  return std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>(
           a1,
           -1431655765 * ((a2 - a1) >> 2) - 1,
           (int)v5);
}


// ===== 5295e4 std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int>(sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int *) =====
int __fastcall std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int *a4)
{
  int v5; // r11
  int i; // r5
  int v7; // r2
  int v8; // r9
  float *v9; // r6
  float *v10; // r10
  _BOOL4 v11; // r0
  int v12; // r9
  _DWORD *v13; // r1
  int v15; // r11
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  int v18; // [sp+4h] [bp-20h]
  int v19; // [sp+8h] [bp-1Ch]
  int v20; // [sp+Ch] [bp-18h]
  _DWORD v21[4]; // [sp+14h] [bp-10h] BYREF

  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  v20 = a4[2];
  v18 = *a4;
  v5 = -1431655765 * ((a2 - (int)a1) >> 2);
  v19 = a4[1];
  if ( v5 > 2 )
  {
    v8 = 0;
    for ( i = 2; ; i = 2 * (i + 1) )
    {
      v9 = (float *)&a1[3 * i];
      v10 = (float *)&a1[3 * i - 3];
      v11 = v9[2] > v10[2];
      if ( v9[2] > v10[2] )
        v9 = (float *)&a1[3 * i - 3];
      v12 = 3 * v8;
      if ( v11 )
        --i;
      a1[v12] = *(_DWORD *)v9;
      v13 = &a1[v12];
      v13[1] = *((_DWORD *)v9 + 1);
      v7 = 2 * (i + 1);
      v8 = i;
      v13[2] = *((_DWORD *)v9 + 2);
      if ( v5 <= v7 )
        break;
    }
  }
  else
  {
    i = 0;
    v7 = 2;
  }
  if ( v5 == v7 )
  {
    v15 = v5 - 1;
    v16 = &a1[3 * v15];
    v17 = &a1[3 * i];
    *v17 = *v16;
    i = v15;
    v17[1] = v16[1];
    v17[2] = v16[2];
  }
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20;
  return std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>(
           (int)a1,
           i,
           (int)v21);
}


// ===== 529734 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 32;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 529754 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::allocate();
    v11[4] = *a4;
    v11[5] = a4[1];
    v11[6] = a4[2];
    v16 = a4[3];
    v11[3] = 0;
    v11[2] = 0;
    v11[7] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v10[5] = a4[1];
    v10[6] = a4[2];
    v12 = a4[3];
    v10[3] = 0;
    v10[2] = 0;
    v10[7] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v14[5] = a4[1];
    v14[6] = a4[2];
    v15 = a4[3];
    v14[3] = 0;
    v14[2] = 0;
    v14[7] = v15;
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


// ===== 5298a8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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


// ===== 529a30 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 529da4 sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_markNode(std::map<uint,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::less<uint>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>> &,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge&) =====
int __fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_markNode(
        int a1,
        _DWORD *a2,
        float *a3)
{
  int (***v5)(void); // r4
  unsigned int v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  unsigned int v9; // r2
  bool v10; // cc
  _DWORD *v11; // r2
  unsigned int v13; // r0
  _DWORD *v14; // r12
  _DWORD *v15; // r2
  unsigned int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  unsigned int v20[4]; // [sp+0h] [bp-18h] BYREF
  _DWORD *v21; // [sp+10h] [bp-8h] BYREF
  _DWORD *v22; // [sp+14h] [bp-4h] BYREF

  v5 = (int (***)(void))(*(int (__fastcall **)(_DWORD))(**(_DWORD **)a3 + 12))(*(_DWORD *)a3);
  v6 = (**v5)();
  v7 = (_DWORD *)a2[1];
  if ( !v7 )
    goto LABEL_29;
  v8 = a2;
  while ( 1 )
  {
    v9 = v7[4];
    v10 = v6 > v9;
    if ( v6 <= v9 )
      v11 = (_DWORD *)v7[2];
    else
      v11 = (_DWORD *)v7[3];
    if ( v10 )
      v7 = v8;
    v8 = v7;
    if ( !v11 )
      break;
    v7 = v11;
  }
  if ( a2 == v7 )
    goto LABEL_15;
  if ( v6 < v7[4] )
LABEL_29:
    v7 = a2;
  if ( a2 != v7 && *((float *)v7 + 6) <= a3[1] )
    return 0;
LABEL_15:
  v13 = ((int (__fastcall *)(int (***)(void)))**v5)(v5);
  v14 = (_DWORD *)a2[1];
  if ( v14 )
  {
    v15 = a2;
    while ( 1 )
    {
      v16 = v14[4];
      v17 = v13 > v16;
      if ( v13 <= v16 )
        v18 = (_DWORD *)v14[2];
      else
        v18 = (_DWORD *)v14[3];
      if ( v17 )
        v14 = v15;
      v15 = v14;
      if ( !v18 )
        break;
      v14 = v18;
    }
  }
  else
  {
    v14 = a2;
  }
  if ( a2 == v14 || (v19 = v14, v13 < v14[4]) )
  {
    v20[0] = v13;
    memset(&v20[1], 0, 12);
    v22 = v14;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
      &v21,
      a2,
      &v22,
      v20);
    v19 = v21;
  }
  v19[5] = *(_DWORD *)a3;
  v19[6] = *((_DWORD *)a3 + 1);
  v19[7] = *((_DWORD *)a3 + 2);
  return 1;
}


// ===== 529f14 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 529f4c std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(_DWORD *a1)
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


// ===== 529f8c sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar() =====
_DWORD *__fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar(_DWORD *a1)
{
  *a1 = off_96C908;
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(a1 + 2);
  return a1;
}


// ===== 529fc0 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::~AlgoAStar() =====
_DWORD *__fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::~AlgoAStar(_DWORD *a1)
{
  *a1 = off_96CB30;
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(a1 + 2);
  return a1;
}


// ===== 529ff4 sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar() =====
_DWORD *__fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar(_DWORD *a1)
{
  *a1 = off_96C908;
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(a1 + 2);
  CustomFree(a1);
  return a1;
}


// ===== 52a030 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::~AlgoAStar() =====
_DWORD *__fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::~AlgoAStar(_DWORD *a1)
{
  *a1 = off_96CB30;
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(a1 + 2);
  CustomFree(a1);
  return a1;
}


// ===== 52a06c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 52a0a4 std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
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
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 52a12c std::allocator<SearchFailCache::Entry>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<SearchFailCache::Entry>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 52a1b4 std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
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
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 52a23c std::vector<SearchFailCache::Entry,std::allocator<SearchFailCache::Entry>>::_M_insert_overflow_aux(SearchFailCache::Entry*,SearchFailCache::Entry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<SearchFailCache::Entry>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6)
{
  int v9; // r11
  _DWORD *v10; // r0
  char *v11; // r12
  _DWORD *v12; // r8
  int v13; // r9
  int v14; // r0
  int v15; // r3
  _DWORD *v16; // r2
  int v17; // r1
  _DWORD *v18; // r7
  int v19; // r1
  int v20; // r2
  _DWORD *v21; // r3
  _BYTE *v22; // r3
  int v23; // r12
  int v24; // r1
  _DWORD *v25; // r3
  int v26; // r2
  _BYTE *v27; // r0
  size_t v28; // r1
  size_t v29; // r3
  size_t size; // [sp+4h] [bp-8h] BYREF

  v9 = a6;
  size = std::vector<SearchFailCache::Entry>::_M_compute_next_size(a1, a5);
  v10 = std::allocator<SearchFailCache::Entry>::_M_allocate((int)(a1 + 2), size, &size);
  v11 = (char *)*a1;
  v12 = v10;
  v13 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v13 > 0 )
  {
    v14 = -1431655765 * ((a2 - (int)*a1) >> 2);
    v15 = 0;
    do
    {
      v12[v15] = *(_DWORD *)&v11[v15 * 4];
      v12[v15 + 1] = *(_DWORD *)&v11[v15 * 4 + 4];
      v16 = &v12[v15 + 2];
      v17 = *(_DWORD *)&v11[v15 * 4 + 8];
      --v14;
      v15 += 3;
      *v16 = v17;
    }
    while ( v14 );
    v10 = &v12[3 * v13];
  }
  if ( a5 == 1 )
  {
    v18 = v10 + 3;
    *v10 = *a3;
    v10[1] = a3[1];
    v10[2] = a3[2];
  }
  else
  {
    v18 = &v10[3 * a5];
    v19 = -1431655765 * ((int)(12 * a5) >> 2);
    if ( v19 > 0 )
    {
      v20 = 0;
      do
      {
        v21 = &v10[v20 + 1];
        v10[v20] = *a3;
        --v19;
        v20 += 3;
        *v21 = a3[1];
        v21[1] = a3[2];
      }
      while ( v19 );
    }
  }
  if ( !a6 )
  {
    v22 = a1[1];
    v23 = -1431655765 * ((int)&v22[-a2] >> 2);
    if ( v23 <= 0 )
      goto LABEL_15;
    v24 = -1431655765 * ((int)&v22[-a2] >> 2);
    do
    {
      *(_DWORD *)((char *)v18 + v9) = *(_DWORD *)(a2 + v9);
      *(_DWORD *)((char *)v18 + v9 + 4) = *(_DWORD *)(a2 + v9 + 4);
      v25 = (_DWORD *)((char *)v18 + v9 + 8);
      v26 = *(_DWORD *)(a2 + v9 + 8);
      --v24;
      v9 += 12;
      *v25 = v26;
    }
    while ( v24 );
    v18 += 3 * v23;
  }
  v22 = a1[1];
LABEL_15:
  v27 = *a1;
  if ( v22 != *a1 )
    v22 += -12 * ((715827883 * ((unsigned int)(v22 - 12 - v27) >> 2)) & 0x3FFFFFFF) - 12;
  if ( v22 )
  {
    v28 = 4 * (((_BYTE *)a1[2] - v22) >> 2);
    if ( v28 > 0x80 )
      CustomFree(v27);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v27, v28);
  }
  v29 = size;
  *a1 = v12;
  a1[1] = v18;
  a1[2] = &v12[3 * v29];
}


// ===== 52a498 std::vector<SearchFailCache::Entry,std::allocator<SearchFailCache::Entry>>::_M_fill_insert(SearchFailCache::Entry*,uint,SearchFailCache::Entry const&) =====
void __fastcall std::vector<SearchFailCache::Entry>::_M_fill_insert(void **a1, int a2, unsigned int a3, int *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= -1431655765 * (((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 2) )
      std::vector<SearchFailCache::Entry>::_M_fill_insert_aux(a1, a2, a3, a4);
    else
      std::vector<SearchFailCache::Entry>::_M_insert_overflow_aux(a1, a2, a4, (int)v4, a3, 0);
  }
}


// ===== 52a504 SearchFailCache::add(SearchFailCache::Entry &) =====
void __fastcall SearchFailCache::add(int a1, _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r12
  _BYTE v4[8]; // [sp+14h] [bp-8h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  v3 = *(_DWORD **)a1;
  if ( (unsigned int)(-1431655765 * (((int)v2 - *(_DWORD *)a1) >> 2)) > 0xA && v2 != v3 )
  {
    *(_DWORD *)(a1 + 4) = v3;
    v2 = v3;
  }
  if ( *(_DWORD **)(a1 + 8) == v2 )
  {
    std::vector<SearchFailCache::Entry>::_M_insert_overflow_aux((void **)a1, (int)v2, a2, (int)v4, 1u, 1u);
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    *(_DWORD *)(a1 + 4) += 12;
  }
}


// ===== 52a5e4 std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>::~vector() =====
int __fastcall std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>::~vector(
        int a1)
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


// ===== 52a640 std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>::~vector() =====
int __fastcall std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>::~vector(
        int a1)
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


// ===== 52a69c std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>::push(sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge const&) =====
int __fastcall std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>::push(
        int *a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  int v6; // r7
  int v7; // r6
  unsigned int v9; // r2
  unsigned int v10; // r1
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  int v13; // r6
  _DWORD *v14; // r3
  int v15; // r1
  _DWORD *v16; // r2
  int v17; // r0
  _DWORD *v18; // r0
  int v19; // r3
  size_t v20; // r1
  size_t v21; // r3
  size_t v22; // [sp+Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  v3 = (_DWORD *)a1[2];
  if ( v2 == v3 )
  {
    v9 = -1431655765 * (((int)v3 - *a1) >> 2);
    if ( v9 )
      v10 = 1431655766 * (((int)v3 - *a1) >> 2);
    else
      v10 = 1;
    if ( v10 > 0x15555555 || v9 > v10 )
      v10 = 357913941;
    v22 = v10;
    v11 = std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>::_M_allocate(
            (int)(a1 + 2),
            v10,
            &v22);
    v12 = (_DWORD *)*a1;
    v6 = (int)v11;
    v13 = -1431655765 * (((int)v3 - *a1) >> 2);
    if ( v13 > 0 )
    {
      v15 = v13;
      v16 = v11;
      do
      {
        --v15;
        *v16 = *v12;
        v16[1] = v12[1];
        v17 = v12[2];
        v12 += 3;
        v16[2] = v17;
        v16 += 3;
      }
      while ( v15 );
      v14 = (_DWORD *)(v6 + 12 * v13);
    }
    else
    {
      v14 = v11;
    }
    v7 = (int)(v14 + 3);
    *v14 = *a2;
    v14[1] = a2[1];
    v14[2] = a2[2];
    v18 = (_DWORD *)*a1;
    v19 = a1[1];
    if ( v19 != *a1 )
      v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - (_DWORD)v18) >> 2)) & 0x3FFFFFFF) - 12;
    if ( v19 )
    {
      v20 = 4 * ((a1[2] - v19) >> 2);
      if ( v20 > 0x80 )
        CustomFree(v18);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, v20);
    }
    v21 = v22;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v6 + 12 * v21;
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    v6 = *a1;
    v7 = a1[1] + 12;
    a1[1] = v7;
  }
  return std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>(
           v6,
           v7);
}


// ===== 52a890 std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>::push(sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge const&) =====
int __fastcall std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>::push(
        int *a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  int v6; // r7
  int v7; // r6
  unsigned int v9; // r2
  unsigned int v10; // r1
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  int v13; // r6
  _DWORD *v14; // r3
  int v15; // r1
  _DWORD *v16; // r2
  int v17; // r0
  _DWORD *v18; // r0
  int v19; // r3
  size_t v20; // r1
  size_t v21; // r3
  size_t v22; // [sp+Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  v3 = (_DWORD *)a1[2];
  if ( v2 == v3 )
  {
    v9 = -1431655765 * (((int)v3 - *a1) >> 2);
    if ( v9 )
      v10 = 1431655766 * (((int)v3 - *a1) >> 2);
    else
      v10 = 1;
    if ( v10 > 0x15555555 || v9 > v10 )
      v10 = 357913941;
    v22 = v10;
    v11 = std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>::_M_allocate(
            (int)(a1 + 2),
            v10,
            &v22);
    v12 = (_DWORD *)*a1;
    v6 = (int)v11;
    v13 = -1431655765 * (((int)v3 - *a1) >> 2);
    if ( v13 > 0 )
    {
      v15 = v13;
      v16 = v11;
      do
      {
        --v15;
        *v16 = *v12;
        v16[1] = v12[1];
        v17 = v12[2];
        v12 += 3;
        v16[2] = v17;
        v16 += 3;
      }
      while ( v15 );
      v14 = (_DWORD *)(v6 + 12 * v13);
    }
    else
    {
      v14 = v11;
    }
    v7 = (int)(v14 + 3);
    *v14 = *a2;
    v14[1] = a2[1];
    v14[2] = a2[2];
    v18 = (_DWORD *)*a1;
    v19 = a1[1];
    if ( v19 != *a1 )
      v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - (_DWORD)v18) >> 2)) & 0x3FFFFFFF) - 12;
    if ( v19 )
    {
      v20 = 4 * ((a1[2] - v19) >> 2);
      if ( v20 > 0x80 )
        CustomFree(v18);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, v20);
    }
    v21 = v22;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v6 + 12 * v21;
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    v6 = *a1;
    v7 = a1[1] + 12;
    a1[1] = v7;
  }
  return std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>(
           v6,
           v7);
}


// ===== 52aa84 std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 52aaa4 std::list<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::resize(uint,PFGInnerEdge const* const&) [clone] =====
void __fastcall std::list<PFGInnerEdge const*>::resize(int **a1)
{
  int *v2; // r0
  int v3; // r4
  int *v4; // r3

  v2 = *a1;
  if ( v2 != (int *)a1 )
  {
    while ( 1 )
    {
      v3 = *v2;
      v4 = (int *)v2[1];
      *v4 = *v2;
      *(_DWORD *)(v3 + 4) = v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( a1 == (int **)v3 )
        break;
      v2 = (int *)v3;
    }
  }
}


// ===== 52aae4 PFWorld::DropPath(PFObject &) =====
void __fastcall PFWorld::DropPath(PFWorld *this, PFObject *a2)
{
  PFObject *v2; // r3
  int **v3; // r5
  int **v5; // r1
  unsigned int v6; // r1
  unsigned int v7; // r0
  int *v8; // r0
  int v9; // r3
  int v10; // r3
  int *v11; // r2
  int v12; // r2
  int v13; // r3

  v3 = (int **)((char *)a2 + 56);
  v2 = *((PFObject **)a2 + 14);
  if ( v2 != (PFObject *)((char *)a2 + 56) )
  {
    v5 = *((int ***)a2 + 14);
    do
      v5 = (int **)*v5;
    while ( v3 != v5 );
    v6 = *((_DWORD *)a2 + 31);
    v7 = 0;
    do
    {
      v2 = *(PFObject **)v2;
      ++v7;
    }
    while ( v3 != (int **)v2 );
    if ( v6 > v7 )
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
          "pfo.path_smoothIdx <= pfo.path.size()",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp",
          466);
        v6 = *((_DWORD *)a2 + 31);
      }
    }
    while ( v6 )
    {
      v8 = *((int **)a2 + 14);
      *((_DWORD *)a2 + 31) = v6 - 1;
      v9 = v8[2];
      if ( v9 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 32))(v8[2]);
        v8 = *((int **)a2 + 14);
      }
      v10 = *v8;
      v11 = (int *)v8[1];
      *v11 = *v8;
      *(_DWORD *)(v10 + 4) = v11;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, 0xCu);
      v6 = *((_DWORD *)a2 + 31);
    }
    std::list<PFGInnerEdge const*>::resize(v3);
    v12 = *((_DWORD *)a2 + 7);
    v13 = *((_DWORD *)a2 + 8);
    *((_DWORD *)a2 + 16) = *((_DWORD *)a2 + 6);
    *((_DWORD *)a2 + 17) = v12;
    *((_DWORD *)a2 + 18) = v13;
  }
}


// ===== 52ac30 sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(uint,std::list<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>> &) =====
int __fastcall sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(int a1, unsigned int a2, int a3)
{
  _DWORD *v3; // r4
  _DWORD *v5; // r3
  _DWORD *v6; // r0
  unsigned int v7; // r2
  bool v8; // cc
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  _DWORD *i; // r5
  int v12; // r7
  _DWORD *v13; // r0
  _DWORD *v14; // r3
  int v15; // r2
  int v17; // r3

  v3 = *(_DWORD **)(a1 + 8);
  v5 = (_DWORD *)(a1 + 4);
  if ( !v3 )
    goto LABEL_21;
  v6 = (_DWORD *)(a1 + 4);
  while ( 1 )
  {
    v7 = v3[4];
    v8 = a2 > v7;
    if ( a2 <= v7 )
      v9 = (_DWORD *)v3[2];
    else
      v9 = (_DWORD *)v3[3];
    if ( v8 )
      v3 = v6;
    v6 = v3;
    if ( !v9 )
      break;
    v3 = v9;
  }
  if ( v5 == v3 )
    return 0;
  if ( a2 < v3[4] )
LABEL_21:
    v3 = v5;
  if ( v5 == v3 )
    return 0;
  v10 = (_DWORD *)v3[5];
  i = (_DWORD *)v10[13];
  while ( v10 + 11 != i )
  {
    v12 = i[5];
    v13 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
    v13[2] = v12;
    v14 = *(_DWORD **)(a3 + 4);
    *v13 = a3;
    v13[1] = v14;
    *v14 = v13;
    *(_DWORD *)(a3 + 4) = v13;
    v15 = i[3];
    if ( v15 )
    {
      for ( i = (_DWORD *)i[3]; i[2]; i = (_DWORD *)i[2] )
        ;
      v10 = (_DWORD *)v3[5];
    }
    else
    {
      v17 = i[1];
      if ( i == *(_DWORD **)(v17 + 12) )
      {
        do
        {
          i = (_DWORD *)v17;
          v17 = *(_DWORD *)(v17 + 4);
        }
        while ( *(_DWORD **)(v17 + 12) == i );
        v15 = i[3];
      }
      if ( v17 != v15 )
        i = (_DWORD *)v17;
      v10 = (_DWORD *)v3[5];
    }
  }
  return v10[15];
}


// ===== 52ad4c sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode(uint,sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&,uint,std::list<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>> *) =====
int __fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode(
        int a1,
        unsigned int a2,
        int (__fastcall ***a3)(_DWORD, int),
        int a4,
        int a5)
{
  int v5; // r5
  int v6; // r0
  _DWORD *v8; // r2
  int v9; // r10
  _DWORD *v10; // r0
  _DWORD *v11; // r12
  unsigned int v12; // r3
  bool v13; // cc
  _DWORD *v14; // r3
  unsigned int v15; // r0
  int *v16; // r12
  int *v17; // r2
  unsigned int v18; // r3
  bool v19; // cc
  int *v20; // r3
  float v21; // r10
  int (__fastcall ***v22)(_DWORD); // r9
  int v23; // r0
  int v24; // r6
  int v25; // r4
  int *v26; // r5
  unsigned int v27; // r0
  int *v28; // r4
  int *v29; // r2
  unsigned int v30; // r3
  bool v31; // cc
  int *v32; // r3
  int v33; // r5
  _DWORD *v34; // r0
  _DWORD *v35; // r2
  unsigned int v36; // r0
  int *v37; // r12
  int *v38; // r2
  unsigned int v39; // r3
  bool v40; // cc
  int *v41; // r3
  int v42; // r11
  unsigned int v43; // r0
  _DWORD **v44; // r2
  void **v45; // r3
  int (__fastcall *v46)(_DWORD, int); // r11
  int v47; // r0
  void (__fastcall *v48)(int (__fastcall ***)(_DWORD, int), int); // r11
  int v49; // r0
  float *v50; // r3
  float v51; // r11
  float v52; // r0
  void *v53; // r0
  int v54; // r3
  _DWORD *v55; // r2
  int (__fastcall *v56)(_DWORD, int); // r11
  int v57; // r0
  int (__fastcall *v58)(_DWORD, int); // r11
  int v59; // r0
  float *v61; // r0
  float *i; // r3
  int *j; // r6
  int v64; // r8
  _DWORD *v65; // r0
  _DWORD *v66; // r3
  int v67; // r2
  int v68; // r3
  int (__fastcall ***v70)(_DWORD); // [sp+10h] [bp-C4h]
  int v71; // [sp+1Ch] [bp-B8h]
  int v72; // [sp+34h] [bp-A0h] BYREF
  int *v73; // [sp+38h] [bp-9Ch]
  int *v74; // [sp+3Ch] [bp-98h]
  int *v75; // [sp+40h] [bp-94h]
  int v76; // [sp+44h] [bp-90h]
  unsigned int v77[4]; // [sp+4Ch] [bp-88h] BYREF
  unsigned int v78[4]; // [sp+5Ch] [bp-78h] BYREF
  unsigned int v79[4]; // [sp+6Ch] [bp-68h] BYREF
  float *v80; // [sp+7Ch] [bp-58h] BYREF
  float *v81; // [sp+80h] [bp-54h]
  int v82; // [sp+84h] [bp-50h]
  int v83[3]; // [sp+8Ch] [bp-48h] BYREF
  int v84[3]; // [sp+98h] [bp-3Ch] BYREF
  float v85[3]; // [sp+A4h] [bp-30h] BYREF
  void *__p[2]; // [sp+B0h] [bp-24h] BYREF
  int *v87; // [sp+B8h] [bp-1Ch] BYREF
  int *v88; // [sp+BCh] [bp-18h] BYREF
  int *v89; // [sp+C0h] [bp-14h] BYREF
  int *v90; // [sp+C4h] [bp-10h] BYREF
  int *v91; // [sp+C8h] [bp-Ch] BYREF
  int *v92; // [sp+CCh] [bp-8h] BYREF

  v5 = a1;
  v6 = *(_DWORD *)(a1 + 4);
  v8 = *(_DWORD **)(v6 + 8);
  v9 = a5;
  v10 = (_DWORD *)(v6 + 4);
  if ( !v8 )
    goto LABEL_98;
  v11 = v10;
  while ( 1 )
  {
    v12 = v8[4];
    v13 = a2 > v12;
    if ( a2 <= v12 )
      v14 = (_DWORD *)v8[2];
    else
      v14 = (_DWORD *)v8[3];
    if ( v13 )
      v8 = v11;
    v11 = v8;
    if ( !v14 )
      break;
    v8 = v14;
  }
  if ( v10 == v8 )
    goto LABEL_99;
  if ( a2 < v8[4] )
LABEL_98:
    v8 = v10;
  if ( v10 == v8 )
  {
LABEL_99:
    *(_BYTE *)(v5 + 20) = 0;
    std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear((_DWORD *)(v5 + 8));
    *(_DWORD *)(v5 + 36) = 0;
    *(_DWORD *)(v5 + 24) = 0;
    *(_DWORD *)(v5 + 28) = 0;
    *(_DWORD *)(v5 + 32) = 0;
    return *(unsigned __int8 *)(v5 + 20);
  }
  v70 = (int (__fastcall ***)(_DWORD))v8[5];
  v71 = v5 + 8;
  *(_BYTE *)(v5 + 20) = 0;
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear((_DWORD *)(v5 + 8));
  *(_DWORD *)(v5 + 24) = 0;
  *(_DWORD *)(v5 + 28) = 0;
  *(_DWORD *)(v5 + 32) = 0;
  *(_DWORD *)(v5 + 36) = 0;
  if ( !v70 )
    return *(unsigned __int8 *)(v5 + 20);
  if ( !a5 )
    v9 = v5 + 8;
  LOBYTE(v72) = 0;
  *(_DWORD *)(v5 + 16) = v9;
  v76 = 0;
  __p[0] = __p;
  __p[1] = __p;
  v80 = nullptr;
  v81 = nullptr;
  v82 = 0;
  v73 = nullptr;
  v74 = &v72;
  v75 = &v72;
  v15 = (**v70)(v70);
  v16 = v73;
  if ( !v73 )
  {
    v16 = &v72;
LABEL_28:
    v92 = v16;
    memset(&v79[1], 0, 12);
    v79[0] = v15;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
      &v91,
      &v72,
      &v92,
      v79);
    v16 = v91;
    goto LABEL_29;
  }
  v17 = &v72;
  while ( 1 )
  {
    v18 = v16[4];
    v19 = v15 > v18;
    if ( v15 <= v18 )
      v20 = (int *)v16[2];
    else
      v20 = (int *)v16[3];
    if ( v19 )
      v16 = v17;
    v17 = v16;
    if ( !v20 )
      break;
    v16 = v20;
  }
  if ( v16 == &v72 || v15 < v16[4] )
    goto LABEL_28;
LABEL_29:
  v21 = 0.0;
  v16[5] = 0;
  v16[7] = 0;
  v16[6] = 0;
  v22 = v70;
  do
  {
    if ( (**a3)(a3, (int)v22) || !a4 )
      break;
    v42 = *(_DWORD *)(v5 + 4);
    ++*(_DWORD *)(v5 + 24);
    v43 = (**v22)(v22);
    sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(v42, v43, (int)__p);
    v44 = (_DWORD **)__p[0];
    v45 = (void **)__p[0];
    if ( __p[0] == __p )
      goto LABEL_67;
    while ( 1 )
    {
      do
        v45 = (void **)*v45;
      while ( v45 != __p );
      ++*(_DWORD *)(v5 + 28);
      v46 = **a3;
      v47 = (*(int (__fastcall **)(_DWORD *))(*v44[2] + 12))(v44[2]);
      if ( !v46(a3, v47) )
      {
        if ( !(*a3)[1](a3, *((_DWORD *)__p[0] + 2)) )
          goto LABEL_66;
        v56 = (*a3)[2];
        v57 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)__p[0] + 2) + 12))(*((_DWORD *)__p[0] + 2));
        if ( !v56(a3, v57) )
          goto LABEL_66;
      }
      v48 = (void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD), int))**a3;
      v49 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)__p[0] + 2) + 12))(*((_DWORD *)__p[0] + 2));
      v48(a3, v49);
      v50 = (float *)__p[0];
      ++*(_DWORD *)(v5 + 32);
      v51 = v50[2];
      v52 = (*(float (__fastcall **)(float))(*(_DWORD *)LODWORD(v51) + 16))(COERCE_FLOAT(LODWORD(v51))) + v21;
      v85[0] = v51;
      v85[1] = v52;
      v85[2] = v52 + 0.0;
      if ( !sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_markNode(v5, &v72, v85) )
        goto LABEL_66;
      v58 = **a3;
      v59 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)__p[0] + 2) + 12))(*((_DWORD *)__p[0] + 2));
      if ( v58(a3, v59) )
        break;
      ++*(_DWORD *)(v5 + 36);
      std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>::push(
        (int *)&v80,
        v85);
LABEL_66:
      v53 = __p[0];
      v54 = *(_DWORD *)__p[0];
      v55 = *((_DWORD **)__p[0] + 1);
      *v55 = *(_DWORD *)__p[0];
      *(_DWORD *)(v54 + 4) = v55;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v53, 0xCu);
      v44 = (_DWORD **)__p[0];
      v45 = (void **)__p[0];
      if ( __p[0] == __p )
        goto LABEL_67;
    }
    v61 = v80;
    for ( i = v81; v81 != v80; v81 -= 3 )
    {
      v84[0] = *(int *)(i - 3);
      v84[1] = *(int *)(i - 2);
      v84[2] = *(int *)(i - 1);
      std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int>(
        v61,
        (int)(i - 3),
        (_DWORD *)i - 3,
        v84);
      v61 = v80;
      i = v81 - 3;
    }
    std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp>::push(
      (int *)&v80,
      v85);
LABEL_67:
    if ( !--a4 )
      break;
    if ( !(-1431655765 * (v81 - v80)) )
      break;
    v22 = (int (__fastcall ***)(_DWORD))(*(int (__fastcall **)(_DWORD))(**(_DWORD **)v80 + 12))(*(_DWORD *)v80);
    v21 = v80[1];
    v83[0] = *(int *)(v81 - 3);
    v83[1] = *(int *)(v81 - 2);
    v83[2] = *(int *)(v81 - 1);
    std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_EComp,int>(
      v80,
      (int)(v81 - 3),
      (_DWORD *)v81 - 3,
      v83);
    v81 -= 3;
  }
  while ( v22 );
  v23 = (**a3)(a3, (int)v22);
  *(_BYTE *)(v5 + 20) = v23;
  if ( v23 )
  {
    v24 = v5;
    while ( 1 )
    {
      v25 = (**v22)(v22);
      if ( v25 == (**v70)(v70) )
      {
        v5 = v24;
        goto LABEL_77;
      }
      v26 = *(int **)(v24 + 16);
      v27 = (**v22)(v22);
      v28 = v73;
      if ( !v73 )
        break;
      v29 = &v72;
      while ( 1 )
      {
        v30 = v28[4];
        v31 = v27 > v30;
        if ( v27 <= v30 )
          v32 = (int *)v28[2];
        else
          v32 = (int *)v28[3];
        if ( v31 )
          v28 = v29;
        v29 = v28;
        if ( !v32 )
          break;
        v28 = v32;
      }
      if ( v28 == &v72 || v27 < v28[4] )
        goto LABEL_46;
LABEL_47:
      v33 = *v26;
      v34 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
      v34[2] = v28[5];
      v35 = *(_DWORD **)(v33 + 4);
      *v34 = v33;
      v34[1] = v35;
      *v35 = v34;
      *(_DWORD *)(v33 + 4) = v34;
      v36 = (**v22)(v22);
      v37 = v73;
      if ( !v73 )
      {
        v37 = &v72;
LABEL_59:
        v88 = v37;
        v77[0] = v36;
        memset(&v77[1], 0, 12);
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
          &v87,
          &v72,
          &v88,
          v77);
        v37 = v87;
        goto LABEL_60;
      }
      v38 = &v72;
      while ( 1 )
      {
        v39 = v37[4];
        v40 = v36 > v39;
        v41 = (int *)(v36 <= v39 ? v37[2] : v37[3]);
        if ( v40 )
          v37 = v38;
        v38 = v37;
        if ( !v41 )
          break;
        v37 = v41;
      }
      if ( v37 == &v72 || v36 < v37[4] )
        goto LABEL_59;
LABEL_60:
      v22 = (int (__fastcall ***)(_DWORD))(*(int (__fastcall **)(int))(*(_DWORD *)v37[5] + 4))(v37[5]);
    }
    v28 = &v72;
LABEL_46:
    v90 = v28;
    v78[0] = v27;
    memset(&v78[1], 0, 12);
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::insert_unique(
      &v89,
      &v72,
      &v90,
      v78);
    v28 = v89;
    goto LABEL_47;
  }
  j = v74;
  while ( j != &v72 )
  {
    if ( j[5] )
    {
      v64 = **(_DWORD **)(v5 + 16);
      v65 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
      v65[2] = j[5];
      v66 = *(_DWORD **)(v64 + 4);
      *v65 = v64;
      v65[1] = v66;
      *v66 = v65;
      *(_DWORD *)(v64 + 4) = v65;
    }
    v67 = j[3];
    if ( v67 )
    {
      for ( j = (int *)j[3]; j[2]; j = (int *)j[2] )
        ;
    }
    else
    {
      v68 = j[1];
      if ( *(int **)(v68 + 12) == j )
      {
        do
        {
          j = (int *)v68;
          v68 = *(_DWORD *)(v68 + 4);
        }
        while ( *(int **)(v68 + 12) == j );
        v67 = j[3];
      }
      if ( v68 != v67 )
        j = (int *)v68;
    }
  }
LABEL_77:
  if ( v76 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>>::_M_erase(
      (int)&v72,
      v73);
    v75 = &v72;
    v76 = 0;
    v74 = &v72;
    v73 = nullptr;
  }
  std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>>::~vector((int)&v80);
  std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(__p);
  *(_DWORD *)(v5 + 16) = v71;
  return *(unsigned __int8 *)(v5 + 20);
}


// ===== 52b560 PFWorld::_SearchGraph(PFObject const*,Point3D<float> const&,Point3D<float> const&,uint,std::list<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>> *) =====
int __fastcall PFWorld::_SearchGraph(_DWORD *a1, int a2, float *a3, float *a4, int a5, int a6)
{
  int Module; // r6
  int Node; // r6
  float v12; // r3
  float v13; // r10
  int NodeAt; // r6
  float *v15; // r10
  float v16; // r2
  float v17; // r12
  float v18; // r2
  float v19; // r12
  float v20; // r2
  float v21; // r12
  float v22; // r3
  float v23; // r2
  float *v24; // r10
  float v25; // r2
  float v26; // r12
  float v27; // r12
  bool v28; // zf
  int v29; // r1
  int v30; // r2
  int v31; // r3
  int v32; // r2
  int v33; // r3
  int v34; // r12
  int v35; // r1
  unsigned int v36; // r0
  bool v37; // zf
  _DWORD *v38; // r0
  _DWORD *v39; // r3
  int *v40; // r3
  unsigned int v41; // r2
  int v42; // r0
  bool v43; // zf
  std::__node_alloc *v44; // r0
  int v45; // r3
  _DWORD *v46; // r2
  bool v47; // zf
  float v48; // [sp+18h] [bp-14Ch]
  float v50; // [sp+24h] [bp-140h]
  float *v51; // [sp+24h] [bp-140h]
  float v52; // [sp+28h] [bp-13Ch]
  float *v53; // [sp+28h] [bp-13Ch]
  float v54; // [sp+2Ch] [bp-138h]
  float *v55; // [sp+2Ch] [bp-138h]
  float *v56; // [sp+30h] [bp-134h]
  float v57; // [sp+30h] [bp-134h]
  float v58; // [sp+34h] [bp-130h]
  _DWORD v59[2]; // [sp+3Ch] [bp-128h] BYREF
  _DWORD v60[8]; // [sp+44h] [bp-120h] BYREF
  float v61; // [sp+64h] [bp-100h] BYREF
  float v62; // [sp+68h] [bp-FCh]
  float v63; // [sp+6Ch] [bp-F8h]
  float v64; // [sp+70h] [bp-F4h]
  float v65; // [sp+74h] [bp-F0h]
  float v66; // [sp+78h] [bp-ECh]
  float v67; // [sp+7Ch] [bp-E8h]
  float v68; // [sp+80h] [bp-E4h]
  float v69; // [sp+84h] [bp-E0h]
  float v70; // [sp+88h] [bp-DCh] BYREF
  float v71; // [sp+8Ch] [bp-D8h]
  float v72; // [sp+90h] [bp-D4h]
  float v73; // [sp+94h] [bp-D0h]
  float v74; // [sp+98h] [bp-CCh]
  float v75; // [sp+9Ch] [bp-C8h]
  float v76; // [sp+A0h] [bp-C4h]
  float v77; // [sp+A4h] [bp-C0h]
  float v78; // [sp+A8h] [bp-BCh]
  int (__fastcall **v79[4])(_DWORD, int); // [sp+ACh] [bp-B8h] BYREF
  int (__fastcall **v80[3])(_DWORD, int); // [sp+BCh] [bp-A8h] BYREF
  _DWORD v81[3]; // [sp+C8h] [bp-9Ch] BYREF
  float v82[3]; // [sp+D4h] [bp-90h] BYREF
  float v83[3]; // [sp+E0h] [bp-84h] BYREF
  float v84[3]; // [sp+ECh] [bp-78h] BYREF
  float v85[3]; // [sp+F8h] [bp-6Ch] BYREF
  float v86[3]; // [sp+104h] [bp-60h] BYREF
  float v87[3]; // [sp+110h] [bp-54h] BYREF
  _DWORD v88[3]; // [sp+11Ch] [bp-48h] BYREF
  _DWORD v89[4]; // [sp+128h] [bp-3Ch] BYREF
  int v90; // [sp+138h] [bp-2Ch] BYREF
  int v91; // [sp+13Ch] [bp-28h] BYREF
  std::string v92; // [sp+144h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v92, "PathFinding_Search");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v92);
  if ( (std::string *)v92._M_start_of_storage._M_data != &v92 && v92._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v92._M_buffers._M_end_of_storage - v92._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v92._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v92._M_start_of_storage._M_data,
        v92._M_buffers._M_end_of_storage - v92._M_start_of_storage._M_data);
  }
  if ( !Module )
    return 0;
  v70 = 0.0;
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  memset(v89, 0, 12);
  memset(v88, 0, sizeof(v88));
  if ( !PFWorld::GetCollisionAt((int)a1, a3, v89, (int)&v70, nullptr, &v91, 0)
    || !v91
    || !PFWorld::GetCollisionAt((int)a1, a4, v88, (int)&v61, nullptr, &v90, 0)
    || !v90 )
  {
    return 0;
  }
  if ( v61 != v70 )
  {
    v12 = v73;
    v13 = v71;
    v50 = v74;
    v54 = v72;
LABEL_14:
    v52 = v75;
    goto LABEL_15;
  }
  v13 = v71;
  if ( v62 != v71 )
  {
    v12 = v73;
    v50 = v74;
    v54 = v72;
    v52 = v75;
    goto LABEL_15;
  }
  v54 = v72;
  if ( v63 != v72 )
  {
    v12 = v73;
    v50 = v74;
    v52 = v75;
    goto LABEL_15;
  }
  v12 = v73;
  if ( v64 != v73 )
  {
    v50 = v74;
    v52 = v75;
    goto LABEL_15;
  }
  v50 = v74;
  v12 = v73;
  if ( v65 != v74 )
    goto LABEL_14;
  v52 = v75;
  v12 = v73;
  if ( v66 == v75 )
  {
    v12 = v73;
    if ( v67 == v76 )
    {
      v12 = v73;
      if ( v68 == v77 )
      {
        v12 = v73;
        if ( v69 == v78 )
        {
          v37 = a6 == 0;
          if ( a6 )
            v37 = a2 == 0;
          if ( !v37 )
            goto LABEL_68;
          return 1;
        }
      }
    }
  }
LABEL_15:
  v87[0] = (float)(v70 + v12) * 0.5;
  v87[1] = (float)(v50 + v13) * 0.5;
  v87[2] = (float)(v54 + v52) * 0.5;
  NodeAt = PFFloor::_GetNodeAt(v91, v87);
  v86[0] = (float)(v70 + v76) * 0.5;
  v86[2] = (float)(v72 + v78) * 0.5;
  v86[1] = (float)(v71 + v77) * 0.5;
  v56 = (float *)PFFloor::_GetNodeAt(v91, v86);
  v85[0] = (float)(v73 + v76) * 0.5;
  v85[2] = (float)(v75 + v78) * 0.5;
  v85[1] = (float)(v74 + v77) * 0.5;
  v15 = (float *)PFFloor::_GetNodeAt(v91, v85);
  v84[0] = (float)(v61 + v64) * 0.5;
  v84[2] = (float)(v63 + v66) * 0.5;
  v84[1] = (float)(v62 + v65) * 0.5;
  v55 = (float *)PFFloor::_GetNodeAt(v90, v84);
  v83[0] = (float)(v61 + v67) * 0.5;
  v83[2] = (float)(v63 + v69) * 0.5;
  v83[1] = (float)(v62 + v68) * 0.5;
  v53 = (float *)PFFloor::_GetNodeAt(v90, v83);
  v82[0] = (float)(v64 + v67) * 0.5;
  v82[1] = (float)(v65 + v68) * 0.5;
  v82[2] = (float)(v66 + v69) * 0.5;
  v51 = (float *)PFFloor::_GetNodeAt(v90, v82);
  if ( !NodeAt
    || (v16 = *(float *)(NodeAt + 12) - a3[1],
        v17 = *(float *)(NodeAt + 16) - a3[2],
        v58 = (float)((float)((float)(*(float *)(NodeAt + 8) - *a3) * (float)(*(float *)(NodeAt + 8) - *a3))
                    + (float)(v16 * v16))
            + (float)(v17 * v17),
        v58 >= 3.4028e38) )
  {
    v58 = 3.4028e38;
    NodeAt = 0;
  }
  if ( v56 )
  {
    v18 = v56[3] - a3[1];
    v19 = v56[4] - a3[2];
    if ( v58 > (float)((float)((float)((float)(v56[2] - *a3) * (float)(v56[2] - *a3)) + (float)(v18 * v18))
                     + (float)(v19 * v19)) )
    {
      NodeAt = (int)v56;
      v58 = (float)((float)((float)(v56[2] - *a3) * (float)(v56[2] - *a3)) + (float)(v18 * v18)) + (float)(v19 * v19);
    }
  }
  if ( v15 )
  {
    v20 = v15[3] - a3[1];
    v21 = v15[4] - a3[2];
    if ( v58 > (float)((float)((float)((float)(v15[2] - *a3) * (float)(v15[2] - *a3)) + (float)(v20 * v20))
                     + (float)(v21 * v21)) )
      NodeAt = (int)v15;
  }
  if ( v55
    && (v22 = v55[3] - a4[1],
        v23 = v55[4] - a4[2],
        (float)((float)((float)((float)(v55[2] - *a4) * (float)(v55[2] - *a4)) + (float)(v22 * v22)) + (float)(v23 * v23)) < 3.4028e38) )
  {
    v57 = (float)((float)((float)(v55[2] - *a4) * (float)(v55[2] - *a4)) + (float)(v22 * v22)) + (float)(v23 * v23);
    v24 = v55;
  }
  else
  {
    v57 = 3.4028e38;
    v24 = nullptr;
  }
  if ( v53 )
  {
    v25 = v53[3] - a4[1];
    v26 = v53[4] - a4[2];
    if ( v57 > (float)((float)((float)((float)(v53[2] - *a4) * (float)(v53[2] - *a4)) + (float)(v25 * v25))
                     + (float)(v26 * v26)) )
    {
      v24 = v53;
      v57 = (float)((float)((float)(v53[2] - *a4) * (float)(v53[2] - *a4)) + (float)(v25 * v25)) + (float)(v26 * v26);
    }
  }
  if ( v51 )
  {
    v48 = v51[3] - a4[1];
    v27 = v51[4] - a4[2];
    if ( v57 > (float)((float)((float)((float)(v51[2] - *a4) * (float)(v51[2] - *a4)) + (float)(v48 * v48))
                     + (float)(v27 * v27)) )
      v24 = v51;
  }
  v28 = NodeAt == 0;
  if ( NodeAt )
    v28 = v24 == nullptr;
  if ( v28 )
    return 0;
  if ( (float *)NodeAt == v24 )
  {
    v47 = a6 == 0;
    if ( a6 )
      v47 = a2 == 0;
    if ( !v47 )
    {
LABEL_68:
      Node = 1;
      *(float *)(a2 + 100) = *a3;
      *(float *)(a2 + 104) = a3[1];
      *(float *)(a2 + 108) = a3[2];
      *(float *)(a2 + 112) = *a4;
      *(float *)(a2 + 116) = a4[1];
      *(float *)(a2 + 120) = a4[2];
      v38 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
      v38[2] = a2 + 76;
      v39 = *(_DWORD **)(a6 + 4);
      *v38 = a6;
      v38[1] = v39;
      *v39 = v38;
      *(_DWORD *)(a6 + 4) = v38;
      return Node;
    }
    return 1;
  }
  v29 = a1[30];
  v30 = a1[31];
  v81[0] = NodeAt;
  v81[1] = v24;
  v81[2] = a5;
  v31 = -1431655765 * ((v30 - v29) >> 2);
  v32 = v31 - 1;
  if ( v31 - 1 >= 0 )
  {
    v33 = 12 * v31 - 12;
    do
    {
      v34 = v29 + v33;
      if ( NodeAt == *(_DWORD *)(v29 + v33) && v24 == *(float **)(v34 + 4) && a5 == *(_DWORD *)(v34 + 8) )
        return 0;
      --v32;
      v33 -= 12;
    }
    while ( v32 >= 0 );
  }
  v35 = a1[18];
  v59[0] = off_96C908;
  v59[1] = v35;
  v60[2] = v60;
  v60[0] = v60;
  v60[1] = v60;
  v36 = (**(int (__fastcall ***)(int))NodeAt)(NodeAt);
  if ( a2 )
  {
    v79[1] = (int (__fastcall **)(_DWORD, int))v24;
    *(int (__fastcall ***)(_DWORD, int))((char *)&v79[2]
                                       + `construction vtable for'PFInnerTest_PathValidity-in-PFInnerTest_Default) = (int (__fastcall **)(_DWORD, int))&off_96CA28;
    *(int (__fastcall ***)(_DWORD, int))((char *)&v79[2]
                                       + `construction vtable for'PFInnerTest_PFObject-in-PFInnerTest_Default) = (int (__fastcall **)(_DWORD, int))&off_96C9E0;
    v79[2] = (int (__fastcall **)(_DWORD, int))&unk_96C974;
    v79[3] = (int (__fastcall **)(_DWORD, int))a2;
    v79[0] = (int (__fastcall **)(_DWORD, int))&off_96C950;
    Node = sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode((int)v59, v36, v79, a5, a6);
  }
  else
  {
    v80[1] = (int (__fastcall **)(_DWORD, int))v24;
    *(int (__fastcall ***)(_DWORD, int))((char *)&v80[2]
                                       + `construction vtable for'PFInnerTest_PathValidity-in-PFInnerTest_Anonymous) = (int (__fastcall **)(_DWORD, int))&off_96CB18;
    v80[2] = (int (__fastcall **)(_DWORD, int))&unk_96CAAC;
    v80[0] = (int (__fastcall **)(_DWORD, int))&off_96CA88;
    Node = sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode((int)v59, v36, v80, a5, a6);
  }
  if ( !Node )
    SearchFailCache::add((int)(a1 + 30), v81);
  if ( a6 )
  {
    if ( Node )
    {
      v40 = *(int **)a6;
      if ( *(_DWORD *)a6 != a6 )
      {
        v41 = 0;
        do
        {
          v40 = (int *)*v40;
          ++v41;
        }
        while ( (int *)a6 != v40 );
        if ( v41 > 1 )
        {
          v42 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(a6 + 4) + 8) + 4))(*(_DWORD *)(*(_DWORD *)(a6 + 4) + 8));
          v43 = v55 == (float *)v42;
          if ( v55 != (float *)v42 )
            v43 = v53 == (float *)v42;
          if ( v43 || v51 == (float *)v42 )
          {
            v44 = *(std::__node_alloc **)(a6 + 4);
            v45 = *(_DWORD *)&v44->gap0;
            v46 = *(_DWORD **)&v44[4].gap0;
            *v46 = *(_DWORD *)&v44->gap0;
            *(_DWORD *)(v45 + 4) = v46;
            std::__node_alloc::deallocate(v44, (unsigned int)&byte_9[3], (unsigned int)v46);
          }
        }
      }
    }
    else
    {
      v89[3] = 0;
      std::list<PFGInnerEdge const*>::resize((int **)a6);
    }
  }
  sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar(v59);
  return Node;
}


// ===== 52c354 PFWorld::HasValidPath(Point3D<float> const&,Point3D<float> const&,uint) =====
int __fastcall PFWorld::HasValidPath(_DWORD *a1, float *a2, float *a3, int a4)
{
  return PFWorld::_SearchGraph(a1, 0, a2, a3, a4, 0);
}


// ===== 52c388 PFWorld::HasValidPath(PFObject const&,Point3D<float> const&,uint) =====
int __fastcall PFWorld::HasValidPath(_DWORD *a1, int a2, float *a3, int a4)
{
  return PFWorld::_SearchGraph(a1, a2, (float *)(a2 + 24), a3, a4, 0);
}


// ===== 52c3b0 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 32;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 52c3d0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::allocate();
    v11[4] = *a4;
    v11[5] = a4[1];
    v11[6] = a4[2];
    v16 = a4[3];
    v11[3] = 0;
    v11[2] = 0;
    v11[7] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v10[5] = a4[1];
    v10[6] = a4[2];
    v12 = a4[3];
    v10[3] = 0;
    v10[2] = 0;
    v10[7] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v14[5] = a4[1];
    v14[6] = a4[2];
    v15 = a4[3];
    v14[3] = 0;
    v14[2] = 0;
    v14[7] = v15;
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


// ===== 52c524 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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


// ===== 52c6ac std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_MapTraitsT<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>,std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 52ca20 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_markNode(std::map<uint,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::less<uint>,std::allocator<std::pair<uint const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>> &,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge&) =====
int __fastcall sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_markNode(int a1, _DWORD *a2, float *a3)
{
  int (***v5)(void); // r4
  unsigned int v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  unsigned int v9; // r2
  bool v10; // cc
  _DWORD *v11; // r2
  unsigned int v13; // r0
  _DWORD *v14; // r12
  _DWORD *v15; // r2
  unsigned int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  unsigned int v20[4]; // [sp+0h] [bp-18h] BYREF
  _DWORD *v21; // [sp+10h] [bp-8h] BYREF
  _DWORD *v22; // [sp+14h] [bp-4h] BYREF

  v5 = (int (***)(void))(*(int (__fastcall **)(_DWORD))(**(_DWORD **)a3 + 12))(*(_DWORD *)a3);
  v6 = (**v5)();
  v7 = (_DWORD *)a2[1];
  if ( !v7 )
    goto LABEL_29;
  v8 = a2;
  while ( 1 )
  {
    v9 = v7[4];
    v10 = v6 > v9;
    if ( v6 <= v9 )
      v11 = (_DWORD *)v7[2];
    else
      v11 = (_DWORD *)v7[3];
    if ( v10 )
      v7 = v8;
    v8 = v7;
    if ( !v11 )
      break;
    v7 = v11;
  }
  if ( a2 == v7 )
    goto LABEL_15;
  if ( v6 < v7[4] )
LABEL_29:
    v7 = a2;
  if ( a2 != v7 && *((float *)v7 + 6) <= a3[1] )
    return 0;
LABEL_15:
  v13 = ((int (__fastcall *)(int (***)(void)))**v5)(v5);
  v14 = (_DWORD *)a2[1];
  if ( v14 )
  {
    v15 = a2;
    while ( 1 )
    {
      v16 = v14[4];
      v17 = v13 > v16;
      if ( v13 <= v16 )
        v18 = (_DWORD *)v14[2];
      else
        v18 = (_DWORD *)v14[3];
      if ( v17 )
        v14 = v15;
      v15 = v14;
      if ( !v18 )
        break;
      v14 = v18;
    }
  }
  else
  {
    v14 = a2;
  }
  if ( a2 == v14 || (v19 = v14, v13 < v14[4]) )
  {
    v20[0] = v13;
    memset(&v20[1], 0, 12);
    v22 = v14;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
      &v21,
      a2,
      &v22,
      v20);
    v19 = v21;
  }
  v19[5] = *(_DWORD *)a3;
  v19[6] = *((_DWORD *)a3 + 1);
  v19[7] = *((_DWORD *)a3 + 2);
  return 1;
}


// ===== 52cb90 PFWorld::_SearchGraph(PFObject const*,Point3D<float> const&,sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&,uint) =====
int __fastcall PFWorld::_SearchGraph(
        PFWorld *a1,
        const PFObject *a2,
        float *a3,
        int (__fastcall ***a4)(_DWORD, int),
        int a5)
{
  int Module; // r6
  float *v10; // r3
  unsigned int v11; // r0
  _DWORD *v12; // r3
  _DWORD *v13; // r12
  _DWORD *v14; // r1
  unsigned int v15; // r2
  bool v16; // cc
  _DWORD *v17; // r2
  unsigned int v18; // r0
  int *v19; // r12
  int *v20; // r2
  unsigned int v21; // r3
  bool v22; // cc
  int *v23; // r3
  float v24; // r10
  int (__fastcall ***v25)(_DWORD); // r9
  int v26; // r0
  int v27; // r4
  int *v28; // r5
  unsigned int v29; // r0
  int *v30; // r4
  int *v31; // r2
  unsigned int v32; // r3
  bool v33; // cc
  int *v34; // r3
  int v35; // r5
  _DWORD *v36; // r0
  _DWORD *v37; // r2
  unsigned int v38; // r0
  int *v39; // r12
  int *v40; // r2
  unsigned int v41; // r3
  bool v42; // cc
  int *v43; // r3
  int v44; // r4
  int v46; // r11
  unsigned int v47; // r0
  _DWORD **v48; // r3
  void **v49; // r2
  int (__fastcall **v50)(_DWORD, int); // r2
  int (__fastcall *v51)(_DWORD, int); // r11
  int v52; // r0
  void (__fastcall *v53)(int (__fastcall ***)(_DWORD, int (__fastcall ***)(_DWORD)), int); // r11
  int v54; // r0
  float v55; // r11
  float v56; // r0
  void *v57; // r0
  int v58; // r3
  _DWORD *v59; // r2
  int (__fastcall *v60)(_DWORD, int); // r11
  int v61; // r0
  int (__fastcall *v62)(_DWORD, int); // r11
  int v63; // r0
  float *v64; // r0
  float *i; // r3
  int *j; // r5
  int v67; // r7
  _DWORD *v68; // r0
  _DWORD *v69; // r3
  int v70; // r2
  int v71; // r3
  int (__fastcall ***v72)(_DWORD); // [sp+10h] [bp-114h]
  int (**v73)(); // [sp+3Ch] [bp-E8h] BYREF
  int v74; // [sp+40h] [bp-E4h]
  _DWORD v75[2]; // [sp+44h] [bp-E0h] BYREF
  int *v76; // [sp+4Ch] [bp-D8h]
  unsigned __int8 v77; // [sp+50h] [bp-D4h]
  int v78; // [sp+54h] [bp-D0h]
  int v79; // [sp+58h] [bp-CCh]
  int v80; // [sp+5Ch] [bp-C8h]
  int v81; // [sp+60h] [bp-C4h]
  int v82; // [sp+64h] [bp-C0h] BYREF
  int *v83; // [sp+68h] [bp-BCh]
  int *v84; // [sp+6Ch] [bp-B8h]
  int *v85; // [sp+70h] [bp-B4h]
  int v86; // [sp+74h] [bp-B0h]
  unsigned int v87[4]; // [sp+7Ch] [bp-A8h] BYREF
  unsigned int v88[4]; // [sp+8Ch] [bp-98h] BYREF
  unsigned int v89[4]; // [sp+9Ch] [bp-88h] BYREF
  float *v90; // [sp+ACh] [bp-78h] BYREF
  float *v91; // [sp+B0h] [bp-74h]
  int v92; // [sp+B4h] [bp-70h]
  int v93[3]; // [sp+BCh] [bp-68h] BYREF
  int v94[3]; // [sp+C8h] [bp-5Ch] BYREF
  float v95[3]; // [sp+D4h] [bp-50h] BYREF
  void *v96[2]; // [sp+E0h] [bp-44h] BYREF
  int *v97; // [sp+E8h] [bp-3Ch] BYREF
  int *v98; // [sp+ECh] [bp-38h] BYREF
  int *v99; // [sp+F0h] [bp-34h] BYREF
  int *v100; // [sp+F4h] [bp-30h] BYREF
  int *v101; // [sp+F8h] [bp-2Ch] BYREF
  int *v102; // [sp+FCh] [bp-28h] BYREF
  std::string v103; // [sp+104h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v103, "PathFinding_Search");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v103);
  if ( (std::string *)v103._M_start_of_storage._M_data != &v103 && v103._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v103._M_buffers._M_end_of_storage - v103._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v103._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v103._M_start_of_storage._M_data,
        v103._M_buffers._M_end_of_storage - v103._M_start_of_storage._M_data);
  }
  if ( Module )
  {
    v10 = a2 ? PFWorld::_GetClosestNode(a1, a2) : PFWorld::_GetClosestNode((int)a1, a3);
    if ( v10 )
    {
      v74 = *((_DWORD *)a1 + 18);
      v73 = off_96CB30;
      v76 = v75;
      v75[0] = v75;
      v75[1] = v75;
      v11 = (**(int (__fastcall ***)(float *))v10)(v10);
      v12 = *(_DWORD **)(v74 + 8);
      v13 = (_DWORD *)(v74 + 4);
      if ( !v12 )
        goto LABEL_68;
      v14 = (_DWORD *)(v74 + 4);
      while ( 1 )
      {
        v15 = v12[4];
        v16 = v11 > v15;
        if ( v11 <= v15 )
          v17 = (_DWORD *)v12[2];
        else
          v17 = (_DWORD *)v12[3];
        if ( v16 )
          v12 = v14;
        if ( !v17 )
          break;
        v14 = v12;
        v12 = v17;
      }
      if ( v13 == v12 )
        goto LABEL_69;
      if ( v11 < v12[4] )
LABEL_68:
        v12 = (_DWORD *)(v74 + 4);
      if ( v13 != v12 )
      {
        v72 = (int (__fastcall ***)(_DWORD))v12[5];
        v77 = 0;
        std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(v75);
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        if ( v72 )
        {
          LOBYTE(v82) = 0;
          v76 = v75;
          v86 = 0;
          v96[0] = v96;
          v96[1] = v96;
          v90 = nullptr;
          v91 = nullptr;
          v92 = 0;
          v83 = nullptr;
          v84 = &v82;
          v85 = &v82;
          v18 = (**v72)(v72);
          v19 = v83;
          if ( v83 )
          {
            v20 = &v82;
            while ( 1 )
            {
              v21 = v19[4];
              v22 = v18 > v21;
              if ( v18 <= v21 )
                v23 = (int *)v19[2];
              else
                v23 = (int *)v19[3];
              if ( v22 )
                v19 = v20;
              if ( !v23 )
                break;
              v20 = v19;
              v19 = v23;
            }
            if ( v19 != &v82 && v18 >= v19[4] )
            {
LABEL_35:
              v24 = 0.0;
              v19[5] = 0;
              v19[7] = 0;
              v19[6] = 0;
              v25 = v72;
              do
              {
                if ( (**a4)(a4, (int)v25) || !a5 )
                  break;
                v46 = v74;
                ++v78;
                v47 = (**v25)(v25);
                sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(v46, v47, (int)v96);
                v48 = (_DWORD **)v96[0];
                v49 = (void **)v96[0];
                if ( v96[0] == v96 )
                  goto LABEL_77;
                while ( 1 )
                {
                  do
                    v49 = (void **)*v49;
                  while ( v49 != v96 );
                  v50 = *a4;
                  ++v79;
                  v51 = *v50;
                  v52 = (*(int (__fastcall **)(_DWORD *))(*v48[2] + 12))(v48[2]);
                  if ( !v51(a4, v52) )
                  {
                    if ( !(*a4)[1](a4, *((_DWORD *)v96[0] + 2)) )
                      goto LABEL_76;
                    v60 = (*a4)[2];
                    v61 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v96[0] + 2) + 12))(*((_DWORD *)v96[0] + 2));
                    if ( !v60(a4, v61) )
                      goto LABEL_76;
                  }
                  v53 = (void (__fastcall *)(int (__fastcall ***)(_DWORD, int (__fastcall ***)(_DWORD)), int))**a4;
                  v54 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v96[0] + 2) + 12))(*((_DWORD *)v96[0] + 2));
                  v53((int (__fastcall ***)(_DWORD, int (__fastcall ***)(_DWORD)))a4, v54);
                  ++v80;
                  v55 = *((float *)v96[0] + 2);
                  v56 = (*(float (__fastcall **)(float))(*(_DWORD *)LODWORD(v55) + 16))(COERCE_FLOAT(LODWORD(v55)))
                      + v24;
                  v95[0] = v55;
                  v95[1] = v56;
                  v95[2] = v56 + 0.0;
                  if ( !sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_markNode((int)&v73, &v82, v95) )
                    goto LABEL_76;
                  v62 = **a4;
                  v63 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v96[0] + 2) + 12))(*((_DWORD *)v96[0] + 2));
                  if ( v62(a4, v63) )
                    break;
                  ++v81;
                  std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>::push(
                    (int *)&v90,
                    v95);
LABEL_76:
                  v57 = v96[0];
                  v58 = *(_DWORD *)v96[0];
                  v59 = *((_DWORD **)v96[0] + 1);
                  *v59 = *(_DWORD *)v96[0];
                  *(_DWORD *)(v58 + 4) = v59;
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v57, 0xCu);
                  v48 = (_DWORD **)v96[0];
                  v49 = (void **)v96[0];
                  if ( v96[0] == v96 )
                    goto LABEL_77;
                }
                v64 = v90;
                for ( i = v91; v91 != v90; v91 -= 3 )
                {
                  v94[0] = *(int *)(i - 3);
                  v94[1] = *(int *)(i - 2);
                  v94[2] = *(int *)(i - 1);
                  std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int>(
                    v64,
                    (int)(i - 3),
                    (_DWORD *)i - 3,
                    v94);
                  v64 = v90;
                  i = v91 - 3;
                }
                std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp>::push(
                  (int *)&v90,
                  v95);
LABEL_77:
                if ( !--a5 )
                  break;
                if ( !(-1431655765 * (v91 - v90)) )
                  break;
                v25 = (int (__fastcall ***)(_DWORD))(*(int (__fastcall **)(_DWORD))(**(_DWORD **)v90 + 12))(*(_DWORD *)v90);
                v24 = v90[1];
                v93[0] = *(int *)(v91 - 3);
                v93[1] = *(int *)(v91 - 2);
                v93[2] = *(int *)(v91 - 1);
                std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge *,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_EComp,int>(
                  v90,
                  (int)(v91 - 3),
                  (_DWORD *)v91 - 3,
                  v93);
                v91 -= 3;
              }
              while ( v25 );
              v26 = (**a4)(a4, (int)v25);
              v77 = v26;
              if ( v26 )
              {
                while ( 1 )
                {
                  v27 = (**v25)(v25);
                  if ( v27 == (**v72)(v72) )
                    goto LABEL_97;
                  v28 = v76;
                  v29 = (**v25)(v25);
                  v30 = v83;
                  if ( !v83 )
                    break;
                  v31 = &v82;
                  while ( 1 )
                  {
                    v32 = v30[4];
                    v33 = v29 > v32;
                    if ( v29 <= v32 )
                      v34 = (int *)v30[2];
                    else
                      v34 = (int *)v30[3];
                    if ( v33 )
                      v30 = v31;
                    if ( !v34 )
                      break;
                    v31 = v30;
                    v30 = v34;
                  }
                  if ( v30 == &v82 || v29 < v30[4] )
                    goto LABEL_51;
LABEL_52:
                  v35 = *v28;
                  v36 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
                  v36[2] = v30[5];
                  v37 = *(_DWORD **)(v35 + 4);
                  *v36 = v35;
                  v36[1] = v37;
                  *v37 = v36;
                  *(_DWORD *)(v35 + 4) = v36;
                  v38 = (**v25)(v25);
                  v39 = v83;
                  if ( !v83 )
                  {
                    v39 = &v82;
LABEL_64:
                    v98 = v39;
                    v87[0] = v38;
                    memset(&v87[1], 0, 12);
                    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
                      &v97,
                      &v82,
                      &v98,
                      v87);
                    v39 = v97;
                    goto LABEL_65;
                  }
                  v40 = &v82;
                  while ( 1 )
                  {
                    v41 = v39[4];
                    v42 = v38 > v41;
                    v43 = (int *)(v38 <= v41 ? v39[2] : v39[3]);
                    if ( v42 )
                      v39 = v40;
                    if ( !v43 )
                      break;
                    v40 = v39;
                    v39 = v43;
                  }
                  if ( v39 == &v82 || v38 < v39[4] )
                    goto LABEL_64;
LABEL_65:
                  v25 = (int (__fastcall ***)(_DWORD))(*(int (__fastcall **)(int))(*(_DWORD *)v39[5] + 4))(v39[5]);
                }
                v30 = &v82;
LABEL_51:
                v100 = v30;
                v88[0] = v29;
                memset(&v88[1], 0, 12);
                std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
                  &v99,
                  &v82,
                  &v100,
                  v88);
                v30 = v99;
                goto LABEL_52;
              }
              j = v84;
              while ( j != &v82 )
              {
                if ( j[5] )
                {
                  v67 = *v76;
                  v68 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
                  v68[2] = j[5];
                  v69 = *(_DWORD **)(v67 + 4);
                  *v68 = v67;
                  v68[1] = v69;
                  *v69 = v68;
                  *(_DWORD *)(v67 + 4) = v68;
                }
                v70 = j[3];
                if ( v70 )
                {
                  for ( j = (int *)j[3]; j[2]; j = (int *)j[2] )
                    ;
                }
                else
                {
                  v71 = j[1];
                  if ( *(int **)(v71 + 12) == j )
                  {
                    do
                    {
                      j = (int *)v71;
                      v71 = *(_DWORD *)(v71 + 4);
                    }
                    while ( *(int **)(v71 + 12) == j );
                    v70 = j[3];
                  }
                  if ( v71 != v70 )
                    j = (int *)v71;
                }
              }
LABEL_97:
              if ( v86 )
              {
                std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::_M_erase(
                  (int)&v82,
                  v83);
                v85 = &v82;
                v86 = 0;
                v84 = &v82;
                v83 = nullptr;
              }
              std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge,std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>::~vector((int)&v90);
              std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(v96);
              v76 = v75;
              goto LABEL_70;
            }
          }
          else
          {
            v19 = &v82;
          }
          v102 = v19;
          memset(&v89[1], 0, 12);
          v89[0] = v18;
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>,std::priv::_Select1st<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::priv::_MapTraitsT<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>,std::allocator<std::pair<unsigned int const,sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_InEdge>>>::insert_unique(
            &v101,
            &v82,
            &v102,
            v89);
          v19 = v101;
          goto LABEL_35;
        }
LABEL_70:
        v44 = v77;
        v73 = off_96CB30;
        std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(v75);
        return v44;
      }
LABEL_69:
      v77 = 0;
      std::priv::_List_base<PFGInnerEdge const*,std::allocator<PFGInnerEdge const*>>::clear(v75);
      v81 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      goto LABEL_70;
    }
  }
  return 0;
}


// ===== 52d4f0 PFWorld::TestPath(Point3D<float> const&,sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&,uint) =====
int __fastcall PFWorld::TestPath(PFWorld *a1, float *a2, int (__fastcall ***a3)(_DWORD, int), int a4)
{
  return PFWorld::_SearchGraph(a1, nullptr, a2, a3, a4);
}


// ===== 52d518 PFWorld::TestPath(PFObject const&,sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&,uint) =====
int __fastcall PFWorld::TestPath(PFWorld *a1, float *a2, int (__fastcall ***a3)(_DWORD, int), int a4)
{
  return PFWorld::_SearchGraph(a1, (const PFObject *)a2, a2 + 6, a3, a4);
}


// ===== 52d538 PFWorld::_SmoothPath(PFObject &) =====
void __fastcall PFWorld::_SmoothPath(PFWorld *this, PFObject *a2)
{
  PFObject *v2; // r3
  int v4; // r3
  int v5; // r5
  float *v6; // r10
  float *v7; // r11
  float *v8; // r9
  float *v9; // r0
  float *v10; // r5
  int *v11; // r0
  int v12; // r3
  int *v13; // r2
  int v14; // r4
  _DWORD *v15; // r0
  _DWORD *v16; // r3
  float v17; // r0
  float v18; // r9
  float v19; // r11
  float v20; // r8
  float v21; // r10
  float v22; // r4
  float v23; // r7
  float v24; // r9
  float v25; // r0
  float v26; // r10
  float v27; // lr
  float v28; // r11
  float v29; // r8
  int v30; // r0
  float v31[2]; // [sp+10h] [bp-34h] BYREF
  float v32[2]; // [sp+18h] [bp-2Ch] BYREF
  float v33[2]; // [sp+20h] [bp-24h] BYREF
  float v34[2]; // [sp+28h] [bp-1Ch] BYREF
  float v35; // [sp+30h] [bp-14h] BYREF
  float v36; // [sp+34h] [bp-10h]
  float v37; // [sp+38h] [bp-Ch] BYREF
  float v38[2]; // [sp+3Ch] [bp-8h] BYREF

  v2 = *((PFObject **)a2 + 14);
  if ( v2 == (PFObject *)((char *)a2 + 56) )
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
        "pfo.path.size() > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp",
        255);
    }
  }
  else
  {
    do
      v2 = *(PFObject **)v2;
    while ( (PFObject *)((char *)a2 + 56) != v2 );
  }
  if ( !*((_DWORD *)a2 + 31) )
  {
    v4 = *((_DWORD *)a2 + 14);
    *((_DWORD *)a2 + 31) = 1;
    v5 = *(_DWORD *)(v4 + 8);
    v6 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
    v7 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 36))(v5);
    v8 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
    v9 = (float *)operator new(0x30u, 0);
    v9[3] = 1.0;
    v9[1] = 0.0;
    v9[2] = 0.0;
    *(_DWORD *)v9 = off_96C810;
    v9[4] = 0.0;
    v9[5] = 0.0;
    v10 = v9;
    v9[6] = *v7;
    v9[7] = v7[1];
    v9[8] = v7[2];
    v9[9] = *v8;
    v9[10] = v8[1];
    v9[11] = v8[2];
    v11 = *((int **)a2 + 14);
    v12 = *v11;
    v13 = (int *)v11[1];
    *v13 = *v11;
    *(_DWORD *)(v12 + 4) = v13;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0xCu);
    v14 = *((_DWORD *)a2 + 14);
    v15 = std::allocator<std::priv::_List_node<PFGInnerEdge const*>>::allocate();
    v15[2] = v10;
    v16 = *(_DWORD **)(v14 + 4);
    *v15 = v14;
    v15[1] = v16;
    *v16 = v15;
    *(_DWORD *)(v14 + 4) = v15;
    if ( v6 )
    {
      v17 = (float)(v6[8] - *((float *)a2 + 2)) * 0.5;
      v18 = v6[5] * v17;
      v19 = v6[2];
      v20 = v6[6] * v17;
      v21 = v6[3];
      v35 = 0.0;
      v36 = 0.0;
      v22 = v19 + v18;
      v23 = v21 + v20;
      v34[0] = v19 + v18;
      v34[1] = v21 + v20;
      v24 = v19 - v18;
      v25 = v21 - v20;
      v33[0] = v24;
      v33[1] = v21 - v20;
      v26 = *((float *)a2 + 16);
      v27 = v10[7];
      v28 = v10[6];
      v31[1] = *((float *)a2 + 17);
      v29 = v25;
      v32[0] = v28;
      v32[1] = v27;
      v31[0] = v26;
      v30 = Point2D<float>::lineIntersection(v34, v33, v32, v31, &v35, v38, &v37);
      if ( v30 == 4 )
      {
        if ( v38[0] >= 0.0 )
        {
          v35 = v24;
          v36 = v29;
          v23 = v29;
          v22 = v24;
        }
        else
        {
          v35 = v22;
          v36 = v23;
        }
        goto LABEL_14;
      }
      if ( v30 == 5 || v30 == 3 )
      {
        v22 = v35;
        v23 = v36;
LABEL_14:
        v10[9] = v22;
        v10[10] = v23;
      }
    }
  }
}


// ===== 52d838 PFWorld::MovePath(PFObject &,Point3D<float> &) =====
int __fastcall PFWorld::MovePath(PFWorld *a1, PFObject *a2, _DWORD *a3)
{
  _DWORD **v3; // r3
  _DWORD *v4; // r4
  _DWORD *v8; // r2
  _DWORD *v9; // r0
  int v10; // r3
  int *v11; // r0
  int v12; // r3
  int *v13; // r2
  _DWORD *v14; // r3
  _DWORD *v15; // r0
  int v17; // r3

  v4 = (_DWORD *)((char *)a2 + 56);
  v3 = *((_DWORD ***)a2 + 14);
  if ( v3 == (_DWORD **)((char *)a2 + 56) )
  {
    *a3 = *((_DWORD *)a2 + 6);
    a3[1] = *((_DWORD *)a2 + 7);
    a3[2] = *((_DWORD *)a2 + 8);
    return 0;
  }
  v8 = *((_DWORD **)a2 + 14);
  do
    v8 = (_DWORD *)*v8;
  while ( v4 != v8 );
  v9 = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*v3[2] + 40))(v3[2]);
  *a3 = *v9;
  a3[1] = v9[1];
  a3[2] = v9[2];
  if ( !PFWorld::_IsPastWaypoint(a1, a2) )
    return 1;
  v10 = *((_DWORD *)a2 + 31);
  if ( !v10 )
    goto LABEL_6;
  v11 = *((int **)a2 + 14);
  *((_DWORD *)a2 + 31) = v10 - 1;
  v17 = v11[2];
  if ( v17 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 32))(v11[2]);
LABEL_6:
    v11 = *((int **)a2 + 14);
  }
  v12 = *v11;
  v13 = (int *)v11[1];
  *v13 = *v11;
  *(_DWORD *)(v12 + 4) = v13;
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0xCu);
  v14 = *((_DWORD **)a2 + 14);
  if ( v14 == v4 )
  {
    *a3 = *((_DWORD *)a2 + 16);
    a3[1] = *((_DWORD *)a2 + 17);
    a3[2] = *((_DWORD *)a2 + 18);
    return 0;
  }
  else
  {
    do
      v14 = (_DWORD *)*v14;
    while ( v4 != v14 );
    PFWorld::_SmoothPath(a1, a2);
    PFWorld::_CalcWaypointVec(a1, a2);
    v15 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)a2 + 14) + 8) + 40))(*(_DWORD *)(*((_DWORD *)a2 + 14) + 8));
    *a3 = *v15;
    a3[1] = v15[1];
    a3[2] = v15[2];
    return 1;
  }
}


// ===== 52d9b4 std::deque<uint,std::allocator<uint>>::_M_push_back_aux_v(uint const&) =====
void *__fastcall std::deque<unsigned int>::_M_push_back_aux_v(int a1, _DWORD *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  void *result; // r0
  int *v8; // r2
  int v9; // r3
  int v10; // r2
  char *v11; // r1
  int v12; // r7
  int v13; // r9
  char *v14; // r6
  int v15; // r2
  unsigned int v16; // r8
  char *v17; // r0
  const void *v18; // r1
  size_t v19; // r2
  char *v20; // r10
  void *v21; // r0
  size_t v22; // r1
  int v23; // r3
  int v24; // r3
  size_t v25; // [sp+4h] [bp-4h] BYREF

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v11 = *(char **)(a1 + 12);
    v12 = ((v2 - v11) >> 2) + 1;
    v13 = ((v2 - v11) >> 2) + 2;
    if ( v4 <= 2 * v13 )
    {
      if ( v4 )
        v15 = *(_DWORD *)(a1 + 36);
      else
        v15 = 1;
      v16 = v4 + 2 + v15;
      v17 = (char *)std::allocator<unsigned int *>::allocate(a1 + 32, v16);
      v18 = *(const void **)(a1 + 12);
      v19 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v18;
      v20 = v17;
      v14 = &v17[4 * ((v16 - v13) >> 1)];
      if ( v19 )
        memmove(&v17[4 * ((v16 - v13) >> 1)], v18, v19);
      v21 = *(void **)(a1 + 32);
      if ( v21 )
      {
        v22 = 4 * *(_DWORD *)(a1 + 36);
        if ( v22 > 0x80 )
          CustomFree(v21);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v21, v22);
      }
      *(_DWORD *)(a1 + 32) = v20;
      *(_DWORD *)(a1 + 36) = v16;
    }
    else
    {
      v14 = (char *)(v3 + 4 * ((v4 - v13) >> 1));
      if ( v11 <= v14 )
      {
        if ( v2 + 4 - v11 > 0 )
          memmove(&v14[4 * v12 - (v2 + 4 - v11)], v11, v2 + 4 - v11);
      }
      else if ( v2 + 4 != v11 )
      {
        memmove(v14, v11, v2 + 4 - v11);
      }
    }
    *(_DWORD *)(a1 + 12) = v14;
    v23 = *(_DWORD *)v14;
    v2 = &v14[4 * v12 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v14 + 128;
    *(_DWORD *)(a1 + 4) = v23;
    *(_DWORD *)(a1 + 28) = v2;
    v24 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 128;
    *(_DWORD *)(a1 + 20) = v24;
  }
  v25 = 128;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v25);
  *((_DWORD *)v2 + 1) = result;
  **(_DWORD **)(a1 + 16) = *a2;
  v8 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v8;
  v9 = *v8;
  v10 = *v8 + 128;
  *(_DWORD *)(a1 + 16) = v9;
  *(_DWORD *)(a1 + 24) = v10;
  *(_DWORD *)(a1 + 20) = v9;
  return result;
}


// ===== 52db48 PFWorld::FindPath(PFObject &,Point3D<float> const&,uint) =====
glitch::os::Timer *__fastcall PFWorld::FindPath(_DWORD *a1, int a2, int a3, int a4)
{
  int Switch; // r10
  char *M_data; // r0
  glitch::os::Timer *v10; // r7
  int v11; // r0
  _DWORD *v12; // r3
  int v13; // r2
  int v14; // r1
  _DWORD *v15; // r8
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r3
  int v20; // r0
  bool v21; // zf
  unsigned int v22; // r2
  std::__node_alloc *v23; // r0
  int *v24; // r2
  int v25; // r3
  _DWORD v27[4]; // [sp+Ch] [bp-38h] BYREF
  int RealTime; // [sp+1Ch] [bp-28h] BYREF
  std::string v29; // [sp+24h] [bp-20h] BYREF

  PushProfilingContext("PFWorld::FindPath");
  PFWorld::DropPath((PFWorld *)a1, (PFObject *)a2);
  *(_DWORD *)(a2 + 64) = *(_DWORD *)a3;
  *(_DWORD *)(a2 + 68) = *(_DWORD *)(a3 + 4);
  *(_DWORD *)(a2 + 72) = *(_DWORD *)(a3 + 8);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v29, "PF_ProfileSearches");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v29);
  M_data = v29._M_start_of_storage._M_data;
  if ( (std::string *)v29._M_start_of_storage._M_data != &v29 && v29._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v29._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v29._M_start_of_storage._M_data,
        v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    RealTime = glitch::os::Timer::getRealTime((glitch::os::Timer *)M_data);
    v10 = (glitch::os::Timer *)PFWorld::_SearchGraph(a1, a2, (float *)(a2 + 24), (float *)a3, a4, a2 + 56);
    v11 = glitch::os::Timer::getRealTime(v10);
    v12 = (_DWORD *)a1[23];
    v13 = a1[25] - 4;
    v14 = v11 - RealTime;
    RealTime = v11 - RealTime;
    if ( v12 == (_DWORD *)v13 )
    {
      v15 = a1 + 19;
      std::deque<unsigned int>::_M_push_back_aux_v((int)(a1 + 19), &RealTime);
    }
    else
    {
      *v12 = v14;
      v15 = a1 + 19;
      a1[23] += 4;
    }
    a1[29] += RealTime;
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v27[0] = *v15;
    v27[1] = v16;
    v27[2] = v17;
    v27[3] = v18;
    if ( (unsigned int)std::priv::_Deque_iterator_base<unsigned int>::_M_subtract(a1 + 23, v27) > 0xA )
    {
      v19 = (_DWORD *)a1[19];
      v20 = a1[21] - 4;
      v21 = v19 == (_DWORD *)v20;
      v22 = a1[29] - *v19;
      if ( v19 != (_DWORD *)v20 )
        ++v19;
      a1[29] = v22;
      if ( v21 )
      {
        v23 = (std::__node_alloc *)a1[20];
        if ( v23 )
          std::__node_alloc::deallocate(v23, (unsigned int)&dword_80, v22);
        v24 = (int *)(a1[22] + 4);
        a1[22] = v24;
        v25 = *v24;
        a1[21] = *v24 + 128;
        a1[19] = v25;
        a1[20] = v25;
      }
      else
      {
        a1[19] = v19;
      }
    }
  }
  else
  {
    v10 = (glitch::os::Timer *)PFWorld::_SearchGraph(a1, a2, (float *)(a2 + 24), (float *)a3, a4, a2 + 56);
  }
  if ( v10 )
  {
    PFWorld::_SmoothPath((PFWorld *)a1, (PFObject *)a2);
    PFWorld::_CalcWaypointVec((PFWorld *)a1, (PFObject *)a2);
    v10 = (glitch::os::Timer *)(&dword_0 + 1);
  }
  PopProfilingContext("PFWorld::FindPath");
  return v10;
}


// ===== 52ddb0 `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerEdge.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerEdge.cpp()
{
  dword_9F6340 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F633C = 1056964608;
}


// ===== 52ddd0 PFGInnerGraph::DBG_GetMemUsage(void) =====
int __fastcall PFGInnerGraph::DBG_GetMemUsage(PFGInnerGraph *this)
{
  char *v1; // r3
  char *v2; // r12
  int result; // r0
  char *v4; // r2
  int v5; // r1

  v1 = *((char **)this + 3);
  v2 = (char *)this + 4;
  if ( v1 == (char *)this + 4 )
    return 0;
  result = 0;
  do
  {
    v4 = *((char **)v1 + 3);
    result += 24 * *(_DWORD *)(*((_DWORD *)v1 + 5) + 60) + 44;
    if ( v4 )
    {
      while ( *((_DWORD *)v4 + 2) )
        v4 = *((char **)v4 + 2);
      v1 = v4;
    }
    else
    {
      v5 = *((_DWORD *)v1 + 1);
      if ( *(char **)(v5 + 12) == v1 )
      {
        do
        {
          v1 = (char *)v5;
          v5 = *(_DWORD *)(v5 + 4);
        }
        while ( *(char **)(v5 + 12) == v1 );
        v4 = *((char **)v1 + 3);
      }
      if ( v4 != (char *)v5 )
        v1 = (char *)v5;
    }
  }
  while ( v2 != v1 );
  return result;
}


// ===== 52de6c `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerGraph.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerGraph.cpp()
{
  dword_9F634C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6348 = 1056964608;
}


// ===== 52de8c `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerNode.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGInnerNode.cpp()
{
  dword_9F6358 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6354 = 1056964608;
}


// ===== 52deac `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterEdge.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterEdge.cpp()
{
  dword_9F6364 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6360 = 1056964608;
}


// ===== 52decc `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterGraph.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterGraph.cpp()
{
  dword_9F6370 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F636C = 1056964608;
}


// ===== 52deec `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterNode.cpp =====
void `global constructor keyed to'.._.._sources_Modules_PathFinding_Graph_PFGOuterNode.cpp()
{
  dword_9F637C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6378 = 1056964608;
}


// ===== 52df0c GLXPlayerObserver::OnDownloadError(int) =====
void __fastcall GLXPlayerObserver::OnDownloadError(GLXPlayerObserver *this, int a2)
{
  ;
}


// ===== 52df10 CXPlayerManager::CXPlayerManager(void) =====
void __fastcall CXPlayerManager::CXPlayerManager(CXPlayerManager *this)
{
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_96CB60;
  *((_BYTE *)this + 5) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 52df54 CXPlayerManager::CXPlayerManager(void) =====
void __fastcall CXPlayerManager::CXPlayerManager(CXPlayerManager *this)
{
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_96CB60;
  *((_BYTE *)this + 5) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 52df98 CXPlayerManager::~CXPlayerManager() =====
void __fastcall CXPlayerManager::~CXPlayerManager(CXPlayerManager *this)
{
  int v1; // r1
  int v3; // r3
  int v4; // r3

  v1 = *((_DWORD *)this + 4);
  *(_DWORD *)this = &off_96CB60;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 4) = 0;
  }
  v3 = *((_DWORD *)this + 2);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 2));
    *((_DWORD *)this + 2) = 0;
  }
  v4 = *((_DWORD *)this + 3);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 3));
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 52e034 CXPlayerManager::~CXPlayerManager() =====
void __fastcall CXPlayerManager::~CXPlayerManager(CXPlayerManager *this)
{
  int v1; // r1
  int v3; // r3
  int v4; // r3

  v1 = *((_DWORD *)this + 4);
  *(_DWORD *)this = &off_96CB60;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 4) = 0;
  }
  v3 = *((_DWORD *)this + 2);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 2));
    *((_DWORD *)this + 2) = 0;
  }
  v4 = *((_DWORD *)this + 3);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 3));
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 52e0d0 CXPlayerManager::SwitchState(CXPlayerManagerState) =====
int __fastcall CXPlayerManager::SwitchState(int result, int a2)
{
  *(_DWORD *)(result + 20) = a2;
  return result;
}


// ===== 52e0d8 CXPlayerManager::IsReady(void) =====
bool __fastcall CXPlayerManager::IsReady(CXPlayerManager *this)
{
  return *((_DWORD *)this + 5) == 16;
}


// ===== 52e0ec CXPlayerManager::IsLoggedIn(void) =====
bool __fastcall CXPlayerManager::IsLoggedIn(CXPlayerManager *this)
{
  int v1; // r3
  int v2; // r2

  v1 = *((_DWORD *)this + 5);
  if ( !v1 )
    return 0;
  v2 = *((_DWORD *)this + 2);
  return v2 && *(_BYTE *)(v2 + 64) && v1 != 8 && v1 != 9 && v1 != 10 && v1 != 11;
}


// ===== 52e13c `global constructor keyed to'.._.._sources_Online_XPlayerManager.cpp =====
void `global constructor keyed to'.._.._sources_Online_XPlayerManager.cpp()
{
  dword_9F6388 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6384 = 1056964608;
}


// ===== 52e15c CXPlayerManager::OnRequestTimeout(int) =====
int __fastcall CXPlayerManager::OnRequestTimeout(CXPlayerManager *this, int a2)
{
  int v4; // r2
  int v5; // r3

  if ( *((_DWORD *)this + 5) == 11 )
  {
    v4 = *((_DWORD *)this + 7);
    v5 = *((_DWORD *)this + 6);
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 7) = v4 + v5;
  }
  else
  {
    printf("XPlayerManager: ERROR! REQUEST TIMEOUT %d\n", a2);
  }
  *((_DWORD *)this + 31) = 3;
  return CXPlayerManager::SwitchState((int)this, 17);
}


// ===== 52e1b4 CXPlayerManager::OnRequestFailure(int,int) =====
int __fastcall CXPlayerManager::OnRequestFailure(CXPlayerManager *this, int a2, int a3)
{
  int v6; // r3

  printf("XPlayerManager: ERROR! REQUEST TIMEOUT %d\n", a2);
  printf("XPlayerManager: ERROR! REQUEST FAILURE func_id = %d, error_code = %d\n", a2, a3);
  v6 = *((_DWORD *)this + 5);
  if ( v6 == 4 )
  {
    if ( a2 != 15 )
      puts("XPlayerManager: ERROR! LOGIN STATES MISSMATCH");
    switch ( a3 )
    {
      case '.':
      case 'C':
        *((_DWORD *)this + 31) = 1;
        break;
      case '/':
      case '1':
        *((_DWORD *)this + 31) = 2;
        break;
      default:
        goto LABEL_3;
    }
  }
  else if ( v6 == 11 )
  {
    *((_DWORD *)this + 7) += *((_DWORD *)this + 6);
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 31) = 3;
  }
  else
  {
LABEL_3:
    *((_DWORD *)this + 31) = 3;
  }
  return CXPlayerManager::SwitchState((int)this, 17);
}


// ===== 52e2d4 CXPlayerManager::OnNetworkError(void) =====
int __fastcall CXPlayerManager::OnNetworkError(CXPlayerManager *this)
{
  puts("XPlayerManager: ERROR! NETWORK ERROR!");
  *((_DWORD *)this + 31) = 3;
  return CXPlayerManager::SwitchState((int)this, 17);
}


// ===== 52e304 CXPlayerManager::Logout(void) =====
int __fastcall CXPlayerManager::Logout(CXPlayerManager *this)
{
  int result; // r0

  if ( *((_DWORD *)this + 2) )
  {
    puts("XPlayerManager: sending logout");
    result = CXPlayerManager::SwitchState((int)this, 5);
    *((_DWORD *)this + 31) = 0;
    *((_DWORD *)this + 6) = 0;
  }
  else
  {
    *((_DWORD *)this + 31) = 3;
    return CXPlayerManager::SwitchState((int)this, 17);
  }
  return result;
}


// ===== 52e358 CXPlayerManager::Login(char *,char *) =====
int __fastcall CXPlayerManager::Login(CXPlayerManager *this, char *a2, char *a3)
{
  int v3; // r3
  char *v4; // r4
  int v7; // r1

  v3 = *((_DWORD *)this + 2);
  v4 = (char *)this;
  if ( v3 )
  {
    if ( !*(_BYTE *)(v3 + 64) )
    {
      printf("XPlayerManager: sending login data username = %s password = %s\n", a2, a3);
      LC_API_STRCPY_0(v4 + 32, a2);
      LC_API_STRCPY_0(v4 + 78, a3);
      return CXPlayerManager::SwitchState((int)v4, 3);
    }
    CXPlayerManager::Logout(this);
    LC_API_STRCPY_0(v4 + 32, a2);
    LC_API_STRCPY_0(v4 + 78, a3);
    this = (CXPlayerManager *)v4;
    v7 = 2;
  }
  else
  {
    v7 = 17;
    *((_DWORD *)this + 31) = 3;
  }
  return CXPlayerManager::SwitchState((int)this, v7);
}


// ===== 52e3f8 CXPlayerManager::OnRequestSuccess(int,char *,int) =====
int __fastcall CXPlayerManager::OnRequestSuccess(CXPlayerManager *this, int a2, char *a3, int a4)
{
  int result; // r0
  GLXPlayerLogin *v6; // r5
  GLXPlayerLeaderboard *v7; // r5

  result = printf("XPlayerManager: REQUESTSUCCESS data = %s, data_len = %d\n", a3, a4);
  switch ( *((_DWORD *)this + 5) )
  {
    case 0:
      v6 = (GLXPlayerLogin *)CustomAlloc(0x88u);
      GLXPlayerLogin::GLXPlayerLogin(v6);
      *((_DWORD *)this + 2) = v6;
      GLXPlayerComponent::RegisterObserver(v6, this);
      v7 = (GLXPlayerLeaderboard *)CustomAlloc(0x6Cu);
      GLXPlayerLeaderboard::GLXPlayerLeaderboard(v7);
      *((_DWORD *)this + 3) = v7;
      result = GLXPlayerComponent::RegisterObserver(v7, this);
      *(_DWORD *)(*((_DWORD *)this + 3) + 84) = 1;
      *((_DWORD *)this + 5) = 4;
      break;
    case 2:
      result = CXPlayerManager::Login(this, (char *)this + 32, (char *)this + 78);
      break;
    case 4:
      return result;
    case 6:
      result = CXPlayerManager::SwitchState((int)this, 0);
      break;
    case 0xB:
      *((_DWORD *)this + 6) = 0;
      result = CXPlayerManager::SwitchState((int)this, 16);
      break;
    case 0xD:
    case 0xF:
      result = CXPlayerManager::SwitchState((int)this, 16);
      break;
    default:
      result = puts("XPlayerManager: Request Success action not implemented!");
      break;
  }
  return result;
}


// ===== 52e524 CXPlayerManager::Init(void) =====
int __fastcall CXPlayerManager::Init(int this)
{
  int v1; // r5
  int Switch; // r7
  GLXPlayerSereverConfig *v3; // r7
  GLXPlayerLogin *v4; // r8
  GLXPlayerLeaderboard *v5; // r8
  int v6; // [sp+0h] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+4h] [bp-20h] BYREF

  v1 = this;
  if ( !*(_BYTE *)(this + 4) )
  {
    v6 = *(unsigned __int8 *)(this + 4);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v7._M_finish = (char *)&v7;
    v7._M_start_of_storage._M_data = (char *)&v7;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v7, 0x14u);
    v7._M_finish = (char *)memcpy(v7._M_start_of_storage._M_data, "ConnectToBetaServer", 0x13u) + 19;
    *v7._M_finish = 0;
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
    if ( Switch )
    {
      v3 = (GLXPlayerSereverConfig *)CustomAlloc(0x44u);
      GLXPlayerSereverConfig::GLXPlayerSereverConfig(v3, "1.0.1");
    }
    else
    {
      v3 = (GLXPlayerSereverConfig *)CustomAlloc(0x44u);
      GLXPlayerSereverConfig::GLXPlayerSereverConfig(v3, "1.0.0");
    }
    *(_DWORD *)(v1 + 16) = v3;
    GLXPlayerSereverConfig::SendGetServerConfig(v3, &v6);
    GLXPlayerComponent::RegisterObserver(*(GLXPlayerComponent **)(v1 + 16), (GLXPlayerObserver *)v1);
    this = printf("ServerConfig error code: %d\n", v6);
    if ( v6 == 1 )
    {
      v4 = (GLXPlayerLogin *)CustomAlloc(0x88u);
      GLXPlayerLogin::GLXPlayerLogin(v4);
      *(_DWORD *)(v1 + 8) = v4;
      GLXPlayerComponent::RegisterObserver(v4, (GLXPlayerObserver *)v1);
      v5 = (GLXPlayerLeaderboard *)CustomAlloc(0x6Cu);
      GLXPlayerLeaderboard::GLXPlayerLeaderboard(v5);
      *(_DWORD *)(v1 + 12) = v5;
      this = GLXPlayerComponent::RegisterObserver(v5, (GLXPlayerObserver *)v1);
      *(_DWORD *)(*(_DWORD *)(v1 + 12) + 84) = 1;
      *(_DWORD *)(v1 + 20) = 4;
    }
    *(_BYTE *)(v1 + 4) = 1;
  }
  return this;
}


// ===== 52e6cc CXPlayerManager::UploadMyScore(int) =====
int __fastcall CXPlayerManager::UploadMyScore(CXPlayerManager *this, int a2)
{
  int v2; // r2
  _BOOL4 v3; // r6
  int v6; // r6
  int result; // r0
  int v8; // r3

  v2 = *((_DWORD *)this + 6);
  v3 = a2 > 0;
  if ( v2 > a2 )
    v3 = 0;
  if ( v3 )
  {
    printf("XPlayerManager: Uploading my score = %d because its higher or equal than %d\n", a2, v2);
    v6 = *((_DWORD *)this + 2);
    *((_DWORD *)this + 6) = a2;
    if ( v6 )
    {
      result = *(unsigned __int8 *)(v6 + 64);
      if ( *(_BYTE *)(v6 + 64) )
      {
        v8 = *((_DWORD *)this + 7);
        if ( v8 > 0 )
        {
          *((_DWORD *)this + 6) = a2 + v8;
          *((_DWORD *)this + 7) = 0;
        }
        CXPlayerManager::SwitchState(this, 10);
        return 1;
      }
    }
    else
    {
      CXPlayerManager::Init(this);
      return 0;
    }
  }
  else
  {
    printf("XPlayerManager: NOT uploading my score = %d because its NOT higher than %d\n", a2, v2);
    CXPlayerManager::SwitchState(this, 16);
    return 0;
  }
  return result;
}


// ===== 52e784 CXPlayerManager::Update(void) =====
int __fastcall CXPlayerManager::Update(int this)
{
  int v1; // r4
  int v2; // r2
  int v3; // r3
  int UID; // r0
  GLXPlayerComponent *v5; // r5
  char *v6; // r0
  int v7; // r3
  int v8; // r3
  int v9; // r3
  int v10; // r1
  int v11; // r3
  int v12; // r3
  int v13; // r3

  v1 = this;
  if ( *(_BYTE *)(this + 4) )
  {
    v2 = *(_DWORD *)(this + 20);
    switch ( v2 )
    {
      case 0:
        v7 = *(_DWORD *)(this + 16);
        if ( v7 )
          goto LABEL_14;
        goto LABEL_8;
      case 2:
      case 6:
        v7 = *(_DWORD *)(this + 8);
        if ( !v7 )
          goto LABEL_8;
        goto LABEL_14;
      case 3:
        this = *(_DWORD *)(this + 8);
        if ( this )
        {
          GLXPlayerLogin::SendLogin(
            (GLXPlayerLogin *)this,
            (char *)(v1 + 32),
            (char *)(v1 + 78),
            nullptr,
            1,
            nullptr,
            "EN",
            1);
          this = CXPlayerManager::SwitchState(v1, 4);
          v2 = *(_DWORD *)(v1 + 20);
        }
        goto LABEL_8;
      case 4:
        v3 = *(_DWORD *)(this + 8);
        if ( !v3 )
          goto LABEL_8;
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 8))(*(_DWORD *)(this + 8));
        this = *(_DWORD *)(v1 + 8);
        if ( !*(_BYTE *)(this + 64) )
          goto LABEL_15;
        UID = GLXPlayerComponent::GetUID((GLXPlayerComponent *)this);
        printf("XPlayerManager: logged in UID = %d!\n", UID);
        v5 = *(GLXPlayerComponent **)(v1 + 12);
        if ( v5 )
        {
          v6 = (char *)GLXPlayerComponent::GetUID(*(GLXPlayerComponent **)(v1 + 8));
          GLXPlayerComponent::SetUID(v5, v6);
        }
        this = CXPlayerManager::SwitchState(v1, 8);
        v2 = *(_DWORD *)(v1 + 20);
        goto LABEL_8;
      case 5:
        this = *(_DWORD *)(this + 8);
        if ( this )
        {
          GLXPlayerLogin::SendLogout((GLXPlayerLogin *)this);
          this = CXPlayerManager::SwitchState(v1, 6);
          v2 = *(_DWORD *)(v1 + 20);
        }
        goto LABEL_8;
      case 8:
        v12 = *(_DWORD *)(this + 12);
        v10 = 9;
        if ( v12 )
          *(_DWORD *)(v12 + 84) = 1;
        goto LABEL_41;
      case 9:
        v8 = *(_DWORD *)(this + 12);
        if ( v8 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 8))(*(_DWORD *)(this + 12));
        printf("XPlayerManager PROCESSSYNCHRONISE: score: %d\n", *(_DWORD *)(v1 + 24));
        this = CXPlayerManager::UploadMyScore((CXPlayerManager *)v1, *(_DWORD *)(v1 + 24));
        v2 = *(_DWORD *)(v1 + 20);
        if ( v2 == 9 )
          goto LABEL_24;
        goto LABEL_8;
      case 10:
        v11 = *(_DWORD *)(this + 8);
        if ( v11 && *(_DWORD *)(this + 12) && *(_BYTE *)(v11 + 64) )
        {
          printf("XPlayerManager SENDINGHIGHSCORE: score: %d\n", *(_DWORD *)(this + 24));
          GLXPlayerLeaderboard::sendHighScore(*(GLXPlayerLeaderboard **)(v1 + 12), *(_DWORD *)(v1 + 24), -1, 1);
          this = CXPlayerManager::SwitchState(v1, 11);
          v2 = *(_DWORD *)(v1 + 20);
        }
        else
        {
LABEL_24:
          this = CXPlayerManager::SwitchState(v1, 16);
          v2 = *(_DWORD *)(v1 + 20);
        }
        goto LABEL_8;
      case 11:
      case 13:
      case 15:
        v7 = *(_DWORD *)(this + 12);
        if ( !v7 )
          goto LABEL_8;
LABEL_14:
        this = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 8))(v7);
LABEL_15:
        if ( !*(_DWORD *)(v1 + 20) )
          return this;
        goto LABEL_9;
      case 12:
        v9 = *(_DWORD *)(this + 12);
        v10 = 13;
        if ( v9 )
          *(_DWORD *)(v9 + 84) = 1;
        goto LABEL_41;
      case 14:
        v13 = *(_DWORD *)(this + 12);
        v10 = 15;
        if ( v13 )
          *(_DWORD *)(v13 + 84) = 1;
LABEL_41:
        this = CXPlayerManager::SwitchState(this, v10);
        v2 = *(_DWORD *)(v1 + 20);
        goto LABEL_8;
      default:
LABEL_8:
        if ( v2 )
        {
LABEL_9:
          this = *(_DWORD *)(v1 + 8);
          if ( this )
          {
            if ( *(_BYTE *)(this + 64) )
              this = GLXPlayerLogin::KeepAlive((GLXPlayerLogin *)this);
          }
        }
        break;
    }
  }
  return this;
}


// ===== 52ea74 _JNIEnv::CallStaticBooleanMethod(_jclass *,_jmethodID *,...) =====
int _JNIEnv::CallStaticBooleanMethod(_JNIEnv *this, _jclass *a2, _jmethodID *a3, ...)
{
  return ((int (__fastcall *)(_JNIEnv *, _jclass *, _jmethodID *))this->functions->CallStaticBooleanMethodV)(
           this,
           a2,
           a3);
}


// ===== 52eaa8 ADevice::CallJNIFuncBool(_jclass *,_jmethodID *) =====
int __fastcall ADevice::CallJNIFuncBool(_jclass *this, _jclass *a2, _jmethodID *a3)
{
  _JNIEnv *CurrentJNIEnv; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv(this, a2, a3);
  return _JNIEnv::CallStaticBooleanMethod(CurrentJNIEnv, this, (_jmethodID *)a2);
}


// ===== 52eac8 ADevice::isWifiEnable(void) =====
int __fastcall ADevice::isWifiEnable(ADevice *this)
{
  return ADevice::CallJNIFuncBool(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mIsWifiEnable,
           (_jmethodID *)&__GLOBAL_OFFSET_TABLE_);
}


// ===== 52eaf8 _JNIEnv::CallStaticObjectMethod(_jclass *,_jmethodID *,...) =====
int _JNIEnv::CallStaticObjectMethod(_JNIEnv *const this, jclass clazz, int a3, ...)
{
  return ((int (__fastcall *)(_JNIEnv *const, jclass, int))this->functions->CallStaticObjectMethodV)(this, clazz, a3);
}


// ===== 52eb2c ADevice::CallJNIFuncSendInt(_jclass *,_jmethodID *,int) =====
int __fastcall ADevice::CallJNIFuncSendInt(_jclass *this, _jclass *a2, _jmethodID *a3, int a4)
{
  _JNIEnv *CurrentJNIEnv; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv(this, a2, a3);
  return _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, this, (int)a2, a3);
}


// ===== 52eb54 ADevice::setUniqueCode(int) =====
int __fastcall ADevice::setUniqueCode(ADevice *this, int a2)
{
  return ADevice::CallJNIFuncSendInt(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mSetUniqueCode,
           this,
           (int)&__GLOBAL_OFFSET_TABLE_);
}


// ===== 52eb88 ADevice::CallJNIFuncSendChar(_jclass *,_jmethodID *,char *) =====
int __fastcall ADevice::CallJNIFuncSendChar(_jclass *this, _jclass *a2, _jmethodID *a3, char *a4)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v8; // r5

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv(this, a2, a3);
  v8 = (int)CurrentJNIEnv->functions->NewStringUTF(CurrentJNIEnv, (const char *)a3);
  _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, this, (int)a2, v8);
  return ((int (__fastcall *)(_JNIEnv *, int))CurrentJNIEnv->functions->DeleteLocalRef)(CurrentJNIEnv, v8);
}


// ===== 52ebe0 ADevice::CallJNIFuncChar(_jclass *,_jmethodID *,char *,int,char *) =====
int __fastcall ADevice::CallJNIFuncChar(_jclass *this, _jclass *a2, _jmethodID *a3, char *a4, const char *a5, char *a6)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v11; // r7
  int v12; // r5
  int v13; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv(this, a2, a3);
  LC_API_MEMSET_0(a3, 0, (size_t)a4);
  v11 = (int)CurrentJNIEnv->functions->NewStringUTF(CurrentJNIEnv, a5);
  v12 = _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, this, (int)a2, v11);
  v13 = CurrentJNIEnv->functions->GetArrayLength(CurrentJNIEnv, (jarray)v12);
  CurrentJNIEnv->functions->GetByteArrayRegion(CurrentJNIEnv, (jbyteArray)v12, 0, v13, (jbyte *)a3);
  CurrentJNIEnv->functions->DeleteLocalRef(CurrentJNIEnv, (jobject)v12);
  return ((int (__fastcall *)(_JNIEnv *, int))CurrentJNIEnv->functions->DeleteLocalRef)(CurrentJNIEnv, v11);
}


// ===== 52eca4 ADevice::CallJNIFuncChar(_jclass *,_jmethodID *,char *,int) =====
int __fastcall ADevice::CallJNIFuncChar(_jclass *this, _jclass *a2, _jmethodID *a3, char *a4, int a5)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v10; // r5
  int v11; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv(this, a2, a3);
  LC_API_MEMSET_0(a3, 0, (size_t)a4);
  v10 = _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, this, (int)a2);
  v11 = CurrentJNIEnv->functions->GetArrayLength(CurrentJNIEnv, (jarray)v10);
  CurrentJNIEnv->functions->GetByteArrayRegion(CurrentJNIEnv, (jbyteArray)v10, 0, v11, (jbyte *)a3);
  return ((int (__fastcall *)(_JNIEnv *, int))CurrentJNIEnv->functions->DeleteLocalRef)(CurrentJNIEnv, v10);
}


// ===== 52ed38 ADevice::getUserAgent(char *) =====
int __fastcall ADevice::getUserAgent(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mUserAgent,
           this,
           (char *)&elf_hash_bucket[8] + 3,
           a5);
}


// ===== 52ed70 ADevice::getHostName(char *,int) =====
int __fastcall ADevice::getHostName(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar((_jclass *)ADevice::cDevice, (_jclass *)ADevice::mHostName, this, a2, a5);
}


// ===== 52edb0 ADevice::getHostName(char *) =====
int __fastcall ADevice::getHostName(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::getHostName(this, (char *)&elf_hash_bucket[8] + 3, a3, a4, a5);
}


// ===== 52edb8 ADevice::getGameVersion(char *,int) =====
int __fastcall ADevice::getGameVersion(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar((_jclass *)ADevice::cDevice, (_jclass *)ADevice::mGameVersion, this, a2, a5);
}


// ===== 52edf8 ADevice::getGameVersion(char *) =====
int __fastcall ADevice::getGameVersion(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::getGameVersion(this, &byte_7, a3, a4, a5);
}


// ===== 52ee00 ADevice::getLineNumber(char *) =====
int __fastcall ADevice::getLineNumber(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mLineNumber,
           this,
           (char *)&elf_hash_bucket[8] + 3,
           a5);
}


// ===== 52ee38 ADevice::getOperatorName(char *) =====
int __fastcall ADevice::getOperatorName(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mOperatorName,
           this,
           (char *)&elf_hash_bucket[8] + 3,
           a5);
}


// ===== 52ee70 ADevice::getIMEI(char *) =====
int __fastcall ADevice::getIMEI(ADevice *this, char *a2, int a3, int a4, int a5)
{
  return ADevice::CallJNIFuncChar(
           (_jclass *)ADevice::cDevice,
           (_jclass *)ADevice::mIMEI,
           this,
           (char *)&elf_hash_bucket[8] + 3,
           a5);
}


// ===== 52eea8 ADevice::currentTime(void) =====
int __fastcall ADevice::currentTime(ADevice *this)
{
  struct timeval v2; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v2, nullptr);
  return v2.tv_usec / 1000 + 1000 * v2.tv_sec;
}


// ===== 52eee8 ADevice::Init(_JNIEnv *,_jclass *) =====
int __fastcall ADevice::Init(ADevice *this, _JNIEnv *a2, _jclass *a3)
{
  int result; // r0

  ADevice::cDevice = (*(int (__fastcall **)(ADevice *, _JNIEnv *, _jclass *))(*(_DWORD *)this + 84))(this, a2, a3);
  ADevice::mIMEI = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
                     this,
                     ADevice::cDevice,
                     "a",
                     "()[B");
  ADevice::mOperatorName = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
                             this,
                             ADevice::cDevice,
                             "b",
                             "()[B");
  ADevice::mLineNumber = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
                           this,
                           ADevice::cDevice,
                           "c",
                           "()[B");
  ADevice::mGameVersion = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
                            this,
                            ADevice::cDevice,
                            "d",
                            "()[B");
  ADevice::mIsWifiEnable = (*(int (__fastcall **)(ADevice *, int, const char *, const char *))(*(_DWORD *)this + 452))(
                             this,
                             ADevice::cDevice,
                             "IsWifiEnable",
                             "()Z");
  ADevice::mHostName = (*(int (__fastcall **)(ADevice *, int, const char *, const char *))(*(_DWORD *)this + 452))(
                         this,
                         ADevice::cDevice,
                         "getHostName",
                         "()[B");
  ADevice::mSetUniqueCode = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
                              this,
                              ADevice::cDevice,
                              "e",
                              "(I)V");
  result = (*(int (__fastcall **)(ADevice *, int, char *, const char *))(*(_DWORD *)this + 452))(
             this,
             ADevice::cDevice,
             "f",
             "()[B");
  ADevice::mUserAgent = result;
  return result;
}


// ===== 52f0d8 Java_com_gameloft_android_GAND_GloftD2SS_GLUtils_Device_nativeInit =====
// attributes: thunk
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GLUtils_Device_nativeInit(
        ADevice *this,
        _JNIEnv *a2,
        _jclass *a3)
{
  return ADevice::Init(this, a2, a3);
}


// ===== 52f0dc appTrackBall =====
void appTrackBall()
{
  ;
}


// ===== 52f0e0 ALicenseCheck_GetUserAgent(char *) =====
void __fastcall ALicenseCheck_GetUserAgent(char *a1)
{
  ;
}


// ===== 52f0e4 nativepauseAllMusic =====
void nativepauseAllMusic()
{
  ;
}


// ===== 52f0e8 getState =====
int getState()
{
  return 1;
}


// ===== 52f0f0 appKeyPressed =====
int appKeyPressed()
{
  return _DEBUG_OUT("keypresseddddddddddddddddddddddddd %d", lastOpenMenuID);
}


// ===== 52f11c appOnTouch =====
int __fastcall appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  int result; // r0
  _BOOL4 v12; // r1
  int v13; // r0
  int (__fastcall *v14)(int, _WORD *, int); // r3
  int v15; // r0
  int (__fastcall *v16)(int, _WORD *, int); // r3
  int v17; // r0
  int (__fastcall *v18)(int, _WORD *, int); // r3
  _WORD v19[2]; // [sp+4h] [bp-10h] BYREF
  _WORD v20[2]; // [sp+8h] [bp-Ch] BYREF
  _WORD v21[4]; // [sp+Ch] [bp-8h] BYREF

  result = _DEBUG_OUT("Toucxhhhhhhhhhhhhhhhh %d---- %d", a2, a3);
  v12 = (unsigned int)(a2 - 301) <= 0xC6;
  if ( a3 <= 250 )
    v12 = 0;
  if ( v12 && a3 < 400 )
    Back_key_Glive = 0;
  if ( app && !InterLoad )
  {
    switch ( a1 )
    {
      case 1:
        v15 = *(_DWORD *)(app + 32);
        v16 = *(int (__fastcall **)(int, _WORD *, int))(*(_DWORD *)v15 + 32);
        v20[0] = a2;
        v20[1] = a3;
        return v16(v15, v20, a8);
      case 2:
        v17 = *(_DWORD *)(app + 32);
        v18 = *(int (__fastcall **)(int, _WORD *, int))(*(_DWORD *)v17 + 36);
        v19[0] = a2;
        v19[1] = a3;
        return v18(v17, v19, a8);
      case 0:
        v13 = *(_DWORD *)(app + 32);
        v14 = *(int (__fastcall **)(int, _WORD *, int))(*(_DWORD *)v13 + 40);
        v21[0] = a2;
        v21[1] = a3;
        return v14(v13, v21, a8);
    }
  }
  return result;
}


// ===== 52f24c pressNOInConfirmation =====
int pressNOInConfirmation()
{
  int v0; // r4
  int v1; // r0
  int v2; // r1
  int v3; // r2

  _DEBUG_OUT("kh pressNOInConfirmation %d", "");
  if ( Width_Screen == 1280 )
  {
    v0 = (unsigned __int8)isScreenOriented;
    if ( isScreenOriented )
    {
      v0 = 0;
      appOnTouch(1, 790, 390, 0, 0, 0, 0, 0);
      v1 = 0;
      v2 = 790;
      v3 = 390;
    }
    else
    {
      appOnTouch(
        1,
        490,
        Height_Screen - 390,
        (unsigned __int8)isScreenOriented,
        0,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented);
      v1 = v0;
      v2 = Width_Screen - 790;
      v3 = Height_Screen - 390;
    }
  }
  else
  {
    v0 = (unsigned __int8)isScreenOriented;
    if ( isScreenOriented )
    {
      v0 = 0;
      appOnTouch(1, 500, 280, 0, 0, 0, 0, 0);
      v1 = 0;
      v2 = 500;
      v3 = 280;
    }
    else
    {
      appOnTouch(1, Width_Screen - 500, Height_Screen - 280, 0, 0, 0, 0, 0);
      v1 = v0;
      v2 = Width_Screen - 500;
      v3 = Height_Screen - 280;
    }
  }
  return appOnTouch(v1, v2, v3, v1, v0, v0, v0, v0);
}


// ===== 52f3ec pressNOInExitConfirmation =====
int pressNOInExitConfirmation()
{
  int v0; // r10
  int v1; // r6
  int v2; // r5
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v7; // r6
  int v8; // r10
  int v9; // r1
  int v10; // r2

  _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame7777777777777777");
  if ( Height_Screen == 640 )
  {
    v1 = 107;
    v0 = 60;
  }
  else
  {
    if ( Height_Screen == 600 )
    {
      v1 = 207;
      v0 = 10;
    }
    else
    {
      v1 = 0;
    }
    if ( Height_Screen != 600 )
      v0 = v1;
  }
  if ( Width_Screen == 1280 )
  {
    v2 = (unsigned __int8)isScreenOriented;
    if ( !isScreenOriented )
    {
      appOnTouch(
        1,
        771,
        Height_Screen - 376,
        0,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented);
      v3 = v2;
      v4 = Width_Screen - 509;
      v5 = Height_Screen - 376;
      return appOnTouch(v3, v4, v5, v3, v2, v2, v2, v2);
    }
    appOnTouch(1, 509, 328, 0, 0, 0, 0, 0);
    v9 = 509;
    v10 = 328;
  }
  else
  {
    v2 = (unsigned __int8)isScreenOriented;
    if ( !isScreenOriented )
    {
      appOnTouch(1, Width_Screen - 278 - v1, Height_Screen - 280 - v0, 0, 0, 0, 0, 0);
      v3 = v2;
      v4 = Width_Screen - 278 - v1;
      v5 = Height_Screen - 280 - v0;
      return appOnTouch(v3, v4, v5, v3, v2, v2, v2, v2);
    }
    v7 = v1 + 278;
    v8 = v0 + 280;
    appOnTouch(1, v7, v8, 0, 0, 0, 0, 0);
    v9 = v7;
    v10 = v8;
  }
  return appOnTouch(0, v9, v10, 0, 0, 0, 0, 0);
}


// ===== 52f5d4 pressMainMenuInMutiIGM =====
int pressMainMenuInMutiIGM()
{
  int v0; // r5
  int v1; // r2
  int v2; // r1
  int v4; // r5

  _DEBUG_OUT("pressMainMenuInMutiIGMpressMainMenuInMutiIGMpressMainMenuInMutiIGM666666666666661111111111111");
  if ( Height_Screen == 600 )
    v0 = 55;
  else
    v0 = 0;
  if ( isScreenOriented )
  {
    v4 = v0 + 355;
    appOnTouch(1, 400, v4, 0, 0, 0, 0, 0);
    v1 = v4;
    v2 = 400;
  }
  else
  {
    appOnTouch(1, Width_Screen - 400, Height_Screen - 355 - v0, 0, 0, 0, 0, 0);
    v1 = Height_Screen - 355 - v0;
    v2 = Width_Screen - 400;
  }
  return appOnTouch(0, v2, v1, 0, 0, 0, 0, 0);
}


// ===== 52f6e4 pressMainMenuInIGM =====
int pressMainMenuInIGM()
{
  int v0; // r5
  int v1; // r6
  int v2; // r0
  int v3; // r1
  int v4; // r3
  int v5; // r2
  int v7; // r6
  int v8; // r2
  int v9; // r1
  int v10; // r6
  int v11; // r0
  int v12; // r1
  int v13; // r3
  int v14; // r2

  _DEBUG_OUT("pressMainMenuInIGMpressMainMenuInIGMpressMainMenuInIGM66666666666666666666666");
  v0 = (unsigned __int8)Is_In_Multiplayer_Mode;
  if ( Height_Screen == 640 )
    v1 = 85;
  else
    v1 = 0;
  if ( Is_In_Multiplayer_Mode )
    v1 = 55;
  if ( Height_Screen == 768 )
  {
    if ( Is_In_Multiplayer_Mode )
    {
      v0 = (unsigned __int8)isScreenOriented;
      if ( !isScreenOriented )
      {
        appOnTouch(1, Width_Screen - 640, 248, 0, 0, 0, 0, 0);
        v2 = v0;
        v3 = Width_Screen - 640;
        v4 = v0;
        v5 = Height_Screen - 520;
        return appOnTouch(v2, v3, v5, v4, v0, v0, v0, v0);
      }
      appOnTouch(1, 640, 472, 0, 0, 0, 0, 0);
      v9 = 640;
      v8 = 472;
      return appOnTouch(0, v9, v8, 0, 0, 0, 0, 0);
    }
    v10 = (unsigned __int8)isScreenOriented;
    if ( isScreenOriented )
    {
      appOnTouch(1, 640, 434, (unsigned __int8)Is_In_Multiplayer_Mode, (unsigned __int8)Is_In_Multiplayer_Mode, 0, 0, 0);
      v2 = 0;
      v3 = 640;
      v5 = 434;
      v4 = 0;
      return appOnTouch(v2, v3, v5, v4, v0, v0, v0, v0);
    }
    appOnTouch(
      1,
      Width_Screen - 640,
      286,
      (unsigned __int8)isScreenOriented,
      0,
      (unsigned __int8)isScreenOriented,
      (unsigned __int8)isScreenOriented,
      (unsigned __int8)isScreenOriented);
    v11 = v10;
    v12 = Width_Screen - 640;
    v13 = v10;
    v14 = Height_Screen - 482;
  }
  else
  {
    if ( Height_Screen != 720 )
    {
      v0 = (unsigned __int8)isScreenOriented;
      if ( !isScreenOriented )
      {
        appOnTouch(1, Width_Screen - 400, Height_Screen - 355 - v1, 0, 0, 0, 0, 0);
        v2 = v0;
        v3 = Width_Screen - 400;
        v4 = v0;
        v5 = Height_Screen - 355 - v1;
        return appOnTouch(v2, v3, v5, v4, v0, v0, v0, v0);
      }
      v7 = v1 + 355;
      appOnTouch(1, 400, v7, 0, 0, 0, 0, 0);
      v8 = v7;
      v9 = 400;
      return appOnTouch(0, v9, v8, 0, 0, 0, 0, 0);
    }
    _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720");
    v0 = (unsigned __int8)Is_In_Multiplayer_Mode;
    if ( Is_In_Multiplayer_Mode )
    {
      v0 = (unsigned __int8)isScreenOriented;
      if ( isScreenOriented )
      {
        v0 = 0;
        _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 Multiplayer normal");
        appOnTouch(1, Width_Screen / 2, 472, 0, 0, 0, 0, 0);
        v2 = 0;
        v5 = 472;
        v4 = 0;
        v3 = Width_Screen / 2;
      }
      else
      {
        _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 Multiplayer reverted");
        appOnTouch(1, Width_Screen / 2, Height_Screen - 472, v0, v0, v0, v0, v0);
        v2 = v0;
        v5 = Height_Screen - 472;
        v3 = Width_Screen / 2;
        v4 = v0;
      }
      return appOnTouch(v2, v3, v5, v4, v0, v0, v0, v0);
    }
    v10 = (unsigned __int8)isScreenOriented;
    if ( isScreenOriented )
    {
      _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 normal");
      appOnTouch(1, Width_Screen / 2, 434, v0, v0, v0, v0, v0);
      v2 = v0;
      v5 = 434;
      v4 = v0;
      v3 = Width_Screen / 2;
      return appOnTouch(v2, v3, v5, v4, v0, v0, v0, v0);
    }
    _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 reverted");
    appOnTouch(1, Width_Screen / 2, Height_Screen - 434, v10, v10, v10, v10, v10);
    v11 = v10;
    v12 = Width_Screen / 2;
    v14 = Height_Screen - 434;
    v13 = v10;
  }
  return appOnTouch(v11, v12, v14, v13, v10, v10, v10, v10);
}


// ===== 52fb78 pressExitButtonInMainMenu =====
int pressExitButtonInMainMenu()
{
  int v0; // r7
  int v1; // r5
  int v2; // r0
  int v3; // r2
  int v4; // r1
  int v6; // r1
  int v7; // r2
  int v8; // r5
  int v9; // r2
  int v10; // r7

  _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame5555555555555");
  if ( Width_Screen == 1024 )
  {
    v1 = (unsigned __int8)isScreenOriented;
    if ( !isScreenOriented )
    {
      appOnTouch(
        1,
        979,
        Height_Screen - 575,
        (unsigned __int8)isScreenOriented,
        0,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented);
      appOnTouch(v1, Width_Screen - 45, Height_Screen - 575, v1, v1, v1, v1, v1);
      appOnTouch(1, Width_Screen - 370, Height_Screen - 300, v1, v1, v1, v1, v1);
      v2 = v1;
      v4 = Width_Screen - 370;
      v3 = Height_Screen - 300;
      return appOnTouch(v2, v4, v3, v2, v1, v1, v1, v1);
    }
    appOnTouch(1, 45, 575, 0, 0, 0, 0, 0);
    appOnTouch(0, 45, 575, 0, 0, 0, 0, 0);
    appOnTouch(1, 370, 300, 0, 0, 0, 0, 0);
    v6 = 370;
    v7 = 300;
  }
  else if ( Width_Screen == 1280 )
  {
    v1 = (unsigned __int8)isScreenOriented;
    if ( !isScreenOriented )
    {
      appOnTouch(
        1,
        1229,
        Height_Screen - 720,
        (unsigned __int8)isScreenOriented,
        0,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented,
        (unsigned __int8)isScreenOriented);
      v2 = v1;
      v4 = Width_Screen - 51;
      v3 = Height_Screen - 720;
      return appOnTouch(v2, v4, v3, v2, v1, v1, v1, v1);
    }
    appOnTouch(1, 51, 672, 0, 0, 0, 0, 0);
    v6 = 51;
    v7 = 672;
  }
  else
  {
    if ( Height_Screen == 640 )
    {
      v0 = 85;
    }
    else if ( Height_Screen == 600 )
    {
      v0 = 75;
    }
    else
    {
      v0 = 0;
    }
    v1 = (unsigned __int8)isScreenOriented;
    if ( !isScreenOriented )
    {
      appOnTouch(1, Width_Screen - 10, Height_Screen - 470 - v0, 0, 0, 0, 0, 0);
      appOnTouch(v1, Width_Screen - 10, Height_Screen - 470 - v0, v1, v1, v1, v1, v1);
      appOnTouch(1, Width_Screen - 400, Height_Screen - 315 - v0, v1, v1, v1, v1, v1);
      v2 = v1;
      v3 = Height_Screen - 315 - v0;
      v4 = Width_Screen - 400;
      return appOnTouch(v2, v4, v3, v2, v1, v1, v1, v1);
    }
    v8 = v0 + 470;
    v9 = v0 + 470;
    v10 = v0 + 315;
    appOnTouch(1, 10, v9, 0, 0, 0, 0, 0);
    appOnTouch(0, 10, v8, 0, 0, 0, 0, 0);
    appOnTouch(1, 400, v10, 0, 0, 0, 0, 0);
    v7 = v10;
    v6 = 400;
  }
  return appOnTouch(0, v6, v7, 0, 0, 0, 0, 0);
}


// ===== 52ff54 pressOKButtonInGLive =====
int pressOKButtonInGLive()
{
  int v0; // r8
  int v1; // r5
  int v2; // r1
  int v3; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r5
  int v8; // r8

  _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame444444444444444444444444441");
  if ( Height_Screen == 640 )
  {
    v0 = 85;
  }
  else if ( Height_Screen == 600 )
  {
    v0 = 75;
  }
  else
  {
    v0 = 0;
  }
  v1 = (unsigned __int8)isScreenOriented;
  if ( isScreenOriented )
  {
    v1 = 0;
    appOnTouch(1, 5, 5, 0, 0, 0, 0, 0);
    v2 = 5;
    v3 = 0;
    v4 = 5;
    v5 = 0;
  }
  else
  {
    appOnTouch(1, Width_Screen - 5, Height_Screen - 5, 0, 0, 0, 0, 0);
    v3 = v1;
    v2 = Width_Screen - 5;
    v5 = v1;
    v4 = Height_Screen - 5;
  }
  appOnTouch(v3, v2, v4, v5, v1, v1, v1, v1);
  v6 = (unsigned __int8)isScreenOriented;
  if ( isScreenOriented )
  {
    v8 = v0 + 315;
    appOnTouch(1, 400, v8, 0, 0, 0, 0, 0);
    return appOnTouch(0, 400, v8, 0, 0, 0, 0, 0);
  }
  else
  {
    appOnTouch(1, Width_Screen - 400, Height_Screen - 315 - v0, 0, 0, 0, 0, 0);
    return appOnTouch(v6, Width_Screen - 400, Height_Screen - 315 - v0, v6, v6, v6, v6, v6);
  }
}


// ===== 53013c pressContinueInIGM =====
int pressContinueInIGM()
{
  int v0; // r6
  int v1; // r4
  int v2; // r0
  signed int v3; // r1
  int v4; // r3
  int v5; // r2
  int v7; // r6

  _DEBUG_OUT("pressContinueInIGMpressContinueInIGMpressContinueInIGM133333333333331 %d", Height_Screen);
  switch ( Height_Screen )
  {
    case 720:
      v0 = 115;
      break;
    case 640:
      v0 = 85;
      break;
    case 600:
      v0 = 75;
      break;
    default:
      v0 = 0;
      break;
  }
  v1 = (unsigned __int8)isScreenOriented;
  if ( isScreenOriented )
  {
    v1 = 0;
    v7 = v0 + 130;
    appOnTouch(1, Width_Screen / 2, v7, 0, 0, 0, 0, 0);
    v2 = 0;
    v5 = v7;
    v3 = Width_Screen + ((unsigned int)Width_Screen >> 31);
    v4 = 0;
  }
  else
  {
    appOnTouch(1, Width_Screen / 2, Height_Screen - 130 - v0, 0, 0, 0, 0, 0);
    v2 = v1;
    v3 = Width_Screen + ((unsigned int)Width_Screen >> 31);
    v4 = v1;
    v5 = Height_Screen - 130 - v0;
  }
  return appOnTouch(v2, v3 >> 1, v5, v4, v1, v1, v1, v1);
}


// ===== 530280 pressBackButtonInGame =====
int pressBackButtonInGame()
{
  int v0; // r6
  int v1; // r2
  int v2; // r1

  _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame111111111111111111");
  if ( Width_Screen == 1280 )
    v0 = 48;
  else
    v0 = 0;
  if ( isScreenOriented )
  {
    appOnTouch(1, 20, 20, 0, 0, 0, 0, 0);
    v2 = 20;
    v1 = 20;
  }
  else
  {
    appOnTouch(1, Width_Screen - 20, Height_Screen - 20 - v0, 0, 0, 0, 0, 0);
    v1 = Height_Screen - 20 - v0;
    v2 = Width_Screen - 20;
  }
  return appOnTouch(0, v2, v1, 0, 0, 0, 0, 0);
}


// ===== 530380 pressPauseButtonInGame =====
int pressPauseButtonInGame()
{
  int result; // r0
  int v1; // r5
  int v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r1
  int v6; // r2

  _DEBUG_OUT("pressPauseButtonInGame aaa");
  result = ScriptManager::IsCutSceneRunning((ScriptManager *)&ScriptManager::s_inst);
  if ( !result )
  {
    if ( Width_Screen == 1280 )
    {
      v1 = (unsigned __int8)isScreenOriented;
      if ( !isScreenOriented )
      {
        appOnTouch(
          1,
          116,
          Height_Screen - 144,
          (unsigned __int8)isScreenOriented,
          0,
          (unsigned __int8)isScreenOriented,
          (unsigned __int8)isScreenOriented,
          (unsigned __int8)isScreenOriented);
        v2 = v1;
        v3 = Width_Screen - 1164;
        v4 = Height_Screen - 144;
        return appOnTouch(v2, v3, v4, v2, v1, v1, v1, v1);
      }
      appOnTouch(1, 84, 206, 0, 0, 0, 0, 0);
      v5 = 84;
      v6 = 206;
    }
    else if ( Width_Screen == 1024 )
    {
      v1 = (unsigned __int8)isScreenOriented;
      if ( !isScreenOriented )
      {
        appOnTouch(
          1,
          64,
          Height_Screen - 80,
          (unsigned __int8)isScreenOriented,
          0,
          (unsigned __int8)isScreenOriented,
          (unsigned __int8)isScreenOriented,
          (unsigned __int8)isScreenOriented);
        v2 = v1;
        v3 = Width_Screen - 960;
        v4 = Height_Screen - 80;
        return appOnTouch(v2, v3, v4, v2, v1, v1, v1, v1);
      }
      appOnTouch(1, 960, 80, 0, 0, 0, 0, 0);
      v5 = 960;
      v6 = 80;
    }
    else
    {
      v1 = (unsigned __int8)isScreenOriented;
      if ( !isScreenOriented )
      {
        appOnTouch(1, Width_Screen - 70, Height_Screen - 155, 0, 0, 0, 0, 0);
        v2 = v1;
        v3 = Width_Screen - 70;
        v4 = Height_Screen - 155;
        return appOnTouch(v2, v3, v4, v2, v1, v1, v1, v1);
      }
      appOnTouch(1, 70, 155, 0, 0, 0, 0, 0);
      v5 = 70;
      v6 = 155;
    }
    return appOnTouch(0, v5, v6, 0, 0, 0, 0, 0);
  }
  return result;
}


// ===== 5305cc appKeyReleased =====
MenuManager *__fastcall appKeyReleased(int a1)
{
  MenuManager *result; // r0
  int v3; // r1
  int Instance; // r0
  MenuManager *v6; // r0
  int v7; // r0
  int v8; // r3

  _DEBUG_OUT("**********************lastOpenMenuID %d", lastOpenMenuID);
  result = (MenuManager *)_DEBUG_OUT("**********************keyCode %d", a1);
  if ( a1 != 4 )
  {
    if ( a1 != 82 )
      return result;
    if ( lastOpenMenuID != 9 )
    {
      if ( lastOpenMenuID == 10 )
        return (MenuManager *)pressContinueInIGM();
      return result;
    }
    return (MenuManager *)pressPauseButtonInGame();
  }
  if ( InterLoad )
    return result;
  isBackKeyPressed = 1;
  if ( b_IsInCutScreen )
  {
    v3 = lastOpenMenuID;
    if ( lastOpenMenuID == 9 )
    {
      b_IsInCutScreen = InterLoad;
      result = (MenuManager *)_DEBUG_OUT("\n\n Minimize the game in cut screen................\n\n");
      return (MenuManager *)nativeSendAppBackground(result);
    }
  }
  else
  {
    v3 = lastOpenMenuID;
  }
  result = (MenuManager *)_DEBUG_OUT("\n\n lastOpenMenuID = %d   %d\n\n", v3, (unsigned __int8)InExitConfirmation);
  if ( lastOpenMenuID != 1 && lastOpenMenuID != 19 )
  {
    switch ( lastOpenMenuID )
    {
      case 2:
        goto LABEL_39;
      case 13:
        if ( Back_key_Glive )
        {
          Back_key_Glive = 0;
          return (MenuManager *)pressOKButtonInGLive();
        }
        return (MenuManager *)pressBackButtonInGame();
      case 4:
        goto LABEL_39;
      case 6:
        if ( !isInGameMenu )
        {
          lastOpenMenuID = 4;
          return (MenuManager *)pressBackButtonInGame();
        }
        break;
      case 14:
        if ( isInGameMenu )
          v8 = 5;
        else
          v8 = 6;
        lastOpenMenuID = v8;
        return (MenuManager *)pressBackButtonInGame();
      case 3:
        if ( !isInGameMenu )
        {
LABEL_39:
          lastOpenMenuID = 1;
          return (MenuManager *)pressBackButtonInGame();
        }
        break;
      default:
        switch ( lastOpenMenuID )
        {
          case 5:
            lastOpenMenuID = 10;
            return (MenuManager *)pressBackButtonInGame();
          case 7:
            return (MenuManager *)Application::GoToMainMenu(app, 0);
          case 8:
            result = (MenuManager *)_DEBUG_OUT("\n\n Minimize the game from menu_Loading................\n\n");
            break;
          case 11:
            break;
          default:
            switch ( lastOpenMenuID )
            {
              case 9:
                return (MenuManager *)pressPauseButtonInGame();
              case 10:
                return (MenuManager *)pressMainMenuInIGM();
              case 20:
                lastOpenMenuID = 12;
                break;
              case 12:
                lastOpenMenuID = 9;
                break;
              case 15:
                lastOpenMenuID = 4;
                break;
              case 16:
                lastOpenMenuID = 1;
                break;
              case 17:
                lastOpenMenuID = 16;
                break;
              case 18:
                return (MenuManager *)VoxSoundManager::BackToMainMenu((VoxSoundManager *)VoxSoundManager::s_instance);
              case 50:
                return (MenuManager *)pressMainMenuInMutiIGM();
              default:
                isBackKeyPressed = 0;
                return result;
            }
            return (MenuManager *)pressBackButtonInGame();
        }
        return (MenuManager *)nativeSendAppBackground(result);
    }
    lastOpenMenuID = 10;
    return (MenuManager *)pressBackButtonInGame();
  }
  if ( InExitConfirmation )
    return (MenuManager *)pressNOInExitConfirmation();
  if ( lastOpenMenuID == 19 )
  {
    result = (MenuManager *)pressNOInConfirmation();
    lastOpenMenuID = 1;
  }
  else
  {
    Instance = MenuManager::GetInstance(result);
    v6 = (MenuManager *)MenuManager::mySendEvent(Instance, "menu_MainMenu.btn_exit", 4);
    v7 = MenuManager::GetInstance(v6);
    return (MenuManager *)MenuManager::mySendEvent(v7, "menu_MainMenu.btn_exit", 6);
  }
  return result;
}


// ===== 530974 appResume =====
float appResume()
{
  float result; // r0

  if ( isDevicePause )
  {
    videoDone = 1;
    Application::OnInterruptResume((Application *)&Singleton<Application>::s_inst);
    result = Application::Resume(COERCE_FLOAT(&Singleton<Application>::s_inst));
    isDevicePause = 0;
  }
  return result;
}


// ===== 5309d8 appPause =====
int appPause()
{
  isDevicePause = 1;
  Application::Pause((Application *)&Singleton<Application>::s_inst);
  return Application::OnInterruptPause((Application *)&Singleton<Application>::s_inst);
}


// ===== 530a1c appDestroy =====
int appDestroy()
{
  IsExit = 1;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)device);
  return Application::Quit((Application *)app);
}


// ===== 530a6c SetFinalOrientation =====
int __fastcall SetFinalOrientation(int a1)
{
  int result; // r0

  result = SavegameManager::getAutoReorientation(*(SavegameManager **)(app + 76));
  if ( result == 1 )
  {
    if ( a1 == 1 )
    {
      if ( lastOpenMenuID != 9 )
      {
        *(_DWORD *)(*(_DWORD *)(app + 32) + 424) = 0;
        result = glitch::video::IVideoDriver::setOrientation(*(_DWORD *)(dword_99F73C + 16), 0);
        isScreenOriented = 1;
      }
    }
    else if ( a1 == -1 && lastOpenMenuID != 9 )
    {
      *(_DWORD *)(*(_DWORD *)(app + 32) + 424) = 2;
      result = glitch::video::IVideoDriver::setOrientation(*(_DWORD *)(dword_99F73C + 16), 2);
      isScreenOriented = 0;
    }
  }
  return result;
}


// ===== 530b5c SetDisplayString =====
void __fastcall SetDisplayString(char *a1)
{
  VoxSoundManager::ShowPlayingMusicTitle((VoxSoundManager *)VoxSoundManager::s_instance, a1);
}


// ===== 530b80 GetGameMusicVolume =====
int GetGameMusicVolume()
{
  return Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeMusic");
}


// ===== 530ba8 appInit =====
int appInit()
{
  void *SdFolderPath; // r0
  int PhoneModel; // r0

  OPERATOR_PACKAGE_INGAME = 0;
  SdFolderPath = (void *)nativeGetSdFolderPath();
  isDevicePause = 0;
  RES_PATH = SdFolderPath;
  videosteps = 0;
  Musicplayerpause = 0;
  videoDone = 0;
  _DEBUG_OUT("app Init is 1111111111111111111111111 %d ", Width_Screen);
  switch ( Width_Screen )
  {
    case 854:
      g_windowDimensions[0] = g_windowDimensions2;
      g_windowDimensions[1] = dword_9F63C4;
      break;
    case 960:
      g_windowDimensions[0] = g_windowDimensions3;
      g_windowDimensions[1] = dword_9F63CC;
      break;
    case 800:
      g_windowDimensions[0] = g_windowDimensions1;
      g_windowDimensions[1] = dword_9F63BC;
      break;
    default:
      g_windowDimensions[0] = g_windowDimensions4;
      g_windowDimensions[1] = dword_9F63D4;
      break;
  }
  device = glitch::createDevice(1, g_windowDimensions, 16, 0, 0, 0, 0);
  app = (int)&Singleton<Application>::s_inst;
  Application::InitWin32((Application *)&Singleton<Application>::s_inst, (glitch::IDevice *)device);
  lastFPS = -1;
  lastdrawCalls = -1;
  driver = *(_DWORD *)(device + 16);
  switch ( nativeGet_PhoneManufacturer() )
  {
    case 0:
      HTC_DEVICES = 1;
      break;
    case 1:
      SAMSUNG_DEVICES = 1;
      break;
    case 2:
      SHARP_DEVICES = 1;
      break;
    case 3:
      MOTOROLA_DEVICES = 1;
      break;
    case 4:
      SONY_DEVICES = 1;
      break;
    case 5:
      LG_DEVICES = 1;
      break;
    default:
      break;
  }
  PhoneModel = nativeGet_PhoneModel();
  switch ( PhoneModel )
  {
    case 2:
      JAVA_SOUNDS = 0;
      break;
    case 99:
      NO_IGP = 1;
      break;
    case 1:
      _DEBUG_OUT("EVOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
      JAVA_SOUNDS = 0;
      break;
  }
  return _DEBUG_OUT("app Init is OK");
}


// ===== 530eac `global constructor keyed to'.._.._project_Android_Installer_Libs_jni_jni_app.cpp =====
int `global constructor keyed to'.._.._project_Android_Installer_Libs_jni_jni_app.cpp()
{
  int result; // r0

  result = 800;
  dword_9F63D4 = 720;
  g_windowDimensions2 = 854;
  g_windowDimensions3 = 960;
  dword_9F63CC = 640;
  dword_9F63E0 = 1056964608;
  g_windowDimensions1 = 800;
  dword_9F63C4 = 480;
  g_windowDimensions4 = 1280;
  glitch::ps::vHalf = 1056964608;
  dword_9F63DC = 1056964608;
  g_windowDimensions[0] = 800;
  g_windowDimensions[1] = 480;
  dword_9F63BC = 480;
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


// ===== 530fc8 appUpdate =====
int appUpdate()
{
  int v0; // r6
  int Switch; // r6
  int FPS; // r7
  int v4; // r0
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-1Ch] BYREF

  v0 = (unsigned __int8)IsExit;
  if ( !IsExit )
  {
    if ( glitch::IDevice::run((glitch::IDevice *)device) )
    {
      mTimeCallbackFinished = v0;
      Application::Update(app);
      mTimeCallbackFinished = 1;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v5._M_finish = (char *)&v5;
      v5._M_start_of_storage._M_data = (char *)&v5;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v5, 0x10u);
      v5._M_finish = (char *)memcpy(v5._M_start_of_storage._M_data, "isDisplayingFPS", 0xFu) + 15;
      *v5._M_finish = v0;
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
      if ( Switch )
      {
        FPS = glitch::video::IVideoDriver::getFPS((glitch::video::IVideoDriver *)driver);
        v4 = glitch::video::IVideoDriver::getDrawCallCount((glitch::video::IVideoDriver *)driver);
        if ( FPS != lastFPS || v4 != lastdrawCalls )
        {
          lastFPS = FPS;
          lastdrawCalls = v4;
        }
      }
    }
  }
  return 1;
}


// ===== 531150 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer =====
void Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer()
{
  ;
}


// ===== 531154 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig =====
void Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig()
{
  ;
}


// ===== 531158 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame =====
void Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame()
{
  ;
}


// ===== 53115c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(int result)
{
  mEnv = result;
  return result;
}


// ===== 53117c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize =====
void __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(int a1, int a2, int a3, int a4)
{
  s_windowWidth = a3;
  s_windowHeight = a4;
}


// ===== 531190 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged =====
void __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged(
        int a1,
        int a2,
        int a3,
        int a4)
{
  Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(a3, a4, a3, a4);
}


// ===== 53119c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone =====
// attributes: thunk
int Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone()
{
  return appDestroy();
}


// ===== 5311a0 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender =====
int Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender()
{
  int result; // r0

  if ( !m_bOpenIGM )
    return appUpdate();
  return result;
}


// ===== 5311c8 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit(int a1, int a2, int a3)
{
  int result; // r0

  if ( g_appAlive )
  {
    m_bOGLLostContext = a3;
  }
  else
  {
    result = appInit();
    g_appAlive = 1;
  }
  return result;
}


// ===== 531214 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds =====
int Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds()
{
  return 640;
}


// ===== 53121c Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance =====
int Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance()
{
  return 0;
}


// ===== 531224 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic =====
void Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic()
{
  ;
}


// ===== 531228 GetNativeSoundRaw =====
void GetNativeSoundRaw()
{
  ;
}


// ===== 53122c GetNativeResourceSoundRawLength =====
void GetNativeResourceSoundRawLength()
{
  ;
}


// ===== 531230 nativeLoadSound =====
int __fastcall nativeLoadSound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           loadSoundID,
           a1,
           a2);
}


// ===== 53128c nativeLoadSoundBig =====
int __fastcall nativeLoadSoundBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           loadSoundBigID,
           a1);
}


// ===== 5312d8 nativePlaySound =====
int __fastcall nativePlaySound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           playSoundID,
           a1,
           a2);
}


// ===== 531348 nativePlaySoundBig =====
int __fastcall nativePlaySoundBig(int a1, float a2, int a3, int a4)
{
  return (*(int (__fastcall **)(int, int, int, int, _DWORD, _DWORD, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           playSoundBigID,
           a1,
           COERCE_UNSIGNED_INT64(a2),
           HIDWORD(COERCE_UNSIGNED_INT64(a2)),
           a3,
           a4);
}


// ===== 5313c4 nativePauseSound =====
int __fastcall nativePauseSound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           pauseSoundID,
           a1,
           a2);
}


// ===== 531420 nativePauseSoundBig =====
int __fastcall nativePauseSoundBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           pauseSoundBigID,
           a1);
}


// ===== 53146c nativeResumeSound =====
int __fastcall nativeResumeSound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           resumeSoundID,
           a1,
           a2);
}


// ===== 5314c8 nativeResumeSoundBig =====
int __fastcall nativeResumeSoundBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           resumeSoundBigID,
           a1);
}


// ===== 531514 nativeStopSound =====
int __fastcall nativeStopSound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           stopSoundID,
           a1,
           a2);
}


// ===== 531570 nativeStopSoundBig =====
int __fastcall nativeStopSoundBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           stopSoundBigID,
           a1);
}


// ===== 5315bc nativeUnloadSound =====
int __fastcall nativeUnloadSound(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           unloadSoundID,
           a1,
           a2);
}


// ===== 531618 nativeUnloadSoundBig =====
int __fastcall nativeUnloadSoundBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           unloadSoundBigID,
           a1);
}


// ===== 531664 nativeIsSoundLoaded =====
int __fastcall nativeIsSoundLoaded(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassGLMediaPlayer,
           isSoundLoadedID,
           a1,
           a2);
}


// ===== 5316c0 nativeIsSoundLoadedBig =====
int __fastcall nativeIsSoundLoadedBig(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassGLMediaPlayer,
           isSoundLoadedBigID,
           a1);
}


// ===== 53170c nativeSetVolume =====
int __fastcall nativeSetVolume(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           setVolID,
           a1,
           a2);
}


// ===== 53177c nativeSetVolumeBig =====
int __fastcall nativeSetVolumeBig(int a1, float a2, int a3)
{
  return (*(int (__fastcall **)(int, int, int, int, _DWORD, _DWORD, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           setVolumeBigID,
           a1,
           COERCE_UNSIGNED_INT64(a2),
           HIDWORD(COERCE_UNSIGNED_INT64(a2)),
           a3);
}


// ===== 5317f0 nativeResetSound =====
int __fastcall nativeResetSound(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           resetSoundID,
           a1);
}


// ===== 53183c nativeSetPitch =====
int __fastcall nativeSetPitch(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           setPitchID,
           a1,
           a2);
}


// ===== 5318ac nativeStopAllSounds =====
int nativeStopAllSounds()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassGLMediaPlayer, stopAllID);
}


// ===== 5318f4 nativeStopAllSoundPool =====
int __fastcall nativeStopAllSoundPool(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           stopAllPoolID,
           a1);
}


// ===== 531940 nativeStopAllBigSound =====
int __fastcall nativeStopAllBigSound(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassGLMediaPlayer,
           stopAllBigID,
           a1);
}


// ===== 53198c nativeDestroySoundPool =====
int nativeDestroySoundPool()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassGLMediaPlayer, destroySoundPoolID);
}


// ===== 5319d4 nativeInitSoundPoolArray =====
int nativeInitSoundPoolArray()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassGLMediaPlayer, initSoundPoolArrayID);
}


// ===== 531a1c nativeGetWidth =====
int nativeGetWidth()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassGLMediaPlayer, getWidth);
}


// ===== 531a64 nativeIsMediaPlaying =====
int __fastcall nativeIsMediaPlaying(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassGLMediaPlayer,
           isMediaPlaying,
           a1);
}


// ===== 531ab0 nativeDetectPhoneLang =====
int nativeDetectPhoneLang()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassGLMediaPlayer, detectPhoneLangID);
}


// ===== 531af8 nativeGetSdFolderPath =====
void nativeGetSdFolderPath()
{
  int v0; // r5
  const char *v1; // r7
  char *v2; // r6

  if ( getSDFolderID )
  {
    v0 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 456))(mEnv, mClassGLMediaPlayer);
    v1 = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)mEnv + 676))(mEnv, v0, 0);
    if ( v1 )
    {
      v2 = (char *)LC_API_MALLOC_0(0x400u);
      LC_API_STRCPY_0(v2, v1);
      (*(void (__fastcall **)(int, int, const char *))(*(_DWORD *)mEnv + 680))(mEnv, v0, v1);
    }
  }
}


// ===== 531bac nativeLoadMovie =====
int __fastcall nativeLoadMovie(int a1, int a2)
{
  int v4; // r6
  int v5; // r7

  appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________11111");
  v4 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 668))(mEnv, a1);
  appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________222222");
  v5 = (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)mEnv + 516))(
         mEnv,
         mClassGLMediaPlayer,
         loadMovie,
         v4,
         a2);
  appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________333333");
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v4);
  appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________444444");
  return v5;
}


// ===== 531ca4 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit(int a1, int a2)
{
  int result; // r0

  appDebugLog("GLMediaPlayer", "Player Init is OK");
  mClassGLMediaPlayer = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 84))(mEnv, a2);
  isSoundLoadedID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                      mEnv,
                      mClassGLMediaPlayer,
                      "isSoundLoaded",
                      "(II)I");
  isSoundLoadedBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassGLMediaPlayer,
                         "isSoundLoadedBig",
                         "(I)I");
  unloadSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                    mEnv,
                    mClassGLMediaPlayer,
                    "unloadSound",
                    "(II)V");
  unloadSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                       mEnv,
                       mClassGLMediaPlayer,
                       "unloadSoundBig",
                       "(I)V");
  loadSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                  mEnv,
                  mClassGLMediaPlayer,
                  "loadSound",
                  "(II)V");
  loadSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassGLMediaPlayer,
                     "loadSoundBig",
                     "(I)V");
  playSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                  mEnv,
                  mClassGLMediaPlayer,
                  "playSound",
                  "(IIF)V");
  playSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassGLMediaPlayer,
                     "playSoundBig",
                     "(IFII)V");
  pauseSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                   mEnv,
                   mClassGLMediaPlayer,
                   "pauseSound",
                   "(II)V");
  pauseSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                      mEnv,
                      mClassGLMediaPlayer,
                      "pauseSoundBig",
                      "(I)V");
  resumeSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                    mEnv,
                    mClassGLMediaPlayer,
                    "resumeSound",
                    "(II)V");
  resumeSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                       mEnv,
                       mClassGLMediaPlayer,
                       "resumeSoundBig",
                       "(I)V");
  stopSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                  mEnv,
                  mClassGLMediaPlayer,
                  "stopSound",
                  "(II)V");
  stopSoundBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassGLMediaPlayer,
                     "stopSoundBig",
                     "(I)V");
  setVolID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
               mEnv,
               mClassGLMediaPlayer,
               "setVolume",
               "(IIF)V");
  setVolumeBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassGLMediaPlayer,
                     "setVolumeBig",
                     "(IFI)V");
  resetSoundID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                   mEnv,
                   mClassGLMediaPlayer,
                   "resetSound",
                   "(I)V");
  setPitchID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                 mEnv,
                 mClassGLMediaPlayer,
                 "setPitch",
                 "(IIF)V");
  stopAllID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                mEnv,
                mClassGLMediaPlayer,
                "stopAllSounds",
                "()V");
  stopAllPoolID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                    mEnv,
                    mClassGLMediaPlayer,
                    "stopAllPool",
                    "(I)V");
  stopAllBigID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                   mEnv,
                   mClassGLMediaPlayer,
                   "stopAllBig",
                   "(I)V");
  destroySoundPoolID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassGLMediaPlayer,
                         "destroySoundPool",
                         "()V");
  initSoundPoolArrayID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                           mEnv,
                           mClassGLMediaPlayer,
                           "initSoundPoolArray",
                           "()V");
  loadMovie = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                mEnv,
                mClassGLMediaPlayer,
                "loadMovie",
                "(Ljava/lang/String;I)I");
  getWidth = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
               mEnv,
               mClassGLMediaPlayer,
               "getWidth",
               "()I");
  isMediaPlaying = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassGLMediaPlayer,
                     "isMediaPlaying",
                     "(I)I");
  detectPhoneLangID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                        mEnv,
                        mClassGLMediaPlayer,
                        "detectPhoneLang",
                        "()I");
  result = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
             mEnv,
             mClassGLMediaPlayer,
             "getSDFolder",
             "()Ljava/lang/String;");
  getSDFolderID = result;
  return result;
}


// ===== 53224c JNI_OnLoad =====
jint JNI_OnLoad(JavaVM *vm, void *reserved)
{
  VoxSetJavaVMC(vm, reserved);
  NVThreadInit(vm);
  return 65540;
}


// ===== 53226c GetNativeResourceFull =====
int __fastcall GetNativeResourceFull(int a1, int a2)
{
  int v3; // r6
  int v4; // r5
  int v5; // r0

  v3 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 668))(mEnv, a1);
  v4 = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 456))(mEnv, mClassGLResLoader, getResFullID, v3);
  v5 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, v4);
  (*(void (__fastcall **)(int, int, _DWORD, int, int))(*(_DWORD *)mEnv + 800))(mEnv, v4, 0, v5, a2);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v3);
}


// ===== 532350 GetNativeResourceLength =====
int __fastcall GetNativeResourceLength(int a1)
{
  int v1; // r5
  int v2; // r6

  v1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 668))(mEnv, a1);
  v2 = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassGLResLoader, getResLengthID, v1);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v1);
  return v2;
}


// ===== 5323d8 GetNativeResourceBytes =====
void *__fastcall GetNativeResourceBytes(int a1, int a2, size_t a3)
{
  int v5; // r6
  int v6; // r7
  void *v7; // r8

  v5 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 668))(mEnv, a1);
  v6 = (*(int (__fastcall **)(int, int, int, int, int, size_t))(*(_DWORD *)mEnv + 456))(
         mEnv,
         mClassGLResLoader,
         getResBytesID,
         v5,
         a2,
         a3);
  v7 = LC_API_MALLOC_0(a3);
  (*(void (__fastcall **)(int, int, _DWORD, size_t, void *))(*(_DWORD *)mEnv + 800))(mEnv, v6, 0, a3, v7);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v6);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v5);
  return v7;
}


// ===== 5324c0 Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit(int a1, int a2)
{
  int result; // r0

  appDebugLog("GameLoft", "Loader Init is OK");
  mClassGLResLoader = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 84))(mEnv, a2);
  getResFullID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                   mEnv,
                   mClassGLResLoader,
                   "getResourceFull",
                   "(Ljava/lang/String;)[B");
  getResBytesID = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                    mEnv,
                    mClassGLResLoader,
                    "getResourceBytes",
                    "(Ljava/lang/String;II)[B");
  result = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
             mEnv,
             mClassGLResLoader,
             "getResourceLength",
             "(Ljava/lang/String;)I");
  getResLengthID = result;
  return result;
}


// ===== 5325c4 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit =====
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit()
{
  int result; // r0

  mClassDungeonHunter2 = (*(int (__fastcall **)(int))(*(_DWORD *)mEnv + 84))(mEnv);
  mMethodSendAppToBackground = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                 mEnv,
                                 mClassDungeonHunter2,
                                 "sendAppToBackground",
                                 "()V");
  mMethodOpenGLive = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                       mEnv,
                       mClassDungeonHunter2,
                       "OpenGLive",
                       "(I)V");
  mMethodOpenIGP = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                     mEnv,
                     mClassDungeonHunter2,
                     "OpenIGP",
                     "(I)V");
  mMethodNotifyTrophy = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                          mEnv,
                          mClassDungeonHunter2,
                          "NotifyTrophy",
                          "(I)V");
  mMethodGet_PhoneLanguage = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                               mEnv,
                               mClassDungeonHunter2,
                               "Get_PhoneLanguage",
                               "()I");
  mMethodGet_PhoneManufacturer = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                   mEnv,
                                   mClassDungeonHunter2,
                                   "Get_PhoneManufacturer",
                                   "()I");
  mMethodGet_PhoneModel = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                            mEnv,
                            mClassDungeonHunter2,
                            "Get_PhoneModel",
                            "()I");
  mMethodExit = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                  mEnv,
                  mClassDungeonHunter2,
                  "Exit",
                  "()V");
  mMethodIsWifiAlive = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassDungeonHunter2,
                         "isWifiAlive",
                         "()I");
  mMethodIsSupportMM = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassDungeonHunter2,
                         "isSupportMM",
                         "()I");
  mMethodOpenBrowser = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassDungeonHunter2,
                         "openBrowser",
                         "(Ljava/lang/String;)V");
  mMethodUnlockDemo = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                        mEnv,
                        mClassDungeonHunter2,
                        "unlockDemo",
                        "()I");
  mMethodLockDemo = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                      mEnv,
                      mClassDungeonHunter2,
                      "lockDemo",
                      "()V");
  mMethodDisableLaunchGame = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                               mEnv,
                               mClassDungeonHunter2,
                               "DisableLaunchGame",
                               "()I");
  mMethodIncreaseLaunchTimes = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                 mEnv,
                                 mClassDungeonHunter2,
                                 "IncreaseLaunchTimes",
                                 "()V");
  mMethodVZIsInProgress = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                            mEnv,
                            mClassDungeonHunter2,
                            "VZIsInProgress",
                            "()I");
  mMethodVZIsErrorOcurred = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                              mEnv,
                              mClassDungeonHunter2,
                              "VZIsErrorOcurred",
                              "()I");
  mMethodVZRequestLogin = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                            mEnv,
                            mClassDungeonHunter2,
                            "VZRequestLogin",
                            "()V");
  mMethodVZRequestPurchaseGame = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                   mEnv,
                                   mClassDungeonHunter2,
                                   "VZRequestPurchaseGame",
                                   "()V");
  mMethodVZGetGamePrice = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                            mEnv,
                            mClassDungeonHunter2,
                            "VZGetGamePrice",
                            "()[B");
  mMethodVZGetGameName = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                           mEnv,
                           mClassDungeonHunter2,
                           "VZGetGameName",
                           "()[B");
  mMethodVZGetLastServerMsg = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                mEnv,
                                mClassDungeonHunter2,
                                "VZGetLastServerMsg",
                                "()[B");
  mMethodVZInitMobileNetwork = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                 mEnv,
                                 mClassDungeonHunter2,
                                 "VZInitMobileNetwork",
                                 "()V");
  mMethodVZIsMobileNetworkReady = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                                    mEnv,
                                    mClassDungeonHunter2,
                                    "VZIsMobileNetworkReady",
                                    "()I");
  result = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
             mEnv,
             mClassDungeonHunter2,
             "VZRestoreNetworkState",
             "()V");
  mMethodVZRestoreNetworkState = result;
  return result;
}


// ===== 532a8c nativeSendAppBackground =====
int nativeSendAppBackground()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodSendAppToBackground);
}


// ===== 532ad4 nativeOpenIGP =====
int __fastcall nativeOpenIGP(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodOpenIGP,
           a1);
}


// ===== 532b20 nativeOpenGLive =====
int __fastcall nativeOpenGLive(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodOpenGLive,
           a1);
}


// ===== 532b6c NotifyTrophy =====
int __fastcall NotifyTrophy(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodNotifyTrophy,
           a1);
}


// ===== 532bb8 nativeExit =====
int nativeExit()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassDungeonHunter2, mMethodExit);
}


// ===== 532c00 nativeIsWifiAlive =====
int nativeIsWifiAlive()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassDungeonHunter2, mMethodIsWifiAlive);
}


// ===== 532c48 nativeOpenBrowser =====
int __fastcall nativeOpenBrowser(int a1)
{
  int v1; // r5

  v1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 668))(mEnv, a1);
  (*(void (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
    mEnv,
    mClassDungeonHunter2,
    mMethodOpenBrowser,
    v1);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v1);
}


// ===== 532cc8 nativeGet_PhoneLanguage =====
int nativeGet_PhoneLanguage()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodGet_PhoneLanguage);
}


// ===== 532d10 nativeGet_PhoneManufacturer =====
int nativeGet_PhoneManufacturer()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodGet_PhoneManufacturer);
}


// ===== 532d58 nativeGet_PhoneModel =====
int nativeGet_PhoneModel()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodGet_PhoneModel);
}


// ===== 532da0 nativeUnlockDemo =====
int nativeUnlockDemo()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassDungeonHunter2, mMethodUnlockDemo);
}


// ===== 532de8 nativeLockDemo =====
int nativeLockDemo()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassDungeonHunter2, mMethodLockDemo);
}


// ===== 532e30 nativeDisableLaunchGame =====
int nativeDisableLaunchGame()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodDisableLaunchGame);
}


// ===== 532e78 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone =====
int *__fastcall Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone(int a1, int a2, int a3, int a4)
{
  Width_Screen = a3;
  Height_Screen = a4;
  return &Height_Screen;
}


// ===== 532ea8 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeCanInterrupt =====
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeCanInterrupt()
{
  return mTimeCallbackFinished;
}


// ===== 532ec8 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeAccelerometer =====
int *__fastcall Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeAccelerometer(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  mAccelerometerY = a4;
  mAccelerometerX = a3;
  mAccelerometerZ = a5;
  return &mAccelerometerZ;
}


// ===== 532f14 GetAccelerometerParams =====
int __fastcall GetAccelerometerParams(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  int result; // r0

  *a1 = mAccelerometerX;
  result = mAccelerometerY;
  *a2 = mAccelerometerY;
  *a3 = mAccelerometerZ;
  return result;
}


// ===== 532f68 nativeIncreaseLaunchTimes =====
int nativeIncreaseLaunchTimes()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodIncreaseLaunchTimes);
}


// ===== 532fb0 VZPurchase_requestLogin =====
int VZPurchase_requestLogin()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZRequestLogin);
}


// ===== 532ff8 VZPurchase_requestPurchaseGame =====
int VZPurchase_requestPurchaseGame()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZRequestPurchaseGame);
}


// ===== 533040 VZPurchase_InitMobileNetwork =====
int VZPurchase_InitMobileNetwork()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZInitMobileNetwork);
}


// ===== 533088 VZPurchase_RestoreNetworkState =====
int VZPurchase_RestoreNetworkState()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZRestoreNetworkState);
}


// ===== 5330d0 VZPurchase_IsMobileNetworkReady =====
int VZPurchase_IsMobileNetworkReady()
{
  return (*(char (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZIsMobileNetworkReady);
}


// ===== 53311c VZPurchase_isErrorOcurred =====
int VZPurchase_isErrorOcurred()
{
  return (*(char (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZIsErrorOcurred);
}


// ===== 533168 VZPurchase_isInProgress =====
int VZPurchase_isInProgress()
{
  return (*(char (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(
           mEnv,
           mClassDungeonHunter2,
           mMethodVZIsInProgress);
}


// ===== 5331b4 VZPurchase_getLastServerMsg =====
_BYTE *VZPurchase_getLastServerMsg()
{
  int v0; // r5
  int v1; // r6
  _BYTE *v2; // r7
  int v3; // r3

  v0 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 456))(
         mEnv,
         mClassDungeonHunter2,
         mMethodVZGetLastServerMsg);
  v1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, v0);
  v2 = LC_API_MALLOC_0(v1 + 1);
  (*(void (__fastcall **)(int, int, _DWORD, int, _BYTE *))(*(_DWORD *)mEnv + 800))(mEnv, v0, 0, v1, v2);
  v3 = mEnv;
  v2[v1] = 0;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 92))(v3, v0);
  return v2;
}


// ===== 533278 VZPurchase_getGameName =====
_BYTE *VZPurchase_getGameName()
{
  int v0; // r5
  int v1; // r6
  _BYTE *v2; // r7
  int v3; // r3

  v0 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 456))(mEnv, mClassDungeonHunter2, mMethodVZGetGameName);
  v1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, v0);
  v2 = LC_API_MALLOC_0(v1 + 1);
  (*(void (__fastcall **)(int, int, _DWORD, int, _BYTE *))(*(_DWORD *)mEnv + 800))(mEnv, v0, 0, v1, v2);
  v3 = mEnv;
  v2[v1] = 0;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 92))(v3, v0);
  return v2;
}


// ===== 53333c VZPurchase_getGamePrice =====
_BYTE *VZPurchase_getGamePrice()
{
  int v0; // r5
  int v1; // r6
  _BYTE *v2; // r7
  int v3; // r3

  v0 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 456))(mEnv, mClassDungeonHunter2, mMethodVZGetGamePrice);
  v1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, v0);
  v2 = LC_API_MALLOC_0(v1 + 1);
  (*(void (__fastcall **)(int, int, _DWORD, int, _BYTE *))(*(_DWORD *)mEnv + 800))(mEnv, v0, 0, v1, v2);
  v3 = mEnv;
  v2[v1] = 0;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 92))(v3, v0);
  return v2;
}


// ===== 533400 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeOpenIGM =====
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeOpenIGM()
{
  m_bOpenIGM = 1;
  return appPause();
}


// ===== 533424 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause =====
// attributes: thunk
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause()
{
  return appPause();
}


// ===== 533428 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp =====
MenuManager *__fastcall Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp(int a1, int a2, int a3)
{
  return appKeyReleased(a3);
}


// ===== 533430 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeonTrackballEvent =====
void Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeonTrackballEvent()
{
  appTrackBall();
}


// ===== 533438 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown =====
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown()
{
  return appKeyPressed();
}


// ===== 533440 Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  int result; // r0
  struct timeval tv; // [sp+10h] [bp-8h] BYREF

  if ( Touch_Hack_int != 1 )
  {
    gettimeofday(&tv, nullptr);
    return appOnTouch(a3, a4, a5, tv.tv_usec / 1000 + 1000 * tv.tv_sec, 1, a9, a10, a7);
  }
  return result;
}


// ===== 5334dc Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume =====
float Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume()
{
  m_bOpenIGM = 0;
  return appResume();
}


// ===== 533500 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetOrientation =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetOrientation(int a1, int a2, int a3)
{
  int result; // r0

  if ( Enable_Orientation )
  {
    if ( a3 != Orientation )
    {
      result = SetFinalOrientation(a3);
      Orientation = a3;
    }
  }
  return result;
}


// ===== 533554 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetGameMusicVolume =====
// attributes: thunk
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetGameMusicVolume()
{
  return GetGameMusicVolume();
}


// ===== 533558 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativegetState =====
int Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativegetState()
{
  return getState();
}


// ===== 533560 appDebugLog =====
int __fastcall appDebugLog(char *tag, char *text)
{
  return _android_log_write(4, tag, text);
}


// ===== 533570 nativeIsSupportMM =====
int nativeIsSupportMM()
{
  appDebugLog(
    "Orientation not Enable for this proffile",
    "00000000000000000000000000000000000000000000000000000000000000000000");
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassDungeonHunter2, mMethodIsSupportMM);
}


// ===== 5335d4 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetInfo =====
char *__fastcall Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetInfo(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  const char *v8; // r0
  const char *v9; // r0
  const char *v10; // r0
  const char *v11; // r0

  v8 = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 676))(a1, a3, 0);
  strdup(v8);
  v9 = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 676))(a1, a4, 0);
  strdup(v9);
  v10 = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 676))(a1, a5, 0);
  strdup(v10);
  v11 = (const char *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 676))(a1, a6, 0);
  return strdup(v11);
}


// ===== 533658 Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer =====
int __fastcall Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer(int a1)
{
  int result; // r0

  mEnv = a1;
  mClassMusicplayer = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 84))(a1);
  mMethodGetNumPlaylists = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                             mEnv,
                             mClassMusicplayer,
                             "GetNumPlaylists",
                             "()I");
  mMethodGetPlaylistName = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                             mEnv,
                             mClassMusicplayer,
                             "GetPlayListName",
                             "(I)[B");
  mMethodSetPlaylist = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassMusicplayer,
                         "SetPlaylist",
                         "(I)V");
  mMethodPlayBGMusic = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassMusicplayer,
                         "PlayBGMusic",
                         "()V");
  mMethodnativeChangeStep = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                              mEnv,
                              mClassMusicplayer,
                              "ChangeMusic",
                              "(I)V");
  mMethodResumeMusicBG = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                           mEnv,
                           mClassMusicplayer,
                           "ResumeMusicBG",
                           "()V");
  mMethodPauseMusicBG = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                          mEnv,
                          mClassMusicplayer,
                          "PauseMusicBG",
                          "()V");
  mMethodStopMusicBG = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
                         mEnv,
                         mClassMusicplayer,
                         "StopMusicBG",
                         "()V");
  result = (*(int (__fastcall **)(int, int, const char *, const char *))(*(_DWORD *)mEnv + 452))(
             mEnv,
             mClassMusicplayer,
             "Getisplaying",
             "()I");
  mMethodGetisplaying = result;
  return result;
}


// ===== 533850 nativeSetPlaylist =====
int __fastcall nativeSetPlaylist(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassMusicplayer,
           mMethodSetPlaylist,
           a1);
}


// ===== 53389c nativeChangeStep =====
int __fastcall nativeChangeStep(int a1)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 564))(
           mEnv,
           mClassMusicplayer,
           mMethodnativeChangeStep,
           a1);
}


// ===== 5338e8 nativeResumeMusicBG =====
int nativeResumeMusicBG()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassMusicplayer, mMethodResumeMusicBG);
}


// ===== 533930 nativeStopMusicBG =====
int nativeStopMusicBG()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassMusicplayer, mMethodStopMusicBG);
}


// ===== 533978 nativeGetisplaying =====
int nativeGetisplaying()
{
  return 0;
}


// ===== 533980 nativePauseMusicBG =====
int nativePauseMusicBG()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassMusicplayer, mMethodPauseMusicBG);
}


// ===== 5339c8 nativePlayBGMusic =====
int nativePlayBGMusic()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 564))(mEnv, mClassMusicplayer, mMethodPlayBGMusic);
}


// ===== 533a10 nativeGetNumPlaylists =====
int nativeGetNumPlaylists()
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)mEnv + 516))(mEnv, mClassMusicplayer, mMethodGetNumPlaylists);
}


// ===== 533a58 nativeGetPlaylistName =====
void *__fastcall nativeGetPlaylistName(int a1)
{
  int v1; // r6
  int v2; // r0
  size_t v3; // r8
  int v4; // r7
  void *v5; // r5
  int v6; // r1

  v1 = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)mEnv + 456))(
         mEnv,
         mClassMusicplayer,
         mMethodGetPlaylistName,
         a1);
  v2 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, v1);
  v3 = v2 + 1;
  v4 = v2;
  v5 = LC_API_MALLOC_0(v2 + 1);
  LC_API_MEMSET_0(v5, 0, v3);
  v6 = mEnv;
  *((_BYTE *)v5 + v4) = 0;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v6 + 800))(v6, v1);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, v1);
  return v5;
}


// ===== 533b2c Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeDisplayMusicTitle =====
void __fastcall Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeDisplayMusicTitle(int a1, int a2, int a3)
{
  int v4; // r0
  size_t v5; // r8
  int v6; // r7
  void *v7; // r4
  int v8; // r1

  v4 = (*(int (__fastcall **)(int, int))(*(_DWORD *)mEnv + 684))(mEnv, a3);
  v5 = v4 + 1;
  v6 = v4;
  v7 = LC_API_MALLOC_0(v4 + 1);
  LC_API_MEMSET_0(v7, 0, v5);
  v8 = mEnv;
  *((_BYTE *)v7 + v6) = 0;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 800))(v8, a3);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)mEnv + 92))(mEnv, a3);
  SetDisplayString((char *)v7);
}


// ===== 533bd8 NVThreadInit =====
int __fastcall NVThreadInit(int result)
{
  s_vm = result;
  return result;
}


// ===== 533bec __sleep =====
int __fastcall _sleep(int *a1, _DWORD *a2)
{
  int v2; // r3
  int v4; // r2
  int v5; // r3
  int result; // r0
  int v7; // [sp+0h] [bp-10h] BYREF
  int v8; // [sp+4h] [bp-Ch]
  int v9; // [sp+8h] [bp-8h] BYREF
  int v10; // [sp+Ch] [bp-4h]

  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v7 = v9;
  v8 = v2;
  if ( nanosleep((const struct timespec *)&v9, (struct timespec *)&v7) )
  {
    v9 = v7;
    v10 = v8;
    nanosleep((const struct timespec *)&v9, (struct timespec *)&v7);
  }
  if ( a2 )
  {
    v5 = v8;
    v4 = v7;
  }
  result = 1;
  if ( a2 )
  {
    a2[1] = v5;
    *a2 = v4;
  }
  return result;
}


// ===== 533c60 NVThreadSleep =====
int __fastcall NVThreadSleep(unsigned int a1)
{
  _DWORD v2[2]; // [sp+0h] [bp-14h] BYREF
  int v3[3]; // [sp+8h] [bp-Ch] BYREF

  v2[1] = 0;
  v3[1] = 1000000 * (a1 % 0x3E8);
  v2[0] = 0;
  v3[0] = a1 / 0x3E8;
  return _sleep(v3, v2);
}


// ===== 533cb8 NVThreadSpawnJNIThread =====
int __fastcall NVThreadSpawnJNIThread(pthread_t *a1, const pthread_attr_t *a2, int a3, int a4)
{
  int v8; // r5
  _DWORD *v9; // r4

  if ( !a3 )
    return -1;
  v9 = LC_API_MALLOC_0(8u);
  *v9 = a4;
  v9[1] = a3;
  v8 = pthread_create(a1, a2, (void *(*)(void *))NVThreadSpawnProc, v9);
  if ( !v8 )
    return v8;
  free(v9);
  return v8;
}


// ===== 533d20 NVThreadGetCurrentJNIEnv =====
void *NVThreadGetCurrentJNIEnv()
{
  void *v0; // r4
  int v2; // r6
  void *pointer; // [sp+Ch] [bp-4h] BYREF

  pointer = nullptr;
  if ( s_jniEnvKey )
  {
    v0 = pthread_getspecific(s_jniEnvKey);
    pointer = v0;
    if ( v0 )
      return v0;
  }
  else
  {
    pthread_key_create(&s_jniEnvKey, nullptr);
    v0 = pointer;
  }
  if ( s_vm )
  {
    v2 = (*(int (__fastcall **)(int, void **, void *))(*(_DWORD *)s_vm + 16))(s_vm, &pointer, v0);
    _android_log_print(3, "NVThread", "AttachCurrentThread: %d, 0x%p", v2, pointer);
    if ( v2 || !pointer )
    {
      _android_log_print(3, "NVThread", "Error - could not attach thread to JVM!");
    }
    else
    {
      pthread_setspecific(s_jniEnvKey, pointer);
      return pointer;
    }
  }
  else
  {
    _android_log_print(3, "NVThread", "Error - could not find JVM!");
  }
  return v0;
}


// ===== 533e4c NVThreadSpawnProc =====
int __fastcall NVThreadSpawnProc(int *a1)
{
  int v1; // r5
  int (__fastcall *v2)(int); // r4
  int v3; // r4

  v1 = *a1;
  v2 = (int (__fastcall *)(int))a1[1];
  free(a1);
  NVThreadGetCurrentJNIEnv();
  v3 = v2(v1);
  if ( s_vm )
    (*(void (__fastcall **)(int))(*(_DWORD *)s_vm + 20))(s_vm);
  return v3;
}


// ===== 533e98 glitch::CIrrFactory::CIrrFactory(void) =====
_DWORD *__fastcall glitch::CIrrFactory::CIrrFactory(_DWORD *this)
{
  *this = off_96CB80;
  glitch::CIrrFactory::s_instance = (int)this;
  return this;
}


// ===== 533ecc glitch::CIrrFactory::CIrrFactory(void) =====
_DWORD *__fastcall glitch::CIrrFactory::CIrrFactory(_DWORD *this)
{
  *this = off_96CB80;
  glitch::CIrrFactory::s_instance = (int)this;
  return this;
}


// ===== 533f00 glitch::CIrrFactory::~CIrrFactory() =====
void __fastcall glitch::CIrrFactory::~CIrrFactory(glitch::CIrrFactory *this)
{
  ;
}


// ===== 533f04 glitch::CIrrFactory::~CIrrFactory() =====
void __fastcall glitch::CIrrFactory::~CIrrFactory(glitch::CIrrFactory *this)
{
  ;
}


// ===== 533f08 `global constructor keyed to'.._source_glitch_CIrrFactory.cpp =====
void `global constructor keyed to'.._source_glitch_CIrrFactory.cpp()
{
  dword_9F6554 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6550 = 1056964608;
}


// ===== 533f28 glitch::CIrrFactory::createGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::video::IVideoDriver *,glitch::IOSOperator *) =====
int __fastcall glitch::CIrrFactory::createGUIEnvironment(int a1, int a2, int a3, int a4)
{
  int v7; // r4

  v7 = operator new(472, 0);
  glitch::gui::CGUIEnvironment::CGUIEnvironment(v7, a2, a3, a4);
  return v7;
}


// ===== 533f60 glitch::CIrrFactory::createSceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::gui::ICursorControl *,glitch::gui::IGUIEnvironment *) =====
int __fastcall glitch::CIrrFactory::createSceneManager(int a1, int a2, int a3, int a4, int a5)
{
  int v8; // r4

  v8 = operator new(660, 0);
  glitch::scene::CSceneManager::CSceneManager(v8, a2, a3, a4, 0, a5);
  return v8;
}


// ===== 533fb0 glitch::CIrrFactory::createFileSystem(void) =====
glitch::CIrrFactory *__fastcall glitch::CIrrFactory::createFileSystem(glitch::CIrrFactory *this)
{
  glitch::io::CFileSystem *v2; // r5
  int v3; // r3
  glitch::CIrrFactory *result; // r0

  v2 = (glitch::io::CFileSystem *)operator new(44, 0);
  glitch::io::CFileSystem::CFileSystem(v2);
  *(_DWORD *)this = v2;
  if ( v2 )
    v3 = *((_DWORD *)v2 + 1);
  result = this;
  if ( v2 )
    *((_DWORD *)v2 + 1) = v3 + 1;
  return result;
}


// ===== 533fe8 glitch::CIrrFactory::getInstance(void) =====
_DWORD *__fastcall glitch::CIrrFactory::getInstance(glitch::CIrrFactory *this)
{
  _DWORD *result; // r0

  result = (_DWORD *)glitch::CIrrFactory::s_instance;
  if ( !glitch::CIrrFactory::s_instance )
  {
    if ( (`guard variable for'glitch::CIrrFactory::getInstance(void)::inst & 1) != 0
      || !_cxa_guard_acquire(&`guard variable for'glitch::CIrrFactory::getInstance(void)::inst) )
    {
      return &glitch::CIrrFactory::getInstance(void)::inst;
    }
    else
    {
      glitch::CIrrFactory::CIrrFactory(&glitch::CIrrFactory::getInstance(void)::inst);
      _cxa_guard_release(&`guard variable for'glitch::CIrrFactory::getInstance(void)::inst);
      _aeabi_atexit(
        (int)&glitch::CIrrFactory::getInstance(void)::inst,
        (int)glitch::CIrrFactory::~CIrrFactory,
        (int)&_dso_handle);
      return &glitch::CIrrFactory::getInstance(void)::inst;
    }
  }
  return result;
}


// ===== 534090 glitch::CIrrFactory::~CIrrFactory() =====
void __fastcall glitch::CIrrFactory::~CIrrFactory(glitch::CIrrFactory *this)
{
  glitch::CIrrFactory::~CIrrFactory(this);
  LC_API_FREE_0(this);
}


// ===== 5340ac glitch::createDevice(glitch::video::E_DRIVER_TYPE,glitch::core::dimension2d<int> const&,uint,bool,bool,bool,glitch::IEventReceiver *) =====
int __fastcall glitch::createDevice(int a1, int *a2, char a3, char a4, char a5, char a6, int a7)
{
  int v7; // r6
  int v8; // r7
  _DWORD v10[3]; // [sp+0h] [bp-58h] BYREF
  char v11; // [sp+Ch] [bp-4Ch]
  char v12; // [sp+Dh] [bp-4Bh]
  char v13; // [sp+Eh] [bp-4Ah]
  char v14; // [sp+Fh] [bp-49h]
  char v15; // [sp+10h] [bp-48h]
  char v16; // [sp+11h] [bp-47h]
  int v17; // [sp+14h] [bp-44h]
  int v18; // [sp+18h] [bp-40h]
  int v19; // [sp+1Ch] [bp-3Ch]
  int v20; // [sp+20h] [bp-38h]
  char v21; // [sp+24h] [bp-34h]
  char v22; // [sp+25h] [bp-33h]
  char v23; // [sp+26h] [bp-32h]
  int v24; // [sp+28h] [bp-30h]
  int v25; // [sp+2Ch] [bp-2Ch]
  char v26; // [sp+30h] [bp-28h]
  int v27; // [sp+34h] [bp-24h]
  int v28; // [sp+38h] [bp-20h]
  const char *v29; // [sp+3Ch] [bp-1Ch]
  int v30; // [sp+40h] [bp-18h]
  int v31; // [sp+44h] [bp-14h]
  int v32; // [sp+48h] [bp-10h]
  int v33; // [sp+4Ch] [bp-Ch]
  int v34; // [sp+50h] [bp-8h]
  int v35; // [sp+54h] [bp-4h]

  v7 = a2[1];
  v8 = *a2;
  v29 = "0.1.0.2";
  v30 = 5242880;
  v31 = 655360;
  v13 = a4;
  v32 = 0x20000;
  v10[0] = a1;
  v12 = 16;
  v33 = 0x2000;
  v20 = 0x40000;
  v28 = -1;
  v34 = 1065353216;
  v35 = 0;
  v10[1] = v8;
  v10[2] = v7;
  v11 = a3;
  v14 = a5;
  v15 = a6;
  v24 = a7;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v27 = -1;
  return glitch::createDeviceEx(v10);
}


// ===== 534178 operator delete[](void *,glitch::memory::E_MEMORY_HINT,int,char const*,int) =====
// attributes: thunk
void operator delete[](void *p)
{
  GlitchFree(p);
}


// ===== 53417c operator delete(void *,glitch::memory::E_MEMORY_HINT,int,char const*,int) =====
// attributes: thunk
void operator delete(void *p)
{
  GlitchFree(p);
}


// ===== 534180 irr_free =====
int __fastcall irr_free(void *a1)
{
  GlitchFree(a1);
  return 0;
}


// ===== 534190 operator delete[](void *,glitch::memory::E_MEMORY_HINT) =====
// attributes: thunk
void operator delete[](void *p)
{
  GlitchFree(p);
}


// ===== 534194 operator delete(void *,glitch::memory::E_MEMORY_HINT) =====
// attributes: thunk
void operator delete(void *p)
{
  GlitchFree(p);
}


// ===== 534198 operator new[](uint,glitch::memory::E_MEMORY_HINT,int,char const*,int) =====
// attributes: thunk
void *__fastcall operator new[](size_t a1, int a2, int a3, char *a4, unsigned int a5)
{
  return GlitchAlloc(a1, a2, a3, a4, a5);
}


// ===== 53419c operator new(uint,glitch::memory::E_MEMORY_HINT,int,char const*,int) =====
// attributes: thunk
void *__fastcall operator new(size_t a1, int a2, int a3, char *a4, unsigned int a5)
{
  return GlitchAlloc(a1, a2, a3, a4, a5);
}


// ===== 5341a0 irr_malloc =====
void *__fastcall irr_malloc(size_t a1)
{
  return GlitchAlloc(a1, 0);
}


// ===== 5341a8 operator new[](uint,glitch::memory::E_MEMORY_HINT) =====
// attributes: thunk
void *__fastcall operator new[](size_t a1, int a2)
{
  return GlitchAlloc(a1, a2);
}


// ===== 5341ac operator new(uint,glitch::memory::E_MEMORY_HINT) =====
// attributes: thunk
void *__fastcall operator new(size_t a1, int a2)
{
  return GlitchAlloc(a1, a2);
}


// ===== 5341b0 `global constructor keyed to'.._source_glitch_glitch.cpp =====
void *`global constructor keyed to'.._source_glitch_glitch.cpp()
{
  void *result; // r0

  dword_9F656C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6568 = 1056964608;
  result = LC_API_MEMSET_0(&glitch::core::IdentityMatrix, 0, 0x40u);
  byte_9F65B0 = 1;
  dword_9F65AC = 1065353216;
  glitch::core::IdentityMatrix = 1065353216;
  dword_9F6584 = 1065353216;
  dword_9F6598 = 1065353216;
  return result;
}


// ===== 534218 glitch::core::getProcessBufferHeapSize(void) =====
int __fastcall glitch::core::getProcessBufferHeapSize(glitch::core *this)
{
  return dword_9F65B8 - glitch::core::`anonymous namespace'::ProcessBufferHeap;
}


// ===== 534234 glitch::core::getProcessBufferHeapAvailableMemory(void) =====
unsigned int __fastcall glitch::core::getProcessBufferHeapAvailableMemory(glitch::core *this)
{
  return ((dword_9F65B8 - dword_9F65BC) & 0xFFFFFFFC) - 8;
}


// ===== 534254 glitch::core::isProcessBufferHeapExcessEnabled(void) =====
int __fastcall glitch::core::isProcessBufferHeapExcessEnabled(glitch::core *this)
{
  return (unsigned __int8)byte_9F65C4;
}


// ===== 534268 glitch::core::setProcessBufferHeapExcessEnabled(bool) =====
char __fastcall glitch::core::setProcessBufferHeapExcessEnabled(char this, bool a2)
{
  byte_9F65C4 = this;
  return this;
}


// ===== 53427c glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(int,bool) =====
_DWORD *__fastcall glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
        glitch::core::_anonymous_namespace_::CProcessBufferHeap *this,
        int a2,
        int a3)
{
  unsigned int v4; // r0
  unsigned int v5; // r5
  void *v6; // r0
  _DWORD *result; // r0
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // zf
  unsigned int v11; // r3

  v4 = *(_DWORD *)this;
  v5 = (unsigned int)(a2 + 3) >> 2;
  if ( v4 )
  {
    if ( v5 == (int)(*((_DWORD *)this + 1) - v4) >> 2 )
      return nullptr;
    if ( v4 < *((_DWORD *)this + 2) && !a3 )
      return &dword_0 + 1;
    v6 = (void *)(v4 - 4);
    if ( v6 )
      operator delete[](v6);
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 1) = 0;
  }
  if ( !v5 )
    return nullptr;
  result = operator new[](4 * (v5 + 1), 0);
  v10 = result == nullptr;
  if ( result )
    v8 = nullptr;
  *(_DWORD *)this = result;
  if ( result )
  {
    *result = v8;
    v9 = *(_DWORD *)this;
  }
  else
  {
    result = &dword_0 + 2;
  }
  if ( !v10 )
  {
    result = v8;
    v11 = v9 + 4;
    *((_DWORD *)this + 1) = v11 + 4 * v5;
    *(_DWORD *)this = v11;
    *((_DWORD *)this + 2) = v11;
  }
  return result;
}


// ===== 534334 glitch::core::setProcessBufferHeapSize(int) =====
_DWORD *__fastcall glitch::core::setProcessBufferHeapSize(glitch::core *this, int a2)
{
  return glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
           (glitch::core::_anonymous_namespace_::CProcessBufferHeap *)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
           (int)this,
           0);
}


// ===== 53434c glitch::core::`anonymous namespace'::CProcessBufferHeap::dump(glitch::ILogger *,glitch::ELOG_LEVEL) =====
int __fastcall glitch::core::`anonymous namespace'::CProcessBufferHeap::dump(int **a1, int a2, int a3)
{
  int *v4; // r4
  int *v5; // r3
  int v7; // r7
  int v8; // r5
  char v11[4]; // [sp+Ch] [bp-408h] BYREF

  v4 = *a1;
  v5 = a1[2];
  if ( *a1 == v5 )
    return 0;
  v7 = 0;
  do
  {
    v8 = *v4;
    if ( *v4 > 0 )
    {
      sprintf(v11, "0x%08lx: %8d", v4 + 1, 4 * (v8 - 2));
      if ( a2 )
        (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a2 + 20))(a2, v11, a3);
      v5 = a1[2];
      ++v7;
    }
    else
    {
      v8 = -v8;
    }
    v4 += v8;
  }
  while ( v5 != v4 );
  return v7;
}


// ===== 53443c glitch::core::`anonymous namespace'::CProcessBufferHeap::~CProcessBufferHeap() =====
void __fastcall glitch::core::`anonymous namespace'::CProcessBufferHeap::~CProcessBufferHeap(int **this)
{
  if ( glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
         (glitch::core::_anonymous_namespace_::CProcessBufferHeap *)this,
         0,
         0) == (int *)((char *)&dword_0 + 1) )
  {
    glitch::os::Printer::log("Destroying process buffer heap with allocated blocks:", 3);
    glitch::core::`anonymous namespace'::CProcessBufferHeap::dump(this, glitch::os::Printer::Logger, 3);
    if ( *this != (int *)byte_4 )
      operator delete[](*this - 1);
  }
}


// ===== 5344b4 glitch::core::dumpProcessBufferAllocations(glitch::ILogger *,glitch::ELOG_LEVEL) =====
int __fastcall glitch::core::dumpProcessBufferAllocations(int a1, int a2)
{
  return glitch::core::`anonymous namespace'::CProcessBufferHeap::dump(
           (int **)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
           a1,
           a2);
}


// ===== 5344d0 glitch::core::`anonymous namespace'::processBufferHeapInit(bool) =====
_DWORD *__fastcall glitch::core::`anonymous namespace'::processBufferHeapInit(
        glitch::core::_anonymous_namespace_ *this,
        bool a2)
{
  _DWORD *result; // r0

  if ( this )
    return glitch::core::setProcessBufferHeapSize((glitch::core *)&stru_3FFF8.st_size, a2);
  result = glitch::core::setProcessBufferHeapSize(nullptr, a2);
  if ( result == (int *)((char *)&dword_0 + 1) )
  {
    glitch::os::Printer::log("Freeing process buffer heap would fail due to the following allocated blocks:", 3);
    glitch::core::dumpProcessBufferAllocations(glitch::os::Printer::Logger, 3);
    glitch::os::Printer::log("Freeing anyways (at Glitch exit)", 3);
    return glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
             (glitch::core::_anonymous_namespace_::CProcessBufferHeap *)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
             0,
             1);
  }
  return result;
}


// ===== 534564 `global constructor keyed to'.._source_glitch_core_ProcessBufferHeap.cpp =====
int `global constructor keyed to'.._source_glitch_core_ProcessBufferHeap.cpp()
{
  void (*v0)(bool); // r1
  int result; // r0

  dword_9F65D0 = 1056964608;
  byte_9F65C4 = 1;
  glitch::ps::vHalf = 1056964608;
  dword_9F65CC = 1056964608;
  glitch::core::`anonymous namespace'::ProcessBufferHeap = 0;
  dword_9F65B8 = 0;
  dword_9F65BC = 0;
  dword_9F65C0 = 0;
  glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
    (glitch::core::_anonymous_namespace_::CProcessBufferHeap *)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
    0,
    0);
  _aeabi_atexit(
    (int)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
    (int)glitch::core::`anonymous namespace'::CProcessBufferHeap::~CProcessBufferHeap,
    (int)&_dso_handle);
  result = glitch::registerInitStep((glitch *)glitch::core::`anonymous namespace'::processBufferHeapInit, v0);
  glitch::core::`anonymous namespace'::processBufferHeapInitDummy = result;
  return result;
}


// ===== 5345f4 glitch::core::allocProcessBuffer(int) =====
int __fastcall glitch::core::allocProcessBuffer(glitch::core *this, int a2)
{
  int v3; // r0
  int v4; // r2
  int result; // r0

  if ( !glitch::core::`anonymous namespace'::ProcessBufferHeap )
    glitch::core::`anonymous namespace'::CProcessBufferHeap::setSize(
      (glitch::core::_anonymous_namespace_::CProcessBufferHeap *)&glitch::core::`anonymous namespace'::ProcessBufferHeap,
      dword_9F65C0,
      0);
  v3 = dword_9F65BC;
  v4 = (((unsigned int)this + 3) >> 2) + 2;
  if ( v4 > (dword_9F65B8 - dword_9F65BC) >> 2 )
  {
    result = (unsigned __int8)byte_9F65C4;
    if ( byte_9F65C4 )
      return (int)operator new[]((size_t)this, 0);
  }
  else
  {
    *(_DWORD *)dword_9F65BC = v4;
    dword_9F65BC += 4 * v4;
    *(_DWORD *)(dword_9F65BC - 4) = v4;
    return v3 + 4;
  }
  return result;
}


// ===== 534688 glitch::core::releaseProcessBuffer(void *) =====
void __fastcall glitch::core::releaseProcessBuffer(glitch::core *this, void *a2)
{
  int *v2; // r1
  int v3; // r2
  int v4; // r12
  int v5; // r12
  int v6; // r3
  int v7; // r3
  int v8; // r3
  int v9; // r2
  int v10; // r0
  int v11; // r2

  if ( glitch::core::`anonymous namespace'::ProcessBufferHeap <= (unsigned int)this && (unsigned int)this < dword_9F65B8 )
  {
    v2 = (int *)((char *)this - 4);
    v3 = -*((_DWORD *)this - 1);
    v4 = *((_DWORD *)this - 1) - 1;
    *((_DWORD *)this - 1) = v3;
    *((_DWORD *)this + v4 - 1) = v3;
    v5 = *(_DWORD *)(dword_9F65BC - 4);
    if ( v5 < 0 )
    {
      v10 = dword_9F65BC + 4 * v5;
      dword_9F65BC = v10;
      v11 = *(_DWORD *)(v10 - 4);
      if ( v11 < 0 )
        dword_9F65BC = v10 + 4 * v11;
    }
    else
    {
      v6 = *((_DWORD *)this - 2);
      if ( v6 < 0 )
      {
        v3 += v6;
        v7 = v6;
        v2[v7] = v3;
        v2 = (int *)((char *)v2 + v7 * 4);
        v2[~v3] = v3;
      }
      v8 = v2[-v3];
      if ( v8 < 0 )
      {
        v9 = v8 + v3;
        *v2 = v9;
        v2[~v9] = v9;
      }
    }
  }
  else if ( this )
  {
    operator delete[](this);
  }
}


// ===== 534740 glitch::gui::IGUIElement::setRelativePosition(glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::IGUIElement::setRelativePosition(float *a1, int *a2)
{
  _DWORD *v2; // r6
  float v4; // r7
  float v5; // r0
  int v6; // r3
  float v7; // r3

  v2 = *((_DWORD **)a1 + 9);
  if ( v2 )
  {
    v4 = (float)(v2[16] - v2[14]);
    v6 = *((_DWORD *)a1 + 80);
    v5 = (float)(v2[17] - v2[15]);
    if ( v6 == 3 )
      a1[30] = (float)*a2 / v4;
    if ( *((_DWORD *)a1 + 81) == 3 )
      a1[32] = (float)a2[2] / v4;
    if ( *((_DWORD *)a1 + 82) == 3 )
      a1[31] = (float)a2[1] / v5;
    if ( *((_DWORD *)a1 + 83) == 3 )
      a1[33] = (float)a2[3] / v5;
  }
  v7 = *a1;
  *((_DWORD *)a1 + 22) = *a2;
  *((_DWORD *)a1 + 23) = a2[1];
  *((_DWORD *)a1 + 24) = a2[2];
  *((_DWORD *)a1 + 25) = a2[3];
  return (*(int (__fastcall **)(float *))(LODWORD(v7) + 12))(a1);
}


// ===== 534840 glitch::gui::IGUIElement::setAlignment(glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT) =====
float __fastcall glitch::gui::IGUIElement::setAlignment(float result, int a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r5
  float v6; // r4
  float v7; // r8
  float v8; // r5

  *(_DWORD *)(LODWORD(result) + 328) = a4;
  v5 = *(_DWORD **)(LODWORD(result) + 36);
  v6 = result;
  *(_DWORD *)(LODWORD(result) + 332) = a5;
  *(_DWORD *)(LODWORD(result) + 320) = a2;
  *(_DWORD *)(LODWORD(result) + 324) = a3;
  if ( v5 )
  {
    v7 = (float)(v5[16] - v5[14]);
    result = (float)(v5[17] - v5[15]);
    v8 = result;
    if ( a2 == 3 )
    {
      result = (float)*(int *)(LODWORD(v6) + 88) / v7;
      *(float *)(LODWORD(v6) + 120) = result;
    }
    if ( a3 == 3 )
    {
      result = (float)*(int *)(LODWORD(v6) + 96) / v7;
      *(float *)(LODWORD(v6) + 128) = result;
    }
    if ( *(_DWORD *)(LODWORD(v6) + 328) == 3 )
    {
      result = (float)*(int *)(LODWORD(v6) + 92) / v8;
      *(float *)(LODWORD(v6) + 124) = result;
    }
    if ( *(_DWORD *)(LODWORD(v6) + 332) == 3 )
    {
      result = (float)*(int *)(LODWORD(v6) + 100) / v8;
      *(float *)(LODWORD(v6) + 132) = result;
    }
  }
  return result;
}


// ===== 534920 glitch::gui::IGUIElement::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::IGUIElement::updateAbsolutePosition(glitch::gui::IGUIElement *this)
{
  _DWORD *v1; // r5
  _DWORD *v3; // r3
  int v4; // r8
  int v5; // r7
  _DWORD *v6; // r2
  int v7; // r10
  int v8; // r0
  int v9; // r1
  int v10; // r6
  int v11; // r12
  int v12; // r9
  int v13; // r11
  int v14; // r2
  int v15; // r6
  int v16; // r9
  bool v17; // zf
  int v18; // r11
  int v19; // r0
  int v20; // r2
  int v21; // r1
  int v22; // r12
  bool v23; // cc
  int v24; // r0
  int v25; // r2
  int v26; // r6
  int v27; // r0
  int v28; // r1
  int v29; // r1
  int v30; // r12
  int v31; // r12
  _DWORD *v32; // r0
  int v33; // r1
  bool v34; // zf
  int v35; // r5
  int v36; // r2
  int v37; // r6
  int v38; // r5
  int v39; // r12
  _DWORD *v40; // r2
  int v41; // r3
  bool v42; // cc
  int v43; // r3
  int v44; // r3
  int result; // r0
  char *v46; // r4
  char *i; // r5
  char *v48; // t1
  int v49; // kr00_4
  int v50; // r0
  int v51; // r0
  int v52; // r0
  int v53; // [sp+Ch] [bp-20h]
  int v54; // [sp+10h] [bp-1Ch]
  int v55; // [sp+10h] [bp-1Ch]
  int v56; // [sp+14h] [bp-18h]
  int v57; // [sp+18h] [bp-14h]
  int v58; // [sp+1Ch] [bp-10h]
  float v59; // [sp+20h] [bp-Ch]
  float v60; // [sp+24h] [bp-8h]

  v1 = *((_DWORD **)this + 9);
  v3 = v1;
  if ( v1 )
  {
    v4 = v1[14];
    v5 = v1[15];
    v56 = v1[16];
    v57 = v1[17];
    if ( *((_BYTE *)this + 155) )
    {
      do
      {
        v6 = v3;
        v3 = (_DWORD *)v3[9];
      }
      while ( v3 );
      v54 = v6[21];
      v3 = (_DWORD *)v6[18];
      v7 = v6[19];
      v8 = v56 - v4;
      v53 = v6[20];
      v9 = v57 - v5;
    }
    else
    {
      v3 = (_DWORD *)v1[18];
      v7 = v1[19];
      v53 = v1[20];
      v54 = v1[21];
      v8 = v56 - v4;
      v9 = v57 - v5;
    }
  }
  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v53 = 0;
    v54 = 0;
    v4 = 0;
    v5 = 0;
    v56 = 0;
    v57 = 0;
  }
  v10 = *((_DWORD *)this + 80);
  v58 = v9 - (*((_DWORD *)this + 29) - *((_DWORD *)this + 27));
  v11 = v8 - (*((_DWORD *)this + 28) - *((_DWORD *)this + 26));
  if ( v10 == 3 )
  {
    v12 = *((_DWORD *)this + 81);
  }
  else
  {
    v12 = *((_DWORD *)this + 81);
    if ( v12 != 3 )
    {
      v60 = 0.0;
      goto LABEL_10;
    }
  }
  v60 = (float)v8;
LABEL_10:
  v13 = *((_DWORD *)this + 82);
  if ( v13 == 3 )
  {
    v14 = *((_DWORD *)this + 83);
    goto LABEL_75;
  }
  v14 = *((_DWORD *)this + 83);
  if ( v14 == 3 )
  {
LABEL_75:
    v59 = (float)v9;
    if ( v10 == 2 )
      goto LABEL_76;
    goto LABEL_16;
  }
  v59 = 0.0;
  if ( v10 == 2 )
  {
LABEL_76:
    v15 = *((_DWORD *)this + 22) + v11 / 2;
    *((_DWORD *)this + 22) = v15;
    if ( v12 == 2 )
      goto LABEL_77;
    goto LABEL_20;
  }
LABEL_16:
  if ( v10 == 3 )
  {
    v50 = (int)(float)(v60 * *((float *)this + 30));
    *((_DWORD *)this + 22) = v50;
    v15 = v50;
  }
  else
  {
    v17 = v10 == 1;
    v15 = *((_DWORD *)this + 22);
    if ( v17 )
    {
      v15 += v11;
      *((_DWORD *)this + 22) = v15;
    }
  }
  if ( v12 == 2 )
  {
LABEL_77:
    v49 = v11;
    v11 += (unsigned int)v11 >> 31;
    v16 = *((_DWORD *)this + 24) + v49 / 2;
    *((_DWORD *)this + 24) = v16;
    if ( v13 == 2 )
      goto LABEL_78;
LABEL_24:
    if ( v13 == 3 )
    {
      v51 = (int)(float)(v59 * *((float *)this + 31));
      *((_DWORD *)this + 23) = v51;
      v18 = v51;
    }
    else
    {
      v17 = v13 == 1;
      if ( v13 == 1 )
        v11 = v58;
      v18 = *((_DWORD *)this + 23);
      if ( v17 )
      {
        v18 += v11;
        *((_DWORD *)this + 23) = v18;
      }
    }
    if ( v14 == 2 )
      goto LABEL_79;
    goto LABEL_30;
  }
LABEL_20:
  if ( v12 == 3 )
  {
    v52 = (int)(float)(v60 * *((float *)this + 32));
    *((_DWORD *)this + 24) = v52;
    v16 = v52;
  }
  else
  {
    v17 = v12 == 1;
    v16 = *((_DWORD *)this + 24);
    if ( v17 )
    {
      v16 += v11;
      *((_DWORD *)this + 24) = v16;
    }
  }
  if ( v13 != 2 )
    goto LABEL_24;
LABEL_78:
  v18 = *((_DWORD *)this + 23) + v58 / 2;
  *((_DWORD *)this + 23) = v18;
  if ( v14 == 2 )
  {
LABEL_79:
    v19 = *((_DWORD *)this + 25) + v58 / 2;
    *((_DWORD *)this + 25) = v19;
    goto LABEL_33;
  }
LABEL_30:
  if ( v14 == 3 )
  {
    v19 = (int)(float)(v59 * *((float *)this + 33));
    *((_DWORD *)this + 25) = v19;
  }
  else
  {
    v19 = *((_DWORD *)this + 25);
    if ( v14 == 1 )
    {
      v19 += v58;
      *((_DWORD *)this + 25) = v19;
    }
  }
LABEL_33:
  v20 = *((_DWORD *)this + 36);
  v21 = v16 - v15;
  v22 = v19 - v18;
  v23 = v20 <= v16 - v15;
  if ( v20 > v16 - v15 )
    v20 += v15;
  *((_DWORD *)this + 13) = v19;
  *((_DWORD *)this + 11) = v18;
  v24 = *((_DWORD *)this + 37);
  *((_DWORD *)this + 12) = v16;
  if ( !v23 )
    *((_DWORD *)this + 12) = v20;
  v25 = *((_DWORD *)this + 11);
  *((_DWORD *)this + 10) = v15;
  v26 = *((_DWORD *)this + 34);
  if ( v24 > v22 )
    *((_DWORD *)this + 13) = v25 + v24;
  if ( v26 && v26 < v21 )
  {
    v27 = *((_DWORD *)this + 10);
    *((_DWORD *)this + 12) = v27 + v26;
  }
  else
  {
    v27 = *((_DWORD *)this + 10);
  }
  v28 = *((_DWORD *)this + 35);
  if ( v28 && v28 < v22 )
    *((_DWORD *)this + 13) = v25 + v28;
  v29 = *((_DWORD *)this + 12);
  if ( v29 < v27 )
  {
    v30 = v27;
    *((_DWORD *)this + 10) = v29;
    *((_DWORD *)this + 12) = v27;
    v27 = v29;
    v29 = v30;
  }
  v31 = *((_DWORD *)this + 13);
  v32 = (_DWORD *)(v4 + v27);
  v33 = v4 + v29;
  if ( v31 >= v25 )
  {
    v31 = v25;
    v25 = *((_DWORD *)this + 13);
  }
  else
  {
    *((_DWORD *)this + 13) = v25;
    *((_DWORD *)this + 11) = v31;
  }
  v34 = v1 == nullptr;
  v35 = v54;
  v36 = v25 + v5;
  v37 = *((unsigned __int8 *)this + 156);
  if ( v34 )
    v35 = v36;
  v55 = v35;
  v38 = v53;
  v39 = v31 + v5;
  if ( v34 )
  {
    v3 = v32;
    v38 = v33;
    v7 = v39;
  }
  *((_DWORD *)this + 18) = v32;
  *((_DWORD *)this + 19) = v39;
  *((_DWORD *)this + 14) = v32;
  *((_DWORD *)this + 15) = v39;
  *((_DWORD *)this + 16) = v33;
  *((_DWORD *)this + 17) = v36;
  *((_DWORD *)this + 20) = v33;
  *((_DWORD *)this + 21) = v36;
  if ( !v37 )
  {
    if ( v33 > v38 )
      *((_DWORD *)this + 20) = v38;
    v23 = v55 < v36;
    v40 = *((_DWORD **)this + 18);
    if ( v23 )
      *((_DWORD *)this + 21) = v55;
    if ( (int)v3 > (int)v40 )
    {
      *((_DWORD *)this + 18) = v3;
      v40 = v3;
    }
    v41 = *((_DWORD *)this + 19);
    v42 = v7 <= v41;
    if ( v7 <= v41 )
      v7 = *((_DWORD *)this + 19);
    v43 = *((_DWORD *)this + 21);
    if ( !v42 )
      *((_DWORD *)this + 19) = v7;
    if ( v7 > v43 )
      *((_DWORD *)this + 19) = v43;
    v44 = *((_DWORD *)this + 20);
    if ( (int)v40 > v44 )
      *((_DWORD *)this + 18) = v44;
  }
  *((_DWORD *)this + 26) = v4;
  *((_DWORD *)this + 27) = v5;
  result = v56;
  *((_DWORD *)this + 28) = v56;
  *((_DWORD *)this + 29) = v57;
  v48 = *((char **)this + 1);
  v46 = (char *)this + 4;
  for ( i = v48; i != v46; i = *(char **)i )
    result = (*(int (__fastcall **)(int))(**((_DWORD **)i + 2) + 12))(*((_DWORD *)i + 2));
  return result;
}

