// ===== 827b5c CSocket::CSocket(void) =====
void __fastcall CSocket::CSocket(CSocket *this)
{
  *(_DWORD *)this = &off_992BF0;
  *((_WORD *)this + 8) = 0;
  *((_DWORD *)this + 1) = -1;
  *((_BYTE *)this + 9) = 1;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_BYTE *)this + 11) = 0;
  *((_DWORD *)this + 3) = 0;
}


// ===== 827bb0 CSocket::CSocket(void) =====
void __fastcall CSocket::CSocket(CSocket *this)
{
  *(_DWORD *)this = &off_992BF0;
  *((_WORD *)this + 8) = 0;
  *((_DWORD *)this + 1) = -1;
  *((_BYTE *)this + 9) = 1;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_BYTE *)this + 11) = 0;
  *((_DWORD *)this + 3) = 0;
}


// ===== 827c04 CSocket::IsConnected(void) =====
bool __fastcall CSocket::IsConnected(CSocket *this)
{
  int v2; // r0
  fd_set v4; // [sp+8h] [bp+0h] BYREF
  fd_set v5; // [sp+88h] [bp+80h] BYREF
  struct timeval timeout; // [sp+108h] [bp+100h] BYREF

  timeout.tv_sec = 0;
  timeout.tv_usec = 0;
  LC_API_MEMSET_0(&v4, 0, 0x80u);
  v4.fds_bits[*((int *)this + 1) >> 5] |= 1 << (*((_DWORD *)this + 1) & 0x1F);
  LC_API_MEMSET_0(&v5, 0, 0x80u);
  v2 = *((_DWORD *)this + 1);
  v5.fds_bits[v2 >> 5] |= 1 << (v2 & 0x1F);
  return select(v2 + 1, &v5, &v4, nullptr, &timeout) > 0
      && (v4.fds_bits[*((int *)this + 1) >> 5] & (1 << (*((_DWORD *)this + 1) & 0x1F))) != 0;
}


// ===== 827cdc CSocket::DataAvailable(int) =====
bool __fastcall CSocket::DataAvailable(CSocket *this, int a2)
{
  int v4; // r0
  fd_set v6; // [sp+8h] [bp+0h] BYREF
  struct timeval timeout; // [sp+88h] [bp+80h] BYREF

  LC_API_MEMSET_0(&v6, 0, 0x80u);
  v4 = *((_DWORD *)this + 1);
  v6.fds_bits[v4 >> 5] |= 1 << (v4 & 0x1F);
  timeout.tv_usec = a2 % 1000000;
  timeout.tv_sec = a2 / 1000000;
  return select(v4 + 1, &v6, nullptr, nullptr, &timeout) > 0
      && (v6.fds_bits[*((int *)this + 1) >> 5] & (1 << (*((_DWORD *)this + 1) & 0x1F))) != 0;
}


// ===== 827da0 CSocket::GetLocalAddress(void) =====
in_addr_t __fastcall CSocket::GetLocalAddress(CSocket *this)
{
  int v1; // r0
  int v2; // r8
  _BYTE *v3; // r4
  char *v4; // r6
  char *v6; // r0
  _DWORD v7[2]; // [sp+4h] [bp-FB0h] BYREF
  _BYTE v8[4]; // [sp+Ch] [bp-FA8h] BYREF

  v7[0] = 4000;
  v7[1] = v8;
  v1 = socket(2, 2, 0);
  v2 = v1;
  if ( v1 == -1 || ioctl(v1, 0x8912u, v7) < 0 )
    return 0;
  v3 = v8;
  if ( v8 >= &v8[v7[0]] )
    return close(v2);
  while ( 1 )
  {
    v4 = inet_ntoa(*(struct in_addr *)(v3 + 20));
    if ( *((_WORD *)v3 + 8) == 2 )
    {
      v6 = strchr(v3, 58);
      if ( v6 )
        *v6 = 0;
      ioctl(v2, 0x8913u, v3);
      if ( (*((_WORD *)v3 + 8) & 1) != 0 )
      {
        if ( LC_API_STRCMP_0(v4, "127.0.0.1") )
          break;
      }
    }
    v3 += 32;
    if ( v3 >= &v8[v7[0]] )
      return close(v2);
  }
  return inet_addr(v4);
}


// ===== 827ee0 CSocket::Close(void) =====
int __fastcall CSocket::Close(CSocket *this)
{
  int v2; // r0
  int v3; // r5

  v2 = *((_DWORD *)this + 1);
  v3 = 0;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 11) = 0;
  if ( v2 >= 0 && (v3 = close(v2), v3 < 0) )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
    *((_DWORD *)this + 1) = -1;
    return v3;
  }
  else
  {
    *((_DWORD *)this + 1) = -1;
    return v3;
  }
}


// ===== 827f3c CSocket::~CSocket() =====
void __fastcall CSocket::~CSocket(CSocket *this)
{
  *(_DWORD *)this = &off_992BF0;
  CSocket::Close(this);
}


// ===== 827f70 CSocket::~CSocket() =====
void __fastcall CSocket::~CSocket(CSocket *this)
{
  *(_DWORD *)this = &off_992BF0;
  CSocket::Close(this);
}


// ===== 827fa4 CSocket::GetLocalPort(void) =====
int __fastcall CSocket::GetLocalPort(CSocket *this)
{
  int v2; // r0
  socklen_t v4; // [sp+0h] [bp-18h] BYREF
  struct sockaddr v5; // [sp+4h] [bp-14h] BYREF

  v2 = *((_DWORD *)this + 1);
  v4 = 16;
  if ( getsockname(v2, &v5, &v4) >= 0 )
    return (unsigned __int16)(unsigned __int8)v5.sa_data[1] | (unsigned __int16)(*(_WORD *)v5.sa_data << 8);
  (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  return 0;
}


// ===== 828038 CSocket::WouldBlock(void) =====
bool __fastcall CSocket::WouldBlock(CSocket *this)
{
  return *(_DWORD *)_errno() == 11;
}


// ===== 828054 CSocket::GetSocketError(void) =====
int __fastcall CSocket::GetSocketError(CSocket *this)
{
  return *(_DWORD *)_errno();
}


// ===== 828064 CSocket::GetPeerAddress(void) =====
int __fastcall CSocket::GetPeerAddress(struct in_addr *this)
{
  int v2; // r0
  int v3; // r7
  int *v5; // r0
  socklen_t v6; // [sp+0h] [bp-11Ch] BYREF
  char buf[256]; // [sp+4h] [bp-118h] BYREF
  struct sockaddr v8; // [sp+104h] [bp-18h] BYREF

  v2 = *((_DWORD *)this + 1);
  v6 = 16;
  if ( getpeername(v2, &v8, &v6) >= 0 )
    return *(_DWORD *)&v8.sa_data[2];
  v5 = (int *)_errno();
  strerror_r(*v5, buf, 0x100u);
  v3 = *((_DWORD *)this + 3);
  (*(void (__fastcall **)(struct in_addr *))(this->s_addr + 4))(this);
  inet_ntoa(*(this + 3));
  return v3;
}


// ===== 82810c CSocket::GetPeerPort(void) =====
int __fastcall CSocket::GetPeerPort(CSocket *this)
{
  int v2; // r0
  int *v4; // r0
  socklen_t v5; // [sp+0h] [bp-118h] BYREF
  char buf[252]; // [sp+4h] [bp-114h] BYREF
  struct sockaddr v7; // [sp+104h] [bp-14h] BYREF

  v2 = *((_DWORD *)this + 1);
  v5 = 16;
  if ( getpeername(v2, &v7, &v5) >= 0 )
    return (unsigned __int16)(unsigned __int8)v7.sa_data[1] | (unsigned __int16)(*(_WORD *)v7.sa_data << 8);
  v4 = (int *)_errno();
  strerror_r(*v4, buf, 0x100u);
  return *((unsigned __int16 *)this + 8);
}


// ===== 8281a8 CSocket::ReceiveFrom(in_addr &,ushort &,char *,int) =====
int __fastcall CSocket::ReceiveFrom(CSocket *this, in_addr *a2, unsigned __int16 *a3, char *a4, size_t a5)
{
  ssize_t v8; // r9
  int v10; // r0
  ssize_t v11; // r0
  unsigned __int16 v12; // r3
  socklen_t v13; // [sp+8h] [bp-18h] BYREF
  struct sockaddr v14; // [sp+Ch] [bp-14h] BYREF

  if ( !*((_BYTE *)this + 8) )
    return -1;
  a2->s_addr = 0;
  *a3 = 0;
  v10 = *((_DWORD *)this + 1);
  v13 = 16;
  v11 = recvfrom(v10, a4, a5, 0, &v14, &v13);
  v8 = v11;
  if ( v11 < 0 )
  {
    if ( (*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 8))(this) )
      return 0;
    else
      (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  }
  else
  {
    if ( v11 )
    {
      v12 = (unsigned __int8)v14.sa_data[1] | (unsigned __int16)(*(_WORD *)v14.sa_data << 8);
      a2->s_addr = *(__u32 *)&v14.sa_data[2];
    }
    else
    {
      a2->s_addr = 0;
      v12 = 0;
    }
    *a3 = v12;
  }
  return v8;
}


// ===== 8282ac CSocket::Receive(char *,int) =====
int __fastcall CSocket::Receive(CSocket *this, char *a2, size_t a3)
{
  ssize_t v5; // r5
  ssize_t v7; // r0

  if ( !*((_BYTE *)this + 8) || !(*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 20))(this) )
    return -1;
  *((_BYTE *)this + 10) = 1;
  if ( !CSocket::DataAvailable(this, 0) )
  {
    v5 = 0;
LABEL_8:
    ++printed;
    return v5;
  }
  v7 = recv(*((_DWORD *)this + 1), a2, a3, 0);
  v5 = v7;
  if ( v7 >= 0 )
    goto LABEL_8;
  if ( (*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 8))(this) )
    return 0;
  (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  return v5;
}


// ===== 828380 CSocket::SendTo(in_addr const&,ushort,void *,int) =====
int __fastcall CSocket::SendTo(CSocket *this, const in_addr *a2, unsigned int a3, void *a4, size_t a5)
{
  ssize_t v6; // r7
  __u32 s_addr; // r10
  int v9; // r0
  ssize_t v10; // r0
  struct sockaddr v11; // [sp+Ch] [bp-18h] BYREF

  if ( !*((_BYTE *)this + 8) )
    return -1;
  s_addr = a2->s_addr;
  v9 = *((_DWORD *)this + 1);
  *(_DWORD *)&v11.sa_data[6] = 0;
  *(_DWORD *)&v11.sa_data[10] = 0;
  *(_WORD *)v11.sa_data = (a3 >> 8) | ((_WORD)a3 << 8);
  *(_DWORD *)&v11.sa_data[2] = s_addr;
  v11.sa_family = 2;
  v10 = sendto(v9, a4, a5, 0, &v11, 16);
  v6 = v10;
  if ( v10 < 0 )
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  return v6;
}


// ===== 82844c CSocket::Send(void *,int) =====
int __fastcall CSocket::Send(CSocket *this, void *a2, size_t a3)
{
  ssize_t v4; // r5

  if ( !*((_BYTE *)this + 8) || !(*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 20))(this) )
    return -1;
  *((_BYTE *)this + 10) = 1;
  v4 = send(*((_DWORD *)this + 1), a2, a3, 0);
  if ( v4 < 0 )
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  return v4;
}


// ===== 8284c8 CSocket::SetSocketOptions(uint) =====
int __fastcall CSocket::SetSocketOptions(CSocket *this, char a2)
{
  int v3; // r8
  int *v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // [sp+8h] [bp-108h] BYREF
  char buf[256]; // [sp+Ch] [bp-104h] BYREF

  v3 = a2 & 2;
  v9 = 1;
  if ( (a2 & 2) != 0 && (v3 = setsockopt(*((_DWORD *)this + 1), 1, 2, &v9, 4), v3 < 0) )
  {
    v6 = (int *)_errno();
    strerror_r(*v6, buf, 0x100u);
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  }
  else if ( (a2 & 1) != 0 && (v7 = *((_DWORD *)this + 1), v9 = 1, v3 = setsockopt(v7, 1, 6, &v9, 4), v3 < 0)
         || (a2 & 4) != 0 && (v8 = *((_DWORD *)this + 1), v9 = 1, v3 = setsockopt(v8, 6, 1, &v9, 4), v3 < 0) )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  }
  return v3;
}


// ===== 8285ec CSocket::Accept(in_addr &,ushort &) =====
int __fastcall CSocket::Accept(CSocket *this, in_addr *a2, unsigned __int16 *a3)
{
  int v6; // r7
  int v8; // r0
  int v9; // r0
  int *v10; // r0
  socklen_t v11; // [sp+0h] [bp-11Ch] BYREF
  char buf[252]; // [sp+4h] [bp-118h] BYREF
  struct sockaddr v13; // [sp+104h] [bp-18h] BYREF

  v6 = CSocket::DataAvailable(this, 0);
  if ( v6 )
  {
    v8 = *((_DWORD *)this + 1);
    v11 = 16;
    v6 = accept(v8, &v13, &v11);
    if ( v6 < 0 )
    {
      v10 = (int *)_errno();
      strerror_r(*v10, buf, 0x100u);
      inet_ntoa(*(struct in_addr *)&v13.sa_data[2]);
    }
    else
    {
      v9 = fcntl(*((_DWORD *)this + 1), 3, 0);
      fcntl(*((_DWORD *)this + 1), 4, v9 | 0x800);
      inet_ntoa(*(struct in_addr *)&v13.sa_data[2]);
      a2->s_addr = *(__u32 *)&v13.sa_data[2];
      *a3 = *(_WORD *)v13.sa_data;
      *((in_addr *)this + 3) = (in_addr)a2->s_addr;
      *((_WORD *)this + 8) = *a3;
    }
  }
  return v6;
}


// ===== 8286e4 CSocket::Listen(void) =====
int __fastcall CSocket::Listen(CSocket *this)
{
  if ( *((_BYTE *)this + 11) )
    return 0;
  if ( listen(*((_DWORD *)this + 1), 10) )
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
  *((_BYTE *)this + 11) = 1;
  return 0;
}


// ===== 828738 CSocket::Connect(in_addr const&,ushort) =====
int __fastcall CSocket::Connect(CSocket *this, const in_addr *a2, unsigned int a3)
{
  int *v5; // r0
  char buf[252]; // [sp+4h] [bp-118h] BYREF
  struct sockaddr v7; // [sp+104h] [bp-18h] BYREF

  *(_DWORD *)&v7.sa_data[6] = 0;
  *(_DWORD *)&v7.sa_data[10] = 0;
  *(_WORD *)v7.sa_data = (a3 >> 8) | ((_WORD)a3 << 8);
  v7.sa_family = 2;
  *(in_addr *)&v7.sa_data[2] = (in_addr)a2->s_addr;
  inet_ntoa(*(struct in_addr *)&v7.sa_data[2]);
  if ( connect(*((_DWORD *)this + 1), &v7, 16) >= 0
    || (*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 8))(this)
    || (*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this) == 106 )
  {
    return 0;
  }
  if ( (*(int (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this) == 115 )
  {
    *((_BYTE *)this + 10) = 1;
    return 1;
  }
  else
  {
    v5 = (int *)_errno();
    strerror_r(*v5, buf, 0x100u);
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 32))(this);
    return -1;
  }
}


// ===== 828868 CSocket::OpenTCP(ushort,uint) =====
int __fastcall CSocket::OpenTCP(CSocket *this, unsigned int a2, unsigned int a3)
{
  int v6; // r8
  int v8; // r0
  int v9; // r0
  int v10; // r0
  struct sockaddr v11; // [sp+4h] [bp-14h] BYREF

  if ( !*((_BYTE *)this + 9) )
    return -1;
  v8 = socket(2, 1, 6);
  *((_DWORD *)this + 1) = v8;
  if ( v8 < 0 )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
    return -1;
  }
  v9 = fcntl(v8, 3, 0);
  fcntl(*((_DWORD *)this + 1), 4, v9 | 0x800);
  v6 = (**(int (__fastcall ***)(CSocket *, unsigned int))this)(this, a3);
  if ( v6 < 0 )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 32))(this);
  }
  else
  {
    v6 = 0;
    v10 = *((_DWORD *)this + 1);
    v11.sa_family = 2;
    *(_WORD *)v11.sa_data = (a2 >> 8) | ((_WORD)a2 << 8);
    memset(&v11.sa_data[2], 0, 12);
    if ( bind(v10, &v11, 16) < 0 )
    {
      (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
      (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 32))(this);
      return -1;
    }
    else
    {
      *((_BYTE *)this + 8) = 1;
    }
  }
  return v6;
}


// ===== 8289bc CSocket::OpenUDP(ushort,uint) =====
int __fastcall CSocket::OpenUDP(CSocket *this, unsigned int a2, unsigned int a3)
{
  int v6; // r8
  int v8; // r0
  int v9; // r0
  struct sockaddr v10; // [sp+4h] [bp-18h] BYREF

  if ( !*((_BYTE *)this + 9) )
    return -1;
  v8 = socket(2, 2, 17);
  *((_DWORD *)this + 1) = v8;
  if ( v8 < 0 )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
    return -1;
  }
  *(_WORD *)v10.sa_data = (a2 >> 8) | ((_WORD)a2 << 8);
  v10.sa_family = 2;
  memset(&v10.sa_data[2], 0, 12);
  if ( bind(v8, &v10, 16) < 0 )
  {
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 4))(this);
    (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 32))(this);
    return -1;
  }
  else
  {
    v9 = fcntl(*((_DWORD *)this + 1), 3, 0);
    fcntl(*((_DWORD *)this + 1), 4, v9 | 0x800);
    v6 = (**(int (__fastcall ***)(CSocket *, unsigned int))this)(this, a3);
    if ( v6 < 0 )
    {
      (*(void (__fastcall **)(CSocket *))(*(_DWORD *)this + 32))(this);
    }
    else
    {
      *((_BYTE *)this + 8) = 1;
      return 0;
    }
  }
  return v6;
}


// ===== 828b14 CSocket::~CSocket() =====
void __fastcall CSocket::~CSocket(CSocket *this)
{
  CSocket::~CSocket(this);
  CustomFree(this);
}


// ===== 828b30 CSocketAbstract::~CSocketAbstract() =====
void __fastcall CSocketAbstract::~CSocketAbstract(CSocketAbstract *this)
{
  *(_DWORD *)this = &off_992B90;
  CustomFree(this);
}


// ===== 828b64 _DBG_OUT(char const*,...) =====
int _DBG_OUT(const char *a1, ...)
{
  char v2[4]; // [sp+4h] [bp-404h] BYREF
  va_list varg_r1; // [sp+41Ch] [bp+14h] BYREF

  va_start(varg_r1, a1);
  vsprintf(v2, a1, varg_r1);
  printf("%s", v2);
  return _android_log_print(4, "WIFI", "%s", v2);
}


// ===== 828c14 CBluetoothSocketAbstract::SetSocketOptions(uint) =====
int __fastcall CBluetoothSocketAbstract::SetSocketOptions(CBluetoothSocketAbstract *this, unsigned int a2)
{
  return 0;
}


// ===== 828c1c CBluetoothSocketAbstract::GetSocketError(void) =====
int __fastcall CBluetoothSocketAbstract::GetSocketError(CBluetoothSocketAbstract *this)
{
  return 0;
}


// ===== 828c24 CBluetoothSocketAbstract::WouldBlock(void) =====
int __fastcall CBluetoothSocketAbstract::WouldBlock(CBluetoothSocketAbstract *this)
{
  return 0;
}


// ===== 828c2c CBluetoothSocketAbstract::IsConnecting(void) =====
int __fastcall CBluetoothSocketAbstract::IsConnecting(CBluetoothSocketAbstract *this)
{
  return 0;
}


// ===== 828c34 CBluetoothSocketAbstract::Terminate(void) =====
void __fastcall CBluetoothSocketAbstract::Terminate(CBluetoothSocketAbstract *this)
{
  ;
}


// ===== 828c38 CBluetoothSocketAbstract::UpdateConnecting(void) =====
void __fastcall CBluetoothSocketAbstract::UpdateConnecting(CBluetoothSocketAbstract *this)
{
  ;
}


// ===== 828c3c CBluetoothSocket::IsConnected(void) =====
int __fastcall CBluetoothSocket::IsConnected(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828c44 CBluetoothSocket::OpenReliable(std::string,uint,bool) =====
int __fastcall CBluetoothSocket::OpenReliable(std::string a1, unsigned int a2, bool a3)
{
  return 0;
}


// ===== 828c4c CBluetoothSocket::OpenUnreliable(std::string,uint,bool) =====
int __fastcall CBluetoothSocket::OpenUnreliable(std::string a1, unsigned int a2, bool a3)
{
  return 0;
}


// ===== 828c54 CBluetoothSocket::Close(void) =====
int __fastcall CBluetoothSocket::Close(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828c5c CBluetoothSocket::Connect(uint) =====
int __fastcall CBluetoothSocket::Connect(CBluetoothSocket *this, unsigned int a2)
{
  return 0;
}


// ===== 828c64 CBluetoothSocket::Send(void const*,int) =====
int __fastcall CBluetoothSocket::Send(CBluetoothSocket *this, const void *a2, int a3)
{
  return 0;
}


// ===== 828c6c CBluetoothSocket::SendTo(uint,void const*,int) =====
int __fastcall CBluetoothSocket::SendTo(CBluetoothSocket *this, unsigned int a2, const void *a3, int a4)
{
  return 0;
}


// ===== 828c74 CBluetoothSocket::Receive(char *,int) =====
int __fastcall CBluetoothSocket::Receive(CBluetoothSocket *this, char *a2, int a3)
{
  return 0;
}


// ===== 828c7c CBluetoothSocket::ReceiveFrom(uint,char *,int) =====
int __fastcall CBluetoothSocket::ReceiveFrom(CBluetoothSocket *this, unsigned int a2, char *a3, int a4)
{
  return 0;
}


// ===== 828c84 CBluetoothSocket::GetLocalPeerId(void) =====
int __fastcall CBluetoothSocket::GetLocalPeerId(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828c8c CBluetoothSocket::GetRemotePeerId(void) =====
int __fastcall CBluetoothSocket::GetRemotePeerId(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828c94 CBluetoothSocket::IsPeer(void) =====
int __fastcall CBluetoothSocket::IsPeer(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828c9c CBluetoothSocket::IsClient(void) =====
int __fastcall CBluetoothSocket::IsClient(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828ca4 CBluetoothSocket::IsServer(void) =====
int __fastcall CBluetoothSocket::IsServer(CBluetoothSocket *this)
{
  return 0;
}


// ===== 828cac CBluetoothSocket::StartBroadcast(void) =====
void __fastcall CBluetoothSocket::StartBroadcast(CBluetoothSocket *this)
{
  ;
}


// ===== 828cb0 CBluetoothSocket::StopBroadcast(void) =====
void __fastcall CBluetoothSocket::StopBroadcast(CBluetoothSocket *this)
{
  ;
}


// ===== 828cb4 CBluetoothReliable::GetType(void) =====
int __fastcall CBluetoothReliable::GetType(CBluetoothReliable *this)
{
  return 4;
}


// ===== 828cbc CBluetoothReliable::CanDisconnectFrom(CNetworkId &) =====
int __fastcall CBluetoothReliable::CanDisconnectFrom(CBluetoothReliable *this, CNetworkId *a2)
{
  return 0;
}


// ===== 828cc4 CBluetoothReliable::Initialize(void) =====
int __fastcall CBluetoothReliable::Initialize(int this)
{
  int v1; // r3

  v1 = *(unsigned __int8 *)(this + 104);
  if ( *(_BYTE *)(this + 104) )
    this = -1;
  else
    *(_BYTE *)(this + 104) = 1;
  if ( !v1 )
    return 0;
  return this;
}


// ===== 828ce0 CBluetoothReliable::Disconnect(void) =====
int __fastcall CBluetoothReliable::Disconnect(int this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(unsigned __int8 *)(this + 104);
  v2 = v1 == 0;
  if ( *(_BYTE *)(this + 104) )
  {
    v1 = 0;
    *(_BYTE *)(this + 104) = 0;
  }
  else
  {
    this = -1;
  }
  if ( !v2 )
    return v1;
  return this;
}


// ===== 828cfc CBluetoothReliable::IsConnected(void) =====
int __fastcall CBluetoothReliable::IsConnected(CBluetoothReliable *this)
{
  return 0;
}


// ===== 828d04 CBluetoothReliable::IsConnectedTo(CNetworkId &) =====
int __fastcall CBluetoothReliable::IsConnectedTo(CBluetoothReliable *this, CNetworkId *a2)
{
  return 0;
}


// ===== 828d0c CBluetoothReliable::IsPeer(void) =====
int __fastcall CBluetoothReliable::IsPeer(CBluetoothReliable *this)
{
  return 0;
}


// ===== 828d14 CBluetoothReliable::IsClient(void) =====
int __fastcall CBluetoothReliable::IsClient(CBluetoothReliable *this)
{
  return 0;
}


// ===== 828d1c CBluetoothReliable::IsListening(void) =====
int __fastcall CBluetoothReliable::IsListening(CBluetoothReliable *this)
{
  if ( *((_BYTE *)this + 104) && (*(int (__fastcall **)(char *))(*((_DWORD *)this + 2) + 92))((char *)this + 8) )
    return *((_DWORD *)this + 11) & 1;
  else
    return 0;
}


// ===== 828d5c CBluetoothReliable::StartBroadcast(void) =====
void __fastcall CBluetoothReliable::StartBroadcast(CBluetoothReliable *this)
{
  ;
}


// ===== 828d60 CBluetoothReliable::StopBroadcast(void) =====
void __fastcall CBluetoothReliable::StopBroadcast(CBluetoothReliable *this)
{
  ;
}


// ===== 828d64 CBluetoothReliable::Send(CNetworkId &,void *,int) =====
int __fastcall CBluetoothReliable::Send(CBluetoothReliable *this, CNetworkId *a2, void *a3, int a4)
{
  return -1;
}


// ===== 828d6c CBluetoothReliable::Receive(void) =====
int __fastcall CBluetoothReliable::Receive(CBluetoothReliable *this)
{
  return -1;
}


// ===== 828d74 CBluetoothReliable::SetMode(_tBLUETOOTH_SESSION) =====
void CBluetoothReliable::SetMode()
{
  ;
}


// ===== 828d78 CBluetoothReliable::TerminateTransport(void) =====
int __fastcall CBluetoothReliable::TerminateTransport(CBluetoothReliable *this)
{
  CBluetoothReliable::s_initialized = 0;
  return 0;
}


// ===== 828da0 CBluetoothReliable::AcceptConnections(void) =====
int __fastcall CBluetoothReliable::AcceptConnections(CBluetoothReliable *this)
{
  if ( *((_BYTE *)this + 48)
    && (*(int (__fastcall **)(char *))(*((_DWORD *)this + 2) + 92))((char *)this + 8)
    && (*((_DWORD *)this + 11) & 1) != 0 )
  {
    CTransportManager::AcceptCallback((CTransportManager *)byte_4, (volatile int)this);
  }
  return 0;
}


// ===== 828df0 CBluetoothReliable::Connect(CNetworkId &) =====
int __fastcall CBluetoothReliable::Connect(CBluetoothReliable *this, CNetworkId *a2)
{
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r4
  int v10; // r1
  int v11; // r2

  if ( !*((_BYTE *)this + 104) )
    return -1;
  if ( (*(int (__fastcall **)(CBluetoothReliable *))(*(_DWORD *)this + 40))(this)
    || a2 == (CBluetoothReliable *)((char *)this + 108) )
  {
    return 0;
  }
  v5 = *(_DWORD *)a2;
  v6 = *((_DWORD *)a2 + 1);
  v7 = *((_DWORD *)a2 + 2);
  v8 = *((_DWORD *)a2 + 3);
  v9 = (_DWORD *)((char *)a2 + 16);
  *((_DWORD *)this + 27) = v5;
  *((_DWORD *)this + 28) = v6;
  *((_DWORD *)this + 29) = v7;
  *((_DWORD *)this + 30) = v8;
  v10 = v9[1];
  v11 = v9[2];
  *((_DWORD *)this + 31) = *v9;
  *((_DWORD *)this + 32) = v10;
  *((_DWORD *)this + 33) = v11;
  return 0;
}


// ===== 828e58 CBluetoothReliable::Open(std::string,std::string,int) =====
int __fastcall CBluetoothReliable::Open(CBluetoothReliable *this, std::string a2, std::string a3, int a4)
{
  const char *v4; // r2
  const char *v5; // r1
  std::string v7; // [sp+4h] [bp-20h] BYREF

  *((_DWORD *)this + 1) = *(_DWORD *)&a2._M_buffers._M_static_buf[8];
  v4 = *((const char **)a2._M_buffers._M_end_of_storage + 4);
  v5 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::string::_M_range_initialize(&v7, v5, v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  return 0;
}


// ===== 828ec8 CBluetoothReliable::Listen(std::string,std::string) =====
int __fastcall CBluetoothReliable::Listen(CBluetoothReliable *this, std::string a2, std::string a3)
{
  int v3; // r7
  const char *v5; // r2
  const char *v6; // r1
  const char *v7; // r2
  const char *v8; // r1
  int v9; // r7
  std::string v11; // [sp+Ch] [bp-2Ch] BYREF
  int v12; // [sp+24h] [bp-14h]
  char **p_M_finish; // [sp+2Ch] [bp-Ch]
  char **v14; // [sp+30h] [bp-8h]
  std::string v15; // 0:r1.12,12:^0.12 BYREF

  v3 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  v5 = *((const char **)a2._M_buffers._M_end_of_storage + 4);
  v6 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  p_M_finish = &v11._M_finish;
  v14 = &v11._M_finish;
  std::string::_M_range_initialize((std::string *)&v11._M_finish, v6, v5);
  v7 = *(const char **)(v3 + 16);
  v8 = *(const char **)(v3 + 20);
  *(_DWORD *)&v11._M_buffers._M_static_buf[8] = &v15._M_finish;
  *(_DWORD *)&v11._M_buffers._M_static_buf[12] = &v15._M_finish;
  std::string::_M_range_initialize((std::string *)&v15._M_finish, v8, v7);
  *(_DWORD *)&v15._M_buffers._M_static_buf[4] = &v15._M_finish;
  *(_DWORD *)&v15._M_buffers._M_static_buf[8] = 1;
  v15._M_buffers._M_end_of_storage = (char *)&v11._M_finish;
  v9 = CBluetoothReliable::Open(this, v15, v11, v12);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v15._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v11._M_finish);
  return v9;
}


// ===== 828f78 CBluetoothSocket::~CBluetoothSocket() =====
void __fastcall CBluetoothSocket::~CBluetoothSocket(CBluetoothSocket *this)
{
  *(_DWORD *)this = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 828fac CBluetoothSocketAbstract::~CBluetoothSocketAbstract() =====
void __fastcall CBluetoothSocketAbstract::~CBluetoothSocketAbstract(CBluetoothSocketAbstract *this)
{
  *(_DWORD *)this = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 828fe0 CBluetoothSocket::GetRemoteDeviceName(void) =====
std::string *__fastcall CBluetoothSocket::GetRemoteDeviceName(std::string *this)
{
  std::string::string(this, "");
  return this;
}


// ===== 82900c CBluetoothReliable::CBluetoothReliable(void) =====
void __fastcall CBluetoothReliable::CBluetoothReliable(CBluetoothReliable *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_992D30;
  *((_DWORD *)this + 2) = &off_992CC0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::string::string((std::string *)((char *)this + 52), "");
  *((_DWORD *)this + 19) = 0;
  std::string::string((std::string *)((char *)this + 80), "");
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 104) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 8290dc CBluetoothReliable::GetPeerNetworkId(void) =====
CBluetoothReliable *__fastcall CBluetoothReliable::GetPeerNetworkId(CBluetoothReliable *this)
{
  int v2; // r3

  CNetworkId::Reset(this);
  v2 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = v2 | 8;
  return this;
}


// ===== 829104 CBluetoothSocketAbstract::~CBluetoothSocketAbstract() =====
void __fastcall CBluetoothSocketAbstract::~CBluetoothSocketAbstract(CBluetoothSocketAbstract *this)
{
  *(_DWORD *)this = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
  CustomFree(this);
}


// ===== 829140 CBluetoothSocket::~CBluetoothSocket() =====
void __fastcall CBluetoothSocket::~CBluetoothSocket(CBluetoothSocket *this)
{
  *(_DWORD *)this = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
  CustomFree(this);
}


// ===== 82917c CBluetoothReliable::~CBluetoothReliable() =====
void __fastcall CBluetoothReliable::~CBluetoothReliable(CBluetoothReliable *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r6

  *(_DWORD *)this = off_992D30;
  v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 80);
  CBluetoothSocket::RestartBluetooth(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 12));
}


// ===== 8291e0 CBluetoothReliable::~CBluetoothReliable() =====
void __fastcall CBluetoothReliable::~CBluetoothReliable(CBluetoothReliable *this)
{
  CBluetoothReliable::~CBluetoothReliable(this);
  CustomFree(this);
}


// ===== 8291fc CBluetoothReliable::~CBluetoothReliable() =====
void __fastcall CBluetoothReliable::~CBluetoothReliable(CBluetoothReliable *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r6

  *(_DWORD *)this = off_992D30;
  v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 80);
  CBluetoothSocket::RestartBluetooth(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 12));
}


// ===== 829260 CBluetoothReliable::CBluetoothReliable(uint,bool) =====
void __fastcall CBluetoothReliable::CBluetoothReliable(CBluetoothReliable *this, unsigned int a2, bool a3)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_992D30;
  *((_DWORD *)this + 2) = &off_992CC0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  *((_DWORD *)this + 24) = (char *)this + 80;
  *((_DWORD *)this + 25) = (char *)this + 80;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 20, 0x10u);
  **((_BYTE **)this + 24) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829330 CBluetoothReliable::CBluetoothReliable(void) =====
void __fastcall CBluetoothReliable::CBluetoothReliable(CBluetoothReliable *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_992D30;
  *((_DWORD *)this + 2) = &off_992CC0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::string::string((std::string *)((char *)this + 52), "");
  *((_DWORD *)this + 19) = 0;
  std::string::string((std::string *)((char *)this + 80), "");
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 104) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829400 CBluetoothReliable::Create(std::string,std::string,int) =====
CBluetoothReliable *__fastcall CBluetoothReliable::Create(
        CBluetoothReliable *this,
        std::string a2,
        std::string a3,
        int a4)
{
  char *M_end_of_storage; // r8
  int v6; // r9
  CBluetoothReliable *v7; // r6
  const char *v8; // r2
  const char *v9; // r1
  const char *v10; // r2
  const char *v11; // r1
  std::string v13; // [sp+Ch] [bp-2Ch] BYREF
  int v14; // [sp+24h] [bp-14h]
  char **p_M_finish; // [sp+2Ch] [bp-Ch]
  char **v16; // [sp+30h] [bp-8h]
  std::string v17; // 0:r1.12,12:^0.12 BYREF

  M_end_of_storage = a2._M_buffers._M_end_of_storage;
  v6 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  v7 = (CBluetoothReliable *)operator new(0x88u, 2);
  CBluetoothReliable::CBluetoothReliable(v7);
  CBluetoothReliable::Initialize((int)v7);
  v8 = *((const char **)this + 4);
  v9 = *((const char **)this + 5);
  p_M_finish = &v13._M_finish;
  v16 = &v13._M_finish;
  std::string::_M_range_initialize((std::string *)&v13._M_finish, v9, v8);
  v10 = *((const char **)M_end_of_storage + 4);
  v11 = *((const char **)M_end_of_storage + 5);
  *(_DWORD *)&v13._M_buffers._M_static_buf[8] = &v17._M_finish;
  *(_DWORD *)&v13._M_buffers._M_static_buf[12] = &v17._M_finish;
  std::string::_M_range_initialize((std::string *)&v17._M_finish, v11, v10);
  *(_DWORD *)&v17._M_buffers._M_static_buf[4] = &v17._M_finish;
  *(_DWORD *)&v17._M_buffers._M_static_buf[8] = v6;
  v17._M_buffers._M_end_of_storage = (char *)&v13._M_finish;
  CBluetoothReliable::Open(v7, v17, v13, v14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v17._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v13._M_finish);
  return v7;
}


// ===== 8294cc CBluetoothReliable::InitializeTransport(void) =====
int __fastcall CBluetoothReliable::InitializeTransport(CBluetoothReliable *this)
{
  std::string *v1; // r0
  int TransportMgr; // r0
  CBluetoothReliable *v3; // r10
  CTransportManager *v4; // r0
  pthread_mutex_t *v5; // r0
  std::string v7; // [sp+Ch] [bp-50h]
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+24h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+3Ch] [bp-20h] BYREF
  std::string v10; // 0:r1.12,12:^0.12 BYREF

  if ( !CBluetoothReliable::s_initialized )
  {
    CNetworkId::Reset(&v10._M_finish);
    v7._M_finish = (char *)((int)v7._M_finish | 8);
    v1 = std::string::string((std::string *)&v8, "Default Bluetooth Session");
    TransportMgr = GetTransportMgr((CTransportManager *)v1);
    (*(void (__fastcall **)(std::priv::_String_base<char,std::allocator<char> > *, int, char **))(*(_DWORD *)TransportMgr
                                                                                                + 28))(
      &v9,
      TransportMgr,
      &v10._M_finish);
    v10._M_buffers._M_end_of_storage = (char *)&v9;
    *(_DWORD *)&v10._M_buffers._M_static_buf[4] = 1;
    v3 = CBluetoothReliable::Create((CBluetoothReliable *)&v8, v10, v7, (int)v8._M_buffers._M_end_of_storage);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
    v4 = (CTransportManager *)CBluetoothReliable::Initialize((int)v3);
    v5 = (pthread_mutex_t *)GetTransportMgr(v4);
    CTransportManager::AddTransport(v5, (volatile int)v3);
    CBluetoothReliable::s_initialized = 1;
  }
  return 0;
}


// ===== 8295c4 CBluetoothReliable::CBluetoothReliable(uint,bool) =====
void __fastcall CBluetoothReliable::CBluetoothReliable(CBluetoothReliable *this, unsigned int a2, bool a3)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_992D30;
  *((_DWORD *)this + 2) = &off_992CC0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  *((_DWORD *)this + 24) = (char *)this + 80;
  *((_DWORD *)this + 25) = (char *)this + 80;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 20, 0x10u);
  **((_BYTE **)this + 24) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829694 CBluetoothReliable::GetLocalNetworkId(void) =====
CBluetoothReliable *__fastcall CBluetoothReliable::GetLocalNetworkId(CBluetoothReliable *this)
{
  int v2; // r3

  CNetworkId::Reset(this);
  v2 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = v2 | 8;
  return this;
}


// ===== 8296bc CBluetoothUnreliable::GetType(void) =====
int __fastcall CBluetoothUnreliable::GetType(CBluetoothUnreliable *this)
{
  return 3;
}


// ===== 8296c4 CBluetoothUnreliable::CanDisconnectFrom(CNetworkId &) =====
int __fastcall CBluetoothUnreliable::CanDisconnectFrom(CBluetoothUnreliable *this, CNetworkId *a2)
{
  return 0;
}


// ===== 8296cc CBluetoothUnreliable::Initialize(void) =====
int __fastcall CBluetoothUnreliable::Initialize(int this)
{
  int v1; // r3

  v1 = *(unsigned __int8 *)(this + 104);
  if ( *(_BYTE *)(this + 104) )
    this = -1;
  else
    *(_BYTE *)(this + 104) = 1;
  if ( !v1 )
    return 0;
  return this;
}


// ===== 8296e8 CBluetoothUnreliable::Disconnect(void) =====
int __fastcall CBluetoothUnreliable::Disconnect(int this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(unsigned __int8 *)(this + 104);
  v2 = v1 == 0;
  if ( *(_BYTE *)(this + 104) )
  {
    v1 = 0;
    *(_BYTE *)(this + 104) = 0;
  }
  else
  {
    this = -1;
  }
  if ( !v2 )
    return v1;
  return this;
}


// ===== 829704 CBluetoothUnreliable::IsConnected(void) =====
int __fastcall CBluetoothUnreliable::IsConnected(CBluetoothUnreliable *this)
{
  return 0;
}


// ===== 82970c CBluetoothUnreliable::IsConnectedTo(CNetworkId &) =====
int __fastcall CBluetoothUnreliable::IsConnectedTo(CBluetoothUnreliable *this, CNetworkId *a2)
{
  return 0;
}


// ===== 829714 CBluetoothUnreliable::IsPeer(void) =====
int __fastcall CBluetoothUnreliable::IsPeer(CBluetoothUnreliable *this)
{
  return 0;
}


// ===== 82971c CBluetoothUnreliable::IsClient(void) =====
int __fastcall CBluetoothUnreliable::IsClient(CBluetoothUnreliable *this)
{
  return 0;
}


// ===== 829724 CBluetoothUnreliable::IsListening(void) =====
int __fastcall CBluetoothUnreliable::IsListening(CBluetoothUnreliable *this)
{
  if ( *((_BYTE *)this + 104) && (*(int (__fastcall **)(char *))(*((_DWORD *)this + 2) + 92))((char *)this + 8) )
    return *((_DWORD *)this + 11) & 1;
  else
    return 0;
}


// ===== 829764 CBluetoothUnreliable::StartBroadcast(void) =====
void __fastcall CBluetoothUnreliable::StartBroadcast(CBluetoothUnreliable *this)
{
  ;
}


// ===== 829768 CBluetoothUnreliable::StopBroadcast(void) =====
void __fastcall CBluetoothUnreliable::StopBroadcast(CBluetoothUnreliable *this)
{
  ;
}


// ===== 82976c CBluetoothUnreliable::Send(CNetworkId &,void *,int) =====
int __fastcall CBluetoothUnreliable::Send(CBluetoothUnreliable *this, CNetworkId *a2, void *a3, int a4)
{
  return -1;
}


// ===== 829774 CBluetoothUnreliable::Receive(void) =====
int __fastcall CBluetoothUnreliable::Receive(CBluetoothUnreliable *this)
{
  return -1;
}


// ===== 82977c CBluetoothUnreliable::SetMode(_tBLUETOOTH_SESSION) =====
void CBluetoothUnreliable::SetMode()
{
  ;
}


// ===== 829780 CBluetoothUnreliable::TerminateTransport(void) =====
int __fastcall CBluetoothUnreliable::TerminateTransport(CBluetoothUnreliable *this)
{
  CBluetoothUnreliable::s_initialized = 0;
  return 0;
}


// ===== 8297a8 CBluetoothUnreliable::AcceptConnections(void) =====
int __fastcall CBluetoothUnreliable::AcceptConnections(CBluetoothUnreliable *this)
{
  if ( *((_BYTE *)this + 48)
    && (*(int (__fastcall **)(char *))(*((_DWORD *)this + 2) + 92))((char *)this + 8)
    && (*((_DWORD *)this + 11) & 1) != 0 )
  {
    CTransportManager::AcceptCallback((CTransportManager *)((char *)&dword_0 + 3), (volatile int)this);
  }
  return 0;
}


// ===== 8297f8 CBluetoothUnreliable::Connect(CNetworkId &) =====
int __fastcall CBluetoothUnreliable::Connect(CBluetoothUnreliable *this, CNetworkId *a2)
{
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r4
  int v10; // r1
  int v11; // r2

  if ( !*((_BYTE *)this + 104) )
    return -1;
  if ( (*(int (__fastcall **)(CBluetoothUnreliable *))(*(_DWORD *)this + 40))(this)
    || a2 == (CBluetoothUnreliable *)((char *)this + 108) )
  {
    return 0;
  }
  v5 = *(_DWORD *)a2;
  v6 = *((_DWORD *)a2 + 1);
  v7 = *((_DWORD *)a2 + 2);
  v8 = *((_DWORD *)a2 + 3);
  v9 = (_DWORD *)((char *)a2 + 16);
  *((_DWORD *)this + 27) = v5;
  *((_DWORD *)this + 28) = v6;
  *((_DWORD *)this + 29) = v7;
  *((_DWORD *)this + 30) = v8;
  v10 = v9[1];
  v11 = v9[2];
  *((_DWORD *)this + 31) = *v9;
  *((_DWORD *)this + 32) = v10;
  *((_DWORD *)this + 33) = v11;
  return 0;
}


// ===== 829860 CBluetoothUnreliable::Open(std::string,std::string,int) =====
int __fastcall CBluetoothUnreliable::Open(CBluetoothUnreliable *this, std::string a2, std::string a3, int a4)
{
  const char *v4; // r2
  const char *v5; // r1
  std::string v7; // [sp+4h] [bp-20h] BYREF

  *((_DWORD *)this + 1) = *(_DWORD *)&a2._M_buffers._M_static_buf[8];
  v4 = *((const char **)a2._M_buffers._M_end_of_storage + 4);
  v5 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::string::_M_range_initialize(&v7, v5, v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  return 0;
}


// ===== 8298d0 CBluetoothUnreliable::Listen(std::string,std::string) =====
int __fastcall CBluetoothUnreliable::Listen(CBluetoothUnreliable *this, std::string a2, std::string a3)
{
  int v3; // r7
  const char *v5; // r2
  const char *v6; // r1
  const char *v7; // r2
  const char *v8; // r1
  int v9; // r7
  std::string v11; // [sp+Ch] [bp-2Ch] BYREF
  int v12; // [sp+24h] [bp-14h]
  char **p_M_finish; // [sp+2Ch] [bp-Ch]
  char **v14; // [sp+30h] [bp-8h]
  std::string v15; // 0:r1.12,12:^0.12 BYREF

  v3 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  v5 = *((const char **)a2._M_buffers._M_end_of_storage + 4);
  v6 = *((const char **)a2._M_buffers._M_end_of_storage + 5);
  p_M_finish = &v11._M_finish;
  v14 = &v11._M_finish;
  std::string::_M_range_initialize((std::string *)&v11._M_finish, v6, v5);
  v7 = *(const char **)(v3 + 16);
  v8 = *(const char **)(v3 + 20);
  *(_DWORD *)&v11._M_buffers._M_static_buf[8] = &v15._M_finish;
  *(_DWORD *)&v11._M_buffers._M_static_buf[12] = &v15._M_finish;
  std::string::_M_range_initialize((std::string *)&v15._M_finish, v8, v7);
  *(_DWORD *)&v15._M_buffers._M_static_buf[4] = &v15._M_finish;
  *(_DWORD *)&v15._M_buffers._M_static_buf[8] = 1;
  v15._M_buffers._M_end_of_storage = (char *)&v11._M_finish;
  v9 = CBluetoothUnreliable::Open(this, v15, v11, v12);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v15._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v11._M_finish);
  return v9;
}


// ===== 829980 CBluetoothUnreliable::CBluetoothUnreliable(void) =====
void __fastcall CBluetoothUnreliable::CBluetoothUnreliable(CBluetoothUnreliable *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_992D70;
  *((_DWORD *)this + 2) = &off_992CC0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::string::string((std::string *)((char *)this + 52), "");
  *((_DWORD *)this + 19) = 0;
  std::string::string((std::string *)((char *)this + 80), "");
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 104) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829a50 CBluetoothUnreliable::GetPeerNetworkId(void) =====
CBluetoothUnreliable *__fastcall CBluetoothUnreliable::GetPeerNetworkId(CBluetoothUnreliable *this)
{
  int v2; // r3

  CNetworkId::Reset(this);
  v2 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = v2 | 4;
  return this;
}


// ===== 829a78 CBluetoothUnreliable::~CBluetoothUnreliable() =====
void __fastcall CBluetoothUnreliable::~CBluetoothUnreliable(CBluetoothUnreliable *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r6

  *(_DWORD *)this = off_992D70;
  v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 80);
  CBluetoothSocket::RestartBluetooth(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 12));
}


// ===== 829adc CBluetoothUnreliable::~CBluetoothUnreliable() =====
void __fastcall CBluetoothUnreliable::~CBluetoothUnreliable(CBluetoothUnreliable *this)
{
  CBluetoothUnreliable::~CBluetoothUnreliable(this);
  CustomFree(this);
}


// ===== 829af8 CBluetoothUnreliable::~CBluetoothUnreliable() =====
void __fastcall CBluetoothUnreliable::~CBluetoothUnreliable(CBluetoothUnreliable *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r6

  *(_DWORD *)this = off_992D70;
  v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 80);
  CBluetoothSocket::RestartBluetooth(this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_992CC0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 12));
}


// ===== 829b5c CBluetoothUnreliable::CBluetoothUnreliable(uint,bool) =====
void __fastcall CBluetoothUnreliable::CBluetoothUnreliable(CBluetoothUnreliable *this, unsigned int a2, bool a3)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_992D70;
  *((_DWORD *)this + 2) = &off_992CC0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  *((_DWORD *)this + 24) = (char *)this + 80;
  *((_DWORD *)this + 25) = (char *)this + 80;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 20, 0x10u);
  **((_BYTE **)this + 24) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829c2c CBluetoothUnreliable::CBluetoothUnreliable(void) =====
void __fastcall CBluetoothUnreliable::CBluetoothUnreliable(CBluetoothUnreliable *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_992D70;
  *((_DWORD *)this + 2) = &off_992CC0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::string::string((std::string *)((char *)this + 52), "");
  *((_DWORD *)this + 19) = 0;
  std::string::string((std::string *)((char *)this + 80), "");
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 104) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829cfc CBluetoothUnreliable::Create(std::string,std::string,int) =====
CBluetoothUnreliable *__fastcall CBluetoothUnreliable::Create(
        CBluetoothUnreliable *this,
        std::string a2,
        std::string a3,
        int a4)
{
  char *M_end_of_storage; // r8
  int v6; // r9
  CBluetoothUnreliable *v7; // r6
  const char *v8; // r2
  const char *v9; // r1
  const char *v10; // r2
  const char *v11; // r1
  std::string v13; // [sp+Ch] [bp-2Ch] BYREF
  int v14; // [sp+24h] [bp-14h]
  char **p_M_finish; // [sp+2Ch] [bp-Ch]
  char **v16; // [sp+30h] [bp-8h]
  std::string v17; // 0:r1.12,12:^0.12 BYREF

  M_end_of_storage = a2._M_buffers._M_end_of_storage;
  v6 = *(_DWORD *)&a2._M_buffers._M_static_buf[4];
  v7 = (CBluetoothUnreliable *)operator new(0x88u, 2);
  CBluetoothUnreliable::CBluetoothUnreliable(v7);
  CBluetoothUnreliable::Initialize((int)v7);
  v8 = *((const char **)this + 4);
  v9 = *((const char **)this + 5);
  p_M_finish = &v13._M_finish;
  v16 = &v13._M_finish;
  std::string::_M_range_initialize((std::string *)&v13._M_finish, v9, v8);
  v10 = *((const char **)M_end_of_storage + 4);
  v11 = *((const char **)M_end_of_storage + 5);
  *(_DWORD *)&v13._M_buffers._M_static_buf[8] = &v17._M_finish;
  *(_DWORD *)&v13._M_buffers._M_static_buf[12] = &v17._M_finish;
  std::string::_M_range_initialize((std::string *)&v17._M_finish, v11, v10);
  *(_DWORD *)&v17._M_buffers._M_static_buf[4] = &v17._M_finish;
  *(_DWORD *)&v17._M_buffers._M_static_buf[8] = v6;
  v17._M_buffers._M_end_of_storage = (char *)&v13._M_finish;
  CBluetoothUnreliable::Open(v7, v17, v13, v14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v17._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)&v13._M_finish);
  return v7;
}


// ===== 829dc8 CBluetoothUnreliable::InitializeTransport(void) =====
int __fastcall CBluetoothUnreliable::InitializeTransport(CBluetoothUnreliable *this)
{
  std::string *v1; // r0
  int TransportMgr; // r0
  CBluetoothUnreliable *v3; // r10
  CTransportManager *v4; // r0
  pthread_mutex_t *v5; // r0
  std::string v7; // [sp+Ch] [bp-68h] BYREF
  int v8; // [sp+24h] [bp-50h]
  int v9; // [sp+34h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+3Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+54h] [bp-20h] BYREF
  std::string v12; // 0:r1.12,12:^0.12 BYREF

  if ( !CBluetoothUnreliable::s_initialized )
  {
    CNetworkId::Reset(&v7._M_finish);
    v9 |= 4u;
    v1 = std::string::string((std::string *)&v10, "Default Bluetooth Session");
    TransportMgr = GetTransportMgr((CTransportManager *)v1);
    (*(void (__fastcall **)(std::priv::_String_base<char,std::allocator<char> > *, int, char **))(*(_DWORD *)TransportMgr
                                                                                                + 28))(
      &v11,
      TransportMgr,
      &v7._M_finish);
    *(_DWORD *)&v12._M_buffers._M_static_buf[4] = 1;
    v12._M_buffers._M_end_of_storage = (char *)&v11;
    v3 = CBluetoothUnreliable::Create((CBluetoothUnreliable *)&v10, v12, v7, v8);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
    v5 = (pthread_mutex_t *)GetTransportMgr(v4);
    CTransportManager::AddTransport(v5, (volatile int)v3);
    (*(void (__fastcall **)(char *, CBluetoothUnreliable *))(*(_DWORD *)v3 + 24))(&v12._M_buffers._M_static_buf[12], v3);
    CBluetoothUnreliable::s_initialized = 1;
  }
  return 0;
}


// ===== 829ecc CBluetoothUnreliable::CBluetoothUnreliable(uint,bool) =====
void __fastcall CBluetoothUnreliable::CBluetoothUnreliable(CBluetoothUnreliable *this, unsigned int a2, bool a3)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_992D70;
  *((_DWORD *)this + 2) = &off_992CC0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 2) = &off_992C50;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  *((_DWORD *)this + 24) = (char *)this + 80;
  *((_DWORD *)this + 25) = (char *)this + 80;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 20, 0x10u);
  **((_BYTE **)this + 24) = 0;
  CNetworkId::Reset((_DWORD *)this + 27);
}


// ===== 829f9c CBluetoothUnreliable::GetLocalNetworkId(void) =====
CBluetoothUnreliable *__fastcall CBluetoothUnreliable::GetLocalNetworkId(CBluetoothUnreliable *this)
{
  int v2; // r3

  CNetworkId::Reset(this);
  v2 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = v2 | 4;
  return this;
}


// ===== 829fc4 CTcp::CanDisconnectFrom(CNetworkId &) =====
int __fastcall CTcp::CanDisconnectFrom(CTcp *this, CNetworkId *a2)
{
  return (*(int (__fastcall **)(CTcp *, CNetworkId *))(*(_DWORD *)this + 40))(this, a2);
}


// ===== 829fd8 CTcp::GetType(void) =====
int __fastcall CTcp::GetType(CTcp *this)
{
  return 2;
}


// ===== 829fe0 CTcp::TerminateTransport(void) =====
int __fastcall CTcp::TerminateTransport(CTcp *this)
{
  CTcp::s_initialized = 0;
  return 0;
}


// ===== 82a008 CTcp::IsConnectedTo(CNetworkId &) =====
bool __fastcall CTcp::IsConnectedTo(CTcp *this, CNetworkId *a2)
{
  unsigned __int16 v4[16]; // [sp+4h] [bp-20h] BYREF

  (*(void (__fastcall **)(unsigned __int16 *, CTcp *))(*(_DWORD *)this + 28))(v4, this);
  return CNetworkId::IsEqual(v4, (unsigned __int16 *)a2);
}


// ===== 82a040 CTcp::IsConnected(void) =====
bool __fastcall CTcp::IsConnected(CTcp *this)
{
  return CSocket::IsConnected((CTcp *)((char *)this + 8));
}


// ===== 82a048 CTcp::GetPeerNetworkId(void) =====
CTcp *__fastcall CTcp::GetPeerNetworkId(CTcp *this, struct in_addr *a2)
{
  CSocket *v2; // r5
  int PeerAddress; // r6
  int v5; // r3

  v2 = (CSocket *)&a2[2];
  PeerAddress = CSocket::GetPeerAddress(a2 + 2);
  LOWORD(v2) = CSocket::GetPeerPort(v2);
  CNetworkId::Reset(this);
  v5 = *((_DWORD *)this + 6);
  *(_WORD *)this = (_WORD)v2;
  *((_DWORD *)this + 1) = PeerAddress;
  *((_DWORD *)this + 6) = v5 | 2;
  return this;
}


// ===== 82a090 CTcp::GetLocalNetworkId(void) =====
CTcp *__fastcall CTcp::GetLocalNetworkId(CTcp *this, int a2)
{
  CSocket *v2; // r5
  in_addr_t LocalAddress; // r6
  int v5; // r3

  v2 = (CSocket *)(a2 + 8);
  LocalAddress = CSocket::GetLocalAddress((CSocket *)(a2 + 8));
  LOWORD(v2) = CSocket::GetLocalPort(v2);
  CNetworkId::Reset(this);
  v5 = *((_DWORD *)this + 6);
  *(_WORD *)this = (_WORD)v2;
  *((_DWORD *)this + 1) = LocalAddress;
  *((_DWORD *)this + 6) = v5 | 2;
  return this;
}


// ===== 82a0d8 CTcp::ReceivePackets(void) =====
int __fastcall CTcp::ReceivePackets(CTcp *this)
{
  int v2; // r10
  char *v3; // r7
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  _DWORD *v10; // [sp+0h] [bp-104Ch]
  _DWORD v11[7]; // [sp+Ch] [bp-1040h] BYREF
  _DWORD v12[7]; // [sp+28h] [bp-1024h] BYREF
  char v13[4]; // [sp+44h] [bp-1008h] BYREF

  CNetworkId::Reset(v12);
  v2 = 20;
  v10 = v12;
  while ( 1 )
  {
    CNetworkId::Reset(v12);
    v3 = (char *)CSocket::Receive((CTcp *)((char *)this + 8), v13, 0x1000u);
    if ( (int)v3 <= 0 )
      break;
    (*(void (__fastcall **)(_DWORD *, CTcp *))(*(_DWORD *)this + 28))(v11, this);
    v5 = v11[1];
    v6 = v11[2];
    v7 = v11[3];
    *v10 = v11[0];
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v8 = v11[5];
    v9 = v11[6];
    v10[4] = v11[4];
    v10[5] = v8;
    v10[6] = v9;
    CTransportManager::ReceiverCallback(this, (CTransport *)v12, (CNetworkId *)v13, v3, (int)v10);
    if ( !v2 )
      break;
    --v2;
  }
  return 0;
}


// ===== 82a1dc CTcp::Send(CNetworkId &,void *,int) =====
int __fastcall CTcp::Send(CTcp *this, CNetworkId *a2, void *a3, size_t a4)
{
  if ( *((_BYTE *)this + 16) && (*(int (__fastcall **)(CTcp *, CNetworkId *))(*(_DWORD *)this + 40))(this, a2) )
    return CSocket::Send((CTcp *)((char *)this + 8), a3, a4);
  else
    return -1;
}


// ===== 82a228 CTcp::Connect(CNetworkId &) =====
int __fastcall CTcp::Connect(CTcp *this, CNetworkId *a2)
{
  in_addr v3; // [sp+4h] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 16) || (*((_DWORD *)a2 + 6) & 2) == 0 )
    return -1;
  v3.s_addr = *((_DWORD *)a2 + 1);
  return CSocket::Connect((CTcp *)((char *)this + 8), &v3, *(unsigned __int16 *)a2);
}


// ===== 82a284 CTcp::CloseSocket(void) =====
int __fastcall CTcp::CloseSocket(CTcp *this)
{
  if ( *((_BYTE *)this + 16) )
    CSocket::Close((CTcp *)((char *)this + 8));
  return 0;
}


// ===== 82a2a4 CTcp::OpenSocket(ushort,bool) =====
int __fastcall CTcp::OpenSocket(CTcp *this, unsigned __int16 a2, int a3)
{
  CSocket *v5; // r5
  int result; // r0
  in_addr_t LocalAddress; // r0

  if ( *((_BYTE *)this + 16) )
  {
    v5 = (CTcp *)((char *)this + 8);
LABEL_7:
    LocalAddress = CSocket::GetLocalAddress(v5);
    inet_ntoa((struct in_addr)LocalAddress);
    CSocket::GetLocalPort(v5);
    return 0;
  }
  v5 = (CTcp *)((char *)this + 8);
  result = CSocket::OpenTCP((CTcp *)((char *)this + 8), a2, 6u);
  if ( result >= 0 )
  {
    if ( !a3 )
      goto LABEL_7;
    if ( !*((_BYTE *)this + 16) )
      goto LABEL_7;
    result = CSocket::Listen((CTcp *)((char *)this + 8));
    if ( result >= 0 )
      goto LABEL_7;
  }
  return result;
}


// ===== 82a36c CTcp::~CTcp() =====
void __fastcall CTcp::~CTcp(CTcp *this)
{
  CSocket *v1; // r4

  *(_DWORD *)this = off_992DB0;
  v1 = (CTcp *)((char *)this + 8);
  CTcp::CloseSocket(this);
  CSocket::~CSocket(v1);
}


// ===== 82a3ac CTcp::~CTcp() =====
void __fastcall CTcp::~CTcp(CTcp *this)
{
  CTcp::~CTcp(this);
  CustomFree(this);
}


// ===== 82a3c8 CTcp::~CTcp() =====
void __fastcall CTcp::~CTcp(CTcp *this)
{
  CSocket *v1; // r4

  *(_DWORD *)this = off_992DB0;
  v1 = (CTcp *)((char *)this + 8);
  CTcp::CloseSocket(this);
  CSocket::~CSocket(v1);
}


// ===== 82a408 CTcp::CreateByPort(ushort,uint) =====
_DWORD *__fastcall CTcp::CreateByPort(CTcp *this, int a2, unsigned int a3)
{
  unsigned __int16 v4; // r7
  _DWORD *v5; // r4

  v4 = (unsigned __int16)this;
  v5 = (_DWORD *)operator new(0x1Cu, 2);
  v5[1] = a2;
  *v5 = off_992DB0;
  CSocket::CSocket((CSocket *)(v5 + 2));
  CTcp::OpenSocket((CTcp *)v5, v4, a2 & 1);
  return v5;
}


// ===== 82a464 CTcp::InitializeTransport(void) =====
int __fastcall CTcp::InitializeTransport(CTcp *this, int a2, unsigned int a3)
{
  CTransportManager *v3; // r6
  pthread_mutex_t *TransportMgr; // r0

  if ( !CTcp::s_initialized )
  {
    v3 = (CTransportManager *)CTcp::CreateByPort(nullptr, 5, a3);
    TransportMgr = (pthread_mutex_t *)GetTransportMgr(v3);
    CTransportManager::AddTransport(TransportMgr, (volatile int)v3);
  }
  CTcp::s_initialized = 1;
  return 0;
}


// ===== 82a4b8 CTcp::CreateBySocketId(int,uint) =====
_DWORD *__fastcall CTcp::CreateBySocketId(CTcp *this, int a2, unsigned int a3)
{
  _DWORD *v5; // r0
  _DWORD *v6; // r4
  _DWORD *v7; // r8
  char v8; // r0
  void (__fastcall **v9)(_DWORD *, int); // r3

  v5 = (_DWORD *)operator new(0x1Cu, 2);
  v5[1] = a2;
  v6 = v5;
  *v5 = off_992DB0;
  v7 = v5 + 2;
  CSocket::CSocket((CSocket *)(v5 + 2));
  *((_BYTE *)v6 + 16) = 1;
  v6[3] = this;
  v8 = (*(int (__fastcall **)(_DWORD *))(v6[2] + 20))(v7);
  v9 = (void (__fastcall **)(_DWORD *, int))v6[2];
  *((_BYTE *)v6 + 18) = v8;
  (*v9)(v7, 4);
  return v6;
}


// ===== 82a540 CTcp::AcceptConnections(void) =====
int __fastcall CTcp::AcceptConnections(CTcp *this)
{
  CTcp *v2; // r6
  _DWORD *v3; // r0
  _DWORD v5[6]; // [sp+4h] [bp-24h] BYREF
  int v6; // [sp+1Ch] [bp-Ch]
  in_addr v7; // [sp+20h] [bp-8h] BYREF
  unsigned __int16 v8; // [sp+26h] [bp-2h] BYREF

  CNetworkId::Reset(v5);
  if ( *((_BYTE *)this + 16) )
  {
    if ( *((_BYTE *)this + 19) )
    {
      v7.s_addr = 0;
      v8 = 0;
      v2 = (CTcp *)CSocket::Accept((CTcp *)((char *)this + 8), &v7, &v8);
      if ( (int)v2 > 0 )
      {
        CNetworkId::Reset(v5);
        v6 |= 2u;
        v5[1] = v7.s_addr;
        LOWORD(v5[0]) = v8;
        v3 = CTcp::CreateBySocketId(v2, 0, v7.s_addr);
        CTransportManager::AcceptCallback((CTransportManager *)((char *)&dword_0 + 2), (volatile int)v3);
      }
    }
  }
  return 0;
}


// ===== 82a5dc CTcp::Receive(void) =====
int __fastcall CTcp::Receive(CTcp *this)
{
  if ( !*((_BYTE *)this + 16) )
    return 0;
  if ( !*((_BYTE *)this + 19) )
  {
    CTcp::ReceivePackets(this);
    return 0;
  }
  CTcp::AcceptConnections(this);
  return 0;
}


// ===== 82a610 XP_API_STRCHRFIND =====
_BYTE *__fastcall XP_API_STRCHRFIND(_BYTE *result, int a2, int a3)
{
  int v3; // r3
  bool v4; // cc
  int v5; // r4
  int v6; // r12
  bool v7; // zf
  bool v8; // cc

  v3 = (char)*result;
  v4 = v3 <= 0;
  if ( *result )
    v4 = a3 <= 0;
  v5 = !v4;
  if ( !v4 )
  {
    v6 = 0;
    v5 = 0;
    do
    {
      ++v6;
      v7 = v3 == a2;
      v3 = (char)result[v6];
      if ( v7 )
        ++v5;
      v8 = v3 < 0;
      if ( result[v6] )
        v8 = v5 < a3;
    }
    while ( v8 );
    result += v6;
  }
  if ( v5 != a3 )
    return nullptr;
  return result;
}


// ===== 82a664 XP_DEBUG_INIT =====
void XP_DEBUG_INIT()
{
  ;
}


// ===== 82a668 XP_DEBUG_FINALIZE =====
void XP_DEBUG_FINALIZE()
{
  ;
}


// ===== 82a66c XP_API_ITOA =====
char *__fastcall XP_API_ITOA(int a1, char *a2, int a3)
{
  int v3; // r11
  int v4; // r4
  char v5; // r3
  char *v6; // r6
  char *v7; // r3
  char v8; // r2
  _BYTE v10[48]; // [sp+4h] [bp-30h] BYREF

  v4 = a1;
  qmemcpy(v10, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", 36);
  v5 = a0123456789abcd[28];
  if ( !a1 )
    v5 = 48;
  v10[36] = a0123456789abcd[36];
  if ( a1 )
  {
    v6 = a2;
    if ( a1 >= 0 )
      v3 = 0;
    else
      v5 = 45;
    if ( a1 < 0 )
    {
      *a2 = v5;
      v6 = a2 + 1;
      v4 = -a1;
      v3 = 1;
    }
    while ( 1 )
    {
      *v6 = v10[v4 % a3];
      v4 /= a3;
      if ( !v4 )
        break;
      ++v6;
    }
    if ( v3 )
      v7 = a2 + 1;
    else
      v7 = a2;
    for ( v6[1] = 0; v7 < v6; --v6 )
    {
      v8 = *v7;
      *v7++ = *v6;
      *v6 = v8;
    }
  }
  else
  {
    *a2 = v5;
    a2[1] = 0;
  }
  return a2;
}


// ===== 82a788 ConvertUnicodeToUTF8(char *,ushort const*,int) =====
int __fastcall ConvertUnicodeToUTF8(char *a1, const unsigned __int16 *a2, int a3)
{
  int result; // r0
  unsigned int v5; // r12
  int v6; // r2
  int v7; // r4
  char *v8; // r5
  char v9; // r4

  if ( a3 > 0 )
  {
    v5 = 0;
    v6 = 2 * a3;
    result = 0;
    while ( 1 )
    {
      v7 = a2[v5 / 2];
      if ( (unsigned int)v7 <= 0x7F )
        break;
      if ( (unsigned int)v7 <= 0x7FF )
      {
        result += 2;
        *a1 = ~((unsigned int)~(v7 >> 6 << 26) >> 26);
        a1[1] = ~(~((a2[v5 / 2] & 0x3Fu) << 25) >> 25);
        a1 += 2;
LABEL_5:
        v5 += 2;
        if ( v5 == v6 )
          goto LABEL_10;
      }
      else
      {
        result += 3;
        *a1 = ~((unsigned int)~(v7 >> 12 << 27) >> 27);
        v8 = a1 + 1;
        a1[1] = ~(~(((a2[v5 / 2] >> 6) & 0x3Fu) << 25) >> 25);
        v9 = a2[v5 / 2];
        v5 += 2;
        a1 += 3;
        v8[1] = ~(~((v9 & 0x3Fu) << 25) >> 25);
        if ( v5 == v6 )
          goto LABEL_10;
      }
    }
    *a1++ = v7;
    ++result;
    goto LABEL_5;
  }
  result = 0;
LABEL_10:
  *a1 = 0;
  return result;
}


// ===== 82a868 ConvertUTF8ToUnicode(ushort *,char const*,int) =====
int __fastcall ConvertUTF8ToUnicode(unsigned __int16 *a1, const char *a2, int a3)
{
  int v3; // r8
  unsigned __int16 *v4; // r4
  int v5; // r12
  int v6; // r3
  __int16 v7; // r6
  char v8; // r5
  char v9; // r5
  char v10; // r0
  char v12; // r0

  if ( a3 > 0 )
  {
    v4 = a1 + 1;
    v5 = 1;
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = (unsigned __int8)a2[v6];
        v3 = v5;
        v8 = a2[v6];
        if ( (v8 & 0xE0) != 0xE0 )
          break;
        v9 = a2[v6 + 2];
        v10 = a2[v6 + 1];
        v6 += 3;
        *(v4 - 1) = v9 & 0x3F | (v7 << 12) | ((v10 & 0x3F) << 6);
        ++v5;
        ++v4;
        if ( v6 >= a3 )
          goto LABEL_10;
      }
      if ( (v8 & 0xC0) == 0xC0 )
      {
        v12 = a2[v6 + 1];
        v6 += 2;
        *(v4 - 1) = v12 & 0x3F | ((v7 & 0x1F) << 6);
        v3 = v5;
      }
      else
      {
        *(v4 - 1) = (char)v7;
        ++v6;
      }
      ++v4;
      ++v5;
    }
    while ( v6 < a3 );
LABEL_10:
    a1 = v4 - 1;
  }
  else
  {
    v3 = 0;
  }
  *a1 = 0;
  return v3;
}


// ===== 82a938 UTF8ToUnicode_Old(ushort *,char const*) =====
int __fastcall UTF8ToUnicode_Old(int result, const char *a2)
{
  __int16 v2; // r3
  int v3; // r4
  int v4; // r2
  int v5; // r12
  int v6; // r2
  const char *v7; // r3
  const char *v8; // r1
  const char *v9; // r6
  char v10; // t1

  LOBYTE(v2) = *a2;
  if ( *a2 )
  {
    v3 = 0;
    do
    {
      while ( (v2 & 0x80u) == 0 )
      {
        *(_WORD *)(result + v3) = (char)v2;
        ++a2;
LABEL_3:
        LOBYTE(v2) = *a2;
        v3 += 2;
        if ( !*a2 )
          return result;
      }
      v4 = (char)(4 * v2);
      if ( v4 >= 0 )
      {
        LOBYTE(v2) = 2;
        v5 = 1;
      }
      else
      {
        v5 = 1;
        do
        {
          v4 = (char)(2 * v4);
          ++v5;
        }
        while ( v4 < 0 );
        if ( v5 <= 5 )
          v2 = v5 + 1;
        else
          v2 = (char)v2;
        if ( v5 > 5 )
        {
          *(_WORD *)(result + v3) = v2;
          ++a2;
          goto LABEL_3;
        }
      }
      v6 = v4 >> v2;
      v7 = a2;
      v8 = a2 + 1;
      v9 = &v7[v5];
      do
      {
        v10 = *++v7;
        LOWORD(v6) = v10 & 0x3F | ((_WORD)v6 << 6);
      }
      while ( v7 != v9 );
      *(_WORD *)(result + v3) = v6;
      a2 = &v8[v5];
      LOBYTE(v2) = *a2;
      v3 += 2;
    }
    while ( *a2 );
  }
  return result;
}


// ===== 82aa10 ConvertUnicodeToUTF8_Old(char *,ushort const*) =====
int __fastcall ConvertUnicodeToUTF8_Old(char *a1, const unsigned __int16 *a2)
{
  char *v2; // r3
  __int16 v3; // r12
  unsigned int v4; // r2
  __int16 v5; // r2
  __int16 v6; // r12
  __int16 v7; // r2
  __int16 v8; // r12
  int result; // r0
  unsigned int v10; // r2
  unsigned int v11; // t1
  __int16 v12; // r3
  __int16 v13; // r2
  unsigned int v14; // r2

  if ( a1 )
  {
    v2 = a1;
    if ( ((unsigned __int8)a2 & 1) != 0 )
    {
      v3 = *((unsigned __int8 *)a2 + 1);
      v4 = (unsigned __int16)(*(unsigned __int8 *)a2 + (v3 << 8));
      if ( *(unsigned __int8 *)a2 + (v3 << 8) )
      {
        while ( v4 > 0x7F )
        {
          if ( v4 <= 0x7FF )
          {
            *v2 = (v4 >> 6) & 0x1F | 0xC0;
            v2[1] = v4 & 0x3F | 0x80;
            v2 += 2;
LABEL_6:
            v5 = *((unsigned __int8 *)a2 + 2);
            v6 = *((unsigned __int8 *)a2++ + 3);
            v4 = (unsigned __int16)(v5 + (v6 << 8));
            if ( !v4 )
              goto LABEL_11;
          }
          else
          {
            *v2 = (v4 >> 12) | 0xE0;
            v2[1] = (v4 >> 6) & 0x3F | 0x80;
            v2[2] = v4 & 0x3F | 0x80;
            v7 = *((unsigned __int8 *)a2 + 2);
            v2 += 3;
            v8 = *((unsigned __int8 *)a2++ + 3);
            v4 = (unsigned __int16)(v7 + (v8 << 8));
            if ( !v4 )
              goto LABEL_11;
          }
        }
        *v2++ = v4;
        goto LABEL_6;
      }
    }
    else
    {
      v10 = *a2;
      if ( *a2 )
      {
        do
        {
          if ( v10 > 0x7F )
          {
            if ( v10 <= 0x7FF )
            {
              *v2 = (v10 >> 6) & 0x1F | 0xC0;
              v2[1] = v10 & 0x3F | 0x80;
              v2 += 2;
            }
            else
            {
              *v2 = (v10 >> 12) | 0xE0;
              v2[1] = (v10 >> 6) & 0x3F | 0x80;
              v2[2] = v10 & 0x3F | 0x80;
              v2 += 3;
            }
          }
          else
          {
            *v2++ = v10;
          }
          v11 = a2[1];
          ++a2;
          v10 = v11;
        }
        while ( v11 );
      }
    }
LABEL_11:
    *v2 = 0;
    return v2 - a1;
  }
  else
  {
    for ( result = 1; ; ++result )
    {
      v12 = *(unsigned __int8 *)a2;
      v13 = *((unsigned __int8 *)a2++ + 1);
      v14 = (unsigned __int16)(v12 + (v13 << 8));
      if ( !v14 )
        break;
      while ( v14 > 0x7F )
      {
        if ( v14 > 0x7FF )
          result += 3;
        else
          result += 2;
        v14 = (unsigned __int16)(*(unsigned __int8 *)a2 + (*((unsigned __int8 *)a2 + 1) << 8));
        ++a2;
        if ( !v14 )
          return result;
      }
    }
  }
  return result;
}


// ===== 82abd4 XP_API_PARSE_DATA =====
int __fastcall XP_API_PARSE_DATA(char *a1, _BYTE *a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r7
  char v6; // r4
  int v7; // r6
  int v8; // r5

  v4 = 0;
  *a2 = 0;
  v5 = 0;
  v6 = *a1;
  v7 = -1;
  v8 = *a1;
  if ( *a1 )
  {
    while ( v8 != a4 )
    {
      if ( !a3 )
      {
        a2[v5] = v6;
        if ( v7 == -1 )
          v7 = v4;
        a2[++v5] = 0;
        goto LABEL_8;
      }
      if ( a3 < 0 )
        return v7;
      ++v4;
LABEL_9:
      v6 = a1[v4];
      v8 = v6;
      if ( !v6 )
        return v7;
    }
    --a3;
LABEL_8:
    ++v4;
    goto LABEL_9;
  }
  return v7;
}


// ===== 82ac58 SSEncDec_GetCharFromKeyByIndex(int) =====
int __fastcall SSEncDec_GetCharFromKeyByIndex(int result)
{
  if ( result > 25 )
  {
    if ( result > 51 )
    {
      if ( result > 61 )
      {
        if ( result == 62 )
          LOBYTE(result) = 95;
        else
          LOBYTE(result) = 45;
      }
      else
      {
        LOBYTE(result) = result - 4;
      }
    }
    else
    {
      LOBYTE(result) = result + 39;
    }
  }
  else
  {
    LOBYTE(result) = result + 97;
  }
  return (char)result;
}


// ===== 82ac9c SSEncDec_GetKeyFromChar(char) =====
int __fastcall SSEncDec_GetKeyFromChar(int result)
{
  if ( result == 45 )
  {
    LOBYTE(result) = 63;
  }
  else if ( result == 95 )
  {
    LOBYTE(result) = 62;
  }
  else if ( result > 57 )
  {
    if ( result > 90 )
      LOBYTE(result) = result - 97;
    else
      LOBYTE(result) = result - 39;
  }
  else
  {
    LOBYTE(result) = result + 4;
  }
  return (char)result;
}


// ===== 82acdc XP_API_GetNationality(char *) =====
void __fastcall XP_API_GetNationality(char *a1)
{
  ;
}


// ===== 82ace0 getValue =====
int __fastcall getValue(char *a1, _BYTE *a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r6
  char v6; // r12
  int v7; // r5

  v4 = 0;
  *a2 = 0;
  v5 = 0;
  v6 = *a1;
  v7 = *a1;
  if ( *a1 )
  {
    while ( v7 != a4 )
    {
      if ( !a3 )
      {
        a2[v5] = v6;
        a2[++v5] = 0;
        goto LABEL_6;
      }
      if ( a3 < 0 )
        return 0;
      ++v4;
LABEL_7:
      v6 = a1[v4];
      v7 = v6;
      if ( !v6 )
        return 0;
    }
    --a3;
LABEL_6:
    ++v4;
    goto LABEL_7;
  }
  return 0;
}


// ===== 82ad54 XP_API_TOLOWER(char const*,char *) =====
char *__fastcall XP_API_TOLOWER(char *result, char *a2)
{
  bool v2; // zf
  int v3; // r4
  char v4; // r2
  int v5; // r3

  v2 = result == nullptr;
  if ( result )
    v2 = a2 == nullptr;
  if ( !v2 )
  {
    v3 = 0;
    v4 = *result;
    if ( *result )
    {
      v5 = 0;
      do
      {
        if ( (unsigned __int8)(v4 - 65) > 0x19u )
          a2[v3] = v4;
        else
          a2[v3] = v4 + 32;
        v4 = result[++v5];
        v3 = v5;
      }
      while ( v4 );
    }
    else
    {
      v3 = (unsigned __int8)*result;
    }
    a2[v3] = 0;
  }
  return result;
}


// ===== 82adc0 XP_DEBUG_SAVE_RECVDATA_LOG(char const*,int) =====
size_t __fastcall XP_DEBUG_SAVE_RECVDATA_LOG(const char *a1, size_t n)
{
  return fwrite(a1, 1u, n, (FILE *)fp_recv);
}


// ===== 82ade8 XP_DEBUG_SAVE_SENDDATA_LOG(char const*,int) =====
size_t __fastcall XP_DEBUG_SAVE_SENDDATA_LOG(const char *a1, size_t n)
{
  return fwrite(a1, 1u, n, (FILE *)fp_send);
}


// ===== 82ae10 XP_API_FILE_WRITE =====
size_t __fastcall XP_API_FILE_WRITE(const void *a1, size_t a2, size_t a3, int a4)
{
  return fwrite(a1, a2, a3, *((FILE **)&l_file_list + a4 - 1));
}


// ===== 82ae3c XP_DEBUG_CLOSE_RECVDATA_LOG(void) =====
int XP_DEBUG_CLOSE_RECVDATA_LOG()
{
  return fclose((FILE *)fp_recv);
}


// ===== 82ae5c XP_DEBUG_CLOSE_SENDDATA_LOG(void) =====
int XP_DEBUG_CLOSE_SENDDATA_LOG()
{
  return fclose((FILE *)fp_send);
}


// ===== 82ae7c XP_API_FILE_CLOSE =====
int __fastcall XP_API_FILE_CLOSE(int a1)
{
  int v1; // r5
  int result; // r0

  v1 = a1 - 1;
  result = fclose(*((FILE **)&l_file_list + a1 - 1));
  *((_DWORD *)&l_file_list + v1) = 0;
  return result;
}


// ===== 82aeb0 XP_DEBUG_OPEN_RECVDATA_LOG(void) =====
FILE *XP_DEBUG_OPEN_RECVDATA_LOG()
{
  FILE *result; // r0

  result = fopen("log_recv.txt", "wt");
  fp_recv = (int)result;
  return result;
}


// ===== 82aef0 XP_DEBUG_OPEN_SENDDATA_LOG(void) =====
FILE *XP_DEBUG_OPEN_SENDDATA_LOG()
{
  FILE *result; // r0

  result = fopen("log_send.txt", "wt");
  fp_send = (int)result;
  return result;
}


// ===== 82af30 XP_API_IP_INT2STR =====
char *__fastcall XP_API_IP_INT2STR(unsigned int a1, char *s)
{
  sprintf(s, "%d.%d.%d.%d", (unsigned __int8)a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1));
  return s;
}


// ===== 82af78 XP_API_FTOA =====
char *__fastcall XP_API_FTOA(float a1, char *a2)
{
  sprintf(a2, "%f", a1);
  return a2;
}


// ===== 82afac XP_API_STRLEN =====
// attributes: thunk
size_t XP_API_STRLEN(const char *a1)
{
  return LC_API_STRLEN_0(a1);
}


// ===== 82afb0 XP_API_GET_RANDOM =====
int __fastcall XP_API_GET_RANDOM(const char *a1)
{
  time_t v2; // r0
  signed int v3; // r0
  int v4; // r3
  int v5; // r4
  int v6; // r2

  v2 = time(nullptr);
  srand48(v2);
  if ( !a1 )
    return lrand48();
  v3 = XP_API_STRLEN(a1);
  if ( v3 <= 0 )
    return lrand48();
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1[v4++];
    v5 += v6;
  }
  while ( v4 != v3 );
  return lrand48() + v5;
}


// ===== 82b014 XP_API_STRTRIM =====
const char *__fastcall XP_API_STRTRIM(const char *a1)
{
  signed int v2; // r0
  int v3; // r12
  int v4; // r3
  int v5; // r2
  int v6; // r1
  bool v7; // zf

  v2 = XP_API_STRLEN(a1);
  if ( v2 > 0 )
  {
    v4 = 0;
    v3 = 0;
    LOBYTE(v5) = 1;
    do
    {
      v6 = (unsigned __int8)a1[v4++];
      if ( v6 == 32 )
        v5 &= 1u;
      else
        v5 = 0;
      v7 = v5 == 0;
      if ( v5 )
        LOBYTE(v5) = 1;
      else
        a1[v3] = v6;
      if ( v7 )
        ++v3;
    }
    while ( v4 != v2 );
  }
  else
  {
    v3 = 0;
  }
  a1[v3] = 0;
  return a1;
}


// ===== 82b074 SSEncDec_Blob2ByteArray(uchar **,char *) =====
signed int __fastcall SSEncDec_Blob2ByteArray(unsigned __int8 **a1, char *a2)
{
  signed int v4; // r10
  int v5; // r0
  signed int v6; // r3
  unsigned __int8 *v7; // r6
  int v8; // r7
  signed int v9; // r4
  int i; // r5
  char KeyFromChar; // r0
  int v12; // r0

  v4 = (6 * LC_API_STRLEN_0(a2)) >> 3;
  v5 = operator new[](v4 + 1);
  v6 = 0;
  v7 = (unsigned __int8 *)v5;
  do
    *(_BYTE *)(v5 + v6++) = 0;
  while ( v4 >= v6 );
  v8 = 0;
  v9 = 0;
  for ( i = 8; v9 < (int)XP_API_STRLEN(a2); ++v9 )
  {
    KeyFromChar = SSEncDec_GetKeyFromChar(a2[v9]);
    v7[v8] |= KeyFromChar << (8 - i);
    if ( i <= 6 )
    {
      if ( v8 < v4 - 1 )
      {
        v12 = v7[++v8] | (KeyFromChar >> i);
        i += 2;
        v7[v8] = v12;
      }
    }
    else
    {
      i -= 6;
    }
  }
  *a1 = v7;
  return v4;
}


// ===== 82b138 XP_API_GET_TIME =====
int XP_API_GET_TIME()
{
  struct timeval v1; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v1, nullptr);
  return v1.tv_usec / 1000 + 1000 * v1.tv_sec;
}


// ===== 82b178 XP_API_FILE_GET_LENGTH =====
int __fastcall XP_API_FILE_GET_LENGTH(int a1)
{
  int v1; // r5
  int v2; // r6
  int v3; // r7

  v1 = a1 - 1;
  fseek(*((FILE **)&l_file_list + a1 - 1), 0, 0);
  v2 = ftell(*((FILE **)&l_file_list + v1));
  fseek(*((FILE **)&l_file_list + v1), 0, 2);
  v3 = ftell(*((FILE **)&l_file_list + v1));
  fseek(*((FILE **)&l_file_list + v1), 0, 0);
  return v3 - v2;
}


// ===== 82b1e8 XP_API_FILE_READ =====
size_t __fastcall XP_API_FILE_READ(void *a1, size_t a2, size_t a3, int a4)
{
  return fread(a1, a2, a3, *((FILE **)&l_file_list + a4 - 1));
}


// ===== 82b214 XP_API_FILE_OPEN =====
int __fastcall XP_API_FILE_OPEN(const char *a1, const char *a2)
{
  int v3; // r8
  FILE *v5; // r0
  char s[400]; // [sp+4h] [bp-198h] BYREF

  sprintf(s, "%s%s", (const char *)RES_PATH, a1);
  _android_log_write(4, "FILENAMEEEEEEEEEEEEEE ", s);
  v3 = 0;
  while ( l_file_list[v3] )
  {
    if ( ++v3 == 8 )
      return 0;
  }
  v5 = fopen(s, a2);
  if ( v5 )
  {
    l_file_list[v3] = v5;
    return v3 + 1;
  }
  else
  {
    _android_log_write(4, "Returnnnnnnnnnnnnnnnnnnnnnnnnnnnn ", s);
    return 0;
  }
}


// ===== 82b318 XP_API_ATOF =====
double __fastcall XP_API_ATOF(const char *a1)
{
  return strtod(a1, nullptr);
}


// ===== 82b320 XP_API_ATOI =====
// attributes: thunk
int XP_API_ATOI(const char *a1)
{
  return LC_API_ATOI_0(a1);
}


// ===== 82b324 XP_API_STRCHR =====
char *__fastcall XP_API_STRCHR(const char *a1, int a2, int a3)
{
  if ( a3 == 1 )
    return strchr(a1, a2);
  else
    return strrchr(a1, a2);
}


// ===== 82b334 XP_API_STRSTR =====
// attributes: thunk
char *XP_API_STRSTR(const char *a1, const char *a2)
{
  return LC_API_STRSTR_0(a1, a2);
}


// ===== 82b338 XP_API_STRCAT =====
// attributes: thunk
char *XP_API_STRCAT(char *a1, const char *a2)
{
  return LC_API_STRCAT_0(a1, a2);
}


// ===== 82b33c XP_API_STRNCPY =====
// attributes: thunk
char *XP_API_STRNCPY(char *a1, const char *a2, size_t a3)
{
  return LC_API_STRNCPY_0(a1, a2, a3);
}


// ===== 82b340 XP_API_STRCPY =====
// attributes: thunk
char *XP_API_STRCPY(char *a1, const char *a2)
{
  return LC_API_STRCPY_0(a1, a2);
}


// ===== 82b344 XP_API_STRCASECMP =====
// attributes: thunk
int XP_API_STRCASECMP(const char *a1, const char *a2)
{
  return LC_API_STRCASECMP_0(a1, a2);
}


// ===== 82b348 XP_API_STRNCMP =====
// attributes: thunk
int XP_API_STRNCMP(const char *a1, const char *a2, size_t a3)
{
  return LC_API_STRNCMP_0(a1, a2, a3);
}


// ===== 82b34c XP_API_STRCMP =====
// attributes: thunk
int XP_API_STRCMP(const char *a1, const char *a2)
{
  return LC_API_STRCMP_0(a1, a2);
}


// ===== 82b350 XP_API_MEMCPY =====
void *__fastcall XP_API_MEMCPY(void *a1, const void *a2, size_t a3)
{
  memcpy(a1, a2, a3);
  return a1;
}


// ===== 82b364 XP_API_MEMSET =====
// attributes: thunk
void *XP_API_MEMSET(void *a1, int a2, size_t a3)
{
  return LC_API_MEMSET_0(a1, a2, a3);
}


// ===== 82b368 XP_API_IP_STR2INT =====
int __fastcall XP_API_IP_STR2INT(char *a1)
{
  int v1; // r5
  int v3; // r10
  char *v4; // r8
  unsigned __int8 v5; // r0
  char v6; // r3
  _DWORD v8[4]; // [sp+14h] [bp-8h] BYREF

  v1 = 0;
  v3 = 0;
  while ( 1 )
  {
    memset(v8, 0, sizeof(v8));
    v4 = XP_API_STRSTR(a1, ".");
    if ( !v4 )
      break;
    XP_API_MEMSET(v8, 0, 0x10u);
    XP_API_MEMCPY(v8, a1, v4 - a1);
    v5 = XP_API_ATOI((const char *)v8);
    v6 = 8 * v1++;
    v3 |= v5 << v6;
    if ( v1 == 4 )
      return v3;
    a1 = v4 + 1;
  }
  XP_API_MEMSET(v8, 0, 0x10u);
  XP_API_STRCPY((char *)v8, a1);
  return v3 | ((unsigned __int8)XP_API_ATOI((const char *)v8) << (8 * v1));
}


// ===== 82b498 SSEncDec_ByteArray2Blob(uchar *,int) =====
void *__fastcall SSEncDec_ByteArray2Blob(unsigned __int8 *a1, int a2)
{
  unsigned __int8 *v2; // r8
  unsigned __int8 *v3; // r5
  int v4; // r7
  int v5; // r7
  void *v7; // r4
  bool v8; // r8
  int v9; // r3
  int v10; // r9
  int v11; // r11
  int v12; // r8
  int v13; // r10
  char CharFromKeyByIndex; // r0
  int v15; // r3

  v3 = a1;
  v4 = 8 * a2 / 6;
  if ( v4 )
    v2 = (unsigned __int8 *)(v4 + 3);
  else
    a1 = (_BYTE *)(&dword_0 + 2);
  if ( v4 )
  {
    a1 = v2;
    v5 = v4 + 2;
  }
  else
  {
    v2 = a1;
    v5 = 1;
  }
  v7 = (void *)operator new[]((unsigned int)a1);
  XP_API_MEMSET(v7, 0, (size_t)v2);
  if ( v7 )
  {
    if ( a2 > 0 )
    {
      v10 = 0;
      v11 = 1;
      v12 = 8;
      v13 = 0;
      while ( 1 )
      {
        v15 = (int)v3[v13] >> (8 - v12);
        if ( v12 <= 5 )
        {
          if ( a2 <= ++v13 )
          {
            *((_BYTE *)v7 + v10) = SSEncDec_GetCharFromKeyByIndex(v15 & 0x3F);
            return v7;
          }
          CharFromKeyByIndex = SSEncDec_GetCharFromKeyByIndex((v15 | (v3[v13] << v12)) & 0x3F);
          v12 += 2;
          *((_BYTE *)v7 + v10) = CharFromKeyByIndex;
        }
        else
        {
          v12 -= 6;
          if ( !v12 )
          {
            ++v13;
            v12 = 8;
          }
          *((_BYTE *)v7 + v10) = SSEncDec_GetCharFromKeyByIndex(v15 & 0x3F);
          v9 = v11;
          if ( v13 >= a2 )
          {
            v8 = v12 == 8;
            goto LABEL_19;
          }
        }
        ++v10;
        ++v11;
      }
    }
    v8 = 1;
    v9 = 0;
LABEL_19:
    if ( v5 != 1 && v8 )
      *((_BYTE *)v7 + v9) = SSEncDec_GetCharFromKeyByIndex(0);
  }
  return v7;
}


// ===== 82b5c8 SSEncDec_String2Blob(char *) =====
void *__fastcall SSEncDec_String2Blob(char *a1)
{
  size_t v2; // r1

  v2 = LC_API_STRLEN_0(a1);
  return SSEncDec_ByteArray2Blob((unsigned __int8 *)a1, v2);
}


// ===== 82b5e4 SSEncDec_Blob2String(char *) =====
unsigned __int8 *__fastcall SSEncDec_Blob2String(char *a1)
{
  size_t v2; // r0
  size_t v3; // r0
  unsigned __int8 *v5; // [sp+4h] [bp-4h] BYREF

  v2 = LC_API_STRLEN_0(a1);
  v5 = (unsigned __int8 *)operator new[](v2);
  v3 = LC_API_STRLEN_0(a1);
  XP_API_MEMSET(v5, 0, v3);
  SSEncDec_Blob2ByteArray(&v5, a1);
  return v5;
}


// ===== 82b634 XP_API_PARSE_DATA_NEW =====
int __fastcall XP_API_PARSE_DATA_NEW(unsigned __int8 *a1, void **a2, int a3, int a4)
{
  int v5; // r7
  int v7; // r1
  int v8; // r6
  int v9; // r0
  size_t v10; // r7
  void *v11; // r0

  v5 = 0;
  v7 = *a1;
  v8 = -1;
  v9 = (char)v7;
  if ( v7 )
  {
    while ( v9 != a4 )
    {
      if ( !a3 )
      {
        if ( v8 == -1 )
          v8 = v5;
        goto LABEL_7;
      }
      if ( a3 < 0 )
        goto LABEL_9;
      ++v5;
LABEL_8:
      v9 = (char)a1[v5];
      if ( !a1[v5] )
        goto LABEL_9;
    }
    --a3;
LABEL_7:
    ++v5;
    goto LABEL_8;
  }
LABEL_9:
  v10 = v5 - v8;
  v11 = (void *)operator new[](v10 + 1);
  *a2 = v11;
  XP_API_MEMSET(v11, 0, v10 + 1);
  XP_API_MEMCPY(*a2, &a1[v8], v10);
  return v8;
}


// ===== 82b6cc TranslateUtf82Unicode(ushort **,char *,int,int) =====
int __fastcall TranslateUtf82Unicode(unsigned __int16 **a1, char *a2, int a3, int a4)
{
  unsigned __int16 *v7; // r0
  unsigned int v8; // r7

  if ( a4 )
  {
    v8 = 2 * (a3 + 1);
    v7 = (unsigned __int16 *)operator new[](v8);
    *a1 = v7;
  }
  else
  {
    v7 = *a1;
    v8 = 2 * (a3 + 1);
  }
  XP_API_MEMSET(v7, 0, v8);
  return ConvertUTF8ToUnicode(*a1, a2, a3);
}


// ===== 82b728 TranslateUnicode2Utf8(char **,ushort *,int,int) =====
int __fastcall TranslateUnicode2Utf8(char **a1, unsigned __int16 *a2, int a3, int a4)
{
  char *v7; // r0
  unsigned int v8; // r7

  if ( a4 )
  {
    v8 = 3 * a3 + 1;
    v7 = (char *)operator new[](v8);
    *a1 = v7;
  }
  else
  {
    v7 = *a1;
    v8 = 3 * a3 + 1;
  }
  XP_API_MEMSET(v7, 0, v8);
  return ConvertUnicodeToUTF8(*a1, a2, a3);
}


// ===== 82b784 XP_DEBUG_OUT =====
int XP_DEBUG_OUT(const char *a1, ...)
{
  signed int v2; // r7
  signed int v3; // r4
  int v4; // r3
  int v5; // r5
  int v6; // r2
  int v7; // r2
  const char **v8; // r2
  size_t v9; // r8
  int *v11; // r0
  int v12; // r0
  size_t v13; // r8
  int v14; // [sp+0h] [bp-30h]
  int v15; // [sp+0h] [bp-30h]
  const char *v16; // [sp+4h] [bp-2Ch]
  va_list v17; // [sp+1Ch] [bp-14h]
  char v18[81888]; // [sp+20h] [bp-10h] BYREF
  char _14020[60]; // [sp+14020h] [bp+13FF0h] BYREF
  va_list va; // [sp+1405Ch] [bp+1402Ch] BYREF

  va_start(va, a1);
  XP_API_MEMSET(v18, 0, 0x14000u);
  va_copy(v17, va);
  v2 = XP_API_STRLEN(a1);
  if ( v2 > 0 )
  {
    v3 = 0;
    v4 = -81940;
    v5 = 0;
    while ( 1 )
    {
      v6 = (unsigned __int8)a1[v3];
      if ( v6 != 37 )
        break;
      v7 = a1[v3 + 1];
      if ( v7 == 100 )
      {
        v11 = *(int **)&_14020[v4 + 16];
        *(_DWORD *)&_14020[v4 + 16] = v11 + 1;
        v12 = *v11;
        memset(_14020, 0, 12);
        v15 = v4;
        XP_API_ITOA(v12, _14020, 10);
        v13 = XP_API_STRLEN(_14020);
        XP_API_MEMCPY(&v18[v5], _14020, v13);
        v5 += v13;
        ++v3;
        v4 = v15;
        goto LABEL_3;
      }
      if ( v7 == 115 )
      {
        v8 = *(const char ***)&_14020[v4 + 16];
        *(_DWORD *)&_14020[v4 + 16] = v8 + 1;
        if ( *v8 )
        {
          v14 = v4;
          v16 = *v8;
          v9 = XP_API_STRLEN(*v8);
          XP_API_MEMCPY(&v18[v5], v16, v9);
          v4 = v14;
          v5 += v9;
        }
        v3 += 2;
        if ( v2 <= v3 )
          return _android_log_print(4, "GLXPlayer", "%s", v18);
      }
      else
      {
LABEL_3:
        if ( v2 <= ++v3 )
          return _android_log_print(4, "GLXPlayer", "%s", v18);
      }
    }
    v18[v5++] = v6;
    goto LABEL_3;
  }
  return _android_log_print(4, "GLXPlayer", "%s", v18);
}


// ===== 82b9a0 XP_API_STRNEW =====
void *__fastcall XP_API_STRNEW(const char *a1)
{
  size_t v2; // r0
  size_t v3; // r7
  size_t v4; // r5
  void *v5; // r4

  v2 = XP_API_STRLEN(a1);
  v3 = v2 + 1;
  v4 = v2;
  v5 = (void *)operator new[](v2 + 1);
  XP_API_MEMSET(v5, 0, v3);
  XP_API_MEMCPY(v5, a1, v4);
  return v5;
}


// ===== 82b9e4 XP_API_FREE =====
void __fastcall XP_API_FREE(void *p)
{
  if ( p )
    free(p);
}


// ===== 82b9f0 XP_API_MALLOC =====
// attributes: thunk
void *XP_API_MALLOC(size_t byte_count)
{
  return LC_API_MALLOC_0(byte_count);
}


// ===== 82b9f4 GLXPlayerUserFriend::GetFriendsCount(void) =====
int __fastcall GLXPlayerUserFriend::GetFriendsCount(GLXPlayerUserFriend *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 82b9fc GLXPlayerUserFriend::GetUserNumber(int) =====
int __fastcall GLXPlayerUserFriend::GetUserNumber(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 16);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82ba2c GLXPlayerUserFriend::GetName(int) =====
int __fastcall GLXPlayerUserFriend::GetName(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 17);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82ba5c GLXPlayerUserFriend::GetCountry(int) =====
int __fastcall GLXPlayerUserFriend::GetCountry(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 18);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82ba8c GLXPlayerUserFriend::GetReputation(int) =====
unsigned __int64 __fastcall GLXPlayerUserFriend::GetReputation(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 19);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0xBFF0000000000000LL;
  else
    return *(_QWORD *)(8 * a2 + v2);
}


// ===== 82bac8 GLXPlayerUserFriend::GetBadReputationCount(int) =====
int __fastcall GLXPlayerUserFriend::GetBadReputationCount(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 20);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82baf8 GLXPlayerUserFriend::GetGoodReputationCount(int) =====
int __fastcall GLXPlayerUserFriend::GetGoodReputationCount(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 21);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bb28 GLXPlayerUserFriend::GetState(int) =====
int __fastcall GLXPlayerUserFriend::GetState(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 22);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bb58 GLXPlayerUserFriend::GetCurrentGame(int) =====
int __fastcall GLXPlayerUserFriend::GetCurrentGame(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 23);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bb88 GLXPlayerUserFriend::GetTrophy(int) =====
int __fastcall GLXPlayerUserFriend::GetTrophy(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 24);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bbb8 GLXPlayerUserFriend::GetTotalTrophyScore(int) =====
int __fastcall GLXPlayerUserFriend::GetTotalTrophyScore(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 28);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bbe8 GLXPlayerUserFriend::GetLanguage(int) =====
int __fastcall GLXPlayerUserFriend::GetLanguage(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 25);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bc18 GLXPlayerUserFriend::GetAvatarLastUpdate(int) =====
int __fastcall GLXPlayerUserFriend::GetAvatarLastUpdate(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 27);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bc48 GLXPlayerUserFriend::GetAvatarKey(int) =====
int __fastcall GLXPlayerUserFriend::GetAvatarKey(GLXPlayerUserFriend *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 26);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 > *((_DWORD *)this + 15) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 82bc78 GLXPlayerUserFriend::clearFriendsList(void) =====
void __fastcall GLXPlayerUserFriend::clearFriendsList(GLXPlayerUserFriend *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  _DWORD *v8; // r2
  int v9; // r3
  int i; // r5
  void *v11; // r0
  _DWORD *v12; // r2
  int v13; // r3
  int j; // r5
  void *v15; // r0
  _DWORD *v16; // r2
  int v17; // r3
  int k; // r5
  void *v19; // r0
  _DWORD *v20; // r2
  int v21; // r3
  int m; // r5
  void *v23; // r0
  _DWORD *v24; // r2
  int v25; // r3
  int n; // r5
  void *v27; // r0
  _DWORD *v28; // r2
  int v29; // r3
  int ii; // r5
  void *v31; // r0
  _DWORD *v32; // r2
  int v33; // r3
  int jj; // r5
  void *v35; // r0

  v2 = *((void **)this + 19);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 19) = 0;
  }
  v3 = *((void **)this + 20);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 20) = 0;
  }
  v4 = *((void **)this + 21);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 21) = 0;
  }
  v5 = *((void **)this + 22);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 22) = 0;
  }
  v6 = *((void **)this + 24);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *((_DWORD *)this + 24) = 0;
  }
  v7 = *((void **)this + 28);
  if ( v7 )
  {
    LC_API_FREE_0(v7);
    *((_DWORD *)this + 28) = 0;
  }
  v8 = *((_DWORD **)this + 16);
  if ( v8 )
  {
    v9 = *((_DWORD *)this + 15);
    if ( v9 <= 0 )
      goto LABEL_20;
    for ( i = 0; i < v9; ++i )
    {
      v11 = (void *)v8[i];
      if ( v11 )
      {
        operator delete[](v11);
        *(_DWORD *)(*((_DWORD *)this + 16) + 4 * i) = 0;
        v9 = *((_DWORD *)this + 15);
        v8 = *((_DWORD **)this + 16);
      }
    }
    if ( v8 )
LABEL_20:
      operator delete[](v8);
    *((_DWORD *)this + 16) = 0;
  }
  v12 = *((_DWORD **)this + 17);
  if ( v12 )
  {
    v13 = *((_DWORD *)this + 15);
    if ( v13 <= 0 )
      goto LABEL_29;
    for ( j = 0; j < v13; ++j )
    {
      v15 = (void *)v12[j];
      if ( v15 )
      {
        operator delete[](v15);
        *(_DWORD *)(*((_DWORD *)this + 17) + 4 * j) = 0;
        v13 = *((_DWORD *)this + 15);
        v12 = *((_DWORD **)this + 17);
      }
    }
    if ( v12 )
LABEL_29:
      operator delete[](v12);
    *((_DWORD *)this + 17) = 0;
  }
  v16 = *((_DWORD **)this + 18);
  if ( v16 )
  {
    v17 = *((_DWORD *)this + 15);
    if ( v17 <= 0 )
      goto LABEL_38;
    for ( k = 0; k < v17; ++k )
    {
      v19 = (void *)v16[k];
      if ( v19 )
      {
        operator delete[](v19);
        *(_DWORD *)(*((_DWORD *)this + 18) + 4 * k) = 0;
        v17 = *((_DWORD *)this + 15);
        v16 = *((_DWORD **)this + 18);
      }
    }
    if ( v16 )
LABEL_38:
      operator delete[](v16);
    *((_DWORD *)this + 18) = 0;
  }
  v20 = *((_DWORD **)this + 23);
  if ( v20 )
  {
    v21 = *((_DWORD *)this + 15);
    if ( v21 <= 0 )
      goto LABEL_47;
    for ( m = 0; m < v21; ++m )
    {
      v23 = (void *)v20[m];
      if ( v23 )
      {
        operator delete[](v23);
        *(_DWORD *)(*((_DWORD *)this + 23) + 4 * m) = 0;
        v21 = *((_DWORD *)this + 15);
        v20 = *((_DWORD **)this + 23);
      }
    }
    if ( v20 )
LABEL_47:
      operator delete[](v20);
    *((_DWORD *)this + 23) = 0;
  }
  v24 = *((_DWORD **)this + 25);
  if ( v24 )
  {
    v25 = *((_DWORD *)this + 15);
    if ( v25 <= 0 )
      goto LABEL_56;
    for ( n = 0; n < v25; ++n )
    {
      v27 = (void *)v24[n];
      if ( v27 )
      {
        operator delete[](v27);
        *(_DWORD *)(*((_DWORD *)this + 25) + 4 * n) = 0;
        v25 = *((_DWORD *)this + 15);
        v24 = *((_DWORD **)this + 25);
      }
    }
    if ( v24 )
LABEL_56:
      operator delete[](v24);
    *((_DWORD *)this + 25) = 0;
  }
  v28 = *((_DWORD **)this + 27);
  if ( v28 )
  {
    v29 = *((_DWORD *)this + 15);
    if ( v29 <= 0 )
      goto LABEL_65;
    for ( ii = 0; ii < v29; ++ii )
    {
      v31 = (void *)v28[ii];
      if ( v31 )
      {
        operator delete[](v31);
        *(_DWORD *)(*((_DWORD *)this + 27) + 4 * ii) = 0;
        v29 = *((_DWORD *)this + 15);
        v28 = *((_DWORD **)this + 27);
      }
    }
    if ( v28 )
LABEL_65:
      operator delete[](v28);
    *((_DWORD *)this + 27) = 0;
  }
  v32 = *((_DWORD **)this + 26);
  if ( v32 )
  {
    v33 = *((_DWORD *)this + 15);
    if ( v33 <= 0 )
      goto LABEL_74;
    for ( jj = 0; jj < v33; ++jj )
    {
      v35 = (void *)v32[jj];
      if ( v35 )
      {
        operator delete[](v35);
        *(_DWORD *)(*((_DWORD *)this + 26) + 4 * jj) = 0;
        v33 = *((_DWORD *)this + 15);
        v32 = *((_DWORD **)this + 26);
      }
    }
    if ( v32 )
LABEL_74:
      operator delete[](v32);
    *((_DWORD *)this + 26) = 0;
  }
  *((_DWORD *)this + 15) = 0;
}


// ===== 82bfd8 GLXPlayerUserFriend::processFriendsList(char *) =====
void __fastcall GLXPlayerUserFriend::processFriendsList(GLXPlayerUserFriend *this, char *a2)
{
  int v4; // r0
  int v5; // r0
  int v6; // r3
  int v7; // r0
  int v8; // r3
  int v9; // r0
  int v10; // r3
  int v11; // r0
  int v12; // r3
  int v13; // r0
  int v14; // r3
  int v15; // r0
  int v16; // r3
  int v17; // r0
  int v18; // r3
  int v19; // r0
  int v20; // r3
  int v21; // r0
  int v22; // r3
  int v23; // r0
  int v24; // r3
  int v25; // r0
  int v26; // r3
  int v27; // r0
  int v28; // r3
  int v29; // r5
  int v30; // [sp+4h] [bp-390h]
  int v31; // [sp+4h] [bp-390h]
  int v32; // [sp+4h] [bp-390h]
  int v33; // [sp+4h] [bp-390h]
  int v34; // [sp+4h] [bp-390h]
  int v35; // [sp+4h] [bp-390h]
  int v36; // [sp+4h] [bp-390h]
  int v37; // [sp+4h] [bp-390h]
  int v38; // [sp+4h] [bp-390h]
  int v39; // [sp+4h] [bp-390h]
  int v40; // [sp+4h] [bp-390h]
  int v41; // [sp+4h] [bp-390h]
  int v42; // [sp+4h] [bp-390h]
  char v43[512]; // [sp+Ch] [bp-388h] BYREF
  char v44[256]; // [sp+20Ch] [bp-188h] BYREF
  char v45[128]; // [sp+30Ch] [bp-88h] BYREF

  GLXPlayerUserFriend::clearFriendsList(this);
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
    {
      LC_API_MEMSET_0(v43, 0, 0x200u);
      LC_API_MEMSET_0(v44, 0, 0x100u);
      getValue(a2, v44, 0, 124);
      XP_API_MEMSET(v44, 0, 0x100u);
      getValue(a2, v44, 1, 124);
      *((_DWORD *)this + 15) = XP_API_ATOI(v44);
      XP_API_MEMSET(v44, 0, 0x100u);
      v4 = *((_DWORD *)this + 15);
      if ( v4 )
      {
        v5 = operator new[](8 * v4);
        v6 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 19) = v5;
        v7 = operator new[](4 * v6);
        v8 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 20) = v7;
        v9 = operator new[](4 * v8);
        v10 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 21) = v9;
        v11 = operator new[](4 * v10);
        v12 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 22) = v11;
        v13 = operator new[](4 * v12);
        v14 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 24) = v13;
        v15 = operator new[](4 * v14);
        v16 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 28) = v15;
        v17 = operator new[](4 * v16);
        v18 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 16) = v17;
        v19 = operator new[](4 * v18);
        v20 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 17) = v19;
        v21 = operator new[](4 * v20);
        v22 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 18) = v21;
        v23 = operator new[](4 * v22);
        v24 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 23) = v23;
        v25 = operator new[](4 * v24);
        v26 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 25) = v25;
        v27 = operator new[](4 * v26);
        v28 = *((_DWORD *)this + 15);
        *((_DWORD *)this + 27) = v27;
        *((_DWORD *)this + 26) = operator new[](4 * v28);
        XP_API_MEMSET(v44, 0, 0x100u);
        getValue(a2, v44, 2, 124);
        if ( *((int *)this + 15) > 0 )
        {
          v29 = 0;
          do
          {
            XP_API_MEMSET(v43, 0, 0x200u);
            getValue(a2, v43, v29 + 3, 124);
            v30 = *((_DWORD *)this + 16);
            *(_DWORD *)(v30 + 4 * v29) = operator new[](0x80u);
            v31 = *((_DWORD *)this + 17);
            *(_DWORD *)(v31 + 4 * v29) = operator new[](0x80u);
            v32 = *((_DWORD *)this + 18);
            *(_DWORD *)(v32 + 4 * v29) = operator new[](0x80u);
            v33 = *((_DWORD *)this + 23);
            *(_DWORD *)(v33 + 4 * v29) = operator new[](0x80u);
            v34 = *((_DWORD *)this + 25);
            *(_DWORD *)(v34 + 4 * v29) = operator new[](3u);
            v35 = *((_DWORD *)this + 27);
            *(_DWORD *)(v35 + 4 * v29) = operator new[](0x20u);
            v36 = *((_DWORD *)this + 26);
            *(_DWORD *)(v36 + 4 * v29) = operator new[](0x20u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 16) + 4 * v29), 0, 0x80u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 17) + 4 * v29), 0, 0x80u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 18) + 4 * v29), 0, 0x80u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 23) + 4 * v29), 0, 0x80u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 25) + 4 * v29), 0, 3u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 27) + 4 * v29), 0, 0x20u);
            XP_API_MEMSET(*(void **)(*((_DWORD *)this + 26) + 4 * v29), 0, 0x20u);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 16) + 4 * v29), 0, 94);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 17) + 4 * v29), 1, 94);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 18) + 4 * v29), 2, 94);
            XP_API_MEMSET(v44, 0, 0x100u);
            getValue(v43, v44, 3, 94);
            LC_API_MEMSET_0(v45, 0, 0x80u);
            XP_API_MEMSET(v45, 0, 0x80u);
            getValue(v44, v45, 0, 44);
            v37 = *((_DWORD *)this + 19);
            *(double *)(v37 + 8 * v29) = XP_API_ATOF(v45);
            XP_API_MEMSET(v45, 0, 0x80u);
            getValue(v44, v45, 1, 44);
            v38 = *((_DWORD *)this + 20);
            *(_DWORD *)(v38 + 4 * v29) = XP_API_ATOI(v45);
            XP_API_MEMSET(v45, 0, 0x80u);
            getValue(v44, v45, 2, 44);
            v39 = *((_DWORD *)this + 21);
            *(_DWORD *)(v39 + 4 * v29) = XP_API_ATOI(v45);
            XP_API_MEMSET(v44, 0, 0x100u);
            getValue(v43, v44, 4, 94);
            v40 = *((_DWORD *)this + 28);
            *(_DWORD *)(v40 + 4 * v29) = XP_API_ATOI(v44);
            XP_API_MEMSET(v44, 0, 0x100u);
            getValue(v43, v44, 5, 94);
            v41 = *((_DWORD *)this + 22);
            *(_DWORD *)(v41 + 4 * v29) = XP_API_ATOI(v44);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 23) + 4 * v29), 6, 94);
            XP_API_MEMSET(v44, 0, 0x100u);
            getValue(v43, v44, 7, 94);
            v42 = *((_DWORD *)this + 24);
            *(_DWORD *)(v42 + 4 * v29) = XP_API_ATOI(v44);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 25) + 4 * v29), 8, 94);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 26) + 4 * v29), 9, 94);
            getValue(v43, *(_BYTE **)(*((_DWORD *)this + 27) + 4 * v29++), 10, 94);
          }
          while ( *((_DWORD *)this + 15) > v29 );
        }
      }
    }
  }
}


// ===== 82c584 GLXPlayerUserFriend::sendGetUserFriendsCount(void) =====
int __fastcall GLXPlayerUserFriend::sendGetUserFriendsCount(GLXPlayerUserFriend *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 73, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserFriendsCount before String2Blob -> buffer = %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerUserFriend *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 82c640 GLXPlayerUserFriend::sendGetUserFriends(int,int) =====
int __fastcall GLXPlayerUserFriend::sendGetUserFriends(GLXPlayerUserFriend *this, int a2, int a3)
{
  char v7[4]; // [sp+14h] [bp-1004h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s|a|%d|c|%d|", 61, *((_DWORD *)this + 2), *((const char **)this + 3), a2, a3);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserFriends before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUserFriend *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 82c708 GLXPlayerUserFriend::sendDelUserFriend(char *,bool) =====
int __fastcall GLXPlayerUserFriend::sendDelUserFriend(GLXPlayerUserFriend *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  if ( a3 )
    sprintf(v7, "f|%d|i|%d|u|%s|un|%s|", 60, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
  else
    sprintf(v7, "f|%d|i|%d|u|%s|n|%s|", 60, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendDelUserFriend before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUserFriend *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 82c7f4 GLXPlayerUserFriend::sendConfirmUserFriend(char *,int,bool) =====
int __fastcall GLXPlayerUserFriend::sendConfirmUserFriend(GLXPlayerUserFriend *this, char *a2, int a3, int a4)
{
  int v4; // r9
  char v9[4]; // [sp+14h] [bp-1004h] BYREF

  v4 = a3;
  if ( a3 )
    v4 = 1;
  XP_API_MEMSET(v9, 0, 0x1000u);
  if ( a4 )
    sprintf(v9, "f|%d|i|%d|u|%s|un|%s|c|%d|", 62, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2, v4);
  else
    sprintf(v9, "f|%d|i|%d|u|%s|n|%s|c|%d|", 62, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2, v4);
  XP_DEBUG_OUT("GLXPlayerUser::sendConfirmUserFriend before String2Blob -> buffer = %s\n", v9);
  return (*(int (__fastcall **)(GLXPlayerUserFriend *, char *))(*(_DWORD *)this + 12))(this, v9);
}


// ===== 82c8ec GLXPlayerUserFriend::sendAddUserFriend(char *,char *,bool) =====
int __fastcall GLXPlayerUserFriend::sendAddUserFriend(GLXPlayerUserFriend *this, char *a2, char *a3, int a4)
{
  char v9[4]; // [sp+Ch] [bp-1104h] BYREF
  char v10[260]; // [sp+100Ch] [bp-104h] BYREF

  XP_API_MEMSET(v9, 0, 0x1000u);
  if ( a4 )
    sprintf(v9, "f|%d|i|%d|u|%s|un|%s|", 59, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
  else
    sprintf(v9, "f|%d|i|%d|u|%s|n|%s|", 59, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
  if ( a3 )
  {
    LC_API_MEMSET_0(v10, 0, 0x100u);
    sprintf(v10, "m|%s|", a3);
    XP_API_STRCAT(v9, v10);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendAddUserFriend before String2Blob -> buffer = %s\n", v9);
  return (*(int (__fastcall **)(GLXPlayerUserFriend *, char *))(*(_DWORD *)this + 12))(this, v9);
}


// ===== 82ca20 GLXPlayerUserFriend::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerUserFriend::OnUpdateSuccess(char **this, int a2)
{
  char *v4; // r0
  _DWORD v6[2]; // [sp+4h] [bp-Ch] BYREF

  if ( a2 == 61 )
  {
    GLXPlayerUserFriend::processFriendsList((GLXPlayerUserFriend *)this, *(this + 9));
  }
  else if ( a2 == 73 )
  {
    GLXPlayerUserFriend::clearFriendsList((GLXPlayerUserFriend *)this);
    v4 = *(this + 9);
    v6[0] = 0;
    v6[1] = 0;
    getValue(v4, v6, 0, 124);
    *(this + 15) = (char *)XP_API_ATOI((const char *)v6);
  }
  return GLXPlayerWebComponent::OnUpdateSuccess((GLXPlayerWebComponent *)this, a2);
}


// ===== 82cacc GLXPlayerUserFriend::~GLXPlayerUserFriend() =====
void __fastcall GLXPlayerUserFriend::~GLXPlayerUserFriend(GLXPlayerUserFriend *this)
{
  *(_DWORD *)this = off_992DF0;
  GLXPlayerUserFriend::clearFriendsList(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 82cb08 GLXPlayerUserFriend::~GLXPlayerUserFriend() =====
void __fastcall GLXPlayerUserFriend::~GLXPlayerUserFriend(GLXPlayerUserFriend *this)
{
  GLXPlayerUserFriend::~GLXPlayerUserFriend(this);
  LC_API_FREE_0(this);
}


// ===== 82cb24 GLXPlayerUserFriend::~GLXPlayerUserFriend() =====
void __fastcall GLXPlayerUserFriend::~GLXPlayerUserFriend(GLXPlayerUserFriend *this)
{
  *(_DWORD *)this = off_992DF0;
  GLXPlayerUserFriend::clearFriendsList(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 82cb60 GLXPlayerUserFriend::GLXPlayerUserFriend(void) =====
void __fastcall GLXPlayerUserFriend::GLXPlayerUserFriend(GLXPlayerUserFriend *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992DF0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 27) = 0;
}


// ===== 82cbf8 GLXPlayerUserFriend::GLXPlayerUserFriend(void) =====
void __fastcall GLXPlayerUserFriend::GLXPlayerUserFriend(GLXPlayerUserFriend *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992DF0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 27) = 0;
}


// ===== 82cc90 GLXPlayerComponent::GLXPlayerComponent(void) =====
void __fastcall GLXPlayerComponent::GLXPlayerComponent(GLXPlayerComponent *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_992E20;
  *((_DWORD *)this + 2) = 0;
}


// ===== 82ccc4 GLXPlayerComponent::GLXPlayerComponent(void) =====
void __fastcall GLXPlayerComponent::GLXPlayerComponent(GLXPlayerComponent *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_992E20;
  *((_DWORD *)this + 2) = 0;
}


// ===== 82ccf8 GLXPlayerComponent::RegisterObserver(GLXPlayerObserver *) =====
int __fastcall GLXPlayerComponent::RegisterObserver(int this, GLXPlayerObserver *a2)
{
  *(_DWORD *)(this + 4) = a2;
  return this;
}


// ===== 82cd00 GLXPlayerComponent::SetGGI(ulong) =====
int __fastcall GLXPlayerComponent::SetGGI(int this, unsigned int a2)
{
  *(_DWORD *)(this + 8) = a2;
  return this;
}


// ===== 82cd08 GLXPlayerComponent::GetGGI(void) =====
int __fastcall GLXPlayerComponent::GetGGI(GLXPlayerComponent *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 82cd10 GLXPlayerComponent::GetUID(void) =====
int __fastcall GLXPlayerComponent::GetUID(GLXPlayerComponent *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 82cd18 GLXPlayerComponent::~GLXPlayerComponent() =====
void __fastcall GLXPlayerComponent::~GLXPlayerComponent(GLXPlayerComponent *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_992E20;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 82cd64 GLXPlayerComponent::~GLXPlayerComponent() =====
void __fastcall GLXPlayerComponent::~GLXPlayerComponent(GLXPlayerComponent *this)
{
  GLXPlayerComponent::~GLXPlayerComponent(this);
  LC_API_FREE_0(this);
}


// ===== 82cd80 GLXPlayerComponent::~GLXPlayerComponent() =====
void __fastcall GLXPlayerComponent::~GLXPlayerComponent(GLXPlayerComponent *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_992E20;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 82cdcc GLXPlayerComponent::SetUID(char *) =====
void *__fastcall GLXPlayerComponent::SetUID(GLXPlayerComponent *this, char *a2)
{
  void *v3; // r0
  void *result; // r0

  v3 = *((void **)this + 3);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 3) = 0;
  }
  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 3) = result;
  return result;
}


// ===== 82ce00 GLXPlayerHttp::IsSendByPost(void) =====
int __fastcall GLXPlayerHttp::IsSendByPost(GLXPlayerHttp *this)
{
  return *((unsigned __int8 *)this + 1060);
}


// ===== 82ce08 GLXPlayerHttp::Start(void) =====
int __fastcall GLXPlayerHttp::Start(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 12))(*(_DWORD *)(this + 4));
  return this;
}


// ===== 82ce2c GLXPlayerHttp::GetServerAddress(void) =====
int __fastcall GLXPlayerHttp::GetServerAddress(GLXPlayerHttp *this)
{
  return *((_DWORD *)this + 260);
}


// ===== 82ce34 GLXPlayerHttp::GetRequestData(void) =====
char *__fastcall GLXPlayerHttp::GetRequestData(GLXPlayerHttp *this)
{
  if ( *((_BYTE *)this + 1060) )
    return *((char **)this + 263);
  else
    return (char *)this + 8;
}


// ===== 82ce48 GLXPlayerHttp::UpdateRequest(void) =====
int __fastcall GLXPlayerHttp::UpdateRequest(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 4);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*(_DWORD *)(this + 4));
  return this;
}


// ===== 82ce6c GLXPlayerHttp::IsInProgress(void) =====
int __fastcall GLXPlayerHttp::IsInProgress(GLXPlayerHttp *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*((_DWORD *)this + 1));
  else
    return 0;
}


// ===== 82ce98 GLXPlayerHttp::IsErrorOccurred(void) =====
int __fastcall GLXPlayerHttp::IsErrorOccurred(GLXPlayerHttp *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 28))(*((_DWORD *)this + 1));
  else
    return 0;
}


// ===== 82cec4 GLXPlayerHttp::GetResponse(void) =====
int __fastcall GLXPlayerHttp::GetResponse(GLXPlayerHttp *this)
{
  return *((_DWORD *)this + 258);
}


// ===== 82cecc GLXPlayerHttp::GetResponseLen(void) =====
int __fastcall GLXPlayerHttp::GetResponseLen(GLXPlayerHttp *this)
{
  return *((_DWORD *)this + 259);
}


// ===== 82ced4 GLXPlayerHttp::SetResponseLen(int) =====
int __fastcall GLXPlayerHttp::SetResponseLen(int this, int a2)
{
  *(_DWORD *)(this + 1036) = a2;
  return this;
}


// ===== 82cedc GLXPlayerHttp::GetSendPercentage(void) =====
GLXPlayerSocket *__fastcall GLXPlayerHttp::GetSendPercentage(GLXPlayerHttp *this)
{
  GLXPlayerSocket *result; // r0

  result = *((GLXPlayerSocket **)this + 1);
  if ( result )
    return (GLXPlayerSocket *)GLXPlayerSocket::GetSendPercentage(result);
  return result;
}


// ===== 82ceec GLXPlayerHttp::Cancel(void) =====
void __fastcall GLXPlayerHttp::Cancel(GLXPlayerHttp *this)
{
  int v1; // r3
  void *v3; // r0
  void *v4; // r0

  v1 = *((_DWORD *)this + 1);
  if ( v1 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 20))(*((_DWORD *)this + 1));
  v3 = *((void **)this + 263);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 263) = 0;
  }
  v4 = *((void **)this + 258);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 258) = 0;
  }
  *((_DWORD *)this + 259) = 0;
}


// ===== 82cf4c GLXPlayerHttp::downloadFile(char *,char *,char *,char *,long,long) =====
void __fastcall GLXPlayerHttp::downloadFile(
        GLXPlayerHttp *this,
        char *a2,
        char *a3,
        char *a4,
        char *a5,
        int a6,
        int a7)
{
  void *v9; // r0
  char v12[20]; // [sp+8h] [bp-1Ch] BYREF

  XP_DEBUG_OUT("GLXPlayerHttp::downloadFile()\n");
  memset(v12, 0, sizeof(v12));
  XP_API_MEMSET((char *)this + 8, 0, 0x400u);
  XP_API_STRCAT((char *)this + 8, "GET ");
  XP_API_STRCAT((char *)this + 8, a3);
  XP_API_STRCAT((char *)this + 8, " HTTP/1.1");
  XP_API_STRCAT((char *)this + 8, "\r\n");
  XP_API_STRCAT((char *)this + 8, "Host:");
  XP_API_STRCAT((char *)this + 8, a2);
  XP_API_STRCAT((char *)this + 8, "\r\n");
  if ( a5 )
  {
    XP_API_STRCAT((char *)this + 8, "Referer:");
    XP_API_STRCAT((char *)this + 8, a5);
    XP_API_STRCAT((char *)this + 8, "\r\n");
  }
  XP_API_STRCAT((char *)this + 8, "Accept:*/*");
  XP_API_STRCAT((char *)this + 8, "\r\n");
  XP_API_STRCAT((char *)this + 8, "User-Agent:Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)");
  XP_API_STRCAT((char *)this + 8, "\r\n");
  XP_API_STRCAT((char *)this + 8, "Connection:Keep-Alive");
  XP_API_STRCAT((char *)this + 8, "\r\n");
  if ( a4 )
  {
    XP_API_STRCAT((char *)this + 8, "Set Cookie:0");
    XP_API_STRCAT((char *)this + 8, a4);
    XP_API_STRCAT((char *)this + 8, "\r\n");
  }
  if ( a6 >= 0 )
  {
    XP_API_STRCAT((char *)this + 8, "Range: bytes=");
    XP_API_ITOA(a6, v12, 10);
    XP_API_STRCAT((char *)this + 8, v12);
    XP_API_STRCAT((char *)this + 8, "-");
    if ( a6 < a7 )
    {
      XP_API_MEMSET(v12, 0, 0x14u);
      XP_API_ITOA(a7, v12, 10);
      XP_API_STRCAT((char *)this + 8, v12);
    }
    XP_API_STRCAT((char *)this + 8, "\r\n");
  }
  XP_API_STRCAT((char *)this + 8, "\r\n");
  *((_BYTE *)this + 1060) = 0;
  (*(void (__fastcall **)(GLXPlayerHttp *))(*(_DWORD *)this + 72))(this);
  v9 = *((void **)this + 258);
  if ( v9 )
  {
    LC_API_FREE_0(v9);
    *((_DWORD *)this + 258) = 0;
  }
  *((_DWORD *)this + 259) = 0;
}


// ===== 82d220 GLXPlayerHttp::GetRequestLength(void) =====
size_t __fastcall GLXPlayerHttp::GetRequestLength(GLXPlayerHttp *this)
{
  if ( *((_BYTE *)this + 1060) )
    return *((_DWORD *)this + 264);
  else
    return XP_API_STRLEN((const char *)this + 8);
}


// ===== 82d23c GLXPlayerHttp::SetResponseData(char *,int) =====
void *__fastcall GLXPlayerHttp::SetResponseData(GLXPlayerHttp *this, char *a2, size_t a3)
{
  void *v4; // r0
  void *v7; // r0
  void *result; // r0

  v4 = *((void **)this + 258);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 258) = 0;
  }
  v7 = (void *)operator new[](a3 + 1);
  *((_DWORD *)this + 258) = v7;
  XP_API_MEMSET(v7, 0, a3 + 1);
  result = XP_API_MEMCPY(*((void **)this + 258), a2, a3);
  *((_DWORD *)this + 259) = a3;
  return result;
}


// ===== 82d298 GLXPlayerHttp::~GLXPlayerHttp() =====
void __fastcall GLXPlayerHttp::~GLXPlayerHttp(GLXPlayerHttp *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  int v7; // r3

  *(_DWORD *)this = off_992E50;
  GLXPlayerHttp::Cancel(this);
  v2 = *((void **)this + 260);
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 260) = 0;
  }
  v3 = *((void **)this + 261);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 261) = 0;
  }
  v4 = *((void **)this + 262);
  if ( v4 )
  {
    operator delete[](v4);
    *((_DWORD *)this + 262) = 0;
  }
  v5 = *((void **)this + 263);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 263) = 0;
  }
  v6 = *((void **)this + 258);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *((_DWORD *)this + 258) = 0;
  }
  v7 = *((_DWORD *)this + 1);
  if ( v7 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)this + 1));
}


// ===== 82d360 GLXPlayerHttp::~GLXPlayerHttp() =====
void __fastcall GLXPlayerHttp::~GLXPlayerHttp(GLXPlayerHttp *this)
{
  GLXPlayerHttp::~GLXPlayerHttp(this);
  LC_API_FREE_0(this);
}


// ===== 82d37c GLXPlayerHttp::~GLXPlayerHttp() =====
void __fastcall GLXPlayerHttp::~GLXPlayerHttp(GLXPlayerHttp *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  int v7; // r3

  *(_DWORD *)this = off_992E50;
  GLXPlayerHttp::Cancel(this);
  v2 = *((void **)this + 260);
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 260) = 0;
  }
  v3 = *((void **)this + 261);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 261) = 0;
  }
  v4 = *((void **)this + 262);
  if ( v4 )
  {
    operator delete[](v4);
    *((_DWORD *)this + 262) = 0;
  }
  v5 = *((void **)this + 263);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 263) = 0;
  }
  v6 = *((void **)this + 258);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *((_DWORD *)this + 258) = 0;
  }
  v7 = *((_DWORD *)this + 1);
  if ( v7 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)this + 1));
}


// ===== 82d444 GLXPlayerHttp::sendByPost(char *,char *) =====
void __fastcall GLXPlayerHttp::sendByPost(GLXPlayerHttp *this, char *a2, char *a3)
{
  bool v6; // zf
  int v7; // r11
  size_t v8; // r0
  size_t v9; // r0
  size_t v10; // r8
  void *v11; // r11
  void *v12; // r0
  size_t v13; // r0
  void *v14; // r0
  size_t v15; // r5
  size_t v16; // r5
  void *v17; // r0
  void *v18; // r0
  size_t v19; // [sp+8h] [bp-214h]
  char v20[256]; // [sp+14h] [bp-208h] BYREF
  char v21[256]; // [sp+114h] [bp-108h] BYREF

  XP_DEBUG_OUT("GLXPlayerHttp::sendByPost()\n");
  v6 = a2 == nullptr;
  if ( a2 )
    v6 = a3 == nullptr;
  if ( v6 )
  {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByPost() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(v21, 0, 0x100u);
    LC_API_MEMSET_0(v20, 0, 0x100u);
    XP_API_MEMSET(v21, 0, 0x100u);
    XP_API_MEMSET(v20, 0, 0x100u);
    v7 = XP_API_PARSE_DATA(a2, v21, 2, 47);
    XP_API_MEMSET(v21, 0, 0x100u);
    v8 = XP_API_STRLEN(a2);
    XP_API_MEMCPY(v21, &a2[v7], v8 - v7);
    XP_API_PARSE_DATA(v21, v20, 0, 47);
    XP_API_STRLEN(v21);
    v9 = XP_API_STRLEN(v20);
    v10 = v9 + 1;
    v19 = v9;
    v11 = (void *)operator new[](v9 + 1);
    XP_API_MEMSET(v11, 0, v10);
    XP_API_MEMCPY(v11, v20, v19);
    XP_API_MEMSET((char *)this + 8, 0, 0x400u);
    v12 = *((void **)this + 258);
    if ( v12 )
    {
      LC_API_FREE_0(v12);
      *((_DWORD *)this + 258) = 0;
    }
    XP_API_STRCAT(a3, "&v=");
    XP_API_STRCAT(a3, *((const char **)this + 261));
    v13 = XP_API_STRLEN(a3);
    sprintf(
      (char *)this + 8,
      "POST %s HTTP/1.1\r\nHost: %s\r\nContent-type: application/x-www-form-urlencoded\r\nContent-length: %d\r\n\r\n",
      a2,
      (const char *)v11,
      v13);
    v14 = *((void **)this + 263);
    if ( v14 )
    {
      LC_API_FREE_0(v14);
      *((_DWORD *)this + 263) = 0;
    }
    v15 = XP_API_STRLEN((const char *)this + 8);
    v16 = XP_API_STRLEN(a3) + v15;
    v17 = (void *)operator new[](v16 + 1);
    *((_DWORD *)this + 263) = v17;
    XP_API_MEMSET(v17, 0, v16 + 1);
    sprintf(*((char **)this + 263), "%s%s", (const char *)this + 8, a3);
    *((_DWORD *)this + 264) = v16;
    if ( v11 )
      LC_API_FREE_0(v11);
    *((_BYTE *)this + 1060) = 1;
    (*(void (__fastcall **)(GLXPlayerHttp *))(*(_DWORD *)this + 72))(this);
    v18 = *((void **)this + 258);
    if ( v18 )
    {
      LC_API_FREE_0(v18);
      *((_DWORD *)this + 258) = 0;
    }
    *((_DWORD *)this + 259) = 0;
  }
}


// ===== 82d6e0 GLXPlayerHttp::sendVideoByPost(char *,char *,char *,int &,char *) =====
void *__fastcall GLXPlayerHttp::sendVideoByPost(GLXPlayerHttp *this, char *a2, char *a3, char *a4, int *a5, char *a6)
{
  int v8; // r8
  size_t v9; // r0
  size_t v10; // r0
  size_t v11; // r10
  size_t v12; // r8
  void *v13; // r7
  void *v14; // r0
  void *v15; // r0
  char *v16; // r6
  int v17; // r9
  size_t v18; // r10
  size_t v19; // r8
  int v20; // r0
  int v21; // r8
  void *result; // r0
  char v25[256]; // [sp+1Ch] [bp-100h] BYREF
  char v26[256]; // [sp+11Ch] [bp+0h] BYREF

  LC_API_MEMSET_0(v26, 0, 0x100u);
  LC_API_MEMSET_0(v25, 0, 0x100u);
  XP_API_MEMSET(v26, 0, 0x100u);
  XP_API_MEMSET(v25, 0, 0x100u);
  v8 = XP_API_PARSE_DATA(a2, v26, 2, 47);
  XP_API_MEMSET(v26, 0, 0x100u);
  v9 = XP_API_STRLEN(a2);
  XP_API_MEMCPY(v26, &a2[v8], v9 - v8);
  XP_API_PARSE_DATA(v26, v25, 0, 47);
  XP_API_STRLEN(v26);
  v10 = XP_API_STRLEN(v25);
  v11 = v10 + 1;
  v12 = v10;
  v13 = (void *)operator new[](v10 + 1);
  XP_API_MEMSET(v13, 0, v11);
  XP_API_MEMCPY(v13, v25, v12);
  v14 = *((void **)this + 263);
  if ( v14 )
  {
    operator delete[](v14);
    *((_DWORD *)this + 263) = 0;
  }
  v15 = (void *)operator new[](*a5 + 1024);
  *((_DWORD *)this + 263) = v15;
  XP_API_MEMSET(v15, 0, *a5 + 1024);
  v16 = (char *)operator new[](*a5 + 1024);
  XP_API_MEMSET(v16, 0, *a5 + 1024);
  XP_API_STRCAT(a3, "&v=");
  XP_API_STRCAT(a3, *((const char **)this + 261));
  v17 = sprintf(
          v16,
          "------GL_HTTP_POST_AVI\r\n"
          "Content-Disposition: form-data; name=\"file\"; filename=\"%s\"\r\n"
          "Content-Type: video/avi\r\n"
          "\r\n",
          a6);
  XP_API_MEMCPY(&v16[v17], a4, *a5);
  XP_API_MEMCPY(&v16[v17 + *a5], "\r\n------GL_HTTP_POST_AVI--\r\n", 0x1Cu);
  v18 = *a5;
  v19 = v17 + XP_API_STRLEN("\r\n------GL_HTTP_POST_AVI--\r\n") + v18;
  v20 = sprintf(
          *((char **)this + 263),
          "POST %s?%s HTTP/1.1\r\n"
          "Host: %s\r\n"
          "Accept: */*\r\n"
          "Content-Type: multipart/form-data; boundary=----GL_HTTP_POST_AVI\r\n"
          "Content-length: %d\r\n"
          "Proxy-Connection: Keep-Alive\r\n"
          "Pragma: no-cache\r\n"
          "\r\n",
          a2,
          a3,
          (const char *)v13,
          v19);
  *a5 = v20;
  XP_API_MEMCPY((void *)(*((_DWORD *)this + 263) + v20), v16, v19);
  v21 = v19 + *a5;
  *a5 = v21;
  *((_DWORD *)this + 264) = v21;
  if ( v16 )
    operator delete[](v16);
  if ( v13 )
    LC_API_FREE_0(v13);
  *((_BYTE *)this + 1060) = 1;
  (*(void (__fastcall **)(GLXPlayerHttp *))(*(_DWORD *)this + 72))(this);
  result = *((void **)this + 258);
  if ( result )
  {
    LC_API_FREE_0(result);
    *((_DWORD *)this + 258) = 0;
  }
  *((_DWORD *)this + 259) = 0;
  return result;
}


// ===== 82d9ac GLXPlayerHttp::sendByGet(char *,char *) =====
void __fastcall GLXPlayerHttp::sendByGet(GLXPlayerHttp *this, char *a2, char *a3)
{
  bool v6; // zf
  size_t v7; // r0
  void *v8; // r7
  void *v9; // r0
  void *v10; // r0
  int v11; // [sp+0h] [bp-214h]
  size_t v12; // [sp+0h] [bp-214h]
  char v13[256]; // [sp+Ch] [bp-208h] BYREF
  char v14[256]; // [sp+10Ch] [bp-108h] BYREF

  XP_DEBUG_OUT("GLXPlayerHttp::sendByGet()\n");
  v6 = a2 == nullptr;
  if ( a2 )
    v6 = a3 == nullptr;
  if ( v6 )
  {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByGet() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(v14, 0, 0x100u);
    LC_API_MEMSET_0(v13, 0, 0x100u);
    XP_API_MEMSET(v14, 0, 0x100u);
    XP_API_MEMSET(v13, 0, 0x100u);
    v11 = XP_API_PARSE_DATA(a2, v14, 2, 47);
    XP_API_MEMSET(v14, 0, 0x100u);
    v7 = XP_API_STRLEN(a2);
    XP_API_MEMCPY(v14, &a2[v11], v7 - v11);
    XP_API_PARSE_DATA(v14, v13, 0, 47);
    XP_API_STRLEN(v14);
    v12 = XP_API_STRLEN(v13);
    v8 = (void *)operator new[](v12 + 1);
    XP_API_MEMSET(v8, 0, v12 + 1);
    XP_API_MEMCPY(v8, v13, v12);
    XP_API_MEMSET((char *)this + 8, 0, 0x400u);
    v9 = *((void **)this + 258);
    if ( v9 )
    {
      LC_API_FREE_0(v9);
      *((_DWORD *)this + 258) = 0;
    }
    XP_API_STRCPY((char *)this + 8, "GET ");
    XP_API_STRCAT((char *)this + 8, a2);
    XP_API_STRCAT((char *)this + 8, "?");
    XP_API_STRCAT((char *)this + 8, a3);
    XP_API_STRCAT((char *)this + 8, "&v=");
    XP_API_STRCAT((char *)this + 8, *((const char **)this + 261));
    XP_API_STRCAT((char *)this + 8, " HTTP/1.1\r\n");
    XP_API_STRCAT((char *)this + 8, "Host: ");
    XP_API_STRCAT((char *)this + 8, (const char *)v8);
    XP_API_STRCAT((char *)this + 8, "\r\n\r\n");
    if ( v8 )
      LC_API_FREE_0(v8);
    *((_BYTE *)this + 1060) = 0;
    (*(void (__fastcall **)(GLXPlayerHttp *))(*(_DWORD *)this + 72))(this);
    v10 = *((void **)this + 258);
    if ( v10 )
    {
      LC_API_FREE_0(v10);
      *((_DWORD *)this + 258) = 0;
    }
    *((_DWORD *)this + 259) = 0;
  }
}


// ===== 82dc3c GLXPlayerHttp::sendByGetWithNoVer(char *,char *) =====
void __fastcall GLXPlayerHttp::sendByGetWithNoVer(GLXPlayerHttp *this, char *a2, char *a3)
{
  bool v6; // zf
  size_t v7; // r0
  void *v8; // r7
  void *v9; // r0
  void *v10; // r0
  int v11; // [sp+0h] [bp-214h]
  size_t v12; // [sp+0h] [bp-214h]
  char v13[256]; // [sp+Ch] [bp-208h] BYREF
  char v14[256]; // [sp+10Ch] [bp-108h] BYREF

  XP_DEBUG_OUT("GLXPlayerHttp::sendByGet()\n");
  v6 = a2 == nullptr;
  if ( a2 )
    v6 = a3 == nullptr;
  if ( v6 )
  {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByGet() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(v14, 0, 0x100u);
    LC_API_MEMSET_0(v13, 0, 0x100u);
    XP_API_MEMSET(v14, 0, 0x100u);
    XP_API_MEMSET(v13, 0, 0x100u);
    v11 = XP_API_PARSE_DATA(a2, v14, 2, 47);
    XP_API_MEMSET(v14, 0, 0x100u);
    v7 = XP_API_STRLEN(a2);
    XP_API_MEMCPY(v14, &a2[v11], v7 - v11);
    XP_API_PARSE_DATA(v14, v13, 0, 47);
    XP_API_STRLEN(v14);
    v12 = XP_API_STRLEN(v13);
    v8 = (void *)operator new[](v12 + 1);
    XP_API_MEMSET(v8, 0, v12 + 1);
    XP_API_MEMCPY(v8, v13, v12);
    XP_API_MEMSET((char *)this + 8, 0, 0x400u);
    v9 = *((void **)this + 258);
    if ( v9 )
    {
      LC_API_FREE_0(v9);
      *((_DWORD *)this + 258) = 0;
    }
    XP_API_STRCPY((char *)this + 8, "GET ");
    XP_API_STRCAT((char *)this + 8, a2);
    XP_API_STRCAT((char *)this + 8, "?");
    XP_API_STRCAT((char *)this + 8, a3);
    XP_API_STRCAT((char *)this + 8, " HTTP/1.1\r\n");
    XP_API_STRCAT((char *)this + 8, "Host: ");
    XP_API_STRCAT((char *)this + 8, (const char *)v8);
    XP_API_STRCAT((char *)this + 8, "\r\n\r\n");
    if ( v8 )
      LC_API_FREE_0(v8);
    *((_BYTE *)this + 1060) = 0;
    (*(void (__fastcall **)(GLXPlayerHttp *))(*(_DWORD *)this + 72))(this);
    v10 = *((void **)this + 258);
    if ( v10 )
    {
      LC_API_FREE_0(v10);
      *((_DWORD *)this + 258) = 0;
    }
    *((_DWORD *)this + 259) = 0;
  }
}


// ===== 82deac GLXPlayerHttp::GLXPlayerHttp(char *,char *,char *) =====
void __fastcall GLXPlayerHttp::GLXPlayerHttp(GLXPlayerHttp *this, char *a2, char *a3, char *a4)
{
  *(_DWORD *)this = off_992E50;
  if ( a2 )
    *((_DWORD *)this + 260) = XP_API_STRNEW(a2);
  else
    *((_DWORD *)this + 260) = 0;
  if ( a3 )
    *((_DWORD *)this + 261) = XP_API_STRNEW(a3);
  else
    *((_DWORD *)this + 261) = 0;
  if ( a4 )
    *((_DWORD *)this + 262) = XP_API_STRNEW(a4);
  else
    *((_DWORD *)this + 262) = 0;
  *((_DWORD *)this + 1) = GLXPlayerSocketFactory::GetSocket(a2, 80, this);
  *((_DWORD *)this + 259) = 0;
  *((_DWORD *)this + 263) = 0;
  *((_DWORD *)this + 264) = 0;
  *((_DWORD *)this + 258) = 0;
}


// ===== 82df54 GLXPlayerHttp::GLXPlayerHttp(char *,char *,char *) =====
void __fastcall GLXPlayerHttp::GLXPlayerHttp(GLXPlayerHttp *this, char *a2, char *a3, char *a4)
{
  *(_DWORD *)this = off_992E50;
  if ( a2 )
    *((_DWORD *)this + 260) = XP_API_STRNEW(a2);
  else
    *((_DWORD *)this + 260) = 0;
  if ( a3 )
    *((_DWORD *)this + 261) = XP_API_STRNEW(a3);
  else
    *((_DWORD *)this + 261) = 0;
  if ( a4 )
    *((_DWORD *)this + 262) = XP_API_STRNEW(a4);
  else
    *((_DWORD *)this + 262) = 0;
  *((_DWORD *)this + 1) = GLXPlayerSocketFactory::GetSocket(a2, 80, this);
  *((_DWORD *)this + 259) = 0;
  *((_DWORD *)this + 263) = 0;
  *((_DWORD *)this + 264) = 0;
  *((_DWORD *)this + 258) = 0;
}


// ===== 82dffc GLXPlayerSereverConfig::GetGgi(void) =====
int __fastcall GLXPlayerSereverConfig::GetGgi(GLXPlayerSereverConfig *this)
{
  return GLXPlayerSereverConfig::m_webConfig_ggi;
}


// ===== 82e01c GLXPlayerSereverConfig::GetGameVersion(void) =====
void *__fastcall GLXPlayerSereverConfig::GetGameVersion(GLXPlayerSereverConfig *this)
{
  return &GLXPlayerSereverConfig::s_GameVersion;
}


// ===== 82e038 GLXPlayerSereverConfig::isOutOfDate(int) =====
bool __fastcall GLXPlayerSereverConfig::isOutOfDate(GLXPlayerSereverConfig *this, int a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r2

  v2 = *((_DWORD **)this + 16);
  v3 = *((_DWORD **)this + 15);
  if ( *v3 < *v2 )
    return 1;
  if ( *v3 == *v2 )
    return v2[1] > a2 + v3[1];
  return 0;
}


// ===== 82e084 GLXPlayerSereverConfig::GetCurTimeDate(GameDate *) =====
struct tm *__fastcall GLXPlayerSereverConfig::GetCurTimeDate(int a1, int *a2)
{
  struct tm *result; // r0
  int tm_yday; // r3
  struct tm v5; // [sp+0h] [bp-34h] BYREF
  time_t timer; // [sp+2Ch] [bp-8h] BYREF

  time(&timer);
  result = localtime_r(&timer, &v5);
  tm_yday = v5.tm_yday;
  *a2 = v5.tm_year;
  a2[1] = tm_yday;
  return result;
}


// ===== 82e0bc GLXPlayerSereverConfig::SaveServerConfig(void) =====
int __fastcall GLXPlayerSereverConfig::SaveServerConfig(GLXPlayerSereverConfig *this)
{
  int v2; // r6
  size_t v3; // r0
  char *v4; // r4
  _DWORD *v5; // r2
  const char *v6; // r2
  int v7; // r3
  size_t v8; // r0
  char *v9; // r2
  char v11[256]; // [sp+1Ch] [bp-104h] BYREF

  v2 = XP_API_FILE_OPEN("serverConfig.sav", "wb");
  if ( v2 )
  {
    XP_API_MEMSET(v11, 0, 0xFFu);
    sprintf(
      v11,
      "%s: %s\r\n%s: %d\r\n%s: %d-%d\r\n",
      "GameVer",
      GLXPlayerSereverConfig::s_GameVersion,
      "GGI",
      *((_DWORD *)this + 2),
      "Date",
      **((_DWORD **)this + 16),
      *(_DWORD *)(*((_DWORD *)this + 16) + 4));
    v3 = XP_API_STRLEN(v11);
    XP_API_FILE_WRITE(v11, 1u, v3, v2);
    v4 = &GLXPlayerSereverConfig::s_urlMap;
    while ( (char *)dword_A339A8 != v4 )
    {
      XP_API_MEMSET(v11, 0, 0xFFu);
      if ( *v4 || *(char **)(*((_DWORD *)v4 + 1) + 4) != v4 )
      {
        v5 = *((_DWORD **)v4 + 2);
        if ( v5 )
        {
          while ( v5[3] )
            v5 = (_DWORD *)v5[3];
        }
        else
        {
          v5 = *((_DWORD **)v4 + 1);
          if ( v4 == (char *)v5[2] )
          {
            while ( *(_DWORD **)(v5[1] + 8) == v5 )
              v5 = (_DWORD *)v5[1];
            v5 = (_DWORD *)v5[1];
          }
        }
      }
      else
      {
        v5 = *((_DWORD **)v4 + 3);
      }
      v6 = (const char *)v5[9];
      if ( *v4 || *(char **)(*((_DWORD *)v4 + 1) + 4) != v4 )
      {
        v7 = *((_DWORD *)v4 + 2);
        if ( v7 )
        {
          while ( *(_DWORD *)(v7 + 12) )
            v7 = *(_DWORD *)(v7 + 12);
        }
        else
        {
          v7 = *((_DWORD *)v4 + 1);
          if ( v4 == *(char **)(v7 + 8) )
          {
            while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
              v7 = *(_DWORD *)(v7 + 4);
            v7 = *(_DWORD *)(v7 + 4);
          }
        }
      }
      else
      {
        v7 = *((_DWORD *)v4 + 3);
      }
      sprintf(v11, "%s: %s\r\n", v6, *(const char **)(v7 + 60));
      v8 = XP_API_STRLEN(v11);
      XP_API_FILE_WRITE(v11, 1u, v8, v2);
      if ( *v4 || *(char **)(*((_DWORD *)v4 + 1) + 4) != v4 )
      {
        v9 = *((char **)v4 + 2);
        if ( v9 )
        {
          while ( *((_DWORD *)v9 + 3) )
            v9 = *((char **)v9 + 3);
        }
        else
        {
          v9 = *((char **)v4 + 1);
          if ( v4 == *((char **)v9 + 2) )
          {
            while ( *(char **)(*((_DWORD *)v9 + 1) + 8) == v9 )
              v9 = *((char **)v9 + 1);
            v4 = *((char **)v9 + 1);
            continue;
          }
        }
      }
      else
      {
        v9 = *((char **)v4 + 3);
      }
      v4 = v9;
    }
    XP_API_FILE_CLOSE(v2);
    return 1;
  }
  else
  {
    XP_DEBUG_OUT("SaveProfile(), Error creating file %s \n", "serverConfig.sav");
    return 0;
  }
}


// ===== 82e3b4 GLXPlayerSereverConfig::LoadConfig(void) =====
int __fastcall GLXPlayerSereverConfig::LoadConfig(GLXPlayerSereverConfig *this)
{
  int v1; // r0
  int v2; // r0
  size_t v3; // r9
  size_t v4; // r4
  void *v5; // r11
  char *v6; // r5
  signed int v7; // r0
  int v8; // r4
  const char *v9; // r7
  size_t v10; // r0
  size_t v11; // r10
  size_t v12; // r0
  size_t v13; // r4
  size_t v14; // r7
  void *v15; // r0
  size_t v16; // r10
  void *v17; // r0
  int i; // r10
  int v19; // r8
  size_t v20; // r0
  signed int v21; // r0
  int v22; // r0
  int v23; // r0
  int v25; // [sp+4h] [bp-228h]
  int v27; // [sp+18h] [bp-214h]
  char v28[256]; // [sp+24h] [bp-208h] BYREF
  char v29[256]; // [sp+124h] [bp-108h] BYREF

  v1 = XP_API_FILE_OPEN("oconf.bar", "r");
  v27 = v1;
  if ( v1 )
  {
    v2 = XP_API_FILE_GET_LENGTH(v1);
    v3 = v2 + 1;
    v4 = v2;
    v5 = (void *)operator new[](v2 + 1);
    XP_API_MEMSET(v5, 0, v3);
    XP_API_FILE_READ(v5, v4, 1u, v27);
    v6 = (char *)operator new[](v3);
    XP_API_MEMSET(v6, 0, v3);
    XP_API_PARSE_DATA((char *)v5, v6, 0, 10);
    v7 = XP_API_STRLEN(v6);
    if ( v7 > 0 && v6[v7 - 1] == 13 )
      v6[v7 - 1] = 0;
    v25 = v7;
    LC_API_MEMSET_0(v29, 0, 0x100u);
    LC_API_MEMSET_0(v28, 0, 0x100u);
    *((_DWORD *)this + 7) = XP_API_STRNEW("http://gllive.gameloft.com/ope/ServerConfig.php");
    XP_API_MEMSET(v29, 0, 0x100u);
    XP_API_MEMSET(v28, 0, 0x100u);
    v8 = XP_API_PARSE_DATA(*((char **)this + 7), v29, 2, 47);
    XP_API_MEMSET(v29, 0, 0x100u);
    v9 = *((const char **)this + 7);
    v10 = XP_API_STRLEN(v9);
    XP_API_MEMCPY(v29, &v9[v8], v10 - v8);
    XP_API_PARSE_DATA(v29, v28, 0, 47);
    v11 = XP_API_STRLEN(v29);
    v12 = XP_API_STRLEN(v28);
    v13 = v12 + 1;
    v14 = v12;
    v15 = (void *)operator new[](v12 + 1);
    v16 = v11 - v14;
    *((_DWORD *)this + 4) = v15;
    XP_API_MEMSET(v15, 0, v13);
    XP_API_MEMCPY(*((void **)this + 4), v28, v14);
    v17 = (void *)operator new[](v16 + 1);
    *((_DWORD *)this + 5) = v17;
    XP_API_MEMSET(v17, 0, v16 + 1);
    XP_API_MEMCPY(*((void **)this + 5), &v29[v14], v16);
    if ( v25 > 0 )
    {
      for ( i = 1; ; ++i )
      {
        memset(v29, 0, 32);
        LC_API_MEMSET_0(v28, 0, 0x100u);
        XP_API_PARSE_DATA(v6, v29, 0, 58);
        v19 = XP_API_PARSE_DATA(v6, v28, 1, 58);
        XP_API_MEMSET(v28, 0, 0x100u);
        v20 = XP_API_STRLEN(v6);
        XP_API_MEMCPY(v28, &v6[v19], v20 - v19);
        XP_API_STRTRIM(v29);
        XP_API_STRTRIM(v28);
        if ( !XP_API_STRCMP(v29, "GGI") )
        {
          v23 = XP_API_ATOI(v28);
          *((_DWORD *)this + 2) = v23;
          GLXPlayerSereverConfig::m_webConfig_ggi = v23;
        }
        XP_API_MEMSET(v6, 0, v3);
        XP_API_PARSE_DATA((char *)v5, v6, i, 10);
        v21 = XP_API_STRLEN(v6);
        if ( v21 <= 0 )
          break;
        v22 = v21 - 1;
        if ( v6[v22] == 13 )
          v6[v22] = 0;
      }
    }
    if ( v6 )
      LC_API_FREE_0(v6);
    if ( v5 )
      LC_API_FREE_0(v5);
    XP_API_FILE_CLOSE(v27);
    return 1;
  }
  else
  {
    XP_DEBUG_OUT("[GLXPlayerSereverConfig] load config - %s not found \n", "oconf.bar");
    return 0;
  }
}


// ===== 82e7ac GLXPlayerSereverConfig::~GLXPlayerSereverConfig() =====
void __fastcall GLXPlayerSereverConfig::~GLXPlayerSereverConfig(GLXPlayerSereverConfig *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 15);
  *(_DWORD *)this = off_992EB0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 15) = 0;
  }
  v3 = *((void **)this + 16);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 16) = 0;
  }
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 82e814 GLXPlayerSereverConfig::~GLXPlayerSereverConfig() =====
void __fastcall GLXPlayerSereverConfig::~GLXPlayerSereverConfig(GLXPlayerSereverConfig *this)
{
  GLXPlayerSereverConfig::~GLXPlayerSereverConfig(this);
  LC_API_FREE_0(this);
}


// ===== 82e830 GLXPlayerSereverConfig::~GLXPlayerSereverConfig() =====
void __fastcall GLXPlayerSereverConfig::~GLXPlayerSereverConfig(GLXPlayerSereverConfig *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 15);
  *(_DWORD *)this = off_992EB0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 15) = 0;
  }
  v3 = *((void **)this + 16);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 16) = 0;
  }
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 82e898 GLXPlayerSereverConfig::GLXPlayerSereverConfig(char const*) =====
void __fastcall GLXPlayerSereverConfig::GLXPlayerSereverConfig(GLXPlayerSereverConfig *this, const char *a2)
{
  int *v4; // r0
  GLXPlayerHttp *v5; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992EB0;
  XP_API_MEMSET(GLXPlayerSereverConfig::s_GameVersion, 0, 0x32u);
  if ( a2 )
    XP_API_STRCPY(GLXPlayerSereverConfig::s_GameVersion, a2);
  *((_DWORD *)this + 15) = operator new(8u);
  v4 = (int *)operator new(8u);
  *((_DWORD *)this + 16) = v4;
  GLXPlayerSereverConfig::GetCurTimeDate((int)this, v4);
  GLXPlayerSereverConfig::LoadConfig(this);
  v5 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v5, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v5;
}


// ===== 82e94c GLXPlayerSereverConfig::GLXPlayerSereverConfig(char const*) =====
void __fastcall GLXPlayerSereverConfig::GLXPlayerSereverConfig(GLXPlayerSereverConfig *this, const char *a2)
{
  int *v4; // r0
  GLXPlayerHttp *v5; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992EB0;
  XP_API_MEMSET(GLXPlayerSereverConfig::s_GameVersion, 0, 0x32u);
  if ( a2 )
    XP_API_STRCPY(GLXPlayerSereverConfig::s_GameVersion, a2);
  *((_DWORD *)this + 15) = operator new(8u);
  v4 = (int *)operator new(8u);
  *((_DWORD *)this + 16) = v4;
  GLXPlayerSereverConfig::GetCurTimeDate((int)this, v4);
  GLXPlayerSereverConfig::LoadConfig(this);
  v5 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v5, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v5;
}


// ===== 82ea00 `global constructor keyed to'.._.._.._src_Online_Common_GLXPlayerSereverConfig.cpp =====
int `global constructor keyed to'.._.._.._src_Online_Common_GLXPlayerSereverConfig.cpp()
{
  dword_A339B0 = 0;
  dword_A339A4 = 0;
  GLXPlayerSereverConfig::s_urlMap = 0;
  dword_A339A8 = (int)&GLXPlayerSereverConfig::s_urlMap;
  dword_A339AC = (int)&GLXPlayerSereverConfig::s_urlMap;
  return _aeabi_atexit(
           (int)&GLXPlayerSereverConfig::s_urlMap,
           (int)std::map<std::string,std::string>::~map,
           (int)&_dso_handle);
}


// ===== 82ea58 std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 64;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v1);
}


// ===== 82ea78 std::map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>::~map() =====
int __fastcall std::map<std::string,std::string>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 82eaac GLXPlayerSereverConfig::SendGetServerConfig(int &) =====
int __fastcall GLXPlayerSereverConfig::SendGetServerConfig(GLXPlayerSereverConfig *this, int *a2)
{
  int v5; // r10
  char *v6; // r10
  char v7[12]; // [sp+Ch] [bp-200Ch] BYREF
  char v8[4084]; // [sp+100Ch] [bp-100Ch] BYREF
  _DWORD v9[3]; // [sp+200Ch] [bp-Ch] BYREF

  if ( *((_DWORD *)this + 2) && XP_API_STRLEN(GLXPlayerSereverConfig::s_GameVersion) )
  {
    v5 = (unsigned __int8)GLXPlayerSereverConfig::s_isLoadConfig;
    if ( GLXPlayerSereverConfig::s_isLoadConfig )
    {
      _android_log_write(4, "RETURNNNNNNNNNN", "TRUEEEEEEEEEEEEEEEEEEEEEEEEE");
      *a2 = 1;
      return 1;
    }
    else
    {
      if ( dword_A339B0 )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
          (int)&GLXPlayerSereverConfig::s_urlMap,
          (_DWORD *)dword_A339A4);
        dword_A339B0 = v5;
        dword_A339A8 = (int)&GLXPlayerSereverConfig::s_urlMap;
        dword_A339A4 = v5;
        dword_A339AC = (int)&GLXPlayerSereverConfig::s_urlMap;
      }
      XP_API_MEMSET(v8, 0, 0x1000u);
      sprintf(v8, "f|%d|i|%d|v|%s|", 1, *((_DWORD *)this + 2), GLXPlayerSereverConfig::s_GameVersion);
      XP_DEBUG_OUT("[GetWebConfig] before String2Blob -> buffer = %s\n", v8);
      *((_BYTE *)this + 44) = 1;
      v6 = (char *)SSEncDec_String2Blob(v8);
      XP_API_MEMSET(v7, 0, 0x1000u);
      sprintf(v7, "b=%s", v6);
      if ( v6 )
        LC_API_FREE_0(v6);
      v9[0] = 0;
      v9[1] = 0;
      getValue(v8, v9, 1, 124);
      *((_DWORD *)this + 14) = XP_API_ATOI((const char *)v9);
      *((_DWORD *)this + 13) = XP_API_GET_TIME();
      XP_DEBUG_OUT("SendByGet %s\n", v7);
      (*(void (__fastcall **)(_DWORD, _DWORD, char *))(**((_DWORD **)this + 8) + 32))(
        *((_DWORD *)this + 8),
        *((_DWORD *)this + 7),
        v7);
      *a2 = 0;
      return 1;
    }
  }
  else
  {
    _android_log_write(4, "RETURNNNNNNNNNN", "FALSEEEEEEEEEEEEEEEEEEEE");
    *a2 = -1;
    return 0;
  }
}


// ===== 82ecfc GLXPlayerSereverConfig::GetValue(char const*) =====
void *__fastcall GLXPlayerSereverConfig::GetValue(GLXPlayerSereverConfig *this, const char *a2)
{
  char *v2; // r10
  int v3; // r5
  int v5; // r3
  const void *v6; // r3
  std::string *M_data; // r4
  int v8; // r7
  int v9; // r6
  size_t v10; // r2
  int v11; // r11
  const void *v12; // r1
  int v13; // r6
  int v14; // r7
  size_t v15; // r2
  int v16; // r8
  int v17; // r2
  Elf32_Dyn **v18; // r3
  std::string v20; // [sp+1Ch] [bp-38h] BYREF
  std::string v21; // [sp+34h] [bp-20h] BYREF

  v2 = &GLXPlayerSereverConfig::s_urlMap;
  v3 = dword_A339A4;
  if ( !dword_A339A4 )
    goto LABEL_40;
  while ( 1 )
  {
    std::string::string(&v21, (char *)this);
    v6 = *(const void **)(v3 + 36);
    M_data = (std::string *)v21._M_start_of_storage._M_data;
    v8 = *(_DWORD *)(v3 + 32) - (_DWORD)v6;
    v9 = v21._M_finish - v21._M_start_of_storage._M_data;
    if ( v21._M_finish - v21._M_start_of_storage._M_data >= v8 )
      v10 = *(_DWORD *)(v3 + 32) - (_DWORD)v6;
    else
      v10 = v21._M_finish - v21._M_start_of_storage._M_data;
    v11 = memcmp(v6, v21._M_start_of_storage._M_data, v10);
    if ( !v11 )
    {
      if ( v8 >= v9 )
        v11 = v8 > v9;
      else
        v11 = -1;
    }
    if ( M_data == &v21 || !M_data )
      break;
    if ( (unsigned int)(v21._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
    {
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, v21._M_buffers._M_end_of_storage - (char *)M_data);
      break;
    }
    LC_API_FREE_0(M_data);
    if ( v11 >= 0 )
      v5 = *(_DWORD *)(v3 + 8);
    else
      v5 = *(_DWORD *)(v3 + 12);
    if ( v11 < 0 )
      v3 = (int)v2;
    if ( !v5 )
      goto LABEL_27;
LABEL_10:
    v2 = (char *)v3;
    v3 = v5;
  }
  if ( v11 >= 0 )
    v5 = *(_DWORD *)(v3 + 8);
  else
    v5 = *(_DWORD *)(v3 + 12);
  if ( v11 < 0 )
    v3 = (int)v2;
  if ( v5 )
    goto LABEL_10;
LABEL_27:
  v2 = (char *)v3;
  if ( (char *)v3 != &GLXPlayerSereverConfig::s_urlMap )
  {
    std::string::string(&v20, (char *)this);
    v12 = *(const void **)(v3 + 36);
    v13 = *(_DWORD *)(v3 + 32) - (_DWORD)v12;
    v14 = v20._M_finish - v20._M_start_of_storage._M_data;
    if ( v13 >= v20._M_finish - v20._M_start_of_storage._M_data )
      v15 = v20._M_finish - v20._M_start_of_storage._M_data;
    else
      v15 = *(_DWORD *)(v3 + 32) - (_DWORD)v12;
    v16 = memcmp(v20._M_start_of_storage._M_data, v12, v15);
    if ( !v16 )
    {
      if ( v14 >= v13 )
        v16 = v14 > v13;
      else
        v16 = -1;
    }
    std::string::~string(&v20);
    if ( v16 >= 0 )
    {
      v2 = (char *)v3;
    }
    else
    {
      v18 = &__GLOBAL_OFFSET_TABLE_;
      v17 = 3518;
    }
    if ( v16 < 0 )
      v2 = (char *)v18[v17];
  }
LABEL_40:
  if ( v2 == &GLXPlayerSereverConfig::s_urlMap )
    return &GLXPlayerSereverConfig::s_emptyUrl;
  else
    return *((void **)v2 + 15);
}


// ===== 82eefc GLXPlayerSereverConfig::GetGameMinVersion(void) =====
void *__fastcall GLXPlayerSereverConfig::GetGameMinVersion(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"min", a2);
}


// ===== 82ef0c GLXPlayerSereverConfig::GetGameLatestVersion(void) =====
void *__fastcall GLXPlayerSereverConfig::GetGameLatestVersion(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"latest", a2);
}


// ===== 82ef1c GLXPlayerSereverConfig::GetChatRoomDomain(void) =====
void *__fastcall GLXPlayerSereverConfig::GetChatRoomDomain(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"ChatRoomDomain", a2);
}


// ===== 82ef2c GLXPlayerSereverConfig::GetChatDomain(void) =====
void *__fastcall GLXPlayerSereverConfig::GetChatDomain(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"ChatDomain", a2);
}


// ===== 82ef3c GLXPlayerSereverConfig::GetChatServer(void) =====
void *__fastcall GLXPlayerSereverConfig::GetChatServer(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"ChatServer", a2);
}


// ===== 82ef4c GLXPlayerSereverConfig::GetwebURLType(void) =====
void *__fastcall GLXPlayerSereverConfig::GetwebURLType(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"type", a2);
}


// ===== 82ef5c GLXPlayerSereverConfig::GetPhpVer(void) =====
void *__fastcall GLXPlayerSereverConfig::GetPhpVer(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"XPPHPVerNo", a2);
}


// ===== 82ef6c GLXPlayerSereverConfig::GetXPlayerMPURL(void) =====
void *__fastcall GLXPlayerSereverConfig::GetXPlayerMPURL(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"XPlayMPURL", a2);
}


// ===== 82ef7c GLXPlayerSereverConfig::GetXPlayerDWURL(void) =====
void *__fastcall GLXPlayerSereverConfig::GetXPlayerDWURL(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"XplayDWURL", a2);
}


// ===== 82ef8c GLXPlayerSereverConfig::GetXPlayerURL(void) =====
void *__fastcall GLXPlayerSereverConfig::GetXPlayerURL(GLXPlayerSereverConfig *this, const char *a2)
{
  return GLXPlayerSereverConfig::GetValue((GLXPlayerSereverConfig *)"XplayerURL", a2);
}


// ===== 82ef9c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>(char [11] const&) [clone] =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>(
        char *a1)
{
  char *v1; // r10
  int v2; // r5
  char *result; // r0
  int v5; // r3
  const void *v6; // r3
  std::string *M_data; // r4
  int v8; // r7
  int v9; // r6
  size_t v10; // r2
  int v11; // r11
  const void *v12; // r1
  int v13; // r6
  int v14; // r7
  size_t v15; // r2
  int v16; // r8
  int v17; // r2
  Elf32_Dyn **v18; // r3
  std::string v19; // [sp+1Ch] [bp-38h] BYREF
  std::string v20; // [sp+34h] [bp-20h] BYREF

  v1 = &GLXPlayerSereverConfig::s_urlMap;
  v2 = dword_A339A4;
  if ( !dword_A339A4 )
    return &GLXPlayerSereverConfig::s_urlMap;
  while ( 1 )
  {
    std::string::string(&v19, a1);
    v6 = *(const void **)(v2 + 36);
    M_data = (std::string *)v19._M_start_of_storage._M_data;
    v8 = *(_DWORD *)(v2 + 32) - (_DWORD)v6;
    v9 = v19._M_finish - v19._M_start_of_storage._M_data;
    if ( v19._M_finish - v19._M_start_of_storage._M_data >= v8 )
      v10 = *(_DWORD *)(v2 + 32) - (_DWORD)v6;
    else
      v10 = v19._M_finish - v19._M_start_of_storage._M_data;
    v11 = memcmp(v6, v19._M_start_of_storage._M_data, v10);
    if ( !v11 )
    {
      if ( v8 >= v9 )
        v11 = v8 > v9;
      else
        v11 = -1;
    }
    if ( M_data == &v19 || !M_data )
      break;
    if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
    {
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, v19._M_buffers._M_end_of_storage - (char *)M_data);
      break;
    }
    LC_API_FREE_0(M_data);
    if ( v11 >= 0 )
      v5 = *(_DWORD *)(v2 + 8);
    else
      v5 = *(_DWORD *)(v2 + 12);
    if ( v11 < 0 )
      v2 = (int)v1;
    if ( !v5 )
      goto LABEL_28;
LABEL_11:
    v1 = (char *)v2;
    v2 = v5;
  }
  if ( v11 >= 0 )
    v5 = *(_DWORD *)(v2 + 8);
  else
    v5 = *(_DWORD *)(v2 + 12);
  if ( v11 < 0 )
    v2 = (int)v1;
  if ( v5 )
    goto LABEL_11;
LABEL_28:
  result = (char *)v2;
  if ( (char *)v2 != &GLXPlayerSereverConfig::s_urlMap )
  {
    std::string::string(&v20, a1);
    v12 = *(const void **)(v2 + 36);
    v13 = *(_DWORD *)(v2 + 32) - (_DWORD)v12;
    v14 = v20._M_finish - v20._M_start_of_storage._M_data;
    if ( v13 >= v20._M_finish - v20._M_start_of_storage._M_data )
      v15 = v20._M_finish - v20._M_start_of_storage._M_data;
    else
      v15 = *(_DWORD *)(v2 + 32) - (_DWORD)v12;
    v16 = memcmp(v20._M_start_of_storage._M_data, v12, v15);
    if ( !v16 )
    {
      if ( v14 >= v13 )
        v16 = v14 > v13;
      else
        v16 = -1;
    }
    std::string::~string(&v20);
    if ( v16 >= 0 )
    {
      result = (char *)v2;
    }
    else
    {
      v18 = &__GLOBAL_OFFSET_TABLE_;
      v17 = 3518;
    }
    if ( v16 < 0 )
      return (char *)v18[v17];
  }
  return result;
}


// ===== 82f178 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [5]>(char [5] const&) [clone] =====
char *std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [5]>()
{
  char *v0; // r10
  int v1; // r5
  char *result; // r0
  int v3; // r3
  const void *v4; // r3
  std::string *M_data; // r4
  int v6; // r7
  int v7; // r6
  size_t v8; // r2
  int v9; // r11
  const void *v10; // r1
  int v11; // r6
  int v12; // r7
  size_t v13; // r2
  int v14; // r8
  int v15; // r2
  Elf32_Dyn **v16; // r3
  std::string v17; // [sp+1Ch] [bp-38h] BYREF
  std::string v18; // [sp+34h] [bp-20h] BYREF

  v0 = &GLXPlayerSereverConfig::s_urlMap;
  v1 = dword_A339A4;
  if ( !dword_A339A4 )
    return &GLXPlayerSereverConfig::s_urlMap;
  while ( 1 )
  {
    std::string::string(&v17, "type");
    v4 = *(const void **)(v1 + 36);
    M_data = (std::string *)v17._M_start_of_storage._M_data;
    v6 = *(_DWORD *)(v1 + 32) - (_DWORD)v4;
    v7 = v17._M_finish - v17._M_start_of_storage._M_data;
    if ( v17._M_finish - v17._M_start_of_storage._M_data >= v6 )
      v8 = *(_DWORD *)(v1 + 32) - (_DWORD)v4;
    else
      v8 = v17._M_finish - v17._M_start_of_storage._M_data;
    v9 = memcmp(v4, v17._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    if ( M_data == &v17 || !M_data )
      break;
    if ( (unsigned int)(v17._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
    {
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, v17._M_buffers._M_end_of_storage - (char *)M_data);
      break;
    }
    LC_API_FREE_0(M_data);
    if ( v9 >= 0 )
      v3 = *(_DWORD *)(v1 + 8);
    else
      v3 = *(_DWORD *)(v1 + 12);
    if ( v9 < 0 )
      v1 = (int)v0;
    if ( !v3 )
      goto LABEL_28;
LABEL_11:
    v0 = (char *)v1;
    v1 = v3;
  }
  if ( v9 >= 0 )
    v3 = *(_DWORD *)(v1 + 8);
  else
    v3 = *(_DWORD *)(v1 + 12);
  if ( v9 < 0 )
    v1 = (int)v0;
  if ( v3 )
    goto LABEL_11;
LABEL_28:
  result = (char *)v1;
  if ( (char *)v1 != &GLXPlayerSereverConfig::s_urlMap )
  {
    std::string::string(&v18, "type");
    v10 = *(const void **)(v1 + 36);
    v11 = *(_DWORD *)(v1 + 32) - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    if ( v11 >= v18._M_finish - v18._M_start_of_storage._M_data )
      v13 = v18._M_finish - v18._M_start_of_storage._M_data;
    else
      v13 = *(_DWORD *)(v1 + 32) - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::string::~string(&v18);
    if ( v14 >= 0 )
    {
      result = (char *)v1;
    }
    else
    {
      v16 = &__GLOBAL_OFFSET_TABLE_;
      v15 = 3518;
    }
    if ( v14 < 0 )
      return (char *)v16[v15];
  }
  return result;
}


// ===== 82f364 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::string> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
int *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        int *a1,
        int a2,
        int a3,
        int a4)
{
  char *v7; // r9
  int v8; // r8
  char *v9; // r10
  const void *v11; // r3
  const void *v12; // r1
  int v13; // r9
  int v14; // r10
  size_t v15; // r2
  int v16; // r0
  char *v17; // r9

  if ( (char *)a2 == &GLXPlayerSereverConfig::s_urlMap )
  {
    v9 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
    std::pair<std::string const,std::string>::pair((std::string *)(v9 + 16), (const char **)a3);
    *((_DWORD *)v9 + 3) = 0;
    *((_DWORD *)v9 + 2) = 0;
    v8 = (int)v9;
    *(_DWORD *)(a2 + 8) = v9;
    *(_DWORD *)(a2 + 4) = v9;
    *(_DWORD *)(a2 + 12) = v9;
    goto LABEL_7;
  }
  if ( a4 )
    goto LABEL_3;
  v11 = *(const void **)(a3 + 20);
  v12 = *(const void **)(a2 + 36);
  v13 = *(_DWORD *)(a3 + 16) - (_DWORD)v11;
  v14 = *(_DWORD *)(a2 + 32) - (_DWORD)v12;
  if ( v14 >= v13 )
    v15 = *(_DWORD *)(a3 + 16) - (_DWORD)v11;
  else
    v15 = *(_DWORD *)(a2 + 32) - (_DWORD)v12;
  v16 = memcmp(v11, v12, v15);
  if ( !v16 )
  {
    if ( v13 >= v14 )
      goto LABEL_13;
LABEL_3:
    v7 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
    std::pair<std::string const,std::string>::pair((std::string *)(v7 + 16), (const char **)a3);
    *((_DWORD *)v7 + 3) = 0;
    *((_DWORD *)v7 + 2) = 0;
    *(_DWORD *)(a2 + 8) = v7;
    v8 = (int)v7;
    if ( a2 == dword_A339A8 )
      dword_A339A8 = (int)v7;
    goto LABEL_7;
  }
  if ( v16 < 0 )
    goto LABEL_3;
LABEL_13:
  v17 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
  std::pair<std::string const,std::string>::pair((std::string *)(v17 + 16), (const char **)a3);
  *((_DWORD *)v17 + 3) = 0;
  *((_DWORD *)v17 + 2) = 0;
  *(_DWORD *)(a2 + 12) = v17;
  v8 = (int)v17;
  if ( a2 == dword_A339AC )
    dword_A339AC = (int)v17;
LABEL_7:
  *(_DWORD *)(v8 + 4) = a2;
  std::priv::_Rb_global<bool>::_Rebalance(v8, &dword_A339A4);
  ++dword_A339B0;
  *a1 = v8;
  return a1;
}


// ===== 82f4c0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(std::pair<std::string const,std::string> const&) [clone] =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
        int a1,
        int a2)
{
  char *v3; // r4
  const void *v5; // r7
  int v6; // r11
  int v7; // r6
  char *v8; // r3
  int v9; // r1
  const void *v10; // r3
  int v11; // r5
  size_t v12; // r2
  int v13; // r0
  char *v14; // r2
  char *v15; // r5
  const void *v16; // r0
  signed int v17; // r11
  int v18; // r6
  size_t v19; // r2
  int v20; // r0
  int v22; // r3
  char *v23; // r3
  int v24; // r3
  int v25; // [sp+8h] [bp-Ch] BYREF
  int v26; // [sp+Ch] [bp-8h] BYREF

  v3 = (char *)dword_A339A4;
  if ( !dword_A339A4 )
  {
    v3 = &GLXPlayerSereverConfig::s_urlMap;
    goto LABEL_27;
  }
  v5 = *(const void **)(a2 + 20);
  v6 = *(_DWORD *)(a2 + 16);
  v7 = v6 - (_DWORD)v5;
  while ( 1 )
  {
    v10 = *((const void **)v3 + 9);
    v11 = *((_DWORD *)v3 + 8) - (_DWORD)v10;
    if ( v11 >= v7 )
      v12 = v6 - (_DWORD)v5;
    else
      v12 = *((_DWORD *)v3 + 8) - (_DWORD)v10;
    v13 = memcmp(v5, v10, v12);
    v14 = v3;
    if ( !v13 )
    {
      if ( v7 < v11 )
        goto LABEL_3;
      v13 = v7 > v11;
    }
    if ( v13 >= 0 )
      break;
LABEL_3:
    v8 = *((char **)v3 + 2);
    v9 = 1;
    if ( !v8 )
      goto LABEL_13;
LABEL_4:
    v3 = v8;
  }
  v8 = *((char **)v3 + 3);
  v9 = 0;
  if ( v8 )
    goto LABEL_4;
LABEL_13:
  if ( !v9 )
  {
    v15 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( (char *)dword_A339A8 == v3 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
      &v25,
      (int)v3,
      a2,
      (int)v3);
    v24 = v25;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v24;
  }
  else
  {
    if ( !*v3 && v3 == *(char **)(*((_DWORD *)v3 + 1) + 4) )
    {
      v15 = *((char **)v3 + 3);
      v5 = *(const void **)(a2 + 20);
      v6 = *(_DWORD *)(a2 + 16);
      v14 = v15;
    }
    else
    {
      v15 = *((char **)v3 + 2);
      if ( v15 )
      {
        while ( *((_DWORD *)v15 + 3) )
          v15 = *((char **)v15 + 3);
LABEL_34:
        v14 = v15;
        v5 = *(const void **)(a2 + 20);
        v6 = *(_DWORD *)(a2 + 16);
      }
      else
      {
        v15 = *((char **)v3 + 1);
        if ( v3 != *((char **)v15 + 2) )
          goto LABEL_34;
        do
        {
          v23 = v15;
          v15 = *((char **)v15 + 1);
        }
        while ( *((char **)v15 + 2) == v23 );
        v5 = *(const void **)(a2 + 20);
        v6 = *(_DWORD *)(a2 + 16);
        v14 = v15;
      }
    }
LABEL_16:
    v16 = *((const void **)v14 + 9);
    v17 = v6 - (_DWORD)v5;
    v18 = *((_DWORD *)v14 + 8) - (_DWORD)v16;
    if ( v17 >= v18 )
      v19 = *((_DWORD *)v14 + 8) - (_DWORD)v16;
    else
      v19 = v17;
    v20 = memcmp(v16, v5, v19);
    if ( v20 )
    {
LABEL_22:
      if ( v20 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v15;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v18 >= v17 )
      {
        v20 = v18 > v17;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        &v26,
        (int)v3,
        a2,
        0);
      v22 = v26;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v22;
    }
  }
  return a1;
}


// ===== 82f6d8 GLXPlayerSereverConfig::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerSereverConfig::OnUpdateSuccess(const char **this, int a2)
{
  const char *NextResponseToken; // r0
  const char *v5; // r0
  int v6; // r8
  const char *v7; // r7
  void (__fastcall *v8)(int, int, const char *, size_t); // r6
  size_t v9; // r0
  int v10; // [sp+14h] [bp-2048h] BYREF
  char v11[52]; // [sp+24h] [bp-2038h] BYREF
  char v12[28]; // [sp+1024h] [bp-1038h] BYREF
  std::string v13; // [sp+2024h] [bp-38h] BYREF
  std::string v14; // [sp+203Ch] [bp-20h] BYREF

  if ( a2 != 1 )
    return GLXPlayerWebComponent::OnUpdateSuccess((GLXPlayerWebComponent *)this, a2);
LABEL_3:
  while ( 1 )
  {
    NextResponseToken = (const char *)GLXPlayerWebComponent::GetNextResponseToken((GLXPlayerWebComponent *)this, v12);
    if ( !XP_API_STRLEN(NextResponseToken) )
      break;
    while ( 1 )
    {
      XP_API_MEMSET(v11, 0, 0x1000u);
      XP_API_MEMCPY(v11, v12, 0x1000u);
      GLXPlayerWebComponent::GetNextResponseToken((GLXPlayerWebComponent *)this, v12);
      if ( XP_API_STRCMP(v11, "configured") )
        break;
      if ( !XP_API_STRLEN(v12) )
        goto LABEL_3;
      GLXPlayerSereverConfig::m_isConfigured = XP_API_ATOI(v12) == 1;
      v5 = (const char *)GLXPlayerWebComponent::GetNextResponseToken((GLXPlayerWebComponent *)this, v12);
      if ( !XP_API_STRLEN(v5) )
        goto LABEL_7;
    }
    if ( XP_API_STRLEN(v12) )
    {
      std::string::string(&v13, v11);
      std::string::string(&v14, v12);
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
        (int)&v10,
        (int)&v13);
      std::string::~string(&v14);
      std::string::~string(&v13);
    }
  }
LABEL_7:
  if ( &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>("XplayerURL")
    || &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [5]>()
    || &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>("XPPHPVerNo") )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)*(this + 1) + 12))(*(this + 1), 1, 40);
    return 1;
  }
  else
  {
    GLXPlayerSereverConfig::s_isLoadConfig = 1;
    GLXPlayerSereverConfig::SaveServerConfig((GLXPlayerSereverConfig *)this);
    v6 = (int)*(this + 1);
    v7 = *(this + 9);
    v8 = *(void (__fastcall **)(int, int, const char *, size_t))(*(_DWORD *)v6 + 8);
    v9 = XP_API_STRLEN(v7);
    v8(v6, 1, v7, v9);
    return 1;
  }
}


// ===== 82f940 GLXPlayerSereverConfig::OnUpdateFailure(int) =====
int __fastcall GLXPlayerSereverConfig::OnUpdateFailure(GLXPlayerSereverConfig *this, int a2)
{
  int NextResponseIntToken; // r0
  int v5; // r9
  const char *NextResponseToken; // r0
  int v8; // [sp+14h] [bp-2048h] BYREF
  char v9[52]; // [sp+24h] [bp-2038h] BYREF
  char v10[28]; // [sp+1024h] [bp-1038h] BYREF
  std::string v11; // [sp+2024h] [bp-38h] BYREF
  std::string v12; // [sp+203Ch] [bp-20h] BYREF

  NextResponseIntToken = GLXPlayerWebComponent::GetNextResponseIntToken(this);
  v5 = NextResponseIntToken;
  if ( a2 == 1 && NextResponseIntToken == 101 )
  {
    while ( 1 )
    {
      NextResponseToken = (const char *)GLXPlayerWebComponent::GetNextResponseToken(this, v10);
      if ( !XP_API_STRLEN(NextResponseToken) )
        break;
      XP_API_MEMSET(v9, 0, 0x1000u);
      XP_API_MEMCPY(v9, v10, 0x1000u);
      GLXPlayerWebComponent::GetNextResponseToken(this, v10);
      if ( XP_API_STRLEN(v10) )
      {
        std::string::string(&v11, v9);
        std::string::string(&v12, v10);
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
          (int)&v8,
          (int)&v11);
        std::string::~string(&v12);
        std::string::~string(&v11);
      }
    }
  }
  (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), a2, v5);
  return 1;
}


// ===== 82faac GLXPlayerSereverConfig::loadConfigFromLocal(void) =====
int __fastcall GLXPlayerSereverConfig::loadConfigFromLocal(GLXPlayerSereverConfig *this)
{
  int v1; // r4
  int v3; // r0
  int v4; // r0
  size_t v5; // r11
  size_t v6; // r5
  char *v7; // r5
  signed int v8; // r0
  int v9; // r0
  int i; // r9
  int v11; // r8
  size_t v12; // r0
  signed int v13; // r0
  int v14; // r0
  int v15; // r4
  int *v16; // [sp+0h] [bp-1ACh]
  void *v17; // [sp+4h] [bp-1A8h]
  int v19; // [sp+1Ch] [bp-190h]
  _BYTE v20[8]; // [sp+3Ch] [bp-170h] BYREF
  char v21[256]; // [sp+4Ch] [bp-160h] BYREF
  std::string v22; // [sp+14Ch] [bp-60h] BYREF
  std::string v23; // [sp+164h] [bp-48h] BYREF
  char v24[32]; // [sp+17Ch] [bp-30h] BYREF
  int v25; // [sp+19Ch] [bp-10h] BYREF
  int v26; // [sp+1A0h] [bp-Ch]

  v1 = (unsigned __int8)GLXPlayerSereverConfig::s_isLoadConfig;
  if ( GLXPlayerSereverConfig::s_isLoadConfig )
    return 1;
  v3 = XP_API_FILE_OPEN("serverConfig.sav", "r");
  v19 = v3;
  if ( v3 )
  {
    v4 = XP_API_FILE_GET_LENGTH(v3);
    v5 = v4 + 1;
    v6 = v4;
    v17 = (void *)operator new[](v4 + 1);
    XP_API_MEMSET(v17, v1, v5);
    XP_API_FILE_READ(v17, v6, 1u, v19);
    v7 = (char *)operator new[](v5);
    XP_API_MEMSET(v7, v1, v5);
    XP_API_PARSE_DATA((char *)v17, v7, v1, 10);
    v8 = XP_API_STRLEN(v7);
    if ( v8 > 0 )
    {
      v9 = v8 - 1;
      if ( v7[v9] == 13 )
        v7[v9] = v1;
      for ( i = 1; ; ++i )
      {
        memset(v24, 0, sizeof(v24));
        LC_API_MEMSET_0(v21, 0, 0x100u);
        XP_API_PARSE_DATA(v7, v24, 0, 58);
        v11 = XP_API_PARSE_DATA(v7, v21, 1, 58);
        XP_API_MEMSET(v21, 0, 0x100u);
        v12 = XP_API_STRLEN(v7);
        XP_API_MEMCPY(v21, &v7[v11], v12 - v11);
        XP_API_STRTRIM(v24);
        XP_API_STRTRIM(v21);
        if ( XP_API_STRCMP(v24, "GGI") )
        {
          if ( XP_API_STRCMP(v24, "Date") )
          {
            if ( XP_API_STRLEN(v21) )
            {
              std::string::string(&v22, v24);
              std::string::string(&v23, v21);
              std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
                (int)v20,
                (int)&v22);
              std::string::~string(&v23);
              std::string::~string(&v22);
            }
          }
          else
          {
            v25 = 0;
            v26 = 0;
            XP_API_PARSE_DATA(v21, &v25, 0, 45);
            v16 = *((int **)this + 15);
            *v16 = XP_API_ATOI((const char *)&v25);
            v26 = 0;
            v25 = 0;
            XP_API_PARSE_DATA(v21, &v25, 1, 45);
            v15 = *((_DWORD *)this + 15);
            *(_DWORD *)(v15 + 4) = XP_API_ATOI((const char *)&v25);
          }
        }
        else
        {
          XP_API_ATOI(v21);
        }
        XP_API_MEMSET(v7, 0, v5);
        XP_API_PARSE_DATA((char *)v17, v7, i, 10);
        v13 = XP_API_STRLEN(v7);
        if ( v13 <= 0 )
          break;
        v14 = v13 - 1;
        if ( v7[v14] == 13 )
          v7[v14] = 0;
      }
    }
    if ( v7 )
      LC_API_FREE_0(v7);
    if ( v17 )
      LC_API_FREE_0(v17);
    XP_API_FILE_CLOSE(v19);
    if ( &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>("XplayerURL")
      || &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [5]>()
      || &GLXPlayerSereverConfig::s_urlMap == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_find<char [11]>("XPPHPVerNo") )
    {
      return 0;
    }
    else
    {
      GLXPlayerSereverConfig::s_isLoadConfig = 1;
      return 1;
    }
  }
  else
  {
    XP_DEBUG_OUT("[GLXPlayerSereverConfig] loadConfigFromLocal - %s not found \n", "serverConfig.sav");
    return 0;
  }
}


// ===== 82fec8 GLXPlayerSereverConfig::Update(void) =====
int __fastcall GLXPlayerSereverConfig::Update(int this)
{
  int v1; // r5
  int v2; // r4
  int v3; // r4

  v1 = this;
  if ( *(_BYTE *)(this + 44) )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(this + 32) + 52))(*(_DWORD *)(this + 32));
    if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 60))(*(_DWORD *)(v1 + 32)) )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 68))(*(_DWORD *)(v1 + 32));
      if ( this )
        return this;
      this = XP_API_GET_TIME();
      if ( this - *(_DWORD *)(v1 + 52) <= 18000 )
        return this;
      v3 = *(_DWORD *)(v1 + 56);
      (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 20))(v1);
      if ( v3 != 1 || !GLXPlayerSereverConfig::loadConfigFromLocal((GLXPlayerSereverConfig *)v1) )
        return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 + 4) + 4))(*(_DWORD *)(v1 + 4), v3);
    }
    else
    {
      *(_BYTE *)(v1 + 44) = 0;
      XP_DEBUG_OUT("GLXPlayerWebComponent::Update(): m_enable is changed to false!!\n");
      if ( !(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 64))(*(_DWORD *)(v1 + 32)) )
        return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 24))(v1);
      v2 = *(_DWORD *)(v1 + 56);
      (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 20))(v1);
      if ( v2 != 1 || !GLXPlayerSereverConfig::loadConfigFromLocal((GLXPlayerSereverConfig *)v1) )
        return (***(int (__fastcall ****)(_DWORD))(v1 + 4))(*(_DWORD *)(v1 + 4));
    }
    return (*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(v1 + 4) + 8))(
             *(_DWORD *)(v1 + 4),
             1,
             0,
             0);
  }
  return this;
}


// ===== 83003c GLXPlayerSocket::GetAcceptIP(void) =====
int __fastcall GLXPlayerSocket::GetAcceptIP(GLXPlayerSocket *this)
{
  return *((_DWORD *)this + 521);
}


// ===== 830044 GLXPlayerSocket::GetAcceptPort(void) =====
int __fastcall GLXPlayerSocket::GetAcceptPort(GLXPlayerSocket *this)
{
  return *((_DWORD *)this + 522);
}


// ===== 83004c GLXPlayerSocket::SetAcceptPort(int) =====
int __fastcall GLXPlayerSocket::SetAcceptPort(int this, int a2)
{
  *(_DWORD *)(this + 2088) = a2;
  return this;
}


// ===== 830054 GLXPlayerSocket::SetSocket(int) =====
int __fastcall GLXPlayerSocket::SetSocket(int this, int a2)
{
  *(_DWORD *)(this + 8) = a2;
  return this;
}


// ===== 83005c GLXPlayerSocket::GetSocketType(void) =====
int __fastcall GLXPlayerSocket::GetSocketType(GLXPlayerSocket *this)
{
  return *((_DWORD *)this + 520);
}


// ===== 830064 GLXPlayerSocket::SetSocketType(int) =====
int __fastcall GLXPlayerSocket::SetSocketType(int this, int a2)
{
  *(_DWORD *)(this + 2080) = a2;
  return this;
}


// ===== 83006c GLXPlayerSocket::GetSendPercentage(void) =====
unsigned int __fastcall GLXPlayerSocket::GetSendPercentage(GLXPlayerSocket *this)
{
  unsigned int result; // r0

  result = *((_DWORD *)this + 532);
  if ( result > 0x64 )
    return 0;
  return result;
}


// ===== 83007c GLXPlayerSocket::Cancel(void) =====
_DWORD *__fastcall GLXPlayerSocket::Cancel(_DWORD *this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(this + 1);
  v2 = v1 == 0;
  if ( v1 )
    v2 = v1 == 7;
  if ( !v2 && v1 != 6 )
  {
    *(this + 1) = 8;
    *(this + 535) = 0;
    return (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*this + 60))(this);
  }
  return this;
}


// ===== 8300bc GLXPlayerSocket::IsInProgress(void) =====
bool __fastcall GLXPlayerSocket::IsInProgress(GLXPlayerSocket *this)
{
  int v1; // r0
  bool v2; // zf

  v1 = *((_DWORD *)this + 1);
  v2 = v1 == 0;
  if ( v1 )
    v2 = v1 == 7;
  return !v2 && v1 != 8 && v1 != 6;
}


// ===== 8300e8 GLXPlayerSocket::IsErrorOccurred(void) =====
bool __fastcall GLXPlayerSocket::IsErrorOccurred(GLXPlayerSocket *this)
{
  return *((_DWORD *)this + 1) == 7;
}


// ===== 8300fc std::string::find(char const*,uint,uint) =====
unsigned int __fastcall std::string::find(std::string *this, char *a2, unsigned int a3, unsigned int a4)
{
  char *M_finish; // r12
  char *M_data; // r5
  unsigned int v7; // r6
  unsigned int result; // r0
  bool v9; // zf
  char *v10; // r0

  M_finish = this->_M_finish;
  M_data = this->_M_start_of_storage._M_data;
  v7 = M_finish - M_data;
  result = a3;
  if ( a3 >= M_finish - M_data || a4 + a3 > v7 )
  {
    v9 = a3 == v7;
    if ( a3 <= v7 )
      v9 = a4 == 0;
    if ( !v9 )
      return -1;
  }
  else
  {
    v10 = std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
            &M_data[a3],
            M_finish,
            a2,
            &a2[a4]);
    if ( v10 == this->_M_finish )
      return -1;
    return v10 - this->_M_start_of_storage._M_data;
  }
  return result;
}


// ===== 83017c std::string::find(char const*,uint) =====
unsigned int __fastcall std::string::find(std::string *this, char *a2, unsigned int a3)
{
  size_t v6; // r0

  v6 = LC_API_STRLEN_0(a2);
  return std::string::find(this, a2, a3, v6);
}


// ===== 8301ac GLXPlayerSocket::Start(void) =====
void *__fastcall GLXPlayerSocket::Start(GLXPlayerSocket *this)
{
  void *result; // r0

  *((_DWORD *)this + 519) = 0;
  result = XP_API_MEMSET((char *)this + 28, 0, 0x800u);
  *((_DWORD *)this + 2) = -1;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 3) = 0;
  return result;
}


// ===== 8301e4 GLXPlayerSocket::~GLXPlayerSocket() =====
void __fastcall GLXPlayerSocket::~GLXPlayerSocket(GLXPlayerSocket *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 521);
  *(_DWORD *)this = off_992EE0;
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 521) = 0;
  }
  v3 = *((void **)this + 5);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 5) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2092));
}


// ===== 830250 GLXPlayerSocket::~GLXPlayerSocket() =====
void __fastcall GLXPlayerSocket::~GLXPlayerSocket(GLXPlayerSocket *this)
{
  GLXPlayerSocket::~GLXPlayerSocket(this);
  LC_API_FREE_0(this);
}


// ===== 83026c GLXPlayerSocket::~GLXPlayerSocket() =====
void __fastcall GLXPlayerSocket::~GLXPlayerSocket(GLXPlayerSocket *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 521);
  *(_DWORD *)this = off_992EE0;
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 521) = 0;
  }
  v3 = *((void **)this + 5);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 5) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 2092));
}


// ===== 8302d8 GLXPlayerSocket::SetAcceptIP(char *) =====
void *__fastcall GLXPlayerSocket::SetAcceptIP(GLXPlayerSocket *this, char *a2)
{
  void *result; // r0

  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 521) = result;
  return result;
}


// ===== 8302f0 GLXPlayerSocket::GLXPlayerSocket(char *,int,GLXPlayerSocketObserver *) =====
_DWORD *__fastcall GLXPlayerSocket::GLXPlayerSocket(_DWORD *a1, const char *a2, int a3, int a4)
{
  _DWORD *v5; // r0

  v5 = a1 + 523;
  a1[4] = a3;
  a1[6] = a4;
  *a1 = off_992EE0;
  a1[527] = v5;
  a1[528] = v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
  *(_BYTE *)a1[527] = 0;
  if ( a2 )
    a1[5] = XP_API_STRNEW(a2);
  else
    a1[5] = 0;
  a1[2] = -1;
  a1[534] = 0;
  a1[3] = 0;
  a1[521] = 0;
  a1[535] = 0;
  a1[536] = 0;
  a1[537] = 0;
  a1[538] = 0;
  a1[531] = 0;
  a1[532] = 0;
  a1[533] = 0;
  return a1;
}


// ===== 83039c GLXPlayerSocket::GLXPlayerSocket(char *,int,GLXPlayerSocketObserver *) =====
_DWORD *__fastcall GLXPlayerSocket::GLXPlayerSocket(_DWORD *a1, const char *a2, int a3, int a4)
{
  _DWORD *v5; // r0

  v5 = a1 + 523;
  a1[4] = a3;
  a1[6] = a4;
  *a1 = off_992EE0;
  a1[527] = v5;
  a1[528] = v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
  *(_BYTE *)a1[527] = 0;
  if ( a2 )
    a1[5] = XP_API_STRNEW(a2);
  else
    a1[5] = 0;
  a1[2] = -1;
  a1[534] = 0;
  a1[3] = 0;
  a1[521] = 0;
  a1[535] = 0;
  a1[536] = 0;
  a1[537] = 0;
  a1[538] = 0;
  a1[531] = 0;
  a1[532] = 0;
  a1[533] = 0;
  return a1;
}


// ===== 830448 GLXPlayerSocket::ParseHttpHeader(char *) =====
unsigned int __fastcall GLXPlayerSocket::ParseHttpHeader(GLXPlayerSocket *this, char *a2)
{
  unsigned int v4; // r6
  void *v5; // r7
  unsigned int v6; // r0
  unsigned int v7; // r10
  size_t v8; // r9
  void *v9; // r6
  void *v10; // r5
  size_t v11; // r0
  unsigned int v12; // r10
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+Ch] [bp-20h] BYREF

  v4 = XP_API_STRLEN(a2) + 1;
  v5 = (void *)operator new[](v4);
  XP_API_MEMSET(v5, 0, v4);
  XP_API_TOLOWER(a2, (char *)v5);
  v6 = std::string::find((std::string *)((char *)this + 2092), "\r\n\r\n", 0, 4u);
  v7 = v6 + 1;
  v8 = v6;
  v9 = (void *)operator new[](v6 + 1);
  v10 = (void *)operator new[](v7);
  XP_API_MEMSET(v9, 0, v7);
  XP_API_MEMSET(v10, 0, v7);
  XP_API_MEMCPY(v9, *((const void **)this + 528), v8);
  XP_API_TOLOWER((char *)v9, (char *)v10);
  std::string::string((std::string *)&v14, (char *)v10);
  v11 = LC_API_STRLEN_0((const char *)v5);
  v12 = std::string::find((std::string *)&v14, (char *)v5, 0, v11);
  if ( v5 )
    operator delete[](v5);
  if ( v9 )
    operator delete[](v9);
  if ( v10 )
    operator delete[](v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  return v12;
}


// ===== 8305bc GLXPlayerSocket::RemoveHttpHeader(void) =====
void __fastcall GLXPlayerSocket::RemoveHttpHeader(GLXPlayerSocket *this)
{
  std::string *v1; // r5
  signed int v2; // r8
  size_t v3; // r0
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+Ch] [bp-1Ch] BYREF

  v1 = (std::string *)((char *)this + 2092);
  v2 = std::string::find((std::string *)((char *)this + 2092), "\r\n\r\n", 0, 4u);
  if ( v2 > 0 )
  {
    v3 = XP_API_STRLEN("\r\n\r\n");
    std::string::string((std::string *)&v4, (int)v1, v3 + v2, 0xFFFFFFFF);
    if ( v1 != &v4 )
      std::string::_M_assign(v1, v4._M_start_of_storage._M_data, v4._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  }
}


// ===== 83067c GLXPlayerSocket::ParseChunkedContent(void) =====
int __fastcall GLXPlayerSocket::ParseChunkedContent(GLXPlayerSocket *this)
{
  const char *v1; // r1
  const char *v2; // r2
  int v3; // r6
  unsigned int i; // r5
  int v5; // r1
  int v6; // r1
  int v7; // r5
  unsigned int j; // r7
  int v9; // r1
  int v10; // r1
  signed int v11; // r5
  unsigned int v12; // r6
  unsigned int v13; // r10
  signed int v14; // r7
  int v15; // r6
  int v16; // r10
  unsigned int v17; // r5
  int v18; // r1
  int v19; // r1
  int v20; // r5
  unsigned int k; // r10
  int v22; // r1
  int v23; // r1
  int v24; // r4
  std::string *v26; // [sp+10h] [bp-114h]
  std::priv::_String_base<char,std::allocator<char> > v28; // [sp+5Ch] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+74h] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v30; // [sp+8Ch] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+A4h] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+BCh] [bp-68h] BYREF
  std::string v33; // [sp+D4h] [bp-50h] BYREF
  std::string v34; // [sp+ECh] [bp-38h] BYREF
  std::string v35; // [sp+104h] [bp-20h] BYREF

  v26 = (std::string *)((char *)this + 2092);
  v1 = *((const char **)this + 528);
  v2 = *((const char **)this + 527);
  v35._M_finish = (char *)&v35;
  v35._M_start_of_storage._M_data = (char *)&v35;
  std::string::_M_range_initialize(&v35, v1, v2);
  std::string::_M_assign(v26, "", "");
  std::string::string(&v34, "");
  std::string::string(&v33, "");
  XP_DEBUG_OUT("The http content is:\n%s\n", v35._M_start_of_storage._M_data);
  v3 = std::string::find(&v35, "\r\n", 0, 2u);
  XP_DEBUG_OUT("The posChunkSize is: %d", v3);
  if ( v3 <= 0 )
  {
LABEL_25:
    v24 = 0;
    goto LABEL_26;
  }
  std::string::string((std::string *)&v32, (int)&v35, 0, v3);
  std::string::_M_assign(&v34, v32._M_start_of_storage._M_data, v32._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
  for ( i = 0; i != v3; ++i )
  {
    while ( i < v34._M_finish - v34._M_start_of_storage._M_data )
    {
      v5 = v34._M_start_of_storage._M_data[i++];
      XP_DEBUG_OUT("The charactor is:\n%d\n", v5);
      if ( v3 == i )
        goto LABEL_6;
    }
    __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
    v6 = v34._M_start_of_storage._M_data[i];
    XP_DEBUG_OUT("The charactor is:\n%d\n", v6);
  }
LABEL_6:
  v7 = std::string::find(&v34, " ", 0, 1u);
  XP_DEBUG_OUT("The tmpPosChunkSize is: %d", v7);
  if ( v7 > 0 )
  {
    std::string::string((std::string *)&v31, (int)&v34, 0, v7);
    std::string::_M_assign(&v34, v31._M_start_of_storage._M_data, v31._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
    for ( j = 0; j != v7; ++j )
    {
      while ( v34._M_finish - v34._M_start_of_storage._M_data > j )
      {
        v9 = v34._M_start_of_storage._M_data[j++];
        XP_DEBUG_OUT("The charactor is:\n%d\n", v9);
        if ( v7 == j )
          goto LABEL_11;
      }
      __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
      v10 = v34._M_start_of_storage._M_data[j];
      XP_DEBUG_OUT("The charactor is:\n%d\n", v10);
    }
  }
LABEL_11:
  v11 = strtol(v34._M_start_of_storage._M_data, nullptr, 16);
  v12 = v3 + 2;
  XP_DEBUG_OUT("The chunk size is: %d\n", v11);
  XP_DEBUG_OUT("current pos is: %d\n", v12);
  while ( v11 > 0 )
  {
    std::string::string((std::string *)&v30, (int)&v35, v12, v11);
    std::string::_M_assign(&v33, v30._M_start_of_storage._M_data, v30._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v30);
    v13 = v12 + v11;
    XP_DEBUG_OUT("chunkDataBuf is:\n%s\n", v33._M_start_of_storage._M_data);
    std::string::_M_append(v26, v33._M_start_of_storage._M_data, v33._M_finish);
    v14 = v12 + v11 + 2;
    XP_DEBUG_OUT("current whole content is:\n%s\n", *((_DWORD *)this + 528));
    XP_DEBUG_OUT("current pos is: %d\n", v14);
    v15 = std::string::find(&v35, "\r\n", v14, 2u);
    XP_DEBUG_OUT("The posChunkSize is: %d\n", v15);
    if ( v15 <= 0 )
      goto LABEL_25;
    std::string::string((std::string *)&v29, (int)&v35, v13 + 2, v15);
    std::string::_M_assign(&v34, v29._M_start_of_storage._M_data, v29._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
    XP_DEBUG_OUT("The chunkSizeBuf is: %s\n", v34._M_start_of_storage._M_data);
    if ( v14 < v15 )
    {
      v16 = -2 - v13 + v15;
      v17 = 0;
      do
      {
        while ( v34._M_finish - v34._M_start_of_storage._M_data > v17 )
        {
          v18 = v34._M_start_of_storage._M_data[v17++];
          XP_DEBUG_OUT("The charactor is:\n%d\n", v18);
          if ( v17 == v16 )
            goto LABEL_18;
        }
        __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
        v19 = v34._M_start_of_storage._M_data[v17++];
        XP_DEBUG_OUT("The charactor is:\n%d\n", v19);
      }
      while ( v17 != v16 );
    }
LABEL_18:
    v20 = std::string::find(&v34, " ", 0, 1u);
    XP_DEBUG_OUT("The tmpPosChunkSize is: %d\n", v20);
    if ( v20 > 0 )
    {
      std::string::string((std::string *)&v28, (int)&v34, 0, v20);
      std::string::_M_assign(&v34, v28._M_start_of_storage._M_data, v28._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v28);
      for ( k = 0; k != v20; ++k )
      {
        while ( v34._M_finish - v34._M_start_of_storage._M_data > k )
        {
          v22 = v34._M_start_of_storage._M_data[k++];
          XP_DEBUG_OUT("The charactor is:\n%d\n", v22);
          if ( v20 == k )
            goto LABEL_23;
        }
        __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
        v23 = v34._M_start_of_storage._M_data[k];
        XP_DEBUG_OUT("The charactor is:\n%d\n", v23);
      }
    }
LABEL_23:
    v11 = strtol(v34._M_start_of_storage._M_data, nullptr, 16);
    v12 = v14 + 2 + v15;
    XP_DEBUG_OUT("The chunk size is: %d\n", v11);
    XP_DEBUG_OUT("current pos is: %d\n", v12);
  }
  v24 = 1;
LABEL_26:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v35);
  return v24;
}


// ===== 830cb0 GLXPlayerSocket::CalculateTotalLength(void) =====
int __fastcall GLXPlayerSocket::CalculateTotalLength(GLXPlayerSocket *this)
{
  char *v1; // r6
  int v2; // r3
  int v3; // r6
  size_t v4; // r0
  signed int v5; // r6
  size_t v6; // r0
  std::string *v7; // r4
  int v8; // r3
  size_t v10; // r0
  signed int v11; // r4
  unsigned int v12; // r2
  int v13; // r3
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+1Ch] [bp-8Ch] BYREF
  std::string v15; // [sp+34h] [bp-74h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+4Ch] [bp-5Ch] BYREF
  std::string v17; // [sp+64h] [bp-44h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+7Ch] [bp-2Ch] BYREF
  char v19[20]; // [sp+94h] [bp-14h] BYREF
  char v20[20]; // [sp+A8h] [bp+0h] BYREF

  strcpy(v20, "\r\nContent-Length:");
  strcpy(v19, "\r\nContent-length:");
  v1 = (char *)this + 2092;
  v2 = std::string::find((std::string *)((char *)this + 2092), "\r\n\r\n", 0, 4u);
  if ( v2 >= 0 )
  {
    std::string::string((std::string *)&v18, (int)v1, 0, v2);
    v4 = LC_API_STRLEN_0(v20);
    v5 = std::string::find((std::string *)&v18, v20, 0, v4);
    if ( v5 < 0 )
    {
      v10 = LC_API_STRLEN_0(v19);
      v11 = std::string::find((std::string *)&v18, v19, 0, v10);
      if ( v11 < 0 )
      {
        v3 = 0;
        goto LABEL_6;
      }
      v12 = XP_API_STRLEN(v19) + v11;
      v7 = &v17;
      std::string::string(&v17, (int)&v18, v12, 0xFFFFFFFF);
      v13 = std::string::find(&v17, "\r\n", 0);
      if ( v13 >= 0 )
      {
        std::string::string((std::string *)&v16, (int)&v17, 0, v13);
        std::string::_M_assign(&v17, v16._M_start_of_storage._M_data, v16._M_finish);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
        v3 = XP_API_ATOI(v17._M_start_of_storage._M_data);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
        goto LABEL_6;
      }
    }
    else
    {
      v6 = XP_API_STRLEN(v20);
      v7 = &v15;
      std::string::string(&v15, (int)&v18, v6 + v5, 0xFFFFFFFF);
      v8 = std::string::find(&v15, "\r\n", 0, 2u);
      if ( v8 >= 0 )
      {
        std::string::string((std::string *)&v14, (int)&v15, 0, v8);
        std::string::_M_assign(&v15, v14._M_start_of_storage._M_data, v14._M_finish);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
        v3 = XP_API_ATOI(v15._M_start_of_storage._M_data);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
LABEL_6:
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
        return v3;
      }
    }
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v7);
    v3 = -1;
    goto LABEL_6;
  }
  return -1;
}


// ===== 830f20 GLXPlayerSocket::Run(void) =====
int __fastcall GLXPlayerSocket::Run(int this)
{
  int v1; // r1
  int v2; // r4
  bool v3; // zf
  int v4; // r5
  int v5; // r0
  int v6; // r3
  int v7; // r2
  int v8; // r6
  int v9; // r0
  int v10; // r5
  int v11; // r1
  int v12; // r0
  int v13; // r0
  int v14; // r5
  int v15; // r0
  int v16; // r1
  int v17; // r0
  int v18; // r3

  v1 = *(_DWORD *)(this + 4);
  v2 = this;
  v3 = v1 == 0;
  if ( v1 )
    v3 = v1 == 7;
  if ( v3 || v1 == 8 )
    return XP_DEBUG_OUT("GLXPlayerSocket::Run(): m_state is %d, quit Run()!!\n");
  switch ( v1 )
  {
    case 1:
      if ( *(_DWORD *)(this + 12)
        || (v14 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)this + 32))(this, *(_DWORD *)(this + 20)),
            (*(_DWORD *)(v2 + 12) = v14) != 0) )
      {
        this = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 40))(v2);
        if ( this )
        {
          *(_DWORD *)(v2 + 4) = 2;
        }
        else
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
          return XP_DEBUG_OUT("XSocket::Run() err = %d \n");
        }
      }
      else
      {
        this = XP_API_GET_TIME();
        if ( this - *(_DWORD *)(v2 + 2152) > 9999 )
        {
          v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
          this = XP_DEBUG_OUT("XSocket::Run() err = %d \n", v15);
          *(_DWORD *)(v2 + 4) = 7;
          *(_DWORD *)(v2 + 2144) = 0;
        }
      }
      return this;
    case 2:
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)this + 52))(this) )
      {
        XP_DEBUG_OUT("XSocket::Run(): Connected \n");
        *(_DWORD *)(v2 + 2124) = 0;
        *(_DWORD *)(v2 + 2128) = 0;
        this = XP_API_GET_TIME();
        *(_DWORD *)(v2 + 4) = 3;
        *(_DWORD *)(v2 + 2132) = this;
        *(_DWORD *)(v2 + 2140) = 0;
      }
      else if ( *(_DWORD *)(v2 + 2140) == 1 )
      {
        return XP_DEBUG_OUT("XSocket::Run(): Connecting... \n");
      }
      else
      {
        v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
        XP_DEBUG_OUT("XSocket::Run() err = %d \n", v12);
        this = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 60))(v2);
        *(_DWORD *)(v2 + 2140) = 0;
        *(_DWORD *)(v2 + 4) = 7;
      }
      return this;
    case 3:
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)this + 64))(this, 1);
      if ( this < 0 )
        goto LABEL_45;
      if ( this )
      {
        v4 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 24) + 4))(*(_DWORD *)(v2 + 24));
        v5 = (***(int (__fastcall ****)(_DWORD))(v2 + 24))(*(_DWORD *)(v2 + 24));
        v6 = *(_DWORD *)(v2 + 2124);
        v7 = v4 - v6;
        if ( v4 - v6 > 2048 )
          v7 = 2048;
        this = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v2 + 68))(v2, v5 + v6, v7);
        if ( this < 0 )
        {
LABEL_45:
          v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
          XP_DEBUG_OUT("XSocket::Run() err = %d \n", v16);
          this = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 60))(v2);
          *(_DWORD *)(v2 + 4) = 7;
        }
        else
        {
          v8 = this + *(_DWORD *)(v2 + 2124);
          *(_DWORD *)(v2 + 2124) = v8;
          if ( v4 > 0 )
          {
            this = 100 * v8 / v4;
            *(_DWORD *)(v2 + 2128) = this;
          }
          if ( v4 == v8 )
          {
            XP_DEBUG_OUT("XSocket::Run(): Send successful. \n");
            *(_DWORD *)(v2 + 2076) = 0;
            std::string::_M_assign((std::string *const)(v2 + 2092), "", "");
            *(_BYTE *)(v2 + 2117) = 1;
            *(_BYTE *)(v2 + 2118) = 0;
            *(_BYTE *)(v2 + 2116) = 0;
            XP_DEBUG_OUT("XSocket::Run(): The amount of sent is: %d\n", v4);
            v13 = XP_API_GET_TIME();
            XP_DEBUG_OUT("XSocket::Run(): The time of sent is: %d\n", v13 - *(_DWORD *)(v2 + 2132));
            this = XP_API_GET_TIME();
            *(_DWORD *)(v2 + 4) = 4;
            *(_DWORD *)(v2 + 2136) = this;
          }
        }
      }
      return this;
    case 4:
      this = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)this + 64))(this, 0);
      if ( this <= 0 )
        return this;
      XP_DEBUG_OUT("XSocket::Run(): Have someting to receive. \n");
      XP_API_MEMSET((void *)(v2 + 28), 0, 0x800u);
      v9 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v2 + 72))(v2, v2 + 28, 2048);
      if ( v9 < 0 )
      {
        v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 44))(v2);
        XP_DEBUG_OUT("XSocket::Run() err = %d \n", v17);
        (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 60))(v2);
        v18 = *(_DWORD *)(v2 + 24);
        *(_DWORD *)(v2 + 4) = 7;
        return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v18 + 12))(v18, 0);
      }
      else if ( v9 )
      {
        std::string::_M_append((std::string *)(v2 + 2092), (char *)(v2 + 28), (char *)(v2 + v9 + 28));
        if ( *(_BYTE *)(v2 + 2117) )
        {
          this = std::string::find((std::string *)(v2 + 2092), "\r\n\r\n", 0);
          if ( this <= 0 )
            return this;
          std::string::find((std::string *)(v2 + 2092), "\r\n\r\n", 0);
          if ( (GLXPlayerSocket::ParseHttpHeader((GLXPlayerSocket *)v2, "Content-Length") & 0x80000000) == 0 )
          {
            *(_DWORD *)(v2 + 2120) = GLXPlayerSocket::CalculateTotalLength((GLXPlayerSocket *)v2);
            *(_BYTE *)(v2 + 2118) = 1;
          }
          GLXPlayerSocket::RemoveHttpHeader((GLXPlayerSocket *)v2);
          *(_BYTE *)(v2 + 2117) = 0;
        }
        v10 = *(_DWORD *)(v2 + 2108) - *(_DWORD *)(v2 + 2112);
        this = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v2 + 24) + 12))(*(_DWORD *)(v2 + 24), v10);
        if ( *(_BYTE *)(v2 + 2118) )
        {
          v11 = *(_DWORD *)(v2 + 2120);
          if ( v11 == v10 )
          {
            *(_DWORD *)(v2 + 4) = 5;
            XP_DEBUG_OUT("XSocket::Run(): The amount of recv is: %d\n", v11);
            XP_API_GET_TIME();
            return XP_DEBUG_OUT("XSocket::Run(): The time of recv is: %d\n");
          }
        }
      }
      else
      {
        XP_DEBUG_OUT("XSocket::Run(): Close connection \n");
        if ( !*(_BYTE *)(v2 + 2118) )
          GLXPlayerSocket::ParseChunkedContent((GLXPlayerSocket *)v2);
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(v2 + 24) + 8))(
          *(_DWORD *)(v2 + 24),
          *(_DWORD *)(v2 + 2112),
          *(_DWORD *)(v2 + 2108) - *(_DWORD *)(v2 + 2112));
        this = (int)std::string::_M_assign((std::string *const)(v2 + 2092), "", "");
        *(_DWORD *)(v2 + 4) = 6;
      }
      return this;
    case 5:
      XP_DEBUG_OUT("XSocket::Run(): Close connection \n");
      (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 60))(v2);
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(v2 + 24) + 8))(
        *(_DWORD *)(v2 + 24),
        *(_DWORD *)(v2 + 2112),
        *(_DWORD *)(v2 + 2108) - *(_DWORD *)(v2 + 2112));
      this = (int)std::string::_M_assign((std::string *const)(v2 + 2092), "", "");
      *(_DWORD *)(v2 + 4) = 6;
      return this;
    default:
      return this;
  }
}


// ===== 831528 GLXPlayerSocketFactory::GetSocket(char *,int,GLXPlayerSocketObserver *) =====
int __fastcall GLXPlayerSocketFactory::GetSocket(int a1, int a2, int a3)
{
  int v6; // r4

  v6 = operator new(0xCF4u);
  CAndroidSocket::CAndroidSocket(v6, a1, a2, a3);
  return v6;
}


// ===== 83155c GLXPlayerWebComponent::StartResponseParser(char *,int) =====
int __fastcall GLXPlayerWebComponent::StartResponseParser(int this, char *a2, int a3)
{
  *(_DWORD *)(this + 40) = a3;
  *(_DWORD *)(this + 36) = a2;
  return this;
}


// ===== 831568 GLXPlayerWebComponent::GetFunctionID(char,int) =====
int __fastcall GLXPlayerWebComponent::GetFunctionID(GLXPlayerWebComponent *this, int a2, int a3)
{
  if ( a2 != 102 )
  {
    if ( a2 == 103 )
      a3 += 500;
    else
      return -1;
  }
  return a3;
}


// ===== 831588 GLXPlayerWebComponent::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerWebComponent::OnUpdateSuccess(GLXPlayerWebComponent *this, int a2)
{
  int v2; // r6
  const char *v3; // r5
  void (__fastcall *v5)(int, int, const char *, size_t); // r4
  size_t v6; // r0

  v2 = *((_DWORD *)this + 1);
  v3 = *((const char **)this + 9);
  v5 = *(void (__fastcall **)(int, int, const char *, size_t))(*(_DWORD *)v2 + 8);
  v6 = XP_API_STRLEN(v3);
  v5(v2, a2, v3, v6);
  return 1;
}


// ===== 8315c4 GLXPlayerWebComponent::LoadConfig(void) =====
int __fastcall GLXPlayerWebComponent::LoadConfig(GLXPlayerWebComponent *this)
{
  GLXPlayerSereverConfig *v2; // r0
  const char *v3; // r1
  const char *XPlayerURL; // r0
  int v5; // r8
  const char *v6; // r10
  size_t v7; // r0
  size_t v8; // r10
  size_t v9; // r0
  size_t v10; // r9
  size_t v11; // r8
  void *v12; // r0
  size_t v13; // r10
  void *v14; // r0
  GLXPlayerSereverConfig *v15; // r0
  const char *v16; // r1
  const char *PhpVer; // r0
  GLXPlayerSereverConfig *v18; // r0
  char v20[256]; // [sp+4h] [bp-204h] BYREF
  char v21[256]; // [sp+104h] [bp-104h] BYREF

  LC_API_MEMSET_0(v21, 0, 0x100u);
  v2 = (GLXPlayerSereverConfig *)LC_API_MEMSET_0(v20, 0, 0x100u);
  XPlayerURL = (const char *)GLXPlayerSereverConfig::GetXPlayerURL(v2, v3);
  *((_DWORD *)this + 7) = XP_API_STRNEW(XPlayerURL);
  XP_API_MEMSET(v21, 0, 0x100u);
  XP_API_MEMSET(v20, 0, 0x100u);
  v5 = XP_API_PARSE_DATA(*((char **)this + 7), v21, 2, 47);
  XP_API_MEMSET(v21, 0, 0x100u);
  v6 = *((const char **)this + 7);
  v7 = XP_API_STRLEN(v6);
  XP_API_MEMCPY(v21, &v6[v5], v7 - v5);
  XP_API_PARSE_DATA(v21, v20, 0, 47);
  v8 = XP_API_STRLEN(v21);
  v9 = XP_API_STRLEN(v20);
  v10 = v9 + 1;
  v11 = v9;
  v12 = (void *)operator new[](v9 + 1);
  v13 = v8 - v11;
  *((_DWORD *)this + 4) = v12;
  XP_API_MEMSET(v12, 0, v10);
  XP_API_MEMCPY(*((void **)this + 4), v20, v11);
  v14 = (void *)operator new[](v13 + 1);
  *((_DWORD *)this + 5) = v14;
  XP_API_MEMSET(v14, 0, v13 + 1);
  v15 = (GLXPlayerSereverConfig *)XP_API_MEMCPY(*((void **)this + 5), &v21[v11], v13);
  PhpVer = (const char *)GLXPlayerSereverConfig::GetPhpVer(v15, v16);
  v18 = (GLXPlayerSereverConfig *)XP_API_STRNEW(PhpVer);
  *((_DWORD *)this + 6) = v18;
  *((_DWORD *)this + 2) = GLXPlayerSereverConfig::GetGgi(v18);
  return 1;
}


// ===== 831744 GLXPlayerWebComponent::GetNextResponseToken(char *) =====
char *__fastcall GLXPlayerWebComponent::GetNextResponseToken(GLXPlayerWebComponent *this, char *a2)
{
  const char *v2; // r3
  _BYTE *v4; // r2
  size_t v5; // r5

  v2 = *((const char **)this + 9);
  if ( !*v2 )
    goto LABEL_10;
  if ( *v2 == 124 )
  {
    v4 = *((_BYTE **)this + 9);
    v5 = 0;
  }
  else
  {
    v4 = *((_BYTE **)this + 9);
    do
    {
      *((_DWORD *)this + 9) = ++v4;
      if ( !*v4 )
      {
        v5 = v4 - v2;
        goto LABEL_8;
      }
    }
    while ( *v4 != 124 );
    v5 = v4 - v2;
  }
  *((_DWORD *)this + 9) = v4 + 1;
LABEL_8:
  if ( v5 )
  {
    XP_API_STRNCPY(a2, v2, v5);
    a2[v5] = 0;
    return a2;
  }
  else
  {
LABEL_10:
    *a2 = 0;
    return a2;
  }
}


// ===== 8317dc GLXPlayerWebComponent::IsNextResponseIntToken(int) =====
bool __fastcall GLXPlayerWebComponent::IsNextResponseIntToken(GLXPlayerWebComponent *this, int a2)
{
  char v5[256]; // [sp+4h] [bp-108h] BYREF

  LC_API_MEMSET_0(v5, 0, 0x100u);
  XP_API_MEMSET(v5, 0, 0x100u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v5);
  return XP_API_ATOI(v5) == a2;
}


// ===== 83186c GLXPlayerWebComponent::IsNextResponseStringToken(char const*) =====
bool __fastcall GLXPlayerWebComponent::IsNextResponseStringToken(GLXPlayerWebComponent *this, const char *a2)
{
  char v5[256]; // [sp+4h] [bp-108h] BYREF

  LC_API_MEMSET_0(v5, 0, 0x100u);
  XP_API_MEMSET(v5, 0, 0x100u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v5);
  return XP_API_STRCMP(a2, v5) == 0;
}


// ===== 8318fc GLXPlayerWebComponent::GetNextResponseIntToken(void) =====
int __fastcall GLXPlayerWebComponent::GetNextResponseIntToken(GLXPlayerWebComponent *this)
{
  char v3[256]; // [sp+4h] [bp-104h] BYREF

  LC_API_MEMSET_0(v3, 0, 0x100u);
  XP_API_MEMSET(v3, 0, 0x100u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v3);
  return XP_API_ATOI(v3);
}


// ===== 83197c GLXPlayerWebComponent::OnUpdateFailure(int) =====
int __fastcall GLXPlayerWebComponent::OnUpdateFailure(GLXPlayerWebComponent *this, int a2)
{
  int NextResponseIntToken; // r0

  NextResponseIntToken = GLXPlayerWebComponent::GetNextResponseIntToken(this);
  (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(
    *((_DWORD *)this + 1),
    a2,
    NextResponseIntToken);
  return 1;
}


// ===== 8319b0 GLXPlayerWebComponent::OnUpdateParse(void) =====
int __fastcall GLXPlayerWebComponent::OnUpdateParse(GLXPlayerWebComponent *this)
{
  char *v2; // r6
  int v3; // r0
  int v5; // r8
  int v6; // r0
  int FunctionID; // r8
  char v8[4]; // [sp+4h] [bp-1004h] BYREF

  v2 = (char *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 8) + 24))(*((_DWORD *)this + 8));
  v3 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 8) + 28))(*((_DWORD *)this + 8));
  GLXPlayerWebComponent::StartResponseParser((int)this, v2, v3);
  if ( !*((_DWORD *)this + 9) || !*((_DWORD *)this + 10) )
  {
    (***((void (__fastcall ****)(_DWORD))this + 1))(*((_DWORD *)this + 1));
    return 0;
  }
  XP_API_MEMSET(v8, 0, 0x1000u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v8);
  if ( XP_API_STRCMP(v8, "f") )
  {
    if ( XP_API_STRCMP(v8, "g") )
      goto LABEL_14;
    v5 = 103;
  }
  else
  {
    v5 = 102;
  }
  XP_API_MEMSET(v8, 0, 0x1000u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v8);
  v6 = XP_API_ATOI(v8);
  FunctionID = GLXPlayerWebComponent::GetFunctionID(this, v5, v6);
  if ( !GLXPlayerWebComponent::IsNextResponseStringToken(this, "r") )
  {
LABEL_14:
    (***((void (__fastcall ****)(_DWORD))this + 1))(*((_DWORD *)this + 1));
    return 1;
  }
  XP_API_MEMSET(v8, 0, 0x1000u);
  GLXPlayerWebComponent::GetNextResponseToken(this, v8);
  if ( !XP_API_STRCMP(v8, "s") )
    return (*(int (__fastcall **)(GLXPlayerWebComponent *, int))(*(_DWORD *)this + 28))(this, FunctionID);
  if ( XP_API_STRCMP(v8, "e") )
    return 1;
  return (*(int (__fastcall **)(GLXPlayerWebComponent *, int))(*(_DWORD *)this + 32))(this, FunctionID);
}


// ===== 831bd4 GLXPlayerWebComponent::SendByPost(char *) =====
int __fastcall GLXPlayerWebComponent::SendByPost(GLXPlayerWebComponent *this, char *a2)
{
  char *v3; // r6
  unsigned int v4; // r7
  void *v5; // r4
  size_t v6; // r0

  *((_BYTE *)this + 44) = 1;
  v3 = (char *)SSEncDec_String2Blob(a2);
  v4 = XP_API_STRLEN(v3) + 32;
  v5 = (void *)operator new[](v4);
  XP_API_MEMSET(v5, 0, v4);
  sprintf((char *)v5, "b=%s", v3);
  if ( v3 )
    LC_API_FREE_0(v3);
  v6 = XP_API_STRLEN((const char *)v5);
  XP_DEBUG_OUT("SendByPost buffer length %d\n", v6);
  (*(void (__fastcall **)(_DWORD, _DWORD, void *))(**((_DWORD **)this + 8) + 40))(
    *((_DWORD *)this + 8),
    *((_DWORD *)this + 7),
    v5);
  if ( v5 )
    LC_API_FREE_0(v5);
  return 1;
}


// ===== 831c88 GLXPlayerWebComponent::Cancel(void) =====
int __fastcall GLXPlayerWebComponent::Cancel(GLXPlayerWebComponent *this)
{
  int v2; // r3
  int result; // r0

  *((_BYTE *)this + 44) = 0;
  XP_DEBUG_OUT("GLXPlayerWebComponent::Cancel(): m_enable is changed to false!!\n");
  v2 = *((_DWORD *)this + 8);
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 56))(v2);
  *((_DWORD *)this + 14) = -1;
  *((_DWORD *)this + 13) = 0;
  return result;
}


// ===== 831cd4 GLXPlayerWebComponent::SendByGet(char *) =====
int __fastcall GLXPlayerWebComponent::SendByGet(GLXPlayerWebComponent *this, char *a2)
{
  int v2; // r3
  char *v5; // r7
  char v7[12]; // [sp+4h] [bp-1010h] BYREF
  _DWORD v8[4]; // [sp+1004h] [bp-10h] BYREF

  v2 = _stack_chk_guard;
  *((_BYTE *)this + 44) = 1;
  v8[2] = v2;
  v5 = (char *)SSEncDec_String2Blob(a2);
  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "b=%s", v5);
  if ( v5 )
    LC_API_FREE_0(v5);
  v8[1] = 0;
  v8[0] = 0;
  getValue(a2, v8, 1, 124);
  *((_DWORD *)this + 14) = XP_API_ATOI((const char *)v8);
  *((_DWORD *)this + 13) = XP_API_GET_TIME();
  XP_DEBUG_OUT("SendByGet %s\n", v7);
  (*(void (__fastcall **)(_DWORD, _DWORD, char *))(**((_DWORD **)this + 8) + 36))(
    *((_DWORD *)this + 8),
    *((_DWORD *)this + 7),
    v7);
  return 1;
}


// ===== 831dfc GLXPlayerWebComponent::Update(void) =====
int __fastcall GLXPlayerWebComponent::Update(int this)
{
  int v1; // r4
  int v2; // r5

  v1 = this;
  if ( *(_BYTE *)(this + 44) )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(this + 32) + 52))(*(_DWORD *)(this + 32));
    if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 60))(*(_DWORD *)(v1 + 32)) )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 68))(*(_DWORD *)(v1 + 32));
      if ( !this )
      {
        this = XP_API_GET_TIME();
        if ( this - *(_DWORD *)(v1 + 52) > 18000 )
        {
          v2 = *(_DWORD *)(v1 + 56);
          (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 20))(v1);
          return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 + 4) + 4))(*(_DWORD *)(v1 + 4), v2);
        }
      }
    }
    else
    {
      *(_BYTE *)(v1 + 44) = 0;
      XP_DEBUG_OUT("GLXPlayerWebComponent::Update(): m_enable is changed to false!!\n");
      if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 32) + 64))(*(_DWORD *)(v1 + 32)) )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 20))(v1);
        return (***(int (__fastcall ****)(_DWORD))(v1 + 4))(*(_DWORD *)(v1 + 4));
      }
      else
      {
        return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 24))(v1);
      }
    }
  }
  return this;
}


// ===== 831f14 GLXPlayerWebComponent::~GLXPlayerWebComponent() =====
void __fastcall GLXPlayerWebComponent::~GLXPlayerWebComponent(GLXPlayerWebComponent *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  int v6; // r3

  v2 = *((void **)this + 4);
  *(_DWORD *)this = off_992F70;
  *((_DWORD *)this + 9) = 0;
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 4) = 0;
  }
  v3 = *((void **)this + 5);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 5) = 0;
  }
  v4 = *((void **)this + 6);
  if ( v4 )
  {
    operator delete[](v4);
    *((_DWORD *)this + 6) = 0;
  }
  v5 = *((void **)this + 7);
  if ( v5 )
  {
    operator delete[](v5);
    *((_DWORD *)this + 7) = 0;
  }
  v6 = *((_DWORD *)this + 8);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 20))(*((_DWORD *)this + 8));
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = -1;
  GLXPlayerComponent::~GLXPlayerComponent(this);
}


// ===== 831fe4 GLXPlayerWebComponent::~GLXPlayerWebComponent() =====
void __fastcall GLXPlayerWebComponent::~GLXPlayerWebComponent(GLXPlayerWebComponent *this)
{
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
  LC_API_FREE_0(this);
}


// ===== 832000 GLXPlayerWebComponent::~GLXPlayerWebComponent() =====
void __fastcall GLXPlayerWebComponent::~GLXPlayerWebComponent(GLXPlayerWebComponent *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  int v6; // r3

  v2 = *((void **)this + 4);
  *(_DWORD *)this = off_992F70;
  *((_DWORD *)this + 9) = 0;
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 4) = 0;
  }
  v3 = *((void **)this + 5);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 5) = 0;
  }
  v4 = *((void **)this + 6);
  if ( v4 )
  {
    operator delete[](v4);
    *((_DWORD *)this + 6) = 0;
  }
  v5 = *((void **)this + 7);
  if ( v5 )
  {
    operator delete[](v5);
    *((_DWORD *)this + 7) = 0;
  }
  v6 = *((_DWORD *)this + 8);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 20))(*((_DWORD *)this + 8));
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = -1;
  GLXPlayerComponent::~GLXPlayerComponent(this);
}


// ===== 8320d0 GLXPlayerWebComponent::GLXPlayerWebComponent(void) =====
void __fastcall GLXPlayerWebComponent::GLXPlayerWebComponent(GLXPlayerWebComponent *this)
{
  GLXPlayerComponent::GLXPlayerComponent(this);
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_992F70;
  *((_DWORD *)this + 14) = -1;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 8) = 0;
}


// ===== 832134 GLXPlayerWebComponent::GLXPlayerWebComponent(void) =====
void __fastcall GLXPlayerWebComponent::GLXPlayerWebComponent(GLXPlayerWebComponent *this)
{
  GLXPlayerComponent::GLXPlayerComponent(this);
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_992F70;
  *((_DWORD *)this + 14) = -1;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 8) = 0;
}


// ===== 832198 GLXPlayerLeaderboard::getCurrentPlayerLeaderboardPosition(void) =====
int __fastcall GLXPlayerLeaderboard::getCurrentPlayerLeaderboardPosition(GLXPlayerLeaderboard *this)
{
  return *((_DWORD *)this + 22);
}


// ===== 8321a0 GLXPlayerLeaderboard::getCurrentPlayerLeaderboardCountry(void) =====
int __fastcall GLXPlayerLeaderboard::getCurrentPlayerLeaderboardCountry(GLXPlayerLeaderboard *this)
{
  return *((_DWORD *)this + 25);
}


// ===== 8321a8 GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScore(void) =====
int __fastcall GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScore(GLXPlayerLeaderboard *this)
{
  return *((_DWORD *)this + 23);
}


// ===== 8321b0 GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScoreData(void) =====
int __fastcall GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScoreData(GLXPlayerLeaderboard *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 8321b8 GLXPlayerLeaderboard::getLeaderboardSize(void) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardSize(GLXPlayerLeaderboard *this)
{
  if ( *((_DWORD *)this + 16) )
    return *((_DWORD *)this + 15);
  else
    return -1;
}


// ===== 8321cc GLXPlayerLeaderboard::getLeaderboardEntry(int,char *&,int &,int &,int *&,int &) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntry(
        GLXPlayerLeaderboard *this,
        int a2,
        char **a3,
        int *a4,
        int *a5,
        int **a6,
        int *a7)
{
  int v7; // r12
  int v8; // r3

  if ( *((_DWORD *)this + 15) <= a2 )
    return 0;
  v7 = *((_DWORD *)this + 16);
  if ( !v7 )
    return 0;
  *a3 = *(char **)(v7 + 4 * a2);
  *a4 = *(_DWORD *)(*((_DWORD *)this + 18) + 4 * a2);
  *a5 = *(_DWORD *)(*((_DWORD *)this + 19) + 4 * a2);
  v8 = *((_DWORD *)this + 21);
  if ( v8 > 0 )
  {
    *a6 = *(int **)(*((_DWORD *)this + 20) + 4 * a2);
    v8 = *((_DWORD *)this + 21);
  }
  *a7 = v8;
  return 1;
}


// ===== 83223c GLXPlayerLeaderboard::getLeaderboardEntryPlayerName(int) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntryPlayerName(GLXPlayerLeaderboard *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 15) > a2 && (v3 = *((_DWORD *)this + 16)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 832264 GLXPlayerLeaderboard::getLeaderboardEntryPlayerCountry(int) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntryPlayerCountry(GLXPlayerLeaderboard *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 15) > a2 && (v3 = *((_DWORD *)this + 17)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 83228c GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(int) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(GLXPlayerLeaderboard *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 15) > a2 && (v3 = *((_DWORD *)this + 18)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return -1;
}


// ===== 8322b4 GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(int) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(GLXPlayerLeaderboard *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 15) > a2 && (v3 = *((_DWORD *)this + 19)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return -666666;
}


// ===== 8322e0 GLXPlayerLeaderboard::getLeaderboardEntryPlayerScoreData(int) =====
int __fastcall GLXPlayerLeaderboard::getLeaderboardEntryPlayerScoreData(GLXPlayerLeaderboard *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 15) > a2 && (v3 = *((_DWORD *)this + 20)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 832308 GLXPlayerLeaderboard::processRankingAround(char *) =====
int __fastcall GLXPlayerLeaderboard::processRankingAround(GLXPlayerLeaderboard *this, char *a2)
{
  signed int v2; // r5
  int v5; // r6
  int v6; // r3
  int v7; // r1
  int result; // r0
  int v9; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r0
  int v13; // r3
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r2
  int v18; // r10
  int v19; // r7
  int v20; // r5
  int v21; // r7
  int v22; // r5
  size_t v23; // r0
  int v24; // r5
  int v25; // r5
  int v26; // r5
  int v27; // [sp+0h] [bp-54h]
  char v28[64]; // [sp+Ch] [bp-48h] BYREF

  v2 = 0;
  v5 = 0;
  while ( v2 < (int)XP_API_STRLEN(a2) )
  {
    v6 = a2[v2++];
    if ( v6 == 124 )
      ++v5;
  }
  v7 = *((_DWORD *)this + 21);
  if ( *((int *)this + 22) >= 0 )
    v5 += -3 - v7;
  result = v5 / (v7 + 3);
  *((_DWORD *)this + 15) = result;
  if ( result > 0 )
  {
    v9 = operator new[](4 * result);
    v10 = *((_DWORD *)this + 15);
    *((_DWORD *)this + 16) = v9;
    if ( v10 > 0 )
    {
      v11 = 0;
      while ( 1 )
      {
        *(_DWORD *)(v9 + 4 * v11) = 0;
        v10 = *((_DWORD *)this + 15);
        if ( v10 <= ++v11 )
          break;
        v9 = *((_DWORD *)this + 16);
      }
    }
    v12 = operator new[](4 * v10);
    v13 = *((_DWORD *)this + 15);
    *((_DWORD *)this + 18) = v12;
    result = operator new[](4 * v13);
    v14 = *((_DWORD *)this + 21);
    *((_DWORD *)this + 19) = result;
    if ( v14 <= 0 )
    {
      v17 = *((_DWORD *)this + 15);
    }
    else
    {
      result = operator new[](4 * *((_DWORD *)this + 15));
      v15 = *((_DWORD *)this + 15);
      *((_DWORD *)this + 20) = result;
      if ( v15 <= 0 )
        return result;
      v16 = 0;
      while ( 1 )
      {
        *(_DWORD *)(result + 4 * v16) = 0;
        v17 = *((_DWORD *)this + 15);
        if ( v17 <= ++v16 )
          break;
        result = *((_DWORD *)this + 20);
      }
    }
    if ( v17 > 0 )
    {
      v18 = 0;
      v19 = 0;
      do
      {
        getValue(a2, v28, v19, 124);
        v20 = *((_DWORD *)this + 18);
        v21 = v19 + 1;
        *(_DWORD *)(v20 + 4 * v18) = XP_API_ATOI(v28);
        getValue(a2, v28, v21, 124);
        v22 = *((_DWORD *)this + 16);
        v23 = XP_API_STRLEN(v28);
        *(_DWORD *)(v22 + 4 * v18) = operator new[](v23 + 1);
        ++v21;
        XP_API_STRCPY(*(char **)(*((_DWORD *)this + 16) + 4 * v18), v28);
        getValue(a2, v28, v21, 124);
        v24 = *((_DWORD *)this + 19);
        *(_DWORD *)(v24 + 4 * v18) = XP_API_ATOI(v28);
        result = *((_DWORD *)this + 21);
        v19 = v21 + 1;
        if ( result > 0 )
        {
          v25 = *((_DWORD *)this + 20);
          result = operator new[](4 * result);
          *(_DWORD *)(v25 + 4 * v18) = result;
          if ( *((int *)this + 21) > 0 )
          {
            v26 = 0;
            do
            {
              getValue(a2, v28, v19++, 124);
              v27 = *(_DWORD *)(*((_DWORD *)this + 20) + 4 * v18);
              result = XP_API_ATOI(v28);
              *(_DWORD *)(v27 + 4 * v26++) = result;
            }
            while ( *((_DWORD *)this + 21) > v26 );
          }
        }
        ++v18;
      }
      while ( *((_DWORD *)this + 15) > v18 );
    }
  }
  return result;
}


// ===== 832594 GLXPlayerLeaderboard::processRanking(char *) =====
int __fastcall GLXPlayerLeaderboard::processRanking(GLXPlayerLeaderboard *this, char *a2)
{
  int v4; // r0
  int v5; // r7
  int v6; // r2
  int v7; // r0
  int v8; // r3
  int v9; // r0
  int v10; // r3
  int v11; // r5
  int v12; // r10
  int v13; // r10
  signed int i; // r5
  int v15; // r3
  int v16; // r1
  int result; // r0
  int v18; // r0
  int v19; // r2
  int v20; // r3
  int v21; // r0
  int v22; // r2
  int v23; // r3
  int v24; // r0
  int v25; // r3
  int v26; // r3
  int v27; // r2
  int v28; // r9
  int v29; // r5
  int v30; // r7
  int v31; // r5
  size_t v32; // r0
  int v33; // r7
  int v34; // r5
  int v35; // r5
  int v36; // r5
  int v37; // r1
  int v38; // r5
  int v39; // r3
  int v40; // r3
  int v41; // r7
  int v42; // [sp+0h] [bp-54h]
  char v43[64]; // [sp+Ch] [bp-48h] BYREF

  getValue(a2, v43, 0, 124);
  if ( XP_API_STRCMP(v43, "y") )
  {
    result = XP_API_STRCMP(v43, "n");
    v13 = result;
    if ( result )
      return result;
    v5 = 1;
  }
  else
  {
    getValue(a2, v43, 1, 124);
    v4 = XP_API_ATOI(v43);
    *((_DWORD *)this + 22) = v4;
    if ( v4 < 0 )
    {
      v41 = *((_DWORD *)this + 21);
      v13 = -3 - v41;
      *((_DWORD *)this + 23) = -666666;
      *((_DWORD *)this + 24) = 0;
      *((_DWORD *)this + 22) = -666666;
      v5 = v41 + 4;
    }
    else
    {
      if ( *((_BYTE *)this + 104) )
      {
        getValue(a2, v43, 3, 124);
        v5 = 5;
        *((_DWORD *)this + 25) = XP_API_STRNEW(v43);
        v6 = 4;
      }
      else
      {
        v5 = 4;
        v6 = 3;
      }
      getValue(a2, v43, v6, 124);
      v7 = XP_API_ATOI(v43);
      v8 = *((_DWORD *)this + 21);
      *((_DWORD *)this + 23) = v7;
      if ( v8 > 0 )
      {
        v9 = operator new[](4 * v8);
        v10 = *((_DWORD *)this + 21);
        *((_DWORD *)this + 24) = v9;
        if ( v10 > 0 )
        {
          v11 = 0;
          do
          {
            getValue(a2, v43, v5, 124);
            v12 = *((_DWORD *)this + 24);
            *(_DWORD *)(v12 + 4 * v11++) = XP_API_ATOI(v43);
            ++v5;
          }
          while ( *((_DWORD *)this + 21) > v11 );
        }
      }
      v13 = 0;
    }
  }
  for ( i = 0; i < (int)XP_API_STRLEN(a2); ++i )
  {
    v15 = a2[i];
    if ( v15 == 124 )
      ++v13;
  }
  if ( *((int *)this + 22) < 0 )
  {
    if ( !*((_BYTE *)this + 104) )
    {
      v16 = *((_DWORD *)this + 21);
      goto LABEL_18;
    }
    v37 = *((_DWORD *)this + 21);
LABEL_45:
    result = v13 / (v37 + 4);
    *((_DWORD *)this + 15) = result;
    goto LABEL_19;
  }
  if ( *((_BYTE *)this + 104) )
  {
    v37 = *((_DWORD *)this + 21);
    v13 += -4 - v37;
    goto LABEL_45;
  }
  v16 = *((_DWORD *)this + 21);
  v13 += -3 - v16;
LABEL_18:
  result = v13 / (v16 + 3);
  *((_DWORD *)this + 15) = result;
LABEL_19:
  if ( result <= 0 )
    return result;
  v18 = operator new[](4 * result);
  v19 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 16) = v18;
  if ( v19 > 0 )
  {
    v20 = 0;
    while ( 1 )
    {
      *(_DWORD *)(v18 + 4 * v20) = 0;
      v19 = *((_DWORD *)this + 15);
      if ( v19 <= ++v20 )
        break;
      v18 = *((_DWORD *)this + 16);
    }
  }
  v21 = operator new[](4 * v19);
  v22 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 17) = v21;
  if ( v22 > 0 )
  {
    v23 = 0;
    while ( 1 )
    {
      *(_DWORD *)(v21 + 4 * v23) = 0;
      v22 = *((_DWORD *)this + 15);
      if ( v22 <= ++v23 )
        break;
      v21 = *((_DWORD *)this + 17);
    }
  }
  v24 = operator new[](4 * v22);
  v25 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 18) = v24;
  result = operator new[](4 * v25);
  v26 = *((_DWORD *)this + 21);
  *((_DWORD *)this + 19) = result;
  if ( v26 > 0 )
  {
    result = operator new[](4 * *((_DWORD *)this + 15));
    v39 = *((_DWORD *)this + 15);
    *((_DWORD *)this + 20) = result;
    if ( v39 <= 0 )
      return result;
    v40 = 0;
    while ( 1 )
    {
      *(_DWORD *)(result + 4 * v40) = 0;
      v27 = *((_DWORD *)this + 15);
      if ( v27 <= ++v40 )
        break;
      result = *((_DWORD *)this + 20);
    }
  }
  else
  {
    v27 = *((_DWORD *)this + 15);
  }
  if ( v27 > 0 )
  {
    v28 = 0;
    do
    {
      getValue(a2, v43, v5, 124);
      v29 = *((_DWORD *)this + 18);
      v30 = v5 + 1;
      *(_DWORD *)(v29 + 4 * v28) = XP_API_ATOI(v43);
      getValue(a2, v43, v30, 124);
      v31 = *((_DWORD *)this + 16);
      v32 = XP_API_STRLEN(v43);
      *(_DWORD *)(v31 + 4 * v28) = operator new[](v32 + 1);
      XP_API_STRCPY(*(char **)(*((_DWORD *)this + 16) + 4 * v28), v43);
      v33 = v30 + 1;
      if ( *((_BYTE *)this + 104) )
      {
        getValue(a2, v43, v33, 124);
        v38 = *((_DWORD *)this + 17);
        ++v33;
        *(_DWORD *)(v38 + 4 * v28) = XP_API_STRNEW(v43);
      }
      getValue(a2, v43, v33, 124);
      v34 = *((_DWORD *)this + 19);
      *(_DWORD *)(v34 + 4 * v28) = XP_API_ATOI(v43);
      result = *((_DWORD *)this + 21);
      v5 = v33 + 1;
      if ( result > 0 )
      {
        v35 = *((_DWORD *)this + 20);
        result = operator new[](4 * result);
        *(_DWORD *)(v35 + 4 * v28) = result;
        if ( *((int *)this + 21) > 0 )
        {
          v36 = 0;
          do
          {
            getValue(a2, v43, v5++, 124);
            v42 = *(_DWORD *)(*((_DWORD *)this + 20) + 4 * v28);
            result = XP_API_ATOI(v43);
            *(_DWORD *)(v42 + 4 * v36++) = result;
          }
          while ( *((_DWORD *)this + 21) > v36 );
        }
      }
      ++v28;
    }
    while ( *((_DWORD *)this + 15) > v28 );
  }
  return result;
}


// ===== 832a48 GLXPlayerLeaderboard::clearLeaderboard(void) =====
void __fastcall GLXPlayerLeaderboard::clearLeaderboard(GLXPlayerLeaderboard *this)
{
  _DWORD *v1; // r2
  int v3; // r3
  int i; // r5
  void *v5; // r0
  _DWORD *v6; // r2
  int j; // r5
  void *v8; // r0
  int v9; // r5
  bool v10; // zf
  _DWORD *v11; // r2
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0
  void *v16; // r0

  v1 = *((_DWORD **)this + 16);
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 15);
    if ( v3 <= 0 )
      goto LABEL_9;
    for ( i = 0; i < v3; ++i )
    {
      v5 = (void *)v1[i];
      if ( v5 )
      {
        operator delete[](v5);
        *(_DWORD *)(*((_DWORD *)this + 16) + 4 * i) = 0;
        v3 = *((_DWORD *)this + 15);
        v1 = *((_DWORD **)this + 16);
      }
    }
    if ( v1 )
    {
LABEL_9:
      operator delete[](v1);
      v3 = *((_DWORD *)this + 15);
    }
    *((_DWORD *)this + 16) = 0;
  }
  else
  {
    v3 = *((_DWORD *)this + 15);
  }
  v6 = *((_DWORD **)this + 17);
  if ( v6 )
  {
    if ( v3 <= 0 )
      goto LABEL_18;
    for ( j = 0; j < v3; ++j )
    {
      v8 = (void *)v6[j];
      if ( v8 )
      {
        operator delete[](v8);
        *(_DWORD *)(*((_DWORD *)this + 17) + 4 * j) = 0;
        v3 = *((_DWORD *)this + 15);
        v6 = *((_DWORD **)this + 17);
      }
    }
    if ( v6 )
    {
LABEL_18:
      operator delete[](v6);
      v3 = *((_DWORD *)this + 15);
    }
    *((_DWORD *)this + 17) = 0;
  }
  v9 = 0;
  v10 = v3 == -666666;
  if ( v3 != -666666 )
    v10 = v3 == 0;
  *((_DWORD *)this + 16) = 0;
  if ( !v10 )
  {
    if ( v3 > 0 )
    {
      v11 = *((_DWORD **)this + 20);
      do
      {
        if ( v11 )
        {
          v12 = (void *)v11[v9];
          if ( v12 )
          {
            LC_API_FREE_0(v12);
            *(_DWORD *)(*((_DWORD *)this + 20) + 4 * v9) = 0;
            v3 = *((_DWORD *)this + 15);
            v11 = *((_DWORD **)this + 20);
          }
        }
        ++v9;
      }
      while ( v3 > v9 );
    }
    else
    {
      v11 = *((_DWORD **)this + 20);
    }
    if ( v11 )
    {
      LC_API_FREE_0(v11);
      *((_DWORD *)this + 20) = 0;
    }
    *((_DWORD *)this + 20) = 0;
  }
  v13 = *((void **)this + 18);
  if ( v13 )
  {
    LC_API_FREE_0(v13);
    *((_DWORD *)this + 18) = 0;
  }
  v14 = *((void **)this + 19);
  *((_DWORD *)this + 18) = 0;
  if ( v14 )
  {
    LC_API_FREE_0(v14);
    *((_DWORD *)this + 19) = 0;
  }
  v15 = *((void **)this + 24);
  *((_DWORD *)this + 19) = 0;
  if ( v15 )
  {
    LC_API_FREE_0(v15);
    *((_DWORD *)this + 24) = 0;
  }
  v16 = *((void **)this + 25);
  if ( v16 )
  {
    LC_API_FREE_0(v16);
    *((_DWORD *)this + 25) = 0;
  }
  *((_DWORD *)this + 23) = -666666;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 15) = -666666;
  *((_DWORD *)this + 22) = -666666;
}


// ===== 832c2c GLXPlayerLeaderboard::addScoreEntry(char *,int,int,int,int *,int) =====
int __fastcall GLXPlayerLeaderboard::addScoreEntry(
        GLXPlayerLeaderboard *this,
        char *a2,
        int a3,
        int a4,
        int a5,
        int *a6,
        int a7)
{
  size_t v10; // r0
  int result; // r0
  int i; // r4
  size_t v13; // r0
  int v14; // r12

  v10 = XP_API_STRLEN(a2);
  result = sprintf(&a2[v10], "l|%d|t|%d|sl|0|s|%d|", a4, a5, a3);
  if ( a7 > 0 )
  {
    for ( i = 0; i != a7; result = sprintf(&a2[v13], "l|%d|t|%d|sl|%d|s|%d|", a4, a5, i, v14) )
    {
      v13 = XP_API_STRLEN(a2);
      v14 = a6[i++];
    }
  }
  return result;
}


// ===== 832cc4 GLXPlayerLeaderboard::sendRankGetAroundPlayer(int,int,int) =====
int __fastcall GLXPlayerLeaderboard::sendRankGetAroundPlayer(GLXPlayerLeaderboard *this, int a2, int a3, int a4)
{
  size_t v8; // r0
  char v10[4]; // [sp+14h] [bp-1004h] BYREF

  XP_API_MEMSET(v10, 0, 0x1000u);
  sprintf(v10, "f|%d|i|%d|u|%s|p|%d|t|%d|", 112, *((_DWORD *)this + 2), *((const char **)this + 3), a3, a4);
  if ( a2 >= 0 )
  {
    v8 = XP_API_STRLEN(v10);
    sprintf(&v10[v8], "l|%d|", a2);
  }
  *((_BYTE *)this + 104) = 0;
  XP_DEBUG_OUT("GLXPlayerUser::sendRankGetAroundPlayer_new before String2Blob -> buffer = %s\n", v10);
  return (*(int (__fastcall **)(GLXPlayerLeaderboard *, char *))(*(_DWORD *)this + 12))(this, v10);
}


// ===== 832dc4 GLXPlayerLeaderboard::sendRankGet(int,int,int,int,bool) =====
int __fastcall GLXPlayerLeaderboard::sendRankGet(GLXPlayerLeaderboard *this, int a2, int a3, int a4, int a5, bool a6)
{
  size_t v10; // r0
  char v12[4]; // [sp+1Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v12, 0, 0x1000u);
  sprintf(
    v12,
    "f|%d|i|%d|u|%s|p|%d|t|%d|x|%d|c|%d|",
    111,
    *((_DWORD *)this + 2),
    *((const char **)this + 3),
    a4,
    a5,
    a3,
    a6);
  if ( a2 >= 0 )
  {
    v10 = XP_API_STRLEN(v12);
    sprintf(&v12[v10], "l|%d|", a2);
  }
  *((_BYTE *)this + 104) = a6;
  XP_DEBUG_OUT("GLXPlayerUser::sendRankGet_new before String2Blob -> buffer = %s\n", v12);
  return (*(int (__fastcall **)(GLXPlayerLeaderboard *, char *))(*(_DWORD *)this + 12))(this, v12);
}


// ===== 832ee4 GLXPlayerLeaderboard::sendHighScore(char *) =====
int __fastcall GLXPlayerLeaderboard::sendHighScore(GLXPlayerLeaderboard *this, char *a2)
{
  size_t v4; // r0
  char v6[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v6, 0, 0x1000u);
  sprintf(v6, "f|%d|i|%d|u|%s|", 110, *((_DWORD *)this + 2), *((const char **)this + 3));
  v4 = XP_API_STRLEN(v6);
  sprintf(&v6[v4], a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendMultipleHighscores_new before String2Blob -> buffer = %s\n", v6);
  return (*(int (__fastcall **)(GLXPlayerLeaderboard *, char *))(*(_DWORD *)this + 12))(this, v6);
}


// ===== 832fb8 GLXPlayerLeaderboard::sendHighScore(int,int,int) =====
int __fastcall GLXPlayerLeaderboard::sendHighScore(GLXPlayerLeaderboard *this, int a2, int a3, int a4)
{
  char v9[4]; // [sp+14h] [bp-1004h] BYREF

  XP_API_MEMSET(v9, 0, 0x1000u);
  if ( a3 < 0 )
    sprintf(v9, "f|%d|i|%d|u|%s|t|%d|s|%d|", 110, *((_DWORD *)this + 2), *((const char **)this + 3), a4, a2);
  else
    sprintf(v9, "f|%d|i|%d|u|%s|l|%d|t|%d|s|%d|", 110, *((_DWORD *)this + 2), *((const char **)this + 3), a3, a4, a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendHighscore before String2Blob -> buffer = %s\n", v9);
  return (*(int (__fastcall **)(GLXPlayerLeaderboard *, char *))(*(_DWORD *)this + 12))(this, v9);
}


// ===== 8330c4 GLXPlayerLeaderboard::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerLeaderboard::OnUpdateSuccess(char **this, int a2)
{
  char v5[32]; // [sp+4h] [bp-24h] BYREF

  switch ( a2 )
  {
    case 'o':
      GLXPlayerLeaderboard::clearLeaderboard((GLXPlayerLeaderboard *)this);
      GLXPlayerLeaderboard::processRanking((GLXPlayerLeaderboard *)this, *(this + 9));
      break;
    case 'p':
      GLXPlayerLeaderboard::clearLeaderboard((GLXPlayerLeaderboard *)this);
      GLXPlayerLeaderboard::processRankingAround((GLXPlayerLeaderboard *)this, *(this + 9));
      break;
    case 'n':
      memset(v5, 0, sizeof(v5));
      getValue(*(this + 9), v5, 3, 124);
      *(this + 22) = (char *)XP_API_ATOI(v5);
      break;
  }
  return GLXPlayerWebComponent::OnUpdateSuccess((GLXPlayerWebComponent *)this, a2);
}


// ===== 8331b0 GLXPlayerLeaderboard::~GLXPlayerLeaderboard() =====
void __fastcall GLXPlayerLeaderboard::~GLXPlayerLeaderboard(GLXPlayerLeaderboard *this)
{
  *(_DWORD *)this = off_992FA0;
  GLXPlayerLeaderboard::clearLeaderboard(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 8331ec GLXPlayerLeaderboard::~GLXPlayerLeaderboard() =====
void __fastcall GLXPlayerLeaderboard::~GLXPlayerLeaderboard(GLXPlayerLeaderboard *this)
{
  GLXPlayerLeaderboard::~GLXPlayerLeaderboard(this);
  LC_API_FREE_0(this);
}


// ===== 833208 GLXPlayerLeaderboard::~GLXPlayerLeaderboard() =====
void __fastcall GLXPlayerLeaderboard::~GLXPlayerLeaderboard(GLXPlayerLeaderboard *this)
{
  *(_DWORD *)this = off_992FA0;
  GLXPlayerLeaderboard::clearLeaderboard(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 833244 GLXPlayerLeaderboard::GLXPlayerLeaderboard(void) =====
void __fastcall GLXPlayerLeaderboard::GLXPlayerLeaderboard(GLXPlayerLeaderboard *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992FA0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 23) = -666666;
  *((_BYTE *)this + 104) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 15) = -666666;
  *((_DWORD *)this + 22) = -666666;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 21) = 0;
}


// ===== 8332dc GLXPlayerLeaderboard::GLXPlayerLeaderboard(void) =====
void __fastcall GLXPlayerLeaderboard::GLXPlayerLeaderboard(GLXPlayerLeaderboard *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992FA0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 23) = -666666;
  *((_BYTE *)this + 104) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 15) = -666666;
  *((_DWORD *)this + 22) = -666666;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 21) = 0;
}


// ===== 833374 GLXPlayerLogin::getAPNSIP(void) =====
int __fastcall GLXPlayerLogin::getAPNSIP(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 18);
}


// ===== 83337c GLXPlayerLogin::getAPNSPort(void) =====
int __fastcall GLXPlayerLogin::getAPNSPort(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 833384 GLXPlayerLogin::getAPNSFeedBackIP(void) =====
int __fastcall GLXPlayerLogin::getAPNSFeedBackIP(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 83338c GLXPlayerLogin::getAPNSFeedBackPort(void) =====
int __fastcall GLXPlayerLogin::getAPNSFeedBackPort(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 833394 GLXPlayerLogin::getAPNSPublicPemPath(void) =====
int __fastcall GLXPlayerLogin::getAPNSPublicPemPath(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 22);
}


// ===== 83339c GLXPlayerLogin::getAPNSPrivateKeyPemPath(void) =====
int __fastcall GLXPlayerLogin::getAPNSPrivateKeyPemPath(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 23);
}


// ===== 8333a4 GLXPlayerLogin::getAPNSPrivateKeyPassword(void) =====
int __fastcall GLXPlayerLogin::getAPNSPrivateKeyPassword(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 8333ac GLXPlayerLogin::getProductListCount(void) =====
int __fastcall GLXPlayerLogin::getProductListCount(GLXPlayerLogin *this)
{
  return *((_DWORD *)this + 25);
}


// ===== 8333b4 GLXPlayerLogin::getProductGGI(int) =====
int __fastcall GLXPlayerLogin::getProductGGI(GLXPlayerLogin *this, int a2)
{
  int v2; // r3
  _BOOL4 v3; // r2

  v2 = *((_DWORD *)this + 26);
  v3 = a2 >= 0;
  if ( !v2 )
    v3 = 0;
  if ( v3 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return -1;
}


// ===== 8333d8 GLXPlayerLogin::getProductID(int) =====
int __fastcall GLXPlayerLogin::getProductID(GLXPlayerLogin *this, int a2)
{
  int v2; // r3
  _BOOL4 v3; // r2

  v2 = *((_DWORD *)this + 27);
  v3 = a2 >= 0;
  if ( !v2 )
    v3 = 0;
  if ( v3 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return -1;
}


// ===== 8333fc GLXPlayerLogin::getProductName(int) =====
int __fastcall GLXPlayerLogin::getProductName(GLXPlayerLogin *this, int a2)
{
  int v2; // r3
  int result; // r0

  v2 = *((_DWORD *)this + 28);
  result = a2 >= 0;
  if ( !v2 )
    result = 0;
  if ( result )
    return *(_DWORD *)(v2 + 4 * a2);
  return result;
}


// ===== 83341c GLXPlayerLogin::ShouldSendKeepAlive(void) =====
int __fastcall GLXPlayerLogin::ShouldSendKeepAlive(GLXPlayerLogin *this)
{
  if ( *((_BYTE *)this + 64) )
    return XP_API_GET_TIME() - *((_DWORD *)this + 17) > 90000;
  else
    return *((unsigned __int8 *)this + 64);
}


// ===== 83345c GLXPlayerLogin::SendGameInvitationGetLobbyServer(char *) =====
int __fastcall GLXPlayerLogin::SendGameInvitationGetLobbyServer(GLXPlayerLogin *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  LC_API_MEMSET_0(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|cn|%s|", 108, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  *((_DWORD *)this + 17) = XP_API_GET_TIME();
  XP_DEBUG_OUT("SendGameInvitationGetLobbyServer -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 833528 GLXPlayerLogin::SendGetLobbyServer(void) =====
int __fastcall GLXPlayerLogin::SendGetLobbyServer(GLXPlayerLogin *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  LC_API_MEMSET_0(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 107, *((_DWORD *)this + 2), *((const char **)this + 3));
  *((_DWORD *)this + 17) = XP_API_GET_TIME();
  XP_DEBUG_OUT("SendGetLobbyServer -> buffer = %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 8335ec GLXPlayerLogin::SendGetLobbyServerWithGameCenter(char *,char *,char *) =====
int __fastcall GLXPlayerLogin::SendGetLobbyServerWithGameCenter(GLXPlayerLogin *this, char *a2, char *a3, char *a4)
{
  size_t v8; // r0
  size_t v9; // r0
  char v11[4]; // [sp+Ch] [bp-1004h] BYREF

  LC_API_MEMSET_0(v11, 0, 0x1000u);
  sprintf(v11, "f|%d|i|%d|u|%s|", 107, *((_DWORD *)this + 2), a2);
  if ( a4 )
  {
    v8 = XP_API_STRLEN(v11);
    sprintf(&v11[v8], "ver|%s|", a4);
  }
  if ( a3 )
  {
    v9 = XP_API_STRLEN(v11);
    sprintf(&v11[v9], "hu|%s|", a3);
  }
  *((_DWORD *)this + 17) = XP_API_GET_TIME();
  XP_DEBUG_OUT("SendGetLobbyServer -> buffer = %s\n", v11);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v11);
}


// ===== 83370c GLXPlayerLogin::SendGetProductInfo(char *) =====
int __fastcall GLXPlayerLogin::SendGetProductInfo(GLXPlayerLogin *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  if ( a2 || (int)XP_API_STRLEN(nullptr) <= 0 )
    sprintf(v5, "f|%d|i|%d|u|%s|l|%s|", 95, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  else
    sprintf(v5, "f|%d|i|%d|u|%s|", 95, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("GLXPlayerLogin::SendGetProductInfo -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 833814 GLXPlayerLogin::SendGetAPNSInfo(int) =====
int __fastcall GLXPlayerLogin::SendGetAPNSInfo(GLXPlayerLogin *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|t|%d|", 83, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerLogin::SendGetAPNSInfo -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 8338d8 GLXPlayerLogin::SendKeepAlive(void) =====
int __fastcall GLXPlayerLogin::SendKeepAlive(GLXPlayerLogin *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 16, *((_DWORD *)this + 2), *((const char **)this + 3));
  *((_DWORD *)this + 17) = XP_API_GET_TIME();
  XP_DEBUG_OUT("SendKeepAlive -> buffer = %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 83399c GLXPlayerLogin::KeepAlive(void) =====
int __fastcall GLXPlayerLogin::KeepAlive(GLXPlayerLogin *this)
{
  int result; // r0

  result = GLXPlayerLogin::ShouldSendKeepAlive(this);
  if ( result )
    return GLXPlayerLogin::SendKeepAlive(this);
  return result;
}


// ===== 8339c0 GLXPlayerLogin::SendLogout(void) =====
int __fastcall GLXPlayerLogin::SendLogout(GLXPlayerLogin *this)
{
  int v1; // r12
  char v4[4]; // [sp+Ch] [bp-1004h] BYREF
  int v5; // [sp+100Ch] [bp-4h]

  v1 = _stack_chk_guard;
  *((_BYTE *)this + 64) = 0;
  v5 = v1;
  XP_API_MEMSET(v4, 0, 0x1000u);
  sprintf(v4, "f|%d|i|%d|u|%s|", 17, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("[Logout] before String2Blob -> buffer = %s\n", v4);
  return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v4);
}


// ===== 833a84 GLXPlayerLogin::processApplePushServer(char *) =====
signed int __fastcall GLXPlayerLogin::processApplePushServer(signed int this, char *a2)
{
  signed int v3; // r4
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  int v9; // r0
  _BYTE *v10; // r1
  char v11[16]; // [sp+4h] [bp-18h] BYREF

  v3 = this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      v4 = *(void **)(v3 + 72);
      if ( v4 )
      {
        LC_API_FREE_0(v4);
        *(_DWORD *)(v3 + 72) = 0;
      }
      v5 = *(void **)(v3 + 80);
      if ( v5 )
      {
        LC_API_FREE_0(v5);
        *(_DWORD *)(v3 + 80) = 0;
      }
      v6 = *(void **)(v3 + 88);
      if ( v6 )
      {
        LC_API_FREE_0(v6);
        *(_DWORD *)(v3 + 88) = 0;
      }
      v7 = *(void **)(v3 + 92);
      if ( v7 )
      {
        LC_API_FREE_0(v7);
        *(_DWORD *)(v3 + 92) = 0;
      }
      v8 = *(void **)(v3 + 96);
      if ( v8 )
      {
        LC_API_FREE_0(v8);
        *(_DWORD *)(v3 + 96) = 0;
      }
      *(_DWORD *)(v3 + 72) = operator new[](0x20u);
      *(_DWORD *)(v3 + 80) = operator new[](0x20u);
      *(_DWORD *)(v3 + 88) = operator new[](0x100u);
      *(_DWORD *)(v3 + 92) = operator new[](0x100u);
      *(_DWORD *)(v3 + 96) = operator new[](0x100u);
      XP_API_MEMSET(*(void **)(v3 + 72), 0, 0x20u);
      XP_API_MEMSET(*(void **)(v3 + 88), 0, 0x100u);
      XP_API_MEMSET(*(void **)(v3 + 92), 0, 0x100u);
      XP_API_MEMSET(*(void **)(v3 + 96), 0, 0x100u);
      memset(v11, 0, sizeof(v11));
      XP_API_MEMSET(v11, 0, 0x10u);
      getValue(a2, *(_BYTE **)(v3 + 72), 0, 124);
      getValue(a2, v11, 1, 124);
      *(_DWORD *)(v3 + 76) = XP_API_ATOI(v11);
      getValue(a2, *(_BYTE **)(v3 + 80), 2, 124);
      XP_API_MEMSET(v11, 0, 0x10u);
      getValue(a2, v11, 3, 124);
      v9 = XP_API_ATOI(v11);
      v10 = *(_BYTE **)(v3 + 88);
      *(_DWORD *)(v3 + 84) = v9;
      getValue(a2, v10, 4, 124);
      getValue(a2, *(_BYTE **)(v3 + 92), 5, 124);
      return getValue(a2, *(_BYTE **)(v3 + 96), 6, 124);
    }
  }
  return this;
}


// ===== 833cbc GLXPlayerLogin::SendLogin(char *,char *,char *,int,char *,char *,bool) =====
int __fastcall GLXPlayerLogin::SendLogin(
        GLXPlayerLogin *this,
        char *a2,
        char *a3,
        char *a4,
        int a5,
        char *a6,
        char *a7,
        bool a8)
{
  bool v9; // zf
  int v11; // r12
  char *v13; // r0
  const char *GameVersion; // r0
  void *v15; // r10
  void *v16; // r4
  GLXPlayerSereverConfig *v18; // r0
  const char *v19; // r0
  int v20; // [sp+8h] [bp-111Ch]
  char v22[4]; // [sp+1Ch] [bp-1108h] BYREF
  char v23[100]; // [sp+101Ch] [bp-108h] BYREF
  char v24[100]; // [sp+109Ch] [bp-88h] BYREF

  v9 = a2 == nullptr;
  if ( a2 )
    v9 = a3 == nullptr;
  v11 = v9;
  if ( v9 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 15, -100);
    return 0;
  }
  else
  {
    v20 = v11;
    XP_API_MEMSET(v22, v11, 0x1000u);
    sprintf(v22, "f|%d|i|%d|u|%s|p|%s|", 15, *((_DWORD *)this + 2), a2, a3);
    LC_API_MEMSET_0(v24, v20, 0x80u);
    if ( a5 > 0 )
    {
      sprintf(v24, "o|%d|", a5);
      XP_API_STRCAT(v22, v24);
    }
    if ( a6 )
    {
      XP_API_MEMSET(v24, 0, 0x80u);
      sprintf(v24, "d|%s|", a6);
      XP_API_STRCAT(v22, v24);
    }
    XP_API_MEMSET(v24, 0, 0x80u);
    sprintf(v24, "un|%d|", 1);
    XP_API_STRCAT(v22, v24);
    XP_API_MEMSET(v24, 0, 0x80u);
    sprintf(v24, "n|%d|", 1);
    XP_API_STRCAT(v22, v24);
    if ( a7 )
    {
      XP_API_MEMSET(v24, 0, 0x80u);
      sprintf(v24, "l|%s|", a7);
      XP_API_STRCAT(v22, v24);
      *((_DWORD *)this + 31) = XP_API_STRNEW(a7);
    }
    if ( *((int *)this + 15) > 0 )
    {
      XP_API_MEMSET(v24, 0, 0x80u);
      sprintf(v24, "t|%d|", *((_DWORD *)this + 15));
      XP_API_STRCAT(v22, v24);
    }
    if ( a4 )
    {
      XP_API_MEMSET(v24, 0, 0x80u);
      sprintf(v24, "udid|%s|", a4);
      XP_API_STRCAT(v22, v24);
    }
    XP_API_MEMSET(v24, 0, 0x80u);
    sprintf(v24, "gllive|%d|", a8);
    v13 = XP_API_STRCAT(v22, v24);
    GameVersion = (const char *)GLXPlayerSereverConfig::GetGameVersion((GLXPlayerSereverConfig *)v13);
    if ( XP_API_STRLEN(GameVersion) )
    {
      v18 = (GLXPlayerSereverConfig *)LC_API_MEMSET_0(v23, 0, 0x80u);
      v19 = (const char *)GLXPlayerSereverConfig::GetGameVersion(v18);
      sprintf(v23, "ver|%s|", v19);
      XP_API_STRCAT(v22, v23);
    }
    v15 = XP_API_STRNEW("i386");
    v16 = XP_API_STRNEW("XP");
    if ( v15 )
      LC_API_FREE_0(v15);
    if ( v16 )
      LC_API_FREE_0(v16);
    XP_DEBUG_OUT("[Login] %s\n", v22);
    return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v22);
  }
}


// ===== 83406c GLXPlayerLogin::sendRegister(char *,char *,char *,char *,bool,char *,bool,char *,bool) =====
int __fastcall GLXPlayerLogin::sendRegister(
        GLXPlayerLogin *this,
        char *a2,
        char *a3,
        char *a4,
        char *a5,
        bool a6,
        char *a7,
        bool a8,
        char *a9,
        bool a10)
{
  bool v12; // zf
  bool v15; // zf
  int v16; // lr
  char *v18; // r0
  const char *GameVersion; // r0
  GLXPlayerSereverConfig *v20; // r0
  const char *v21; // r0
  int v22; // [sp+20h] [bp-111Ch]
  char v23[4]; // [sp+34h] [bp-1108h] BYREF
  char v24[76]; // [sp+1034h] [bp-108h] BYREF
  char v25[76]; // [sp+10B4h] [bp-88h] BYREF

  v12 = a2 == nullptr;
  if ( a2 )
    v12 = a3 == nullptr;
  if ( v12 )
    goto LABEL_11;
  v15 = a4 == nullptr;
  if ( a4 )
    v15 = a5 == nullptr;
  v16 = v15;
  v22 = v16;
  if ( v15 )
  {
LABEL_11:
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 11, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v23, v16, 0x1000u);
    v18 = (char *)sprintf(
                    v23,
                    "f|%d|i|%d|u|%s|p|%s|e|%s|c|%s|ef|%d|o|%d|",
                    11,
                    *((_DWORD *)this + 2),
                    a2,
                    a3,
                    a4,
                    a5,
                    a6,
                    a8);
    if ( a9 )
    {
      LC_API_MEMSET_0(v25, v22, 0x80u);
      sprintf(v25, "d|%s|", a9);
      v18 = XP_API_STRCAT(v23, v25);
    }
    if ( a7 )
    {
      LC_API_MEMSET_0(v25, 0, 0x80u);
      sprintf(v25, "udid|%s|", a7);
      v18 = XP_API_STRCAT(v23, v25);
    }
    GameVersion = (const char *)GLXPlayerSereverConfig::GetGameVersion((GLXPlayerSereverConfig *)v18);
    if ( XP_API_STRLEN(GameVersion) )
    {
      v20 = (GLXPlayerSereverConfig *)LC_API_MEMSET_0(v25, 0, 0x80u);
      v21 = (const char *)GLXPlayerSereverConfig::GetGameVersion(v20);
      sprintf(v25, "ver|%s|", v21);
      XP_API_STRCAT(v23, v25);
    }
    LC_API_MEMSET_0(v24, 0, 0x80u);
    sprintf(v24, "gllive|%d|", a10);
    XP_API_STRCAT(v23, v24);
    XP_DEBUG_OUT("GLXPlayerUser::sendRegister before String2Blob -> buffer = %s\n", v23);
    return (*(int (__fastcall **)(GLXPlayerLogin *, char *))(*(_DWORD *)this + 12))(this, v23);
  }
}


// ===== 8342f0 GLXPlayerLogin::OnUpdateFailure(int) =====
int __fastcall GLXPlayerLogin::OnUpdateFailure(char **this, int a2)
{
  int NextResponseIntToken; // r0
  int v5; // r7
  char *v7; // r0
  char *v8; // r10
  char *NextResponseToken; // r0
  char v10[4]; // [sp+4h] [bp-1008h] BYREF

  NextResponseIntToken = GLXPlayerWebComponent::GetNextResponseIntToken((GLXPlayerWebComponent *)this);
  v5 = NextResponseIntToken;
  if ( a2 == 11
    && NextResponseIntToken == 48
    && GLXPlayerWebComponent::IsNextResponseStringToken((GLXPlayerWebComponent *)this, "u") )
  {
    v7 = (char *)operator new[](0x10u);
    *(this + 33) = v7;
    XP_API_MEMSET(v7, 0, 0x10u);
    v8 = *(this + 33);
    NextResponseToken = GLXPlayerWebComponent::GetNextResponseToken((GLXPlayerWebComponent *)this, v10);
    XP_API_STRCPY(v8, NextResponseToken);
  }
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)*(this + 1) + 12))(*(this + 1), a2, v5);
  return 1;
}


// ===== 8343e0 GLXPlayerLogin::Update(void) =====
int __fastcall GLXPlayerLogin::Update(GLXPlayerLogin *this)
{
  GLXPlayerLogin::KeepAlive(this);
  return GLXPlayerWebComponent::Update((int)this);
}


// ===== 8343f8 GLXPlayerLogin::clearProductInfo(void) =====
void __fastcall GLXPlayerLogin::clearProductInfo(GLXPlayerLogin *this)
{
  void *v2; // r0
  void *v3; // r0
  _DWORD *v4; // r3
  int v5; // r2
  int i; // r4
  void *v7; // r0

  v2 = *((void **)this + 26);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 26) = 0;
  }
  v3 = *((void **)this + 27);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 27) = 0;
  }
  v4 = *((_DWORD **)this + 28);
  if ( v4 )
  {
    v5 = *((_DWORD *)this + 25);
    if ( v5 <= 0 )
      goto LABEL_12;
    for ( i = 0; i < v5; ++i )
    {
      v7 = (void *)v4[i];
      if ( v7 )
      {
        operator delete[](v7);
        *(_DWORD *)(*((_DWORD *)this + 28) + 4 * i) = 0;
        v5 = *((_DWORD *)this + 25);
        v4 = *((_DWORD **)this + 28);
      }
    }
    if ( v4 )
LABEL_12:
      operator delete[](v4);
    *((_DWORD *)this + 28) = 0;
  }
  *((_DWORD *)this + 25) = 0;
}


// ===== 8344a0 GLXPlayerLogin::processGetProductInfo(char *) =====
int __fastcall GLXPlayerLogin::processGetProductInfo(int this, char *a2)
{
  GLXPlayerLogin *v3; // r5
  signed int v4; // r4
  int v5; // r3
  int v6; // r0
  int v7; // r3
  int v8; // r3
  int v9; // r4
  int v10; // r11
  int v11; // r11
  int v12; // r11
  char v13[512]; // [sp+4h] [bp-218h] BYREF
  char v14[16]; // [sp+204h] [bp-18h] BYREF

  v3 = (GLXPlayerLogin *)this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      GLXPlayerLogin::clearProductInfo(v3);
      v4 = 0;
      ++*((_DWORD *)v3 + 25);
      while ( v4 < (int)XP_API_STRLEN(a2) )
      {
        v5 = a2[v4++];
        if ( v5 == 124 )
          ++*((_DWORD *)v3 + 25);
      }
      v6 = operator new[](4 * *((_DWORD *)v3 + 25));
      v7 = *((_DWORD *)v3 + 25);
      *((_DWORD *)v3 + 27) = v6;
      this = operator new[](4 * v7);
      v8 = *((_DWORD *)v3 + 25);
      *((_DWORD *)v3 + 28) = this;
      if ( v8 > 0 )
      {
        v9 = 0;
        do
        {
          XP_API_MEMSET(v13, 0, 0x200u);
          getValue(a2, v13, v9, 124);
          XP_API_MEMSET(v14, 0, 0x10u);
          getValue(v13, v14, 0, 94);
          v10 = *((_DWORD *)v3 + 26);
          *(_DWORD *)(v10 + 4 * v9) = XP_API_ATOI(v14);
          XP_API_MEMSET(v14, 0, 0x10u);
          getValue(v13, v14, 1, 94);
          v11 = *((_DWORD *)v3 + 27);
          *(_DWORD *)(v11 + 4 * v9) = XP_API_ATOI(v14);
          v12 = *((_DWORD *)v3 + 28);
          *(_DWORD *)(v12 + 4 * v9) = operator new[](0x100u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)v3 + 28) + 4 * v9), 0, 0x100u);
          this = getValue(v13, *(_BYTE **)(*((_DWORD *)v3 + 28) + 4 * v9++), 2, 94);
        }
        while ( *((_DWORD *)v3 + 25) > v9 );
      }
    }
  }
  return this;
}


// ===== 834658 GLXPlayerLogin::OnUpdateSuccess(int) =====
char *__fastcall GLXPlayerLogin::OnUpdateSuccess(GLXPlayerLogin *this, int a2)
{
  void *v5; // r0
  char *v6; // r0
  char *v7; // r0
  int v8; // r10
  const char *v9; // r8
  void (__fastcall *v10)(int, int, const char *, size_t); // r7
  size_t v11; // r0
  int v12; // r10
  const char *v13; // r7
  void (__fastcall *v14)(int, int, const char *, size_t); // r6
  size_t v15; // r0
  char *NextResponseToken; // r0
  int v17; // r3
  char *v18; // r0
  char *v19; // r0
  char *v20; // r0
  char v21[4]; // [sp+4h] [bp-1008h] BYREF

  if ( a2 != 15 )
  {
    switch ( a2 )
    {
      case 17:
        v12 = *((_DWORD *)this + 1);
        *((_BYTE *)this + 64) = 0;
        v13 = *((const char **)this + 9);
        v14 = *(void (__fastcall **)(int, int, const char *, size_t))(*(_DWORD *)v12 + 8);
        v15 = XP_API_STRLEN(v13);
        v14(v12, a2, v13, v15);
        return (char *)&dword_0 + 1;
      case 16:
        GLXPlayerWebComponent::GetNextResponseToken(this, v21);
        NextResponseToken = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
        *((_DWORD *)this + 15) = XP_API_ATOI(NextResponseToken);
        return (char *)GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
      case 83:
        GLXPlayerLogin::processApplePushServer((signed int)this, *((char **)this + 9));
        return (char *)GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
      case 95:
        GLXPlayerLogin::processGetProductInfo((int)this, *((char **)this + 9));
        return (char *)GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
      default:
        return (char *)GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
    }
  }
  if ( !GLXPlayerWebComponent::IsNextResponseStringToken(this, "u") )
  {
    v17 = *((_DWORD *)this + 1);
LABEL_23:
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v17 + 12))(v17, 15, 40);
    return (_BYTE *)(&dword_0 + 1);
  }
  XP_API_MEMSET(v21, 0, 0x100u);
  v5 = *((void **)this + 3);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 3) = 0;
  }
  v6 = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
  *((_DWORD *)this + 3) = XP_API_STRNEW(v6);
  if ( !GLXPlayerWebComponent::IsNextResponseStringToken(this, "t") )
  {
    v17 = *((_DWORD *)this + 1);
    goto LABEL_23;
  }
  XP_API_MEMSET(v21, 0, 0x100u);
  v7 = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
  *((_DWORD *)this + 15) = XP_API_ATOI(v7);
  if ( GLXPlayerWebComponent::IsNextResponseStringToken(this, "un") )
  {
    v20 = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
    *((_DWORD *)this + 30) = XP_API_STRNEW(v20);
  }
  if ( GLXPlayerWebComponent::IsNextResponseStringToken(this, "n") )
  {
    v19 = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
    *((_DWORD *)this + 29) = XP_API_STRNEW(v19);
  }
  if ( GLXPlayerWebComponent::IsNextResponseStringToken(this, "gct") )
  {
    v18 = GLXPlayerWebComponent::GetNextResponseToken(this, v21);
    *((_DWORD *)this + 32) = XP_API_STRNEW(v18);
  }
  v8 = *((_DWORD *)this + 1);
  v9 = *((const char **)this + 9);
  *((_BYTE *)this + 64) = 1;
  v10 = *(void (__fastcall **)(int, int, const char *, size_t))(*(_DWORD *)v8 + 8);
  v11 = XP_API_STRLEN(v9);
  v10(v8, 15, v9, v11);
  return (_BYTE *)(&dword_0 + 1);
}


// ===== 834928 GLXPlayerLogin::~GLXPlayerLogin() =====
void __fastcall GLXPlayerLogin::~GLXPlayerLogin(GLXPlayerLogin *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0

  v2 = *((void **)this + 18);
  *(_DWORD *)this = off_992FD0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 18) = 0;
  }
  v3 = *((void **)this + 20);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 20) = 0;
  }
  v4 = *((void **)this + 22);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 22) = 0;
  }
  v5 = *((void **)this + 23);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 23) = 0;
  }
  v6 = *((void **)this + 24);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *((_DWORD *)this + 24) = 0;
  }
  v7 = *((void **)this + 30);
  if ( v7 )
  {
    LC_API_FREE_0(v7);
    *((_DWORD *)this + 30) = 0;
  }
  v8 = *((void **)this + 29);
  if ( v8 )
  {
    LC_API_FREE_0(v8);
    *((_DWORD *)this + 29) = 0;
  }
  v9 = *((void **)this + 31);
  if ( v9 )
  {
    LC_API_FREE_0(v9);
    *((_DWORD *)this + 31) = 0;
  }
  v10 = *((void **)this + 32);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *((_DWORD *)this + 32) = 0;
  }
  v11 = *((void **)this + 33);
  if ( v11 )
  {
    operator delete[](v11);
    *((_DWORD *)this + 33) = 0;
  }
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 19) = 0;
  GLXPlayerLogin::clearProductInfo(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 834a70 GLXPlayerLogin::~GLXPlayerLogin() =====
void __fastcall GLXPlayerLogin::~GLXPlayerLogin(GLXPlayerLogin *this)
{
  GLXPlayerLogin::~GLXPlayerLogin(this);
  LC_API_FREE_0(this);
}


// ===== 834a8c GLXPlayerLogin::~GLXPlayerLogin() =====
void __fastcall GLXPlayerLogin::~GLXPlayerLogin(GLXPlayerLogin *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0

  v2 = *((void **)this + 18);
  *(_DWORD *)this = off_992FD0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 18) = 0;
  }
  v3 = *((void **)this + 20);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 20) = 0;
  }
  v4 = *((void **)this + 22);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 22) = 0;
  }
  v5 = *((void **)this + 23);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 23) = 0;
  }
  v6 = *((void **)this + 24);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *((_DWORD *)this + 24) = 0;
  }
  v7 = *((void **)this + 30);
  if ( v7 )
  {
    LC_API_FREE_0(v7);
    *((_DWORD *)this + 30) = 0;
  }
  v8 = *((void **)this + 29);
  if ( v8 )
  {
    LC_API_FREE_0(v8);
    *((_DWORD *)this + 29) = 0;
  }
  v9 = *((void **)this + 31);
  if ( v9 )
  {
    LC_API_FREE_0(v9);
    *((_DWORD *)this + 31) = 0;
  }
  v10 = *((void **)this + 32);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *((_DWORD *)this + 32) = 0;
  }
  v11 = *((void **)this + 33);
  if ( v11 )
  {
    operator delete[](v11);
    *((_DWORD *)this + 33) = 0;
  }
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 19) = 0;
  GLXPlayerLogin::clearProductInfo(this);
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 834bd4 GLXPlayerLogin::GLXPlayerLogin(void) =====
void __fastcall GLXPlayerLogin::GLXPlayerLogin(GLXPlayerLogin *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992FD0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
}


// ===== 834c80 GLXPlayerLogin::GLXPlayerLogin(void) =====
void __fastcall GLXPlayerLogin::GLXPlayerLogin(GLXPlayerLogin *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_992FD0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
}


// ===== 834d2c GLXPlayerMessage::getMsgListCount(void) =====
int __fastcall GLXPlayerMessage::getMsgListCount(GLXPlayerMessage *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 834d34 GLXPlayerMessage::getMsgCount(int,int) =====
int __fastcall GLXPlayerMessage::getMsgCount(GLXPlayerMessage *this, int a2, unsigned int a3)
{
  if ( a3 > 2 )
    return -1;
  switch ( a2 )
  {
    case 1:
      return *((_DWORD *)this + a3 + 27);
    case 2:
      return *((_DWORD *)this + a3 + 30);
    case 4:
      return *((_DWORD *)this + a3 + 33);
    case 8:
      return *((_DWORD *)this + a3 + 36);
    case 16:
      return *((_DWORD *)this + a3 + 39);
  }
  if ( a2 != 32 )
    return -1;
  return *((_DWORD *)this + a3 + 42);
}


// ===== 834dc0 GLXPlayerMessage::getMySentMsgCount(void) =====
int __fastcall GLXPlayerMessage::getMySentMsgCount(GLXPlayerMessage *this)
{
  return *((_DWORD *)this + 45);
}


// ===== 834dc8 GLXPlayerMessage::getMsgID(int) =====
int __fastcall GLXPlayerMessage::getMsgID(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 15);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834df8 GLXPlayerMessage::getMsgTitle(int) =====
int __fastcall GLXPlayerMessage::getMsgTitle(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 16);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834e28 GLXPlayerMessage::getMsgSenderNumber(int) =====
int __fastcall GLXPlayerMessage::getMsgSenderNumber(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 17);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834e58 GLXPlayerMessage::getMsgSender(int) =====
int __fastcall GLXPlayerMessage::getMsgSender(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 18);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834e88 GLXPlayerMessage::getMsgDesUserNumberList(int) =====
int __fastcall GLXPlayerMessage::getMsgDesUserNumberList(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 19);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834eb8 GLXPlayerMessage::getMsgDesUserNameList(int) =====
int __fastcall GLXPlayerMessage::getMsgDesUserNameList(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 20);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834ee8 GLXPlayerMessage::getMsgCreatedTime(int) =====
int __fastcall GLXPlayerMessage::getMsgCreatedTime(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 21);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834f18 GLXPlayerMessage::getMsgReadState(int) =====
int __fastcall GLXPlayerMessage::getMsgReadState(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 22);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return 0;
  else
    return *(unsigned __int8 *)(v2 + a2);
}


// ===== 834f44 GLXPlayerMessage::getMsgBody(void) =====
int __fastcall GLXPlayerMessage::getMsgBody(GLXPlayerMessage *this)
{
  return *((_DWORD *)this + 26);
}


// ===== 834f4c GLXPlayerMessage::getCurrentMsgID(void) =====
int __fastcall GLXPlayerMessage::getCurrentMsgID(GLXPlayerMessage *this)
{
  return *((_DWORD *)this + 25);
}


// ===== 834f54 GLXPlayerMessage::getCurrentMsgPosition(void) =====
int __fastcall GLXPlayerMessage::getCurrentMsgPosition(GLXPlayerMessage *this)
{
  signed int i; // r4
  int MsgID; // r6

  for ( i = 0; i < GLXPlayerMessage::getMsgListCount(this); ++i )
  {
    MsgID = GLXPlayerMessage::getMsgID(this, i);
    if ( MsgID == GLXPlayerMessage::getCurrentMsgID(this) )
      return i;
  }
  return -1;
}


// ===== 834fa4 GLXPlayerMessage::getMsgType(int) =====
int __fastcall GLXPlayerMessage::getMsgType(GLXPlayerMessage *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 23);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 24) )
    return -1;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 834fd4 GLXPlayerMessage::clearMsgCount(void) =====
_DWORD *__fastcall GLXPlayerMessage::clearMsgCount(_DWORD *this)
{
  int v1; // r3

  v1 = 0;
  do
  {
    ++v1;
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 29) = 0;
    this += 3;
  }
  while ( v1 != 6 );
  return this;
}


// ===== 834ffc GLXPlayerMessage::processMsgCount(char *) =====
_DWORD *__fastcall GLXPlayerMessage::processMsgCount(GLXPlayerMessage *this, char *a2)
{
  _DWORD *result; // r0
  int v5; // r8
  int v6; // r4
  _DWORD *v7; // r6
  char v8[32]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v9[2]; // [sp+2Ch] [bp-10h] BYREF

  result = GLXPlayerMessage::clearMsgCount(this);
  if ( a2 )
  {
    result = (_DWORD *)XP_API_STRLEN(a2);
    if ( (int)result > 0 )
    {
      v5 = 0;
      memset(v8, 0, sizeof(v8));
      v9[0] = 0;
      v9[1] = 0;
      do
      {
        XP_API_MEMSET(v8, 0, 0x20u);
        getValue(a2, v8, v5, 124);
        v6 = 0;
        v7 = (_DWORD *)((char *)this + 12 * v5 + 108);
        do
        {
          ++v6;
          XP_API_MEMSET(v9, 0, 8u);
          getValue(v8, v9, v6, 94);
          result = (_DWORD *)XP_API_ATOI((const char *)v9);
          *v7++ = result;
        }
        while ( v6 != 3 );
        ++v5;
      }
      while ( v5 != 6 );
    }
  }
  return result;
}


// ===== 835124 GLXPlayerMessage::getMsgDesUserName(int,int) =====
_BYTE *__fastcall GLXPlayerMessage::getMsgDesUserName(GLXPlayerMessage *this, int a2, int a3)
{
  _BYTE *v3; // r4

  v3 = *((_BYTE **)this + 20);
  if ( v3 )
  {
    v3 = (_BYTE *)operator new[](0x10u);
    XP_API_MEMSET(v3, 0, 0x10u);
    getValue(*(char **)(*((_DWORD *)this + 20) + 4 * a2), v3, a3, 44);
  }
  return v3;
}


// ===== 835178 GLXPlayerMessage::getMsgDesUserNumber(int,int) =====
_BYTE *__fastcall GLXPlayerMessage::getMsgDesUserNumber(GLXPlayerMessage *this, int a2, int a3)
{
  _BYTE *v3; // r4

  v3 = *((_BYTE **)this + 19);
  if ( v3 )
  {
    v3 = (_BYTE *)operator new[](0x10u);
    XP_API_MEMSET(v3, 0, 0x10u);
    getValue(*(char **)(*((_DWORD *)this + 19) + 4 * a2), v3, a3, 44);
  }
  return v3;
}


// ===== 8351cc GLXPlayerMessage::clearMessageList(void) =====
void __fastcall GLXPlayerMessage::clearMessageList(GLXPlayerMessage *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  _DWORD *v5; // r2
  int v6; // r3
  int i; // r5
  void *v8; // r0
  _DWORD *v9; // r2
  int v10; // r3
  int j; // r5
  void *v12; // r0
  _DWORD *v13; // r2
  int v14; // r3
  int k; // r5
  void *v16; // r0
  _DWORD *v17; // r2
  int v18; // r3
  int m; // r5
  void *v20; // r0
  _DWORD *v21; // r2
  int v22; // r3
  int n; // r5
  void *v24; // r0
  _DWORD *v25; // r2
  int v26; // r3
  int ii; // r5
  void *v28; // r0

  v2 = *((void **)this + 15);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 15) = 0;
  }
  v3 = *((void **)this + 23);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 23) = 0;
  }
  v4 = *((void **)this + 22);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 22) = 0;
  }
  v5 = *((_DWORD **)this + 16);
  if ( v5 )
  {
    v6 = *((_DWORD *)this + 24);
    if ( v6 <= 0 )
      goto LABEL_14;
    for ( i = 0; i < v6; ++i )
    {
      v8 = (void *)v5[i];
      if ( v8 )
      {
        operator delete[](v8);
        *(_DWORD *)(*((_DWORD *)this + 16) + 4 * i) = 0;
        v6 = *((_DWORD *)this + 24);
        v5 = *((_DWORD **)this + 16);
      }
    }
    if ( v5 )
LABEL_14:
      operator delete[](v5);
    *((_DWORD *)this + 16) = 0;
  }
  v9 = *((_DWORD **)this + 17);
  if ( v9 )
  {
    v10 = *((_DWORD *)this + 24);
    if ( v10 <= 0 )
      goto LABEL_23;
    for ( j = 0; j < v10; ++j )
    {
      v12 = (void *)v9[j];
      if ( v12 )
      {
        operator delete[](v12);
        *(_DWORD *)(*((_DWORD *)this + 17) + 4 * j) = 0;
        v10 = *((_DWORD *)this + 24);
        v9 = *((_DWORD **)this + 17);
      }
    }
    if ( v9 )
LABEL_23:
      operator delete[](v9);
    *((_DWORD *)this + 17) = 0;
  }
  v13 = *((_DWORD **)this + 18);
  if ( v13 )
  {
    v14 = *((_DWORD *)this + 24);
    if ( v14 <= 0 )
      goto LABEL_32;
    for ( k = 0; k < v14; ++k )
    {
      v16 = (void *)v13[k];
      if ( v16 )
      {
        operator delete[](v16);
        *(_DWORD *)(*((_DWORD *)this + 18) + 4 * k) = 0;
        v14 = *((_DWORD *)this + 24);
        v13 = *((_DWORD **)this + 18);
      }
    }
    if ( v13 )
LABEL_32:
      operator delete[](v13);
    *((_DWORD *)this + 18) = 0;
  }
  v17 = *((_DWORD **)this + 19);
  if ( v17 )
  {
    v18 = *((_DWORD *)this + 24);
    if ( v18 <= 0 )
      goto LABEL_41;
    for ( m = 0; m < v18; ++m )
    {
      v20 = (void *)v17[m];
      if ( v20 )
      {
        operator delete[](v20);
        *(_DWORD *)(*((_DWORD *)this + 19) + 4 * m) = 0;
        v18 = *((_DWORD *)this + 24);
        v17 = *((_DWORD **)this + 19);
      }
    }
    if ( v17 )
LABEL_41:
      operator delete[](v17);
    *((_DWORD *)this + 19) = 0;
  }
  v21 = *((_DWORD **)this + 20);
  if ( v21 )
  {
    v22 = *((_DWORD *)this + 24);
    if ( v22 <= 0 )
      goto LABEL_50;
    for ( n = 0; n < v22; ++n )
    {
      v24 = (void *)v21[n];
      if ( v24 )
      {
        operator delete[](v24);
        *(_DWORD *)(*((_DWORD *)this + 20) + 4 * n) = 0;
        v22 = *((_DWORD *)this + 24);
        v21 = *((_DWORD **)this + 20);
      }
    }
    if ( v21 )
LABEL_50:
      operator delete[](v21);
    *((_DWORD *)this + 20) = 0;
  }
  v25 = *((_DWORD **)this + 21);
  if ( v25 )
  {
    v26 = *((_DWORD *)this + 24);
    if ( v26 <= 0 )
      goto LABEL_59;
    for ( ii = 0; ii < v26; ++ii )
    {
      v28 = (void *)v25[ii];
      if ( v28 )
      {
        operator delete[](v28);
        *(_DWORD *)(*((_DWORD *)this + 21) + 4 * ii) = 0;
        v26 = *((_DWORD *)this + 24);
        v25 = *((_DWORD **)this + 21);
      }
    }
    if ( v25 )
LABEL_59:
      operator delete[](v25);
    *((_DWORD *)this + 21) = 0;
  }
  *((_DWORD *)this + 24) = 0;
}


// ===== 835480 GLXPlayerMessage::processMySentMsgHeaderList(char *) =====
void __fastcall GLXPlayerMessage::processMySentMsgHeaderList(GLXPlayerMessage *this, char *a2)
{
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r0
  int v11; // r3
  int v12; // r4
  int v13; // r11
  int v14; // r11
  int v15; // r11
  int v16; // r11
  int v17; // r11
  char v18[256]; // [sp+4h] [bp-188h] BYREF
  char v19[128]; // [sp+104h] [bp-88h] BYREF

  GLXPlayerMessage::clearMessageList(this);
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
    {
      LC_API_MEMSET_0(v18, 0, 0x100u);
      LC_API_MEMSET_0(v19, 0, 0x80u);
      getValue(a2, v19, 0, 124);
      XP_API_MEMSET(v19, 0, 0x80u);
      getValue(a2, v19, 1, 124);
      *((_DWORD *)this + 24) = XP_API_ATOI(v19);
      XP_API_MEMSET(v19, 0, 0x80u);
      v4 = operator new[](4 * *((_DWORD *)this + 24));
      v5 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 15) = v4;
      v6 = operator new[](4 * v5);
      v7 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 16) = v6;
      v8 = operator new[](4 * v7);
      v9 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 19) = v8;
      v10 = operator new[](4 * v9);
      v11 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 20) = v10;
      *((_DWORD *)this + 21) = operator new[](4 * v11);
      XP_API_MEMSET(v19, 0, 0x80u);
      getValue(a2, v19, 2, 124);
      if ( *((int *)this + 24) > 0 )
      {
        v12 = 0;
        do
        {
          XP_API_MEMSET(v18, 0, 0x100u);
          getValue(a2, v18, v12 + 3, 124);
          v13 = *((_DWORD *)this + 16);
          *(_DWORD *)(v13 + 4 * v12) = operator new[](0x80u);
          v14 = *((_DWORD *)this + 19);
          *(_DWORD *)(v14 + 4 * v12) = operator new[](0x80u);
          v15 = *((_DWORD *)this + 20);
          *(_DWORD *)(v15 + 4 * v12) = operator new[](0x80u);
          v16 = *((_DWORD *)this + 21);
          *(_DWORD *)(v16 + 4 * v12) = operator new[](0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 16) + 4 * v12), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 19) + 4 * v12), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 20) + 4 * v12), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 21) + 4 * v12), 0, 0x80u);
          XP_API_MEMSET(v19, 0, 0x80u);
          getValue(v18, v19, 0, 94);
          v17 = *((_DWORD *)this + 15);
          *(_DWORD *)(v17 + 4 * v12) = XP_API_ATOI(v19);
          getValue(v18, *(_BYTE **)(*((_DWORD *)this + 16) + 4 * v12), 1, 94);
          getValue(v18, *(_BYTE **)(*((_DWORD *)this + 19) + 4 * v12), 2, 94);
          getValue(v18, *(_BYTE **)(*((_DWORD *)this + 20) + 4 * v12), 3, 94);
          getValue(v18, *(_BYTE **)(*((_DWORD *)this + 21) + 4 * v12++), 4, 94);
        }
        while ( *((_DWORD *)this + 24) > v12 );
      }
    }
  }
}


// ===== 835744 GLXPlayerMessage::processMsgHeaderList(char *) =====
void __fastcall GLXPlayerMessage::processMsgHeaderList(GLXPlayerMessage *this, char *a2)
{
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r0
  int v11; // r3
  int v12; // r0
  int v13; // r3
  int v14; // r4
  int v15; // r10
  int v16; // r10
  int v17; // r10
  int v18; // r10
  int v19; // r10
  int v20; // r10
  int v21; // r10
  int v22; // r3
  char v23[256]; // [sp+4h] [bp-188h] BYREF
  char v24[128]; // [sp+104h] [bp-88h] BYREF

  GLXPlayerMessage::clearMessageList(this);
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
    {
      LC_API_MEMSET_0(v23, 0, 0x100u);
      LC_API_MEMSET_0(v24, 0, 0x80u);
      getValue(a2, v24, 0, 124);
      XP_API_MEMSET(v24, 0, 0x80u);
      getValue(a2, v24, 1, 124);
      *((_DWORD *)this + 24) = XP_API_ATOI(v24);
      XP_API_MEMSET(v24, 0, 0x80u);
      v4 = operator new[](4 * *((_DWORD *)this + 24));
      v5 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 15) = v4;
      *((_DWORD *)this + 23) = operator new[](4 * v5);
      v6 = operator new[](*((_DWORD *)this + 24));
      v7 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 22) = v6;
      v8 = operator new[](4 * v7);
      v9 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 16) = v8;
      v10 = operator new[](4 * v9);
      v11 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 18) = v10;
      v12 = operator new[](4 * v11);
      v13 = *((_DWORD *)this + 24);
      *((_DWORD *)this + 17) = v12;
      *((_DWORD *)this + 21) = operator new[](4 * v13);
      XP_API_MEMSET(v24, 0, 0x80u);
      getValue(a2, v24, 2, 124);
      if ( *((int *)this + 24) > 0 )
      {
        v14 = 0;
        do
        {
          XP_API_MEMSET(v23, 0, 0x100u);
          getValue(a2, v23, v14 + 3, 124);
          v15 = *((_DWORD *)this + 16);
          *(_DWORD *)(v15 + 4 * v14) = operator new[](0x80u);
          v16 = *((_DWORD *)this + 18);
          *(_DWORD *)(v16 + 4 * v14) = operator new[](0x80u);
          v17 = *((_DWORD *)this + 17);
          *(_DWORD *)(v17 + 4 * v14) = operator new[](0x80u);
          v18 = *((_DWORD *)this + 21);
          *(_DWORD *)(v18 + 4 * v14) = operator new[](0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 16) + 4 * v14), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 18) + 4 * v14), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 17) + 4 * v14), 0, 0x80u);
          XP_API_MEMSET(*(void **)(*((_DWORD *)this + 21) + 4 * v14), 0, 0x80u);
          XP_API_MEMSET(v24, 0, 0x80u);
          getValue(v23, v24, 0, 94);
          v19 = *((_DWORD *)this + 15);
          *(_DWORD *)(v19 + 4 * v14) = XP_API_ATOI(v24);
          XP_API_MEMSET(v24, 0, 0x80u);
          getValue(v23, v24, 1, 94);
          v20 = *((_DWORD *)this + 23);
          *(_DWORD *)(v20 + 4 * v14) = XP_API_ATOI(v24);
          getValue(v23, *(_BYTE **)(*((_DWORD *)this + 16) + 4 * v14), 2, 94);
          getValue(v23, *(_BYTE **)(*((_DWORD *)this + 18) + 4 * v14), 3, 94);
          getValue(v23, *(_BYTE **)(*((_DWORD *)this + 17) + 4 * v14), 4, 94);
          getValue(v23, *(_BYTE **)(*((_DWORD *)this + 21) + 4 * v14), 5, 94);
          XP_API_MEMSET(v24, 0, 0x80u);
          getValue(v23, v24, 6, 94);
          v21 = XP_API_ATOI(v24);
          XP_API_MEMSET(v24, 0, 0x80u);
          v22 = *((_DWORD *)this + 22);
          if ( v21 )
            *(_BYTE *)(v22 + v14) = 1;
          else
            *(_BYTE *)(v22 + v14) = 0;
          ++v14;
        }
        while ( *((_DWORD *)this + 24) > v14 );
      }
    }
  }
}


// ===== 835aac GLXPlayerMessage::SendGetMySentMessageHeader(int,int) =====
int __fastcall GLXPlayerMessage::SendGetMySentMessageHeader(GLXPlayerMessage *this, int a2, int a3)
{
  char v7[4]; // [sp+14h] [bp-1004h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s|a|%d|c|%d|", 92, *((_DWORD *)this + 2), *((const char **)this + 3), a2, a3);
  XP_DEBUG_OUT("[SendGetMessageHeader] %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 835b74 GLXPlayerMessage::SendGetMySentMessageCount(void) =====
int __fastcall GLXPlayerMessage::SendGetMySentMessageCount(GLXPlayerMessage *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 91, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("[GLXPlayerMessage::SendGetMySentMessageCount] %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 835c30 GLXPlayerMessage::SendDelMySentMessage(int) =====
int __fastcall GLXPlayerMessage::SendDelMySentMessage(GLXPlayerMessage *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|m|%d|", 94, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("[SendDelMySentMessage] %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 835cf4 GLXPlayerMessage::SendDeleteMessage(int) =====
int __fastcall GLXPlayerMessage::SendDeleteMessage(GLXPlayerMessage *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|m|%d|", 78, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("[SendDeleteMessage] %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 835db8 GLXPlayerMessage::SendOnlineMessage(char *,int,char *,char *,bool) =====
int __fastcall GLXPlayerMessage::SendOnlineMessage(
        GLXPlayerMessage *this,
        char *a2,
        int a3,
        char *a4,
        char *a5,
        bool a6)
{
  bool v10; // zf
  bool v11; // zf
  char v13[4]; // [sp+24h] [bp-1008h] BYREF

  XP_API_MEMSET(v13, 0, 0x1000u);
  if ( a3 == 8 )
  {
    if ( a2 )
    {
      if ( a6 )
        sprintf(
          v13,
          "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|un|%s|",
          77,
          *((_DWORD *)this + 2),
          *((_DWORD *)this + 3),
          8,
          "",
          "",
          a2);
      else
        sprintf(
          v13,
          "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|n|%s|",
          77,
          *((_DWORD *)this + 2),
          *((_DWORD *)this + 3),
          8,
          "",
          "",
          a2);
      goto LABEL_13;
    }
LABEL_9:
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 77, -100);
    return 0;
  }
  v10 = a2 == nullptr;
  if ( a2 )
    v10 = a4 == nullptr;
  if ( v10 )
    goto LABEL_9;
  v11 = a3 == 1;
  if ( a3 != 1 )
    v11 = a5 == nullptr;
  if ( v11 || !XP_API_STRLEN(a5) )
    goto LABEL_9;
  if ( a6 )
    sprintf(
      v13,
      "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|un|%s|",
      77,
      *((_DWORD *)this + 2),
      *((const char **)this + 3),
      a3,
      a4,
      a5,
      a2);
  else
    sprintf(
      v13,
      "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|n|%s|",
      77,
      *((_DWORD *)this + 2),
      *((const char **)this + 3),
      a3,
      a4,
      a5,
      a2);
LABEL_13:
  XP_DEBUG_OUT("[SendOnlineMessage] %s\n", v13);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v13);
}


// ===== 835fcc GLXPlayerMessage::SendReadMySentMessage(int) =====
int __fastcall GLXPlayerMessage::SendReadMySentMessage(GLXPlayerMessage *this, int a2)
{
  int v2; // r12
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF
  int v6; // [sp+100Ch] [bp-4h]

  v2 = _stack_chk_guard;
  *((_DWORD *)this + 25) = a2;
  v6 = v2;
  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|m|%d|", 93, *((_DWORD *)this + 2), *((const char **)this + 3), *((_DWORD *)this + 25));
  XP_DEBUG_OUT("[SendReadMySentMessage] %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 836094 GLXPlayerMessage::SendReadMessage(int) =====
int __fastcall GLXPlayerMessage::SendReadMessage(GLXPlayerMessage *this, int a2)
{
  int v2; // r12
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF
  int v6; // [sp+100Ch] [bp-4h]

  v2 = _stack_chk_guard;
  *((_DWORD *)this + 25) = a2;
  v6 = v2;
  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|m|%d|", 76, *((_DWORD *)this + 2), *((const char **)this + 3), *((_DWORD *)this + 25));
  XP_DEBUG_OUT("[SendReadMessage] %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83615c GLXPlayerMessage::SendGetMessageHeader(int,int,int,int) =====
int __fastcall GLXPlayerMessage::SendGetMessageHeader(GLXPlayerMessage *this, int a2, int a3, int a4, int a5)
{
  int v8; // r10
  size_t v10; // r10
  size_t v11; // [sp+18h] [bp-1054h]
  size_t v12; // [sp+18h] [bp-1054h]
  size_t v13; // [sp+18h] [bp-1054h]
  size_t v14; // [sp+18h] [bp-1054h]
  char v16[4]; // [sp+24h] [bp-1048h] BYREF
  char v17[72]; // [sp+1024h] [bp-48h] BYREF

  XP_API_MEMSET(v16, 0, 0x1000u);
  XP_API_MEMSET(v17, 0, 0x40u);
  if ( a2 == -1 )
  {
    sprintf(v16, "f|%d|i|%d|u|%s|r|%d|a|%d|c|%d|", 75, *((_DWORD *)this + 2), *((const char **)this + 3), a3, a4, a5);
    goto LABEL_11;
  }
  v8 = a2 & 1;
  if ( (a2 & 1) != 0 )
  {
    v10 = XP_API_STRLEN(v17);
    sprintf(v17, "%d,", 1);
    v8 = XP_API_STRLEN(v17) - v10;
    if ( (a2 & 2) == 0 )
    {
LABEL_4:
      if ( (a2 & 4) == 0 )
        goto LABEL_5;
      goto LABEL_14;
    }
  }
  else if ( (a2 & 2) == 0 )
  {
    goto LABEL_4;
  }
  v11 = XP_API_STRLEN(v17);
  sprintf(&v17[v8], "%d,", 2);
  v8 = XP_API_STRLEN(v17) + v8 - v11;
  if ( (a2 & 4) == 0 )
  {
LABEL_5:
    if ( (a2 & 8) == 0 )
      goto LABEL_6;
    goto LABEL_15;
  }
LABEL_14:
  v12 = XP_API_STRLEN(v17);
  sprintf(&v17[v8], "%d,", 4);
  v8 = XP_API_STRLEN(v17) + v8 - v12;
  if ( (a2 & 8) == 0 )
  {
LABEL_6:
    if ( (a2 & 0x10) == 0 )
      goto LABEL_7;
LABEL_16:
    v14 = XP_API_STRLEN(v17);
    sprintf(&v17[v8], "%d,", 16);
    v8 = XP_API_STRLEN(v17) + v8 - v14;
    if ( (a2 & 0x20) == 0 )
      goto LABEL_8;
LABEL_17:
    XP_API_STRLEN(v17);
    sprintf(&v17[v8], "%d,", 32);
    XP_API_STRLEN(v17);
    goto LABEL_8;
  }
LABEL_15:
  v13 = XP_API_STRLEN(v17);
  sprintf(&v17[v8], "%d,", 8);
  v8 = XP_API_STRLEN(v17) + v8 - v13;
  if ( (a2 & 0x10) != 0 )
    goto LABEL_16;
LABEL_7:
  if ( (a2 & 0x20) != 0 )
    goto LABEL_17;
LABEL_8:
  if ( (int)XP_API_STRLEN(v17) > 0 )
    v17[XP_API_STRLEN(v17) - 1] = 0;
  sprintf(
    v16,
    "f|%d|i|%d|u|%s|t|%s|r|%d|a|%d|c|%d|",
    75,
    *((_DWORD *)this + 2),
    *((const char **)this + 3),
    v17,
    a3,
    a4,
    a5);
LABEL_11:
  XP_DEBUG_OUT("[SendGetMessageHeader] %s\n", v16);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v16);
}


// ===== 836474 GLXPlayerMessage::SendGetMessageCount(int,int) =====
int __fastcall GLXPlayerMessage::SendGetMessageCount(GLXPlayerMessage *this, int a2, int a3)
{
  int v6; // r10
  size_t v8; // r10
  size_t v9; // [sp+14h] [bp-1050h]
  size_t v10; // [sp+14h] [bp-1050h]
  size_t v11; // [sp+14h] [bp-1050h]
  char v12[4]; // [sp+1Ch] [bp-1048h] BYREF
  char v13[72]; // [sp+101Ch] [bp-48h] BYREF

  XP_API_MEMSET(v12, 0, 0x1000u);
  XP_API_MEMSET(v13, 0, 0x40u);
  if ( a2 == -1 )
  {
    sprintf(v12, "f|%d|i|%d|u|%s|", 74, *((_DWORD *)this + 2), *((const char **)this + 3));
    goto LABEL_10;
  }
  v6 = a2 & 1;
  if ( (a2 & 1) != 0 )
  {
    v8 = XP_API_STRLEN(v13);
    sprintf(v13, "%d,", 1);
    v6 = XP_API_STRLEN(v13) - v8;
    if ( (a2 & 2) == 0 )
    {
LABEL_4:
      if ( (a2 & 4) == 0 )
        goto LABEL_5;
      goto LABEL_13;
    }
  }
  else if ( (a2 & 2) == 0 )
  {
    goto LABEL_4;
  }
  v9 = XP_API_STRLEN(v13);
  sprintf(&v13[v6], "%d,", 2);
  v6 = XP_API_STRLEN(v13) + v6 - v9;
  if ( (a2 & 4) == 0 )
  {
LABEL_5:
    if ( (a2 & 8) == 0 )
      goto LABEL_6;
LABEL_14:
    v11 = XP_API_STRLEN(v13);
    sprintf(&v13[v6], "%d,", 8);
    v6 = XP_API_STRLEN(v13) + v6 - v11;
    if ( (a2 & 0x10) == 0 )
      goto LABEL_7;
LABEL_15:
    XP_API_STRLEN(v13);
    sprintf(&v13[v6], "%d,", 16);
    XP_API_STRLEN(v13);
    goto LABEL_7;
  }
LABEL_13:
  v10 = XP_API_STRLEN(v13);
  sprintf(&v13[v6], "%d,", 4);
  v6 = XP_API_STRLEN(v13) + v6 - v10;
  if ( (a2 & 8) != 0 )
    goto LABEL_14;
LABEL_6:
  if ( (a2 & 0x10) != 0 )
    goto LABEL_15;
LABEL_7:
  if ( (int)XP_API_STRLEN(v13) > 0 )
    v13[XP_API_STRLEN(v13) - 1] = 0;
  sprintf(v12, "f|%d|i|%d|u|%s|t|%s|r|%d|", 74, *((_DWORD *)this + 2), *((const char **)this + 3), v13, a3);
LABEL_10:
  XP_DEBUG_OUT("[SendGetMessageCount] %s\n", v12);
  return (*(int (__fastcall **)(GLXPlayerMessage *, char *))(*(_DWORD *)this + 12))(this, v12);
}


// ===== 83670c GLXPlayerMessage::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerMessage::OnUpdateSuccess(char **this, int a2)
{
  void *v4; // r0
  _BYTE *v6; // r6

  switch ( a2 )
  {
    case 'J':
      GLXPlayerMessage::processMsgCount((GLXPlayerMessage *)this, *(this + 9));
      break;
    case 'K':
      GLXPlayerMessage::processMsgHeaderList((GLXPlayerMessage *)this, *(this + 9));
      break;
    case 'L':
    case ']':
      v4 = *(this + 26);
      if ( v4 )
      {
        LC_API_FREE_0(v4);
        *(this + 26) = nullptr;
      }
      *(this + 26) = (char *)XP_API_STRNEW(*(this + 9));
      break;
    case '[':
      v6 = (_BYTE *)operator new[](0x10u);
      XP_API_MEMSET(v6, 0, 0x10u);
      getValue(*(this + 9), v6, 0, 124);
      *(this + 45) = (char *)XP_API_ATOI(v6);
      if ( v6 )
        LC_API_FREE_0(v6);
      break;
    case '\\':
      GLXPlayerMessage::processMySentMsgHeaderList((GLXPlayerMessage *)this, *(this + 9));
      break;
    default:
      return GLXPlayerWebComponent::OnUpdateSuccess((GLXPlayerWebComponent *)this, a2);
  }
  return GLXPlayerWebComponent::OnUpdateSuccess((GLXPlayerWebComponent *)this, a2);
}


// ===== 83681c GLXPlayerMessage::~GLXPlayerMessage() =====
void __fastcall GLXPlayerMessage::~GLXPlayerMessage(GLXPlayerMessage *this)
{
  void *v2; // r0

  *(_DWORD *)this = off_993000;
  GLXPlayerMessage::clearMessageList(this);
  v2 = *((void **)this + 26);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 26) = 0;
  }
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 836870 GLXPlayerMessage::~GLXPlayerMessage() =====
void __fastcall GLXPlayerMessage::~GLXPlayerMessage(GLXPlayerMessage *this)
{
  GLXPlayerMessage::~GLXPlayerMessage(this);
  LC_API_FREE_0(this);
}


// ===== 83688c GLXPlayerMessage::~GLXPlayerMessage() =====
void __fastcall GLXPlayerMessage::~GLXPlayerMessage(GLXPlayerMessage *this)
{
  void *v2; // r0

  *(_DWORD *)this = off_993000;
  GLXPlayerMessage::clearMessageList(this);
  v2 = *((void **)this + 26);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 26) = 0;
  }
  GLXPlayerWebComponent::~GLXPlayerWebComponent(this);
}


// ===== 8368e0 GLXPlayerMessage::GLXPlayerMessage(void) =====
void __fastcall GLXPlayerMessage::GLXPlayerMessage(GLXPlayerMessage *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_993000;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 24) = 0;
  GLXPlayerMessage::clearMsgCount(this);
}


// ===== 836980 GLXPlayerMessage::GLXPlayerMessage(void) =====
void __fastcall GLXPlayerMessage::GLXPlayerMessage(GLXPlayerMessage *this)
{
  GLXPlayerHttp *v2; // r5

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *(_DWORD *)this = off_993000;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 25) = -1;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 24) = 0;
  GLXPlayerMessage::clearMsgCount(this);
}


// ===== 836a20 CLobbyParameterAndQuery::PackParameter(int &) =====
_BYTE *__fastcall CLobbyParameterAndQuery::PackParameter(CLobbyParameterAndQuery *this, int *a2)
{
  int v2; // r3
  int v4; // r0
  CLobbyParameterAndQuery *v6; // r5
  CLobbyParameterAndQuery *v7; // r2
  int v8; // r4
  unsigned int v10; // r4
  _BYTE *v11; // r9
  int v12; // r7
  int v13; // r3
  int v14; // r10
  int v15; // r4
  int v16; // r6

  v2 = 0;
  *a2 = 0;
  v4 = *((_DWORD *)this + 1);
  if ( v4 <= 0 )
    return nullptr;
  v6 = this;
  v7 = this;
  v8 = 0;
  do
  {
    ++v2;
    v8 += *((_DWORD *)v7 + 6);
    v7 = (CLobbyParameterAndQuery *)((char *)v7 + 4);
  }
  while ( v2 != v4 );
  if ( !v8 )
    return nullptr;
  v10 = v8 + 2;
  v11 = (_BYTE *)operator new[](v10);
  XP_API_MEMSET(v11, 0, v10);
  v12 = *((_DWORD *)this + 1);
  v13 = v12;
  if ( v12 > 0 )
  {
    v15 = 0;
    v14 = 1;
    do
    {
      while ( 1 )
      {
        v16 = *((_DWORD *)v6 + 6);
        if ( !v16 )
          break;
        XP_API_MEMCPY(&v11[v14], *(const void **)(*((_DWORD *)this + 5) + 4 * v15), *((_DWORD *)v6 + 6));
        v13 = *((_DWORD *)this + 1);
        ++v15;
        v14 += v16;
        v6 = (CLobbyParameterAndQuery *)((char *)v6 + 4);
        if ( v13 <= v15 )
          goto LABEL_13;
      }
      LOBYTE(v12) = v12 - 1;
      ++v15;
      v6 = (CLobbyParameterAndQuery *)((char *)v6 + 4);
    }
    while ( v13 > v15 );
  }
  else
  {
    v14 = 1;
  }
LABEL_13:
  *v11 = v12;
  *a2 = v14;
  return v11;
}


// ===== 836b10 CLobbyParameterAndQuery::AddQueryCondition(int,compareOptT,char *) =====
int __fastcall CLobbyParameterAndQuery::AddQueryCondition(int a1, unsigned int a2, char a3, char *a4)
{
  int result; // r0
  size_t v9; // r0
  int v10; // r9
  size_t v11; // r7
  void *v12; // r0
  int *v13; // r9

  result = *(_DWORD *)(a1 + 4) <= (int)a2;
  if ( !(result | (a2 >> 31)) && a4 )
  {
    v9 = XP_API_STRLEN(a4);
    v10 = *(_DWORD *)(a1 + 20);
    v11 = v9;
    v12 = *(void **)(v10 + 4 * a2);
    v13 = (int *)(v10 + 4 * a2);
    if ( v12 )
    {
      LC_API_FREE_0(v12);
      *(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * a2) = 0;
      v13 = (int *)(*(_DWORD *)(a1 + 20) + 4 * a2);
    }
    *v13 = operator new[](v11 + 5);
    XP_API_MEMSET(*(void **)(*(_DWORD *)(a1 + 20) + 4 * a2), 0, v11 + 5);
    *(_DWORD *)(a1 + 4 * (a2 + 6)) = v11 + 4;
    **(_BYTE **)(*(_DWORD *)(a1 + 20) + 4 * a2) = a2;
    *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * a2) + 1) = a3;
    *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * a2) + 2) = BYTE1(v11);
    *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * a2) + 3) = v11;
    return (int)XP_API_MEMCPY((void *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * a2) + 4), a4, v11);
  }
  return result;
}


// ===== 836c0c CLobbyParameterAndQuery::SetParameterValue(int,char *) =====
_DWORD *__fastcall CLobbyParameterAndQuery::SetParameterValue(_DWORD *this, unsigned int a2, char *a3)
{
  _DWORD *v3; // r5
  size_t v6; // r0
  int v7; // r10
  size_t v8; // r6
  void *v9; // r0
  int *v10; // r10

  v3 = this;
  if ( !((*(this + 1) <= (int)a2) | (a2 >> 31)) && a3 )
  {
    v6 = XP_API_STRLEN(a3);
    v7 = v3[5];
    v8 = v6;
    v9 = *(void **)(v7 + 4 * a2);
    v10 = (int *)(v7 + 4 * a2);
    if ( v9 )
    {
      LC_API_FREE_0(v9);
      *(_DWORD *)(v3[5] + 4 * a2) = 0;
      v10 = (int *)(v3[5] + 4 * a2);
    }
    *v10 = operator new[](v8 + 5);
    XP_API_MEMSET(*(void **)(v3[5] + 4 * a2), 0, v8 + 5);
    v3[a2 + 6] = v8 + 4;
    **(_BYTE **)(v3[5] + 4 * a2) = a2;
    *(_BYTE *)(*(_DWORD *)(v3[5] + 4 * a2) + 1) = *((_BYTE *)v3 + a2 + 8);
    *(_BYTE *)(*(_DWORD *)(v3[5] + 4 * a2) + 2) = BYTE1(v8);
    *(_BYTE *)(*(_DWORD *)(v3[5] + 4 * a2) + 3) = v8;
    return XP_API_MEMCPY((void *)(*(_DWORD *)(v3[5] + 4 * a2) + 4), a3, v8);
  }
  return this;
}


// ===== 836d00 CLobbyParameterAndQuery::~CLobbyParameterAndQuery() =====
void __fastcall CLobbyParameterAndQuery::~CLobbyParameterAndQuery(CLobbyParameterAndQuery *this)
{
  int v1; // r1
  _DWORD *v3; // r3
  int i; // r4
  void *v5; // r0

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993030;
  if ( v1 > 0 )
  {
    v3 = *((_DWORD **)this + 5);
    for ( i = 0; i < v1; ++i )
    {
      v5 = (void *)v3[i];
      if ( v5 )
      {
        LC_API_FREE_0(v5);
        *(_DWORD *)(*((_DWORD *)this + 5) + 4 * i) = 0;
        v1 = *((_DWORD *)this + 1);
        v3 = *((_DWORD **)this + 5);
      }
    }
  }
  else
  {
    v3 = *((_DWORD **)this + 5);
  }
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 5) = 0;
  }
}


// ===== 836d90 CLobbyParameterAndQuery::~CLobbyParameterAndQuery() =====
void __fastcall CLobbyParameterAndQuery::~CLobbyParameterAndQuery(CLobbyParameterAndQuery *this)
{
  CLobbyParameterAndQuery::~CLobbyParameterAndQuery(this);
  LC_API_FREE_0(this);
}


// ===== 836dac CLobbyParameterAndQuery::~CLobbyParameterAndQuery() =====
void __fastcall CLobbyParameterAndQuery::~CLobbyParameterAndQuery(CLobbyParameterAndQuery *this)
{
  int v1; // r1
  _DWORD *v3; // r3
  int i; // r4
  void *v5; // r0

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993030;
  if ( v1 > 0 )
  {
    v3 = *((_DWORD **)this + 5);
    for ( i = 0; i < v1; ++i )
    {
      v5 = (void *)v3[i];
      if ( v5 )
      {
        LC_API_FREE_0(v5);
        *(_DWORD *)(*((_DWORD *)this + 5) + 4 * i) = 0;
        v1 = *((_DWORD *)this + 1);
        v3 = *((_DWORD **)this + 5);
      }
    }
  }
  else
  {
    v3 = *((_DWORD **)this + 5);
  }
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 5) = 0;
  }
}


// ===== 836e3c CLobbyParameterAndQuery::CLobbyParameterAndQuery(void) =====
void __fastcall CLobbyParameterAndQuery::CLobbyParameterAndQuery(CLobbyParameterAndQuery *this)
{
  int v1; // r3
  int v3; // r0
  size_t v4; // r4
  char *v5; // r11
  signed int v6; // r0
  int v7; // r7
  size_t v8; // r0
  int v9; // r7
  signed int v10; // r0
  int v11; // r0
  int v12; // r4
  int v13; // r0
  int v14; // r3
  CLobbyParameterAndQuery *v15; // r3
  signed int v16; // r8
  int v17; // r1
  int v18; // r10
  int v19; // r0
  int v20; // r3
  int i; // [sp+10h] [bp-154h]
  void *v22; // [sp+18h] [bp-14Ch]
  int v23; // [sp+2Ch] [bp-138h]
  char v24[256]; // [sp+30h] [bp-134h] BYREF
  char v25[32]; // [sp+130h] [bp-34h] BYREF
  _DWORD v26[2]; // [sp+150h] [bp-14h] BYREF
  __int16 v27; // [sp+158h] [bp-Ch]
  int v28; // [sp+15Ch] [bp-8h]

  v1 = _stack_chk_guard;
  *(_DWORD *)this = off_993030;
  v28 = v1;
  v3 = XP_API_FILE_OPEN("oconf.bar", "r");
  v23 = v3;
  if ( v3 )
  {
    v4 = XP_API_FILE_GET_LENGTH(v3);
    v22 = (void *)operator new[](v4 + 1);
    XP_API_MEMSET(v22, 0, v4 + 1);
    XP_API_FILE_READ(v22, v4, 1u, v23);
    v5 = (char *)operator new[](v4 + 1);
    XP_API_MEMSET(v5, 0, v4 + 1);
    XP_API_PARSE_DATA((char *)v22, v5, 0, 10);
    v6 = XP_API_STRLEN(v5);
    if ( v6 > 0 )
    {
      if ( v5[v6 - 1] == 13 )
        v5[v6 - 1] = 0;
      for ( i = 1; ; ++i )
      {
        memset(v25, 0, sizeof(v25));
        LC_API_MEMSET_0(v24, 0, 0x100u);
        XP_API_PARSE_DATA(v5, v25, 0, 58);
        v7 = XP_API_PARSE_DATA(v5, v24, 1, 58);
        XP_API_MEMSET(v24, 0, 0x100u);
        v8 = XP_API_STRLEN(v5);
        XP_API_MEMCPY(v24, &v5[v7], v8 - v7);
        XP_API_STRTRIM(v25);
        XP_API_STRTRIM(v24);
        if ( !XP_API_STRCMP(v25, "GAME_PARAM_COUNT") )
        {
          v19 = XP_API_ATOI(v24);
          if ( v19 >= 11 )
            v20 = 10;
          else
            v20 = v19;
          *((_DWORD *)this + 1) = v20;
        }
        v9 = XP_API_STRCMP(v25, "GAME_PARAM_TYPE");
        if ( !v9 )
        {
          v16 = XP_API_STRLEN(v24);
          if ( v16 > 0 )
          {
            v17 = 0;
            v18 = 0;
            do
            {
              do
                ++v9;
              while ( v16 != v9 && v24[v9] != 124 );
              if ( *((_DWORD *)this + 1) > v18 )
              {
                v26[1] = 0;
                v27 = 0;
                v26[0] = 0;
                XP_API_STRNCPY((char *)v26, &v24[v17], v9 - v17);
                *((_BYTE *)this + v18++ + 8) = XP_API_ATOI((const char *)v26);
                v17 = v9 + 1;
              }
            }
            while ( v9 != v16 );
          }
        }
        XP_API_MEMSET(v5, 0, v4 + 1);
        XP_API_PARSE_DATA((char *)v22, v5, i, 10);
        v10 = XP_API_STRLEN(v5);
        if ( v10 <= 0 )
          break;
        if ( v5[v10 - 1] == 13 )
          v5[v10 - 1] = 0;
      }
    }
    if ( v5 )
      LC_API_FREE_0(v5);
    if ( v22 )
      LC_API_FREE_0(v22);
    XP_API_FILE_CLOSE(v23);
    v11 = *((_DWORD *)this + 1);
    v12 = 0;
    *((_DWORD *)this + 5) = 0;
    if ( v11 )
    {
      v13 = operator new[](4 * v11);
      v14 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 5) = v13;
      if ( v14 > 0 )
      {
        v15 = this;
        while ( 1 )
        {
          *(_DWORD *)(v13 + 4 * v12) = 0;
          *((_DWORD *)v15 + 6) = 0;
          ++v12;
          v15 = (CLobbyParameterAndQuery *)((char *)v15 + 4);
          if ( *((_DWORD *)this + 1) <= v12 )
            break;
          v13 = *((_DWORD *)this + 5);
        }
      }
    }
  }
  else
  {
    XP_DEBUG_OUT("[CLobbyParameterAndQuery] not found \n", "oconf.bar");
  }
}


// ===== 837224 CLobbyParameterAndQuery::CLobbyParameterAndQuery(void) =====
void __fastcall CLobbyParameterAndQuery::CLobbyParameterAndQuery(CLobbyParameterAndQuery *this)
{
  int v1; // r3
  int v3; // r0
  size_t v4; // r4
  char *v5; // r11
  signed int v6; // r0
  int v7; // r7
  size_t v8; // r0
  int v9; // r7
  signed int v10; // r0
  int v11; // r0
  int v12; // r4
  int v13; // r0
  int v14; // r3
  CLobbyParameterAndQuery *v15; // r3
  signed int v16; // r8
  int v17; // r1
  int v18; // r10
  int v19; // r0
  int v20; // r3
  int i; // [sp+10h] [bp-154h]
  void *v22; // [sp+18h] [bp-14Ch]
  int v23; // [sp+2Ch] [bp-138h]
  char v24[256]; // [sp+30h] [bp-134h] BYREF
  char v25[32]; // [sp+130h] [bp-34h] BYREF
  _DWORD v26[2]; // [sp+150h] [bp-14h] BYREF
  __int16 v27; // [sp+158h] [bp-Ch]
  int v28; // [sp+15Ch] [bp-8h]

  v1 = _stack_chk_guard;
  *(_DWORD *)this = off_993030;
  v28 = v1;
  v3 = XP_API_FILE_OPEN("oconf.bar", "r");
  v23 = v3;
  if ( v3 )
  {
    v4 = XP_API_FILE_GET_LENGTH(v3);
    v22 = (void *)operator new[](v4 + 1);
    XP_API_MEMSET(v22, 0, v4 + 1);
    XP_API_FILE_READ(v22, v4, 1u, v23);
    v5 = (char *)operator new[](v4 + 1);
    XP_API_MEMSET(v5, 0, v4 + 1);
    XP_API_PARSE_DATA((char *)v22, v5, 0, 10);
    v6 = XP_API_STRLEN(v5);
    if ( v6 > 0 )
    {
      if ( v5[v6 - 1] == 13 )
        v5[v6 - 1] = 0;
      for ( i = 1; ; ++i )
      {
        memset(v25, 0, sizeof(v25));
        LC_API_MEMSET_0(v24, 0, 0x100u);
        XP_API_PARSE_DATA(v5, v25, 0, 58);
        v7 = XP_API_PARSE_DATA(v5, v24, 1, 58);
        XP_API_MEMSET(v24, 0, 0x100u);
        v8 = XP_API_STRLEN(v5);
        XP_API_MEMCPY(v24, &v5[v7], v8 - v7);
        XP_API_STRTRIM(v25);
        XP_API_STRTRIM(v24);
        if ( !XP_API_STRCMP(v25, "GAME_PARAM_COUNT") )
        {
          v19 = XP_API_ATOI(v24);
          if ( v19 >= 11 )
            v20 = 10;
          else
            v20 = v19;
          *((_DWORD *)this + 1) = v20;
        }
        v9 = XP_API_STRCMP(v25, "GAME_PARAM_TYPE");
        if ( !v9 )
        {
          v16 = XP_API_STRLEN(v24);
          if ( v16 > 0 )
          {
            v17 = 0;
            v18 = 0;
            do
            {
              do
                ++v9;
              while ( v16 != v9 && v24[v9] != 124 );
              if ( *((_DWORD *)this + 1) > v18 )
              {
                v26[1] = 0;
                v27 = 0;
                v26[0] = 0;
                XP_API_STRNCPY((char *)v26, &v24[v17], v9 - v17);
                *((_BYTE *)this + v18++ + 8) = XP_API_ATOI((const char *)v26);
                v17 = v9 + 1;
              }
            }
            while ( v9 != v16 );
          }
        }
        XP_API_MEMSET(v5, 0, v4 + 1);
        XP_API_PARSE_DATA((char *)v22, v5, i, 10);
        v10 = XP_API_STRLEN(v5);
        if ( v10 <= 0 )
          break;
        if ( v5[v10 - 1] == 13 )
          v5[v10 - 1] = 0;
      }
    }
    if ( v5 )
      LC_API_FREE_0(v5);
    if ( v22 )
      LC_API_FREE_0(v22);
    XP_API_FILE_CLOSE(v23);
    v11 = *((_DWORD *)this + 1);
    v12 = 0;
    *((_DWORD *)this + 5) = 0;
    if ( v11 )
    {
      v13 = operator new[](4 * v11);
      v14 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 5) = v13;
      if ( v14 > 0 )
      {
        v15 = this;
        while ( 1 )
        {
          *(_DWORD *)(v13 + 4 * v12) = 0;
          *((_DWORD *)v15 + 6) = 0;
          ++v12;
          v15 = (CLobbyParameterAndQuery *)((char *)v15 + 4);
          if ( *((_DWORD *)this + 1) <= v12 )
            break;
          v13 = *((_DWORD *)this + 5);
        }
      }
    }
  }
  else
  {
    XP_DEBUG_OUT("[CLobbyParameterAndQuery] not found \n", "oconf.bar");
  }
}


// ===== 83760c GLXPlayerMPBase::mpPrepareGameData(void) =====
int __fastcall GLXPlayerMPBase::mpPrepareGameData(GLXPlayerMPBase *this)
{
  return 0;
}


// ===== 837614 GLXPlayerMPBase::mpSendKickOutPlayer(char *) =====
void __fastcall GLXPlayerMPBase::mpSendKickOutPlayer(GLXPlayerMPBase *this, char *a2)
{
  ;
}


// ===== 837618 GLXPlayerMPBase::mpSendKickOutPlayer(ushort *) =====
void __fastcall GLXPlayerMPBase::mpSendKickOutPlayer(GLXPlayerMPBase *this, unsigned __int16 *a2)
{
  ;
}


// ===== 83761c GLXPlayerMPBase::mpSendLeaveGame(void) =====
void __fastcall GLXPlayerMPBase::mpSendLeaveGame(GLXPlayerMPBase *this)
{
  ;
}


// ===== 837620 GLXPlayerMPBase::mpSendStartGame(void) =====
void __fastcall GLXPlayerMPBase::mpSendStartGame(GLXPlayerMPBase *this)
{
  ;
}


// ===== 837624 GLXPlayerMPBase::mpSendFinishGame(void) =====
void __fastcall GLXPlayerMPBase::mpSendFinishGame(GLXPlayerMPBase *this)
{
  ;
}


// ===== 837628 GLXPlayerMPBase::mpSendUPnPPortMapping(void) =====
void __fastcall GLXPlayerMPBase::mpSendUPnPPortMapping(GLXPlayerMPBase *this)
{
  ;
}


// ===== 83762c GLXPlayerMPBase::mpProcessPushMessages(void) =====
void __fastcall GLXPlayerMPBase::mpProcessPushMessages(GLXPlayerMPBase *this)
{
  ;
}


// ===== 837630 GLXPlayerMPLobby::mpIsInSession(void) =====
bool __fastcall GLXPlayerMPLobby::mpIsInSession(GLXPlayerMPLobby *this)
{
  return *((unsigned __int8 *)this + 96) > 2u;
}


// ===== 837644 GLXPlayerMPLobby::mpIsInRoom(void) =====
bool __fastcall GLXPlayerMPLobby::mpIsInRoom(GLXPlayerMPLobby *this)
{
  return *((unsigned __int8 *)this + 96) > 2u;
}


// ===== 837658 GLXPlayerMPLobby::mpIsInGame(void) =====
bool __fastcall GLXPlayerMPLobby::mpIsInGame(GLXPlayerMPLobby *this)
{
  return *((unsigned __int8 *)this + 96) > 4u;
}


// ===== 83766c GLXPlayerMPLobby::mpIsMaster(void) =====
int __fastcall GLXPlayerMPLobby::mpIsMaster(GLXPlayerMPLobby *this)
{
  return *((unsigned __int8 *)this + 129);
}


// ===== 837674 GLXPlayerMPLobby::mpSendGetPlayerCounter(void) =====
int __fastcall GLXPlayerMPLobby::mpSendGetPlayerCounter(GLXPlayerMPLobby *this)
{
  int v2; // r5
  int (__fastcall ***v4)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetPlayerCounter {\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v4 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v4)(v4);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetPlayerCounter(*((ConnectionLobby **)this + 29));
    v2 = *((_DWORD *)this + 29);
    *(_DWORD *)(v2 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 2;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8376fc GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(int,uchar,int,char *,int,CLobbyParameterAndQuery *) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(
        GLXPlayerMPLobby *this,
        int a2,
        unsigned __int8 a3,
        unsigned __int8 a4,
        char *a5,
        __int16 a6,
        CLobbyParameterAndQuery *a7)
{
  ConnectionLobby *v11; // r0
  int v12; // r5
  int (__fastcall ***v14)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(), FriendList{\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v14 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v14)(v14);
  }
  else
  {
    v11 = *((ConnectionLobby **)this + 29);
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetLobbyForFriendWithGameParam(v11, a2, a3, a4, a5, a6, a7);
    v12 = *((_DWORD *)this + 29);
    *(_DWORD *)(v12 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 20;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8377c0 GLXPlayerMPLobby::mpSendGetLobbyForFriend(int,uchar,int,char *,int) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForFriend(
        GLXPlayerMPLobby *this,
        int a2,
        unsigned __int8 a3,
        unsigned __int8 a4,
        char *a5,
        int a6)
{
  ConnectionLobby *v10; // r0
  int v11; // r5
  int (__fastcall ***v13)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(), FriendList{\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v13 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v13)(v13);
  }
  else
  {
    v10 = *((ConnectionLobby **)this + 29);
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetLobbyForFriend(v10, a2, a3, a4, a5, a6);
    v11 = *((_DWORD *)this + 29);
    *(_DWORD *)(v11 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 12;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 83787c GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(int,uchar,GLXPlayerUserFriend *,CLobbyParameterAndQuery *) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(
        GLXPlayerMPLobby *this,
        int a2,
        unsigned __int8 a3,
        GLXPlayerUserFriend *a4,
        CLobbyParameterAndQuery *a5)
{
  GLXPlayerMPLobby *v6; // r4
  int FriendsCount; // r0
  GLXPlayerMPLobby *v8; // r5
  int v9; // r6
  const char *Name; // r0
  size_t v11; // r11
  int v12; // r0
  GLXPlayerMPLobby *v13; // r8
  GLXPlayerMPLobby *i; // r3
  int (__fastcall ***v17)(_DWORD); // r3
  unsigned __int8 v19; // [sp+1Ch] [bp-A0h]
  char v22[128]; // [sp+34h] [bp-88h] BYREF

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v17 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v17)(v17);
  }
  else
  {
    v6 = this;
    *((_DWORD *)this + 20) = -1;
    FriendsCount = GLXPlayerUserFriend::GetFriendsCount(a4);
    if ( FriendsCount >= 30 )
      FriendsCount = 30;
    if ( FriendsCount <= 0 )
      v6 = nullptr;
    v19 = FriendsCount;
    if ( FriendsCount > 0 )
    {
      v6 = nullptr;
      v8 = nullptr;
      v9 = FriendsCount - 2;
      do
      {
        LC_API_MEMSET_0(v22, 0, 0x80u);
        if ( GLXPlayerUserFriend::GetName(a4, v9 + 1) )
        {
          Name = (const char *)GLXPlayerUserFriend::GetName(a4, v9 + 1);
          XP_API_STRCPY(v22, Name);
          v11 = XP_API_STRLEN(v22);
          v12 = operator new[]((unsigned int)v6 + v11 + 3);
          v13 = (GLXPlayerMPLobby *)v12;
          *((_BYTE *)v6 + v11 + v12 + 2) = 0;
          if ( v8 && (int)v6 > 0 )
          {
            for ( i = nullptr; i != v6; i = (GLXPlayerMPLobby *)((char *)i + 1) )
              *((_BYTE *)i + v12) = *((_BYTE *)i + (_DWORD)v8);
          }
          *((_BYTE *)v6 + v12) = BYTE1(v11);
          *((_BYTE *)v6 + v12 + 1) = v11;
          XP_API_STRCPY((char *)v6 + v12 + 2, v22);
          if ( v8 )
            LC_API_FREE_0(v8);
          v6 = (GLXPlayerMPLobby *)((char *)v6 + v11 + 2);
          v8 = v13;
        }
      }
      while ( v9-- >= 0 );
    }
    else
    {
      v8 = v6;
    }
    GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(this, a2, a3, v19, (char *)v8, (__int16)v6, a5);
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837a88 GLXPlayerMPLobby::mpSendGetLobbyForFriend(int,uchar,GLXPlayerUserFriend *) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForFriend(
        GLXPlayerMPLobby *this,
        int a2,
        unsigned __int8 a3,
        GLXPlayerUserFriend *a4)
{
  int FriendsCount; // r0
  int v7; // r4
  int v8; // r6
  _BYTE *v9; // r5
  const char *Name; // r0
  size_t v11; // r11
  int v12; // r0
  _BYTE *v13; // r8
  int i; // r3
  int v16; // r4
  int (__fastcall ***v18)(_DWORD); // r3
  unsigned __int8 v19; // [sp+14h] [bp-98h]
  char v22[128]; // [sp+24h] [bp-88h] BYREF

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v18 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v18)(v18);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    FriendsCount = GLXPlayerUserFriend::GetFriendsCount(a4);
    if ( FriendsCount >= 30 )
      FriendsCount = 30;
    v19 = FriendsCount;
    if ( FriendsCount <= 0 )
    {
      ConnectionLobby::sendGetLobbyForFriend(*((ConnectionLobby **)this + 29), a2, a3, FriendsCount, nullptr, 0);
    }
    else
    {
      v7 = 0;
      v8 = FriendsCount - 2;
      v9 = nullptr;
      do
      {
        LC_API_MEMSET_0(v22, 0, 0x80u);
        if ( GLXPlayerUserFriend::GetName(a4, v8 + 1) )
        {
          Name = (const char *)GLXPlayerUserFriend::GetName(a4, v8 + 1);
          XP_API_STRCPY(v22, Name);
          v11 = XP_API_STRLEN(v22);
          v12 = operator new[](v11 + v7 + 3);
          v13 = (_BYTE *)v12;
          *(_BYTE *)(v12 + v11 + v7 + 2) = 0;
          if ( v9 && v7 > 0 )
          {
            for ( i = 0; i != v7; ++i )
              *(_BYTE *)(v12 + i) = v9[i];
          }
          *(_BYTE *)(v12 + v7) = BYTE1(v11);
          *(_BYTE *)(v12 + v7 + 1) = v11;
          XP_API_STRCPY((char *)(v12 + v7 + 2), v22);
          if ( v9 )
            LC_API_FREE_0(v9);
          v7 += 2 + v11;
          v9 = v13;
        }
      }
      while ( v8-- >= 0 );
      ConnectionLobby::sendGetLobbyForFriend(*((ConnectionLobby **)this + 29), a2, a3, v19, v9, v7);
      if ( v9 )
        LC_API_FREE_0(v9);
    }
    v16 = *((_DWORD *)this + 29);
    *(_DWORD *)(v16 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 12;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837cc8 GLXPlayerMPLobby::mpSendGetLobbyForNameWithGameParam(char *) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForNameWithGameParam(GLXPlayerMPLobby *this, char *a2)
{
  int v4; // r5
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetLobbyForNameWithGameParam(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    *(_DWORD *)(v4 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 18;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837d58 GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(int,int,uchar,CLobbyParameterAndQuery *,uchar) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(
        GLXPlayerMPLobby *this,
        int a2,
        int a3,
        int a4,
        CLobbyParameterAndQuery *a5,
        char a6)
{
  ConnectionLobby *v10; // r0
  int v11; // r1
  int v12; // r5
  int (__fastcall ***v14)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v14 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v14)(v14);
  }
  else
  {
    v10 = *((ConnectionLobby **)this + 29);
    v11 = *((_DWORD *)this + 18);
    *((_DWORD *)this + 20) = -1;
    if ( !a4 )
      LOBYTE(a4) = 1;
    ConnectionLobby::sendGetLobbyListPackageWithGameParam(v10, v11, a2, a3 & ~(a3 >> 31), a4, a5, a6);
    v12 = *((_DWORD *)this + 29);
    *(_DWORD *)(v12 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 19;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837e18 GLXPlayerMPLobby::mpSendKickOut(char *) =====
int __fastcall GLXPlayerMPLobby::mpSendKickOut(GLXPlayerMPLobby *this, char *a2)
{
  int v4; // r5
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendKickOut(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendKickOutPackage(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    *(_DWORD *)(v4 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 6;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837ea8 GLXPlayerMPLobby::mpSendCancelAutoMatchRequest(void) =====
int __fastcall GLXPlayerMPLobby::mpSendCancelAutoMatchRequest(GLXPlayerMPLobby *this)
{
  int v2; // r5
  int (__fastcall ***v4)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCancelAutoMatchRequest(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v4 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v4)(v4);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    *((_BYTE *)this + 120) = 0;
    *((_BYTE *)this + 96) = 2;
    ConnectionLobby::sendCancelAutoMatchPackage(*((ConnectionLobby **)this + 29));
    v2 = *((_DWORD *)this + 29);
    *(_DWORD *)(v2 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 17;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837f40 GLXPlayerMPLobby::mpSendAutoMatchRequest(char *,int,char *,int,short,short) =====
int __fastcall GLXPlayerMPLobby::mpSendAutoMatchRequest(
        GLXPlayerMPLobby *this,
        char *a2,
        int a3,
        char *a4,
        int a5,
        __int16 a6,
        __int16 a7)
{
  ConnectionLobby *v11; // r0
  int (__fastcall ***v13)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendAutoMatchRequest(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v13 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v13)(v13);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    v11 = *((ConnectionLobby **)this + 29);
    *((_BYTE *)this + 120) = 1;
    ConnectionLobby::sendAutoMatchPackage(v11, a2, a3, a4, a5, a6, a7);
    *((_BYTE *)this + 128) = 0;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 837ff0 GLXPlayerMPLobby::mpSendGetLobbyForName(char *) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyForName(GLXPlayerMPLobby *this, char *a2)
{
  int v4; // r5
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetLobbyForName(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    *(_DWORD *)(v4 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 10;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838080 GLXPlayerMPLobby::mpSendGetLobbyInfo(int) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyInfo(GLXPlayerMPLobby *this, int a2)
{
  int v4; // r5
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyInfo(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendGetLobbyInfo(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    *(_DWORD *)(v4 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 13;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838110 GLXPlayerMPLobby::mpSendSetUserParameter(char *,int) =====
int __fastcall GLXPlayerMPLobby::mpSendSetUserParameter(GLXPlayerMPLobby *this, char *a2, __int16 a3)
{
  int v6; // r5
  int (__fastcall ***v8)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetUserParameter(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v8 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v8)(v8);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendSetUserParameter(*((ConnectionLobby **)this + 29), a2, a3);
    v6 = *((_DWORD *)this + 29);
    *(_DWORD *)(v6 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 7;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8381a8 GLXPlayerMPLobby::mpSendSetGameParameter(char *,int,CLobbyParameterAndQuery *) =====
int __fastcall GLXPlayerMPLobby::mpSendSetGameParameter(
        GLXPlayerMPLobby *this,
        char *a2,
        __int16 a3,
        CLobbyParameterAndQuery *a4)
{
  int v8; // r5
  int (__fastcall ***v10)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetGameParameter(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v10 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v10)(v10);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendSetGameParameter(*((ConnectionLobby **)this + 29), a2, a3, a4);
    v8 = *((_DWORD *)this + 29);
    *(_DWORD *)(v8 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 8;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838248 GLXPlayerMPLobby::mpSendRejoinLobby(int) =====
int __fastcall GLXPlayerMPLobby::mpSendRejoinLobby(GLXPlayerMPLobby *this, int a2)
{
  int v4; // r5
  int result; // r0
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendRejoinLobby()\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendRejoinLobbyPackage(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    result = XP_API_GET_TIME();
    *(_DWORD *)(v4 + 8272) = result;
    *((_DWORD *)this + 33) = 15;
    *((_BYTE *)this + 128) = 1;
  }
  return result;
}


// ===== 8382c8 GLXPlayerMPLobby::mpSendSetPlayerStatus(uchar) =====
int __fastcall GLXPlayerMPLobby::mpSendSetPlayerStatus(GLXPlayerMPLobby *this, unsigned __int8 a2)
{
  int v4; // r5
  int (__fastcall ***v6)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetPlayerStatus(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v6 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v6)(v6);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendSetPlayerStatusPackage(*((ConnectionLobby **)this + 29), a2);
    v4 = *((_DWORD *)this + 29);
    *(_DWORD *)(v4 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 4;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838358 GLXPlayerMPLobby::mpSendLaunchLobbyGame(void) =====
int __fastcall GLXPlayerMPLobby::mpSendLaunchLobbyGame(GLXPlayerMPLobby *this)
{
  int v2; // r5
  int (__fastcall ***v4)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLaunchLobbyGame(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v4 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v4)(v4);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendLunchLobbyGamePackage(*((ConnectionLobby **)this + 29));
    v2 = *((_DWORD *)this + 29);
    *(_DWORD *)(v2 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 9;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8383e0 GLXPlayerMPLobby::mpSendLeaveLobby(void) =====
int __fastcall GLXPlayerMPLobby::mpSendLeaveLobby(GLXPlayerMPLobby *this)
{
  int v2; // r5
  int (__fastcall ***v4)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLeaveLobby(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v4 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v4)(v4);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendLeaveLobbyPackage(*((ConnectionLobby **)this + 29));
    v2 = *((_DWORD *)this + 29);
    *(_DWORD *)(v2 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 3;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838468 GLXPlayerMPLobby::mpSendGetLobbyList(int,int,uchar,CLobbyParameterAndQuery *,uchar) =====
int __fastcall GLXPlayerMPLobby::mpSendGetLobbyList(
        GLXPlayerMPLobby *this,
        int a2,
        int a3,
        int a4,
        CLobbyParameterAndQuery *a5,
        char a6)
{
  ConnectionLobby *v10; // r0
  int v11; // r1
  int v12; // r5
  int (__fastcall ***v14)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyList(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v14 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v14)(v14);
  }
  else
  {
    v10 = *((ConnectionLobby **)this + 29);
    v11 = *((_DWORD *)this + 18);
    *((_DWORD *)this + 20) = -1;
    if ( !a4 )
      LOBYTE(a4) = 1;
    ConnectionLobby::sendGetLobbyListPackage(v10, v11, a2, a3 & ~(a3 >> 31), a4, a5, a6);
    v12 = *((_DWORD *)this + 29);
    *(_DWORD *)(v12 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 11;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838528 GLXPlayerMPLobby::mpSendJoinPredefinedLobby(char *,int,char *,int,int,std::map<int,std::string,std::less<int>,std::allocator<std::pair<int const,std::string>>> &) =====
int __fastcall GLXPlayerMPLobby::mpSendJoinPredefinedLobby(
        int a1,
        char *a2,
        int a3,
        char *a4,
        __int16 a5,
        __int16 a6,
        _DWORD *a7)
{
  CLobbyParameterAndQuery *v11; // r6
  CLobbyParameterAndQuery *v12; // r5
  _DWORD *v13; // r4
  _DWORD *v14; // r2
  int v15; // r4
  int v17; // r3
  int (__fastcall ***v18)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendJoinPredefinedLobby(){\n");
  if ( *(unsigned __int8 *)(a1 + 96) <= 1u )
  {
    v18 = *(int (__fastcall ****)(_DWORD))(a1 + 4);
    *(_DWORD *)(a1 + 80) = 50;
    return (**v18)(v18);
  }
  else
  {
    v11 = (CLobbyParameterAndQuery *)operator new(0x40u);
    CLobbyParameterAndQuery::CLobbyParameterAndQuery(v11);
    v12 = (CLobbyParameterAndQuery *)operator new(0x40u);
    CLobbyParameterAndQuery::CLobbyParameterAndQuery(v12);
    v13 = (_DWORD *)a7[2];
    while ( a7 != v13 )
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(CLobbyParameterAndQuery *, _DWORD, int, _DWORD))(*(_DWORD *)v12 + 12))(
          v12,
          v13[4],
          2,
          v13[10]);
        (*(void (__fastcall **)(CLobbyParameterAndQuery *, _DWORD, _DWORD))(*(_DWORD *)v11 + 8))(v11, v13[4], v13[10]);
        v14 = (_DWORD *)v13[3];
        if ( !v14 )
          break;
        while ( v14[2] )
          v14 = (_DWORD *)v14[2];
        v13 = v14;
        if ( a7 == v14 )
          goto LABEL_9;
      }
      v17 = v13[1];
      if ( v13 == *(_DWORD **)(v17 + 12) )
      {
        do
        {
          v13 = (_DWORD *)v17;
          v17 = *(_DWORD *)(v17 + 4);
        }
        while ( *(_DWORD **)(v17 + 12) == v13 );
        v14 = (_DWORD *)v13[3];
      }
      if ( (_DWORD *)v17 != v14 )
        v13 = (_DWORD *)v17;
    }
LABEL_9:
    ConnectionLobby::sendJoinPredefinedLobbyPackage(*(ConnectionLobby **)(a1 + 116), a2, a3, a4, a5, a6, v12, v11);
    if ( v11 )
      (*(void (__fastcall **)(CLobbyParameterAndQuery *))(*(_DWORD *)v11 + 4))(v11);
    if ( v12 )
      (*(void (__fastcall **)(CLobbyParameterAndQuery *))(*(_DWORD *)v12 + 4))(v12);
    *(_DWORD *)(a1 + 80) = -1;
    v15 = *(_DWORD *)(a1 + 116);
    *(_DWORD *)(v15 + 8272) = XP_API_GET_TIME();
    *(_DWORD *)(a1 + 132) = 14;
    *(_BYTE *)(a1 + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8386f0 GLXPlayerMPLobby::mpSendJoinLobby(int,uchar,char *,int) =====
int __fastcall GLXPlayerMPLobby::mpSendJoinLobby(GLXPlayerMPLobby *this, int a2, unsigned __int8 a3, char *a4, int a5)
{
  int v9; // r5
  int (__fastcall ***v11)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendJoinLobby(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v11 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v11)(v11);
  }
  else
  {
    ConnectionLobby::sendJoinLobbyPackage(*((ConnectionLobby **)this + 29), a2, a3, a4, a5);
    *((_DWORD *)this + 20) = -1;
    v9 = *((_DWORD *)this + 29);
    *(_DWORD *)(v9 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 14;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 8387a4 GLXPlayerMPLobby::mpSendCreateLobby(char *,uchar,uchar,int,char *,int,char *,int,CLobbyParameterAndQuery *) =====
int __fastcall GLXPlayerMPLobby::mpSendCreateLobby(
        GLXPlayerMPLobby *this,
        char *a2,
        unsigned __int8 a3,
        char a4,
        __int16 a5,
        char *a6,
        __int16 a7,
        char *a8,
        __int16 a9,
        CLobbyParameterAndQuery *a10)
{
  int v14; // r5
  int (__fastcall ***v16)(_DWORD); // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCreateLobby(){\n");
  if ( *((unsigned __int8 *)this + 96) <= 1u )
  {
    v16 = *((int (__fastcall ****)(_DWORD))this + 1);
    *((_DWORD *)this + 20) = 50;
    return (**v16)(v16);
  }
  else
  {
    *((_DWORD *)this + 20) = -1;
    ConnectionLobby::sendCreateLobbyPackage(
      *((ConnectionLobby **)this + 29),
      *((_DWORD *)this + 18),
      a2,
      a3,
      a4,
      a5,
      a6,
      a7,
      a8,
      a9,
      a10);
    v14 = *((_DWORD *)this + 29);
    *(_DWORD *)(v14 + 8272) = XP_API_GET_TIME();
    *((_DWORD *)this + 33) = 5;
    *((_BYTE *)this + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 838890 GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter(long,char *,int,uchar,uchar,char *,char *) =====
int __fastcall GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter(
        GLXPlayerMPLobby *this,
        int a2,
        char *a3,
        __int16 a4,
        char a5,
        char a6,
        char *a7,
        char *a8)
{
  ConnectionLobby *v12; // r0
  int v13; // r5

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter\n");
  v12 = *((ConnectionLobby **)this + 29);
  *((_DWORD *)this + 20) = -1;
  ConnectionLobby::sendLobbyLoginPackageWithGameCenter(v12, a2, a3, a4, a5, a6, a7, a8);
  v13 = *((_DWORD *)this + 29);
  *(_DWORD *)(v13 + 8272) = XP_API_GET_TIME();
  *((_DWORD *)this + 33) = 1;
  *((_BYTE *)this + 128) = 1;
  return XP_DEBUG_OUT("}\n");
}


// ===== 838928 GLXPlayerMPLobby::mpSendLobbyLogin(long,char *,int,uchar) =====
int __fastcall GLXPlayerMPLobby::mpSendLobbyLogin(GLXPlayerMPLobby *this, int a2, char *a3, __int16 a4, char a5)
{
  ConnectionLobby *v9; // r0
  int v10; // r5

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLobbyLogin\n");
  v9 = *((ConnectionLobby **)this + 29);
  *((_DWORD *)this + 20) = -1;
  ConnectionLobby::sendLobbyLoginPackage(v9, a2, a3, a4, a5);
  v10 = *((_DWORD *)this + 29);
  *(_DWORD *)(v10 + 8272) = XP_API_GET_TIME();
  *((_DWORD *)this + 33) = 1;
  *((_BYTE *)this + 128) = 1;
  return XP_DEBUG_OUT("}\n");
}


// ===== 8389a8 GLXPlayerMPLobby::mpSendDisconnect(void) =====
Connection *__fastcall GLXPlayerMPLobby::mpSendDisconnect(GLXPlayerMPLobby *this)
{
  Connection *result; // r0
  int v3; // r3
  int v4; // r5
  int v5; // r3

  result = *((Connection **)this + 29);
  if ( result )
  {
    if ( Connection::isConnected(result) )
    {
      v3 = *((_DWORD *)this + 29);
      *((_DWORD *)this + 20) = -1;
      (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 20))(v3);
      v4 = *((_DWORD *)this + 29);
      result = (Connection *)XP_API_GET_TIME();
      *(_DWORD *)(v4 + 8272) = result;
      *((_DWORD *)this + 33) = 16;
      *((_BYTE *)this + 128) = 1;
    }
    else
    {
      (*(void (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 24))(this);
      v5 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 20) = 0;
      return (Connection *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
    }
  }
  return result;
}


// ===== 838a34 GLXPlayerMPLobby::Update(void) =====
int __fastcall GLXPlayerMPLobby::Update(GLXPlayerMPLobby *this)
{
  Connection *v2; // r0
  int (__fastcall ***v3)(_DWORD); // r3
  int result; // r0
  int v5; // r3
  int v6; // r3
  int v7; // r3
  int v8; // r3
  int v9; // r7
  int v10; // r3
  int v11; // r1
  int v12; // r3

  if ( Connection::isConnected(*((Connection **)this + 29)) )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 29) + 12))(*((_DWORD *)this + 29));
    v5 = *((_DWORD *)this + 36);
    if ( v5 )
      v6 = *(_DWORD *)(v5 + 28);
    else
      v6 = -1;
    *((_DWORD *)this + 34) = v6;
    if ( *((_BYTE *)this + 128)
      && (unsigned int)(XP_API_GET_TIME() - *(_DWORD *)(*((_DWORD *)this + 29) + 8272)) > 0x4650 )
    {
      v11 = *((_DWORD *)this + 33);
      *((_BYTE *)this + 128) = 0;
      XP_DEBUG_OUT("Timeout expired! m_LobbyStatus = %d\n", v11);
      if ( *((unsigned __int8 *)this + 96) <= 1u )
        v12 = 41;
      else
        v12 = 16434;
      *((_DWORD *)this + 20) = v12;
      (*(void (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 24))(this);
      result = (***((int (__fastcall ****)(_DWORD, _DWORD))this + 1))(*((_DWORD *)this + 1), *((_DWORD *)this + 20));
      *((_DWORD *)this + 33) = 21;
    }
    else
    {
      result = (*(int (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 68))(this);
      if ( result )
      {
        v7 = *((_DWORD *)this + 26);
        if ( v7 )
        {
          result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)this + 26));
          *((_DWORD *)this + 26) = 0;
        }
        *((_DWORD *)this + 26) = 0;
      }
    }
  }
  else
  {
    v2 = *((Connection **)this + 29);
    if ( !*((_DWORD *)v2 + 2053) || *((_DWORD *)this + 27) != 1 )
      goto LABEL_4;
    result = Connection::connect(v2);
    if ( result )
    {
      v9 = *((_DWORD *)this + 29);
      result = XP_API_GET_TIME();
      *(_DWORD *)(v9 + 8272) = result;
      v10 = *((_DWORD *)this + 29);
      *((_BYTE *)this + 128) = 1;
      *((_DWORD *)this + 27) = 2;
      *(_DWORD *)(v10 + 4) = 0;
    }
    else
    {
      v8 = *((_DWORD *)this + 29);
      if ( *(_DWORD *)(v8 + 4) != 1 )
      {
        *((_DWORD *)this + 27) = 3;
        *(_DWORD *)(v8 + 4) = 0;
LABEL_4:
        (*(void (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 24))(this);
        v3 = *((int (__fastcall ****)(_DWORD))this + 1);
        *((_DWORD *)this + 20) = -2;
        return (**v3)(v3);
      }
    }
  }
  return result;
}


// ===== 838bf0 GLXPlayerMPLobby::mpDisconnect(void) =====
int __fastcall GLXPlayerMPLobby::mpDisconnect(GLXPlayerMPLobby *this)
{
  Thread *v2; // r0
  int v3; // r3
  int result; // r0
  int v5; // r3

  v2 = *((Thread **)this + 36);
  *((_DWORD *)this + 34) = -1;
  if ( v2 )
  {
    Thread::Stop(v2);
    v3 = *((_DWORD *)this + 36);
    if ( v3 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 36));
      *((_DWORD *)this + 36) = 0;
    }
  }
  result = Connection::disconnect(*((Connection **)this + 29));
  v5 = *((_DWORD *)this + 26);
  if ( v5 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)this + 26));
    *((_DWORD *)this + 26) = 0;
  }
  *((_BYTE *)this + 96) = 0;
  return result;
}


// ===== 838c6c GLXPlayerMPLobby::mpProcessIncomingMessages(void) =====
int __fastcall GLXPlayerMPLobby::mpProcessIncomingMessages(GLXPlayerMPLobby *this)
{
  int v2; // r3
  int NextIncomingPacket; // r0
  int v4; // r7
  int v5; // r0
  int v6; // r7
  int v7; // r3
  int v8; // r3
  int v9; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r3
  void (__fastcall ***v18)(_DWORD); // r3
  int v19; // r3
  int v20; // r3
  int v21; // r3
  int v22; // r3
  int v23; // r3
  int v24; // r3
  int v25; // r3
  int v26; // r3
  int v27; // r3
  int v28; // r3
  int v29; // r3
  int v30; // r3
  int v31; // r3
  int v32; // r3
  int v33; // r3
  int v34; // r3
  int v35; // r3
  int v36; // r3
  void (__fastcall ***v37)(_DWORD); // r3
  int v38; // r3
  int v39; // r3
  int v40; // r3
  int v41; // r3
  int v42; // r3
  int v43; // r3
  int v44; // r3
  int v45; // r3
  int v46; // r3
  int v47; // r3
  int v48; // r3
  int v49; // r3
  int v50; // r3
  int v51; // r3
  int v52; // r3
  int v53; // r3
  int v54; // r3
  bool v55; // zf
  int v56; // r3
  int v57; // r3
  int v58; // r3
  char *v59; // r0
  GLXPlayerPing *v60; // r10
  int v61; // r3
  int v62; // r1
  int v63; // r3
  int v64; // r3
  int v65; // r1
  int v66; // [sp+4h] [bp-74h] BYREF
  char v67; // [sp+Ah] [bp-6Eh] BYREF
  char v68; // [sp+Bh] [bp-6Dh] BYREF
  _DWORD v69[12]; // [sp+Ch] [bp-6Ch] BYREF
  __int16 v70; // [sp+3Ch] [bp-3Ch]
  _DWORD v71[12]; // [sp+40h] [bp-38h] BYREF
  __int16 v72; // [sp+70h] [bp-8h]

  if ( *((unsigned __int8 *)this + 96) > 1u && ConnectionLobby::keepConnectionAlive(*((ConnectionLobby **)this + 29)) )
    *((_DWORD *)this + 35) = XP_API_GET_TIME();
  v2 = *((_DWORD *)this + 26);
  if ( v2 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 26));
    *((_DWORD *)this + 26) = 0;
  }
  NextIncomingPacket = Connection::getNextIncomingPacket(*((Connection **)this + 29));
  v4 = NextIncomingPacket;
  *((_DWORD *)this + 26) = NextIncomingPacket;
  if ( NextIncomingPacket )
  {
    (*(void (__fastcall **)(int, char *))(*(_DWORD *)NextIncomingPacket + 12))(NextIncomingPacket, &v68);
    (*(void (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 26) + 12))(*((_DWORD *)this + 26), &v67);
    v5 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 26) + 160))(*((_DWORD *)this + 26));
    v6 = v5 - 2;
    XP_DEBUG_OUT("get respone Msg type: %d\n", v5);
    switch ( v6 )
    {
      case 0:
        v11 = *((_DWORD *)this + 1);
        *((_BYTE *)this + 128) = 0;
        *((_BYTE *)this + 96) = 1;
        *((_DWORD *)this + 20) = 0;
        (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 8))(v11);
        if ( !*((_DWORD *)this + 36) )
        {
          v59 = *((char **)this + 31);
          v70 = 0;
          v72 = 0;
          memset(v71, 0, sizeof(v71));
          memset(v69, 0, sizeof(v69));
          XP_API_PARSE_DATA(v59, v71, 2, 47);
          XP_API_PARSE_DATA((char *)v71, v69, 0, 58);
          v60 = (GLXPlayerPing *)operator new(0x34u);
          GLXPlayerPing::GLXPlayerPing(v60, (const char *)v69, 0);
          *((_DWORD *)this + 36) = v60;
          Thread::Start(v60);
        }
        return 1;
      case 2:
        if ( *((_DWORD *)this + 33) != 16 )
          goto LABEL_12;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        (*(void (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 24))(this);
        v40 = *((_DWORD *)this + 26);
        if ( v40 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v40 + 4))(*((_DWORD *)this + 26));
          *((_DWORD *)this + 26) = 0;
        }
        v41 = *((_DWORD *)this + 1);
        v4 = 0;
        *((_DWORD *)this + 26) = 0;
        *((_DWORD *)this + 20) = 0;
        (*(void (__fastcall **)(int))(*(_DWORD *)v41 + 12))(v41);
        return v4;
      case 4:
        if ( *((_DWORD *)this + 33) != 1 )
          goto LABEL_12;
        v38 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 96) = 2;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v38 + 20))(v38, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v39 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v39 + 16))(v39, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 8:
        v35 = *((_DWORD *)this + 26);
        v66 = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v35 + 20))(v35, &v66) )
          goto LABEL_12;
        XP_DEBUG_OUT("Msg error 2\n");
        v36 = *((_DWORD *)this + 26);
        if ( v36 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v36 + 4))(*((_DWORD *)this + 26));
          *((_DWORD *)this + 26) = 0;
        }
        goto LABEL_70;
      case 10:
        if ( *((_DWORD *)this + 33) != 5 )
          goto LABEL_12;
        v33 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 96) = 3;
        *((_BYTE *)this + 129) = 1;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v33 + 20))(v33, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v34 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v34 + 20))(v34, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 12:
        if ( *((_DWORD *)this + 33) != 11 )
          goto LABEL_12;
        v31 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v31 + 20))(v31, &v66) )
        {
          if ( v66 )
            goto LABEL_126;
          v32 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v32 + 24))(v32, *((_DWORD *)this + 26));
          return 1;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 14:
        if ( *((_DWORD *)this + 33) != 14 )
          goto LABEL_12;
        v29 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v29 + 20))(v29, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v30 = *((_DWORD *)this + 1);
          *((_BYTE *)this + 96) = 3;
          *((_BYTE *)this + 129) = 0;
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v30 + 28))(v30, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 15:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          17);
        goto LABEL_12;
      case 16:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          18);
        goto LABEL_12;
      case 18:
        if ( *((_DWORD *)this + 33) != 3 )
          goto LABEL_12;
        v46 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v46 + 20))(v46, &v66) )
        {
          if ( v66 )
          {
LABEL_126:
            GLXPlayerMPBase::setErrMsg(this);
            v64 = *((_DWORD *)this + 1);
            v65 = *((_DWORD *)this + 19);
            *((_DWORD *)this + 20) = v66;
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v64 + 4))(v64, v65);
            return 1;
          }
          else
          {
            v47 = *((_DWORD *)this + 1);
            *((_BYTE *)this + 96) = 2;
            *((_DWORD *)this + 20) = 0;
            (*(void (__fastcall **)(int))(*(_DWORD *)v47 + 32))(v47);
            return 1;
          }
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 19:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          21);
        goto LABEL_12;
      case 21:
        if ( *((_DWORD *)this + 33) != 13 )
          goto LABEL_12;
        v44 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v44 + 20))(v44, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v45 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v45 + 68))(v45, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 23:
        if ( *((_DWORD *)this + 33) != 6 )
          goto LABEL_12;
        v42 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v42 + 20))(v42, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v43 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int))(*(_DWORD *)v43 + 36))(v43);
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 30:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          32);
        goto LABEL_12;
      case 32:
        if ( *((_DWORD *)this + 33) != 8 )
          goto LABEL_12;
        v21 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v21 + 20))(v21, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v22 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 56))(v22, 34);
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 33:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          35);
        goto LABEL_12;
      case 35:
        if ( *((_DWORD *)this + 33) != 7 )
          goto LABEL_12;
        v19 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v19 + 20))(v19, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v20 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 56))(v20, 37);
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 36:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          38);
        goto LABEL_12;
      case 38:
        if ( *((_DWORD *)this + 33) != 4 )
          goto LABEL_12;
        v50 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v50 + 20))(v50, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v51 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v51 + 56))(v51, 40);
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 39:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          41);
        goto LABEL_12;
      case 41:
        if ( *((_DWORD *)this + 33) != 9 )
          goto LABEL_12;
        v27 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v27 + 20))(v27, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v28 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          *((_BYTE *)this + 96) = 5;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v28 + 40))(v28, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 42:
        v26 = *((_DWORD *)this + 1);
        *((_BYTE *)this + 96) = 5;
        (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v26 + 60))(v26, *((_DWORD *)this + 26), 44);
        goto LABEL_12;
      case 44:
        if ( *((_DWORD *)this + 33) != 15 )
          goto LABEL_12;
        v24 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v24 + 20))(v24, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v25 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v25 + 64))(v25, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 45:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          47);
        goto LABEL_12;
      case 48:
        v23 = *((_DWORD *)this + 1);
        *((_DWORD *)this + 20) = 0;
        (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v23 + 60))(v23, *((_DWORD *)this + 26), 50);
        goto LABEL_12;
      case 51:
        if ( *((_DWORD *)this + 33) != 10 )
          goto LABEL_12;
        v53 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v53 + 20))(v53, &v66) )
          goto LABEL_24;
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( !v17 )
          goto LABEL_30;
        goto LABEL_29;
      case 53:
        if ( *((_DWORD *)this + 33) != 12 )
          goto LABEL_12;
        v52 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v52 + 20))(v52, &v66) )
          goto LABEL_24;
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( !v17 )
          goto LABEL_30;
        goto LABEL_29;
      case 55:
        if ( !*((_BYTE *)this + 120) )
          goto LABEL_12;
        v54 = *((_DWORD *)this + 26);
        v66 = 0;
        (*(void (__fastcall **)(int, int *))(*(_DWORD *)v54 + 20))(v54, &v66);
        v55 = v66 == 0;
        if ( v66 )
          v55 = v66 == 16433;
        if ( !v55 )
          goto LABEL_122;
        v56 = *((_DWORD *)this + 1);
        *((_BYTE *)this + 96) = 3;
        (*(void (__fastcall **)(int))(*(_DWORD *)v56 + 84))(v56);
        goto LABEL_12;
      case 73:
        if ( *((_DWORD *)this + 33) != 17 )
          goto LABEL_12;
        v48 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v48 + 20))(v48, &v66) )
        {
          if ( v66 )
            goto LABEL_122;
          v49 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int))(*(_DWORD *)v49 + 88))(v49);
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 74:
        if ( *((_BYTE *)this + 120) )
        {
          v58 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v58 + 60))(v58, *((_DWORD *)this + 26), 76);
        }
        goto LABEL_12;
      case 78:
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 60))(
          *((_DWORD *)this + 1),
          *((_DWORD *)this + 26),
          80);
        goto LABEL_12;
      case 95:
        if ( *((_DWORD *)this + 33) != 19 )
          goto LABEL_12;
        v57 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v57 + 20))(v57, &v66) )
          goto LABEL_24;
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( !v17 )
          goto LABEL_30;
        goto LABEL_29;
      case 96:
        if ( *((_DWORD *)this + 33) != 18 )
          goto LABEL_12;
        v16 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v16 + 20))(v16, &v66) )
          goto LABEL_24;
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 98:
        if ( *((_DWORD *)this + 33) != 20 )
          goto LABEL_12;
        v14 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v14 + 20))(v14, &v66) )
        {
LABEL_24:
          if ( v66 )
            goto LABEL_122;
          v15 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 20) = 0;
          (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v15 + 24))(v15, *((_DWORD *)this + 26));
          goto LABEL_12;
        }
        XP_DEBUG_OUT("Msg error 2\n");
        v17 = *((_DWORD *)this + 26);
        if ( v17 )
          goto LABEL_29;
        goto LABEL_30;
      case 100:
        if ( *((_DWORD *)this + 33) != 2 )
          goto LABEL_12;
        v7 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( !(*(int (__fastcall **)(int, int *))(*(_DWORD *)v7 + 20))(v7, &v66) )
        {
          XP_DEBUG_OUT("Msg error 2\n");
          v17 = *((_DWORD *)this + 26);
          if ( v17 )
          {
LABEL_29:
            (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 4))(v17);
            *((_DWORD *)this + 26) = 0;
          }
LABEL_30:
          v18 = *((void (__fastcall ****)(_DWORD))this + 1);
          v4 = 0;
          *((_DWORD *)this + 26) = 0;
          *((_DWORD *)this + 20) = 40;
          (**v18)(v18);
          return v4;
        }
        if ( v66 )
          goto LABEL_122;
        v8 = *((_DWORD *)this + 1);
        *((_DWORD *)this + 20) = 0;
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 92))(v8, *((_DWORD *)this + 26));
        goto LABEL_12;
      case 102:
        v12 = *((_DWORD *)this + 26);
        v66 = 0;
        *((_DWORD *)this + 33) = 21;
        *((_BYTE *)this + 128) = 0;
        if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)v12 + 20))(v12, &v66) )
        {
          if ( v66 )
          {
LABEL_122:
            GLXPlayerMPBase::setErrMsg(this);
            v61 = *((_DWORD *)this + 1);
            v62 = *((_DWORD *)this + 19);
            *((_DWORD *)this + 20) = v66;
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v61 + 4))(v61, v62);
          }
          else
          {
            v13 = *((_DWORD *)this + 1);
            *((_DWORD *)this + 20) = 0;
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v13 + 96))(v13, *((_DWORD *)this + 26));
          }
LABEL_12:
          v9 = *((_DWORD *)this + 26);
          if ( v9 )
          {
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)this + 26));
            *((_DWORD *)this + 26) = 0;
          }
          v4 = 0;
          *((_DWORD *)this + 26) = 0;
        }
        else
        {
          XP_DEBUG_OUT("Join Predefined Room Error 2\n");
          v63 = *((_DWORD *)this + 26);
          if ( v63 )
          {
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v63 + 4))(*((_DWORD *)this + 26));
            *((_DWORD *)this + 26) = 0;
          }
LABEL_70:
          v37 = *((void (__fastcall ****)(_DWORD))this + 1);
          *((_DWORD *)this + 26) = 0;
          *((_DWORD *)this + 20) = 40;
          (**v37)(v37);
          v4 = 0;
        }
        break;
      default:
        goto LABEL_12;
    }
  }
  return v4;
}


// ===== 839e7c GLXPlayerMPLobby::mpSendEstablishConnection(void) =====
int __fastcall GLXPlayerMPLobby::mpSendEstablishConnection(GLXPlayerMPLobby *this)
{
  int v2; // r3
  ConnectionLobby *v3; // r5
  int v5; // r3

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendEstablishConnection(){\n");
  if ( *((_BYTE *)this + 96) )
  {
    v5 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 20) = 0;
    return (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(v5);
  }
  else
  {
    if ( *((_DWORD *)this + 29) )
    {
      (*(void (__fastcall **)(GLXPlayerMPLobby *))(*(_DWORD *)this + 24))(this);
      v2 = *((_DWORD *)this + 29);
      if ( v2 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 29));
      *((_DWORD *)this + 29) = 0;
    }
    *((_DWORD *)this + 20) = -1;
    v3 = (ConnectionLobby *)operator new(0x2058u);
    ConnectionLobby::ConnectionLobby(v3, *((char **)this + 22), *((_DWORD *)this + 23));
    *((_DWORD *)this + 29) = v3;
    Connection::setName(v3, (char *)this + 8);
    *((_DWORD *)this + 27) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 839f4c GLXPlayerMPLobby::LoadConfig(void) =====
int __fastcall GLXPlayerMPLobby::LoadConfig(GLXPlayerMPLobby *this)
{
  int v1; // r0
  int v2; // r0
  size_t v3; // r11
  size_t v4; // r4
  char *v5; // r5
  signed int v6; // r0
  int v7; // r10
  int v8; // r0
  int v9; // r9
  int v10; // r8
  size_t v11; // r0
  signed int v12; // r0
  int v13; // r0
  char *v14; // r6
  signed int v15; // r8
  size_t v16; // r0
  signed int v17; // r6
  size_t v18; // r7
  void *v19; // r0
  unsigned int v21; // r7
  void *v22; // r5
  void *v23; // r0
  void *v24; // r10
  size_t v25; // [sp+4h] [bp-260h]
  size_t v26; // [sp+4h] [bp-260h]
  signed int v27; // [sp+8h] [bp-25Ch]
  void *v28; // [sp+Ch] [bp-258h]
  int v29; // [sp+10h] [bp-254h]
  int v31; // [sp+30h] [bp-234h]
  size_t v32; // [sp+34h] [bp-230h]
  char v33[256]; // [sp+3Ch] [bp-228h] BYREF
  char v34[128]; // [sp+13Ch] [bp-128h] BYREF
  char v35[128]; // [sp+1BCh] [bp-A8h] BYREF
  char v36[32]; // [sp+23Ch] [bp-28h] BYREF

  v1 = XP_API_FILE_OPEN("oconf.bar", "r");
  v31 = v1;
  if ( v1 )
  {
    v2 = XP_API_FILE_GET_LENGTH(v1);
    v3 = v2 + 1;
    v4 = v2;
    v28 = (void *)operator new[](v2 + 1);
    XP_API_MEMSET(v28, 0, v3);
    XP_API_FILE_READ(v28, v4, 1u, v31);
    v5 = (char *)operator new[](v3);
    XP_API_MEMSET(v5, 0, v3);
    XP_API_PARSE_DATA((char *)v28, v5, 0, 10);
    v6 = XP_API_STRLEN(v5);
    if ( v6 > 0 )
    {
      v8 = v6 - 1;
      v7 = 0;
      if ( v5[v8] == 13 )
        v5[v8] = 0;
      v9 = 1;
      v29 = *((_DWORD *)this + 31);
      while ( 1 )
      {
        memset(v36, 0, sizeof(v36));
        LC_API_MEMSET_0(v33, 0, 0x100u);
        XP_API_PARSE_DATA(v5, v36, 0, 58);
        v10 = XP_API_PARSE_DATA(v5, v33, 1, 58);
        XP_API_MEMSET(v33, 0, 0x100u);
        v11 = XP_API_STRLEN(v5);
        XP_API_MEMCPY(v33, &v5[v10], v11 - v10);
        XP_API_STRTRIM(v36);
        XP_API_STRTRIM(v33);
        if ( !XP_API_STRCMP(v36, "GGI") )
          *((_DWORD *)this + 18) = XP_API_ATOI(v33);
        if ( !XP_API_STRCMP(v36, "XPlayMPURL") && !v29 )
        {
          LC_API_MEMSET_0(v34, 0, 0x80u);
          LC_API_MEMSET_0(v35, 0, 0x80u);
          XP_API_MEMSET(v34, 0, 0x80u);
          XP_API_MEMSET(v35, 0, 0x80u);
          XP_API_PARSE_DATA(v33, v34, 2, 47);
          XP_API_PARSE_DATA(v34, v35, 0, 58);
          v27 = XP_API_STRLEN(v34);
          v25 = XP_API_STRLEN(v35);
          v32 = v25 + 1;
          v23 = (void *)operator new[](v25 + 1);
          *((_DWORD *)this + 22) = v23;
          XP_API_MEMSET(v23, 0, v25 + 1);
          XP_API_MEMCPY(*((void **)this + 22), v35, v25);
          if ( v27 > (int)(v25 + 1) )
          {
            v26 = v27 - v25;
            v24 = (void *)operator new[](v26);
            XP_API_MEMSET(v24, 0, v26);
            XP_API_MEMCPY(v24, &v34[v32], v26 - 1);
            *((_DWORD *)this + 23) = XP_API_ATOI((const char *)v24);
            if ( v24 )
              LC_API_FREE_0(v24);
            v7 = 1;
          }
        }
        XP_API_MEMSET(v5, 0, v3);
        XP_API_PARSE_DATA((char *)v28, v5, v9, 10);
        v12 = XP_API_STRLEN(v5);
        if ( v12 <= 0 )
          break;
        v13 = v12 - 1;
        ++v9;
        if ( v5[v13] == 13 )
          v5[v13] = 0;
      }
    }
    else
    {
      v7 = 0;
    }
    if ( v5 )
      LC_API_FREE_0(v5);
    if ( v28 )
      LC_API_FREE_0(v28);
    XP_API_FILE_CLOSE(v31);
    if ( v7 )
      return 1;
    v14 = *((char **)this + 31);
    if ( !v14 )
      return 1;
    LC_API_MEMSET_0(v35, 0, 0x80u);
    LC_API_MEMSET_0(v34, 0, 0x80u);
    XP_API_MEMSET(v35, 0, 0x80u);
    XP_API_MEMSET(v34, 0, 0x80u);
    XP_API_PARSE_DATA(v14, v35, 2, 47);
    XP_API_PARSE_DATA(v35, v34, 0, 58);
    v15 = XP_API_STRLEN(v35);
    v16 = XP_API_STRLEN(v34);
    v17 = v16 + 1;
    v18 = v16;
    v19 = (void *)operator new[](v16 + 1);
    *((_DWORD *)this + 22) = v19;
    XP_API_MEMSET(v19, 0, v17);
    XP_API_MEMCPY(*((void **)this + 22), v34, v18);
    if ( v15 <= v17 )
      return 0;
    v21 = v15 - v18;
    v22 = (void *)operator new[](v21);
    XP_API_MEMSET(v22, 0, v21);
    XP_API_MEMCPY(v22, &v35[v17], v21 - 1);
    *((_DWORD *)this + 23) = XP_API_ATOI((const char *)v22);
    if ( v22 )
    {
      LC_API_FREE_0(v22);
      return 1;
    }
    else
    {
      return 1;
    }
  }
  else
  {
    XP_DEBUG_OUT("[GLXPlayerMPBase] load config - %s not found \n", "oconf.bar");
    return 0;
  }
}


// ===== 83a4a4 GLXPlayerMPLobby::Init(void) =====
int __fastcall GLXPlayerMPLobby::Init(GLXPlayerMPLobby *this)
{
  int result; // r0

  *((_BYTE *)this + 97) = 10;
  *((_DWORD *)this + 33) = 21;
  *((_BYTE *)this + 128) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 99) = -1;
  *((_BYTE *)this + 100) = -1;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 98) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 120) = 0;
  result = GLXPlayerMPLobby::LoadConfig(this);
  *((_DWORD *)this + 34) = -1;
  return result;
}


// ===== 83a4f0 GLXPlayerMPLobby::~GLXPlayerMPLobby() =====
void __fastcall GLXPlayerMPLobby::~GLXPlayerMPLobby(GLXPlayerMPLobby *this)
{
  void *v2; // r0
  void *v3; // r0
  int v4; // r3

  v2 = *((void **)this + 31);
  *(_DWORD *)this = off_993050;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 31) = 0;
  }
  v3 = *((void **)this + 22);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 22) = 0;
  }
  if ( *((_DWORD *)this + 29) )
  {
    GLXPlayerMPLobby::mpDisconnect(this);
    v4 = *((_DWORD *)this + 29);
    if ( v4 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 29));
      *((_DWORD *)this + 29) = 0;
    }
  }
  GLXPlayerMPBase::~GLXPlayerMPBase(this);
}


// ===== 83a590 GLXPlayerMPLobby::~GLXPlayerMPLobby() =====
void __fastcall GLXPlayerMPLobby::~GLXPlayerMPLobby(GLXPlayerMPLobby *this)
{
  GLXPlayerMPLobby::~GLXPlayerMPLobby(this);
  LC_API_FREE_0(this);
}


// ===== 83a5ac GLXPlayerMPLobby::~GLXPlayerMPLobby() =====
void __fastcall GLXPlayerMPLobby::~GLXPlayerMPLobby(GLXPlayerMPLobby *this)
{
  void *v2; // r0
  void *v3; // r0
  int v4; // r3

  v2 = *((void **)this + 31);
  *(_DWORD *)this = off_993050;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 31) = 0;
  }
  v3 = *((void **)this + 22);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 22) = 0;
  }
  if ( *((_DWORD *)this + 29) )
  {
    GLXPlayerMPLobby::mpDisconnect(this);
    v4 = *((_DWORD *)this + 29);
    if ( v4 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 29));
      *((_DWORD *)this + 29) = 0;
    }
  }
  GLXPlayerMPBase::~GLXPlayerMPBase(this);
}


// ===== 83a64c GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPBaseObserver *,char *) =====
void __fastcall GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPLobby *this, GLXPlayerMPBaseObserver *a2, char *a3)
{
  size_t v5; // r4
  int v6; // r0

  GLXPlayerMPBase::GLXPlayerMPBase(this, a2);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = off_993050;
  *((_DWORD *)this + 31) = 0;
  if ( a3 )
  {
    v5 = XP_API_STRLEN(a3);
    v6 = operator new[](v5 + 1);
    *((_DWORD *)this + 31) = v6;
    *(_BYTE *)(v6 + v5) = 0;
    XP_API_STRCPY(*((char **)this + 31), a3);
  }
  GLXPlayerMPLobby::Init(this);
}


// ===== 83a6c8 GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPBaseObserver *,char *) =====
void __fastcall GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPLobby *this, GLXPlayerMPBaseObserver *a2, char *a3)
{
  size_t v5; // r4
  int v6; // r0

  GLXPlayerMPBase::GLXPlayerMPBase(this, a2);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = off_993050;
  *((_DWORD *)this + 31) = 0;
  if ( a3 )
  {
    v5 = XP_API_STRLEN(a3);
    v6 = operator new[](v5 + 1);
    *((_DWORD *)this + 31) = v6;
    *(_BYTE *)(v6 + v5) = 0;
    XP_API_STRCPY(*((char **)this + 31), a3);
  }
  GLXPlayerMPLobby::Init(this);
}


// ===== 83a744 GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(char *,uchar,uchar,int,char *,int,char *,int,CLobbyParameterAndQuery *,std::list<std::string,std::allocator<std::string>> &) =====
int __fastcall GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10,
        _DWORD **a11)
{
  _DWORD *v15; // r10
  int i; // r11
  char *node; // r0
  char **v18; // r3
  int v19; // r4
  int (__fastcall ***v21)(_DWORD); // r3
  int v22; // [sp+24h] [bp-10h]
  char *v23; // [sp+28h] [bp-Ch] BYREF
  char **v24; // [sp+2Ch] [bp-8h]

  XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(){\n");
  if ( *(unsigned __int8 *)(a1 + 96) <= 1u )
  {
    v21 = *(int (__fastcall ****)(_DWORD))(a1 + 4);
    *(_DWORD *)(a1 + 80) = 50;
    return (**v21)(v21);
  }
  else
  {
    *(_DWORD *)(a1 + 80) = -1;
    v15 = *a11;
    v23 = (char *)&v23;
    v24 = &v23;
    v22 = *(_DWORD *)(a1 + 116);
    for ( i = *(_DWORD *)(a1 + 72); a11 != v15; v15 = (_DWORD *)*v15 )
    {
      node = std::list<std::string>::_M_create_node((int)&v23, (int)(v15 + 2));
      v18 = v24;
      *(_DWORD *)node = &v23;
      *((_DWORD *)node + 1) = v18;
      *v18 = node;
      v24 = (char **)node;
    }
    ConnectionLobby::sendCreateLobbyPackageWithGameCenter(v22, i, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v23);
    std::priv::_List_base<std::string,std::allocator<std::string>>::clear(&v23);
    v19 = *(_DWORD *)(a1 + 116);
    *(_DWORD *)(v19 + 8272) = XP_API_GET_TIME();
    *(_DWORD *)(a1 + 132) = 5;
    *(_BYTE *)(a1 + 128) = 1;
    return XP_DEBUG_OUT("}\n");
  }
}


// ===== 83a880 GLXPlayerUser::getUserName(void) =====
int __fastcall GLXPlayerUser::getUserName(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 83a888 GLXPlayerUser::getPassword(void) =====
int __fastcall GLXPlayerUser::getPassword(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 18);
}


// ===== 83a890 GLXPlayerUser::getEmail(void) =====
int __fastcall GLXPlayerUser::getEmail(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 83a898 GLXPlayerUser::getEmailFlag(void) =====
int __fastcall GLXPlayerUser::getEmailFlag(GLXPlayerUser *this)
{
  return *((unsigned __int8 *)this + 80);
}


// ===== 83a8a0 GLXPlayerUser::getCountry(void) =====
int __fastcall GLXPlayerUser::getCountry(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 83a8a8 GLXPlayerUser::getFirstName(void) =====
int __fastcall GLXPlayerUser::getFirstName(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 22);
}


// ===== 83a8b0 GLXPlayerUser::getLastName(void) =====
int __fastcall GLXPlayerUser::getLastName(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 23);
}


// ===== 83a8b8 GLXPlayerUser::getSex(void) =====
int __fastcall GLXPlayerUser::getSex(GLXPlayerUser *this)
{
  return *((unsigned __int8 *)this + 96);
}


// ===== 83a8c0 GLXPlayerUser::getBirthday(void) =====
int __fastcall GLXPlayerUser::getBirthday(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 25);
}


// ===== 83a8c8 GLXPlayerUser::getOnlineTime(void) =====
int __fastcall GLXPlayerUser::getOnlineTime(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 26);
}


// ===== 83a8d0 GLXPlayerUser::getTotalTrophy(void) =====
int __fastcall GLXPlayerUser::getTotalTrophy(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 27);
}


// ===== 83a8d8 GLXPlayerUser::getNumberUserGameList(void) =====
int __fastcall GLXPlayerUser::getNumberUserGameList(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 31);
}


// ===== 83a8e0 GLXPlayerUser::getUserGamePID(int) =====
int __fastcall GLXPlayerUser::getUserGamePID(GLXPlayerUser *this, int a2)
{
  int v3; // r3

  if ( a2 < 0 )
    return 0;
  v3 = *((_DWORD *)this + 28);
  if ( v3 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 83a908 GLXPlayerUser::getUserGameName(int) =====
int __fastcall GLXPlayerUser::getUserGameName(GLXPlayerUser *this, int a2)
{
  int v3; // r3

  if ( a2 < 0 )
    return 0;
  v3 = *((_DWORD *)this + 29);
  if ( v3 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 83a930 GLXPlayerUser::getUserGameTrophy(int) =====
int __fastcall GLXPlayerUser::getUserGameTrophy(GLXPlayerUser *this, int a2)
{
  int v3; // r3

  if ( a2 >= 0 && (v3 = *((_DWORD *)this + 30)) != 0 )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return -1;
}


// ===== 83a954 GLXPlayerUser::getCurrentUserState(void) =====
int __fastcall GLXPlayerUser::getCurrentUserState(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 33);
}


// ===== 83a95c GLXPlayerUser::getUserReputation(void) =====
__int64 __fastcall GLXPlayerUser::getUserReputation(GLXPlayerUser *this)
{
  return *((_QWORD *)this + 18);
}


// ===== 83a964 GLXPlayerUser::getUserBadReputationCount(void) =====
int __fastcall GLXPlayerUser::getUserBadReputationCount(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 38);
}


// ===== 83a96c GLXPlayerUser::getUserGoodReputationCount(void) =====
int __fastcall GLXPlayerUser::getUserGoodReputationCount(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 39);
}


// ===== 83a974 GLXPlayerUser::getUserTrophy(void) =====
int __fastcall GLXPlayerUser::getUserTrophy(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 83a97c GLXPlayerUser::getUserBestScore(void) =====
int __fastcall GLXPlayerUser::getUserBestScore(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 41);
}

