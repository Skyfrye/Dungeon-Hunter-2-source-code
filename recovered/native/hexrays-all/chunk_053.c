// ===== 801b80 NetStructMemberType<CNetworkId>::~NetStructMemberType() =====
void NetStructMemberType<CNetworkId>::~NetStructMemberType()
{
  ;
}


// ===== 801b84 NetStructMemberType<CNetworkId>::GetValue(void) =====
int __fastcall NetStructMemberType<CNetworkId>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 801b8c NetStructMemberType<CNetworkId>::TestValue(CNetworkId const&) =====
int NetStructMemberType<CNetworkId>::TestValue()
{
  return 1;
}


// ===== 801b94 NetStructMemberType<CNetworkId>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<CNetworkId>::~NetStructMemberType(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 801bc8 NetStructNetworkId::~NetStructNetworkId() =====
void __fastcall NetStructNetworkId::~NetStructNetworkId(NetStructNetworkId *this)
{
  *(_DWORD *)this = &off_963648;
  CustomFree(this);
}


// ===== 801bfc NetStructMemberType<CNetworkId>::Erase(NetBitStream &) =====
int __fastcall NetStructMemberType<CNetworkId>::Erase(NetStructMember *this, NetBitStream *a2)
{
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r2
  int result; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // [sp+4h] [bp-20h] BYREF
  int v16; // [sp+8h] [bp-1Ch]
  int v17; // [sp+Ch] [bp-18h]
  int v18; // [sp+10h] [bp-14h]
  int v19; // [sp+14h] [bp-10h]
  int v20; // [sp+18h] [bp-Ch]
  int v21; // [sp+1Ch] [bp-8h]

  v4 = *((_DWORD *)this + 9);
  v5 = *((_DWORD *)this + 10);
  v6 = *((_DWORD *)this + 11);
  v15 = *((_DWORD *)this + 8);
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v7 = *((_DWORD *)this + 13);
  v8 = *((_DWORD *)this + 14);
  v19 = *((_DWORD *)this + 12);
  v20 = v7;
  v21 = v8;
  result = NetStructMember::Load(this, a2);
  if ( (int *)((char *)this + 32) != &v15 )
  {
    v10 = v16;
    v11 = v17;
    v12 = v18;
    *((_DWORD *)this + 8) = v15;
    *((_DWORD *)this + 9) = v10;
    *((_DWORD *)this + 10) = v11;
    *((_DWORD *)this + 11) = v12;
    result = v19;
    v13 = v20;
    v14 = v21;
    *((_DWORD *)this + 12) = v19;
    *((_DWORD *)this + 13) = v13;
    *((_DWORD *)this + 14) = v14;
  }
  return result;
}


// ===== 801c58 CMatchingBluetooth::SetServerBroadcast(void) =====
int __fastcall CMatchingBluetooth::SetServerBroadcast(CMatchingBluetooth *this)
{
  int TransportMgr; // r5
  int v2; // r0
  _BYTE v4[32]; // [sp+4h] [bp-20h] BYREF

  TransportMgr = GetTransportMgr();
  v2 = GetTransportMgr();
  CTransportManager::GetListenNetworkId(v4, v2, 0);
  return CTransportManager::EnableBroadcast(TransportMgr, v4);
}


// ===== 801c94 CMatchingBluetooth::LeaveRoom(void) =====
int __fastcall CMatchingBluetooth::LeaveRoom(CMatchingBluetooth *this)
{
  int v1; // r3
  CMatchingBluetooth *v2; // r4
  CConnectionManager *ConnectionMgr; // r0
  CBluetoothSocket *v4; // r0

  v1 = *((_DWORD *)this + 3470);
  v2 = this;
  if ( v1 >= 0 && v1 == *((_DWORD *)this + 3471) )
    this = (CMatchingBluetooth *)CMatchingLocal::SendServerResponse(this, 1);
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  v4 = (CBluetoothSocket *)CConnectionManager::DisconnectAll(ConnectionMgr);
  CBluetoothSocket::DisconnectFromAllPeers(v4);
  CMatchingLocal::Reset(v2);
  *((_BYTE *)v2 + 43908) = 1;
  return 0;
}


// ===== 801cf0 CNetworkId::Load(NetBitStream &) =====
int __fastcall CNetworkId::Load(CNetworkId *this, NetBitStream *a2)
{
  int U32; // r0
  int v5; // r2
  int result; // r0
  int v7; // r0
  int v8; // r3

  U32 = NetBitStream::ReadU32(a2, 0x20u);
  LOBYTE(v5) = U32;
  *((_DWORD *)this + 6) = U32;
  if ( (U32 & 1) != 0 )
  {
    NetBitStream::ReadByteArray(a2, (char *)this + 8, 8u);
    v5 = *((_DWORD *)this + 6);
  }
  if ( (v5 & 2) != 0 )
  {
    NetBitStream::ReadByteArray(a2, this, 8u);
    v5 = *((_DWORD *)this + 6);
  }
  if ( (v5 & 4) != 0 )
  {
    v7 = NetBitStream::ReadU32(a2, 0x20u);
    v8 = *((_DWORD *)this + 6);
    *((_DWORD *)this + 4) = v7;
    LOBYTE(v5) = v8;
  }
  result = v5 & 8;
  if ( (v5 & 8) != 0 )
  {
    result = NetBitStream::ReadU32(a2, 0x20u);
    *((_DWORD *)this + 5) = result;
  }
  return result;
}


// ===== 801de0 NetStructNetworkId::Read(NetBitStream &) =====
int __fastcall NetStructNetworkId::Read(NetStructNetworkId *this, NetBitStream *a2)
{
  _DWORD v5[7]; // [sp+4h] [bp-1Ch] BYREF

  CNetworkId::Reset(v5);
  CNetworkId::Load((CNetworkId *)v5, a2);
  return (*(int (__fastcall **)(NetStructNetworkId *, _DWORD *))(*(_DWORD *)this + 28))(this, v5);
}


// ===== 801e24 CNetworkId::Serialize(NetBitStream &) =====
int __fastcall CNetworkId::Serialize(CNetworkId *this, NetBitStream *a2)
{
  int v4; // r2
  int result; // r0

  NetBitStream::WriteU32(a2, *((_DWORD *)this + 6), 0x20u);
  v4 = *((_DWORD *)this + 6);
  if ( (v4 & 1) != 0 )
  {
    NetBitStream::WriteByteArray(a2, (char *)this + 8, 8u);
    v4 = *((_DWORD *)this + 6);
  }
  if ( (v4 & 2) != 0 )
  {
    NetBitStream::WriteByteArray(a2, this, 8u);
    v4 = *((_DWORD *)this + 6);
  }
  if ( (v4 & 4) != 0 )
  {
    NetBitStream::WriteU32(a2, *((_DWORD *)this + 4), 0x20u);
    v4 = *((_DWORD *)this + 6);
  }
  result = v4 & 8;
  if ( (v4 & 8) != 0 )
    return NetBitStream::WriteU32(a2, *((_DWORD *)this + 5), 0x20u);
  return result;
}


// ===== 801f14 NetStructNetworkId::Write(NetBitStream &) =====
int __fastcall NetStructNetworkId::Write(NetStructNetworkId *this, NetBitStream *a2)
{
  return CNetworkId::Serialize((NetStructNetworkId *)((char *)this + 32), a2);
}


// ===== 801f1c `global constructor keyed to'.._src_generic_MatchingBluetooth.cpp =====
int `global constructor keyed to'.._src_generic_MatchingBluetooth.cpp()
{
  dword_A2F0EC = 0;
  CMatchingBluetooth::s_connectRetries = 0;
  dword_A2F0F8 = 0;
  dword_A2F0F0 = (int)&CMatchingBluetooth::s_connectRetries;
  dword_A2F0F4 = (int)&CMatchingBluetooth::s_connectRetries;
  _aeabi_atexit(
    (int)&CMatchingBluetooth::s_connectRetries,
    (int)std::map<unsigned int,unsigned int>::~map,
    (int)&_dso_handle);
  dword_A2F110 = 0;
  dword_A2F104 = 0;
  CMatchingBluetooth::s_peerNames = 0;
  dword_A2F108 = (int)&CMatchingBluetooth::s_peerNames;
  dword_A2F10C = (int)&CMatchingBluetooth::s_peerNames;
  return _aeabi_atexit(
           (int)&CMatchingBluetooth::s_peerNames,
           (int)std::map<unsigned int,std::string>::~map,
           (int)&_dso_handle);
}


// ===== 801fb0 CMatchingLocal::SendInvitation(char const*,char const*,bool) =====
int __fastcall CMatchingLocal::SendInvitation(CMatchingLocal *this, const char *a2, const char *a3, bool a4)
{
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388629, nullptr, 0);
  return 0;
}


// ===== 801fe8 CMatchingLocal::ReceiveInvitation(void) =====
int __fastcall CMatchingLocal::ReceiveInvitation(CMatchingLocal *this)
{
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388631, nullptr, 0);
  return 0;
}


// ===== 802020 CMatchingBluetooth::Initialize(int) =====
int __fastcall CMatchingBluetooth::Initialize(CMatchingBluetooth *this, int a2)
{
  int v3; // r5

  CMatching::Initialize(this, a2);
  v3 = *((unsigned __int8 *)this + 12);
  if ( !*((_BYTE *)this + 12) )
  {
    CConnectionManager::RegisterPacketType(2, 2, (int)CMatchingLocal::sBroadcastPacketReceiverCallback);
    CConnectionManager::RegisterPacketType(3, 1, (int)CMatchingLocal::sBroadcastPacketReceiverCallback);
    CConnectionManager::RegisterPacketType(4, 1, (int)CMatchingLocal::sPacketReceiverCallback);
    CMatchingLocal::Reset(this);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388609, (void *)v3, v3);
  }
  return 0;
}


// ===== 8020b8 NetStructMemberType<CNetworkId>::SetValue(CNetworkId const&) =====
int __fastcall NetStructMemberType<CNetworkId>::SetValue(NetStructMember *this, unsigned __int16 *a2)
{
  int v2; // r4
  __int64 v4; // r8
  unsigned int v5; // r0
  __int64 v6; // r2
  unsigned int v7; // r0
  __int64 v8; // r2
  int v9; // r2
  __int64 v10; // r10
  __int64 v11; // r6
  __int64 v12; // r4
  unsigned int v13; // r0
  __int64 v14; // r8
  unsigned int v15; // r10
  __int64 v16; // r8
  int result; // r0
  __int64 v18; // r8
  _DWORD *v19; // r5
  int v20; // r0
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2

  v2 = *((_DWORD *)a2 + 6);
  if ( (v2 & 1) != 0 )
  {
    v5 = *((_DWORD *)a2 + 3);
    LODWORD(v6) = v5 << 16;
    HIDWORD(v6) = HIWORD(v5);
    v4 = v6 + a2[4];
  }
  else
  {
    v4 = 0;
  }
  if ( (v2 & 2) != 0 )
  {
    v7 = *((_DWORD *)a2 + 1);
    LODWORD(v8) = v7 << 16;
    HIDWORD(v8) = HIWORD(v7);
    v4 += v8 + *a2;
  }
  if ( (v2 & 4) != 0 )
    v4 += *((unsigned int *)a2 + 4);
  if ( (v2 & 8) != 0 )
    v4 += *((unsigned int *)a2 + 5);
  v9 = *((_DWORD *)this + 14);
  HIDWORD(v10) = v2 << 23;
  LODWORD(v10) = 0;
  v11 = (v4 & 0xFFFFFFFFFFFFFFLL) + v10;
  if ( (v9 & 1) != 0 )
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
  if ( (v9 & 2) != 0 )
  {
    v15 = *((_DWORD *)this + 9);
    LODWORD(v16) = v15 << 16;
    HIDWORD(v16) = HIWORD(v15);
    v12 += v16 + *((unsigned __int16 *)this + 16);
  }
  if ( (v9 & 4) != 0 )
    v12 += *((unsigned int *)this + 12);
  result = *((_DWORD *)this + 14) & 8;
  if ( (v9 & 8) != 0 )
  {
    result = *((_DWORD *)this + 13);
    v12 += (unsigned int)result;
  }
  HIDWORD(v18) = v9 << 23;
  LODWORD(v18) = 0;
  if ( v11 != __PAIR64__(((v12 & 0xFFFFFFFFFFFFFFuLL) + v18) >> 32, v12) )
  {
    if ( a2 != (unsigned __int16 *)((char *)this + 32) )
    {
      v19 = a2;
      v20 = *(_DWORD *)a2;
      v21 = *((_DWORD *)a2 + 1);
      v22 = v19[2];
      v23 = v19[3];
      v19 += 4;
      *((_DWORD *)this + 8) = v20;
      *((_DWORD *)this + 9) = v21;
      *((_DWORD *)this + 10) = v22;
      *((_DWORD *)this + 11) = v23;
      v24 = v19[1];
      v25 = v19[2];
      *((_DWORD *)this + 12) = *v19;
      *((_DWORD *)this + 13) = v24;
      *((_DWORD *)this + 14) = v25;
    }
    return NetStructMember::SetChanged(this);
  }
  return result;
}


// ===== 8022c8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,bool>,std::priv::_Select1st<std::pair<uint const,bool>>,std::priv::_MapTraitsT<std::pair<uint const,bool>>,std::allocator<std::pair<uint const,bool>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,bool>,std::priv::_Select1st<std::pair<unsigned int const,bool>>,std::priv::_MapTraitsT<std::pair<unsigned int const,bool>>,std::allocator<std::pair<unsigned int const,bool>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,bool>,std::priv::_Select1st<std::pair<unsigned int const,bool>>,std::priv::_MapTraitsT<std::pair<unsigned int const,bool>>,std::allocator<std::pair<unsigned int const,bool>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 802300 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 802338 std::map<uint,uint,std::less<uint>,std::allocator<std::pair<uint const,uint>>>::~map() =====
int __fastcall std::map<unsigned int,unsigned int>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 80236c CMatchingBluetooth::Terminate(void) =====
int __fastcall CMatchingBluetooth::Terminate(CMatchingBluetooth *this)
{
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueue);
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueueInternal);
  if ( dword_A2F0F8 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
      (int)&CMatchingBluetooth::s_connectRetries,
      (_DWORD *)dword_A2F0EC);
    dword_A2F0F8 = 0;
    dword_A2F0EC = 0;
    dword_A2F0F0 = (int)&CMatchingBluetooth::s_connectRetries;
    dword_A2F0F4 = (int)&CMatchingBluetooth::s_connectRetries;
  }
  CConnectionManager::UnregisterPacketType(2);
  CConnectionManager::UnregisterPacketType(3);
  CConnectionManager::UnregisterPacketType(4);
  CMatchingLocal::Terminate(this);
  return 0;
}


// ===== 8023fc std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,bool>,std::priv::_Select1st<std::pair<uint const,bool>>,std::priv::_MapTraitsT<std::pair<uint const,bool>>,std::allocator<std::pair<uint const,bool>>>::erase(std::priv::_Rb_tree_iterator<std::pair<uint const,bool>,std::priv::_MapTraitsT<std::pair<uint const,bool>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,bool>,std::priv::_Select1st<std::pair<unsigned int const,bool>>,std::priv::_MapTraitsT<std::pair<unsigned int const,bool>>,std::allocator<std::pair<unsigned int const,bool>>>::erase(
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


// ===== 802438 std::map<uint,std::string,std::less<uint>,std::allocator<std::pair<uint const,std::string>>>::~map() =====
int __fastcall std::map<unsigned int,std::string>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 80246c CMatchingBluetooth::~CMatchingBluetooth() =====
void __fastcall CMatchingBluetooth::~CMatchingBluetooth(CMatchingBluetooth *this)
{
  int v1; // r1
  char *v3; // r6
  char *v4; // r7

  v1 = *((_DWORD *)this + 10988);
  *(_DWORD *)this = &off_992068;
  v3 = (char *)this + 43776;
  if ( v1 )
  {
    v4 = (char *)this + 43936;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,bool>,std::priv::_Select1st<std::pair<unsigned int const,bool>>,std::priv::_MapTraitsT<std::pair<unsigned int const,bool>>,std::allocator<std::pair<unsigned int const,bool>>>::_M_erase(
      (int)this + 43936,
      *((_DWORD **)this + 10985));
    *((_DWORD *)this + 10987) = v4;
    *((_DWORD *)this + 10988) = 0;
    *((_DWORD *)this + 10986) = v4;
    *((_DWORD *)this + 10985) = 0;
  }
  std::string::~string((std::string *)(v3 + 136));
  CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo((CMatchingBluetooth *)((char *)this + 43496));
  CMatchingLocal::~CMatchingLocal(this);
}


// ===== 802500 CMatchingBluetooth::~CMatchingBluetooth() =====
void __fastcall CMatchingBluetooth::~CMatchingBluetooth(CMatchingBluetooth *this)
{
  CMatchingBluetooth::~CMatchingBluetooth(this);
  CustomFree(this);
}


// ===== 80251c std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v2 + 96));
      std::string::~string((std::string *)(v2 + 60));
      CustomFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 802560 tMatchingPeer::tMatchingPeer(tMatchingPeer const&) =====
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


// ===== 8025c4 tMatchingPeer::tMatchingPeer(void) =====
void __fastcall tMatchingPeer::tMatchingPeer(tMatchingPeer *this)
{
  CNetworkId::Reset((_DWORD *)this + 1);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 9, 0x10u);
  **((_BYTE **)this + 13) = 0;
  CRoomAttributes::CRoomAttributes((tMatchingPeer *)((char *)this + 72));
}


// ===== 802608 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,uint>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 802628 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,uint> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r8
  int v10; // r2
  _DWORD *v12; // r0
  int v13; // r2
  int v14; // r2

  if ( (char *)a2 == &CMatchingBluetooth::s_connectRetries )
  {
    v9 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
    v9[4] = *a3;
    v14 = a3[1];
    v9[3] = 0;
    v9[2] = 0;
    v9[5] = v14;
    *(_DWORD *)(a2 + 8) = v9;
    *(_DWORD *)(a2 + 4) = v9;
    *(_DWORD *)(a2 + 12) = v9;
  }
  else if ( !a5 && (a4 || *a3 < *(_DWORD *)(a2 + 16)) )
  {
    v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
    v9 = v12;
    v12[4] = *a3;
    v13 = a3[1];
    v12[3] = 0;
    v12[2] = 0;
    v12[5] = v13;
    *(_DWORD *)(a2 + 8) = v12;
    if ( a2 == dword_A2F0F0 )
      dword_A2F0F0 = (int)v12;
  }
  else
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
    v9 = v8;
    v8[4] = *a3;
    v10 = a3[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v10;
    *(_DWORD *)(a2 + 12) = v8;
    if ( a2 == dword_A2F0F4 )
      dword_A2F0F4 = (int)v8;
  }
  v9[1] = a2;
  std::priv::_Rb_global<bool>::_Rebalance((int)v9, &dword_A2F0EC);
  ++dword_A2F0F8;
  *a1 = v9;
  return a1;
}


// ===== 802760 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::insert_unique(std::pair<uint const,uint> const&) [clone] =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
        int a1,
        unsigned int *a2)
{
  char *v4; // r1
  unsigned int v5; // r7
  unsigned int v6; // r5
  int v7; // r6
  char *v8; // r0
  char *v9; // r3
  _DWORD *v11; // r3
  int v12; // r3
  _DWORD *v13; // r0
  int v14; // r3
  int v15; // [sp+8h] [bp-Ch] BYREF
  int v16; // [sp+Ch] [bp-8h] BYREF

  v4 = (char *)dword_A2F0EC;
  if ( dword_A2F0EC )
  {
    v5 = *a2;
    while ( 1 )
    {
      v6 = *((_DWORD *)v4 + 4);
      v7 = 1;
      if ( v6 <= v5 )
      {
        v8 = *((char **)v4 + 3);
        v7 = 0;
      }
      else
      {
        v8 = *((char **)v4 + 2);
      }
      if ( !v8 )
        break;
      v4 = v8;
    }
    if ( !v7 )
    {
      v9 = v4;
      goto LABEL_12;
    }
  }
  else
  {
    v4 = &CMatchingBluetooth::s_connectRetries;
  }
  if ( (char *)dword_A2F0F0 == v4 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
      &v15,
      (int)v4,
      a2,
      (int)v4,
      0);
    v14 = v15;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v14;
    return a1;
  }
  if ( *v4 || v4 != *(char **)(*((_DWORD *)v4 + 1) + 4) )
  {
    v11 = *((_DWORD **)v4 + 2);
    if ( v11 )
    {
      while ( v11[3] )
        v11 = (_DWORD *)v11[3];
    }
    else
    {
      v11 = *((_DWORD **)v4 + 1);
      if ( v4 == (char *)v11[2] )
      {
        do
        {
          v13 = v11;
          v11 = (_DWORD *)v11[1];
        }
        while ( (_DWORD *)v11[2] == v13 );
      }
    }
    if ( *a2 <= v11[4] )
    {
      *(_DWORD *)a1 = v11;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
      &v16,
      (int)v4,
      a2,
      0,
      0);
    v12 = v16;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v12;
    return a1;
  }
  v9 = *((char **)v4 + 3);
  v5 = *a2;
  v6 = *((_DWORD *)v9 + 4);
LABEL_12:
  if ( v5 > v6 )
    goto LABEL_25;
  *(_DWORD *)a1 = v9;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 8028e0 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::_M_create_node(std::pair<ulong long const,tMatchingPeer> const&) =====
_QWORD *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_create_node(
        int a1,
        _QWORD *a2)
{
  _QWORD *v3; // r4

  v3 = CustomAlloc(0x3F8u);
  v3[2] = *a2;
  tMatchingPeer::tMatchingPeer((int)(v3 + 3), (int)(a2 + 1));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 80291c std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<ulong long const,tMatchingPeer> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
    node = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *(_QWORD *)(a3 + 16) <= *a4 )
  {
    v9 = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_create_node(
           (int)a2,
           a4);
    *(_DWORD *)(a3 + 12) = v9;
    node = v9;
    if ( a3 == a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_create_node(
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


// ===== 802a08 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::insert_unique(std::pair<ulong long const,tMatchingPeer> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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


// ===== 802bc8 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<ulong long const,tMatchingPeer>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>>,std::pair<ulong long const,tMatchingPeer> const&) =====
int *__fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
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
              std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
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
                  std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
                    a1,
                    v5,
                    v4,
                    a4,
                    0,
                    v4);
                  return a1;
                }
LABEL_48:
                std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
        (int)&v24,
        a2,
        a4);
      *a1 = v24;
      return a1;
    }
LABEL_50:
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_insert(
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
  std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
    (int)&v25,
    v5,
    a4);
  *a1 = v25;
  return a1;
}


// ===== 802f98 std::map<ulong long,tMatchingPeer,std::less<ulong long>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::operator[]<int>(int const&) =====
int __fastcall std::map<unsigned long long,tMatchingPeer>::operator[]<int>(_DWORD *a1, int *a2)
{
  int v2; // r4
  _DWORD *v4; // r2
  unsigned __int64 v5; // r8
  int v6; // r3
  int v7; // r0
  int v9; // r4
  int v10; // [sp+0h] [bp-7DCh] BYREF
  int v11; // [sp+4h] [bp-7D8h] BYREF
  unsigned __int64 v12; // [sp+8h] [bp-7D4h] BYREF
  int v13; // [sp+10h] [bp-7CCh] BYREF
  std::string v14; // [sp+34h] [bp-7A8h] BYREF
  int v15; // [sp+58h] [bp-784h] BYREF
  _BYTE v16[36]; // [sp+3F0h] [bp-3ECh] BYREF
  std::string v17; // [sp+414h] [bp-3C8h] BYREF
  int v18; // [sp+438h] [bp-3A4h] BYREF

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
      v4 = (_DWORD *)v2;
      v2 = v6;
    }
  }
  v2 = (int)a1;
  v5 = *a2;
LABEL_7:
  if ( a1 == (_DWORD *)v2 || (v7 = v2, *(_QWORD *)(v2 + 16) > v5) )
  {
    LC_API_MEMSET_0(v16, 0, 0x3E0u);
    tMatchingPeer::tMatchingPeer((tMatchingPeer *)v16);
    v12 = v5;
    tMatchingPeer::tMatchingPeer((int)&v13, (int)v16);
    v10 = v2;
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
      &v11,
      a1,
      &v10,
      (unsigned int *)&v12);
    v9 = v11;
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v15);
    std::string::~string(&v14);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v18);
    std::string::~string(&v17);
    v7 = v9;
  }
  return v7 + 24;
}


// ===== 803108 std::map<ulong long,tMatchingPeer,std::less<ulong long>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::operator[]<ulong long>(ulong long const&) =====
int __fastcall std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(
        _DWORD *a1,
        unsigned __int64 *a2)
{
  int v2; // r4
  unsigned __int64 v5; // r0
  _DWORD *v6; // r2
  int v7; // r3
  int v8; // r0
  int v10; // r4
  int v11; // [sp+8h] [bp-7DCh] BYREF
  int v12; // [sp+Ch] [bp-7D8h] BYREF
  unsigned __int64 v13; // [sp+10h] [bp-7D4h] BYREF
  int v14; // [sp+18h] [bp-7CCh] BYREF
  std::string v15; // [sp+3Ch] [bp-7A8h] BYREF
  int v16; // [sp+60h] [bp-784h] BYREF
  _BYTE v17[36]; // [sp+3F8h] [bp-3ECh] BYREF
  std::string v18; // [sp+41Ch] [bp-3C8h] BYREF
  int v19; // [sp+440h] [bp-3A4h] BYREF

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
      v6 = (_DWORD *)v2;
      v2 = v7;
    }
  }
  v2 = (int)a1;
LABEL_8:
  if ( a1 == (_DWORD *)v2 || (v8 = v2, *(_QWORD *)(v2 + 16) > *a2) )
  {
    LC_API_MEMSET_0(v17, 0, 0x3E0u);
    tMatchingPeer::tMatchingPeer((tMatchingPeer *)v17);
    v13 = *a2;
    tMatchingPeer::tMatchingPeer((int)&v14, (int)v17);
    v11 = v2;
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::insert_unique(
      &v12,
      a1,
      &v11,
      (unsigned int *)&v13);
    v10 = v12;
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v16);
    std::string::~string(&v15);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v19);
    std::string::~string(&v18);
    v8 = v10;
  }
  return v8 + 24;
}


// ===== 803274 CMatchingBluetooth::JoinRoomInternal(ulong long) =====
int __fastcall CMatchingBluetooth::JoinRoomInternal(pthread_mutex_t *this, unsigned __int64 a2)
{
  char *v3; // r7
  pthread_mutex_t *v4; // r5
  _DWORD *v6; // r2
  _DWORD *v7; // r2
  _DWORD *v8; // r7
  _DWORD *v9; // r0
  _DWORD *v10; // r1
  int v11; // r8
  CConnectionManager *v12; // r0
  CConnectionManager *ConnectionMgr; // r8
  int *v14; // r0
  unsigned __int64 v16; // [sp+0h] [bp-30h] BYREF
  _DWORD v17[6]; // [sp+8h] [bp-28h] BYREF
  int v18; // [sp+20h] [bp-10h]
  _DWORD *v19; // [sp+24h] [bp-Ch] BYREF
  _DWORD *v20; // [sp+28h] [bp-8h]

  v3 = (char *)(this + 4480);
  v4 = this + 4495;
  v16 = a2;
  CNetMutex::Lock(this + 4495);
  (*(void (__fastcall **)(_DWORD **, pthread_mutex_t *))(this->value + 144))(&v19, this);
  v6 = v19;
  if ( v19 == v20 )
    goto LABEL_20;
  if ( *v19 == (_DWORD)v16 )
    goto LABEL_5;
  do
  {
    do
    {
      v6 += 242;
      if ( v6 == v20 )
        goto LABEL_20;
    }
    while ( *v6 != (_DWORD)v16 );
LABEL_5:
    ;
  }
  while ( v6[1] != HIDWORD(v16) );
  if ( !v6 )
  {
LABEL_20:
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388620, nullptr, 0);
    goto LABEL_17;
  }
  v7 = *((_DWORD **)this + 4498);
  v8 = v3 + 68;
  if ( !v7 )
    goto LABEL_19;
  v9 = v8;
  while ( *((_QWORD *)v7 + 2) >= v16 )
  {
    v10 = (_DWORD *)v7[2];
    v9 = v7;
    if ( !v10 )
      goto LABEL_13;
LABEL_10:
    v7 = v10;
  }
  v10 = (_DWORD *)v7[3];
  v7 = v9;
  if ( v10 )
    goto LABEL_10;
LABEL_13:
  if ( v8 == v7 )
    goto LABEL_20;
  if ( *((_QWORD *)v7 + 2) > v16 )
LABEL_19:
    v7 = v8;
  if ( v8 == v7 )
    goto LABEL_20;
  *(this + 3471) = *(pthread_mutex_t *)std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(
                                         v8,
                                         &v16);
  v11 = v16;
  v12 = (CConnectionManager *)CNetworkId::Reset(v17);
  v17[4] = v11;
  v18 |= 4u;
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v12);
  v14 = (int *)std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v8, &v16);
  CConnectionManager::Connect(ConnectionMgr, *v14, (CNetworkId *)v17);
  *((_BYTE *)this + 13872) = 0;
LABEL_17:
  std::vector<tRoomInfo>::~vector((int *)&v19);
  CNetMutex::Unlock(v4);
  return 0;
}


// ===== 803448 CMatchingBluetooth::AddBluetoothServer(int,int,tMatchingPeer) =====
int __fastcall CMatchingBluetooth::AddBluetoothServer(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  pthread_mutex_t *v5; // r8
  unsigned __int16 *v8; // r9
  unsigned __int16 *v9; // r4
  _DWORD *v10; // r11
  _BOOL4 IsEqual; // r0
  unsigned __int16 *v12; // r2
  COnline *v13; // r0
  unsigned __int16 *v15; // r3
  int (__fastcall ***Online)(_DWORD); // r0
  int (__fastcall ***v17)(_DWORD); // r0
  int v18; // r12
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int v24; // r0
  int v25; // [sp+4h] [bp-80h]
  CRoomAttributes *v26; // [sp+8h] [bp-7Ch]
  int v27; // [sp+14h] [bp-70h] BYREF
  _BYTE v28[36]; // [sp+18h] [bp-6Ch] BYREF
  _DWORD v29[8]; // [sp+3Ch] [bp-48h] BYREF
  _DWORD v30[8]; // [sp+5Ch] [bp-28h] BYREF

  v4 = a1 + 17920;
  v5 = (pthread_mutex_t *)(a1 + 17980);
  v27 = a3;
  CNetMutex::Lock((pthread_mutex_t *)(a1 + 17980));
  v8 = *(unsigned __int16 **)(a1 + 17996);
  v9 = (unsigned __int16 *)(v4 + 68);
  v10 = (_DWORD *)(a4 + 4);
  while ( v9 != v8 )
  {
    while ( 1 )
    {
      IsEqual = CNetworkId::IsEqual(v8 + 14, (unsigned __int16 *)(a4 + 4));
      if ( IsEqual )
      {
        Online = (int (__fastcall ***)(_DWORD))GetOnline((COnline *)IsEqual);
        *((_DWORD *)v8 + 14) = (**Online)(Online);
        return CNetMutex::Unlock(v5);
      }
      v12 = *((unsigned __int16 **)v8 + 3);
      if ( !v12 )
        break;
      while ( *((_DWORD *)v12 + 2) )
        v12 = *((unsigned __int16 **)v12 + 2);
      v8 = v12;
      if ( v9 == v12 )
        goto LABEL_9;
    }
    v15 = *((unsigned __int16 **)v8 + 1);
    if ( v8 == *((unsigned __int16 **)v15 + 3) )
    {
      do
      {
        v8 = v15;
        v15 = *((unsigned __int16 **)v15 + 1);
      }
      while ( *((unsigned __int16 **)v15 + 3) == v8 );
      v12 = *((unsigned __int16 **)v8 + 3);
    }
    if ( v12 != v15 )
      v8 = v15;
  }
LABEL_9:
  CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v28, (const CRoomSearchFilter *)(a1 + 18936));
  v26 = (CRoomAttributes *)(a4 + 72);
  CRoomSearchFilter::EraseSearchAttributeInt(v28, 0);
  v13 = (COnline *)CRoomSearchFilter::TestRoomAttributes((CRoomSearchFilter *)v28, (CRoomAttributes *)(a4 + 72));
  if ( v13 )
  {
    v17 = (int (__fastcall ***)(_DWORD))GetOnline(v13);
    *(_DWORD *)(a4 + 32) = (**v17)(v17);
    v18 = std::map<unsigned long long,tMatchingPeer>::operator[]<int>(v9, &v27);
    *(_DWORD *)v18 = *(_DWORD *)a4;
    if ( v10 != (_DWORD *)(v18 + 4) )
    {
      v19 = *(_DWORD *)(a4 + 8);
      v20 = *(_DWORD *)(a4 + 12);
      v21 = *(_DWORD *)(a4 + 16);
      *(_DWORD *)(v18 + 4) = *v10;
      *(_DWORD *)(v18 + 8) = v19;
      *(_DWORD *)(v18 + 12) = v20;
      *(_DWORD *)(v18 + 16) = v21;
      v22 = *(_DWORD *)(a4 + 24);
      v23 = *(_DWORD *)(a4 + 28);
      *(_DWORD *)(v18 + 20) = *(_DWORD *)(a4 + 20);
      *(_DWORD *)(v18 + 24) = v22;
      *(_DWORD *)(v18 + 28) = v23;
    }
    *(_DWORD *)(v18 + 32) = *(_DWORD *)(a4 + 32);
    if ( v18 + 36 != a4 + 36 )
    {
      v25 = v18;
      std::string::_M_assign((std::string *const)(v18 + 36), *(const char **)(a4 + 56), *(const char **)(a4 + 52));
      v18 = v25;
    }
    *(_DWORD *)(v18 + 60) = *(_DWORD *)(a4 + 60);
    *(_DWORD *)(v18 + 64) = *(_DWORD *)(a4 + 64);
    CRoomAttributes::operator=(v18 + 72, v26);
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v24 = std::map<unsigned long long,tMatchingPeer>::operator[]<int>(v9, &v27);
    CRoomAttributes::GetAttributeBin(v24 + 72, 0, v29, 32);
    CRoomAttributes::GetAttributeBin(v26, 0, v30, 32);
    printf("namemap: %s ; namepeer: %s", (const char *)v29, (const char *)v30);
    if ( *(_BYTE *)(a1 + 13872) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
  }
  CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v28);
  return CNetMutex::Unlock(v5);
}


// ===== 803718 CMatchingBluetooth::Initialize(int,std::string) =====
int __fastcall CMatchingBluetooth::Initialize(CMatchingBluetooth *this, int a2, std::string a3)
{
  std::string v6; // [sp+4h] [bp-1Ch] BYREF

  std::string::string(&v6, (const std::string *)a3._M_buffers._M_end_of_storage);
  if ( (std::string *)((char *)this + 43912) != &v6 )
    std::string::_M_assign((std::string *const)((char *)this + 43912), v6._M_start_of_storage._M_data, v6._M_finish);
  std::string::~string(&v6);
  (*(void (__fastcall **)(CMatchingBluetooth *, int))(*(_DWORD *)this + 40))(this, a2);
  return 0;
}


// ===== 8037b4 CMatchingBluetooth::SearchRoomInternal(CRoomSearchFilter &,bool,uchar) =====
int __fastcall CMatchingBluetooth::SearchRoomInternal(
        CMatchingBluetooth *this,
        CRoomSearchFilter *a2,
        bool a3,
        unsigned __int8 a4)
{
  int TransportMgr; // r0
  int v9; // r0
  int v10; // r9
  int v11; // r0
  _BYTE v12[28]; // [sp+4h] [bp-74h] BYREF
  _BYTE v13[28]; // [sp+20h] [bp-58h] BYREF
  _BYTE v14[28]; // [sp+3Ch] [bp-3Ch] BYREF
  std::string v15; // [sp+5Ch] [bp-1Ch] BYREF

  if ( !*((_BYTE *)this + 12) )
    return -1;
  CMatchingLocal::Reset(this);
  CRoomSearchFilter::operator=((char *)this + 18936, a2);
  *((_BYTE *)this + 13872) = 1;
  if ( dword_A2F0F8 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
      (int)&CMatchingBluetooth::s_connectRetries,
      (_DWORD *)dword_A2F0EC);
    dword_A2F0F8 = 0;
    dword_A2F0EC = 0;
    dword_A2F0F0 = (int)&CMatchingBluetooth::s_connectRetries;
    dword_A2F0F4 = (int)&CMatchingBluetooth::s_connectRetries;
  }
  std::string::string(&v15, "GameLoft Device");
  if ( &v15 != (std::string *)&CBluetoothSocketAbstract::s_DisplayName )
    std::string::_M_assign(
      (std::string *const)&CBluetoothSocketAbstract::s_DisplayName,
      v15._M_start_of_storage._M_data,
      v15._M_finish);
  std::string::~string(&v15);
  TransportMgr = GetTransportMgr();
  CTransportManager::GetListenNetworkId(v14, TransportMgr, 0);
  v9 = GetTransportMgr();
  CTransportManager::GetListenNetworkId(v13, v9, 0);
  v10 = GetTransportMgr();
  v11 = GetTransportMgr();
  CTransportManager::GetListenNetworkId(v12, v11, 0);
  CTransportManager::EnableBroadcast(v10, v12);
  return CMatchingLocal::SearchRoomInternal(this, a2, a3, 0);
}


// ===== 803920 CMatchingBluetooth::ParseBluetoothDeviceName(std::string) =====
CMatchingBluetooth *__fastcall CMatchingBluetooth::ParseBluetoothDeviceName(CMatchingBluetooth *this, std::string a2)
{
  char *v3; // r5
  char *v4; // r10
  signed int v5; // r8
  bool v6; // cc
  char *v7; // r0
  char *v8; // r6
  char *v9; // r0
  int i; // r6
  size_t v11; // r11
  char *v12; // r0
  const char *v13; // r11
  char *v14; // r0
  bool v15; // cf
  int v16; // r0
  int v17; // r1
  int v18; // r6
  CMatchingBluetooth *v19; // r8
  size_t v20; // r7
  char *v21; // r0
  char *v22; // r11
  const char *v23; // r7
  char *v24; // r0
  bool v25; // cf
  void *v27; // r11
  size_t v28; // r0
  size_t v29; // r0
  size_t v30; // [sp+0h] [bp-16Ch]
  int v31; // [sp+4h] [bp-168h]
  char *v32; // [sp+8h] [bp-164h]
  char *v33; // [sp+28h] [bp-144h]
  char v34[256]; // [sp+34h] [bp-138h] BYREF
  int v35; // [sp+134h] [bp-38h] BYREF
  int v36; // [sp+138h] [bp-34h]
  int v37; // [sp+13Ch] [bp-30h]
  int v38; // [sp+140h] [bp-2Ch]
  int v39; // [sp+144h] [bp-28h]
  int v40; // [sp+148h] [bp-24h]
  int v41; // [sp+14Ch] [bp-20h]
  int v42; // [sp+150h] [bp-1Ch]
  _DWORD v43[4]; // [sp+154h] [bp-18h] BYREF

  v3 = strdup(*(const char **)(*(_DWORD *)&a2._M_buffers._M_static_buf[4] + 20));
  tMatchingPeer::tMatchingPeer(this);
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 15) = 1;
  v4 = strchr(v3, 124);
  v5 = v4 - v3;
  memset(v43, 0, sizeof(v43));
  LC_API_MEMSET_0(v34, 0, 0x100u);
  v6 = (int)v4 <= 0;
  if ( v4 )
    v6 = v5 <= 0;
  if ( !v6 && v5 <= 255 )
  {
    LC_API_STRNCPY_0(v34, v3, v5);
    v34[v5] = 0;
    v29 = LC_API_STRLEN_0(v34);
    std::string::_M_assign((std::string *const)((char *)this + 36), v34, &v34[v29]);
  }
  v7 = LC_API_STRSTR_0(v3, "|m=");
  v8 = v7;
  if ( v7 )
  {
    v9 = strchr(v7 + 1, 124);
    if ( v9 > v8 + 3 )
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v35 = 0;
      v36 = 0;
      memcpy(&v35, v8 + 3, v9 - (v8 + 3));
      *(_DWORD *)this = LC_API_ATOI_0((const char *)&v35);
    }
    v33 = (char *)this + 72;
    for ( i = 1; i != 8; ++i )
    {
      while ( 1 )
      {
        sprintf((char *)v43, "|i_%d=", i);
        v11 = LC_API_STRLEN_0((const char *)v43);
        v12 = LC_API_STRSTR_0(v3, (const char *)v43);
        v32 = v12;
        if ( v12 )
        {
          if ( v11 < LC_API_STRLEN_0(v12) )
          {
            v13 = &v32[v11];
            v14 = strchr(v13, 124);
            v15 = 1;
            if ( v13 )
              v15 = v13 >= v14;
            if ( !v15 )
              break;
          }
        }
        if ( ++i == 8 )
          goto LABEL_17;
      }
      v42 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      LC_API_STRNCPY_0((char *)&v35, v13, v14 - v13);
      v16 = LC_API_ATOI_0((const char *)&v35);
      v17 = i;
      CRoomAttributes::SetAttributeInt(v33, v17, v16);
    }
LABEL_17:
    v18 = 3;
    v19 = this;
    do
    {
      sprintf((char *)v43, "|b_%d=", v18);
      v20 = LC_API_STRLEN_0((const char *)v43);
      v21 = LC_API_STRSTR_0(v3, (const char *)v43);
      v22 = v21;
      if ( v21 && v20 < LC_API_STRLEN_0(v21) )
      {
        v23 = &v22[v20];
        v24 = strchr(v23, 124);
        v25 = 1;
        if ( v23 )
          v25 = v23 >= v24;
        if ( !v25 )
        {
          v30 = v24 - v23;
          v31 = v24 - v23 + 1;
          v27 = LC_API_MALLOC_0(v31);
          LC_API_MEMSET_0(v27, 0, v31);
          LC_API_STRNCPY_0((char *)v27, v23, v30);
          v28 = LC_API_STRLEN_0((const char *)v27);
          CRoomAttributes::SetAttributeBin(v33, v18, v27, v28 + 1);
        }
      }
      ++v18;
    }
    while ( v18 != 5 );
    return v19;
  }
  return this;
}


// ===== 803cbc CMatchingBluetooth::GenerateBluetoothDeviceName(tMatchingPeer) =====
std::string *__fastcall CMatchingBluetooth::GenerateBluetoothDeviceName(std::string *a1, int a2, int a3)
{
  int v4; // r3
  size_t v6; // r0
  int i; // r4
  int AttributeInt; // r0
  size_t v9; // r0
  int j; // r4
  int MaxBufferSize; // r0
  char *v13; // r0
  char *v14; // r7
  int v15; // r0
  size_t v16; // r0
  _BYTE v17[924]; // [sp+0h] [bp-404h] BYREF
  char v18[64]; // [sp+39Ch] [bp-68h] BYREF
  char s[32]; // [sp+3DCh] [bp-28h] BYREF
  int v20; // [sp+3FCh] [bp-8h]

  v4 = _stack_chk_guard;
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  v20 = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1, 0x10u);
  *a1->_M_finish = 0;
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)v17, (const CRoomAttributes *)(a3 + 72));
  std::string::_M_append(a1, *(char **)(a3 + 56), *(char **)(a3 + 52));
  sprintf(s, "|m=%d", *(_DWORD *)a3);
  v6 = LC_API_STRLEN_0(s);
  std::string::_M_append(a1, s, &s[v6]);
  for ( i = 1; i != 8; ++i )
  {
    while ( !CRoomAttributes::IsAttibuteActive(v17, i) )
    {
      if ( ++i == 8 )
        goto LABEL_5;
    }
    AttributeInt = CRoomAttributes::GetAttributeInt(v17, i);
    sprintf(v18, "|i_%d=%d", i, AttributeInt);
    v9 = LC_API_STRLEN_0(v18);
    std::string::_M_append(a1, v18, &v18[v9]);
  }
LABEL_5:
  for ( j = 3; j != 5; ++j )
  {
    if ( CRoomAttributes::IsAttibuteActive(v17, j) )
    {
      MaxBufferSize = CRoomAttributes::GetMaxBufferSize(v17, j);
      v13 = (char *)LC_API_MALLOC_0(MaxBufferSize + 5);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v14 = v13;
      sprintf(v13, "|b_%d=", j);
      v15 = CRoomAttributes::GetMaxBufferSize(v17, j);
      CRoomAttributes::GetAttributeBin(v17, j, v14 + 5, v15);
      v16 = LC_API_STRLEN_0(v14);
      std::string::_M_append(a1, v14, &v14[v16]);
    }
  }
  std::string::_M_append(a1, "|", "");
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v17);
  return a1;
}


// ===== 803ed0 CMatchingBluetooth::CreateJoinRoomInternal(bool,CRoomAttributes &) =====
int __fastcall CMatchingBluetooth::CreateJoinRoomInternal(CMatchingBluetooth *this, int a2, CRoomAttributes *a3)
{
  int v5; // r0
  int TransportMgr; // r0
  int v7; // r0
  int v8; // r3
  _DWORD v11[2]; // [sp+10h] [bp-8ACh] BYREF
  __int64 v12; // [sp+18h] [bp-8A4h]
  int v13; // [sp+20h] [bp-89Ch]
  int v14; // [sp+24h] [bp-898h]
  int v15; // [sp+28h] [bp-894h]
  char v16; // [sp+2Ch] [bp-890h]
  int v17; // [sp+30h] [bp-88Ch] BYREF
  _DWORD v18[2]; // [sp+38h] [bp-884h] BYREF
  __int16 v19; // [sp+40h] [bp-87Ch]
  int v20; // [sp+44h] [bp-878h]
  int v21; // [sp+50h] [bp-86Ch]
  int v22; // [sp+54h] [bp-868h]
  _BYTE v23[36]; // [sp+58h] [bp-864h] BYREF
  std::string v24; // [sp+7Ch] [bp-840h] BYREF
  int v25; // [sp+A0h] [bp-81Ch] BYREF
  _DWORD v26[9]; // [sp+438h] [bp-484h] BYREF
  std::string v27; // [sp+45Ch] [bp-460h] BYREF
  _BYTE v28[912]; // [sp+480h] [bp-43Ch] BYREF
  int (**v29)(); // [sp+818h] [bp-A4h] BYREF
  std::string v30; // [sp+838h] [bp-84h] BYREF
  std::string v31; // [sp+854h] [bp-68h] BYREF
  std::string v32; // [sp+86Ch] [bp-50h] BYREF
  std::string v33; // [sp+884h] [bp-38h] BYREF
  std::string v34; // [sp+89Ch] [bp-20h] BYREF

  if ( !*((_BYTE *)this + 12) )
    return -1;
  CMatchingLocal::Reset(this);
  *((_BYTE *)this + 13872) = 1;
  v5 = (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 172))(this);
  *((_DWORD *)this + 3471) = v5;
  *((_DWORD *)this + 3470) = v5;
  *((_BYTE *)this + 13) = 0;
  v22 = 0;
  CNetworkId::Reset(v18);
  v19 = 0;
  v21 |= 1u;
  v20 = 0;
  TransportMgr = GetTransportMgr();
  (*(void (__fastcall **)(std::string *, int, _DWORD *))(*(_DWORD *)TransportMgr + 28))(&v34, TransportMgr, v18);
  NetStructString<256u>::NetStructString((int)&v29, (int)&v34);
  (*(void (__fastcall **)(char *, std::string *))(*((_DWORD *)this + 10950) + 28))((char *)this + 43800, &v30);
  v29 = &off_963790;
  std::string::~string(&v30);
  v29 = (int (**)())&off_963648;
  std::string::~string(&v34);
  v7 = (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 96))(this);
  v12 = 0;
  v16 = 0;
  v15 = 0;
  v11[1] = 32;
  v14 = -1;
  v11[0] = &off_963618;
  v13 = -1;
  if ( v7 != v17 )
  {
    v17 = v7;
    NetStructMember::SetChanged((NetStructMember *)v11);
  }
  v8 = *((_DWORD *)this + 10964);
  v11[0] = &off_9635E8;
  (*(void (__fastcall **)(char *, int *))(v8 + 28))((char *)this + 43856, &v17);
  v11[0] = &off_963648;
  tMatchingPeer::tMatchingPeer((tMatchingPeer *)v26);
  v26[0] = *((_DWORD *)this + 3470);
  std::string::string(&v33, (const std::string *)((char *)this + 43832));
  std::string::_M_assign(&v27, v33._M_start_of_storage._M_data, v33._M_finish);
  std::string::~string(&v33);
  CRoomAttributes::operator=(v28, a3);
  tMatchingPeer::tMatchingPeer((int)v23, (int)v26);
  CMatchingBluetooth::GenerateBluetoothDeviceName(&v32, (int)this, (int)v23);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v25);
  std::string::~string(&v24);
  std::string::string(&v31, &v32);
  if ( &v31 != (std::string *)&CBluetoothSocketAbstract::s_DisplayName )
    std::string::_M_assign(
      (std::string *const)&CBluetoothSocketAbstract::s_DisplayName,
      v31._M_start_of_storage._M_data,
      v31._M_finish);
  std::string::~string(&v31);
  CMatchingBluetooth::SetServerBroadcast(this);
  (*(void (__fastcall **)(CMatchingBluetooth *, int))(*(_DWORD *)this + 68))(this, a2);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388611, nullptr, 0);
  CRoomAttributes::operator=((char *)this + 18016, a3);
  std::string::~string(&v32);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v28);
  std::string::~string(&v27);
  return 0;
}


// ===== 804234 CMatchingBluetooth::ProcessEvents(void) =====
int __fastcall CMatchingBluetooth::ProcessEvents(CMatchingBluetooth *this)
{
  int v2; // r3
  unsigned int v3; // r10
  char *v4; // r1
  int v5; // r0
  char *i; // r3
  unsigned int v7; // r2
  bool v8; // cf
  char *v9; // r2
  char *v10; // r2
  int v11; // r2
  unsigned int v12; // r3
  bool v13; // cf
  int v14; // r3
  unsigned __int8 *v15; // r10
  char *v17; // r1
  char *v18; // r6
  unsigned int v19; // r2
  unsigned int v20; // r3
  bool v21; // cf
  char *v22; // r3
  char *v23; // r12
  unsigned int v24; // r9
  int v25; // r11
  int j; // r1
  char *v27; // r3
  char *v28; // r0
  char *v29; // r1
  unsigned int v30; // r2
  bool v31; // cf
  char *v32; // r2
  COnline *v33; // r0
  int Online; // r0
  unsigned int v35; // r10
  CTransportManager *TransportMgr; // r0
  char *v37; // r1
  char *v38; // r12
  unsigned int v39; // r3
  bool v40; // cf
  char *v41; // r3
  std::string *v42; // r3
  std::string *v43; // r7
  size_t v44; // r0
  unsigned int v45; // r10
  int v46; // r7
  unsigned int v47; // r3
  int v48; // r3
  int v49; // r1
  int v50; // r1
  int v51; // r3
  int v52; // lr
  int v53; // r3
  int v54; // [sp+0h] [bp-99Ch]
  char *v55; // [sp+4h] [bp-998h]
  char *v56; // [sp+8h] [bp-994h]
  std::string *v57; // [sp+Ch] [bp-990h]
  int v58; // [sp+Ch] [bp-990h]
  std::string *v59; // [sp+10h] [bp-98Ch]
  _DWORD v60[4]; // [sp+24h] [bp-978h] BYREF
  unsigned int v61; // [sp+34h] [bp-968h]
  unsigned int v62; // [sp+38h] [bp-964h]
  int v63; // [sp+3Ch] [bp-960h]
  char *v64; // [sp+40h] [bp-95Ch] BYREF
  char *v65; // [sp+48h] [bp-954h] BYREF
  char *v66; // [sp+50h] [bp-94Ch] BYREF
  char *v67; // [sp+58h] [bp-944h] BYREF
  unsigned int v68[2]; // [sp+60h] [bp-93Ch] BYREF
  std::string *v69; // [sp+68h] [bp-934h] BYREF
  std::string *v70; // [sp+6Ch] [bp-930h] BYREF
  char *v71; // [sp+70h] [bp-92Ch] BYREF
  char *v72; // [sp+74h] [bp-928h] BYREF
  _DWORD v73[2]; // [sp+78h] [bp-924h] BYREF
  _BYTE v74[8]; // [sp+80h] [bp-91Ch] BYREF
  std::string v75; // [sp+A4h] [bp-8F8h] BYREF
  int v76; // [sp+C8h] [bp-8D4h] BYREF
  _DWORD v77[9]; // [sp+460h] [bp-53Ch] BYREF
  std::string v78; // [sp+484h] [bp-518h] BYREF
  int v79; // [sp+4A8h] [bp-4F4h] BYREF
  char v80[256]; // [sp+844h] [bp-158h] BYREF
  unsigned int v81; // [sp+944h] [bp-58h]
  unsigned int v82; // [sp+948h] [bp-54h] BYREF
  std::string v83; // [sp+94Ch] [bp-50h] BYREF
  std::string v84; // [sp+964h] [bp-38h] BYREF
  std::string v85; // [sp+97Ch] [bp-20h] BYREF
  std::string v86; // 0:kr00_24.24

  if ( *((_BYTE *)this + 43908) )
  {
    (*(void (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 96))(this);
    if ( (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 96))(this) == 1 )
    {
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388612, nullptr, 0);
      *((_BYTE *)this + 43908) = 0;
    }
  }
  if ( *((_BYTE *)this + 13872) )
  {
    v2 = *((_DWORD *)this + 3470);
    if ( v2 < 0 || v2 != *((_DWORD *)this + 3471) )
    {
      if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777217, 0) )
        goto LABEL_6;
      CEventQueueBase::GetEventData((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777217, v80, 260);
      std::string::string(&v85, v80);
      v86._M_buffers._M_end_of_storage = (char *)this;
      *(_DWORD *)&v86._M_buffers._M_static_buf[4] = &v85;
      *(_DWORD *)&v86._M_buffers._M_static_buf[8] = v53;
      *(_DWORD *)&v86._M_buffers._M_static_buf[12] = v54;
      v86._M_finish = v55;
      v86._M_start_of_storage._M_data = v56;
      CMatchingBluetooth::ParseBluetoothDeviceName((CMatchingBluetooth *)v77, v86);
      std::string::~string(&v85);
      if ( v77[0] <= 0 )
      {
LABEL_114:
        CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777217);
        CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v79);
        std::string::~string(&v78);
LABEL_6:
        if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777218, 0) )
          goto LABEL_39;
        CEventQueueBase::GetEventData((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777218, v73, 4);
        CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777218);
        v3 = v73[0];
        CNetworkId::Reset(v60);
        v63 |= 0xCu;
        v61 = v3;
        v62 = v73[0];
        CMatchingLocal::RemoveServer(this, (CNetworkId *)v60);
        v4 = &CMatchingBluetooth::s_peerNames;
        v5 = dword_A2F104;
        if ( dword_A2F104 )
        {
          for ( i = (char *)dword_A2F104; ; i = v9 )
          {
            v7 = *((_DWORD *)i + 4);
            v8 = v7 >= v73[0];
            if ( v7 >= v73[0] )
              v9 = *((char **)i + 2);
            else
              v9 = *((char **)i + 3);
            if ( !v8 )
              i = v4;
            if ( !v9 )
              break;
            v4 = i;
          }
          if ( i != &CMatchingBluetooth::s_peerNames && *((_DWORD *)i + 4) > v73[0] )
            i = &CMatchingBluetooth::s_peerNames;
        }
        else
        {
          i = &CMatchingBluetooth::s_peerNames;
        }
        v10 = &CMatchingBluetooth::s_peerNames;
        if ( i == &CMatchingBluetooth::s_peerNames )
        {
          v11 = *((_DWORD *)i + 4);
          goto LABEL_37;
        }
        if ( dword_A2F104 )
        {
          while ( 1 )
          {
            v12 = *(_DWORD *)(v5 + 16);
            v13 = v12 >= v73[0];
            if ( v12 >= v73[0] )
              v14 = *(_DWORD *)(v5 + 8);
            else
              v14 = *(_DWORD *)(v5 + 12);
            if ( !v13 )
              v5 = (int)v10;
            if ( !v14 )
              break;
            v10 = (char *)v5;
            v5 = v14;
          }
          if ( (char *)v5 == &CMatchingBluetooth::s_peerNames )
          {
            v11 = *(_DWORD *)(v5 + 16);
            goto LABEL_37;
          }
          if ( *(_DWORD *)(v5 + 16) <= v73[0] )
          {
            v15 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
                    (unsigned __int8 *)v5,
                    (unsigned __int8 **)&dword_A2F104,
                    (unsigned __int8 **)&dword_A2F108,
                    (unsigned __int8 **)&dword_A2F10C);
            std::string::~string((std::string *)(v15 + 20));
            if ( v15 )
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v15, 0x2Cu);
            v11 = --dword_A2F110;
            goto LABEL_37;
          }
        }
        v11 = dword_A2F110;
LABEL_37:
        if ( !v11 )
          CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388623, nullptr, 0);
        goto LABEL_39;
      }
      v37 = &CMatchingBluetooth::s_peerNames;
      v38 = (char *)dword_A2F104;
      if ( dword_A2F104 )
      {
        while ( 1 )
        {
          v39 = *((_DWORD *)v38 + 4);
          v40 = v39 >= v81;
          if ( v39 >= v81 )
            v41 = *((char **)v38 + 2);
          else
            v41 = *((char **)v38 + 3);
          if ( !v40 )
            v38 = v37;
          if ( !v41 )
            break;
          v37 = v38;
          v38 = v41;
        }
        if ( v38 != &CMatchingBluetooth::s_peerNames )
        {
          v42 = (std::string *)v38;
          if ( *((_DWORD *)v38 + 4) <= v81 )
            goto LABEL_113;
        }
      }
      else
      {
        v38 = &CMatchingBluetooth::s_peerNames;
      }
      v59 = (std::string *)v38;
      v84._M_finish = (char *)&v84;
      v84._M_start_of_storage._M_data = (char *)&v84;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v84, 0x10u);
      *v84._M_finish = 0;
      v82 = v81;
      std::string::string(&v83, &v84);
      v69 = v59;
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
        &v70,
        (std::string *)&CMatchingBluetooth::s_peerNames,
        &v69,
        &v82);
      v43 = v70;
      std::string::~string(&v83);
      std::string::~string(&v84);
      v42 = v43;
LABEL_113:
      v57 = v42;
      v44 = LC_API_STRLEN_0(v80);
      std::string::_M_assign((std::string *const)&v57->_M_start_of_storage, v80, &v80[v44]);
      v45 = v81;
      CNetworkId::Reset(v60);
      v77[1] = v60[0];
      v77[2] = v60[1];
      v77[3] = v60[2];
      v77[4] = v60[3];
      v46 = v81;
      v61 = v45;
      v63 |= 0xCu;
      v62 = v81;
      v77[5] = v45;
      v77[6] = v81;
      v77[7] = v63;
      v58 = v77[0];
      tMatchingPeer::tMatchingPeer((int)v74, (int)v77);
      CMatchingBluetooth::AddBluetoothServer((int)this, v58, v46, (int)v74);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v76);
      std::string::~string(&v75);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
      goto LABEL_114;
    }
  }
LABEL_39:
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777222, 0) )
  {
    v73[0] = 0;
    CEventQueueBase::GetEventData((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777222, v73, 4);
    v33 = (COnline *)CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777222);
    Online = GetOnline(v33);
    COnline::ReportDisconnect(Online, 7, 1);
    if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777220, 0) )
      goto LABEL_41;
  }
  else if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777220, 0) )
  {
    goto LABEL_41;
  }
  CEventQueueBase::GetEventData((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777220, v80, 260);
  CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777220);
  v35 = v81;
  CNetworkId::Reset(v60);
  v62 = v35;
  v61 = v35;
  v63 |= 0xCu;
  TransportMgr = (CTransportManager *)GetTransportMgr();
  CTransportManager::Disconnect(TransportMgr, (CNetworkId *)v60);
  CMatchingLocal::RemoveServer(this, (CNetworkId *)v60);
LABEL_41:
  if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777219, 0) )
    return 0;
  v73[0] = 0;
  CEventQueueBase::GetEventData((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777219, v73, 4);
  CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CBluetoothSocketAbstract::s_eventQueue, 16777219);
  v17 = &CMatchingBluetooth::s_connectRetries;
  v18 = (char *)dword_A2F0EC;
  if ( dword_A2F0EC )
  {
    v19 = v73[0];
    while ( 1 )
    {
      v20 = *((_DWORD *)v18 + 4);
      v21 = v20 >= v73[0];
      if ( v20 >= v73[0] )
        v22 = *((char **)v18 + 2);
      else
        v22 = *((char **)v18 + 3);
      if ( !v21 )
        v18 = v17;
      if ( !v22 )
        break;
      v17 = v18;
      v18 = v22;
    }
    if ( v18 != &CMatchingBluetooth::s_connectRetries )
    {
      v23 = v18;
      if ( *((_DWORD *)v18 + 4) <= v73[0] )
        goto LABEL_77;
    }
  }
  else
  {
    v18 = &CMatchingBluetooth::s_connectRetries;
    v19 = v73[0];
  }
  v68[0] = v19;
  v23 = (char *)dword_A2F0F0;
  v68[1] = 0;
  if ( (char *)dword_A2F0F0 == v18 )
  {
    if ( !dword_A2F0F8 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
        (int)&v67,
        v68);
      v23 = v67;
      v72 = v67;
      goto LABEL_77;
    }
    v47 = *((_DWORD *)v18 + 4);
    if ( v47 > v19 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
        &v72,
        (int)v18,
        v68,
        (int)v18,
        0);
      v23 = v72;
      goto LABEL_77;
    }
    if ( v47 >= v19 )
    {
      v72 = v18;
      goto LABEL_77;
    }
    v48 = *((_DWORD *)v18 + 3);
    if ( v48 )
    {
      for ( j = *((_DWORD *)v18 + 3); *(_DWORD *)(j + 8); j = *(_DWORD *)(j + 8) )
        ;
    }
    else
    {
      v52 = *((_DWORD *)v18 + 1);
      if ( *(char **)(v52 + 12) == v18 )
      {
        while ( *(_DWORD *)(*(_DWORD *)(v52 + 4) + 12) == v52 )
          v52 = *(_DWORD *)(v52 + 4);
        j = v52;
        v52 = *(_DWORD *)(v52 + 4);
      }
      else
      {
        j = (int)v18;
      }
      if ( v52 != *(_DWORD *)(j + 12) )
        j = v52;
    }
    if ( (char *)j == &CMatchingBluetooth::s_connectRetries )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
        &v72,
        dword_A2F0F0,
        v68,
        0,
        dword_A2F0F0);
      v23 = v72;
      goto LABEL_77;
    }
    if ( *(_DWORD *)(j + 16) <= v19 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
        (int)&v66,
        v68);
      v23 = v66;
      v72 = v66;
      goto LABEL_77;
    }
    if ( v48 )
    {
LABEL_96:
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
        &v72,
        j,
        v68,
        j,
        0);
      v23 = v72;
      goto LABEL_77;
    }
    v50 = dword_A2F0F0;
LABEL_128:
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
      &v72,
      v50,
      v68,
      0,
      (int)v23);
    v23 = v72;
    goto LABEL_77;
  }
  if ( v18 == &CMatchingBluetooth::s_connectRetries )
  {
    v49 = *((_DWORD *)v18 + 3);
    if ( *(_DWORD *)(v49 + 16) >= v19 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
        (int)&v65,
        v68);
      v23 = v65;
      v72 = v65;
    }
    else
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
        &v72,
        v49,
        v68,
        0,
        (int)v18);
      v23 = v72;
    }
    goto LABEL_77;
  }
  if ( *v18 || *(char **)(*((_DWORD *)v18 + 1) + 4) != v18 )
  {
    v23 = *((char **)v18 + 2);
    if ( v23 )
    {
      while ( *((_DWORD *)v23 + 3) )
        v23 = *((char **)v23 + 3);
    }
    else
    {
      v23 = *((char **)v18 + 1);
      if ( v18 == *((char **)v23 + 2) )
      {
        while ( *(char **)(*((_DWORD *)v23 + 1) + 8) == v23 )
          v23 = *((char **)v23 + 1);
        v23 = *((char **)v23 + 1);
      }
    }
  }
  else
  {
    v23 = *((char **)v18 + 3);
  }
  v24 = *((_DWORD *)v18 + 4);
  if ( v19 < v24 && v19 > *((_DWORD *)v23 + 4) )
  {
    if ( *((_DWORD *)v23 + 3) )
    {
      j = (int)v18;
      goto LABEL_96;
    }
    v50 = (int)v23;
    goto LABEL_128;
  }
  v25 = *((_DWORD *)v18 + 3);
  if ( v25 )
  {
    for ( j = *((_DWORD *)v18 + 3); *(_DWORD *)(j + 8); j = *(_DWORD *)(j + 8) )
      ;
  }
  else
  {
    v51 = *((_DWORD *)v18 + 1);
    if ( v18 == *(char **)(v51 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v51 + 4) + 12) == v51 )
        v51 = *(_DWORD *)(v51 + 4);
      j = v51;
      v51 = *(_DWORD *)(v51 + 4);
    }
    else
    {
      j = (int)v18;
    }
    if ( v51 != *(_DWORD *)(j + 12) )
      j = v51;
  }
  if ( v19 >= v24 )
  {
    if ( v19 <= v24 )
    {
      v72 = v18;
      v23 = v18;
      goto LABEL_77;
    }
    if ( (char *)j == &CMatchingBluetooth::s_connectRetries || v19 < *(_DWORD *)(j + 16) )
    {
      if ( !v25 )
      {
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
          &v72,
          (int)v18,
          v68,
          0,
          (int)v18);
        v23 = v72;
        goto LABEL_77;
      }
      goto LABEL_96;
    }
  }
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
    (int)&v64,
    v68);
  v23 = v64;
  v72 = v64;
LABEL_77:
  *((_DWORD *)v23 + 5) = 0;
  v27 = *((char **)this + 10985);
  if ( v27 )
  {
    v28 = (char *)this + 43936;
    v29 = (char *)this + 43936;
    while ( 1 )
    {
      v30 = *((_DWORD *)v27 + 4);
      v31 = v30 >= v73[0];
      if ( v30 >= v73[0] )
        v32 = *((char **)v27 + 2);
      else
        v32 = *((char **)v27 + 3);
      if ( !v31 )
        v27 = v29;
      if ( !v32 )
        break;
      v29 = v27;
      v27 = v32;
    }
    if ( v28 != v27 && *((_DWORD *)v27 + 4) <= v73[0] )
    {
      v71 = v27;
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,bool>,std::priv::_Select1st<std::pair<unsigned int const,bool>>,std::priv::_MapTraitsT<std::pair<unsigned int const,bool>>,std::allocator<std::pair<unsigned int const,bool>>>::erase(
        (int)v28,
        (unsigned __int8 **)&v71);
    }
  }
  return 0;
}


// ===== 804cf8 CMatchingBluetooth::Update(void) =====
int __fastcall CMatchingBluetooth::Update(CMatchingBluetooth *this)
{
  char *v1; // r11
  CConnectionManager *ConnectionCount; // r0
  int v5; // r3
  pthread_mutex_t *v6; // r0
  CConnectionManager *HasEventOccured; // r0
  int v8; // r3
  int *v9; // r6
  int i; // r7
  CConnectionManager *v11; // r0
  CConnectionManager *v12; // r0
  CConnectionManager *v13; // r0
  int v14; // r3
  char v15; // r0
  void *v16; // r7
  pthread_mutex_t *v17; // r0
  CConnectionManager *EventData; // r0
  int v19; // r1
  int MemberIndex; // r0
  int v21; // r3
  int v22; // r7
  int v23; // r7
  int TransportMgr; // r0
  pthread_mutex_t *v25; // r0
  CConnectionManager *ConnectionMgr; // r0
  int v27; // r0
  int v28; // r3
  int v29; // r3
  size_t v30; // r1
  CConnectionManager *v31; // r0
  int v32; // r2
  int v33; // r3
  char *v34; // [sp+10h] [bp-934h]
  _DWORD v35[2]; // [sp+18h] [bp-92Ch] BYREF
  __int64 v36; // [sp+20h] [bp-924h]
  int v37; // [sp+28h] [bp-91Ch]
  int v38; // [sp+2Ch] [bp-918h]
  int v39; // [sp+30h] [bp-914h]
  char v40; // [sp+34h] [bp-910h]
  _DWORD v41[8]; // [sp+38h] [bp-90Ch] BYREF
  _DWORD v42[2]; // [sp+58h] [bp-8ECh] BYREF
  __int64 v43; // [sp+60h] [bp-8E4h]
  int v44; // [sp+68h] [bp-8DCh]
  int v45; // [sp+6Ch] [bp-8D8h]
  int v46; // [sp+70h] [bp-8D4h]
  char v47; // [sp+74h] [bp-8D0h]
  int v48; // [sp+78h] [bp-8CCh] BYREF
  _DWORD v49[2]; // [sp+80h] [bp-8C4h] BYREF
  __int64 v50; // [sp+88h] [bp-8BCh]
  int v51; // [sp+90h] [bp-8B4h]
  int v52; // [sp+94h] [bp-8B0h]
  int v53; // [sp+98h] [bp-8ACh]
  char v54; // [sp+9Ch] [bp-8A8h]
  int v55; // [sp+A0h] [bp-8A4h] BYREF
  _DWORD v56[2]; // [sp+A8h] [bp-89Ch] BYREF
  __int64 v57; // [sp+B0h] [bp-894h]
  int v58; // [sp+B8h] [bp-88Ch]
  int v59; // [sp+BCh] [bp-888h]
  int v60; // [sp+C0h] [bp-884h]
  char v61; // [sp+C4h] [bp-880h]
  _BYTE v62[3]; // [sp+C5h] [bp-87Fh] BYREF
  _DWORD v63[2]; // [sp+C8h] [bp-87Ch] BYREF
  __int64 v64; // [sp+D0h] [bp-874h]
  int v65; // [sp+D8h] [bp-86Ch]
  int v66; // [sp+DCh] [bp-868h]
  int v67; // [sp+E0h] [bp-864h]
  char v68; // [sp+E4h] [bp-860h]
  _BYTE v69[3]; // [sp+E5h] [bp-85Fh] BYREF
  _DWORD v70[7]; // [sp+E8h] [bp-85Ch] BYREF
  _DWORD v71[7]; // [sp+104h] [bp-840h] BYREF
  void *__p[3]; // [sp+120h] [bp-824h] BYREF
  int v73; // [sp+12Ch] [bp-818h] BYREF
  _BYTE v74[36]; // [sp+130h] [bp-814h] BYREF
  std::string v75; // [sp+154h] [bp-7F0h] BYREF
  int v76; // [sp+178h] [bp-7CCh] BYREF
  _DWORD v77[9]; // [sp+510h] [bp-434h] BYREF
  std::string v78; // [sp+534h] [bp-410h] BYREF
  _BYTE v79[920]; // [sp+558h] [bp-3ECh] BYREF
  std::string v80; // [sp+8F4h] [bp-50h] BYREF
  std::string v81; // [sp+90Ch] [bp-38h] BYREF
  std::string v82; // [sp+924h] [bp-20h] BYREF

  ConnectionCount = (CConnectionManager *)CMatching::Update(this);
  if ( !*((_BYTE *)this + 12) )
    return -1;
  if ( *((_BYTE *)this + 43908) )
  {
    ConnectionCount = (CConnectionManager *)(*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 96))(this);
    if ( ConnectionCount == (CConnectionManager *)((char *)&dword_0 + 1) )
    {
      ConnectionCount = (CConnectionManager *)CEventQueueBase::AddEvent(
                                                (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                                8388612,
                                                nullptr,
                                                0);
      *((_BYTE *)this + 43908) = 0;
    }
  }
  v5 = *((_DWORD *)this + 3470);
  if ( v5 >= 0 )
  {
    if ( v5 == *((_DWORD *)this + 3471) )
    {
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(ConnectionCount);
      ConnectionCount = (CConnectionManager *)CConnectionManager::GetConnectionCount(ConnectionMgr, 0);
      if ( (int)ConnectionCount > 0 )
      {
        v27 = GetConnectionMgr(ConnectionCount);
        CConnectionManager::GetConnMemberIdList((CConnectionManager *)__p, v27, 1);
        ConnectionCount = (CConnectionManager *)__p[0];
        v28 = *(_DWORD *)__p[0];
        if ( *(_DWORD *)__p[0] != *((_DWORD *)this + 4844) )
        {
          v50 = 0;
          v49[1] = 32;
          v52 = -1;
          v54 = 0;
          v49[0] = &off_963618;
          v51 = -1;
          v53 = 0;
          if ( v28 != v55 )
          {
            v55 = v28;
            NetStructMember::SetChanged((NetStructMember *)v49);
          }
          v29 = *((_DWORD *)this + 4836);
          v49[0] = &off_9635E8;
          (*(void (__fastcall **)(char *, int *))(v29 + 28))((char *)this + 19344, &v55);
          ConnectionCount = (CConnectionManager *)__p[0];
          v49[0] = &off_963648;
        }
        if ( ConnectionCount )
        {
          v30 = ((char *)__p[2] - (char *)ConnectionCount) & 0xFFFFFFFC;
          if ( v30 > 0x80 )
            CustomFree(ConnectionCount);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(ConnectionCount, v30);
        }
      }
    }
    else if ( v5 > 0 && v5 == *((_DWORD *)this + 4844) )
    {
      v31 = (CConnectionManager *)GetConnectionMgr(ConnectionCount);
      ConnectionCount = (CConnectionManager *)CConnectionManager::IsConnected(v31, *((_DWORD *)this + 3471));
      if ( !ConnectionCount )
      {
        v32 = *((_DWORD *)this + 4501);
        *((_DWORD *)this + 3471) = *((_DWORD *)this + 3470);
        if ( !v32 )
          v1 = (char *)this + 17920;
        *((_BYTE *)this + 13872) = 0;
        if ( v32 )
        {
          v34 = (char *)this + 17920;
          std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
            (int)this + 17988,
            *((_DWORD *)this + 4498));
          *((_DWORD *)this + 4500) = (char *)this + 17988;
          *((_DWORD *)this + 4501) = 0;
          *((_DWORD *)this + 4499) = (char *)this + 17988;
          *((_DWORD *)this + 4498) = 0;
        }
        else
        {
          v34 = v1;
        }
        v64 = 0;
        v63[1] = 1;
        v66 = -1;
        v63[0] = &off_963700;
        v65 = -1;
        v67 = 0;
        v68 = 0;
        if ( v69[0] )
        {
          v69[0] = 0;
          NetStructMember::SetChanged((NetStructMember *)v63);
        }
        v33 = *((_DWORD *)this + 4820);
        v63[0] = &off_9636D0;
        (*(void (__fastcall **)(char *, _BYTE *))(v33 + 28))((char *)this + 19280, v69);
        v57 = 0;
        v63[0] = &off_963648;
        v56[1] = 1;
        v59 = -1;
        v56[0] = &off_963700;
        v58 = -1;
        v60 = 0;
        v61 = 0;
        if ( v62[0] )
        {
          v62[0] = 0;
          NetStructMember::SetChanged((NetStructMember *)v56);
        }
        v56[0] = &off_9636D0;
        (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 4828) + 28))((char *)this + 19312, v62);
        v56[0] = &off_963648;
        tMatchingPeer::tMatchingPeer((tMatchingPeer *)v77);
        v77[0] = *((_DWORD *)this + 3470);
        std::string::string(&v82, (const std::string *)((char *)this + 43832));
        std::string::_M_assign(&v78, v82._M_start_of_storage._M_data, v82._M_finish);
        std::string::~string(&v82);
        CRoomAttributes::operator=(v79, v34 + 96);
        tMatchingPeer::tMatchingPeer((int)v74, (int)v77);
        CMatchingBluetooth::GenerateBluetoothDeviceName(&v81, (int)this, (int)v74);
        CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v76);
        std::string::~string(&v75);
        std::string::string(&v80, &v81);
        if ( &v80 != (std::string *)&CBluetoothSocketAbstract::s_DisplayName )
          std::string::_M_assign(
            (std::string *const)&CBluetoothSocketAbstract::s_DisplayName,
            v80._M_start_of_storage._M_data,
            v80._M_finish);
        std::string::~string(&v80);
        CMatchingBluetooth::SetServerBroadcast(this);
        CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388619, (char *)this + 13884, 4);
        std::string::~string(&v81);
        CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v79);
        std::string::~string(&v78);
      }
    }
  }
  v6 = (pthread_mutex_t *)GetConnectionMgr(ConnectionCount);
  HasEventOccured = (CConnectionManager *)CEventQueueBase::HasEventOccured(v6 + 2, 6291457, 0);
  if ( HasEventOccured )
  {
    v73 = 0;
    v17 = (pthread_mutex_t *)GetConnectionMgr(HasEventOccured);
    EventData = (CConnectionManager *)CEventQueueBase::GetEventData(v17 + 2, 6291457, &v73, 4);
    v19 = *((_DWORD *)this + 3470);
    if ( v19 < 0 )
    {
      if ( v19 == -1 )
      {
LABEL_35:
        v25 = (pthread_mutex_t *)GetConnectionMgr(EventData);
        CEventQueueBase::ConsumeEvent(v25 + 2, 6291457);
        goto LABEL_9;
      }
    }
    else if ( v19 == *((_DWORD *)this + 3471) )
    {
      EventData = (CConnectionManager *)(*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 84))(this);
      if ( !EventData )
      {
        EventData = (CConnectionManager *)(*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 88))(this);
        if ( !EventData )
          EventData = (CConnectionManager *)CMatchingLocal::SendServerResponse(this, 0);
      }
      goto LABEL_35;
    }
    MemberIndex = CMatching::GetMemberIndex(this, v19);
    v21 = *((_DWORD *)this + 3470);
    v22 = MemberIndex;
    v43 = 0;
    v42[1] = 32;
    v45 = -1;
    v47 = 0;
    v42[0] = &off_963618;
    v44 = -1;
    v46 = 0;
    if ( v21 != v48 )
    {
      v48 = v21;
      NetStructMember::SetChanged((NetStructMember *)v42);
    }
    v23 = 408 * v22;
    v42[0] = &off_9635E8;
    (*(void (__fastcall **)(char *, int *))(*(_DWORD *)((char *)this + v23 + 19728) + 28))(
      (char *)this + v23 + 19728,
      &v48);
    v42[0] = &off_963648;
    TransportMgr = GetTransportMgr();
    CTransportManager::GetListenNetworkId(v71, TransportMgr, 0);
    v70[0] = v71[0];
    v70[1] = v71[1];
    v70[2] = v71[2];
    v70[3] = v71[3];
    v70[4] = v71[4];
    v70[5] = v71[5];
    v70[6] = v71[6];
    v36 = 0;
    v35[1] = 3;
    v38 = -1;
    v35[0] = &off_992038;
    v37 = -1;
    v39 = 0;
    v40 = 0;
    CNetworkId::Reset(v41);
    NetStructMemberType<CNetworkId>::SetValue((NetStructMember *)v35, (unsigned __int16 *)v70);
    v35[0] = off_992008;
    (*(void (__fastcall **)(char *, _DWORD *))(*(_DWORD *)((char *)this + v23 + 19768) + 28))(
      (char *)this + v23 + 19768,
      v41);
    v35[0] = &off_963648;
    EventData = (CConnectionManager *)CEventQueueBase::AddEvent(
                                        (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                        8388611,
                                        nullptr,
                                        0);
    goto LABEL_35;
  }
LABEL_9:
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, 0) )
  {
    CEventQueueBase::GetEventData((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, __p, 8);
    v16 = __p[0];
    if ( v16 == (void *)(*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 108))(this) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194314, nullptr, 0);
  }
  if ( (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 100))(this) )
  {
    v8 = *((_DWORD *)this + 3470);
    if ( v8 < 0 || v8 != *((_DWORD *)this + 3471) )
    {
      v9 = (int *)((char *)this + 19424);
      for ( i = 0; i != 32; ++i )
      {
        if ( v9[84] > 0 )
        {
          v11 = (CConnectionManager *)(*(int (__fastcall **)(char *))(*v9 + 32))((char *)this + 408 * i + 19424);
          if ( v11 )
          {
            if ( v9[84] != *((_DWORD *)this + 3470) )
            {
              v12 = (CConnectionManager *)GetConnectionMgr(v11);
              if ( !CConnectionManager::IsConnected(v12, v9[84]) )
              {
                v13 = (CConnectionManager *)GetConnectionMgr(nullptr);
                CConnectionManager::Connect(v13, v9[84], (CMatchingBluetooth *)((char *)this + 408 * i + 19800));
              }
            }
          }
        }
        v9 += 102;
      }
    }
  }
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, 1) )
  {
    v14 = *((_DWORD *)this + 3470);
    if ( v14 >= 0
      && v14 == *((_DWORD *)this + 3471)
      && (!(*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 88))(this)
       || (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 84))(this)) )
    {
      v15 = (*(int (__fastcall **)(CMatchingBluetooth *))(*(_DWORD *)this + 84))(this);
      CMatchingLocal::SendServerResponse(this, v15);
    }
  }
  CMatchingBluetooth::ProcessEvents(this);
  return 0;
}


// ===== 805664 CMatchingLocal::GetMemberMask(int) =====
int __fastcall CMatchingLocal::GetMemberMask(CMatchingLocal *this, int a2)
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


// ===== 805680 CMatchingLocal::GetFriendsList(bool) =====
_DWORD *__fastcall CMatchingLocal::GetFriendsList(_DWORD *this, bool a2)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  return this;
}


// ===== 805694 CMatchingLocal::GetInvitationRoomId(void) =====
__int64 __fastcall CMatchingLocal::GetInvitationRoomId(CMatchingLocal *this)
{
  return 0;
}


// ===== 8056a0 CMatchingLocal::GetTransportType(tPROTOCOL_TYPE) =====
int __fastcall CMatchingLocal::GetTransportType(int a1, unsigned int a2)
{
  if ( a2 <= 2 )
    return CSWTCH_616[a2];
  else
    return 0;
}


// ===== 8056c0 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::HasDataToSend(int) =====
int __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::HasDataToSend(int a1, int a2)
{
  int v4; // r5
  int v5; // r4

  if ( *(int *)(a1 + 4) <= 0 )
    return 0;
  v4 = a1;
  v5 = 0;
  while ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)(v4 + 8) + 40))(a1 + 8 * (43 * v5++ + 1), a2) )
  {
    v4 += 344;
    if ( *(_DWORD *)(a1 + 4) <= v5 )
      return 0;
  }
  return 1;
}


// ===== 805730 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::ProcessAcknowledgedPacket(int,int) =====
int __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::ProcessAcknowledgedPacket(
        int result,
        int a2,
        int a3)
{
  int v3; // r6
  int v6; // r5
  int v7; // r4

  v3 = result;
  if ( *(int *)(result + 4) > 0 )
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(v6 + 8) + 64))(v3 + 8 * (43 * v7++ + 1), a2, a3);
      v6 += 344;
    }
    while ( *(_DWORD *)(v3 + 4) > v7 );
  }
  return result;
}


// ===== 805790 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::ProcessLostPacket(int,int) =====
int __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::ProcessLostPacket(int result, int a2, int a3)
{
  int v3; // r6
  int v6; // r5
  int v7; // r4

  v3 = result;
  if ( *(int *)(result + 4) > 0 )
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(v6 + 8) + 68))(v3 + 8 * (43 * v7++ + 1), a2, a3);
      v6 += 344;
    }
    while ( *(_DWORD *)(v3 + 4) > v7 );
  }
  return result;
}


// ===== 8057f0 CMatchingLocal::ProcessLostPacket(int,int) =====
int __fastcall CMatchingLocal::ProcessLostPacket(CMatchingLocal *this, int a2, int a3)
{
  int *v6; // r5
  int i; // r4
  int v8; // t1
  int v9; // r0
  int result; // r0

  CMatching::ProcessLostPacket(this, a2, a3);
  NetStruct::ProcessLostPacket((CMatchingLocal *)((char *)this + 18976), a2, a3);
  v6 = (int *)((char *)this + 19424);
  for ( i = 0; i != 32; ++i )
  {
    v8 = *v6;
    v6 += 102;
    v9 = 408 * i + 19424;
    result = (*(int (__fastcall **)(char *, int, int))(v8 + 68))((char *)this + v9, a2, a3);
  }
  return result;
}


// ===== 80585c CMatchingLocal::ProcessAcknowledgedPacket(int,int) =====
int __fastcall CMatchingLocal::ProcessAcknowledgedPacket(CMatchingLocal *this, int a2, int a3)
{
  int *v6; // r5
  int i; // r4
  int v8; // t1
  int v9; // r0
  int result; // r0

  CMatching::ProcessAcknowledgedPacket(this, a2, a3);
  NetStruct::ProcessAcknowledgedPacket((CMatchingLocal *)((char *)this + 18976), a2, a3);
  v6 = (int *)((char *)this + 19424);
  for ( i = 0; i != 32; ++i )
  {
    v8 = *v6;
    v6 += 102;
    v9 = 408 * i + 19424;
    result = (*(int (__fastcall **)(char *, int, int))(v8 + 64))((char *)this + v9, a2, a3);
  }
  return result;
}


// ===== 8058c8 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Serialize(NetBitStream &,int,int) =====
bool __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Serialize(
        int a1,
        NetBitStream *a2,
        int a3,
        int a4)
{
  int v8; // r3
  _BOOL4 v9; // r6
  int v10; // r4
  int v11; // r5
  int v12; // r0

  if ( (**(int (__fastcall ***)(int, int))a1)(a1, a3) )
  {
    NetBitStream::WriteBit(a2, 1u);
    v8 = *(_DWORD *)(a1 + 4);
    if ( v8 <= 0 )
      return 0;
    v10 = 0;
    v11 = a1;
    v9 = 0;
    do
    {
      while ( v9 )
      {
        ++v10;
        v11 += 344;
        if ( v8 <= v10 )
          return v9;
      }
      v12 = (*(int (__fastcall **)(int, NetBitStream *, int, int))(*(_DWORD *)(v11 + 8) + 8))(
              a1 + 8 * (43 * v10 + 1),
              a2,
              a3,
              a4);
      v8 = *(_DWORD *)(a1 + 4);
      ++v10;
      v9 = v12 != 0;
      v11 += 344;
    }
    while ( v8 > v10 );
    return v9;
  }
  else
  {
    NetBitStream::WriteBit(a2, 0);
    return 0;
  }
}


// ===== 805998 CMatchingLocal::ProcessChangeServerMessage(int,NetBitStream &) =====
int __fastcall CMatchingLocal::ProcessChangeServerMessage(CMatchingLocal *this, int a2, NetBitStream *a3)
{
  int v5; // [sp+4h] [bp-4h] BYREF

  NetBitStream::ReadByteArray(a3, &v5, 4u);
  *((_DWORD *)this + 3471) = v5;
  return CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388619, &v5, 4);
}


// ===== 8059f8 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Erase(NetBitStream &) =====
int __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Erase(int a1, NetBitStream *this)
{
  int v4; // r5
  int v5; // r4

  if ( NetBitStream::ReadBit(this) && *(int *)(a1 + 4) > 0 )
  {
    v4 = a1;
    v5 = 0;
    do
    {
      (*(void (__fastcall **)(int, NetBitStream *))(*(_DWORD *)(v4 + 8) + 28))(a1 + 8 * (43 * v5++ + 1), this);
      v4 += 344;
    }
    while ( *(_DWORD *)(a1 + 4) > v5 );
  }
  return 0;
}


// ===== 805a64 NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Load(NetBitStream &,int,int) =====
bool __fastcall NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Load(
        int a1,
        NetBitStream *this,
        int a3,
        int a4)
{
  int v8; // r3
  int v9; // r4
  int v10; // r5
  _BOOL4 v11; // r6
  int v12; // r0

  if ( !NetBitStream::ReadBit(this) )
    return 0;
  v8 = *(_DWORD *)(a1 + 4);
  if ( v8 <= 0 )
    return 0;
  v9 = 0;
  v10 = a1;
  v11 = 0;
  do
  {
    while ( v11 )
    {
      ++v9;
      v10 += 344;
      if ( v8 <= v9 )
        return v11;
    }
    v12 = (*(int (__fastcall **)(int, NetBitStream *, int, int))(*(_DWORD *)(v10 + 8) + 20))(
            a1 + 8 * (43 * v9 + 1),
            this,
            a3,
            a4);
    v8 = *(_DWORD *)(a1 + 4);
    ++v9;
    v11 = v12 != 0;
    v10 += 344;
  }
  while ( v8 > v9 );
  return v11;
}


// ===== 805b14 CMatchingLocal::ReadPacketData(int,int,NetBitStream &) =====
int __fastcall CMatchingLocal::ReadPacketData(CMatchingLocal *this, int a2, int a3, NetBitStream *a4)
{
  int v7; // r3
  bool v8; // r1
  int v9; // r3
  int *v10; // r5
  int i; // r4
  int v12; // t1
  int v13; // r0
  int result; // r0

  CMatching::ReadPacketData(this, a2, a3, a4);
  v7 = *((_DWORD *)this + 3470);
  v8 = v7 < 0 || v7 != *((_DWORD *)this + 3471);
  NetStruct::ConditionalLoad((CMatchingLocal *)((char *)this + 18976), v8, a4, a2, 0);
  v9 = *((_DWORD *)this + 3470);
  if ( v9 >= 0 && v9 == *((_DWORD *)this + 3471) )
    NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Erase((int)this + 32480, a4);
  else
    NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Load((int)this + 32480, a4, a2, -1);
  v10 = (int *)((char *)this + 19424);
  for ( i = 0; i != 32; ++i )
  {
    v12 = *v10;
    v10 += 102;
    v13 = 408 * i + 19424;
    result = (*(int (__fastcall **)(char *, NetBitStream *, int, _DWORD))(v12 + 20))((char *)this + v13, a4, a2, 0);
  }
  return result;
}


// ===== 805c04 CMatchingLocal::GetMemberCount(void) =====
int __fastcall CMatchingLocal::GetMemberCount(CMatchingLocal *this)
{
  CConnectionManager *ConnectionMgr; // r0

  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  return CConnectionManager::GetConnectionCount(ConnectionMgr, 0) + 1;
}


// ===== 805c1c CMatchingLocal::IsInRoom(int) =====
int __fastcall CMatchingLocal::IsInRoom(CMatchingLocal *this, int a2)
{
  CConnectionManager *ConnectionMgr; // r0
  int v5; // r3

  if ( *((_DWORD *)this + 3470) == a2 )
    return (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 100))(this);
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  if ( CConnectionManager::IsConnected(ConnectionMgr, a2) )
    return 1;
  v5 = *((_DWORD *)this + 3470);
  return (v5 < 0 || v5 != *((_DWORD *)this + 3471))
      && (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 100))(this)
      && *((_DWORD *)this + 102 * CMatching::GetMemberIndex(this, a2) + 4940) >= 0;
}


// ===== 805cc8 CMatchingLocal::IsInRoom(void) =====
CConnectionManager *__fastcall CMatchingLocal::IsInRoom(CMatchingLocal *this)
{
  int v1; // r3
  CConnectionManager *ConnectionMgr; // r0
  CConnectionManager *result; // r0
  CConnectionManager *v5; // r0

  v1 = *((_DWORD *)this + 3470);
  if ( v1 >= 0 && v1 == *((_DWORD *)this + 3471) )
    return (CConnectionManager *)(&dword_0 + 1);
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  if ( CConnectionManager::IsConnected(ConnectionMgr, *((_DWORD *)this + 3471)) )
    return (CConnectionManager *)(&dword_0 + 1);
  result = (CConnectionManager *)CConnectionManager::IsInitialized(nullptr);
  if ( result )
  {
    v5 = (CConnectionManager *)GetConnectionMgr(result);
    return (CConnectionManager *)(CConnectionManager::GetConnectionCount(v5, 0) > 0);
  }
  return result;
}


// ===== 805d38 CMatchingLocal::KickMember(int) =====
int __fastcall CMatchingLocal::KickMember(CMatchingLocal *this, int a2)
{
  CConnectionManager *ConnectionMgr; // r0

  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  CConnectionManager::Disconnect(ConnectionMgr, a2, 1);
  return 0;
}


// ===== 805d58 CMatchingLocal::SendChangeServerMessage(void) =====
int __fastcall CMatchingLocal::SendChangeServerMessage(CMatchingLocal *this)
{
  CConnectionManager *v2; // r0
  int ConnectionMgr; // r0
  int v4; // r3
  int v5; // r5
  int v7[4]; // [sp+0h] [bp-28h] BYREF
  unsigned int v8; // [sp+10h] [bp-18h]
  int v9; // [sp+20h] [bp-8h] BYREF
  char v10[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v7, 0x800u);
  v10[0] = 4;
  NetBitStream::WriteByteArray((NetBitStream *)v7, v10, 1u);
  v9 = *((_DWORD *)this + 3470);
  v2 = (CConnectionManager *)NetBitStream::WriteByteArray((NetBitStream *)v7, &v9, 4u);
  ConnectionMgr = GetConnectionMgr(v2);
  v4 = v8 & 7;
  if ( (v8 & 7) != 0 )
    v4 = 1;
  v5 = CConnectionManager::SendToAll(ConnectionMgr, 4, v7[1], v4 + (v8 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v7);
  return v5;
}


// ===== 805de0 CMatchingLocal::SendServerResponse(bool) =====
int __fastcall CMatchingLocal::SendServerResponse(CMatchingLocal *this, bool a2)
{
  int TransportMgr; // r0
  CConnectionManager *v5; // r0
  int ConnectionMgr; // r0
  int v7; // r3
  int v8; // r4
  _DWORD v10[3]; // [sp+0h] [bp-68h] BYREF
  struct in_addr v11; // [sp+Ch] [bp-5Ch]
  int v12; // [sp+10h] [bp-58h]
  int v13; // [sp+14h] [bp-54h]
  int v14; // [sp+18h] [bp-50h]
  int v15; // [sp+1Ch] [bp-4Ch]
  int v16; // [sp+20h] [bp-48h]
  bool v17; // [sp+24h] [bp-44h]
  _BYTE v18[4]; // [sp+28h] [bp-40h] BYREF
  int v19; // [sp+2Ch] [bp-3Ch]
  unsigned int v20; // [sp+38h] [bp-30h]
  int v21; // [sp+48h] [bp-20h] BYREF
  struct in_addr v22; // [sp+4Ch] [bp-1Ch]
  int v23; // [sp+50h] [bp-18h]
  __u32 v24; // [sp+54h] [bp-14h]
  int v25; // [sp+58h] [bp-10h]
  int v26; // [sp+5Ch] [bp-Ch]
  int v27; // [sp+60h] [bp-8h]
  char v28[4]; // [sp+64h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v18, 0x800u);
  v28[0] = 1;
  NetBitStream::WriteByteArray((NetBitStream *)v18, v28, 1u);
  CNetworkId::Reset(v10);
  TransportMgr = GetTransportMgr();
  CTransportManager::GetListenNetworkId(&v21, TransportMgr, 0);
  v10[0] = v21;
  v10[1] = v22.s_addr;
  v10[2] = v23;
  v11.s_addr = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  inet_ntoa(v22);
  inet_ntoa(v11);
  v15 = (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 108))(this);
  v16 = (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 96))(this);
  v17 = a2;
  NetBitStream::WriteByteArray((NetBitStream *)v18, v10, 0x28u);
  v5 = (CConnectionManager *)CRoomAttributes::Serialize(
                               (CMatchingLocal *)((char *)this + 18016),
                               (NetBitStream *)v18,
                               7u);
  ConnectionMgr = GetConnectionMgr(v5);
  v7 = v20 & 7;
  if ( (v20 & 7) != 0 )
    v7 = 1;
  v8 = CConnectionManager::SendBroadcast(ConnectionMgr, 2, v19, v7 + (v20 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v18);
  return v8;
}


// ===== 805ee0 CMatchingLocal::ProcessClientMessage(CNetworkId &,NetBitStream &) =====
int *__fastcall CMatchingLocal::ProcessClientMessage(int *this, CNetworkId *a2, NetBitStream *a3)
{
  int v3; // r3
  CMatchingLocal *v4; // r4

  v3 = *(this + 3470);
  v4 = (CMatchingLocal *)this;
  if ( v3 >= 0 && v3 == *(this + 3471) )
  {
    this = (int *)(*(int (__fastcall **)(int *, CNetworkId *))(*this + 88))(this, a2);
    if ( !this )
      return (int *)CMatchingLocal::SendServerResponse(v4, 0);
  }
  return this;
}


// ===== 805f2c CMatchingLocal::SendClientRequest(void) =====
int __fastcall CMatchingLocal::SendClientRequest(CMatchingLocal *this)
{
  int TransportMgr; // r0
  CConnectionManager *ListenNetworkId; // r0
  int ConnectionMgr; // r0
  int v4; // r3
  int v5; // r5
  int v7[4]; // [sp+0h] [bp-44h] BYREF
  unsigned int v8; // [sp+10h] [bp-34h]
  _BYTE v9[28]; // [sp+20h] [bp-24h] BYREF
  char v10[4]; // [sp+3Ch] [bp-8h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v7, 0x800u);
  v10[0] = 2;
  NetBitStream::WriteByteArray((NetBitStream *)v7, v10, 1u);
  TransportMgr = GetTransportMgr();
  ListenNetworkId = (CConnectionManager *)CTransportManager::GetListenNetworkId(v9, TransportMgr, 0);
  ConnectionMgr = GetConnectionMgr(ListenNetworkId);
  v4 = v8 & 7;
  if ( (v8 & 7) != 0 )
    v4 = 1;
  v5 = CConnectionManager::SendBroadcast(ConnectionMgr, 2, v7[1], v4 + (v8 >> 3));
  NetBitStream::~NetBitStream((NetBitStream *)v7);
  return v5;
}


// ===== 805fa8 CMatchingLocal::PacketReceiverCallback(int,char *,int) =====
void __fastcall CMatchingLocal::PacketReceiverCallback(CMatchingLocal *this, int a2, char *a3, unsigned int a4)
{
  _BYTE v8[32]; // [sp+4h] [bp-24h] BYREF
  _BYTE v9[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a4);
  NetBitStream::SetBuffer((NetBitStream *)v8, a3, a4);
  NetBitStream::ReadByteArray((NetBitStream *)v8, v9, 1u);
  if ( v9[0] == 4 )
    CMatchingLocal::ProcessChangeServerMessage(this, a2, (NetBitStream *)v8);
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 80601c CMatchingLocal::sPacketReceiverCallback(int,char *,int) =====
void __fastcall CMatchingLocal::sPacketReceiverCallback(CMatchingLocal *this, char *a2, char *a3, int a4)
{
  CMatchingLocal::PacketReceiverCallback((CMatchingLocal *)CMatching::s_Matching, (int)this, a2, (unsigned int)a3);
}


// ===== 806058 CMatchingLocal::Destroy(void) =====
// attributes: thunk
void __fastcall CMatchingLocal::Destroy(CMatching *this)
{
  CMatching::Destroy(this);
}


// ===== 80605c CMatchingLocal::Terminate(void) =====
int __fastcall CMatchingLocal::Terminate(CMatchingLocal *this)
{
  if ( *((_BYTE *)this + 12) )
  {
    *((_BYTE *)this + 12) = 0;
    CMatching::Terminate(this);
    CConnectionManager::UnregisterPacketType(2);
    CConnectionManager::UnregisterPacketType(3);
    CConnectionManager::UnregisterPacketType(4);
  }
  return 0;
}


// ===== 806098 CMatchingLocal::PingRooms(void) =====
int __fastcall CMatchingLocal::PingRooms(CMatchingLocal *this)
{
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388624, nullptr, 0);
  return 0;
}


// ===== 8060d0 NetStructMemberType<CNetworkId>::NetStructMemberType(CNetworkId,uint) [clone] =====
int __fastcall NetStructMemberType<CNetworkId>::NetStructMemberType(int a1, unsigned __int16 *a2)
{
  *(_DWORD *)(a1 + 4) = 3;
  *(_DWORD *)(a1 + 20) = -1;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 16) = -1;
  *(_DWORD *)(a1 + 24) = 0;
  *(_QWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_992038;
  CNetworkId::Reset((_DWORD *)(a1 + 32));
  NetStructMemberType<CNetworkId>::SetValue((NetStructMember *)a1, a2);
  return a1;
}


// ===== 806140 CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct() =====
void __fastcall CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct(
        CMatchingLocal::ServerBackupNetStruct *this)
{
  int v2; // r0

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
  CustomFree(this);
}


// ===== 8061bc CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct() =====
void __fastcall CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct(CMatchingLocal::RoomInfoNetStruct *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 102) = &off_963648;
  *((_DWORD *)this + 92) = &off_963648;
  *((_DWORD *)this + 84) = &off_963648;
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


// ===== 80623c CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct() =====
void __fastcall CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct(CMatchingLocal::RoomInfoNetStruct *this)
{
  CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct(this);
  CustomFree(this);
}


// ===== 806258 CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct(CMatchingLocal::MemberInfoNetStruct *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
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


// ===== 8062d0 CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct() =====
void __fastcall CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct(
        CMatchingLocal::ServerBackupNetStruct *this)
{
  int v2; // r0

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


// ===== 806344 CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct(CMatchingLocal::MemberInfoNetStruct *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
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


// ===== 8063c4 CMatchingLocal::WritePacketData(int,int,NetBitStream &) =====
int __fastcall CMatchingLocal::WritePacketData(CMatchingLocal *this, int a2, int a3, NetBitStream *a4)
{
  char v8; // r0
  int v9; // r3
  char v10; // r5
  bool v11; // r1
  int v12; // r0
  int v13; // r3
  bool v14; // r6
  int v15; // r5
  int v16; // r7
  CConnectionManager *v17; // r0
  int *v18; // r6
  int i; // r5
  int v20; // r3
  bool v21; // r1
  int v22; // r3
  _BOOL4 v23; // r1
  int v24; // t1
  CConnectionManager *ConnectionMgr; // r0
  char v27; // [sp+18h] [bp-CCh]
  int (__fastcall **v28)(NetStructMember *, NetBitStream *); // [sp+40h] [bp-A4h] BYREF
  _BYTE v29[32]; // [sp+60h] [bp-84h] BYREF
  _DWORD v30[7]; // [sp+80h] [bp-64h] BYREF
  char v31; // [sp+9Ch] [bp-48h]
  int v32; // [sp+A0h] [bp-44h] BYREF
  _DWORD v33[7]; // [sp+A8h] [bp-3Ch] BYREF
  _DWORD v34[8]; // [sp+C4h] [bp-20h] BYREF

  v8 = CMatching::WritePacketData(this, a2, a3, a4);
  v9 = *((_DWORD *)this + 3470);
  v10 = v8;
  v11 = v9 >= 0 && v9 == *((_DWORD *)this + 3471);
  NetStruct::SetEnabled((CMatchingLocal *)((char *)this + 18976), v11);
  v12 = NetStruct::Serialize((CMatchingLocal *)((char *)this + 18976), a4, a2, a3);
  v13 = *((_DWORD *)this + 3470);
  if ( v12 )
    v10 |= 1u;
  v27 = v10;
  v14 = v13 >= 0 && v13 == *((_DWORD *)this + 3471);
  if ( *((int *)this + 8121) > 0 )
  {
    v15 = 0;
    do
      NetStruct::SetEnabled((CMatchingLocal *)((char *)this + 344 * v15++ + 32488), v14);
    while ( v15 < *((_DWORD *)this + 8121) );
  }
  v16 = (unsigned __int8)(v27
                        | NetStructArray<CMatchingLocal::ServerBackupNetStruct,32u>::Serialize(
                            (int)this + 32480,
                            a4,
                            a2,
                            a3));
  v17 = (CConnectionManager *)v29;
  v18 = (int *)((char *)this + 19424);
  for ( i = 0; i != 32; ++i )
  {
    v20 = *((_DWORD *)this + 3470);
    if ( v20 >= 0 && v20 == *((_DWORD *)this + 3471) && v20 != v18[84] )
    {
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v17);
      if ( CConnectionManager::IsConnected(ConnectionMgr, v18[84]) )
      {
        v20 = *((_DWORD *)this + 3470);
      }
      else
      {
        v30[1] = 32;
        v30[2] = 0;
        v30[3] = 0;
        v31 = 0;
        v30[0] = &off_963618;
        v30[4] = -1;
        v30[5] = -1;
        v30[6] = 0;
        if ( v32 != -1 )
        {
          v32 = -1;
          NetStructMember::SetChanged((NetStructMember *)v30);
        }
        v30[0] = &off_9635E8;
        (*(void (__fastcall **)(char *, int *))(v18[76] + 28))((char *)this + 408 * i + 19728, &v32);
        v30[0] = &off_963648;
        CNetworkId::Reset(v34);
        v33[0] = v34[0];
        v33[1] = v34[1];
        v33[2] = v34[2];
        v33[3] = v34[3];
        v33[4] = v34[4];
        v33[5] = v34[5];
        v33[6] = v34[6];
        NetStructMemberType<CNetworkId>::NetStructMemberType((int)&v28, (unsigned __int16 *)v33);
        v28 = off_992008;
        (*(void (__fastcall **)(char *, _BYTE *))(v18[86] + 28))((char *)this + 408 * i + 19768, v29);
        v20 = *((_DWORD *)this + 3470);
        v28 = (int (__fastcall **)(NetStructMember *, NetBitStream *))&off_963648;
      }
    }
    v21 = v20 >= 0 && *((_DWORD *)this + 3471) == v20 || v18[84] == v20;
    NetStruct::SetEnabled((CMatchingLocal *)((char *)this + 408 * i + 19424), v21);
    v22 = *((_DWORD *)this + 3470);
    v23 = v22 < 0 || v22 != *((_DWORD *)this + 3471) || a2 != v18[84];
    v24 = *v18;
    v18 += 102;
    v17 = (CConnectionManager *)(*(int (__fastcall **)(char *, _BOOL4, NetBitStream *, int, int))(v24 + 12))(
                                  (char *)this + 408 * i + 19424,
                                  v23,
                                  a4,
                                  a2,
                                  a3);
    if ( v17 )
      v16 |= 1u;
  }
  return v16;
}


// ===== 80675c CMatchingLocal::GenerateNewMemberId(void) =====
int __fastcall CMatchingLocal::GenerateNewMemberId(CMatchingLocal *this)
{
  int v2; // r3
  int v3; // r11
  int v4; // r3
  int RoomMask; // [sp+8h] [bp-3Ch]
  _DWORD v7[7]; // [sp+18h] [bp-2Ch] BYREF
  char v8; // [sp+34h] [bp-10h]
  _DWORD v9[3]; // [sp+38h] [bp-Ch] BYREF

  RoomMask = CMatching::GetRoomMask(this);
  do
  {
    v2 = *((_DWORD *)this + 4854);
    v7[4] = -1;
    v3 = v2 / 17 + 1 + 16 * v2 % 272;
    v7[1] = 32;
    v7[0] = &off_963618;
    v7[2] = 0;
    v7[3] = 0;
    v7[5] = -1;
    v7[6] = 0;
    v8 = 0;
    if ( v2 + 1 != v9[0] )
    {
      v9[0] = v2 + 1;
      NetStructMember::SetChanged((NetStructMember *)v7);
    }
    v7[0] = &off_9635E8;
    (*(void (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 4846) + 28))((char *)this + 19384, v9);
    v4 = *(_DWORD *)this;
    v7[0] = &off_963648;
  }
  while ( ((*(int (__fastcall **)(CMatchingLocal *, int))(v4 + 132))(this, v3) & RoomMask) != 0 );
  return v3;
}


// ===== 8068a8 std::vector<tRoomInfo,std::allocator<tRoomInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<tRoomInfo>::_M_clear_after_move(_DWORD *a1)
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
      v1 -= 242;
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v1 + 10));
      v4 = (_DWORD *)v1[7];
      if ( v4 == v1 + 2 || !v4 )
        goto LABEL_4;
      v5 = v1[2] - (_DWORD)v4;
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
    v6 = 8 * ((a1[2] - (int)v1) >> 3);
    if ( v6 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v6);
  }
}


// ===== 806964 CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct(void) =====
CMatchingLocal::RoomInfoNetStruct *__fastcall CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct(
        CMatchingLocal::RoomInfoNetStruct *this)
{
  int v2; // r2
  int v3; // r3
  int v4; // r3
  int v5; // r3

  NetStruct::NetStruct(this);
  v2 = *((unsigned __int8 *)this + 333);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_992148;
  *((_DWORD *)this + 77) = 1;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963700;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_BYTE *)this + 333) = 0;
    NetStructMember::SetChanged((CMatchingLocal::RoomInfoNetStruct *)((char *)this + 304));
  }
  v3 = *((unsigned __int8 *)this + 365);
  *((_QWORD *)this + 43) = 0;
  *((_DWORD *)this + 76) = &off_9636D0;
  *((_DWORD *)this + 85) = 1;
  *((_DWORD *)this + 89) = -1;
  *((_DWORD *)this + 84) = &off_963700;
  *((_DWORD *)this + 88) = -1;
  *((_DWORD *)this + 90) = 0;
  *((_BYTE *)this + 364) = 0;
  if ( v3 )
  {
    *((_BYTE *)this + 365) = 0;
    NetStructMember::SetChanged((CMatchingLocal::RoomInfoNetStruct *)((char *)this + 336));
  }
  v4 = *((_DWORD *)this + 100);
  *((_QWORD *)this + 47) = 0;
  *((_DWORD *)this + 84) = &off_9636D0;
  *((_DWORD *)this + 93) = 32;
  *((_DWORD *)this + 97) = -1;
  *((_DWORD *)this + 92) = &off_963618;
  *((_DWORD *)this + 96) = -1;
  *((_DWORD *)this + 98) = 0;
  *((_BYTE *)this + 396) = 0;
  if ( v4 )
  {
    *((_DWORD *)this + 100) = 0;
    NetStructMember::SetChanged((CMatchingLocal::RoomInfoNetStruct *)((char *)this + 368));
  }
  v5 = *((_DWORD *)this + 110);
  *((_QWORD *)this + 52) = 0;
  *((_DWORD *)this + 92) = &off_9635E8;
  *((_DWORD *)this + 103) = 32;
  *((_DWORD *)this + 107) = -1;
  *((_DWORD *)this + 102) = &off_963618;
  *((_DWORD *)this + 106) = -1;
  *((_DWORD *)this + 108) = 0;
  *((_BYTE *)this + 436) = 0;
  if ( v5 )
  {
    *((_DWORD *)this + 110) = 0;
    NetStructMember::SetChanged((CMatchingLocal::RoomInfoNetStruct *)((char *)this + 408));
  }
  *((_DWORD *)this + 102) = &off_9635E8;
  NetStruct::DeclareMember(this, (CMatchingLocal::RoomInfoNetStruct *)((char *)this + 304));
  NetStruct::DeclareMember(this, (CMatchingLocal::RoomInfoNetStruct *)((char *)this + 336));
  NetStruct::DeclareMember(this, (CMatchingLocal::RoomInfoNetStruct *)((char *)this + 368));
  NetStruct::DeclareMember(this, (CMatchingLocal::RoomInfoNetStruct *)((char *)this + 408));
  return this;
}


// ===== 806b98 CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct(void) =====
CMatchingLocal::MemberInfoNetStruct *__fastcall CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct(
        CMatchingLocal::MemberInfoNetStruct *this)
{
  int v2; // r1
  _DWORD v4[7]; // [sp+0h] [bp-38h] BYREF
  _DWORD v5[7]; // [sp+1Ch] [bp-1Ch] BYREF

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_992198;
  *((_DWORD *)this + 77) = 32;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((CMatchingLocal::MemberInfoNetStruct *)((char *)this + 304));
  }
  *((_DWORD *)this + 76) = &off_9635E8;
  CNetworkId::Reset(v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  v4[2] = v5[2];
  v4[3] = v5[3];
  v4[4] = v5[4];
  v4[5] = v5[5];
  v4[6] = v5[6];
  NetStructMemberType<CNetworkId>::NetStructMemberType((int)this + 344, (unsigned __int16 *)v4);
  *((_DWORD *)this + 86) = off_992008;
  NetStruct::DeclareMember(this, (CMatchingLocal::MemberInfoNetStruct *)((char *)this + 304));
  NetStruct::DeclareMember(this, (CMatchingLocal::MemberInfoNetStruct *)((char *)this + 344));
  return this;
}


// ===== 806cac CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct(void) =====
CMatchingLocal::ServerBackupNetStruct *__fastcall CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct(
        CMatchingLocal::ServerBackupNetStruct *this)
{
  int v2; // r1

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_9921E8;
  *((_DWORD *)this + 77) = 32;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((CMatchingLocal::ServerBackupNetStruct *)((char *)this + 304));
  }
  *((_DWORD *)this + 76) = &off_9635E8;
  NetStruct::DeclareMember(this, (CMatchingLocal::ServerBackupNetStruct *)((char *)this + 304));
  return this;
}


// ===== 806d64 CMatchingLocal::HideRoom(void) =====
int __fastcall CMatchingLocal::HideRoom(CMatchingLocal *this)
{
  _DWORD v3[7]; // [sp+0h] [bp-24h] BYREF
  char v4; // [sp+1Ch] [bp-8h]
  char v5[7]; // [sp+1Dh] [bp-7h] BYREF

  v3[2] = 0;
  v3[3] = 0;
  v3[5] = -1;
  v4 = 0;
  v3[0] = &off_963700;
  v3[1] = 1;
  v3[4] = -1;
  v3[6] = 0;
  if ( v5[0] != 1 )
  {
    v5[0] = 1;
    NetStructMember::SetChanged((NetStructMember *)v3);
  }
  v3[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, char *))(*((_DWORD *)this + 4828) + 28))((char *)this + 19312, v5);
  v3[0] = &off_963648;
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, nullptr, 0);
  return 0;
}


// ===== 806e4c CMatchingLocal::CloseRoom(void) =====
int __fastcall CMatchingLocal::CloseRoom(CMatchingLocal *this)
{
  char v2; // r0
  bool v3; // zf
  int v4; // r3
  int v5; // r3
  _DWORD v7[7]; // [sp+0h] [bp-44h] BYREF
  char v8; // [sp+1Ch] [bp-28h]
  char v9[3]; // [sp+1Dh] [bp-27h] BYREF
  _DWORD v10[7]; // [sp+20h] [bp-24h] BYREF
  char v11; // [sp+3Ch] [bp-8h]
  char v12[7]; // [sp+3Dh] [bp-7h] BYREF

  v2 = (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 88))(this);
  v3 = v12[0] == 1;
  *((_BYTE *)this + 13) = v2;
  v10[2] = 0;
  v10[3] = 0;
  v10[5] = -1;
  v11 = 0;
  v10[0] = &off_963700;
  v10[1] = 1;
  v10[4] = -1;
  v10[6] = 0;
  if ( !v3 )
  {
    v12[0] = 1;
    NetStructMember::SetChanged((NetStructMember *)v10);
  }
  v4 = *((_DWORD *)this + 4820);
  v10[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, char *))(v4 + 28))((char *)this + 19280, v12);
  v7[2] = 0;
  v7[3] = 0;
  v10[0] = &off_963648;
  v7[5] = -1;
  v8 = 0;
  v7[0] = &off_963700;
  v7[1] = 1;
  v7[4] = -1;
  v7[6] = 0;
  if ( v9[0] != 1 )
  {
    v9[0] = 1;
    NetStructMember::SetChanged((NetStructMember *)v7);
  }
  v5 = *((_DWORD *)this + 4828);
  v7[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, char *))(v5 + 28))((char *)this + 19312, v9);
  v7[0] = &off_963648;
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, nullptr, 0);
  return 0;
}


// ===== 806fc8 CMatchingLocal::ShowRoom(void) =====
int __fastcall CMatchingLocal::ShowRoom(CMatchingLocal *this)
{
  int v1; // r3
  _DWORD v4[7]; // [sp+0h] [bp-24h] BYREF
  char v5; // [sp+1Ch] [bp-8h]
  _BYTE v6[7]; // [sp+1Dh] [bp-7h] BYREF

  v1 = *((unsigned __int8 *)this + 14);
  if ( !*((_BYTE *)this + 14) )
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[1] = 1;
    v4[5] = -1;
    v4[0] = &off_963700;
    v4[4] = -1;
    v4[6] = v1;
    v5 = v1;
    if ( v6[0] )
    {
      v6[0] = v1;
      NetStructMember::SetChanged((NetStructMember *)v4);
    }
    v4[0] = &off_9636D0;
    (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 4828) + 28))((char *)this + 19312, v6);
    v4[0] = &off_963648;
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, nullptr, 0);
  }
  return 0;
}


// ===== 8070bc CMatchingLocal::OpenRoom(bool) =====
int __fastcall CMatchingLocal::OpenRoom(CMatchingLocal *this, int a2)
{
  int v2; // r3
  int v6; // r3
  int v7; // r6
  int v8; // r3
  _DWORD v9[7]; // [sp+0h] [bp-44h] BYREF
  char v10; // [sp+1Ch] [bp-28h]
  _BYTE v11[3]; // [sp+1Dh] [bp-27h] BYREF
  _DWORD v12[7]; // [sp+20h] [bp-24h] BYREF
  char v13; // [sp+3Ch] [bp-8h]
  _BYTE v14[7]; // [sp+3Dh] [bp-7h] BYREF

  v2 = *((unsigned __int8 *)this + 14);
  if ( !*((_BYTE *)this + 14) )
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[1] = 1;
    v12[5] = -1;
    v12[0] = &off_963700;
    v12[4] = -1;
    v12[6] = v2;
    v13 = v2;
    if ( v14[0] )
    {
      v14[0] = v2;
      NetStructMember::SetChanged((NetStructMember *)v12);
    }
    v6 = *((_DWORD *)this + 4820);
    v12[0] = &off_9636D0;
    (*(void (__fastcall **)(char *, _BYTE *))(v6 + 28))((char *)this + 19280, v14);
    v7 = a2 ^ 1;
    v12[0] = &off_963648;
    v9[1] = 1;
    v9[2] = 0;
    v9[3] = 0;
    v9[5] = -1;
    v10 = 0;
    v9[0] = &off_963700;
    v9[4] = -1;
    v9[6] = 0;
    if ( v11[0] != v7 )
    {
      v11[0] = v7;
      NetStructMember::SetChanged((NetStructMember *)v9);
    }
    v8 = *((_DWORD *)this + 4828);
    v9[0] = &off_9636D0;
    (*(void (__fastcall **)(char *, _BYTE *))(v8 + 28))((char *)this + 19312, v11);
    v9[0] = &off_963648;
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, nullptr, 0);
  }
  return 0;
}


// ===== 807240 tMatchingPeer::~tMatchingPeer() =====
void __fastcall tMatchingPeer::~tMatchingPeer(tMatchingPeer *this)
{
  char *v2; // r0
  size_t v3; // r1

  CRoomAttributes::~CRoomAttributes((tMatchingPeer *)((char *)this + 72));
  v2 = *((char **)this + 14);
  if ( v2 != (char *)this + 36 && v2 )
  {
    v3 = *((_DWORD *)this + 9) - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
  }
}


// ===== 807290 std::priv::_Rb_tree<ulong long,std::less<ulong long>,std::pair<ulong long const,tMatchingPeer>,std::priv::_Select1st<std::pair<ulong long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>,std::allocator<std::pair<ulong long const,tMatchingPeer>>>::erase(std::priv::_Rb_tree_iterator<std::pair<ulong long const,tMatchingPeer>,std::priv::_MapTraitsT<std::pair<ulong long const,tMatchingPeer>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  tMatchingPeer::~tMatchingPeer((tMatchingPeer *)(v3 + 24));
  if ( v3 )
    CustomFree(v3);
  --*(_DWORD *)(a1 + 16);
}


// ===== 8072d8 CMatchingLocal::RemoveServer(CNetworkId &) =====
int __fastcall CMatchingLocal::RemoveServer(pthread_mutex_t *this, CNetworkId *a2)
{
  char *v2; // r6
  pthread_mutex_t *v3; // r8
  int v6; // r5
  int v7; // r6
  int v8; // r4
  int v10; // r3
  int v11; // r2
  unsigned __int8 *v12; // [sp+4h] [bp-4h] BYREF

  v2 = (char *)(this + 4480);
  v3 = this + 4495;
  CNetMutex::Lock(this + 4495);
  v6 = *((_DWORD *)this + 4499);
  v7 = (int)(v2 + 68);
  if ( v7 == v6 )
    return CNetMutex::Unlock(v3);
  while ( 1 )
  {
    v8 = *(_DWORD *)(v6 + 12);
    if ( !v8 )
      break;
    while ( *(_DWORD *)(v8 + 8) )
      v8 = *(_DWORD *)(v8 + 8);
    if ( CNetworkId::IsEqual((unsigned __int16 *)(v6 + 28), (unsigned __int16 *)a2) )
      goto LABEL_16;
LABEL_7:
    v6 = v8;
    if ( v7 == v8 )
      return CNetMutex::Unlock(v3);
  }
  v10 = *(_DWORD *)(v6 + 4);
  if ( v6 == *(_DWORD *)(v10 + 12) )
  {
    do
    {
      v8 = v10;
      v10 = *(_DWORD *)(v10 + 4);
    }
    while ( *(_DWORD *)(v10 + 12) == v8 );
    v11 = *(_DWORD *)(v8 + 12);
  }
  else
  {
    v8 = v6;
    v11 = 0;
  }
  if ( v10 != v11 )
    v8 = v10;
  if ( !CNetworkId::IsEqual((unsigned __int16 *)(v6 + 28), (unsigned __int16 *)a2) )
    goto LABEL_7;
LABEL_16:
  v12 = (unsigned __int8 *)v6;
  std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::erase(
    v7,
    &v12);
  return CNetMutex::Unlock(v3);
}


// ===== 8073c4 CMatchingLocal::PurgeServers(void) =====
int __fastcall CMatchingLocal::PurgeServers(pthread_mutex_t *this)
{
  char *v1; // r6
  pthread_mutex_t *v2; // r10
  COnline *v4; // r0
  int v5; // r5
  int v6; // r6
  int v7; // r4
  int (__fastcall ***Online)(_DWORD); // r0
  int v10; // r3
  int v11; // r2
  unsigned __int8 *v12; // [sp+4h] [bp-8h] BYREF

  v1 = (char *)(this + 4480);
  v2 = this + 4495;
  v4 = (COnline *)CNetMutex::Lock(this + 4495);
  v5 = *((_DWORD *)this + 4499);
  v6 = (int)(v1 + 68);
  if ( v6 != v5 )
  {
    do
    {
      v7 = *(_DWORD *)(v5 + 12);
      if ( v7 )
      {
        while ( *(_DWORD *)(v7 + 8) )
          v7 = *(_DWORD *)(v7 + 8);
      }
      else
      {
        v10 = *(_DWORD *)(v5 + 4);
        if ( v5 == *(_DWORD *)(v10 + 12) )
        {
          do
          {
            v7 = v10;
            v10 = *(_DWORD *)(v10 + 4);
          }
          while ( *(_DWORD *)(v10 + 12) == v7 );
          v11 = *(_DWORD *)(v7 + 12);
        }
        else
        {
          v7 = v5;
          v11 = 0;
        }
        if ( v11 != v10 )
          v7 = v10;
      }
      Online = (int (__fastcall ***)(_DWORD))GetOnline(v4);
      v4 = (COnline *)(**Online)(Online);
      if ( (unsigned int)v4 - *(_DWORD *)(v5 + 56) > 0x4E20 )
      {
        v12 = (unsigned __int8 *)v5;
        std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::erase(
          v6,
          &v12);
      }
      v5 = v7;
    }
    while ( v6 != v7 );
  }
  return CNetMutex::Unlock(v2);
}


// ===== 8074a4 CMatchingLocal::Reset(void) =====
int __fastcall CMatchingLocal::Reset(pthread_mutex_t *this)
{
  bool v2; // zf
  int v3; // r3
  int v4; // r3
  int v5; // r2
  int v6; // r6
  int *v7; // r7
  int v8; // t1
  int v9; // r2
  int v10; // r6
  int *v11; // r7
  pthread_mutex_t *v12; // r10
  int v13; // r5
  int v14; // t1
  pthread_mutex_t *mutex; // [sp+2Ch] [bp-138h]
  int (__fastcall **v17)(NetStructMember *, NetBitStream *); // [sp+30h] [bp-134h] BYREF
  int v18; // [sp+50h] [bp-114h] BYREF
  _DWORD v19[7]; // [sp+70h] [bp-F4h] BYREF
  char v20; // [sp+8Ch] [bp-D8h]
  int v21; // [sp+90h] [bp-D4h] BYREF
  _DWORD v22[7]; // [sp+98h] [bp-CCh] BYREF
  char v23; // [sp+B4h] [bp-B0h]
  int v24; // [sp+B8h] [bp-ACh] BYREF
  _DWORD v25[7]; // [sp+C0h] [bp-A4h] BYREF
  char v26; // [sp+DCh] [bp-88h]
  int v27; // [sp+E0h] [bp-84h] BYREF
  _DWORD v28[7]; // [sp+E8h] [bp-7Ch] BYREF
  char v29; // [sp+104h] [bp-60h]
  char v30[3]; // [sp+105h] [bp-5Fh] BYREF
  _DWORD v31[2]; // [sp+108h] [bp-5Ch] BYREF
  __int64 v32; // [sp+110h] [bp-54h]
  int v33; // [sp+118h] [bp-4Ch]
  int v34; // [sp+11Ch] [bp-48h]
  int v35; // [sp+120h] [bp-44h]
  char v36; // [sp+124h] [bp-40h]
  char v37[3]; // [sp+125h] [bp-3Fh] BYREF
  _DWORD v38[7]; // [sp+128h] [bp-3Ch] BYREF
  _DWORD v39[8]; // [sp+144h] [bp-20h] BYREF

  v2 = v37[0] == 1;
  *((_DWORD *)this + 4503) = 0;
  *((_BYTE *)this + 13872) = 0;
  v32 = 0;
  v34 = -1;
  v36 = 0;
  v31[0] = &off_963700;
  v31[1] = 1;
  v33 = -1;
  v35 = 0;
  if ( !v2 )
  {
    v37[0] = 1;
    NetStructMember::SetChanged((NetStructMember *)v31);
  }
  v3 = *((_DWORD *)this + 4820);
  v31[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, char *))(v3 + 28))((char *)this + 19280, v37);
  v28[2] = 0;
  v28[3] = 0;
  v31[0] = &off_963648;
  v28[5] = -1;
  v29 = 0;
  v28[0] = &off_963700;
  v28[1] = 1;
  v28[4] = -1;
  v28[6] = 0;
  if ( v30[0] != 1 )
  {
    v30[0] = 1;
    NetStructMember::SetChanged((NetStructMember *)v28);
  }
  v28[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, char *))(*((_DWORD *)this + 4828) + 28))((char *)this + 19312, v30);
  v28[0] = &off_963648;
  v25[1] = 32;
  v25[2] = 0;
  v25[3] = 0;
  v25[5] = -1;
  v25[0] = &off_963618;
  v25[4] = -1;
  v25[6] = 0;
  v26 = 0;
  if ( v27 )
  {
    v27 = 0;
    NetStructMember::SetChanged((NetStructMember *)v25);
  }
  v4 = *((_DWORD *)this + 4846);
  v25[0] = &off_9635E8;
  (*(void (__fastcall **)(char *, int *))(v4 + 28))((char *)this + 19384, &v27);
  v5 = *((_DWORD *)this + 8121);
  *((_DWORD *)this + 3471) = -2;
  v25[0] = &off_963648;
  *((_DWORD *)this + 3470) = -1;
  if ( v5 > 0 )
  {
    v6 = 0;
    v7 = (int *)(this + 8198);
    do
    {
      v22[0] = &off_963618;
      v22[1] = 32;
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = -1;
      v22[5] = -1;
      v22[6] = 0;
      v23 = 0;
      if ( v24 != -3 )
      {
        v24 = -3;
        NetStructMember::SetChanged((NetStructMember *)v22);
      }
      v22[0] = &off_9635E8;
      v8 = *v7;
      v7 += 86;
      (*(void (__fastcall **)(char *, int *))(v8 + 28))((char *)this + 344 * v6++ + 32792, &v24);
      v9 = *((_DWORD *)this + 8121);
      v22[0] = &off_963648;
    }
    while ( v6 < v9 );
  }
  mutex = this + 4495;
  CNetMutex::Lock(this + 4495);
  if ( *((_DWORD *)this + 4501) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
      (int)(this + 4497),
      *((_DWORD *)this + 4498));
    *((_DWORD *)this + 4500) = this + 4497;
    *((_DWORD *)this + 4501) = 0;
    *((_DWORD *)this + 4499) = this + 4497;
    *((_DWORD *)this + 4498) = 0;
  }
  v10 = 0;
  v11 = (int *)(this + 4942);
  v12 = this;
  do
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[0] = &off_963618;
    v19[1] = 32;
    v19[4] = -1;
    v19[5] = -1;
    v19[6] = 0;
    v20 = 0;
    if ( v21 != -1 )
    {
      v21 = -1;
      NetStructMember::SetChanged((NetStructMember *)v19);
    }
    v13 = 408 * v10 + 19712;
    v19[0] = &off_9635E8;
    (*(void (__fastcall **)(pthread_mutex_t *, int *))(*(v11 - 10) + 28))(&v12[102 * v10++ + 4932], &v21);
    v19[0] = &off_963648;
    CNetworkId::Reset(v39);
    v38[0] = v39[0];
    v38[1] = v39[1];
    v38[2] = v39[2];
    v38[3] = v39[3];
    v38[4] = v39[4];
    v38[5] = v39[5];
    v38[6] = v39[6];
    NetStructMemberType<CNetworkId>::NetStructMemberType((int)&v17, (unsigned __int16 *)v38);
    v17 = off_992008;
    v14 = *v11;
    v11 += 102;
    (*(void (__fastcall **)(int, int *))(v14 + 28))((int)&v12[14] + v13, &v18);
    v17 = (int (__fastcall **)(NetStructMember *, NetBitStream *))&off_963648;
  }
  while ( v10 != 32 );
  return CNetMutex::Unlock(mutex);
}


// ===== 80795c CMatchingLocal::LeaveRoom(void) =====
int __fastcall CMatchingLocal::LeaveRoom(pthread_mutex_t *this)
{
  int v1; // r3
  pthread_mutex_t *v2; // r5
  CConnectionManager *ConnectionMgr; // r0

  v1 = *((_DWORD *)this + 3470);
  v2 = this;
  if ( v1 >= 0 && v1 == *((_DWORD *)this + 3471) )
    this = (pthread_mutex_t *)CMatchingLocal::SendServerResponse((CMatchingLocal *)this, 1);
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr((CConnectionManager *)this);
  CConnectionManager::DisconnectAll(ConnectionMgr);
  CMatchingLocal::Reset(v2);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388612, nullptr, 0);
  return 0;
}


// ===== 8079d4 CMatchingLocal::CreateJoinRoomInternal(bool,CRoomAttributes &) =====
int __fastcall CMatchingLocal::CreateJoinRoomInternal(CMatchingLocal *this, int a2, CRoomAttributes *a3)
{
  int v7; // r0
  int MemberIndex; // r0
  int v9; // r3
  int v10; // r8
  int v11; // r8
  int v12; // r7
  char *v13; // r8
  int TransportMgr; // r0
  int (__fastcall **v15)(NetStructMember *, NetBitStream *); // [sp+0h] [bp-A4h] BYREF
  _BYTE v16[32]; // [sp+20h] [bp-84h] BYREF
  _DWORD v17[7]; // [sp+40h] [bp-64h] BYREF
  char v18; // [sp+5Ch] [bp-48h]
  int v19; // [sp+60h] [bp-44h] BYREF
  _DWORD v20[7]; // [sp+68h] [bp-3Ch] BYREF
  _DWORD v21[8]; // [sp+84h] [bp-20h] BYREF

  if ( !*((_BYTE *)this + 12) )
    return -1;
  CMatchingLocal::Reset((pthread_mutex_t *)this);
  *((_BYTE *)this + 13872) = 1;
  v7 = (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 172))(this);
  *((_DWORD *)this + 3471) = v7;
  *((_DWORD *)this + 3470) = v7;
  *((_BYTE *)this + 13) = 0;
  (*(void (__fastcall **)(CMatchingLocal *, int))(*(_DWORD *)this + 68))(this, a2);
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388611, nullptr, 0);
  CRoomAttributes::operator=((char *)this + 18016, a3);
  MemberIndex = CMatching::GetMemberIndex(this, *((_DWORD *)this + 3470));
  v9 = *((_DWORD *)this + 3470);
  v10 = MemberIndex;
  v18 = 0;
  v17[6] = 0;
  v17[1] = 32;
  v17[2] = 0;
  v17[3] = 0;
  v17[5] = -1;
  v17[0] = &off_963618;
  v17[4] = -1;
  if ( v9 != v19 )
  {
    v19 = v9;
    NetStructMember::SetChanged((NetStructMember *)v17);
  }
  v11 = 408 * v10;
  v12 = v11 + 19712;
  v17[0] = &off_9635E8;
  v13 = (char *)this + v11;
  (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v13 + 4932) + 28))((char *)this + v12 + 16, &v19);
  v17[0] = &off_963648;
  TransportMgr = GetTransportMgr();
  CTransportManager::GetListenNetworkId(v21, TransportMgr, 0);
  v20[0] = v21[0];
  v20[1] = v21[1];
  v20[2] = v21[2];
  v20[3] = v21[3];
  v20[4] = v21[4];
  v20[5] = v21[5];
  v20[6] = v21[6];
  NetStructMemberType<CNetworkId>::NetStructMemberType((int)&v15, (unsigned __int16 *)v20);
  v15 = off_992008;
  (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)v13 + 4942) + 28))((char *)this + v12 + 56, v16);
  v15 = (int (__fastcall **)(NetStructMember *, NetBitStream *))&off_963648;
  if ( !(*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 88))(this) )
    CMatchingLocal::SendServerResponse(this, 0);
  return 0;
}


// ===== 807bec CMatchingLocal::SearchRoomInternal(CRoomSearchFilter &,bool,uchar) =====
int __fastcall CMatchingLocal::SearchRoomInternal(
        CMatchingLocal *this,
        CRoomSearchFilter *a2,
        bool a3,
        unsigned __int8 a4)
{
  int result; // r0

  if ( !*((_BYTE *)this + 12) )
    return -1;
  CMatchingLocal::Reset((pthread_mutex_t *)this);
  CRoomSearchFilter::operator=((char *)this + 18936, a2);
  result = *((_DWORD *)this + 4501);
  *((_BYTE *)this + 13872) = 1;
  if ( result )
  {
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
    return 0;
  }
  return result;
}


// ===== 807c70 CMatchingLocal::Initialize(int) =====
int __fastcall CMatchingLocal::Initialize(CMatchingLocal *this, int a2)
{
  int v3; // r5

  CMatching::Initialize(this, a2);
  v3 = *((unsigned __int8 *)this + 12);
  if ( !*((_BYTE *)this + 12) )
  {
    CConnectionManager::RegisterPacketType(2, 2, (int)CMatchingLocal::sBroadcastPacketReceiverCallback);
    CConnectionManager::RegisterPacketType(3, 1, (int)CMatchingLocal::sBroadcastPacketReceiverCallback);
    CConnectionManager::RegisterPacketType(4, 1, (int)CMatchingLocal::sPacketReceiverCallback);
    CMatchingLocal::Reset((pthread_mutex_t *)this);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388609, (void *)v3, v3);
  }
  return 0;
}


// ===== 807d08 CMatchingLocal::CMatchingLocal(void) =====
void __fastcall CMatchingLocal::CMatchingLocal(CMatchingLocal *this)
{
  int v2; // r4
  CMatchingLocal::MemberInfoNetStruct *v3; // r0
  int v4; // r4
  CMatchingLocal::ServerBackupNetStruct *v5; // r0

  CMatching::CMatching(this);
  *((_DWORD *)this + 3469) = 1;
  *((_DWORD *)this + 3470) = -1;
  *((_DWORD *)this + 3471) = -2;
  v2 = 0;
  *(_DWORD *)this = &off_992238;
  *((_BYTE *)this + 13872) = 0;
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17976));
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17980));
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17984));
  *((_DWORD *)this + 4500) = (char *)this + 17988;
  *((_DWORD *)this + 4498) = 0;
  *((_BYTE *)this + 17988) = 0;
  *((_DWORD *)this + 4499) = (char *)this + 17988;
  *((_DWORD *)this + 4501) = 0;
  *((_DWORD *)this + 4503) = 0;
  CRoomAttributes::CRoomAttributes((CMatchingLocal *)((char *)this + 18016));
  CRoomSearchFilter::CRoomSearchFilter((CMatchingLocal *)((char *)this + 18936));
  CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct((CMatchingLocal *)((char *)this + 18976));
  do
  {
    v3 = (CMatchingLocal *)((char *)this + v2 + 19424);
    v2 += 408;
    CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct(v3);
  }
  while ( v2 != 13056 );
  v4 = 0;
  *((_DWORD *)this + 8120) = off_992128;
  *((_DWORD *)this + 8121) = 32;
  do
  {
    v5 = (CMatchingLocal *)((char *)this + v4 + 32488);
    v4 += 344;
    CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct(v5);
  }
  while ( v4 != 11008 );
  CMatchingLocal::Reset((pthread_mutex_t *)this);
}


// ===== 807e44 CMatchingLocal::CMatchingLocal(void) =====
void __fastcall CMatchingLocal::CMatchingLocal(CMatchingLocal *this)
{
  int v2; // r4
  CMatchingLocal::MemberInfoNetStruct *v3; // r0
  int v4; // r4
  CMatchingLocal::ServerBackupNetStruct *v5; // r0

  CMatching::CMatching(this);
  *((_DWORD *)this + 3469) = 1;
  *((_DWORD *)this + 3470) = -1;
  *((_DWORD *)this + 3471) = -2;
  v2 = 0;
  *(_DWORD *)this = &off_992238;
  *((_BYTE *)this + 13872) = 0;
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17976));
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17980));
  CNetMutex::CNetMutex((CMatchingLocal *)((char *)this + 17984));
  *((_DWORD *)this + 4500) = (char *)this + 17988;
  *((_DWORD *)this + 4498) = 0;
  *((_BYTE *)this + 17988) = 0;
  *((_DWORD *)this + 4499) = (char *)this + 17988;
  *((_DWORD *)this + 4501) = 0;
  *((_DWORD *)this + 4503) = 0;
  CRoomAttributes::CRoomAttributes((CMatchingLocal *)((char *)this + 18016));
  CRoomSearchFilter::CRoomSearchFilter((CMatchingLocal *)((char *)this + 18936));
  CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct((CMatchingLocal *)((char *)this + 18976));
  do
  {
    v3 = (CMatchingLocal *)((char *)this + v2 + 19424);
    v2 += 408;
    CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct(v3);
  }
  while ( v2 != 13056 );
  v4 = 0;
  *((_DWORD *)this + 8120) = off_992128;
  *((_DWORD *)this + 8121) = 32;
  do
  {
    v5 = (CMatchingLocal *)((char *)this + v4 + 32488);
    v4 += 344;
    CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct(v5);
  }
  while ( v4 != 11008 );
  CMatchingLocal::Reset((pthread_mutex_t *)this);
}


// ===== 807f80 CMatchingLocal::~CMatchingLocal() =====
void __fastcall CMatchingLocal::~CMatchingLocal(CMatchingLocal *this)
{
  char *v2; // r6
  char *v3; // r5
  void (__fastcall **v4)(char *); // t1
  CMatchingLocal *v5; // r5
  void (__fastcall **v6)(CMatchingLocal *); // t1

  v2 = (char *)this + 32488;
  *((_DWORD *)this + 8120) = off_992128;
  v3 = (char *)this + 43496;
  *(_DWORD *)this = &off_992238;
  do
  {
    v4 = *((void (__fastcall ***)(char *))v3 - 86);
    v3 -= 344;
    (*v4)(v3);
  }
  while ( v3 != v2 );
  v5 = (CMatchingLocal *)((char *)this + 32480);
  do
  {
    v6 = *((void (__fastcall ***)(CMatchingLocal *))v5 - 102);
    v5 = (CMatchingLocal *)((char *)v5 - 408);
    (*v6)(v5);
  }
  while ( v5 != (CMatchingLocal *)((char *)this + 19424) );
  CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct((CMatchingLocal *)((char *)this + 18976));
  CRoomSearchFilter::~CRoomSearchFilter((CMatchingLocal *)((char *)this + 18936));
  CRoomAttributes::~CRoomAttributes((CMatchingLocal *)((char *)this + 18016));
  if ( *((_DWORD *)this + 4501) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
      (int)this + 17988,
      *((_DWORD *)this + 4498));
    *((_DWORD *)this + 4500) = (char *)this + 17988;
    *((_DWORD *)this + 4501) = 0;
    *((_DWORD *)this + 4499) = (char *)this + 17988;
    *((_DWORD *)this + 4498) = 0;
  }
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17984));
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17980));
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17976));
  CMatching::~CMatching(this);
}


// ===== 808094 CMatchingLocal::~CMatchingLocal() =====
void __fastcall CMatchingLocal::~CMatchingLocal(CMatchingLocal *this)
{
  CMatchingLocal::~CMatchingLocal(this);
  CustomFree(this);
}


// ===== 8080b0 CMatchingLocal::~CMatchingLocal() =====
void __fastcall CMatchingLocal::~CMatchingLocal(CMatchingLocal *this)
{
  char *v2; // r6
  char *v3; // r5
  void (__fastcall **v4)(char *); // t1
  CMatchingLocal *v5; // r5
  void (__fastcall **v6)(CMatchingLocal *); // t1

  v2 = (char *)this + 32488;
  *((_DWORD *)this + 8120) = off_992128;
  v3 = (char *)this + 43496;
  *(_DWORD *)this = &off_992238;
  do
  {
    v4 = *((void (__fastcall ***)(char *))v3 - 86);
    v3 -= 344;
    (*v4)(v3);
  }
  while ( v3 != v2 );
  v5 = (CMatchingLocal *)((char *)this + 32480);
  do
  {
    v6 = *((void (__fastcall ***)(CMatchingLocal *))v5 - 102);
    v5 = (CMatchingLocal *)((char *)v5 - 408);
    (*v6)(v5);
  }
  while ( v5 != (CMatchingLocal *)((char *)this + 19424) );
  CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct((CMatchingLocal *)((char *)this + 18976));
  CRoomSearchFilter::~CRoomSearchFilter((CMatchingLocal *)((char *)this + 18936));
  CRoomAttributes::~CRoomAttributes((CMatchingLocal *)((char *)this + 18016));
  if ( *((_DWORD *)this + 4501) )
  {
    std::priv::_Rb_tree<unsigned long long,std::less<unsigned long long>,std::pair<unsigned long long const,tMatchingPeer>,std::priv::_Select1st<std::pair<unsigned long long const,tMatchingPeer>>,std::priv::_MapTraitsT<std::pair<unsigned long long const,tMatchingPeer>>,std::allocator<std::pair<unsigned long long const,tMatchingPeer>>>::_M_erase(
      (int)this + 17988,
      *((_DWORD *)this + 4498));
    *((_DWORD *)this + 4500) = (char *)this + 17988;
    *((_DWORD *)this + 4501) = 0;
    *((_DWORD *)this + 4499) = (char *)this + 17988;
    *((_DWORD *)this + 4498) = 0;
  }
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17984));
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17980));
  CNetMutex::~CNetMutex((CMatchingLocal *)((char *)this + 17976));
  CMatching::~CMatching(this);
}


// ===== 8081c4 tMatchingPeer::tMatchingPeer(void) =====
void __fastcall tMatchingPeer::tMatchingPeer(tMatchingPeer *this)
{
  CNetworkId::Reset((_DWORD *)this + 1);
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 9, 0x10u);
  **((_BYTE **)this + 13) = 0;
  CRoomAttributes::CRoomAttributes((tMatchingPeer *)((char *)this + 72));
}


// ===== 808208 tMatchingPeer::tMatchingPeer(tMatchingPeer const&) =====
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
  int v12; // r3

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
  v12 = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 52) = a1 + 36;
  *(_DWORD *)(a1 + 32) = v12;
  *(_DWORD *)(a1 + 56) = a1 + 36;
  std::string::_M_range_initialize((std::string *)(a1 + 36), *(const char **)(a2 + 56), *(const char **)(a2 + 52));
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 64) = *(_DWORD *)(a2 + 64);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)(a1 + 72), (const CRoomAttributes *)(a2 + 72));
  return a1;
}


// ===== 808278 std::vector<tRoomInfo,std::allocator<tRoomInfo>>::push_back(tRoomInfo const&) =====
void __fastcall std::vector<tRoomInfo>::push_back(int *a1, int a2)
{
  int v3; // r5
  int v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  char *v8; // r0
  int v9; // r9
  int v10; // r5
  char *v11; // r10
  int v12; // r5
  int v13; // r8
  int v14; // r7
  char *v15; // r3
  unsigned int v16; // [sp+4h] [bp-4h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  if ( v4 == v3 )
  {
    v6 = 1455319497 * ((v3 - *a1) >> 3);
    if ( v6 )
      v7 = -1384328302 * ((v3 - *a1) >> 3);
    else
      v7 = 1;
    if ( v7 > (unsigned int)&loc_43B3D4 || v6 > v7 )
      v7 = 4436949;
    v16 = v7;
    v8 = (char *)std::allocator<tRoomInfo>::_M_allocate((int)(a1 + 2), v7, &v16);
    v9 = *a1;
    v10 = 1455319497 * ((v3 - *a1) >> 3);
    v11 = v8;
    if ( v10 > 0 )
    {
      v13 = v10;
      v14 = 0;
      do
      {
        tRoomInfo::tRoomInfo((int)&v11[v14], v9 + v14);
        --v13;
        v14 += 968;
      }
      while ( v13 );
      v12 = (int)&v11[968 * v10];
    }
    else
    {
      v12 = (int)v8;
    }
    tRoomInfo::tRoomInfo(v12, a2);
    std::vector<tRoomInfo>::_M_clear_after_move(a1);
    v15 = &v11[968 * v16];
    *a1 = (int)v11;
    a1[2] = (int)v15;
    a1[1] = v12 + 968;
  }
  else
  {
    tRoomInfo::tRoomInfo(v4, a2);
    a1[1] += 968;
  }
}


// ===== 80838c CMatchingLocal::GetRoomList(void) =====
CMatchingLocal *__fastcall CMatchingLocal::GetRoomList(CMatchingLocal *this, pthread_mutex_t *a2)
{
  pthread_mutex_t *v2; // r9
  int v3; // r3
  volatile int value; // r4
  pthread_mutex_t *v7; // r9
  volatile int v8; // r2
  volatile int v10; // r3
  pthread_mutex_t *mutex; // [sp+0h] [bp-3DCh]
  __int64 v12; // [sp+8h] [bp-3D4h] BYREF
  std::string v13; // [sp+10h] [bp-3CCh] BYREF
  int v14; // [sp+28h] [bp-3B4h]
  _DWORD v15[234]; // [sp+30h] [bp-3ACh] BYREF

  v2 = a2 + 4480;
  v3 = _stack_chk_guard;
  mutex = a2 + 4495;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v15[233] = v3;
  CNetMutex::Lock(a2 + 4495);
  value = a2[4499].value;
  v7 = v2 + 17;
  while ( v7 != (pthread_mutex_t *)value )
  {
    while ( 1 )
    {
      LC_API_MEMSET_0(&v12, 0, 0x3C4u);
      v12 = *(_QWORD *)(value + 16);
      v13._M_finish = (char *)&v13;
      v13._M_start_of_storage._M_data = (char *)&v13;
      std::string::_M_range_initialize(&v13, *(const char **)(value + 80), *(const char **)(value + 76));
      v14 = *(_DWORD *)(value + 84);
      CRoomAttributes::CRoomAttributes((CRoomAttributes *)v15, (const CRoomAttributes *)(value + 96));
      v15[230] = *(_DWORD *)(value + 88);
      std::vector<tRoomInfo>::push_back((int *)this, (int)&v12);
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v15);
      if ( (std::string *)v13._M_start_of_storage._M_data != &v13 )
      {
        if ( v13._M_start_of_storage._M_data )
          break;
      }
LABEL_7:
      v8 = *(_DWORD *)(value + 12);
      if ( !v8 )
        goto LABEL_14;
LABEL_10:
      while ( *(_DWORD *)(v8 + 8) )
        v8 = *(_DWORD *)(v8 + 8);
      value = v8;
      if ( v7 == (pthread_mutex_t *)v8 )
        goto LABEL_12;
    }
    if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) <= 0x80 )
    {
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        v13._M_start_of_storage._M_data,
        v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
      goto LABEL_7;
    }
    CustomFree(v13._M_start_of_storage._M_data);
    v8 = *(_DWORD *)(value + 12);
    if ( v8 )
      goto LABEL_10;
LABEL_14:
    v10 = *(_DWORD *)(value + 4);
    if ( value == *(_DWORD *)(v10 + 12) )
    {
      do
      {
        value = v10;
        v10 = *(_DWORD *)(v10 + 4);
      }
      while ( *(_DWORD *)(v10 + 12) == value );
      v8 = *(_DWORD *)(value + 12);
    }
    if ( v10 != v8 )
      value = v10;
  }
LABEL_12:
  CNetMutex::Unlock(mutex);
  return this;
}


// ===== 808538 CMatchingLocal::GetMemberName(int) =====
std::string *__fastcall CMatchingLocal::GetMemberName(std::string *this, int a2, int a3)
{
  CConnectionManager *v5; // r0
  CConnectionManager *ConnectionMgr; // r0
  int v7; // r0
  const char *v8; // r1
  const char *v9; // r3
  char *v10; // r0
  unsigned int v11; // r0
  const char *v12; // r2
  int TransportMgr; // r0
  _BYTE v15[28]; // [sp+0h] [bp-40h] BYREF
  char v16[4]; // [sp+1Ch] [bp-24h] BYREF
  _DWORD v17[4]; // [sp+24h] [bp-1Ch] BYREF
  char *v18; // [sp+34h] [bp-Ch]
  void *__p; // [sp+38h] [bp-8h]

  v5 = (CConnectionManager *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 108))(a2);
  if ( v5 == (CConnectionManager *)a3 )
  {
    TransportMgr = GetTransportMgr();
    (*(void (__fastcall **)(std::string *, int))(*(_DWORD *)TransportMgr + 32))(this, TransportMgr);
    return this;
  }
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v5);
  CConnectionManager::GetMemberNetworkId((CConnectionManager *)v15, ConnectionMgr, a3);
  v7 = GetTransportMgr();
  (*(void (__fastcall **)(_DWORD *, int, _BYTE *))(*(_DWORD *)v7 + 28))(v17, v7, v15);
  v8 = v18;
  v9 = (const char *)__p;
  if ( v18 == __p )
    goto LABEL_14;
  v16[0] = 46;
  v10 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>((char *)__p, (int)v18, v16);
  v8 = v18;
  if ( v10 == v18 )
  {
    v9 = (const char *)__p;
LABEL_14:
    v11 = -1;
    goto LABEL_6;
  }
  v9 = (const char *)__p;
  v11 = v10 - (_BYTE *)__p;
LABEL_6:
  if ( v11 > v8 - v9 )
    v12 = v8;
  else
    v12 = &v9[v11];
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, v9, v12);
  if ( __p != v17 && __p )
  {
    if ( (unsigned int)(v17[0] - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p, v17[0] - (_DWORD)__p);
  }
  return this;
}


// ===== 808694 CMatchingLocal::GetSearchRoomAttributes(ulong long) =====
CMatchingLocal *__fastcall CMatchingLocal::GetSearchRoomAttributes(CMatchingLocal *this, int a2, unsigned __int64 a3)
{
  _DWORD *v3; // r12
  _DWORD *v5; // r1
  _DWORD *v6; // r2
  _DWORD *v7; // r3
  int v8; // r0
  unsigned __int64 v10; // [sp+0h] [bp-8h] BYREF

  v3 = *(_DWORD **)(a2 + 17992);
  v10 = a3;
  v5 = (_DWORD *)(a2 + 17988);
  if ( !v3 )
  {
LABEL_9:
    v3 = v5;
    goto LABEL_10;
  }
  v6 = v5;
  while ( *((_QWORD *)v3 + 2) >= v10 )
  {
    v7 = (_DWORD *)v3[2];
    v6 = v3;
    if ( !v7 )
      goto LABEL_7;
LABEL_4:
    v3 = v7;
  }
  v7 = (_DWORD *)v3[3];
  v3 = v6;
  if ( v7 )
    goto LABEL_4;
LABEL_7:
  if ( v5 == v3 )
    goto LABEL_15;
  if ( *((_QWORD *)v3 + 2) > v10 )
    goto LABEL_9;
LABEL_10:
  if ( v5 == v3 )
  {
LABEL_15:
    CRoomAttributes::CRoomAttributes(this);
  }
  else
  {
    v8 = std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v5, &v10);
    CRoomAttributes::CRoomAttributes(this, (const CRoomAttributes *)(v8 + 72));
  }
  return this;
}


// ===== 808774 CMatchingLocal::JoinRoomInternal(ulong long) =====
int __fastcall CMatchingLocal::JoinRoomInternal(pthread_mutex_t *this, unsigned __int64 a2)
{
  char *v3; // r7
  pthread_mutex_t *v4; // r5
  _DWORD *v6; // r3
  _DWORD *v7; // r7
  _DWORD *v8; // r1
  _DWORD *v9; // r2
  CConnectionManager *v11; // r0
  CConnectionManager *ConnectionMgr; // r6
  int v13; // r8
  int v14; // r0
  unsigned __int64 v15; // [sp+0h] [bp-8h] BYREF

  v3 = (char *)(this + 4480);
  v4 = this + 4495;
  v15 = a2;
  CNetMutex::Lock(this + 4495);
  v6 = *((_DWORD **)this + 4498);
  v7 = v3 + 68;
  if ( !v6 )
  {
LABEL_9:
    v6 = v7;
    goto LABEL_10;
  }
  v8 = v7;
  while ( *((_QWORD *)v6 + 2) >= v15 )
  {
    v9 = (_DWORD *)v6[2];
    v8 = v6;
    if ( !v9 )
      goto LABEL_7;
LABEL_4:
    v6 = v9;
  }
  v9 = (_DWORD *)v6[3];
  v6 = v8;
  if ( v9 )
    goto LABEL_4;
LABEL_7:
  if ( v7 == v6 )
    goto LABEL_17;
  if ( *((_QWORD *)v6 + 2) > v15 )
    goto LABEL_9;
LABEL_10:
  if ( v7 == v6 )
  {
LABEL_17:
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388620, nullptr, 0);
  }
  else if ( *(_DWORD *)(std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v7, &v15) + 60) < *((_DWORD *)this + 2) )
  {
    v11 = (CConnectionManager *)std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v7, &v15);
    *(this + 3471) = *(pthread_mutex_t *)v11;
    ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v11);
    v13 = *(_DWORD *)std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v7, &v15);
    v14 = std::map<unsigned long long,tMatchingPeer>::operator[]<unsigned long long>(v7, &v15);
    CConnectionManager::Connect(ConnectionMgr, v13, (CNetworkId *)(v14 + 4));
    *((_BYTE *)this + 13872) = 0;
  }
  else
  {
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388621, nullptr, 0);
  }
  CNetMutex::Unlock(v4);
  return 0;
}


// ===== 80890c CMatchingLocal::Update(void) =====
int __fastcall CMatchingLocal::Update(CMatchingLocal *this)
{
  CConnectionManager *v2; // r0
  CConnectionManager *ConnectionMgr; // r0
  CConnectionManager *ConnectionCount; // r0
  int v6; // r2
  CConnectionManager *v7; // r0
  CConnectionManager *v8; // r7
  int *v9; // r6
  CConnectionManager *v10; // r0
  int v11; // r3
  bool v12; // zf
  int v13; // r3
  int v14; // r3
  int v15; // r1
  int v16; // lr
  int v17; // r3
  size_t v18; // r1
  pthread_mutex_t *v19; // r0
  CConnectionManager *HasEventOccured; // r0
  int v21; // r3
  int *v22; // r6
  int i; // r7
  int v24; // r9
  char *v25; // r0
  CConnectionManager *v26; // r0
  CConnectionManager *v27; // r0
  CConnectionManager *v28; // r0
  int v29; // r3
  void *v30; // r7
  pthread_mutex_t *v31; // r0
  CConnectionManager *EventData; // r0
  int v33; // r1
  int MemberIndex; // r0
  int v35; // r3
  int v36; // r6
  int v37; // r10
  int v38; // r6
  char *v39; // r10
  int TransportMgr; // r0
  pthread_mutex_t *v41; // r0
  int (__fastcall ***Online)(_DWORD); // r0
  int v43; // r0
  int v44; // r1
  int v45; // r2
  __int64 v46; // kr00_8
  int v47; // r0
  COnline *v48; // r0
  int (__fastcall ***v49)(_DWORD); // r0
  CConnectionManager *v50; // r0
  int v51; // r0
  unsigned int v52; // r6
  char *v53; // r8
  int v54; // r12
  int v55; // r6
  int *v56; // r8
  int v57; // t1
  int v58; // r2
  char v59; // r0
  int (__fastcall **v60)(NetStructMember *, NetBitStream *); // [sp+20h] [bp-1ACh] BYREF
  int v61; // [sp+40h] [bp-18Ch] BYREF
  _DWORD v62[2]; // [sp+60h] [bp-16Ch] BYREF
  __int64 v63; // [sp+68h] [bp-164h]
  int v64; // [sp+70h] [bp-15Ch]
  int v65; // [sp+74h] [bp-158h]
  int v66; // [sp+78h] [bp-154h]
  char v67; // [sp+7Ch] [bp-150h]
  int v68; // [sp+80h] [bp-14Ch] BYREF
  _DWORD v69[2]; // [sp+88h] [bp-144h] BYREF
  __int64 v70; // [sp+90h] [bp-13Ch]
  int v71; // [sp+98h] [bp-134h]
  int v72; // [sp+9Ch] [bp-130h]
  int v73; // [sp+A0h] [bp-12Ch]
  char v74; // [sp+A4h] [bp-128h]
  int v75; // [sp+A8h] [bp-124h] BYREF
  _DWORD v76[2]; // [sp+B0h] [bp-11Ch] BYREF
  __int64 v77; // [sp+B8h] [bp-114h]
  int v78; // [sp+C0h] [bp-10Ch]
  int v79; // [sp+C4h] [bp-108h]
  int v80; // [sp+C8h] [bp-104h]
  char v81; // [sp+CCh] [bp-100h]
  int v82; // [sp+D0h] [bp-FCh] BYREF
  _DWORD v83[7]; // [sp+D8h] [bp-F4h] BYREF
  char v84; // [sp+F4h] [bp-D8h]
  int v85; // [sp+F8h] [bp-D4h] BYREF
  _DWORD v86[2]; // [sp+100h] [bp-CCh] BYREF
  __int64 v87; // [sp+108h] [bp-C4h]
  int v88; // [sp+110h] [bp-BCh]
  int v89; // [sp+114h] [bp-B8h]
  int v90; // [sp+118h] [bp-B4h]
  char v91; // [sp+11Ch] [bp-B0h]
  _BYTE v92[3]; // [sp+11Dh] [bp-AFh] BYREF
  _DWORD v93[2]; // [sp+120h] [bp-ACh] BYREF
  __int64 v94; // [sp+128h] [bp-A4h]
  int v95; // [sp+130h] [bp-9Ch]
  int v96; // [sp+134h] [bp-98h]
  int v97; // [sp+138h] [bp-94h]
  char v98; // [sp+13Ch] [bp-90h]
  _BYTE v99[3]; // [sp+13Dh] [bp-8Fh] BYREF
  _DWORD v100[2]; // [sp+140h] [bp-8Ch] BYREF
  __int64 v101; // [sp+148h] [bp-84h]
  int v102; // [sp+150h] [bp-7Ch]
  int v103; // [sp+154h] [bp-78h]
  int v104; // [sp+158h] [bp-74h]
  char v105; // [sp+15Ch] [bp-70h]
  _BYTE v106[3]; // [sp+15Dh] [bp-6Fh] BYREF
  _DWORD v107[2]; // [sp+160h] [bp-6Ch] BYREF
  __int64 v108; // [sp+168h] [bp-64h]
  int v109; // [sp+170h] [bp-5Ch]
  int v110; // [sp+174h] [bp-58h]
  int v111; // [sp+178h] [bp-54h]
  char v112; // [sp+17Ch] [bp-50h]
  _BYTE v113[3]; // [sp+17Dh] [bp-4Fh] BYREF
  _DWORD v114[7]; // [sp+180h] [bp-4Ch] BYREF
  _DWORD v115[7]; // [sp+19Ch] [bp-30h] BYREF
  void *__p[3]; // [sp+1B8h] [bp-14h] BYREF
  int v117; // [sp+1C4h] [bp-8h] BYREF

  v2 = (CConnectionManager *)CMatching::Update(this);
  if ( !*((_BYTE *)this + 12) )
    return -1;
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v2);
  ConnectionCount = (CConnectionManager *)CConnectionManager::GetConnectionCount(ConnectionMgr, 0);
  if ( ConnectionCount )
  {
    ConnectionCount = (CConnectionManager *)(elf_hash_bucket + 13152);
    v6 = *((_DWORD *)this + 3470);
  }
  else
  {
    v15 = *((_DWORD *)this + 3470);
    if ( v15 < 0 )
      goto LABEL_7;
    ConnectionCount = (CConnectionManager *)(elf_hash_bucket + 13664);
    v6 = *((_DWORD *)this + 3471);
    if ( v15 != v6 )
    {
      v16 = v113[0];
      *((_DWORD *)this + 3471) = v15;
      v107[1] = 1;
      v108 = 0;
      v110 = -1;
      v107[0] = &off_963700;
      v109 = -1;
      v111 = 0;
      v112 = 0;
      if ( v16 )
      {
        v113[0] = 0;
        NetStructMember::SetChanged((NetStructMember *)v107);
      }
      v17 = *((_DWORD *)this + 4820);
      v107[0] = &off_9636D0;
      (*(void (__fastcall **)(char *, _BYTE *))(v17 + 28))((char *)this + 19280, v113);
      v107[0] = &off_963648;
      v101 = 0;
      v100[1] = 1;
      v103 = -1;
      v100[0] = &off_963700;
      v102 = -1;
      v104 = 0;
      v105 = 0;
      if ( v106[0] )
      {
        v106[0] = 0;
        NetStructMember::SetChanged((NetStructMember *)v100);
      }
      v100[0] = &off_9636D0;
      (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 4828) + 28))((char *)this + 19312, v106);
      v100[0] = &off_963648;
      CMatchingLocal::SendChangeServerMessage(this);
      ConnectionCount = (CConnectionManager *)CEventQueueBase::AddEvent(
                                                (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                                8388619,
                                                (char *)this + 13884,
                                                4);
      v6 = *((_DWORD *)this + 3470);
    }
  }
  if ( v6 >= 0 && *((_DWORD *)this + 3471) == v6 )
  {
    v50 = (CConnectionManager *)GetConnectionMgr(ConnectionCount);
    ConnectionCount = (CConnectionManager *)CConnectionManager::GetConnectionCount(v50, 0);
    if ( (int)ConnectionCount <= 0 )
    {
      if ( *((int *)this + 8121) > 0 )
      {
        v55 = 0;
        v56 = (int *)((char *)this + 32792);
        do
        {
          v69[0] = &off_963618;
          v69[1] = 32;
          v71 = -1;
          v70 = 0;
          v72 = -1;
          v73 = 0;
          v74 = 0;
          if ( v75 != -3 )
          {
            v75 = -3;
            NetStructMember::SetChanged((NetStructMember *)v69);
          }
          v69[0] = &off_9635E8;
          v57 = *v56;
          v56 += 86;
          ConnectionCount = (CConnectionManager *)(*(int (__fastcall **)(char *, int *))(v57 + 28))(
                                                    (char *)this + 344 * v55 + 32792,
                                                    &v75);
          v58 = *((_DWORD *)this + 8121);
          ++v55;
          v69[0] = &off_963648;
        }
        while ( v55 < v58 );
      }
    }
    else
    {
      v51 = GetConnectionMgr(ConnectionCount);
      CConnectionManager::GetConnMemberIdList((CConnectionManager *)__p, v51, 1);
      if ( *((int *)this + 8121) > 0 )
      {
        v52 = 0;
        v53 = (char *)this + 32792;
        do
        {
          if ( v52 < ((char *)__p[1] - (char *)__p[0]) >> 2 )
          {
            v54 = *((_DWORD *)__p[0] + v52);
            v83[0] = &off_963618;
            v83[1] = 32;
            v83[2] = 0;
            v83[3] = 0;
            v83[4] = -1;
            v83[5] = -1;
            v83[6] = 0;
            v84 = 0;
            if ( v54 != v85 )
            {
              v85 = v54;
              NetStructMember::SetChanged((NetStructMember *)v83);
            }
            v83[0] = &off_9635E8;
            (*(void (__fastcall **)(char *, int *))(*(_DWORD *)v53 + 28))((char *)this + 344 * v52 + 32792, &v85);
            v83[0] = &off_963648;
          }
          else
          {
            v76[0] = &off_963618;
            v76[1] = 32;
            v77 = 0;
            v78 = -1;
            v79 = -1;
            v80 = 0;
            v81 = 0;
            if ( v82 != -3 )
            {
              v82 = -3;
              NetStructMember::SetChanged((NetStructMember *)v76);
            }
            v76[0] = &off_9635E8;
            (*(void (__fastcall **)(char *, int *))(*(_DWORD *)v53 + 28))((char *)this + 344 * v52 + 32792, &v82);
            v76[0] = &off_963648;
          }
          ++v52;
          v53 += 344;
        }
        while ( (signed int)v52 < *((_DWORD *)this + 8121) );
      }
      ConnectionCount = (CConnectionManager *)__p[0];
      if ( __p[0] )
      {
        v18 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
        if ( v18 > 0x80 )
          CustomFree(__p[0]);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p[0], v18);
      }
    }
    goto LABEL_30;
  }
LABEL_7:
  if ( *((_BYTE *)this + 13872) )
  {
    Online = (int (__fastcall ***)(_DWORD))GetOnline(ConnectionCount);
    v43 = (**Online)(Online);
    v44 = *((_DWORD *)this + 4503);
    v45 = *((_DWORD *)this + 4501);
    v46 = 274877907LL * (unsigned int)(v43 - v44);
    v47 = v45 + 4;
    if ( v45 + 4 >= 15 )
      v47 = 15;
    if ( v47 >= (signed int)(HIDWORD(v46) >> 6) )
    {
      if ( v44 )
      {
LABEL_62:
        ConnectionCount = (CConnectionManager *)CMatchingLocal::PurgeServers((pthread_mutex_t *)this);
        goto LABEL_8;
      }
    }
    else if ( v44 && !v45 )
    {
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388623, nullptr, 0);
    }
    v48 = (COnline *)CMatchingLocal::SendClientRequest(this);
    if ( (int)v48 > 0 )
    {
      v49 = (int (__fastcall ***)(_DWORD))GetOnline(v48);
      *((_DWORD *)this + 4503) = (**v49)(v49);
    }
    goto LABEL_62;
  }
LABEL_8:
  if ( *((int *)this + 3470) > 0 )
  {
    v7 = (CConnectionManager *)GetConnectionMgr(ConnectionCount);
    ConnectionCount = (CConnectionManager *)CConnectionManager::IsConnected(v7, *((_DWORD *)this + 3471));
    v8 = ConnectionCount;
    if ( !ConnectionCount && *((int *)this + 8121) > 0 )
    {
      ConnectionCount = (CConnectionManager *)v86;
      v9 = (int *)((char *)this + 32824);
      do
      {
        v11 = *((_DWORD *)this + 3470);
        if ( v11 == *v9 )
        {
          v12 = v99[0] == 0;
          v93[0] = &off_963700;
          *((_DWORD *)this + 3471) = v11;
          v96 = -1;
          v93[1] = 1;
          v94 = 0;
          v95 = -1;
          v97 = 0;
          v98 = 0;
          if ( !v12 )
          {
            v99[0] = 0;
            NetStructMember::SetChanged((NetStructMember *)v93);
          }
          v13 = *((_DWORD *)this + 4820);
          v93[0] = &off_9636D0;
          (*(void (__fastcall **)(char *, _BYTE *))(v13 + 28))((char *)this + 19280, v99);
          v86[0] = &off_963700;
          v93[0] = &off_963648;
          v89 = -1;
          v86[1] = 1;
          v87 = 0;
          v88 = -1;
          v90 = 0;
          v91 = 0;
          if ( v92[0] )
          {
            v92[0] = 0;
            NetStructMember::SetChanged((NetStructMember *)v86);
          }
          v14 = *((_DWORD *)this + 4828);
          v86[0] = &off_9636D0;
          (*(void (__fastcall **)(char *, _BYTE *))(v14 + 28))((char *)this + 19312, v92);
          v86[0] = &off_963648;
          CMatchingLocal::SendChangeServerMessage(this);
          ConnectionCount = (CConnectionManager *)CEventQueueBase::AddEvent(
                                                    (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                                    8388619,
                                                    (char *)this + 13884,
                                                    4);
        }
        else
        {
          v10 = (CConnectionManager *)GetConnectionMgr(ConnectionCount);
          ConnectionCount = (CConnectionManager *)CConnectionManager::IsConnected(v10, *v9);
          if ( ConnectionCount )
            break;
        }
        v8 = (CConnectionManager *)((char *)v8 + 1);
        v9 += 86;
      }
      while ( (int)v8 < *((_DWORD *)this + 8121) );
    }
  }
LABEL_30:
  v19 = (pthread_mutex_t *)GetConnectionMgr(ConnectionCount);
  HasEventOccured = (CConnectionManager *)CEventQueueBase::HasEventOccured(v19 + 2, 6291457, 0);
  if ( !HasEventOccured )
    goto LABEL_31;
  v117 = 0;
  v31 = (pthread_mutex_t *)GetConnectionMgr(HasEventOccured);
  EventData = (CConnectionManager *)CEventQueueBase::GetEventData(v31 + 2, 6291457, &v117, 4);
  v33 = *((_DWORD *)this + 3470);
  if ( v33 >= 0 )
  {
    if ( v33 == *((_DWORD *)this + 3471) )
    {
      EventData = (CConnectionManager *)(*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 84))(this);
      if ( !EventData )
      {
        EventData = (CConnectionManager *)(*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 88))(this);
        if ( !EventData )
          EventData = (CConnectionManager *)CMatchingLocal::SendServerResponse(this, 0);
      }
      goto LABEL_53;
    }
    goto LABEL_50;
  }
  if ( v33 != -1 )
  {
LABEL_50:
    MemberIndex = CMatching::GetMemberIndex(this, v33);
    v35 = *((_DWORD *)this + 3470);
    v36 = MemberIndex;
    v63 = 0;
    v62[1] = 32;
    v65 = -1;
    v67 = 0;
    v62[0] = &off_963618;
    v64 = -1;
    v66 = 0;
    if ( v35 != v68 )
    {
      v68 = v35;
      NetStructMember::SetChanged((NetStructMember *)v62);
    }
    v37 = 408 * v36;
    v38 = 408 * v36 + 19712;
    v62[0] = &off_9635E8;
    v39 = (char *)this + v37;
    (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v39 + 4932) + 28))((char *)this + v38 + 16, &v68);
    v62[0] = &off_963648;
    TransportMgr = GetTransportMgr();
    CTransportManager::GetListenNetworkId(v115, TransportMgr, 0);
    v114[0] = v115[0];
    v114[1] = v115[1];
    v114[2] = v115[2];
    v114[3] = v115[3];
    v114[4] = v115[4];
    v114[5] = v115[5];
    v114[6] = v115[6];
    NetStructMemberType<CNetworkId>::NetStructMemberType((int)&v60, (unsigned __int16 *)v114);
    v60 = off_992008;
    (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v39 + 4942) + 28))((char *)this + v38 + 56, &v61);
    v60 = (int (__fastcall **)(NetStructMember *, NetBitStream *))&off_963648;
    EventData = (CConnectionManager *)CEventQueueBase::AddEvent(
                                        (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                        8388611,
                                        nullptr,
                                        0);
  }
LABEL_53:
  v41 = (pthread_mutex_t *)GetConnectionMgr(EventData);
  CEventQueueBase::ConsumeEvent(v41 + 2, 6291457);
LABEL_31:
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, 0) )
  {
    CEventQueueBase::GetEventData((pthread_mutex_t *)&CMatching::m_eventQueue, 4194318, __p, 8);
    v30 = __p[0];
    if ( v30 == (void *)(*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 108))(this) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194314, nullptr, 0);
  }
  if ( (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 100))(this) )
  {
    v21 = *((_DWORD *)this + 3470);
    if ( v21 < 0 || v21 != *((_DWORD *)this + 3471) )
    {
      v22 = (int *)((char *)this + 19424);
      for ( i = 0; i != 32; ++i )
      {
        v24 = 408 * i;
        v25 = (char *)this + 408 * i + 19424;
        if ( v22[84] > 0 )
        {
          v26 = (CConnectionManager *)(*(int (__fastcall **)(char *))(*v22 + 32))(v25);
          if ( v26 )
          {
            if ( v22[84] != *((_DWORD *)this + 3470) )
            {
              v27 = (CConnectionManager *)GetConnectionMgr(v26);
              if ( !CConnectionManager::IsConnected(v27, v22[84]) )
              {
                v28 = (CConnectionManager *)GetConnectionMgr(nullptr);
                CConnectionManager::Connect(v28, v22[84], (CMatchingLocal *)((char *)this + v24 + 19800));
              }
            }
          }
        }
        v22 += 102;
      }
    }
  }
  if ( !CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388618, 1) )
    return 0;
  v29 = *((_DWORD *)this + 3470);
  if ( v29 < 0 || v29 != *((_DWORD *)this + 3471) )
    return 0;
  if ( (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 88))(this)
    && !(*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 84))(this) )
  {
    return 0;
  }
  v59 = (*(int (__fastcall **)(CMatchingLocal *))(*(_DWORD *)this + 84))(this);
  CMatchingLocal::SendServerResponse(this, v59);
  return 0;
}


// ===== 8094fc CMatchingLocal::AddServer(int,CNetworkId &,int,CRoomAttributes &) =====
int __fastcall CMatchingLocal::AddServer(pthread_mutex_t *this, int a2, CNetworkId *a3, int a4, CRoomAttributes *a5)
{
  char *v6; // r4
  pthread_mutex_t *v8; // r8
  unsigned __int16 *v10; // r9
  unsigned __int16 *v11; // r4
  _BOOL4 IsEqual; // r0
  unsigned __int16 *v13; // r2
  unsigned __int16 *v15; // r3
  int (__fastcall ***Online)(_DWORD); // r0
  int v17; // r0
  COnline *v18; // r0
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int (__fastcall ***v24)(_DWORD); // r0
  int TransportMgr; // r0
  COnline *v26; // r0
  int (__fastcall ***v27)(_DWORD); // r0
  int v28; // r3
  int *v29; // r0
  int *v30; // r4
  int v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r1
  int v35; // r2
  std::string *v36; // r0
  int v38; // [sp+Ch] [bp-408h] BYREF
  int v39; // [sp+10h] [bp-404h] BYREF
  int v40; // [sp+14h] [bp-400h] BYREF
  int v41; // [sp+18h] [bp-3FCh]
  int v42; // [sp+1Ch] [bp-3F8h]
  int v43; // [sp+20h] [bp-3F4h]
  COnline *v44; // [sp+24h] [bp-3F0h]
  int v45; // [sp+28h] [bp-3ECh]
  int v46; // [sp+2Ch] [bp-3E8h]
  int v47; // [sp+30h] [bp-3E4h]
  std::string v48; // [sp+34h] [bp-3E0h] BYREF
  int v49; // [sp+4Ch] [bp-3C8h]
  int v50; // [sp+50h] [bp-3C4h]
  _BYTE v51[924]; // [sp+58h] [bp-3BCh] BYREF
  std::string v52; // [sp+3F4h] [bp-20h] BYREF

  v6 = (char *)(this + 4480);
  v8 = this + 4495;
  CNetMutex::Lock(this + 4495);
  v10 = *((unsigned __int16 **)this + 4499);
  v11 = (unsigned __int16 *)(v6 + 68);
  while ( v11 != v10 )
  {
    while ( 1 )
    {
      IsEqual = CNetworkId::IsEqual(v10 + 14, (unsigned __int16 *)a3);
      if ( IsEqual )
      {
        Online = (int (__fastcall ***)(_DWORD))GetOnline((COnline *)IsEqual);
        v17 = (**Online)(Online);
        *((_DWORD *)v10 + 21) = a4;
        *((_DWORD *)v10 + 14) = v17;
        return CNetMutex::Unlock(v8);
      }
      v13 = *((unsigned __int16 **)v10 + 3);
      if ( !v13 )
        break;
      while ( *((_DWORD *)v13 + 2) )
        v13 = *((unsigned __int16 **)v13 + 2);
      v10 = v13;
      if ( v11 == v13 )
        goto LABEL_9;
    }
    v15 = *((unsigned __int16 **)v10 + 1);
    if ( v10 == *((unsigned __int16 **)v15 + 3) )
    {
      do
      {
        v10 = v15;
        v15 = *((unsigned __int16 **)v15 + 1);
      }
      while ( *((unsigned __int16 **)v15 + 3) == v10 );
      v13 = *((unsigned __int16 **)v10 + 3);
    }
    if ( v13 != v15 )
      v10 = v15;
  }
LABEL_9:
  if ( CRoomSearchFilter::TestRoomAttributes((CRoomSearchFilter *)(this + 4734), a5) )
  {
    tMatchingPeer::tMatchingPeer((tMatchingPeer *)&v39);
    v39 = a2;
    if ( a3 != (CNetworkId *)&v40 )
    {
      v19 = *((_DWORD *)a3 + 1);
      v20 = *((_DWORD *)a3 + 2);
      v21 = *((_DWORD *)a3 + 3);
      v40 = *(_DWORD *)a3;
      v41 = v19;
      v42 = v20;
      v43 = v21;
      v18 = *((COnline **)a3 + 4);
      v22 = *((_DWORD *)a3 + 5);
      v23 = *((_DWORD *)a3 + 6);
      v44 = v18;
      v45 = v22;
      v46 = v23;
    }
    v24 = (int (__fastcall ***)(_DWORD))GetOnline(v18);
    v47 = (**v24)(v24);
    TransportMgr = GetTransportMgr();
    (*(void (__fastcall **)(std::string *, int, CNetworkId *))(*(_DWORD *)TransportMgr + 28))(&v52, TransportMgr, a3);
    std::string::_M_assign(&v48, v52._M_start_of_storage._M_data, v52._M_finish);
    std::string::~string(&v52);
    v49 = a4;
    v27 = (int (__fastcall ***)(_DWORD))GetOnline(v26);
    v50 = (**v27)(v27) - *((_DWORD *)this + 4503);
    CRoomAttributes::operator=(v51, a5);
    v28 = *((_DWORD *)this + 3469);
    *((_DWORD *)this + 3469) = v28 + 1;
    v38 = v28;
    v29 = (int *)std::map<unsigned long long,tMatchingPeer>::operator[]<int>(v11, &v38);
    *v29 = v39;
    v30 = v29;
    if ( v29 + 1 != &v40 )
    {
      v31 = v41;
      v32 = v42;
      v33 = v43;
      v29[1] = v40;
      v29[2] = v31;
      v29[3] = v32;
      v29[4] = v33;
      v34 = v45;
      v35 = v46;
      v29[5] = (int)v44;
      v29[6] = v34;
      v29[7] = v35;
    }
    v36 = (std::string *)(v29 + 9);
    v30[8] = v47;
    if ( v30 + 9 != (int *)&v48 )
      std::string::_M_assign(v36, v48._M_start_of_storage._M_data, v48._M_finish);
    v30[15] = v49;
    v30[16] = v50;
    CRoomAttributes::operator=(v30 + 18, v51);
    if ( *((_BYTE *)this + 13872) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, nullptr, 0);
    tMatchingPeer::~tMatchingPeer((tMatchingPeer *)&v39);
  }
  return CNetMutex::Unlock(v8);
}


// ===== 8097c4 CMatchingLocal::ProcessServerMessage(CNetworkId &,NetBitStream &) =====
void __fastcall CMatchingLocal::ProcessServerMessage(pthread_mutex_t *this, CNetworkId *a2, NetBitStream *a3)
{
  int v3; // r3
  CConnectionManager *v6; // r0
  CConnectionManager *ConnectionMgr; // r0
  CConnectionManager *IsConnected; // r0
  CConnectionManager *v9; // r0
  _BYTE v10[920]; // [sp+8h] [bp-3C0h] BYREF
  _DWORD v11[7]; // [sp+3A0h] [bp-28h] BYREF
  int v12; // [sp+3BCh] [bp-Ch]
  int v13; // [sp+3C0h] [bp-8h]
  char v14; // [sp+3C4h] [bp-4h]

  v3 = *((_DWORD *)this + 3470);
  if ( v3 < 0 || v3 != *((_DWORD *)this + 3471) )
  {
    CNetworkId::Reset(v11);
    CRoomAttributes::CRoomAttributes((CRoomAttributes *)v10);
    NetBitStream::ReadByteArray(a3, v11, 0x28u);
    v6 = (CConnectionManager *)CRoomAttributes::Unserialize((CRoomAttributes *)v10, a3);
    ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v6);
    IsConnected = (CConnectionManager *)CConnectionManager::IsConnected(ConnectionMgr, v12);
    if ( IsConnected && v13 > *((_DWORD *)this + 2) )
    {
      v9 = (CConnectionManager *)GetConnectionMgr(IsConnected);
      CConnectionManager::Disconnect(v9, v12, 0);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388621, nullptr, 0);
    }
    if ( v14 )
      CMatchingLocal::RemoveServer(this, (CNetworkId *)v11);
    else
      CMatchingLocal::AddServer(this, v12, (CNetworkId *)v11, v13, (CRoomAttributes *)v10);
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v10);
  }
}


// ===== 8098cc CMatchingLocal::BroadcastPacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CMatchingLocal::BroadcastPacketReceiverCallback(
        pthread_mutex_t *this,
        CNetworkId *a2,
        char *a3,
        unsigned int a4)
{
  _BYTE v8[32]; // [sp+4h] [bp-24h] BYREF
  _BYTE v9[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a4);
  NetBitStream::SetBuffer((NetBitStream *)v8, a3, a4);
  NetBitStream::ReadByteArray((NetBitStream *)v8, v9, 1u);
  if ( v9[0] == 1 )
  {
    CMatchingLocal::ProcessServerMessage(this, a2, (NetBitStream *)v8);
  }
  else if ( v9[0] == 2 )
  {
    CMatchingLocal::ProcessClientMessage((int *)&this->value, a2, (NetBitStream *)v8);
  }
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 80995c CMatchingLocal::sBroadcastPacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CMatchingLocal::sBroadcastPacketReceiverCallback(
        CMatchingLocal *this,
        CNetworkId *a2,
        char *a3,
        int a4)
{
  CMatchingLocal::BroadcastPacketReceiverCallback(
    (pthread_mutex_t *)CMatching::s_Matching,
    this,
    (char *)a2,
    (unsigned int)a3);
}


// ===== 809998 CMessage::GetDataSize(void) =====
int __fastcall CMessage::GetDataSize(CMessage *this)
{
  return 0;
}


// ===== 8099a0 CMessage::TerminateMessageRegistration(void) =====
int __fastcall CMessage::TerminateMessageRegistration(CMessage *this)
{
  CMessage::s_isRegistrationTerminated = 0;
  return 0;
}


// ===== 8099c8 CMessage::IsReliable(void) =====
int __fastcall CMessage::IsReliable(CMessage *this)
{
  return *((unsigned __int8 *)this + 48);
}


// ===== 8099d0 CMessage::Acknowledge(uint) =====
int __fastcall CMessage::Acknowledge(int this, unsigned int a2)
{
  *(_DWORD *)(this + 64) |= a2;
  return this;
}


// ===== 8099e0 CMessage::IsFrom(int) =====
bool __fastcall CMessage::IsFrom(CMessage *this, int a2)
{
  return *((_DWORD *)this + 3) == a2;
}


// ===== 8099f4 CMessage::ResetData(void) =====
void *__fastcall CMessage::ResetData(CMessage *this)
{
  void *result; // r0
  void *v3; // r5
  size_t v4; // r2

  result = (void *)(**(int (__fastcall ***)(CMessage *))this)(this);
  v3 = result;
  if ( result )
  {
    v4 = (*(int (__fastcall **)(CMessage *))(*(_DWORD *)this + 8))(this);
    return LC_API_MEMSET_0(v3, 0, v4);
  }
  return result;
}


// ===== 809a38 CMessage::InitializeMessageRegistration(void) =====
int __fastcall CMessage::InitializeMessageRegistration(CMessage *this)
{
  int v1; // r5

  v1 = (unsigned __int8)CMessage::s_isRegistrationInitialized;
  if ( !CMessage::s_isRegistrationInitialized )
  {
    LC_API_MEMSET_0(&CMessage::messageTypeArray, 0, 0x4000u);
    LC_API_MEMSET_0(&CMessage::messageCreationArray, v1, 0x400u);
    CMessage::s_isRegistrationInitialized = 1;
  }
  return 0;
}


// ===== 809aa0 CMessage::ReadData(NetBitStream &) =====
unsigned int __fastcall CMessage::ReadData(CMessage *this, NetBitStream *a2)
{
  void *v4; // r5
  unsigned int v5; // r4

  v4 = (void *)(**(int (__fastcall ***)(CMessage *))this)(this);
  if ( !v4 )
    return 0;
  v5 = (*(int (__fastcall **)(CMessage *))(*(_DWORD *)this + 8))(this);
  NetBitStream::ReadByteArray(a2, v4, v5);
  return v5;
}


// ===== 809af0 CMessage::ReadHeader(NetBitStream &) =====
int __fastcall CMessage::ReadHeader(CMessage *this, NetBitStream *a2)
{
  NetBitStream::ReadByteArray(a2, (char *)this + 4, 0x10u);
  return 16;
}


// ===== 809b10 CMessage::WriteData(NetBitStream &) =====
unsigned int __fastcall CMessage::WriteData(CMessage *this, NetBitStream *a2)
{
  const void *v4; // r5
  unsigned int v5; // r4

  v4 = (const void *)(**(int (__fastcall ***)(CMessage *))this)(this);
  if ( !v4 )
    return 0;
  v5 = (*(int (__fastcall **)(CMessage *))(*(_DWORD *)this + 8))(this);
  NetBitStream::WriteByteArray(a2, v4, v5);
  return v5;
}


// ===== 809b60 CMessage::WriteHeader(NetBitStream &) =====
int __fastcall CMessage::WriteHeader(CMessage *this, NetBitStream *a2)
{
  NetBitStream::WriteByteArray(a2, (char *)this + 4, 0x10u);
  return 16;
}


// ===== 809b80 CMessage::Serialize(NetBitStream &) =====
int __fastcall CMessage::Serialize(CMessage *this, NetBitStream *a2)
{
  NetBitStream::WriteByte(a2, *((_BYTE *)this + 16), 8u);
  CMessage::WriteHeader(this, a2);
  (*(void (__fastcall **)(CMessage *, NetBitStream *))(*(_DWORD *)this + 16))(this, a2);
  return 0;
}


// ===== 809bc4 CMessage::IsFor(int) =====
bool __fastcall CMessage::IsFor(CMessage *this, int a2)
{
  int v3; // r4
  int v4; // r0

  v3 = *((_DWORD *)this + 2);
  v4 = CMatching::Get(this);
  return ((*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 132))(v4, a2) & v3) != 0;
}


// ===== 809bf4 CMessage::IsForServer(void) =====
bool __fastcall CMessage::IsForServer(CMessage *this)
{
  int v2; // r0
  int v3; // r1

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 116))(v2);
  return CMessage::IsFor(this, v3);
}


// ===== 809c1c CMessage::IsForMe(void) =====
bool __fastcall CMessage::IsForMe(CMessage *this)
{
  int v2; // r0
  int v3; // r1

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 108))(v2);
  return CMessage::IsFor(this, v3);
}


// ===== 809c44 CMessage::IsFromMe(void) =====
bool __fastcall CMessage::IsFromMe(CMessage *this)
{
  int v2; // r0
  int v3; // r1

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 108))(v2);
  return CMessage::IsFrom(this, v3);
}


// ===== 809c6c CMessage::IsFromServer(void) =====
bool __fastcall CMessage::IsFromServer(CMessage *this)
{
  int v2; // r0
  int v3; // r1

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 116))(v2);
  return CMessage::IsFrom(this, v3);
}


// ===== 809c94 CMessage::IsLocal(void) =====
char *__fastcall CMessage::IsLocal(CMessage *this)
{
  char *result; // r0

  if ( *((_BYTE *)this + 49) )
    return (char *)&dword_0 + 1;
  result = (char *)CMessage::IsFromServer(this);
  if ( result )
    return (char *)(*((_DWORD *)this + 11) == 0);
  return result;
}


// ===== 809ccc CMessage::CreateHash(int,int) =====
int __fastcall CMessage::CreateHash(CMessage *this, __int16 a2, int a3)
{
  int v5; // r0

  v5 = CMatching::Get(this);
  return (unsigned __int16)(((*(int (__fastcall **)(int, CMessage *))(*(_DWORD *)v5 + 132))(v5, this) & 0xF) + 16 * a2);
}


// ===== 809cfc CMessage::GetHash(void) =====
int __fastcall CMessage::GetHash(CMessage **this, int a2, int a3)
{
  return CMessage::CreateHash(*(this + 3), (__int16)*(this + 1), a3);
}


// ===== 809d08 CMessage::SetSentFlag(int,bool) =====
CMatching *__fastcall CMessage::SetSentFlag(CMatching *this, int a2, int a3)
{
  CMatching *v3; // r4
  int v6; // r0
  int v7; // r0

  v3 = this;
  if ( *((_DWORD *)this + 14) )
  {
    v6 = CMatching::Get(this);
    v7 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v6 + 132))(v6, a2);
    if ( a3 )
    {
      this = (CMatching *)(*((_DWORD *)v3 + 18) | v7);
      *((_DWORD *)v3 + 18) = this;
    }
    else
    {
      if ( v7 )
        this = nullptr;
      else
        this = (CMatching *)(*((_DWORD *)v3 + 18) & 1);
      *((_DWORD *)v3 + 18) = this;
    }
  }
  else
  {
    *((_DWORD *)this + 18) = 0;
  }
  return this;
}


// ===== 809d70 CMessage::SetDestinationMask(uint) =====
char *__fastcall CMessage::SetDestinationMask(CMessage *this, unsigned int a2)
{
  CMatching *v4; // r0
  int v5; // r3
  CMatching *v6; // r5
  char *result; // r0
  int v8; // r6
  int (__fastcall *v9)(CMatching *, int); // r7
  int v10; // r0
  int v11; // r0
  int v12; // r6
  int (__fastcall *v13)(CMatching *, int); // r7
  int v14; // r0
  int v15; // r0
  int (__fastcall *v16)(CMatching *, int); // r6
  int v17; // r0
  int v18; // r0

  v4 = (CMatching *)CMatching::Get(this);
  v5 = *((_DWORD *)this + 11);
  v6 = v4;
  *((_DWORD *)this + 2) = a2;
  if ( !v5 )
  {
    v16 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v4 + 132);
    v17 = CMatching::Get(v4);
    v18 = (*(int (__fastcall **)(int))(*(_DWORD *)v17 + 116))(v17);
    *((_DWORD *)this + 2) = v16(v6, v18);
  }
  result = CMessage::IsLocal(this);
  if ( !result )
  {
    if ( *((_BYTE *)this + 51) )
    {
      v12 = *((_DWORD *)this + 2);
      v13 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v6 + 132);
      v14 = CMatching::Get(nullptr);
      v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 108))(v14);
      result = (char *)(v13(v6, v15) | v12);
      *((_DWORD *)this + 2) = result;
    }
    else
    {
      v8 = *((_DWORD *)this + 2);
      v9 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v6 + 132);
      v10 = CMatching::Get(nullptr);
      v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 108))(v10);
      result = (char *)(v8 & ~v9(v6, v11));
      *((_DWORD *)this + 2) = result;
    }
  }
  return result;
}


// ===== 809e44 CMessage::IsAcknowledgedBy(int) =====
bool __fastcall CMessage::IsAcknowledgedBy(CMessage *this, int a2)
{
  int v3; // r4
  int v4; // r0

  v3 = *((_DWORD *)this + 16);
  v4 = CMatching::Get(this);
  return ((*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 132))(v4, a2) & v3) != 0;
}


// ===== 809e74 CMessage::AcknowledgeMember(int) =====
int __fastcall CMessage::AcknowledgeMember(CMessage *this, int a2)
{
  int v4; // r5
  int v5; // r0
  int result; // r0

  v4 = *((_DWORD *)this + 16);
  v5 = CMatching::Get(this);
  result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 132))(v5, a2) | v4;
  *((_DWORD *)this + 16) = result;
  return result;
}


// ===== 809ea4 CMessage::Initialize(void) =====
int __fastcall CMessage::Initialize(CMessage *this)
{
  CMatching *v2; // r0
  int v3; // r5
  int result; // r0
  int v5; // r0

  (*(void (__fastcall **)(CMessage *))(*(_DWORD *)this + 4))(this);
  v2 = (CMatching *)(*(int (__fastcall **)(CMessage *))(*(_DWORD *)this + 12))(this);
  v3 = *((_DWORD *)this + 16);
  if ( *((_BYTE *)this + 51) )
  {
    result = 0;
  }
  else
  {
    v5 = CMatching::Get(v2);
    result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 132))(v5, *((_DWORD *)this + 3));
  }
  *((_DWORD *)this + 16) = result | v3;
  return result;
}


// ===== 809efc CMessage::CreateMessage(int,bool) =====
CMessage *__fastcall CMessage::CreateMessage(CMessage *this, int a2, bool a3)
{
  CMessage *v3; // r4

  v3 = (CMessage *)CMessage::messageCreationArray[(_DWORD)this](a2);
  CMessage::Initialize(v3);
  return v3;
}


// ===== 809f34 CMessage::Unserialize(NetBitStream &) =====
CMessage *__fastcall CMessage::Unserialize(CMessage *this, NetBitStream *a2)
{
  char Byte; // r0
  bool v4; // r2
  CMessage *Message; // r4

  Byte = NetBitStream::ReadByte(this, 8u);
  Message = CMessage::CreateMessage((CMessage *)Byte, 0, v4);
  CMessage::ReadHeader(Message, this);
  (*(void (__fastcall **)(CMessage *, CMessage *))(*(_DWORD *)Message + 20))(Message, this);
  return Message;
}


// ===== 809f78 CMessage::Duplicate(void) =====
CMessage *__fastcall CMessage::Duplicate(CMessage *this)
{
  int v2; // r0
  NetBitStream *v3; // r1
  CMessage *v4; // r5
  _BYTE v6[36]; // [sp+0h] [bp-24h] BYREF

  v2 = (*(int (__fastcall **)(CMessage *))(*(_DWORD *)this + 8))(this);
  NetBitStream::NetBitStream((NetBitStream *)v6, 2 * (v2 + 16));
  CMessage::Serialize(this, (NetBitStream *)v6);
  v4 = CMessage::Unserialize((CMessage *)v6, v3);
  NetBitStream::~NetBitStream((NetBitStream *)v6);
  return v4;
}


// ===== 809fd0 CMessage::MustForward(void) =====
bool __fastcall CMessage::MustForward(CMessage *this)
{
  CMatching *v2; // r6
  int (__fastcall *v4)(CMatching *, int); // r5
  int v5; // r0

  v2 = (CMatching *)CMatching::Get(this);
  if ( !CMatching::IsServer(v2) || CMessage::IsLocal(this) )
    return 0;
  v4 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v2 + 132);
  v5 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)v2 + 116))(v2);
  return (*((_DWORD *)this + 2) & ~v4(v2, v5)) != 0;
}


// ===== 80a038 CMessage::HasBeenSentTo(int) =====
bool __fastcall CMessage::HasBeenSentTo(CMessage *this, int a2)
{
  CMatching *v4; // r4
  int (__fastcall *v5)(CMatching *, int); // r7
  int v6; // r0
  int v7; // r7
  int v8; // r8
  int v9; // r3
  CMatching *v10; // r0
  int v11; // r4

  v4 = (CMatching *)CMatching::Get(this);
  v5 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v4 + 132);
  v6 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)v4 + 116))(v4);
  v7 = v5(v4, v6);
  v8 = *((_DWORD *)this + 2);
  if ( CMatching::IsServer(v4) )
    v7 = 0;
  v9 = *(_DWORD *)v4;
  v10 = v4;
  v11 = ~(v7 | v8) | *((_DWORD *)this + 18);
  return (v11 & (*(int (__fastcall **)(CMatching *, int))(v9 + 132))(v10, a2)) != 0;
}


// ===== 80a0b4 CMessage::IsAcknowledged(void) =====
bool __fastcall CMessage::IsAcknowledged(CMessage *this)
{
  CMatching *v2; // r6
  int (__fastcall *v3)(CMatching *, int); // r5
  int v4; // r0
  int v5; // r1
  int RoomMask; // r0

  v2 = (CMatching *)CMatching::Get(this);
  if ( CMatching::IsServer(v2) )
  {
    RoomMask = CMatching::GetRoomMask(v2);
    return (RoomMask & *((_DWORD *)this + 2) & *((_DWORD *)this + 16)) == (RoomMask & *((_DWORD *)this + 2));
  }
  else
  {
    v3 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v2 + 132);
    v4 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)v2 + 116))(v2);
    v5 = v3(v2, v4);
    return CMessage::IsAcknowledgedBy(this, v5);
  }
}


// ===== 80a128 CMessage::IsExpired(void) =====
bool __fastcall CMessage::IsExpired(CMessage *this)
{
  int v1; // r4
  unsigned int v3; // r4

  v1 = *((_DWORD *)this + 13);
  if ( !v1 )
    return 0;
  v3 = v1 + *((_DWORD *)this + 19);
  return v3 < *(_DWORD *)(GetOnline(this) + 40);
}


// ===== 80a160 CMessage::~CMessage() =====
void __fastcall CMessage::~CMessage(CMessage *this)
{
  *(_DWORD *)this = &off_9922F8;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
}


// ===== 80a194 CMessage::~CMessage() =====
void __fastcall CMessage::~CMessage(CMessage *this)
{
  *(_DWORD *)this = &off_9922F8;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
}


// ===== 80a1c8 CMessage::~CMessage() =====
void __fastcall CMessage::~CMessage(CMessage *this)
{
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 80a1e4 CMessage::FindTypeId(char const*) =====
int __fastcall CMessage::FindTypeId(CMessage *this, const char *a2)
{
  int i; // r4

  for ( i = 0; i != 256; ++i )
  {
    if ( !LC_API_STRNCMP_0(&CMessage::messageTypeArray[64 * i], (const char *)this, 0x40u) )
      return i;
  }
  return -1;
}


// ===== 80a244 CMessage::CreateMessage(char const*,bool) =====
CMessage *__fastcall CMessage::CreateMessage(CMessage *this, const char *a2, bool a3)
{
  CMessage *TypeId; // r0
  bool v5; // r2

  TypeId = (CMessage *)CMessage::FindTypeId(this, a2);
  return CMessage::CreateMessage(TypeId, (int)a2, v5);
}


// ===== 80a25c CMessage::RegisterTypeStr(char const*) =====
int __fastcall CMessage::RegisterTypeStr(CMessage *this, const char *a2)
{
  int i; // r4

  for ( i = 0; i != 256; ++i )
  {
    if ( !LC_API_STRNCMP_0(&CMessage::messageTypeArray[64 * i], (const char *)this, 0x40u) )
      return i;
    if ( !CMessage::messageTypeArray[64 * i] )
    {
      LC_API_STRNCPY_0(&CMessage::messageTypeArray[64 * i], (const char *)this, 0x40u);
      return i;
    }
  }
  return -1;
}


// ===== 80a2e8 CMessage::RegisterMessageType(char const*,CMessage* (*)(bool)) =====
int __fastcall CMessage::RegisterMessageType(CMessage *this, const char *a2, CMessage *(*a3)(bool))
{
  int result; // r0

  if ( CMessage::s_isRegistrationTerminated )
    return -1;
  result = CMessage::RegisterTypeStr(this, a2);
  if ( result != -1 )
    CMessage::messageCreationArray[result] = (int (__fastcall *)(int))a2;
  return result;
}


// ===== 80a33c CMessage::SetDefaultProperties(void) =====
int __fastcall CMessage::SetDefaultProperties(CMessage *this)
{
  int v2; // r3
  int result; // r0
  size_t v4; // r2
  int v5; // r2
  unsigned __int8 *v6; // r3
  char *v7; // r5
  char *v8; // r1
  int v9; // r6
  int v10; // r2
  char *v11; // r3
  char v12; // t1
  _BYTE *v13; // r0
  int v14; // r1
  _BYTE *v15; // r10
  int v16; // r2
  _BYTE *v17; // r8
  int i; // r8
  int j; // r3
  size_t v20; // r3
  size_t size; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 9);
  result = *((_DWORD *)this + 10);
  v4 = v2 - result;
  if ( (unsigned int)(v2 - result) <= 0x16 )
  {
    if ( v4 )
    {
      memcpy((void *)result, "TYPE STRING NOT DEFINED", v4);
      v2 = *((_DWORD *)this + 9);
      result = *((_DWORD *)this + 10);
      v7 = &aTypeStringNotD[v2 - result];
      if ( v7 == "" )
        goto LABEL_4;
    }
    else
    {
      v7 = "TYPE STRING NOT DEFINED";
    }
    if ( (CMessage *)result == (CMessage *)((char *)this + 20) )
      v8 = (char *)this + 36;
    else
      v8 = *((char **)this + 5);
    v9 = "" - v7;
    if ( "" - v7 >= (unsigned int)&v8[-v2] )
    {
      size = std::string::_M_compute_next_size((std::string *)((char *)this + 20), "" - v7);
      v13 = std::allocator<char>::_M_allocate((int)this + 40, size, &size);
      v14 = *((_DWORD *)this + 10);
      v15 = v13;
      v16 = *((_DWORD *)this + 9) - v14;
      if ( v16 > 0 )
      {
        for ( i = 0; i != v16; ++i )
          v13[i] = *(_BYTE *)(v14 + i);
        v17 = &v13[i];
      }
      else
      {
        v17 = v13;
      }
      if ( v9 > 0 )
      {
        for ( j = 0; j != v9; ++j )
          v17[j] = v7[j];
        v17 += j;
      }
      *v17 = 0;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 20));
      v20 = size;
      *((_DWORD *)this + 10) = v15;
      *((_DWORD *)this + 9) = v17;
      *((_DWORD *)this + 5) = &v15[v20];
    }
    else
    {
      result = "" - (v7 + 1);
      if ( result > 0 )
      {
        v10 = v2;
        result = (int)"D";
        v11 = v7;
        do
        {
          v12 = *++v11;
          *(_BYTE *)++v10 = v12;
        }
        while ( v11 != "D" );
        v2 = *((_DWORD *)this + 9);
      }
      *(_BYTE *)(v2 + v9) = 0;
      **((_BYTE **)this + 9) = *v7;
      *((_DWORD *)this + 9) += v9;
    }
  }
  else
  {
    result = (int)memcpy((void *)result, "TYPE STRING NOT DEFINED", 0x17u);
    v5 = *((_DWORD *)this + 10);
    v6 = *((unsigned __int8 **)this + 9);
    if ( (unsigned __int8 *)(v5 + 23) != v6 )
    {
      result = *v6;
      *(_BYTE *)(v5 + 23) = result;
      *((_DWORD *)this + 9) += v5 + 23 - (_DWORD)v6;
    }
  }
LABEL_4:
  *((_DWORD *)this + 14) = 100;
  *((_BYTE *)this + 51) = 1;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 1;
  *((_BYTE *)this + 49) = 0;
  *((_BYTE *)this + 50) = 0;
  return result;
}


// ===== 80a53c std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 80a540 CMessage::CMessage(char const*,bool) =====
void __fastcall CMessage::CMessage(CMessage *this, CMessage *a2, int a3)
{
  const char *v6; // r1
  CMatching *TypeId; // r0
  int v8; // r0
  COnline *v9; // r0

  *(_DWORD *)this = &off_9922F8;
  *((_DWORD *)this + 9) = (char *)this + 20;
  *((_DWORD *)this + 10) = (char *)this + 20;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 9) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  TypeId = (CMatching *)CMessage::FindTypeId(a2, v6);
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 16) = (_BYTE)TypeId;
  v8 = CMatching::Get(TypeId);
  v9 = (COnline *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 108))(v8);
  *((_DWORD *)this + 3) = v9;
  if ( a3 )
    a3 = CMessage::m_messageSerial++;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 19) = *(_DWORD *)(GetOnline(v9) + 40);
  CMessage::SetDefaultProperties(this);
}


// ===== 80a61c CMessage::CMessage(char const*,bool) =====
void __fastcall CMessage::CMessage(CMessage *this, CMessage *a2, int a3)
{
  const char *v6; // r1
  CMatching *TypeId; // r0
  int v8; // r0
  COnline *v9; // r0

  *(_DWORD *)this = &off_9922F8;
  *((_DWORD *)this + 9) = (char *)this + 20;
  *((_DWORD *)this + 10) = (char *)this + 20;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 9) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  TypeId = (CMatching *)CMessage::FindTypeId(a2, v6);
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 16) = (_BYTE)TypeId;
  v8 = CMatching::Get(TypeId);
  v9 = (COnline *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 108))(v8);
  *((_DWORD *)this + 3) = v9;
  if ( a3 )
    a3 = CMessage::m_messageSerial++;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 19) = *(_DWORD *)(GetOnline(v9) + 40);
  CMessage::SetDefaultProperties(this);
}


// ===== 80a6f8 CMessage::CompareMsgSendPriority(CMessage*,CMessage*) =====
bool __fastcall CMessage::CompareMsgSendPriority(CMessage *this, CMessage *a2, CMessage *a3)
{
  return *((_DWORD *)this + 14) < *((_DWORD *)a2 + 14);
}


// ===== 80a710 CMessaging::IsInitialized(void) =====
int __fastcall CMessaging::IsInitialized(CMessaging *this)
{
  int result; // r0

  result = CMessaging::s_messaging;
  if ( CMessaging::s_messaging )
    return *(unsigned __int8 *)(CMessaging::s_messaging + 4);
  return result;
}


// ===== 80a738 CMessaging::Terminate(void) =====
int __fastcall CMessaging::Terminate(CMessaging *this)
{
  int result; // r0

  if ( CMessaging::s_messaging )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CMessaging::s_messaging + 4))(CMessaging::s_messaging);
    CMessaging::s_messaging = 0;
  }
  return result;
}


// ===== 80a77c CMessaging::Update(void) =====
int __fastcall CMessaging::Update(CMessaging *this)
{
  return 0;
}


// ===== 80a784 CMessaging::PrintRecvQueue(void) =====
pthread_mutex_t *__fastcall CMessaging::PrintRecvQueue(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *v3; // r7
  pthread_mutex_t *i; // r4
  _DWORD *value; // r12

  v1 = this + 7;
  v2 = this;
  if ( *((pthread_mutex_t **)this + 7) != this + 7 )
  {
    v3 = this + 2;
    CNetMutex::Lock(this + 2);
    printf("RQ> ");
    for ( i = (pthread_mutex_t *)v2[7].value; v1 != i; i = (pthread_mutex_t *)i->value )
    {
      value = (_DWORD *)i[2].value;
      if ( value )
        printf("[%i:%i|A:0x%X|D:0x%X] ", value[3], value[1], value[16], value[2]);
    }
    putchar(10);
    return (pthread_mutex_t *)CNetMutex::Unlock(v3);
  }
  return this;
}


// ===== 80a82c CMessaging::PrintSendQueue(void) =====
pthread_mutex_t *__fastcall CMessaging::PrintSendQueue(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *v3; // r7
  pthread_mutex_t *i; // r4
  _DWORD *value; // r12

  v1 = this + 9;
  v2 = this;
  if ( *((pthread_mutex_t **)this + 9) != this + 9 )
  {
    v3 = this + 3;
    CNetMutex::Lock(this + 3);
    printf("SQ> ");
    for ( i = (pthread_mutex_t *)v2[9].value; v1 != i; i = (pthread_mutex_t *)i->value )
    {
      value = (_DWORD *)i[2].value;
      if ( value )
        printf("[%i:%i|A:0x%X|D:0x%X] ", value[3], value[1], value[16], value[2]);
    }
    putchar(10);
    return (pthread_mutex_t *)CNetMutex::Unlock(v3);
  }
  return this;
}


// ===== 80a8d4 CMessaging::ResendLostMessages(int,std::set<ushort,std::less<ushort>,std::allocator<ushort>> &) =====
int __fastcall CMessaging::ResendLostMessages(pthread_mutex_t *a1, int a2, int a3)
{
  pthread_mutex_t *v3; // r8
  int v7; // r1
  unsigned int v8; // r2
  pthread_mutex_t *i; // r5
  pthread_mutex_t *v10; // r6
  pthread_mutex_t *value; // t1
  CMessage **v12; // r10
  unsigned int Hash; // r0
  int v14; // r3
  unsigned int v15; // r2
  bool v16; // cf

  v3 = a1 + 3;
  CNetMutex::Lock(a1 + 3);
  value = (pthread_mutex_t *)a1[9].value;
  v10 = a1 + 9;
  for ( i = value; v10 != i; i = (pthread_mutex_t *)i->value )
  {
    v12 = (CMessage **)i[2].value;
    Hash = CMessage::GetHash(v12, v7, v8);
    v14 = *(_DWORD *)(a3 + 4);
    if ( !v14 )
      goto LABEL_17;
    v7 = a3;
    while ( 1 )
    {
      v15 = *(unsigned __int16 *)(v14 + 16);
      v16 = v15 >= Hash;
      if ( v15 >= Hash )
        v8 = *(_DWORD *)(v14 + 8);
      else
        v8 = *(_DWORD *)(v14 + 12);
      if ( !v16 )
        v14 = v7;
      v7 = v14;
      if ( !v8 )
        break;
      v14 = v8;
    }
    if ( a3 == v14 )
      continue;
    v8 = *(unsigned __int16 *)(v14 + 16);
    if ( v8 > Hash )
LABEL_17:
      v14 = a3;
    if ( a3 != v14 )
      CMessage::SetSentFlag((CMatching *)v12, a2, 0);
  }
  return CNetMutex::Unlock(v3);
}


// ===== 80a98c CMessaging::AcknowledgeMessage(int,CMessage *) =====
int __fastcall CMessaging::AcknowledgeMessage(CMessaging *this, int a2, CMessage *a3)
{
  return CMessage::AcknowledgeMember(a3, a2);
}


// ===== 80a994 CMessaging::AcknowledgeSentMessages(int,std::set<ushort,std::less<ushort>,std::allocator<ushort>> &) =====
int __fastcall CMessaging::AcknowledgeSentMessages(pthread_mutex_t *a1, int a2, int a3)
{
  pthread_mutex_t *v4; // r10
  int v8; // r1
  unsigned int v9; // r2
  pthread_mutex_t *i; // r5
  pthread_mutex_t *v11; // r6
  pthread_mutex_t *value; // t1
  CMessage **v13; // r9
  unsigned int Hash; // r0
  int v15; // r3
  unsigned int v16; // r2
  bool v17; // cf

  v4 = a1 + 3;
  CNetMutex::Lock(a1 + 3);
  value = (pthread_mutex_t *)a1[9].value;
  v11 = a1 + 9;
  for ( i = value; v11 != i; i = (pthread_mutex_t *)i->value )
  {
    v13 = (CMessage **)i[2].value;
    Hash = CMessage::GetHash(v13, v8, v9);
    v15 = *(_DWORD *)(a3 + 4);
    if ( !v15 )
      goto LABEL_17;
    v8 = a3;
    while ( 1 )
    {
      v16 = *(unsigned __int16 *)(v15 + 16);
      v17 = v16 >= Hash;
      if ( v16 >= Hash )
        v9 = *(_DWORD *)(v15 + 8);
      else
        v9 = *(_DWORD *)(v15 + 12);
      if ( !v17 )
        v15 = v8;
      v8 = v15;
      if ( !v9 )
        break;
      v15 = v9;
    }
    if ( a3 == v15 )
      continue;
    v9 = *(unsigned __int16 *)(v15 + 16);
    if ( v9 > Hash )
LABEL_17:
      v15 = a3;
    if ( a3 != v15 )
      CMessaging::AcknowledgeMessage((CMessaging *)a1, a2, (CMessage *)v13);
  }
  return CNetMutex::Unlock(v4);
}


// ===== 80aa50 CMessaging::AreMessagesAcknowledged(char const*) =====
int __fastcall CMessaging::AreMessagesAcknowledged(pthread_mutex_t *this, CMessage *a2)
{
  pthread_mutex_t *v3; // r6
  int TypeId; // r4
  char *v5; // r3
  char *v6; // r5
  char *v7; // t1
  int v8; // r2
  int v9; // r4
  CMessaging *v11; // r3
  CMessage *v12; // r4

  if ( a2 )
  {
    v3 = this + 3;
    TypeId = CMessage::FindTypeId(a2, (const char *)a2);
    CNetMutex::Lock(this + 3);
    v7 = *((char **)this + 9);
    v6 = (char *)(this + 9);
    v5 = v7;
    if ( v6 == v7 )
    {
LABEL_7:
      v9 = 1;
    }
    else
    {
      while ( 1 )
      {
        v8 = *((_DWORD *)v5 + 2);
        if ( v8 )
        {
          if ( !*(_BYTE *)(v8 + 60) && TypeId == *(char *)(v8 + 16) )
            break;
        }
        v5 = *(char **)v5;
        if ( v6 == v5 )
          goto LABEL_7;
      }
      v9 = *(unsigned __int8 *)(v8 + 60);
    }
    CNetMutex::Unlock(v3);
    return v9;
  }
  v11 = *((CMessaging **)this + 9);
  if ( v11 == (CMessaging *)(this + 9) )
    return 0;
  do
  {
    v11 = *(CMessaging **)v11;
    a2 = (CMessage *)((char *)a2 + 1);
  }
  while ( this + 9 != (pthread_mutex_t *)v11 );
  v12 = a2;
  if ( a2 )
    return 1;
  return (int)v12;
}


// ===== 80ab00 CMessaging::GetMessageFromQueue(char const*) =====
int __fastcall CMessaging::GetMessageFromQueue(CMessaging *this, CMessage *a2)
{
  pthread_mutex_t *v3; // r7
  int TypeId; // r6
  char *v5; // r3
  char *v6; // r4
  char *v7; // t1
  int v8; // r5

  v3 = (pthread_mutex_t *)((char *)this + 8);
  TypeId = CMessage::FindTypeId(a2, (const char *)a2);
  CNetMutex::Lock(v3);
  v7 = *((char **)this + 7);
  v6 = (char *)this + 28;
  v5 = v7;
  if ( v6 == v7 )
  {
LABEL_5:
    CNetMutex::Unlock(v3);
    return 0;
  }
  else
  {
    while ( 1 )
    {
      v8 = *((_DWORD *)v5 + 2);
      if ( v8 )
      {
        if ( TypeId == *(char *)(v8 + 16) && !*(_BYTE *)(v8 + 60) )
          break;
      }
      v5 = *(char **)v5;
      if ( v6 == v5 )
        goto LABEL_5;
    }
    CNetMutex::Unlock(v3);
    return v8;
  }
}


// ===== 80ab80 CMessaging::IsMessageReceived(char const*) =====
bool __fastcall CMessaging::IsMessageReceived(CMessaging *this, CMessage *a2)
{
  return CMessaging::GetMessageFromQueue(this, a2) != 0;
}


// ===== 80ab94 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 80abcc std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      if ( *(_DWORD *)(v2 + 36) )
      {
        std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
          v2 + 20,
          *(_DWORD **)(v2 + 24));
        *(_DWORD *)(v2 + 32) = v2 + 20;
        *(_DWORD *)(v2 + 28) = v2 + 20;
        *(_DWORD *)(v2 + 24) = 0;
        *(_DWORD *)(v2 + 36) = 0;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 80ac34 CMessaging::ClearMessageQueue(std::list<CMessage *,std::allocator<CMessage *>> *,CNetMutex *) =====
int __fastcall CMessaging::ClearMessageQueue(int a1, _DWORD **a2, pthread_mutex_t *mutex)
{
  _DWORD *v5; // r3
  _DWORD *v6; // r0
  _DWORD *v7; // r4
  _DWORD *v8; // r2
  int v9; // r5

  CNetMutex::Lock(mutex);
  v5 = *a2;
  v6 = *a2;
  if ( a2 != *a2 )
  {
    do
    {
      v7 = (_DWORD *)*v5;
      v8 = (_DWORD *)v5[1];
      v9 = v5[2];
      v5[2] = 0;
      *v8 = v7;
      v7[1] = v8;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v6, 0xCu);
      if ( v9 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 28))(v9);
      v5 = v7;
      v6 = v7;
    }
    while ( a2 != v7 );
  }
  CNetMutex::Unlock(mutex);
  return CNetMutex::Unlock(mutex);
}


// ===== 80acb8 CMessaging::PurgeMessagesFromQueue(std::list<CMessage *,std::allocator<CMessage *>> *,CNetMutex *,char const*) =====
int __fastcall CMessaging::PurgeMessagesFromQueue(int a1, _DWORD **a2, pthread_mutex_t *mutex)
{
  _DWORD *v5; // r3
  _DWORD *v6; // r0
  _BYTE *v7; // r4
  _DWORD *v8; // r5
  _DWORD *v9; // r2

  CNetMutex::Lock(mutex);
  v5 = *a2;
  v6 = *a2;
  if ( a2 != *a2 )
  {
    do
    {
      v7 = (_BYTE *)v5[2];
      v8 = (_DWORD *)*v5;
      if ( !v7 || v7[60] )
      {
        v9 = (_DWORD *)v5[1];
        v5[2] = 0;
        *v9 = v8;
        v8[1] = v9;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v6, 0xCu);
        if ( v7 )
          (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v7 + 28))(v7);
      }
      v5 = v8;
      v6 = v8;
    }
    while ( a2 != v8 );
  }
  CNetMutex::Unlock(mutex);
  return CNetMutex::Unlock(mutex);
}


// ===== 80ad54 CMessaging::ProcessRecvQueue(void) =====
int __fastcall CMessaging::ProcessRecvQueue(pthread_mutex_t *this)
{
  pthread_mutex_t *v2; // r4
  _DWORD *i; // r5
  _DWORD **v5; // r7
  _DWORD *v6; // t1
  CMessage *v7; // r6

  v2 = this + 2;
  CNetMutex::Lock(this + 2);
  v6 = *((_DWORD **)this + 7);
  v5 = (_DWORD **)(this + 7);
  for ( i = v6; v5 != i; i = (_DWORD *)*i )
  {
    v7 = (CMessage *)i[2];
    if ( v7 && CMessage::IsExpired(v7) )
      *((_BYTE *)v7 + 60) = 1;
  }
  CNetMutex::Unlock(v2);
  CMessaging::PurgeMessagesFromQueue((int)this, v5, v2);
  return CNetMutex::Unlock(v2);
}


// ===== 80add0 std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(result, 0xCu);
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


// ===== 80ae10 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_erase(
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
      while ( 1 )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_erase(
          a1,
          v2[3]);
        v4 = (_DWORD *)v2[2];
        if ( v2[9] )
          break;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x2Cu);
        v2 = v4;
        if ( !v4 )
          return;
      }
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_erase(
        (int)(v2 + 5),
        v2[6]);
      v2[8] = v2 + 5;
      v2[7] = v2 + 5;
      v2[6] = 0;
      v2[9] = 0;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 80ae90 CMessaging::ResetQueues(bool) =====
int __fastcall CMessaging::ResetQueues(CMessaging *this, int a2)
{
  int v5; // r3

  CMessaging::ClearMessageQueue((int)this, (_DWORD **)this + 9, (pthread_mutex_t *)this + 3);
  CMessaging::ClearMessageQueue((int)this, (_DWORD **)this + 7, (pthread_mutex_t *)this + 2);
  if ( *((_DWORD *)this + 15) )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  CNetMutex::Lock((pthread_mutex_t *)this + 5);
  CNetMutex::Lock((pthread_mutex_t *)this + 6);
  if ( *((_DWORD *)this + 33) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_erase(
      (int)this + 116,
      *((_DWORD **)this + 30));
    *((_DWORD *)this + 32) = (char *)this + 116;
    *((_DWORD *)this + 33) = 0;
    *((_DWORD *)this + 31) = (char *)this + 116;
    *((_DWORD *)this + 30) = 0;
  }
  if ( a2 )
  {
    if ( *((_DWORD *)this + 21) )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
        (int)this + 68,
        *((_DWORD **)this + 18));
      *((_DWORD *)this + 21) = 0;
      *((_DWORD *)this + 18) = 0;
      v5 = *((_DWORD *)this + 27);
      *((_DWORD *)this + 20) = (char *)this + 68;
      *((_DWORD *)this + 19) = (char *)this + 68;
      if ( !v5 )
        goto LABEL_8;
    }
    else if ( !*((_DWORD *)this + 27) )
    {
LABEL_8:
      CMessage::m_messageSerial = 0;
      goto LABEL_9;
    }
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 92,
      *((_DWORD **)this + 24));
    *((_DWORD *)this + 27) = 0;
    *((_DWORD *)this + 26) = (char *)this + 92;
    *((_DWORD *)this + 25) = (char *)this + 92;
    *((_DWORD *)this + 24) = 0;
    goto LABEL_8;
  }
LABEL_9:
  CNetMutex::Unlock((pthread_mutex_t *)this + 6);
  return CNetMutex::Unlock((pthread_mutex_t *)this + 5);
}


// ===== 80afe4 CMessaging::CMessaging(void) =====
void __fastcall CMessaging::CMessaging(CMessaging *this)
{
  *(_DWORD *)this = off_992328;
  *((_BYTE *)this + 4) = 0;
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 8));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 12));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 16));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 20));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 24));
  *((_DWORD *)this + 8) = (char *)this + 28;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 7) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 14) = (char *)this + 44;
  *((_DWORD *)this + 13) = (char *)this + 44;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 20) = (char *)this + 68;
  *((_DWORD *)this + 19) = (char *)this + 68;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 26) = (char *)this + 92;
  *((_DWORD *)this + 25) = (char *)this + 92;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_DWORD *)this + 32) = (char *)this + 116;
  *((_DWORD *)this + 31) = (char *)this + 116;
  *((_DWORD *)this + 33) = 0;
  CMessaging::ResetQueues(this, 1);
  CPacketManager::RegisterPacketSlot(
    1,
    (int)CMessaging::sWritePacketData,
    (int)CMessaging::sReadPacketData,
    (int)CMessaging::sProcessAcknowledgedPacket,
    (int)CMessaging::sProcessLostPacket);
  *((_BYTE *)this + 4) = 1;
}


// ===== 80b114 CMessaging::Initialize(void) =====
int __fastcall CMessaging::Initialize(CMessaging *this)
{
  CMessaging *v2; // r5

  if ( CMessaging::s_messaging )
    return 0;
  v2 = (CMessaging *)operator new(0x8Cu, 2);
  CMessaging::CMessaging(v2);
  CMessaging::s_messaging = (int)v2;
  if ( v2 )
    return 0;
  else
    return -1;
}


// ===== 80b16c CMessaging::GetInstance(void) =====
int __fastcall CMessaging::GetInstance(CMessaging *this)
{
  CMessaging *v2; // r5

  if ( CMessaging::s_messaging )
    return CMessaging::s_messaging;
  v2 = (CMessaging *)operator new(0x8Cu, 2);
  CMessaging::CMessaging(v2);
  CMessaging::s_messaging = (int)v2;
  return (int)v2;
}


// ===== 80b1bc CMessaging::Get(void) =====
// attributes: thunk
int __fastcall CMessaging::Get(CMessaging *this)
{
  return CMessaging::GetInstance(this);
}


// ===== 80b1c0 GetMessaging(void) =====
// attributes: thunk
int __fastcall GetMessaging(CMessaging *this)
{
  return CMessaging::GetInstance(this);
}


// ===== 80b1c4 CMessaging::CMessaging(void) =====
void __fastcall CMessaging::CMessaging(CMessaging *this)
{
  *(_DWORD *)this = off_992328;
  *((_BYTE *)this + 4) = 0;
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 8));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 12));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 16));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 20));
  CNetMutex::CNetMutex((CMessaging *)((char *)this + 24));
  *((_DWORD *)this + 8) = (char *)this + 28;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 7) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 14) = (char *)this + 44;
  *((_DWORD *)this + 13) = (char *)this + 44;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 20) = (char *)this + 68;
  *((_DWORD *)this + 19) = (char *)this + 68;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 26) = (char *)this + 92;
  *((_DWORD *)this + 25) = (char *)this + 92;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_DWORD *)this + 32) = (char *)this + 116;
  *((_DWORD *)this + 31) = (char *)this + 116;
  *((_DWORD *)this + 33) = 0;
  CMessaging::ResetQueues(this, 1);
  CPacketManager::RegisterPacketSlot(
    1,
    (int)CMessaging::sWritePacketData,
    (int)CMessaging::sReadPacketData,
    (int)CMessaging::sProcessAcknowledgedPacket,
    (int)CMessaging::sProcessLostPacket);
  *((_BYTE *)this + 4) = 1;
}


// ===== 80b2f4 CMessaging::~CMessaging() =====
void __fastcall CMessaging::~CMessaging(CMessaging *this)
{
  *(_DWORD *)this = off_992328;
  *((_BYTE *)this + 4) = 0;
  CPacketManager::UnregisterPacketSlot(1);
  CMessaging::ResetQueues(this, 1);
  if ( *((_DWORD *)this + 33) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_erase(
      (int)this + 116,
      *((_DWORD **)this + 30));
    *((_DWORD *)this + 32) = (char *)this + 116;
    *((_DWORD *)this + 33) = 0;
    *((_DWORD *)this + 31) = (char *)this + 116;
    *((_DWORD *)this + 30) = 0;
  }
  if ( *((_DWORD *)this + 27) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 92,
      *((_DWORD **)this + 24));
    *((_DWORD *)this + 26) = (char *)this + 92;
    *((_DWORD *)this + 27) = 0;
    *((_DWORD *)this + 25) = (char *)this + 92;
    *((_DWORD *)this + 24) = 0;
  }
  if ( *((_DWORD *)this + 21) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 68,
      *((_DWORD **)this + 18));
    *((_DWORD *)this + 20) = (char *)this + 68;
    *((_DWORD *)this + 21) = 0;
    *((_DWORD *)this + 19) = (char *)this + 68;
    *((_DWORD *)this + 18) = 0;
  }
  if ( *((_DWORD *)this + 15) )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear((_DWORD *)this + 9);
  std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear((_DWORD *)this + 7);
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 24));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 20));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 16));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 12));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 8));
}


// ===== 80b438 CMessaging::~CMessaging() =====
void __fastcall CMessaging::~CMessaging(CMessaging *this)
{
  *(_DWORD *)this = off_992328;
  *((_BYTE *)this + 4) = 0;
  CPacketManager::UnregisterPacketSlot(1);
  CMessaging::ResetQueues(this, 1);
  if ( *((_DWORD *)this + 33) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_erase(
      (int)this + 116,
      *((_DWORD **)this + 30));
    *((_DWORD *)this + 32) = (char *)this + 116;
    *((_DWORD *)this + 33) = 0;
    *((_DWORD *)this + 31) = (char *)this + 116;
    *((_DWORD *)this + 30) = 0;
  }
  if ( *((_DWORD *)this + 27) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 92,
      *((_DWORD **)this + 24));
    *((_DWORD *)this + 26) = (char *)this + 92;
    *((_DWORD *)this + 27) = 0;
    *((_DWORD *)this + 25) = (char *)this + 92;
    *((_DWORD *)this + 24) = 0;
  }
  if ( *((_DWORD *)this + 21) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::_M_erase(
      (int)this + 68,
      *((_DWORD **)this + 18));
    *((_DWORD *)this + 20) = (char *)this + 68;
    *((_DWORD *)this + 21) = 0;
    *((_DWORD *)this + 19) = (char *)this + 68;
    *((_DWORD *)this + 18) = 0;
  }
  if ( *((_DWORD *)this + 15) )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
      (int)this + 44,
      *((_DWORD **)this + 12));
    *((_DWORD *)this + 14) = (char *)this + 44;
    *((_DWORD *)this + 15) = 0;
    *((_DWORD *)this + 13) = (char *)this + 44;
    *((_DWORD *)this + 12) = 0;
  }
  std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear((_DWORD *)this + 9);
  std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear((_DWORD *)this + 7);
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 24));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 20));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 16));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 12));
  CNetMutex::~CNetMutex((CMessaging *)((char *)this + 8));
}


// ===== 80b57c CMessaging::~CMessaging() =====
void __fastcall CMessaging::~CMessaging(CMessaging *this)
{
  CMessaging::~CMessaging(this);
  CustomFree(this);
}


// ===== 80b598 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::erase(std::priv::_Rb_tree_iterator<ushort,std::priv::_SetTraitsT<ushort>>) =====
void __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x14u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 80b5d4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r5
  unsigned __int8 *v5; // r6

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = v3;
  if ( *((_DWORD *)v3 + 9) )
  {
    v5 = v3 + 20;
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
      (int)(v3 + 20),
      *((_DWORD **)v3 + 6));
    *((_DWORD *)v4 + 8) = v5;
    *((_DWORD *)v4 + 9) = 0;
    *((_DWORD *)v4 + 7) = v5;
    *((_DWORD *)v4 + 6) = 0;
  }
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, 0x2Cu);
  --*(_DWORD *)(a1 + 16);
}


// ===== 80b640 std::allocator<std::priv::_Rb_tree_node<ushort>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 80b660 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::_M_insert(std::priv::_Rb_tree_node_base *,ushort const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        unsigned __int16 *a4,
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
    v8 = std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[2] = 0;
    *((_WORD *)v8 + 8) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *a4 < (unsigned int)*(unsigned __int16 *)(a3 + 16) )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate();
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
    v13 = std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate();
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


// ===== 80b780 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::insert_unique(ushort const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned __int16 *a3)
{
  int v3; // r12
  unsigned int v6; // r6
  unsigned int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r5
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(unsigned __int16 *)(v3 + 16);
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
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_insert(
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
    v6 = *a3;
    v10 = *(_DWORD *)(v3 + 12);
    v7 = *(unsigned __int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= (unsigned int)*(unsigned __int16 *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_insert(
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
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v10 + 16);
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v14 + 16);
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 80b900 CMessaging::PackMessages(int,NetBitStream &) =====
CMessaging *__fastcall CMessaging::PackMessages(
        CMessaging *this,
        pthread_mutex_t *a2,
        NetBitStream *a3,
        NetBitStream *a4)
{
  pthread_mutex_t *v4; // r9
  volatile int v9; // r6
  pthread_mutex_t *v10; // r8
  volatile int value; // t1
  CMessage *v12; // r7
  int v14; // r0
  unsigned int v15; // r3
  unsigned int v16; // r0
  int v17; // r1
  int v18; // r1
  int v19; // r2
  CMatching *v20; // r0
  char v21[10]; // [sp+Ch] [bp-10h] BYREF
  unsigned __int16 v22[3]; // [sp+16h] [bp-6h] BYREF

  v4 = a2 + 3;
  CNetMutex::Lock(a2 + 3);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_BYTE *)this = 0;
  *((_DWORD *)this + 2) = this;
  *((_DWORD *)this + 3) = this;
  value = a2[9].value;
  v10 = a2 + 9;
  v9 = value;
  while ( v10 != (pthread_mutex_t *)v9 )
  {
    v12 = *(CMessage **)(v9 + 8);
    if ( !v12
      || *((_BYTE *)v12 + 60)
      || CMessage::IsAcknowledgedBy(*(CMessage **)(v9 + 8), (int)a3)
      || CMessage::HasBeenSentTo(v12, (int)a3) )
    {
      goto LABEL_4;
    }
    if ( !CMessage::IsFor(v12, (int)a3) )
    {
      v20 = (CMatching *)CMatching::Get(nullptr);
      if ( CMatching::IsServer(v20) )
      {
        v9 = *(_DWORD *)v9;
        continue;
      }
    }
    v14 = (*(int (__fastcall **)(CMessage *))(*(_DWORD *)v12 + 8))(v12);
    v15 = *((_DWORD *)a4 + 4);
    v16 = v14 + 16;
    v17 = v15 & 7;
    if ( (v15 & 7) != 0 )
      v17 = 1;
    if ( *((_DWORD *)a4 + 2) - 1 - (v15 >> 3) - v17 < v16 )
    {
LABEL_4:
      v9 = *(_DWORD *)v9;
    }
    else
    {
      NetBitStream::WriteByte(a4, 1u, 1u);
      CMessage::Serialize(v12, a4);
      v22[0] = CMessage::GetHash((CMessage **)v12, v18, v19);
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::insert_unique(
        (int)v21,
        this,
        v22);
      CMessage::SetSentFlag(v12, (int)a3, 1);
      v9 = *(_DWORD *)v9;
    }
  }
  NetBitStream::WriteByte(a4, 0, 1u);
  CNetMutex::Unlock(v4);
  return this;
}


// ===== 80ba78 CMessaging::AddMissingMessages(int,int,int) =====
int __fastcall CMessaging::AddMissingMessages(int this, CMessage *a2, int a3, int a4)
{
  int v4; // r4
  _DWORD *v7; // r10
  unsigned __int16 Hash; // r0
  _BYTE v9[10]; // [sp+4h] [bp-10h] BYREF
  unsigned __int16 v10[3]; // [sp+Eh] [bp-6h] BYREF

  v4 = a3 + 1;
  if ( a4 > a3 + 1 )
  {
    v7 = (_DWORD *)(this + 44);
    do
    {
      Hash = CMessage::CreateHash(a2, v4++, a3);
      v10[0] = Hash;
      this = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::insert_unique(
               (int)v9,
               v7,
               v10);
    }
    while ( v4 != a4 );
  }
  return this;
}


// ===== 80bad4 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_copy(
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

  v6 = std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate();
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
    v6[3] = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_copy(
              a1,
              v10,
              v6);
  v11 = *((_DWORD *)a2 + 2);
  if ( v11 )
  {
    v12 = v9;
    do
    {
      v13 = std::allocator<std::priv::_Rb_tree_node<unsigned short>>::allocate();
      v14 = *(_WORD *)(v11 + 16);
      v13[2] = 0;
      v13[3] = 0;
      *((_WORD *)v13 + 8) = v14;
      *(_BYTE *)v13 = *(_BYTE *)v11;
      v12[2] = v13;
      v13[1] = v12;
      v12 = v13;
      if ( *(_DWORD *)(v11 + 12) )
        v13[3] = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_copy(
                   a1,
                   *(_DWORD *)(v11 + 12),
                   v13);
      v11 = *(_DWORD *)(v11 + 8);
    }
    while ( v11 );
  }
  return v9;
}


// ===== 80bb9c std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::_Rb_tree(std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_Rb_tree(
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
    v5 = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_copy(
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


// ===== 80bc14 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::_M_create_node(std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 44;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v5);
  v3[4] = *a2;
  std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_Rb_tree(
    (int)(v3 + 5),
    (int)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 80bc60 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
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


// ===== 80bd38 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::insert_unique(std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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


// ===== 80bec0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 80c234 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *node; // r0
  char v7; // r3
  _DWORD *v8; // r8
  int v9; // r1
  int v10; // r5
  _DWORD *v11; // r6
  _DWORD *v12; // r4

  node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
           a1,
           (_DWORD *)a2 + 4);
  v7 = *a2;
  node[1] = a3;
  v8 = node;
  *(_BYTE *)node = v7;
  v9 = *((_DWORD *)a2 + 3);
  if ( v9 )
    node[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_copy(
                a1,
                v9,
                node);
  v10 = *((_DWORD *)a2 + 2);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_create_node(
              a1,
              (_DWORD *)(v10 + 16));
      *(_BYTE *)v12 = *(_BYTE *)v10;
      v11[2] = v12;
      v12[1] = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        v12[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_copy(
                   a1,
                   *(_DWORD *)(v10 + 12),
                   v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 80c2dc std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>,std::priv::_Select1st<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_Rb_tree(
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
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_copy(
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


// ===== 80c354 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::_M_create_node(std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 44;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v5);
  v3[4] = *a2;
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_Rb_tree(
    (int)(v3 + 5),
    (int)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 80c3a0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_create_node(
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


// ===== 80c478 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::insert_unique(std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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


// ===== 80c600 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>,std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 80c974 std::map<int,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>,std::less<int>,std::allocator<std::pair<int const,std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  int v12; // [sp+4h] [bp-40h] BYREF
  int v13; // [sp+8h] [bp-3Ch] BYREF
  int v14; // [sp+Ch] [bp-38h]
  int *v15; // [sp+10h] [bp-34h]
  int *v16; // [sp+14h] [bp-30h]
  int v17; // [sp+18h] [bp-2Ch]
  char v18[4]; // [sp+20h] [bp-24h] BYREF
  int v19; // [sp+24h] [bp-20h]
  char *v20; // [sp+28h] [bp-1Ch]
  char *v21; // [sp+2Ch] [bp-18h]
  int v22; // [sp+30h] [bp-14h]
  _DWORD *v23; // [sp+38h] [bp-Ch] BYREF
  _DWORD *v24; // [sp+3Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 <= v6;
      v8 = (_DWORD *)(v4 <= v6 ? v2[2] : v2[3]);
      if ( !v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v12 = v4;
    v18[0] = 0;
    v19 = 0;
    v20 = v18;
    v21 = v18;
    v22 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_Rb_tree(
      (int)&v13,
      (int)v18);
    v23 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,std::set<unsigned short>>>,std::priv::_Select1st<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,std::set<unsigned short>>>>,std::allocator<std::pair<int const,std::map<int,std::set<unsigned short>>>>>::insert_unique(
      &v24,
      a1,
      &v23,
      &v12);
    v10 = v24;
    if ( v17 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_erase(
        (int)&v13,
        v14);
      v16 = &v13;
      v17 = 0;
      v15 = &v13;
      v14 = 0;
      if ( !v22 )
        goto LABEL_14;
    }
    else if ( !v22 )
    {
LABEL_14:
      v9 = v10;
      return v9 + 5;
    }
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::_M_erase(
      (int)v18,
      v19);
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 80ca98 std::map<int,std::set<ushort,std::less<ushort>,std::allocator<ushort>>,std::less<int>,std::allocator<std::pair<int const,std::set<ushort,std::less<ushort>,std::allocator<ushort>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::set<unsigned short>>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  int v12; // [sp+4h] [bp-40h] BYREF
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
  _DWORD *v23; // [sp+38h] [bp-Ch] BYREF
  _DWORD *v24; // [sp+3Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 <= v6;
      v8 = (_DWORD *)(v4 <= v6 ? v2[2] : v2[3]);
      if ( !v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v12 = v4;
    v18[0] = 0;
    v19 = nullptr;
    v20 = v18;
    v21 = v18;
    v22 = 0;
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_Rb_tree(
      (int)&v13,
      (int)v18);
    v23 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::insert_unique(
      &v24,
      a1,
      &v23,
      &v12);
    v10 = v24;
    if ( v17 )
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
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
      return v9 + 5;
    }
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
      (int)v18,
      v19);
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 80cbbc CMessaging::ProcessLostPacket(int,int) =====
void __fastcall CMessaging::ProcessLostPacket(pthread_mutex_t *this, int a2, int a3)
{
  int v3; // r3
  _DWORD *v5; // r6
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  int v9; // r2
  bool v10; // cc
  _DWORD *v11; // r2
  int v12; // r7
  _DWORD *v13; // r0
  _DWORD *v14; // r0
  _DWORD *v15; // r0
  _DWORD *v16; // r3
  _DWORD *v17; // r1
  int v18; // r2
  bool v19; // cc
  _DWORD *v20; // r2
  int v21; // [sp+0h] [bp-14h] BYREF
  int v22[2]; // [sp+4h] [bp-10h] BYREF
  unsigned __int8 *v23; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 33);
  v22[0] = a2;
  v21 = a3;
  if ( !v3 )
    return;
  v5 = this + 29;
  v6 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>((_DWORD *)this + 29, v22);
  v7 = (_DWORD *)v6[1];
  if ( !v7 )
    goto LABEL_27;
  v8 = v6;
  while ( 1 )
  {
    v9 = v7[4];
    v10 = v9 < v21;
    if ( v9 >= v21 )
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
  if ( v6 != v7 )
  {
    if ( v7[4] <= v21 )
    {
LABEL_14:
      if ( v6 != v7 )
      {
        v12 = v22[0];
        v13 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>(v5, v22);
        v14 = std::map<int,std::set<unsigned short>>::operator[]<int>(v13, &v21);
        CMessaging::ResendLostMessages(this, v12, (int)v14);
        v15 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>(v5, v22);
        v16 = (_DWORD *)v15[1];
        if ( v16 )
        {
          v17 = v15;
          while ( 1 )
          {
            v18 = v16[4];
            v19 = v18 < v21;
            if ( v18 >= v21 )
              v20 = (_DWORD *)v16[2];
            else
              v20 = (_DWORD *)v16[3];
            if ( v19 )
              v16 = v17;
            v17 = v16;
            if ( !v20 )
              break;
            v16 = v20;
          }
          if ( v15 != v16 && v16[4] <= v21 )
          {
            v23 = (unsigned __int8 *)v16;
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::erase(
              (int)v15,
              &v23);
          }
        }
      }
      return;
    }
LABEL_27:
    v7 = v6;
    goto LABEL_14;
  }
}


// ===== 80ccec CMessaging::sProcessLostPacket(int,int) =====
void __fastcall CMessaging::sProcessLostPacket(CMessaging *this, int a2, int a3)
{
  CMessaging::ProcessLostPacket((pthread_mutex_t *)CMessaging::s_messaging, (int)this, a2);
}


// ===== 80cd18 CMessaging::ProcessAcknowledgedPacket(int,int) =====
void __fastcall CMessaging::ProcessAcknowledgedPacket(pthread_mutex_t *this, int a2, int a3)
{
  int v3; // r3
  _DWORD *v5; // r6
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  int v9; // r2
  bool v10; // cc
  _DWORD *v11; // r2
  int v12; // r7
  _DWORD *v13; // r0
  _DWORD *v14; // r0
  _DWORD *v15; // r0
  _DWORD *v16; // r3
  _DWORD *v17; // r1
  int v18; // r2
  bool v19; // cc
  _DWORD *v20; // r2
  int v21; // [sp+0h] [bp-14h] BYREF
  int v22[2]; // [sp+4h] [bp-10h] BYREF
  unsigned __int8 *v23; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 33);
  v22[0] = a2;
  v21 = a3;
  if ( !v3 )
    return;
  v5 = this + 29;
  v6 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>((_DWORD *)this + 29, v22);
  v7 = (_DWORD *)v6[1];
  if ( !v7 )
    goto LABEL_27;
  v8 = v6;
  while ( 1 )
  {
    v9 = v7[4];
    v10 = v9 < v21;
    if ( v9 >= v21 )
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
  if ( v6 != v7 )
  {
    if ( v7[4] <= v21 )
    {
LABEL_14:
      if ( v6 != v7 )
      {
        v12 = v22[0];
        v13 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>(v5, v22);
        v14 = std::map<int,std::set<unsigned short>>::operator[]<int>(v13, &v21);
        CMessaging::AcknowledgeSentMessages(this, v12, (int)v14);
        v15 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>(v5, v22);
        v16 = (_DWORD *)v15[1];
        if ( v16 )
        {
          v17 = v15;
          while ( 1 )
          {
            v18 = v16[4];
            v19 = v18 < v21;
            if ( v18 >= v21 )
              v20 = (_DWORD *)v16[2];
            else
              v20 = (_DWORD *)v16[3];
            if ( v19 )
              v16 = v17;
            v17 = v16;
            if ( !v20 )
              break;
            v16 = v20;
          }
          if ( v15 != v16 && v16[4] <= v21 )
          {
            v23 = (unsigned __int8 *)v16;
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::set<unsigned short>>,std::priv::_Select1st<std::pair<int const,std::set<unsigned short>>>,std::priv::_MapTraitsT<std::pair<int const,std::set<unsigned short>>>,std::allocator<std::pair<int const,std::set<unsigned short>>>>::erase(
              (int)v15,
              &v23);
          }
        }
      }
      return;
    }
LABEL_27:
    v7 = v6;
    goto LABEL_14;
  }
}


// ===== 80ce48 CMessaging::sProcessAcknowledgedPacket(int,int) =====
void __fastcall CMessaging::sProcessAcknowledgedPacket(CMessaging *this, int a2, int a3)
{
  CMessaging::ProcessAcknowledgedPacket((pthread_mutex_t *)CMessaging::s_messaging, (int)this, a2);
}


// ===== 80ce74 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>>::operator=(std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,std::allocator<ushort>> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::operator=(
        int a1,
        int a2)
{
  char *v4; // r1
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r2
  _DWORD *v8; // r3

  if ( a1 != a2 )
  {
    if ( *(_DWORD *)(a1 + 16) )
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
        a1,
        *(_DWORD **)(a1 + 4));
      *(_DWORD *)(a1 + 16) = 0;
      *(_DWORD *)(a1 + 4) = 0;
      *(_DWORD *)(a1 + 8) = a1;
      *(_DWORD *)(a1 + 12) = a1;
    }
    *(_DWORD *)(a1 + 16) = 0;
    v4 = *(char **)(a2 + 4);
    if ( v4 )
    {
      v5 = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_copy(
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
      *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
    }
    else
    {
      *(_DWORD *)(a1 + 4) = 0;
      *(_DWORD *)(a1 + 8) = a1;
      *(_DWORD *)(a1 + 12) = a1;
    }
  }
  return a1;
}


// ===== 80cf1c CMessaging::WritePacketData(int,int,NetBitStream &) =====
int __fastcall CMessaging::WritePacketData(pthread_mutex_t *this, NetBitStream *a2, int a3, NetBitStream *a4)
{
  char *v5; // r0
  char *v6; // r12
  _DWORD *v8; // r0
  _DWORD *v9; // r6
  int v11; // [sp+0h] [bp-24h] BYREF
  NetBitStream *v12; // [sp+4h] [bp-20h] BYREF
  _BYTE v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+Ch] [bp-18h]
  int v15; // [sp+18h] [bp-Ch]

  v6 = (char *)(this + 9);
  v5 = *((char **)this + 9);
  v12 = a2;
  v11 = a3;
  if ( v5 == v6 )
  {
    NetBitStream::WriteByte(a4, 0, 1u);
    return 0;
  }
  else
  {
    do
      v5 = *(char **)v5;
    while ( v6 != v5 );
    NetBitStream::WriteByte(a4, 1u, 1u);
    v8 = std::map<int,std::map<int,std::set<unsigned short>>>::operator[]<int>((_DWORD *)this + 29, (int *)&v12);
    v9 = std::map<int,std::set<unsigned short>>::operator[]<int>(v8, &v11);
    CMessaging::PackMessages((CMessaging *)v13, this, v12, a4);
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::operator=(
      (int)v9,
      (int)v13);
    if ( v15 )
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::_M_erase(
        (int)v13,
        v14);
    return 1;
  }
}


// ===== 80cfdc CMessaging::sWritePacketData(int,int,NetBitStream &) =====
int __fastcall CMessaging::sWritePacketData(CMessaging *this, int a2, NetBitStream *a3, NetBitStream *a4)
{
  return CMessaging::WritePacketData((pthread_mutex_t *)CMessaging::s_messaging, this, a2, a3);
}


// ===== 80d018 std::allocator<std::priv::_List_node<CMessage *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<CMessage *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 80d038 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 80d058 CMessaging::ProcessMissingMessages(CMessage *) =====
int __fastcall CMessaging::ProcessMissingMessages(pthread_mutex_t *this, CMessage *a2)
{
  pthread_mutex_t *v2; // r9
  char *v5; // r1
  char *v6; // r12
  CMessage *v7; // r4
  int v8; // r10
  char *v9; // r6
  char *i; // r3
  int v11; // r2
  bool v12; // cc
  char *v13; // r2
  char *v14; // r7
  char *v15; // r12
  char *v16; // r2
  int v17; // r3
  bool v18; // cc
  char *v19; // r3
  char *v20; // r12
  char *v21; // r2
  int v22; // r3
  bool v23; // cc
  char *v24; // r3
  int v25; // r2
  unsigned int Hash; // r0
  char *v27; // r1
  unsigned int v28; // r2
  char *v29; // r3
  char *v30; // r4
  unsigned int v31; // r2
  bool v32; // cf
  char *v33; // r2
  unsigned int v34; // r0
  char *v35; // r3
  char *v36; // r1
  unsigned int v37; // r2
  bool v38; // cf
  char *v39; // r2
  char *v41; // r12
  char *v42; // r2
  int v43; // r3
  bool v44; // cc
  char *v45; // r3
  char *v46; // r3
  char *v47; // r12
  char *v48; // r2
  int v49; // r3
  bool v50; // cc
  char *v51; // r3
  char *v52; // r3
  char *v53; // r12
  char *v54; // r2
  int v55; // r3
  bool v56; // cc
  char *v57; // r3
  char *v58; // r3
  char *v59; // r12
  char *v60; // r2
  int v61; // r3
  bool v62; // cc
  char *v63; // r3
  char *v64; // r3
  char *v65; // r2
  int v66; // r3
  bool v67; // cc
  char *v68; // r3
  char *v69; // r3
  char *v70; // r12
  char *v71; // r2
  int v72; // r3
  bool v73; // cc
  char *v74; // r3
  char *v75; // r3
  int v76[2]; // [sp+4h] [bp-84h] BYREF
  int v77[2]; // [sp+Ch] [bp-7Ch] BYREF
  int v78[2]; // [sp+14h] [bp-74h] BYREF
  int v79[2]; // [sp+1Ch] [bp-6Ch] BYREF
  int v80[2]; // [sp+24h] [bp-64h] BYREF
  int v81[2]; // [sp+2Ch] [bp-5Ch] BYREF
  int v82[2]; // [sp+34h] [bp-54h] BYREF
  int v83[2]; // [sp+3Ch] [bp-4Ch] BYREF
  char *v84; // [sp+44h] [bp-44h] BYREF
  char *v85; // [sp+48h] [bp-40h] BYREF
  char *v86; // [sp+4Ch] [bp-3Ch] BYREF
  char *v87; // [sp+50h] [bp-38h] BYREF
  int v88; // [sp+54h] [bp-34h] BYREF
  char *v89; // [sp+58h] [bp-30h] BYREF
  char *v90; // [sp+5Ch] [bp-2Ch] BYREF
  char *v91; // [sp+60h] [bp-28h] BYREF
  char *v92; // [sp+64h] [bp-24h] BYREF
  char *v93; // [sp+68h] [bp-20h] BYREF
  int v94; // [sp+6Ch] [bp-1Ch] BYREF
  char *v95; // [sp+70h] [bp-18h] BYREF
  char *v96; // [sp+74h] [bp-14h] BYREF
  char *v97; // [sp+78h] [bp-10h] BYREF
  char *v98; // [sp+7Ch] [bp-Ch] BYREF
  char *v99; // [sp+80h] [bp-8h] BYREF
  char *v100; // [sp+84h] [bp-4h] BYREF

  v2 = this + 5;
  CNetMutex::Lock(this + 5);
  v6 = *((char **)this + 18);
  v7 = *((CMessage **)a2 + 3);
  v8 = *((_DWORD *)a2 + 1);
  v9 = (char *)(this + 17);
  if ( !v6 )
    goto LABEL_121;
  v5 = (char *)(this + 17);
  for ( i = *((char **)this + 18); ; i = v13 )
  {
    v11 = *((_DWORD *)i + 4);
    v12 = (int)v7 <= v11;
    if ( (int)v7 <= v11 )
      v13 = *((char **)i + 2);
    else
      v13 = *((char **)i + 3);
    if ( !v12 )
      i = v5;
    v5 = i;
    if ( !v13 )
      break;
  }
  if ( v9 == i )
    goto LABEL_123;
  if ( (int)v7 < *((_DWORD *)i + 4) )
LABEL_121:
    i = (char *)(this + 17);
  if ( v9 != i )
  {
    v14 = (char *)(this + 23);
    goto LABEL_15;
  }
LABEL_123:
  if ( v6 )
  {
    v65 = (char *)(this + 17);
    while ( 1 )
    {
      v66 = *((_DWORD *)v6 + 4);
      v67 = (int)v7 <= v66;
      if ( (int)v7 <= v66 )
        v68 = *((char **)v6 + 2);
      else
        v68 = *((char **)v6 + 3);
      if ( !v67 )
        v6 = v65;
      v65 = v6;
      if ( !v68 )
        break;
      v6 = v68;
    }
  }
  else
  {
    v6 = (char *)(this + 17);
  }
  if ( v9 == v6 || (v69 = v6, (int)v7 < *((_DWORD *)v6 + 4)) )
  {
    v83[1] = 0;
    v99 = v6;
    v83[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v98,
      (_DWORD *)this + 17,
      (_DWORD **)&v99,
      v83);
    v69 = v98;
  }
  *((_DWORD *)v69 + 5) = v8;
  v70 = *((char **)this + 24);
  v14 = (char *)(this + 23);
  if ( v70 )
  {
    v71 = (char *)(this + 23);
    while ( 1 )
    {
      v72 = *((_DWORD *)v70 + 4);
      v73 = (int)v7 <= v72;
      if ( (int)v7 <= v72 )
        v74 = *((char **)v70 + 2);
      else
        v74 = *((char **)v70 + 3);
      if ( !v73 )
        v70 = v71;
      v71 = v70;
      if ( !v74 )
        break;
      v70 = v74;
    }
  }
  else
  {
    v70 = (char *)(this + 23);
  }
  if ( v14 == v70 || (v75 = v70, (int)v7 < *((_DWORD *)v70 + 4)) )
  {
    v82[1] = 0;
    v97 = v70;
    v82[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v96,
      (_DWORD *)this + 23,
      (_DWORD **)&v97,
      v82);
    v75 = v96;
  }
  *((_DWORD *)v75 + 5) = v8;
LABEL_15:
  v15 = *((char **)this + 24);
  if ( v15 )
  {
    v16 = v14;
    while ( 1 )
    {
      v17 = *((_DWORD *)v15 + 4);
      v18 = (int)v7 <= v17;
      if ( (int)v7 <= v17 )
        v19 = *((char **)v15 + 2);
      else
        v19 = *((char **)v15 + 3);
      if ( !v18 )
        v15 = v16;
      v16 = v15;
      if ( !v19 )
        break;
      v15 = v19;
    }
  }
  else
  {
    v15 = v14;
  }
  if ( v14 == v15 || (int)v7 < *((_DWORD *)v15 + 4) )
  {
    v81[1] = 0;
    v95 = v15;
    v81[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v94,
      v14,
      (_DWORD **)&v95,
      v81);
    if ( *(_DWORD *)(v94 + 20) <= v8 )
      goto LABEL_28;
  }
  else if ( *((_DWORD *)v15 + 5) <= v8 )
  {
    goto LABEL_28;
  }
  v53 = *((char **)this + 24);
  if ( v53 )
  {
    v54 = v14;
    while ( 1 )
    {
      v55 = *((_DWORD *)v53 + 4);
      v56 = (int)v7 <= v55;
      if ( (int)v7 <= v55 )
        v57 = *((char **)v53 + 2);
      else
        v57 = *((char **)v53 + 3);
      if ( !v56 )
        v53 = v54;
      v54 = v53;
      if ( !v57 )
        break;
      v53 = v57;
    }
  }
  else
  {
    v53 = v14;
  }
  if ( v14 == v53 || (v58 = v53, (int)v7 < *((_DWORD *)v53 + 4)) )
  {
    v80[1] = 0;
    v93 = v53;
    v80[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v92,
      v14,
      (_DWORD **)&v93,
      v80);
    v58 = v92;
  }
  CMessaging::AddMissingMessages((int)this, v7, v8, *((_DWORD *)v58 + 5));
  v59 = *((char **)this + 24);
  if ( v59 )
  {
    v60 = v14;
    while ( 1 )
    {
      v61 = *((_DWORD *)v59 + 4);
      v62 = (int)v7 <= v61;
      if ( (int)v7 <= v61 )
        v63 = *((char **)v59 + 2);
      else
        v63 = *((char **)v59 + 3);
      if ( !v62 )
        v59 = v60;
      v60 = v59;
      if ( !v63 )
        break;
      v59 = v63;
    }
  }
  else
  {
    v59 = v14;
  }
  if ( v14 == v59 || (v64 = v59, (int)v7 < *((_DWORD *)v59 + 4)) )
  {
    v79[1] = 0;
    v91 = v59;
    v79[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v90,
      v14,
      (_DWORD **)&v91,
      v79);
    v64 = v90;
  }
  *((_DWORD *)v64 + 5) = v8;
LABEL_28:
  v20 = *((char **)this + 18);
  if ( v20 )
  {
    v21 = (char *)(this + 17);
    while ( 1 )
    {
      v22 = *((_DWORD *)v20 + 4);
      v23 = (int)v7 <= v22;
      if ( (int)v7 <= v22 )
        v24 = *((char **)v20 + 2);
      else
        v24 = *((char **)v20 + 3);
      if ( !v23 )
        v20 = v21;
      v21 = v20;
      if ( !v24 )
        break;
      v20 = v24;
    }
  }
  else
  {
    v20 = (char *)(this + 17);
  }
  if ( v9 == v20 || (v25 = *((_DWORD *)v20 + 4), (int)v7 < v25) )
  {
    v78[1] = 0;
    v89 = v20;
    v78[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v88,
      (_DWORD *)this + 17,
      (_DWORD **)&v89,
      v78);
    if ( *(_DWORD *)(v88 + 20) >= v8 )
      goto LABEL_41;
  }
  else if ( *((_DWORD *)v20 + 5) >= v8 )
  {
    goto LABEL_41;
  }
  v41 = *((char **)this + 18);
  if ( v41 )
  {
    v42 = (char *)(this + 17);
    while ( 1 )
    {
      v43 = *((_DWORD *)v41 + 4);
      v44 = (int)v7 <= v43;
      if ( (int)v7 <= v43 )
        v45 = *((char **)v41 + 2);
      else
        v45 = *((char **)v41 + 3);
      if ( !v44 )
        v41 = v42;
      v42 = v41;
      if ( !v45 )
        break;
      v41 = v45;
    }
  }
  else
  {
    v41 = (char *)(this + 17);
  }
  if ( v9 == v41 || (v46 = v41, (int)v7 < *((_DWORD *)v41 + 4)) )
  {
    v77[1] = 0;
    v87 = v41;
    v77[0] = (int)v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v86,
      (_DWORD *)this + 17,
      (_DWORD **)&v87,
      v77);
    v46 = v86;
  }
  CMessaging::AddMissingMessages((int)this, v7, *((_DWORD *)v46 + 5), v8);
  v47 = *((char **)this + 18);
  if ( v47 )
  {
    v48 = (char *)(this + 17);
    while ( 1 )
    {
      v49 = *((_DWORD *)v47 + 4);
      v50 = (int)v7 <= v49;
      if ( (int)v7 <= v49 )
        v51 = *((char **)v47 + 2);
      else
        v51 = *((char **)v47 + 3);
      if ( !v50 )
        v47 = v48;
      v48 = v47;
      if ( !v51 )
        break;
      v47 = v51;
    }
  }
  else
  {
    v47 = (char *)(this + 17);
  }
  if ( v9 == v47 || (v25 = *((_DWORD *)v47 + 4), v52 = v47, (int)v7 < v25) )
  {
    v76[0] = (int)v7;
    v76[1] = 0;
    v85 = v47;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
      &v84,
      (_DWORD *)this + 17,
      (_DWORD **)&v85,
      v76);
    v52 = v84;
  }
  *((_DWORD *)v52 + 5) = v8;
LABEL_41:
  Hash = CMessage::GetHash((CMessage **)a2, (int)v5, v25);
  v29 = *((char **)this + 12);
  v30 = (char *)(this + 11);
  if ( !v29 )
    goto LABEL_122;
  v27 = (char *)(this + 11);
  while ( 1 )
  {
    v31 = *((unsigned __int16 *)v29 + 8);
    v32 = v31 >= Hash;
    if ( v31 >= Hash )
      v33 = *((char **)v29 + 2);
    else
      v33 = *((char **)v29 + 3);
    if ( !v32 )
      v29 = v27;
    v27 = v29;
    if ( !v33 )
      break;
    v29 = v33;
  }
  if ( v30 != v29 )
  {
    v28 = *((unsigned __int16 *)v29 + 8);
    if ( v28 <= Hash )
    {
LABEL_52:
      if ( v30 != v29 )
      {
        v34 = CMessage::GetHash((CMessage **)a2, (int)v27, v28);
        v35 = *((char **)this + 12);
        if ( v35 )
        {
          v36 = (char *)(this + 11);
          while ( 1 )
          {
            v37 = *((unsigned __int16 *)v35 + 8);
            v38 = v37 >= v34;
            if ( v37 >= v34 )
              v39 = *((char **)v35 + 2);
            else
              v39 = *((char **)v35 + 3);
            if ( !v38 )
              v35 = v36;
            v36 = v35;
            if ( !v39 )
              break;
            v35 = v39;
          }
          if ( v30 != v35 && *((unsigned __int16 *)v35 + 8) <= v34 )
          {
            v100 = v35;
            std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,std::allocator<unsigned short>>::erase(
              (int)(this + 11),
              (unsigned __int8 **)&v100);
          }
        }
      }
      return CNetMutex::Unlock(v2);
    }
LABEL_122:
    v29 = (char *)(this + 11);
    goto LABEL_52;
  }
  return CNetMutex::Unlock(v2);
}


// ===== 80d624 CMessaging::AddToRecvQueue(CMessage *) =====
int __fastcall CMessaging::AddToRecvQueue(pthread_mutex_t *this, CMessage *a2)
{
  pthread_mutex_t *v3; // r5
  char *v5; // r7
  _DWORD *v6; // r0
  _DWORD *v7; // r2

  v3 = this + 2;
  v5 = (char *)(this + 7);
  CMessaging::ProcessMissingMessages(this, a2);
  CNetMutex::Lock(v3);
  v6 = std::allocator<std::priv::_List_node<CMessage *>>::allocate();
  v6[2] = a2;
  v7 = *((_DWORD **)this + 8);
  *v6 = v5;
  v6[1] = v7;
  *v7 = v6;
  *((_DWORD *)this + 8) = v6;
  CNetMutex::Unlock(v3);
  return CNetMutex::Unlock(v3);
}


// ===== 80d67c CMessaging::HasMessageBeenQueued(CMessage *) =====
int __fastcall CMessaging::HasMessageBeenQueued(pthread_mutex_t *this, CMessage *a2)
{
  pthread_mutex_t *v2; // r6
  int v5; // r4
  int v6; // r7
  char *v7; // r1
  int v8; // r2
  int v9; // r4
  char *v11; // r3
  char *v12; // r10
  int v13; // r2
  bool v14; // cc
  char *v15; // r2
  unsigned int Hash; // r0
  char *v17; // r3
  char *v18; // r12
  char *v19; // r1
  unsigned int v20; // r2
  bool v21; // cf
  char *v22; // r2
  char *v23; // r12
  char *v24; // r2
  int v25; // r3
  bool v26; // cc
  char *v27; // r3
  char *v28; // r3
  char *v29; // r12
  char *v30; // r1
  char *v31; // r2
  int v32; // r3
  bool v33; // cc
  char *v34; // r3
  char *v35; // r3
  int v36[2]; // [sp+0h] [bp-24h] BYREF
  int v37[2]; // [sp+8h] [bp-1Ch] BYREF
  char *v38; // [sp+10h] [bp-14h] BYREF
  char *v39; // [sp+14h] [bp-10h] BYREF
  char *v40; // [sp+18h] [bp-Ch] BYREF
  char *v41; // [sp+1Ch] [bp-8h] BYREF

  v2 = this + 5;
  CNetMutex::Lock(this + 5);
  v5 = *((_DWORD *)a2 + 3);
  v6 = *((_DWORD *)a2 + 1);
  if ( !CMessage::IsLocal(a2) )
  {
    v11 = *((char **)this + 18);
    v12 = (char *)(this + 17);
    if ( !v11 )
      goto LABEL_60;
    v7 = (char *)(this + 17);
    while ( 1 )
    {
      v13 = *((_DWORD *)v11 + 4);
      v14 = v5 <= v13;
      if ( v5 <= v13 )
        v15 = *((char **)v11 + 2);
      else
        v15 = *((char **)v11 + 3);
      if ( !v14 )
        v11 = v7;
      v7 = v11;
      if ( !v15 )
        break;
      v11 = v15;
    }
    if ( v12 == v11 )
      goto LABEL_2;
    v8 = *((_DWORD *)v11 + 4);
    if ( v5 < v8 )
LABEL_60:
      v11 = (char *)(this + 17);
    if ( v12 != v11 )
    {
      Hash = CMessage::GetHash((CMessage **)a2, (int)v7, v8);
      v17 = *((char **)this + 12);
      v18 = (char *)(this + 11);
      if ( !v17 )
        goto LABEL_28;
      v19 = (char *)(this + 11);
      while ( 1 )
      {
        v20 = *((unsigned __int16 *)v17 + 8);
        v21 = v20 >= Hash;
        if ( v20 >= Hash )
          v22 = *((char **)v17 + 2);
        else
          v22 = *((char **)v17 + 3);
        if ( !v21 )
          v17 = v19;
        v19 = v17;
        if ( !v22 )
          break;
        v17 = v22;
      }
      if ( v18 == v17 )
      {
LABEL_30:
        v23 = *((char **)this + 18);
        if ( v23 )
        {
          v24 = (char *)(this + 17);
          while ( 1 )
          {
            v25 = *((_DWORD *)v23 + 4);
            v26 = v5 <= v25;
            if ( v5 <= v25 )
              v27 = *((char **)v23 + 2);
            else
              v27 = *((char **)v23 + 3);
            if ( !v26 )
              v23 = v24;
            v24 = v23;
            if ( !v27 )
              break;
            v23 = v27;
          }
        }
        else
        {
          v23 = (char *)(this + 17);
        }
        if ( v12 == v23 || (v28 = v23, v5 < *((_DWORD *)v23 + 4)) )
        {
          v37[1] = 0;
          v41 = v23;
          v37[0] = v5;
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
            &v40,
            (_DWORD *)this + 17,
            (_DWORD **)&v41,
            v37);
          v28 = v40;
        }
        if ( *((_DWORD *)v28 + 5) >= v6 )
        {
          v29 = *((char **)this + 24);
          v30 = (char *)(this + 23);
          if ( v29 )
          {
            v31 = (char *)(this + 23);
            while ( 1 )
            {
              v32 = *((_DWORD *)v29 + 4);
              v33 = v5 <= v32;
              if ( v5 <= v32 )
                v34 = *((char **)v29 + 2);
              else
                v34 = *((char **)v29 + 3);
              if ( !v33 )
                v29 = v31;
              v31 = v29;
              if ( !v34 )
                break;
              v29 = v34;
            }
          }
          else
          {
            v29 = (char *)(this + 23);
          }
          if ( v30 == v29 || (v35 = v29, v5 < *((_DWORD *)v29 + 4)) )
          {
            v36[0] = v5;
            v36[1] = 0;
            v39 = v29;
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,std::allocator<std::pair<int const,int>>>::insert_unique(
              &v38,
              v30,
              (_DWORD **)&v39,
              v36);
            v35 = v38;
          }
          if ( *((_DWORD *)v35 + 5) <= v6 )
          {
            v9 = 1;
            goto LABEL_3;
          }
        }
        goto LABEL_2;
      }
      if ( *((unsigned __int16 *)v17 + 8) > Hash )
LABEL_28:
        v17 = (char *)(this + 11);
      if ( v18 != v17 )
        goto LABEL_2;
      goto LABEL_30;
    }
  }
LABEL_2:
  v9 = 0;
LABEL_3:
  CNetMutex::Unlock(v2);
  return v9;
}


// ===== 80d8a0 CMessaging::ProcessSendQueue(void) =====
int __fastcall CMessaging::ProcessSendQueue(int this)
{
  pthread_mutex_t *v1; // r8
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *value; // r6
  pthread_mutex_t *v4; // r7
  int *v5; // r5
  CMessage *v6; // r0

  v1 = (pthread_mutex_t *)this;
  if ( *(_BYTE *)(this + 4) )
  {
    v2 = (pthread_mutex_t *)(this + 12);
    CNetMutex::Lock((pthread_mutex_t *)(this + 12));
    v4 = v1 + 9;
    value = (pthread_mutex_t *)v1[9].value;
LABEL_3:
    while ( v4 != value )
    {
      while ( 1 )
      {
        v5 = (int *)value[2].value;
        value = (pthread_mutex_t *)value->value;
        if ( !v5 )
          break;
        if ( CMessage::IsFromServer((CMessage *)v5)
          && CMessage::IsFromMe((CMessage *)v5)
          && CMessage::IsForMe((CMessage *)v5)
          && !CMessaging::HasMessageBeenQueued(v1, (CMessage *)v5) )
        {
          v6 = (CMessage *)(*(int (__fastcall **)(int *))(*v5 + 32))(v5);
          CMessaging::AddToRecvQueue(v1, v6);
          CMessaging::AcknowledgeMessage((CMessaging *)v1, v5[3], (CMessage *)v5);
        }
        if ( CMessage::IsReliable((CMessage *)v5) )
        {
          if ( !CMessage::IsAcknowledged((CMessage *)v5) )
            goto LABEL_3;
          *((_BYTE *)v5 + 60) = 1;
        }
        else
        {
          *((_BYTE *)v5 + 60) = 1;
        }
        if ( v4 == value )
          goto LABEL_9;
      }
    }
LABEL_9:
    CNetMutex::Unlock(v2);
    CMessaging::PurgeMessagesFromQueue((int)v1, v4, v2);
    return CNetMutex::Unlock(v2);
  }
  return this;
}


// ===== 80d9c0 CMessaging::ReceiveMessage(CMessage *) =====
int __fastcall CMessaging::ReceiveMessage(pthread_mutex_t *this, CMessage *a2)
{
  int HasMessageBeenQueued; // r0
  CMatching *v5; // r0
  int result; // r0
  CMessage *v7; // r0
  CMatching *v8; // r0
  CMatching *v9; // r0
  CMessage *v10; // r0

  HasMessageBeenQueued = CMessage::IsForMe(a2);
  if ( !HasMessageBeenQueued || (HasMessageBeenQueued = CMessaging::HasMessageBeenQueued(this, a2)) != 0 )
  {
    v5 = (CMatching *)CMatching::Get((CMatching *)HasMessageBeenQueued);
    result = CMatching::IsServer(v5);
    if ( !result )
      goto LABEL_3;
  }
  else
  {
    v7 = (CMessage *)(*(int (__fastcall **)(CMessage *))(*(_DWORD *)a2 + 32))(a2);
    v8 = (CMatching *)CMessaging::AddToRecvQueue(this, v7);
    v9 = (CMatching *)CMatching::Get(v8);
    result = CMatching::IsServer(v9);
    if ( !result )
      goto LABEL_3;
  }
  result = CMessage::MustForward(a2);
  if ( result )
  {
    v10 = (CMessage *)(*(int (__fastcall **)(CMessage *))(*(_DWORD *)a2 + 32))(a2);
    result = CMessaging::AddToSendQueue((CMessaging *)this, v10);
  }
LABEL_3:
  if ( a2 )
    return (*(int (__fastcall **)(CMessage *))(*(_DWORD *)a2 + 28))(a2);
  return result;
}


// ===== 80da78 CMessaging::UnpackMessages(NetBitStream &) =====
int __fastcall CMessaging::UnpackMessages(pthread_mutex_t *this, NetBitStream *a2)
{
  CMessage *v4; // r0
  int result; // r0
  NetBitStream *v6; // r1

  while ( 1 )
  {
    result = NetBitStream::ReadByte(a2, 1u);
    if ( !result )
      break;
    v4 = CMessage::Unserialize(a2, v6);
    CMessaging::ReceiveMessage(this, v4);
  }
  return result;
}


// ===== 80dab4 CMessaging::ReadPacketData(int,int,NetBitStream &) =====
int __fastcall CMessaging::ReadPacketData(pthread_mutex_t *this, int a2, int a3, NetBitStream *a4)
{
  int result; // r0

  result = NetBitStream::ReadByte(a4, 1u);
  if ( result )
    return CMessaging::UnpackMessages(this, a4);
  return result;
}


// ===== 80dae8 CMessaging::sReadPacketData(int,int,NetBitStream &) =====
int __fastcall CMessaging::sReadPacketData(CMessaging *this, int a2, NetBitStream *a3, NetBitStream *a4)
{
  return CMessaging::ReadPacketData((pthread_mutex_t *)CMessaging::s_messaging, (int)this, a2, a3);
}


// ===== 80db24 CMessaging::AddToSendQueue(CMessage *) =====
int __fastcall CMessaging::AddToSendQueue(pthread_mutex_t *this, const char **a2)
{
  int v2; // r9
  CMatching *v3; // r0
  int v4; // r0
  int v5; // r0
  int **v6; // r4
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  CMessaging *v9; // r3
  std::string *v10; // r6
  std::string *v11; // r7
  int **v12; // r10
  _DWORD *v13; // r0
  _DWORD *v14; // r3
  int v15; // r7
  char *v16; // r3
  char *v17; // r1
  char **v18; // r3
  char *v19; // r0
  int v20; // r3
  int v21; // r0
  int v22; // r1
  int *v23; // r3
  int *v24; // r0
  int v25; // r1
  char *v26; // r2
  int v27; // r2
  int v28; // r0
  char *v29; // r0
  char *v30; // r1
  char *v31; // r12
  _DWORD *v32; // lr
  _DWORD *v33; // r3
  int *v34; // r3
  int *v35; // r2
  char **v36; // r3
  char *v37; // r1
  int *v38; // r3
  int v39; // r1
  char **v40; // r2
  char **v41; // r3
  bool v42; // zf
  int v43; // r9
  int i; // r11
  int **v45; // r12
  int **v46; // lr
  int *v47; // r3
  int **v48; // r2
  int *v49; // r1
  int *v50; // r0
  int *v51; // r8
  int *v52; // r3
  int ***v53; // r2
  int ***v54; // r3
  int **v55; // r12
  int *v56; // r0
  int **v57; // r1
  int *v58; // r2
  int v59; // r2
  int **v60; // r3
  int *v61; // r1
  std::string *v62; // r0
  const char *v63; // r2
  const char *v64; // r1
  int **v66; // r3
  int **v67; // r3
  int ***v68; // r2
  int *v71; // [sp+1Ch] [bp-228h] BYREF
  char **v72; // [sp+20h] [bp-224h]
  _DWORD v73[128]; // [sp+24h] [bp-220h] BYREF
  std::string v74; // [sp+224h] [bp-20h] BYREF

  if ( CMessage::IsLocal((CMessage *)a2) )
  {
    CMessaging::ReceiveMessage(this, (CMessage *)a2);
    return 16556;
  }
  v3 = (CMatching *)CNetMutex::Lock(this + 3);
  v4 = CMatching::Get(v3);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 108))(v4);
  v6 = (int **)(this + 9);
  CMessage::AcknowledgeMember((CMessage *)a2, v5);
  v7 = std::allocator<std::priv::_List_node<CMessage *>>::allocate();
  v7[2] = a2;
  v8 = *((_DWORD **)this + 10);
  *v7 = this + 9;
  v7[1] = v8;
  *v8 = v7;
  v9 = *((CMessaging **)this + 9);
  *((_DWORD *)this + 10) = v7;
  if ( this + 9 == (pthread_mutex_t *)v9 || v6 == *(int ***)v9 )
    goto LABEL_75;
  v10 = (std::string *)v73;
  v71 = (int *)&v71;
  v72 = (char **)&v71;
  v11 = (std::string *)v73;
  do
  {
    v11->_M_buffers._M_end_of_storage = (char *)v11;
    *(_DWORD *)&v11->_M_buffers._M_static_buf[4] = v11;
    v12 = (int **)v71;
    if ( v71 != (int *)&v71 )
    {
      do
      {
        v13 = std::allocator<std::priv::_List_node<CMessage *>>::allocate();
        v13[2] = v12[2];
        v14 = *(_DWORD **)&v11->_M_buffers._M_static_buf[4];
        *v13 = v11;
        v13[1] = v14;
        *v14 = v13;
        *(_DWORD *)&v11->_M_buffers._M_static_buf[4] = v13;
        v12 = (int **)*v12;
      }
      while ( v12 != &v71 );
    }
    v11 = (std::string *)((char *)v11 + 8);
  }
  while ( v11 != &v74 );
  v15 = 0;
  while ( 1 )
  {
    v23 = *v6;
    if ( *v6 == (int *)v6 )
      break;
    v24 = v71;
    v25 = *v23;
    v26 = (char *)v71;
    if ( v71 != v23 && v71 != (int *)v25 )
    {
      **(_DWORD **)(v25 + 4) = v71;
      *(_DWORD *)v23[1] = v25;
      *(_DWORD *)v24[1] = v23;
      v27 = v24[1];
      v24[1] = *(_DWORD *)(v25 + 4);
      *(_DWORD *)(v25 + 4) = v23[1];
      v23[1] = v27;
      v24 = v71;
      v26 = (char *)v71;
    }
    if ( !v15 )
    {
      v25 = 0;
      v2 = 0;
      goto LABEL_9;
    }
    v16 = (char *)v73[0];
    if ( (_DWORD *)v73[0] == v73 )
      v25 = 0;
    else
      v2 = 0;
    if ( (_DWORD *)v73[0] == v73 )
    {
      v26 = (char *)v24;
      v2 = v25;
LABEL_9:
      v16 = *(char **)((char *)v73 + v25);
      v17 = (char *)v73 + v25;
      if ( v16 != v17 )
        goto LABEL_10;
      goto LABEL_42;
    }
    v28 = v2;
    while ( 1 )
    {
      v29 = (char *)v73 + v28;
      while ( v29 != v16 )
      {
        if ( v26 == (char *)&v71 )
          goto LABEL_36;
        if ( *(_DWORD *)(*((_DWORD *)v26 + 2) + 56) < *(_DWORD *)(*((_DWORD *)v16 + 2) + 56) )
        {
          v30 = *(char **)v26;
          v31 = v16;
          if ( v16 != *(char **)v26 )
          {
            **((_DWORD **)v30 + 1) = v16;
            **((_DWORD **)v26 + 1) = v30;
            **((_DWORD **)v16 + 1) = v26;
            v32 = *((_DWORD **)v16 + 1);
            *((_DWORD *)v16 + 1) = *((_DWORD *)v30 + 1);
            v16 = v30;
            *((_DWORD *)v30 + 1) = *((_DWORD *)v26 + 1);
            *((_DWORD *)v26 + 1) = v32;
          }
        }
        else
        {
          v31 = *(char **)v16;
          v16 = v26;
        }
        v26 = v16;
        v16 = v31;
      }
      if ( v26 != (char *)&v71 && v29 != (char *)&v71 )
      {
        *v72 = v29;
        **((_DWORD **)v26 + 1) = &v71;
        **((_DWORD **)v29 + 1) = v26;
        v33 = *((_DWORD **)v29 + 1);
        *((_DWORD *)v29 + 1) = v72;
        v72 = *((char ***)v26 + 1);
        *((_DWORD *)v26 + 1) = v33;
      }
LABEL_36:
      v34 = *(int **)v29;
      ++v2;
      if ( v29 == *(char **)v29 )
      {
        v41 = (char **)v71;
        v42 = v71 == (int *)&v71;
        if ( v71 == (int *)&v71 )
        {
          v26 = (char *)&v71;
        }
        else
        {
          *(_DWORD *)v29 = v71;
          v41[1] = v29;
          v41 = v72;
        }
        if ( !v42 )
        {
          v26 = (char *)&v71;
          *((_DWORD *)v29 + 1) = v41;
          *v41 = v29;
          v71 = (int *)&v71;
          v72 = (char **)&v71;
        }
      }
      else
      {
        v35 = v71;
        if ( v71 == (int *)&v71 )
        {
          v71 = *(int **)v29;
          v34[1] = (int)&v71;
          v72 = *((char ***)v29 + 1);
          *v72 = (char *)&v71;
          *((_DWORD *)v29 + 1) = v29;
          *(_DWORD *)v29 = v29;
        }
        else
        {
          v71 = *(int **)v29;
          v36 = v72;
          v72 = *((char ***)v29 + 1);
          *(_DWORD *)v29 = v35;
          *((_DWORD *)v29 + 1) = v36;
          v37 = *v72;
          *v72 = *v36;
          *v36 = v37;
          v38 = *(int **)v29;
          v39 = v71[1];
          v71[1] = *(_DWORD *)(*(_DWORD *)v29 + 4);
          v38[1] = v39;
        }
        v26 = (char *)v71;
      }
      if ( v2 == v15 )
        break;
      v16 = (char *)v73[2 * v2];
      v28 = 8 * v2;
      v17 = (char *)&v73[2 * v2];
      if ( v16 == v17 )
        goto LABEL_42;
      v26 = (char *)v71;
    }
    v16 = (char *)v73[2 * v2];
    v17 = (char *)&v73[2 * v2];
    v26 = (char *)v71;
    if ( v16 != v17 )
    {
LABEL_10:
      v71 = (int *)v16;
      if ( v26 == (char *)&v71 )
      {
        *((_DWORD *)v16 + 1) = &v71;
        v72 = *((char ***)v17 + 1);
        *v72 = (char *)&v71;
        *((_DWORD *)v17 + 1) = v17;
        *(_DWORD *)v17 = v17;
      }
      else
      {
        v18 = v72;
        v72 = *((char ***)v17 + 1);
        *(_DWORD *)v17 = v26;
        *((_DWORD *)v17 + 1) = v18;
        v19 = *v72;
        *v72 = *v18;
        *v18 = v19;
        v20 = *(_DWORD *)v17;
        v21 = *(_DWORD *)(*(_DWORD *)v17 + 4);
        v22 = v71[1];
        v71[1] = v21;
        *(_DWORD *)(v20 + 4) = v22;
      }
      goto LABEL_12;
    }
LABEL_42:
    if ( v26 == (char *)&v71 )
    {
LABEL_12:
      if ( v2 == v15 )
      {
LABEL_44:
        if ( ++v15 > 63 )
          __ZSt26__stl_throw_overflow_errorPKc_veneer_0("list::sort");
      }
    }
    else
    {
      *(_DWORD *)v17 = v26;
      *((_DWORD *)v26 + 1) = v16;
      v40 = v72;
      *((_DWORD *)v17 + 1) = v72;
      *v40 = v16;
      v71 = (int *)&v71;
      v72 = (char **)&v71;
      if ( v2 == v15 )
        goto LABEL_44;
    }
  }
  if ( v15 > 1 )
  {
    v43 = 0;
    for ( i = 1; i != v15; ++i )
    {
      v45 = (int **)&v73[2 * i];
      v46 = (int **)&v73[v43];
      v47 = *v45;
      v48 = (int **)v73[v43];
      while ( v45 != (int **)v47 )
      {
        if ( v46 == v48 )
          goto LABEL_69;
        if ( (unsigned int)v48[2][14] < *(_DWORD *)(v47[2] + 56) )
        {
          v49 = *v48;
          v50 = v47;
          if ( v47 != *v48 )
          {
            *(_DWORD *)v49[1] = v47;
            *v48[1] = (int)v49;
            *(_DWORD *)v47[1] = v48;
            v51 = (int *)v47[1];
            v47[1] = v49[1];
            v47 = v49;
            v49[1] = (int)v48[1];
            v48[1] = v51;
          }
        }
        else
        {
          v50 = (int *)*v47;
          v47 = (int *)v48;
        }
        v48 = (int **)v47;
        v47 = v50;
      }
      if ( v46 != v48 && v45 != v46 )
      {
        *v46[1] = (int)v45;
        *v48[1] = (int)v46;
        *v45[1] = (int)v48;
        v52 = v45[1];
        v45[1] = v46[1];
        v46[1] = v48[1];
        v48[1] = v52;
      }
LABEL_69:
      v43 += 2;
    }
  }
  v53 = (int ***)v73[2 * v15 - 2];
  v54 = (int ***)&v73[2 * v15 - 2];
  if ( v53 == v54 )
  {
    v66 = *((int ***)this + 9);
    if ( v6 != v66 )
    {
      *v53 = v66;
      v66[1] = (int *)v53;
      v67 = *((int ***)this + 10);
      v53[1] = v67;
      *v67 = (int *)v53;
      *((_DWORD *)this + 10) = v6;
      *((_DWORD *)this + 9) = v6;
    }
  }
  else
  {
    v55 = *((int ***)this + 9);
    if ( v6 == v55 )
    {
      *((_DWORD *)this + 9) = v53;
      v53[1] = v6;
      v68 = (int ***)v54[1];
      *((_DWORD *)this + 10) = v68;
      *v68 = v6;
      v54[1] = (int **)v54;
      *v54 = (int **)v54;
    }
    else
    {
      v56 = (int *)v54[1];
      v57 = *((int ***)this + 10);
      *((_DWORD *)this + 9) = v53;
      *v54 = v55;
      *((_DWORD *)this + 10) = v56;
      v54[1] = v57;
      v58 = (int *)*v56;
      *v56 = (int)*v57;
      *v57 = v58;
      v59 = *((_DWORD *)this + 9);
      v60 = *v54;
      v61 = *(int **)(v59 + 4);
      *(_DWORD *)(v59 + 4) = v60[1];
      v60[1] = v61;
    }
  }
  do
  {
    v62 = v10;
    v10 = (std::string *)((char *)v10 + 8);
    std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear(v62);
  }
  while ( v10 != &v74 );
  std::priv::_List_base<CMessage *,std::allocator<CMessage *>>::clear(&v71);
LABEL_75:
  if ( *((_BYTE *)a2 + 50) )
  {
    v63 = a2[9];
    v64 = a2[10];
    v74._M_finish = (char *)&v74;
    v74._M_start_of_storage._M_data = (char *)&v74;
    std::string::_M_range_initialize(&v74, v64, v63);
    if ( (std::string *)v74._M_start_of_storage._M_data != &v74 && v74._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v74._M_buffers._M_end_of_storage - v74._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v74._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
          v74._M_start_of_storage._M_data,
          v74._M_buffers._M_end_of_storage - v74._M_start_of_storage._M_data);
    }
    *(_DWORD *)(GetPacketManager() + 44) = 0;
  }
  CNetMutex::Unlock(this + 3);
  return 16556;
}


// ===== 80e1e8 CMessaging::SendMsgToServer(CMessage *) =====
int __fastcall CMessaging::SendMsgToServer(CMessaging *this, CMessage *a2)
{
  CMatching *v4; // r7
  int (__fastcall *v5)(CMatching *, int); // r6
  int v6; // r0
  int v7; // r0
  unsigned int v8; // r0

  v4 = (CMatching *)CMatching::Get(this);
  v5 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v4 + 132);
  v6 = CMatching::Get(v4);
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 116))(v6);
  v8 = v5(v4, v7);
  CMessage::SetDestinationMask(a2, v8);
  return CMessaging::AddToSendQueue((pthread_mutex_t *)this, (const char **)a2);
}


// ===== 80e23c CMessaging::SendMsgTo(CMessage *,int) =====
int __fastcall CMessaging::SendMsgTo(CMessaging *this, CMessage *a2, CMatching *a3)
{
  int v6; // r0
  CMatching *v7; // r0
  int v8; // r0
  unsigned int v9; // r0

  v6 = CMatching::Get(this);
  v7 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 108))(v6);
  if ( v7 == a3 )
    return CMessaging::AddToRecvQueue((pthread_mutex_t *)this, a2);
  v8 = CMatching::Get(v7);
  v9 = (*(int (__fastcall **)(int, CMatching *))(*(_DWORD *)v8 + 132))(v8, a3);
  CMessage::SetDestinationMask(a2, v9);
  return CMessaging::AddToSendQueue((pthread_mutex_t *)this, (const char **)a2);
}


// ===== 80e2a4 CMessaging::SendMsg(CMessage *) =====
int __fastcall CMessaging::SendMsg(pthread_mutex_t *this, CMessage *a2)
{
  CMessage::SetDestinationMask(a2, 0xFFFFFFFF);
  return CMessaging::AddToSendQueue(this, (const char **)a2);
}


// ===== 80e2cc CSemaphore::CSemaphore(int) =====
void __fastcall CSemaphore::CSemaphore(CSemaphore *this, int a2)
{
  *((_DWORD *)this + 1) = a2;
}


// ===== 80e2d4 CSemaphore::CSemaphore(int) =====
void __fastcall CSemaphore::CSemaphore(CSemaphore *this, int a2)
{
  *((_DWORD *)this + 1) = a2;
}


// ===== 80e2dc CSemaphore::~CSemaphore() =====
void __fastcall CSemaphore::~CSemaphore(CSemaphore *this)
{
  ;
}


// ===== 80e2e0 CSemaphore::~CSemaphore() =====
void __fastcall CSemaphore::~CSemaphore(CSemaphore *this)
{
  ;
}


// ===== 80e2e4 CSemaphore::Wait(void) =====
void __fastcall CSemaphore::Wait(CSemaphore *this)
{
  ;
}


// ===== 80e2e8 CSemaphore::Release(int) =====
void __fastcall CSemaphore::Release(CSemaphore *this, int a2)
{
  ;
}


// ===== 80e2ec CReadWriteLock::CReadWriteLock(void) =====
void __fastcall CReadWriteLock::CReadWriteLock(CReadWriteLock *this)
{
  *(_DWORD *)this = off_992338;
}


// ===== 80e310 CReadWriteLock::CReadWriteLock(void) =====
void __fastcall CReadWriteLock::CReadWriteLock(CReadWriteLock *this)
{
  *(_DWORD *)this = off_992338;
}


// ===== 80e334 CReadWriteLock::~CReadWriteLock() =====
void __fastcall CReadWriteLock::~CReadWriteLock(CReadWriteLock *this)
{
  ;
}


// ===== 80e338 CReadWriteLock::~CReadWriteLock() =====
void __fastcall CReadWriteLock::~CReadWriteLock(CReadWriteLock *this)
{
  ;
}


// ===== 80e33c CReadWriteLock::LockWrite(void) =====
void __fastcall CReadWriteLock::LockWrite(CReadWriteLock *this)
{
  ;
}


// ===== 80e340 CReadWriteLock::UnlockWrite(void) =====
void __fastcall CReadWriteLock::UnlockWrite(CReadWriteLock *this)
{
  ;
}


// ===== 80e344 CReadWriteLock::LockRead(void) =====
void __fastcall CReadWriteLock::LockRead(CReadWriteLock *this)
{
  ;
}


// ===== 80e348 CReadWriteLock::UnlockRead(void) =====
void __fastcall CReadWriteLock::UnlockRead(CReadWriteLock *this)
{
  ;
}


// ===== 80e34c CReadWriteLock::~CReadWriteLock() =====
void __fastcall CReadWriteLock::~CReadWriteLock(CReadWriteLock *this)
{
  CReadWriteLock::~CReadWriteLock(this);
  LC_API_FREE_0(this);
}


// ===== 80e368 CNetMutex::Unlock(void) =====
// attributes: thunk
int CNetMutex::Unlock(pthread_mutex_t *mutex)
{
  return pthread_mutex_unlock(mutex);
}


// ===== 80e36c CNetMutex::Lock(void) =====
// attributes: thunk
int CNetMutex::Lock(pthread_mutex_t *mutex)
{
  return pthread_mutex_lock(mutex);
}


// ===== 80e370 CNetMutex::~CNetMutex() =====
void __fastcall CNetMutex::~CNetMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}


// ===== 80e384 CNetMutex::~CNetMutex() =====
void __fastcall CNetMutex::~CNetMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}


// ===== 80e398 CNetMutex::CNetMutex(void) =====
void __fastcall CNetMutex::CNetMutex(CNetMutex *this)
{
  pthread_mutexattr_t attr; // [sp+4h] [bp-8h] BYREF

  pthread_mutexattr_init(&attr);
  pthread_mutexattr_settype();
  pthread_mutex_init((pthread_mutex_t *)this, &attr);
}


// ===== 80e3d4 CNetMutex::CNetMutex(void) =====
void __fastcall CNetMutex::CNetMutex(CNetMutex *this)
{
  pthread_mutexattr_t attr; // [sp+4h] [bp-8h] BYREF

  pthread_mutexattr_init(&attr);
  pthread_mutexattr_settype();
  pthread_mutex_init((pthread_mutex_t *)this, &attr);
}


// ===== 80e410 NetBitStream::SetRevertPoint(void) =====
_DWORD *__fastcall NetBitStream::SetRevertPoint(_DWORD *this)
{
  int v1; // r2
  int v2; // r3

  v1 = *(this + 3);
  v2 = *(this + 4);
  *(this + 7) = 0;
  *(this + 5) = v1;
  *(this + 6) = v2;
  return this;
}


// ===== 80e42c NetBitStream::WriteBit(uint) =====
_DWORD *__fastcall NetBitStream::WriteBit(_DWORD *this, unsigned int a2)
{
  int v2; // r3
  unsigned int v3; // r2

  v2 = *(this + 7);
  if ( (v2 & 2) != 0 || (v3 = *(this + 4), v3 == 8 * *(this + 2)) )
  {
    *(this + 7) = v2 | 2;
  }
  else
  {
    if ( a2 )
      LOBYTE(a2) = -1;
    *(_BYTE *)(*(this + 1) + (v3 >> 3)) ^= (a2
                                          ^ *(_BYTE *)(*(this + 1) + (v3 >> 3)))
                                         & (unsigned __int8)(1 << (~(_BYTE)v3 & 7));
    ++*(this + 4);
  }
  return this;
}


// ===== 80e498 NetBitStream::ReadBit(void) =====
int __fastcall NetBitStream::ReadBit(NetBitStream *this)
{
  unsigned int v1; // r2
  int v3; // r0

  v1 = *((_DWORD *)this + 3);
  if ( *((_DWORD *)this + 2) < (v1 + 1) >> 3 )
  {
    *((_DWORD *)this + 7) |= 1u;
    return 0;
  }
  else
  {
    v3 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 3) = v1 + 1;
    return (*(unsigned __int8 *)(v3 + (v1 >> 3)) & (1 << (~(_BYTE)v1 & 7))) >> (~(_BYTE)v1 & 7);
  }
}


// ===== 80e4e8 NetBitStream::WriteByte(uchar,uint) =====
_DWORD *__fastcall NetBitStream::WriteByte(_DWORD *this, int a2, unsigned int a3)
{
  int v3; // r3
  unsigned int v4; // r12
  unsigned int v5; // r4
  int v6; // r3
  int v7; // r1

  v3 = *(this + 7);
  if ( (v3 & 2) != 0 || (v4 = *(this + 4), v5 = 8 * *(this + 2) - v4, a3 > v5) || v5 <= 8 )
  {
    *(this + 7) = v3 | 2;
  }
  else
  {
    v6 = *(this + 1);
    v7 = (unsigned __int8)(a2 << (8 - a3));
    *(_BYTE *)(v6 + (v4 >> 3)) |= v7 >> (v4 & 7);
    *(_BYTE *)(v6 + (v4 >> 3) + 1) = v7 << (8 - (v4 & 7));
    *(this + 4) += a3;
  }
  return this;
}


// ===== 80e564 NetBitStream::ReadByte(uint) =====
int __fastcall NetBitStream::ReadByte(NetBitStream *this, unsigned int a2)
{
  unsigned int v3; // r2
  int result; // r0

  v3 = *((_DWORD *)this + 3);
  if ( a2 > *((_DWORD *)this + 4) - v3 )
  {
    *((_DWORD *)this + 7) |= 1u;
    return 0;
  }
  else
  {
    result = (unsigned __int8)((int)(unsigned __int8)(((int)*(unsigned __int8 *)(*((_DWORD *)this + 1) + (v3 >> 3) + 1) >> (8 - (v3 & 7)))
                                                    | (*(_BYTE *)(*((_DWORD *)this + 1) + (v3 >> 3)) << (v3 & 7))) >> (8 - a2))
           & ~(-1 << a2);
    *((_DWORD *)this + 3) = a2 + v3;
  }
  return result;
}


// ===== 80e5dc NetBitStream::WriteU32(uint,uint) =====
_DWORD *__fastcall NetBitStream::WriteU32(_DWORD *this, unsigned int a2, unsigned int a3)
{
  unsigned int v3; // r7
  unsigned int v4; // r7
  unsigned int v5; // r4
  _DWORD *v6; // r8
  int v8; // r6
  unsigned int v9; // r2

  v3 = a3 & 7;
  if ( (a3 & 7) != 0 )
    v3 = 1;
  v4 = v3 + (a3 >> 3);
  v5 = a3;
  v6 = this;
  if ( v4 )
  {
    v8 = 0;
    do
    {
      if ( v5 >= 8 )
        v9 = 8;
      else
        v9 = v5;
      ++v8;
      this = NetBitStream::WriteByte(v6, (unsigned __int8)a2, v9);
      a2 >>= 8;
      v5 -= 8;
    }
    while ( v8 != v4 );
  }
  return this;
}


// ===== 80e630 NetBitStream::ReadU32(uint) =====
int __fastcall NetBitStream::ReadU32(NetBitStream *this, unsigned int a2)
{
  int v2; // r4
  unsigned int v3; // r7
  int v4; // r7
  char v5; // r10
  unsigned int v7; // r5
  int v8; // r6
  unsigned int v9; // r1
  int Byte; // r0
  char v11; // r3

  v3 = a2 & 7;
  if ( (a2 & 7) != 0 )
    v3 = 1;
  v4 = v3 + (a2 >> 3);
  if ( v4 > 0 )
    v2 = 0;
  v5 = a2;
  if ( v4 <= 0 )
    return 0;
  v7 = a2;
  v8 = v2;
  do
  {
    if ( v7 >= 8 )
      v9 = 8;
    else
      v9 = v7;
    Byte = NetBitStream::ReadByte(this, v9);
    v11 = 8 * v2++;
    v8 |= Byte << v11;
    v7 -= 8;
  }
  while ( v4 != v2 );
  return v8 & ~(-1 << v5);
}


// ===== 80e69c NetBitStreamArray::GetStream(int) =====
int __fastcall NetBitStreamArray::GetStream(NetBitStreamArray *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)this + 4 * a2);
}


// ===== 80e6a8 NetBitStreamArray::~NetBitStreamArray() =====
void __fastcall NetBitStreamArray::~NetBitStreamArray(NetBitStreamArray *this)
{
  int v1; // r2
  _DWORD *v3; // r0
  int i; // r4
  int v5; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 > 0 )
  {
    v3 = *(_DWORD **)this;
    for ( i = 0; i < v1; ++i )
    {
      v5 = v3[i];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[i]);
        *(_DWORD *)(*(_DWORD *)this + 4 * i) = 0;
        v3 = *(_DWORD **)this;
        v1 = *((_DWORD *)this + 1);
      }
    }
  }
  else
  {
    v3 = *(_DWORD **)this;
  }
  if ( v3 )
  {
    CustomFree(v3);
    *(_DWORD *)this = 0;
  }
}


// ===== 80e71c NetBitStreamArray::~NetBitStreamArray() =====
void __fastcall NetBitStreamArray::~NetBitStreamArray(NetBitStreamArray *this)
{
  int v1; // r2
  _DWORD *v3; // r0
  int i; // r4
  int v5; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 > 0 )
  {
    v3 = *(_DWORD **)this;
    for ( i = 0; i < v1; ++i )
    {
      v5 = v3[i];
      if ( v5 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(v3[i]);
        *(_DWORD *)(*(_DWORD *)this + 4 * i) = 0;
        v3 = *(_DWORD **)this;
        v1 = *((_DWORD *)this + 1);
      }
    }
  }
  else
  {
    v3 = *(_DWORD **)this;
  }
  if ( v3 )
  {
    CustomFree(v3);
    *(_DWORD *)this = 0;
  }
}


// ===== 80e790 NetBitStream::~NetBitStream() =====
void __fastcall NetBitStream::~NetBitStream(NetBitStream *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_992348;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 80e7d8 NetBitStream::~NetBitStream() =====
void __fastcall NetBitStream::~NetBitStream(NetBitStream *this)
{
  NetBitStream::~NetBitStream(this);
  CustomFree(this);
}


// ===== 80e7f4 NetBitStream::~NetBitStream() =====
void __fastcall NetBitStream::~NetBitStream(NetBitStream *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_992348;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 80e83c NetBitStream::Revert(void) =====
void *__fastcall NetBitStream::Revert(NetBitStream *this)
{
  unsigned int v1; // r2
  int v2; // r4
  int v3; // r3
  int v4; // r3

  v1 = *((_DWORD *)this + 6);
  v2 = *((_DWORD *)this + 1);
  v3 = v1 & 7;
  if ( (v1 & 7) != 0 )
    v3 = 1;
  v4 = v3 + (v1 >> 3);
  *((_DWORD *)this + 3) = *((_DWORD *)this + 5);
  *((_DWORD *)this + 4) = v1;
  *((_DWORD *)this + 7) = 0;
  *(_BYTE *)(v2 + v4 - 1) &= -1 << ((8 - v1) & 7);
  return LC_API_MEMSET_0((void *)(*((_DWORD *)this + 1) + v4), 0, *((_DWORD *)this + 2) - v4);
}


// ===== 80e89c NetBitStream::Reset(void) =====
void *__fastcall NetBitStream::Reset(NetBitStream *this)
{
  void *result; // r0

  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 3) = 0;
  result = LC_API_MEMSET_0(*((void **)this + 1), 0, *((_DWORD *)this + 2));
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 5) = 0;
  return result;
}


// ===== 80e8d0 NetBitStreamArray::ClearAllStreams(void) =====
_DWORD *__fastcall NetBitStreamArray::ClearAllStreams(_DWORD *this)
{
  _DWORD *v1; // r5
  int v2; // r4

  v1 = this;
  if ( (int)*(this + 1) > 0 )
  {
    v2 = 0;
    do
      this = NetBitStream::Reset(*(NetBitStream **)(*v1 + 4 * v2++));
    while ( v1[1] > v2 );
  }
  return this;
}


// ===== 80e908 NetBitStream::NetBitStream(uint) =====
void __fastcall NetBitStream::NetBitStream(NetBitStream *this, size_t a2)
{
  void *v4; // r0

  *(_DWORD *)this = off_992348;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = operator new[](a2, 2);
  *((_DWORD *)this + 1) = v4;
  LC_API_MEMSET_0(v4, 0, a2);
  if ( *((_DWORD *)this + 1) )
    *((_DWORD *)this + 2) = a2;
}


// ===== 80e980 NetBitStreamArray::NetBitStreamArray(int,int) =====
void __fastcall NetBitStreamArray::NetBitStreamArray(NetBitStreamArray *this, int a2, size_t a3)
{
  void *v5; // r0
  int v6; // r3
  int v7; // r5
  NetBitStream *v8; // r6

  *((_DWORD *)this + 1) = a2;
  v5 = operator new[](4 * a2, 2);
  v6 = *((_DWORD *)this + 1);
  *(_DWORD *)this = v5;
  if ( v6 > 0 )
  {
    v7 = 0;
    do
    {
      v8 = (NetBitStream *)operator new(0x20u, 2);
      NetBitStream::NetBitStream(v8, a3);
      *(_DWORD *)(*(_DWORD *)this + 4 * v7++) = v8;
    }
    while ( *((_DWORD *)this + 1) > v7 );
  }
}


// ===== 80e9e8 NetBitStreamArray::NetBitStreamArray(int,int) =====
void __fastcall NetBitStreamArray::NetBitStreamArray(NetBitStreamArray *this, int a2, size_t a3)
{
  void *v5; // r0
  int v6; // r3
  int v7; // r5
  NetBitStream *v8; // r6

  *((_DWORD *)this + 1) = a2;
  v5 = operator new[](4 * a2, 2);
  v6 = *((_DWORD *)this + 1);
  *(_DWORD *)this = v5;
  if ( v6 > 0 )
  {
    v7 = 0;
    do
    {
      v8 = (NetBitStream *)operator new(0x20u, 2);
      NetBitStream::NetBitStream(v8, a3);
      *(_DWORD *)(*(_DWORD *)this + 4 * v7++) = v8;
    }
    while ( *((_DWORD *)this + 1) > v7 );
  }
}


// ===== 80ea50 NetBitStream::NetBitStream(uint) =====
void __fastcall NetBitStream::NetBitStream(NetBitStream *this, size_t a2)
{
  void *v4; // r0

  *(_DWORD *)this = off_992348;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = operator new[](a2, 2);
  *((_DWORD *)this + 1) = v4;
  LC_API_MEMSET_0(v4, 0, a2);
  if ( *((_DWORD *)this + 1) )
    *((_DWORD *)this + 2) = a2;
}


// ===== 80eac8 NetBitStream::ShiftMemCopy(void *,uint,void const*,uint,int) =====
int __fastcall NetBitStream::ShiftMemCopy(
        NetBitStream *this,
        char *a2,
        unsigned int a3,
        unsigned __int8 *a4,
        unsigned int a5,
        int a6)
{
  int result; // r0
  unsigned int v8; // r5
  unsigned int v9; // r2
  unsigned int v10; // r5
  char v11; // r6
  int v12; // r2
  int v13; // r12
  int v14; // r6
  int v15; // r6
  size_t v16; // r2
  size_t v17; // r6
  unsigned int v18; // r1
  unsigned int v19; // r2
  int v20; // r1
  int i; // r12
  char v22; // r5

  result = a6;
  v8 = a5;
  if ( a6 <= 0 )
  {
    if ( a6 )
    {
      v18 = a3 & 7;
      if ( (a3 & 7) != 0 )
        v18 = 1;
      v19 = v18 + (a3 >> 3);
      if ( v19 )
      {
        result = -a6;
        v20 = 0;
        for ( i = 0; i != v19; a2[v20++] = v22 | ((int)a4[i] >> (a6 + 8)) )
        {
          ++i;
          v22 = a4[v20] << result;
          a2[v20] = v22;
        }
      }
    }
    else
    {
      if ( a5 >= a3 )
        v8 = a3;
      v15 = v8 & 7;
      if ( (v8 & 7) != 0 )
        v15 = 1;
      v16 = v15 + (v8 >> 3);
      v17 = v16 - 1;
      result = (int)memcpy(a2, a4, v16);
      a2[v17] &= -1 << ((8 - v8) & 7);
    }
  }
  else
  {
    v9 = a5 & 7;
    if ( (a5 & 7) != 0 )
      v9 = 1;
    v10 = v9 + (a5 >> 3);
    if ( v10 )
    {
      v11 = *a2;
      v12 = 0;
      v13 = 0;
      do
      {
        ++v13;
        a2[v12] = v11 | ((int)a4[v12] >> a6);
        v14 = a4[v12++];
        v11 = v14 << (8 - a6);
        a2[v13] = v11;
      }
      while ( v12 != v10 );
    }
  }
  return result;
}


// ===== 80ebc8 NetBitStream::ReadByteArray_BitSize(void *,uint) =====
NetBitStream *__fastcall NetBitStream::ReadByteArray_BitSize(NetBitStream *this, char *a2, unsigned int a3)
{
  NetBitStream *v3; // r4
  unsigned int v4; // r12

  v3 = this;
  v4 = *((_DWORD *)this + 4) - *((_DWORD *)this + 3);
  if ( a3 <= v4 )
  {
    this = (NetBitStream *)NetBitStream::ShiftMemCopy(
                             this,
                             a2,
                             a3,
                             (unsigned __int8 *)(*((_DWORD *)this + 1) + (*((_DWORD *)this + 3) >> 3)),
                             v4,
                             -(*((_DWORD *)this + 3) & 7));
    *((_DWORD *)v3 + 3) += a3;
  }
  else
  {
    *((_DWORD *)this + 7) |= 1u;
  }
  return this;
}


// ===== 80ec28 NetBitStream::ReadByteArray(void *,uint) =====
NetBitStream *__fastcall NetBitStream::ReadByteArray(NetBitStream *this, char *a2, unsigned int a3)
{
  return NetBitStream::ReadByteArray_BitSize(this, a2, 8 * a3);
}


// ===== 80ec30 NetBitStream::ReadString(void) =====
std::string *__fastcall NetBitStream::ReadString(std::string *this, NetBitStream *a2)
{
  unsigned int Byte; // r8
  const char *v5; // r6
  size_t v6; // r0
  char v8[260]; // [sp+0h] [bp-10Ch] BYREF

  Byte = NetBitStream::ReadByte(a2, 8u);
  LC_API_MEMSET_0(v8, 0, 0x101u);
  NetBitStream::ReadByteArray(a2, v8, Byte);
  if ( Byte )
    v5 = v8;
  else
    v5 = "";
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  v6 = LC_API_STRLEN_0(v5);
  std::string::_M_range_initialize(this, v5, &v5[v6]);
  return this;
}


// ===== 80ece8 NetBitStream::WriteByteArray_BitSize(void const*,uint) =====
NetBitStream *__fastcall NetBitStream::WriteByteArray_BitSize(NetBitStream *this, unsigned __int8 *a2, unsigned int a3)
{
  int v3; // r6
  NetBitStream *v4; // r4
  unsigned int v6; // r2

  v3 = *((_DWORD *)this + 7);
  v4 = this;
  if ( (v3 & 2) != 0 || (v6 = 8 * *((_DWORD *)this + 2) - *((_DWORD *)this + 4), a3 > v6) )
  {
    *((_DWORD *)this + 7) = v3 | 2;
  }
  else
  {
    this = (NetBitStream *)NetBitStream::ShiftMemCopy(
                             this,
                             (char *)(*((_DWORD *)this + 1) + (*((_DWORD *)this + 4) >> 3)),
                             v6,
                             a2,
                             a3,
                             *((_DWORD *)this + 4) & 7);
    *((_DWORD *)v4 + 4) += a3;
  }
  return this;
}


// ===== 80ed54 NetBitStream::WriteStream(NetBitStream&) =====
NetBitStream *__fastcall NetBitStream::WriteStream(NetBitStream *this, NetBitStream *a2)
{
  return NetBitStream::WriteByteArray_BitSize(this, *((unsigned __int8 **)a2 + 1), *((_DWORD *)a2 + 4));
}


// ===== 80ed60 NetBitStreamArray::CopyAllStreams(NetBitStream &) =====
NetBitStream *__fastcall NetBitStreamArray::CopyAllStreams(NetBitStream *this, NetBitStream *a2)
{
  NetBitStream *v2; // r5
  int v4; // r4
  NetBitStream *Stream; // r0

  v2 = this;
  if ( *((int *)this + 1) > 0 )
  {
    v4 = 0;
    do
    {
      Stream = (NetBitStream *)NetBitStreamArray::GetStream(v2, v4);
      this = NetBitStream::WriteStream(a2, Stream);
      ++v4;
    }
    while ( *((_DWORD *)v2 + 1) > v4 );
  }
  return this;
}


// ===== 80eda8 NetBitStream::WriteByteArray(void const*,uint) =====
NetBitStream *__fastcall NetBitStream::WriteByteArray(NetBitStream *this, unsigned __int8 *a2, unsigned int a3)
{
  return NetBitStream::WriteByteArray_BitSize(this, a2, 8 * a3);
}


// ===== 80edb0 NetBitStream::WriteString(std::string,uint) =====
NetBitStream *__fastcall NetBitStream::WriteString(NetBitStream *this, std::string a2, unsigned int a3)
{
  char *M_end_of_storage; // r5
  unsigned int v5; // r4

  M_end_of_storage = a2._M_buffers._M_end_of_storage;
  if ( *(_DWORD *)&a2._M_buffers._M_static_buf[4] )
  {
    v5 = *((_DWORD *)a2._M_buffers._M_end_of_storage + 4) - *((_DWORD *)a2._M_buffers._M_end_of_storage + 5);
    if ( v5 >= *(_DWORD *)&a2._M_buffers._M_static_buf[4] )
      v5 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  }
  else
  {
    v5 = *((_DWORD *)a2._M_buffers._M_end_of_storage + 4) - *((_DWORD *)a2._M_buffers._M_end_of_storage + 5);
  }
  NetBitStream::WriteByte(this, (unsigned __int8)v5, 8u);
  return NetBitStream::WriteByteArray(this, *((unsigned __int8 **)M_end_of_storage + 5), v5);
}


// ===== 80ee0c NetBitStream::GetBuffer(char *,uint) =====
size_t __fastcall NetBitStream::GetBuffer(NetBitStream *this, char *a2, unsigned int a3)
{
  unsigned int v3; // r4
  const void *v6; // r1
  int v7; // r3
  size_t v8; // r4

  v3 = *((_DWORD *)this + 4);
  v6 = *((const void **)this + 1);
  v7 = v3 & 7;
  if ( (v3 & 7) != 0 )
    v7 = 1;
  v8 = v7 + (v3 >> 3);
  memcpy(a2, v6, v8);
  return v8;
}


// ===== 80ee3c NetBitStream::SetBuffer(char const*,uint) =====
void *__fastcall NetBitStream::SetBuffer(void **this, const char *a2, size_t a3)
{
  unsigned int v4; // r5
  void *result; // r0

  v4 = 8 * a3;
  result = memcpy(*(this + 1), a2, a3);
  *(this + 4) = (void *)v4;
  return result;
}


// ===== 80ee5c NetBitStream::operator=(NetBitStream const&) =====
_DWORD *__fastcall NetBitStream::operator=(_DWORD *a1, int a2)
{
  size_t v4; // r2
  void *v5; // r0
  void *v6; // r0
  void *v8; // r0

  if ( a1 != (_DWORD *)a2 )
  {
    v4 = *(_DWORD *)(a2 + 8);
    if ( a1[2] < v4 )
    {
      v8 = (void *)a1[1];
      if ( v8 )
      {
        CustomFree(v8);
        a1[1] = 0;
        v4 = *(_DWORD *)(a2 + 8);
      }
      v5 = operator new[](v4, 2);
      a1[1] = v5;
      v4 = *(_DWORD *)(a2 + 8);
    }
    else
    {
      v5 = (void *)a1[1];
    }
    LC_API_MEMSET_0(v5, 0, v4);
    v6 = (void *)a1[1];
    if ( v6 )
    {
      memcpy(v6, *(const void **)(a2 + 4), *(_DWORD *)(a2 + 8));
      a1[2] = *(_DWORD *)(a2 + 8);
      a1[3] = *(_DWORD *)(a2 + 12);
      a1[4] = *(_DWORD *)(a2 + 16);
    }
  }
  return a1;
}


// ===== 80eef4 NetBitStream::NetBitStream(NetBitStream const&) =====
void __fastcall NetBitStream::NetBitStream(NetBitStream *this, const NetBitStream *a2)
{
  void *v4; // r0
  void *v5; // r0

  *(_DWORD *)this = off_992348;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = operator new[](*((_DWORD *)a2 + 2), 2);
  *((_DWORD *)this + 1) = v4;
  LC_API_MEMSET_0(v4, 0, *((_DWORD *)a2 + 2));
  v5 = *((void **)this + 1);
  if ( v5 )
  {
    memcpy(v5, *((const void **)a2 + 1), *((_DWORD *)a2 + 2));
    *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
    *((_DWORD *)this + 3) = *((_DWORD *)a2 + 3);
    *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  }
}


// ===== 80ef8c NetBitStream::NetBitStream(NetBitStream const&) =====
void __fastcall NetBitStream::NetBitStream(NetBitStream *this, const NetBitStream *a2)
{
  void *v4; // r0
  void *v5; // r0

  *(_DWORD *)this = off_992348;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  v4 = operator new[](*((_DWORD *)a2 + 2), 2);
  *((_DWORD *)this + 1) = v4;
  LC_API_MEMSET_0(v4, 0, *((_DWORD *)a2 + 2));
  v5 = *((void **)this + 1);
  if ( v5 )
  {
    memcpy(v5, *((const void **)a2 + 1), *((_DWORD *)a2 + 2));
    *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
    *((_DWORD *)this + 3) = *((_DWORD *)a2 + 3);
    *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  }
}


// ===== 80f024 NetBitStream::operator==(NetBitStream const&) =====
bool __fastcall NetBitStream::operator==(int a1, int a2)
{
  unsigned int v2; // r3
  int v4; // r2

  if ( a1 == a2 )
    return 1;
  v2 = *(_DWORD *)(a1 + 16);
  if ( v2 != *(_DWORD *)(a2 + 16) )
    return 0;
  v4 = *(_DWORD *)(a1 + 16) & 7;
  if ( (v2 & 7) != 0 )
    v4 = 1;
  return memcmp(*(const void **)(a1 + 4), *(const void **)(a2 + 4), v4 + (v2 >> 3)) == 0;
}


// ===== 80f074 CNetLog::~CNetLog() =====
void __fastcall CNetLog::~CNetLog(CNetLog *this)
{
  ;
}


// ===== 80f078 CNetLog::Update(void) =====
void __fastcall CNetLog::Update(CNetLog *this)
{
  ;
}


// ===== 80f07c CNetLog::GetInstance(void) =====
int *__fastcall CNetLog::GetInstance(CNetLog *this)
{
  return &CNetLog::s_log;
}


// ===== 80f098 GetNetLog(void) =====
// attributes: thunk
int *__fastcall GetNetLog(CNetLog *this)
{
  return CNetLog::GetInstance(this);
}


// ===== 80f09c `global constructor keyed to'.._src_generic_NetLog.cpp =====
int `global constructor keyed to'.._src_generic_NetLog.cpp()
{
  CNetLog::s_log = (int)off_992358;
  return _aeabi_atexit((int)&CNetLog::s_log, (int)CNetLog::~CNetLog, (int)&_dso_handle);
}


// ===== 80f0f0 CNetLog::~CNetLog() =====
void __fastcall CNetLog::~CNetLog(CNetLog *this)
{
  *(_DWORD *)this = off_992358;
  CustomFree(this);
}


// ===== 80f124 CNetPlayerInfo::IsActive(void) =====
bool __fastcall CNetPlayerInfo::IsActive(CNetPlayerInfo *this)
{
  return *((int *)this + 94) >= 0
      && *((int *)this + 104) >= 0
      && *((int *)this + 114) >= 0
      && *((_DWORD *)this + 124) == 3;
}


// ===== 80f164 CNetPlayerInfo::IsRemote(void) =====
int __fastcall CNetPlayerInfo::IsRemote(CNetPlayerInfo *this)
{
  return (*(unsigned __int8 (__fastcall **)(CNetPlayerInfo *))(*(_DWORD *)this + 80))(this) ^ 1;
}


// ===== 80f180 CNetPlayerInfo::IsInRoom(void) =====
int __fastcall CNetPlayerInfo::IsInRoom(CNetPlayerInfo *this)
{
  int v2; // r0

  v2 = CMatching::Get(this);
  return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 104))(v2, *((_DWORD *)this + 104));
}


// ===== 80f1a0 CNetPlayerInfo::IsLocalTo(int) =====
int __fastcall CNetPlayerInfo::IsLocalTo(CNetPlayerInfo *this, int a2)
{
  int v4; // r0
  int v5; // r0

  v4 = CMatching::Get(this);
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 116))(v4) != a2 )
  {
    v5 = *((_DWORD *)this + 104);
    return v5 == a2;
  }
  v5 = *((_DWORD *)this + 104);
  if ( v5 >= 0 )
    return v5 == a2;
  return 1;
}


// ===== 80f1ec CNetPlayerInfo::IsLocal(void) =====
bool __fastcall CNetPlayerInfo::IsLocal(CNetPlayerInfo *this)
{
  CMatching *v2; // r0
  _BOOL4 IsServer; // r0
  int v4; // r4
  int v5; // r0

  v2 = (CMatching *)CMatching::Get(this);
  IsServer = CMatching::IsServer(v2);
  if ( !IsServer )
  {
    v4 = *((_DWORD *)this + 104);
LABEL_4:
    v5 = CMatching::Get((CMatching *)IsServer);
    return v4 == (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 108))(v5);
  }
  v4 = *((_DWORD *)this + 104);
  if ( v4 >= 0 )
    goto LABEL_4;
  return 1;
}


// ===== 80f23c CNetPlayerInfo::IsHost(void) =====
bool __fastcall CNetPlayerInfo::IsHost(CNetPlayerInfo *this)
{
  return *((_DWORD *)this + 94) == *(_DWORD *)(GetNetPlayerMgr() + 368);
}


// ===== 80f260 CNetPlayerInfo::Add(void) =====
int __fastcall CNetPlayerInfo::Add(int this)
{
  if ( *(_DWORD *)(this + 496) != 1 )
  {
    *(_DWORD *)(this + 496) = 1;
    return NetStructMember::SetChanged((NetStructMember *)(this + 464));
  }
  return this;
}


// ===== 80f27c CNetPlayerInfo::Reset(void) =====
_DWORD *__fastcall CNetPlayerInfo::Reset(_DWORD *this)
{
  _DWORD *v1; // r4

  v1 = this;
  if ( *(this + 104) != -1 )
  {
    *(this + 104) = -1;
    this = (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(this + 96));
  }
  if ( v1[114] != -1 )
  {
    v1[114] = -1;
    this = (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(v1 + 106));
  }
  if ( v1[124] )
  {
    v1[124] = 0;
    return (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(v1 + 116));
  }
  return this;
}


// ===== 80f2e0 CNetPlayerInfo::Remove(void) =====
int __fastcall CNetPlayerInfo::Remove(CNetPlayerInfo *this)
{
  CMatching *v2; // r0
  int result; // r0

  v2 = (CMatching *)CMatching::Get(this);
  result = CMatching::IsServer(v2);
  if ( result )
  {
    if ( *((_DWORD *)this + 124) )
    {
      *((_DWORD *)this + 124) = 0;
      result = NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
    }
    if ( *((_DWORD *)this + 104) != -1 )
    {
      *((_DWORD *)this + 104) = -1;
      result = NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 384));
    }
    if ( *((_DWORD *)this + 114) != -1 )
    {
      *((_DWORD *)this + 114) = -1;
      return NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 424));
    }
  }
  else if ( *((_DWORD *)this + 124) != 6 )
  {
    *((_DWORD *)this + 124) = 6;
    return NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
  }
  return result;
}


// ===== 80f374 CNetPlayerInfo::Disconnect(void) =====
int __fastcall CNetPlayerInfo::Disconnect(CNetPlayerInfo *this)
{
  CMatching *v2; // r0
  int result; // r0

  v2 = (CMatching *)CMatching::Get(this);
  result = CMatching::IsServer(v2);
  if ( result )
  {
    if ( *((_DWORD *)this + 124) != 4 )
    {
      *((_DWORD *)this + 124) = 4;
      return NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
    }
  }
  else if ( *((_DWORD *)this + 124) != 5 )
  {
    *((_DWORD *)this + 124) = 5;
    return NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
  }
  return result;
}


// ===== 80f3d0 CNetPlayerInfo::Update(void) =====
CMatching *__fastcall CNetPlayerInfo::Update(CMatching *this)
{
  CMatching *v1; // r4
  CMatching *v2; // r0
  int IsServer; // r0
  CMatching *v4; // r0
  int v5; // r6
  int v6; // r2
  pthread_mutex_t *v7; // r0
  pthread_mutex_t *v8; // r0
  CNetPlayerManager *v9; // r0
  pthread_mutex_t *v10; // r0
  pthread_mutex_t *v11; // r0
  pthread_mutex_t *NetPlayerMgr; // r0
  int v13; // [sp+4h] [bp-Ch] BYREF
  int v14; // [sp+8h] [bp-8h] BYREF
  int v15; // [sp+Ch] [bp-4h] BYREF

  v1 = this;
  if ( *((_DWORD *)this + 160) == *((_DWORD *)this + 124) )
    goto LABEL_19;
  v2 = (CMatching *)CMatching::Get(this);
  IsServer = CMatching::IsServer(v2);
  if ( IsServer && *((_DWORD *)v1 + 124) == 5 )
    IsServer = CNetPlayerInfo::Disconnect(v1);
  v4 = (CMatching *)CMatching::Get((CMatching *)IsServer);
  if ( CMatching::IsServer(v4) )
  {
    v5 = *((_DWORD *)v1 + 124);
    if ( v5 != 6 )
      goto LABEL_7;
    CNetPlayerInfo::Remove(v1);
  }
  v5 = *((_DWORD *)v1 + 124);
LABEL_7:
  if ( v5 == 1 )
  {
    if ( (*(int (__fastcall **)(CMatching *))(*(_DWORD *)v1 + 80))(v1) )
    {
      v14 = 2;
      NetStructMemberType<unsigned int>::SetValue((CMatching *)((char *)v1 + 464), &v14);
    }
    v5 = *((_DWORD *)v1 + 124);
  }
  if ( v5 == 2 )
  {
    v15 = *((_DWORD *)v1 + 94);
    NetPlayerMgr = (pthread_mutex_t *)GetNetPlayerMgr();
    CEventQueueBase::AddEvent(NetPlayerMgr + 1, 9437185, &v15, 4);
    NetStruct::SetEnabled(v1, 1);
    v13 = 3;
    NetStructMemberType<unsigned int>::SetValue((CMatching *)((char *)v1 + 464), &v13);
    v5 = *((_DWORD *)v1 + 124);
  }
  if ( v5 == 3 )
  {
    v15 = *((_DWORD *)v1 + 94);
    v11 = (pthread_mutex_t *)GetNetPlayerMgr();
    CEventQueueBase::AddEvent(v11 + 1, 9437184, &v15, 4);
    NetStruct::SetEnabled(v1, 1);
    v5 = *((_DWORD *)v1 + 124);
  }
  if ( v5 == 4 )
  {
    v15 = *((_DWORD *)v1 + 94);
    v10 = (pthread_mutex_t *)GetNetPlayerMgr();
    CEventQueueBase::AddEvent(v10 + 96, 3145730, &v15, 4);
    v5 = *((_DWORD *)v1 + 124);
  }
  if ( !v5 )
  {
    v6 = *((_DWORD *)v1 + 160);
    v15 = *((_DWORD *)v1 + 94);
    if ( v6 != 4 )
    {
      v7 = (pthread_mutex_t *)GetNetPlayerMgr();
      CEventQueueBase::AddEvent(v7 + 96, 3145730, &v15, 4);
    }
    v8 = (pthread_mutex_t *)GetNetPlayerMgr();
    CEventQueueBase::AddEvent(v8 + 96, 3145731, &v15, 4);
    (*(void (__fastcall **)(CMatching *))(*(_DWORD *)v1 + 76))(v1);
    v5 = *((_DWORD *)v1 + 124);
  }
  *((_DWORD *)v1 + 160) = v5;
  v9 = (CNetPlayerManager *)GetNetPlayerMgr();
  this = (CMatching *)CNetPlayerManager::ClearPlayerListCaches(v9, *((_DWORD *)v1 + 104));
LABEL_19:
  if ( *((_BYTE *)v1 + 292) && !*((_DWORD *)v1 + 124) )
  {
    this = (CMatching *)(*(int (__fastcall **)(CMatching *))(*(_DWORD *)v1 + 44))(v1);
    if ( this )
      return (CMatching *)NetStruct::SetEnabled(v1, 0);
  }
  return this;
}


// ===== 80f618 CNetPlayerInfo::~CNetPlayerInfo() =====
void __fastcall CNetPlayerInfo::~CNetPlayerInfo(CNetPlayerInfo *this)
{
  int v2; // r1

  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 146) = &off_963790;
  std::string::~string((std::string *)((char *)this + 616));
  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 146) = &off_963648;
  *((_DWORD *)this + 136) = &off_963648;
  *((_DWORD *)this + 126) = &off_963648;
  *((_DWORD *)this + 116) = &off_963648;
  *((_DWORD *)this + 106) = &off_963648;
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


// ===== 80f6d8 CNetPlayerInfo::~CNetPlayerInfo() =====
void __fastcall CNetPlayerInfo::~CNetPlayerInfo(CNetPlayerInfo *this)
{
  CNetPlayerInfo::~CNetPlayerInfo(this);
  CustomFree(this);
}


// ===== 80f6f4 CNetPlayerInfo::~CNetPlayerInfo() =====
void __fastcall CNetPlayerInfo::~CNetPlayerInfo(CNetPlayerInfo *this)
{
  int v2; // r1

  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 146) = &off_963790;
  std::string::~string((std::string *)((char *)this + 616));
  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 146) = &off_963648;
  *((_DWORD *)this + 136) = &off_963648;
  *((_DWORD *)this + 126) = &off_963648;
  *((_DWORD *)this + 116) = &off_963648;
  *((_DWORD *)this + 106) = &off_963648;
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


// ===== 80f7b4 CNetPlayerInfo::CNetPlayerInfo(void) =====
void __fastcall CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo *this)
{
  bool v2; // zf
  NetStructMember *v3; // r2
  NetStructMember *v4; // r8
  bool v5; // zf
  NetStructMember *v6; // r11
  bool v7; // zf
  NetStructMember *v8; // r11
  bool v9; // zf
  bool v10; // zf
  NetStructMember *v11; // r11
  bool v12; // zf
  NetStructMember *v13; // r11
  int v14; // r3
  NetStructMember *v15; // [sp+4h] [bp-40h]
  NetStructMember *v16; // [sp+8h] [bp-3Ch]
  NetStructMember *v17; // [sp+Ch] [bp-38h]
  NetStructMember *v18; // [sp+14h] [bp-30h]
  NetStructMember *v19; // [sp+18h] [bp-2Ch]
  NetStructMember *v20; // [sp+1Ch] [bp-28h]
  std::string v21; // [sp+24h] [bp-20h] BYREF

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84) == 0;
  v3 = nullptr;
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
    v3 = (CNetPlayerInfo *)((char *)this + 304);
  *((_DWORD *)this + 77) = 17;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  if ( v2 )
  {
    v16 = v3;
  }
  else
  {
    v16 = (CNetPlayerInfo *)((char *)this + 304);
    *((_DWORD *)this + 84) = v3;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 304));
  }
  v4 = (NetStructMember *)(elf_hash_bucket + 14160);
  v5 = *((_DWORD *)this + 94) == 0;
  v6 = nullptr;
  *((_QWORD *)this + 44) = 0;
  *((_DWORD *)this + 76) = &off_9637C0;
  if ( v5 )
    v6 = (CNetPlayerInfo *)((char *)this + 344);
  *((_DWORD *)this + 87) = 8;
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 86) = &off_963618;
  *((_DWORD *)this + 90) = -1;
  *((_DWORD *)this + 92) = 0;
  *((_BYTE *)this + 372) = 0;
  if ( v5 )
  {
    v17 = v6;
  }
  else
  {
    v17 = (CNetPlayerInfo *)((char *)this + 344);
    *((_DWORD *)this + 94) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 344));
  }
  v7 = *((_DWORD *)this + 104) == 0;
  v8 = nullptr;
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 86) = &off_9637F0;
  if ( v7 )
    v8 = (CNetPlayerInfo *)((char *)this + 384);
  *((_DWORD *)this + 97) = 17;
  *((_DWORD *)this + 101) = -1;
  *((_DWORD *)this + 96) = &off_963618;
  *((_DWORD *)this + 100) = -1;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 0;
  if ( v7 )
  {
    v15 = v8;
  }
  else
  {
    v15 = (CNetPlayerInfo *)((char *)this + 384);
    *((_DWORD *)this + 104) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 384));
  }
  v9 = *((_DWORD *)this + 114) == 0;
  *((_QWORD *)this + 54) = 0;
  *((_DWORD *)this + 96) = &off_9637C0;
  if ( v9 )
    v4 = (CNetPlayerInfo *)((char *)this + 424);
  *((_DWORD *)this + 107) = 16;
  *((_DWORD *)this + 111) = -1;
  *((_DWORD *)this + 106) = &off_963618;
  *((_DWORD *)this + 110) = -1;
  *((_DWORD *)this + 112) = 0;
  *((_BYTE *)this + 452) = 0;
  if ( v9 )
  {
    v18 = v4;
  }
  else
  {
    v18 = (CNetPlayerInfo *)((char *)this + 424);
    *((_DWORD *)this + 114) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 424));
  }
  v10 = *((_DWORD *)this + 124) == 0;
  v11 = nullptr;
  *((_QWORD *)this + 59) = 0;
  *((_DWORD *)this + 106) = &off_963730;
  if ( v10 )
    v11 = (CNetPlayerInfo *)((char *)this + 464);
  *((_DWORD *)this + 117) = 8;
  *((_DWORD *)this + 121) = -1;
  *((_DWORD *)this + 116) = &off_9636A0;
  *((_DWORD *)this + 120) = -1;
  *((_DWORD *)this + 122) = 0;
  *((_BYTE *)this + 492) = 0;
  if ( v10 )
  {
    v20 = v11;
  }
  else
  {
    v20 = (CNetPlayerInfo *)((char *)this + 464);
    *((_DWORD *)this + 124) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
  }
  v12 = *((_DWORD *)this + 134) == 0;
  v13 = nullptr;
  *((_QWORD *)this + 64) = 0;
  *((_DWORD *)this + 116) = &off_963670;
  if ( v12 )
    v13 = (CNetPlayerInfo *)((char *)this + 504);
  *((_DWORD *)this + 127) = 8;
  *((_DWORD *)this + 131) = -1;
  *((_DWORD *)this + 126) = &off_9636A0;
  *((_DWORD *)this + 130) = -1;
  *((_DWORD *)this + 132) = 0;
  *((_BYTE *)this + 532) = 0;
  if ( v12 )
  {
    v19 = v13;
  }
  else
  {
    v19 = (CNetPlayerInfo *)((char *)this + 504);
    *((_DWORD *)this + 134) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 504));
  }
  v14 = *((_DWORD *)this + 144);
  *((_QWORD *)this + 69) = 0;
  *((_DWORD *)this + 126) = &off_963670;
  *((_DWORD *)this + 137) = 8;
  *((_DWORD *)this + 141) = -1;
  *((_DWORD *)this + 136) = &off_9636A0;
  *((_DWORD *)this + 140) = -1;
  *((_DWORD *)this + 142) = 0;
  *((_BYTE *)this + 572) = 0;
  if ( v14 )
  {
    *((_DWORD *)this + 144) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 544));
  }
  *((_DWORD *)this + 136) = &off_963670;
  v21._M_finish = (char *)&v21;
  v21._M_start_of_storage._M_data = (char *)&v21;
  std::string::_M_range_initialize(&v21, "", "");
  NetStructString<32u>::NetStructString((int)this + 584, &v21);
  if ( (std::string *)v21._M_start_of_storage._M_data != &v21 && v21._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v21._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        v21._M_start_of_storage._M_data,
        v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data);
  }
  *((_DWORD *)this + 160) = 0;
  NetStruct::DeclareMember(this, v16);
  NetStruct::DeclareMember(this, v17);
  NetStruct::DeclareMember(this, v15);
  NetStruct::DeclareMember(this, v18);
  NetStruct::DeclareMember(this, v20);
  NetStruct::DeclareMember(this, v19);
  NetStruct::DeclareMember(this, (CNetPlayerInfo *)((char *)this + 544));
  NetStruct::DeclareMember(this, (CNetPlayerInfo *)((char *)this + 584));
  CNetPlayerInfo::Reset(this);
}


// ===== 80fc28 CNetPlayerInfo::CNetPlayerInfo(void) =====
void __fastcall CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo *this)
{
  bool v2; // zf
  NetStructMember *v3; // r2
  NetStructMember *v4; // r8
  bool v5; // zf
  NetStructMember *v6; // r11
  bool v7; // zf
  NetStructMember *v8; // r11
  bool v9; // zf
  bool v10; // zf
  NetStructMember *v11; // r11
  bool v12; // zf
  NetStructMember *v13; // r11
  int v14; // r3
  NetStructMember *v15; // [sp+4h] [bp-40h]
  NetStructMember *v16; // [sp+8h] [bp-3Ch]
  NetStructMember *v17; // [sp+Ch] [bp-38h]
  NetStructMember *v18; // [sp+14h] [bp-30h]
  NetStructMember *v19; // [sp+18h] [bp-2Ch]
  NetStructMember *v20; // [sp+1Ch] [bp-28h]
  std::string v21; // [sp+24h] [bp-20h] BYREF

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84) == 0;
  v3 = nullptr;
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
    v3 = (CNetPlayerInfo *)((char *)this + 304);
  *((_DWORD *)this + 77) = 17;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  if ( v2 )
  {
    v16 = v3;
  }
  else
  {
    v16 = (CNetPlayerInfo *)((char *)this + 304);
    *((_DWORD *)this + 84) = v3;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 304));
  }
  v4 = (NetStructMember *)(elf_hash_bucket + 14160);
  v5 = *((_DWORD *)this + 94) == 0;
  v6 = nullptr;
  *((_QWORD *)this + 44) = 0;
  *((_DWORD *)this + 76) = &off_9637C0;
  if ( v5 )
    v6 = (CNetPlayerInfo *)((char *)this + 344);
  *((_DWORD *)this + 87) = 8;
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 86) = &off_963618;
  *((_DWORD *)this + 90) = -1;
  *((_DWORD *)this + 92) = 0;
  *((_BYTE *)this + 372) = 0;
  if ( v5 )
  {
    v17 = v6;
  }
  else
  {
    v17 = (CNetPlayerInfo *)((char *)this + 344);
    *((_DWORD *)this + 94) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 344));
  }
  v7 = *((_DWORD *)this + 104) == 0;
  v8 = nullptr;
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 86) = &off_9637F0;
  if ( v7 )
    v8 = (CNetPlayerInfo *)((char *)this + 384);
  *((_DWORD *)this + 97) = 17;
  *((_DWORD *)this + 101) = -1;
  *((_DWORD *)this + 96) = &off_963618;
  *((_DWORD *)this + 100) = -1;
  *((_DWORD *)this + 102) = 0;
  *((_BYTE *)this + 412) = 0;
  if ( v7 )
  {
    v15 = v8;
  }
  else
  {
    v15 = (CNetPlayerInfo *)((char *)this + 384);
    *((_DWORD *)this + 104) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 384));
  }
  v9 = *((_DWORD *)this + 114) == 0;
  *((_QWORD *)this + 54) = 0;
  *((_DWORD *)this + 96) = &off_9637C0;
  if ( v9 )
    v4 = (CNetPlayerInfo *)((char *)this + 424);
  *((_DWORD *)this + 107) = 16;
  *((_DWORD *)this + 111) = -1;
  *((_DWORD *)this + 106) = &off_963618;
  *((_DWORD *)this + 110) = -1;
  *((_DWORD *)this + 112) = 0;
  *((_BYTE *)this + 452) = 0;
  if ( v9 )
  {
    v18 = v4;
  }
  else
  {
    v18 = (CNetPlayerInfo *)((char *)this + 424);
    *((_DWORD *)this + 114) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 424));
  }
  v10 = *((_DWORD *)this + 124) == 0;
  v11 = nullptr;
  *((_QWORD *)this + 59) = 0;
  *((_DWORD *)this + 106) = &off_963730;
  if ( v10 )
    v11 = (CNetPlayerInfo *)((char *)this + 464);
  *((_DWORD *)this + 117) = 8;
  *((_DWORD *)this + 121) = -1;
  *((_DWORD *)this + 116) = &off_9636A0;
  *((_DWORD *)this + 120) = -1;
  *((_DWORD *)this + 122) = 0;
  *((_BYTE *)this + 492) = 0;
  if ( v10 )
  {
    v20 = v11;
  }
  else
  {
    v20 = (CNetPlayerInfo *)((char *)this + 464);
    *((_DWORD *)this + 124) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 464));
  }
  v12 = *((_DWORD *)this + 134) == 0;
  v13 = nullptr;
  *((_QWORD *)this + 64) = 0;
  *((_DWORD *)this + 116) = &off_963670;
  if ( v12 )
    v13 = (CNetPlayerInfo *)((char *)this + 504);
  *((_DWORD *)this + 127) = 8;
  *((_DWORD *)this + 131) = -1;
  *((_DWORD *)this + 126) = &off_9636A0;
  *((_DWORD *)this + 130) = -1;
  *((_DWORD *)this + 132) = 0;
  *((_BYTE *)this + 532) = 0;
  if ( v12 )
  {
    v19 = v13;
  }
  else
  {
    v19 = (CNetPlayerInfo *)((char *)this + 504);
    *((_DWORD *)this + 134) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 504));
  }
  v14 = *((_DWORD *)this + 144);
  *((_QWORD *)this + 69) = 0;
  *((_DWORD *)this + 126) = &off_963670;
  *((_DWORD *)this + 137) = 8;
  *((_DWORD *)this + 141) = -1;
  *((_DWORD *)this + 136) = &off_9636A0;
  *((_DWORD *)this + 140) = -1;
  *((_DWORD *)this + 142) = 0;
  *((_BYTE *)this + 572) = 0;
  if ( v14 )
  {
    *((_DWORD *)this + 144) = 0;
    NetStructMember::SetChanged((CNetPlayerInfo *)((char *)this + 544));
  }
  *((_DWORD *)this + 136) = &off_963670;
  v21._M_finish = (char *)&v21;
  v21._M_start_of_storage._M_data = (char *)&v21;
  std::string::_M_range_initialize(&v21, "", "");
  NetStructString<32u>::NetStructString((int)this + 584, &v21);
  if ( (std::string *)v21._M_start_of_storage._M_data != &v21 && v21._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v21._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        v21._M_start_of_storage._M_data,
        v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data);
  }
  *((_DWORD *)this + 160) = 0;
  NetStruct::DeclareMember(this, v16);
  NetStruct::DeclareMember(this, v17);
  NetStruct::DeclareMember(this, v15);
  NetStruct::DeclareMember(this, v18);
  NetStruct::DeclareMember(this, v20);
  NetStruct::DeclareMember(this, v19);
  NetStruct::DeclareMember(this, (CNetPlayerInfo *)((char *)this + 544));
  NetStruct::DeclareMember(this, (CNetPlayerInfo *)((char *)this + 584));
  CNetPlayerInfo::Reset(this);
}


// ===== 81009c CNetPlayerInfo::Delete(CNetPlayerInfo*) =====
int __fastcall CNetPlayerInfo::Delete(int this, CNetPlayerInfo *a2)
{
  if ( this )
    return (*(int (__fastcall **)(int, CNetPlayerInfo *))(*(_DWORD *)this + 4))(this, a2);
  return this;
}


// ===== 8100b8 NetStructInt<6u>::~NetStructInt() =====
void NetStructInt<6u>::~NetStructInt()
{
  ;
}


// ===== 8100bc CNetPlayerManager::GetInstance(void) =====
int __fastcall CNetPlayerManager::GetInstance(CNetPlayerManager *this)
{
  return CNetPlayerManager::s_playerManager;
}


// ===== 8100dc GetNetPlayerMgr(void) =====
// attributes: thunk
int __fastcall GetNetPlayerMgr(CNetPlayerManager *this)
{
  return CNetPlayerManager::GetInstance(this);
}


// ===== 8100e0 CNetPlayerManager::IsInitialized(void) =====
int __fastcall CNetPlayerManager::IsInitialized(CNetPlayerManager *this)
{
  int result; // r0

  result = CNetPlayerManager::s_playerManager;
  if ( CNetPlayerManager::s_playerManager )
    return *(unsigned __int8 *)(CNetPlayerManager::s_playerManager + 376);
  return result;
}


// ===== 810108 CNetPlayerManager::Terminate(void) =====
int __fastcall CNetPlayerManager::Terminate(CNetPlayerManager *this)
{
  int result; // r0

  if ( CNetPlayerManager::s_playerManager )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CNetPlayerManager::s_playerManager + 4))(CNetPlayerManager::s_playerManager);
    CNetPlayerManager::s_playerManager = 0;
  }
  return result;
}


// ===== 81014c CNetPlayerManager::GetPlayerInternal(int) =====
int __fastcall CNetPlayerManager::GetPlayerInternal(CNetPlayerManager *this, int a2)
{
  int v2; // r3

  if ( a2 < 0 )
    return 0;
  if ( a2 >= *((_DWORD *)this + 101) )
    return 0;
  v2 = *((_DWORD *)this + 102);
  if ( a2 >= (*((_DWORD *)this + 103) - v2) >> 2 )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 810180 CNetPlayerManager::GetPlayerInternal(int,int) =====
int __fastcall CNetPlayerManager::GetPlayerInternal(CNetPlayerManager *this, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r4
  int result; // r0

  v3 = *((_DWORD *)this + 102);
  v4 = (*((_DWORD *)this + 103) - v3) >> 2;
  if ( !v4 )
    return 0;
  v5 = 0;
  while ( 1 )
  {
    result = *(_DWORD *)(v3 + 4 * v5++);
    if ( result )
    {
      if ( a2 == *(_DWORD *)(result + 416) && a3 == *(_DWORD *)(result + 456) )
        break;
    }
    if ( v4 == v5 )
      return 0;
  }
  return result;
}


// ===== 8101e0 CNetPlayerManager::GetPlayer(int,bool) =====
int __fastcall CNetPlayerManager::GetPlayer(CNetPlayerManager *this, int a2, int a3)
{
  int PlayerInternal; // r0
  int v6; // r6

  PlayerInternal = CNetPlayerManager::GetPlayerInternal(this, a2);
  v6 = PlayerInternal;
  if ( PlayerInternal && (a3 || (*(int (__fastcall **)(int))(*(_DWORD *)PlayerInternal + 92))(PlayerInternal)) )
    return v6;
  else
    return *((_DWORD *)this + 95);
}


// ===== 810228 CNetPlayerManager::GetPlayerByMemberId(int,int,bool) =====
int __fastcall CNetPlayerManager::GetPlayerByMemberId(CNetPlayerManager *this, int a2, int a3, int a4)
{
  int PlayerInternal; // r0
  int v7; // r6

  PlayerInternal = CNetPlayerManager::GetPlayerInternal(this, a2, a3);
  v7 = PlayerInternal;
  if ( PlayerInternal && ((*(int (__fastcall **)(int))(*(_DWORD *)PlayerInternal + 92))(PlayerInternal) || a4) )
    return v7;
  else
    return *((_DWORD *)this + 95);
}


// ===== 810270 CNetPlayerManager::GetFreePlayerId(void) =====
int __fastcall CNetPlayerManager::GetFreePlayerId(CNetPlayerManager *this)
{
  int v1; // r2
  int v2; // r1
  int result; // r0

  v1 = *((_DWORD *)this + 101);
  if ( v1 > 0 )
  {
    v2 = *((_DWORD *)this + 102);
    result = *(_DWORD *)(*(_DWORD *)v2 + 496);
    if ( !result )
      return result;
    result = 0;
    while ( ++result != v1 )
    {
      if ( !*(_DWORD *)(*(_DWORD *)(v2 + 4 * result) + 496) )
      {
        if ( v1 > result )
          return result;
        return -1;
      }
    }
  }
  return -1;
}


// ===== 8102c0 CNetPlayerManager::RegisterPlayerInfoFunctions(CNetPlayerInfo * (*)(void),void (*)(CNetPlayerInfo *)) =====
_DWORD (*__fastcall CNetPlayerManager::RegisterPlayerInfoFunctions(
        _DWORD (*this)(CNetPlayerInfo *__hidden this),
        CNetPlayerInfo *(*a2)(),
        void (*a3)(CNetPlayerInfo *)))(CNetPlayerInfo *__hidden this)
{
  CNetPlayerManager::CreateNetPlayerInfo = this;
  CNetPlayerManager::DeleteNetPlayerInfo = (_DWORD (*)(CNetPlayerInfo *__hidden, CNetPlayerInfo *))a2;
  return this;
}


// ===== 8102f0 CNetPlayerManager::UnregisterPlayerInfoFunctions(void) =====
_DWORD (**__fastcall CNetPlayerManager::UnregisterPlayerInfoFunctions(
        CNetPlayerManager *this))(CNetPlayerInfo *__hidden this)
{
  CNetPlayerManager::CreateNetPlayerInfo = CNetPlayerInfo::Create;
  CNetPlayerManager::DeleteNetPlayerInfo = (_DWORD (*)(CNetPlayerInfo *__hidden, CNetPlayerInfo *))CNetPlayerInfo::Delete;
  return &CNetPlayerManager::CreateNetPlayerInfo;
}


// ===== 810338 CNetPlayerManager::AreAllPlayersAcknowledged(void) =====
int __fastcall CNetPlayerManager::AreAllPlayersAcknowledged(CNetPlayerManager *this)
{
  int *v1; // r3
  int v3; // r3
  int v4; // r4
  int v6; // r3

  v1 = *((int **)this + 102);
  if ( !((unsigned int)(*((_DWORD *)this + 103) - (_DWORD)v1) >> 2) )
    return 1;
  v3 = *v1;
  if ( v3 )
  {
    v4 = 0;
    while ( (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 44))(v3) )
    {
      v6 = *((_DWORD *)this + 102);
      if ( ++v4 >= (unsigned int)((*((_DWORD *)this + 103) - v6) >> 2) )
        return 1;
      v3 = *(_DWORD *)(v6 + 4 * v4);
      if ( !v3 )
        return 0;
    }
  }
  return 0;
}


// ===== 8103b8 NetStructInt<6u>::TestValue(int const&) =====
bool __fastcall NetStructInt<6u>::TestValue(int a1, int *a2)
{
  return abs32(*a2) <= 0x1F;
}


// ===== 8103d4 CNetPlayerInfo::Create(void) =====
CNetPlayerInfo *__fastcall CNetPlayerInfo::Create(CNetPlayerInfo *this)
{
  CNetPlayerInfo *v1; // r4

  v1 = (CNetPlayerInfo *)operator new(0x288u, 2);
  CNetPlayerInfo::CNetPlayerInfo(v1);
  return v1;
}


// ===== 8103f4 CNetPlayerManager::ResendManagerInfo(void) =====
int __fastcall CNetPlayerManager::ResendManagerInfo(CNetPlayerManager *this)
{
  return NetStruct::Resend((CNetPlayerManager *)((char *)this + 32));
}


// ===== 8103fc CNetPlayerManager::ProcessLostPacket(int,int) =====
int __fastcall CNetPlayerManager::ProcessLostPacket(CNetPlayerManager *this, int a2, int a3)
{
  int v6; // r2
  int v7; // r0
  unsigned int v8; // r4
  int v9; // r3
  int v10; // r2
  int result; // r0
  unsigned int v12; // r4
  int v13; // r3

  NetStruct::ProcessLostPacket((CNetPlayerManager *)((char *)this + 32), a2, a3);
  v6 = *((_DWORD *)this + 102);
  v7 = *((_DWORD *)this + 103);
  if ( (unsigned int)(v7 - v6) >> 2 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(v6 + 4 * v8++);
      if ( v9 )
      {
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v9 + 68))(v9, a2, a3);
        v6 = *((_DWORD *)this + 102);
        v7 = *((_DWORD *)this + 103);
      }
    }
    while ( v8 < (v7 - v6) >> 2 );
  }
  v10 = *((_DWORD *)this + 105);
  result = *((_DWORD *)this + 106);
  if ( (unsigned int)(result - v10) >> 2 )
  {
    v12 = 0;
    do
    {
      v13 = *(_DWORD *)(v10 + 4 * v12++);
      if ( v13 )
      {
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v13 + 68))(v13, a2, a3);
        v10 = *((_DWORD *)this + 105);
        result = *((_DWORD *)this + 106);
      }
    }
    while ( v12 < (result - v10) >> 2 );
  }
  return result;
}


// ===== 8104c0 CNetPlayerManager::sProcessLostPacket(int,int) =====
int __fastcall CNetPlayerManager::sProcessLostPacket(CNetPlayerManager *this, int a2, int a3)
{
  return CNetPlayerManager::ProcessLostPacket((CNetPlayerManager *)CNetPlayerManager::s_playerManager, (int)this, a2);
}


// ===== 8104ec CNetPlayerManager::ProcessAcknowledgedPacket(int,int) =====
int __fastcall CNetPlayerManager::ProcessAcknowledgedPacket(CNetPlayerManager *this, int a2, int a3)
{
  int v6; // r2
  int v7; // r0
  unsigned int v8; // r4
  int v9; // r3
  int v10; // r2
  int result; // r0
  unsigned int v12; // r4
  int v13; // r3

  NetStruct::ProcessAcknowledgedPacket((CNetPlayerManager *)((char *)this + 32), a2, a3);
  v6 = *((_DWORD *)this + 102);
  v7 = *((_DWORD *)this + 103);
  if ( (unsigned int)(v7 - v6) >> 2 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(v6 + 4 * v8++);
      if ( v9 )
      {
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v9 + 64))(v9, a2, a3);
        v6 = *((_DWORD *)this + 102);
        v7 = *((_DWORD *)this + 103);
      }
    }
    while ( v8 < (v7 - v6) >> 2 );
  }
  v10 = *((_DWORD *)this + 105);
  result = *((_DWORD *)this + 106);
  if ( (unsigned int)(result - v10) >> 2 )
  {
    v12 = 0;
    do
    {
      v13 = *(_DWORD *)(v10 + 4 * v12++);
      if ( v13 )
      {
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v13 + 64))(v13, a2, a3);
        v10 = *((_DWORD *)this + 105);
        result = *((_DWORD *)this + 106);
      }
    }
    while ( v12 < (result - v10) >> 2 );
  }
  return result;
}


// ===== 8105b0 CNetPlayerManager::sProcessAcknowledgedPacket(int,int) =====
int __fastcall CNetPlayerManager::sProcessAcknowledgedPacket(CNetPlayerManager *this, int a2, int a3)
{
  return CNetPlayerManager::ProcessAcknowledgedPacket(
           (CNetPlayerManager *)CNetPlayerManager::s_playerManager,
           (int)this,
           a2);
}


// ===== 8105dc CNetPlayerManager::GetLocalPlayer(int) =====
int __fastcall CNetPlayerManager::GetLocalPlayer(CNetPlayerManager *this, int a2)
{
  int v4; // r0
  int v5; // r0

  v4 = CMatching::Get(this);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 108))(v4);
  return CNetPlayerManager::GetPlayerByMemberId(this, v5, a2, 0);
}


// ===== 810610 CNetPlayerManager::WritePacketData(int,int,NetBitStream &) =====
int __fastcall CNetPlayerManager::WritePacketData(CNetPlayerManager *this, int a2, int a3, NetBitStream *a4)
{
  NetStruct *v8; // r5
  COnline *Online; // r0
  unsigned __int8 v10; // r0
  CMatching *v11; // r0
  CMatching *v12; // r0
  bool IsServer; // r0
  CMatching *v14; // r0
  int v15; // r3
  int v16; // r7
  unsigned int v17; // r5
  _DWORD *v18; // r2
  unsigned int v19; // r1
  int v20; // r1
  CMatching *v21; // r0
  int v22; // r1
  int v23; // r3
  int v24; // r2
  int v25; // r12
  unsigned int v26; // r5
  int v27; // r0
  int v29; // r0
  CMatching *v30; // r0
  _BOOL4 v31; // r0
  CMatching *v32; // r0
  int v33; // r0

  v8 = (CNetPlayerManager *)((char *)this + 32);
  Online = (COnline *)GetOnline(this);
  v10 = (unsigned __int8)COnline::IsServer(Online);
  v11 = (CMatching *)NetStruct::SetEnabled(v8, v10);
  v12 = (CMatching *)CMatching::Get(v11);
  IsServer = CMatching::IsServer(v12);
  v14 = (CMatching *)NetStruct::ConditionalSerialize(v8, IsServer, a4, a2, a3);
  v15 = *((_DWORD *)this + 102);
  v16 = (int)v14;
  if ( v14 )
    v16 = 1;
  if ( (unsigned int)(*((_DWORD *)this + 103) - v15) >> 2 )
  {
    v17 = 0;
    do
    {
      v18 = *(_DWORD **)(v15 + 4 * v17);
      v19 = v18[124];
      if ( v19 <= 6 )
      {
        v20 = 1 << v19;
        if ( (v20 & 0x6C) != 0 )
        {
          if ( (*(int (__fastcall **)(_DWORD))(*v18 + 80))(*(_DWORD *)(v15 + 4 * v17)) )
            goto LABEL_25;
          v32 = (CMatching *)CMatching::Get(nullptr);
          if ( CMatching::IsServer(v32) )
          {
            v33 = *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v17);
            if ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)v33 + 84))(v33, a2) )
            {
              v15 = *((_DWORD *)this + 102);
              v22 = 1;
              goto LABEL_12;
            }
          }
        }
        else
        {
          if ( (v20 & 0x11) != 0 )
          {
            v30 = (CMatching *)CMatching::Get(v14);
            v31 = CMatching::IsServer(v30);
            v15 = *((_DWORD *)this + 102);
            v22 = v31;
            goto LABEL_12;
          }
          if ( (v20 & 2) == 0 )
            goto LABEL_11;
          v21 = (CMatching *)CMatching::Get(v14);
          if ( CMatching::IsServer(v21) )
          {
            v29 = *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v17);
            if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v29 + 84))(v29, a2) )
            {
LABEL_25:
              v15 = *((_DWORD *)this + 102);
              v22 = 1;
              goto LABEL_12;
            }
          }
        }
        v15 = *((_DWORD *)this + 102);
      }
LABEL_11:
      v22 = 0;
LABEL_12:
      v23 = *(_DWORD *)(v15 + 4 * v17++);
      v14 = (CMatching *)(*(int (__fastcall **)(int, int, NetBitStream *, int, int))(*(_DWORD *)v23 + 12))(
                           v23,
                           v22,
                           a4,
                           a2,
                           a3);
      v15 = *((_DWORD *)this + 102);
      if ( v14 )
        v16 |= 1u;
    }
    while ( v17 < (*((_DWORD *)this + 103) - v15) >> 2 );
  }
  v24 = *((_DWORD *)this + 105);
  v25 = *((_DWORD *)this + 106);
  if ( (unsigned int)(v25 - v24) >> 2 )
  {
    v26 = 0;
    do
    {
      if ( *(_DWORD *)(v24 + 4 * v26) )
      {
        if ( (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v24 + 4 * v26) + 40))(*(_DWORD *)(v24 + 4 * v26), a2) )
        {
          NetBitStream::WriteByte(a4, 1, 1u);
          NetBitStream::WriteByte(a4, *(unsigned __int8 *)(*(_DWORD *)(*((_DWORD *)this + 105) + 4 * v26) + 456), 8u);
          v27 = *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v26);
          (*(void (__fastcall **)(int, NetBitStream *, int, int))(*(_DWORD *)v27 + 8))(v27, a4, a2, a3);
        }
        v24 = *((_DWORD *)this + 105);
        v25 = *((_DWORD *)this + 106);
      }
      ++v26;
    }
    while ( v26 < (v25 - v24) >> 2 );
    v16 = 1;
  }
  NetBitStream::WriteByte(a4, 0, 1u);
  return v16;
}


// ===== 81086c CNetPlayerManager::sWritePacketData(int,int,NetBitStream &) =====
int __fastcall CNetPlayerManager::sWritePacketData(CNetPlayerManager *this, int a2, NetBitStream *a3, NetBitStream *a4)
{
  return CNetPlayerManager::WritePacketData((CNetPlayerManager *)CNetPlayerManager::s_playerManager, (int)this, a2, a3);
}


// ===== 8108a8 CNetPlayerManager::RemovePlayer(int) =====
int __fastcall CNetPlayerManager::RemovePlayer(CNetPlayerManager *this, int a2)
{
  CNetPlayerInfo *Player; // r0

  Player = (CNetPlayerInfo *)CNetPlayerManager::GetPlayer(this, a2, 1);
  CNetPlayerInfo::Remove(Player);
  return 0;
}


// ===== 8108c0 CNetPlayerManager::DisconnectPlayer(int) =====
int __fastcall CNetPlayerManager::DisconnectPlayer(CNetPlayerManager *this, int a2)
{
  CNetPlayerInfo *Player; // r0

  Player = (CNetPlayerInfo *)CNetPlayerManager::GetPlayer(this, a2, 0);
  CNetPlayerInfo::Disconnect(Player);
  return 0;
}


// ===== 8108d8 NetStructInt<6u>::~NetStructInt() =====
_DWORD *__fastcall NetStructInt<6u>::~NetStructInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 81090c NetStructInt<6u>::Read(NetBitStream &) =====
int __fastcall NetStructInt<6u>::Read(int a1, NetBitStream *this)
{
  int v4; // r2
  int U32; // [sp+4h] [bp-8h] BYREF

  U32 = NetBitStream::ReadU32(this, 5u);
  if ( NetBitStream::ReadByte(this, 1u) )
    v4 = -1;
  else
    v4 = 1;
  U32 *= v4;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 81096c NetStructInt<6u>::Write(NetBitStream &) =====
_DWORD *__fastcall NetStructInt<6u>::Write(int a1, NetBitStream *this)
{
  unsigned int v2; // r4

  v2 = *(_DWORD *)(a1 + 32);
  NetBitStream::WriteU32(this, abs32(v2), 5u);
  return NetBitStream::WriteByte(this, v2 >> 31, 1u);
}


// ===== 8109a0 CNetPlayerManager::ProcessEvents(void) =====
int __fastcall CNetPlayerManager::ProcessEvents(CNetPlayerManager *this)
{
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *v3; // r6
  int Player; // r0
  int result; // r0
  int v6; // [sp+4h] [bp-4h] BYREF

  v2 = (pthread_mutex_t *)((char *)this + 4);
  v3 = (pthread_mutex_t *)((char *)this + 384);
  while ( CEventQueueBase::HasEventOccured(v2, 9437184, 0) )
  {
    v6 = 0;
    CEventQueueBase::GetEventData(v2, 9437184, &v6, 4);
    CEventQueueBase::ConsumeEvent(v2, 9437184);
    CEventQueueBase::AddEvent(v3, 3145728, &v6, 4);
    Player = CNetPlayerManager::GetPlayer(this, v6, 0);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)Player + 80))(Player) )
      CEventQueueBase::AddEvent(v3, 3145729, &v6, 4);
  }
  while ( CEventQueueBase::HasEventOccured(v2, 9437186, 0) )
  {
    v6 = 0;
    CEventQueueBase::GetEventData(v2, 9437186, &v6, 4);
    CEventQueueBase::ConsumeEvent(v2, 9437186);
    CEventQueueBase::AddEvent(v3, 3145731, &v6, 4);
  }
  while ( CEventQueueBase::HasEventOccured(v2, 9437187, 0) )
  {
    v6 = 0;
    CEventQueueBase::GetEventData(v2, 9437187, &v6, 4);
    CEventQueueBase::ConsumeEvent(v2, 9437187);
    CEventQueueBase::AddEvent(v3, 3145730, &v6, 4);
  }
  while ( 1 )
  {
    result = CEventQueueBase::HasEventOccured(v2, 9437184, 0);
    if ( !result )
      break;
    v6 = 0;
    CEventQueueBase::GetEventData(v2, 9437184, &v6, 4);
    CEventQueueBase::ConsumeEvent(v2, 9437184);
  }
  return result;
}


// ===== 810b74 CEventQueue<CNetPlayerManager::EVENTS,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CNetPlayerManager::EVENTS,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 810b78 CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 810b7c CNetPlayerManager::SetPlayerGamepadId(int,int) =====
int __fastcall CNetPlayerManager::SetPlayerGamepadId(CNetPlayerManager *this, int a2, int a3)
{
  int v3; // r3
  int v4; // r0

  if ( a2 < 0 )
    return 0;
  if ( a2 >= *((_DWORD *)this + 101) )
    return 0;
  v3 = *((_DWORD *)this + 102);
  if ( a2 >= (*((_DWORD *)this + 103) - v3) >> 2 )
    return 0;
  v4 = *(_DWORD *)(v3 + 4 * a2);
  if ( a3 != *(_DWORD *)(v4 + 456) )
  {
    *(_DWORD *)(v4 + 456) = a3;
    NetStructMember::SetChanged((NetStructMember *)(v4 + 424));
  }
  return 1;
}


// ===== 810bd4 CNetPlayerManager::ReassignPlayer(int,int,int) =====
int __fastcall CNetPlayerManager::ReassignPlayer(CNetPlayerManager *this, int a2, int a3, int a4)
{
  CMatching *v8; // r0
  int result; // r0
  _DWORD *Player; // r0
  _DWORD *v11; // r8
  int v12; // r0

  v8 = (CMatching *)CMatching::Get(this);
  result = CMatching::IsServer(v8);
  if ( result )
  {
    Player = (_DWORD *)CNetPlayerManager::GetPlayer(this, a2, 1);
    v11 = Player;
    if ( a3 != Player[104] )
    {
      Player[104] = a3;
      Player = (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(Player + 96));
    }
    if ( a4 != v11[114] )
    {
      v11[114] = a4;
      Player = (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(v11 + 106));
    }
    if ( v11[124] != 1 )
    {
      v11[124] = 1;
      Player = (_DWORD *)NetStructMember::SetChanged((NetStructMember *)(v11 + 116));
    }
    v12 = CMatching::Get((CMatching *)Player);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 108))(v12);
    if ( a3 != result )
      return NetStruct::SetEnabled(*(NetStruct **)(*((_DWORD *)this + 102) + 4 * a2), 1);
  }
  return result;
}


// ===== 810c88 CNetPlayerManager::ClearPlayers(void) =====
CNetPlayerInfo *__fastcall CNetPlayerManager::ClearPlayers(CNetPlayerManager *this)
{
  int v1; // r2
  int v2; // r3
  CNetPlayerInfo *v4; // r1
  unsigned int v5; // r5
  CNetPlayerInfo *v6; // r0
  int v7; // r6
  int v8; // r2
  int v9; // r3
  CNetPlayerInfo *v10; // r1
  unsigned int v11; // r5
  CNetPlayerInfo *v12; // r0
  int v13; // r6
  CNetPlayerInfo *result; // r0

  v1 = *((_DWORD *)this + 103);
  v2 = *((_DWORD *)this + 102);
  v4 = (CNetPlayerInfo *)((unsigned int)(v1 - v2) >> 2);
  if ( v4 )
  {
    v5 = 0;
    do
    {
      v6 = *(CNetPlayerInfo **)(v2 + 4 * v5);
      v7 = 4 * v5++;
      if ( v6 )
      {
        CNetPlayerManager::DeleteNetPlayerInfo(v6, v4);
        v2 = *((_DWORD *)this + 102);
      }
      *(_DWORD *)(v2 + v7) = 0;
      v1 = *((_DWORD *)this + 103);
      v2 = *((_DWORD *)this + 102);
      v4 = (CNetPlayerInfo *)(v1 - v2);
    }
    while ( v5 < (v1 - v2) >> 2 );
  }
  if ( v1 != v2 )
    *((_DWORD *)this + 103) = v2;
  v8 = *((_DWORD *)this + 106);
  v9 = *((_DWORD *)this + 105);
  v10 = (CNetPlayerInfo *)((unsigned int)(v8 - v9) >> 2);
  if ( v10 )
  {
    v11 = 0;
    do
    {
      v12 = *(CNetPlayerInfo **)(v9 + 4 * v11);
      v13 = 4 * v11++;
      if ( v12 )
      {
        CNetPlayerManager::DeleteNetPlayerInfo(v12, v10);
        v9 = *((_DWORD *)this + 105);
      }
      *(_DWORD *)(v9 + v13) = 0;
      v8 = *((_DWORD *)this + 106);
      v9 = *((_DWORD *)this + 105);
      v10 = (CNetPlayerInfo *)(v8 - v9);
    }
    while ( v11 < (v8 - v9) >> 2 );
  }
  result = *((CNetPlayerInfo **)this + 95);
  if ( v8 != v9 )
    *((_DWORD *)this + 106) = v9;
  if ( result )
  {
    result = (CNetPlayerInfo *)CNetPlayerManager::DeleteNetPlayerInfo(result, v10);
    *((_DWORD *)this + 95) = 0;
  }
  return result;
}


// ===== 810d90 CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager(void) =====
CNetPlayerManager::NetStructPlayerManager *__fastcall CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager(
        CNetPlayerManager::NetStructPlayerManager *this)
{
  int v2; // r2
  NetStructMember *v3; // r6
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_992440;
  *((_DWORD *)this + 77) = 6;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  v3 = (CNetPlayerManager::NetStructPlayerManager *)((char *)this + 304);
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((CNetPlayerManager::NetStructPlayerManager *)((char *)this + 304));
  }
  *((_DWORD *)this + 76) = &off_9923E0;
  NetStruct::DeclareMember(this, v3);
  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 6;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[5] = -1;
  v5[6] = 0;
  if ( v7[0] != -1 )
  {
    v7[0] = -1;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v5[0] = &off_9923E0;
  (*(void (__fastcall **)(NetStructMember *, int *))(*((_DWORD *)this + 76) + 28))(v3, v7);
  return this;
}


// ===== 810ec8 CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager() =====
void __fastcall CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager(
        CNetPlayerManager::NetStructPlayerManager *this)
{
  int v2; // r0

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


// ===== 810f3c CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager() =====
void __fastcall CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager(
        CNetPlayerManager::NetStructPlayerManager *this)
{
  int v2; // r0

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
  CustomFree(this);
}


// ===== 810fb8 CEventQueue<CNetPlayerManager::EVENTS,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CNetPlayerManager::EVENTS,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 810ff4 CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((pthread_mutex_t *)(a1 + 4));
  return a1;
}


// ===== 811030 CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<CNetPlayerManager::EVENTS_INTERNAL,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 811074 CEventQueue<CNetPlayerManager::EVENTS,100u>::~CEventQueue() =====
void *__fastcall CEventQueue<CNetPlayerManager::EVENTS,100u>::~CEventQueue(void *a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)a1 + 2);
  CNetMutex::~CNetMutex((pthread_mutex_t *)a1 + 1);
  CustomFree(a1);
  return a1;
}


// ===== 8110b8 std::allocator<CNetPlayerInfo *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<CNetPlayerInfo *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 811128 std::vector<CNetPlayerInfo *,std::allocator<CNetPlayerInfo *>>::_M_insert_overflow(CNetPlayerInfo **,CNetPlayerInfo * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<CNetPlayerInfo *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<CNetPlayerInfo *>::_M_allocate(a1 + 8, v6, &v16);
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
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 8111ec CNetPlayerManager::InitPlayers(void) =====
CNetPlayerInfo *__fastcall CNetPlayerManager::InitPlayers(CNetPlayerManager *this)
{
  int NetPlayerInfo; // r0
  int v3; // r3
  CNetPlayerInfo *result; // r0
  int v5; // r5
  int v6; // r0
  _DWORD *v7; // r1
  _DWORD *v8; // r3
  int v9; // r3
  _DWORD *v10; // r3
  int v11; // [sp+4h] [bp-4h] BYREF

  NetPlayerInfo = CNetPlayerManager::CreateNetPlayerInfo(this);
  *((_DWORD *)this + 95) = NetPlayerInfo;
  v3 = NetPlayerInfo;
  if ( *(_DWORD *)(NetPlayerInfo + 376) != -64 )
  {
    *(_DWORD *)(NetPlayerInfo + 376) = -64;
    NetStructMember::SetChanged((NetStructMember *)(NetPlayerInfo + 344));
    v3 = *((_DWORD *)this + 95);
  }
  result = (CNetPlayerInfo *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 76))(v3);
  if ( *((int *)this + 101) > 0 )
  {
    v5 = 0;
    do
    {
      v6 = CNetPlayerManager::CreateNetPlayerInfo(result);
      v7 = *((_DWORD **)this + 103);
      v8 = *((_DWORD **)this + 104);
      v11 = v6;
      if ( v7 == v8 )
      {
        std::vector<CNetPlayerInfo *>::_M_insert_overflow((int)this + 408, (int)v7, &v11);
        v9 = *((_DWORD *)this + 103);
      }
      else
      {
        *v7 = v6;
        v9 = *((_DWORD *)this + 103) + 4;
        *((_DWORD *)this + 103) = v9;
      }
      v10 = *(_DWORD **)(v9 - 4);
      if ( v5 != v10[94] )
      {
        v10[94] = v5;
        NetStructMember::SetChanged((NetStructMember *)(v10 + 86));
        v10 = *(_DWORD **)(*((_DWORD *)this + 103) - 4);
      }
      (*(void (__fastcall **)(_DWORD *))(*v10 + 76))(v10);
      ++v5;
      result = (CNetPlayerInfo *)NetStruct::SetEnabled(*(NetStruct **)(*((_DWORD *)this + 103) - 4), 0);
    }
    while ( *((_DWORD *)this + 101) > v5 );
  }
  return result;
}


// ===== 811308 CNetPlayerManager::ResetPlayers(void) =====
CNetPlayerInfo *__fastcall CNetPlayerManager::ResetPlayers(CNetPlayerManager *this)
{
  int v1; // r3
  CNetPlayerInfo *result; // r0

  v1 = *((_DWORD *)this + 110);
  if ( v1 != *((_DWORD *)this + 111) )
    *((_DWORD *)this + 111) = v1;
  CNetPlayerManager::ClearPlayers(this);
  result = CNetPlayerManager::InitPlayers(this);
  *((_DWORD *)this + 108) = -1;
  return result;
}


// ===== 811338 std::vector<int,std::allocator<int>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, v6, &v16);
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
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 8113fc CNetPlayerManager::GetPlayerIdList(void) =====
char *__fastcall CNetPlayerManager::GetPlayerIdList(CNetPlayerManager *this)
{
  char *v2; // r7
  int v4; // r2
  int v5; // r1
  unsigned int v6; // r4
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  int v9; // r3
  int v10; // [sp+4h] [bp-8h] BYREF

  if ( *((_DWORD *)this + 110) != *((_DWORD *)this + 111) )
    return (char *)this + 440;
  if ( !*((_BYTE *)this + 436) )
    return (char *)this + 440;
  v4 = *((_DWORD *)this + 102);
  v5 = *((_DWORD *)this + 103);
  v6 = 0;
  *((_BYTE *)this + 436) = 0;
  if ( !((unsigned int)(v5 - v4) >> 2) )
    return (char *)this + 440;
  v2 = (char *)this + 440;
  do
  {
    if ( *(_DWORD *)(v4 + 4 * v6) )
    {
      if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * v6) + 92))(*(_DWORD *)(v4 + 4 * v6)) )
      {
        v7 = *((_DWORD **)this + 111);
        v8 = *((_DWORD **)this + 112);
        v9 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v6) + 376);
        v10 = v9;
        if ( v7 == v8 )
        {
          std::vector<int>::_M_insert_overflow((int)v2, (int)v7, &v10);
        }
        else
        {
          *v7 = v9;
          *((_DWORD *)this + 111) += 4;
        }
        v4 = *((_DWORD *)this + 102);
        v5 = *((_DWORD *)this + 103);
        *((_BYTE *)this + 436) = 1;
      }
      else
      {
        v4 = *((_DWORD *)this + 102);
        v5 = *((_DWORD *)this + 103);
      }
    }
    ++v6;
  }
  while ( v6 < (v5 - v4) >> 2 );
  return v2;
}


// ===== 8114ec CNetPlayerManager::GetPlayerCount(void) =====
int __fastcall CNetPlayerManager::GetPlayerCount(CNetPlayerManager *this)
{
  char *PlayerIdList; // r0

  PlayerIdList = CNetPlayerManager::GetPlayerIdList(this);
  return (*((_DWORD *)PlayerIdList + 1) - *(_DWORD *)PlayerIdList) >> 2;
}


// ===== 811508 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  void *v4; // r3
  _DWORD *v5; // r5
  size_t v6; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (void *)v2[5];
      v5 = (_DWORD *)v2[2];
      if ( !v4 )
        goto LABEL_4;
      v6 = (v2[7] - (_DWORD)v4) & 0xFFFFFFFC;
      if ( v6 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v6);
LABEL_4:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x20u);
        v2 = v5;
        if ( !v5 )
          return;
      }
      else
      {
        CustomFree(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x20u);
        v2 = v5;
        if ( !v5 )
          return;
      }
    }
  }
}


// ===== 811588 CNetPlayerManager::GetPlayerName(std::string,int) =====
std::string *__fastcall CNetPlayerManager::GetPlayerName(std::string *this, std::string a2, int a3)
{
  char *M_end_of_storage; // r4
  std::string *v4; // r5
  int v5; // r1
  int v6; // r12
  unsigned int v7; // r6
  int v8; // r3
  int v9; // r3
  unsigned int v10; // r10
  unsigned int v11; // r11
  int v12; // r3
  std::string *M_data; // r7
  char *v14; // r1
  signed int v15; // r10
  int v16; // r3
  size_t v17; // r2
  int v18; // r11
  signed int v20; // [sp+0h] [bp-54h]
  int v22; // [sp+8h] [bp-4Ch]
  char v23; // [sp+14h] [bp-40h]
  std::string v24; // [sp+1Ch] [bp-38h] BYREF
  std::string v25; // [sp+34h] [bp-20h] BYREF

  M_end_of_storage = a2._M_buffers._M_end_of_storage;
  v4 = *(std::string **)&a2._M_buffers._M_static_buf[4];
  v5 = *((_DWORD *)a2._M_buffers._M_end_of_storage + 102);
  v6 = *((_DWORD *)M_end_of_storage + 103);
  v23 = a2._M_buffers._M_static_buf[8];
  if ( !((unsigned int)(v6 - v5) >> 2) )
    goto LABEL_26;
  v7 = 0;
  v22 = 0;
  do
  {
    while ( 1 )
    {
      v8 = *(_DWORD *)(v5 + 4 * v7);
      if ( !v8 )
        goto LABEL_4;
      if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 92))(*(_DWORD *)(v5 + 4 * v7)) )
      {
        v9 = *(_DWORD *)(*((_DWORD *)M_end_of_storage + 102) + 4 * v7);
        v25._M_finish = (char *)&v25;
        v25._M_start_of_storage._M_data = (char *)&v25;
        std::string::_M_range_initialize(&v25, *(const char **)(v9 + 636), *(const char **)(v9 + 632));
        v10 = v4->_M_finish - v4->_M_start_of_storage._M_data;
        v11 = v25._M_finish - v25._M_start_of_storage._M_data;
        if ( (std::string *)v25._M_start_of_storage._M_data != &v25 && v25._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data) > 0x80 )
            CustomFree(v25._M_start_of_storage._M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
              v25._M_start_of_storage._M_data,
              v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data);
        }
        if ( v11 >= v10 )
        {
          v12 = *(_DWORD *)(*((_DWORD *)M_end_of_storage + 102) + 4 * v7);
          v24._M_finish = (char *)&v24;
          v24._M_start_of_storage._M_data = (char *)&v24;
          std::string::_M_range_initialize(&v24, *(const char **)(v12 + 636), *(const char **)(v12 + 632));
          M_data = (std::string *)v24._M_start_of_storage._M_data;
          v14 = v4->_M_start_of_storage._M_data;
          v15 = v4->_M_finish - v14;
          v16 = v24._M_finish - v24._M_start_of_storage._M_data;
          if ( (char *)(v24._M_finish - v24._M_start_of_storage._M_data) >= (char *)v15 )
            v16 = v4->_M_finish - v14;
          if ( v15 >= v16 )
            v17 = v16;
          else
            v17 = v4->_M_finish - v14;
          v20 = v16;
          v18 = memcmp(v24._M_start_of_storage._M_data, v14, v17);
          if ( !v18 )
          {
            if ( v15 <= v20 )
              v18 = v15 < v20;
            else
              v18 = -1;
          }
          if ( M_data != &v24 && M_data )
          {
            if ( (unsigned int)(v24._M_buffers._M_end_of_storage - (char *)M_data) > 0x80 )
              CustomFree(M_data);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
                M_data,
                v24._M_buffers._M_end_of_storage - (char *)M_data);
          }
          if ( !v18 )
            break;
        }
      }
      v5 = *((_DWORD *)M_end_of_storage + 102);
      v6 = *((_DWORD *)M_end_of_storage + 103);
LABEL_4:
      if ( ++v7 >= (v6 - v5) >> 2 )
        goto LABEL_24;
    }
    v5 = *((_DWORD *)M_end_of_storage + 102);
    v6 = *((_DWORD *)M_end_of_storage + 103);
    ++v7;
    ++v22;
  }
  while ( v7 < (v6 - v5) >> 2 );
LABEL_24:
  if ( v22 )
  {
    std::string::_M_append(v4, " (", "");
    std::string::push_back(v4, (_BYTE *)(char)(v23 + 48));
    std::string::_M_append(v4, ")", "");
  }
LABEL_26:
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, v4->_M_start_of_storage._M_data, v4->_M_finish);
  return this;
}


// ===== 81181c CNetPlayerManager::GetPlayerName(int) =====
CNetPlayerManager *__fastcall CNetPlayerManager::GetPlayerName(CNetPlayerManager *this, char *a2, int a3)
{
  int v6; // r0
  int v8; // [sp+Ch] [bp-18h]
  void *__p; // [sp+18h] [bp-Ch]
  std::string v10; // 0:r1.12,12:^0.12 BYREF

  v6 = CMatching::Get(this);
  (*(void (__fastcall **)(char **, int, int))(*(_DWORD *)v6 + 92))(&v10._M_finish, v6, a3);
  v10._M_buffers._M_end_of_storage = a2;
  *(_DWORD *)&v10._M_buffers._M_static_buf[4] = &v10._M_finish;
  *(_DWORD *)&v10._M_buffers._M_static_buf[8] = a3;
  CNetPlayerManager::GetPlayerName((std::string *)this, v10, v8);
  if ( __p != &v10._M_finish && __p )
  {
    if ( (unsigned int)(v10._M_finish - (char *)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p, v10._M_finish - (char *)__p);
  }
  return this;
}


// ===== 8118d8 CNetPlayerManager::AddPlayer(int,int) =====
int __fastcall CNetPlayerManager::AddPlayer(NetStruct ***this, int a2, int a3)
{
  CMatching *PlayerCount; // r0
  int v8; // r0
  CMatching *PlayerInternal; // r0
  CMatching *v10; // r0
  CNetPlayerInfo *IsServer; // r0
  CNetPlayerInfo *v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r11
  NetStruct *NetPlayerInfo; // r0
  NetStruct **v17; // r1
  NetStruct **v18; // r3
  NetStruct *v19; // r9
  CMatching *FreePlayerId; // r0
  int v21; // r0
  int v22; // r3
  _DWORD v23[7]; // [sp+0h] [bp-54h] BYREF
  char v24; // [sp+1Ch] [bp-38h]
  CMatching *v25; // [sp+20h] [bp-34h] BYREF
  int v26; // [sp+2Ch] [bp-28h] BYREF
  NetStruct *v27; // [sp+30h] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v28; // [sp+34h] [bp-20h] BYREF

  PlayerCount = (CMatching *)CNetPlayerManager::GetPlayerCount((CNetPlayerManager *)this);
  if ( (int)PlayerCount >= (int)*(this + 101) )
    return -998;
  v8 = CMatching::Get(PlayerCount);
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 100))(v8) && (a3 | a2) >= 0 )
  {
    PlayerInternal = (CMatching *)CNetPlayerManager::GetPlayerInternal((CNetPlayerManager *)this, a2, a3);
    if ( PlayerInternal && *((_DWORD *)PlayerInternal + 124) )
      return -999;
    v27 = nullptr;
    v10 = (CMatching *)CMatching::Get(PlayerInternal);
    IsServer = (CNetPlayerInfo *)CMatching::IsServer(v10);
    v12 = IsServer;
    if ( IsServer )
    {
      FreePlayerId = (CMatching *)CNetPlayerManager::GetFreePlayerId((CNetPlayerManager *)this);
      v15 = (int)FreePlayerId;
      if ( (int)FreePlayerId < 0 )
        return -998;
      if ( (int)*(this + 92) < 0 )
      {
        v23[1] = 6;
        v24 = 0;
        v23[6] = 0;
        v23[2] = 0;
        v23[3] = 0;
        v23[5] = -1;
        v23[0] = &off_963618;
        v23[4] = -1;
        if ( FreePlayerId != v25 )
        {
          v25 = FreePlayerId;
          NetStructMember::SetChanged((NetStructMember *)v23);
        }
        v22 = (int)*(this + 84);
        v23[0] = &off_9923E0;
        FreePlayerId = (CMatching *)(*(int (__fastcall **)(char *, CMatching **))(v22 + 28))((char *)this + 336, &v25);
        v23[0] = &off_963648;
      }
      v27 = (*(this + 102))[v15];
      v21 = CMatching::Get(FreePlayerId);
      if ( a2 == (*(int (__fastcall **)(int))(*(_DWORD *)v21 + 108))(v21) )
      {
        v19 = v27;
        if ( *((_DWORD *)v27 + 124) != 2 )
        {
          *((_DWORD *)v27 + 124) = 2;
          NetStructMember::SetChanged((NetStruct *)((char *)v19 + 464));
          v19 = v27;
        }
      }
      else
      {
        v19 = v27;
        if ( *((_DWORD *)v27 + 124) != 1 )
        {
          *((_DWORD *)v27 + 124) = 1;
          NetStructMember::SetChanged((NetStruct *)((char *)v19 + 464));
          v19 = v27;
        }
      }
    }
    else
    {
      v13 = (int)*(this + 105);
      v14 = ((int)*(this + 106) - v13) >> 2;
      if ( v14 )
      {
        do
        {
          IsServer = *(CNetPlayerInfo **)(v13 + 4 * (_DWORD)v12);
          if ( IsServer )
          {
            IsServer = *((CNetPlayerInfo **)IsServer + 114);
            if ( (CNetPlayerInfo *)a3 == IsServer )
              return 0;
          }
          v12 = (CNetPlayerInfo *)((char *)v12 + 1);
        }
        while ( v12 != (CNetPlayerInfo *)v14 );
      }
      v15 = ~a3;
      NetPlayerInfo = (NetStruct *)CNetPlayerManager::CreateNetPlayerInfo(IsServer);
      v17 = *(this + 106);
      v18 = *(this + 107);
      v27 = NetPlayerInfo;
      if ( v17 == v18 )
      {
        std::vector<CNetPlayerInfo *>::_M_insert_overflow((int)(this + 105), (int)v17, &v27);
        v19 = v27;
      }
      else
      {
        *v17 = NetPlayerInfo;
        v19 = v27;
        ++*(this + 106);
      }
    }
    CNetPlayerManager::GetPlayerName((CNetPlayerManager *)&v28, (char *)this, a2);
    NetStructMemberType<std::string>::SetValue(
      (NetStruct *)((char *)v19 + 584),
      (const char **)&v28._M_buffers._M_end_of_storage);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v28);
    v26 = v15;
    NetStructMemberType<int>::SetValue((NetStruct *)((char *)v27 + 344), &v26);
    v26 = a2;
    NetStructMemberType<int>::SetValue((NetStruct *)((char *)v27 + 384), &v26);
    v26 = a3;
    NetStructMemberType<int>::SetValue((NetStruct *)((char *)v27 + 424), &v26);
    NetStruct::SetEnabled(v27, 1);
    return 0;
  }
  return -1000;
}


// ===== 811be8 CNetPlayerManager::AddPlayer(NetBitStream &,int,int) =====
void __fastcall CNetPlayerManager::AddPlayer(CNetPlayerManager *this, NetBitStream *a2, int a3, int a4)
{
  CMatching *v8; // r0
  int FreePlayerId; // r0
  bool v10; // nf
  int v11; // r9
  int v12; // r0
  int v13; // r7
  int v14; // [sp+Ch] [bp-30h]
  std::string v15; // [sp+1Ch] [bp-20h] BYREF
  std::string v16; // 0:r1.12,12:^0.12 BYREF

  v8 = (CMatching *)CMatching::Get(this);
  if ( !CMatching::IsServer(v8) || CNetPlayerManager::GetPlayerInternal(this, a3, a4) )
    goto LABEL_2;
  FreePlayerId = CNetPlayerManager::GetFreePlayerId(this);
  v10 = FreePlayerId < 0;
  if ( FreePlayerId >= 0 )
    v10 = a3 < 0;
  v11 = FreePlayerId;
  if ( v10 || a4 < 0 )
  {
LABEL_2:
    (*(void (__fastcall **)(_DWORD, NetBitStream *))(**((_DWORD **)this + 95) + 28))(*((_DWORD *)this + 95), a2);
  }
  else
  {
    NetStruct::SetEnabled(*(NetStruct **)(*((_DWORD *)this + 102) + 4 * FreePlayerId), 0);
    v12 = *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v11);
    (*(void (__fastcall **)(int, NetBitStream *, int, _DWORD))(*(_DWORD *)v12 + 20))(v12, a2, a3, 0);
    NetStruct::SetEnabled(*(NetStruct **)(*((_DWORD *)this + 102) + 4 * v11), 1);
    CNetPlayerInfo::Add(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v11));
    v13 = *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v11);
    if ( v11 != *(_DWORD *)(v13 + 376) )
    {
      *(_DWORD *)(v13 + 376) = v11;
      NetStructMember::SetChanged((NetStructMember *)(v13 + 344));
      v13 = *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v11);
    }
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize(&v15, *(const char **)(v13 + 636), *(const char **)(v13 + 632));
    *(_DWORD *)&v16._M_buffers._M_static_buf[4] = &v15;
    v16._M_buffers._M_end_of_storage = (char *)this;
    *(_DWORD *)&v16._M_buffers._M_static_buf[8] = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v11) + 416);
    CNetPlayerManager::GetPlayerName((std::string *)&v16._M_finish, v16, v14);
    NetStructMemberType<std::string>::SetValue((NetStructMember *)(v13 + 584), (const char **)&v16._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v16._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  }
}


// ===== 811d74 CNetPlayerManager::ReadPacketData(int,int,NetBitStream &) =====
NetBitStream *__fastcall CNetPlayerManager::ReadPacketData(CNetPlayerManager *this, int a2, int a3, NetBitStream *a4)
{
  CMatching *v7; // r0
  int v8; // r3
  unsigned int v9; // r4
  int v10; // r1
  CMatching *v11; // r0
  _BOOL4 v12; // r0
  int v13; // r3
  unsigned int v14; // r2
  int v15; // r2
  CMatching *v16; // r0
  bool IsServer; // r0
  int Byte; // r0
  bool v19; // zf
  NetBitStream *result; // r0

  v7 = (CMatching *)NetStruct::Load((CNetPlayerManager *)((char *)this + 32), a4, a2, 0);
  v8 = *((_DWORD *)this + 102);
  if ( (unsigned int)(*((_DWORD *)this + 103) - v8) >> 2 )
  {
    v9 = 0;
    do
    {
      v10 = 0;
      v14 = *(_DWORD *)(*(_DWORD *)(v8 + 4 * v9) + 496);
      if ( v14 <= 6 )
      {
        v15 = 1 << v14;
        if ( (v15 & 0x71) != 0 )
        {
          v16 = (CMatching *)CMatching::Get(v7);
          IsServer = CMatching::IsServer(v16);
          v8 = *((_DWORD *)this + 102);
          v10 = !IsServer;
        }
        else if ( (v15 & 0xC) != 0 )
        {
          v10 = 1;
        }
        else if ( (v15 & 2) != 0 )
        {
          v11 = (CMatching *)CMatching::Get(v7);
          v12 = CMatching::IsServer(v11);
          v8 = *((_DWORD *)this + 102);
          v10 = v12;
        }
      }
      v13 = *(_DWORD *)(v8 + 4 * v9++);
      v7 = (CMatching *)(*(int (__fastcall **)(int, int, NetBitStream *, int, _DWORD))(*(_DWORD *)v13 + 24))(
                          v13,
                          v10,
                          a4,
                          a2,
                          0);
      v8 = *((_DWORD *)this + 102);
    }
    while ( v9 < (*((_DWORD *)this + 103) - v8) >> 2 );
  }
  while ( 1 )
  {
    v19 = NetBitStream::ReadByte(a4, 1u) == 0;
    result = a4;
    if ( v19 )
      break;
    Byte = NetBitStream::ReadByte(a4, 8u);
    CNetPlayerManager::AddPlayer(this, a4, a2, Byte);
  }
  return result;
}


// ===== 811e94 CNetPlayerManager::sReadPacketData(int,int,NetBitStream &) =====
NetBitStream *__fastcall CNetPlayerManager::sReadPacketData(
        CNetPlayerManager *this,
        int a2,
        NetBitStream *a3,
        NetBitStream *a4)
{
  return CNetPlayerManager::ReadPacketData((CNetPlayerManager *)CNetPlayerManager::s_playerManager, (int)this, a2, a3);
}


// ===== 811ed0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::_M_create_node(std::pair<int const,std::vector<int,std::allocator<int>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 32;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v5);
  v3[4] = *a2;
  std::vector<int>::vector(v3 + 5, (int)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 811f1c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::vector<int,std::allocator<int>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_create_node(
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


// ===== 811ff4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::insert_unique(std::pair<int const,std::vector<int,std::allocator<int>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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


// ===== 81217c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_Select1st<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::vector<int,std::allocator<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int,std::allocator<int>>>>>,std::pair<int const,std::vector<int,std::allocator<int>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 8124f0 std::map<int,std::vector<int,std::allocator<int>>,std::less<int>,std::allocator<std::pair<int const,std::vector<int,std::allocator<int>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::vector<int>>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  size_t v11; // r1
  size_t v12; // r1
  int v14; // [sp+4h] [bp-24h] BYREF
  void *__p[3]; // [sp+8h] [bp-20h] BYREF
  void *p[2]; // [sp+14h] [bp-14h] BYREF
  int v17; // [sp+1Ch] [bp-Ch]
  _DWORD *v18; // [sp+20h] [bp-8h] BYREF
  _DWORD *v19; // [sp+24h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 <= v6;
      if ( v4 <= v6 )
        v8 = (_DWORD *)v2[2];
      else
        v8 = (_DWORD *)v2[3];
      if ( !v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v14 = v4;
    v17 = 0;
    p[0] = nullptr;
    p[1] = nullptr;
    std::vector<int>::vector(__p, (int)p);
    v18 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::insert_unique(
      &v19,
      a1,
      &v18,
      &v14);
    v10 = v19;
    if ( __p[0] )
    {
      v11 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
      if ( v11 > 0x80 )
        CustomFree(__p[0]);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p[0], v11);
    }
    if ( p[0] )
    {
      v12 = (v17 - (unsigned int)p[0]) & 0xFFFFFFFC;
      if ( v12 > 0x80 )
      {
        CustomFree(p[0]);
        v9 = v10;
        return v9 + 5;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(p[0], v12);
    }
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 812608 CNetPlayerManager::ClearPlayerListCaches(int) =====
void __fastcall CNetPlayerManager::ClearPlayerListCaches(CNetPlayerManager *this, int a2)
{
  int v2; // r3
  int v3; // r2
  bool v5; // nf
  _DWORD *v6; // r0
  char *v7; // r5
  int v8; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 110);
  v3 = *((_DWORD *)this + 111);
  v8 = a2;
  if ( v2 != v3 )
    *((_DWORD *)this + 111) = v2;
  v5 = v8 < 0;
  *((_BYTE *)this + 436) = 1;
  if ( v5 )
  {
    if ( *((_DWORD *)this + 117) )
    {
      v7 = (char *)this + 452;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_erase(
        (int)this + 452,
        *((_DWORD **)this + 114));
      *((_DWORD *)this + 117) = 0;
      *((_DWORD *)this + 116) = v7;
      *((_DWORD *)this + 115) = v7;
      *((_DWORD *)this + 114) = 0;
    }
  }
  else
  {
    v6 = std::map<int,std::vector<int>>::operator[]<int>((_DWORD *)this + 113, &v8);
    if ( *v6 != v6[1] )
      v6[1] = *v6;
  }
}


// ===== 812694 CNetPlayerManager::~CNetPlayerManager() =====
void __fastcall CNetPlayerManager::~CNetPlayerManager(CNetPlayerManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1
  void *v6; // r0
  size_t v7; // r1

  *((_BYTE *)this + 376) = 0;
  *(_DWORD *)this = off_9924C0;
  CNetPlayerManager::ClearPlayers(this);
  CPacketManager::UnregisterPacketSlot(2);
  CNetPlayerManager::ClearPlayerListCaches(this, -1);
  (*(void (__fastcall **)(char *))(*((_DWORD *)this + 96) + 12))((char *)this + 384);
  if ( *((_DWORD *)this + 117) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_erase(
      (int)this + 452,
      *((_DWORD **)this + 114));
    *((_DWORD *)this + 116) = (char *)this + 452;
    *((_DWORD *)this + 117) = 0;
    *((_DWORD *)this + 115) = (char *)this + 452;
    *((_DWORD *)this + 114) = 0;
  }
  v2 = *((void **)this + 110);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 112) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
  }
  v4 = *((void **)this + 105);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 107) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
  }
  v6 = *((void **)this + 102);
  if ( v6 )
  {
    v7 = (*((_DWORD *)this + 104) - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v6, v7);
  }
  *((_DWORD *)this + 96) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 98);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 97);
  *((_DWORD *)this + 84) = &off_963648;
  *((_DWORD *)this + 8) = off_9924D8;
  if ( *((_DWORD *)this + 79) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 300,
      *((_DWORD *)this + 76));
    *((_DWORD *)this + 79) = 0;
    *((_DWORD *)this + 78) = (char *)this + 300;
    *((_DWORD *)this + 77) = (char *)this + 300;
    *((_DWORD *)this + 76) = 0;
  }
  *((_DWORD *)this + 1) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 3);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 2);
}


// ===== 812854 CNetPlayerManager::~CNetPlayerManager() =====
void __fastcall CNetPlayerManager::~CNetPlayerManager(CNetPlayerManager *this)
{
  CNetPlayerManager::~CNetPlayerManager(this);
  CustomFree(this);
}


// ===== 812870 CNetPlayerManager::~CNetPlayerManager() =====
void __fastcall CNetPlayerManager::~CNetPlayerManager(CNetPlayerManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1
  void *v6; // r0
  size_t v7; // r1

  *((_BYTE *)this + 376) = 0;
  *(_DWORD *)this = off_9924C0;
  CNetPlayerManager::ClearPlayers(this);
  CPacketManager::UnregisterPacketSlot(2);
  CNetPlayerManager::ClearPlayerListCaches(this, -1);
  (*(void (__fastcall **)(char *))(*((_DWORD *)this + 96) + 12))((char *)this + 384);
  if ( *((_DWORD *)this + 117) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::vector<int>>,std::priv::_Select1st<std::pair<int const,std::vector<int>>>,std::priv::_MapTraitsT<std::pair<int const,std::vector<int>>>,std::allocator<std::pair<int const,std::vector<int>>>>::_M_erase(
      (int)this + 452,
      *((_DWORD **)this + 114));
    *((_DWORD *)this + 116) = (char *)this + 452;
    *((_DWORD *)this + 117) = 0;
    *((_DWORD *)this + 115) = (char *)this + 452;
    *((_DWORD *)this + 114) = 0;
  }
  v2 = *((void **)this + 110);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 112) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, v3);
  }
  v4 = *((void **)this + 105);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 107) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
  }
  v6 = *((void **)this + 102);
  if ( v6 )
  {
    v7 = (*((_DWORD *)this + 104) - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v6, v7);
  }
  *((_DWORD *)this + 96) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 98);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 97);
  *((_DWORD *)this + 84) = &off_963648;
  *((_DWORD *)this + 8) = off_9924D8;
  if ( *((_DWORD *)this + 79) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 300,
      *((_DWORD *)this + 76));
    *((_DWORD *)this + 79) = 0;
    *((_DWORD *)this + 78) = (char *)this + 300;
    *((_DWORD *)this + 77) = (char *)this + 300;
    *((_DWORD *)this + 76) = 0;
  }
  *((_DWORD *)this + 1) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 3);
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 2);
}


// ===== 812a30 CNetPlayerManager::CNetPlayerManager(int) =====
void __fastcall CNetPlayerManager::CNetPlayerManager(CNetPlayerManager *this, int a2)
{
  *(_DWORD *)this = off_9924C0;
  *((_DWORD *)this + 1) = &off_991D70;
  CNetMutex::CNetMutex((CNetPlayerManager *)((char *)this + 8));
  *((_DWORD *)this + 4) = (char *)this + 12;
  *((_DWORD *)this + 3) = (char *)this + 12;
  *((_DWORD *)this + 1) = &off_992490;
  *((_DWORD *)this + 5) = 100;
  CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager((CNetPlayerManager *)((char *)this + 32));
  *((_DWORD *)this + 96) = &off_991D70;
  *((_BYTE *)this + 376) = 0;
  *((_DWORD *)this + 95) = 0;
  CNetMutex::CNetMutex((CNetPlayerManager *)((char *)this + 388));
  *((_DWORD *)this + 99) = (char *)this + 392;
  *((_DWORD *)this + 96) = &off_992410;
  *((_DWORD *)this + 98) = (char *)this + 392;
  *((_DWORD *)this + 100) = 100;
  *((_DWORD *)this + 101) = a2;
  *((_DWORD *)this + 102) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
  *((_DWORD *)this + 107) = 0;
  *((_DWORD *)this + 108) = -1;
  *((_DWORD *)this + 110) = 0;
  *((_DWORD *)this + 111) = 0;
  *((_DWORD *)this + 112) = 0;
  *((_DWORD *)this + 114) = 0;
  *((_BYTE *)this + 452) = 0;
  *((_DWORD *)this + 116) = (char *)this + 452;
  *((_DWORD *)this + 115) = (char *)this + 452;
  *((_DWORD *)this + 117) = 0;
  CNetPlayerManager::ResetPlayers(this);
  CPacketManager::RegisterPacketSlot(
    2,
    (int)CNetPlayerManager::sWritePacketData,
    (int)CNetPlayerManager::sReadPacketData,
    (int)CNetPlayerManager::sProcessAcknowledgedPacket,
    (int)CNetPlayerManager::sProcessLostPacket);
  CNetPlayerManager::ClearPlayerListCaches(this, -1);
  *((_BYTE *)this + 376) = 1;
}


// ===== 812b90 CNetPlayerManager::Initialize(int) =====
int __fastcall CNetPlayerManager::Initialize(CNetPlayerManager *this, int a2)
{
  CNetPlayerManager *v4; // r6

  if ( CNetPlayerManager::s_playerManager )
    return 0;
  v4 = (CNetPlayerManager *)operator new(0x1E0u, 2);
  CNetPlayerManager::CNetPlayerManager(v4, (int)this);
  CNetPlayerManager::s_playerManager = (int)v4;
  if ( v4 )
    return 0;
  else
    return -1;
}


// ===== 812bf0 CNetPlayerManager::CNetPlayerManager(int) =====
void __fastcall CNetPlayerManager::CNetPlayerManager(CNetPlayerManager *this, int a2)
{
  *(_DWORD *)this = off_9924C0;
  *((_DWORD *)this + 1) = &off_991D70;
  CNetMutex::CNetMutex((CNetPlayerManager *)((char *)this + 8));
  *((_DWORD *)this + 4) = (char *)this + 12;
  *((_DWORD *)this + 3) = (char *)this + 12;
  *((_DWORD *)this + 1) = &off_992490;
  *((_DWORD *)this + 5) = 100;
  CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager((CNetPlayerManager *)((char *)this + 32));
  *((_DWORD *)this + 96) = &off_991D70;
  *((_BYTE *)this + 376) = 0;
  *((_DWORD *)this + 95) = 0;
  CNetMutex::CNetMutex((CNetPlayerManager *)((char *)this + 388));
  *((_DWORD *)this + 99) = (char *)this + 392;
  *((_DWORD *)this + 96) = &off_992410;
  *((_DWORD *)this + 98) = (char *)this + 392;
  *((_DWORD *)this + 100) = 100;
  *((_DWORD *)this + 101) = a2;
  *((_DWORD *)this + 102) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
  *((_DWORD *)this + 107) = 0;
  *((_DWORD *)this + 108) = -1;
  *((_DWORD *)this + 110) = 0;
  *((_DWORD *)this + 111) = 0;
  *((_DWORD *)this + 112) = 0;
  *((_DWORD *)this + 114) = 0;
  *((_BYTE *)this + 452) = 0;
  *((_DWORD *)this + 116) = (char *)this + 452;
  *((_DWORD *)this + 115) = (char *)this + 452;
  *((_DWORD *)this + 117) = 0;
  CNetPlayerManager::ResetPlayers(this);
  CPacketManager::RegisterPacketSlot(
    2,
    (int)CNetPlayerManager::sWritePacketData,
    (int)CNetPlayerManager::sReadPacketData,
    (int)CNetPlayerManager::sProcessAcknowledgedPacket,
    (int)CNetPlayerManager::sProcessLostPacket);
  CNetPlayerManager::ClearPlayerListCaches(this, -1);
  *((_BYTE *)this + 376) = 1;
}


// ===== 812d50 CNetPlayerManager::GetPlayerIdListByMemberId(int) =====
_DWORD *__fastcall CNetPlayerManager::GetPlayerIdListByMemberId(CNetPlayerManager *this, int a2)
{
  _DWORD *v2; // r7
  _DWORD *v4; // r0
  int v6; // r2
  int v7; // r1
  unsigned int v8; // r4
  _DWORD *v9; // r0
  int v10; // r2
  _DWORD *v11; // r1
  int v12[2]; // [sp+4h] [bp-Ch] BYREF
  int v13; // [sp+Ch] [bp-4h] BYREF

  v12[0] = a2;
  v2 = (_DWORD *)((char *)this + 452);
  v4 = std::map<int,std::vector<int>>::operator[]<int>((_DWORD *)this + 113, v12);
  if ( *v4 == v4[1] )
  {
    if ( *((_BYTE *)this + 436) )
    {
      v6 = *((_DWORD *)this + 102);
      v7 = *((_DWORD *)this + 103);
      v8 = 0;
      *((_BYTE *)this + 436) = 0;
      if ( (unsigned int)(v7 - v6) >> 2 )
      {
        do
        {
          if ( *(_DWORD *)(v6 + 4 * v8) )
          {
            if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v6 + 4 * v8) + 92))(*(_DWORD *)(v6 + 4 * v8)) )
            {
              v6 = *((_DWORD *)this + 102);
              *((_BYTE *)this + 436) = 1;
              if ( v12[0] == *(_DWORD *)(*(_DWORD *)(v6 + 4 * v8) + 416) )
              {
                v9 = std::map<int,std::vector<int>>::operator[]<int>(v2, v12);
                v10 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v8) + 376);
                v13 = v10;
                v11 = (_DWORD *)v9[1];
                if ( v11 != (_DWORD *)v9[2] )
                {
                  *v11 = v10;
                  v9[1] += 4;
                  v6 = *((_DWORD *)this + 102);
                  v7 = *((_DWORD *)this + 103);
                  goto LABEL_9;
                }
                std::vector<int>::_M_insert_overflow((int)v9, (int)v11, &v13);
                v6 = *((_DWORD *)this + 102);
              }
            }
            else
            {
              v6 = *((_DWORD *)this + 102);
            }
            v7 = *((_DWORD *)this + 103);
          }
LABEL_9:
          ++v8;
        }
        while ( v8 < (v7 - v6) >> 2 );
      }
    }
  }
  return std::map<int,std::vector<int>>::operator[]<int>(v2, v12);
}


// ===== 812e74 CNetPlayerManager::GetMemberPlayerCount(int) =====
int __fastcall CNetPlayerManager::GetMemberPlayerCount(CNetPlayerManager *this, int a2)
{
  _DWORD *PlayerIdListByMemberId; // r0

  PlayerIdListByMemberId = CNetPlayerManager::GetPlayerIdListByMemberId(this, a2);
  return (PlayerIdListByMemberId[1] - *PlayerIdListByMemberId) >> 2;
}


// ===== 812e90 CNetPlayerManager::MemberHasActivePlayers(int) =====
bool __fastcall CNetPlayerManager::MemberHasActivePlayers(CNetPlayerManager *this, int a2)
{
  return CNetPlayerManager::GetMemberPlayerCount(this, a2) > 0;
}


// ===== 812ea8 CNetPlayerManager::GetLocalPlayerIdList(void) =====
_DWORD *__fastcall CNetPlayerManager::GetLocalPlayerIdList(CNetPlayerManager *this)
{
  int v2; // r0
  int v3; // r1

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 108))(v2);
  return CNetPlayerManager::GetPlayerIdListByMemberId(this, v3);
}


// ===== 812ed0 CNetPlayerManager::GetLocalPlayerCount(void) =====
int __fastcall CNetPlayerManager::GetLocalPlayerCount(CNetPlayerManager *this)
{
  _DWORD *LocalPlayerIdList; // r0

  LocalPlayerIdList = CNetPlayerManager::GetLocalPlayerIdList(this);
  return (LocalPlayerIdList[1] - *LocalPlayerIdList) >> 2;
}


// ===== 812eec CNetPlayerManager::Update(int) =====
int __fastcall CNetPlayerManager::Update(CNetPlayerManager *this, int a2)
{
  int v4; // r3
  unsigned int v5; // r6
  int v6; // r3
  CMatching *v7; // r0
  CMatching *v8; // r0
  int IsServer; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r2
  int v13; // r1
  int PlayerByMemberId; // r0
  CNetPlayerInfo *v15; // r1
  COnline *Online; // r0
  unsigned __int8 v17; // r0
  int v18; // r0
  int v19; // r3
  int v20; // r1
  unsigned int v21; // r6
  int v22; // r0
  int v23; // r6
  _DWORD *PlayerIdListByMemberId; // r0
  CMatching *v25; // r0
  int *v26; // r3
  int v27; // r3
  int v28; // r3
  int v29; // r3
  char *v30; // r1
  int v31; // r0
  int v32; // r0
  _DWORD *v33; // r0
  char *PlayerIdList; // r0
  _DWORD v35[7]; // [sp+0h] [bp-3Ch] BYREF
  char v36; // [sp+1Ch] [bp-20h]
  int v37; // [sp+20h] [bp-1Ch] BYREF
  int *v38; // [sp+28h] [bp-14h] BYREF
  int *v39; // [sp+2Ch] [bp-10h]
  int v40; // [sp+34h] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 376) )
    return -1;
  v4 = *((_DWORD *)this + 102);
  if ( (unsigned int)(*((_DWORD *)this + 103) - v4) >> 2 )
  {
    v5 = 0;
    do
    {
      v6 = *(_DWORD *)(v4 + 4 * v5++);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v6 + 72))(v6, a2);
      v4 = *((_DWORD *)this + 102);
    }
    while ( v5 < (*((_DWORD *)this + 103) - v4) >> 2 );
  }
  v7 = (CMatching *)CNetPlayerManager::ProcessEvents(this);
  v8 = (CMatching *)CMatching::Get(v7);
  IsServer = CMatching::IsServer(v8);
  if ( IsServer )
  {
    v18 = CMatching::Get((CMatching *)IsServer);
    IsServer = (*(int (__fastcall **)(int))(*(_DWORD *)v18 + 100))(v18);
    if ( IsServer )
    {
      v19 = *((_DWORD *)this + 102);
      v20 = *((_DWORD *)this + 103);
      if ( (unsigned int)(v20 - v19) >> 2 )
      {
        v21 = 0;
        do
        {
          if ( *(int *)(*(_DWORD *)(v19 + 4 * v21) + 416) > 0 )
          {
            v22 = CMatching::Get((CMatching *)IsServer);
            IsServer = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v22 + 104))(
                         v22,
                         *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v21) + 416));
            if ( !IsServer )
              IsServer = CNetPlayerManager::RemovePlayer(
                           this,
                           *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 102) + 4 * v21) + 376));
            v19 = *((_DWORD *)this + 102);
            v20 = *((_DWORD *)this + 103);
          }
          ++v21;
        }
        while ( v21 < (v20 - v19) >> 2 );
      }
      IsServer = CNetPlayerManager::GetPlayerInternal(this, *((_DWORD *)this + 92));
      v23 = IsServer;
      if ( IsServer )
      {
        IsServer = (*(int (__fastcall **)(int))(*(_DWORD *)IsServer + 92))(IsServer);
        if ( !IsServer )
        {
          PlayerIdListByMemberId = CNetPlayerManager::GetPlayerIdListByMemberId(this, *(_DWORD *)(v23 + 416));
          v25 = (CMatching *)std::vector<int>::vector(&v38, (int)PlayerIdListByMemberId);
          v26 = v38;
          if ( v38 != v39 )
            goto LABEL_25;
          v31 = CMatching::Get(v25);
          v32 = (*(int (__fastcall **)(int))(*(_DWORD *)v31 + 108))(v31);
          v33 = CNetPlayerManager::GetPlayerIdListByMemberId(this, v32);
          std::vector<int>::operator=(&v38, v33);
          v26 = v38;
          if ( v38 != v39
            || (PlayerIdList = CNetPlayerManager::GetPlayerIdList(this),
                std::vector<int>::operator=(&v38, PlayerIdList),
                v26 = v38,
                v38 != v39) )
          {
LABEL_25:
            v27 = *v26;
            v35[1] = 6;
            v35[2] = 0;
            v35[3] = 0;
            v35[5] = -1;
            v36 = 0;
            v35[0] = &off_963618;
            v35[4] = -1;
            v35[6] = 0;
            if ( v27 != v37 )
            {
              v37 = v27;
              NetStructMember::SetChanged((NetStructMember *)v35);
            }
            v28 = *((_DWORD *)this + 84);
            v35[0] = &off_9923E0;
            (*(void (__fastcall **)(char *, int *))(v28 + 28))((char *)this + 336, &v37);
            v35[0] = &off_963648;
          }
          IsServer = std::vector<int>::~vector((int)&v38);
        }
      }
    }
  }
  v10 = *((_DWORD *)this + 108);
  if ( v10 >= 0 )
  {
    v11 = *((_DWORD *)this + 92);
    if ( v10 == v11 )
      goto LABEL_11;
    v40 = *((_DWORD *)this + 92);
    IsServer = CEventQueueBase::AddEvent((pthread_mutex_t *)this + 96, 3145732, &v40, 4);
  }
  v11 = *((_DWORD *)this + 92);
LABEL_11:
  v12 = *((_DWORD *)this + 105);
  v13 = *((_DWORD *)this + 106);
  *((_DWORD *)this + 108) = v11;
  if ( v12 != v13 )
  {
    PlayerByMemberId = CNetPlayerManager::GetPlayerByMemberId(
                         this,
                         *(_DWORD *)(*(_DWORD *)v12 + 416),
                         *(_DWORD *)(*(_DWORD *)v12 + 456),
                         0);
    IsServer = (*(int (__fastcall **)(int))(*(_DWORD *)PlayerByMemberId + 92))(PlayerByMemberId);
    if ( IsServer )
    {
      CNetPlayerManager::DeleteNetPlayerInfo(**((CNetPlayerInfo ***)this + 105), v15);
      IsServer = *((_DWORD *)this + 105);
      v29 = *((_DWORD *)this + 106);
      v30 = (char *)(IsServer + 4);
      if ( IsServer + 4 != v29 )
      {
        IsServer = (int)memmove((void *)IsServer, v30, v29 - (_DWORD)v30);
        v30 = *((char **)this + 106);
      }
      *((_DWORD *)this + 106) = v30 - 4;
    }
  }
  Online = (COnline *)GetOnline((COnline *)IsServer);
  v17 = (unsigned __int8)COnline::IsServer(Online);
  NetStruct::SetEnabled((CNetPlayerManager *)((char *)this + 32), v17);
  return 0;
}


// ===== 81324c NetStruct::DeclareMember(NetStructMember *) =====
int __fastcall NetStruct::DeclareMember(int this, NetStructMember *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 260);
  *(_DWORD *)(this + 4 * v2 + 4) = a2;
  *(_DWORD *)(this + 260) = v2 + 1;
  return this;
}


// ===== 813264 NetStruct::ConditionalLoad(bool,NetBitStream &,int,uint) =====
int __fastcall NetStruct::ConditionalLoad(NetStruct *this, int a2, NetBitStream *a3, int a4, unsigned int a5)
{
  if ( a2 )
    return (*(int (__fastcall **)(NetStruct *, NetBitStream *, int, unsigned int))(*(_DWORD *)this + 20))(
             this,
             a3,
             a4,
             a5);
  else
    return (*(int (__fastcall **)(NetStruct *, NetBitStream *))(*(_DWORD *)this + 28))(this, a3);
}


// ===== 81329c NetStruct::GetSizeBits(void) =====
int __fastcall NetStruct::GetSizeBits(NetStruct *this)
{
  int v2; // r5
  int v3; // r4
  int v4; // r3

  if ( *((int *)this + 65) <= 0 )
    return 1;
  v3 = 0;
  v2 = 1;
  do
  {
    v4 = *((_DWORD *)this + ++v3);
    v2 += (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
  }
  while ( *((_DWORD *)this + 65) > v3 );
  return v2;
}


// ===== 8132f0 NetStruct::GetSizeBytes(void) =====
unsigned int __fastcall NetStruct::GetSizeBytes(NetStruct *this)
{
  unsigned int v1; // r0
  int v2; // r3

  v1 = (*(int (__fastcall **)(NetStruct *))(*(_DWORD *)this + 56))(this);
  v2 = v1 & 7;
  if ( (v1 & 7) != 0 )
    v2 = 1;
  return v2 + (v1 >> 3);
}


// ===== 813310 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,NetStruct::tPacketHistory>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x28u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 81334c NetStruct::AreChangesAcknowledgedBy(int) =====
char *__fastcall NetStruct::AreChangesAcknowledgedBy(NetStruct *this, int a2)
{
  char *result; // r0
  int v5; // r0
  unsigned int v6; // r6
  int v7; // r4

  if ( !*((_BYTE *)this + 292) )
    return (char *)&dword_0 + 1;
  v5 = CMatching::Get(this);
  v6 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 132))(v5, a2);
  if ( *((int *)this + 65) <= 0 )
    return (char *)&dword_0 + 1;
  v7 = 0;
  while ( 1 )
  {
    result = (char *)NetStructMember::AreChangesAcknowledgedBy(*((NetStructMember **)this + ++v7), v6);
    if ( !result )
      break;
    if ( *((_DWORD *)this + 65) <= v7 )
      return (char *)&dword_0 + 1;
  }
  return result;
}


// ===== 8133c0 NetStruct::ResendInternal(uint) =====
int __fastcall NetStruct::ResendInternal(NetStructMember **this, unsigned int a2)
{
  int result; // r0
  unsigned __int64 v5; // r6
  int v6; // r4

  result = 1;
  v5 = ++*(_QWORD *)&NetStruct::s_changeCounter;
  if ( (int)*(this + 65) > 0 )
  {
    v6 = 0;
    while ( 1 )
    {
      result = NetStructMember::SetSentFlag(*(this + ++v6), a2, 0, v5);
      if ( (int)*(this + 65) <= v6 )
        break;
      v5 = *(_QWORD *)&NetStruct::s_changeCounter;
    }
  }
  return result;
}


// ===== 81344c NetStruct::Resend(int) =====
int __fastcall NetStruct::Resend(NetStruct *this, int a2)
{
  int v4; // r0
  unsigned int v5; // r1

  v4 = CMatching::Get(this);
  v5 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 132))(v4, a2);
  return NetStruct::ResendInternal((NetStructMember **)this, v5);
}


// ===== 81347c NetStruct::Resend(void) =====
int __fastcall NetStruct::Resend(NetStruct *this)
{
  CMatching *v2; // r0
  unsigned int RoomMask; // r1

  v2 = (CMatching *)CMatching::Get(this);
  RoomMask = CMatching::GetRoomMask(v2);
  return NetStruct::ResendInternal((NetStructMember **)this, RoomMask);
}


// ===== 81349c NetStruct::SetAckedBy(int) =====
int __fastcall NetStruct::SetAckedBy(NetStruct *this, int a2)
{
  int v4; // r0
  int result; // r0
  unsigned int v6; // r6
  int v7; // r4

  v4 = CMatching::Get(this);
  result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 132))(v4, a2);
  v6 = result;
  if ( *((int *)this + 65) > 0 )
  {
    v7 = 0;
    do
      result = NetStructMember::SetAcked(*((NetStructMember **)this + ++v7), v6);
    while ( *((_DWORD *)this + 65) > v7 );
  }
  return result;
}


// ===== 8134f4 NetStruct::LoadInternal(bool,NetBitStream &,int) =====
int __fastcall NetStruct::LoadInternal(NetStruct *this, int a2, NetBitStream *a3, int a4)
{
  CMatching *Bit; // r0
  int v10; // r0
  unsigned int v11; // r11
  int v12; // r9
  int v13; // r7
  int v14; // r8
  NetStructMember **v15; // r3

  Bit = (CMatching *)NetBitStream::ReadBit(a3);
  if ( !Bit )
    return 0;
  v10 = CMatching::Get(Bit);
  v11 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v10 + 132))(v10, a4);
  if ( *((int *)this + 65) > 0 )
  {
    v13 = 0;
    v12 = 1;
    v14 = 0;
    do
    {
      while ( 1 )
      {
        v15 = (NetStructMember **)((char *)this + v13);
        if ( !a2 )
          break;
        v12 &= NetStructMember::Load(v15[1], a3);
        NetStructMember::SetAcked(*(NetStructMember **)((char *)this + v13 + 4), v11);
        *((_BYTE *)this + 293) = 1;
        ++v14;
        v13 += 4;
        if ( *((_DWORD *)this + 65) <= v14 )
          goto LABEL_9;
      }
      ++v14;
      (**(void (__fastcall ***)(NetStructMember *, NetBitStream *))v15[1])(v15[1], a3);
      v13 += 4;
    }
    while ( *((_DWORD *)this + 65) > v14 );
  }
  else
  {
    v12 = 1;
  }
LABEL_9:
  if ( !a2 )
    return 0;
  if ( v12 )
    return 2;
  return 1;
}


// ===== 8135e4 NetStruct::Erase(NetBitStream &) =====
int __fastcall NetStruct::Erase(NetStruct *this, NetBitStream *a2)
{
  return NetStruct::LoadInternal(this, 0, a2, -1);
}


// ===== 8135f4 NetStruct::Load(NetBitStream &,int,uint) =====
int __fastcall NetStruct::Load(NetStruct *this, NetBitStream *a2, int a3, unsigned int a4)
{
  int Internal; // r7
  int v7; // r6
  int v8; // r3

  *((_DWORD *)this + 74) = a4;
  Internal = NetStruct::LoadInternal(this, 1, a2, a3);
  if ( *((_BYTE *)this + 293) && *((int *)this + 65) > 0 )
  {
    v7 = 0;
    do
    {
      v8 = *((_DWORD *)this + ++v7);
      (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v8 + 12))(v8, a4);
    }
    while ( *((_DWORD *)this + 65) > v7 );
  }
  return Internal;
}


// ===== 81366c NetStruct::SetEnabled(bool) =====
unsigned __int8 *__fastcall NetStruct::SetEnabled(unsigned __int8 *this, int a2)
{
  unsigned __int8 v2; // r5
  unsigned __int8 *v3; // r4
  int v4; // r6
  CMatching *v5; // r8
  int (__fastcall *v6)(CMatching *, int); // r7
  int v7; // r0
  int v8; // r0
  unsigned __int8 *v9; // r8
  int v10; // r7
  unsigned __int8 *v11; // r3
  int v12; // r2

  v2 = a2;
  v3 = this;
  if ( a2 )
  {
    v4 = *(this + 292);
    if ( !*(this + 292) )
    {
      v5 = (CMatching *)CMatching::Get((CMatching *)this);
      v6 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v5 + 132);
      v7 = CMatching::Get(v5);
      v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 108))(v7);
      this = (unsigned __int8 *)v6(v5, v8);
      v9 = this;
      if ( *((int *)v3 + 65) > 0 )
      {
        v10 = v4;
        do
        {
          v11 = &v3[v4];
          v12 = *(_DWORD *)&v3[v4 + 4];
          ++v10;
          v4 += 4;
          *(_DWORD *)(v12 + 24) = v9;
          this = (unsigned __int8 *)NetStructMember::SetChanged(*((NetStructMember **)v11 + 1));
        }
        while ( *((_DWORD *)v3 + 65) > v10 );
      }
    }
  }
  else
  {
    *(this + 293) = 0;
  }
  v3[292] = v2;
  return this;
}


// ===== 813704 NetStruct::AreChangesAcknowledged(void) =====
int __fastcall NetStruct::AreChangesAcknowledged(NetStruct *this)
{
  int v2; // r4
  int result; // r0

  if ( !*((_BYTE *)this + 292) || *((int *)this + 65) <= 0 )
    return 1;
  v2 = 0;
  while ( 1 )
  {
    result = NetStructMember::AreChangesAcknowledged(*((NetStructMember **)this + ++v2));
    if ( !result )
      break;
    if ( *((_DWORD *)this + 65) <= v2 )
      return 1;
  }
  return result;
}


// ===== 81375c NetStruct::HasDataToSend(int) =====
int __fastcall NetStruct::HasDataToSend(NetStruct *this, unsigned int a2)
{
  CMatching *v5; // r4
  unsigned int v6; // r7
  unsigned int RoomMask; // r6
  int v8; // r4

  if ( !*((_BYTE *)this + 292) )
    return a2 >> 31;
  v5 = (CMatching *)CMatching::Get(this);
  v6 = (*(int (__fastcall **)(CMatching *, unsigned int))(*(_DWORD *)v5 + 132))(v5, a2);
  RoomMask = CMatching::GetRoomMask(v5);
  if ( *((int *)this + 65) <= 0 )
    return a2 >> 31;
  v8 = 0;
  while ( !NetStructMember::HasDataToSend(*((NetStructMember **)this + ++v8), RoomMask, v6) )
  {
    if ( *((_DWORD *)this + 65) <= v8 )
      return a2 >> 31;
  }
  return 1;
}


// ===== 8137ec NetStruct::GetChangedBitMap(void) =====
int __fastcall NetStruct::GetChangedBitMap(NetStruct *this)
{
  int v2; // r6
  int v3; // r4

  if ( *((int *)this + 65) <= 0 )
    return 0;
  v3 = 0;
  v2 = 0;
  do
  {
    if ( NetStructMember::IsChanged(*((NetStructMember **)this + v3 + 1)) )
      v2 |= 1 << v3;
    ++v3;
  }
  while ( *((_DWORD *)this + 65) > v3 );
  return v2;
}


// ===== 81383c NetStruct::IsChanged(void) =====
int __fastcall NetStruct::IsChanged(NetStruct *this)
{
  int v2; // r4

  if ( *((int *)this + 65) <= 0 )
    return 0;
  v2 = 0;
  while ( !NetStructMember::IsChanged(*((NetStructMember **)this + ++v2)) )
  {
    if ( *((_DWORD *)this + 65) <= v2 )
      return 0;
  }
  return 1;
}


// ===== 81388c NetStruct::NetStruct(void) =====
void __fastcall NetStruct::NetStruct(NetStruct *this)
{
  char *v2; // r0

  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 65) = 0;
  *((_BYTE *)this + 264) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_BYTE *)this + 268) = 0;
  v2 = (char *)this + 268;
  *((_DWORD *)this + 70) = v2;
  *((_DWORD *)this + 69) = v2;
  *((_DWORD *)this + 71) = 0;
  *((_BYTE *)this + 292) = 0;
  *((_BYTE *)this + 293) = 0;
  *((_DWORD *)this + 74) = 0;
  LC_API_MEMSET_0((char *)this + 4, 0, 0x100u);
}


// ===== 8138f4 NetStruct::NetStruct(void) =====
void __fastcall NetStruct::NetStruct(NetStruct *this)
{
  char *v2; // r0

  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 65) = 0;
  *((_BYTE *)this + 264) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_BYTE *)this + 268) = 0;
  v2 = (char *)this + 268;
  *((_DWORD *)this + 70) = v2;
  *((_DWORD *)this + 69) = v2;
  *((_DWORD *)this + 71) = 0;
  *((_BYTE *)this + 292) = 0;
  *((_BYTE *)this + 293) = 0;
  *((_DWORD *)this + 74) = 0;
  LC_API_MEMSET_0((char *)this + 4, 0, 0x100u);
}


// ===== 81395c NetStruct::~NetStruct() =====
void __fastcall NetStruct::~NetStruct(NetStruct *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 71);
  *(_DWORD *)this = off_9924D8;
  if ( v1 )
  {
    v3 = (char *)this + 268;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = v3;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = v3;
    *((_DWORD *)this + 68) = 0;
  }
}


// ===== 8139bc NetStruct::~NetStruct() =====
void __fastcall NetStruct::~NetStruct(NetStruct *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 71);
  *(_DWORD *)this = off_9924D8;
  if ( v1 )
  {
    v3 = (char *)this + 268;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = v3;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = v3;
    *((_DWORD *)this + 68) = 0;
  }
  CustomFree(this);
}


// ===== 813a24 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 40;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 813a44 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
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


// ===== 813b1c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::insert_unique(std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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


// ===== 813ca4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 814018 std::map<int,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>,std::less<int>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  int v12; // [sp+4h] [bp-40h] BYREF
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
  _DWORD *v23; // [sp+38h] [bp-Ch] BYREF
  _DWORD *v24; // [sp+3Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 <= v6;
      v8 = (_DWORD *)(v4 <= v6 ? v2[2] : v2[3]);
      if ( !v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v12 = v4;
    v18[0] = 0;
    v19 = nullptr;
    v20 = v18;
    v21 = v18;
    v22 = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_Rb_tree(
      (int)&v13,
      (int)v18);
    v23 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::insert_unique(
      &v24,
      a1,
      &v23,
      &v12);
    v10 = v24;
    if ( v17 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
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
      return v9 + 5;
    }
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
      (int)v18,
      v19);
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 81413c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,NetStruct::tPacketHistory> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  int v11; // r2
  int *v12; // r3
  _DWORD *v13; // r12
  _DWORD *v14; // r5
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v20; // r0
  int v21; // r2
  int *v22; // r3
  _DWORD *v23; // r12
  int v24; // r0
  int v25; // r1
  int v26; // r2
  int v27; // r3
  _DWORD *v28; // r0
  int v29; // r2
  int *v30; // r3
  _DWORD *v31; // r12
  int v32; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r3

  if ( a2 == a3 )
  {
    v28 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate();
    v30 = a4 + 2;
    v29 = *a4;
    v14 = v28;
    v28[4] = v29;
    v31 = v28 + 6;
    v32 = *v30;
    v33 = v30[1];
    v34 = v30[2];
    v35 = v30[3];
    *v31 = v32;
    v31[1] = v33;
    v31[2] = v34;
    v31[3] = v35;
    v14[3] = 0;
    v14[2] = 0;
    a2[2] = v14;
    a2[1] = v14;
    a2[3] = v14;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate();
    v12 = a4 + 2;
    v11 = *a4;
    v13 = v10 + 6;
    v14 = v10;
    v10[4] = v11;
    v15 = *v12;
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    *v13 = v15;
    v13[1] = v16;
    v13[2] = v17;
    v13[3] = v18;
    v14[3] = 0;
    v14[2] = 0;
    a3[3] = v14;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v14;
  }
  else
  {
    v20 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate();
    v22 = a4 + 2;
    v21 = *a4;
    v23 = v20 + 6;
    v14 = v20;
    v20[4] = v21;
    v24 = *v22;
    v25 = v22[1];
    v26 = v22[2];
    v27 = v22[3];
    *v23 = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    v14[3] = 0;
    v14[2] = 0;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v14[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v14, a2 + 1);
  ++a2[4];
  *a1 = v14;
  return a1;
}


// ===== 814278 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(std::pair<int const,NetStruct::tPacketHistory> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
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


// ===== 814400 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,NetStruct::tPacketHistory>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>>,std::pair<int const,NetStruct::tPacketHistory> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 814774 NetStruct::ProcessLostPacket(int,int) =====
void __fastcall NetStruct::ProcessLostPacket(NetStruct *this, int a2, int a3)
{
  int v3; // r3
  _DWORD *v6; // r8
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r1
  int v10; // r2
  bool v11; // cc
  _DWORD *v12; // r2
  int v13; // r0
  _DWORD *v14; // r0
  _DWORD *v15; // r12
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  unsigned int v18; // r7
  unsigned int v19; // r10
  _DWORD *v20; // r0
  _DWORD *v21; // r3
  _DWORD *v22; // r1
  int v23; // r2
  bool v24; // cc
  _DWORD *v25; // r2
  int v26; // r1
  int v27; // r8
  int v28; // r6
  unsigned int v29; // r12
  int v30; // r4
  int v31; // r0
  int v32; // r3
  bool v33; // cc
  _DWORD *v34; // r3
  unsigned int v35; // [sp+Ch] [bp-48h]
  int v36; // [sp+14h] [bp-40h]
  unsigned __int64 v37; // [sp+18h] [bp-3Ch]
  int v38; // [sp+24h] [bp-30h] BYREF
  int v39[7]; // [sp+28h] [bp-2Ch] BYREF
  _DWORD *v40; // [sp+44h] [bp-10h] BYREF
  _DWORD *v41; // [sp+48h] [bp-Ch] BYREF
  unsigned __int8 *v42; // [sp+4Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 71);
  v38 = a2;
  if ( !v3 )
    return;
  v6 = (_DWORD *)((char *)this + 268);
  v7 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>((_DWORD *)this + 67, &v38);
  v8 = (_DWORD *)v7[1];
  if ( !v8 )
  {
LABEL_50:
    v8 = v7;
LABEL_14:
    if ( v7 != v8 )
    {
      v13 = CMatching::Get((CMatching *)v7);
      v36 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 132))(v13, v38);
      v14 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v6, &v38);
      v15 = (_DWORD *)v14[1];
      if ( v15 )
      {
        v16 = v14;
        while ( 1 )
        {
          v32 = v15[4];
          v33 = v32 < a3;
          if ( v32 >= a3 )
            v34 = (_DWORD *)v15[2];
          else
            v34 = (_DWORD *)v15[3];
          if ( v33 )
            v15 = v16;
          v16 = v15;
          if ( !v34 )
            break;
          v15 = v34;
        }
      }
      else
      {
        v15 = v14;
      }
      if ( v14 == v15 || (v17 = v15, v15[4] > a3) )
      {
        memset(&v39[2], 0, 16);
        v41 = v15;
        v39[0] = a3;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
          &v40,
          v14,
          &v41,
          v39);
        v17 = v40;
      }
      v18 = v17[9];
      v37 = *((_QWORD *)v17 + 3);
      v19 = v17[8];
      v20 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v6, &v38);
      v21 = (_DWORD *)v20[1];
      if ( v21 )
      {
        v22 = v20;
        while ( 1 )
        {
          v23 = v21[4];
          v24 = v23 < a3;
          if ( v23 >= a3 )
            v25 = (_DWORD *)v21[2];
          else
            v25 = (_DWORD *)v21[3];
          if ( v24 )
            v21 = v22;
          v22 = v21;
          if ( !v25 )
            break;
          v21 = v25;
        }
        if ( v20 != v21 && v21[4] <= a3 )
        {
          v42 = (unsigned __int8 *)v21;
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::erase(
            (int)v20,
            &v42);
        }
      }
      v26 = *((_DWORD *)this + 65);
      if ( v26 > 0 )
      {
        v27 = 0;
        v28 = 0;
        v29 = v19;
        do
        {
          v30 = (v29 >> v28) | (v18 << (32 - v28));
          if ( v28 - 32 >= 0 )
            v30 = v18 >> (v28 - 32);
          if ( (v30 & 1) != 0 )
          {
            v35 = v29;
            v31 = NetStructMember::AreChangesAcknowledgedBy(*(NetStructMember **)((char *)this + v27 + 4), v36);
            v29 = v35;
            if ( v31 )
            {
              v26 = *((_DWORD *)this + 65);
            }
            else
            {
              NetStructMember::SetSentFlag(*(NetStructMember **)((char *)this + v27 + 4), v36, 0, v37);
              v26 = *((_DWORD *)this + 65);
              v29 = v35;
            }
          }
          ++v28;
          v27 += 4;
        }
        while ( v26 > v28 );
      }
    }
    return;
  }
  v9 = v7;
  while ( 1 )
  {
    v10 = v8[4];
    v11 = v10 < a3;
    if ( v10 >= a3 )
      v12 = (_DWORD *)v8[2];
    else
      v12 = (_DWORD *)v8[3];
    if ( v11 )
      v8 = v9;
    v9 = v8;
    if ( !v12 )
      break;
    v8 = v12;
  }
  if ( v7 != v8 )
  {
    if ( v8[4] <= a3 )
      goto LABEL_14;
    goto LABEL_50;
  }
}


// ===== 8149d4 NetStruct::AddPacketHistory(int,int,ulong long) =====
int __fastcall NetStruct::AddPacketHistory(NetStruct *this, int a2, int a3, int a4, unsigned __int64 a5)
{
  _DWORD *v5; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r4
  _DWORD *v11; // r0
  __int64 v12; // r6
  _DWORD *v13; // r0
  _DWORD *v14; // r12
  _DWORD *v15; // r2
  int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  int v20; // [sp+4h] [bp-28h] BYREF
  int v21[6]; // [sp+8h] [bp-24h] BYREF
  _DWORD *v22; // [sp+20h] [bp-Ch] BYREF
  _DWORD *v23; // [sp+24h] [bp-8h] BYREF

  v20 = a2;
  v5 = (_DWORD *)((char *)this + 268);
  if ( std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>((_DWORD *)this + 67, &v20)[4] <= 0x40u )
  {
    v11 = v5;
    v12 = *(_QWORD *)&NetStruct::s_changeCounter;
    v13 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v11, &v20);
    v14 = (_DWORD *)v13[1];
    if ( v14 )
    {
      v15 = v13;
      while ( 1 )
      {
        v16 = v14[4];
        v17 = v16 < a3;
        if ( v16 >= a3 )
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
      v14 = v13;
    }
    if ( v13 == v14 || (v19 = v14, v14[4] > a3) )
    {
      v21[0] = a3;
      memset(&v21[2], 0, 16);
      v23 = v14;
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
        &v22,
        v13,
        &v23,
        v21);
      v19 = v22;
    }
    *((_QWORD *)v19 + 3) = v12;
    *((_QWORD *)v19 + 4) = a5;
    return a5;
  }
  else
  {
    v8 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v5, &v20);
    v9 = v8;
    if ( v8[4] )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
        (int)v8,
        (_DWORD *)v8[1]);
      v9[4] = 0;
      v9[1] = 0;
      v9[2] = v9;
      v9[3] = v9;
    }
    return NetStruct::Resend(this);
  }
}


// ===== 814b0c NetStruct::SerializeInternal(bool,NetBitStream &,int,int) =====
int __fastcall NetStruct::SerializeInternal(NetStruct *this, int a2, NetBitStream *a3, int a4, int a5)
{
  CMatching *v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r3
  unsigned int v13; // r9
  int v14; // r7
  __int64 v15; // r4
  int v16; // r1
  __int64 v17; // r2
  int v18; // r4
  unsigned __int64 v19; // [sp+8h] [bp-Ch]

  if ( !a2 || !(*(int (__fastcall **)(NetStruct *, int))(*(_DWORD *)this + 40))(this, a4) )
  {
    NetBitStream::WriteBit(a3, 0);
    return 0;
  }
  v9 = (CMatching *)NetBitStream::WriteBit(a3, 1u);
  v10 = CMatching::Get(v9);
  v11 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v10 + 132))(v10, a4);
  v12 = *((_DWORD *)this + 65);
  v13 = v11;
  if ( v12 <= 0 )
  {
    v19 = 0;
LABEL_19:
    v18 = *((_DWORD *)a3 + 7);
    if ( !v18 && v12 > 0 )
    {
      do
      {
        NetStructMember::SetSentFlag(*((NetStructMember **)this + v18 + 1), v13, 1, 0xFFFFFFFFFFFFFFFFLL);
        v12 = *((_DWORD *)this + 65);
        ++v18;
      }
      while ( v12 > v18 );
    }
    goto LABEL_14;
  }
  v14 = *((_DWORD *)a3 + 7);
  if ( !v14 )
  {
    v19 = 0;
    while ( 1 )
    {
      if ( NetStructMember::Serialize(*((NetStructMember **)this + v14 + 1), a3, v13) )
      {
        HIDWORD(v15) = 1u >> (32 - v14);
        if ( v14 - 32 >= 0 )
          HIDWORD(v15) = 1 << (v14 - 32);
        LODWORD(v15) = 1 << v14;
      }
      else
      {
        v15 = 0;
      }
      v12 = *((_DWORD *)this + 65);
      ++v14;
      v19 |= v15;
      if ( v12 <= v14 )
        goto LABEL_19;
      v12 = *((_DWORD *)a3 + 7);
      if ( v12 )
        goto LABEL_14;
    }
  }
  v19 = 0;
LABEL_14:
  NetStruct::AddPacketHistory(this, a4, a5, v12, v19);
  v16 = *((_DWORD *)this + 65);
  HIDWORD(v17) = 1u >> (32 - v16);
  LODWORD(v17) = 1 << v16;
  if ( v16 - 32 >= 0 )
    HIDWORD(v17) = 1 << (v16 - 32);
  if ( (_DWORD)v17 - 1 != (_DWORD)v19 )
    return 1;
  if ( (unsigned __int64)(v17 - 1) >> 32 == HIDWORD(v19) )
    return 2;
  return 1;
}


// ===== 814cd4 NetStruct::ConditionalSerialize(bool,NetBitStream &,int,int) =====
// attributes: thunk
int __fastcall NetStruct::ConditionalSerialize(NetStruct *this, int a2, NetBitStream *a3, int a4, int a5)
{
  return NetStruct::SerializeInternal(this, a2, a3, a4, a5);
}


// ===== 814cd8 NetStruct::SerializeDisabled(NetBitStream &) =====
int __fastcall NetStruct::SerializeDisabled(NetStruct *this, NetBitStream *a2)
{
  return NetStruct::SerializeInternal(this, 0, a2, -1, -1);
}


// ===== 814d00 NetStruct::Serialize(NetBitStream &,int,int) =====
int __fastcall NetStruct::Serialize(NetStruct *this, NetBitStream *a2, int a3, int a4)
{
  return NetStruct::SerializeInternal(this, 1, a2, a3, a4);
}


// ===== 814d28 NetStruct::ProcessAcknowledgedPacket(int,int) =====
void __fastcall NetStruct::ProcessAcknowledgedPacket(NetStruct *this, int a2, int a3)
{
  int v3; // r3
  _DWORD *v6; // r8
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r1
  int v10; // r2
  bool v11; // cc
  _DWORD *v12; // r2
  int v13; // r0
  unsigned int v14; // r9
  _DWORD *v15; // r0
  _DWORD *v16; // r12
  _DWORD *v17; // r2
  int v18; // r3
  bool v19; // cc
  _DWORD *v20; // r3
  _DWORD *v21; // r3
  unsigned int v22; // r5
  _DWORD *v23; // r0
  unsigned int v24; // r8
  _DWORD *v25; // r0
  _DWORD *v26; // r3
  _DWORD *v27; // r1
  int v28; // r2
  bool v29; // cc
  _DWORD *v30; // r2
  int v31; // r1
  int v32; // r4
  NetStruct *v33; // r12
  int v34; // r6
  int *v35; // [sp+4h] [bp-48h]
  unsigned __int64 v36; // [sp+10h] [bp-3Ch]
  int v37; // [sp+1Ch] [bp-30h] BYREF
  int v38[7]; // [sp+20h] [bp-2Ch] BYREF
  _DWORD *v39; // [sp+3Ch] [bp-10h] BYREF
  _DWORD *v40; // [sp+40h] [bp-Ch] BYREF
  unsigned __int8 *v41; // [sp+44h] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 71);
  v37 = a2;
  if ( !v3 )
    return;
  v6 = (_DWORD *)((char *)this + 268);
  v7 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>((_DWORD *)this + 67, &v37);
  v8 = (_DWORD *)v7[1];
  if ( !v8 )
  {
LABEL_46:
    v8 = v7;
LABEL_14:
    if ( v7 != v8 )
    {
      v13 = CMatching::Get((CMatching *)v7);
      v14 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 132))(v13, v37);
      v15 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v6, &v37);
      v16 = (_DWORD *)v15[1];
      if ( v16 )
      {
        v17 = v15;
        while ( 1 )
        {
          v18 = v16[4];
          v19 = v18 < a3;
          if ( v18 >= a3 )
            v20 = (_DWORD *)v16[2];
          else
            v20 = (_DWORD *)v16[3];
          if ( v19 )
            v16 = v17;
          v17 = v16;
          if ( !v20 )
            break;
          v16 = v20;
        }
      }
      else
      {
        v16 = v15;
      }
      if ( v15 == v16 || (v21 = v16, v16[4] > a3) )
      {
        memset(&v38[2], 0, 16);
        v40 = v16;
        v38[0] = a3;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::insert_unique(
          &v39,
          v15,
          &v40,
          v38);
        v21 = v39;
      }
      v22 = v21[9];
      v36 = *((_QWORD *)v21 + 3);
      v23 = v6;
      v24 = v21[8];
      v25 = std::map<int,std::map<int,NetStruct::tPacketHistory>>::operator[]<int>(v23, &v37);
      v26 = (_DWORD *)v25[1];
      if ( v26 )
      {
        v27 = v25;
        while ( 1 )
        {
          v28 = v26[4];
          v29 = v28 < a3;
          if ( v28 >= a3 )
            v30 = (_DWORD *)v26[2];
          else
            v30 = (_DWORD *)v26[3];
          if ( v29 )
            v26 = v27;
          v27 = v26;
          if ( !v30 )
            break;
          v26 = v30;
        }
        if ( v25 != v26 && v26[4] <= a3 )
        {
          v41 = (unsigned __int8 *)v26;
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::erase(
            (int)v25,
            &v41);
        }
      }
      v31 = *((_DWORD *)this + 65);
      if ( v31 > 0 )
      {
        v32 = 0;
        v33 = this;
        do
        {
          v34 = (v24 >> v32) | (v22 << (32 - v32));
          if ( v32 - 32 >= 0 )
            v34 = v22 >> (v32 - 32);
          if ( (v34 & 1) != 0 )
          {
            v35 = (int *)v33;
            NetStructMember::AcknowledgeChange(*((NetStructMember **)v33 + v32 + 1), v14, v36);
            v33 = (NetStruct *)v35;
            v31 = v35[65];
          }
          ++v32;
        }
        while ( v31 > v32 );
      }
    }
    return;
  }
  v9 = v7;
  while ( 1 )
  {
    v10 = v8[4];
    v11 = v10 < a3;
    if ( v10 >= a3 )
      v12 = (_DWORD *)v8[2];
    else
      v12 = (_DWORD *)v8[3];
    if ( v11 )
      v8 = v9;
    v9 = v8;
    if ( !v12 )
      break;
    v8 = v12;
  }
  if ( v7 != v8 )
  {
    if ( v8[4] <= a3 )
      goto LABEL_14;
    goto LABEL_46;
  }
}


// ===== 814f70 NetStructMember::IsChanged(void) =====
int __fastcall NetStructMember::IsChanged(NetStructMember *this)
{
  int result; // r0

  result = *((unsigned __int8 *)this + 28);
  *((_BYTE *)this + 28) = 0;
  return result;
}


// ===== 814f84 NetStructMember::SetChanged(void) =====
int __fastcall NetStructMember::SetChanged(int this)
{
  int v1; // r1
  __int64 v2; // r4

  v1 = *(_DWORD *)(this + 24);
  *(_BYTE *)(this + 28) = 1;
  *(_DWORD *)(this + 20) = v1;
  *(_DWORD *)(this + 16) = v1;
  v2 = *(_QWORD *)&NetStruct::s_changeCounter + 1LL;
  *(_QWORD *)(this + 8) = *(_QWORD *)&NetStruct::s_changeCounter;
  *(_QWORD *)&NetStruct::s_changeCounter = v2;
  return this;
}


// ===== 814fd8 NetStructMember::SetAcked(void) =====
int __fastcall NetStructMember::SetAcked(int this)
{
  *(_DWORD *)(this + 20) = -1;
  *(_DWORD *)(this + 16) = -1;
  return this;
}


// ===== 814fe8 NetStructMember::SetAcked(uint) =====
int __fastcall NetStructMember::SetAcked(int this, unsigned int a2)
{
  unsigned int v2; // r2

  v2 = *(_DWORD *)(this + 16) | a2;
  *(_DWORD *)(this + 20) |= a2;
  *(_DWORD *)(this + 16) = v2;
  return this;
}


// ===== 815004 NetStructMember::AcknowledgeChange(uint,ulong long) =====
int __fastcall NetStructMember::AcknowledgeChange(int this, unsigned int a2, unsigned __int64 a3)
{
  if ( *(_QWORD *)(this + 8) < a3 )
    return NetStructMember::SetAcked(this, a2);
  return this;
}


// ===== 815028 NetStructMember::AreChangesAcknowledgedBy(uint) =====
bool __fastcall NetStructMember::AreChangesAcknowledgedBy(NetStructMember *this, unsigned int a2)
{
  return (a2 & *((_DWORD *)this + 4)) != 0;
}


// ===== 81503c NetStructMember::SetSentFlag(uint,bool,ulong long) =====
int __fastcall NetStructMember::SetSentFlag(int this, unsigned int a2, int a3, int a4, unsigned __int64 a5)
{
  int v5; // r3
  unsigned int v6; // r1

  if ( *(_QWORD *)(this + 8) < a5 )
  {
    v5 = *(_DWORD *)(this + 20);
    if ( a3 )
      v6 = v5 | a2;
    else
      v6 = v5 & ~a2;
    *(_DWORD *)(this + 20) = v6;
  }
  return this;
}


// ===== 815078 NetStructMember::HasDataToSend(uint,uint) =====
bool __fastcall NetStructMember::HasDataToSend(NetStructMember *this, unsigned int a2, unsigned int a3)
{
  unsigned int v3; // r12

  v3 = a2 & *((_DWORD *)this + 5);
  *((_DWORD *)this + 4) &= a2;
  *((_DWORD *)this + 5) = v3;
  return (a3 & v3) == 0;
}


// ===== 8150a0 NetStructMember::GetFrameTime(void) =====
int __fastcall NetStructMember::GetFrameTime(NetStructMember *this)
{
  return *(_DWORD *)(GetOnline(this) + 28);
}


// ===== 8150b0 NetStructMember::AreChangesAcknowledged(void) =====
bool __fastcall NetStructMember::AreChangesAcknowledged(NetStructMember *this)
{
  CMatching *v2; // r6
  int (__fastcall *v3)(CMatching *, int); // r5
  int v4; // r0
  unsigned int v5; // r1

  v2 = (CMatching *)CMatching::Get(this);
  if ( CMatching::IsServer(v2) )
    return CMatching::TestRoomMask(v2, *((_DWORD *)this + 4));
  v3 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)v2 + 132);
  v4 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)v2 + 116))(v2);
  v5 = v3(v2, v4);
  return NetStructMember::AreChangesAcknowledgedBy(this, v5);
}


// ===== 81510c NetStructMember::Load(NetBitStream &) =====
int __fastcall NetStructMember::Load(NetStructMember *this, NetBitStream *a2)
{
  int result; // r0

  if ( *((_DWORD *)this + 1) <= 1u )
  {
    (*(void (__fastcall **)(NetStructMember *))(*(_DWORD *)this + 8))(this);
    return 1;
  }
  else
  {
    result = NetBitStream::ReadBit(a2);
    if ( result )
    {
      (*(void (__fastcall **)(NetStructMember *, NetBitStream *))(*(_DWORD *)this + 8))(this, a2);
      return 1;
    }
  }
  return result;
}


// ===== 815168 NetStructMember::Serialize(NetBitStream &,uint) =====
int __fastcall NetStructMember::Serialize(NetStructMember *this, NetBitStream *a2, unsigned int a3)
{
  NetStructMember *v3; // r4
  NetBitStream *v4; // r5

  v3 = this;
  v4 = a2;
  if ( *((_DWORD *)this + 1) > 1u )
  {
    if ( (a3 & *((_DWORD *)this + 5)) != 0 )
    {
      NetBitStream::WriteBit(a2, 0);
      return 0;
    }
    NetBitStream::WriteBit(a2, 1u);
    this = v3;
    a2 = v4;
  }
  (*(void (__fastcall **)(NetStructMember *, NetBitStream *))(*(_DWORD *)v3 + 4))(this, a2);
  return 1;
}


// ===== 8151c8 CPacketManager::GetInstance(void) =====
int __fastcall CPacketManager::GetInstance(CPacketManager *this)
{
  return CPacketManager::s_packetManager;
}


// ===== 8151e8 GetPacketManager(void) =====
// attributes: thunk
int __fastcall GetPacketManager(CPacketManager *this)
{
  return CPacketManager::GetInstance(this);
}


// ===== 8151ec CPacketManager::IsInitialized(void) =====
int __fastcall CPacketManager::IsInitialized(CPacketManager *this)
{
  int result; // r0

  result = CPacketManager::s_packetManager;
  if ( CPacketManager::s_packetManager )
    return *(unsigned __int8 *)(CPacketManager::s_packetManager + 4);
  return result;
}


// ===== 815214 CPacketManager::Terminate(void) =====
int __fastcall CPacketManager::Terminate(CPacketManager *this)
{
  int result; // r0

  if ( CPacketManager::s_packetManager )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)CPacketManager::s_packetManager + 4))(CPacketManager::s_packetManager);
    CPacketManager::s_packetManager = 0;
  }
  return result;
}


// ===== 815258 CPacketManager::RegisterPacketSlot(PACKET_SLOTS,bool (*)(int,int,NetBitStream &),void (*)(int,int,NetBitStream &),void (*)(int,int),void (*)(int,int)) =====
int __fastcall CPacketManager::RegisterPacketSlot(int a1, int a2, int a3, int a4, int a5)
{
  char *v5; // r6

  v5 = &CPacketManager::s_PacketSlots[92 * a1];
  if ( !*v5 )
  {
    CPacketManager::s_PacketSlots[92 * a1] = 1;
    *((_DWORD *)v5 + 1) = a2;
    *((_DWORD *)v5 + 2) = a3;
    *((_DWORD *)v5 + 3) = a4;
    *((_DWORD *)v5 + 4) = a5;
    CPacketManager::s_packetSlotBitMap |= 1 << a1;
  }
  return 0;
}


// ===== 8152c0 CPacketManager::UnregisterPacketSlot(PACKET_SLOTS) =====
int __fastcall CPacketManager::UnregisterPacketSlot(int a1)
{
  char *v1; // r2
  int result; // r0

  v1 = (char *)&CPacketManager::s_PacketSlots + 92 * a1;
  *v1 = 0;
  *((_DWORD *)v1 + 4) = 0;
  *((_DWORD *)v1 + 1) = 0;
  *((_DWORD *)v1 + 2) = 0;
  *((_DWORD *)v1 + 3) = 0;
  result = (unsigned __int8)CPacketManager::s_packetSlotBitMap & ~(1 << a1);
  CPacketManager::s_packetSlotBitMap = result;
  return result;
}


// ===== 815324 CPacketManager::IsPacketSlotUsed(PACKET_SLOTS) =====
int __fastcall CPacketManager::IsPacketSlotUsed(int a1)
{
  return (unsigned __int8)CPacketManager::s_PacketSlots[92 * a1];
}


// ===== 81534c CPacketManager::GetPacketCount(void) =====
int __fastcall CPacketManager::GetPacketCount(CPacketManager *this)
{
  char *v1; // r0
  char *v2; // r3
  char *v3; // t1
  int v4; // r2

  v3 = *((char **)this + 9);
  v1 = (char *)this + 36;
  v2 = v3;
  if ( v3 == v1 )
    return 0;
  v4 = 0;
  do
  {
    v2 = *(char **)v2;
    ++v4;
  }
  while ( v1 != v2 );
  return v4;
}


// ===== 815378 CPacketManager::ArePacketsAvailable(void) =====
int __fastcall CPacketManager::ArePacketsAvailable(CPacketManager *this)
{
  char *v1; // r0
  char *v2; // r3
  char *v3; // t1
  int result; // r0
  int v5; // r2

  v3 = *((char **)this + 9);
  v1 = (char *)this + 36;
  v2 = v3;
  if ( v3 == v1 )
    return 0;
  v5 = 0;
  do
  {
    v2 = *(char **)v2;
    ++v5;
  }
  while ( v1 != v2 );
  result = v5;
  if ( v5 )
    return 1;
  return result;
}


// ===== 8153a8 CPacketManager::SequenceMoreRecent(uint,uint) =====
bool __fastcall CPacketManager::SequenceMoreRecent(CPacketManager *this, unsigned int a2, unsigned int a3)
{
  if ( (unsigned int)this > a2 && (unsigned int)this - a2 <= 0x8000 )
    return 1;
  if ( (unsigned int)this < a2 )
    return a2 - (unsigned int)this > 0x8000;
  return 0;
}


// ===== 8153e0 CPacketManager::GetSequenceOffset(uint,uint) =====
int __fastcall CPacketManager::GetSequenceOffset(CPacketManager *this, unsigned int a2, unsigned int a3)
{
  int result; // r0

  result = a2 - a3;
  if ( (int)(a2 - a3) >= -32768 )
  {
    if ( result > 0x8000 )
      result -= 0x10000;
  }
  else
  {
    result += 0x10000;
  }
  return result;
}


// ===== 8153fc CPacketManager::PrintStatistics(void) =====
void __fastcall CPacketManager::PrintStatistics(CPacketManager *this)
{
  ;
}


// ===== 815400 CPacketManager::ReadHeader(NetBitStream &) =====
CPacketManager *__fastcall CPacketManager::ReadHeader(CPacketManager *this, NetBitStream *a2, NetBitStream *a3)
{
  *(_DWORD *)this = NetBitStream::ReadU32(a3, 0x10u);
  *((_DWORD *)this + 1) = NetBitStream::ReadU32(a3, 0x10u);
  *((_DWORD *)this + 2) = NetBitStream::ReadU32(a3, 0x20u);
  *((_DWORD *)this + 4) = NetBitStream::ReadU32(a3, 0x10u);
  *((_DWORD *)this + 3) = NetBitStream::ReadU32(a3, 0x10u);
  *((_BYTE *)this + 20) = NetBitStream::ReadU32(a3, 8u);
  return this;
}


// ===== 815474 CPacketManager::WriteHeader(CPacketManager::tPacketMgrHeader &,NetBitStream &) =====
_DWORD *__fastcall CPacketManager::WriteHeader(int a1, int a2, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)a2, 0x10u);
  NetBitStream::WriteU32(this, *(_DWORD *)(a2 + 4), 0x10u);
  NetBitStream::WriteU32(this, *(_DWORD *)(a2 + 8), 0x20u);
  NetBitStream::WriteU32(this, *(_DWORD *)(a2 + 16), 0x10u);
  NetBitStream::WriteU32(this, *(_DWORD *)(a2 + 12), 0x10u);
  return NetBitStream::WriteU32(this, *(unsigned __int8 *)(a2 + 20), 8u);
}


// ===== 8154e4 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 36;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 815504 CPacketManager::ProcessAcknowledgedPackets(void) =====
void __fastcall CPacketManager::ProcessAcknowledgedPackets(CPacketManager *this)
{
  int v1; // r2
  int v2; // r3
  CConnectionManager *v4; // r0
  unsigned int v5; // r5
  unsigned int v6; // r10
  char *v7; // r8
  int v8; // r9
  CConnectionManager *v9; // r10
  int (__fastcall *v10)(CConnectionManager *, int); // r3

  v1 = *((_DWORD *)this + 26);
  v2 = *((_DWORD *)this + 25);
  v4 = (CConnectionManager *)((unsigned int)(v1 - v2) >> 2);
  if ( v4 )
  {
    v5 = 0;
    do
    {
      v6 = *(_DWORD *)(v2 + 4 * v5);
      v7 = CPacketManager::s_PacketSlots;
      v8 = (unsigned __int16)v6;
      v9 = (CConnectionManager *)HIWORD(v6);
      do
      {
        if ( *v7 )
        {
          v10 = *((int (__fastcall **)(CConnectionManager *, int))v7 + 3);
          v4 = v9;
          if ( v10 )
            v4 = (CConnectionManager *)v10(v9, v8);
        }
        v7 += 92;
      }
      while ( v7 != &CPacketManager::s_packetSlotBitMap );
      GetConnectionMgr(v4);
      CConnectionManager::ReportStatistic();
      v1 = *((_DWORD *)this + 26);
      v2 = *((_DWORD *)this + 25);
      ++v5;
    }
    while ( v5 < (v1 - v2) >> 2 );
  }
  if ( v1 != v2 )
    *((_DWORD *)this + 26) = v2;
}


// ===== 8155b8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,CPacketManager::tPacketMemberInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  int v11; // r2
  int *v12; // r3
  char *v13; // r12
  _DWORD *v14; // r5
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v20; // r0
  int v21; // r2
  int *v22; // r3
  char *v23; // r12
  int v24; // r0
  int v25; // r1
  int v26; // r2
  int v27; // r3
  _DWORD *v28; // r0
  int v29; // r2
  int *v30; // r3
  char *v31; // r12
  int v32; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r3

  if ( a2 == a3 )
  {
    v28 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::allocate();
    v30 = a4 + 1;
    v29 = *a4;
    v31 = (char *)(v28 + 5);
    v14 = v28;
    v28[4] = v29;
    v32 = *v30;
    v33 = v30[1];
    v34 = v30[2];
    v35 = v30[3];
    *(_DWORD *)v31 = v32;
    *((_DWORD *)v31 + 1) = v33;
    *((_DWORD *)v31 + 2) = v34;
    *((_WORD *)v31 + 6) = v35;
    v14[3] = 0;
    v14[2] = 0;
    a2[2] = v14;
    a2[1] = v14;
    a2[3] = v14;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::allocate();
    v12 = a4 + 1;
    v11 = *a4;
    v13 = (char *)(v10 + 5);
    v14 = v10;
    v10[4] = v11;
    v15 = *v12;
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    *(_DWORD *)v13 = v15;
    *((_DWORD *)v13 + 1) = v16;
    *((_DWORD *)v13 + 2) = v17;
    *((_WORD *)v13 + 6) = v18;
    v14[3] = 0;
    v14[2] = 0;
    a3[3] = v14;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v14;
  }
  else
  {
    v20 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::allocate();
    v22 = a4 + 1;
    v21 = *a4;
    v23 = (char *)(v20 + 5);
    v14 = v20;
    v20[4] = v21;
    v24 = *v22;
    v25 = v22[1];
    v26 = v22[2];
    v27 = v22[3];
    *(_DWORD *)v23 = v24;
    *((_DWORD *)v23 + 1) = v25;
    *((_DWORD *)v23 + 2) = v26;
    *((_WORD *)v23 + 6) = v27;
    v14[3] = 0;
    v14[2] = 0;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v14[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v14, a2 + 1);
  ++a2[4];
  *a1 = v14;
  return a1;
}


// ===== 815700 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(std::pair<int const,CPacketManager::tPacketMemberInfo> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
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


// ===== 815888 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>>,std::pair<int const,CPacketManager::tPacketMemberInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 815bfc std::map<int,CPacketManager::tPacketMemberInfo,std::less<int>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r12
  int v3; // r4
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  _DWORD *v7; // r3
  _DWORD *v8; // r3
  int v10[4]; // [sp+4h] [bp-1Ch] BYREF
  char v11; // [sp+14h] [bp-Ch]
  char v12; // [sp+15h] [bp-Bh]
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
    v10[0] = v3;
    v12 = 0;
    v11 = 7;
    memset(&v10[1], 0, 12);
    v13 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::insert_unique(
      &v14,
      a1,
      &v13,
      v10);
    v8 = v14;
  }
  return v8 + 5;
}


// ===== 815cac CPacketManager::AcknowledgePacket(CPacketManager::tPacketMgrHeader &) =====
_DWORD *__fastcall CPacketManager::AcknowledgePacket(_DWORD *a1, unsigned int *a2)
{
  _DWORD *v2; // r5
  _DWORD *v5; // r0
  int SequenceOffset; // r0
  char v7; // r7
  _DWORD *v8; // r0
  _DWORD *result; // r0
  _DWORD *v10; // r0
  _DWORD *v11; // r0
  unsigned int v12; // [sp+4h] [bp-8h] BYREF

  v12 = a2[4];
  v2 = a1 + 13;
  v5 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(a1 + 13, (int *)&v12);
  SequenceOffset = CPacketManager::GetSequenceOffset((CPacketManager *)a1, v5[1], *a2);
  v7 = SequenceOffset;
  if ( SequenceOffset < 0 )
  {
    std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v2, (int *)&v12)[1] = *a2;
    v10 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v2, (int *)&v12);
    v10[2] <<= -v7;
    v11 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v2, (int *)&v12);
    v11[2] |= 1u;
  }
  else if ( SequenceOffset <= 31 )
  {
    v8 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v2, (int *)&v12);
    v8[2] |= 1 << v7;
  }
  result = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v2, (int *)&v12);
  result[2] = *((unsigned __int16 *)result + 4);
  return result;
}


// ===== 815d80 CPacketManager::IsPacketValid(CPacketManager::tPacketMgrHeader &) =====
bool __fastcall CPacketManager::IsPacketValid(CMatching *a1, _DWORD *a2)
{
  int v3; // r5
  int v5; // r0
  _DWORD *v7; // r0
  int SequenceOffset; // r0

  v3 = a2[3];
  v5 = CMatching::Get(a1);
  if ( v3 != (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 108))(v5) )
    return 0;
  v7 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>((_DWORD *)a1 + 13, a2 + 4);
  SequenceOffset = CPacketManager::GetSequenceOffset(a1, v7[1], *a2);
  if ( SequenceOffset < 0 )
    return 1;
  if ( SequenceOffset > 31 )
    return 0;
  return (std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>((_DWORD *)a1 + 13, a2 + 4)[2]
        & (1 << SequenceOffset)) == 0;
}


// ===== 815e10 CPacketManager::PreparePacketHeader(int,NetBitStream &) =====
int __fastcall CPacketManager::PreparePacketHeader(CPacketManager *this, int a2, NetBitStream *a3)
{
  _DWORD *v3; // r5
  CMatching *v6; // r0
  int v7; // r0
  int v9; // [sp+4h] [bp-20h] BYREF
  _DWORD v10[5]; // [sp+8h] [bp-1Ch] BYREF
  char v11; // [sp+1Ch] [bp-8h]

  v9 = a2;
  v3 = (_DWORD *)((char *)this + 52);
  v10[0] = (unsigned __int16)(*std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(
                                 (_DWORD *)this + 13,
                                 &v9)
                            + 1);
  v10[1] = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v3, &v9)[1];
  v6 = (CMatching *)std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v3, &v9);
  v10[2] = *((_DWORD *)v6 + 2);
  v7 = CMatching::Get(v6);
  v10[4] = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 108))(v7);
  v10[3] = v9;
  v11 = CPacketManager::s_packetSlotBitMap;
  CPacketManager::WriteHeader((int)this, (int)v10, a3);
  return v10[0];
}


// ===== 815ec8 CPacketManager::PreparePacketData(int,uint,NetBitStream &) =====
_DWORD *__fastcall CPacketManager::PreparePacketData(CPacketManager *this, int a2, unsigned int a3, NetBitStream *a4)
{
  unsigned int v4; // r4
  _DWORD *v6; // r11
  int v7; // r6
  int v8; // r8
  unsigned int v9; // r3
  int v10; // r2
  _DWORD *result; // r0
  _BYTE *v12; // r10
  int v13; // [sp+0h] [bp-14h]
  int v14; // [sp+4h] [bp-10h]
  int v16; // [sp+Ch] [bp-8h] BYREF

  v4 = 0;
  v16 = a2;
  v6 = (_DWORD *)((char *)this + 52);
  v7 = 0;
  v8 = 0;
  do
  {
    while ( 1 )
    {
      v12 = &CPacketManager::s_PacketSlots[v7];
      if ( !CPacketManager::s_PacketSlots[v7]
        || !*((_DWORD *)v12 + 1)
        || (((int)*((unsigned __int8 *)std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(v6, &v16) + 12) >> v8)
          & 1) == 0 )
      {
        result = NetBitStream::WriteByte(a4, 0, 1u);
        goto LABEL_12;
      }
      v13 = *((_DWORD *)a4 + 2);
      v14 = *((_DWORD *)a4 + 4);
      NetBitStream::SetRevertPoint(a4);
      NetBitStream::WriteByte(a4, 1, 1u);
      NetBitStream::WriteU32(a4, v4, 0x20u);
      if ( !(*((int (__fastcall **)(int, unsigned int, NetBitStream *))v12 + 1))(v16, a3, a4) || *((_DWORD *)a4 + 7) )
        break;
      v9 = *((_DWORD *)a4 + 4);
      v10 = v9 & 7;
      if ( (v9 & 7) != 0 )
        v10 = 1;
      if ( v10 + (v9 >> 3) > 0x578 )
        break;
      v7 += 92;
      result = NetBitStream::WriteU32(a4, 8 * v13 - v14 - (8 * *((_DWORD *)a4 + 2) - v9), 0x10u);
      ++v8;
      v4 += 16909060;
      if ( v7 == 736 )
        return result;
    }
    NetBitStream::Revert(a4);
    result = NetBitStream::WriteByte(a4, 0, 1u);
LABEL_12:
    v7 += 92;
    ++v8;
    v4 += 16909060;
  }
  while ( v7 != 736 );
  return result;
}


// ===== 81604c `global constructor keyed to'.._src_generic_PacketManager.cpp =====
int `global constructor keyed to'.._src_generic_PacketManager.cpp()
{
  char *v0; // r5

  v0 = CPacketManager::s_PacketSlots;
  do
  {
    *v0 = 0;
    *((_DWORD *)v0 + 1) = 0;
    *((_DWORD *)v0 + 2) = 0;
    *((_DWORD *)v0 + 3) = 0;
    *((_DWORD *)v0 + 4) = 0;
    *((_DWORD *)v0 + 5) = off_992528;
    CReadWriteLock::CReadWriteLock((CReadWriteLock *)(v0 + 24));
    *((_DWORD *)v0 + 8) = 0;
    v0[28] = 0;
    *((_DWORD *)v0 + 10) = v0 + 28;
    *((_DWORD *)v0 + 9) = v0 + 28;
    *((_DWORD *)v0 + 11) = 0;
    *((_DWORD *)v0 + 13) = 500;
    *((_DWORD *)v0 + 14) = off_992528;
    CReadWriteLock::CReadWriteLock((CReadWriteLock *)(v0 + 60));
    *((_DWORD *)v0 + 17) = 0;
    v0[64] = 0;
    *((_DWORD *)v0 + 19) = v0 + 64;
    *((_DWORD *)v0 + 18) = v0 + 64;
    *((_DWORD *)v0 + 20) = 0;
    *((_DWORD *)v0 + 22) = 500;
    v0 += 92;
  }
  while ( v0 != &CPacketManager::s_packetSlotBitMap );
  return _aeabi_atexit(0, (int)_tcf_0_4, (int)&_dso_handle);
}


// ===== 816118 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::_M_erase(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 816150 CDataStats<int>::~CDataStats() =====
int __fastcall CDataStats<int>::~CDataStats(int a1)
{
  int v1; // r1
  int v3; // r5

  v1 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)a1 = off_992528;
  if ( v1 )
  {
    v3 = a1 + 8;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,int>,std::priv::_Select1st<std::pair<long const,int>>,std::priv::_MultimapTraitsT<std::pair<long const,int>>,std::allocator<std::pair<long const,int>>>::_M_erase(
      a1 + 8,
      *(_DWORD **)(a1 + 12));
    *(_DWORD *)(a1 + 20) = v3;
    *(_DWORD *)(a1 + 24) = 0;
    *(_DWORD *)(a1 + 16) = v3;
    *(_DWORD *)(a1 + 12) = 0;
  }
  CReadWriteLock::~CReadWriteLock((CReadWriteLock *)(a1 + 4));
  return a1;
}


// ===== 8161b8 CDataStats<int>::~CDataStats() =====
void *__fastcall CDataStats<int>::~CDataStats(void *a1)
{
  CDataStats<int>::~CDataStats((int)a1);
  CustomFree(a1);
  return a1;
}


// ===== 8161d4 __tcf_0_4 =====
int _tcf_0_4()
{
  char *v0; // r4
  int result; // r0

  v0 = &CPacketManager::s_packetSlotBitMap;
  do
  {
    v0 -= 92;
    CDataStats<int>::~CDataStats((int)(v0 + 56));
    result = CDataStats<int>::~CDataStats((int)(v0 + 20));
  }
  while ( v0 != CPacketManager::s_PacketSlots );
  return result;
}


// ===== 816218 std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear(void) =====
void __fastcall std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear(void **a1)
{
  void (__fastcall ***v1)(int); // r6
  void (__fastcall **v3)(int); // r4

  v1 = (void (__fastcall ***)(int))*a1;
  if ( *a1 != a1 )
  {
    while ( 1 )
    {
      v3 = *v1;
      (*v1[2])((int)(v1 + 2));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, 0x28u);
      if ( v3 == (void (__fastcall **)(int))a1 )
        break;
      v1 = (void (__fastcall ***)(int))v3;
    }
    v1 = (void (__fastcall ***)(int))a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 81626c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x24u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 8162a4 CPacketManager::CPacketManager(void) =====
void __fastcall CPacketManager::CPacketManager(CPacketManager *this)
{
  pthread_mutex_t *v1; // r8
  char *v3; // r7
  char *v4; // r6
  CConnectionManager *v5; // r0
  CNetworkEmulation *v6; // r0
  int v7; // r3
  int v8; // r3

  v1 = (pthread_mutex_t *)((char *)this + 8);
  *(_DWORD *)this = off_992538;
  *((_BYTE *)this + 4) = 0;
  CNetMutex::CNetMutex((CPacketManager *)((char *)this + 8));
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 6) = (char *)this + 12;
  *((_DWORD *)this + 5) = (char *)this + 12;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 52) = 0;
  v3 = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 52;
  *((_DWORD *)this + 16) = (char *)this + 52;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 76) = 0;
  v4 = (char *)this + 76;
  *((_DWORD *)this + 21) = (char *)this + 76;
  *((_DWORD *)this + 22) = (char *)this + 76;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 30) = (char *)this + 112;
  *((_DWORD *)this + 34) = off_992528;
  *((_DWORD *)this + 32) = 0;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 140));
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 144) = 0;
  *((_DWORD *)this + 39) = (char *)this + 144;
  *((_DWORD *)this + 38) = (char *)this + 144;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 42) = 500;
  *((_DWORD *)this + 43) = off_992528;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 176));
  *((_DWORD *)this + 46) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 48) = (char *)this + 180;
  *((_DWORD *)this + 47) = (char *)this + 180;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 51) = 500;
  *((_DWORD *)this + 52) = off_992528;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 212));
  *((_DWORD *)this + 55) = 0;
  *((_BYTE *)this + 216) = 0;
  *((_DWORD *)this + 57) = (char *)this + 216;
  *((_DWORD *)this + 56) = (char *)this + 216;
  *((_DWORD *)this + 61) = off_992528;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 60) = 500;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 248));
  *((_DWORD *)this + 64) = 0;
  *((_BYTE *)this + 252) = 0;
  *((_DWORD *)this + 66) = (char *)this + 252;
  *((_DWORD *)this + 65) = (char *)this + 252;
  *((_DWORD *)this + 69) = 500;
  *((_DWORD *)this + 67) = 0;
  GetConnectionMgr(v5);
  CConnectionManager::RegisterPacketType(6, 0, (int)CPacketManager::sPacketReceiverCallback);
  CNetMutex::Lock(v1);
  std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear((void **)this + 9);
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    v8 = *((_DWORD *)this + 23);
    *((_DWORD *)this + 16) = v3;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = v3;
    *((_DWORD *)this + 14) = 0;
    if ( !v8 )
      goto LABEL_3;
  }
  else if ( !*((_DWORD *)this + 23) )
  {
    goto LABEL_3;
  }
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
    (int)this + 76,
    *((_DWORD **)this + 20));
  *((_DWORD *)this + 22) = v4;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 21) = v4;
  *((_DWORD *)this + 20) = 0;
LABEL_3:
  v7 = *((_DWORD *)this + 25);
  if ( v7 != *((_DWORD *)this + 26) )
    *((_DWORD *)this + 26) = v7;
  CNetworkEmulation::Initialize(v6);
  *((_BYTE *)this + 4) = 1;
  CNetMutex::Unlock(v1);
}


// ===== 8164e8 CPacketManager::Initialize(void) =====
int __fastcall CPacketManager::Initialize(CPacketManager *this)
{
  CPacketManager *v2; // r5

  if ( CPacketManager::s_packetManager )
    return 0;
  v2 = (CPacketManager *)operator new(0x118u, 2);
  CPacketManager::CPacketManager(v2);
  CPacketManager::s_packetManager = (int)v2;
  if ( v2 )
    return 0;
  else
    return -1;
}


// ===== 816540 CPacketManager::CPacketManager(void) =====
void __fastcall CPacketManager::CPacketManager(CPacketManager *this)
{
  pthread_mutex_t *v1; // r8
  char *v3; // r7
  char *v4; // r6
  CConnectionManager *v5; // r0
  CNetworkEmulation *v6; // r0
  int v7; // r3
  int v8; // r3

  v1 = (pthread_mutex_t *)((char *)this + 8);
  *(_DWORD *)this = off_992538;
  *((_BYTE *)this + 4) = 0;
  CNetMutex::CNetMutex((CPacketManager *)((char *)this + 8));
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 6) = (char *)this + 12;
  *((_DWORD *)this + 5) = (char *)this + 12;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = (char *)this + 36;
  *((_DWORD *)this + 10) = (char *)this + 36;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 52) = 0;
  v3 = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 52;
  *((_DWORD *)this + 16) = (char *)this + 52;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 76) = 0;
  v4 = (char *)this + 76;
  *((_DWORD *)this + 21) = (char *)this + 76;
  *((_DWORD *)this + 22) = (char *)this + 76;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 30) = (char *)this + 112;
  *((_DWORD *)this + 34) = off_992528;
  *((_DWORD *)this + 32) = 0;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 140));
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 144) = 0;
  *((_DWORD *)this + 39) = (char *)this + 144;
  *((_DWORD *)this + 38) = (char *)this + 144;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 42) = 500;
  *((_DWORD *)this + 43) = off_992528;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 176));
  *((_DWORD *)this + 46) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 48) = (char *)this + 180;
  *((_DWORD *)this + 47) = (char *)this + 180;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 51) = 500;
  *((_DWORD *)this + 52) = off_992528;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 212));
  *((_DWORD *)this + 55) = 0;
  *((_BYTE *)this + 216) = 0;
  *((_DWORD *)this + 57) = (char *)this + 216;
  *((_DWORD *)this + 56) = (char *)this + 216;
  *((_DWORD *)this + 61) = off_992528;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 60) = 500;
  CReadWriteLock::CReadWriteLock((CPacketManager *)((char *)this + 248));
  *((_DWORD *)this + 64) = 0;
  *((_BYTE *)this + 252) = 0;
  *((_DWORD *)this + 66) = (char *)this + 252;
  *((_DWORD *)this + 65) = (char *)this + 252;
  *((_DWORD *)this + 69) = 500;
  *((_DWORD *)this + 67) = 0;
  GetConnectionMgr(v5);
  CConnectionManager::RegisterPacketType(6, 0, (int)CPacketManager::sPacketReceiverCallback);
  CNetMutex::Lock(v1);
  std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear((void **)this + 9);
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    v8 = *((_DWORD *)this + 23);
    *((_DWORD *)this + 16) = v3;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = v3;
    *((_DWORD *)this + 14) = 0;
    if ( !v8 )
      goto LABEL_3;
  }
  else if ( !*((_DWORD *)this + 23) )
  {
    goto LABEL_3;
  }
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
    (int)this + 76,
    *((_DWORD **)this + 20));
  *((_DWORD *)this + 22) = v4;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 21) = v4;
  *((_DWORD *)this + 20) = 0;
LABEL_3:
  v7 = *((_DWORD *)this + 25);
  if ( v7 != *((_DWORD *)this + 26) )
    *((_DWORD *)this + 26) = v7;
  CNetworkEmulation::Initialize(v6);
  *((_BYTE *)this + 4) = 1;
  CNetMutex::Unlock(v1);
}


// ===== 816784 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<uint const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<uint const,CPacketManager::tSendPacket>>,std::allocator<std::pair<uint const,CPacketManager::tSendPacket>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      NetBitStream::~NetBitStream((NetBitStream *)(v2 + 6));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0x38u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 8167c4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x24u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 816800 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<uint const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<uint const,CPacketManager::tSendPacket>>,std::allocator<std::pair<uint const,CPacketManager::tSendPacket>>>::erase(std::priv::_Rb_tree_iterator<std::pair<uint const,CPacketManager::tSendPacket>,std::priv::_MultimapTraitsT<std::pair<uint const,CPacketManager::tSendPacket>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  NetBitStream::~NetBitStream((NetBitStream *)(v3 + 24));
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x38u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 81684c CPacketManager::SendWaitingPackets(void) =====
void __fastcall CPacketManager::SendWaitingPackets(CPacketManager *this)
{
  char *v2; // r6
  int *v3; // r7
  CConnectionManager *ConnectionMgr; // r0
  unsigned int v5; // r12
  int v6; // r1
  unsigned __int8 *v7; // [sp+Ch] [bp-8h] BYREF

  if ( *((_DWORD *)this + 7) )
  {
    v2 = (char *)this + 12;
    do
    {
      v3 = *((int **)this + 5);
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
      v5 = v3[10];
      v6 = v5 & 7;
      if ( (v5 & 7) != 0 )
        v6 = 1;
      CConnectionManager::SendTo(ConnectionMgr, 6, v3[5], v3[7], v6 + (v5 >> 3));
      v7 = *((unsigned __int8 **)this + 5);
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::erase(
        (int)v2,
        &v7);
    }
    while ( *((_DWORD *)this + 7) );
  }
}


// ===== 8168c0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::erase(std::priv::_Rb_tree_iterator<std::pair<uint const,uint>,std::priv::_MapTraitsT<std::pair<uint const,uint>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::erase(
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


// ===== 8168fc CPacketManager::ProcessLostPackets(void) =====
void __fastcall CPacketManager::ProcessLostPackets(CPacketManager *this)
{
  int v1; // r5
  char *v2; // r11
  char *v3; // r6
  int v4; // r4
  unsigned int v5; // r8
  char *v6; // r3
  int v7; // r9
  CPacketManager *v8; // r8
  char *v9; // r1
  int v10; // r2
  bool v11; // cc
  char *v12; // r2
  int (__fastcall ***Online)(_DWORD); // r0
  char *v14; // r7
  int (__fastcall *v15)(CPacketManager *, int); // r3
  int v16; // r3
  int v17; // r2
  CPacketManager *v18; // [sp+0h] [bp-1Ch]
  unsigned __int8 *v19; // [sp+10h] [bp-Ch] BYREF
  unsigned __int8 *v20; // [sp+14h] [bp-8h] BYREF

  v18 = this;
  v1 = *((_DWORD *)this + 21);
  v2 = (char *)this + 76;
  v3 = (char *)this + 52;
  if ( (CPacketManager *)((char *)this + 76) != (CPacketManager *)v1 )
  {
    while ( 1 )
    {
      v4 = *(_DWORD *)(v1 + 12);
      if ( v4 )
      {
        while ( *(_DWORD *)(v4 + 8) )
          v4 = *(_DWORD *)(v4 + 8);
      }
      else
      {
        v16 = *(_DWORD *)(v1 + 4);
        if ( v1 == *(_DWORD *)(v16 + 12) )
        {
          do
          {
            v4 = v16;
            v16 = *(_DWORD *)(v16 + 4);
          }
          while ( *(_DWORD *)(v16 + 12) == v4 );
          v17 = *(_DWORD *)(v4 + 12);
        }
        else
        {
          v4 = v1;
          v17 = 0;
        }
        if ( v16 != v17 )
          v4 = v16;
      }
      v5 = *(_DWORD *)(v1 + 16);
      v6 = *((char **)v18 + 14);
      v7 = (unsigned __int16)v5;
      v8 = (CPacketManager *)HIWORD(v5);
      if ( !v6 )
        break;
      v9 = v3;
      while ( 1 )
      {
        v10 = *((_DWORD *)v6 + 4);
        v11 = (int)v8 <= v10;
        if ( (int)v8 <= v10 )
          v12 = *((char **)v6 + 2);
        else
          v12 = *((char **)v6 + 3);
        if ( !v11 )
          v6 = v9;
        v9 = v6;
        if ( !v12 )
          break;
        v6 = v12;
      }
      if ( v3 == v6 || (int)v8 < *((_DWORD *)v6 + 4) || v3 == v6 )
        break;
      Online = (int (__fastcall ***)(_DWORD))GetOnline(this);
      this = (CPacketManager *)(**Online)(Online);
      if ( (int)this - *(_DWORD *)(v1 + 20) > 1000 )
      {
        v14 = CPacketManager::s_PacketSlots;
        do
        {
          if ( *v14 )
          {
            v15 = *((int (__fastcall **)(CPacketManager *, int))v14 + 4);
            this = v8;
            if ( v15 )
              this = (CPacketManager *)v15(v8, v7);
          }
          v14 += 92;
        }
        while ( v14 != &CPacketManager::s_packetSlotBitMap );
        GetConnectionMgr(this);
        CConnectionManager::ReportStatistic();
        v19 = (unsigned __int8 *)v1;
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::erase(
          (int)v2,
          &v19);
      }
      v1 = v4;
      if ( v2 == (char *)v4 )
        return;
    }
    v20 = (unsigned __int8 *)v1;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::erase(
      (int)v2,
      &v20);
  }
}


// ===== 816ab8 CPacketManager::~CPacketManager() =====
void __fastcall CPacketManager::~CPacketManager(CPacketManager *this)
{
  CNetworkEmulation *v2; // r0
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_992538;
  v2 = (CNetworkEmulation *)CConnectionManager::UnregisterPacketType(6);
  CNetworkEmulation::Terminate(v2);
  *((_BYTE *)this + 4) = 0;
  CDataStats<int>::~CDataStats((int)this + 244);
  CDataStats<int>::~CDataStats((int)this + 208);
  CDataStats<int>::~CDataStats((int)this + 172);
  CDataStats<int>::~CDataStats((int)this + 136);
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
      (int)this + 112,
      *((_DWORD **)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  v3 = *((void **)this + 25);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 27) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  if ( *((_DWORD *)this + 23) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
      (int)this + 76,
      *((_DWORD **)this + 20));
    *((_DWORD *)this + 22) = (char *)this + 76;
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 21) = (char *)this + 76;
    *((_DWORD *)this + 20) = 0;
  }
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    *((_DWORD *)this + 16) = (char *)this + 52;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = (char *)this + 52;
    *((_DWORD *)this + 14) = 0;
  }
  std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear((void **)this + 9);
  if ( *((_DWORD *)this + 7) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::_M_erase(
      (int)this + 12,
      *((_DWORD **)this + 4));
    *((_DWORD *)this + 6) = (char *)this + 12;
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 5) = (char *)this + 12;
    *((_DWORD *)this + 4) = 0;
  }
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 2);
}


// ===== 816c24 std::list<NetBitStream,std::allocator<NetBitStream>>::erase(std::priv::_List_iterator<NetBitStream,std::_Nonconst_traits<NetBitStream>>) =====
_DWORD *__fastcall std::list<NetBitStream>::erase(_DWORD *a1, int a2, int **a3)
{
  int *v3; // r6
  int v5; // r4
  _DWORD *v6; // r3

  v3 = *a3;
  v5 = **a3;
  v6 = (_DWORD *)(*a3)[1];
  *v6 = v5;
  *(_DWORD *)(v5 + 4) = v6;
  (*(void (__fastcall **)(int *))v3[2])(v3 + 2);
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x28u);
  *a1 = v5;
  return a1;
}


// ===== 816c68 CPacketManager::GetNextPacket(void) =====
CPacketManager *__fastcall CPacketManager::GetNextPacket(CPacketManager *this, int a2)
{
  _DWORD v5[3]; // [sp+0h] [bp-14h] BYREF
  int *v6; // [sp+Ch] [bp-8h] BYREF

  NetBitStream::NetBitStream(this, (const NetBitStream *)(*(_DWORD *)(a2 + 36) + 8));
  v6 = *(int **)(a2 + 36);
  std::list<NetBitStream>::erase(v5, a2 + 36, &v6);
  return this;
}


// ===== 816ca8 CPacketManager::ProcessPacketAcknowledgements(CPacketManager::tPacketMgrHeader &) =====
void __fastcall CPacketManager::ProcessPacketAcknowledgements(_DWORD *a1, _DWORD *a2)
{
  unsigned int v2; // r5
  int v5; // r7
  int v6; // r8
  _DWORD *v7; // r3
  unsigned int v8; // r4
  _DWORD *v9; // r1
  unsigned int v10; // r2
  bool v11; // cc
  _DWORD *v12; // r2
  char *v13; // r10
  int v14; // r3
  int v15; // r1
  unsigned int v16; // r2
  bool v17; // cc
  int v18; // r2
  unsigned int v19; // r2
  unsigned int v20; // r3
  char *v21; // r0
  _BYTE *v22; // r1
  char *v23; // r3
  size_t v24; // r10
  char *v25; // r10
  _DWORD *v26; // r10
  void *v27; // r0
  size_t v28; // r1
  size_t v29; // r2
  char *v30; // r0
  char *v31; // [sp+4h] [bp-18h]
  char *v32; // [sp+4h] [bp-18h]
  int v33; // [sp+8h] [bp-14h]
  size_t v34; // [sp+10h] [bp-Ch] BYREF
  unsigned __int8 *v35; // [sp+14h] [bp-8h] BYREF

  v2 = a2[2];
  v5 = a2[1];
  if ( v2 )
  {
    v33 = (int)(a1 + 27);
    v6 = (int)(a1 + 19);
    while ( 1 )
    {
      if ( (v2 & 1) == 0 )
        goto LABEL_30;
      v7 = (_DWORD *)a1[20];
      v8 = v5 + (a2[4] << 16);
      if ( !v7 )
        goto LABEL_32;
      v9 = (_DWORD *)v6;
      while ( 1 )
      {
        v10 = v7[4];
        v11 = v8 > v10;
        if ( v8 <= v10 )
          v12 = (_DWORD *)v7[2];
        else
          v12 = (_DWORD *)v7[3];
        if ( v11 )
          v7 = v9;
        v9 = v7;
        if ( !v12 )
          break;
        v7 = v12;
      }
      if ( (_DWORD *)v6 != v7 )
        break;
LABEL_30:
      v2 >>= 1;
      if ( !v2 )
        return;
      v5 = (unsigned __int16)(v5 - 1);
    }
    if ( v8 < v7[4] )
LABEL_32:
      v7 = (_DWORD *)v6;
    if ( (_DWORD *)v6 != v7 )
    {
      v13 = (char *)a1[26];
      if ( v13 == (char *)a1[27] )
      {
        v19 = (int)&v13[-a1[25]] >> 2;
        if ( v19 )
          v20 = 2 * v19;
        else
          v20 = 1;
        if ( v20 > 0x3FFFFFFF || v19 > v20 )
          v20 = 0x3FFFFFFF;
        v34 = v20;
        v21 = (char *)std::allocator<unsigned int>::_M_allocate(v33, v20, &v34);
        v22 = (_BYTE *)a1[25];
        v23 = v21;
        v24 = v13 - v22;
        if ( v24 )
        {
          v32 = v21;
          v30 = (char *)memmove(v21, v22, v24);
          v23 = v32;
          v25 = &v30[v24];
        }
        else
        {
          v25 = v21;
        }
        *(_DWORD *)v25 = v8;
        v26 = v25 + 4;
        v27 = (void *)a1[25];
        if ( v27 )
        {
          v28 = (a1[27] - (_DWORD)v27) & 0xFFFFFFFC;
          v31 = v23;
          if ( v28 > 0x80 )
            CustomFree(v27);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v27, v28);
          v23 = v31;
        }
        v29 = v34;
        a1[25] = v23;
        a1[26] = v26;
        a1[27] = &v23[4 * v29];
      }
      else
      {
        *(_DWORD *)v13 = v8;
        a1[26] += 4;
      }
      v14 = a1[20];
      if ( v14 )
      {
        v15 = v6;
        while ( 1 )
        {
          v16 = *(_DWORD *)(v14 + 16);
          v17 = v8 > v16;
          if ( v8 <= v16 )
            v18 = *(_DWORD *)(v14 + 8);
          else
            v18 = *(_DWORD *)(v14 + 12);
          if ( v17 )
            v14 = v15;
          v15 = v14;
          if ( !v18 )
            break;
          v14 = v18;
        }
        if ( v6 != v14 && v8 >= *(_DWORD *)(v14 + 16) )
        {
          v35 = (unsigned __int8 *)v14;
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::erase(
            v6,
            &v35);
        }
      }
    }
    goto LABEL_30;
  }
}


// ===== 816eac CPacketManager::ReceivePackets(void) =====
int __fastcall CPacketManager::ReceivePackets(pthread_mutex_t *this)
{
  CConnectionManager *Header; // r0
  _DWORD *v3; // r0
  int *v4; // r7
  pthread_mutex_t *mutex; // [sp+4h] [bp-40h]
  _BYTE v7[12]; // [sp+8h] [bp-3Ch] BYREF
  unsigned int v8[4]; // [sp+28h] [bp-1Ch] BYREF
  int v9; // [sp+38h] [bp-Ch] BYREF
  char v10; // [sp+3Ch] [bp-8h]

  mutex = this + 2;
  CNetMutex::Lock(this + 2);
  if ( !CPacketManager::ArePacketsAvailable((CPacketManager *)this) )
    return CNetMutex::Unlock(mutex);
  while ( 1 )
  {
    CPacketManager::GetNextPacket((CPacketManager *)v7, (int)this);
    Header = CPacketManager::ReadHeader((CPacketManager *)v8, (NetBitStream *)this, (NetBitStream *)v7);
    GetConnectionMgr(Header);
    CConnectionManager::ReportStatistic();
    v3 = std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>((_DWORD *)this + 13, &v9);
    *((_BYTE *)v3 + 12) = v10;
    if ( CPacketManager::IsPacketValid((CMatching *)this, v8) )
      break;
LABEL_10:
    NetBitStream::~NetBitStream((NetBitStream *)v7);
    if ( !CPacketManager::ArePacketsAvailable((CPacketManager *)this) )
      return CNetMutex::Unlock(mutex);
  }
  CPacketManager::ProcessPacketAcknowledgements(this, v8);
  v4 = (int *)&CPacketManager::s_PacketSlots[8];
  while ( 1 )
  {
    while ( !NetBitStream::ReadByte((NetBitStream *)v7, 1u) )
    {
      v4 += 23;
      if ( v4 == &CTransportManager::s_transportManager )
        goto LABEL_9;
    }
    NetBitStream::ReadU32((NetBitStream *)v7, 0x20u);
    if ( !*((_BYTE *)v4 - 8) || !*v4 )
      break;
    ((void (__fastcall *)(int, unsigned int, _BYTE *))*v4)(v9, v8[0], v7);
    v4 += 23;
    NetBitStream::ReadU32((NetBitStream *)v7, 0x10u);
    if ( v4 == &CTransportManager::s_transportManager )
    {
LABEL_9:
      CPacketManager::AcknowledgePacket(this, v8);
      goto LABEL_10;
    }
  }
  NetBitStream::~NetBitStream((NetBitStream *)v7);
  return CNetMutex::Unlock(mutex);
}


// ===== 81704c CPacketManager::~CPacketManager() =====
void __fastcall CPacketManager::~CPacketManager(CPacketManager *this)
{
  CNetworkEmulation *v2; // r0
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_992538;
  v2 = (CNetworkEmulation *)CConnectionManager::UnregisterPacketType(6);
  CNetworkEmulation::Terminate(v2);
  *((_BYTE *)this + 4) = 0;
  CDataStats<int>::~CDataStats((int)this + 244);
  CDataStats<int>::~CDataStats((int)this + 208);
  CDataStats<int>::~CDataStats((int)this + 172);
  CDataStats<int>::~CDataStats((int)this + 136);
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
      (int)this + 112,
      *((_DWORD **)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  v3 = *((void **)this + 25);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 27) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  if ( *((_DWORD *)this + 23) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_erase(
      (int)this + 76,
      *((_DWORD **)this + 20));
    *((_DWORD *)this + 22) = (char *)this + 76;
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 21) = (char *)this + 76;
    *((_DWORD *)this + 20) = 0;
  }
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    *((_DWORD *)this + 16) = (char *)this + 52;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = (char *)this + 52;
    *((_DWORD *)this + 14) = 0;
  }
  std::priv::_List_base<NetBitStream,std::allocator<NetBitStream>>::clear((void **)this + 9);
  if ( *((_DWORD *)this + 7) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,CPacketManager::tSendPacket>,std::priv::_Select1st<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::priv::_MultimapTraitsT<std::pair<unsigned int const,CPacketManager::tSendPacket>>,std::allocator<std::pair<unsigned int const,CPacketManager::tSendPacket>>>::_M_erase(
      (int)this + 12,
      *((_DWORD **)this + 4));
    *((_DWORD *)this + 6) = (char *)this + 12;
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 5) = (char *)this + 12;
    *((_DWORD *)this + 4) = 0;
  }
  CNetMutex::~CNetMutex((pthread_mutex_t *)this + 2);
}


// ===== 8171b8 CPacketManager::~CPacketManager() =====
void __fastcall CPacketManager::~CPacketManager(CPacketManager *this)
{
  CPacketManager::~CPacketManager(this);
  CustomFree(this);
}


// ===== 8171d4 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,uint>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 8171f4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,uint> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,unsigned int>>>::allocate();
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


// ===== 817318 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::insert_unique(std::pair<uint const,uint> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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


// ===== 8174a0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,uint>,std::priv::_Select1st<std::pair<uint const,uint>>,std::priv::_MapTraitsT<std::pair<uint const,uint>>,std::allocator<std::pair<uint const,uint>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,uint>,std::priv::_MapTraitsT<std::pair<uint const,uint>>>,std::pair<uint const,uint> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 817814 CPacketManager::SendPacket(int) =====
unsigned int __fastcall CPacketManager::SendPacket(CPacketManager *this, int a2)
{
  CConnectionManager *ConnectionMgr; // r0
  unsigned int result; // r0
  unsigned int v5; // r6
  COnline *v6; // r0
  int (__fastcall ***Online)(_DWORD); // r0
  int v8; // r10
  CConnectionManager *inserted; // r0
  char *v10; // r12
  char *v11; // r1
  unsigned int v12; // r6
  char *v13; // r2
  unsigned int v14; // r3
  bool v15; // cc
  char *v16; // r3
  char *v17; // r3
  CConnectionManager *v18; // r0
  int v19; // r3
  CConnectionManager *v20; // r0
  int v21; // r3
  int v22; // [sp+Ch] [bp-3Ch] BYREF
  int v23; // [sp+14h] [bp-34h]
  int v24; // [sp+18h] [bp-30h] BYREF
  int v25; // [sp+1Ch] [bp-2Ch]
  unsigned int v26; // [sp+28h] [bp-20h]
  unsigned int v27[2]; // [sp+38h] [bp-10h] BYREF
  char *v28; // [sp+40h] [bp-8h] BYREF
  char *v29; // [sp+44h] [bp-4h] BYREF

  v22 = a2;
  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  result = CConnectionManager::IsConnected(ConnectionMgr, v22);
  if ( result )
  {
    NetBitStream::NetBitStream((NetBitStream *)&v24, 0xFF8u);
    v23 = v22;
    v5 = CPacketManager::PreparePacketHeader(this, v22, (NetBitStream *)&v24);
    v6 = (COnline *)CPacketManager::PreparePacketData(this, v22, v5, (NetBitStream *)&v24);
    Online = (int (__fastcall ***)(_DWORD))GetOnline(v6);
    v8 = (**Online)(Online);
    inserted = (CConnectionManager *)std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>(
                                       (_DWORD *)this + 13,
                                       &v22);
    *(_DWORD *)inserted = v5;
    v10 = *((char **)this + 20);
    v11 = (char *)this + 76;
    v12 = v5 + (v22 << 16);
    if ( v10 )
    {
      v13 = (char *)this + 76;
      while ( 1 )
      {
        v14 = *((_DWORD *)v10 + 4);
        v15 = v12 > v14;
        if ( v12 <= v14 )
          v16 = *((char **)v10 + 2);
        else
          v16 = *((char **)v10 + 3);
        if ( v15 )
          v10 = v13;
        v13 = v10;
        if ( !v16 )
          break;
        v10 = v16;
      }
    }
    else
    {
      v10 = (char *)this + 76;
    }
    if ( v11 == v10 || (v17 = v10, v12 < *((_DWORD *)v10 + 4)) )
    {
      v27[0] = v12;
      v27[1] = 0;
      v29 = v10;
      inserted = (CConnectionManager *)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,unsigned int>,std::priv::_Select1st<std::pair<unsigned int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,unsigned int>>,std::allocator<std::pair<unsigned int const,unsigned int>>>::insert_unique(
                                         &v28,
                                         v11,
                                         (_DWORD **)&v29,
                                         v27);
      v17 = v28;
    }
    *((_DWORD *)v17 + 5) = v8;
    GetConnectionMgr(inserted);
    CConnectionManager::ReportStatistic();
    v19 = v26 & 7;
    if ( (v26 & 7) != 0 )
      v19 = 1;
    if ( v19 + (v26 >> 3) <= 0x578 )
    {
      v20 = (CConnectionManager *)GetConnectionMgr(v18);
      v21 = v26 & 7;
      if ( (v26 & 7) != 0 )
        v21 = 1;
      CConnectionManager::SendTo(v20, 6, v23, v25, v21 + (v26 >> 3));
    }
    NetBitStream::~NetBitStream((NetBitStream *)&v24);
    return 1;
  }
  return result;
}


// ===== 8179d0 CPacketManager::SendPackets(void) =====
int __fastcall CPacketManager::SendPackets(CPacketManager *this)
{
  COnline *v3; // r0
  CConnectionManager *Online; // r0
  int v5; // r5
  int ConnectionMgr; // r0
  _DWORD *v7; // r3
  int v8; // r8
  char *v9; // r7
  int v10; // r6
  char v11; // r0
  char *v12; // r3
  char *v13; // r1
  int v14; // r2
  bool v15; // cc
  char *v16; // r2
  int v17; // r3
  int v18; // r12
  int v19; // r6
  int v20; // r2
  size_t v21; // r1
  int v22; // r2
  int v23; // r1
  void *__p; // [sp+4h] [bp-14h] BYREF
  int v25; // [sp+8h] [bp-10h]
  int v26; // [sp+Ch] [bp-Ch]
  unsigned __int8 *v27; // [sp+10h] [bp-8h] BYREF
  int v28; // [sp+14h] [bp-4h] BYREF

  if ( !*((_BYTE *)this + 4) )
    return -1;
  CPacketManager::ProcessAcknowledgedPackets(this);
  CPacketManager::ProcessLostPackets(this);
  Online = (CConnectionManager *)GetOnline(v3);
  v5 = *((_DWORD *)Online + 7);
  if ( *((_BYTE *)this + 48) || (unsigned int)(v5 - *((_DWORD *)this + 11)) > 0x32 )
  {
    ConnectionMgr = GetConnectionMgr(Online);
    CConnectionManager::GetConnMemberIdList((CConnectionManager *)&__p, ConnectionMgr, 0);
    v7 = __p;
    if ( !((v25 - (int)__p) >> 2) )
    {
      v8 = 0;
      v9 = (char *)this + 52;
LABEL_23:
      v17 = *((_DWORD *)this + 15);
      v18 = (unsigned __int8)CPacketManager::SendPackets(void)::validFlag;
      if ( v9 != (char *)v17 )
      {
        do
        {
          v19 = *(_DWORD *)(v17 + 12);
          if ( v19 )
          {
            while ( *(_DWORD *)(v19 + 8) )
              v19 = *(_DWORD *)(v19 + 8);
          }
          else
          {
            v22 = *(_DWORD *)(v17 + 4);
            if ( v17 == *(_DWORD *)(v22 + 12) )
            {
              do
              {
                v19 = v22;
                v22 = *(_DWORD *)(v22 + 4);
              }
              while ( *(_DWORD *)(v22 + 12) == v19 );
              v23 = *(_DWORD *)(v19 + 12);
            }
            else
            {
              v19 = v17;
              v23 = 0;
            }
            if ( v22 != v23 )
              v19 = v22;
          }
          v20 = *(unsigned __int8 *)(v17 + 33);
          if ( v20 != v18 )
          {
            v27 = (unsigned __int8 *)v17;
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CPacketManager::tPacketMemberInfo>,std::priv::_Select1st<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::priv::_MapTraitsT<std::pair<int const,CPacketManager::tPacketMemberInfo>>,std::allocator<std::pair<int const,CPacketManager::tPacketMemberInfo>>>::erase(
              (int)v9,
              &v27);
            v20 = (unsigned __int8)CPacketManager::SendPackets(void)::validFlag;
          }
          v17 = v19;
          v18 = v20;
        }
        while ( v9 != (char *)v19 );
      }
      CPacketManager::SendPackets(void)::validFlag = v18 ^ 1;
      if ( __p )
      {
        v21 = (v26 - (_DWORD)__p) & 0xFFFFFFFC;
        if ( v21 > 0x80 )
          CustomFree(__p);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p, v21);
      }
      *((_BYTE *)this + 48) = 0;
      if ( v8 )
        *((_DWORD *)this + 11) = v5;
      goto LABEL_36;
    }
    LOBYTE(v8) = 0;
    v9 = (char *)this + 52;
    v10 = 0;
    while ( 1 )
    {
      v28 = v7[v10];
      v11 = CPacketManager::SendPacket(this, v28);
      v12 = *((char **)this + 14);
      v8 = (unsigned __int8)(v11 | v8);
      if ( !v12 )
        goto LABEL_37;
      v13 = (char *)this + 52;
      while ( 1 )
      {
        v14 = *((_DWORD *)v12 + 4);
        v15 = v14 < v28;
        if ( v14 >= v28 )
          v16 = *((char **)v12 + 2);
        else
          v16 = *((char **)v12 + 3);
        if ( v15 )
          v12 = v13;
        v13 = v12;
        if ( !v16 )
          break;
        v12 = v16;
      }
      if ( v9 == v12 )
        goto LABEL_22;
      if ( *((_DWORD *)v12 + 4) > v28 )
LABEL_37:
        v12 = (char *)this + 52;
      if ( v9 != v12 )
        *((_BYTE *)std::map<int,CPacketManager::tPacketMemberInfo>::operator[]<int>((_DWORD *)this + 13, &v28) + 13) = CPacketManager::SendPackets(void)::validFlag;
LABEL_22:
      v7 = __p;
      if ( ++v10 >= (unsigned int)((v25 - (int)__p) >> 2) )
        goto LABEL_23;
    }
  }
  *((_BYTE *)this + 48) = 0;
LABEL_36:
  CPacketManager::SendWaitingPackets(this);
  CPacketManager::PrintStatistics(this);
  return 0;
}


// ===== 817c3c std::list<NetBitStream,std::allocator<NetBitStream>>::insert(std::priv::_List_iterator<NetBitStream,std::_Nonconst_traits<NetBitStream>>,NetBitStream const&) =====
_DWORD *__fastcall std::list<NetBitStream>::insert(_DWORD *a1, int a2, int *a3, const NetBitStream *a4)
{
  _DWORD *v7; // r6
  int v8; // r3
  _DWORD *v10; // r2
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v11 = 40;
  v7 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v11);
  NetBitStream::NetBitStream((NetBitStream *)(v7 + 2), a4);
  v8 = *a3;
  v10 = *(_DWORD **)(*a3 + 4);
  *v7 = *a3;
  v7[1] = v10;
  *v10 = v7;
  *(_DWORD *)(v8 + 4) = v7;
  *a1 = v7;
  return a1;
}


// ===== 817c9c CPacketManager::PacketReceiverCallback(int,char *,int) =====
int __fastcall CPacketManager::PacketReceiverCallback(pthread_mutex_t *this, int a2, char *a3, int a4)
{
  pthread_mutex_t *v4; // r5
  size_t v8; // r1
  _DWORD v10[3]; // [sp+0h] [bp-30h] BYREF
  void *v11[8]; // [sp+Ch] [bp-24h] BYREF
  pthread_mutex_t *v12; // [sp+2Ch] [bp-4h] BYREF

  v4 = this + 2;
  CNetMutex::Lock(this + 2);
  v8 = 4088;
  if ( a4 >= 4088 )
    v8 = a4;
  NetBitStream::NetBitStream((NetBitStream *)v11, v8);
  NetBitStream::SetBuffer(v11, a3, a4);
  v12 = this + 9;
  std::list<NetBitStream>::insert(v10, (int)(this + 9), (int *)&v12, (const NetBitStream *)v11);
  NetBitStream::~NetBitStream((NetBitStream *)v11);
  return CNetMutex::Unlock(v4);
}


// ===== 817d1c CPacketManager::sPacketReceiverCallback(int,char *,int) =====
unsigned int __fastcall CPacketManager::sPacketReceiverCallback(CPacketManager *this, char *a2, char *a3, int a4)
{
  CConnectionManager *ConnectionMgr; // r0
  unsigned int result; // r0

  ConnectionMgr = (CConnectionManager *)GetConnectionMgr(this);
  result = CConnectionManager::IsConnected(ConnectionMgr, (int)this);
  if ( result )
    return CPacketManager::PacketReceiverCallback(
             (pthread_mutex_t *)CPacketManager::s_packetManager,
             (int)this,
             a2,
             (int)a3);
  return result;
}


// ===== 817d74 NetStructUInt<5u>::~NetStructUInt() =====
void NetStructUInt<5u>::~NetStructUInt()
{
  ;
}


// ===== 817d78 CRoomAttributes::Reload(void) =====
void __fastcall CRoomAttributes::Reload(CRoomAttributes *this)
{
  ;
}


// ===== 817d7c CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_INT) =====
bool __fastcall CRoomAttributes::IsAttibuteActive(int a1, char a2)
{
  return (*(_DWORD *)(a1 + 864) & (1 << a2)) != 0;
}


// ===== 817d94 CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_BIN) =====
bool __fastcall CRoomAttributes::IsAttibuteActive(int a1, char a2)
{
  return (*(_DWORD *)(a1 + 904) & (1 << a2)) != 0;
}


// ===== 817dac CRoomAttributes::GetAttributeInt(tROOM_ATTRIBUTES_INT) =====
int __fastcall CRoomAttributes::GetAttributeInt(int a1, int a2)
{
  return *(_DWORD *)(a1 + 40 * a2 + 344);
}


// ===== 817dbc CRoomAttributes::GetAttributeBin(tROOM_ATTRIBUTES_BIN,void *,uint) =====
int __fastcall CRoomAttributes::GetAttributeBin(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5

  v4 = a1 + 40 * a2 + 632;
  v5 = a1 + 40 * a2;
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)(v5 + 632) + 44))(v4, a3, a4);
  return (*(int (__fastcall **)(int))(*(_DWORD *)(v5 + 632) + 52))(v4);
}


// ===== 817e00 CRoomAttributes::GetMaxBufferSize(tROOM_ATTRIBUTES_BIN) =====
int __fastcall CRoomAttributes::GetMaxBufferSize(int a1, unsigned int a2)
{
  if ( a2 <= 4 )
    return CSWTCH_280[a2];
  else
    return 0;
}


// ===== 817e20 NetStructByteArray<256u>::GetBufferSize(void) =====
int __fastcall NetStructByteArray<256u>::GetBufferSize(int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 817e28 NetStructUInt<5u>::TestValue(uint const&) =====
bool __fastcall NetStructUInt<5u>::TestValue(int a1, _DWORD *a2)
{
  return *a2 <= 0x1Fu;
}


// ===== 817e3c NetStructByteArray<256u>::GetBufferPtr(void) =====
int __fastcall NetStructByteArray<256u>::GetBufferPtr(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 817e44 NetStructByteArray<256u>::GetMaxBufferSize(void) =====
int NetStructByteArray<256u>::GetMaxBufferSize()
{
  return 256;
}


// ===== 817e4c CRoomAttributes::Resend(void) =====
int __fastcall CRoomAttributes::Resend(CRoomAttributes *this)
{
  return NetStruct::Resend((CRoomAttributes *)((char *)this + 8));
}


// ===== 817e54 CRoomAttributes::AreChangesAcknowledged(void) =====
int __fastcall CRoomAttributes::AreChangesAcknowledged(CRoomAttributes *this)
{
  return NetStruct::AreChangesAcknowledged((CRoomAttributes *)((char *)this + 8));
}

