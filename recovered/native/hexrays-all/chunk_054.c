// ===== 817e5c CRoomAttributes::Unserialize(NetBitStream &) =====
int __fastcall CRoomAttributes::Unserialize(CRoomAttributes *this, NetBitStream *a2)
{
  return NetStruct::Load((CRoomAttributes *)((char *)this + 8), a2, -1, 0);
}


// ===== 817e6c CRoomAttributes::Unserialize(char *,uint) =====
void __fastcall CRoomAttributes::Unserialize(CRoomAttributes *this, char *a2, size_t a3)
{
  void *v6[9]; // [sp+0h] [bp-24h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v6, a3);
  NetBitStream::SetBuffer(v6, a2, a3);
  CRoomAttributes::Unserialize(this, (NetBitStream *)v6);
  NetBitStream::~NetBitStream((NetBitStream *)v6);
}


// ===== 817ebc CRoomAttributes::Serialize(int,int,NetBitStream &) =====
bool __fastcall CRoomAttributes::Serialize(CRoomAttributes *this, int a2, int a3, NetBitStream *a4)
{
  return NetStruct::Serialize((CRoomAttributes *)((char *)this + 8), a4, a2, a3) != 0;
}


// ===== 817ee8 CRoomAttributes::HasChanged(void) =====
int __fastcall CRoomAttributes::HasChanged(CRoomAttributes *this)
{
  return NetStruct::IsChanged((CRoomAttributes *)((char *)this + 8));
}


// ===== 817ef0 CRoomAttributes::ProcessAcknowledgedPacket(int,int) =====
void __fastcall CRoomAttributes::ProcessAcknowledgedPacket(CRoomAttributes *this, int a2, int a3)
{
  NetStruct::ProcessAcknowledgedPacket((CRoomAttributes *)((char *)this + 8), a2, a3);
}


// ===== 817ef8 CRoomAttributes::ProcessLostPacket(int,int) =====
void __fastcall CRoomAttributes::ProcessLostPacket(CRoomAttributes *this, int a2, int a3)
{
  NetStruct::ProcessLostPacket((CRoomAttributes *)((char *)this + 8), a2, a3);
}


// ===== 817f00 NetStructUInt<5u>::~NetStructUInt() =====
_DWORD *__fastcall NetStructUInt<5u>::~NetStructUInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 817f34 NetStructUInt<5u>::Read(NetBitStream &) =====
int __fastcall NetStructUInt<5u>::Read(int a1, NetBitStream *this)
{
  int U32; // [sp+4h] [bp-4h] BYREF

  U32 = NetBitStream::ReadU32(this, 5u);
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 817f6c NetStructUInt<5u>::Write(NetBitStream &) =====
_DWORD *__fastcall NetStructUInt<5u>::Write(int a1, NetBitStream *this)
{
  return NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 32), 5u);
}


// ===== 817f80 NetStructByteArray<256u>::GetBuffer(void *,int) =====
int __fastcall NetStructByteArray<256u>::GetBuffer(int a1, void *a2)
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


// ===== 817fbc NetStructByteArray<256u>::Write(NetBitStream &) =====
NetBitStream *__fastcall NetStructByteArray<256u>::Write(int a1, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 36), 0x10u);
  return NetBitStream::WriteByteArray(this, *(unsigned __int8 **)(a1 + 32), *(_DWORD *)(a1 + 36));
}


// ===== 817fec CRoomAttributes::Unserialize(int,NetBitStream &) =====
int __fastcall CRoomAttributes::Unserialize(CRoomAttributes *this, int a2, NetBitStream *a3)
{
  int v6; // r0
  CNetPlayerManager *v7; // r7
  CNetPlayerManager *NetPlayerMgr; // r8
  int v9; // r0
  CNetPlayerManager *Player; // r0
  CNetPlayerManager *v11; // r7
  int v12; // r0
  int v13; // r1

  v6 = CMatching::Get(this);
  v7 = (CNetPlayerManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 108))(v6);
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(v7);
  v9 = GetNetPlayerMgr(NetPlayerMgr);
  Player = (CNetPlayerManager *)CNetPlayerManager::GetPlayer(NetPlayerMgr, *(_DWORD *)(v9 + 368), 0);
  v13 = false;
  if ( v7 != *((CNetPlayerManager **)Player + 104) )
  {
    v11 = (CNetPlayerManager *)GetNetPlayerMgr(Player);
    v12 = GetNetPlayerMgr(v11);
    if ( *(_DWORD *)(CNetPlayerManager::GetPlayer(v11, *(_DWORD *)(v12 + 368), 0) + 416) != -1 )
      v13 = true;
  }
  return NetStruct::ConditionalLoad((CRoomAttributes *)((char *)this + 8), v13, a3, a2, 0);
}


// ===== 818090 NetStructByteArray<256u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<256u>::~NetStructByteArray(_DWORD *p)
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


// ===== 8180f4 CRoomAttributes::NetRoomAttributes::~NetRoomAttributes() =====
void __fastcall CRoomAttributes::NetRoomAttributes::~NetRoomAttributes(CRoomAttributes::NetRoomAttributes *this)
{
  CRoomAttributes::NetRoomAttributes *v2; // r6
  CRoomAttributes::NetRoomAttributes *v3; // r5
  int v4; // t1
  int v5; // t1
  int v6; // r2

  *(_DWORD *)this = off_992548;
  *((_DWORD *)this + 206) = &off_963648;
  *((_DWORD *)this + 216) = &off_963648;
  v2 = (CRoomAttributes::NetRoomAttributes *)((char *)this + 624);
  v3 = (CRoomAttributes::NetRoomAttributes *)((char *)this + 824);
  do
  {
    v4 = *((_DWORD *)v3 - 10);
    v3 = (CRoomAttributes::NetRoomAttributes *)((char *)v3 - 40);
    (*(void (__fastcall **)(CRoomAttributes::NetRoomAttributes *))(v4 + 20))(v3);
  }
  while ( v3 != v2 );
  do
  {
    v5 = *((_DWORD *)v3 - 10);
    v3 = (CRoomAttributes::NetRoomAttributes *)((char *)v3 - 40);
    (*(void (__fastcall **)(CRoomAttributes::NetRoomAttributes *))(v5 + 20))(v3);
  }
  while ( v3 != (CRoomAttributes::NetRoomAttributes *)((char *)this + 304) );
  v6 = *((_DWORD *)this + 71);
  *(_DWORD *)this = off_9924D8;
  if ( v6 )
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


// ===== 8181bc CRoomAttributes::NetRoomAttributes::~NetRoomAttributes() =====
void __fastcall CRoomAttributes::NetRoomAttributes::~NetRoomAttributes(CRoomAttributes::NetRoomAttributes *this)
{
  CRoomAttributes::NetRoomAttributes::~NetRoomAttributes(this);
  CustomFree(this);
}


// ===== 8181d8 NetStructByteArray<256u>::NetStructByteArray(ByteArray) =====
int __fastcall NetStructByteArray<256u>::NetStructByteArray(int a1, int a2)
{
  size_t v3; // r2
  const void *v4; // r1
  void *p[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  v4 = *(const void **)a2;
  p[0] = nullptr;
  p[1] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v4, v3);
  *(_DWORD *)(a1 + 4) = 2048;
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
  *(_DWORD *)a1 = &off_992598;
  return a1;
}


// ===== 818290 NetStructByteArray<256u>::SetBuffer(void const*,int) =====
void __fastcall NetStructByteArray<256u>::SetBuffer(int a1, const void *a2, size_t a3)
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


// ===== 8182e0 NetStructByteArray<256u>::Read(NetBitStream &) =====
void __fastcall NetStructByteArray<256u>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r10
  void (__fastcall *v5)(int, void **); // r8
  void *p[2]; // [sp+4h] [bp-110h] BYREF
  char v7[256]; // [sp+Ch] [bp-108h] BYREF

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


// ===== 818398 NetStructByteArray<256u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<256u>::~NetStructByteArray(_DWORD *a1)
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


// ===== 8183e0 CRoomAttributes::EraseAttributeInt(tROOM_ATTRIBUTES_INT) =====
int __fastcall CRoomAttributes::EraseAttributeInt(int a1, int a2)
{
  int v4; // r6
  int v5; // r3
  _DWORD v7[7]; // [sp+0h] [bp-28h] BYREF
  char v8; // [sp+1Ch] [bp-Ch]
  int v9; // [sp+20h] [bp-8h] BYREF
  _DWORD v10[7]; // [sp+28h] [bp+0h] BYREF
  char v11; // [sp+44h] [bp+1Ch]
  _DWORD v12[3]; // [sp+48h] [bp+20h] BYREF

  v10[2] = 0;
  v10[3] = 0;
  v10[1] = 32;
  v10[5] = -1;
  v10[0] = &off_963618;
  v10[4] = -1;
  v10[6] = 0;
  v11 = 0;
  if ( v12[0] )
  {
    v12[0] = 0;
    NetStructMember::SetChanged((int)v10);
  }
  v10[0] = &off_9635E8;
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)(a1 + 40 * a2 + 312) + 28))(a1 + 40 * a2 + 312, v12);
  v4 = *(_DWORD *)(a1 + 864) & ~(1 << a2);
  v10[0] = &off_963648;
  v7[1] = 8;
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = -1;
  v8 = 0;
  v7[0] = &off_9636A0;
  v7[4] = -1;
  v7[6] = 0;
  if ( v4 != v9 )
  {
    v9 = v4;
    NetStructMember::SetChanged((int)v7);
  }
  v5 = *(_DWORD *)(a1 + 832);
  v7[0] = &off_963670;
  return (*(int (__fastcall **)(int, int *))(v5 + 28))(a1 + 832, &v9);
}


// ===== 818544 CRoomAttributes::SetAttributeInt(tROOM_ATTRIBUTES_INT,int) =====
int __fastcall CRoomAttributes::SetAttributeInt(int a1, int a2, int a3)
{
  int v4; // r3
  int v7; // r3
  _DWORD v9[7]; // [sp+0h] [bp-54h] BYREF
  char v10; // [sp+1Ch] [bp-38h]
  int v11; // [sp+20h] [bp-34h] BYREF
  _DWORD v12[7]; // [sp+28h] [bp-2Ch] BYREF
  char v13; // [sp+44h] [bp-10h]
  int v14[3]; // [sp+48h] [bp-Ch] BYREF

  v4 = *(_DWORD *)(a1 + 864) | (1 << a2);
  v12[2] = 0;
  v12[3] = 0;
  v12[1] = 8;
  v12[5] = -1;
  v13 = 0;
  v12[0] = &off_9636A0;
  v12[4] = -1;
  v12[6] = 0;
  if ( v4 != v14[0] )
  {
    v14[0] = v4;
    NetStructMember::SetChanged((int)v12);
  }
  v7 = *(_DWORD *)(a1 + 832);
  v12[0] = &off_963670;
  (*(void (__fastcall **)(int, int *))(v7 + 28))(a1 + 832, v14);
  v12[0] = &off_963648;
  v9[2] = 0;
  v9[3] = 0;
  v9[1] = 32;
  v9[5] = -1;
  v10 = 0;
  v9[0] = &off_963618;
  v9[4] = -1;
  v9[6] = 0;
  if ( a3 != v11 )
  {
    v11 = a3;
    NetStructMember::SetChanged((int)v9);
  }
  v9[0] = &off_9635E8;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)(a1 + 40 * a2 + 312) + 28))(a1 + 40 * a2 + 312, &v11);
}


// ===== 8186ac CRoomAttributes::NetRoomAttributes::Copy(CRoomAttributes::NetRoomAttributes const&,uint) =====
int __fastcall CRoomAttributes::NetRoomAttributes::Copy(
        CRoomAttributes::NetRoomAttributes *this,
        const CRoomAttributes::NetRoomAttributes *a2,
        char a3)
{
  int v5; // r7
  int v6; // r10
  CRoomAttributes::NetRoomAttributes *v7; // r8
  CRoomAttributes::NetRoomAttributes *v8; // r6
  int i; // r5
  int v10; // r3
  int v11; // r1
  char *v12; // r0
  int j; // r5
  int v14; // r3
  int v15; // r3
  char *v18; // [sp+8h] [bp-5Ch]
  char *v19; // [sp+Ch] [bp-58h]
  _DWORD v20[7]; // [sp+10h] [bp-54h] BYREF
  char v21; // [sp+2Ch] [bp-38h]
  int v22; // [sp+30h] [bp-34h] BYREF
  _DWORD v23[7]; // [sp+38h] [bp-2Ch] BYREF
  char v24; // [sp+54h] [bp-10h]
  _DWORD v25[3]; // [sp+58h] [bp-Ch] BYREF

  v19 = (char *)this + 824;
  v18 = (char *)this + 864;
  (*(void (**)(void))(*((_DWORD *)this + 206) + 28))();
  (*(void (__fastcall **)(char *, char *))(*((_DWORD *)this + 216) + 28))(v18, (char *)a2 + 896);
  v5 = *((_DWORD *)this + 214);
  v6 = *((_DWORD *)this + 224);
  if ( (a3 & 1) == 0 )
    v5 = 0;
  if ( (a3 & 2) == 0 )
    v6 &= ~1u;
  if ( (a3 & 4) == 0 )
    v6 &= 0xFFFFFFE7;
  if ( (a3 & 8) == 0 )
    v6 &= 0xFFFFFFF9;
  v7 = this;
  v8 = this;
  for ( i = 0; i != 8; ++i )
  {
    while ( (v5 & (1 << i)) == 0 )
    {
      ++i;
      v8 = (CRoomAttributes::NetRoomAttributes *)((char *)v8 + 40);
      if ( i == 8 )
        goto LABEL_13;
    }
    v10 = *((_DWORD *)v8 + 76);
    v11 = 40 * i + 336;
    v12 = (char *)this + 40 * i + 304;
    v8 = (CRoomAttributes::NetRoomAttributes *)((char *)v8 + 40);
    (*(void (__fastcall **)(char *, char *))(v10 + 28))(v12, (char *)a2 + v11);
  }
LABEL_13:
  for ( j = 0; j != 5; ++j )
  {
    if ( (v6 & (1 << j)) != 0 )
      (*(void (__fastcall **)(char *, char *))(*((_DWORD *)v7 + 156) + 28))(
        (char *)this + 40 * j + 624,
        (char *)a2 + 40 * j + 656);
    v7 = (CRoomAttributes::NetRoomAttributes *)((char *)v7 + 40);
  }
  v23[1] = 8;
  v23[2] = 0;
  v23[3] = 0;
  v23[5] = -1;
  v24 = 0;
  v23[0] = &off_9636A0;
  v23[4] = -1;
  v23[6] = 0;
  if ( v5 != v25[0] )
  {
    v25[0] = v5;
    NetStructMember::SetChanged((int)v23);
  }
  v14 = *((_DWORD *)this + 206);
  v23[0] = &off_963670;
  (*(void (__fastcall **)(char *, _DWORD *))(v14 + 28))(v19, v25);
  v23[0] = &off_963648;
  v20[1] = 5;
  v20[2] = 0;
  v20[3] = 0;
  v20[5] = -1;
  v21 = 0;
  v20[0] = &off_9636A0;
  v20[4] = -1;
  v20[6] = 0;
  if ( v6 != v22 )
  {
    v22 = v6;
    NetStructMember::SetChanged((int)v20);
  }
  v15 = *((_DWORD *)this + 216);
  v20[0] = &off_9925E0;
  return (*(int (__fastcall **)(char *, int *))(v15 + 28))(v18, &v22);
}


// ===== 818900 CRoomAttributes::Copy(CRoomAttributes const&) =====
int __fastcall CRoomAttributes::Copy(CRoomAttributes *this, const CRoomAttributes *a2)
{
  CRoomAttributes::NetRoomAttributes *v2; // r4

  v2 = (CRoomAttributes *)((char *)this + 8);
  (*(void (__fastcall **)(CRoomAttributes *))(*(_DWORD *)this + 16))(this);
  return CRoomAttributes::NetRoomAttributes::Copy(v2, (const CRoomAttributes *)((char *)a2 + 8), 15);
}


// ===== 81892c CRoomAttributes::operator=(CRoomAttributes const&) =====
CRoomAttributes *__fastcall CRoomAttributes::operator=(CRoomAttributes *a1, const CRoomAttributes *a2)
{
  if ( a1 != a2 )
    CRoomAttributes::Copy(a1, a2);
  return a1;
}


// ===== 818948 CRoomAttributes::EraseAttributeBin(tROOM_ATTRIBUTES_BIN) =====
int __fastcall CRoomAttributes::EraseAttributeBin(int a1, int a2)
{
  char v3; // r5
  int v4; // r5
  int v5; // r3
  _DWORD v7[7]; // [sp+0h] [bp-2Ch] BYREF
  char v8; // [sp+1Ch] [bp-10h]
  int v9[3]; // [sp+20h] [bp-Ch] BYREF

  v3 = a2;
  (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)(a1 + 40 * a2 + 632) + 40))(a1 + 40 * a2 + 632, 0, 0);
  v4 = *(_DWORD *)(a1 + 904) & ~(1 << v3);
  v7[1] = 5;
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = -1;
  v8 = 0;
  v7[0] = &off_9636A0;
  v7[4] = -1;
  v7[6] = 0;
  if ( v4 != v9[0] )
  {
    v9[0] = v4;
    NetStructMember::SetChanged((int)v7);
  }
  v5 = *(_DWORD *)(a1 + 872);
  v7[0] = &off_9925E0;
  return (*(int (__fastcall **)(int, int *))(v5 + 28))(a1 + 872, v9);
}


// ===== 818a28 CRoomAttributes::Clear(void) =====
unsigned __int8 *__fastcall CRoomAttributes::Clear(CRoomAttributes *this)
{
  int v2; // r3
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-54h] BYREF
  char v6; // [sp+1Ch] [bp-38h]
  int v7; // [sp+20h] [bp-34h] BYREF
  _DWORD v8[7]; // [sp+28h] [bp-2Ch] BYREF
  char v9; // [sp+44h] [bp-10h]
  _DWORD v10[3]; // [sp+48h] [bp-Ch] BYREF

  CRoomAttributes::EraseAttributeInt((int)this, 0);
  CRoomAttributes::EraseAttributeInt((int)this, 1);
  CRoomAttributes::EraseAttributeInt((int)this, 2);
  CRoomAttributes::EraseAttributeInt((int)this, 3);
  CRoomAttributes::EraseAttributeInt((int)this, 4);
  CRoomAttributes::EraseAttributeInt((int)this, 5);
  CRoomAttributes::EraseAttributeInt((int)this, 6);
  CRoomAttributes::EraseAttributeInt((int)this, 7);
  CRoomAttributes::EraseAttributeBin((int)this, 0);
  CRoomAttributes::EraseAttributeBin((int)this, 1);
  CRoomAttributes::EraseAttributeBin((int)this, 2);
  CRoomAttributes::EraseAttributeBin((int)this, 3);
  CRoomAttributes::EraseAttributeBin((int)this, 4);
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 8;
  v8[5] = -1;
  v8[0] = &off_9636A0;
  v8[4] = -1;
  v8[6] = 0;
  v9 = 0;
  if ( v10[0] )
  {
    v10[0] = 0;
    NetStructMember::SetChanged((int)v8);
  }
  v2 = *((_DWORD *)this + 208);
  v8[0] = &off_963670;
  (*(void (__fastcall **)(char *, _DWORD *))(v2 + 28))((char *)this + 832, v10);
  v8[0] = &off_963648;
  v5[1] = 5;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = -1;
  v5[0] = &off_9636A0;
  v5[4] = -1;
  v5[6] = 0;
  v6 = 0;
  if ( v7 )
  {
    v7 = 0;
    NetStructMember::SetChanged((int)v5);
  }
  v3 = *((_DWORD *)this + 218);
  v5[0] = &off_9925E0;
  (*(void (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 872, &v7);
  v5[0] = &off_963648;
  return NetStruct::SetEnabled((unsigned __int8 *)this + 8, 0);
}


// ===== 818c14 CRoomAttributes::~CRoomAttributes() =====
void __fastcall CRoomAttributes::~CRoomAttributes(CRoomAttributes *this)
{
  CRoomAttributes::NetRoomAttributes *v1; // r4

  *(_DWORD *)this = off_992610;
  v1 = (CRoomAttributes *)((char *)this + 8);
  CRoomAttributes::Clear(this);
  CRoomAttributes::NetRoomAttributes::~NetRoomAttributes(v1);
}


// ===== 818c54 CRoomAttributes::~CRoomAttributes() =====
void __fastcall CRoomAttributes::~CRoomAttributes(CRoomAttributes *this)
{
  CRoomAttributes::~CRoomAttributes(this);
  CustomFree(this);
}


// ===== 818c70 CRoomAttributes::~CRoomAttributes() =====
void __fastcall CRoomAttributes::~CRoomAttributes(CRoomAttributes *this)
{
  CRoomAttributes::NetRoomAttributes *v1; // r4

  *(_DWORD *)this = off_992610;
  v1 = (CRoomAttributes *)((char *)this + 8);
  CRoomAttributes::Clear(this);
  CRoomAttributes::NetRoomAttributes::~NetRoomAttributes(v1);
}


// ===== 818cb0 CRoomAttributes::SetAttributeBin(tROOM_ATTRIBUTES_BIN,void const*,uint) =====
int __fastcall CRoomAttributes::SetAttributeBin(int a1, int a2, int a3, int a4)
{
  int v5; // r12
  int v9; // r3
  int (**v11)(); // [sp+0h] [bp-28h] BYREF
  int v12; // [sp+4h] [bp-24h]
  int v13; // [sp+8h] [bp-20h]
  int v14; // [sp+Ch] [bp-1Ch]
  int v15; // [sp+10h] [bp-18h]
  int v16; // [sp+14h] [bp-14h]
  int v17; // [sp+18h] [bp-10h]
  int v18; // [sp+1Ch] [bp-Ch]
  int v19; // [sp+20h] [bp-8h] BYREF

  v5 = *(_DWORD *)(a1 + 904) | (1 << a2);
  v12 = 5;
  v13 = 0;
  v14 = 0;
  v16 = -1;
  LOBYTE(v18) = 0;
  v11 = &off_9636A0;
  v15 = -1;
  v17 = 0;
  if ( v5 != v19 )
  {
    v19 = v5;
    NetStructMember::SetChanged((int)&v11);
  }
  v9 = *(_DWORD *)(a1 + 872);
  v11 = &off_9925E0;
  (*(void (__fastcall **)(int, int *))(v9 + 28))(a1 + 872, &v19);
  return (*(int (__fastcall **)(int, int, int, int, _UNKNOWN **, int, int, int, int, int, int, int))(*(_DWORD *)(a1 + 40 * a2 + 632) + 40))(
           a1 + 40 * a2 + 632,
           a3,
           a4,
           a1 + 40 * a2,
           &off_963648,
           v12,
           v13,
           v14,
           v15,
           v16,
           v17,
           v18);
}


// ===== 818dac CRoomAttributes::NetRoomAttributes::NetRoomAttributes(void) =====
CRoomAttributes::NetRoomAttributes *__fastcall CRoomAttributes::NetRoomAttributes::NetRoomAttributes(
        CRoomAttributes::NetRoomAttributes *this)
{
  char *v2; // r7
  char *v3; // r6
  bool v4; // zf
  int i; // r7
  int v6; // r3
  int v7; // r2
  void *p[3]; // [sp+8h] [bp-Ch] BYREF

  NetStruct::NetStruct(this);
  *(_DWORD *)this = off_992548;
  v2 = (char *)this + 304;
  v3 = (char *)this + 624;
  do
  {
    v4 = *((_DWORD *)v2 + 8) == 0;
    *((_DWORD *)v2 + 1) = 32;
    *((_QWORD *)v2 + 1) = 0;
    *((_DWORD *)v2 + 4) = -1;
    *((_DWORD *)v2 + 5) = -1;
    *((_DWORD *)v2 + 6) = 0;
    v2[28] = 0;
    *(_DWORD *)v2 = &off_963618;
    if ( !v4 )
    {
      *((_DWORD *)v2 + 8) = 0;
      NetStructMember::SetChanged((int)v2);
    }
    *(_DWORD *)v2 = &off_9635E8;
    v2 += 40;
  }
  while ( v2 != v3 );
  for ( i = 0; i != 200; i += 40 )
  {
    p[0] = nullptr;
    p[1] = nullptr;
    NetStructByteArray<256u>::NetStructByteArray((int)&v3[i], (int)p);
    if ( p[0] )
    {
      CustomFree(p[0]);
      p[0] = nullptr;
    }
  }
  v6 = *((_DWORD *)this + 214);
  *((_QWORD *)this + 104) = 0;
  *((_DWORD *)this + 207) = 8;
  *((_DWORD *)this + 211) = -1;
  *((_DWORD *)this + 206) = &off_9636A0;
  *((_DWORD *)this + 210) = -1;
  *((_DWORD *)this + 212) = 0;
  *((_BYTE *)this + 852) = 0;
  if ( v6 )
  {
    *((_DWORD *)this + 214) = 0;
    NetStructMember::SetChanged((int)this + 824);
  }
  v7 = *((_DWORD *)this + 224);
  *((_QWORD *)this + 109) = 0;
  *((_DWORD *)this + 206) = &off_963670;
  *((_DWORD *)this + 217) = 5;
  *((_DWORD *)this + 221) = -1;
  *((_DWORD *)this + 216) = &off_9636A0;
  *((_DWORD *)this + 220) = -1;
  *((_DWORD *)this + 222) = 0;
  *((_BYTE *)this + 892) = 0;
  if ( v7 )
  {
    *((_DWORD *)this + 224) = 0;
    NetStructMember::SetChanged((int)this + 864);
  }
  *((_DWORD *)this + 216) = &off_9925E0;
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 304));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 344));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 384));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 424));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 464));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 504));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 544));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 584));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 624));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 664));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 704));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 744));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 784));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 824));
  NetStruct::DeclareMember((int)this, (CRoomAttributes::NetRoomAttributes *)((char *)this + 864));
  return this;
}


// ===== 819050 CRoomAttributes::CRoomAttributes(CRoomAttributes const&) =====
void __fastcall CRoomAttributes::CRoomAttributes(CRoomAttributes *this, const CRoomAttributes *a2)
{
  *(_DWORD *)this = off_992610;
  CRoomAttributes::NetRoomAttributes::NetRoomAttributes((CRoomAttributes *)((char *)this + 8));
  CRoomAttributes::Copy(this, a2);
}


// ===== 819094 CRoomAttributes::CRoomAttributes(CRoomAttributes const&) =====
void __fastcall CRoomAttributes::CRoomAttributes(CRoomAttributes *this, const CRoomAttributes *a2)
{
  *(_DWORD *)this = off_992610;
  CRoomAttributes::NetRoomAttributes::NetRoomAttributes((CRoomAttributes *)((char *)this + 8));
  CRoomAttributes::Copy(this, a2);
}


// ===== 8190d8 CRoomAttributes::Serialize(NetBitStream &,uint) =====
void __fastcall CRoomAttributes::Serialize(CRoomAttributes *this, NetBitStream *a2, char a3)
{
  _BYTE v6[908]; // [sp+0h] [bp-38Ch] BYREF

  CRoomAttributes::NetRoomAttributes::NetRoomAttributes((CRoomAttributes::NetRoomAttributes *)v6);
  CRoomAttributes::NetRoomAttributes::Copy(
    (CRoomAttributes::NetRoomAttributes *)v6,
    (CRoomAttributes *)((char *)this + 8),
    a3);
  NetStruct::Serialize((NetStruct *)v6, a2, -1, -1);
  CRoomAttributes::NetRoomAttributes::~NetRoomAttributes((CRoomAttributes::NetRoomAttributes *)v6);
}


// ===== 81912c CRoomAttributes::Serialize(char *,uint,uint) =====
void __fastcall CRoomAttributes::Serialize(CRoomAttributes *this, char *a2, size_t a3, char a4)
{
  _BYTE v8[32]; // [sp+0h] [bp-20h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a3);
  CRoomAttributes::Serialize(this, (NetBitStream *)v8, a4);
  NetBitStream::GetBuffer((NetBitStream *)v8, a2, a3);
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 819184 CRoomAttributes::CRoomAttributes(void) =====
void __fastcall CRoomAttributes::CRoomAttributes(CRoomAttributes *this)
{
  *(_DWORD *)this = off_992610;
  CRoomAttributes::NetRoomAttributes::NetRoomAttributes((CRoomAttributes *)((char *)this + 8));
  CRoomAttributes::Clear(this);
}


// ===== 8191c0 CRoomAttributes::CRoomAttributes(void) =====
void __fastcall CRoomAttributes::CRoomAttributes(CRoomAttributes *this)
{
  *(_DWORD *)this = off_992610;
  CRoomAttributes::NetRoomAttributes::NetRoomAttributes((CRoomAttributes *)((char *)this + 8));
  CRoomAttributes::Clear(this);
}


// ===== 8191fc CRoomSearchFilter::CRoomSearchFilter(void) =====
void __fastcall CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter *this)
{
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_992638;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 81923c CRoomSearchFilter::CRoomSearchFilter(void) =====
void __fastcall CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter *this)
{
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_992638;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
}


// ===== 81927c CRoomSearchFilter::Clear(void) =====
_DWORD *__fastcall CRoomSearchFilter::Clear(_DWORD *this)
{
  int v1; // r3
  int v2; // r3

  v1 = *(this + 1);
  if ( v1 != *(this + 2) )
    *(this + 2) = v1;
  v2 = *(this + 4);
  if ( v2 != *(this + 5) )
    *(this + 5) = v2;
  return this;
}


// ===== 8192a0 CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_INT) =====
bool __fastcall CRoomSearchFilter::IsFilterActive(int a1, char a2)
{
  return (*(_DWORD *)(a1 + 28) & (1 << a2)) != 0;
}


// ===== 8192b8 CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_BIN) =====
bool __fastcall CRoomSearchFilter::IsFilterActive(int a1, char a2)
{
  return (*(_DWORD *)(a1 + 32) & (1 << a2)) != 0;
}


// ===== 8192d0 CRoomSearchFilter::EraseSearchAttributeInt(tROOM_ATTRIBUTES_INT) =====
_DWORD *__fastcall CRoomSearchFilter::EraseSearchAttributeInt(_DWORD *result, int a2)
{
  _DWORD *v2; // r2
  _DWORD *v3; // r5
  int v4; // r4
  int v5; // r3
  int v6; // t1
  _DWORD *v7; // r3
  int v8; // r1
  int v9; // r12

  v2 = (_DWORD *)result[1];
  v3 = (_DWORD *)result[2];
  result[7] &= ~(1 << a2);
  v4 = -1431655765 * (v3 - v2);
  if ( v4 )
  {
    if ( a2 == *v2 )
    {
LABEL_8:
      v7 = v2 + 3;
      if ( v2 + 3 != v3 )
      {
        v8 = -1431655765 * (v3 - v7);
        if ( v8 > 0 )
        {
          while ( 1 )
          {
            --v8;
            *v2 = *v7;
            v9 = v2[5];
            v2[1] = v2[4];
            v2[2] = v9;
            v2 += 3;
            if ( !v8 )
              break;
            v7 = v2 + 3;
          }
          v3 = (_DWORD *)result[2];
        }
      }
      result[2] = v3 - 3;
    }
    else
    {
      v5 = 0;
      while ( ++v5 != v4 )
      {
        v6 = v2[3];
        v2 += 3;
        if ( a2 == v6 )
          goto LABEL_8;
      }
    }
  }
  return result;
}


// ===== 8193ac CRoomSearchFilter::EraseSearchAttributeBin(tROOM_ATTRIBUTES_BIN) =====
char *__fastcall CRoomSearchFilter::EraseSearchAttributeBin(_DWORD *a1, int a2)
{
  char *v2; // r7
  int v3; // r3
  char *result; // r0
  int v6; // r12
  int v7; // r3
  int v8; // t1
  char *v9; // r4
  int v10; // r5

  v2 = (char *)a1[5];
  v3 = a1[8] & ~(1 << a2);
  result = (char *)a1[4];
  a1[8] = v3;
  v6 = 678152731 * ((v2 - result) >> 2);
  if ( v6 )
  {
    if ( a2 == *(_DWORD *)result )
    {
LABEL_8:
      v9 = result + 76;
      if ( result + 76 != v2 )
      {
        v10 = 678152731 * ((v2 - v9) >> 2);
        if ( v10 > 0 )
        {
          while ( 1 )
          {
            memcpy(result, v9, 0x4Cu);
            --v10;
            result = v9;
            if ( !v10 )
              break;
            v9 += 76;
          }
          v2 = (char *)a1[5];
        }
      }
      a1[5] = v2 - 76;
    }
    else
    {
      v7 = 0;
      while ( ++v7 != v6 )
      {
        v8 = *((_DWORD *)result + 19);
        result += 76;
        if ( a2 == v8 )
          goto LABEL_8;
      }
    }
  }
  return result;
}


// ===== 819488 CRoomSearchFilter::TestIntValues(int,int,ROOM_SEARCH_OPERATOR) =====
bool __fastcall CRoomSearchFilter::TestIntValues(int a1, int a2, int a3, int a4)
{
  _BOOL4 result; // r0

  switch ( a4 )
  {
    case 0:
      result = a2 == a3;
      break;
    case 1:
      result = a2 != a3;
      break;
    case 2:
      result = a2 < a3;
      break;
    case 3:
      result = a2 <= a3;
      break;
    case 4:
      result = a2 > a3;
      break;
    case 5:
      result = a2 >= a3;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 819510 CRoomSearchFilter::TestBinValues(char *,int,char *,int,ROOM_SEARCH_OPERATOR) =====
int __fastcall CRoomSearchFilter::TestBinValues(int a1, void *a2, size_t a3, void *a4, int a5, int a6)
{
  int result; // r0

  result = a3 == a5 && memcmp(a2, a4, a3) == 0;
  if ( a6 )
    return result ^ 1;
  return result;
}


// ===== 819548 CRoomSearchFilter::TestRoomAttributes(CRoomAttributes &) =====
int __fastcall CRoomSearchFilter::TestRoomAttributes(CRoomSearchFilter *this, CRoomAttributes *a2)
{
  int v2; // r3
  int v5; // r6
  unsigned int v6; // r7
  int AttributeInt; // r0
  int v9; // r3
  int v10; // r6
  unsigned int v11; // r7
  size_t AttributeBin; // r0
  _BYTE v13[256]; // [sp+Ch] [bp-104h] BYREF

  v2 = *((_DWORD *)this + 1);
  if ( -1431655765 * ((*((_DWORD *)this + 2) - v2) >> 2) )
  {
    v5 = 0;
    v6 = 0;
    while ( CRoomAttributes::IsAttibuteActive((int)a2, *(_DWORD *)(v2 + v5)) )
    {
      AttributeInt = CRoomAttributes::GetAttributeInt((int)a2, *(_DWORD *)(*((_DWORD *)this + 1) + v5));
      if ( !CRoomSearchFilter::TestIntValues(
              (int)this,
              AttributeInt,
              *(_DWORD *)(*((_DWORD *)this + 1) + v5 + 8),
              *(_DWORD *)(*((_DWORD *)this + 1) + v5 + 4)) )
        break;
      v2 = *((_DWORD *)this + 1);
      ++v6;
      v5 += 12;
      if ( v6 >= -1431655765 * ((*((_DWORD *)this + 2) - v2) >> 2) )
        goto LABEL_7;
    }
    return 0;
  }
LABEL_7:
  v9 = *((_DWORD *)this + 4);
  if ( -678152731 * ((*((_DWORD *)this + 5) - v9) >> 2) )
  {
    v10 = 0;
    v11 = 0;
    while ( CRoomAttributes::IsAttibuteActive((int)a2, *(_DWORD *)(v9 + v10)) )
    {
      AttributeBin = CRoomAttributes::GetAttributeBin((int)a2, *(_DWORD *)(*((_DWORD *)this + 4) + v10), (int)v13, 256);
      if ( !CRoomSearchFilter::TestBinValues(
              (int)this,
              v13,
              AttributeBin,
              (void *)(*((_DWORD *)this + 4) + v10 + 8),
              *(_DWORD *)(*((_DWORD *)this + 4) + v10 + 72),
              *(_DWORD *)(*((_DWORD *)this + 4) + v10 + 4)) )
        break;
      v9 = *((_DWORD *)this + 4);
      ++v11;
      v10 += 76;
      if ( v11 >= 678152731 * ((*((_DWORD *)this + 5) - v9) >> 2) )
        return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 819730 std::allocator<CRoomSearchFilter::tSearchFilterBin>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<CRoomSearchFilter::tSearchFilterBin>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x35E50D7 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 76 * a2;
  if ( 76 * a2 > 0x80 )
    result = CustomAlloc(76 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n / 0x4C;
  return result;
}


// ===== 8197bc std::vector<CRoomSearchFilter::tSearchFilterBin,std::allocator<CRoomSearchFilter::tSearchFilterBin>>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterBin const*>(uint &,CRoomSearchFilter::tSearchFilterBin const*,CRoomSearchFilter::tSearchFilterBin const*) =====
char *__fastcall std::vector<CRoomSearchFilter::tSearchFilterBin>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterBin const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)std::allocator<CRoomSearchFilter::tSearchFilterBin>::_M_allocate(a1 + 8, *a2, a2);
  v7 = 678152731 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      memcpy(&v6[v8], (const void *)(a3 + v8), 0x4Cu);
      --v7;
      v8 += 76;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 81982c std::vector<CRoomSearchFilter::tSearchFilterBin,std::allocator<CRoomSearchFilter::tSearchFilterBin>>::operator=(std::vector<CRoomSearchFilter::tSearchFilterBin,std::allocator<CRoomSearchFilter::tSearchFilterBin>> const&) =====
int *__fastcall std::vector<CRoomSearchFilter::tSearchFilterBin>::operator=(int *a1, int *a2)
{
  char *v4; // r6
  int v5; // r3
  int v6; // r8
  char *v7; // r2
  int v8; // r9
  int v9; // r5
  int v10; // r1
  int v11; // r7
  int v13; // r10
  int v14; // r7
  int v15; // r5
  int v16; // r5
  int v17; // r6
  int v18; // r7
  char *v19; // r0
  int v20; // r3
  void *v21; // r0
  size_t v22; // r1
  unsigned int v23; // r3
  int v24; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = (char *)*a1;
    v5 = a2[1];
    v6 = *a2;
    v7 = (char *)*a1;
    v8 = 678152731 * ((v5 - *a2) >> 2);
    v9 = v8;
    if ( v8 > (unsigned int)(678152731 * ((a1[2] - *a1) >> 2)) )
    {
      v24 = 678152731 * ((v5 - v6) >> 2);
      v19 = std::vector<CRoomSearchFilter::tSearchFilterBin>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterBin const*>(
              (int)a1,
              (unsigned int *)&v24,
              v6,
              v5);
      v20 = a1[1];
      v4 = v19;
      v21 = (void *)*a1;
      if ( v20 != *a1 )
        v20 += -76 * ((678152731 * ((unsigned int)(v20 - 76 - (_DWORD)v21) >> 2)) & 0x3FFFFFFF) - 76;
      if ( v20 )
      {
        v22 = 4 * ((a1[2] - v20) >> 2);
        if ( v22 > 0x80 )
          CustomFree(v21);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v21, v22);
      }
      v23 = v24;
      *a1 = (int)v4;
      a1[2] = (int)&v4[76 * v23];
      goto LABEL_8;
    }
    v10 = a1[1];
    if ( v8 > (unsigned int)(678152731 * ((v10 - (int)v4) >> 2)) )
    {
      v13 = v6 + 4 * ((v10 - (int)v4) >> 2);
      v14 = 678152731 * ((4 * ((v10 - (int)v4) >> 2)) >> 2);
      if ( v14 > 0 )
      {
        v16 = 0;
        do
        {
          memcpy(&v4[v16], (const void *)(v6 + v16), 0x4Cu);
          --v14;
          v16 += 76;
        }
        while ( v14 );
        v7 = (char *)*a1;
        v15 = a1[1];
        v5 = a2[1];
        v13 = *a2 + 4 * ((v15 - *a1) >> 2);
      }
      else
      {
        v15 = a1[1];
      }
      v17 = 678152731 * ((v5 - v13) >> 2);
      if ( v17 <= 0 )
      {
        v4 = v7;
        goto LABEL_8;
      }
      v18 = 0;
      do
      {
        memcpy((void *)(v15 + v18), (const void *)(v13 + v18), 0x4Cu);
        --v17;
        v18 += 76;
      }
      while ( v17 );
    }
    else
    {
      if ( v8 <= 0 )
      {
LABEL_8:
        a1[1] = (int)&v4[76 * v8];
        return a1;
      }
      v11 = 0;
      do
      {
        memcpy(&v4[v11], (const void *)(v6 + v11), 0x4Cu);
        --v9;
        v11 += 76;
      }
      while ( v9 );
    }
    v4 = (char *)*a1;
    goto LABEL_8;
  }
  return a1;
}


// ===== 819aa4 std::allocator<CRoomSearchFilter::tSearchFilterInt>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<CRoomSearchFilter::tSearchFilterInt>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 819b2c std::vector<CRoomSearchFilter::tSearchFilterInt,std::allocator<CRoomSearchFilter::tSearchFilterInt>>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterInt const*>(uint &,CRoomSearchFilter::tSearchFilterInt const*,CRoomSearchFilter::tSearchFilterInt const*) =====
char *__fastcall std::vector<CRoomSearchFilter::tSearchFilterInt>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterInt const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r5
  int v8; // r3
  char *v9; // r2
  int v10; // r1

  v5 = a4 - a3;
  result = (char *)std::allocator<CRoomSearchFilter::tSearchFilterInt>::_M_allocate(a1 + 8, *a2, a2);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      *(_DWORD *)&result[v8] = *(_DWORD *)(a3 + v8);
      *(_DWORD *)&result[v8 + 4] = *(_DWORD *)(a3 + v8 + 4);
      v9 = &result[v8 + 8];
      v10 = *(_DWORD *)(a3 + v8 + 8);
      --v7;
      v8 += 12;
      *(_DWORD *)v9 = v10;
    }
    while ( v7 );
  }
  return result;
}


// ===== 819ba8 std::vector<CRoomSearchFilter::tSearchFilterBin,std::allocator<CRoomSearchFilter::tSearchFilterBin>>::~vector() =====
int __fastcall std::vector<CRoomSearchFilter::tSearchFilterBin>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 819c08 std::vector<CRoomSearchFilter::tSearchFilterInt,std::allocator<CRoomSearchFilter::tSearchFilterInt>>::~vector() =====
int __fastcall std::vector<CRoomSearchFilter::tSearchFilterInt>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 819c64 CRoomSearchFilter::~CRoomSearchFilter() =====
void __fastcall CRoomSearchFilter::~CRoomSearchFilter(CRoomSearchFilter *this)
{
  *(_DWORD *)this = off_992638;
  std::vector<CRoomSearchFilter::tSearchFilterBin>::~vector((int)this + 16);
  std::vector<CRoomSearchFilter::tSearchFilterInt>::~vector((int)this + 4);
}


// ===== 819ca0 CRoomSearchFilter::~CRoomSearchFilter() =====
void __fastcall CRoomSearchFilter::~CRoomSearchFilter(CRoomSearchFilter *this)
{
  CRoomSearchFilter::~CRoomSearchFilter(this);
  CustomFree(this);
}


// ===== 819cbc CRoomSearchFilter::~CRoomSearchFilter() =====
void __fastcall CRoomSearchFilter::~CRoomSearchFilter(CRoomSearchFilter *this)
{
  *(_DWORD *)this = off_992638;
  std::vector<CRoomSearchFilter::tSearchFilterBin>::~vector((int)this + 16);
  std::vector<CRoomSearchFilter::tSearchFilterInt>::~vector((int)this + 4);
}


// ===== 819cf8 CRoomSearchFilter::SetSearchAttributeInt(tROOM_ATTRIBUTES_INT,ROOM_SEARCH_OPERATOR,int) =====
void __fastcall CRoomSearchFilter::SetSearchAttributeInt(_DWORD *a1, int a2, int a3, int a4)
{
  int *v8; // r6
  int *v9; // r3
  unsigned int v10; // r2
  unsigned int v11; // r1
  _DWORD *v12; // r0
  int v13; // r12
  _DWORD *v14; // r10
  int v15; // r3
  int v16; // r6
  int *v17; // r6
  int v18; // r0
  int v19; // r3
  _DWORD *v20; // r2
  int v21; // r1
  char *v22; // r0
  char *v23; // r3
  size_t v24; // r1
  size_t v25; // r3
  size_t v26; // [sp+4h] [bp-4h] BYREF

  CRoomSearchFilter::EraseSearchAttributeInt(a1, a2);
  v8 = (int *)a1[2];
  v9 = (int *)a1[3];
  a1[7] |= 1 << a2;
  if ( v8 == v9 )
  {
    v10 = -1431655765 * (((int)v8 - a1[1]) >> 2);
    if ( v10 )
      v11 = 1431655766 * (((int)v8 - a1[1]) >> 2);
    else
      v11 = 1;
    if ( v11 > 0x15555555 || v10 > v11 )
      v11 = 357913941;
    v26 = v11;
    v12 = std::allocator<CRoomSearchFilter::tSearchFilterInt>::_M_allocate((int)(a1 + 3), v11, &v26);
    v13 = a1[1];
    v14 = v12;
    v15 = ((int)v8 - v13) >> 2;
    v16 = -1431655765 * v15;
    if ( -1431655765 * v15 > 0 )
    {
      v18 = -1431655765 * v15;
      v19 = 0;
      do
      {
        v14[v19] = *(_DWORD *)(v13 + v19 * 4);
        v14[v19 + 1] = *(_DWORD *)(v13 + v19 * 4 + 4);
        v20 = &v14[v19 + 2];
        v21 = *(_DWORD *)(v13 + v19 * 4 + 8);
        --v18;
        v19 += 3;
        *v20 = v21;
      }
      while ( v18 );
      v17 = &v14[3 * v16];
    }
    else
    {
      v17 = v12;
    }
    v17[1] = a3;
    *v17 = a2;
    v17[2] = a4;
    v22 = (char *)a1[1];
    v23 = (char *)a1[2];
    if ( v23 != v22 )
      v23 += -12 * ((715827883 * ((unsigned int)(v23 - 12 - v22) >> 2)) & 0x3FFFFFFF) - 12;
    if ( v23 )
    {
      v24 = 4 * ((a1[3] - (int)v23) >> 2);
      if ( v24 > 0x80 )
        CustomFree(v22);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v22, v24);
    }
    v25 = v26;
    a1[1] = v14;
    a1[2] = v17 + 3;
    a1[3] = &v14[3 * v25];
  }
  else
  {
    v8[1] = a3;
    v8[2] = a4;
    *v8 = a2;
    a1[2] += 12;
  }
}


// ===== 819edc CRoomSearchFilter::SetSearchAttributeBin(tROOM_ATTRIBUTES_BIN,ROOM_SEARCH_OPERATOR,void *,uint) =====
void __fastcall CRoomSearchFilter::SetSearchAttributeBin(_DWORD *a1, int a2, int a3, const void *a4, size_t a5)
{
  void *v9; // r0
  void *v10; // r7
  unsigned int v11; // r2
  unsigned int v12; // r1
  char *v13; // r0
  char *v14; // r11
  char *v15; // r9
  int v16; // r8
  int v17; // r7
  char *v18; // r3
  char *v19; // r0
  char *v20; // r9
  size_t v21; // r1
  size_t v22; // r3
  int v23; // [sp+8h] [bp-64h]
  int v24; // [sp+Ch] [bp-60h]
  size_t v25; // [sp+14h] [bp-58h] BYREF
  _DWORD v26[19]; // [sp+18h] [bp-54h] BYREF

  CRoomSearchFilter::EraseSearchAttributeBin(a1, a2);
  a1[8] |= 1 << a2;
  LC_API_MEMSET_0(&v26[2], 0, 0x40u);
  v26[0] = a2;
  v26[1] = a3;
  v26[18] = a5;
  memcpy(&v26[2], a4, a5);
  v9 = (void *)a1[5];
  v10 = (void *)a1[6];
  if ( v9 == v10 )
  {
    v11 = 678152731 * (((int)v10 - a1[4]) >> 2);
    if ( v11 )
      v12 = 1356305462 * (((int)v10 - a1[4]) >> 2);
    else
      v12 = 1;
    if ( v12 > 0x35E50D7 || v11 > v12 )
      v12 = 56512727;
    v25 = v12;
    v13 = (char *)std::allocator<CRoomSearchFilter::tSearchFilterBin>::_M_allocate((int)(a1 + 6), v12, &v25);
    v14 = v13;
    v23 = a1[4];
    v24 = 678152731 * (((int)v10 - v23) >> 2);
    if ( v24 > 0 )
    {
      v16 = 678152731 * (((int)v10 - v23) >> 2);
      v17 = 0;
      do
      {
        memcpy(&v14[v17], (const void *)(v23 + v17), 0x4Cu);
        --v16;
        v17 += 76;
      }
      while ( v16 );
      v15 = &v14[76 * v24];
    }
    else
    {
      v15 = v13;
    }
    memcpy(v15, v26, 0x4Cu);
    v18 = (char *)a1[5];
    v19 = (char *)a1[4];
    v20 = v15 + 76;
    if ( v18 != v19 )
      v18 += -76 * ((678152731 * ((unsigned int)(v18 - 76 - v19) >> 2)) & 0x3FFFFFFF) - 76;
    if ( v18 )
    {
      v21 = 4 * ((a1[6] - (int)v18) >> 2);
      if ( v21 > 0x80 )
        CustomFree(v19);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v19, v21);
    }
    v22 = v25;
    a1[4] = v14;
    a1[5] = v20;
    a1[6] = &v14[76 * v22];
  }
  else
  {
    memcpy(v9, v26, 0x4Cu);
    a1[5] += 76;
  }
}


// ===== 81a144 std::vector<CRoomSearchFilter::tSearchFilterInt,std::allocator<CRoomSearchFilter::tSearchFilterInt>>::operator=(std::vector<CRoomSearchFilter::tSearchFilterInt,std::allocator<CRoomSearchFilter::tSearchFilterInt>> const&) =====
int *__fastcall std::vector<CRoomSearchFilter::tSearchFilterInt>::operator=(int *a1, int *a2)
{
  char *v3; // r6
  int v4; // r2
  int v5; // r3
  char *v6; // r8
  int v7; // r5
  int v8; // r12
  int v9; // r10
  int v10; // r3
  char *v11; // r1
  int v12; // r0
  int v14; // r12
  int v15; // r7
  int v16; // r6
  int v17; // r3
  char *v18; // r0
  int v19; // r12
  int v20; // r3
  int v21; // r2
  _DWORD *v22; // r1
  int v23; // r0
  char *v24; // r0
  int v25; // r3
  void *v26; // r0
  size_t v27; // r1
  unsigned int v28; // r3
  int v29; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v3 = (char *)*a1;
    v4 = *a2;
    v5 = a2[1];
    v6 = (char *)*a1;
    v7 = -1431655765 * ((v5 - *a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1431655765 * ((a1[2] - *a1) >> 2)) )
    {
      v29 = -1431655765 * ((v5 - *a2) >> 2);
      v24 = std::vector<CRoomSearchFilter::tSearchFilterInt>::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterInt const*>(
              (int)a1,
              (unsigned int *)&v29,
              v4,
              v5);
      v25 = a1[1];
      v3 = v24;
      v26 = (void *)*a1;
      if ( v25 != *a1 )
        v25 += -12 * ((715827883 * ((unsigned int)(v25 - 12 - (_DWORD)v26) >> 2)) & 0x3FFFFFFF) - 12;
      if ( v25 )
      {
        v27 = 4 * ((a1[2] - v25) >> 2);
        if ( v27 > 0x80 )
          CustomFree(v26);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v26, v27);
      }
      v28 = v29;
      *a1 = (int)v3;
      a1[2] = (int)&v3[12 * v28];
      goto LABEL_8;
    }
    v9 = a1[1];
    if ( v7 > (unsigned int)(-1431655765 * ((v9 - (int)v3) >> 2)) )
    {
      v14 = v4 + 4 * ((v9 - (int)v3) >> 2);
      v15 = -1431655765 * ((4 * ((v9 - (int)v3) >> 2)) >> 2);
      if ( v15 > 0 )
      {
        v17 = 0;
        do
        {
          *(_DWORD *)&v3[v17] = *(_DWORD *)(v4 + v17);
          *(_DWORD *)&v3[v17 + 4] = *(_DWORD *)(v4 + v17 + 4);
          v18 = &v3[v17 + 8];
          v19 = *(_DWORD *)(v4 + v17 + 8);
          --v15;
          v17 += 12;
          *(_DWORD *)v18 = v19;
        }
        while ( v15 );
        v16 = a1[1];
        v6 = (char *)*a1;
        v5 = a2[1];
        v14 = *a2 + 4 * ((v16 - *a1) >> 2);
      }
      else
      {
        v16 = a1[1];
      }
      v20 = -1431655765 * ((v5 - v14) >> 2);
      if ( v20 <= 0 )
      {
        v3 = v6;
        goto LABEL_8;
      }
      v21 = 0;
      do
      {
        *(_DWORD *)(v16 + v21) = *(_DWORD *)(v14 + v21);
        *(_DWORD *)(v16 + v21 + 4) = *(_DWORD *)(v14 + v21 + 4);
        v22 = (_DWORD *)(v16 + v21 + 8);
        v23 = *(_DWORD *)(v14 + v21 + 8);
        --v20;
        v21 += 12;
        *v22 = v23;
      }
      while ( v20 );
    }
    else
    {
      if ( v7 <= 0 )
      {
LABEL_8:
        a1[1] = (int)&v3[12 * v7];
        return a1;
      }
      v10 = 0;
      do
      {
        *(_DWORD *)&v3[v10] = *(_DWORD *)(v4 + v10);
        *(_DWORD *)&v3[v10 + 4] = *(_DWORD *)(v4 + v10 + 4);
        v11 = &v3[v10 + 8];
        v12 = *(_DWORD *)(v4 + v10 + 8);
        --v8;
        v10 += 12;
        *(_DWORD *)v11 = v12;
      }
      while ( v8 );
    }
    v3 = (char *)*a1;
    goto LABEL_8;
  }
  return a1;
}


// ===== 81a3e4 CRoomSearchFilter::Copy(CRoomSearchFilter const&) =====
int *__fastcall CRoomSearchFilter::Copy(CRoomSearchFilter *this, const CRoomSearchFilter *a2)
{
  std::vector<CRoomSearchFilter::tSearchFilterInt>::operator=((int *)this + 1, (int *)a2 + 1);
  return std::vector<CRoomSearchFilter::tSearchFilterBin>::operator=((int *)this + 4, (int *)a2 + 4);
}


// ===== 81a40c CRoomSearchFilter::operator=(CRoomSearchFilter const&) =====
CRoomSearchFilter *__fastcall CRoomSearchFilter::operator=(CRoomSearchFilter *a1, const CRoomSearchFilter *a2)
{
  if ( a1 != a2 )
    CRoomSearchFilter::Copy(a1, a2);
  return a1;
}


// ===== 81a428 CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&) =====
void __fastcall CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter *this, const CRoomSearchFilter *a2)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_992638;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  CRoomSearchFilter::Copy(this, a2);
}


// ===== 81a478 CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&) =====
void __fastcall CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter *this, const CRoomSearchFilter *a2)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_992638;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  CRoomSearchFilter::Copy(this, a2);
}


// ===== 81a4c8 CSignInDummy::SignIn(void) =====
int __fastcall CSignInDummy::SignIn(CSignInDummy *this)
{
  return 1;
}


// ===== 81a4d0 CSignInDummy::SignIn(CSignInCredentials &) =====
int CSignInDummy::SignIn()
{
  return 1;
}


// ===== 81a4d8 CSignInDummy::SignOut(void) =====
void __fastcall CSignInDummy::SignOut(CSignInDummy *this)
{
  ;
}


// ===== 81a4dc CSignIn::Initialize(void) =====
int __fastcall CSignIn::Initialize(CSignIn *this)
{
  if ( !*((_BYTE *)this + 16) )
    *((_BYTE *)this + 16) = 1;
  return 0;
}


// ===== 81a4f4 CSignIn::CancelLogin(void) =====
void __fastcall CSignIn::CancelLogin(CSignIn *this)
{
  ;
}


// ===== 81a4f8 CSignIn::Update(void) =====
void __fastcall CSignIn::Update(CSignIn *this)
{
  ;
}


// ===== 81a4fc CSignIn::Terminate(void) =====
_BYTE *__fastcall CSignIn::Terminate(_BYTE *this)
{
  _BYTE *v1; // r4

  v1 = this;
  if ( *(this + 16) )
  {
    this = (_BYTE *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)this + 20))(this);
    v1[16] = 0;
  }
  return this;
}


// ===== 81a528 CSignIn::Destroy(void) =====
int __fastcall CSignIn::Destroy(CSignIn *this)
{
  int result; // r0

  if ( CSignIn::s_SignIn )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CSignIn::s_SignIn + 32))(CSignIn::s_SignIn);
    if ( CSignIn::s_SignIn )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)CSignIn::s_SignIn + 4))(CSignIn::s_SignIn);
      CSignIn::s_SignIn = 0;
    }
  }
  return result;
}


// ===== 81a588 CEventQueue<_tSignInEvent,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<_tSignInEvent,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 81a58c CSignIn::CSignIn(void) =====
void __fastcall CSignIn::CSignIn(CSignIn *this)
{
  *(_DWORD *)this = off_9926B0;
  CSignInCredentials::CSignInCredentials((CSignIn *)((char *)this + 4), nullptr, nullptr, nullptr);
  *((_BYTE *)this + 17) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 5) = &off_991D70;
  CNetMutex::CNetMutex((CSignIn *)((char *)this + 24));
  *((_DWORD *)this + 8) = (char *)this + 28;
  *((_DWORD *)this + 9) = 100;
  *((_DWORD *)this + 5) = &off_992650;
  *((_DWORD *)this + 7) = (char *)this + 28;
}


// ===== 81a61c CSignIn::CSignIn(void) =====
void __fastcall CSignIn::CSignIn(CSignIn *this)
{
  *(_DWORD *)this = off_9926B0;
  CSignInCredentials::CSignInCredentials((CSignIn *)((char *)this + 4), nullptr, nullptr, nullptr);
  *((_BYTE *)this + 17) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 5) = &off_991D70;
  CNetMutex::CNetMutex((CSignIn *)((char *)this + 24));
  *((_DWORD *)this + 8) = (char *)this + 28;
  *((_DWORD *)this + 9) = 100;
  *((_DWORD *)this + 5) = &off_992650;
  *((_DWORD *)this + 7) = (char *)this + 28;
}


// ===== 81a6ac CSignIn::Get(void) =====
CSignInGLLive *__fastcall CSignIn::Get(CSignIn *this)
{
  CSignInGLLive *v1; // r5
  int v3; // r0
  CSignInGLLive *v4; // r7

  v1 = (CSignInGLLive *)CSignIn::s_SignIn;
  if ( !CSignIn::s_SignIn )
  {
    if ( CSignIn::s_SignInProvider )
    {
      if ( CSignIn::s_SignInProvider == 1 )
      {
        v1 = (CSignInGLLive *)operator new(0x40u, 2);
        CSignInGLLive::CSignInGLLive(v1);
        CSignIn::s_SignIn = (int)v1;
      }
    }
    else
    {
      v3 = operator new(0x28u, 2);
      *(_DWORD *)(v3 + 36) = 0;
      *(_DWORD *)v3 = 0;
      *(_DWORD *)(v3 + 4) = 0;
      *(_DWORD *)(v3 + 8) = 0;
      *(_DWORD *)(v3 + 12) = 0;
      *(_BYTE *)(v3 + 16) = 0;
      *(_BYTE *)(v3 + 17) = 0;
      *(_DWORD *)(v3 + 20) = 0;
      *(_DWORD *)(v3 + 24) = 0;
      *(_DWORD *)(v3 + 28) = 0;
      *(_DWORD *)(v3 + 32) = 0;
      v4 = (CSignInGLLive *)v3;
      CSignIn::CSignIn((CSignIn *)v3);
      v1 = v4;
      *(_DWORD *)v4 = off_992680;
      CSignIn::s_SignIn = (int)v4;
    }
  }
  return v1;
}


// ===== 81a778 CEventQueue<_tSignInEvent,100u>::~CEventQueue() =====
int __fastcall CEventQueue<_tSignInEvent,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 81a7b4 CSignIn::~CSignIn() =====
void __fastcall CSignIn::~CSignIn(CSignIn *this)
{
  _DWORD *v2; // r5
  int v3; // r2
  int v4; // r3
  _DWORD v5[4]; // [sp+4h] [bp+0h] BYREF

  *(_DWORD *)this = off_9926B0;
  v2 = (_DWORD *)((char *)this + 4);
  CSignInCredentials::CSignInCredentials((CSignInCredentials *)v5, nullptr, nullptr, nullptr);
  v3 = v5[1];
  v4 = v5[2];
  ++v2;
  *((_DWORD *)this + 1) = v5[0];
  *v2 = v3;
  v2[1] = v4;
  CSignInCredentials::~CSignInCredentials((CSignInCredentials *)v5);
  *((_DWORD *)this + 5) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 7);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6);
  CSignInCredentials::~CSignInCredentials((CSignIn *)((char *)this + 4));
}


// ===== 81a854 CSignIn::~CSignIn() =====
void __fastcall CSignIn::~CSignIn(CSignIn *this)
{
  CSignIn::~CSignIn(this);
  CustomFree(this);
}


// ===== 81a870 CEventQueue<_tSignInEvent,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<_tSignInEvent,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 81a8b4 CSignIn::~CSignIn() =====
void __fastcall CSignIn::~CSignIn(CSignIn *this)
{
  _DWORD *v2; // r5
  int v3; // r2
  int v4; // r3
  _DWORD v5[4]; // [sp+4h] [bp+0h] BYREF

  *(_DWORD *)this = off_9926B0;
  v2 = (_DWORD *)((char *)this + 4);
  CSignInCredentials::CSignInCredentials((CSignInCredentials *)v5, nullptr, nullptr, nullptr);
  v3 = v5[1];
  v4 = v5[2];
  ++v2;
  *((_DWORD *)this + 1) = v5[0];
  *v2 = v3;
  v2[1] = v4;
  CSignInCredentials::~CSignInCredentials((CSignInCredentials *)v5);
  *((_DWORD *)this + 5) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 7);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6);
  CSignInCredentials::~CSignInCredentials((CSignIn *)((char *)this + 4));
}


// ===== 81a954 CSignInDummy::~CSignInDummy() =====
void __fastcall CSignInDummy::~CSignInDummy(CSignInDummy *this)
{
  *(_DWORD *)this = off_992680;
  CSignIn::~CSignIn(this);
}


// ===== 81a988 CSignInDummy::~CSignInDummy() =====
void __fastcall CSignInDummy::~CSignInDummy(CSignInDummy *this)
{
  *(_DWORD *)this = off_992680;
  CSignIn::~CSignIn(this);
  CustomFree(this);
}


// ===== 81a9c4 CSignInCredentials::CSignInCredentials(char *,char *,void *) =====
void __fastcall CSignInCredentials::CSignInCredentials(CSignInCredentials *this, char *a2, char *a3, void *a4)
{
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 2) = a4;
}


// ===== 81a9cc CSignInCredentials::CSignInCredentials(char *,char *,void *) =====
void __fastcall CSignInCredentials::CSignInCredentials(CSignInCredentials *this, char *a2, char *a3, void *a4)
{
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 2) = a4;
}


// ===== 81a9d4 CSignInCredentials::~CSignInCredentials() =====
void __fastcall CSignInCredentials::~CSignInCredentials(CSignInCredentials *this)
{
  ;
}


// ===== 81a9d8 CSignInCredentials::~CSignInCredentials() =====
void __fastcall CSignInCredentials::~CSignInCredentials(CSignInCredentials *this)
{
  ;
}


// ===== 81a9dc CTransportManager::AbortNetwork(void) =====
void __fastcall CTransportManager::AbortNetwork(CTransportManager *this)
{
  ;
}


// ===== 81a9e0 CTransportManager::GetInstance(void) =====
int __fastcall CTransportManager::GetInstance(CTransportManager *this)
{
  return CTransportManager::s_transportManager;
}


// ===== 81aa00 GetTransportMgr(void) =====
// attributes: thunk
int __fastcall GetTransportMgr(CTransportManager *this)
{
  return CTransportManager::GetInstance(this);
}


// ===== 81aa04 CTransportManager::IsInitialized(void) =====
int __fastcall CTransportManager::IsInitialized(CTransportManager *this)
{
  int result; // r0

  result = CTransportManager::s_transportManager;
  if ( CTransportManager::s_transportManager )
    return *(unsigned __int8 *)(CTransportManager::s_transportManager + 4);
  return result;
}


// ===== 81aa2c CTransportManager::Terminate(void) =====
int __fastcall CTransportManager::Terminate(CTransportManager *this)
{
  int result; // r0

  if ( CTransportManager::s_transportManager )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CTransportManager::s_transportManager + 4))(CTransportManager::s_transportManager);
    if ( CTransportManager::s_transportManager )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)CTransportManager::s_transportManager + 24))(CTransportManager::s_transportManager);
      CTransportManager::s_transportManager = 0;
    }
  }
  return result;
}


// ===== 81aa8c CTransportManager::EnableBroadcast(CNetworkId) =====
unsigned __int16 *__fastcall CTransportManager::EnableBroadcast(int a1, unsigned __int16 *a2)
{
  int v4; // r4
  int v5; // r5
  int v6; // r3
  unsigned __int16 *result; // r0
  unsigned __int16 v8[14]; // [sp+4h] [bp-1Ch] BYREF

  v4 = a1;
  v5 = 0;
  while ( 1 )
  {
    v6 = *(_DWORD *)(v4 + 12);
    result = v8;
    v4 += 4;
    if ( v6 )
    {
      (*(void (__fastcall **)(unsigned __int16 *, int))(*(_DWORD *)v6 + 24))(v8, v6);
      result = (unsigned __int16 *)CNetworkId::IsEqual(v8, a2);
      if ( result )
        break;
    }
    if ( ++v5 == 60 )
      return result;
  }
  return (unsigned __int16 *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4 * v5 + 12) + 48))(*(_DWORD *)(a1 + 4 * v5 + 12));
}


// ===== 81ab0c CTransportManager::DisableBroadcast(CNetworkId) =====
unsigned __int16 *__fastcall CTransportManager::DisableBroadcast(int a1, unsigned __int16 *a2)
{
  int v4; // r4
  int v5; // r5
  int v6; // r3
  unsigned __int16 *result; // r0
  unsigned __int16 v8[14]; // [sp+4h] [bp-1Ch] BYREF

  v4 = a1;
  v5 = 0;
  while ( 1 )
  {
    v6 = *(_DWORD *)(v4 + 12);
    result = v8;
    v4 += 4;
    if ( v6 )
    {
      (*(void (__fastcall **)(unsigned __int16 *, int))(*(_DWORD *)v6 + 24))(v8, v6);
      result = (unsigned __int16 *)CNetworkId::IsEqual(v8, a2);
      if ( result )
        break;
    }
    if ( ++v5 == 60 )
      return result;
  }
  return (unsigned __int16 *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4 * v5 + 12) + 52))(*(_DWORD *)(a1 + 4 * v5 + 12));
}


// ===== 81ab8c CTransportManager::GetTransportByPeer(tTRANSPORT_TYPE,CNetworkId) =====
int __fastcall CTransportManager::GetTransportByPeer(int a1, int a2, int a3)
{
  int v6; // r6
  int i; // r7

  v6 = a1;
  for ( i = 0; i != 60; ++i )
  {
    if ( *(_DWORD *)(v6 + 12)
      && (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v6 + 12) + 32))(*(_DWORD *)(v6 + 12)) == a2
      && (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v6 + 12) + 40))(*(_DWORD *)(v6 + 12), a3) )
    {
      return *(_DWORD *)(a1 + 4 * i + 12);
    }
    v6 += 4;
  }
  return 0;
}


// ===== 81ac0c CTransportManager::IsConnectedTo(CNetworkId &) =====
int __fastcall CTransportManager::IsConnectedTo(CTransportManager *this, CNetworkId *a2)
{
  CTransportManager *v4; // r4
  int i; // r5
  int v6; // r3

  v4 = this;
  for ( i = 0; i != 60; ++i )
  {
    v6 = *((_DWORD *)v4 + 3);
    v4 = (CTransportManager *)((char *)v4 + 4);
    if ( v6 && (*(int (__fastcall **)(int, CNetworkId *))(*(_DWORD *)v6 + 40))(v6, a2) )
      return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + i + 3) + 36))(*((_DWORD *)this + i + 3));
  }
  return 0;
}


// ===== 81ac78 CTransportManager::IsMainThreadBlocked(void) =====
int __fastcall CTransportManager::IsMainThreadBlocked(CTransportManager *this)
{
  return 0;
}


// ===== 81ac80 CTransportManager::SetThreadTimestamp(void) =====
__int64 __fastcall CTransportManager::SetThreadTimestamp(CTransportManager *this)
{
  __int64 (__fastcall ***Online)(_DWORD); // r0
  __int64 result; // r0

  Online = (__int64 (__fastcall ***)(_DWORD))GetOnline(this);
  result = (**Online)(Online);
  *((_QWORD *)this + 32) = result;
  return result;
}


// ===== 81aca4 CTransportManager::Update(void) =====
// attributes: thunk
__int64 __fastcall CTransportManager::Update(CTransportManager *this)
{
  return CTransportManager::SetThreadTimestamp(this);
}


// ===== 81aca8 std::allocator<tTRANSPORT_TYPE>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<tTRANSPORT_TYPE>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 81ad14 std::allocator<tTRANSPORT_TYPE>::deallocate(tTRANSPORT_TYPE*,uint) =====
void __fastcall std::allocator<tTRANSPORT_TYPE>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(a2, 4 * a3);
  }
}


// ===== 81ad30 CTransportManager::GetListenNetworkId(tTRANSPORT_TYPE) =====
int __fastcall CTransportManager::GetListenNetworkId(int a1, int a2, int a3)
{
  int v6; // r5
  _DWORD *v7; // r3
  int v8; // r8
  int v9; // r3
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r2
  int v15; // r3
  __int16 v16; // [sp+4h] [bp-20h] BYREF
  int v17; // [sp+8h] [bp-1Ch]
  __int16 v18; // [sp+Ch] [bp-18h]
  int v19; // [sp+10h] [bp-14h]
  int v20; // [sp+14h] [bp-10h]
  int v21; // [sp+18h] [bp-Ch]

  CNetworkId::Reset((_DWORD *)a1);
  v6 = 0;
  while ( 2 )
  {
    while ( 1 )
    {
      v7 = *(_DWORD **)(a2 + 12);
      if ( v7 )
      {
        if ( a3 )
        {
          if ( (*(int (__fastcall **)(_DWORD))(*v7 + 32))(*(_DWORD *)(a2 + 12)) != a3 )
            goto LABEL_7;
          v7 = *(_DWORD **)(a2 + 12);
        }
        if ( (v7[1] & 1) != 0 )
          break;
      }
LABEL_7:
      ++v6;
      a2 += 4;
      if ( v6 == 60 )
        return a1;
    }
    v8 = (*(int (__fastcall **)(_DWORD *))(*v7 + 32))(v7) - 1;
    (*(void (__fastcall **)(__int16 *, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(&v16, *(_DWORD *)(a2 + 12));
    switch ( v8 )
    {
      case 0:
        v14 = v19;
        ++v6;
        v15 = *(_DWORD *)(a1 + 24) | 1;
        *(_WORD *)(a1 + 8) = v18;
        *(_DWORD *)(a1 + 12) = v14;
        *(_DWORD *)(a1 + 24) = v15;
        a2 += 4;
        if ( v6 != 60 )
          continue;
        break;
      case 1:
        v12 = v17;
        ++v6;
        v13 = *(_DWORD *)(a1 + 24) | 2;
        *(_WORD *)a1 = v16;
        *(_DWORD *)(a1 + 4) = v12;
        *(_DWORD *)(a1 + 24) = v13;
        a2 += 4;
        if ( v6 != 60 )
          continue;
        break;
      case 2:
        ++v6;
        v11 = *(_DWORD *)(a1 + 24) | 4;
        *(_DWORD *)(a1 + 16) = v20;
        *(_DWORD *)(a1 + 24) = v11;
        a2 += 4;
        if ( v6 != 60 )
          continue;
        break;
      case 3:
        v9 = *(_DWORD *)(a1 + 24) | 8;
        *(_DWORD *)(a1 + 20) = v21;
        *(_DWORD *)(a1 + 24) = v9;
        goto LABEL_7;
      default:
        goto LABEL_7;
    }
    return a1;
  }
}


// ===== 81ae94 CTransportManager::IsTransportAvailable(tTRANSPORT_TYPE) =====
int __fastcall CTransportManager::IsTransportAvailable(int a1)
{
  CTransportManager *v1; // r0
  int v2; // r0
  int result; // r0
  int TransportMgr; // r0
  int v5; // [sp+0h] [bp-3Ch] BYREF
  int v6; // [sp+10h] [bp-2Ch]
  _BYTE v7[12]; // [sp+1Ch] [bp-20h] BYREF
  int v8; // [sp+28h] [bp-14h]

  v1 = (CTransportManager *)(a1 - 1);
  switch ( (unsigned int)v1 )
  {
    case 0u:
    case 1u:
      TransportMgr = GetTransportMgr(v1);
      CTransportManager::GetListenNetworkId((int)v7, TransportMgr, 1);
      result = v8;
      if ( v8 )
        result = 1;
      break;
    case 2u:
    case 3u:
      v2 = GetTransportMgr(v1);
      CTransportManager::GetListenNetworkId((int)&v5, v2, 3);
      result = v6;
      if ( v6 )
        result = 1;
      break;
    default:
      result = 1;
      break;
  }
  return result;
}


// ===== 81af10 CNetworkId::Reset(tTRANSPORT_TYPE) =====
_DWORD *__fastcall CNetworkId::Reset(_DWORD *result, int a2)
{
  int v2; // r3

  switch ( a2 )
  {
    case 1:
      result[2] = 0;
      result[3] = 0;
      break;
    case 2:
      result[1] = 0;
      *result = 0;
      break;
    case 3:
      result[4] = 0;
      break;
    case 4:
      result[5] = 0;
      break;
    default:
      break;
  }
  if ( a2 )
    v2 = ~(1 << (a2 - 1));
  else
    v2 = -1;
  result[6] &= v2;
  return result;
}


// ===== 81af88 CTransportManager::PrepareConnectionNetworkId(CNetworkId &) =====
CTransportManager *__fastcall CTransportManager::PrepareConnectionNetworkId(
        CTransportManager *this,
        CNetworkId *a2,
        _DWORD *a3)
{
  _DWORD *v4; // r12
  CTransportManager *v5; // r7
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int i; // r7
  int v15; // r0

  v4 = a3;
  v5 = this;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = v4[3];
  v4 += 4;
  *(_DWORD *)v5 = v8;
  *((_DWORD *)v5 + 1) = v9;
  *((_DWORD *)v5 + 2) = v10;
  *((_DWORD *)v5 + 3) = v11;
  v5 = (CTransportManager *)((char *)v5 + 16);
  v12 = v4[1];
  v13 = v4[2];
  *(_DWORD *)v5 = *v4;
  *((_DWORD *)v5 + 1) = v12;
  *((_DWORD *)v5 + 2) = v13;
  for ( i = 0; i != 60; ++i )
  {
    if ( *((_DWORD *)a2 + 3)
      && (*(int (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)a2 + 3) + 40))(*((_DWORD *)a2 + 3), a3) )
    {
      v15 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 3) + 32))(*((_DWORD *)a2 + 3));
      CNetworkId::Reset(this, v15);
    }
    a2 = (CNetworkId *)((char *)a2 + 4);
  }
  return this;
}


// ===== 81b010 CTransportManager::Send(CTransport *,CNetworkId &,tPACKET_TYPE,void *,int) =====
int __fastcall CTransportManager::Send(int a1, int a2, int a3, char a4, const void *a5, size_t a6)
{
  CConnectionManager *v9; // r0
  int v10; // [sp+0h] [bp-1014h]
  int v11; // [sp+Ch] [bp-1008h] BYREF
  __int16 v12; // [sp+10h] [bp-1004h] BYREF
  char v13; // [sp+12h] [bp-1002h]
  int v14; // [sp+14h] [bp-1000h] BYREF

  if ( a6 > 0xFF8 )
    return -1;
  v9 = (CConnectionManager *)&v12;
  v11 = -1342128411;
  v12 = a6 + 8;
  v13 = a4;
  if ( a6 )
    v9 = (CConnectionManager *)memcpy(&v14, a5, a6);
  if ( !a2 )
    return -1;
  GetConnectionMgr(v9);
  (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 32))(a2);
  v10 = v12;
  CConnectionManager::ReportStatistic();
  return (*(int (__fastcall **)(int, int, int *, _DWORD, int))(*(_DWORD *)a2 + 12))(a2, a3, &v11, v12, v10);
}


// ===== 81b11c CTransportManager::ReceiverCallback(CTransport *,CNetworkId &,char *,int) =====
CConnectionManager *__fastcall CTransportManager::ReceiverCallback(
        CConnectionManager *this,
        CTransport *a2,
        CNetworkId *a3,
        char *a4,
        int a5)
{
  int v5; // r8
  int v7; // r5
  CNetworkId *v8; // r10
  char *v9; // r11
  char *v10; // r6
  CNetworkId *i; // r4
  int v12; // r0
  CTransportManager *v13; // r0
  int v14; // r0
  CTransportManager *TransportMgr; // r0
  int v16; // r0

  v5 = (int)this;
  if ( (int)a4 > 0 )
  {
    v7 = *((__int16 *)a3 + 2);
    v8 = a3;
    if ( v7 >= 0 && (int)a4 >= v7 && *(_DWORD *)a3 == -1342128411 && *((char *)a3 + 6) >= 0 )
    {
      v9 = (char *)a3 + 8;
      v10 = a4;
      for ( i = a3; ; v9 = (char *)i + 8 )
      {
        GetConnectionMgr(this);
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 32))(v5);
        CConnectionManager::ReportStatistic();
        if ( !CTransportManager::IsInitialized(v13) )
          goto LABEL_15;
        v12 = *((_BYTE *)v8 + 6) & 0x7F;
        if ( v12 != 7 )
        {
          v10 -= v7;
          this = (CConnectionManager *)CConnectionManager::sReceiverCallback(
                                         v12,
                                         (unsigned __int16 *)a2,
                                         (int)v9,
                                         v7 - 8);
          if ( (int)v10 <= 0 )
            return this;
          goto LABEL_9;
        }
        TransportMgr = (CTransportManager *)GetTransportMgr((CTransportManager *)&byte_7);
        if ( CTransportManager::IsMainThreadBlocked(TransportMgr) )
        {
LABEL_15:
          v14 = *((_BYTE *)v8 + 6) & 0x7F;
        }
        else
        {
          v16 = GetTransportMgr(nullptr);
          CTransportManager::Send(v16, v5, (int)a2, 8, nullptr, 0);
          v14 = *((_BYTE *)v8 + 6) & 0x7F;
        }
        v10 -= v7;
        this = (CConnectionManager *)CConnectionManager::sReceiverCallback(v14, (unsigned __int16 *)a2, (int)v9, v7 - 8);
        if ( (int)v10 <= 0 )
          return this;
LABEL_9:
        i = (CNetworkId *)((char *)i + v7);
        v7 = *((__int16 *)i + 2);
        v8 = i;
        if ( v7 < 0 || v7 > (int)v10 || *(_DWORD *)i != -1342128411 || *((char *)i + 6) < 0 )
          return this;
      }
    }
  }
  return this;
}


// ===== 81b290 CTransportManager::Send(tTRANSPORT_TYPE,CNetworkId &,tPACKET_TYPE,void *,int) =====
int __fastcall CTransportManager::Send(int a1, int a2, _DWORD *a3, char a4, const void *a5, size_t a6)
{
  _DWORD *v6; // lr
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int TransportByPeer; // r0
  _DWORD v19[8]; // [sp+Ch] [bp-20h] BYREF

  v6 = a3;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = v6[3];
  v6 += 4;
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v15 = v6[1];
  v16 = v6[2];
  v19[4] = *v6;
  v19[5] = v15;
  v19[6] = v16;
  TransportByPeer = CTransportManager::GetTransportByPeer(a1, a2, (int)v19);
  return CTransportManager::Send(a1, TransportByPeer, (int)a3, a4, a5, a6);
}


// ===== 81b2fc CTransportManager::Send(tTRANSPORT_TYPE,tPACKET_TYPE,void *,int) =====
int __fastcall CTransportManager::Send(int a1, int a2, char a3, const void *a4, size_t a5)
{
  char v5; // r7
  int v10; // r7
  int result; // r0
  _DWORD v12[2]; // [sp+Ch] [bp-1Ch] BYREF
  __int16 v13; // [sp+14h] [bp-14h]
  int v14; // [sp+18h] [bp-10h]
  int v15; // [sp+1Ch] [bp-Ch]
  int v16; // [sp+20h] [bp-8h]
  int v17; // [sp+24h] [bp-4h]

  v5 = a2 - 1;
  switch ( a2 )
  {
    case 1:
    case 2:
      CNetworkId::Reset(v12);
      if ( a2 == 2 )
        LOWORD(v12[0]) = 6776;
      else
        v13 = 6776;
      if ( a2 == 2 )
        v12[1] = -1;
      else
        v14 = -1;
      goto LABEL_5;
    case 3:
    case 4:
      CNetworkId::Reset(v12);
      if ( a2 == 4 )
        v16 = -1;
      else
        v15 = -1;
LABEL_5:
      if ( a2 )
        v10 = 1 << v5;
      else
        v10 = 0;
      v17 |= v10;
      result = CTransportManager::Send(a1, a2, v12, a3, a4, a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 81b3c8 CTransportManager::Receive(void) =====
int __fastcall CTransportManager::Receive(int this)
{
  int v1; // r5
  pthread_mutex_t *v2; // r7
  int v3; // r4
  int v4; // r3

  v1 = this;
  if ( *(_BYTE *)(this + 4) && !*(_BYTE *)(this + 252) )
  {
    v2 = (pthread_mutex_t *)(this + 8);
    CNetMutex::Lock((pthread_mutex_t *)(this + 8));
    v3 = v1;
    do
    {
      if ( !*(_BYTE *)(v1 + 252) )
      {
        v4 = *(_DWORD *)(v3 + 12);
        if ( v4 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 16))(*(_DWORD *)(v3 + 12));
      }
      v3 += 4;
    }
    while ( v3 != v1 + 240 );
    return CNetMutex::Unlock(v2);
  }
  return this;
}


// ===== 81b440 CTransportManager::Disconnect(CNetworkId &) =====
int __fastcall CTransportManager::Disconnect(pthread_mutex_t *this, CNetworkId *a2)
{
  pthread_mutex_t *v2; // r8
  pthread_mutex_t *v3; // r4
  int i; // r5
  volatile int value; // r3

  v2 = this + 2;
  v3 = this;
  CNetMutex::Lock(this + 2);
  for ( i = 0; i != 60; ++i )
  {
    if ( v3[3].value )
    {
      if ( (*(int (__fastcall **)(volatile int, CNetworkId *))(*(_DWORD *)v3[3].value + 44))(v3[3].value, a2) )
      {
        value = v3[3].value;
        if ( value )
        {
          (*(void (__fastcall **)(volatile int))(*(_DWORD *)value + 4))(v3[3].value);
          v3[3].value = 0;
        }
      }
    }
    ++v3;
  }
  CNetMutex::Unlock(v2);
  return 0;
}


// ===== 81b4c4 CTransportManager::AddTransport(CTransport *) =====
pthread_mutex_t *__fastcall CTransportManager::AddTransport(pthread_mutex_t *result, volatile int a2)
{
  pthread_mutex_t *v3; // r4
  pthread_mutex_t *v4; // r5
  pthread_mutex_t *v5; // r3
  int i; // r2
  volatile int value; // r1

  v3 = result;
  if ( a2 )
  {
    v4 = result + 2;
    CNetMutex::Lock(result + 2);
    v5 = v3;
    for ( i = 0; i != 60; ++i )
    {
      value = v5[3].value;
      ++v5;
      if ( !value )
      {
        v3[i + 3].value = a2;
        return (pthread_mutex_t *)CNetMutex::Unlock(v4);
      }
    }
    return (pthread_mutex_t *)CNetMutex::Unlock(v4);
  }
  return result;
}


// ===== 81b52c CTransportManager::AcceptCallback(tTRANSPORT_TYPE,CTransport *) =====
pthread_mutex_t *__fastcall CTransportManager::AcceptCallback(CTransportManager *a1, volatile int a2)
{
  pthread_mutex_t *TransportMgr; // r0

  TransportMgr = (pthread_mutex_t *)GetTransportMgr(a1);
  return CTransportManager::AddTransport(TransportMgr, a2);
}


// ===== 81b544 CTransportManager::InitializeInternal(void) =====
int __fastcall CTransportManager::InitializeInternal(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r1

  v1 = this + 2;
  CNetMutex::Lock(this + 2);
  LC_API_MEMSET_0(this + 3, 0, 0xF0u);
  v3 = (unsigned __int64)CTransportManager::SetThreadTimestamp((CTransportManager *)this) >> 32;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)CTransportManager::s_transportManager + 8))(
    CTransportManager::s_transportManager,
    v3);
  *((_BYTE *)this + 4) = 1;
  CNetMutex::Unlock(v1);
  return 0;
}


// ===== 81b5b4 CTransportManager::ReceiverThreadExecute(void) =====
int __fastcall CTransportManager::ReceiverThreadExecute(CTransportManager *this)
{
  CMatching *IsMainThreadBlocked; // r0
  CMatching *v3; // r0
  int result; // r0
  CConnectionManager *v5; // r0
  CConnectionManager *ConnectionMgr; // r0

  IsMainThreadBlocked = (CMatching *)CTransportManager::IsMainThreadBlocked(this);
  if ( IsMainThreadBlocked )
  {
    v3 = (CMatching *)CMatching::Get(IsMainThreadBlocked);
    result = CMatching::IsServer(v3);
    if ( result )
      return (*(int (__fastcall **)(CTransportManager *))(*(_DWORD *)this + 16))(this);
  }
  else
  {
    v5 = (CConnectionManager *)CTransportManager::Receive((int)this);
    ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v5);
    return CConnectionManager::KeepAliveConnections(ConnectionMgr);
  }
  return result;
}


// ===== 81b604 CTransportManager::Connect(CNetworkId &) =====
int __fastcall CTransportManager::Connect(CTransportManager *this, CNetworkId *a2)
{
  CNetworkId *v3; // r1
  _BYTE v4[28]; // [sp+4h] [bp-1Ch] BYREF

  if ( !*((_BYTE *)this + 4) )
    return -1;
  CTransportManager::PrepareConnectionNetworkId((CTransportManager *)v4, this, a2);
  CTransportFactory::ConnectTransport((CTransportFactory *)v4, v3);
  return 0;
}


// ===== 81b644 CTransportManager::InitializeTransport(tTRANSPORT_TYPE) =====
int __fastcall CTransportManager::InitializeTransport(int a1, int a2)
{
  return CTransportFactory::InitializeTransport(a2);
}


// ===== 81b64c CTransportManager::TerminateInternal(void) =====
int __fastcall CTransportManager::TerminateInternal(CTransportManager *this)
{
  int v1; // r6
  pthread_mutex_t *v2; // r4
  CTransportManager *v4; // r5
  int v5; // r3
  CTransportFactory *v6; // r0

  v1 = 0;
  *((_BYTE *)this + 252) = 1;
  *((_BYTE *)this + 4) = 0;
  v2 = (pthread_mutex_t *)((char *)this + 8);
  (*(void (__fastcall **)(CTransportManager *))(*(_DWORD *)this + 12))(this);
  CNetMutex::Lock(v2);
  v4 = this;
  do
  {
    v5 = *((_DWORD *)v4 + 3);
    ++v1;
    if ( v5 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)v4 + 3));
      *((_DWORD *)v4 + 3) = 0;
    }
    v4 = (CTransportManager *)((char *)v4 + 4);
  }
  while ( v1 != 60 );
  v6 = (CTransportFactory *)LC_API_MEMSET_0((char *)this + 12, 0, 0xF0u);
  CTransportFactory::TerminateTransport(v6);
  return CNetMutex::Unlock(v2);
}


// ===== 81b6d4 CTransportManager::~CTransportManager() =====
void __fastcall CTransportManager::~CTransportManager(pthread_mutex_t *this)
{
  this->value = (volatile int)off_9926E0;
  CNetMutex::~CNetMutex(this + 2);
}


// ===== 81b708 CTransportManager::~CTransportManager() =====
void __fastcall CTransportManager::~CTransportManager(pthread_mutex_t *this)
{
  CTransportManager::~CTransportManager(this);
  CustomFree(this);
}


// ===== 81b724 CTransportManager::~CTransportManager() =====
void __fastcall CTransportManager::~CTransportManager(pthread_mutex_t *this)
{
  this->value = (volatile int)off_9926E0;
  CNetMutex::~CNetMutex(this + 2);
}


// ===== 81b758 CTransportManager::CTransportManager(void) =====
void __fastcall CTransportManager::CTransportManager(CTransportManager *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = off_9926E0;
  CNetMutex::CNetMutex((CTransportManager *)((char *)this + 8));
  *((_QWORD *)this + 32) = 0;
  *((_BYTE *)this + 252) = 0;
}


// ===== 81b7ac CTransportManager::CTransportManager(void) =====
void __fastcall CTransportManager::CTransportManager(CTransportManager *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = off_9926E0;
  CNetMutex::CNetMutex((CTransportManager *)((char *)this + 8));
  *((_QWORD *)this + 32) = 0;
  *((_BYTE *)this + 252) = 0;
}


// ===== 81b800 CTransportManager::Initialize(void) =====
int __fastcall CTransportManager::Initialize(CTransportManager *this)
{
  CTransportManager *v1; // r7

  v1 = (CTransportManager *)CTransportManager::s_transportManager;
  if ( !CTransportManager::s_transportManager )
  {
    v1 = (CTransportManager *)operator new(0x110u, 2);
    CTransportManager::CTransportManager(v1);
    *((_DWORD *)v1 + 66) = 0;
    *(_DWORD *)v1 = off_992A78;
    CTransportManager::s_transportManager = (int)v1;
  }
  (**(void (__fastcall ***)(CTransportManager *))v1)(v1);
  if ( CTransportManager::s_transportManager )
    return 0;
  else
    return -1;
}


// ===== 81b888 std::vector<tTRANSPORT_TYPE,std::allocator<tTRANSPORT_TYPE>>::_M_insert_overflow_aux(tTRANSPORT_TYPE*,tTRANSPORT_TYPE const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<tTRANSPORT_TYPE>::_M_insert_overflow_aux(_DWORD *a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  _DWORD *v8; // r4
  char *v9; // r0
  int v10; // r7
  _DWORD *v11; // r7
  int v12; // r2
  int v13; // r3
  _DWORD *v14; // r7
  char *v15; // r3
  size_t v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v5 = (a1[1] - *a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v17 = v6;
  v8 = std::allocator<tTRANSPORT_TYPE>::_M_allocate((int)(a1 + 2), v6, &v17);
  v9 = (char *)*a1;
  v10 = (a2 - *a1) >> 2;
  if ( v10 > 0 )
  {
    v12 = v10;
    v13 = 0;
    do
    {
      --v12;
      v8[v13] = *(_DWORD *)&v9[v13 * 4];
      ++v13;
    }
    while ( v12 );
    v11 = &v8[v10];
  }
  else
  {
    v11 = v8;
  }
  *v11 = *a3;
  v14 = v11 + 1;
  v15 = (char *)a1[1];
  if ( v15 != (char *)*a1 )
    v15 += 4 * ~((unsigned int)&v15[-*a1 - 4] >> 2);
  std::allocator<tTRANSPORT_TYPE>::deallocate((int)(a1 + 2), v15, (a1[2] - (int)v15) >> 2);
  v16 = v17;
  *a1 = v8;
  a1[1] = v14;
  a1[2] = &v8[v16];
}


// ===== 81b970 CNetworkId::GetTransportTypeList(void) =====
CNetworkId *__fastcall CNetworkId::GetTransportTypeList(CNetworkId *this, int a2)
{
  int v2; // r6
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  _DWORD *v8; // r1
  _DWORD *v9; // r2
  _DWORD *v10; // r1
  _DWORD *v11; // r2
  int v12; // [sp+0h] [bp-14h] BYREF
  int v13; // [sp+4h] [bp-10h] BYREF
  int v14; // [sp+8h] [bp-Ch] BYREF
  int v15; // [sp+Ch] [bp-8h] BYREF

  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v2 = *(_DWORD *)(a2 + 24);
  if ( (v2 & 1) != 0 )
  {
    v15 = 1;
    std::vector<tTRANSPORT_TYPE>::_M_insert_overflow_aux(this, 0, &v15);
    v2 = *(_DWORD *)(a2 + 24);
  }
  if ( (v2 & 2) != 0 )
  {
    v10 = *((_DWORD **)this + 1);
    v11 = *((_DWORD **)this + 2);
    v14 = 2;
    if ( v10 == v11 )
    {
      std::vector<tTRANSPORT_TYPE>::_M_insert_overflow_aux(this, (int)v10, &v14);
    }
    else
    {
      *v10 = 2;
      *((_DWORD *)this + 1) += 4;
    }
    v2 = *(_DWORD *)(a2 + 24);
  }
  if ( (v2 & 4) != 0 )
  {
    v8 = *((_DWORD **)this + 1);
    v9 = *((_DWORD **)this + 2);
    v13 = 3;
    if ( v8 == v9 )
    {
      std::vector<tTRANSPORT_TYPE>::_M_insert_overflow_aux(this, (int)v8, &v13);
    }
    else
    {
      *v8 = 3;
      *((_DWORD *)this + 1) += 4;
    }
    v2 = *(_DWORD *)(a2 + 24);
  }
  if ( (v2 & 8) != 0 )
  {
    v6 = *((_DWORD **)this + 1);
    v7 = *((_DWORD **)this + 2);
    v12 = 4;
    if ( v6 == v7 )
    {
      std::vector<tTRANSPORT_TYPE>::_M_insert_overflow_aux(this, (int)v6, &v12);
    }
    else
    {
      *v6 = 4;
      *((_DWORD *)this + 1) += 4;
    }
  }
  return this;
}


// ===== 81baec CTransportManager::SendToAllTransport(tPACKET_TYPE,CNetworkId &,void *,int) =====
void __fastcall CTransportManager::SendToAllTransport(int a1, char a2, _DWORD *a3, const void *a4, size_t a5)
{
  _DWORD *v9; // r3
  unsigned int v10; // r4
  _DWORD *v11; // [sp+Ch] [bp-Ch] BYREF
  int v12; // [sp+10h] [bp-8h]
  int v13; // [sp+14h] [bp-4h] BYREF

  CNetworkId::GetTransportTypeList((CNetworkId *)&v11, (int)a3);
  v9 = v11;
  if ( (unsigned int)(v12 - (_DWORD)v11) >> 2 )
  {
    v10 = 0;
    do
    {
      CTransportManager::Send(a1, v9[v10], a3, a2, a4, a5);
      v9 = v11;
      ++v10;
    }
    while ( v10 < (v12 - (int)v11) >> 2 );
  }
  if ( v9 )
    std::allocator<tTRANSPORT_TYPE>::deallocate((int)&v13, v9, (v13 - (int)v9) >> 2);
}


// ===== 81bb88 CTransportManager::KeepAlive(CNetworkId &) =====
void __fastcall CTransportManager::KeepAlive(CTransportManager *this, CNetworkId *a2)
{
  CTransportManager::SendToAllTransport((int)this, 7, a2, nullptr, 0);
}


// ===== 81bbb0 GLXPlayerMPBaseObserver::OnMPFinishGameSuccess(void) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPFinishGameSuccess(GLXPlayerMPBaseObserver *this)
{
  ;
}


// ===== 81bbb4 GLXPlayerMPBaseObserver::OnMPuPnPTestSuccess(void) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPuPnPTestSuccess(GLXPlayerMPBaseObserver *this)
{
  ;
}


// ===== 81bbb8 GLXPlayerMPBaseObserver::OnMPLeaveGameSuccess(void) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPLeaveGameSuccess(GLXPlayerMPBaseObserver *this)
{
  ;
}


// ===== 81bbbc GLXPlayerMPBaseObserver::OnMPSetParamSuccess(int) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPSetParamSuccess(GLXPlayerMPBaseObserver *this, int a2)
{
  ;
}


// ===== 81bbc0 GLXPlayerMPBaseObserver::OnMPProcessPushMessages(DataPacket *,int) =====
void GLXPlayerMPBaseObserver::OnMPProcessPushMessages()
{
  ;
}


// ===== 81bbc4 GLXPlayerMPBaseObserver::OnMPRejoinLobbySuccess(DataPacket *,bool) =====
void GLXPlayerMPBaseObserver::OnMPRejoinLobbySuccess()
{
  ;
}


// ===== 81bbc8 GLXPlayerMPBaseObserver::OnMPGetLobbyInfo(DataPacket *) =====
void GLXPlayerMPBaseObserver::OnMPGetLobbyInfo()
{
  ;
}


// ===== 81bbcc GLXPlayerMPBaseObserver::OnMPStartGameFailed(int) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPStartGameFailed(GLXPlayerMPBaseObserver *this, int a2)
{
  ;
}


// ===== 81bbd0 GLXPlayerMPBaseObserver::OnMPGetLobbyForName(DataPacket *) =====
void GLXPlayerMPBaseObserver::OnMPGetLobbyForName()
{
  ;
}


// ===== 81bbd4 GLXPlayerMPBaseObserver::OnMPGetLobbyForFriend(DataPacket *) =====
void GLXPlayerMPBaseObserver::OnMPGetLobbyForFriend()
{
  ;
}


// ===== 81bbd8 GLXPlayerMPBaseObserver::OnMPAutoMatchRequeset(int) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPAutoMatchRequeset(GLXPlayerMPBaseObserver *this, int a2)
{
  ;
}


// ===== 81bbdc GLXPlayerMPBaseObserver::OnMPAutoMatchRequesetCancel(void) =====
void __fastcall GLXPlayerMPBaseObserver::OnMPAutoMatchRequesetCancel(GLXPlayerMPBaseObserver *this)
{
  ;
}


// ===== 81bbe0 GLXPlayerMPBaseObserver::OnMPGetPlayerCounterSuccess(DataPacket *) =====
void GLXPlayerMPBaseObserver::OnMPGetPlayerCounterSuccess()
{
  ;
}


// ===== 81bbe4 GLXPlayerMPBaseObserver::OnMPJoinPreDefinedRoomSessionSuccess(DataPacket *) =====
void GLXPlayerMPBaseObserver::OnMPJoinPreDefinedRoomSessionSuccess()
{
  ;
}


// ===== 81bbe8 CMatchingGLLive::SetMemberId(int) =====
int __fastcall CMatchingGLLive::SetMemberId(int this, int a2)
{
  *(_DWORD *)(this + 13888) = a2;
  return this;
}


// ===== 81bbf4 CMatchingGLLive::GenerateNewMemberId(void) =====
int __fastcall CMatchingGLLive::GenerateNewMemberId(CMatchingGLLive *this)
{
  return -1;
}


// ===== 81bbfc CMatchingGLLive::SendConnectRequestMessage(tPACKET_TYPE,int) =====
int CMatchingGLLive::SendConnectRequestMessage()
{
  return 0;
}


// ===== 81bc04 CMatchingGLLive::ProcessConnectRequestMessage(CNetworkId &,NetBitStream &) =====
void __fastcall CMatchingGLLive::ProcessConnectRequestMessage(CMatchingGLLive *this, CNetworkId *a2, NetBitStream *a3)
{
  ;
}


// ===== 81bc08 CMatchingGLLive::ReceiveInvitation(void) =====
int __fastcall CMatchingGLLive::ReceiveInvitation(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc10 CMatchingGLLive::GetInvitationRoomId(void) =====
__int64 __fastcall CMatchingGLLive::GetInvitationRoomId(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc1c CMatchingGLLive::CloseRoom(void) =====
int __fastcall CMatchingGLLive::CloseRoom(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc24 CMatchingGLLive::OpenRoom(bool) =====
int __fastcall CMatchingGLLive::OpenRoom(CMatchingGLLive *this, bool a2)
{
  return 0;
}


// ===== 81bc2c CMatchingGLLive::HideRoom(void) =====
int __fastcall CMatchingGLLive::HideRoom(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc34 CMatchingGLLive::ShowRoom(void) =====
int __fastcall CMatchingGLLive::ShowRoom(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc3c CMatchingGLLive::IsRoomClosed(void) =====
int __fastcall CMatchingGLLive::IsRoomClosed(CMatchingGLLive *this)
{
  return *((unsigned __int8 *)this + 14);
}


// ===== 81bc44 CMatchingGLLive::IsRoomHidden(void) =====
int __fastcall CMatchingGLLive::IsRoomHidden(CMatchingGLLive *this)
{
  return *((unsigned __int8 *)this + 13);
}


// ===== 81bc4c CMatchingGLLive::ProcessFriendEvents(void) =====
int __fastcall CMatchingGLLive::ProcessFriendEvents(CMatchingGLLive *this)
{
  return 0;
}


// ===== 81bc54 CMatchingGLLive::GetTransportType(tPROTOCOL_TYPE) =====
int __fastcall CMatchingGLLive::GetTransportType(int a1, unsigned int a2)
{
  if ( a2 <= 2 )
    return CSWTCH_901[a2];
  else
    return 0;
}


// ===== 81bc74 CMatchingGLLive::ProcessConnectResponseMessage(CNetworkId &,NetBitStream &) =====
void __fastcall CMatchingGLLive::ProcessConnectResponseMessage(CMatchingGLLive *this, CNetworkId *a2, NetBitStream *a3)
{
  ;
}


// ===== 81bc78 CMatchingGLLive::GetMemberMask(int) =====
int __fastcall CMatchingGLLive::GetMemberMask(CMatchingGLLive *this, int a2)
{
  bool v2; // nf
  int result; // r0

  v2 = a2 < 0;
  if ( a2 < 0 )
  {
    result = 0;
  }
  else
  {
    a2 = (unsigned int)(a2 - 1) >> 4;
    result = 1;
  }
  if ( !v2 )
    result <<= a2;
  return result;
}


// ===== 81bc94 CMatchingGLLive::ProcessClientMessage(CNetworkId &,NetBitStream &) =====
void __fastcall CMatchingGLLive::ProcessClientMessage(CMatchingGLLive *this, CNetworkId *a2, NetBitStream *a3)
{
  ;
}


// ===== 81bc98 CMatchingGLLive::InitGLFriends(void) =====
void __fastcall CMatchingGLLive::InitGLFriends(CMatchingGLLive *this)
{
  ;
}


// ===== 81bc9c CMatchingGLLive::GLFriendsListLoaded(void) =====
int __fastcall CMatchingGLLive::GLFriendsListLoaded(CMatchingGLLive *this)
{
  return *((unsigned __int8 *)this + 27616);
}


// ===== 81bca8 CMatchingGLLive::GLFriendsListLoaded(bool) =====
int __fastcall CMatchingGLLive::GLFriendsListLoaded(int this, bool a2)
{
  *(_BYTE *)(this + 27616) = a2;
  return this;
}


// ===== 81bcb4 NetStructString<16u>::TestValue(std::string const&) =====
bool __fastcall NetStructString<16u>::TestValue(int a1, int a2)
{
  return (unsigned int)(*(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20)) <= 0xF;
}


// ===== 81bcd0 CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 81bcd4 CMatchingGLLive::SetGLLivePassword(char const*) =====
char *__fastcall CMatchingGLLive::SetGLLivePassword(CMatchingGLLive *this, const char *a2)
{
  char *result; // r0

  result = (char *)LC_API_STRLEN_0(a2);
  if ( (unsigned int)result <= 0xF )
    return LC_API_STRCPY_0((char *)this + 27634, a2);
  return result;
}


// ===== 81bd08 CMatchingGLLive::SetGLLiveUserName(char const*) =====
char *__fastcall CMatchingGLLive::SetGLLiveUserName(CMatchingGLLive *this, const char *a2)
{
  char *result; // r0

  result = (char *)LC_API_STRLEN_0(a2);
  if ( (unsigned int)result <= 0xF )
    return LC_API_STRCPY_0((char *)this + 27617, a2);
  return result;
}


// ===== 81bd3c CMatchingGLLive::SaveGLLiveProfile(void) =====
int __fastcall CMatchingGLLive::SaveGLLiveProfile(CMatchingGLLive *this)
{
  int v2; // r4
  char *v3; // r6
  size_t v4; // r0
  int v5; // r1
  char *v6; // r5

  v2 = XP_API_FILE_OPEN("profile.sav", "wb");
  if ( v2 )
  {
    v3 = (char *)this + 27392;
    v4 = XP_API_STRLEN("_GLLive_Profile_Head_V_0.0.0.1");
    XP_API_FILE_WRITE("_GLLive_Profile_Head_V_0.0.0.1", 1, v4 + 1, v2);
    XP_API_FILE_WRITE((char *)this + 27633, 1, 1, v2);
    XP_API_FILE_WRITE((char *)this + 27617, 1, 16, v2);
    v5 = *((unsigned __int8 *)this + 27633);
    if ( *((_BYTE *)this + 27633) )
    {
      v6 = (char *)this + 27634;
    }
    else
    {
      v6 = (char *)this + 27634;
      XP_API_MEMSET(v3 + 242, v5, 0x10u);
    }
    XP_API_FILE_WRITE(v6, 1, 16, v2);
    XP_API_FILE_CLOSE(v2);
    return 1;
  }
  else
  {
    XP_DEBUG_OUT("SaveProfile(), Error creating file %s \n", "profile.sav");
    return 0;
  }
}


// ===== 81be2c CMatchingGLLive::LoadGLLiveProfile(void) =====
int __fastcall CMatchingGLLive::LoadGLLiveProfile(CMatchingGLLive *this)
{
  char *v1; // r5
  int v3; // r4
  signed int v4; // r11
  void *v5; // r7

  v1 = (char *)this + 27392;
  v3 = XP_API_FILE_OPEN("profile.sav", "rb");
  XP_API_MEMSET(v1 + 225, 0, 0x10u);
  XP_API_MEMSET(v1 + 242, 0, 0x10u);
  *((_BYTE *)this + 27633) = 0;
  if ( v3 )
  {
    v4 = XP_API_STRLEN("_GLLive_Profile_Head_V_0.0.0.1") + 1;
    if ( v4 >= XP_API_FILE_GET_LENGTH(v3) )
    {
LABEL_6:
      XP_API_FILE_CLOSE(v3);
      return 0;
    }
    v5 = CustomAlloc(v4);
    XP_API_FILE_READ(v5, 1, v4, v3);
    if ( XP_API_STRCMP((const char *)v5, "_GLLive_Profile_Head_V_0.0.0.1") )
    {
      if ( v5 )
        CustomFree(v5);
      goto LABEL_6;
    }
    XP_API_FILE_READ(v1 + 241, 1, 1, v3);
    XP_API_FILE_READ(v1 + 225, 1, 16, v3);
    XP_API_FILE_READ(v1 + 242, 1, 16, v3);
    XP_API_FILE_CLOSE(v3);
    return 1;
  }
  else
  {
    XP_DEBUG_OUT("LoadProfile(), File %s not found \n", "profile.sav");
    return 0;
  }
}


// ===== 81bf88 CMatchingGLLive::IsLoggedIn(void) =====
int __fastcall CMatchingGLLive::IsLoggedIn(CMatchingGLLive *this)
{
  return *((unsigned __int8 *)CSignIn::Get(this) + 17);
}


// ===== 81bf98 CMatchingGLLive::GetServerMemberId(void) =====
int __fastcall CMatchingGLLive::GetServerMemberId(CMatchingGLLive *this)
{
  if ( CMatchingGLLive::s_IsGameStarting )
    return *((_DWORD *)this + 3473);
  if ( *((_BYTE *)CSignIn::Get(this) + 17) )
    return 0;
  return -1;
}


// ===== 81bfe4 CMatchingGLLive::ProcessLostPacket(int,int) =====
int __fastcall CMatchingGLLive::ProcessLostPacket(CMatchingGLLive *this, int a2, int a3)
{
  int *v6; // r5
  int i; // r4
  int v8; // t1
  int v9; // r0
  int result; // r0

  CMatching::ProcessLostPacket(this, a2, a3);
  v6 = (int *)((char *)this + 14848);
  for ( i = 0; i != 32; ++i )
  {
    v8 = *v6;
    v6 += 90;
    v9 = 360 * i + 14848;
    result = (*(int (__fastcall **)(char *, int, int))(v8 + 68))((char *)this + v9, a2, a3);
  }
  return result;
}


// ===== 81c034 CMatchingGLLive::ProcessAcknowledgedPacket(int,int) =====
int __fastcall CMatchingGLLive::ProcessAcknowledgedPacket(CMatchingGLLive *this, int a2, int a3)
{
  int *v6; // r5
  int i; // r4
  int v8; // t1
  int v9; // r0
  int result; // r0

  CMatching::ProcessAcknowledgedPacket(this, a2, a3);
  v6 = (int *)((char *)this + 14848);
  for ( i = 0; i != 32; ++i )
  {
    v8 = *v6;
    v6 += 90;
    v9 = 360 * i + 14848;
    result = (*(int (__fastcall **)(char *, int, int))(v8 + 64))((char *)this + v9, a2, a3);
  }
  return result;
}


// ===== 81c084 CMatchingGLLive::GLSendHighScore(int) =====
int __fastcall CMatchingGLLive::GLSendHighScore(GLXPlayerLeaderboard **this, int a2)
{
  return GLXPlayerLeaderboard::sendHighScore(*(this + 6599), a2, -1, 1);
}


// ===== 81c098 CMatchingGLLive::GetGLFriendsCount(void) =====
GLXPlayerUserFriend *__fastcall CMatchingGLLive::GetGLFriendsCount(CMatchingGLLive *this)
{
  GLXPlayerUserFriend *result; // r0

  result = *((GLXPlayerUserFriend **)this + 6592);
  if ( result )
    return (GLXPlayerUserFriend *)GLXPlayerUserFriend::GetFriendsCount(result);
  return result;
}


// ===== 81c0ac CMatchingGLLive::GetGLFriendState(int) =====
int __fastcall CMatchingGLLive::GetGLFriendState(GLXPlayerUserFriend **this, int a2)
{
  if ( a2 >= 0 && a2 < GLXPlayerUserFriend::GetFriendsCount(*(this + 6592)) )
    return GLXPlayerUserFriend::GetState(*(this + 6592), a2);
  else
    return -1;
}


// ===== 81c0e8 CMatchingGLLive::SendGLFriendInvite(char *) =====
int __fastcall CMatchingGLLive::SendGLFriendInvite(GLXPlayerUserFriend **this, char *a2)
{
  return GLXPlayerUserFriend::sendAddUserFriend(*(this + 6592), a2, nullptr, 0);
}


// ===== 81c0fc CMatchingGLLive::GetGLFriendsName(int) =====
int __fastcall CMatchingGLLive::GetGLFriendsName(GLXPlayerUserFriend **this, int a2)
{
  if ( a2 >= 0 && a2 < GLXPlayerUserFriend::GetFriendsCount(*(this + 6592)) )
    return GLXPlayerUserFriend::GetName(*(this + 6592), a2);
  else
    return 0;
}


// ===== 81c138 CMatchingGLLive::GetGLFriendsNumber(int) =====
int __fastcall CMatchingGLLive::GetGLFriendsNumber(GLXPlayerUserFriend **this, int a2)
{
  if ( a2 >= 0 && a2 < GLXPlayerUserFriend::GetFriendsCount(*(this + 6592)) )
    return GLXPlayerUserFriend::GetUserNumber(*(this + 6592), a2);
  else
    return 0;
}


// ===== 81c174 CMatchingGLLive::SendRequestLostPassword(char *) =====
int __fastcall CMatchingGLLive::SendRequestLostPassword(GLXPlayerUser **this, char *a2)
{
  GLXPlayerUser::sendRetrievalPassword(*(this + 6598), a2);
  return 1;
}


// ===== 81c18c CMatchingGLLive::GetGGI(void) =====
GLXPlayerComponent *__fastcall CMatchingGLLive::GetGGI(CMatchingGLLive *this)
{
  GLXPlayerComponent *result; // r0

  result = *((GLXPlayerComponent **)this + 6596);
  if ( result )
    return (GLXPlayerComponent *)GLXPlayerComponent::GetGGI(result);
  return result;
}


// ===== 81c1a0 CMatchingGLLive::ProcessChangeServerMessage(int,NetBitStream &) =====
int __fastcall CMatchingGLLive::ProcessChangeServerMessage(CMatchingGLLive *this, int a2, NetBitStream *a3)
{
  int v5; // [sp+4h] [bp-4h] BYREF

  NetBitStream::ReadByteArray(a3, (char *)&v5, 4u);
  *((_DWORD *)this + 3473) = v5;
  return CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388619, &v5, 4);
}


// ===== 81c200 CMatchingGLLive::ProcessMemberJoinMessage(int,NetBitStream &) =====
CConnectionManager *__fastcall CMatchingGLLive::ProcessMemberJoinMessage(
        CMatchingGLLive *this,
        int a2,
        NetBitStream *a3)
{
  CConnectionManager *result; // r0
  int v6; // r8
  int v7; // r4
  CConnectionManager *ConnectionMgr; // r0
  int v9; // [sp+4h] [bp-28h]
  int v10; // [sp+8h] [bp-24h] BYREF
  _DWORD v11[8]; // [sp+Ch] [bp-20h] BYREF

  result = (CConnectionManager *)NetBitStream::ReadByte(a3, 8u);
  v6 = (char)result;
  if ( (char)result > 0 )
  {
    v7 = 0;
    do
    {
      CNetworkId::Reset(v11);
      NetBitStream::ReadByteArray(a3, (char *)&v10, 0x20u);
      v9 = v10;
      result = (CConnectionManager *)(*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 108))(this);
      ++v7;
      if ( (CConnectionManager *)v9 != result )
      {
        ConnectionMgr = (CConnectionManager *)GetConnectionMgr(result);
        result = (CConnectionManager *)CConnectionManager::IsConnected(ConnectionMgr, v10);
        if ( !result )
          result = (CConnectionManager *)CEventQueueBase::AddEvent(
                                           (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                           8388614,
                                           &v10,
                                           4);
      }
    }
    while ( v7 < v6 );
  }
  return result;
}


// ===== 81c2c4 CMatchingGLLive::SendClientRequest(void) =====
int __fastcall CMatchingGLLive::SendClientRequest(CMatchingGLLive *this)
{
  CConnectionManager *v1; // r0
  int ConnectionMgr; // r0
  int v3; // r3
  int v4; // r5
  _BYTE v6[4]; // [sp+4h] [bp-28h] BYREF
  int v7; // [sp+8h] [bp-24h]
  unsigned int v8; // [sp+14h] [bp-18h]
  unsigned __int8 v9[4]; // [sp+24h] [bp-8h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v6, 0x800u);
  v9[0] = 2;
  v1 = NetBitStream::WriteByteArray((NetBitStream *)v6, v9, 1u);
  ConnectionMgr = GetConnectionMgr(v1);
  v3 = v8 & 7;
  if ( (v8 & 7) != 0 )
    v3 = 1;
  v4 = CConnectionManager::SendBroadcast(ConnectionMgr, 2, v7, v3 + (v8 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v6);
  return v4;
}


// ===== 81c32c CMatchingGLLive::GetGLXPlayerUserFriendObserver(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerUserFriendObserver(CMatchingGLLive *this)
{
  CMatchingGLLiveFriendObserver *v2; // r5

  if ( s_GLXPlayerUserFriendObserver )
    return s_GLXPlayerUserFriendObserver;
  v2 = (CMatchingGLLiveFriendObserver *)operator new(8u, 2);
  CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(v2);
  s_GLXPlayerUserFriendObserver = (int)v2;
  return (int)v2;
}


// ===== 81c37c CMatchingGLLive::GetGLXPlayerUserFriend(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerUserFriend(CMatchingGLLive *this)
{
  int result; // r0
  GLXPlayerUserFriend *v2; // r6
  CMatchingGLLive *v3; // r0
  _DWORD (**v4)(CMatchingGLLiveFriendObserver *__hidden); // [sp+0h] [bp-8h] BYREF
  char v5; // [sp+4h] [bp-4h]

  result = s_GLXPlayerUserFriend;
  if ( !s_GLXPlayerUserFriend )
  {
    v2 = (GLXPlayerUserFriend *)operator new(0x74u, 2);
    v3 = GLXPlayerUserFriend::GLXPlayerUserFriend(v2);
    s_GLXPlayerUserFriend = (int)v2;
    v4 = &off_9928F0;
    v5 = *(_BYTE *)(CMatchingGLLive::GetGLXPlayerUserFriendObserver(v3) + 4);
    GLXPlayerComponent::RegisterObserver(
      (GLXPlayerComponent *)s_GLXPlayerUserFriend,
      (GLXPlayerObserver *)s_GLXPlayerLoginObserver);
    CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver((CMatchingGLLiveFriendObserver *)&v4);
    return s_GLXPlayerUserFriend;
  }
  return result;
}


// ===== 81c410 CMatchingGLLive::GetGLXPlayerMPLobbyObserver(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerMPLobbyObserver(CMatchingGLLive *this)
{
  CMatchingGLLiveLobbyObserver *v2; // r5

  if ( s_GLXPlayerMPLobbyObserver )
    return s_GLXPlayerMPLobbyObserver;
  v2 = (CMatchingGLLiveLobbyObserver *)operator new(0x4Cu, 2);
  CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(v2);
  s_GLXPlayerMPLobbyObserver = (int)v2;
  return (int)v2;
}


// ===== 81c460 CMatchingGLLive::GetRoomId(void) =====
__int64 __fastcall CMatchingGLLive::GetRoomId(CMatchingGLLive *this)
{
  CSignInGLLive *v1; // r0

  v1 = CSignIn::Get(this);
  if ( *((_BYTE *)v1 + 17) )
    return -1;
  else
    return *(int *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v1) + 8);
}


// ===== 81c494 CMatchingGLLive::GetMemberByMemberId(int) =====
int __fastcall CMatchingGLLive::GetMemberByMemberId(CMatchingGLLive *this, int a2)
{
  CMatchingGLLiveLobbyObserver *GLXPlayerMPLobbyObserver; // r0

  GLXPlayerMPLobbyObserver = (CMatchingGLLiveLobbyObserver *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
  return CMatchingGLLiveLobbyObserver::GetMemberByMemberId(GLXPlayerMPLobbyObserver, a2);
}


// ===== 81c4ac CMatchingGLLive::IsInRoom(void) =====
CMatchingGLLive *__fastcall CMatchingGLLive::IsInRoom(CMatchingGLLive *this)
{
  CMatchingGLLive *result; // r0
  CConnectionManager *ConnectionMgr; // r0

  if ( CMatchingGLLive::s_IsGameStarting )
  {
    if ( CMatching::IsServer(this) )
    {
      return (CMatchingGLLive *)(&dword_0 + 1);
    }
    else
    {
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(nullptr);
      return (CMatchingGLLive *)(CConnectionManager::GetConnectionCount(ConnectionMgr, 0) > 0);
    }
  }
  else
  {
    result = (CMatchingGLLive *)*((unsigned __int8 *)CSignIn::Get(this) + 17);
    if ( result )
      return (CMatchingGLLive *)*(unsigned __int8 *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(result) + 6);
  }
  return result;
}


// ===== 81c524 CMatchingGLLive::GetMemberCount(void) =====
int __fastcall CMatchingGLLive::GetMemberCount(CMatchingGLLive *this)
{
  int result; // r0
  CConnectionManager *ConnectionMgr; // r0
  int GLXPlayerMPLobbyObserver; // r0

  if ( CMatchingGLLive::s_IsGameStarting )
  {
    ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
    return CConnectionManager::GetConnectionCount(ConnectionMgr, 0) + 1;
  }
  else
  {
    result = *(unsigned __int8 *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this) + 6);
    if ( result )
    {
      GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)result);
      return 1022611261
           * ((*(_DWORD *)(GLXPlayerMPLobbyObserver + 40) - *(_DWORD *)(GLXPlayerMPLobbyObserver + 36)) >> 2);
    }
  }
  return result;
}


// ===== 81c598 CMatchingGLLive::GetGLXPlayerLoginObserver(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerLoginObserver(CMatchingGLLive *this)
{
  CSignInGLLiveObserver *v2; // r5

  if ( s_GLXPlayerLoginObserver )
    return s_GLXPlayerLoginObserver;
  v2 = (CSignInGLLiveObserver *)operator new(0x8Cu, 2);
  CSignInGLLiveObserver::CSignInGLLiveObserver(v2);
  s_GLXPlayerLoginObserver = (int)v2;
  return (int)v2;
}


// ===== 81c5e8 CMatchingGLLive::GetGLXPlayerLogin(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerLogin(CMatchingGLLive *this)
{
  int result; // r0
  GLXPlayerLogin *v2; // r7
  CMatchingGLLive *v3; // r0
  int GLXPlayerLoginObserver; // r7
  _DWORD (**v5)(CSignInGLLiveObserver *__hidden); // [sp+0h] [bp-94h] BYREF
  char v6; // [sp+4h] [bp-90h]
  char v7; // [sp+5h] [bp-8Fh]
  _BYTE v8[128]; // [sp+6h] [bp-8Eh] BYREF
  int v9; // [sp+88h] [bp-Ch]

  result = s_GLXPlayerLogin;
  if ( !s_GLXPlayerLogin )
  {
    v2 = (GLXPlayerLogin *)operator new(0x88u, 2);
    v3 = GLXPlayerLogin::GLXPlayerLogin(v2);
    s_GLXPlayerLogin = (int)v2;
    GLXPlayerLoginObserver = CMatchingGLLive::GetGLXPlayerLoginObserver(v3);
    v5 = &off_992A00;
    v6 = *(_BYTE *)(GLXPlayerLoginObserver + 4);
    v7 = *(_BYTE *)(GLXPlayerLoginObserver + 5);
    memcpy(v8, (const void *)(GLXPlayerLoginObserver + 6), sizeof(v8));
    v9 = *(_DWORD *)(GLXPlayerLoginObserver + 136);
    GLXPlayerComponent::RegisterObserver(
      (GLXPlayerComponent *)s_GLXPlayerLogin,
      (GLXPlayerObserver *)s_GLXPlayerLoginObserver);
    CSignInGLLiveObserver::~CSignInGLLiveObserver((CSignInGLLiveObserver *)&v5);
    return s_GLXPlayerLogin;
  }
  return result;
}


// ===== 81c6cc CMatchingGLLive::IsMyFriend(char *) =====
int __fastcall CMatchingGLLive::IsMyFriend(CMatchingGLLive *this, char *a2)
{
  const char *v4; // r0
  int result; // r0
  char *v6; // r5
  char *v7; // r4
  char *v8; // r5

  if ( !a2 )
    return -1;
  v4 = *(const char **)(CMatchingGLLive::GetGLXPlayerLogin(this) + 116);
  if ( !v4 || (result = LC_API_STRCMP_0(v4, a2)) != 0 )
  {
    v6 = (char *)this + 27392;
    v7 = *((char **)this + 6902);
    v8 = v6 + 216;
    while ( 1 )
    {
      if ( v8 == v7 )
        return 2;
      if ( !LC_API_STRCMP_0(*((const char **)v7 + 3), a2) )
        break;
      v7 = *(char **)v7;
    }
    return 1;
  }
  return result;
}


// ===== 81c748 CMatchingGLLive::InitializeFriend(void) =====
int __fastcall CMatchingGLLive::InitializeFriend(CMatchingGLLive *this)
{
  GLXPlayerComponent *v2; // r6
  GLXPlayerComponent *GLXPlayerLogin; // r0
  char *UID; // r0
  int result; // r0

  v2 = *((GLXPlayerComponent **)this + 6592);
  GLXPlayerLogin = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(this);
  UID = (char *)GLXPlayerComponent::GetUID(GLXPlayerLogin);
  GLXPlayerComponent::SetUID(v2, UID);
  result = GLXPlayerUserFriend::sendGetUserFriends(*((GLXPlayerUserFriend **)this + 6592), 0, 0);
  *((_BYTE *)this + 26601) = 1;
  return result;
}


// ===== 81c78c CMatchingGLLive::SendGLFriendsGameInvite(char *) =====
int __fastcall CMatchingGLLive::SendGLFriendsGameInvite(GLXPlayerMessage **this, char *a2)
{
  char *v4; // r8
  int result; // r0
  char *v6; // r6
  char *v7; // r8
  char v8[244]; // [sp+Ch] [bp-144h] BYREF
  char v9[64]; // [sp+10Ch] [bp-44h] BYREF

  strcpy(v9, "title");
  strcpy(v8, "Lets play Dungeon Hunter 2 !");
  v4 = (char *)(this + 6848);
  result = GLXPlayerMessage::SendOnlineMessage(*(this + 6594), a2, 8, v9, v8, 0);
  v6 = (char *)*(this + 6902);
  v7 = v4 + 216;
  while ( v7 != v6 )
  {
    result = LC_API_STRCMP_0(*((const char **)v6 + 3), a2);
    if ( !result )
    {
      v6[17] = 1;
      return result;
    }
    v6 = *(char **)v6;
  }
  return result;
}


// ===== 81c880 CMatchingGLLive::PingRooms(void) =====
int __fastcall CMatchingGLLive::PingRooms(CMatchingGLLive *this)
{
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388624, nullptr, 0);
  return 0;
}


// ===== 81c8b8 CMatchingGLLive::ProcessRoomStatusMessage(int,NetBitStream &) =====
int __fastcall CMatchingGLLive::ProcessRoomStatusMessage(CMatchingGLLive *this, int a2, NetBitStream *a3)
{
  char v4; // lr
  char v5; // r12
  int v6; // r0
  char v8[4]; // [sp+4h] [bp-Ch] BYREF
  int v9; // [sp+8h] [bp-8h]
  int v10; // [sp+Ch] [bp-4h]

  NetBitStream::ReadByteArray(a3, v8, 0xCu);
  v4 = v8[0];
  v5 = v8[1];
  v6 = v9;
  *((_DWORD *)this + 3475) = v10;
  *((_BYTE *)this + 13880) = v4;
  *((_BYTE *)this + 13881) = v5;
  *((_DWORD *)this + 3474) = v6;
  return CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, nullptr, 0);
}


// ===== 81c938 CMatchingGLLive::PacketReceiverCallback(int,char *,int) =====
void __fastcall CMatchingGLLive::PacketReceiverCallback(CMatchingGLLive *this, int a2, char *a3, size_t a4)
{
  void *v8[8]; // [sp+4h] [bp-24h] BYREF
  char v9[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a4);
  NetBitStream::SetBuffer(v8, a3, a4);
  NetBitStream::ReadByteArray((NetBitStream *)v8, v9, 1u);
  switch ( v9[0] )
  {
    case 4:
      CMatchingGLLive::ProcessChangeServerMessage(this, a2, (NetBitStream *)v8);
      break;
    case 5:
      CMatchingGLLive::ProcessRoomStatusMessage(this, a2, (NetBitStream *)v8);
      break;
    case 3:
      CMatchingGLLive::ProcessMemberJoinMessage(this, a2, (NetBitStream *)v8);
      break;
  }
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 81c9e8 CMatchingGLLive::sPacketReceiverCallback(int,char *,int) =====
void __fastcall CMatchingGLLive::sPacketReceiverCallback(CMatchingGLLive *this, char *a2, char *a3, int a4)
{
  CMatchingGLLive::PacketReceiverCallback((CMatchingGLLive *)CMatching::s_Matching, (int)this, a2, (size_t)a3);
}


// ===== 81ca24 CMatchingGLLive::ProcessGLLiveEvents(void) =====
int __fastcall CMatchingGLLive::ProcessGLLiveEvents(CMatchingGLLive *this)
{
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 5, 1) )
    *((_BYTE *)this + 26640) = 1;
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 6, 1) )
    *((_BYTE *)this + 26640) = 0;
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 9, 1) )
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388620, nullptr, 0);
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 10, 1) )
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388621, nullptr, 0);
  return 0;
}


// ===== 81caf8 std::allocator<tMemberInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<tMemberInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n / 0x54;
  return result;
}


// ===== 81cb84 std::vector<int,std::allocator<int>>::vector(uint) [clone] =====
_DWORD *__fastcall std::vector<int>::vector(_DWORD *a1)
{
  char *v2; // r0
  size_t v3; // r3
  size_t v5; // [sp+4h] [bp-4h] BYREF

  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = (char *)std::allocator<int>::_M_allocate((int)(a1 + 2), 0, &v5);
  v3 = v5;
  *a1 = v2;
  a1[1] = v2;
  a1[2] = &v2[4 * v3];
  return a1;
}


// ===== 81cbcc std::allocator<tFriendInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<tFriendInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x2762762 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 104 * a2;
  if ( 104 * a2 > 0x80 )
    result = CustomAlloc(104 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n / 0x68;
  return result;
}


// ===== 81cc54 std::allocator<tGLRoomInfo *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<tGLRoomInfo *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 81ccc4 std::vector<tGLRoomInfo *,std::allocator<tGLRoomInfo *>>::vector(std::vector<tGLRoomInfo *,std::allocator<tGLRoomInfo *>> const&) =====
_DWORD *__fastcall std::vector<tGLRoomInfo *>::vector(_DWORD *a1, int a2)
{
  unsigned int v4; // r1
  char *v5; // r0
  int v6; // r1
  size_t v7; // r2
  int v8; // r2
  char *v9; // r3
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v4 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2;
  v11 = v4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<tGLRoomInfo *>::_M_allocate((int)(a1 + 2), v4, &v11);
  v7 = v11;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[4 * v7];
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v5;
  if ( *(_DWORD *)a2 != v8 )
    v9 = (char *)memcpy(v5, *(const void **)a2, v8 - *(_DWORD *)a2) + v8 - v6;
  a1[1] = v9;
  return a1;
}


// ===== 81cd44 CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::~CEventQueue() =====
int __fastcall CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 81cd80 CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 81cdc4 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,CRoomAttributes>,std::priv::_Select1st<std::pair<ulong long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v2 + 6));
      CustomFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 81ce00 GameCenterInfo::~GameCenterInfo() =====
void __fastcall GameCenterInfo::~GameCenterInfo(char **this)
{
  std::priv::_List_base<std::string,std::allocator<std::string>>::clear(this + 4);
}


// ===== 81ce18 tFriendInfo::~tFriendInfo() =====
void __fastcall tFriendInfo::~tFriendInfo(tFriendInfo *this)
{
  std::string::~string((std::string *)((char *)this + 80));
  std::string::~string((std::string *)((char *)this + 56));
  std::string::~string((std::string *)((char *)this + 32));
  std::string::~string((std::string *)((char *)this + 4));
}


// ===== 81ce48 std::vector<tFriendInfo,std::allocator<tFriendInfo>>::~vector() =====
tFriendInfo **__fastcall std::vector<tFriendInfo>::~vector(tFriendInfo **a1)
{
  tFriendInfo *v1; // r5
  tFriendInfo *v2; // r6
  tFriendInfo *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (tFriendInfo *)((char *)v1 - 104);
    tFriendInfo::~tFriendInfo(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * ((a1[2] - v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 81cec0 CMatchingGLLive::IsFriendWith(char const*,bool) =====
bool __fastcall CMatchingGLLive::IsFriendWith(CMatchingGLLive *this, const char *a2, bool a3)
{
  tFriendInfo *v4; // r6
  tFriendInfo *v5; // r7
  _BOOL4 v6; // r8
  int v7; // r0
  tFriendInfo *v9; // [sp+4h] [bp-Ch] BYREF
  tFriendInfo *v10; // [sp+8h] [bp-8h]

  (*(void (__fastcall **)(tFriendInfo **, CMatchingGLLive *, bool))(*(_DWORD *)this + 140))(&v9, this, a3);
  v4 = v9;
  v5 = v10;
  if ( v9 == v10 )
  {
    v6 = 0;
  }
  else
  {
    do
    {
      v7 = LC_API_STRCMP_0(*((const char **)v4 + 6), a2);
      v4 = (tFriendInfo *)((char *)v4 + 104);
      v6 = v7 == 0;
    }
    while ( v4 != v5 && v7 );
  }
  std::vector<tFriendInfo>::~vector(&v9);
  return v6;
}


// ===== 81cf30 CMatchingGLLive::SendInvitation(char const*,char const*,bool) =====
int __fastcall CMatchingGLLive::SendInvitation(CMatchingGLLive *this, char *a2, char *a3, bool a4)
{
  tFriendInfo *i; // r4
  tFriendInfo *v9; // [sp+Ch] [bp-10h] BYREF
  tFriendInfo *v10; // [sp+10h] [bp-Ch]

  if ( !*(_BYTE *)(*((_DWORD *)this + 6593) + 4) )
    return 1;
  (*(void (__fastcall **)(tFriendInfo **, CMatchingGLLive *, _DWORD))(*(_DWORD *)this + 140))(&v9, this, 0);
  for ( i = v9; i != v10; i = (tFriendInfo *)((char *)i + 104) )
    GLXPlayerMessage::SendOnlineMessage(*((GLXPlayerMessage **)this + 6594), *((char **)i + 6), 8, a2, a3, 0);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388628, nullptr, 0);
  std::vector<tFriendInfo>::~vector(&v9);
  return 0;
}


// ===== 81cffc std::vector<tFriendInfo,std::allocator<tFriendInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<tFriendInfo>::_M_clear_after_move(tFriendInfo **a1)
{
  tFriendInfo *v1; // r4
  tFriendInfo *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (tFriendInfo *)((char *)v1 - 104);
      tFriendInfo::~tFriendInfo(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 8 * ((a1[2] - v1) >> 3);
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v4);
  }
}


// ===== 81d078 NetStructString<16u>::~NetStructString() =====
int __fastcall NetStructString<16u>::~NetStructString(int a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  return a1;
}


// ===== 81d0ac std::vector<tMemberInfo,std::allocator<tMemberInfo>>::~vector() =====
void **__fastcall std::vector<tMemberInfo>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 84;
      *((_DWORD *)v1 + 9) = 0;
      *(_DWORD *)v1 = -1;
      std::string::~string((std::string *)(v1 + 12));
    }
    while ( v2 != v1 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 4 * (((_BYTE *)a1[2] - v4) >> 2);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 81d134 NetStructString<16u>::Read(NetBitStream &) =====
void __fastcall NetStructString<16u>::Read(int a1, NetBitStream *a2)
{
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  NetBitStream::ReadString(&v3, a2);
  (*(void (__fastcall **)(int, std::string *))(*(_DWORD *)a1 + 28))(a1, &v3);
  std::string::~string(&v3);
}


// ===== 81d1a4 NetStructString<16u>::~NetStructString() =====
char *__fastcall NetStructString<16u>::~NetStructString(char *a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  *(_DWORD *)a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 81d1f4 CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct(CMatchingGLLive::MemberInfoNetStruct *this)
{
  int v2; // r1

  *(_DWORD *)this = off_992770;
  *((_DWORD *)this + 76) = &off_963790;
  std::string::~string((std::string *)this + 14);
  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
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


// ===== 81d298 CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct(CMatchingGLLive::MemberInfoNetStruct *this)
{
  CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct(this);
  CustomFree(this);
}


// ===== 81d2b4 CMatchingGLLive::~CMatchingGLLive() =====
void __fastcall CMatchingGLLive::~CMatchingGLLive(CMatchingGLLive *this)
{
  int v1; // r2
  int v3; // r3
  int v4; // r3
  void *v5; // r0
  int v6; // r3
  void *v7; // r6
  void *v8; // r6
  void *v9; // r6
  CMatchingGLLive **v10; // r0
  CMatchingGLLive *v11; // r4
  void *v12; // r0
  size_t v13; // r1
  CMatchingGLLive *v14; // r4
  void (__fastcall **v15)(CMatchingGLLive *); // t1

  v1 = *((_DWORD *)this + 6658);
  *(_DWORD *)this = &off_992830;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 6658) = 0;
  }
  v3 = *((_DWORD *)this + 6596);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 6596));
    *((_DWORD *)this + 6596) = 0;
  }
  v4 = *((_DWORD *)this + 6594);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 6594));
    *((_DWORD *)this + 6594) = 0;
  }
  v5 = *((void **)this + 6595);
  if ( v5 )
  {
    CustomFree(v5);
    *((_DWORD *)this + 6595) = 0;
  }
  v6 = *((_DWORD *)this + 6592);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 6592));
    *((_DWORD *)this + 6592) = 0;
  }
  v7 = *((void **)this + 6593);
  if ( v7 )
  {
    CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver(*((CMatchingGLLiveFriendObserver **)this + 6593));
    CustomFree(v7);
    *((_DWORD *)this + 6593) = 0;
  }
  if ( s_GLXPlayerLogin )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)s_GLXPlayerLogin + 4))(s_GLXPlayerLogin);
    s_GLXPlayerLogin = 0;
  }
  v8 = (void *)s_GLXPlayerLoginObserver;
  if ( s_GLXPlayerLoginObserver )
  {
    CSignInGLLiveObserver::~CSignInGLLiveObserver((CSignInGLLiveObserver *)s_GLXPlayerLoginObserver);
    CustomFree(v8);
    s_GLXPlayerLoginObserver = 0;
  }
  if ( s_GLXPlayerMPLobby )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)s_GLXPlayerMPLobby + 4))(s_GLXPlayerMPLobby);
    s_GLXPlayerMPLobby = 0;
  }
  v9 = (void *)s_GLXPlayerMPLobbyObserver;
  if ( s_GLXPlayerMPLobbyObserver )
  {
    CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver((CMatchingGLLiveLobbyObserver *)s_GLXPlayerMPLobbyObserver);
    CustomFree(v9);
    s_GLXPlayerMPLobbyObserver = 0;
  }
  CMatchingGLLive::s_IsGameStarting = 0;
  v10 = *((CMatchingGLLive ***)this + 6902);
  if ( v10 != (CMatchingGLLive **)((char *)this + 27608) )
  {
    while ( 1 )
    {
      v11 = *v10;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v10, 0x14u);
      if ( v11 == (CMatchingGLLive *)((char *)this + 27608) )
        break;
      v10 = (CMatchingGLLive **)v11;
    }
    v10 = (CMatchingGLLive **)((char *)this + 27608);
  }
  *((_DWORD *)this + 6902) = v10;
  *((_DWORD *)this + 6903) = v10;
  CRoomAttributes::~CRoomAttributes((CMatchingGLLive *)((char *)this + 26688));
  v12 = *((void **)this + 6665);
  if ( v12 )
  {
    v13 = (*((_DWORD *)this + 6667) - (_DWORD)v12) & 0xFFFFFFFC;
    if ( v13 > 0x80 )
      CustomFree(v12);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v12, v13);
  }
  v14 = (CMatchingGLLive *)((char *)this + 26368);
  std::vector<tRoomInfo>::~vector((int *)this + 6661);
  std::string::~string((std::string *)((char *)this + 26608));
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6616);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6615);
  CRoomSearchFilter::~CRoomSearchFilter((CMatchingGLLive *)((char *)this + 26424));
  if ( *((_DWORD *)this + 6604) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_erase(
      (int)this + 26400,
      *((_DWORD **)this + 6601));
    *((_DWORD *)this + 6603) = (char *)this + 26400;
    *((_DWORD *)this + 6604) = 0;
    *((_DWORD *)this + 6602) = (char *)this + 26400;
    *((_DWORD *)this + 6601) = 0;
  }
  do
  {
    v15 = *((void (__fastcall ***)(CMatchingGLLive *))v14 - 90);
    v14 = (CMatchingGLLive *)((char *)v14 - 360);
    (*v15)(v14);
  }
  while ( v14 != (CMatchingGLLive *)((char *)this + 14848) );
  if ( *((_DWORD *)this + 3710) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
      (int)this + 14824,
      *((_DWORD *)this + 3707));
    *((_DWORD *)this + 3709) = (char *)this + 14824;
    *((_DWORD *)this + 3710) = 0;
    *((_DWORD *)this + 3708) = (char *)this + 14824;
    *((_DWORD *)this + 3707) = 0;
  }
  CRoomAttributes::~CRoomAttributes((CMatchingGLLive *)((char *)this + 13904));
  CMatching::~CMatching(this);
}


// ===== 81d5f8 CMatchingGLLive::~CMatchingGLLive() =====
void __fastcall CMatchingGLLive::~CMatchingGLLive(CMatchingGLLive *this)
{
  CMatchingGLLive::~CMatchingGLLive(this);
  CustomFree(this);
}


// ===== 81d614 CMatchingGLLive::~CMatchingGLLive() =====
void __fastcall CMatchingGLLive::~CMatchingGLLive(CMatchingGLLive *this)
{
  int v1; // r2
  int v3; // r3
  int v4; // r3
  void *v5; // r0
  int v6; // r3
  void *v7; // r6
  void *v8; // r6
  void *v9; // r6
  CMatchingGLLive **v10; // r0
  CMatchingGLLive *v11; // r4
  void *v12; // r0
  size_t v13; // r1
  CMatchingGLLive *v14; // r4
  void (__fastcall **v15)(CMatchingGLLive *); // t1

  v1 = *((_DWORD *)this + 6658);
  *(_DWORD *)this = &off_992830;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 6658) = 0;
  }
  v3 = *((_DWORD *)this + 6596);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 6596));
    *((_DWORD *)this + 6596) = 0;
  }
  v4 = *((_DWORD *)this + 6594);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 6594));
    *((_DWORD *)this + 6594) = 0;
  }
  v5 = *((void **)this + 6595);
  if ( v5 )
  {
    CustomFree(v5);
    *((_DWORD *)this + 6595) = 0;
  }
  v6 = *((_DWORD *)this + 6592);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 6592));
    *((_DWORD *)this + 6592) = 0;
  }
  v7 = *((void **)this + 6593);
  if ( v7 )
  {
    CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver(*((CMatchingGLLiveFriendObserver **)this + 6593));
    CustomFree(v7);
    *((_DWORD *)this + 6593) = 0;
  }
  if ( s_GLXPlayerLogin )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)s_GLXPlayerLogin + 4))(s_GLXPlayerLogin);
    s_GLXPlayerLogin = 0;
  }
  v8 = (void *)s_GLXPlayerLoginObserver;
  if ( s_GLXPlayerLoginObserver )
  {
    CSignInGLLiveObserver::~CSignInGLLiveObserver((CSignInGLLiveObserver *)s_GLXPlayerLoginObserver);
    CustomFree(v8);
    s_GLXPlayerLoginObserver = 0;
  }
  if ( s_GLXPlayerMPLobby )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)s_GLXPlayerMPLobby + 4))(s_GLXPlayerMPLobby);
    s_GLXPlayerMPLobby = 0;
  }
  v9 = (void *)s_GLXPlayerMPLobbyObserver;
  if ( s_GLXPlayerMPLobbyObserver )
  {
    CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver((CMatchingGLLiveLobbyObserver *)s_GLXPlayerMPLobbyObserver);
    CustomFree(v9);
    s_GLXPlayerMPLobbyObserver = 0;
  }
  CMatchingGLLive::s_IsGameStarting = 0;
  v10 = *((CMatchingGLLive ***)this + 6902);
  if ( v10 != (CMatchingGLLive **)((char *)this + 27608) )
  {
    while ( 1 )
    {
      v11 = *v10;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v10, 0x14u);
      if ( v11 == (CMatchingGLLive *)((char *)this + 27608) )
        break;
      v10 = (CMatchingGLLive **)v11;
    }
    v10 = (CMatchingGLLive **)((char *)this + 27608);
  }
  *((_DWORD *)this + 6902) = v10;
  *((_DWORD *)this + 6903) = v10;
  CRoomAttributes::~CRoomAttributes((CMatchingGLLive *)((char *)this + 26688));
  v12 = *((void **)this + 6665);
  if ( v12 )
  {
    v13 = (*((_DWORD *)this + 6667) - (_DWORD)v12) & 0xFFFFFFFC;
    if ( v13 > 0x80 )
      CustomFree(v12);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v12, v13);
  }
  v14 = (CMatchingGLLive *)((char *)this + 26368);
  std::vector<tRoomInfo>::~vector((int *)this + 6661);
  std::string::~string((std::string *)((char *)this + 26608));
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6616);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 6615);
  CRoomSearchFilter::~CRoomSearchFilter((CMatchingGLLive *)((char *)this + 26424));
  if ( *((_DWORD *)this + 6604) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_erase(
      (int)this + 26400,
      *((_DWORD **)this + 6601));
    *((_DWORD *)this + 6603) = (char *)this + 26400;
    *((_DWORD *)this + 6604) = 0;
    *((_DWORD *)this + 6602) = (char *)this + 26400;
    *((_DWORD *)this + 6601) = 0;
  }
  do
  {
    v15 = *((void (__fastcall ***)(CMatchingGLLive *))v14 - 90);
    v14 = (CMatchingGLLive *)((char *)v14 - 360);
    (*v15)(v14);
  }
  while ( v14 != (CMatchingGLLive *)((char *)this + 14848) );
  if ( *((_DWORD *)this + 3710) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
      (int)this + 14824,
      *((_DWORD *)this + 3707));
    *((_DWORD *)this + 3709) = (char *)this + 14824;
    *((_DWORD *)this + 3710) = 0;
    *((_DWORD *)this + 3708) = (char *)this + 14824;
    *((_DWORD *)this + 3707) = 0;
  }
  CRoomAttributes::~CRoomAttributes((CMatchingGLLive *)((char *)this + 13904));
  CMatching::~CMatching(this);
}


// ===== 81d958 `global constructor keyed to'.._src_generic_MatchingGLLive_MatchingGLLive.cpp =====
int `global constructor keyed to'.._src_generic_MatchingGLLive_MatchingGLLive.cpp()
{
  CMatchingGLLive::s_eventQueueGLLiveInternal = (int)&off_991D70;
  CNetMutex::CNetMutex((CNetMutex *)&unk_A33830);
  dword_A3383C = 100;
  CMatchingGLLive::s_eventQueueGLLiveInternal = (int)&off_992710;
  dword_A33838 = (int)&dword_A33834;
  dword_A33834 = (int)&dword_A33834;
  _aeabi_atexit(
    (int)&CMatchingGLLive::s_eventQueueGLLiveInternal,
    (int)CEventQueue<_EVENTS_GLLIVE_INTERNAL,100u>::~CEventQueue,
    (int)&_dso_handle);
  std::string::string((std::string *)&CMatchingGLLive::m_GameVersion, "");
  _aeabi_atexit((int)&CMatchingGLLive::m_GameVersion, (int)std::string::~string, (int)&_dso_handle);
  dword_A33884 = 0;
  dword_A3388C = (int)&dword_A33888;
  CMatchingGLLive::s_GameCenterInfo = 0;
  dword_A3387C = 0;
  dword_A33880 = 0;
  dword_A33888 = (int)&dword_A33888;
  return _aeabi_atexit((int)&CMatchingGLLive::s_GameCenterInfo, (int)GameCenterInfo::~GameCenterInfo, (int)&_dso_handle);
}


// ===== 81da68 std::priv::__ucopy<tMemberInfo const*,tMemberInfo*,int>(tMemberInfo const*,tMemberInfo const*,tMemberInfo*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<tMemberInfo const*,tMemberInfo*,int>(int a1, int a2, int a3)
{
  int v3; // r8
  int v4; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a1;
  if ( v3 <= 0 )
    return a3;
  v6 = 1022611261 * ((a2 - a1) >> 2);
  v7 = a3;
  do
  {
    *(_DWORD *)v7 = *(_DWORD *)v4;
    *(_DWORD *)(v7 + 4) = *(_DWORD *)(v4 + 4);
    *(_DWORD *)(v7 + 8) = *(_DWORD *)(v4 + 8);
    std::string::string((std::string *)(v7 + 12), (const std::string *)(v4 + 12));
    --v6;
    *(_DWORD *)(v7 + 36) = *(_DWORD *)(v4 + 36);
    v8 = *(_DWORD *)(v4 + 44);
    v9 = *(_DWORD *)(v4 + 48);
    v10 = *(_DWORD *)(v4 + 52);
    *(_DWORD *)(v7 + 40) = *(_DWORD *)(v4 + 40);
    *(_DWORD *)(v7 + 44) = v8;
    *(_DWORD *)(v7 + 48) = v9;
    *(_DWORD *)(v7 + 52) = v10;
    v11 = *(_DWORD *)(v4 + 60);
    v12 = *(_DWORD *)(v4 + 64);
    v13 = *(_DWORD *)(v4 + 68);
    *(_DWORD *)(v7 + 56) = *(_DWORD *)(v4 + 56);
    *(_DWORD *)(v7 + 60) = v11;
    *(_DWORD *)(v7 + 64) = v12;
    *(_DWORD *)(v7 + 68) = v13;
    *(_BYTE *)(v7 + 72) = *(_DWORD *)(v4 + 72);
    *(_DWORD *)(v7 + 76) = *(_DWORD *)(v4 + 76);
    LOBYTE(v13) = *(_BYTE *)(v4 + 80);
    v4 += 84;
    *(_BYTE *)(v7 + 80) = v13;
    v7 += 84;
  }
  while ( v6 );
  return a3 + 84 * v3;
}


// ===== 81db18 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::vector(std::vector<tMemberInfo,std::allocator<tMemberInfo>> const&) =====
_DWORD *__fastcall std::vector<tMemberInfo>::vector(_DWORD *a1, int *a2)
{
  unsigned int v3; // r1
  char *v5; // r0
  size_t v6; // r3
  size_t v8; // [sp+8h] [bp-8h] BYREF

  v3 = 1022611261 * ((a2[1] - *a2) >> 2);
  v8 = v3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<tMemberInfo>::_M_allocate((int)(a1 + 2), v3, &v8);
  v6 = v8;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[84 * v6];
  a1[1] = std::priv::__ucopy<tMemberInfo const*,tMemberInfo*,int>(*a2, a2[1], (int)v5);
  return a1;
}


// ===== 81dba0 CMatchingGLLive::GetGLLiveMemberIdList(void) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetGLLiveMemberIdList(CMatchingGLLive *this)
{
  int GLXPlayerMPLobbyObserver; // r0
  _DWORD *v3; // r5
  _DWORD *v4; // r3
  bool v5; // zf
  _DWORD *v6; // r6
  unsigned int v8; // r2
  unsigned int v9; // r3
  char *v10; // r0
  char *v11; // r8
  size_t v12; // r6
  char *v13; // r6
  _DWORD *v14; // r6
  void *v15; // r0
  size_t v16; // r1
  size_t v17; // r3
  size_t v18; // r3
  _DWORD *v19; // [sp+0h] [bp-10h] BYREF
  _DWORD *v20; // [sp+4h] [bp-Ch]
  size_t v21; // [sp+Ch] [bp-4h] BYREF

  GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
  std::vector<tMemberInfo>::vector(&v19, (int *)(GLXPlayerMPLobbyObserver + 36));
  v3 = v19;
  v4 = nullptr;
  v5 = v19 == v20;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  if ( !v5 )
  {
    v6 = nullptr;
    while ( 1 )
    {
      if ( v4 != v6 )
      {
        *v6 = *v3;
        *((_DWORD *)this + 1) += 4;
        goto LABEL_6;
      }
      v8 = (*((_DWORD *)this + 1) - *(_DWORD *)this) >> 2;
      if ( v8 )
        v9 = 2 * v8;
      else
        v9 = 1;
      if ( v9 > 0x3FFFFFFF || v8 > v9 )
        v9 = 0x3FFFFFFF;
      v21 = v9;
      v10 = (char *)std::allocator<int>::_M_allocate((int)this + 8, v9, &v21);
      v11 = v10;
      v12 = (size_t)v6 - *(_DWORD *)this;
      if ( v12 )
        v13 = (char *)memmove(v10, *(const void **)this, v12) + v12;
      else
        v13 = v10;
      *(_DWORD *)v13 = *v3;
      v14 = v13 + 4;
      v15 = *(void **)this;
      if ( !*(_DWORD *)this )
        goto LABEL_19;
      v16 = (*((_DWORD *)this + 2) - (_DWORD)v15) & 0xFFFFFFFC;
      if ( v16 <= 0x80 )
        break;
      CustomFree(v15);
      v18 = v21;
      *(_DWORD *)this = v11;
      *((_DWORD *)this + 1) = v14;
      *((_DWORD *)this + 2) = &v11[4 * v18];
LABEL_6:
      v3 += 21;
      if ( v3 == v20 )
        goto LABEL_7;
      v6 = *((_DWORD **)this + 1);
      v4 = *((_DWORD **)this + 2);
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v15, v16);
LABEL_19:
    v17 = v21;
    *(_DWORD *)this = v11;
    *((_DWORD *)this + 1) = v14;
    *((_DWORD *)this + 2) = &v11[4 * v17];
    goto LABEL_6;
  }
LABEL_7:
  std::vector<tMemberInfo>::~vector((void **)&v19);
  return this;
}


// ===== 81dd04 CMatchingGLLive::GetGLLiveMemberId(void) =====
int __fastcall CMatchingGLLive::GetGLLiveMemberId(CMatchingGLLive *this)
{
  int j; // r7
  CSignInGLLive *v4; // r0
  int GLXPlayerMPLobbyObserver; // r0
  CSignIn *v6; // r0
  CSignInGLLive *v7; // r0
  char *M_data; // r5
  char *i; // r7
  int v10; // r8
  int v11; // r5
  char *v12; // r3
  char *v13; // [sp+0h] [bp-5Ch]
  const char *M_finish; // [sp+4h] [bp-58h]
  void *v15[3]; // [sp+10h] [bp-4Ch] BYREF
  std::string v16; // [sp+24h] [bp-38h] BYREF
  std::string v17; // [sp+3Ch] [bp-20h] BYREF

  if ( *((_BYTE *)this + 26600) )
    return -1;
  v4 = CSignIn::Get(this);
  if ( !*((_BYTE *)v4 + 17) )
    return -1;
  GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v4);
  v6 = (CSignIn *)std::vector<tMemberInfo>::vector(v15, (int *)(GLXPlayerMPLobbyObserver + 36));
  v7 = CSignIn::Get(v6);
  std::string::string(&v17, *((char **)v7 + 1));
  M_data = v17._M_start_of_storage._M_data;
  for ( i = v17._M_finish; M_data != i; ++M_data )
    *M_data = tolower(*M_data);
  v10 = 0;
  v11 = 0;
  for ( j = -1; v11 < (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 96))(this); v10 += 84 )
  {
    std::string::string(&v16, (char *)v15[0] + v10 + 40);
    v12 = v16._M_start_of_storage._M_data;
    M_finish = v16._M_finish;
    if ( v16._M_start_of_storage._M_data != v16._M_finish )
    {
      do
      {
        v13 = v12;
        *v12 = tolower(*v12);
        v12 = v13 + 1;
      }
      while ( v13 + 1 != M_finish );
      M_finish = v16._M_start_of_storage._M_data;
    }
    if ( !LC_API_STRCMP_0(M_finish, v17._M_start_of_storage._M_data) )
      j = v11;
    std::string::~string(&v16);
    ++v11;
  }
  std::string::~string(&v17);
  std::vector<tMemberInfo>::~vector(v15);
  return j;
}


// ===== 81dea0 CMatchingGLLive::GetMemberId(void) =====
int __fastcall CMatchingGLLive::GetMemberId(CMatchingGLLive *this)
{
  if ( CMatchingGLLive::s_IsGameStarting )
    return *((_DWORD *)this + 3472);
  else
    return CMatchingGLLive::GetGLLiveMemberId(this);
}


// ===== 81ded4 CMatchingGLLive::IsInRoom(int) =====
unsigned int __fastcall CMatchingGLLive::IsInRoom(CMatchingGLLive *this, int a2)
{
  CConnectionManager *ConnectionMgr; // r0
  _BOOL4 v5; // r4
  int GLXPlayerMPLobbyObserver; // r0
  void *v8[3]; // [sp+4h] [bp-Ch] BYREF

  if ( CMatchingGLLive::s_IsGameStarting )
  {
    if ( *((_DWORD *)this + 3472) == a2 )
    {
      return (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 100))(this);
    }
    else
    {
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
      return CConnectionManager::IsConnected(ConnectionMgr, a2);
    }
  }
  else
  {
    GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
    std::vector<tMemberInfo>::vector(v8, (int *)(GLXPlayerMPLobbyObserver + 36));
    v5 = a2 >= 0 && a2 < (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 96))(this);
    std::vector<tMemberInfo>::~vector(v8);
  }
  return v5;
}


// ===== 81df90 CMatchingGLLive::GetMemberName(int) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetMemberName(CMatchingGLLive *this, int a2, int a3)
{
  int GLXPlayerMPLobbyObserver; // r0
  char *v6; // r1
  char *v8; // [sp+0h] [bp-10h] BYREF
  char *v9; // [sp+4h] [bp-Ch]

  GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
  std::vector<tMemberInfo>::vector(&v8, (int *)(GLXPlayerMPLobbyObserver + 36));
  v6 = v8;
  if ( v8 == v9 )
  {
LABEL_6:
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 0x10u);
    **((_BYTE **)this + 4) = 0;
  }
  else
  {
    while ( *(_DWORD *)v6 != a3 )
    {
      v6 += 84;
      if ( v6 == v9 )
        goto LABEL_6;
    }
    std::string::string((std::string *)this, v6 + 40);
  }
  std::vector<tMemberInfo>::~vector((void **)&v8);
  return this;
}


// ===== 81e024 tFriendInfo::tFriendInfo(tFriendInfo const&) =====
void __fastcall tFriendInfo::tFriendInfo(tFriendInfo *this, const tFriendInfo *a2)
{
  *(_DWORD *)this = *(_DWORD *)a2;
  std::string::string((std::string *)((char *)this + 4), (const std::string *)((char *)a2 + 4));
  *((_DWORD *)this + 7) = *((_DWORD *)a2 + 7);
  std::string::string((std::string *)((char *)this + 32), (const std::string *)((char *)a2 + 32));
  std::string::string((std::string *)((char *)this + 56), (const std::string *)((char *)a2 + 56));
  std::string::string((std::string *)((char *)this + 80), (const std::string *)((char *)a2 + 80));
}


// ===== 81e070 std::vector<tFriendInfo,std::allocator<tFriendInfo>>::push_back(tFriendInfo const&) =====
void __fastcall std::vector<tFriendInfo>::push_back(tFriendInfo **a1, const tFriendInfo *a2)
{
  tFriendInfo *v3; // r5
  tFriendInfo *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  tFriendInfo *v8; // r0
  tFriendInfo *v9; // r9
  int v10; // r5
  tFriendInfo *v11; // r10
  tFriendInfo *v12; // r5
  int v13; // r8
  int v14; // r7
  tFriendInfo *v15; // r3
  size_t v16; // [sp+4h] [bp-4h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  if ( v4 == v3 )
  {
    v6 = -991146299 * ((v3 - *a1) >> 3);
    if ( v6 )
      v7 = -1982292598 * ((v3 - *a1) >> 3);
    else
      v7 = 1;
    if ( v7 > 0x2762762 || v6 > v7 )
      v7 = 41297762;
    v16 = v7;
    v8 = (tFriendInfo *)std::allocator<tFriendInfo>::_M_allocate((int)(a1 + 2), v7, &v16);
    v9 = *a1;
    v10 = -991146299 * ((v3 - *a1) >> 3);
    v11 = v8;
    if ( v10 > 0 )
    {
      v13 = v10;
      v14 = 0;
      do
      {
        tFriendInfo::tFriendInfo((tFriendInfo *)((char *)v11 + v14), (tFriendInfo *)((char *)v9 + v14));
        --v13;
        v14 += 104;
      }
      while ( v13 );
      v12 = (tFriendInfo *)((char *)v11 + 104 * v10);
    }
    else
    {
      v12 = v8;
    }
    tFriendInfo::tFriendInfo(v12, a2);
    std::vector<tFriendInfo>::_M_clear_after_move(a1);
    v15 = (tFriendInfo *)((char *)v11 + 104 * v16);
    *a1 = v11;
    a1[2] = v15;
    a1[1] = (tFriendInfo *)((char *)v12 + 104);
  }
  else
  {
    tFriendInfo::tFriendInfo(v4, a2);
    a1[1] = (tFriendInfo *)((char *)a1[1] + 104);
  }
}


// ===== 81e184 tMatchingPeer::tMatchingPeer(tMatchingPeer const&) =====
int __fastcall tMatchingPeer::tMatchingPeer(int a1, int a2)
{
  _DWORD *v2; // lr
  _DWORD *v4; // r12
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2

  v2 = (_DWORD *)(a2 + 4);
  *(_DWORD *)a1 = *(_DWORD *)a2;
  v4 = (_DWORD *)(a1 + 4);
  v6 = *(_DWORD *)(a2 + 4);
  v7 = *(_DWORD *)(a2 + 8);
  v8 = v2[2];
  v9 = v2[3];
  v2 += 4;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4 += 4;
  v10 = v2[1];
  v11 = v2[2];
  *v4 = *v2;
  v4[1] = v10;
  v4[2] = v11;
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(a2 + 32);
  std::string::string((std::string *)(a1 + 36), (const std::string *)(a2 + 36));
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 64) = *(_DWORD *)(a2 + 64);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)(a1 + 72), (const CRoomAttributes *)(a2 + 72));
  return a1;
}


// ===== 81e1e8 NetStructString<16u>::Write(NetBitStream &) =====
void __fastcall NetStructString<16u>::Write(int a1, NetBitStream *a2)
{
  unsigned int v3; // [sp+Ch] [bp-14h]
  std::string v4; // 0:r1.12,12:^0.12 BYREF

  std::string::string((std::string *)&v4._M_finish, (const std::string *)(a1 + 32));
  *(_DWORD *)&v4._M_buffers._M_static_buf[4] = 16;
  v4._M_buffers._M_end_of_storage = (char *)&v4._M_finish;
  NetBitStream::WriteString(a2, v4, v3);
  std::string::~string((std::string *)&v4._M_finish);
}


// ===== 81e25c CMatchingGLLive::SyncMemberId(void) =====
CSignInGLLive *__fastcall CMatchingGLLive::SyncMemberId(CMatchingGLLive *this)
{
  CSignInGLLive *result; // r0
  int GLXPlayerMPLobbyObserver; // r0
  int v4; // r7
  int v5; // r11
  std::string *v6; // r6
  char *v7; // r8
  int v8; // r4
  size_t v9; // r1
  int v10; // r9
  size_t v11; // r1
  int MemberIndex; // r0
  std::string *v13; // r0
  char *M_data; // r4
  char *i; // r5
  int v16; // r4
  int v17; // r5
  int v18; // r0
  char *v19; // r0
  int v20; // r8
  char *v21; // r5
  int v22; // r6
  char *v23; // r4
  std::string *v24; // [sp+4h] [bp-70h]
  char *v25; // [sp+8h] [bp-6Ch]
  void *p[3]; // [sp+20h] [bp-54h] BYREF
  void *__p[3]; // [sp+2Ch] [bp-48h] BYREF
  char v28; // [sp+38h] [bp-3Ch] BYREF
  char v29; // [sp+3Ch] [bp-38h] BYREF
  char *v30; // [sp+4Ch] [bp-28h]
  char *v31; // [sp+50h] [bp-24h]
  std::string v32; // [sp+54h] [bp-20h] BYREF

  result = CSignIn::Get(this);
  if ( *((_BYTE *)result + 17) && CMatchingGLLive::s_IsGameStarting )
  {
    GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(result);
    v4 = 1022611261 * ((*(_DWORD *)(GLXPlayerMPLobbyObserver + 40) - *(_DWORD *)(GLXPlayerMPLobbyObserver + 36)) >> 2);
    v5 = 0;
    v6 = (std::string *)&v29;
    v7 = &v28;
    while ( 1 )
    {
      (*(void (__fastcall **)(void **, CMatchingGLLive *))(*(_DWORD *)this + 136))(__p, this);
      result = (CSignInGLLive *)__p[0];
      v8 = ((char *)__p[1] - (char *)__p[0]) >> 2;
      if ( __p[0] )
      {
        v9 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
        if ( v9 > 0x80 )
          CustomFree(__p[0]);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p[0], v9);
      }
      if ( v5 >= v8 )
        break;
      (*(void (__fastcall **)(void **, CMatchingGLLive *))(*(_DWORD *)this + 136))(p, this);
      v10 = *((_DWORD *)p[0] + v5);
      if ( p[0] )
      {
        v11 = ((char *)p[2] - (char *)p[0]) & 0xFFFFFFFC;
        if ( v11 > 0x80 )
          CustomFree(p[0]);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(p[0], v11);
      }
      MemberIndex = CMatching::GetMemberIndex(this, v10);
      v13 = std::string::string(&v32, (const std::string *)((char *)this + 360 * MemberIndex + 15184));
      M_data = v32._M_start_of_storage._M_data;
      for ( i = v32._M_finish; M_data != i; ++M_data )
      {
        v13 = (std::string *)tolower(*M_data);
        *M_data = (char)v13;
      }
      if ( v4 > 0 )
      {
        v16 = 0;
        v17 = 0;
        v25 = v7;
        do
        {
          v18 = CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)v13);
          std::string::string(v6, (char *)(*(_DWORD *)(v18 + 36) + v16 + 40));
          v19 = v30;
          if ( v31 != v30 )
          {
            v20 = v17;
            v24 = v6;
            v21 = v30;
            v22 = v16;
            v23 = v31;
            do
            {
              *v23 = tolower(*v23);
              ++v23;
            }
            while ( v23 != v21 );
            v16 = v22;
            v19 = v31;
            v6 = v24;
            v17 = v20;
          }
          if ( !LC_API_STRCMP_0(v19, v32._M_start_of_storage._M_data) )
            *(_DWORD *)(*(_DWORD *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(nullptr) + 36) + v16) = v10;
          ++v17;
          std::string::~string(v6);
          v16 += 84;
        }
        while ( v17 != v4 );
        v7 = v25;
      }
      std::string::~string(&v32);
      ++v5;
    }
  }
  return result;
}


// ===== 81e4d0 CMatchingGLLive::ReadPacketData(int,int,NetBitStream &) =====
CSignInGLLive *__fastcall CMatchingGLLive::ReadPacketData(CMatchingGLLive *this, int a2, int a3, NetBitStream *a4)
{
  char *v5; // r4
  CRoomAttributes *v9; // r0
  int v10; // r4
  char *v11; // r6
  int (__fastcall *v12)(char *, _BOOL4, NetBitStream *, int, _DWORD); // r7
  _BOOL4 v13; // r1
  CSignInGLLive *result; // r0

  v5 = (char *)this + 24;
  v9 = (CRoomAttributes *)(*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 164))(this);
  CRoomAttributes::Unserialize(v9, a2, a4);
  NetStructArray<CMatching::MemberInfoNetStruct,32u>::Load((int)v5, a4, a2, a3);
  v10 = 0;
  v11 = (char *)this + 14848;
  do
  {
    while ( 1 )
    {
      v12 = *(int (__fastcall **)(char *, _BOOL4, NetBitStream *, int, _DWORD))(*(_DWORD *)v11 + 24);
      v13 = CMatching::GetMemberIndex(this, *((_DWORD *)this + 3472)) != v10;
      result = (CSignInGLLive *)v12((char *)this + 360 * v10++ + 14848, v13, a4, a2, 0);
      if ( result )
        break;
      v11 += 360;
      if ( v10 == 32 )
        return result;
    }
    result = CMatchingGLLive::SyncMemberId(this);
    v11 += 360;
  }
  while ( v10 != 32 );
  return result;
}


// ===== 81e5a0 NetStructString<16u>::NetStructString(std::string) =====
int __fastcall NetStructString<16u>::NetStructString(int a1, const std::string *a2)
{
  std::string v4; // [sp+4h] [bp-1Ch] BYREF

  std::string::string(&v4, a2);
  *(_DWORD *)(a1 + 4) = 128;
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
  *(_DWORD *)a1 = off_992740;
  return a1;
}


// ===== 81e680 CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct(void) =====
CMatchingGLLive::MemberInfoNetStruct *__fastcall CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct(
        CMatchingGLLive::MemberInfoNetStruct *this)
{
  CMatchingGLLive::MemberInfoNetStruct *v1; // r4
  std::string v4; // [sp+4h] [bp-1Ch] BYREF

  v1 = this;
  NetStruct::NetStruct(this);
  *(_DWORD *)v1 = off_992770;
  v1 = (CMatchingGLLive::MemberInfoNetStruct *)((char *)v1 + 304);
  std::string::string(&v4, "");
  NetStructString<16u>::NetStructString((int)v1, &v4);
  std::string::~string(&v4);
  NetStruct::DeclareMember((int)this, v1);
  return this;
}


// ===== 81e724 std::vector<tRoomInfo,std::allocator<tRoomInfo>>::vector(uint) [clone] =====
_DWORD *__fastcall std::vector<tRoomInfo>::vector(_DWORD *a1)
{
  int v2; // r1
  char *v3; // r0
  unsigned int v5; // [sp+4h] [bp-3D4h] BYREF
  std::string v6; // [sp+10h] [bp-3C8h] BYREF
  _DWORD v7[234]; // [sp+30h] [bp-3A8h] BYREF

  v2 = _stack_chk_guard;
  *a1 = 0;
  v7[233] = v2;
  a1[1] = 0;
  v5 = 0;
  a1[2] = 0;
  v3 = (char *)std::allocator<tRoomInfo>::_M_allocate((int)(a1 + 2), 0, &v5);
  a1[2] = &v3[968 * v5];
  *a1 = v3;
  a1[1] = v3;
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v6, 0x10u);
  *v6._M_finish = 0;
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)v7);
  a1[1] = *a1;
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v7);
  std::string::~string(&v6);
  return a1;
}


// ===== 81e7f0 CMatchingGLLive::CMatchingGLLive(bool) =====
void __fastcall CMatchingGLLive::CMatchingGLLive(CMatchingGLLive *this, bool a2)
{
  int v4; // r5
  CMatchingGLLive::MemberInfoNetStruct *v5; // r0

  CMatching::CMatching(this);
  *((_DWORD *)this + 3472) = -1;
  *(_DWORD *)this = &off_992830;
  CRoomAttributes::CRoomAttributes((CMatchingGLLive *)((char *)this + 13904));
  *((_DWORD *)this + 3709) = (char *)this + 14824;
  v4 = 0;
  *((_DWORD *)this + 3707) = 0;
  *((_BYTE *)this + 14824) = 0;
  *((_DWORD *)this + 3708) = (char *)this + 14824;
  *((_DWORD *)this + 3710) = 0;
  do
  {
    v5 = (CMatchingGLLive *)((char *)this + v4 + 14848);
    v4 += 360;
    CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct(v5);
  }
  while ( v4 != 11520 );
  *((_DWORD *)this + 6603) = (char *)this + 26400;
  *((_DWORD *)this + 6592) = 0;
  *((_DWORD *)this + 6593) = 0;
  *((_DWORD *)this + 6594) = 0;
  *((_DWORD *)this + 6595) = 0;
  *((_DWORD *)this + 6601) = 0;
  *((_BYTE *)this + 26400) = 0;
  *((_DWORD *)this + 6602) = (char *)this + 26400;
  *((_DWORD *)this + 6604) = 0;
  CRoomSearchFilter::CRoomSearchFilter((CMatchingGLLive *)((char *)this + 26424));
  CNetMutex::CNetMutex((CMatchingGLLive *)((char *)this + 26460));
  CNetMutex::CNetMutex((CMatchingGLLive *)((char *)this + 26464));
  *((_BYTE *)this + 26600) = a2;
  *((_DWORD *)this + 6617) = 0;
  *((_BYTE *)this + 26601) = 0;
  *((_BYTE *)this + 26602) = 0;
  *((_BYTE *)this + 26603) = 0;
  *((_BYTE *)this + 26605) = 0;
  *((_DWORD *)this + 6657) = (char *)this + 26608;
  *((_DWORD *)this + 6656) = (char *)this + 26608;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 6652, 0x10u);
  **((_BYTE **)this + 6656) = 0;
  *((_DWORD *)this + 6658) = 0;
  *((_BYTE *)this + 26640) = 0;
  *((_BYTE *)this + 26641) = 0;
  std::vector<tRoomInfo>::vector((_DWORD *)this + 6661);
  *((_DWORD *)this + 6664) = 0;
  std::vector<int>::vector((_DWORD *)this + 6665);
  *((_DWORD *)this + 6668) = 0;
  *((_DWORD *)this + 6669) = 0;
  *((_DWORD *)this + 6670) = 0;
  CRoomAttributes::CRoomAttributes((CMatchingGLLive *)((char *)this + 26688));
  *((_DWORD *)this + 6903) = (char *)this + 27608;
  *((_BYTE *)this + 27650) = 0;
  *((_DWORD *)this + 6902) = (char *)this + 27608;
  *((_BYTE *)this + 27616) = 0;
  CMatchingGLLive::LoadGLLiveProfile(this);
  *((_BYTE *)this + 15) = 3;
}


// ===== 81e9dc CMatchingGLLive::CMatchingGLLive(bool) =====
void __fastcall CMatchingGLLive::CMatchingGLLive(CMatchingGLLive *this, bool a2)
{
  int v4; // r5
  CMatchingGLLive::MemberInfoNetStruct *v5; // r0

  CMatching::CMatching(this);
  *((_DWORD *)this + 3472) = -1;
  *(_DWORD *)this = &off_992830;
  CRoomAttributes::CRoomAttributes((CMatchingGLLive *)((char *)this + 13904));
  *((_DWORD *)this + 3709) = (char *)this + 14824;
  v4 = 0;
  *((_DWORD *)this + 3707) = 0;
  *((_BYTE *)this + 14824) = 0;
  *((_DWORD *)this + 3708) = (char *)this + 14824;
  *((_DWORD *)this + 3710) = 0;
  do
  {
    v5 = (CMatchingGLLive *)((char *)this + v4 + 14848);
    v4 += 360;
    CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct(v5);
  }
  while ( v4 != 11520 );
  *((_DWORD *)this + 6603) = (char *)this + 26400;
  *((_DWORD *)this + 6592) = 0;
  *((_DWORD *)this + 6593) = 0;
  *((_DWORD *)this + 6594) = 0;
  *((_DWORD *)this + 6595) = 0;
  *((_DWORD *)this + 6601) = 0;
  *((_BYTE *)this + 26400) = 0;
  *((_DWORD *)this + 6602) = (char *)this + 26400;
  *((_DWORD *)this + 6604) = 0;
  CRoomSearchFilter::CRoomSearchFilter((CMatchingGLLive *)((char *)this + 26424));
  CNetMutex::CNetMutex((CMatchingGLLive *)((char *)this + 26460));
  CNetMutex::CNetMutex((CMatchingGLLive *)((char *)this + 26464));
  *((_BYTE *)this + 26600) = a2;
  *((_DWORD *)this + 6617) = 0;
  *((_BYTE *)this + 26601) = 0;
  *((_BYTE *)this + 26602) = 0;
  *((_BYTE *)this + 26603) = 0;
  *((_BYTE *)this + 26605) = 0;
  *((_DWORD *)this + 6657) = (char *)this + 26608;
  *((_DWORD *)this + 6656) = (char *)this + 26608;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 6652, 0x10u);
  **((_BYTE **)this + 6656) = 0;
  *((_DWORD *)this + 6658) = 0;
  *((_BYTE *)this + 26640) = 0;
  *((_BYTE *)this + 26641) = 0;
  std::vector<tRoomInfo>::vector((_DWORD *)this + 6661);
  *((_DWORD *)this + 6664) = 0;
  std::vector<int>::vector((_DWORD *)this + 6665);
  *((_DWORD *)this + 6668) = 0;
  *((_DWORD *)this + 6669) = 0;
  *((_DWORD *)this + 6670) = 0;
  CRoomAttributes::CRoomAttributes((CMatchingGLLive *)((char *)this + 26688));
  *((_DWORD *)this + 6903) = (char *)this + 27608;
  *((_BYTE *)this + 27650) = 0;
  *((_DWORD *)this + 6902) = (char *)this + 27608;
  *((_BYTE *)this + 27616) = 0;
  CMatchingGLLive::LoadGLLiveProfile(this);
  *((_BYTE *)this + 15) = 3;
}


// ===== 81ebc8 tFriendInfo::tFriendInfo(void) =====
void __fastcall tFriendInfo::tFriendInfo(tFriendInfo *this)
{
  _DWORD *v2; // r0

  *((_DWORD *)this + 5) = (char *)this + 4;
  v2 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_DWORD *)this + 12) = (char *)this + 32;
  *((_DWORD *)this + 13) = (char *)this + 32;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 8, 0x10u);
  **((_BYTE **)this + 12) = 0;
  *((_DWORD *)this + 18) = (char *)this + 56;
  *((_DWORD *)this + 19) = (char *)this + 56;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 14, 0x10u);
  **((_BYTE **)this + 18) = 0;
  *((_DWORD *)this + 24) = (char *)this + 80;
  *((_DWORD *)this + 25) = (char *)this + 80;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 20, 0x10u);
  **((_BYTE **)this + 24) = 0;
}


// ===== 81ec5c CMatchingGLLive::GetFriendsList(bool) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetFriendsList(CMatchingGLLive *this, int a2, int a3)
{
  int v3; // r4
  int v5; // r1
  int v6; // r3
  const char *UserNumber; // r0
  char *Name; // r0
  int State; // r0
  int v13; // [sp+14h] [bp-88h] BYREF
  std::string v14; // [sp+18h] [bp-84h] BYREF
  int v15; // [sp+30h] [bp-6Ch]
  std::string v16; // [sp+7Ch] [bp-20h] BYREF
  int v17; // [sp+94h] [bp-8h]

  v3 = 0;
  v5 = _stack_chk_guard;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v6 = *(_DWORD *)(a2 + 26372);
  v17 = v5;
  if ( *(_BYTE *)(v6 + 4) )
  {
    while ( v3 < GLXPlayerUserFriend::GetFriendsCount(*(GLXPlayerUserFriend **)(a2 + 26368)) )
    {
      tFriendInfo::tFriendInfo((tFriendInfo *)&v13);
      LC_API_MEMSET_0(&v13, 0, 0x68u);
      UserNumber = (const char *)GLXPlayerUserFriend::GetUserNumber(*(GLXPlayerUserFriend **)(a2 + 26368), v3);
      v13 = LC_API_ATOI_0(UserNumber);
      Name = (char *)GLXPlayerUserFriend::GetName(*(GLXPlayerUserFriend **)(a2 + 26368), v3);
      std::string::string(&v16, Name);
      std::string::_M_assign(&v14, v16._M_start_of_storage._M_data, v16._M_finish);
      std::string::~string(&v16);
      State = GLXPlayerUserFriend::GetState(*(GLXPlayerUserFriend **)(a2 + 26368), v3);
      v15 = State;
      if ( !a3 || State != 3 )
        std::vector<tFriendInfo>::push_back((tFriendInfo **)this, (const tFriendInfo *)&v13);
      tFriendInfo::~tFriendInfo((tFriendInfo *)&v13);
      ++v3;
    }
  }
  return this;
}


// ===== 81edac tMatchingPeer::tMatchingPeer(void) =====
void __fastcall tMatchingPeer::tMatchingPeer(tMatchingPeer *this)
{
  CNetworkId::Reset((_DWORD *)this + 1);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 9, 0x10u);
  **((_BYTE **)this + 13) = 0;
  CRoomAttributes::CRoomAttributes((tMatchingPeer *)((char *)this + 72));
}


// ===== 81edf0 std::allocator<std::priv::_List_node<GLFriendInfo>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<GLFriendInfo>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 81ee10 CMatchingGLLive::AddFriendInGameList(GLFriendInfo) =====
_DWORD *__fastcall CMatchingGLLive::AddFriendInGameList(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  _DWORD *result; // r0
  _DWORD *v10; // r2

  v4 = a1 + 27608;
  result = std::allocator<std::priv::_List_node<GLFriendInfo>>::allocate();
  result[4] = a4;
  result[3] = a3;
  result[2] = a2;
  v10 = *(_DWORD **)(a1 + 27612);
  *result = v4;
  result[1] = v10;
  *v10 = result;
  *(_DWORD *)(a1 + 27612) = result;
  return result;
}


// ===== 81ee6c CMatchingGLLive::GetGLFriendsList(void) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetGLFriendsList(CMatchingGLLive *this, int a2)
{
  _DWORD *v3; // r5
  _DWORD *i; // r6
  _DWORD *v5; // r0
  _DWORD *v6; // r3

  *(_DWORD *)this = this;
  *((_DWORD *)this + 1) = this;
  v3 = *(_DWORD **)(a2 + 27608);
  for ( i = (_DWORD *)(a2 + 27608); i != v3; v3 = (_DWORD *)*v3 )
  {
    v5 = std::allocator<std::priv::_List_node<GLFriendInfo>>::allocate();
    v5[2] = v3[2];
    v5[3] = v3[3];
    v5[4] = v3[4];
    v6 = *((_DWORD **)this + 1);
    *v5 = this;
    v5[1] = v6;
    *v6 = v5;
    *((_DWORD *)this + 1) = v5;
  }
  return this;
}


// ===== 81eedc CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver const&) =====
int __fastcall CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(int a1, int a2)
{
  *(_DWORD *)a1 = &off_992910;
  *(_BYTE *)(a1 + 4) = *(_BYTE *)(a2 + 4);
  *(_BYTE *)(a1 + 5) = *(_BYTE *)(a2 + 5);
  *(_BYTE *)(a1 + 6) = *(_BYTE *)(a2 + 6);
  *(_BYTE *)(a1 + 7) = *(_BYTE *)(a2 + 7);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a2 + 20);
  std::vector<tGLRoomInfo *>::vector((_DWORD *)(a1 + 24), a2 + 24);
  std::vector<tMemberInfo>::vector((_DWORD *)(a1 + 36), (int *)(a2 + 36));
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_Rb_tree(
    a1 + 48,
    a2 + 48);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 72);
  return a1;
}


// ===== 81ef7c CMatchingGLLive::GetGLXPlayerMPLobby(void) =====
int __fastcall CMatchingGLLive::GetGLXPlayerMPLobby(CMatchingGLLive *this)
{
  int result; // r0
  int GLXPlayerLoginObserver; // r0
  CMatchingGLLive *v3; // r0
  int GLXPlayerMPLobbyObserver; // r0
  GLXPlayerMPLobby *v5; // r10
  _BYTE v6[76]; // [sp+0h] [bp-254h] BYREF
  char s[512]; // [sp+4Ch] [bp-208h] BYREF

  result = s_GLXPlayerMPLobby;
  if ( !s_GLXPlayerMPLobby )
  {
    GLXPlayerLoginObserver = CMatchingGLLive::GetGLXPlayerLoginObserver(nullptr);
    v3 = (CMatchingGLLive *)sprintf(s, "socket://%s", (const char *)(GLXPlayerLoginObserver + 6));
    GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v3);
    CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver((int)v6, GLXPlayerMPLobbyObserver);
    v5 = (GLXPlayerMPLobby *)operator new(0x94u, 2);
    GLXPlayerMPLobby::GLXPlayerMPLobby(v5, (GLXPlayerMPBaseObserver *)s_GLXPlayerMPLobbyObserver, s);
    s_GLXPlayerMPLobby = (int)v5;
    CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver((CMatchingGLLiveLobbyObserver *)v6);
    return s_GLXPlayerMPLobby;
  }
  return result;
}


// ===== 81f04c CMatchingGLLive::SetPlayerParam(std::string,bool) =====
void __fastcall CMatchingGLLive::SetPlayerParam(CMatchingGLLive *this, std::string a2, bool a3)
{
  const char *v3; // r3
  const std::string *M_end_of_storage; // r5
  const char *v5; // r1
  int v6; // r7
  std::string *v7; // r0
  char *v8; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0
  CMatchingGLLive *v10; // r0
  CMatchingGLLiveLobbyObserver *GLXPlayerMPLobbyObserver; // r8
  std::string v12; // [sp+84h] [bp-1Ch] BYREF
  std::string v13; // 0:r1.12,12:^0.12 BYREF

  v3 = *((const char **)a2._M_buffers._M_end_of_storage + 4);
  M_end_of_storage = (const std::string *)a2._M_buffers._M_end_of_storage;
  v5 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  v6 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  if ( (unsigned int)(v3 - v5) <= 0x80 )
  {
    v7 = (std::string *)((char *)this + 26608);
    if ( M_end_of_storage != v7 )
      std::string::_M_assign(v7, v5, v3);
    if ( v6 )
    {
      v8 = LC_API_STRCPY_0((char *)&v13._M_finish, M_end_of_storage->_M_start_of_storage._M_data);
      GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby((CMatchingGLLive *)v8);
      v10 = (CMatchingGLLive *)GLXPlayerMPLobby::mpSendSetUserParameter(
                                 GLXPlayerMPLobby,
                                 (char *)&v13._M_finish,
                                 M_end_of_storage->_M_finish - M_end_of_storage->_M_start_of_storage._M_data);
      GLXPlayerMPLobbyObserver = (CMatchingGLLiveLobbyObserver *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v10);
      std::string::string(&v12, M_end_of_storage);
      v13._M_buffers._M_end_of_storage = (char *)&v12;
      CMatchingGLLiveLobbyObserver::SetPlayerParam(GLXPlayerMPLobbyObserver, v13);
      std::string::~string(&v12);
    }
  }
}


// ===== 81f128 CMatchingGLLive::StartGame(void) =====
void __fastcall CMatchingGLLive::StartGame(CMatchingGLLive *this)
{
  CMatchingGLLive *v1; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0

  if ( !CMatchingGLLive::s_IsGameStarting )
  {
    v1 = (CMatchingGLLive *)CEventQueueBase::AddEvent(
                              (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                              11,
                              nullptr,
                              0);
    GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v1);
    GLXPlayerMPLobby::mpSendLaunchLobbyGame(GLXPlayerMPLobby);
  }
}


// ===== 81f178 CMatchingGLLive::SetGCState(int) =====
void __fastcall CMatchingGLLive::SetGCState(CMatchingGLLive *this, int a2)
{
  int v3; // r1
  CSignInGLLive *v4; // r0
  _BYTE v5[924]; // [sp+0h] [bp-39Ch] BYREF

  if ( *((_BYTE *)this + 26600) && *((_DWORD *)this + 6670) != a2 )
  {
    *((_DWORD *)this + 6670) = a2;
    switch ( a2 )
    {
      case 1:
        v4 = CSignIn::Get((CSignIn *)(a2 - 1));
        CEventQueueBase::AddEvent((pthread_mutex_t *)v4 + 11, 1, nullptr, 0);
        break;
      case 2:
        if ( CMatchingGLLive::s_GameCenterInfo )
          v3 = 3;
        else
          v3 = 4;
        CMatchingGLLive::SetGCState(this, v3);
        break;
      case 3:
        CRoomAttributes::CRoomAttributes((CRoomAttributes *)v5, (CMatchingGLLive *)((char *)this + 26688));
        CMatching::CreateJoinRoom(this, 1, (int)v5);
        CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v5);
        break;
      case 7:
        CMatchingGLLive::StartGame(this);
        break;
      default:
        return;
    }
  }
}


// ===== 81f264 CMatchingGLLive::Initialize(int) =====
int __fastcall CMatchingGLLive::Initialize(GLXPlayerSereverConfig **this, int a2)
{
  int v3; // r5
  const char *v5; // r10
  GLXPlayerSereverConfig *v6; // r7
  CMatchingGLLive *v7; // r0
  int GLXPlayerLoginObserver; // r7
  GLXPlayerComponent *v9; // r0
  GLXPlayerUser *v10; // r7
  CLobbyParameterAndQuery *v11; // r7
  CMatchingGLLive *ServerConfig; // r0
  int v13; // [sp+4h] [bp-98h] BYREF
  _DWORD (**v14)(CSignInGLLiveObserver *__hidden); // [sp+8h] [bp-94h] BYREF
  char v15; // [sp+Ch] [bp-90h]
  char v16; // [sp+Dh] [bp-8Fh]
  _BYTE v17[128]; // [sp+Eh] [bp-8Eh] BYREF
  int v18; // [sp+90h] [bp-Ch]

  CMatching::Initialize((CMatching *)this, a2);
  if ( *((_BYTE *)this + 12) )
    return 0;
  v13 = *((unsigned __int8 *)this + 12);
  v5 = (const char *)dword_A33870;
  v6 = (GLXPlayerSereverConfig *)operator new(0x44u, 2);
  v7 = GLXPlayerSereverConfig::GLXPlayerSereverConfig(v6, v5);
  *(this + 6596) = v6;
  GLXPlayerLoginObserver = CMatchingGLLive::GetGLXPlayerLoginObserver(v7);
  v14 = &off_992A00;
  v15 = *(_BYTE *)(GLXPlayerLoginObserver + 4);
  v16 = *(_BYTE *)(GLXPlayerLoginObserver + 5);
  memcpy(v17, (const void *)(GLXPlayerLoginObserver + 6), sizeof(v17));
  v9 = *(this + 6596);
  v18 = *(_DWORD *)(GLXPlayerLoginObserver + 136);
  GLXPlayerComponent::RegisterObserver(v9, (GLXPlayerObserver *)s_GLXPlayerLoginObserver);
  v10 = (GLXPlayerUser *)operator new(0x130u, 2);
  GLXPlayerUser::GLXPlayerUser(v10);
  *(this + 6598) = v10;
  v11 = (CLobbyParameterAndQuery *)operator new(0x40u, 2);
  CLobbyParameterAndQuery::CLobbyParameterAndQuery(v11);
  *(this + 6658) = v11;
  ServerConfig = (CMatchingGLLive *)GLXPlayerSereverConfig::SendGetServerConfig(*(this + 6596), &v13);
  if ( v13 == 1 )
  {
    *(_BYTE *)(CMatchingGLLive::GetGLXPlayerLoginObserver(ServerConfig) + 4) = 1;
    CMatchingGLLive::SetGCState((CMatchingGLLive *)this, 1);
  }
  else if ( v13 == -1 )
  {
    XP_DEBUG_OUT("oconf.bar not found!\n");
  }
  CConnectionManager::RegisterPacketType(2, 2, (int)CMatchingGLLive::sBroadcastPacketReceiverCallback);
  CConnectionManager::RegisterPacketType(3, 1, (int)CMatchingGLLive::sBroadcastPacketReceiverCallback);
  CConnectionManager::RegisterPacketType(9, 0, (int)CMatchingGLLive::sBroadcastPacketReceiverCallback);
  CConnectionManager::RegisterPacketType(4, 1, (int)CMatchingGLLive::sPacketReceiverCallback);
  *(this + 3473) = (GLXPlayerSereverConfig *)(&dword_0 + 1);
  v3 = v13;
  CSignInGLLiveObserver::~CSignInGLLiveObserver((CSignInGLLiveObserver *)&v14);
  return v3;
}


// ===== 81f44c CMatchingGLLive::SendSetPlayerStatus(char) =====
int __fastcall CMatchingGLLive::SendSetPlayerStatus(CMatchingGLLive *this, unsigned __int8 a2)
{
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0

  GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(this);
  return GLXPlayerMPLobby::mpSendSetPlayerStatus(GLXPlayerMPLobby, a2);
}


// ===== 81f464 CMatchingGLLive::LeaveRoom(void) =====
int __fastcall CMatchingGLLive::LeaveRoom(CMatchingGLLive *this)
{
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0

  GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(this);
  GLXPlayerMPLobby::mpSendLeaveLobby(GLXPlayerMPLobby);
  *((_DWORD *)this + 6669) = 5;
  return 0;
}


// ===== 81f488 CMatchingGLLive::JoinRoomInternal(ulong long) =====
int __fastcall CMatchingGLLive::JoinRoomInternal(CMatchingGLLive *this, unsigned __int64 a2)
{
  int v4; // r6
  CMatchingGLLive *v6; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0

  v4 = a2;
  if ( (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 96))(this) > *((_DWORD *)this + 2) )
    return -1;
  v6 = (CMatchingGLLive *)CNetMutex::Lock((pthread_mutex_t *)this + 6615);
  GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v6);
  GLXPlayerMPLobby::mpSendJoinLobby(
    GLXPlayerMPLobby,
    v4,
    *((_BYTE *)this + 15),
    *((char **)this + 6657),
    *((_DWORD *)this + 6656) - *((_DWORD *)this + 6657));
  *((_DWORD *)this + 6669) = 9;
  *((_DWORD *)this + 6659) = v4;
  *((_BYTE *)this + 13872) = 0;
  CNetMutex::Unlock((pthread_mutex_t *)this + 6615);
  return 0;
}


// ===== 81f524 CMatchingGLLive::IsHost(void) =====
int __fastcall CMatchingGLLive::IsHost(CMatchingGLLive *this)
{
  int GLXPlayerMPLobby; // r0

  GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(this);
  return (*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 60))(GLXPlayerMPLobby);
}


// ===== 81f53c CMatchingGLLive::WritePacketData(int,int,NetBitStream &) =====
int __fastcall CMatchingGLLive::WritePacketData(CMatchingGLLive *this, int a2, int a3, NetBitStream *a4)
{
  int v7; // r4
  int IsHost; // r0
  CRoomAttributes *v9; // r0
  bool v10; // r6
  int v11; // r6
  int *v12; // r7
  int i; // r4
  _BOOL4 v14; // r1
  int v15; // t1

  v7 = (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 164))(this);
  IsHost = CMatchingGLLive::IsHost(this);
  NetStruct::SetEnabled((unsigned __int8 *)(v7 + 8), IsHost);
  v9 = (CRoomAttributes *)(*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 164))(this);
  v10 = CRoomAttributes::Serialize(v9, a2, a3, a4);
  v11 = NetStructArray<CMatching::MemberInfoNetStruct,32u>::Serialize((int)this + 24, a4, a2, a3) || v10;
  v12 = (int *)((char *)this + 14848);
  for ( i = 0; i != 32; ++i )
  {
    v14 = CMatching::IsServer(this) || CMatching::GetMemberIndex(this, *((_DWORD *)this + 3472)) == i;
    NetStruct::SetEnabled((unsigned __int8 *)this + 360 * i + 14848, v14);
    v15 = *v12;
    v12 += 90;
    if ( (*(int (__fastcall **)(char *, NetBitStream *, int, int))(v15 + 8))((char *)this + 360 * i + 14848, a4, a2, a3) )
      v11 = 1;
  }
  return v11;
}


// ===== 81f648 CMatchingGLLive::SendGameParameters(void) =====
int __fastcall CMatchingGLLive::SendGameParameters(CLobbyParameterAndQuery **this)
{
  int result; // r0
  CRoomAttributes *v3; // r0
  CMatchingGLLive *v4; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0
  char v6[128]; // [sp+4h] [bp-84h] BYREF

  result = CMatchingGLLive::IsHost((CMatchingGLLive *)this);
  if ( result )
  {
    v3 = (CRoomAttributes *)(*((int (__fastcall **)(CLobbyParameterAndQuery **))*this + 41))(this);
    CRoomAttributes::Serialize(v3, v6, 0x80u, 15);
    v4 = (CMatchingGLLive *)(*(int (__fastcall **)(_DWORD, _DWORD, char *))(*(_DWORD *)*(this + 6658) + 8))(
                              *(this + 6658),
                              0,
                              v6);
    GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v4);
    return GLXPlayerMPLobby::mpSendSetGameParameter(GLXPlayerMPLobby, v6, 128, *(this + 6658));
  }
  return result;
}


// ===== 81f6f8 CMatchingGLLive::KickMember(int) =====
int __fastcall CMatchingGLLive::KickMember(CMatchingGLLive *this, int a2)
{
  CMatchingGLLive *IsHost; // r0
  int GLXPlayerMPLobby; // r0
  CMatchingGLLive *v6; // r0
  CMatchingGLLiveLobbyObserver *GLXPlayerMPLobbyObserver; // r0
  int *MemberByMemberId; // r6
  int v9; // r1
  int v10; // r2
  int v11; // r3
  CMatchingGLLive *v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  GLXPlayerMPLobby *v16; // r0
  int v17; // [sp+0h] [bp-58h]
  std::string v18; // [sp+Ch] [bp-4Ch] BYREF
  int v19; // [sp+24h] [bp-34h]
  _DWORD v20[8]; // [sp+28h] [bp-30h] BYREF
  char v21; // [sp+48h] [bp-10h]
  int v22; // [sp+4Ch] [bp-Ch]
  char v23; // [sp+50h] [bp-8h]

  IsHost = (CMatchingGLLive *)CMatchingGLLive::IsHost(this);
  if ( !IsHost )
    return 1;
  GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(IsHost);
  v6 = (CMatchingGLLive *)(*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 52))(GLXPlayerMPLobby);
  if ( !v6 )
    return 1;
  GLXPlayerMPLobbyObserver = (CMatchingGLLiveLobbyObserver *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v6);
  MemberByMemberId = (int *)CMatchingGLLiveLobbyObserver::GetMemberByMemberId(GLXPlayerMPLobbyObserver, a2);
  v17 = *MemberByMemberId;
  std::string::string(&v18, (const std::string *)(MemberByMemberId + 3));
  v19 = MemberByMemberId[9];
  v9 = MemberByMemberId[11];
  v10 = MemberByMemberId[12];
  v11 = MemberByMemberId[13];
  v20[0] = MemberByMemberId[10];
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v12 = (CMatchingGLLive *)MemberByMemberId[14];
  v13 = MemberByMemberId[15];
  v14 = MemberByMemberId[16];
  v15 = MemberByMemberId[17];
  v20[4] = v12;
  v20[5] = v13;
  v20[6] = v14;
  v20[7] = v15;
  v21 = MemberByMemberId[18];
  v22 = MemberByMemberId[19];
  v23 = *((_BYTE *)MemberByMemberId + 80);
  if ( v17 == -1 )
  {
    v19 = 0;
    std::string::~string(&v18);
    return 1;
  }
  else
  {
    v16 = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v12);
    GLXPlayerMPLobby::mpSendKickOut(v16, (char *)v20);
    v23 = 0;
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, nullptr, 0);
    v19 = 0;
    std::string::~string(&v18);
    return 0;
  }
}


// ===== 81f858 CMatchingGLLive::Terminate(void) =====
int __fastcall CMatchingGLLive::Terminate(CMatchingGLLive *this)
{
  CSignIn *v2; // r0
  CSignInGLLive *v3; // r0
  int GLXPlayerMPLobby; // r0
  CMatchingGLLive *v5; // r0
  CMatchingGLLiveLobbyObserver *GLXPlayerMPLobbyObserver; // r0
  CSignInGLLiveObserver *GLXPlayerLoginObserver; // r0

  if ( (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 100))(this) )
    (*(void (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 60))(this);
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueue);
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueueInternal);
  v2 = (CSignIn *)CEventQueueBase::Clear((CEventQueueBase *)&CMatchingGLLive::s_eventQueueGLLiveInternal);
  v3 = CSignIn::Get(v2);
  if ( *((_BYTE *)v3 + 17) )
  {
    GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(v3);
    v5 = (CMatchingGLLive *)(*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 24))(GLXPlayerMPLobby);
    GLXPlayerMPLobbyObserver = (CMatchingGLLiveLobbyObserver *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v5);
    v3 = (CSignInGLLive *)CMatchingGLLiveLobbyObserver::Terminate(GLXPlayerMPLobbyObserver);
  }
  GLXPlayerLoginObserver = (CSignInGLLiveObserver *)CMatchingGLLive::GetGLXPlayerLoginObserver(v3);
  CSignInGLLiveObserver::Terminate(GLXPlayerLoginObserver);
  CConnectionManager::UnregisterPacketType(2);
  CConnectionManager::UnregisterPacketType(3);
  CConnectionManager::UnregisterPacketType(9);
  CConnectionManager::UnregisterPacketType(4);
  CMatching::Terminate(this);
  *((_BYTE *)this + 26600) = 0;
  *((_BYTE *)this + 12) = 0;
  CMatchingGLLive::s_IsGameStarting = 0;
  *((_BYTE *)this + 26605) = 0;
  return 0;
}


// ===== 81f948 CMatchingGLLive::CreateJoinRoomInternal(bool,CRoomAttributes &) =====
int __fastcall CMatchingGLLive::CreateJoinRoomInternal(CMatchingGLLive *this, unsigned __int8 a2, CRoomAttributes *a3)
{
  CMatchingGLLive *IsLoggedIn; // r0
  char *v8; // r9
  CMatchingGLLive *v9; // r0
  GLXPlayerMPLobby *v10; // r0
  int GLXPlayerMPLobby; // r0
  char v12[128]; // [sp+24h] [bp-88h] BYREF

  IsLoggedIn = (CMatchingGLLive *)CMatchingGLLive::IsLoggedIn(this);
  if ( !IsLoggedIn )
    return -1;
  *((_BYTE *)this + 26604) = a2 ^ 1;
  v8 = *(char **)(CMatchingGLLive::GetGLXPlayerLogin(IsLoggedIn) + 116);
  CRoomAttributes::operator=((CMatchingGLLive *)((char *)this + 13904), a3);
  CRoomAttributes::Serialize(a3, v12, 0x80u, 15);
  v9 = (CMatchingGLLive *)(*(int (__fastcall **)(_DWORD, _DWORD, char *))(**((_DWORD **)this + 6658) + 8))(
                            *((_DWORD *)this + 6658),
                            0,
                            v12);
  if ( *((_BYTE *)this + 26600) )
  {
    GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(v9);
    GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(
      GLXPlayerMPLobby,
      dword_A33880,
      0,
      *((unsigned __int8 *)this + 14),
      dword_A33884,
      v12,
      128,
      *((_DWORD *)this + 6657),
      *((_DWORD *)this + 6656) - *((_DWORD *)this + 6657),
      *((_DWORD *)this + 6658),
      &dword_A33888);
  }
  else
  {
    v10 = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v9);
    GLXPlayerMPLobby::mpSendCreateLobby(
      v10,
      v8,
      a2,
      *((_BYTE *)this + 14),
      *((_DWORD *)this + 2),
      v12,
      128,
      *((char **)this + 6657),
      *((_DWORD *)this + 6656) - *((_DWORD *)this + 6657),
      *((CLobbyParameterAndQuery **)this + 6658));
  }
  *((_DWORD *)this + 6669) = 3;
  return 0;
}


// ===== 81fadc CMatchingGLLive::SearchRoomInternal(CRoomSearchFilter &,bool,uchar) =====
int __fastcall CMatchingGLLive::SearchRoomInternal(CMatchingGLLive *this, CRoomSearchFilter *a2, bool a3, char a4)
{
  CRoomSearchFilter *v6; // r0
  CMatchingGLLive *GLXPlayerLogin; // r0
  const char *v8; // r4
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r7
  int v10; // r0

  v6 = CRoomSearchFilter::operator=((CMatchingGLLive *)((char *)this + 26424), a2);
  GLXPlayerLogin = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerLogin(v6);
  v8 = *((const char **)GLXPlayerLogin + 30);
  GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(GLXPlayerLogin);
  v10 = LC_API_ATOI_0(v8);
  GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(GLXPlayerMPLobby, v10, 0, 0xFu, nullptr, a4);
  *((_DWORD *)this + 6669) = 7;
  return 0;
}


// ===== 81fb44 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,CRoomAttributes>,std::priv::_Select1st<std::pair<ulong long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::_M_create_node(std::pair<ulong long const,CRoomAttributes> const&) =====
_QWORD *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_create_node(
        int a1,
        _QWORD *a2)
{
  _QWORD *v3; // r4

  v3 = CustomAlloc(0x3B0u);
  v3[2] = *a2;
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)(v3 + 3), (const CRoomAttributes *)(a2 + 1));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 81fb80 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,CRoomAttributes>,std::priv::_Select1st<std::pair<ulong long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<ulong long const,CRoomAttributes> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        _QWORD *a4,
        int a5,
        int a6)
{
  _QWORD *v9; // r0
  _QWORD *node; // r7
  _QWORD *v12; // r0

  if ( a2 == (_DWORD *)a3 )
  {
    node = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *(_QWORD *)(a3 + 16) <= *a4 )
  {
    v9 = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_create_node(
           (int)a2,
           a4);
    *(_DWORD *)(a3 + 12) = v9;
    node = v9;
    if ( a3 == a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_create_node(
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


// ===== 81fc6c std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,CRoomAttributes>,std::priv::_Select1st<std::pair<ulong long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::insert_unique(std::pair<ulong long const,CRoomAttributes> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned int *a3)
{
  int v3; // r12
  unsigned int v6; // r8
  unsigned int v7; // r6
  int v8; // r2
  int v9; // r5
  unsigned int v10; // r0
  unsigned int v11; // r7
  _DWORD *v12; // r2
  bool v13; // zf
  _DWORD *v15; // r0
  unsigned int v16; // r6
  unsigned int v17; // r0
  int v18; // r3
  int v19; // r3
  int v20; // [sp+8h] [bp-8h] BYREF
  int v21; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( !v3 )
  {
    v3 = (int)a2;
    goto LABEL_19;
  }
  v6 = *a3;
  v7 = a3[1];
  while ( 1 )
  {
    v10 = *(_DWORD *)(v3 + 20);
    v11 = *(_DWORD *)(v3 + 16);
    v9 = 1;
    if ( v10 > v7 )
    {
      v8 = *(_DWORD *)(v3 + 8);
      goto LABEL_9;
    }
    if ( v10 == v7 && v11 > v6 )
      break;
    v8 = *(_DWORD *)(v3 + 12);
    v9 = 0;
    if ( !v8 )
      goto LABEL_10;
LABEL_6:
    v3 = v8;
  }
  v8 = *(_DWORD *)(v3 + 8);
LABEL_9:
  if ( v8 )
    goto LABEL_6;
LABEL_10:
  if ( !v9 )
  {
    v12 = (_DWORD *)v3;
    goto LABEL_13;
  }
LABEL_19:
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
      &v21,
      a2,
      v3,
      a3,
      v3,
      0);
    v19 = v21;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v19;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v6 = *a3;
    v7 = a3[1];
    v12 = *(_DWORD **)(v3 + 12);
    v11 = v12[4];
    v10 = v12[5];
    goto LABEL_13;
  }
  v15 = *(_DWORD **)(v3 + 8);
  if ( v15 )
  {
    while ( v15[3] )
      v15 = (_DWORD *)v15[3];
LABEL_26:
    v12 = v15;
    v16 = a3[1];
    v11 = v15[4];
    v17 = v15[5];
    v6 = *a3;
    v13 = v16 == v17;
    if ( v16 <= v17 )
      goto LABEL_14;
    goto LABEL_27;
  }
  v15 = *(_DWORD **)(v3 + 4);
  if ( v3 != v15[2] )
    goto LABEL_26;
  while ( 1 )
  {
    v12 = (_DWORD *)v15[1];
    if ( (_DWORD *)v12[2] != v15 )
      break;
    v15 = (_DWORD *)v15[1];
  }
  v6 = *a3;
  v7 = a3[1];
  v11 = v12[4];
  v10 = v12[5];
LABEL_13:
  v13 = v7 == v10;
  if ( v7 > v10 )
  {
LABEL_27:
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
      &v20,
      a2,
      v3,
      a3,
      0,
      0);
    v18 = v20;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v18;
    return a1;
  }
LABEL_14:
  if ( v13 && v6 > v11 )
    goto LABEL_27;
  *(_DWORD *)a1 = v12;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 81fe2c std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,CRoomAttributes>,std::priv::_Select1st<std::pair<ulong long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<ulong long const,CRoomAttributes>,std::priv::_MapTraitsT<std::pair<ulong long const,CRoomAttributes>>>,std::pair<ulong long const,CRoomAttributes> const&) =====
int *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        unsigned int *a4)
{
  int v4; // r4
  _DWORD *v5; // r5
  int v7; // r12
  unsigned int v8; // r1
  unsigned int v9; // r8
  unsigned int v10; // r10
  unsigned int v11; // r11
  int v13; // r7
  int i; // r12
  unsigned int v15; // r2
  unsigned int v16; // r1
  unsigned int v17; // r0
  unsigned int v18; // r12
  int v19; // lr
  int v20; // r2
  int v21; // r2
  int v22; // r1
  int v23; // [sp+8h] [bp-24h] BYREF
  int v24; // [sp+10h] [bp-1Ch] BYREF
  int v25; // [sp+18h] [bp-14h] BYREF
  int v26[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  v5 = a2;
  if ( *a3 != a2[2] )
  {
    if ( (_DWORD *)v4 != a2 )
    {
      if ( *(_BYTE *)v4 )
      {
        v7 = *(_DWORD *)(v4 + 8);
        if ( !v7 )
        {
LABEL_16:
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
          v8 = a4[1];
          v9 = *(_DWORD *)(v4 + 20);
          v10 = *a4;
          v11 = *(_DWORD *)(v4 + 16);
          if ( __PAIR64__(v9, v11) <= *(_QWORD *)a4 || *(_QWORD *)(v7 + 16) >= __PAIR64__(v8, v10) )
          {
            v13 = *(_DWORD *)(v4 + 12);
            if ( v13 )
            {
              for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
                ;
            }
            else
            {
              v21 = *(_DWORD *)(v4 + 4);
              if ( v4 == *(_DWORD *)(v21 + 12) )
              {
                do
                {
                  i = v21;
                  v21 = *(_DWORD *)(v21 + 4);
                }
                while ( i == *(_DWORD *)(v21 + 12) );
              }
              else
              {
                i = v4;
              }
              if ( v21 != *(_DWORD *)(i + 12) )
                i = v21;
            }
            if ( __PAIR64__(v9, v11) > __PAIR64__(v8, v10) )
            {
LABEL_30:
              std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
                (int)&v23,
                v5,
                a4);
              *a1 = v23;
              return a1;
            }
            if ( v8 > v9 || v8 == v9 && v10 > v11 )
            {
              if ( v5 == (_DWORD *)i || *(_QWORD *)(i + 16) > __PAIR64__(v8, v10) )
              {
                if ( !v13 )
                {
                  std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
                    a1,
                    v5,
                    v4,
                    a4,
                    0,
                    v4);
                  return a1;
                }
LABEL_48:
                std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
                  a1,
                  v5,
                  i,
                  a4,
                  i,
                  0);
                return a1;
              }
              goto LABEL_30;
            }
            goto LABEL_29;
          }
          if ( !*(_DWORD *)(v7 + 12) )
          {
            std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
              a1,
              v5,
              v7,
              a4,
              0,
              v7);
            return a1;
          }
          goto LABEL_11;
        }
        v7 = *(_DWORD *)(v4 + 8);
        if ( !v7 )
          goto LABEL_16;
      }
      while ( *(_DWORD *)(v7 + 12) )
        v7 = *(_DWORD *)(v7 + 12);
      goto LABEL_8;
    }
    v20 = *(_DWORD *)(v4 + 12);
    if ( *(_QWORD *)a4 <= *(_QWORD *)(v20 + 16) )
    {
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
        (int)&v24,
        a2,
        a4);
      *a1 = v24;
      return a1;
    }
LABEL_50:
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
      a1,
      a2,
      v20,
      a4,
      0,
      v4);
    return a1;
  }
  if ( !a2[4] )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
      (int)v26,
      a2,
      a4);
    *a1 = v26[0];
    return a1;
  }
  v15 = a4[1];
  v16 = *(_DWORD *)(v4 + 20);
  v17 = *a4;
  v18 = *(_DWORD *)(v4 + 16);
  if ( __PAIR64__(v16, v18) > __PAIR64__(v15, v17) )
  {
LABEL_11:
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
      a1,
      v5,
      v4,
      a4,
      v4,
      0);
    return a1;
  }
  if ( __PAIR64__(v15, v17) <= __PAIR64__(v16, v18) )
  {
LABEL_29:
    *a1 = v4;
    return a1;
  }
  v19 = *(_DWORD *)(v4 + 12);
  if ( v19 )
  {
    for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
      ;
  }
  else
  {
    v22 = *(_DWORD *)(v4 + 4);
    if ( v4 == *(_DWORD *)(v22 + 12) )
    {
      do
      {
        i = v22;
        v22 = *(_DWORD *)(v22 + 4);
      }
      while ( *(_DWORD *)(v22 + 12) == i );
    }
    else
    {
      i = v4;
    }
    if ( v22 != *(_DWORD *)(i + 12) )
      i = v22;
  }
  if ( v5 == (_DWORD *)i )
  {
    a2 = v5;
    v20 = v4;
    goto LABEL_50;
  }
  if ( *(_QWORD *)(i + 16) > __PAIR64__(v15, v17) )
  {
    if ( !v19 )
    {
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_insert(
        a1,
        v5,
        v4,
        a4,
        0,
        v4);
      return a1;
    }
    goto LABEL_48;
  }
  std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
    (int)&v25,
    v5,
    a4);
  *a1 = v25;
  return a1;
}


// ===== 8201fc std::map<ulong long,CRoomAttributes,std::less<ulong long>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::operator[]<ulong long>(ulong long const&) =====
int __fastcall std::map<unsigned long long,CRoomAttributes>::operator[]<unsigned long long>(
        _DWORD *a1,
        unsigned __int64 *a2)
{
  int v2; // r4
  unsigned __int64 v5; // r0
  _DWORD *v6; // r2
  int v7; // r3
  int v8; // r0
  int v10; // r4
  unsigned __int64 v11; // [sp+0h] [bp-740h] BYREF
  _BYTE v12[920]; // [sp+8h] [bp-738h] BYREF
  _BYTE v13[912]; // [sp+3A0h] [bp-3A0h] BYREF
  int v14; // [sp+738h] [bp-8h] BYREF
  int v15; // [sp+73Ch] [bp-4h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      if ( *(_QWORD *)(v2 + 16) >= v5 )
      {
        v7 = *(_DWORD *)(v2 + 8);
        v6 = (_DWORD *)v2;
        if ( !v7 )
          goto LABEL_8;
      }
      else
      {
        v7 = *(_DWORD *)(v2 + 12);
        v2 = (int)v6;
        if ( !v7 )
          goto LABEL_8;
      }
      v2 = v7;
    }
  }
  v2 = (int)a1;
LABEL_8:
  if ( a1 == (_DWORD *)v2 || (v8 = v2, *(_QWORD *)(v2 + 16) > *a2) )
  {
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v13);
    v11 = *a2;
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v12, (const CRoomAttributes *)v13);
    v14 = v2;
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
      &v15,
      a1,
      &v14,
      (unsigned int *)&v11);
    v10 = v15;
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v12);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v13);
    v8 = v10;
  }
  return v8 + 24;
}


// ===== 820318 CMatchingGLLive::GetSearchRoomAttributes(ulong long) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetSearchRoomAttributes(
        CMatchingGLLive *this,
        int a2,
        unsigned __int64 a3)
{
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r1
  int v8; // r2
  const CRoomAttributes *v9; // r0
  unsigned __int64 v11; // [sp+0h] [bp-Ch] BYREF

  v11 = a3;
  CRoomAttributes::CRoomAttributes(this);
  v5 = *(_DWORD *)(a2 + 26404);
  v6 = (_DWORD *)(a2 + 26400);
  if ( !v5 )
  {
LABEL_9:
    v5 = a2 + 26400;
    goto LABEL_10;
  }
  v7 = a2 + 26400;
  while ( *(_QWORD *)(v5 + 16) >= v11 )
  {
    v8 = *(_DWORD *)(v5 + 8);
    v7 = v5;
    if ( !v8 )
      goto LABEL_7;
LABEL_4:
    v5 = v8;
  }
  v8 = *(_DWORD *)(v5 + 12);
  v5 = v7;
  if ( v8 )
    goto LABEL_4;
LABEL_7:
  if ( v6 != (_DWORD *)v5 )
  {
    if ( *(_QWORD *)(v5 + 16) > v11 )
      goto LABEL_9;
LABEL_10:
    if ( v6 != (_DWORD *)v5 )
    {
      v9 = (const CRoomAttributes *)std::map<unsigned long long,CRoomAttributes>::operator[]<unsigned long long>(
                                      v6,
                                      &v11);
      CRoomAttributes::operator=(this, v9);
    }
  }
  return this;
}


// ===== 8203ec std::map<ulong long,CRoomAttributes,std::less<ulong long>,std::allocator<std::pair<ulong long const,CRoomAttributes>>>::operator[]<int>(int const&) =====
int __fastcall std::map<unsigned long long,CRoomAttributes>::operator[]<int>(_DWORD *a1, int *a2)
{
  int v2; // r4
  _DWORD *v4; // r2
  unsigned __int64 v5; // r8
  int v6; // r3
  int v7; // r0
  int v9; // r4
  unsigned __int64 v10; // [sp+0h] [bp-740h] BYREF
  _BYTE v11[920]; // [sp+8h] [bp-738h] BYREF
  _BYTE v12[912]; // [sp+3A0h] [bp-3A0h] BYREF
  int v13; // [sp+738h] [bp-8h] BYREF
  int v14; // [sp+73Ch] [bp-4h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v4 = a1;
    v5 = *a2;
    while ( 1 )
    {
      if ( *(_QWORD *)(v2 + 16) >= v5 )
      {
        v6 = *(_DWORD *)(v2 + 8);
        v4 = (_DWORD *)v2;
        if ( !v6 )
          goto LABEL_7;
      }
      else
      {
        v6 = *(_DWORD *)(v2 + 12);
        v2 = (int)v4;
        if ( !v6 )
          goto LABEL_7;
      }
      v2 = v6;
    }
  }
  v2 = (int)a1;
  v5 = *a2;
LABEL_7:
  if ( a1 == (_DWORD *)v2 || (v7 = v2, *(_QWORD *)(v2 + 16) > v5) )
  {
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v12);
    v10 = v5;
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v11, (const CRoomAttributes *)v12);
    v13 = v2;
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (unsigned int *)&v10);
    v9 = v14;
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v11);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v12);
    v7 = v9;
  }
  return v7 + 24;
}


// ===== 820508 CMatchingGLLive::GetRoomAttributes(void) =====
int __fastcall CMatchingGLLive::GetRoomAttributes(CMatchingGLLive *this)
{
  return std::map<unsigned long long,CRoomAttributes>::operator[]<int>((_DWORD *)this + 6600, (int *)this + 6659);
}


// ===== 82051c CMatchingGLLive::GetRoomList(void) =====
CMatchingGLLive *__fastcall CMatchingGLLive::GetRoomList(CMatchingGLLive *this, int a2)
{
  int v4; // r7
  int GLXPlayerMPLobbyObserver; // r0
  _DWORD *v6; // r7
  void *v7; // r0
  char *v8; // r4
  char *v9; // r3
  size_t v10; // r1
  __int64 v12; // [sp+30h] [bp-B24h] BYREF
  _BYTE v13[920]; // [sp+38h] [bp-B1Ch] BYREF
  _BYTE v14[912]; // [sp+3D0h] [bp-784h] BYREF
  void *__p; // [sp+768h] [bp-3ECh] BYREF
  char *v16; // [sp+76Ch] [bp-3E8h]
  int v17; // [sp+770h] [bp-3E4h]
  _DWORD *v18; // [sp+774h] [bp-3E0h] BYREF
  int v19; // [sp+778h] [bp-3DCh] BYREF
  __int64 v20; // [sp+780h] [bp-3D4h] BYREF
  std::string v21; // [sp+788h] [bp-3CCh] BYREF
  int v22; // [sp+7A0h] [bp-3B4h]
  _BYTE v23[932]; // [sp+7A8h] [bp-3ACh] BYREF

  v4 = a2 + 26368;
  GLXPlayerMPLobbyObserver = CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
  std::vector<tGLRoomInfo *>::vector(&__p, GLXPlayerMPLobbyObserver + 24);
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v6 = (_DWORD *)(v4 + 32);
  if ( *(_DWORD *)(a2 + 26416) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::_M_erase(
      (int)v6,
      *(_DWORD **)(a2 + 26404));
    *(_DWORD *)(a2 + 26416) = 0;
    *(_DWORD *)(a2 + 26408) = v6;
    *(_DWORD *)(a2 + 26404) = 0;
    *(_DWORD *)(a2 + 26412) = v6;
  }
  v7 = v16;
  if ( __p != v16 )
  {
    v8 = (char *)__p + 4;
    do
    {
      LC_API_MEMSET_0(&v20, 0, 0x3C4u);
      v20 = **((int **)v8 - 1);
      std::string::string(&v21, *(char **)(*((_DWORD *)v8 - 1) + 4));
      v22 = *(_DWORD *)(*((_DWORD *)v8 - 1) + 16);
      CRoomAttributes::CRoomAttributes((CRoomAttributes *)v23);
      CRoomAttributes::CRoomAttributes((CRoomAttributes *)v14);
      CRoomAttributes::Unserialize((CRoomAttributes *)v14, *(char **)(*((_DWORD *)v8 - 1) + 32), 0x80u);
      v12 = **((int **)v8 - 1);
      CRoomAttributes::CRoomAttributes((CRoomAttributes *)v13, (const CRoomAttributes *)v14);
      v18 = v6;
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
        &v19,
        v6,
        (int *)&v18,
        (unsigned int *)&v12);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v13);
      CRoomAttributes::operator=((CRoomAttributes *)v23, (const CRoomAttributes *)v14);
      std::vector<tRoomInfo>::push_back((int *)this, (int)&v20);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v14);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v23);
      std::string::~string(&v21);
      v9 = v8;
      v8 += 4;
    }
    while ( v16 != v9 );
    v7 = __p;
  }
  if ( v7 )
  {
    v10 = (v17 - (_DWORD)v7) & 0xFFFFFFFC;
    if ( v10 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v7, v10);
  }
  return this;
}


// ===== 82078c CMatchingGLLive::UpdateRoom(void) =====
int __fastcall CMatchingGLLive::UpdateRoom(CMatchingGLLive *this)
{
  CMatchingGLLive *HasEventOccured; // r0
  CMatchingGLLive *v4; // r0
  CMatchingGLLive *v5; // r0
  int *v6; // r0
  int v7; // r3
  CMatchingGLLive *v8; // r0
  CMatchingGLLive *v9; // r0
  int *GLXPlayerMPLobbyObserver; // r0
  CMatchingGLLive *v11; // r0
  CMatchingGLLive *v12; // r0
  CMatchingGLLive *v13; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0
  __int64 v15; // [sp+8h] [bp-3BCh] BYREF
  _BYTE v16[924]; // [sp+10h] [bp-3B4h] BYREF
  int v17[3]; // [sp+3ACh] [bp-18h] BYREF
  int v18; // [sp+3B8h] [bp-Ch] BYREF
  int v19; // [sp+3BCh] [bp-8h] BYREF

  if ( !CMatchingGLLive::IsLoggedIn(this) )
    return -1;
  HasEventOccured = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(
                                         (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                                         4,
                                         0);
  if ( HasEventOccured )
  {
    GLXPlayerMPLobbyObserver = (int *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(HasEventOccured);
    if ( GLXPlayerMPLobbyObserver[2] >= 0 )
    {
      v11 = (CMatchingGLLive *)CEventQueueBase::ConsumeEvent(
                                 (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                                 4);
      v12 = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v11);
      *((_BYTE *)this + 26640) = *((_BYTE *)v12 + 6);
      v13 = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v12);
      *((_DWORD *)this + 6659) = *((_DWORD *)v13 + 2);
      GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v13);
      GLXPlayerMPLobby::mpSendSetPlayerStatus(GLXPlayerMPLobby, 3u);
      v15 = *((int *)this + 6659);
      CRoomAttributes::CRoomAttributes((CRoomAttributes *)v16, (CMatchingGLLive *)((char *)this + 13904));
      v18 = (int)this + 26400;
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,CRoomAttributes>,std::priv::_Select1st<std::pair<unsigned long long const,CRoomAttributes>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,CRoomAttributes>>,std::allocator<std::pair<unsigned long long const,CRoomAttributes>>>::insert_unique(
        &v19,
        (_DWORD *)this + 6600,
        &v18,
        (unsigned int *)&v15);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v16);
    }
    CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)GLXPlayerMPLobbyObserver);
  }
  v4 = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(
                            (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                            5,
                            0);
  if ( v4 && *(int *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v4) + 8) > 0 )
  {
    v8 = (CMatchingGLLive *)CEventQueueBase::ConsumeEvent(
                              (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                              5);
    v9 = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v8);
    *((_BYTE *)this + 26640) = *((_BYTE *)v9 + 6);
    *((_DWORD *)this + 6659) = *(_DWORD *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v9) + 8);
  }
  v5 = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(
                            (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                            6,
                            1);
  if ( v5 )
    CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v5);
  CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 7, 1);
  v6 = (int *)CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 8, 1);
  if ( v6 )
  {
    v6 = (int *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)v6);
    if ( v6[5] == 7 )
    {
      (*(void (__fastcall **)(int *, CMatchingGLLive *))(*(_DWORD *)this + 144))(v17, this);
      *((_DWORD *)this + 6664) = time(nullptr);
      *((_DWORD *)this + 6669) = 0;
      v6 = std::vector<tRoomInfo>::~vector(v17);
    }
  }
  v7 = *((_DWORD *)this + 6669);
  if ( v7 != 7 )
  {
    if ( v7 != 9 )
    {
      if ( v7 != 3 )
        return -1;
      if ( *(_DWORD *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)v6) + 20) != 4 )
        return 0;
      goto LABEL_14;
    }
    if ( *(_DWORD *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)v6) + 20) == 5 )
    {
LABEL_14:
      *((_DWORD *)this + 6669) = 0;
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194312, nullptr, 0);
      return 0;
    }
    return 0;
  }
  if ( *(_DWORD *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver((CMatchingGLLive *)v6) + 20) != 7 )
    return 0;
  (*(void (__fastcall **)(int *, CMatchingGLLive *))(*(_DWORD *)this + 144))(v17, this);
  *((_DWORD *)this + 6664) = time(nullptr);
  *((_DWORD *)this + 6669) = 0;
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
  std::vector<tRoomInfo>::~vector(v17);
  return 0;
}


// ===== 820a6c CMatchingGLLive::Update(void) =====
int __fastcall CMatchingGLLive::Update(CMatchingGLLive *this)
{
  CSignIn *v2; // r0
  int v3; // r8
  CSignInGLLive *v4; // r0
  CSignIn *v5; // r0
  CSignInGLLive *v6; // r0
  int GLXPlayerMPLobby; // r0
  CConnectionManager *v8; // r0
  pthread_mutex_t *ConnectionMgr; // r0
  COnline *HasEventOccured; // r0
  int updated; // r7
  int v13; // r7
  GLXPlayerComponent *v14; // r7
  GLXPlayerComponent *GLXPlayerLogin; // r0
  char *UID; // r0
  CMatchingGLLive *v17; // r0
  GLXPlayerComponent *v18; // r7
  GLXPlayerComponent *v19; // r0
  char *v20; // r0
  GLXPlayerMessage *v21; // r10
  GLXPlayerObserver *v22; // r1
  GLXPlayerComponent *v23; // r0
  GLXPlayerUserFriend *v24; // r11
  CMatchingGLLiveFriendObserver *v25; // r11
  GLXPlayerLeaderboard *v26; // r9
  CConnectionManager *v27; // r0
  pthread_mutex_t *v28; // r0
  COnlineImpl *Online; // r0
  CMatchingGLLive *v30; // r0
  GLXPlayerMPLobby *v31; // r0
  int MemberIndex; // r10
  CSignInGLLive *v33; // r0
  _BYTE v34[32]; // [sp+8h] [bp-5Ch] BYREF
  int v35; // [sp+28h] [bp-3Ch] BYREF
  std::string v36; // [sp+44h] [bp-20h] BYREF

  v2 = (CSignIn *)CMatching::Update(this);
  if ( GLXPlayerSereverConfig::s_isLoadConfig )
  {
    v3 = *((unsigned __int8 *)this + 26603);
    if ( !*((_BYTE *)this + 26603) )
    {
      v21 = (GLXPlayerMessage *)operator new(0xB8u, 2);
      GLXPlayerMessage::GLXPlayerMessage(v21);
      *((_DWORD *)this + 6594) = v21;
      v22 = (GLXPlayerObserver *)operator new(4u, 2);
      *(_DWORD *)v22 = &off_992980;
      v23 = *((GLXPlayerComponent **)this + 6594);
      *((_DWORD *)this + 6595) = v22;
      GLXPlayerComponent::RegisterObserver(v23, v22);
      v24 = (GLXPlayerUserFriend *)operator new(0x74u, 2);
      GLXPlayerUserFriend::GLXPlayerUserFriend(v24);
      *((_DWORD *)this + 6592) = v24;
      v25 = (CMatchingGLLiveFriendObserver *)operator new(8u, 2);
      CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(v25);
      *((_DWORD *)this + 6593) = v25;
      GLXPlayerComponent::RegisterObserver(*((GLXPlayerComponent **)this + 6592), v25);
      v26 = (GLXPlayerLeaderboard *)operator new(0x6Cu, 2);
      GLXPlayerLeaderboard::GLXPlayerLeaderboard(v26);
      *((_DWORD *)this + 6599) = v26;
      GLXPlayerComponent::RegisterObserver(v26, *((GLXPlayerObserver **)this + 6595));
      *((_BYTE *)this + 26603) = 1;
      *((_BYTE *)this + 12) = 1;
      v2 = (CSignIn *)CEventQueueBase::AddEvent(
                        (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                        8388609,
                        (void *)v3,
                        v3);
    }
  }
  v4 = CSignIn::Get(v2);
  v5 = (CSignIn *)(*(int (__fastcall **)(CSignInGLLive *))(*(_DWORD *)v4 + 28))(v4);
  v6 = CSignIn::Get(v5);
  if ( *((_BYTE *)v6 + 17) )
  {
    if ( !*((_BYTE *)this + 26600) )
    {
      v14 = *((GLXPlayerComponent **)this + 6594);
      GLXPlayerLogin = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(v6);
      UID = (char *)GLXPlayerComponent::GetUID(GLXPlayerLogin);
      v17 = (CMatchingGLLive *)GLXPlayerComponent::SetUID(v14, UID);
      v18 = *((GLXPlayerComponent **)this + 6599);
      v19 = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(v17);
      v20 = (char *)GLXPlayerComponent::GetUID(v19);
      GLXPlayerComponent::SetUID(v18, v20);
      if ( !*((_BYTE *)this + 26601) )
        CMatchingGLLive::InitializeFriend(this);
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6594) + 8))(*((_DWORD *)this + 6594));
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 6592) + 8))(*((_DWORD *)this + 6592));
      v6 = (CSignInGLLive *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6599) + 8))(*((_DWORD *)this + 6599));
    }
    GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(v6);
    v8 = (CConnectionManager *)(*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 8))(GLXPlayerMPLobby);
  }
  else
  {
    v8 = (CConnectionManager *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6596) + 8))(*((_DWORD *)this + 6596));
  }
  if ( !*((_BYTE *)this + 12) )
    return *((unsigned __int8 *)this + 12);
  ConnectionMgr = (pthread_mutex_t *)GetConnectionMgr(v8);
  HasEventOccured = (COnline *)CEventQueueBase::HasEventOccured(ConnectionMgr + 2, 6291457, 0);
  if ( HasEventOccured )
  {
    v27 = (CConnectionManager *)CEventQueueBase::AddEvent(
                                  (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                  8388611,
                                  nullptr,
                                  0);
    v28 = (pthread_mutex_t *)GetConnectionMgr(v27);
    HasEventOccured = (COnline *)CEventQueueBase::ConsumeEvent(v28 + 2, 6291457);
    if ( *((_BYTE *)this + 26600) )
    {
LABEL_17:
      if ( CMatchingGLLive::s_GameCenterInfo )
      {
        if ( *((_DWORD *)this + 6670) == 6
          && (*(int (__fastcall **)(CMatchingGLLive *))(*(_DWORD *)this + 96))(this) == dword_A33884 )
        {
          CMatchingGLLive::SetGCState(this, 7);
        }
      }
      else if ( *((_DWORD *)this + 6670) == 4 )
      {
        Online = (COnlineImpl *)GetOnline(HasEventOccured);
        v30 = (CMatchingGLLive *)COnlineImpl::ElapsedTimeMs(Online, 1000);
        if ( v30 )
        {
          v31 = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(v30);
          GLXPlayerMPLobby::mpSendGetLobbyForName(v31, (char *)dword_A33880);
        }
      }
      goto LABEL_11;
    }
    MemberIndex = CMatching::GetMemberIndex(this, *((_DWORD *)this + 3472));
    v33 = CSignIn::Get((CSignIn *)MemberIndex);
    std::string::string(&v36, *((char **)v33 + 1));
    NetStructString<16u>::NetStructString((int)v34, &v36);
    (*(void (__fastcall **)(char *, int *))(*((_DWORD *)this + 90 * MemberIndex + 3788) + 28))(
      (char *)this + 360 * MemberIndex + 15152,
      &v35);
    NetStructString<16u>::~NetStructString((int)v34);
    std::string::~string(&v36);
  }
  if ( *((_BYTE *)this + 26600) )
    goto LABEL_17;
LABEL_11:
  updated = CMatchingGLLive::UpdateRoom(this);
  v13 = CMatchingGLLive::ProcessGLLiveEvents(this) | updated;
  return v13 | CMatchingGLLive::ProcessFriendEvents(this);
}


// ===== 820e7c CMatchingGLLive::AddServer(int,CNetworkId &,int,CRoomAttributes &) =====
int __fastcall CMatchingGLLive::AddServer(pthread_mutex_t *this, int a2, CNetworkId *a3, int a4, CRoomAttributes *a5)
{
  pthread_mutex_t *v7; // r10
  int v9; // r6
  char *v10; // r4
  _BOOL4 IsEqual; // r0
  int v12; // r2
  COnline *v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int (__fastcall ***v19)(_DWORD); // r0
  int TransportMgr; // r0
  int v21; // r3
  int *v22; // r0
  int *v23; // r4
  int v24; // r1
  int v25; // r2
  int v26; // r3
  int v27; // r1
  int v28; // r2
  std::string *v29; // r0
  int v31; // r3
  int (__fastcall ***Online)(_DWORD); // r0
  int v33; // r0
  int v35; // [sp+Ch] [bp-408h] BYREF
  int v36; // [sp+10h] [bp-404h] BYREF
  int v37; // [sp+14h] [bp-400h] BYREF
  int v38; // [sp+18h] [bp-3FCh]
  int v39; // [sp+1Ch] [bp-3F8h]
  int v40; // [sp+20h] [bp-3F4h]
  COnline *v41; // [sp+24h] [bp-3F0h]
  int v42; // [sp+28h] [bp-3ECh]
  int v43; // [sp+2Ch] [bp-3E8h]
  CTransportManager *v44; // [sp+30h] [bp-3E4h]
  std::string v45; // [sp+34h] [bp-3E0h] BYREF
  int v46; // [sp+4Ch] [bp-3C8h]
  int v47; // [sp+50h] [bp-3C4h]
  _BYTE v48[924]; // [sp+58h] [bp-3BCh] BYREF
  std::string v49; // [sp+3F4h] [bp-20h] BYREF

  v7 = this + 6615;
  CNetMutex::Lock(this + 6615);
  v9 = *((_DWORD *)this + 3708);
  v10 = (char *)(this + 3706);
  while ( v10 != (char *)v9 )
  {
    while ( 1 )
    {
      IsEqual = CNetworkId::IsEqual((unsigned __int16 *)(v9 + 28), (unsigned __int16 *)a3);
      if ( IsEqual )
      {
        Online = (int (__fastcall ***)(_DWORD))GetOnline((COnline *)IsEqual);
        v33 = (**Online)(Online);
        *(_DWORD *)(v9 + 84) = a4;
        *(_DWORD *)(v9 + 56) = v33;
        return CNetMutex::Unlock(v7);
      }
      v12 = *(_DWORD *)(v9 + 12);
      if ( !v12 )
        break;
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v9 = v12;
      if ( v10 == (char *)v12 )
        goto LABEL_9;
    }
    v31 = *(_DWORD *)(v9 + 4);
    if ( v9 == *(_DWORD *)(v31 + 12) )
    {
      do
      {
        v9 = v31;
        v31 = *(_DWORD *)(v31 + 4);
      }
      while ( *(_DWORD *)(v31 + 12) == v9 );
      v12 = *(_DWORD *)(v9 + 12);
    }
    if ( v12 != v31 )
      v9 = v31;
  }
LABEL_9:
  tMatchingPeer::tMatchingPeer((tMatchingPeer *)&v36);
  v36 = a2;
  if ( a3 != (CNetworkId *)&v37 )
  {
    v14 = *((_DWORD *)a3 + 1);
    v15 = *((_DWORD *)a3 + 2);
    v16 = *((_DWORD *)a3 + 3);
    v37 = *(_DWORD *)a3;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    v13 = *((COnline **)a3 + 4);
    v17 = *((_DWORD *)a3 + 5);
    v18 = *((_DWORD *)a3 + 6);
    v41 = v13;
    v42 = v17;
    v43 = v18;
  }
  v19 = (int (__fastcall ***)(_DWORD))GetOnline(v13);
  v44 = (CTransportManager *)(**v19)(v19);
  TransportMgr = GetTransportMgr(v44);
  (*(void (__fastcall **)(std::string *, int, CNetworkId *))(*(_DWORD *)TransportMgr + 28))(&v49, TransportMgr, a3);
  std::string::_M_assign(&v45, v49._M_start_of_storage._M_data, v49._M_finish);
  std::string::~string(&v49);
  v46 = a4;
  CRoomAttributes::operator=((CRoomAttributes *)v48, a5);
  v21 = *((_DWORD *)this + 3471);
  *((_DWORD *)this + 3471) = v21 + 1;
  v35 = v21;
  v22 = (int *)std::map<unsigned long long,tMatchingPeer>::operator[]<int>((_DWORD *)this + 3706, &v35);
  *v22 = v36;
  v23 = v22;
  if ( v22 + 1 != &v37 )
  {
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v22[1] = v37;
    v22[2] = v24;
    v22[3] = v25;
    v22[4] = v26;
    v27 = v42;
    v28 = v43;
    v22[5] = (int)v41;
    v22[6] = v27;
    v22[7] = v28;
  }
  v29 = (std::string *)(v22 + 9);
  v23[8] = (int)v44;
  if ( v23 + 9 != (int *)&v45 )
    std::string::_M_assign(v29, v45._M_start_of_storage._M_data, v45._M_finish);
  v23[15] = v46;
  v23[16] = v47;
  CRoomAttributes::operator=((CRoomAttributes *)(v23 + 18), (const CRoomAttributes *)v48);
  if ( *((_BYTE *)this + 13872) )
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v48);
  std::string::~string(&v45);
  return CNetMutex::Unlock(v7);
}


// ===== 821110 CMatchingGLLive::ProcessServerMessage(CNetworkId &,NetBitStream &) =====
void __fastcall CMatchingGLLive::ProcessServerMessage(pthread_mutex_t *this, CNetworkId *a2, NetBitStream *a3)
{
  _BYTE v5[920]; // [sp+8h] [bp-3C4h] BYREF
  int v6[11]; // [sp+3A0h] [bp-2Ch] BYREF

  if ( !CMatching::IsServer((CMatching *)this) )
  {
    CNetworkId::Reset(v6);
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v5);
    NetBitStream::ReadByteArray(a3, (char *)v6, 0x28u);
    CRoomAttributes::Unserialize((CRoomAttributes *)v5, a3);
    CMatchingGLLive::AddServer(this, v6[7], (CNetworkId *)v6, v6[8], (CRoomAttributes *)v5);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v5);
  }
}


// ===== 821188 CMatchingGLLive::BroadcastPacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CMatchingGLLive::BroadcastPacketReceiverCallback(
        pthread_mutex_t *this,
        CNetworkId *a2,
        char *a3,
        size_t a4)
{
  void *v8[8]; // [sp+4h] [bp-24h] BYREF
  char v9[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a4);
  NetBitStream::SetBuffer(v8, a3, a4);
  NetBitStream::ReadByteArray((NetBitStream *)v8, v9, 1u);
  if ( v9[0] == 1 )
  {
    CMatchingGLLive::ProcessServerMessage(this, a2, (NetBitStream *)v8);
  }
  else if ( v9[0] == 2 )
  {
    CMatchingGLLive::ProcessClientMessage((CMatchingGLLive *)this, a2, (NetBitStream *)v8);
  }
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 821218 CMatchingGLLive::sBroadcastPacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CMatchingGLLive::sBroadcastPacketReceiverCallback(
        CMatchingGLLive *this,
        CNetworkId *a2,
        char *a3,
        int a4)
{
  CMatchingGLLive::BroadcastPacketReceiverCallback(
    (pthread_mutex_t *)CMatching::s_Matching,
    this,
    (char *)a2,
    (size_t)a3);
}


// ===== 821254 CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(void) =====
void __fastcall CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(CMatchingGLLiveFriendObserver *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_9928F0;
}


// ===== 821280 CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(void) =====
void __fastcall CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver(CMatchingGLLiveFriendObserver *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_9928F0;
}


// ===== 8212ac CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver() =====
void __fastcall CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver(CMatchingGLLiveFriendObserver *this)
{
  ;
}


// ===== 8212b0 CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver() =====
void __fastcall CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver(CMatchingGLLiveFriendObserver *this)
{
  ;
}


// ===== 8212b4 CMatchingGLLiveFriendObserver::OnNetworkError(void) =====
void __fastcall CMatchingGLLiveFriendObserver::OnNetworkError(CMatchingGLLiveFriendObserver *this)
{
  ;
}


// ===== 8212b8 CMatchingGLLiveFriendObserver::OnRequestTimeout(int) =====
void __fastcall CMatchingGLLiveFriendObserver::OnRequestTimeout(CMatchingGLLiveFriendObserver *this, int a2)
{
  ;
}


// ===== 8212bc CMatchingGLLiveFriendObserver::OnRequestSuccess(int,char *,int) =====
int __fastcall CMatchingGLLiveFriendObserver::OnRequestSuccess(int this, int a2, char *a3, int a4)
{
  if ( a2 == 61 )
    *(_BYTE *)(this + 4) = 1;
  return this;
}


// ===== 8212cc CMatchingGLLiveFriendObserver::OnRequestFailure(int,int) =====
void __fastcall CMatchingGLLiveFriendObserver::OnRequestFailure(CMatchingGLLiveFriendObserver *this, int a2, int a3)
{
  ;
}


// ===== 8212d0 PrintDatapacket(DataPacket *) =====
int __fastcall PrintDatapacket(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 100))(a1);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 96))(a1);
}


// ===== 8212f8 CMatchingGLLiveLobbyObserver::OnMPEstablishConnectionSuccess(void) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPEstablishConnectionSuccess(int this)
{
  *(_DWORD *)(this + 72) = 0;
  *(_BYTE *)(this + 5) = 1;
  return this;
}


// ===== 82130c CMatchingGLLiveLobbyObserver::OnMPLoginSuccess(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPLoginSuccess(int result)
{
  *(_DWORD *)(result + 72) = 0;
  *(_BYTE *)(result + 4) = 1;
  *(_DWORD *)(result + 20) = 3;
  return result;
}


// ===== 821328 CMatchingGLLiveLobbyObserver::OnMPKickOutPlayerSuccess(void) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPKickOutPlayerSuccess(int this)
{
  *(_DWORD *)(this + 72) = 0;
  return this;
}


// ===== 821334 CMatchingGLLiveLobbyObserver::OnMPStartGameSuccess(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPStartGameSuccess(int result)
{
  *(_DWORD *)(result + 72) = 0;
  *(_DWORD *)(result + 20) = 8;
  *(_BYTE *)(result + 6) = 0;
  return result;
}


// ===== 82134c CMatchingGLLiveLobbyObserver::OnMPGetLobbyInfo(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPGetLobbyInfo(int result, int a2)
{
  if ( *(_BYTE *)(result + 6) )
  {
    *(_DWORD *)(result + 20) = 6;
    return PrintDatapacket(a2);
  }
  return result;
}


// ===== 821368 CMatchingGLLiveLobbyObserver::OnMPSetParamSuccess(int) =====
void __fastcall CMatchingGLLiveLobbyObserver::OnMPSetParamSuccess(CMatchingGLLiveLobbyObserver *this, int a2)
{
  ;
}


// ===== 82136c CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter(DataPacket *) =====
int CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter()
{
  return 0;
}


// ===== 821374 CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus(DataPacket *) =====
int CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus()
{
  return 0;
}


// ===== 82137c CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams(DataPacket *) =====
int CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams()
{
  return 0;
}


// ===== 821384 CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser(DataPacket *) =====
int CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser()
{
  return 0;
}


// ===== 82138c tGLRoomInfo::~tGLRoomInfo() =====
void __fastcall tGLRoomInfo::~tGLRoomInfo(tGLRoomInfo *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *((void **)this + 1);
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 1) = 0;
  }
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)this + 2) = 0;
  }
  v4 = *((void **)this + 8);
  if ( v4 )
  {
    CustomFree(v4);
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 9) = 0;
}


// ===== 8213ec CMatchingGLLiveLobbyObserver::ClearRoomList(void) =====
void __fastcall CMatchingGLLiveLobbyObserver::ClearRoomList(CMatchingGLLiveLobbyObserver *this)
{
  int v1; // r3
  void *v3; // r5
  int v4; // r2

  v1 = *((_DWORD *)this + 7);
  if ( *((_DWORD *)this + 6) != v1 )
  {
    do
    {
      v3 = *(void **)(v1 - 4);
      if ( v3 )
      {
        tGLRoomInfo::~tGLRoomInfo(*(tGLRoomInfo **)(v1 - 4));
        CustomFree(v3);
        v1 = *((_DWORD *)this + 7);
      }
      *(_DWORD *)(v1 - 4) = 0;
      v4 = *((_DWORD *)this + 6);
      v1 = *((_DWORD *)this + 7) - 4;
      *((_DWORD *)this + 7) = v1;
    }
    while ( v1 != v4 );
  }
}


// ===== 821448 CMatchingGLLiveLobbyObserver::Terminate(void) =====
void __fastcall CMatchingGLLiveLobbyObserver::Terminate(CMatchingGLLiveLobbyObserver *this)
{
  CMatchingGLLiveLobbyObserver::ClearRoomList(this);
  *((_DWORD *)this + 5) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_BYTE *)this + 5) = 0;
  *((_BYTE *)this + 4) = 0;
}


// ===== 821470 CMatchingGLLiveLobbyObserver::OnMPDisconnectSuccess(void) =====
// attributes: thunk
void __fastcall CMatchingGLLiveLobbyObserver::OnMPDisconnectSuccess(CMatchingGLLiveLobbyObserver *this)
{
  CMatchingGLLiveLobbyObserver::Terminate(this);
}


// ===== 821474 CMatchingGLLiveLobbyObserver::GetRoomIndexByName(char const*) =====
int __fastcall CMatchingGLLiveLobbyObserver::GetRoomIndexByName(CMatchingGLLiveLobbyObserver *this, const char *a2)
{
  int v2; // r5
  int v4; // r7
  int v5; // r4

  v2 = *((_DWORD *)this + 6);
  v4 = (*((_DWORD *)this + 7) - v2) >> 2;
  if ( !v4 )
    return -1;
  v5 = 0;
  while ( LC_API_STRCMP_0(*(const char **)(*(_DWORD *)(v2 + 4 * v5) + 4), a2) )
  {
    if ( ++v5 == v4 )
      return -1;
  }
  return v5;
}


// ===== 8214cc CMatchingGLLiveLobbyObserver::GetMemberIndexByName(char const*) =====
int __fastcall CMatchingGLLiveLobbyObserver::GetMemberIndexByName(CMatchingGLLiveLobbyObserver *this, const char *a2)
{
  int v2; // r6
  int v3; // r7
  int v5; // r4
  int v6; // r5

  v2 = *((_DWORD *)this + 9);
  v3 = 1022611261 * ((*((_DWORD *)this + 10) - v2) >> 2);
  if ( !v3 )
    return -1;
  v5 = 0;
  v6 = 0;
  while ( LC_API_STRCMP_0((const char *)(v2 + v5 + 40), a2) )
  {
    ++v6;
    v5 += 84;
    if ( v6 == v3 )
      return -1;
  }
  return v6;
}


// ===== 82153c CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  CSignInGLLive *v2; // r0

  v2 = CSignIn::Get(this);
  CEventQueueBase::AddEvent((pthread_mutex_t *)v2 + 5, 9, nullptr, 0);
  return 0;
}


// ===== 821560 CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  if ( *((_BYTE *)this + 6) )
  {
    CMatching::Get(this);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 11, nullptr, 0);
  }
  return 0;
}


// ===== 8215a4 CMatchingGLLiveLobbyObserver::OnMPFunctionError(char *,int) =====
CMatching *__fastcall CMatchingGLLiveLobbyObserver::OnMPFunctionError(CMatching *this, char *a2, int a3)
{
  CMatching *v4; // r5

  v4 = this;
  switch ( a3 )
  {
    case 16398:
      CMatching::Get(this);
      this = (CMatching *)CEventQueueBase::AddEvent(
                            (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                            10,
                            nullptr,
                            0);
      *((_DWORD *)v4 + 18) = 16398;
      break;
    case 16399:
      CMatching::Get(this);
      this = (CMatching *)CEventQueueBase::AddEvent(
                            (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                            9,
                            nullptr,
                            0);
      *((_DWORD *)v4 + 18) = a3;
      break;
    case -2:
      CMatching::Get(this);
      this = (CMatching *)CEventQueueBase::AddEvent(
                            (pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                            12,
                            nullptr,
                            0);
      *((_DWORD *)v4 + 18) = a3;
      break;
    default:
      *((_DWORD *)this + 18) = a3;
      break;
  }
  return this;
}


// ===== 821654 CMatchingGLLiveLobbyObserver::OnMPNetworkError(int) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPNetworkError(int this, int a2)
{
  *(_DWORD *)(this + 72) = a2;
  *(_BYTE *)(this + 4) = 0;
  *(_BYTE *)(this + 5) = 0;
  *(_BYTE *)(this + 6) = 0;
  if ( a2 == -2 )
  {
    CMatching::Get((CMatching *)this);
    return CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 12, nullptr, 0);
  }
  return this;
}


// ===== 8216a8 CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  _DWORD *DedicatedServer; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  CConnectionManager *v13; // r0
  CConnectionManager *ConnectionMgr; // r0
  CMatching *v15; // r0
  CMatchingGLLive *v16; // r0
  _DWORD v18[6]; // [sp+4h] [bp-4Ch] BYREF
  int v19; // [sp+1Ch] [bp-34h]
  int v20; // [sp+20h] [bp-30h]
  int v21; // [sp+24h] [bp-2Ch]
  int v22; // [sp+28h] [bp-28h]
  int v23; // [sp+2Ch] [bp-24h]
  int v24; // [sp+30h] [bp-20h]
  _DWORD v25[2]; // [sp+34h] [bp-1Ch] BYREF
  __int16 v26; // [sp+3Ch] [bp-14h]
  int v27; // [sp+40h] [bp-10h]
  int v28; // [sp+4Ch] [bp-4h]

  DedicatedServer = (_DWORD *)GetDedicatedServer();
  v4 = DedicatedServer[1];
  v5 = DedicatedServer[2];
  v6 = DedicatedServer[3];
  v18[0] = *DedicatedServer;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v7 = DedicatedServer[5];
  v8 = DedicatedServer[6];
  v9 = DedicatedServer[7];
  v18[4] = DedicatedServer[4];
  v18[5] = v7;
  v19 = v8;
  v20 = v9;
  v10 = DedicatedServer[9];
  v11 = DedicatedServer[10];
  v12 = DedicatedServer[11];
  v21 = DedicatedServer[8];
  v22 = v10;
  v23 = v11;
  v24 = v12;
  ParseDedicatedServerInfo(v18, a2);
  v13 = (CConnectionManager *)CNetworkId::Reset(v25);
  CMatchingGLLive::s_IsGameStarting = 1;
  v25[1] = v19;
  v27 = v19;
  v28 |= 3u;
  v26 = HIWORD(v20);
  LOWORD(v25[0]) = v20;
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v13);
  v15 = (CMatching *)CConnectionManager::Connect(ConnectionMgr, 1, (CNetworkId *)v25);
  v16 = (CMatchingGLLive *)CMatching::Get(v15);
  CMatchingGLLive::SetGCState(v16, 8);
  return 0;
}


// ===== 821760 std::vector<tGLRoomInfo *,std::allocator<tGLRoomInfo *>>::vector(uint) [clone] =====
_DWORD *__fastcall std::vector<tGLRoomInfo *>::vector(_DWORD *a1)
{
  char *v2; // r0
  size_t v3; // r3
  size_t v5; // [sp+4h] [bp-4h] BYREF

  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = (char *)std::allocator<tGLRoomInfo *>::_M_allocate((int)(a1 + 2), 0, &v5);
  v3 = v5;
  *a1 = v2;
  a1[1] = v2;
  a1[2] = &v2[4 * v3];
  return a1;
}


// ===== 8217a8 CMatchingGLLiveLobbyObserver::OnMPListSessionSuccess(DataPacket *) =====
void __fastcall CMatchingGLLiveLobbyObserver::OnMPListSessionSuccess(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  CMatching *v3; // r0
  bool v4; // cc
  int v5; // r0
  int v6; // r8
  int v7; // r6
  int v8; // r10
  _DWORD *v9; // r0
  _DWORD *v10; // r5
  CMatching *v11; // r0
  int v12; // r0
  int RoomIndexByName; // r0
  int v14; // r3
  tGLRoomInfo *v15; // r8
  time_t v16; // r0
  char *v17; // r8
  CMatching *v18; // r0
  CMatching *v19; // r0
  CMatchingGLLive *v20; // r0
  unsigned int v21; // r2
  unsigned int v22; // r3
  char *v23; // r0
  char *v24; // r3
  _BYTE *v25; // r1
  size_t v26; // r8
  char *v27; // r8
  _DWORD *v28; // r8
  void *v29; // r0
  size_t v30; // r1
  int v31; // r2
  char *v32; // r0
  char *v33; // [sp+0h] [bp-3E4h]
  char *v34; // [sp+0h] [bp-3E4h]
  _BYTE v36[752]; // [sp+10h] [bp-3D4h] BYREF
  _BYTE v37[36]; // [sp+3ACh] [bp-38h] BYREF
  int v38; // [sp+3D0h] [bp-14h] BYREF
  const char *v39; // [sp+3D4h] [bp-10h] BYREF
  int v40; // [sp+3D8h] [bp-Ch] BYREF
  __int16 v41; // [sp+3DEh] [bp-6h] BYREF

  PrintDatapacket((int)a2);
  v40 = 0;
  v3 = (CMatching *)(*(int (__fastcall **)(DataPacket *, int *))(*(_DWORD *)a2 + 20))(a2, &v40);
  v4 = v40 <= 0;
  *((_BYTE *)this + 7) = 1;
  *((_DWORD *)this + 5) = 7;
  if ( v4 )
  {
    CMatchingGLLiveLobbyObserver::ClearRoomList(this);
  }
  else
  {
    v5 = CMatching::Get(v3);
    v6 = *(unsigned __int8 *)(v5 + 26600);
    if ( *(_BYTE *)(v5 + 26600) )
    {
      v41 = 0;
      v39 = nullptr;
      (*(void (__fastcall **)(DataPacket *, int *))(*(_DWORD *)a2 + 20))(a2, &v38);
      (*(void (__fastcall **)(DataPacket *, const char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v39, &v41);
      if ( !LC_API_STRCMP_0(v39, (const char *)dword_A33880) )
      {
        v18 = (CMatching *)CMatching::Get(nullptr);
        v19 = (CMatching *)CMatching::JoinRoom(v18, v38);
        v20 = (CMatchingGLLive *)CMatching::Get(v19);
        CMatchingGLLive::SetGCState(v20, 5);
      }
    }
    else
    {
      CMatchingGLLiveLobbyObserver::ClearRoomList(this);
      if ( v40 > 0 )
      {
        v7 = v6;
        v8 = v6;
        do
        {
          v9 = CustomAlloc(0x28u);
          v9[8] = v7;
          v9[9] = v7;
          v9[1] = v7;
          v9[2] = v7;
          v41 = v7;
          v10 = v9;
          (*(void (__fastcall **)(DataPacket *, _DWORD *))(*(_DWORD *)a2 + 20))(a2, v9);
          (*(void (__fastcall **)(DataPacket *, _DWORD *, __int16 *))(*(_DWORD *)a2 + 64))(a2, v10 + 1, &v41);
          (*(void (__fastcall **)(DataPacket *, _DWORD *, __int16 *))(*(_DWORD *)a2 + 64))(a2, v10 + 2, &v41);
          (*(void (__fastcall **)(DataPacket *, _DWORD *))(*(_DWORD *)a2 + 12))(a2, v10 + 3);
          (*(void (__fastcall **)(DataPacket *, int))(*(_DWORD *)a2 + 12))(a2, (int)v10 + 13);
          (*(void (__fastcall **)(DataPacket *, int))(*(_DWORD *)a2 + 12))(a2, (int)v10 + 14);
          (*(void (__fastcall **)(DataPacket *, int))(*(_DWORD *)a2 + 12))(a2, (int)v10 + 15);
          (*(void (__fastcall **)(DataPacket *, _DWORD *))(*(_DWORD *)a2 + 20))(a2, v10 + 4);
          (*(void (__fastcall **)(DataPacket *, _DWORD *))(*(_DWORD *)a2 + 20))(a2, v10 + 5);
          (*(void (__fastcall **)(DataPacket *, _DWORD *, __int16 *))(*(_DWORD *)a2 + 80))(a2, v10 + 8, &v41);
          v10[9] = v41;
          CRoomAttributes::CRoomAttributes((CRoomAttributes *)v36);
          CRoomAttributes::Unserialize((CRoomAttributes *)v36, (char *)v10[8], 0x80u);
          v12 = CMatching::Get(v11);
          CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v37, (const CRoomSearchFilter *)(v12 + 26424));
          if ( CRoomSearchFilter::TestRoomAttributes((CRoomSearchFilter *)v37, (CRoomAttributes *)v36) )
          {
            RoomIndexByName = CMatchingGLLiveLobbyObserver::GetRoomIndexByName(this, (const char *)v10[1]);
            if ( RoomIndexByName == -1 )
            {
              v17 = *((char **)this + 7);
              if ( v17 == *((char **)this + 8) )
              {
                v21 = (int)&v17[-*((_DWORD *)this + 6)] >> 2;
                if ( v21 )
                  v22 = 2 * v21;
                else
                  v22 = 1;
                if ( v22 > 0x3FFFFFFF || v21 > v22 )
                  v22 = 0x3FFFFFFF;
                v38 = v22;
                v23 = (char *)std::allocator<tGLRoomInfo *>::_M_allocate((int)this + 32, v22, (size_t *)&v38);
                v24 = v23;
                v25 = *((_BYTE **)this + 6);
                v26 = v17 - v25;
                if ( v26 )
                {
                  v34 = v23;
                  v32 = (char *)memmove(v23, v25, v26);
                  v24 = v34;
                  v27 = &v32[v26];
                }
                else
                {
                  v27 = v23;
                }
                *(_DWORD *)v27 = v10;
                v28 = v27 + 4;
                v29 = *((void **)this + 6);
                if ( v29 )
                {
                  v30 = (*((_DWORD *)this + 8) - (_DWORD)v29) & 0xFFFFFFFC;
                  v33 = v24;
                  if ( v30 > 0x80 )
                    CustomFree(v29);
                  else
                    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v29, v30);
                  v24 = v33;
                }
                v31 = v38;
                *((_DWORD *)this + 6) = v24;
                *((_DWORD *)this + 7) = v28;
                *((_DWORD *)this + 8) = &v24[4 * v31];
              }
              else
              {
                *(_DWORD *)v17 = v10;
                *((_DWORD *)this + 7) += 4;
              }
            }
            else
            {
              v14 = *((_DWORD *)this + 6);
              v15 = *(tGLRoomInfo **)(v14 + 4 * RoomIndexByName);
              *(_DWORD *)(v14 + 4 * RoomIndexByName) = v10;
              if ( v15 )
              {
                tGLRoomInfo::~tGLRoomInfo(v15);
                CustomFree(v15);
              }
            }
          }
          CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v37);
          CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v36);
          ++v8;
        }
        while ( v40 > v8 );
      }
    }
    v16 = time(nullptr);
    *((_DWORD *)this + 18) = 0;
    *((_DWORD *)this + 4) = v16;
  }
}


// ===== 821bac CMatchingGLLiveLobbyObserver::GetMemberIdVector(void) =====
CMatchingGLLiveLobbyObserver *__fastcall CMatchingGLLiveLobbyObserver::GetMemberIdVector(
        CMatchingGLLiveLobbyObserver *this,
        int a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r5
  char *v6; // r10
  _DWORD *v7; // r6
  unsigned int v9; // r2
  unsigned int v10; // r3
  char *v11; // r0
  char *v12; // r8
  size_t v13; // r6
  char *v14; // r6
  _DWORD *v15; // r6
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t v20; // [sp+4h] [bp-4h] BYREF

  v2 = nullptr;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v3 = *(_DWORD **)(a2 + 36);
  if ( v3 != *(_DWORD **)(a2 + 40) )
  {
    v6 = (char *)this + 8;
    v7 = nullptr;
    while ( 1 )
    {
      if ( v2 != v7 )
      {
        *v7 = *v3;
        *((_DWORD *)this + 1) += 4;
        goto LABEL_6;
      }
      v9 = (*((_DWORD *)this + 1) - *(_DWORD *)this) >> 2;
      if ( v9 )
        v10 = 2 * v9;
      else
        v10 = 1;
      if ( v10 > 0x3FFFFFFF || v9 > v10 )
        v10 = 0x3FFFFFFF;
      v20 = v10;
      v11 = (char *)std::allocator<int>::_M_allocate((int)v6, v10, &v20);
      v12 = v11;
      v13 = (size_t)v7 - *(_DWORD *)this;
      if ( v13 )
        v14 = (char *)memmove(v11, *(const void **)this, v13) + v13;
      else
        v14 = v11;
      *(_DWORD *)v14 = *v3;
      v15 = v14 + 4;
      v16 = *(void **)this;
      if ( !*(_DWORD *)this )
        goto LABEL_19;
      v17 = (*((_DWORD *)this + 2) - (_DWORD)v16) & 0xFFFFFFFC;
      if ( v17 <= 0x80 )
        break;
      CustomFree(v16);
      v19 = v20;
      *(_DWORD *)this = v12;
      *((_DWORD *)this + 1) = v15;
      *((_DWORD *)this + 2) = &v12[4 * v19];
LABEL_6:
      v3 += 21;
      if ( v3 == *(_DWORD **)(a2 + 40) )
        return this;
      v7 = *((_DWORD **)this + 1);
      v2 = *((_DWORD **)this + 2);
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v16, v17);
LABEL_19:
    v18 = v20;
    *(_DWORD *)this = v12;
    *((_DWORD *)this + 1) = v15;
    *((_DWORD *)this + 2) = &v12[4 * v18];
    goto LABEL_6;
  }
  return this;
}


// ===== 821cf8 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::_M_clear(void) =====
void __fastcall std::vector<tMemberInfo>::_M_clear(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  _DWORD *v4; // r3
  size_t v5; // r1
  size_t v6; // r1

  v1 = (_DWORD *)a1[1];
  v2 = (_DWORD *)*a1;
  if ( v1 != (_DWORD *)*a1 )
  {
    while ( 1 )
    {
      v1 -= 21;
      v1[9] = 0;
      *v1 = -1;
      v4 = (_DWORD *)v1[8];
      if ( v4 == v1 + 3 || !v4 )
        goto LABEL_4;
      v5 = v1[3] - (_DWORD)v4;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
LABEL_4:
        if ( v2 == v1 )
          goto LABEL_9;
      }
      else
      {
        CustomFree(v4);
        if ( v2 == v1 )
        {
LABEL_9:
          v1 = (_DWORD *)*a1;
          break;
        }
      }
    }
  }
  if ( v1 )
  {
    v6 = 4 * ((a1[2] - (int)v1) >> 2);
    if ( v6 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v6);
  }
}


// ===== 821dbc tMemberInfo::~tMemberInfo() =====
void __fastcall tMemberInfo::~tMemberInfo(tMemberInfo *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1

  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = -1;
  v1 = (char *)this + 12;
  v3 = *((char **)this + 8);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 3) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
}


// ===== 821e14 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<tMemberInfo>::_M_clear_after_move(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  _DWORD *v4; // r3
  size_t v5; // r1
  size_t v6; // r1

  v1 = (_DWORD *)a1[1];
  v2 = (_DWORD *)*a1;
  if ( v1 != (_DWORD *)*a1 )
  {
    while ( 1 )
    {
      v1 -= 21;
      v1[9] = 0;
      *v1 = -1;
      v4 = (_DWORD *)v1[8];
      if ( v4 == v1 + 3 || !v4 )
        goto LABEL_4;
      v5 = v1[3] - (_DWORD)v4;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
LABEL_4:
        if ( v2 == v1 )
          goto LABEL_9;
      }
      else
      {
        CustomFree(v4);
        if ( v2 == v1 )
        {
LABEL_9:
          v1 = (_DWORD *)*a1;
          break;
        }
      }
    }
  }
  if ( v1 )
  {
    v6 = 4 * ((a1[2] - (int)v1) >> 2);
    if ( v6 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v6);
  }
}


// ===== 821ed8 CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver() =====
void __fastcall CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = &off_992910;
  CMatchingGLLiveLobbyObserver::Terminate(this);
  if ( *((_DWORD *)this + 16) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 48,
      *((_DWORD *)this + 13));
    *((_DWORD *)this + 15) = (char *)this + 48;
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 14) = (char *)this + 48;
    *((_DWORD *)this + 13) = 0;
  }
  std::vector<tMemberInfo>::~vector((void **)this + 9);
  v2 = *((void **)this + 6);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 8) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
  }
}


// ===== 821f7c CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver() =====
void __fastcall CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = &off_992910;
  CMatchingGLLiveLobbyObserver::Terminate(this);
  if ( *((_DWORD *)this + 16) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 48,
      *((_DWORD *)this + 13));
    *((_DWORD *)this + 15) = (char *)this + 48;
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 14) = (char *)this + 48;
    *((_DWORD *)this + 13) = 0;
  }
  std::vector<tMemberInfo>::~vector((void **)this + 9);
  v2 = *((void **)this + 6);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 8) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
  }
}


// ===== 822020 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::_M_allocate_and_copy<tMemberInfo const*>(uint &,tMemberInfo const*,tMemberInfo const*) =====
void *__fastcall std::vector<tMemberInfo>::_M_allocate_and_copy<tMemberInfo const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  char *v6; // r0
  int v7; // r7
  void *v8; // r8
  char *i; // r5
  int v10; // r2
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r3

  v6 = (char *)std::allocator<tMemberInfo>::_M_allocate(a1 + 8, *a2, a2);
  v7 = 1022611261 * ((a4 - a3) >> 2);
  v8 = v6;
  if ( v7 > 0 )
  {
    for ( i = v6; ; i += 84 )
    {
      *(_DWORD *)i = *(_DWORD *)a3;
      *((_DWORD *)i + 1) = *(_DWORD *)(a3 + 4);
      v10 = *(_DWORD *)(a3 + 8);
      *((_DWORD *)i + 7) = i + 12;
      *((_DWORD *)i + 8) = i + 12;
      *((_DWORD *)i + 2) = v10;
      std::string::_M_range_initialize((std::string *)(i + 12), *(const char **)(a3 + 32), *(const char **)(a3 + 28));
      --v7;
      *((_DWORD *)i + 9) = *(_DWORD *)(a3 + 36);
      v11 = *(_DWORD *)(a3 + 44);
      v12 = *(_DWORD *)(a3 + 48);
      v13 = *(_DWORD *)(a3 + 52);
      *((_DWORD *)i + 10) = *(_DWORD *)(a3 + 40);
      *((_DWORD *)i + 11) = v11;
      *((_DWORD *)i + 12) = v12;
      *((_DWORD *)i + 13) = v13;
      v14 = *(_DWORD *)(a3 + 60);
      v15 = *(_DWORD *)(a3 + 64);
      v16 = *(_DWORD *)(a3 + 68);
      *((_DWORD *)i + 14) = *(_DWORD *)(a3 + 56);
      *((_DWORD *)i + 15) = v14;
      *((_DWORD *)i + 16) = v15;
      *((_DWORD *)i + 17) = v16;
      i[72] = *(_DWORD *)(a3 + 72);
      *((_DWORD *)i + 19) = *(_DWORD *)(a3 + 76);
      LOBYTE(v16) = *(_BYTE *)(a3 + 80);
      a3 += 84;
      i[80] = v16;
      if ( !v7 )
        break;
    }
  }
  return v8;
}


// ===== 8220e8 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::push_back(tMemberInfo const&) =====
void __fastcall std::vector<tMemberInfo>::push_back(int *a1, int a2)
{
  int v2; // r5
  int v3; // r8
  int v6; // r2
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  unsigned int v13; // r2
  unsigned int v14; // r1
  char *v15; // r0
  int v16; // r7
  int v17; // r9
  char *v18; // r10
  char *v19; // r9
  int v20; // r8
  char *v21; // r5
  int v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r2
  int v30; // r1
  int v31; // r2
  int v32; // r3
  int v33; // r1
  int v34; // r2
  int v35; // r3
  char *v36; // r3
  size_t v37; // [sp+4h] [bp-4h] BYREF

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v13 = 1022611261 * ((v3 - *a1) >> 2);
    if ( v13 )
      v14 = 2045222522 * ((v3 - *a1) >> 2);
    else
      v14 = 1;
    if ( v14 > 0x30C30C3 || v13 > v14 )
      v14 = 51130563;
    v37 = v14;
    v15 = (char *)std::allocator<tMemberInfo>::_M_allocate((int)(a1 + 2), v14, &v37);
    v16 = *a1;
    v17 = 1022611261 * ((v3 - *a1) >> 2);
    v18 = v15;
    if ( v17 > 0 )
    {
      v20 = 1022611261 * ((v3 - *a1) >> 2);
      v21 = v15;
      do
      {
        *(_DWORD *)v21 = *(_DWORD *)v16;
        *((_DWORD *)v21 + 1) = *(_DWORD *)(v16 + 4);
        v22 = *(_DWORD *)(v16 + 8);
        *((_DWORD *)v21 + 7) = v21 + 12;
        *((_DWORD *)v21 + 8) = v21 + 12;
        *((_DWORD *)v21 + 2) = v22;
        std::string::_M_range_initialize(
          (std::string *)(v21 + 12),
          *(const char **)(v16 + 32),
          *(const char **)(v16 + 28));
        *((_DWORD *)v21 + 9) = *(_DWORD *)(v16 + 36);
        v23 = *(_DWORD *)(v16 + 44);
        v24 = *(_DWORD *)(v16 + 48);
        v25 = *(_DWORD *)(v16 + 52);
        *((_DWORD *)v21 + 10) = *(_DWORD *)(v16 + 40);
        *((_DWORD *)v21 + 11) = v23;
        *((_DWORD *)v21 + 12) = v24;
        *((_DWORD *)v21 + 13) = v25;
        v26 = *(_DWORD *)(v16 + 60);
        v27 = *(_DWORD *)(v16 + 64);
        v28 = *(_DWORD *)(v16 + 68);
        *((_DWORD *)v21 + 14) = *(_DWORD *)(v16 + 56);
        *((_DWORD *)v21 + 15) = v26;
        *((_DWORD *)v21 + 16) = v27;
        *((_DWORD *)v21 + 17) = v28;
        --v20;
        v21[72] = *(_DWORD *)(v16 + 72);
        *((_DWORD *)v21 + 19) = *(_DWORD *)(v16 + 76);
        LOBYTE(v28) = *(_BYTE *)(v16 + 80);
        v16 += 84;
        v21[80] = v28;
        v21 += 84;
      }
      while ( v20 );
      v19 = &v18[84 * v17];
    }
    else
    {
      v19 = v15;
    }
    *(_DWORD *)v19 = *(_DWORD *)a2;
    *((_DWORD *)v19 + 1) = *(_DWORD *)(a2 + 4);
    v29 = *(_DWORD *)(a2 + 8);
    *((_DWORD *)v19 + 7) = v19 + 12;
    *((_DWORD *)v19 + 8) = v19 + 12;
    *((_DWORD *)v19 + 2) = v29;
    std::string::_M_range_initialize((std::string *)(v19 + 12), *(const char **)(a2 + 32), *(const char **)(a2 + 28));
    *((_DWORD *)v19 + 9) = *(_DWORD *)(a2 + 36);
    v30 = *(_DWORD *)(a2 + 44);
    v31 = *(_DWORD *)(a2 + 48);
    v32 = *(_DWORD *)(a2 + 52);
    *((_DWORD *)v19 + 10) = *(_DWORD *)(a2 + 40);
    *((_DWORD *)v19 + 11) = v30;
    *((_DWORD *)v19 + 12) = v31;
    *((_DWORD *)v19 + 13) = v32;
    v33 = *(_DWORD *)(a2 + 60);
    v34 = *(_DWORD *)(a2 + 64);
    v35 = *(_DWORD *)(a2 + 68);
    *((_DWORD *)v19 + 14) = *(_DWORD *)(a2 + 56);
    *((_DWORD *)v19 + 15) = v33;
    *((_DWORD *)v19 + 16) = v34;
    *((_DWORD *)v19 + 17) = v35;
    v19[72] = *(_DWORD *)(a2 + 72);
    *((_DWORD *)v19 + 19) = *(_DWORD *)(a2 + 76);
    v19[80] = *(_BYTE *)(a2 + 80);
    std::vector<tMemberInfo>::_M_clear_after_move(a1);
    v36 = &v18[84 * v37];
    *a1 = (int)v18;
    a1[2] = (int)v36;
    a1[1] = (int)(v19 + 84);
  }
  else
  {
    *(_DWORD *)v2 = *(_DWORD *)a2;
    *(_DWORD *)(v2 + 4) = *(_DWORD *)(a2 + 4);
    v6 = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v2 + 28) = v2 + 12;
    *(_DWORD *)(v2 + 32) = v2 + 12;
    *(_DWORD *)(v2 + 8) = v6;
    std::string::_M_range_initialize((std::string *)(v2 + 12), *(const char **)(a2 + 32), *(const char **)(a2 + 28));
    *(_DWORD *)(v2 + 36) = *(_DWORD *)(a2 + 36);
    v7 = *(_DWORD *)(a2 + 44);
    v8 = *(_DWORD *)(a2 + 48);
    v9 = *(_DWORD *)(a2 + 52);
    *(_DWORD *)(v2 + 40) = *(_DWORD *)(a2 + 40);
    *(_DWORD *)(v2 + 44) = v7;
    *(_DWORD *)(v2 + 48) = v8;
    *(_DWORD *)(v2 + 52) = v9;
    v10 = *(_DWORD *)(a2 + 60);
    v11 = *(_DWORD *)(a2 + 64);
    v12 = *(_DWORD *)(a2 + 68);
    *(_DWORD *)(v2 + 56) = *(_DWORD *)(a2 + 56);
    *(_DWORD *)(v2 + 60) = v10;
    *(_DWORD *)(v2 + 64) = v11;
    *(_DWORD *)(v2 + 68) = v12;
    *(_BYTE *)(v2 + 72) = *(_DWORD *)(a2 + 72);
    *(_DWORD *)(v2 + 76) = *(_DWORD *)(a2 + 76);
    *(_BYTE *)(v2 + 80) = *(_BYTE *)(a2 + 80);
    a1[1] += 84;
  }
}


// ===== 822324 CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int) =====
int *__fastcall CMatchingGLLiveLobbyObserver::GetMemberByMemberId(CMatchingGLLiveLobbyObserver *this, int a2)
{
  int v2; // r3
  int *result; // r0
  int v4; // r3
  int v5; // r12
  int v6; // r2
  int *v7; // r4

  v2 = *((_DWORD *)this + 10);
  result = *((int **)this + 9);
  v4 = 1022611261 * ((v2 - (int)result) >> 2);
  if ( v4 )
  {
    if ( *result == a2 )
      return result;
    v5 = 21;
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      v7 = &result[v5];
      if ( v6 == v4 )
        break;
      v5 += 21;
      if ( *v7 == a2 )
        return v7;
    }
  }
  if ( (`guard variable for'CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember) )
  {
    return &CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember;
  }
  dword_A338B0 = (int)dword_A338A0;
  dword_A338B4 = (int)dword_A338A0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(dword_A338A0, 0x10u);
  *(_BYTE *)dword_A338B0 = 0;
  CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember = -1;
  dword_A338B8 = 0;
  dword_A3389C = 0;
  _cxa_guard_release(&`guard variable for'CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember);
  v7 = &CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember;
  _aeabi_atexit(
    (int)&CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)::invalidMember,
    (int)tMemberInfo::~tMemberInfo,
    (int)&_dso_handle);
  return v7;
}


// ===== 822434 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::vector(uint) [clone] =====
int *__fastcall std::vector<tMemberInfo>::vector(int *a1)
{
  int v2; // r3
  void *v3; // r0
  int v4; // r3
  int v5; // r3
  _DWORD *v6; // r0
  size_t v8[4]; // [sp+4h] [bp-5Ch] BYREF
  _DWORD v9[4]; // [sp+14h] [bp-4Ch] BYREF
  _BYTE *v10; // [sp+24h] [bp-3Ch]
  void *__p; // [sp+28h] [bp-38h]
  int v12; // [sp+2Ch] [bp-34h]
  int v13; // [sp+5Ch] [bp-4h]

  v2 = _stack_chk_guard;
  *a1 = 0;
  v13 = v2;
  a1[1] = 0;
  v8[0] = 0;
  a1[2] = 0;
  v3 = std::allocator<tMemberInfo>::_M_allocate((int)(a1 + 2), 0, v8);
  v4 = (int)v3 + 84 * v8[0];
  *a1 = (int)v3;
  a1[1] = (int)v3;
  a1[2] = v4;
  v10 = v9;
  __p = v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v9, 0x10u);
  *v10 = 0;
  v5 = *a1;
  v6 = __p;
  v12 = 0;
  a1[1] = v5;
  v8[1] = -1;
  v8[3] = 0;
  if ( v6 != v9 && v6 )
  {
    if ( (unsigned int)(v9[0] - (_DWORD)v6) > 0x80 )
    {
      CustomFree(v6);
      return a1;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v6, v9[0] - (_DWORD)v6);
  }
  return a1;
}


// ===== 822538 CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(void) =====
void __fastcall CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver *this)
{
  *(_DWORD *)this = &off_992910;
  *((_DWORD *)this + 2) = -1;
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  *((_BYTE *)this + 6) = 0;
  *((_BYTE *)this + 7) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  std::vector<tGLRoomInfo *>::vector((_DWORD *)this + 6);
  std::vector<tMemberInfo>::vector((int *)this + 9);
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 15) = (char *)this + 48;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 14) = (char *)this + 48;
  *((_DWORD *)this + 16) = 0;
}


// ===== 8225b8 CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(void) =====
void __fastcall CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver *this)
{
  *(_DWORD *)this = &off_992910;
  *((_DWORD *)this + 2) = -1;
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  *((_BYTE *)this + 6) = 0;
  *((_BYTE *)this + 7) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  std::vector<tGLRoomInfo *>::vector((_DWORD *)this + 6);
  std::vector<tMemberInfo>::vector((int *)this + 9);
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 15) = (char *)this + 48;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 14) = (char *)this + 48;
  *((_DWORD *)this + 16) = 0;
}


// ===== 822638 CMatchingGLLiveLobbyObserver::SetPlayerParam(std::string) =====
std::string *__fastcall CMatchingGLLiveLobbyObserver::SetPlayerParam(std::string *this, std::string a2)
{
  int v2; // r3
  int v3; // r12

  v2 = *(_DWORD *)&this->_M_buffers._M_static_buf[12];
  if ( v2 >= 0 )
  {
    v3 = *((_DWORD *)this + 10);
    this = *((std::string **)this + 9);
    if ( v2 < 1022611261 * ((v3 - (int)this) >> 2) )
    {
      this = (std::string *)((char *)this + 84 * v2 + 12);
      if ( this != (std::string *)a2._M_buffers._M_end_of_storage )
        return std::string::_M_assign(
                 this,
                 *((const char **)a2._M_buffers._M_end_of_storage + 5),
                 *((const char **)a2._M_buffers._M_end_of_storage + 4));
    }
  }
  return this;
}


// ===== 822688 std::priv::__copy<tMemberInfo const*,tMemberInfo*,int>(tMemberInfo const*,tMemberInfo const*,tMemberInfo*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<tMemberInfo const*,tMemberInfo*,int>(int a1, int a2, int a3)
{
  int v3; // r10
  int v4; // r5
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a1;
  v5 = a3;
  if ( v3 > 0 )
  {
    v6 = 1022611261 * ((a2 - a1) >> 2);
    v7 = a3;
    do
    {
      *(_DWORD *)v7 = *(_DWORD *)v4;
      *(_DWORD *)(v7 + 4) = *(_DWORD *)(v4 + 4);
      *(_DWORD *)(v7 + 8) = *(_DWORD *)(v4 + 8);
      if ( v7 + 12 != v4 + 12 )
        std::string::_M_assign((std::string *const)(v7 + 12), *(const char **)(v4 + 32), *(const char **)(v4 + 28));
      *(_DWORD *)(v7 + 36) = *(_DWORD *)(v4 + 36);
      v8 = *(_DWORD *)(v4 + 44);
      v9 = *(_DWORD *)(v4 + 48);
      v10 = *(_DWORD *)(v4 + 52);
      *(_DWORD *)(v7 + 40) = *(_DWORD *)(v4 + 40);
      *(_DWORD *)(v7 + 44) = v8;
      *(_DWORD *)(v7 + 48) = v9;
      *(_DWORD *)(v7 + 52) = v10;
      v11 = *(_DWORD *)(v4 + 60);
      v12 = *(_DWORD *)(v4 + 64);
      v13 = *(_DWORD *)(v4 + 68);
      *(_DWORD *)(v7 + 56) = *(_DWORD *)(v4 + 56);
      *(_DWORD *)(v7 + 60) = v11;
      *(_DWORD *)(v7 + 64) = v12;
      *(_DWORD *)(v7 + 68) = v13;
      --v6;
      *(_BYTE *)(v7 + 72) = *(_DWORD *)(v4 + 72);
      *(_DWORD *)(v7 + 76) = *(_DWORD *)(v4 + 76);
      LOBYTE(v13) = *(_BYTE *)(v4 + 80);
      v4 += 84;
      *(_BYTE *)(v7 + 80) = v13;
      v7 += 84;
    }
    while ( v6 );
    v5 += 84 * v3;
  }
  return v5;
}


// ===== 822744 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::operator=(std::vector<tMemberInfo,std::allocator<tMemberInfo>> const&) =====
int *__fastcall std::vector<tMemberInfo>::operator=(int *a1, int *a2)
{
  int v4; // r3
  int v5; // r12
  int v6; // r2
  unsigned int v7; // r10
  int v8; // r0
  _DWORD *v9; // r6
  _DWORD *v10; // r5
  _DWORD *v11; // r3
  size_t v12; // r1
  char *v13; // r11
  int v15; // r5
  int v16; // r6
  int v17; // r8
  int v18; // r2
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int v24; // r3
  unsigned int v25; // r3
  int v26; // [sp+Ch] [bp-10h] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = 1022611261 * ((v4 - *a2) >> 2);
    if ( v7 > 1022611261 * ((a1[2] - *a1) >> 2) )
    {
      v26 = 1022611261 * ((v4 - *a2) >> 2);
      v13 = (char *)std::vector<tMemberInfo>::_M_allocate_and_copy<tMemberInfo const*>(
                      (int)a1,
                      (unsigned int *)&v26,
                      v5,
                      v4);
      std::vector<tMemberInfo>::_M_clear(a1);
      v25 = v26;
      *a1 = (int)v13;
      a1[2] = (int)&v13[84 * v25];
      goto LABEL_13;
    }
    if ( v7 > 1022611261 * ((a1[1] - v6) >> 2) )
    {
      std::priv::__copy<tMemberInfo const*,tMemberInfo*,int>(v5, v5 + 4 * ((a1[1] - v6) >> 2), v6);
      v15 = a1[1];
      v13 = (char *)*a1;
      v16 = *a2 + 4 * ((v15 - *a1) >> 2);
      v17 = 1022611261 * ((a2[1] - v16) >> 2);
      if ( v17 <= 0 )
        goto LABEL_13;
      while ( 1 )
      {
        *(_DWORD *)v15 = *(_DWORD *)v16;
        *(_DWORD *)(v15 + 4) = *(_DWORD *)(v16 + 4);
        v18 = *(_DWORD *)(v16 + 8);
        *(_DWORD *)(v15 + 28) = v15 + 12;
        *(_DWORD *)(v15 + 32) = v15 + 12;
        *(_DWORD *)(v15 + 8) = v18;
        std::string::_M_range_initialize(
          (std::string *)(v15 + 12),
          *(const char **)(v16 + 32),
          *(const char **)(v16 + 28));
        --v17;
        *(_DWORD *)(v15 + 36) = *(_DWORD *)(v16 + 36);
        v19 = *(_DWORD *)(v16 + 44);
        v20 = *(_DWORD *)(v16 + 48);
        v21 = *(_DWORD *)(v16 + 52);
        *(_DWORD *)(v15 + 40) = *(_DWORD *)(v16 + 40);
        *(_DWORD *)(v15 + 44) = v19;
        *(_DWORD *)(v15 + 48) = v20;
        *(_DWORD *)(v15 + 52) = v21;
        v22 = *(_DWORD *)(v16 + 60);
        v23 = *(_DWORD *)(v16 + 64);
        v24 = *(_DWORD *)(v16 + 68);
        *(_DWORD *)(v15 + 56) = *(_DWORD *)(v16 + 56);
        *(_DWORD *)(v15 + 60) = v22;
        *(_DWORD *)(v15 + 64) = v23;
        *(_DWORD *)(v15 + 68) = v24;
        *(_BYTE *)(v15 + 72) = *(_DWORD *)(v16 + 72);
        *(_DWORD *)(v15 + 76) = *(_DWORD *)(v16 + 76);
        LOBYTE(v24) = *(_BYTE *)(v16 + 80);
        v16 += 84;
        *(_BYTE *)(v15 + 80) = v24;
        if ( !v17 )
          break;
        v15 += 84;
      }
      goto LABEL_12;
    }
    v8 = std::priv::__copy<tMemberInfo const*,tMemberInfo*,int>(v5, v4, v6);
    v9 = (_DWORD *)a1[1];
    v10 = (_DWORD *)v8;
    if ( v9 == (_DWORD *)v8 )
    {
LABEL_12:
      v13 = (char *)*a1;
LABEL_13:
      a1[1] = (int)&v13[84 * v7];
      return a1;
    }
    while ( 1 )
    {
      v10[9] = 0;
      *v10 = -1;
      v11 = (_DWORD *)v10[8];
      if ( v11 == v10 + 3 || !v11 )
        goto LABEL_7;
      v12 = v10[3] - (_DWORD)v11;
      if ( v12 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v11, v12);
LABEL_7:
        v10 += 21;
        if ( v9 == v10 )
          goto LABEL_12;
      }
      else
      {
        v10 += 21;
        CustomFree(v11);
        if ( v9 == v10 )
          goto LABEL_12;
      }
    }
  }
  return a1;
}


// ===== 822950 CMatchingGLLiveLobbyObserver::CollapseMemberList(void) =====
void **__fastcall CMatchingGLLiveLobbyObserver::CollapseMemberList(CMatchingGLLiveLobbyObserver *this)
{
  int v2; // r3
  int v3; // r0
  int v4; // r4
  unsigned int v5; // r5
  int v6; // r1
  int v7; // r2
  void *v9[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = *((_DWORD *)this + 9);
  v3 = *((_DWORD *)this + 10);
  v4 = 0;
  memset(v9, 0, sizeof(v9));
  if ( 1022611261 * ((v3 - v2) >> 2) )
  {
    v5 = 0;
    do
    {
      while ( 1 )
      {
        v6 = v2 + v4;
        v7 = *(unsigned __int8 *)(v2 + v4 + 80);
        ++v5;
        v4 += 84;
        if ( v7 )
          break;
        if ( v5 >= 1022611261 * ((v3 - v2) >> 2) )
          goto LABEL_6;
      }
      std::vector<tMemberInfo>::push_back((int *)v9, v6);
      v2 = *((_DWORD *)this + 9);
      v3 = *((_DWORD *)this + 10);
    }
    while ( v5 < 1022611261 * ((v3 - v2) >> 2) );
  }
LABEL_6:
  std::vector<tMemberInfo>::operator=((int *)this + 9, (int *)v9);
  return std::vector<tMemberInfo>::~vector(v9);
}


// ===== 822a0c std::priv::__copy<tMemberInfo *,tMemberInfo *,int>(tMemberInfo *,tMemberInfo *,tMemberInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<tMemberInfo *,tMemberInfo *,int>(int a1, int a2, int a3)
{
  int v3; // r10
  int v4; // r5
  int v5; // r8
  int v6; // r6
  int v7; // r7
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a1;
  v5 = a3;
  if ( v3 > 0 )
  {
    v6 = a3;
    v7 = 1022611261 * ((a2 - a1) >> 2);
    do
    {
      *(_DWORD *)v6 = *(_DWORD *)v4;
      *(_DWORD *)(v6 + 4) = *(_DWORD *)(v4 + 4);
      *(_DWORD *)(v6 + 8) = *(_DWORD *)(v4 + 8);
      if ( v6 + 12 != v4 + 12 )
        std::string::_M_assign((std::string *const)(v6 + 12), *(const char **)(v4 + 32), *(const char **)(v4 + 28));
      *(_DWORD *)(v6 + 36) = *(_DWORD *)(v4 + 36);
      v8 = *(_DWORD *)(v4 + 44);
      v9 = *(_DWORD *)(v4 + 48);
      v10 = *(_DWORD *)(v4 + 52);
      *(_DWORD *)(v6 + 40) = *(_DWORD *)(v4 + 40);
      *(_DWORD *)(v6 + 44) = v8;
      *(_DWORD *)(v6 + 48) = v9;
      *(_DWORD *)(v6 + 52) = v10;
      v11 = *(_DWORD *)(v4 + 60);
      v12 = *(_DWORD *)(v4 + 64);
      v13 = *(_DWORD *)(v4 + 68);
      *(_DWORD *)(v6 + 56) = *(_DWORD *)(v4 + 56);
      *(_DWORD *)(v6 + 60) = v11;
      *(_DWORD *)(v6 + 64) = v12;
      *(_DWORD *)(v6 + 68) = v13;
      --v7;
      *(_BYTE *)(v6 + 72) = *(_DWORD *)(v4 + 72);
      *(_DWORD *)(v6 + 76) = *(_DWORD *)(v4 + 76);
      LOBYTE(v13) = *(_BYTE *)(v4 + 80);
      v4 += 84;
      *(_BYTE *)(v6 + 80) = v13;
      v6 += 84;
    }
    while ( v7 );
    v5 += 84 * v3;
  }
  return v5;
}


// ===== 822ac8 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::_M_erase(tMemberInfo*,tMemberInfo*,std::__false_type const&) =====
int __fastcall std::vector<tMemberInfo>::_M_erase(int a1, int a2, int a3)
{
  int v5; // r0
  _DWORD *v6; // r8
  int v7; // r9
  _DWORD *v8; // r7
  _DWORD *v9; // r3
  size_t v10; // r1

  v5 = std::priv::__copy<tMemberInfo *,tMemberInfo *,int>(a3, *(_DWORD *)(a1 + 4), a2);
  v6 = *(_DWORD **)(a1 + 4);
  v7 = v5;
  if ( v6 != (_DWORD *)v5 )
  {
    v8 = (_DWORD *)v5;
    while ( 1 )
    {
      v8[9] = 0;
      *v8 = -1;
      v9 = (_DWORD *)v8[8];
      if ( v9 == v8 + 3 || !v9 )
        goto LABEL_4;
      v10 = v8[3] - (_DWORD)v9;
      if ( v10 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v9, v10);
LABEL_4:
        v8 += 21;
        if ( v6 == v8 )
          break;
      }
      else
      {
        v8 += 21;
        CustomFree(v9);
        if ( v6 == v8 )
          break;
      }
    }
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 822b78 CMatchingGLLiveLobbyObserver::OnMPLeaveSessionSuccess(void) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPLeaveSessionSuccess(CMatchingGLLiveLobbyObserver *this)
{
  int v1; // r1
  int v2; // r2
  int result; // r0

  v1 = *((_DWORD *)this + 9);
  v2 = *((_DWORD *)this + 10);
  result = 0;
  *((_BYTE *)this + 6) = 0;
  *((_DWORD *)this + 3) = -1;
  *((_DWORD *)this + 2) = -1;
  if ( v1 != v2 )
    result = std::vector<tMemberInfo>::_M_erase((int)this + 36, v1, v2);
  *((_DWORD *)this + 18) = 0;
  return result;
}


// ===== 822bc4 std::vector<tMemberInfo,std::allocator<tMemberInfo>>::_M_erase(tMemberInfo*,std::__false_type const&) =====
int __fastcall std::vector<tMemberInfo>::_M_erase(int a1, int a2)
{
  int v2; // r3
  int v4; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r0
  size_t v8; // r1

  v2 = *(_DWORD *)(a1 + 4);
  v4 = a2 + 84;
  if ( a2 + 84 != v2 )
  {
    std::priv::__copy<tMemberInfo *,tMemberInfo *,int>(v4, v2, a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  *(_DWORD *)(a1 + 4) = v4 - 84;
  *(_DWORD *)(v4 - 48) = 0;
  *(_DWORD *)(v4 - 84) = -1;
  v6 = (_DWORD *)(v4 - 72);
  v7 = *(_DWORD **)(v4 - 52);
  if ( v7 != v6 && v7 )
  {
    v8 = *v6 - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v7, v8);
  }
  return a2;
}


// ===== 822c58 CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  CMatchingGLLive *v4; // r0
  int GLXPlayerLogin; // r0
  const char *v6; // r6
  int MemberIndexByName; // r0
  CMatching *v8; // r0
  CMatching *v9; // r0
  _DWORD *v10; // r3
  int v11; // r2
  CMatchingGLLive *v12; // r0
  GLXPlayerMPLobby *GLXPlayerMPLobby; // r0
  CMatching *v15; // r0
  int v16; // r1
  int v17; // r2
  void *p; // [sp+0h] [bp-6h] BYREF
  __int16 v19; // [sp+6h] [bp+0h] BYREF

  v19 = -1;
  (*(void (__fastcall **)(DataPacket *, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v19);
  if ( p )
  {
    CustomFree(p);
    p = nullptr;
  }
  v4 = (CMatchingGLLive *)(*(int (__fastcall **)(DataPacket *, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v19);
  GLXPlayerLogin = CMatchingGLLive::GetGLXPlayerLogin(v4);
  v6 = (const char *)p;
  if ( LC_API_STRCMP_0(*(const char **)(GLXPlayerLogin + 116), (const char *)p) )
  {
    MemberIndexByName = CMatchingGLLiveLobbyObserver::GetMemberIndexByName(this, v6);
    v8 = (CMatching *)std::vector<tMemberInfo>::_M_erase((int)this + 36, *((_DWORD *)this + 9) + 84 * MemberIndexByName);
    CMatching::Get(v8);
    v9 = (CMatching *)CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, nullptr, 0);
    v10 = *((_DWORD **)this + 9);
    if ( (unsigned int)v10 < *((_DWORD *)this + 10) )
    {
      v11 = 0;
      do
      {
        *v10 = v11;
        v10 += 21;
        ++v11;
      }
      while ( (unsigned int)v10 < *((_DWORD *)this + 10) );
    }
    v12 = (CMatchingGLLive *)CMatching::Get(v9);
    CMatchingGLLive::SyncMemberId(v12);
  }
  else
  {
    GLXPlayerMPLobby = (GLXPlayerMPLobby *)CMatchingGLLive::GetGLXPlayerMPLobby(nullptr);
    v15 = (CMatching *)GLXPlayerMPLobby::mpSendLeaveLobby(GLXPlayerMPLobby);
    v16 = *((_DWORD *)this + 9);
    v17 = *((_DWORD *)this + 10);
    if ( v16 != v17 )
      v15 = (CMatching *)std::vector<tMemberInfo>::_M_erase((int)this + 36, v16, v17);
    CMatching::Get(v15);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194314, nullptr, 0);
  }
  return 0;
}


// ===== 822db4 CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  __int16 v5; // r3
  int v6; // r3
  char *v7; // r6
  size_t v8; // r0
  CMatching *v9; // r0
  char *v10; // [sp+4h] [bp-64h] BYREF
  void *p; // [sp+8h] [bp-60h] BYREF
  __int16 v12; // [sp+Ch] [bp-5Ch] BYREF
  unsigned __int8 v13; // [sp+Fh] [bp-59h] BYREF
  int v14; // [sp+10h] [bp-58h] BYREF
  int v15; // [sp+18h] [bp-50h] BYREF
  std::string v16; // [sp+1Ch] [bp-4Ch] BYREF
  int v17; // [sp+34h] [bp-34h]
  _DWORD v18[10]; // [sp+38h] [bp-30h] BYREF
  char v19; // [sp+60h] [bp-8h]

  if ( (unsigned int)(1022611261 * ((*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 2)) > 0xF )
    return -1;
  v16._M_finish = (char *)&v16;
  v16._M_start_of_storage._M_data = (char *)&v16;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v16, 0x10u);
  *v16._M_finish = 0;
  p = nullptr;
  v14 = -1;
  v15 = 0;
  v17 = 0;
  v12 = 0;
  (*(void (__fastcall **)(DataPacket *, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v12);
  v5 = v12;
  if ( v12 >= 31 )
    v5 = 31;
  v12 = v5;
  memcpy(v18, p, v5 + 1);
  if ( p )
  {
    CustomFree(p);
    p = nullptr;
  }
  (*(void (__fastcall **)(DataPacket *, int *, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v15, &v12);
  v13 = 0;
  (*(void (__fastcall **)(DataPacket *, unsigned __int8 *))(*(_DWORD *)a2 + 12))(a2, &v13);
  v10 = nullptr;
  v18[9] = v13;
  (*(void (__fastcall **)(DataPacket *, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v10, &v12);
  v6 = v12;
  if ( v12 > 0 )
  {
    v7 = v10;
    v8 = LC_API_STRLEN_0(v10);
    std::string::_M_assign(&v16, v7, &v7[v8]);
    v6 = v12;
  }
  v17 = v6;
  v19 = 1;
  std::vector<tMemberInfo>::push_back((int *)this + 9, (int)&v14);
  CMatching::Get(v9);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194316, nullptr, 0);
  v14 = -1;
  v17 = 0;
  std::string::~string(&v16);
  return 0;
}


// ===== 822fa4 CMatchingGLLiveLobbyObserver::OnMPCreateSessionSuccess(DataPacket *) =====
void __fastcall CMatchingGLLiveLobbyObserver::OnMPCreateSessionSuccess(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  int v4; // r3
  int v5; // r1
  int v6; // r2
  CMatching *v7; // r0
  CMatchingGLLive *v8; // r0
  int GLXPlayerLogin; // r0
  char *v10; // r0
  int v11; // r0
  CMatching *v12; // r0
  CMatchingGLLive *v13; // r0
  CMatching *v14; // r0
  std::string *M_data; // r0
  const char *v16; // r10
  size_t v17; // r7
  _DWORD v18[3]; // [sp+8h] [bp-74h] BYREF
  std::string v19; // [sp+14h] [bp-68h] BYREF
  int v20; // [sp+2Ch] [bp-50h]
  char v21[44]; // [sp+30h] [bp-4Ch] BYREF
  std::string v22; // [sp+5Ch] [bp-20h] BYREF
  int v23; // [sp+74h] [bp-8h]

  v4 = _stack_chk_guard;
  *((_DWORD *)this + 5) = 4;
  *((_BYTE *)this + 6) = 1;
  v23 = v4;
  PrintDatapacket((int)a2);
  (*(void (__fastcall **)(DataPacket *, char *))(*(_DWORD *)a2 + 20))(a2, (char *)this + 8);
  v5 = *((_DWORD *)this + 9);
  v6 = *((_DWORD *)this + 10);
  if ( v5 != v6 )
    std::vector<tMemberInfo>::_M_erase((int)this + 36, v5, v6);
  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 0x10u);
  *v19._M_finish = 0;
  v18[0] = -1;
  v18[2] = 0;
  v20 = 0;
  v8 = (CMatchingGLLive *)CMatching::Get(v7);
  if ( *((_BYTE *)v8 + 26600) )
  {
    v16 = (const char *)dword_A33880;
    v17 = LC_API_STRLEN_0((const char *)dword_A33880);
    LC_API_STRNCPY_0(v21, v16, v17);
    v21[v17] = 0;
  }
  else
  {
    GLXPlayerLogin = CMatchingGLLive::GetGLXPlayerLogin(v8);
    v10 = LC_API_STRNCPY_0(v21, *(const char **)(GLXPlayerLogin + 116), 0x20u);
    v18[0] = 0;
    v21[32] = 0;
    v11 = CMatching::Get((CMatching *)v10);
    v22._M_finish = (char *)&v22;
    v22._M_start_of_storage._M_data = (char *)&v22;
    std::string::_M_range_initialize(&v22, *(const char **)(v11 + 26628), *(const char **)(v11 + 26624));
    std::string::_M_assign(&v19, v22._M_start_of_storage._M_data, v22._M_finish);
    v20 = v22._M_finish - v22._M_start_of_storage._M_data;
    if ( (std::string *)v22._M_start_of_storage._M_data != &v22 && v22._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v22._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
          v22._M_start_of_storage._M_data,
          v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data);
    }
  }
  v21[40] = 1;
  std::vector<tMemberInfo>::push_back((int *)this + 9, (int)v18);
  v13 = (CMatchingGLLive *)CMatching::Get(v12);
  CMatchingGLLive::SetGCState(v13, 6);
  CMatching::Get(v14);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 4, nullptr, 0);
  M_data = (std::string *)v19._M_start_of_storage._M_data;
  *((_DWORD *)this + 18) = 0;
  v20 = 0;
  v18[0] = -1;
  if ( M_data != &v19 && M_data )
  {
    if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)M_data) > 0x80 )
      CustomFree(M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, v19._M_buffers._M_end_of_storage - (char *)M_data);
  }
}


// ===== 8231e0 CMatchingGLLiveLobbyObserver::OnMPJoinSessionSuccess(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPJoinSessionSuccess(CMatchingGLLiveLobbyObserver *this, DataPacket *a2)
{
  GLXPlayerComponent *GLXPlayerLogin; // r0
  char *M_data; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r6
  int v8; // r3
  size_t v9; // r0
  CMatching *v10; // r0
  CMatchingGLLive *v11; // r0
  CMatching *v12; // r0
  int v13; // r3
  int v14; // r12
  __int16 v15; // r3
  CMatching *v16; // r0
  CMatchingGLLive *v17; // r0
  int v18; // r0
  CMatchingGLLive *v19; // r0
  int result; // r0
  const char *__f; // [sp+4h] [bp-A0h]
  int *v23; // [sp+10h] [bp-94h]
  char *v24; // [sp+34h] [bp-70h] BYREF
  void *p; // [sp+38h] [bp-6Ch] BYREF
  int v26; // [sp+3Ch] [bp-68h] BYREF
  __int16 v27; // [sp+42h] [bp-62h] BYREF
  unsigned __int8 v28; // [sp+47h] [bp-5Dh] BYREF
  int v29; // [sp+48h] [bp-5Ch] BYREF
  int v30; // [sp+50h] [bp-54h] BYREF
  std::string v31; // [sp+54h] [bp-50h] BYREF
  int v32; // [sp+6Ch] [bp-38h]
  char v33[36]; // [sp+70h] [bp-34h] BYREF
  int v34; // [sp+94h] [bp-10h]
  char v35; // [sp+98h] [bp-Ch]

  v23 = (int *)((char *)this + 36);
  GLXPlayerLogin = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(this);
  GLXPlayerComponent::GetUID(GLXPlayerLogin);
  *((_BYTE *)this + 6) = 1;
  v26 = 0;
  M_data = (char *)(*(int (__fastcall **)(DataPacket *, int *))(*(_DWORD *)a2 + 20))(a2, &v26);
  v5 = *((_DWORD *)this + 9);
  v6 = *((_DWORD *)this + 10);
  if ( v5 != v6 )
    M_data = (char *)std::vector<tMemberInfo>::_M_erase((int)v23, v5, v6);
  v27 = 0;
  if ( v26 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v31._M_finish = (char *)&v31;
      v31._M_start_of_storage._M_data = (char *)&v31;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v31, 0x10u);
      *v31._M_finish = 0;
      v30 = 0;
      v32 = 0;
      v29 = -1;
      p = nullptr;
      CMatching::Get(v12);
      v13 = *(_DWORD *)a2;
      if ( CMatchingGLLive::s_IsGameStarting )
        v14 = -1;
      else
        v14 = v7;
      v29 = v14;
      (*(void (__fastcall **)(DataPacket *, void **, __int16 *))(v13 + 64))(a2, &p, &v27);
      v15 = v27;
      if ( v27 >= 31 )
        v15 = 31;
      v27 = v15;
      memcpy(v33, p, v15 + 1);
      if ( p )
      {
        CustomFree(p);
        p = nullptr;
      }
      (*(void (__fastcall **)(DataPacket *, int *, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v30, &v27);
      v28 = 0;
      v16 = (CMatching *)(*(int (__fastcall **)(DataPacket *, unsigned __int8 *))(*(_DWORD *)a2 + 12))(a2, &v28);
      v34 = v28;
      v17 = (CMatchingGLLive *)CMatching::Get(v16);
      if ( *((_BYTE *)v17 + 26600) )
      {
        if ( !LC_API_STRCMP_0(v33, (const char *)dword_A3387C) )
          *((_DWORD *)this + 3) = v7;
      }
      else
      {
        v18 = CMatchingGLLive::GetGLXPlayerLogin(v17);
        if ( !LC_API_STRCMP_0(v33, *(const char **)(v18 + 116)) )
          *((_DWORD *)this + 3) = v7;
      }
      v24 = nullptr;
      (*(void (__fastcall **)(DataPacket *, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v24, &v27);
      v8 = v27;
      if ( v27 > 0 )
      {
        __f = v24;
        v9 = LC_API_STRLEN_0(v24);
        std::string::_M_assign(&v31, __f, &__f[v9]);
        v8 = v27;
      }
      v32 = v8;
      v35 = 1;
      std::vector<tMemberInfo>::push_back(v23, (int)&v29);
      v11 = (CMatchingGLLive *)CMatching::Get(v10);
      CMatchingGLLive::SyncMemberId(v11);
      M_data = v31._M_start_of_storage._M_data;
      v32 = 0;
      v29 = -1;
      if ( (std::string *)v31._M_start_of_storage._M_data == &v31 || !v31._M_start_of_storage._M_data )
        goto LABEL_13;
      if ( (unsigned int)(v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data) > 0x80 )
      {
        CustomFree(v31._M_start_of_storage._M_data);
        if ( v26 <= ++v7 )
          break;
      }
      else
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
          v31._M_start_of_storage._M_data,
          v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data);
LABEL_13:
        if ( v26 <= ++v7 )
          break;
      }
    }
  }
  v19 = (CMatchingGLLive *)CMatching::Get((CMatching *)M_data);
  CMatchingGLLive::SetGCState(v19, 8);
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 5) = 5;
  return result;
}


// ===== 823510 CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter(int a1, int a2)
{
  unsigned int v4; // r8
  unsigned int v5; // r4
  char *v6; // r7
  char *v7; // r5
  size_t v8; // r0
  char *v10; // [sp+0h] [bp-10h] BYREF
  void *p; // [sp+4h] [bp-Ch] BYREF
  char *v12; // [sp+8h] [bp-8h] BYREF
  __int16 v13; // [sp+Eh] [bp-2h] BYREF

  v12 = nullptr;
  v13 = 0;
  (*(void (__fastcall **)(int, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v12, &v13);
  p = nullptr;
  (*(void (__fastcall **)(int, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v13);
  if ( p )
  {
    CustomFree(p);
    p = nullptr;
  }
  v4 = *(_DWORD *)(a1 + 40);
  v5 = *(_DWORD *)(a1 + 36);
  if ( v4 > v5 )
  {
    v6 = v12;
    while ( LC_API_STRCMP_0((const char *)(v5 + 40), v6) )
    {
      v5 += 84;
      if ( v4 <= v5 )
        return 0;
    }
    v10 = nullptr;
    (*(void (__fastcall **)(int, char **, __int16 *))(*(_DWORD *)a2 + 80))(a2, &v10, &v13);
    v7 = v10;
    v8 = LC_API_STRLEN_0(v10);
    std::string::_M_assign((std::string *const)(v5 + 12), v7, &v7[v8]);
  }
  return 0;
}


// ===== 8235f8 CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  CMatching *v5; // r0
  __int16 v6; // r3
  int v7; // r3
  char *v8; // r8
  size_t v9; // r0
  CMatching *v10; // r0
  char *v11; // [sp+4h] [bp-64h] BYREF
  void *p; // [sp+8h] [bp-60h] BYREF
  __int16 v13; // [sp+Ch] [bp-5Ch] BYREF
  unsigned __int8 v14; // [sp+Fh] [bp-59h] BYREF
  int v15; // [sp+10h] [bp-58h] BYREF
  int v16; // [sp+18h] [bp-50h] BYREF
  std::string v17; // [sp+1Ch] [bp-4Ch] BYREF
  int v18; // [sp+34h] [bp-34h]
  _DWORD v19[10]; // [sp+38h] [bp-30h] BYREF
  char v20; // [sp+60h] [bp-8h]

  if ( (unsigned int)(1022611261 * ((*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 2)) > 0xF )
    return -1;
  v17._M_finish = (char *)&v17;
  v17._M_start_of_storage._M_data = (char *)&v17;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v17, 0x10u);
  *v17._M_finish = 0;
  v15 = -1;
  p = nullptr;
  v16 = 0;
  v18 = 0;
  v13 = 0;
  CMatching::Get(v5);
  v15 = 1022611261 * ((*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 2);
  (*(void (__fastcall **)(DataPacket *, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v13);
  v6 = v13;
  if ( v13 >= 31 )
    v6 = 31;
  v13 = v6;
  memcpy(v19, p, v6 + 1);
  if ( p )
  {
    CustomFree(p);
    p = nullptr;
  }
  (*(void (__fastcall **)(DataPacket *, int *, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v16, &v13);
  v14 = 0;
  (*(void (__fastcall **)(DataPacket *, unsigned __int8 *))(*(_DWORD *)a2 + 12))(a2, &v14);
  v11 = nullptr;
  v19[9] = v14;
  (*(void (__fastcall **)(DataPacket *, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v11, &v13);
  v7 = v13;
  if ( v13 > 0 )
  {
    v8 = v11;
    v9 = LC_API_STRLEN_0(v11);
    std::string::_M_assign(&v17, v8, &v8[v9]);
    v7 = v13;
  }
  v18 = v7;
  v20 = 1;
  std::vector<tMemberInfo>::push_back((int *)this + 9, (int)&v15);
  CMatching::Get(v10);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194316, nullptr, 0);
  v15 = -1;
  v18 = 0;
  std::string::~string(&v17);
  return 0;
}


// ===== 823808 CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  int MemberIndexByName; // r0
  int v5; // r10
  int v6; // r4
  char *v7; // r7
  size_t v8; // r0
  __int16 v10; // r3
  char *v11; // r4
  size_t v12; // r0
  CMatching *v13; // r0
  CMatchingGLLive *v14; // r0
  char *v15; // r8
  size_t v16; // r0
  const void *v17; // [sp+0h] [bp-74h]
  char *v18; // [sp+Ch] [bp-68h] BYREF
  void *p; // [sp+10h] [bp-64h] BYREF
  __int16 v20; // [sp+14h] [bp-60h] BYREF
  unsigned __int8 v21; // [sp+17h] [bp-5Dh] BYREF
  int v22; // [sp+18h] [bp-5Ch] BYREF
  int v23; // [sp+20h] [bp-54h] BYREF
  std::string v24; // [sp+24h] [bp-50h] BYREF
  int v25; // [sp+3Ch] [bp-38h]
  _DWORD v26[10]; // [sp+40h] [bp-34h] BYREF
  char v27; // [sp+68h] [bp-Ch]

  p = nullptr;
  v20 = -1;
  (*(void (__fastcall **)(DataPacket *, void **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &p, &v20);
  MemberIndexByName = CMatchingGLLiveLobbyObserver::GetMemberIndexByName(this, (const char *)p);
  if ( MemberIndexByName == -1 )
  {
    v24._M_finish = (char *)&v24;
    v24._M_start_of_storage._M_data = (char *)&v24;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v24, 0x10u);
    *v24._M_finish = 0;
    v23 = 0;
    v25 = 0;
    v17 = p;
    v22 = -1;
    v10 = LC_API_STRLEN_0((const char *)p);
    if ( v10 >= 31 )
      v10 = 31;
    v20 = v10;
    memcpy(v26, v17, v10 + 1);
    (*(void (__fastcall **)(DataPacket *, int *, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v23, &v20);
    v21 = 0;
    (*(void (__fastcall **)(DataPacket *, unsigned __int8 *))(*(_DWORD *)a2 + 12))(a2, &v21);
    v18 = nullptr;
    v26[9] = v21;
    (*(void (__fastcall **)(DataPacket *, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v18, &v20);
    v11 = v18;
    v12 = LC_API_STRLEN_0(v18);
    std::string::_M_assign(&v24, v11, &v11[v12]);
    v25 = v20;
    v27 = 1;
    std::vector<tMemberInfo>::push_back((int *)this + 9, (int)&v22);
    v14 = (CMatchingGLLive *)CMatching::Get(v13);
    CMatchingGLLive::SyncMemberId(v14);
    v25 = 0;
    v22 = -1;
    std::string::~string(&v24);
  }
  else
  {
    v5 = 84 * MemberIndexByName;
    (*(void (__fastcall **)(DataPacket *, int, __int16 *))(*(_DWORD *)a2 + 64))(
      a2,
      *((_DWORD *)this + 9) + 84 * MemberIndexByName + 8,
      &v20);
    v21 = 0;
    (*(void (__fastcall **)(DataPacket *, unsigned __int8 *))(*(_DWORD *)a2 + 12))(a2, &v21);
    *(_DWORD *)(*((_DWORD *)this + 9) + v5 + 76) = v21;
    v18 = nullptr;
    (*(void (__fastcall **)(DataPacket *, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &v18, &v20);
    v6 = *((_DWORD *)this + 9) + v5;
    if ( *(_DWORD *)(v6 + 36) == v20 )
    {
      v15 = v18;
      v16 = LC_API_STRLEN_0(v18);
      std::string::_M_assign((std::string *const)(v6 + 12), v15, &v15[v16]);
      if ( v18 )
      {
        CustomFree(v18);
        v18 = nullptr;
      }
    }
    else
    {
      v7 = v18;
      v8 = LC_API_STRLEN_0(v18);
      std::string::_M_assign((std::string *const)(v6 + 12), v7, &v7[v8]);
      *(_DWORD *)(*((_DWORD *)this + 9) + v5 + 36) = v20;
    }
    *(_BYTE *)(*((_DWORD *)this + 9) + v5 + 80) = 1;
  }
  if ( p )
    CustomFree(p);
  return 0;
}


// ===== 823ac4 CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(DataPacket *) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2)
{
  CMatching *v4; // r0
  CSignIn *v5; // r0
  char *M_data; // r10
  char *i; // r11
  std::string *v8; // r0
  char *v9; // r11
  CMatchingGLLiveLobbyObserver *v10; // r5
  char *M_finish; // r4
  int GLXPlayerMPLobby; // r0
  std::string *v13; // r11
  char *v14; // r0
  size_t v15; // r1
  int MemberIndexByName; // r0
  int v17; // r7
  int v18; // r10
  int v19; // r2
  int v20; // r7
  int v21; // r2
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // r6
  int v29; // r2
  int v30; // r1
  int v31; // r2
  int v32; // r3
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  CMatching *v37; // r0
  _DWORD *v38; // r3
  int v39; // r2
  CMatchingGLLive *v40; // r0
  CMatching *v42; // r0
  CSignInGLLive *v43; // r0
  char *v44; // r10
  char *j; // r9
  std::string *v46; // r0
  char *v47; // r10
  char *k; // r11
  int v49; // r0
  std::string *v50; // r10
  CMatching *v51; // r0
  void *p; // [sp+10h] [bp+0h] BYREF
  int v53; // [sp+14h] [bp+4h] BYREF
  char *v54; // [sp+2Ch] [bp+1Ch]
  char *v55; // [sp+30h] [bp+20h]
  int v56; // [sp+34h] [bp+24h]
  std::string v57; // [sp+38h] [bp+28h] BYREF
  int v58; // [sp+50h] [bp+40h]
  int v59; // [sp+54h] [bp+44h]
  int v60; // [sp+58h] [bp+48h]
  int v61; // [sp+5Ch] [bp+4Ch]
  int v62; // [sp+60h] [bp+50h]
  int v63; // [sp+64h] [bp+54h]
  int v64; // [sp+68h] [bp+58h]
  int v65; // [sp+6Ch] [bp+5Ch]
  int v66; // [sp+70h] [bp+60h]
  char v67; // [sp+74h] [bp+64h]
  int v68; // [sp+78h] [bp+68h]
  char v69; // [sp+7Ch] [bp+6Ch]
  int v70; // [sp+80h] [bp+70h]
  int v71; // [sp+84h] [bp+74h]
  int v72; // [sp+88h] [bp+78h]
  std::string v73; // [sp+8Ch] [bp+7Ch] BYREF
  int v74; // [sp+A4h] [bp+94h]
  int v75; // [sp+A8h] [bp+98h]
  int v76; // [sp+ACh] [bp+9Ch]
  int v77; // [sp+B0h] [bp+A0h]
  int v78; // [sp+B4h] [bp+A4h]
  int v79; // [sp+B8h] [bp+A8h]
  int v80; // [sp+BCh] [bp+ACh]
  int v81; // [sp+C0h] [bp+B0h]
  int v82; // [sp+C4h] [bp+B4h]
  char v83; // [sp+C8h] [bp+B8h]
  int v84; // [sp+CCh] [bp+BCh]
  char v85; // [sp+D0h] [bp+C0h]
  std::string v86; // [sp+D4h] [bp+C4h] BYREF
  std::string v87; // [sp+ECh] [bp+DCh] BYREF
  std::string v88; // [sp+104h] [bp+F4h] BYREF
  std::string v89; // [sp+11Ch] [bp+10Ch] BYREF

  HIWORD(v53) = -1;
  v4 = (CMatching *)(*(int (__fastcall **)(DataPacket *, void **, char *))(*(_DWORD *)a2 + 64))(
                      a2,
                      &p,
                      (char *)&v53 + 2);
  v5 = (CSignIn *)CMatching::Get(v4);
  if ( *((_BYTE *)v5 + 26600) )
  {
    std::string::string(&v87, (char *)dword_A3387C);
    M_data = v87._M_start_of_storage._M_data;
    for ( i = v87._M_finish; M_data != i; ++M_data )
      *M_data = tolower(*M_data);
    v8 = std::string::string(&v86, (char *)p);
    v9 = v86._M_start_of_storage._M_data;
    if ( v86._M_start_of_storage._M_data != v86._M_finish )
    {
      v10 = this;
      M_finish = v86._M_finish;
      do
      {
        v8 = (std::string *)tolower(*v9);
        *v9++ = (char)v8;
      }
      while ( v9 != M_finish );
      this = v10;
    }
    GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby((CMatchingGLLive *)v8);
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 60))(GLXPlayerMPLobby) )
    {
      v13 = (std::string *)v86._M_start_of_storage._M_data;
      if ( LC_API_STRCMP_0(v86._M_start_of_storage._M_data, v87._M_start_of_storage._M_data) )
        goto LABEL_10;
      v42 = (CMatching *)CMatchingGLLive::GetGLXPlayerMPLobby(nullptr);
      *((_BYTE *)v42 + 129) = 1;
      CMatching::Get(v42);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 13, nullptr, 0);
    }
    v13 = (std::string *)v86._M_start_of_storage._M_data;
LABEL_10:
    if ( v13 != &v86 && v13 )
    {
      if ( (unsigned int)(v86._M_buffers._M_end_of_storage - (char *)v13) > 0x80 )
        CustomFree(v13);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, v86._M_buffers._M_end_of_storage - (char *)v13);
    }
    v14 = v87._M_start_of_storage._M_data;
    if ( (std::string *)v87._M_start_of_storage._M_data != &v87 && v87._M_start_of_storage._M_data )
    {
      v15 = v87._M_buffers._M_end_of_storage - v87._M_start_of_storage._M_data;
      if ( (unsigned int)(v87._M_buffers._M_end_of_storage - v87._M_start_of_storage._M_data) <= 0x80 )
      {
LABEL_17:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v14, v15);
        goto LABEL_18;
      }
      goto LABEL_43;
    }
    goto LABEL_18;
  }
  v43 = CSignIn::Get(v5);
  std::string::string(&v89, *((char **)v43 + 1));
  v44 = v89._M_start_of_storage._M_data;
  for ( j = v89._M_finish; v44 != j; ++v44 )
    *v44 = tolower(*v44);
  v46 = std::string::string(&v88, (char *)p);
  v47 = v88._M_start_of_storage._M_data;
  for ( k = v88._M_finish; v47 != k; ++v47 )
  {
    v46 = (std::string *)tolower(*v47);
    *v47 = (char)v46;
  }
  v49 = CMatchingGLLive::GetGLXPlayerMPLobby((CMatchingGLLive *)v46);
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v49 + 60))(v49) )
  {
    v50 = (std::string *)v88._M_start_of_storage._M_data;
    if ( LC_API_STRCMP_0(v88._M_start_of_storage._M_data, v89._M_start_of_storage._M_data) )
      goto LABEL_36;
    v51 = (CMatching *)CMatchingGLLive::GetGLXPlayerMPLobby(nullptr);
    *((_BYTE *)v51 + 129) = 1;
    CMatching::Get(v51);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 13, nullptr, 0);
  }
  v50 = (std::string *)v88._M_start_of_storage._M_data;
LABEL_36:
  if ( v50 != &v88 && v50 )
  {
    if ( (unsigned int)(v88._M_buffers._M_end_of_storage - (char *)v50) > 0x80 )
      CustomFree(v50);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v50, v88._M_buffers._M_end_of_storage - (char *)v50);
  }
  v14 = v89._M_start_of_storage._M_data;
  if ( (std::string *)v89._M_start_of_storage._M_data != &v89 && v89._M_start_of_storage._M_data )
  {
    v15 = v89._M_buffers._M_end_of_storage - v89._M_start_of_storage._M_data;
    if ( (unsigned int)(v89._M_buffers._M_end_of_storage - v89._M_start_of_storage._M_data) <= 0x80 )
      goto LABEL_17;
LABEL_43:
    CustomFree(v14);
  }
LABEL_18:
  if ( p )
  {
    CustomFree(p);
    p = nullptr;
  }
  (*(void (__fastcall **)(DataPacket *, void **, char *))(*(_DWORD *)a2 + 64))(a2, &p, (char *)&v53 + 2);
  MemberIndexByName = CMatchingGLLiveLobbyObserver::GetMemberIndexByName(this, (const char *)p);
  if ( MemberIndexByName != -1 )
  {
    v17 = *((_DWORD *)this + 9);
    v18 = 84 * MemberIndexByName;
    v19 = *(_DWORD *)(v17 + 84 * MemberIndexByName);
    v20 = v17 + 84 * MemberIndexByName;
    v70 = v19;
    v71 = *(_DWORD *)(v20 + 4);
    v21 = *(_DWORD *)(v20 + 8);
    v73._M_finish = (char *)&v73;
    v73._M_start_of_storage._M_data = (char *)&v73;
    v72 = v21;
    std::string::_M_range_initialize(&v73, *(const char **)(v20 + 32), *(const char **)(v20 + 28));
    v74 = *(_DWORD *)(v20 + 36);
    v22 = *(_DWORD *)(v20 + 44);
    v23 = *(_DWORD *)(v20 + 48);
    v24 = *(_DWORD *)(v20 + 52);
    v75 = *(_DWORD *)(v20 + 40);
    v76 = v22;
    v77 = v23;
    v78 = v24;
    v25 = *(_DWORD *)(v20 + 60);
    v26 = *(_DWORD *)(v20 + 64);
    v27 = *(_DWORD *)(v20 + 68);
    v79 = *(_DWORD *)(v20 + 56);
    v80 = v25;
    v81 = v26;
    v82 = v27;
    v28 = *((_DWORD *)this + 9);
    v83 = *(_DWORD *)(v20 + 72);
    v84 = *(_DWORD *)(v20 + 76);
    v85 = *(_BYTE *)(v20 + 80);
    v54 = *(char **)v28;
    v55 = *(char **)(v28 + 4);
    v29 = *(_DWORD *)(v28 + 8);
    v57._M_finish = (char *)&v57;
    v57._M_start_of_storage._M_data = (char *)&v57;
    v56 = v29;
    std::string::_M_range_initialize(&v57, *(const char **)(v28 + 32), *(const char **)(v28 + 28));
    v58 = *(_DWORD *)(v28 + 36);
    v30 = *(_DWORD *)(v28 + 44);
    v31 = *(_DWORD *)(v28 + 48);
    v32 = *(_DWORD *)(v28 + 52);
    v59 = *(_DWORD *)(v28 + 40);
    v60 = v30;
    v61 = v31;
    v62 = v32;
    v33 = *(_DWORD *)(v28 + 60);
    v34 = *(_DWORD *)(v28 + 64);
    v35 = *(_DWORD *)(v28 + 68);
    v63 = *(_DWORD *)(v28 + 56);
    v64 = v33;
    v65 = v34;
    v66 = v35;
    v36 = *((_DWORD *)this + 9);
    v67 = *(_DWORD *)(v28 + 72);
    v68 = *(_DWORD *)(v28 + 76);
    v69 = *(_BYTE *)(v28 + 80);
    v37 = (CMatching *)std::vector<tMemberInfo>::_M_erase((int)this + 36, v36 + v18);
    v38 = *((_DWORD **)this + 9);
    if ( (unsigned int)v38 < *((_DWORD *)this + 10) )
    {
      v39 = 0;
      do
      {
        *v38 = v39;
        v38 += 21;
        ++v39;
      }
      while ( (unsigned int)v38 < *((_DWORD *)this + 10) );
    }
    v40 = (CMatchingGLLive *)CMatching::Get(v37);
    CMatchingGLLive::SyncMemberId(v40);
    if ( p )
    {
      CustomFree(p);
      p = nullptr;
    }
    v58 = 0;
    v54 = (char *)-1;
    std::string::~string(&v57);
    v74 = 0;
    v70 = -1;
    std::string::~string(&v73);
  }
  return 0;
}


// ===== 823fd8 CMatchingGLLiveLobbyObserver::OnMPProcessPushMessages(DataPacket *,int) =====
int __fastcall CMatchingGLLiveLobbyObserver::OnMPProcessPushMessages(
        CMatchingGLLiveLobbyObserver *this,
        DataPacket *a2,
        int a3)
{
  int v4; // r5
  int result; // r0

  v4 = a3 - 17;
  result = PrintDatapacket((int)a2);
  switch ( v4 )
  {
    case 0:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(this, a2);
      break;
    case 1:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(this, a2);
      break;
    case 4:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(this, a2);
      break;
    case 15:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(this, a2);
      break;
    case 18:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter();
      break;
    case 21:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter((int)this, (int)a2);
      break;
    case 24:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus();
      break;
    case 27:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(this, a2);
      break;
    case 30:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(this, a2);
      break;
    case 33:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(this, a2);
      break;
    case 34:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams();
      break;
    case 59:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser();
      break;
    case 63:
      result = CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(this, a2);
      break;
    default:
      return result;
  }
  return result;
}


// ===== 8241d4 CMatchingGLLiveMessageObserver::OnNetworkError(void) =====
void __fastcall CMatchingGLLiveMessageObserver::OnNetworkError(CMatchingGLLiveMessageObserver *this)
{
  ;
}


// ===== 8241d8 CMatchingGLLiveMessageObserver::OnRequestTimeout(int) =====
void __fastcall CMatchingGLLiveMessageObserver::OnRequestTimeout(CMatchingGLLiveMessageObserver *this, int a2)
{
  ;
}


// ===== 8241dc CMatchingGLLiveMessageObserver::OnRequestFailure(int,int) =====
void __fastcall CMatchingGLLiveMessageObserver::OnRequestFailure(CMatchingGLLiveMessageObserver *this, int a2, int a3)
{
  ;
}


// ===== 8241e0 CMatchingGLLiveMessageObserver::OnRequestSuccess(int,char *,int) =====
CMatching *__fastcall CMatchingGLLiveMessageObserver::OnRequestSuccess(CMatching *this, int a2, char *a3, int a4)
{
  if ( (unsigned int)(a2 - 111) <= 1 )
  {
    this = (CMatching *)CMatching::Get(this);
    *((_BYTE *)this + 27650) = 1;
  }
  return this;
}


// ===== 824204 CSignInGLLive::Initialize(void) =====
int __fastcall CSignInGLLive::Initialize(CSignInGLLive *this)
{
  if ( !*((_BYTE *)this + 16) )
    *((_BYTE *)this + 16) = 1;
  return 0;
}


// ===== 82421c CSignInGLLive::SignIn(void) =====
int __fastcall CSignInGLLive::SignIn(CSignInGLLive *this)
{
  return 0;
}


// ===== 824224 CSignInGLLive::CancelLogin(void) =====
int __fastcall CSignInGLLive::CancelLogin(CSignInGLLive *this)
{
  if ( *((_BYTE *)this + 17) )
  {
    (*(void (__fastcall **)(CSignInGLLive *))(*(_DWORD *)this + 20))(this);
    *((_BYTE *)this + 17) = 0;
  }
  *((_BYTE *)this + 40) = 0;
  (*(void (__fastcall **)(char *))(*((_DWORD *)this + 5) + 12))((char *)this + 20);
  return (*(int (__fastcall **)(char *))(*((_DWORD *)this + 11) + 12))((char *)this + 44);
}


// ===== 824278 CSignInGLLive::Destroy(void) =====
// attributes: thunk
int __fastcall CSignInGLLive::Destroy(CSignIn *this)
{
  return CSignIn::Destroy(this);
}


// ===== 82427c CSignInGLLive::Terminate(void) =====
int __fastcall CSignInGLLive::Terminate(CSignInGLLive *this)
{
  CSignIn::Terminate(this);
  *((_BYTE *)this + 40) = 0;
  (*(void (__fastcall **)(char *))(*((_DWORD *)this + 5) + 12))((char *)this + 20);
  return (*(int (__fastcall **)(char *))(*((_DWORD *)this + 11) + 12))((char *)this + 44);
}


// ===== 8242b4 CSignInGLLive::LoginLobby(void) =====
CMatching *__fastcall CSignInGLLive::LoginLobby(CSignInGLLive *this)
{
  CMatchingGLLive *GLXPlayerMPLobbyObserver; // r0
  CMatching *result; // r0
  CMatchingGLLive *v3; // r0
  CMatchingGLLive *v4; // r5
  GLXPlayerComponent *GLXPlayerLogin; // r0
  CMatchingGLLive *v6; // r6
  GLXPlayerComponent *v7; // r0
  CMatchingGLLive *UID; // r4
  GLXPlayerComponent *v9; // r0
  const char *v10; // r0
  size_t v11; // r0
  CMatching *GLXPlayerMPLobby; // r6
  CMatchingGLLive *v13; // r0
  GLXPlayerComponent *GGI; // r5
  char *v15; // r4
  size_t v16; // r0

  GLXPlayerMPLobbyObserver = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(this);
  result = (CMatching *)CMatchingGLLive::GetGLXPlayerMPLobbyObserver(GLXPlayerMPLobbyObserver);
  if ( *((_BYTE *)result + 5) )
  {
    v3 = (CMatchingGLLive *)CMatching::Get(result);
    if ( *((_BYTE *)v3 + 26600) )
    {
      GLXPlayerMPLobby = (CMatching *)CMatchingGLLive::GetGLXPlayerMPLobby(v3);
      v13 = (CMatchingGLLive *)CMatching::Get(GLXPlayerMPLobby);
      GGI = CMatchingGLLive::GetGGI(v13);
      v15 = (char *)dword_A3387C;
      v16 = LC_API_STRLEN_0((const char *)dword_A3387C);
      return (CMatching *)GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter(
                            GLXPlayerMPLobby,
                            (int)GGI,
                            v15,
                            v16,
                            1,
                            1,
                            v15,
                            "NON");
    }
    else
    {
      v4 = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerMPLobby(v3);
      GLXPlayerLogin = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(v4);
      v6 = (CMatchingGLLive *)GLXPlayerComponent::GetGGI(GLXPlayerLogin);
      v7 = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(v6);
      UID = (CMatchingGLLive *)GLXPlayerComponent::GetUID(v7);
      v9 = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(UID);
      v10 = (const char *)GLXPlayerComponent::GetUID(v9);
      v11 = LC_API_STRLEN_0(v10);
      return (CMatching *)GLXPlayerMPLobby::mpSendLobbyLogin(v4, (int)v6, (char *)UID, v11, 1);
    }
  }
  return result;
}


// ===== 8243a8 CSignInGLLive::SignOut(void) =====
int __fastcall CSignInGLLive::SignOut(pthread_mutex_t *this)
{
  GLXPlayerLogin *GLXPlayerLogin; // r0

  if ( *((_BYTE *)this + 17) )
  {
    GLXPlayerLogin = (GLXPlayerLogin *)CMatchingGLLive::GetGLXPlayerLogin((CMatchingGLLive *)this);
    GLXPlayerLogin::SendLogout(GLXPlayerLogin);
  }
  return CEventQueueBase::AddEvent(this + 5, 4, nullptr, 0);
}


// ===== 8243dc CSignInGLLive::SignIn(CSignInCredentials &) =====
int __fastcall CSignInGLLive::SignIn(pthread_mutex_t *this, char **a2)
{
  int v2; // r6
  GLXPlayerLogin *GLXPlayerLogin; // r0

  v2 = *((unsigned __int8 *)this + 16);
  if ( *((_BYTE *)this + 16) )
  {
    GLXPlayerLogin = (GLXPlayerLogin *)CMatchingGLLive::GetGLXPlayerLogin((CMatchingGLLive *)this);
    v2 = 1;
    GLXPlayerLogin::SendLogin(GLXPlayerLogin, *a2, a2[1], nullptr, 1, a2[2], "EN", 1);
    *((_DWORD *)this + 1) = *a2;
    *((_DWORD *)this + 2) = a2[1];
    *((_DWORD *)this + 3) = a2[2];
    CEventQueueBase::AddEvent(this + 5, 1, nullptr, 0);
    CEventQueueBase::AddEvent(this + 11, 1, nullptr, 0);
  }
  return v2;
}


// ===== 82447c CSignInGLLive::Update(void) =====
void __fastcall CSignInGLLive::Update(pthread_mutex_t *this)
{
  CMatchingGLLive *GLXPlayerLoginObserver; // r0
  CMatchingGLLive *HasEventOccured; // r0
  CMatchingGLLive *v4; // r0
  CMatchingGLLive *v5; // r0
  CMatchingGLLive *v6; // r0
  CMatching *v7; // r0
  CMatchingGLLive *v8; // r0
  CMatchingGLLive *v9; // r0
  int v10; // r0
  CMatchingGLLive *v11; // r0
  GLXPlayerComponent *v12; // r0
  unsigned __int8 *v13; // r0
  int v14; // r7
  CMatchingGLLive *v15; // r0
  GLXPlayerLogin *v16; // r0
  int GLXPlayerMPLobby; // r0
  int GLXPlayerLogin; // r0
  CMatchingGLLive *v19; // r0
  GLXPlayerLogin *v20; // r0

  if ( *((_BYTE *)this + 16) )
  {
    GLXPlayerLoginObserver = (CMatchingGLLive *)CMatchingGLLive::GetGLXPlayerLoginObserver((CMatchingGLLive *)this);
    if ( *((_BYTE *)GLXPlayerLoginObserver + 4) )
    {
      GLXPlayerLogin = CMatchingGLLive::GetGLXPlayerLogin(GLXPlayerLoginObserver);
      GLXPlayerLoginObserver = (CMatchingGLLive *)(*(int (__fastcall **)(int))(*(_DWORD *)GLXPlayerLogin + 8))(GLXPlayerLogin);
    }
    if ( *((_BYTE *)this + 40) )
    {
      GLXPlayerMPLobby = CMatchingGLLive::GetGLXPlayerMPLobby(GLXPlayerLoginObserver);
      (*(void (__fastcall **)(int))(*(_DWORD *)GLXPlayerMPLobby + 8))(GLXPlayerMPLobby);
    }
    HasEventOccured = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(this + 11, 1, 0);
    if ( HasEventOccured )
    {
      v13 = (unsigned __int8 *)CMatchingGLLive::GetGLXPlayerLoginObserver(HasEventOccured);
      v14 = v13[5];
      if ( v13[5] )
      {
        v15 = (CMatchingGLLive *)CEventQueueBase::ConsumeEvent(this + 11, 1);
        v16 = (GLXPlayerLogin *)CMatchingGLLive::GetGLXPlayerLogin(v15);
        GLXPlayerLogin::SendGetLobbyServer(v16);
        CEventQueueBase::AddEvent(this + 11, 2, nullptr, 0);
      }
      else if ( *(_BYTE *)(CMatching::Get((CMatching *)v13) + 26600) )
      {
        v19 = (CMatchingGLLive *)CEventQueueBase::ConsumeEvent(this + 11, 1);
        v20 = (GLXPlayerLogin *)CMatchingGLLive::GetGLXPlayerLogin(v19);
        GLXPlayerLogin::SendGetLobbyServerWithGameCenter(v20, (char *)dword_A3387C, (char *)v14, (char *)v14);
        CEventQueueBase::AddEvent(this + 11, 2, (void *)v14, v14);
      }
    }
    v4 = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(this + 11, 2, 0);
    if ( v4 && *(_BYTE *)(CMatchingGLLive::GetGLXPlayerLoginObserver(v4) + 6) )
    {
      *((_BYTE *)this + 40) = 1;
      v9 = (CMatchingGLLive *)CEventQueueBase::ConsumeEvent(this + 11, 2);
      v10 = CMatchingGLLive::GetGLXPlayerMPLobby(v9);
      (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 12))(v10);
      v11 = (CMatchingGLLive *)CEventQueueBase::AddEvent(this + 11, 4, nullptr, 0);
      v12 = (GLXPlayerComponent *)CMatchingGLLive::GetGLXPlayerLogin(v11);
      GLXPlayerComponent::GetUID(v12);
    }
    v5 = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(this + 11, 4, 0);
    if ( v5 && *(_BYTE *)(CMatchingGLLive::GetGLXPlayerMPLobbyObserver(v5) + 5) )
    {
      CEventQueueBase::ConsumeEvent(this + 11, 4);
      CSignInGLLive::LoginLobby((CSignInGLLive *)this);
      CEventQueueBase::AddEvent(this + 11, 6, nullptr, 0);
    }
    v6 = (CMatchingGLLive *)CEventQueueBase::HasEventOccured(this + 11, 6, 0);
    if ( v6 )
    {
      if ( *(unsigned __int8 *)(CMatchingGLLive::GetGLXPlayerMPLobby(v6) + 96) > 1u )
      {
        CEventQueueBase::ConsumeEvent(this + 11, 6);
        v7 = (CMatching *)CEventQueueBase::AddEvent(this + 5, 2, nullptr, 0);
        *((_BYTE *)this + 17) = 1;
        v8 = (CMatchingGLLive *)CMatching::Get(v7);
        CMatchingGLLive::SetGCState(v8, 2);
      }
    }
  }
}


// ===== 8246b4 CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 8246b8 CSignInGLLive::CSignInGLLive(void) =====
void __fastcall CSignInGLLive::CSignInGLLive(CSignInGLLive *this)
{
  CSignIn::CSignIn(this);
  *(_DWORD *)this = off_9929D0;
  *((_DWORD *)this + 11) = &off_991D70;
  *((_BYTE *)this + 40) = 0;
  CNetMutex::CNetMutex((CSignInGLLive *)((char *)this + 48));
  *((_DWORD *)this + 14) = (char *)this + 52;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 13) = (char *)this + 52;
  *((_DWORD *)this + 11) = &off_9929A0;
}


// ===== 824734 CSignInGLLive::CSignInGLLive(void) =====
void __fastcall CSignInGLLive::CSignInGLLive(CSignInGLLive *this)
{
  CSignIn::CSignIn(this);
  *(_DWORD *)this = off_9929D0;
  *((_DWORD *)this + 11) = &off_991D70;
  *((_BYTE *)this + 40) = 0;
  CNetMutex::CNetMutex((CSignInGLLive *)((char *)this + 48));
  *((_DWORD *)this + 14) = (char *)this + 52;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 13) = (char *)this + 52;
  *((_DWORD *)this + 11) = &off_9929A0;
}


// ===== 8247b0 CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::~CEventQueue() =====
int __fastcall CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 8247ec CSignInGLLive::~CSignInGLLive() =====
void __fastcall CSignInGLLive::~CSignInGLLive(CSignInGLLive *this)
{
  *(_DWORD *)this = off_9929D0;
  *((_DWORD *)this + 11) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 13);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 12);
  CSignIn::~CSignIn(this);
}


// ===== 824848 CSignInGLLive::~CSignInGLLive() =====
void __fastcall CSignInGLLive::~CSignInGLLive(CSignInGLLive *this)
{
  CSignInGLLive::~CSignInGLLive(this);
  CustomFree(this);
}


// ===== 824864 CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::~CEventQueue() =====
void *__fastcall CEventQueue<EVENTS_SIGNINGLLIVE_INTERNAL,0u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 8248a8 CSignInGLLive::~CSignInGLLive() =====
void __fastcall CSignInGLLive::~CSignInGLLive(CSignInGLLive *this)
{
  *(_DWORD *)this = off_9929D0;
  *((_DWORD *)this + 11) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 13);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 12);
  CSignIn::~CSignIn(this);
}


// ===== 824904 CSignInGLLiveObserver::Update(void) =====
int __fastcall CSignInGLLiveObserver::Update(CSignInGLLiveObserver *this)
{
  return 0;
}


// ===== 82490c CSignInGLLiveObserver::IsErrorInvalidNickname(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorInvalidNickname(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 113;
}


// ===== 824920 CSignInGLLiveObserver::IsErrorNicknameUsed(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorNicknameUsed(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 110;
}


// ===== 824934 CSignInGLLiveObserver::IsErrorLoginAuthenticationFailed(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorLoginAuthenticationFailed(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 97;
}


// ===== 824948 CSignInGLLiveObserver::IsErrorUsernameNotExists(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorUsernameNotExists(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 67;
}


// ===== 82495c CSignInGLLiveObserver::IsErrorInvalidUsernameOrPassword(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorInvalidUsernameOrPassword(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 49;
}


// ===== 824970 CSignInGLLiveObserver::IsErrorNoUsername(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorNoUsername(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == 1;
}


// ===== 824984 CSignInGLLiveObserver::IsErrorNoConnection(void) =====
bool __fastcall CSignInGLLiveObserver::IsErrorNoConnection(CSignInGLLiveObserver *this)
{
  return *((_DWORD *)this + 34) == -2;
}


// ===== 824998 CSignInGLLiveObserver::Terminate(void) =====
void *__fastcall CSignInGLLiveObserver::Terminate(CSignInGLLiveObserver *this)
{
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  *((_DWORD *)this + 34) = 0;
  return LC_API_MEMSET_0((char *)this + 6, 0, 0x80u);
}


// ===== 8249b4 CSignInGLLiveObserver::~CSignInGLLiveObserver() =====
void __fastcall CSignInGLLiveObserver::~CSignInGLLiveObserver(CSignInGLLiveObserver *this)
{
  *(_DWORD *)this = &off_992A00;
  CSignInGLLiveObserver::Terminate(this);
}


// ===== 8249e8 CSignInGLLiveObserver::~CSignInGLLiveObserver() =====
void __fastcall CSignInGLLiveObserver::~CSignInGLLiveObserver(CSignInGLLiveObserver *this)
{
  *(_DWORD *)this = &off_992A00;
  CSignInGLLiveObserver::Terminate(this);
}


// ===== 824a1c CSignInGLLiveObserver::CSignInGLLiveObserver(void) =====
void __fastcall CSignInGLLiveObserver::CSignInGLLiveObserver(CSignInGLLiveObserver *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_992A00;
  *((_BYTE *)this + 5) = 0;
  *((_DWORD *)this + 34) = 0;
  LC_API_MEMSET_0((char *)this + 6, 0, 0x80u);
}


// ===== 824a68 CSignInGLLiveObserver::CSignInGLLiveObserver(void) =====
void __fastcall CSignInGLLiveObserver::CSignInGLLiveObserver(CSignInGLLiveObserver *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = &off_992A00;
  *((_BYTE *)this + 5) = 0;
  *((_DWORD *)this + 34) = 0;
  LC_API_MEMSET_0((char *)this + 6, 0, 0x80u);
}


// ===== 824ab4 CSignInGLLiveObserver::OnRequestFailure(int,int) =====
int __fastcall CSignInGLLiveObserver::OnRequestFailure(int this, int a2, int a3)
{
  CSignInGLLiveObserver *v3; // r4
  CSignInGLLive *v5; // r0
  _BOOL4 IsErrorUsernameNotExists; // r0
  CSignInGLLive *v7; // r0
  CSignInGLLive *v8; // r0

  v3 = (CSignInGLLiveObserver *)this;
  if ( a2 == 15 )
  {
    *(_DWORD *)(this + 136) = a3;
    v5 = CSignIn::Get((CSignIn *)this);
    (*(void (__fastcall **)(CSignInGLLive *))(*(_DWORD *)v5 + 24))(v5);
    IsErrorUsernameNotExists = CSignInGLLiveObserver::IsErrorUsernameNotExists(v3);
    if ( IsErrorUsernameNotExists || (IsErrorUsernameNotExists = CSignInGLLiveObserver::IsErrorNoUsername(v3)) )
    {
      v7 = CSignIn::Get((CSignIn *)IsErrorUsernameNotExists);
      this = CEventQueueBase::AddEvent((pthread_mutex_t *)v7 + 5, 5, nullptr, 0);
    }
    else
    {
      this = CSignInGLLiveObserver::IsErrorInvalidUsernameOrPassword(v3);
      if ( this )
      {
        v8 = CSignIn::Get((CSignIn *)this);
        this = CEventQueueBase::AddEvent((pthread_mutex_t *)v8 + 5, 6, nullptr, 0);
      }
    }
  }
  *((_DWORD *)v3 + 34) = a3;
  return this;
}


// ===== 824b4c CSignInGLLiveObserver::OnRequestTimeout(int) =====
int __fastcall CSignInGLLiveObserver::OnRequestTimeout(CSignInGLLiveObserver *this, int a2)
{
  CSignInGLLive *v2; // r0
  CSignIn *v3; // r0
  CSignInGLLive *v4; // r0

  *((_DWORD *)this + 34) = 41;
  v2 = CSignIn::Get(this);
  v3 = (CSignIn *)(*(int (__fastcall **)(CSignInGLLive *))(*(_DWORD *)v2 + 24))(v2);
  v4 = CSignIn::Get(v3);
  return CEventQueueBase::AddEvent((pthread_mutex_t *)v4 + 5, 8, nullptr, 0);
}


// ===== 824b84 CSignInGLLiveObserver::OnNetworkError(void) =====
int __fastcall CSignInGLLiveObserver::OnNetworkError(CSignInGLLiveObserver *this)
{
  CSignInGLLive *v1; // r0
  CSignIn *v2; // r0
  CSignInGLLive *v3; // r0

  *((_DWORD *)this + 34) = -2;
  v1 = CSignIn::Get(this);
  v2 = (CSignIn *)(*(int (__fastcall **)(CSignInGLLive *))(*(_DWORD *)v1 + 24))(v1);
  v3 = CSignIn::Get(v2);
  return CEventQueueBase::AddEvent((pthread_mutex_t *)v3 + 5, 7, nullptr, 0);
}


// ===== 824bbc CSignInGLLiveObserver::OnRequestSuccess(int,char *,int) =====
void __fastcall CSignInGLLiveObserver::OnRequestSuccess(CSignInGLLiveObserver *this, int a2, char *a3, size_t a4)
{
  size_t v4; // r6
  CMatching *XPlayerURL; // r0
  CMatchingGLLive *v8; // r0

  v4 = a4;
  if ( a2 == 15 )
    LOBYTE(a4) = 1;
  if ( a2 == 15 )
  {
    *((_BYTE *)this + 5) = a4;
  }
  else if ( a2 <= 15 )
  {
    if ( a2 == 1 )
    {
      XPlayerURL = (CMatching *)GLXPlayerSereverConfig::GetXPlayerURL(this);
      *((_BYTE *)this + 4) = a2;
      v8 = (CMatchingGLLive *)CMatching::Get(XPlayerURL);
      CMatchingGLLive::SetGCState(v8, a2);
    }
  }
  else if ( a2 == 17 )
  {
    *((_BYTE *)this + 5) = 0;
  }
  else if ( a2 == 107 )
  {
    if ( *(_BYTE *)(CMatching::Get(this) + 26605) )
    {
      strcpy((char *)this + 6, "alpha01.gameloft.com:7500");
    }
    else
    {
      LC_API_STRNCPY_0((char *)this + 6, a3, v4);
      *((_BYTE *)this + v4 + 6) = 0;
    }
  }
  *((_DWORD *)this + 34) = 0;
}


// ===== 824c80 CBluetoothSocket::RestartBluetooth(void) =====
void __fastcall CBluetoothSocket::RestartBluetooth(CBluetoothSocket *this)
{
  ;
}


// ===== 824c84 CBluetoothSocket::DisconnectFromAllPeers(void) =====
int __fastcall CBluetoothSocket::DisconnectFromAllPeers(CBluetoothSocket *this)
{
  return 1;
}


// ===== 824c8c CEventQueue<_BLUETOOTH_EVENTS,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<_BLUETOOTH_EVENTS,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 824c90 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "" )
    result = (char *)memcpy(result, "", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 824ce0 `global constructor keyed to'.._src_win32_BluetoothSocketImpl.cpp =====
int `global constructor keyed to'.._src_win32_BluetoothSocketImpl.cpp()
{
  const char *v0; // r2

  CBluetoothSocketAbstract::s_eventQueue = (int)&off_991D70;
  CNetMutex::CNetMutex((CNetMutex *)algn_A338EC);
  dword_A338F8 = 100;
  CBluetoothSocketAbstract::s_eventQueue = (int)&off_992A20;
  dword_A338F4 = (int)&dword_A338F0;
  dword_A338F0 = (int)&dword_A338F0;
  _aeabi_atexit(
    (int)&CBluetoothSocketAbstract::s_eventQueue,
    (int)CEventQueue<_BLUETOOTH_EVENTS,100u>::~CEventQueue,
    (int)&_dso_handle);
  dword_A3390C = (int)&CBluetoothSocketAbstract::s_DisplayName;
  dword_A33910 = (int)&CBluetoothSocketAbstract::s_DisplayName;
  std::string::_M_range_initialize((std::string *)&CBluetoothSocketAbstract::s_DisplayName, "", v0);
  return _aeabi_atexit((int)&CBluetoothSocketAbstract::s_DisplayName, (int)std::string::~string, (int)&_dso_handle);
}


// ===== 824da8 CBluetoothSocketAbstract::GetDeviceNameByPeerId(uint) =====
std::string *__fastcall CBluetoothSocketAbstract::GetDeviceNameByPeerId(
        std::string *this,
        unsigned int a2,
        const char *a3)
{
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, "", a3);
  return this;
}


// ===== 824dd0 CEventQueue<_BLUETOOTH_EVENTS,100u>::~CEventQueue() =====
int __fastcall CEventQueue<_BLUETOOTH_EVENTS,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 824e0c CEventQueue<_BLUETOOTH_EVENTS,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<_BLUETOOTH_EVENTS,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 824e50 COnlineImpl::IsSignedIn(void) =====
int __fastcall COnlineImpl::IsSignedIn(COnlineImpl *this)
{
  return 1;
}


// ===== 824e58 COnlineImpl::IsNetworkConnected(void) =====
int __fastcall COnlineImpl::IsNetworkConnected(COnlineImpl *this)
{
  return 1;
}


// ===== 824e60 COnlineImpl::ElapsedTimeMs(long) =====
int __fastcall COnlineImpl::ElapsedTimeMs(struct timeval *this, int a2)
{
  struct timeval v5; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v5, nullptr);
  if ( (v5.tv_usec - *((_DWORD *)this + 17)) / 1000 + 1000 * (v5.tv_sec - *((_DWORD *)this + 16)) < a2 )
    return 0;
  gettimeofday(this + 8, nullptr);
  return 1;
}


// ===== 824ed4 COnlineImpl::GetAbsoluteTime(void) =====
__int64 __fastcall COnlineImpl::GetAbsoluteTime(COnlineImpl *this)
{
  struct timeval v2; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v2, nullptr);
  return v2.tv_usec / 1000 + 1000 * v2.tv_sec;
}


// ===== 824f20 COnlineImpl::SignIn(void) =====
int __fastcall COnlineImpl::SignIn(pthread_mutex_t *this)
{
  return CEventQueueBase::AddEvent(this + 2, 5242880, nullptr, 0);
}


// ===== 824f34 COnlineImpl::Update(float) =====
// attributes: thunk
char *__fastcall COnlineImpl::Update(char *this, float a2)
{
  return COnline::Update(this, a2);
}


// ===== 824f38 COnlineImpl::Destroy(void) =====
// attributes: thunk
CMatching *__fastcall COnlineImpl::Destroy(CMatching *this)
{
  return COnline::Destroy(this);
}


// ===== 824f3c COnlineImpl::Terminate(void) =====
// attributes: thunk
int __fastcall COnlineImpl::Terminate(COnline *this)
{
  return COnline::Terminate(this);
}


// ===== 824f40 COnlineImpl::Initialize(void) =====
int __fastcall COnlineImpl::Initialize(COnlineImpl *this)
{
  struct timezone *v1; // r6
  int v3; // r4

  v1 = (struct timezone *)*((unsigned __int8 *)this + 4);
  if ( *((_BYTE *)this + 4) )
    return 0;
  v3 = COnline::Initialize((__int64 (__fastcall ***)(COnline *))this);
  *((_BYTE *)this + 4) = 1;
  gettimeofday((struct timeval *)this + 8, v1);
  return v3;
}


// ===== 824f7c COnlineImpl::~COnlineImpl() =====
void __fastcall COnlineImpl::~COnlineImpl(COnlineImpl *this)
{
  *(_DWORD *)this = off_992A50;
  COnline::~COnline(this);
}


// ===== 824fb0 COnlineImpl::~COnlineImpl() =====
void __fastcall COnlineImpl::~COnlineImpl(COnlineImpl *this)
{
  COnlineImpl::~COnlineImpl(this);
  CustomFree(this);
}


// ===== 824fcc COnlineImpl::~COnlineImpl() =====
void __fastcall COnlineImpl::~COnlineImpl(COnlineImpl *this)
{
  *(_DWORD *)this = off_992A50;
  COnline::~COnline(this);
}


// ===== 825000 COnlineImpl::COnlineImpl(void) =====
void __fastcall COnlineImpl::COnlineImpl(COnlineImpl *this)
{
  COnline::COnline(this);
  *(_DWORD *)this = off_992A50;
}


// ===== 825034 COnlineImpl::COnlineImpl(void) =====
void __fastcall COnlineImpl::COnlineImpl(COnlineImpl *this)
{
  COnline::COnline(this);
  *(_DWORD *)this = off_992A50;
}


// ===== 825068 COnlineImpl::GetPlayerName(void) =====
void **__fastcall COnlineImpl::GetPlayerName(void **this)
{
  CTransportManager *IsInitialized; // r0
  char *v3; // r0
  int TransportMgr; // r0

  IsInitialized = (CTransportManager *)CTransportManager::IsInitialized((CTransportManager *)this);
  if ( IsInitialized )
  {
    TransportMgr = GetTransportMgr(IsInitialized);
    (*(void (__fastcall **)(void **, int))(*(_DWORD *)TransportMgr + 32))(this, TransportMgr);
  }
  else
  {
    *(this + 4) = this;
    *(this + 5) = this;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 7u);
    v3 = (char *)memcpy(*(this + 5), "PLAYER", 6u);
    *(this + 4) = v3 + 6;
    v3[6] = 0;
  }
  return this;
}


// ===== 8250dc CTransportManagerImpl::~CTransportManagerImpl() =====
void __fastcall CTransportManagerImpl::~CTransportManagerImpl(pthread_mutex_t *this)
{
  this->value = (volatile int)off_992A78;
  CTransportManager::~CTransportManager(this);
}


// ===== 825110 CTransportManagerImpl::GetHostname(CNetworkId &) =====
std::string *__fastcall CTransportManagerImpl::GetHostname(std::string *this, CNetworkId *a2, _DWORD *a3)
{
  int v4; // r3
  struct hostent *v5; // r0
  char *h_name; // r1
  int v8; // [sp+0h] [bp-8h] BYREF

  if ( (a3[6] & 1) != 0 )
    v4 = a3[3];
  else
    v4 = a3[1];
  v8 = v4;
  v5 = gethostbyaddr(&v8, 4, 2);
  if ( v5 )
    h_name = v5->h_name;
  else
    h_name = "";
  std::string::string(this, h_name);
  return this;
}


// ===== 825178 CTransportManagerImpl::GetLocalhostname(void) =====
std::string *__fastcall CTransportManagerImpl::GetLocalhostname(std::string *this)
{
  char *v2; // r1
  int v4; // [sp+4h] [bp-404h] BYREF
  _BYTE v5[1020]; // [sp+8h] [bp-400h] BYREF

  v4 = 0;
  LC_API_MEMSET_0(v5, 0, 0x3FCu);
  if ( gethostname((char *)&v4, 0x400u) )
    v2 = "";
  else
    v2 = (char *)&v4;
  std::string::string(this, v2);
  return this;
}


// ===== 82521c CTransportManagerImpl::StopReceiverThread(void) =====
int __fastcall CTransportManagerImpl::StopReceiverThread(CTransportManagerImpl *this)
{
  int result; // r0
  void *thread_return; // [sp+4h] [bp-8h] BYREF

  result = pthread_join(*((_DWORD *)this + 66), &thread_return);
  if ( result )
    return -1;
  return result;
}


// ===== 825240 CTransportManagerImpl::Sleep(uint) =====
int __fastcall CTransportManagerImpl::Sleep(CTransportManagerImpl *this, __useconds_t useconds)
{
  return usleep(useconds);
}


// ===== 825248 CTransportManagerImpl::StartReceiverThread(void) =====
int __fastcall CTransportManagerImpl::StartReceiverThread(pthread_t *this)
{
  int v2; // r6
  _BYTE v4[24]; // [sp+0h] [bp-18h] BYREF

  pthread_attr_init((pthread_attr_t *)v4);
  pthread_attr_setdetachstate((pthread_attr_t *)v4, 0);
  v2 = pthread_create(
         this + 66,
         (const pthread_attr_t *)v4,
         (void *(*)(void *))CTransportManagerImpl::ReceiverThread,
         this);
  pthread_attr_destroy((pthread_attr_t *)v4);
  if ( v2 )
    return -1;
  else
    return 0;
}


// ===== 8252b4 CTransportManagerImpl::ReceiverThreadInternal(void) =====
int __fastcall CTransportManagerImpl::ReceiverThreadInternal(int this)
{
  CTransportManagerImpl *v1; // r4

  v1 = (CTransportManagerImpl *)this;
  if ( !*(_BYTE *)(this + 252) )
  {
    do
    {
      CTransportManager::ReceiverThreadExecute(v1);
      this = CTransportManagerImpl::Sleep(v1, 0xAu);
    }
    while ( !*((_BYTE *)v1 + 252) );
  }
  return this;
}


// ===== 8252ec CTransportManagerImpl::ReceiverThread(void *) =====
int __fastcall CTransportManagerImpl::ReceiverThread(CTransportManagerImpl *this, void *a2)
{
  CTransportManagerImpl::ReceiverThreadInternal((int)this);
  return 0;
}


// ===== 8252fc CTransportManagerImpl::~CTransportManagerImpl() =====
void __fastcall CTransportManagerImpl::~CTransportManagerImpl(pthread_mutex_t *this)
{
  this->value = (volatile int)off_992A78;
  CTransportManager::~CTransportManager(this);
  CustomFree(this);
}


// ===== 825338 CConnection::IsToServer(void) =====
bool __fastcall CConnection::IsToServer(CConnection *this)
{
  int v1; // r4
  int v2; // r0

  v1 = *((_DWORD *)this + 7);
  v2 = CMatching::Get(this);
  return v1 == (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 116))(v2);
}


// ===== 825360 CConnection::PrintStatistics(void) =====
bool __fastcall CConnection::PrintStatistics(CConnection *this)
{
  CMatching *v2; // r0
  _BOOL4 result; // r0

  v2 = (CMatching *)CMatching::Get(this);
  result = CMatching::IsServer(v2);
  if ( !result )
    return CConnection::IsToServer(this);
  return result;
}


// ===== 825388 CDataStats<int>::GetAverage(float) =====
int __fastcall CDataStats<int>::GetAverage(_DWORD *a1, float a2)
{
  CReadWriteLock *v2; // r5
  int v5; // r6
  clock_t v6; // r0
  int v7; // r1
  unsigned __int8 *v8; // r12
  int v9; // lr
  unsigned __int8 *v10; // r4
  int v11; // r7
  _DWORD *v12; // r2
  int v13; // r4
  _DWORD *v15; // r2
  unsigned __int8 *v16; // r3
  unsigned __int8 *v17; // r2

  v2 = (CReadWriteLock *)(a1 + 1);
  CReadWriteLock::LockRead((CReadWriteLock *)(a1 + 1));
  v5 = 1000000 * (int)a2;
  v6 = clock();
  if ( !a1[6] )
    goto LABEL_16;
  v7 = 0;
  v8 = (unsigned __int8 *)a1[4];
  v9 = 0;
  v10 = (unsigned __int8 *)(a1 + 2);
  while ( v10 != v8 )
  {
    if ( v5 )
    {
      v11 = *v10;
      if ( *v10 || v10 != *(unsigned __int8 **)(*((_DWORD *)v10 + 1) + 4) )
      {
        v12 = *((_DWORD **)v10 + 2);
        if ( v12 )
        {
          while ( v12[3] )
            v12 = (_DWORD *)v12[3];
        }
        else
        {
          v12 = *((_DWORD **)v10 + 1);
          if ( v10 == (unsigned __int8 *)v12[2] )
          {
            while ( *(_DWORD **)(v12[1] + 8) == v12 )
              v12 = (_DWORD *)v12[1];
            v12 = (_DWORD *)v12[1];
          }
        }
      }
      else
      {
        v12 = *((_DWORD **)v10 + 3);
      }
      if ( v5 < v6 - v12[4] )
        break;
    }
    else
    {
      v11 = *v10;
    }
    if ( v11 || v10 != *(unsigned __int8 **)(*((_DWORD *)v10 + 1) + 4) )
    {
      v15 = *((_DWORD **)v10 + 2);
      if ( v15 )
      {
        while ( v15[3] )
          v15 = (_DWORD *)v15[3];
      }
      else
      {
        v15 = *((_DWORD **)v10 + 1);
        if ( v10 == (unsigned __int8 *)v15[2] )
        {
          while ( *(_DWORD **)(v15[1] + 8) == v15 )
            v15 = (_DWORD *)v15[1];
          v15 = (_DWORD *)v15[1];
        }
      }
    }
    else
    {
      v15 = *((_DWORD **)v10 + 3);
    }
    ++v7;
    v9 += v15[5];
    if ( !v11 && v10 == *(unsigned __int8 **)(*((_DWORD *)v10 + 1) + 4) )
    {
      v16 = *((unsigned __int8 **)v10 + 3);
      goto LABEL_31;
    }
    v16 = *((unsigned __int8 **)v10 + 2);
    if ( v16 )
    {
      while ( *((_DWORD *)v16 + 3) )
        v16 = *((unsigned __int8 **)v16 + 3);
LABEL_31:
      v10 = v16;
    }
    else
    {
      v16 = *((unsigned __int8 **)v10 + 1);
      if ( v10 != *((unsigned __int8 **)v16 + 2) )
        goto LABEL_31;
      do
      {
        v17 = v16;
        v16 = *((unsigned __int8 **)v16 + 1);
      }
      while ( *((unsigned __int8 **)v16 + 2) == v17 );
      v10 = v16;
    }
  }
  if ( v7 )
  {
    v13 = v9 / v7;
    CReadWriteLock::UnlockRead(v2);
    return v13;
  }
LABEL_16:
  CReadWriteLock::UnlockRead(v2);
  return 0;
}


// ===== 825588 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::erase(std::priv::_Rb_tree_iterator<std::pair<long const,int>,std::priv::_MultimapTraitsT<std::pair<long const,int>>>) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x18u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 8255c4 CConnection::Ping(void) =====
int __fastcall CConnection::Ping(CConnection *this)
{
  int (__fastcall ***Online)(_DWORD); // r0

  ++CConnection::Ping(void)::seq;
  Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
  return (**Online)(Online);
}


// ===== 8255f4 CConnection::CheckForLag(uint) =====
CConnectionManager *__fastcall CConnection::CheckForLag(CConnectionManager *this, unsigned int a2)
{
  CConnectionManager *v2; // r4
  int v4; // r3
  int v5; // r2
  int v6; // r1
  pthread_mutex_t *ConnectionMgr; // r0

  v2 = this;
  if ( *((_DWORD *)this + 6) == 4 )
  {
    v4 = *((_DWORD *)this + 18);
    v5 = *((_DWORD *)this + 15);
    this = *((CConnectionManager **)this + 19);
    v6 = a2 - v4;
    if ( v4 - v5 <= 2000 )
    {
      if ( *((_BYTE *)v2 + 84) && (int)(a2 - (_DWORD)this - v6) > 1000 )
        *((_BYTE *)v2 + 84) = 0;
    }
    else
    {
      if ( !*((_BYTE *)v2 + 84) )
      {
        ConnectionMgr = (pthread_mutex_t *)GetConnectionMgr(this);
        this = (CConnectionManager *)CEventQueueBase::AddEvent(ConnectionMgr + 2, 6291459, (char *)v2 + 28, 4);
        *((_BYTE *)v2 + 84) = 1;
      }
      *((_DWORD *)v2 + 19) = a2;
    }
  }
  return this;
}


// ===== 825688 CConnection::SendKeepAlive(uint) =====
void __fastcall CConnection::SendKeepAlive(CConnection *this, unsigned int a2)
{
  int v3; // r2
  int v4; // r3
  CTransportManager *v5; // r0
  int v6; // r2
  int v7; // r3
  bool v8; // cc
  CTransportManager *TransportMgr; // r0

  if ( *((_DWORD *)this + 6) == 4 )
  {
    v3 = *((_DWORD *)this + 17);
    v4 = *((_DWORD *)this + 15);
    v5 = *((CTransportManager **)this + 16);
    v6 = a2 - v3;
    v7 = a2 - v4;
    v8 = v6 <= 1000;
    if ( v6 > 1000 )
      v8 = v7 <= 1000;
    if ( !v8 || (v5 = (CTransportManager *)(a2 - (_DWORD)v5), (int)v5 > 1000) )
    {
      *((_DWORD *)this + 17) = a2;
      *((_DWORD *)this + 16) = a2;
      TransportMgr = (CTransportManager *)GetTransportMgr(v5);
      CTransportManager::KeepAlive(TransportMgr, (CConnection *)((char *)this + 32));
    }
  }
}


// ===== 8256e4 CConnection::SendConnectFinalize(void) =====
void __fastcall CConnection::SendConnectFinalize(CConnection *this)
{
  CMatching *v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r3
  NetBitStream *v6; // r0
  int TransportMgr; // r0
  int v8; // r3
  _BYTE v9[4]; // [sp+8h] [bp-3Ch] BYREF
  const void *v10; // [sp+Ch] [bp-38h]
  unsigned int v11; // [sp+18h] [bp-2Ch]
  _DWORD v12[2]; // [sp+28h] [bp-1Ch] BYREF
  __int64 v13; // [sp+30h] [bp-14h]
  unsigned __int8 v14[4]; // [sp+3Ch] [bp-8h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v9, 0x800u);
  v14[0] = 2;
  v2 = NetBitStream::WriteByteArray((NetBitStream *)v9, v14, 1u);
  v3 = CMatching::Get(v2);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 108))(v3);
  v5 = *((_DWORD *)this + 7);
  v12[0] = v4;
  v12[1] = v5;
  v13 = *((_QWORD *)this + 55);
  v6 = NetBitStream::WriteByteArray((NetBitStream *)v9, (unsigned __int8 *)v12, 0x10u);
  TransportMgr = GetTransportMgr(v6);
  v8 = v11 & 7;
  if ( (v11 & 7) != 0 )
    v8 = 1;
  CTransportManager::SendToAllTransport(TransportMgr, 5, (_DWORD *)this + 8, v10, v8 + (v11 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v9);
}


// ===== 825788 CConnection::SendConnectResponse(void) =====
void __fastcall CConnection::SendConnectResponse(CConnection *this)
{
  CMatching *v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r3
  NetBitStream *v6; // r0
  int TransportMgr; // r0
  int v8; // r3
  _BYTE v9[4]; // [sp+8h] [bp-3Ch] BYREF
  const void *v10; // [sp+Ch] [bp-38h]
  unsigned int v11; // [sp+18h] [bp-2Ch]
  _DWORD v12[2]; // [sp+28h] [bp-1Ch] BYREF
  __int64 v13; // [sp+30h] [bp-14h]
  unsigned __int8 v14[4]; // [sp+3Ch] [bp-8h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v9, 0x800u);
  v14[0] = 1;
  v2 = NetBitStream::WriteByteArray((NetBitStream *)v9, v14, 1u);
  v3 = CMatching::Get(v2);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 108))(v3);
  v5 = *((_DWORD *)this + 7);
  v12[0] = v4;
  v12[1] = v5;
  v13 = *((_QWORD *)this + 55);
  v6 = NetBitStream::WriteByteArray((NetBitStream *)v9, (unsigned __int8 *)v12, 0x10u);
  TransportMgr = GetTransportMgr(v6);
  v8 = v11 & 7;
  if ( (v11 & 7) != 0 )
    v8 = 1;
  CTransportManager::SendToAllTransport(TransportMgr, 5, (_DWORD *)this + 8, v10, v8 + (v11 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v9);
}


// ===== 825828 CConnection::ProcessConnectRequest(CNetworkId &) =====
// attributes: thunk
void __fastcall CConnection::ProcessConnectRequest(CConnection *this, CNetworkId *a2)
{
  CConnection::SendConnectResponse(this);
}


// ===== 82582c CConnection::Disconnect(void) =====
int __fastcall CConnection::Disconnect(CConnection *this)
{
  CMatching *v2; // r0
  int v3; // r0
  NetBitStream *v4; // r0
  int TransportMgr; // r0
  int v6; // r3
  CConnectionManager *v7; // r0
  pthread_mutex_t *ConnectionMgr; // r0
  _BYTE v10[4]; // [sp+8h] [bp-2Ch] BYREF
  const void *v11; // [sp+Ch] [bp-28h]
  unsigned int v12; // [sp+18h] [bp-1Ch]
  int v13; // [sp+28h] [bp-Ch] BYREF
  unsigned __int8 v14[4]; // [sp+2Ch] [bp-8h] BYREF

  if ( *((_DWORD *)this + 6) != 1 )
  {
    *((_DWORD *)this + 6) = 1;
    NetBitStream::NetBitStream((NetBitStream *)v10, 0x800u);
    v14[0] = 4;
    v2 = NetBitStream::WriteByteArray((NetBitStream *)v10, v14, 1u);
    v3 = CMatching::Get(v2);
    v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 108))(v3);
    v4 = NetBitStream::WriteByteArray((NetBitStream *)v10, (unsigned __int8 *)&v13, 4u);
    TransportMgr = GetTransportMgr(v4);
    v6 = v12 & 7;
    if ( (v12 & 7) != 0 )
      v6 = 1;
    CTransportManager::SendToAllTransport(TransportMgr, 5, (_DWORD *)this + 8, v11, v6 + (v12 >> 3));
    ConnectionMgr = (pthread_mutex_t *)GetConnectionMgr(v7);
    CEventQueueBase::AddEvent(ConnectionMgr + 2, 6291458, (char *)this + 28, 4);
    NetBitStream::~NetBitStream((NetBitStream *)v10);
  }
  return 0;
}


// ===== 8258f0 CConnection::Send(tPACKET_TYPE,void *,int) =====
COnline *__fastcall CConnection::Send(_DWORD *a1, int a2, const void *a3, size_t a4)
{
  CConnectionManager *v5; // r0
  COnline *v9; // r5
  int ConnectionMgr; // r0
  CTransportManager *PacketTransportType; // r8
  int TransportMgr; // r0
  COnline *v13; // r0
  int (__fastcall ***Online)(_DWORD); // r0

  v5 = (CConnectionManager *)a1[6];
  if ( v5 == (CConnectionManager *)((char *)&dword_0 + 1) )
    return nullptr;
  ConnectionMgr = GetConnectionMgr(v5);
  PacketTransportType = (CTransportManager *)CConnectionManager::GetPacketTransportType(ConnectionMgr, a2);
  TransportMgr = GetTransportMgr(PacketTransportType);
  v13 = (COnline *)CTransportManager::Send(TransportMgr, (int)PacketTransportType, a1 + 8, a2, a3, a4);
  v9 = v13;
  if ( (int)v13 >= 0 )
  {
    Online = (int (__fastcall ***)(_DWORD))GetOnline(v13);
    a1[16] = (**Online)(Online);
  }
  return v9;
}


// ===== 82596c CConnection::Timeout(void) =====
int __fastcall CConnection::Timeout(CConnection *this)
{
  _BOOL4 v2; // r0
  int Online; // r0

  v2 = CConnection::IsToServer(this);
  if ( v2 )
  {
    Online = GetOnline((COnline *)v2);
    COnline::ReportDisconnect(Online, 5, 0);
  }
  return (*(int (__fastcall **)(CConnection *))(*(_DWORD *)this + 16))(this);
}


// ===== 8259a4 CEventQueue<CConnection::EVENTS,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CConnection::EVENTS,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 8259a8 CConnection::CConnection(void) =====
void __fastcall CConnection::CConnection(CConnection *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_992AD8;
  *((_DWORD *)this + 1) = &off_991D70;
  CNetMutex::CNetMutex((CConnection *)((char *)this + 8));
  *((_DWORD *)this + 5) = 100;
  *((_DWORD *)this + 7) = -14531089;
  *((_DWORD *)this + 4) = (char *)this + 12;
  *((_DWORD *)this + 1) = &off_992AA8;
  *((_DWORD *)this + 3) = (char *)this + 12;
  *((_DWORD *)this + 6) = 0;
  CNetworkId::Reset((_DWORD *)this + 8);
  *((_DWORD *)this + 20) = 30000;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_BYTE *)this + 84) = 0;
  v2 = (char *)this + 88;
  do
  {
    *(_DWORD *)v2 = off_992528;
    CReadWriteLock::CReadWriteLock((CReadWriteLock *)(v2 + 4));
    *((_DWORD *)v2 + 3) = 0;
    v2[8] = 0;
    *((_DWORD *)v2 + 5) = v2 + 8;
    *((_DWORD *)v2 + 4) = v2 + 8;
    *((_DWORD *)v2 + 6) = 0;
    *((_DWORD *)v2 + 8) = 500;
    v2 += 36;
  }
  while ( v2 != (char *)this + 412 );
  CNetworkId::Reset(v2);
  *((_QWORD *)this + 55) = 0;
}


// ===== 825ab8 CConnection::CConnection(void) =====
void __fastcall CConnection::CConnection(CConnection *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_992AD8;
  *((_DWORD *)this + 1) = &off_991D70;
  CNetMutex::CNetMutex((CConnection *)((char *)this + 8));
  *((_DWORD *)this + 5) = 100;
  *((_DWORD *)this + 7) = -14531089;
  *((_DWORD *)this + 4) = (char *)this + 12;
  *((_DWORD *)this + 1) = &off_992AA8;
  *((_DWORD *)this + 3) = (char *)this + 12;
  *((_DWORD *)this + 6) = 0;
  CNetworkId::Reset((_DWORD *)this + 8);
  *((_DWORD *)this + 20) = 30000;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_BYTE *)this + 84) = 0;
  v2 = (char *)this + 88;
  do
  {
    *(_DWORD *)v2 = off_992528;
    CReadWriteLock::CReadWriteLock((CReadWriteLock *)(v2 + 4));
    *((_DWORD *)v2 + 3) = 0;
    v2[8] = 0;
    *((_DWORD *)v2 + 5) = v2 + 8;
    *((_DWORD *)v2 + 4) = v2 + 8;
    *((_DWORD *)v2 + 6) = 0;
    *((_DWORD *)v2 + 8) = 500;
    v2 += 36;
  }
  while ( v2 != (char *)this + 412 );
  CNetworkId::Reset(v2);
  *((_QWORD *)this + 55) = 0;
}


// ===== 825bc8 std::allocator<std::priv::_Rb_tree_node<std::pair<long const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<long const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 825be8 CDataStats<int>::GetSum(float) [clone] =====
int __fastcall CDataStats<int>::GetSum(_DWORD *a1)
{
  CReadWriteLock *v1; // r6
  clock_t v3; // r0
  int v4; // r4
  _DWORD *v5; // r1
  _DWORD *v6; // r5
  _DWORD *v7; // r2
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  _DWORD *v11; // r2

  v1 = (CReadWriteLock *)(a1 + 1);
  CReadWriteLock::LockRead((CReadWriteLock *)(a1 + 1));
  v3 = clock();
  v4 = a1[6];
  if ( v4 )
  {
    v5 = (_DWORD *)a1[4];
    v6 = a1 + 2;
    v4 = 0;
    while ( v5 != v6 )
    {
      if ( *(_BYTE *)v6 || v6 != *(_DWORD **)(v6[1] + 4) )
      {
        v7 = (_DWORD *)v6[2];
        if ( v7 )
        {
          while ( v7[3] )
            v7 = (_DWORD *)v7[3];
        }
        else
        {
          v7 = (_DWORD *)v6[1];
          if ( v6 == (_DWORD *)v7[2] )
          {
            while ( *(_DWORD **)(v7[1] + 8) == v7 )
              v7 = (_DWORD *)v7[1];
            v7 = (_DWORD *)v7[1];
          }
        }
      }
      else
      {
        v7 = (_DWORD *)v6[3];
      }
      if ( v3 - v7[4] > 1000000 )
        break;
      if ( *(_BYTE *)v6 || v6 != *(_DWORD **)(v6[1] + 4) )
      {
        v9 = (_DWORD *)v6[2];
        if ( v9 )
        {
          while ( v9[3] )
            v9 = (_DWORD *)v9[3];
        }
        else
        {
          v9 = (_DWORD *)v6[1];
          if ( v6 == (_DWORD *)v9[2] )
          {
            while ( *(_DWORD **)(v9[1] + 8) == v9 )
              v9 = (_DWORD *)v9[1];
            v9 = (_DWORD *)v9[1];
          }
        }
      }
      else
      {
        v9 = (_DWORD *)v6[3];
      }
      v4 += v9[5];
      if ( !*(_BYTE *)v6 && v6 == *(_DWORD **)(v6[1] + 4) )
      {
        v10 = (_DWORD *)v6[3];
        goto LABEL_27;
      }
      v10 = (_DWORD *)v6[2];
      if ( v10 )
      {
        while ( v10[3] )
          v10 = (_DWORD *)v10[3];
LABEL_27:
        v6 = v10;
      }
      else
      {
        v10 = (_DWORD *)v6[1];
        if ( v6 != (_DWORD *)v10[2] )
          goto LABEL_27;
        do
        {
          v11 = v10;
          v10 = (_DWORD *)v10[1];
        }
        while ( (_DWORD *)v10[2] == v11 );
        v6 = v10;
      }
    }
  }
  CReadWriteLock::UnlockRead(v1);
  return v4;
}


// ===== 825d9c CDataStats<int>::AddData(int) =====
void __fastcall CDataStats<int>::AddData(_DWORD *a1, int a2)
{
  CReadWriteLock *v2; // r6
  clock_t v5; // r0
  _DWORD *v6; // r7
  clock_t v7; // r10
  clock_t v8; // r3
  _DWORD *v9; // r8
  _DWORD *v10; // r0
  unsigned int v11; // r2
  unsigned int v12; // r3
  unsigned int v13; // r3
  unsigned __int8 *v14; // [sp+4h] [bp-4h] BYREF

  v2 = (CReadWriteLock *)(a1 + 1);
  CReadWriteLock::LockWrite((CReadWriteLock *)(a1 + 1));
  v5 = clock();
  v6 = (_DWORD *)a1[3];
  v7 = v5;
  if ( !v6 )
  {
    v6 = a1 + 2;
LABEL_23:
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,int>>>::allocate();
    v10[4] = v7;
    v10[5] = a2;
    v10[3] = 0;
    v10[2] = 0;
    a1[4] = v10;
    a1[3] = v10;
    a1[5] = v10;
    goto LABEL_13;
  }
  while ( 1 )
  {
    v8 = v6[4];
    v9 = (_DWORD *)(v5 >= v8 ? v6[3] : v6[2]);
    if ( !v9 )
      break;
    v6 = v9;
  }
  if ( a1 + 2 == v6 )
    goto LABEL_23;
  if ( v5 < v8 )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,int>>>::allocate();
    v10[4] = v7;
    v10[5] = a2;
    v10[3] = 0;
    v10[2] = 0;
    v6[2] = v10;
    if ( v6 == (_DWORD *)a1[4] )
      a1[4] = v10;
  }
  else
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,int>>>::allocate();
    v10[4] = v7;
    v10[5] = a2;
    v10[3] = 0;
    v10[2] = 0;
    v6[3] = v10;
    if ( v6 == (_DWORD *)a1[5] )
      a1[5] = v10;
  }
LABEL_13:
  v10[1] = v6;
  std::priv::_Rb_global<bool>::_Rebalance((int)v10, a1 + 3);
  v11 = a1[8];
  v12 = a1[6] + 1;
  a1[6] = v12;
  if ( v11 && v12 && v11 < v12 )
  {
    do
    {
      v14 = (unsigned __int8 *)a1[4];
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::erase(
        (int)(a1 + 2),
        &v14);
      v13 = a1[6];
    }
    while ( v13 && a1[8] < v13 );
  }
  CReadWriteLock::UnlockWrite(v2);
}


// ===== 825f08 CConnection::MergeStatistics(CDataStats<int> *) =====
void __fastcall CConnection::MergeStatistics(CMatching *a1, _DWORD *a2)
{
  CMatching *v4; // r0
  int Sum; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int Average; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r0
  int v13; // r1

  v4 = (CMatching *)CMatching::Get(a1);
  if ( CMatching::IsServer(v4) || CConnection::IsToServer(a1) )
  {
    Sum = CDataStats<int>::GetSum((_DWORD *)a1 + 31);
    CDataStats<int>::AddData(a2 + 9, Sum);
    v6 = CDataStats<int>::GetSum((_DWORD *)a1 + 22);
    CDataStats<int>::AddData(a2, v6);
    v7 = CDataStats<int>::GetSum((_DWORD *)a1 + 49);
    CDataStats<int>::AddData(a2 + 27, v7);
    v8 = CDataStats<int>::GetSum((_DWORD *)a1 + 40);
    CDataStats<int>::AddData(a2 + 18, v8);
    Average = CDataStats<int>::GetAverage((_DWORD *)a1 + 58, 5.0);
    CDataStats<int>::AddData(a2 + 36, Average);
    v10 = CDataStats<int>::GetAverage((_DWORD *)a1 + 94, 30.0);
    CDataStats<int>::AddData(a2 + 72, v10);
    v11 = CDataStats<int>::GetAverage((_DWORD *)a1 + 76, 1.0);
    CDataStats<int>::AddData(a2 + 54, v11);
    v12 = CDataStats<int>::GetAverage((_DWORD *)a1 + 85, 1.0);
    CDataStats<int>::AddData(a2 + 63, v12);
    v13 = CDataStats<int>::GetAverage((_DWORD *)a1 + 67, 1.0);
    CDataStats<int>::AddData(a2 + 45, v13);
  }
}


// ===== 82600c CConnection::ReportStatistic(tCONNECTION_STATISTIC,int) =====
void __fastcall CConnection::ReportStatistic(int a1, int a2, int a3)
{
  if ( a2 == 8 )
    CDataStats<int>::AddData((_DWORD *)(a1 + 376), a3 & ~(a3 >> 31));
}


// ===== 826020 CEventQueue<CConnection::EVENTS,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CConnection::EVENTS,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 82605c CConnection::SendConnectRequest(void) =====
void __fastcall CConnection::SendConnectRequest(CConnection *this)
{
  int (__fastcall ***Online)(_DWORD); // r0
  CMatching *v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r3
  NetBitStream *v7; // r0
  int TransportMgr; // r0
  int v9; // r3
  _BYTE v10[4]; // [sp+8h] [bp-3Ch] BYREF
  const void *v11; // [sp+Ch] [bp-38h]
  unsigned int v12; // [sp+18h] [bp-2Ch]
  _DWORD v13[2]; // [sp+28h] [bp-1Ch] BYREF
  __int64 v14; // [sp+30h] [bp-14h]
  unsigned __int8 v15[4]; // [sp+3Ch] [bp-8h] BYREF

  Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
  *((_DWORD *)this + 16) = (**Online)(Online);
  NetBitStream::NetBitStream((NetBitStream *)v10, 0x800u);
  v15[0] = 0;
  v3 = NetBitStream::WriteByteArray((NetBitStream *)v10, v15, 1u);
  v4 = CMatching::Get(v3);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 108))(v4);
  v6 = *((_DWORD *)this + 7);
  v13[0] = v5;
  v13[1] = v6;
  v14 = *((_QWORD *)this + 55);
  v7 = NetBitStream::WriteByteArray((NetBitStream *)v10, (unsigned __int8 *)v13, 0x10u);
  TransportMgr = GetTransportMgr(v7);
  v9 = v12 & 7;
  if ( (v12 & 7) != 0 )
    v9 = 1;
  CTransportManager::SendToAllTransport(TransportMgr, 5, (_DWORD *)this + 8, v11, v9 + (v12 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v10);
}


// ===== 826114 CConnection::ProcessPing(tMsgPing &) =====
int __fastcall CConnection::ProcessPing(COnline *a1, int *a2)
{
  int Online; // r7
  COnline *v5; // r0
  int v6; // r2
  _BOOL4 v7; // r3
  int (__fastcall ***v8)(_DWORD); // r0
  int result; // r0

  Online = GetOnline(a1);
  v5 = (COnline *)(**(int (***)(void))Online)();
  v6 = (int)v5 - *(_DWORD *)(Online + 32) - a2[2];
  v7 = *a2 < CConnection::ProcessPing(tMsgPing &)::lastSeq;
  if ( v6 > 3000 )
    v7 = 1;
  if ( !v7 )
  {
    CConnection::ReportStatistic((int)a1, 8, v6);
    CConnection::ProcessPing(tMsgPing &)::lastSeq = *a2;
  }
  v8 = (int (__fastcall ***)(_DWORD))GetOnline(v5);
  result = (**v8)(v8);
  *((_DWORD *)a1 + 15) = result;
  return result;
}


// ===== 8261a4 CConnection::SetLastRecvTime(void) =====
int __fastcall CConnection::SetLastRecvTime(CConnection *this)
{
  int (__fastcall ***Online)(_DWORD); // r0
  int result; // r0

  Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
  result = (**Online)(Online);
  *((_DWORD *)this + 15) = result;
  return result;
}


// ===== 8261c4 CConnection::Connect(int,CNetworkId &) =====
COnline *__fastcall CConnection::Connect(CConnection *this, int a2, CNetworkId *a3)
{
  _DWORD *v3; // r12
  CConnection *v4; // r4
  CNetworkId *v6; // lr
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // r12
  int v12; // r1
  int v13; // r2
  CTransportManager *TransportMgr; // r0
  COnline *v15; // r6
  int (__fastcall ***Online)(_DWORD); // r0
  CTransportManager *v17; // r0
  int v18; // r0
  __int64 v19; // r0
  __int64 v20; // r8
  __int64 v21; // r8
  __int64 v22; // r8
  int (__fastcall ***v23)(_DWORD); // r0
  COnline *v24; // r0
  int (__fastcall ***v25)(_DWORD); // r0
  COnline *v26; // r0
  int (__fastcall ***v27)(_DWORD); // r0
  unsigned __int16 v29; // [sp+4h] [bp-1Ch] BYREF
  unsigned int v30; // [sp+8h] [bp-18h]
  unsigned __int16 v31; // [sp+Ch] [bp-14h]
  unsigned int v32; // [sp+10h] [bp-10h]
  unsigned int v33; // [sp+14h] [bp-Ch]
  unsigned int v34; // [sp+18h] [bp-8h]
  int v35; // [sp+1Ch] [bp-4h]

  v3 = (_DWORD *)((char *)this + 32);
  v4 = this;
  *((_DWORD *)this + 7) = a2;
  if ( (CConnection *)((char *)this + 32) != a3 )
  {
    v6 = a3;
    v7 = *(_DWORD *)a3;
    v8 = *((_DWORD *)a3 + 1);
    v9 = *((_DWORD *)a3 + 2);
    v10 = *((_DWORD *)v6 + 3);
    v6 = (CNetworkId *)((char *)v6 + 16);
    *v3 = v7;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v11 = v3 + 4;
    this = *(CConnection **)v6;
    v12 = *((_DWORD *)v6 + 1);
    v13 = *((_DWORD *)v6 + 2);
    *v11 = *(_DWORD *)v6;
    v11[1] = v12;
    v11[2] = v13;
  }
  *((_DWORD *)v4 + 6) = 2;
  TransportMgr = (CTransportManager *)GetTransportMgr(this);
  v15 = (COnline *)CTransportManager::Connect(TransportMgr, a3);
  Online = (int (__fastcall ***)(_DWORD))GetOnline(v15);
  v17 = (CTransportManager *)(**Online)(Online);
  *((_DWORD *)v4 + 111) = v17;
  *((_DWORD *)v4 + 110) = 0;
  v18 = GetTransportMgr(v17);
  CTransportManager::GetListenNetworkId((int)&v29, v18, 0);
  if ( (v35 & 1) != 0 )
  {
    LODWORD(v20) = v32 << 16;
    HIDWORD(v20) = HIWORD(v32);
    v19 = v20 + v31;
  }
  else
  {
    v19 = 0;
  }
  if ( (v35 & 2) != 0 )
  {
    LODWORD(v21) = v30 << 16;
    HIDWORD(v21) = HIWORD(v30);
    v19 += v21 + v29;
  }
  if ( (v35 & 4) != 0 )
    v19 += v33;
  if ( (v35 & 8) != 0 )
    v19 += v34;
  HIDWORD(v22) = v35 << 23;
  LODWORD(v22) = 0;
  *((_QWORD *)v4 + 55) = __PAIR64__(HIDWORD(v19) & 0xFFFFFF, v19) + v22;
  v23 = (int (__fastcall ***)(_DWORD))GetOnline((COnline *)v19);
  v24 = (COnline *)(**v23)(v23);
  *((_DWORD *)v4 + 15) = v24;
  v25 = (int (__fastcall ***)(_DWORD))GetOnline(v24);
  v26 = (COnline *)(**v25)(v25);
  *((_DWORD *)v4 + 16) = v26;
  v27 = (int (__fastcall ***)(_DWORD))GetOnline(v26);
  *((_DWORD *)v4 + 18) = (**v27)(v27);
  return v15;
}


// ===== 826370 CConnection::~CConnection() =====
void __fastcall CConnection::~CConnection(void **this)
{
  char *v2; // r5
  pthread_mutex_t *v3; // r8
  char *v4; // r4
  void (__fastcall **v5)(char *); // t1

  v2 = (char *)(this + 22);
  *this = off_992AD8;
  v3 = (pthread_mutex_t *)(this + 1);
  CConnection::Disconnect((CConnection *)this);
  CEventQueueBase::Clear((CEventQueueBase *)v3);
  v4 = (char *)(this + 103);
  do
  {
    v5 = *((void (__fastcall ***)(char *))v4 - 9);
    v4 -= 36;
    (*v5)(v4);
  }
  while ( v4 != v2 );
  *(this + 1) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(this + 3);
  CNetMutex::~CNetMutex(v3 + 1);
}


// ===== 8263f4 CConnection::~CConnection() =====
void __fastcall CConnection::~CConnection(void **this)
{
  char *v2; // r5
  pthread_mutex_t *v3; // r8
  char *v4; // r4
  void (__fastcall **v5)(char *); // t1

  v2 = (char *)(this + 22);
  *this = off_992AD8;
  v3 = (pthread_mutex_t *)(this + 1);
  CConnection::Disconnect((CConnection *)this);
  CEventQueueBase::Clear((CEventQueueBase *)v3);
  v4 = (char *)(this + 103);
  do
  {
    v5 = *((void (__fastcall ***)(char *))v4 - 9);
    v4 -= 36;
    (*v5)(v4);
  }
  while ( v4 != v2 );
  *(this + 1) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(this + 3);
  CNetMutex::~CNetMutex(v3 + 1);
}


// ===== 826478 CConnection::~CConnection() =====
void __fastcall CConnection::~CConnection(void **this)
{
  CConnection::~CConnection(this);
  CustomFree(this);
}


// ===== 826494 CEventQueue<CConnection::EVENTS,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<CConnection::EVENTS,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 8264d8 CNetworkId::Set(CNetworkId) =====
int __fastcall CNetworkId::Set(int a1, _DWORD *a2)
{
  int v2; // r2
  int result; // r0
  int v5; // r0
  __int16 v6; // r7
  int v7; // r6
  __int16 v8; // r7
  int v9; // [sp+14h] [bp-5Ch]
  int v10; // [sp+60h] [bp-10h]

  v2 = a2[6];
  if ( (v2 & 1) != 0 )
  {
    v10 = a2[3];
    v8 = a2[2];
    *(_DWORD *)(a1 + 24) |= 1u;
    *(_WORD *)(a1 + 8) = v8;
    *(_DWORD *)(a1 + 12) = v10;
    v2 = a2[6];
  }
  if ( (v2 & 2) != 0 )
  {
    v6 = *a2;
    v7 = a2[1];
    *(_DWORD *)(a1 + 24) |= 2u;
    *(_WORD *)a1 = v6;
    *(_DWORD *)(a1 + 4) = v7;
    v2 = a2[6];
  }
  if ( (v2 & 4) != 0 )
  {
    v5 = a2[4];
    *(_DWORD *)(a1 + 24) |= 4u;
    *(_DWORD *)(a1 + 16) = v5;
    v2 = a2[6];
  }
  result = v2 & 8;
  if ( (v2 & 8) != 0 )
  {
    result = a2[4];
    v9 = a2[5];
    *(_DWORD *)(a1 + 24) |= 8u;
    *(_DWORD *)(a1 + 20) = v9;
  }
  return result;
}


// ===== 826640 CConnection::Accept(int,CNetworkId &,ulong long) =====
int __fastcall CConnection::Accept(CConnection *this, int a2, CNetworkId *a3, int a4, unsigned __int64 a5)
{
  CNetworkId *v5; // lr
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  CTransportManager *v14; // r0
  CTransportManager *TransportMgr; // r0
  int v16; // r5
  int (__fastcall ***Online)(_DWORD); // r0
  COnline *v18; // r0
  int (__fastcall ***v19)(_DWORD); // r0
  COnline *v20; // r0
  int (__fastcall ***v21)(_DWORD); // r0
  _DWORD v23[8]; // [sp+4h] [bp-20h] BYREF

  *((_DWORD *)this + 7) = a2;
  v5 = a3;
  v8 = *(_DWORD *)a3;
  v9 = *((_DWORD *)a3 + 1);
  v10 = *((_DWORD *)a3 + 2);
  v11 = *((_DWORD *)v5 + 3);
  v5 = (CNetworkId *)((char *)v5 + 16);
  v23[0] = v8;
  v23[1] = v9;
  v23[2] = v10;
  v23[3] = v11;
  v12 = *((_DWORD *)v5 + 1);
  v13 = *((_DWORD *)v5 + 2);
  v23[4] = *(_DWORD *)v5;
  v23[5] = v12;
  v23[6] = v13;
  v14 = (CTransportManager *)CNetworkId::Set((int)this + 32, v23);
  *((_DWORD *)this + 6) = 3;
  TransportMgr = (CTransportManager *)GetTransportMgr(v14);
  v16 = CTransportManager::Connect(TransportMgr, a3);
  *((_QWORD *)this + 55) = a5;
  Online = (int (__fastcall ***)(_DWORD))GetOnline((COnline *)a5);
  v18 = (COnline *)(**Online)(Online);
  *((_DWORD *)this + 15) = v18;
  v19 = (int (__fastcall ***)(_DWORD))GetOnline(v18);
  v20 = (COnline *)(**v19)(v19);
  *((_DWORD *)this + 16) = v20;
  v21 = (int (__fastcall ***)(_DWORD))GetOnline(v20);
  *((_DWORD *)this + 18) = (**v21)(v21);
  CConnection::SendConnectResponse(this);
  return v16;
}


// ===== 8266ec CConnection::ProcessConnectFinalize(CNetworkId &) =====
int __fastcall CConnection::ProcessConnectFinalize(CConnection *this, CNetworkId *a2)
{
  char *v2; // r4
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r2
  _DWORD v10[8]; // [sp+4h] [bp-20h] BYREF

  v2 = (char *)this + 412;
  CNetworkId::IsEqual((unsigned __int16 *)this + 206, (unsigned __int16 *)a2);
  v4 = *((_DWORD *)a2 + 1);
  v5 = *((_DWORD *)a2 + 2);
  v6 = *((_DWORD *)a2 + 3);
  v10[0] = *(_DWORD *)a2;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *((_DWORD *)a2 + 5);
  v8 = *((_DWORD *)a2 + 6);
  v10[4] = *((_DWORD *)a2 + 4);
  v10[5] = v7;
  v10[6] = v8;
  return CNetworkId::Set((int)v2, v10);
}


// ===== 826730 CConnection::ProcessConnectResponse(CNetworkId &) =====
void __fastcall CConnection::ProcessConnectResponse(CConnection *this, CNetworkId *a2)
{
  char *v2; // r5
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  _DWORD v10[7]; // [sp+4h] [bp-1Ch] BYREF

  v2 = (char *)this + 412;
  CNetworkId::IsEqual((unsigned __int16 *)this + 206, (unsigned __int16 *)a2);
  v5 = *((_DWORD *)a2 + 1);
  v6 = *((_DWORD *)a2 + 2);
  v7 = *((_DWORD *)a2 + 3);
  v10[0] = *(_DWORD *)a2;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = *((_DWORD *)a2 + 5);
  v9 = *((_DWORD *)a2 + 6);
  v10[4] = *((_DWORD *)a2 + 4);
  v10[5] = v8;
  v10[6] = v9;
  CNetworkId::Set((int)v2, v10);
  CConnection::SendConnectFinalize(this);
}


// ===== 826780 CConnection::Update(void) =====
CConnectionManager *__fastcall CConnection::Update(CConnection *this)
{
  int (__fastcall ***Online)(_DWORD); // r0
  int v3; // r0
  int v4; // r2
  unsigned int v5; // r5
  _BOOL4 v6; // r1
  int v7; // r6
  CConnectionManager *result; // r0
  int v10; // r3
  int v11; // r10
  __int64 v12; // r0
  unsigned int v13; // r1
  __int64 v14; // r2
  unsigned int v15; // r12
  __int64 v16; // r2
  int v17; // r2
  __int64 v18; // r0
  unsigned int v19; // r1
  __int64 v20; // r10
  unsigned int v21; // r12
  __int64 v22; // r8
  __int64 v23; // r8
  __int64 v24; // r2
  pthread_mutex_t *ConnectionMgr; // r0
  __int64 v26; // [sp+0h] [bp-14h]
  __int64 v27; // [sp+8h] [bp-Ch]

  Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
  v3 = (**Online)(Online);
  v4 = *((_DWORD *)this + 6);
  v5 = v3;
  v6 = v4 == 2 && v3 - *((_DWORD *)this + 16) > 50;
  v7 = *((_DWORD *)this + 15);
  if ( v6 )
  {
    CConnection::SendConnectRequest(this);
  }
  else if ( v4 == 3 && v3 - *((_DWORD *)this + 16) > 50 )
  {
    CConnection::SendConnectResponse(this);
  }
  CConnection::SendKeepAlive(this, v5);
  result = CConnection::CheckForLag(this, v5);
  if ( (unsigned int)(*((_DWORD *)this + 6) - 2) <= 1 )
  {
    v11 = *((_DWORD *)this + 14);
    if ( (v11 & 1) != 0 )
    {
      v13 = *((_DWORD *)this + 11);
      LODWORD(v14) = v13 << 16;
      HIDWORD(v14) = HIWORD(v13);
      v12 = v14 + *((unsigned __int16 *)this + 20);
    }
    else
    {
      v12 = 0;
    }
    if ( (v11 & 2) != 0 )
    {
      v15 = *((_DWORD *)this + 9);
      LODWORD(v16) = v15 << 16;
      HIDWORD(v16) = HIWORD(v15);
      v12 += v16 + *((unsigned __int16 *)this + 16);
    }
    if ( (v11 & 4) != 0 )
      v12 += *((unsigned int *)this + 12);
    if ( (v11 & 8) != 0 )
      v12 += *((unsigned int *)this + 13);
    v17 = *((_DWORD *)this + 109);
    HIDWORD(v26) = v11 << 23;
    LODWORD(v26) = 0;
    v27 = (v12 & 0xFFFFFFFFFFFFFFLL) + v26;
    if ( (v17 & 1) != 0 )
    {
      v19 = *((_DWORD *)this + 106);
      LODWORD(v20) = v19 << 16;
      HIDWORD(v20) = HIWORD(v19);
      v18 = v20 + *((unsigned __int16 *)this + 210);
    }
    else
    {
      v18 = 0;
    }
    if ( (v17 & 2) != 0 )
    {
      v21 = *((_DWORD *)this + 104);
      LODWORD(v22) = v21 << 16;
      HIDWORD(v22) = HIWORD(v21);
      v18 += v22 + *((unsigned __int16 *)this + 206);
    }
    if ( (v17 & 4) != 0 )
      v18 += *((unsigned int *)this + 107);
    if ( (v17 & 8) != 0 )
      v18 += *((unsigned int *)this + 108);
    HIDWORD(v23) = v17 << 23;
    v24 = v18 & 0xFFFFFFFFFFFFFFLL;
    result = (CConnectionManager *)v27;
    LODWORD(v23) = 0;
    if ( v27 == v24 + v23 )
    {
      ConnectionMgr = (pthread_mutex_t *)GetConnectionMgr((CConnectionManager *)v27);
      result = (CConnectionManager *)CEventQueueBase::AddEvent(ConnectionMgr + 2, 6291457, (char *)this + 28, 4);
      *((_DWORD *)this + 6) = 4;
    }
  }
  v10 = *((_DWORD *)this + 20);
  if ( v10 > 0 && *((_DWORD *)this + 6) == 4 && v10 < *((_DWORD *)this + 18) - v7 )
    result = (CConnectionManager *)CConnection::Timeout(this);
  *((_DWORD *)this + 18) = v5;
  return result;
}


// ===== 826a84 CNetworkEmulation::GetInstance(void) =====
int __fastcall CNetworkEmulation::GetInstance(CNetworkEmulation *this)
{
  return CNetworkEmulation::s_networkEmulation;
}


// ===== 826aa4 GetNetEmul(void) =====
// attributes: thunk
int __fastcall GetNetEmul(CNetworkEmulation *this)
{
  return CNetworkEmulation::GetInstance(this);
}


// ===== 826aa8 CNetworkEmulation::IsInitialized(void) =====
int __fastcall CNetworkEmulation::IsInitialized(CNetworkEmulation *this)
{
  int result; // r0

  result = CNetworkEmulation::s_networkEmulation;
  if ( CNetworkEmulation::s_networkEmulation )
    return *(unsigned __int8 *)(CNetworkEmulation::s_networkEmulation + 4);
  return result;
}


// ===== 826ad0 CNetworkEmulation::Terminate(void) =====
int __fastcall CNetworkEmulation::Terminate(CNetworkEmulation *this)
{
  int result; // r0

  if ( CNetworkEmulation::s_networkEmulation )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CNetworkEmulation::s_networkEmulation + 4))(CNetworkEmulation::s_networkEmulation);
    CNetworkEmulation::s_networkEmulation = 0;
  }
  return result;
}


// ===== 826b14 CNetworkEmulation::SetPacketDelay(tNET_EMULATION_SET,int,int) =====
int __fastcall CNetworkEmulation::SetPacketDelay(int result, int a2, int a3, int a4)
{
  int v4; // r1

  v4 = result + 36 * a2;
  *(_DWORD *)(v4 + 32) = a4;
  *(_DWORD *)(v4 + 28) = a3;
  return result;
}


// ===== 826b28 CNetworkEmulation::SetPacketLoss(tNET_EMULATION_SET,float,float) =====
int __fastcall CNetworkEmulation::SetPacketLoss(int result, int a2, int a3, int a4)
{
  int v4; // r1

  v4 = result + 36 * a2;
  *(_DWORD *)(v4 + 40) = a4;
  *(_DWORD *)(v4 + 36) = a3;
  return result;
}


// ===== 826b3c CNetworkEmulation::SetPacketDuplication(tNET_EMULATION_SET,float) =====
int __fastcall CNetworkEmulation::SetPacketDuplication(int result, int a2, int a3)
{
  *(_DWORD *)(result + 36 * a2 + 44) = a3;
  return result;
}


// ===== 826b4c CNetworkEmulation::SetPacketReordering(tNET_EMULATION_SET,float,float,int,int) =====
int __fastcall CNetworkEmulation::SetPacketReordering(int result, int a2, int a3, int a4, int a5, int a6)
{
  _DWORD *v6; // r1

  v6 = (_DWORD *)(result + 36 * a2);
  v6[12] = a3;
  v6[15] = a4;
  v6[14] = a6;
  v6[13] = a5;
  return result;
}


// ===== 826b70 CNetworkEmulation::SetPeakInfo(int,int,int) =====
int __fastcall CNetworkEmulation::SetPeakInfo(int this, int a2, int a3, int a4)
{
  *(_DWORD *)(this + 24) = a4;
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = a2;
  *(_DWORD *)(this + 20) = a3;
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 826b8c CNetworkEmulation::SetNetConditionPreset(tNET_EMULATION_SET,tNET_CONDITION_PRESET) =====
int __fastcall CNetworkEmulation::SetNetConditionPreset(int a1, int a2, int a3)
{
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3

  if ( a3 == 2 )
  {
    CNetworkEmulation::SetPacketDelay(a1, a2, 90, 15);
    CNetworkEmulation::SetPacketLoss(a1, a2, 0x40000000, 1092616192);
    CNetworkEmulation::SetPacketDuplication(a1, a2, 1065353216);
    v6 = a1;
    v7 = a2;
    v8 = 1065353216;
    v9 = 1097859072;
    return CNetworkEmulation::SetPacketReordering(v6, v7, v8, v9, 50, 25);
  }
  if ( a3 != 3 )
  {
    if ( a3 != 1 )
    {
      CNetworkEmulation::SetPacketDelay(a1, a2, 0, 0);
      CNetworkEmulation::SetPacketLoss(a1, a2, 0, 0);
      CNetworkEmulation::SetPacketDuplication(a1, a2, 0);
      return CNetworkEmulation::SetPacketReordering(a1, a2, 0, 0, 0, 0);
    }
    CNetworkEmulation::SetPacketDelay(a1, a2, 50, 10);
    CNetworkEmulation::SetPacketLoss(a1, a2, 1056964608, 1084227584);
    CNetworkEmulation::SetPacketDuplication(a1, a2, 1056964608);
    v6 = a1;
    v7 = a2;
    v8 = 1056964608;
    v9 = 1084227584;
    return CNetworkEmulation::SetPacketReordering(v6, v7, v8, v9, 50, 25);
  }
  CNetworkEmulation::SetPacketDelay(a1, a2, 300, 50);
  CNetworkEmulation::SetPacketLoss(a1, a2, 1097859072, 1103626240);
  CNetworkEmulation::SetPacketDuplication(a1, a2, 1084227584);
  return CNetworkEmulation::SetPacketReordering(a1, a2, 1084227584, 1103626240, 50, 50);
}


// ===== 826d20 CNetworkEmulation::Clear(void) =====
void *__fastcall CNetworkEmulation::Clear(CNetworkEmulation *this)
{
  void *result; // r0

  result = LC_API_MEMSET_0((char *)this + 28, 0, 0x48u);
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  return result;
}


// ===== 826d54 CNetworkEmulation::CNetworkEmulation(void) =====
void __fastcall CNetworkEmulation::CNetworkEmulation(CNetworkEmulation *this)
{
  *(_DWORD *)this = off_992B00;
  *((_DWORD *)this + 4) = 30;
  *((_DWORD *)this + 5) = 10;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 6) = 3;
  LC_API_MEMSET_0((char *)this + 28, 0, 0x48u);
  CNetworkEmulation::SetNetConditionPreset((int)this, 0, 2);
  CNetworkEmulation::SetNetConditionPreset((int)this, 1, 3);
  CNetworkEmulation::SetPeakInfo((int)this, 45, 15, 3);
  *((_BYTE *)this + 4) = 1;
}


// ===== 826df8 CNetworkEmulation::CNetworkEmulation(void) =====
void __fastcall CNetworkEmulation::CNetworkEmulation(CNetworkEmulation *this)
{
  *(_DWORD *)this = off_992B00;
  *((_DWORD *)this + 4) = 30;
  *((_DWORD *)this + 5) = 10;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 6) = 3;
  LC_API_MEMSET_0((char *)this + 28, 0, 0x48u);
  CNetworkEmulation::SetNetConditionPreset((int)this, 0, 2);
  CNetworkEmulation::SetNetConditionPreset((int)this, 1, 3);
  CNetworkEmulation::SetPeakInfo((int)this, 45, 15, 3);
  *((_BYTE *)this + 4) = 1;
}


// ===== 826e9c CNetworkEmulation::~CNetworkEmulation() =====
void __fastcall CNetworkEmulation::~CNetworkEmulation(CNetworkEmulation *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = off_992B00;
  LC_API_MEMSET_0((char *)this + 28, 0, 0x48u);
}


// ===== 826ee0 CNetworkEmulation::~CNetworkEmulation() =====
void __fastcall CNetworkEmulation::~CNetworkEmulation(CNetworkEmulation *this)
{
  *((_BYTE *)this + 4) = 0;
  *(_DWORD *)this = off_992B00;
  LC_API_MEMSET_0((char *)this + 28, 0, 0x48u);
}


// ===== 826f24 CNetworkEmulation::CalcPercentage(float,float,float) =====
float __fastcall CNetworkEmulation::CalcPercentage(CNetworkEmulation *this, float a2, float a3, float a4)
{
  return (float)((float)((float)(100.0 - a3) / 100.0) * (float)((float)((int)abs32(lrand48()) % 10000) / 100.0))
       + (float)((float)(a4 * a3) / 100.0);
}


// ===== 826fbc CNetworkEmulation::CalcDelay(int,int) =====
int __fastcall CNetworkEmulation::CalcDelay(CNetworkEmulation *this, int a2, int a3)
{
  int v3; // r4
  int v5; // r0

  v3 = a3;
  if ( a3 )
  {
    v5 = lrand48();
    if ( v5 < 0 )
      v5 = -v5;
    v3 = v5 % (2 * v3) - v3;
  }
  return v3 + a2;
}


// ===== 826fec CNetworkEmulation::GetCurrentConditionSet(void) =====
char *__fastcall CNetworkEmulation::GetCurrentConditionSet(CNetworkEmulation *this)
{
  int (__fastcall ***Online)(_DWORD); // r0
  int v3; // r0
  int v4; // r1
  unsigned int v5; // r5
  int v6; // r5
  unsigned int v7; // r0

  if ( *((_BYTE *)this + 4) )
  {
    Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
    v3 = (**Online)(Online);
    v4 = *((_DWORD *)this + 4);
    v5 = v3;
    if ( v4 )
    {
      v7 = *((_DWORD *)this + 2);
      if ( v7 + 1000 * *((_DWORD *)this + 6) < v5 )
      {
        v7 = v5 + 1000 * CNetworkEmulation::CalcDelay(this, v4, *((_DWORD *)this + 5));
        *((_DWORD *)this + 2) = v7;
      }
      v6 = v5 > v7;
      *((_BYTE *)this + 12) = v6;
    }
    else
    {
      v6 = *((unsigned __int8 *)this + 12);
    }
    if ( v6 )
      return (char *)this + 64;
    else
      return (char *)this + 28;
  }
  else
  {
    CNetworkEmulation::SetNetConditionPreset((int)this, *((unsigned __int8 *)this + 4), *((unsigned __int8 *)this + 4));
    return (char *)this + 28;
  }
}


// ===== 827084 CNetworkEmulation::GetReorderDelay(void) =====
int __fastcall CNetworkEmulation::GetReorderDelay(CNetworkEmulation *this)
{
  char *CurrentConditionSet; // r5
  int result; // r0

  CurrentConditionSet = CNetworkEmulation::GetCurrentConditionSet(this);
  CNetworkEmulation::GetReorderDelay(void)::reorderPerc = CNetworkEmulation::CalcPercentage(
                                                            this,
                                                            *((float *)CurrentConditionSet + 5),
                                                            *((float *)CurrentConditionSet + 8),
                                                            *(float *)&CNetworkEmulation::GetReorderDelay(void)::reorderPerc);
  result = *(float *)&CNetworkEmulation::GetReorderDelay(void)::reorderPerc < *((float *)CurrentConditionSet + 5);
  if ( *(float *)&CNetworkEmulation::GetReorderDelay(void)::reorderPerc < *((float *)CurrentConditionSet + 5) )
    return CNetworkEmulation::CalcDelay(
             this,
             *((_DWORD *)CurrentConditionSet + 6),
             *((_DWORD *)CurrentConditionSet + 7));
  return result;
}


// ===== 8270e0 CNetworkEmulation::IsPacketDuplicated(void) =====
bool __fastcall CNetworkEmulation::IsPacketDuplicated(CNetworkEmulation *this)
{
  char *CurrentConditionSet; // r4

  CurrentConditionSet = CNetworkEmulation::GetCurrentConditionSet(this);
  return CNetworkEmulation::CalcPercentage(this, *((float *)CurrentConditionSet + 4), 0.0, 0.0) < *((float *)CurrentConditionSet
                                                                                                  + 4);
}


// ===== 827120 CNetworkEmulation::GetPacketDelay(void) =====
int __fastcall CNetworkEmulation::GetPacketDelay(CNetworkEmulation *this)
{
  int *CurrentConditionSet; // r0

  CurrentConditionSet = (int *)CNetworkEmulation::GetCurrentConditionSet(this);
  return CNetworkEmulation::CalcDelay(this, *CurrentConditionSet, CurrentConditionSet[1]);
}


// ===== 827140 CNetworkEmulation::IsPacketLost(void) =====
bool __fastcall CNetworkEmulation::IsPacketLost(CNetworkEmulation *this)
{
  char *CurrentConditionSet; // r5

  CurrentConditionSet = CNetworkEmulation::GetCurrentConditionSet(this);
  CNetworkEmulation::IsPacketLost(void)::lossValue = CNetworkEmulation::CalcPercentage(
                                                       this,
                                                       *((float *)CurrentConditionSet + 2),
                                                       *((float *)CurrentConditionSet + 3),
                                                       *(float *)&CNetworkEmulation::IsPacketLost(void)::lossValue);
  return *(float *)&CNetworkEmulation::IsPacketLost(void)::lossValue < *((float *)CurrentConditionSet + 2);
}


// ===== 827190 CNetworkEmulation::Initialize(void) =====
int __fastcall CNetworkEmulation::Initialize(CNetworkEmulation *this)
{
  CNetworkEmulation *v2; // r5

  if ( CNetworkEmulation::s_networkEmulation )
    return 0;
  v2 = (CNetworkEmulation *)operator new(0x64u, 2);
  CNetworkEmulation::CNetworkEmulation(v2);
  CNetworkEmulation::s_networkEmulation = (int)v2;
  if ( v2 )
    return 0;
  else
    return -1;
}


// ===== 8271e8 CNetworkEmulation::~CNetworkEmulation() =====
void __fastcall CNetworkEmulation::~CNetworkEmulation(CNetworkEmulation *this)
{
  CNetworkEmulation::~CNetworkEmulation(this);
  CustomFree(this);
}


// ===== 827204 CTransportFactory::TerminateTransport(void) =====
int __fastcall CTransportFactory::TerminateTransport(CTransportFactory *this)
{
  CUdp *v1; // r0
  CBluetoothReliable *v2; // r0
  CBluetoothUnreliable *v3; // r0

  v1 = (CUdp *)CTcp::TerminateTransport(this);
  v2 = (CBluetoothReliable *)CUdp::TerminateTransport(v1);
  v3 = (CBluetoothUnreliable *)CBluetoothReliable::TerminateTransport(v2);
  CBluetoothUnreliable::TerminateTransport(v3);
  return 0;
}


// ===== 827220 CTransportFactory::InitializeTransport(tTRANSPORT_TYPE) =====
int __fastcall CTransportFactory::InitializeTransport(int a1)
{
  CUdp *v1; // r0
  int result; // r0

  v1 = (CUdp *)(a1 - 1);
  switch ( (unsigned int)v1 )
  {
    case 0u:
      CUdp::InitializeTransport(v1);
      result = 0;
      break;
    case 1u:
      CTcp::InitializeTransport(v1);
      result = 0;
      break;
    case 2u:
      CBluetoothUnreliable::InitializeTransport(v1);
      result = 0;
      break;
    case 3u:
      CBluetoothReliable::InitializeTransport(v1);
      goto LABEL_3;
    default:
LABEL_3:
      result = 0;
      break;
  }
  return result;
}


// ===== 827274 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "Default Bluetooth Session";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "Default Bluetooth Session" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "Default Bluetooth Session" )
    result = (char *)memcpy(result, "Default Bluetooth Session", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 8272c4 CTransportFactory::ConnectTransport(CNetworkId &) =====
int __fastcall CTransportFactory::ConnectTransport(CTransportFactory *this, CNetworkId *a2)
{
  unsigned int v2; // r2
  int result; // r0
  CTransportManager *v5; // r0
  volatile int v6; // r7
  pthread_mutex_t *TransportMgr; // r0
  const char *v8; // r2
  char *v9; // r0
  int v10; // r0
  volatile int v11; // r10
  CTransportManager *v12; // r0
  pthread_mutex_t *v13; // r0
  const char *v14; // r2
  char *v15; // r0
  int v16; // r0
  volatile int v17; // r10
  CTransportManager *v18; // r0
  pthread_mutex_t *v19; // r0
  std::string v20; // [sp+Ch] [bp-78h] BYREF
  int v21; // [sp+24h] [bp-60h]
  char **p_M_finish; // [sp+2Ch] [bp-58h]
  char **v23; // [sp+30h] [bp-54h]
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+34h] [bp-50h] BYREF
  std::string v25; // [sp+4Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+64h] [bp-20h] BYREF
  std::string v27; // 0:r1.12,12:^0.12 BYREF
  std::string v28; // 0:r1.12,12:^0.12

  v2 = *((_DWORD *)this + 6);
  result = v2 & 2;
  if ( (v2 & 2) != 0 )
  {
    v5 = (CTransportManager *)CTcp::CreateByPort(nullptr, 0, v2);
    v6 = (volatile int)v5;
    if ( !v5 )
      return -1;
    TransportMgr = (pthread_mutex_t *)GetTransportMgr(v5);
    CTransportManager::AddTransport(TransportMgr, v6);
    result = (*(int (__fastcall **)(volatile int, CTransportFactory *))(*(_DWORD *)v6 + 8))(v6, this);
    v2 = *((_DWORD *)this + 6);
  }
  if ( (v2 & 4) == 0 )
    goto LABEL_3;
  CNetworkId::Reset(&v27._M_buffers._M_static_buf[12]);
  v25._M_finish = (char *)&v25;
  v25._M_start_of_storage._M_data = (char *)&v25;
  v15 = std::string::_M_range_initialize(&v25, "", v14);
  v16 = GetTransportMgr((CTransportManager *)v15);
  (*(void (__fastcall **)(std::priv::_String_base<char,std::allocator<char> > *, int, char *))(*(_DWORD *)v16 + 28))(
    &v26,
    v16,
    &v27._M_buffers._M_static_buf[12]);
  v28._M_buffers._M_end_of_storage = (char *)&v26;
  *(_DWORD *)&v28._M_buffers._M_static_buf[4] = 0;
  v17 = CBluetoothUnreliable::Create((CBluetoothUnreliable *)&v25, v28, v20, v21);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  if ( !v17 )
    return -1;
  v19 = (pthread_mutex_t *)GetTransportMgr(v18);
  CTransportManager::AddTransport(v19, v17);
  result = (*(int (__fastcall **)(volatile int, CTransportFactory *))(*(_DWORD *)v17 + 8))(v17, this);
  v2 = *((_DWORD *)this + 6);
LABEL_3:
  if ( (v2 & 8) != 0 )
  {
    CNetworkId::Reset(&v27._M_buffers._M_static_buf[12]);
    p_M_finish = &v20._M_finish;
    v23 = &v20._M_finish;
    v9 = std::string::_M_range_initialize((std::string *)&v20._M_finish, "", v8);
    v10 = GetTransportMgr((CTransportManager *)v9);
    (*(void (__fastcall **)(std::priv::_String_base<char,std::allocator<char> > *, int, char *))(*(_DWORD *)v10 + 28))(
      &v24,
      v10,
      &v27._M_buffers._M_static_buf[12]);
    v27._M_buffers._M_end_of_storage = (char *)&v24;
    *(_DWORD *)&v27._M_buffers._M_static_buf[4] = 0;
    v11 = CBluetoothReliable::Create((CBluetoothReliable *)&v20._M_finish, v27, v20, v21);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v20._M_finish);
    if ( v11 )
    {
      v13 = (pthread_mutex_t *)GetTransportMgr(v12);
      CTransportManager::AddTransport(v13, v11);
      return (*(int (__fastcall **)(volatile int, CTransportFactory *))(*(_DWORD *)v11 + 8))(v11, this);
    }
    return -1;
  }
  return result;
}


// ===== 8274e8 CTransport::~CTransport() =====
void __fastcall CTransport::~CTransport(CTransport *this)
{
  ;
}


// ===== 8274ec CTransport::Connect(CNetworkId &) =====
int __fastcall CTransport::Connect(CTransport *this, CNetworkId *a2)
{
  return 0;
}


// ===== 8274f4 CTransport::Disconnect(void) =====
int __fastcall CTransport::Disconnect(CTransport *this)
{
  return 0;
}


// ===== 8274fc CTransport::StartBroadcast(void) =====
void __fastcall CTransport::StartBroadcast(CTransport *this)
{
  ;
}


// ===== 827500 CTransport::StopBroadcast(void) =====
void __fastcall CTransport::StopBroadcast(CTransport *this)
{
  ;
}


// ===== 827504 CUdp::IsConnected(void) =====
int __fastcall CUdp::IsConnected(CUdp *this)
{
  return 1;
}


// ===== 82750c CUdp::CanDisconnectFrom(CNetworkId &) =====
int __fastcall CUdp::CanDisconnectFrom(CUdp *this, CNetworkId *a2)
{
  return 0;
}


// ===== 827514 CUdp::GetType(void) =====
int __fastcall CUdp::GetType(CUdp *this)
{
  return 1;
}


// ===== 82751c CUdp::TerminateTransport(void) =====
int __fastcall CUdp::TerminateTransport(CUdp *this)
{
  CUdp::s_initialized = 0;
  return 0;
}


// ===== 827544 CUdp::IsConnectedTo(CNetworkId &) =====
unsigned int __fastcall CUdp::IsConnectedTo(CUdp *this, CNetworkId *a2)
{
  return ((*((_DWORD *)this + 1) ^ 4u) >> 2) & 1;
}


// ===== 827554 CUdp::GetPeerNetworkId(void) =====
CUdp *__fastcall CUdp::GetPeerNetworkId(CUdp *this)
{
  CNetworkId::Reset(this);
  return this;
}


// ===== 827568 CUdp::GetLocalNetworkId(void) =====
CUdp *__fastcall CUdp::GetLocalNetworkId(CUdp *this, int a2)
{
  CSocket *v2; // r5
  int LocalAddress; // r6
  int v5; // r3

  v2 = (CSocket *)(a2 + 8);
  LocalAddress = CSocket::GetLocalAddress((CSocket *)(a2 + 8));
  LOWORD(v2) = CSocket::GetLocalPort(v2);
  CNetworkId::Reset(this);
  v5 = *((_DWORD *)this + 6);
  *((_WORD *)this + 4) = (_WORD)v2;
  *((_DWORD *)this + 3) = LocalAddress;
  *((_DWORD *)this + 6) = v5 | 1;
  return this;
}


// ===== 8275b0 CUdp::Receive(void) =====
int __fastcall CUdp::Receive(CUdp *this)
{
  char *v2; // r3
  size_t v4; // [sp+0h] [bp-105Ch]
  _DWORD v5[2]; // [sp+30h] [bp-102Ch] BYREF
  unsigned __int16 v6; // [sp+38h] [bp-1024h]
  __u32 s_addr; // [sp+3Ch] [bp-1020h]
  int v8; // [sp+48h] [bp-1014h]
  in_addr v9; // [sp+4Ch] [bp-1010h] BYREF
  unsigned __int16 v10; // [sp+52h] [bp-100Ah] BYREF
  char v11[4]; // [sp+54h] [bp-1008h] BYREF

  if ( !*((_BYTE *)this + 16) )
    return -1;
  CNetworkId::Reset(v5);
  while ( 1 )
  {
    CNetworkId::Reset(v5);
    v2 = (char *)CSocket::ReceiveFrom((CUdp *)((char *)this + 8), &v9, &v10, v11, 0x1000u);
    if ( (int)v2 <= 0 )
      break;
    v8 |= 1u;
    s_addr = v9.s_addr;
    v6 = v10;
    CTransportManager::ReceiverCallback(this, (CTransport *)v5, (CNetworkId *)v11, v2, v4);
  }
  return (int)v2;
}


// ===== 82770c CUdp::Send(CNetworkId &,void *,int) =====
int __fastcall CUdp::Send(CUdp *this, CNetworkId *a2, void *a3, size_t a4)
{
  unsigned __int16 v6; // r2
  in_addr v7; // [sp+Ch] [bp-4h] BYREF

  if ( !*((_BYTE *)this + 16) || (*((_DWORD *)a2 + 6) & 1) == 0 )
    return -1;
  v6 = *((_WORD *)a2 + 4);
  v7.s_addr = *((_DWORD *)a2 + 3);
  return CSocket::SendTo((CUdp *)((char *)this + 8), &v7, v6, a3, a4);
}


// ===== 827764 CUdp::CloseSocket(void) =====
int __fastcall CUdp::CloseSocket(CUdp *this)
{
  if ( *((_BYTE *)this + 16) )
    return CSocket::Close((CUdp *)((char *)this + 8));
  else
    return *((unsigned __int8 *)this + 16);
}


// ===== 827780 CUdp::OpenSocket(ushort,bool) =====
int __fastcall CUdp::OpenSocket(CUdp *this, unsigned __int16 a2, int a3)
{
  CSocket *v3; // r4
  unsigned int v4; // r2
  int result; // r0
  struct in_addr v6; // r0

  if ( *((_BYTE *)this + 16) )
  {
    v3 = (CUdp *)((char *)this + 8);
LABEL_7:
    v6.s_addr = CSocket::GetLocalAddress(v3);
    inet_ntoa(v6);
    CSocket::GetLocalPort(v3);
    return 0;
  }
  v3 = (CUdp *)((char *)this + 8);
  if ( a3 )
    v4 = 3;
  else
    v4 = 2;
  result = CSocket::OpenUDP((CUdp *)((char *)this + 8), a2, v4);
  if ( result >= 0 )
    goto LABEL_7;
  return result;
}


// ===== 8277d0 CTransport::~CTransport() =====
void __fastcall CTransport::~CTransport(CTransport *this)
{
  *(_DWORD *)this = off_992B10;
  CustomFree(this);
}


// ===== 827804 CUdp::~CUdp() =====
void __fastcall CUdp::~CUdp(CUdp *this)
{
  CSocket *v1; // r4

  *(_DWORD *)this = off_992B50;
  v1 = (CUdp *)((char *)this + 8);
  CUdp::CloseSocket(this);
  CSocket::~CSocket(v1);
}


// ===== 827844 CUdp::~CUdp() =====
void __fastcall CUdp::~CUdp(CUdp *this)
{
  CUdp::~CUdp(this);
  CustomFree(this);
}


// ===== 827860 CUdp::~CUdp() =====
void __fastcall CUdp::~CUdp(CUdp *this)
{
  CSocket *v1; // r4

  *(_DWORD *)this = off_992B50;
  v1 = (CUdp *)((char *)this + 8);
  CUdp::CloseSocket(this);
  CSocket::~CSocket(v1);
}


// ===== 8278a0 CUdp::CreateByPort(ushort,uint) =====
_DWORD *__fastcall CUdp::CreateByPort(CUdp *this, unsigned int a2, unsigned int a3)
{
  unsigned __int16 v4; // r7
  _DWORD *v5; // r4

  v4 = (unsigned __int16)this;
  v5 = (_DWORD *)operator new(0x1Cu, 2);
  v5[1] = a2;
  *v5 = off_992B50;
  CSocket::CSocket((CSocket *)(v5 + 2));
  CUdp::OpenSocket((CUdp *)v5, v4, (a2 >> 1) & 1);
  return v5;
}


// ===== 8278fc CUdp::InitializeTransport(void) =====
int __fastcall CUdp::InitializeTransport(CUdp *this, int a2, unsigned int a3)
{
  CUdp *v3; // r6
  CTransportManager *v4; // r7
  pthread_mutex_t *TransportMgr; // r0
  unsigned int v6; // r2
  CTransportManager *v7; // r6
  pthread_mutex_t *v8; // r0

  v3 = (CUdp *)(unsigned __int8)CUdp::s_initialized;
  if ( !CUdp::s_initialized )
  {
    v4 = (CTransportManager *)CUdp::CreateByPort((CUdp *)&elf_hash_bucket[1639], 4u, a3);
    TransportMgr = (pthread_mutex_t *)GetTransportMgr(v4);
    CTransportManager::AddTransport(TransportMgr, (volatile int)v4);
    v7 = (CTransportManager *)CUdp::CreateByPort(v3, 3u, v6);
    v8 = (pthread_mutex_t *)GetTransportMgr(v7);
    CTransportManager::AddTransport(v8, (volatile int)v7);
  }
  CUdp::s_initialized = 1;
  return 0;
}


// ===== 827970 TransToIp(char *&) =====
char *__fastcall TransToIp(const char **a1)
{
  char *result; // r0
  char *v3; // r5
  char *v4; // r0
  char *v5; // r4
  char *v6; // r0
  struct in_addr in; // [sp+4h] [bp-8h] BYREF

  result = (char *)gethostbyname(*a1);
  v3 = result;
  if ( result )
  {
    v4 = (char *)CustomAlloc(0x80u);
    *a1 = v4;
    XP_API_MEMSET(v4, 0, 0x80u);
    memcpy(&in, **((const void ***)v3 + 4), sizeof(in));
    v5 = (char *)*a1;
    v6 = inet_ntoa(in);
    return XP_API_STRCPY(v5, v6);
  }
  return result;
}


// ===== 8279d8 ParseDedicatedServerInfo(_tDedicatedServerInfo &,DataPacket *) =====
char *__fastcall ParseDedicatedServerInfo(int a1, int a2)
{
  char *result; // r0
  char *cp; // [sp+4h] [bp-10h] BYREF
  __int16 v6; // [sp+Ah] [bp-Ah] BYREF
  __int16 v7; // [sp+Ch] [bp-8h] BYREF
  __int16 v8; // [sp+Eh] [bp-6h] BYREF

  cp = nullptr;
  v8 = 0;
  (*(void (__fastcall **)(int, char **, __int16 *))(*(_DWORD *)a2 + 64))(a2, &cp, &v8);
  TransToIp((const char **)&cp);
  result = cp;
  if ( cp )
  {
    *(_DWORD *)(a1 + 24) = inet_addr(cp);
    v6 = 0;
    v7 = 0;
    (*(void (__fastcall **)(int, __int16 *))(*(_DWORD *)a2 + 36))(a2, &v7);
    (*(void (__fastcall **)(int, __int16 *))(*(_DWORD *)a2 + 36))(a2, &v6);
    *(_WORD *)(a1 + 28) = v7;
    *(_WORD *)(a1 + 30) = v6;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 20))(a2, a1 + 44);
    inet_ntoa(*(struct in_addr *)(a1 + 24));
    inet_ntoa(*(struct in_addr *)(a1 + 24));
    return (_BYTE *)(&dword_0 + 1);
  }
  return result;
}


// ===== 827a9c GetDedicatedServer(void) =====
_DWORD *GetDedicatedServer()
{
  _DWORD *result; // r0

  result = (_DWORD *)s_DedicatedServerInfo;
  if ( !s_DedicatedServerInfo )
  {
    result = (_DWORD *)operator new(0x30u, 2);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
    result[8] = 0;
    result[9] = 0;
    result[10] = 0;
    result[11] = 0;
    s_DedicatedServerInfo = (int)result;
  }
  return result;
}


// ===== 827b18 CSocketAbstract::~CSocketAbstract() =====
void __fastcall CSocketAbstract::~CSocketAbstract(CSocketAbstract *this)
{
  ;
}


// ===== 827b1c CSocketAbstract::Assign(int,uint) =====
int __fastcall CSocketAbstract::Assign(CSocketAbstract *this, int a2, unsigned int a3)
{
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 1;
  *((_BYTE *)this + 10) = (*(int (__fastcall **)(CSocketAbstract *))(*(_DWORD *)this + 20))(this);
  return (**(int (__fastcall ***)(CSocketAbstract *, unsigned int))this)(this, a3);
}

