// ===== 8b70cc std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::seekoff(long,int,int) =====
std::streampos *__fastcall std::wstreambuf::seekoff(
        std::streampos *__return_ptr retstr,
        std::wstreambuf *const this,
        std::streamoff a3,
        int a4,
        int a5)
{
  retstr->_M_pos = -1;
  retstr->_M_st.dummy = 0;
  return retstr;
}


// ===== 8b70d8 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::seekpos(std::fpos<mbstate_t>,int) =====
std::streampos *__fastcall std::wstreambuf::seekpos(
        std::streampos *__return_ptr retstr,
        std::wstreambuf *const this,
        std::streampos a3,
        int a4)
{
  retstr->_M_pos = -1;
  retstr->_M_st.dummy = 0;
  return retstr;
}


// ===== 8b70e8 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::sync(void) =====
int __fastcall std::wstreambuf::sync(std::wstreambuf *const this)
{
  return 0;
}


// ===== 8b70ec std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::showmanyc(void) =====
std::streamsize __fastcall std::wstreambuf::showmanyc(std::wstreambuf *const this)
{
  return 0;
}


// ===== 8b70f0 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::underflow(void) =====
int __fastcall std::wstreambuf::underflow(std::wstreambuf *const this)
{
  return -1;
}


// ===== 8b70f8 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::pbackfail(int) =====
int __fastcall std::wstreambuf::pbackfail(std::wstreambuf *const this, int a2)
{
  return -1;
}


// ===== 8b7100 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::overflow(int) =====
int __fastcall std::wstreambuf::overflow(std::wstreambuf *const this, int a2)
{
  return -1;
}


// ===== 8b7108 std::basic_filebuf<char,std::char_traits<char>>::sync(void) =====
int __fastcall std::filebuf::sync(std::filebuf *const this)
{
  int result; // r0

  if ( !this->_M_in_output_mode )
    return 0;
  result = (*((int (__fastcall **)(std::filebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1);
  if ( result != -1 )
    return 0;
  return result;
}


// ===== 8b7128 std::basic_filebuf<char,std::char_traits<char>>::pbackfail(int) =====
int __fastcall std::filebuf::pbackfail(std::filebuf *const this, int __c)
{
  char *M_gnext; // r2
  char *M_gbegin; // r5
  char *v4; // r3
  char v5; // r4
  char *v6; // r6
  char *v7; // r3
  int result; // r0
  char *M_gend; // r3

  if ( !this->_M_in_input_mode )
    return -1;
  M_gnext = this->_M_gnext;
  M_gbegin = this->_M_gbegin;
  if ( M_gnext == M_gbegin )
  {
    if ( __c == -1 )
      return -1;
    goto LABEL_6;
  }
  if ( __c == -1 )
  {
    this->_M_gnext = M_gnext - 1;
    return (unsigned __int8)*(M_gnext - 1);
  }
  v4 = M_gnext - 1;
  v5 = __c;
  if ( (unsigned __int8)*(M_gnext - 1) != (unsigned __int8)__c && this->_M_mmap_base )
  {
LABEL_6:
    v6 = (char *)(this + 1);
    if ( !this->_M_in_putback_mode )
    {
      M_gend = this->_M_gend;
      this->_M_saved_gptr = M_gnext;
      this->_M_saved_egptr = M_gend;
      v4 = &this->_M_pback_buf[7];
      this->_M_saved_eback = M_gbegin;
      this->_M_gbegin = &this->_M_pback_buf[7];
      this->_M_gnext = &this->_M_pback_buf[7];
      this->_M_gend = v6;
      this->_M_in_putback_mode = 1;
      v5 = __c;
      goto LABEL_13;
    }
    if ( this->_M_pback_buf != M_gbegin )
    {
      v7 = this->_M_gend;
      this->_M_gend = v6;
      v4 = v7 - 1;
      this->_M_gbegin = v4;
      this->_M_gnext = v4;
      v5 = __c;
LABEL_13:
      *v4 = v5;
      return __c;
    }
    return -1;
  }
  this->_M_gnext = v4;
  result = (unsigned __int8)*v4;
  if ( result != (unsigned __int8)__c )
    goto LABEL_13;
  return result;
}


// ===== 8b71b0 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::~basic_streambuf() =====
std::wstreambuf *__fastcall std::wstreambuf::~wstreambuf(std::wstreambuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_9945D8;
  std::locale::~locale(&this->_M_locale);
  return this;
}


// ===== 8b71d4 std::basic_filebuf<char,std::char_traits<char>>::_M_deallocate_buffers(void) =====
void __fastcall std::filebuf::_M_deallocate_buffers(std::filebuf *const this)
{
  JUMPOUT(0x8B6E5A);
}


// ===== 8b71f8 std::basic_filebuf<char,std::char_traits<char>>::_M_allocate_buffers(char *,int) =====
void __fastcall std::filebuf::_M_allocate_buffers(std::filebuf *const this, char *__buf, std::streamsize __n)
{
  if ( __buf )
  {
    this->_M_int_buf = __buf;
    this->_M_int_buf_dynamic = 0;
    (*((void (__fastcall **)(const std::codecvt<char,char,mbstate_t> *))this->_M_codecvt->_vptr.facet + 8))(this->_M_codecvt);
    this->_M_ext_buf = nullptr;
    JUMPOUT(0x8B76F6);
  }
  JUMPOUT(0x8B76F8);
}


// ===== 8b7264 std::basic_filebuf<char,std::char_traits<char>>::_M_switch_to_output_mode(void) =====
int __fastcall std::filebuf::_M_switch_to_output_mode(std::filebuf *const this)
{
  int M_openmode; // r2
  char *M_int_buf; // r1
  char *M_int_buf_EOS; // r3

  if ( !this->_M_base._M_is_open )
    return 0;
  M_openmode = this->_M_base._M_openmode;
  if ( (M_openmode & 0x10) == 0 || this->_M_in_input_mode || this->_M_in_error_mode )
    return 0;
  M_int_buf = this->_M_int_buf;
  if ( !M_int_buf )
    JUMPOUT(0x8B6C4E);
  if ( (M_openmode & 1) != 0 )
    this->_M_state.dummy = 0;
  M_int_buf_EOS = this->_M_int_buf_EOS;
  this->_M_pbegin = M_int_buf;
  this->_M_pend = M_int_buf_EOS - 1;
  this->_M_pnext = M_int_buf;
  this->_M_in_output_mode = 1;
  return 1;
}


// ===== 8b72e4 std::basic_filebuf<char,std::char_traits<char>>::setbuf(char *,int) =====
std::filebuf *__fastcall std::filebuf::setbuf(std::filebuf *const this, char *__buf, std::streamsize __n)
{
  if ( !this->_M_in_input_mode && !*(_WORD *)&this->_M_in_output_mode && !this->_M_int_buf )
  {
    if ( __n )
    {
      if ( __n > 0 && __buf )
        std::filebuf::_M_allocate_buffers(this, __buf, __n);
    }
    else if ( !__buf )
    {
      std::filebuf::_M_allocate_buffers(this, nullptr, 1);
    }
  }
  return this;
}


// ===== 8b7320 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_deallocate_buffers(void) =====
void __fastcall std::wfilebuf::_M_deallocate_buffers(std::wfilebuf *const this)
{
  JUMPOUT(0x8B6E5A);
}


// ===== 8b7344 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_allocate_buffers(wchar_t *,int) =====
void __fastcall std::wfilebuf::_M_allocate_buffers(std::wfilebuf *const this, wchar_t *__buf, std::streamsize __n)
{
  if ( __buf )
  {
    this->_M_int_buf = __buf;
    this->_M_int_buf_dynamic = 0;
    (*((void (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *))this->_M_codecvt->_vptr.facet + 8))(this->_M_codecvt);
    this->_M_ext_buf = nullptr;
  }
  JUMPOUT(0x8B76F6);
}


// ===== 8b73b0 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_allocate_buffers(void) =====
void __fastcall std::wfilebuf::_M_allocate_buffers(std::wfilebuf *const this)
{
  JUMPOUT(0x8B6C4E);
}


// ===== 8b73e4 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_switch_to_output_mode(void) =====
char *__fastcall std::wfilebuf::_M_switch_to_output_mode(std::wfilebuf *const this)
{
  int M_openmode; // r3
  wchar_t *M_int_buf; // r2
  wchar_t *M_int_buf_EOS; // r3
  int v6; // r0

  if ( !this->_M_base._M_is_open )
    return nullptr;
  M_openmode = this->_M_base._M_openmode;
  if ( (M_openmode & 0x10) == 0 || this->_M_in_input_mode || this->_M_in_error_mode )
    return nullptr;
  M_int_buf = this->_M_int_buf;
  if ( !M_int_buf )
  {
    std::wfilebuf::_M_allocate_buffers(this);
    if ( v6 )
    {
      M_openmode = this->_M_base._M_openmode;
      M_int_buf = this->_M_int_buf;
      goto LABEL_7;
    }
    return nullptr;
  }
LABEL_7:
  if ( (M_openmode & 1) != 0 )
    this->_M_state.dummy = 0;
  M_int_buf_EOS = this->_M_int_buf_EOS;
  this->_M_pbegin = M_int_buf;
  this->_M_pnext = M_int_buf;
  this->_M_pend = M_int_buf_EOS - 1;
  this->_M_in_output_mode = 1;
  return (char *)&dword_0 + 1;
}


// ===== 8b743c std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_switch_to_input_mode(void) =====
char *__fastcall std::wfilebuf::_M_switch_to_input_mode(std::wfilebuf *const this)
{
  char *M_ext_buf; // r3
  int v4; // r0

  if ( !this->_M_base._M_is_open )
    return nullptr;
  if ( (this->_M_base._M_openmode & 8) == 0 )
    return nullptr;
  if ( *(_WORD *)&this->_M_in_output_mode )
    return nullptr;
  if ( !this->_M_int_buf )
  {
    std::wfilebuf::_M_allocate_buffers(this);
    if ( !v4 )
      return nullptr;
  }
  M_ext_buf = this->_M_ext_buf;
  this->_M_ext_buf_converted = M_ext_buf;
  this->_M_ext_buf_end = M_ext_buf;
  this->_M_end_state.dummy = this->_M_state.dummy;
  this->_M_in_input_mode = 1;
  return (char *)&dword_0 + 1;
}


// ===== 8b747c std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::setbuf(wchar_t *,int) =====
std::wfilebuf *__fastcall std::wfilebuf::setbuf(std::wfilebuf *const this, wchar_t *__buf, std::streamsize __n)
{
  if ( !this->_M_in_input_mode && !*(_WORD *)&this->_M_in_output_mode && !this->_M_int_buf )
  {
    if ( __n )
    {
      if ( __n > 0 && __buf )
        std::wfilebuf::_M_allocate_buffers(this, __buf, __n);
    }
    else if ( !__buf )
    {
      std::wfilebuf::_M_allocate_buffers(this, nullptr, 1);
    }
  }
  return this;
}


// ===== 8b74b8 std::basic_filebuf<char,std::char_traits<char>>::overflow(int) =====
int __fastcall std::filebuf::overflow(std::filebuf *const this, int __c)
{
  char *M_int_buf; // r5
  char *v4; // r3
  char *M_pnext; // r6
  char *v6; // r1
  ptrdiff_t v7; // r2
  _BOOL4 v8; // r0
  char *M_ext_buf; // r3
  const std::codecvt<char,char,mbstate_t> *M_codecvt; // r0
  int v11; // r0
  std::_Filebuf_base *p_M_base; // [sp+10h] [bp-14h]
  char *v15; // [sp+18h] [bp-Ch] BYREF
  char *v16; // [sp+1Ch] [bp-8h] BYREF

  if ( !this->_M_in_output_mode && !std::filebuf::_M_switch_to_output_mode(this) )
    return -1;
  M_int_buf = this->_M_int_buf;
  v4 = this->_M_int_buf_EOS - 1;
  M_pnext = this->_M_pnext;
  this->_M_pbegin = M_int_buf;
  this->_M_pnext = M_int_buf;
  this->_M_pend = v4;
  if ( __c != -1 )
    *M_pnext++ = __c;
  if ( M_int_buf == M_pnext )
  {
LABEL_19:
    if ( __c == -1 )
      return 0;
    return __c;
  }
  p_M_base = &this->_M_base;
  while ( 1 )
  {
    M_ext_buf = this->_M_ext_buf;
    M_codecvt = this->_M_codecvt;
    v16 = M_int_buf;
    v15 = M_ext_buf;
    v11 = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *, mbstate_t *, char *, char *, char **, char *, char *, char **))M_codecvt->_vptr.facet
           + 2))(
            M_codecvt,
            &this->_M_state,
            M_int_buf,
            M_pnext,
            &v16,
            M_ext_buf,
            this->_M_ext_buf_EOS,
            &v15);
    if ( v11 == 3 )
      break;
    if ( v11 == 2 )
      goto LABEL_16;
    if ( v16 == M_pnext )
    {
      v6 = this->_M_ext_buf;
      v7 = this->_M_width * (M_pnext - M_int_buf);
      if ( v15 - v6 == v7 )
        goto LABEL_9;
      if ( this->_M_constant_width )
      {
LABEL_16:
        this->_M_in_output_mode = 0;
        this->_M_in_input_mode = 0;
        this->_M_in_error_mode = 1;
        this->_M_pbegin = nullptr;
        this->_M_pnext = nullptr;
        this->_M_pend = nullptr;
        return -1;
      }
    }
    else if ( this->_M_constant_width )
    {
      goto LABEL_16;
    }
    if ( M_int_buf == v16 )
      goto LABEL_16;
    v6 = this->_M_ext_buf;
    v7 = v15 - v6;
LABEL_9:
    v8 = std::_Filebuf_base::_M_write(p_M_base, v6, v7);
    if ( !v8 )
      goto LABEL_21;
    M_int_buf = v16;
    if ( v16 == M_pnext )
      goto LABEL_19;
  }
  v8 = std::_Filebuf_base::_M_write(p_M_base, M_int_buf, M_pnext - M_int_buf);
  if ( v8 )
    goto LABEL_19;
LABEL_21:
  this->_M_in_output_mode = v8;
  this->_M_in_input_mode = v8;
  this->_M_in_error_mode = 1;
  this->_M_pbegin = (char *)v8;
  this->_M_pnext = (char *)v8;
  this->_M_pend = (char *)v8;
  return -1;
}


// ===== 8b75f4 std::basic_filebuf<char,std::char_traits<char>>::_M_unshift(void) =====
int __fastcall std::filebuf::_M_unshift(std::filebuf *const this)
{
  mbstate_t *p_M_state; // r6
  std::_Filebuf_base *p_M_base; // r8
  int v4; // r0
  int v5; // r5
  char *v6; // r1
  char *M_ext_buf; // [sp+Ch] [bp-4h]

  if ( this->_M_in_output_mode && !this->_M_constant_width )
  {
    p_M_state = &this->_M_state;
    p_M_base = &this->_M_base;
    do
    {
      M_ext_buf = this->_M_ext_buf;
      v4 = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *, mbstate_t *))this->_M_codecvt->_vptr.facet
            + 4))(
             this->_M_codecvt,
             p_M_state);
      v5 = v4;
      if ( v4 == 3 )
        break;
      v6 = this->_M_ext_buf;
      if ( v4 )
      {
        if ( v4 == 2 )
          return 0;
      }
      else if ( v6 == M_ext_buf )
      {
        return 1;
      }
      if ( !std::_Filebuf_base::_M_write(p_M_base, v6, M_ext_buf - v6) )
        return 0;
    }
    while ( v5 == 1 );
  }
  return 1;
}


// ===== 8b7660 std::basic_filebuf<char,std::char_traits<char>>::_M_seek_init(bool) =====
int __fastcall std::filebuf::_M_seek_init(std::filebuf *const this, int __do_unshift)
{
  char *M_saved_eback; // r0
  char *M_saved_gptr; // r1
  _BOOL4 v7; // r0

  this->_M_in_error_mode = 0;
  if ( this->_M_in_output_mode )
  {
    v7 = (*((int (__fastcall **)(std::filebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1) != -1;
    if ( __do_unshift )
    {
      if ( v7 && std::filebuf::_M_unshift(this) )
        goto LABEL_2;
    }
    else if ( v7 )
    {
      goto LABEL_2;
    }
    this->_M_in_output_mode = 0;
    this->_M_in_error_mode = 1;
    this->_M_pbegin = nullptr;
    this->_M_pnext = nullptr;
    this->_M_pend = nullptr;
    return 0;
  }
LABEL_2:
  if ( !this->_M_in_input_mode || !this->_M_in_putback_mode )
    return 1;
  M_saved_eback = this->_M_saved_eback;
  M_saved_gptr = this->_M_saved_gptr;
  this->_M_gend = this->_M_saved_egptr;
  this->_M_gbegin = M_saved_eback;
  this->_M_gnext = M_saved_gptr;
  this->_M_in_putback_mode = 0;
  return 1;
}


// ===== 8b76dc std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::overflow(int) =====
wchar_t __fastcall std::wfilebuf::overflow(std::wfilebuf *const this, wchar_t __c)
{
  wchar_t *M_int_buf; // r4
  wchar_t *v4; // r3
  wchar_t *M_pnext; // r6
  char *v6; // r1
  ptrdiff_t v7; // r2
  char *M_ext_buf; // r3
  const std::codecvt<wchar_t,char,mbstate_t> *M_codecvt; // r0
  int v10; // r0
  char *v14; // [sp+18h] [bp-Ch] BYREF
  wchar_t *v15; // [sp+1Ch] [bp-8h] BYREF

  if ( !this->_M_in_output_mode && !std::wfilebuf::_M_switch_to_output_mode(this) )
    return -1;
  M_int_buf = this->_M_int_buf;
  v4 = this->_M_int_buf_EOS - 1;
  M_pnext = this->_M_pnext;
  this->_M_pbegin = M_int_buf;
  this->_M_pnext = M_int_buf;
  this->_M_pend = v4;
  if ( __c != -1 )
    *M_pnext++ = __c;
  if ( M_int_buf == M_pnext )
    return __c != -1 ? __c : 0;
  while ( 1 )
  {
    M_ext_buf = this->_M_ext_buf;
    M_codecvt = this->_M_codecvt;
    v15 = M_int_buf;
    v14 = M_ext_buf;
    v10 = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *, mbstate_t *, wchar_t *, wchar_t *, wchar_t **, char *, char *, char **))M_codecvt->_vptr.facet
           + 2))(
            M_codecvt,
            &this->_M_state,
            M_int_buf,
            M_pnext,
            &v15,
            M_ext_buf,
            this->_M_ext_buf_EOS,
            &v14);
    if ( v10 == 3 || v10 == 2 )
      break;
    if ( v15 == M_pnext )
    {
      v6 = this->_M_ext_buf;
      v7 = this->_M_width * (M_pnext - M_int_buf);
      if ( v14 - v6 == v7 )
        goto LABEL_9;
      if ( this->_M_constant_width )
        break;
    }
    else if ( this->_M_constant_width )
    {
      break;
    }
    if ( M_int_buf == v15 )
      break;
    v6 = this->_M_ext_buf;
    v7 = v14 - v6;
LABEL_9:
    if ( !std::_Filebuf_base::_M_write(&this->_M_base, v6, v7) )
      break;
    M_int_buf += v15 - M_int_buf;
    if ( M_int_buf == M_pnext )
      return __c != -1 ? __c : 0;
  }
  this->_M_in_output_mode = 0;
  this->_M_in_input_mode = 0;
  this->_M_in_error_mode = 1;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  return -1;
}


// ===== 8b7814 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_unshift(void) =====
int __fastcall std::wfilebuf::_M_unshift(std::wfilebuf *const this)
{
  mbstate_t *p_M_state; // r6
  std::_Filebuf_base *p_M_base; // r8
  int v4; // r0
  int v5; // r5
  char *v6; // r1
  char *M_ext_buf; // [sp+Ch] [bp-4h]

  if ( this->_M_in_output_mode && !this->_M_constant_width )
  {
    p_M_state = &this->_M_state;
    p_M_base = &this->_M_base;
    do
    {
      M_ext_buf = this->_M_ext_buf;
      v4 = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *, mbstate_t *))this->_M_codecvt->_vptr.facet
            + 4))(
             this->_M_codecvt,
             p_M_state);
      v5 = v4;
      if ( v4 == 3 )
        break;
      v6 = this->_M_ext_buf;
      if ( v4 )
      {
        if ( v4 == 2 )
          return 0;
      }
      else if ( v6 == M_ext_buf )
      {
        return 1;
      }
      if ( !std::_Filebuf_base::_M_write(p_M_base, v6, M_ext_buf - v6) )
        return 0;
    }
    while ( v5 == 1 );
  }
  return 1;
}


// ===== 8b7880 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_seek_init(bool) =====
int __fastcall std::wfilebuf::_M_seek_init(std::wfilebuf *const this, int __do_unshift)
{
  wchar_t *M_saved_eback; // r0
  wchar_t *M_saved_gptr; // r1
  _BOOL4 v7; // r0

  this->_M_in_error_mode = 0;
  if ( this->_M_in_output_mode )
  {
    v7 = (*((int (__fastcall **)(std::wfilebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1) != -1;
    if ( __do_unshift )
    {
      if ( v7 && std::wfilebuf::_M_unshift(this) )
        goto LABEL_2;
    }
    else if ( v7 )
    {
      goto LABEL_2;
    }
    this->_M_in_output_mode = 0;
    this->_M_in_error_mode = 1;
    this->_M_pbegin = nullptr;
    this->_M_pnext = nullptr;
    this->_M_pend = nullptr;
    return 0;
  }
LABEL_2:
  if ( !this->_M_in_input_mode || !this->_M_in_putback_mode )
    return 1;
  M_saved_eback = this->_M_saved_eback;
  M_saved_gptr = this->_M_saved_gptr;
  this->_M_gend = this->_M_saved_egptr;
  this->_M_gbegin = M_saved_eback;
  this->_M_gnext = M_saved_gptr;
  this->_M_in_putback_mode = 0;
  return 1;
}


// ===== 8b78fc std::basic_filebuf<char,std::char_traits<char>>::underflow(void) =====
int __fastcall std::filebuf::underflow(std::filebuf *const this)
{
  return std::_Underflow<char,std::char_traits<char>>::_M_doit(this);
}


// ===== 8b7904 std::basic_filebuf<char,std::char_traits<char>>::showmanyc(void) =====
std::streamsize __fastcall std::filebuf::showmanyc(std::filebuf *const this)
{
  std::streamsize result; // r0
  std::_Filebuf_base *p_M_base; // r4
  int v4; // r5
  std::streamoff v5; // r0

  if ( !this->_M_base._M_is_open || *(_WORD *)&this->_M_in_output_mode )
    return -1;
  if ( this->_M_in_putback_mode )
    return this->_M_gend - this->_M_gnext;
  result = 0;
  if ( this->_M_constant_width )
  {
    p_M_base = &this->_M_base;
    v4 = std::_Filebuf_base::_M_seek(p_M_base, 0, 2);
    v5 = std::_Filebuf_base::_M_file_size(p_M_base);
    if ( v4 >= v5 )
      return 0;
    result = v5 - v4;
    if ( v4 < 0 )
      return 0;
  }
  return result;
}


// ===== 8b7958 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::showmanyc(void) =====
std::streamsize __fastcall std::wfilebuf::showmanyc(std::wfilebuf *const this)
{
  std::streamsize result; // r0
  std::_Filebuf_base *p_M_base; // r4
  int v4; // r5
  std::streamoff v5; // r0

  if ( !this->_M_base._M_is_open || *(_WORD *)&this->_M_in_output_mode )
    return -1;
  if ( this->_M_in_putback_mode )
    return this->_M_gend - this->_M_gnext;
  result = 0;
  if ( this->_M_constant_width )
  {
    p_M_base = &this->_M_base;
    v4 = std::_Filebuf_base::_M_seek(p_M_base, 0, 2);
    v5 = std::_Filebuf_base::_M_file_size(p_M_base);
    if ( v4 >= v5 )
      return 0;
    result = v5 - v4;
    if ( v4 < 0 )
      return 0;
  }
  return result;
}


// ===== 8b79b0 std::basic_filebuf<char,std::char_traits<char>>::_M_seek_return(long,mbstate_t) =====
std::streampos *__fastcall std::filebuf::_M_seek_return(
        std::streampos *__return_ptr retstr,
        std::filebuf *const this,
        std::streamoff a3,
        mbstate_t __state)
{
  void *M_mmap_base; // r1

  if ( a3 != -1 )
  {
    if ( this->_M_in_input_mode )
    {
      M_mmap_base = this->_M_mmap_base;
      if ( M_mmap_base )
      {
        std::_Filebuf_base::_M_unmap(&this->_M_base, M_mmap_base, this->_M_mmap_len);
        this->_M_mmap_base = nullptr;
        this->_M_mmap_len = 0;
      }
      this->_M_in_input_mode = 0;
    }
    this->_M_in_input_mode = 0;
    this->_M_in_output_mode = 0;
    this->_M_in_putback_mode = 0;
    this->_M_in_error_mode = 0;
    this->_M_gbegin = nullptr;
    this->_M_gnext = nullptr;
    this->_M_gend = nullptr;
    this->_M_pbegin = nullptr;
    this->_M_pnext = nullptr;
    this->_M_pend = nullptr;
  }
  retstr->_M_pos = a3;
  retstr->_M_st = __state;
  return retstr;
}


// ===== 8b7a08 std::basic_filebuf<char,std::char_traits<char>>::seekpos(std::fpos<mbstate_t>,int) =====
std::streampos *__fastcall std::filebuf::seekpos(
        std::streampos *__return_ptr retstr,
        std::filebuf *const this,
        std::streampos __pos,
        int a4)
{
  mbstate_t v4; // r7
  std::streamoff M_pos; // r6

  v4.dummy = __pos._M_st.dummy;
  M_pos = __pos._M_pos;
  if ( !this->_M_base._M_is_open )
    goto LABEL_2;
  if ( !std::filebuf::_M_seek_init(this, 1) )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  if ( M_pos == -1 || std::_Filebuf_base::_M_seek(&this->_M_base, M_pos, 1) == -1 )
  {
LABEL_2:
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
  }
  else
  {
    this->_M_state = v4;
    std::filebuf::_M_seek_return(retstr, this, M_pos, v4);
  }
  return retstr;
}


// ===== 8b7a6c std::basic_filebuf<char,std::char_traits<char>>::seekoff(long,int,int) =====
std::streampos *__fastcall std::filebuf::seekoff(
        std::streampos *__return_ptr retstr,
        std::filebuf *const this,
        std::streamoff a3,
        int __whence,
        int a5)
{
  int M_is_open; // r3
  _BOOL4 v10; // r3
  _BYTE *M_mmap_base; // r3
  unsigned int v12; // r7
  int M_constant_width; // r2
  std::_Filebuf_base *p_M_base; // r0
  std::streamoff v16; // r1
  int v17; // r2
  std::streamoff v18; // r0
  char *M_ext_buf; // r7
  int v20; // r2
  char *M_ext_buf_end; // r3
  const std::codecvt<char,char,mbstate_t> *M_codecvt; // r0
  char *v23; // r2
  int v24; // r7
  int v25; // r7
  std::streamoff v26; // r0
  char *v27; // r2
  mbstate_t __state; // [sp+Ch] [bp-8h] BYREF

  M_is_open = this->_M_base._M_is_open;
  if ( !this->_M_base._M_is_open )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = M_is_open;
    return retstr;
  }
  v10 = a3 != 0;
  if ( a3 )
  {
    M_constant_width = this->_M_constant_width;
    if ( !this->_M_constant_width )
    {
      retstr->_M_pos = -1;
      retstr->_M_st.dummy = M_constant_width;
      return retstr;
    }
  }
  if ( !std::filebuf::_M_seek_init(this, __whence != 2 || v10) )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  if ( __whence == 4 || __whence == 1 || !this->_M_in_input_mode )
  {
    p_M_base = &this->_M_base;
    v16 = this->_M_width * a3;
    v17 = __whence;
LABEL_16:
    v18 = std::_Filebuf_base::_M_seek(p_M_base, v16, v17);
    std::filebuf::_M_seek_return(retstr, this, v18, 0);
    return retstr;
  }
  M_mmap_base = this->_M_mmap_base;
  if ( M_mmap_base )
  {
    v12 = &M_mmap_base[this->_M_mmap_len] - this->_M_gnext;
    if ( !a3 )
    {
LABEL_9:
      retstr->_M_pos = std::_Filebuf_base::_M_seek(&this->_M_base, 0, 2) - v12;
      retstr->_M_st.dummy = a3;
      return retstr;
    }
    goto LABEL_20;
  }
  if ( this->_M_constant_width )
  {
    M_ext_buf = this->_M_ext_buf;
    v20 = this->_M_width * (this->_M_gnext - this->_M_gbegin);
    M_ext_buf_end = this->_M_ext_buf_end;
    if ( v20 <= M_ext_buf_end - M_ext_buf )
    {
      v12 = M_ext_buf_end - &M_ext_buf[v20];
      if ( !a3 )
        goto LABEL_9;
LABEL_20:
      p_M_base = &this->_M_base;
      v16 = a3 - v12;
      v17 = 2;
      goto LABEL_16;
    }
LABEL_21:
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  M_codecvt = this->_M_codecvt;
  v23 = this->_M_ext_buf;
  v24 = this->_M_gnext - this->_M_gbegin;
  __state.dummy = this->_M_state.dummy;
  v25 = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *, mbstate_t *, char *, char *, int))M_codecvt->_vptr.facet
         + 7))(
          M_codecvt,
          &__state,
          v23,
          this->_M_ext_buf_converted,
          v24);
  v26 = std::_Filebuf_base::_M_seek(&this->_M_base, 0, 2);
  if ( v26 == -1 )
    goto LABEL_21;
  v27 = &this->_M_ext_buf[v25 + v26 - (unsigned int)this->_M_ext_buf_end];
  if ( (int)v27 < 0 )
    goto LABEL_21;
  if ( a3 )
  {
    std::filebuf::_M_seek_return(retstr, this, (std::streamoff)v27, __state);
  }
  else
  {
    retstr->_M_pos = (std::streamoff)v27;
    retstr->_M_st.dummy = 0;
  }
  return retstr;
}


// ===== 8b7ba4 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_exit_input_mode(void) =====
void __fastcall std::wfilebuf::_M_exit_input_mode(std::wfilebuf *const this)
{
  void *M_mmap_base; // r1

  M_mmap_base = this->_M_mmap_base;
  if ( M_mmap_base )
  {
    std::_Filebuf_base::_M_unmap(&this->_M_base, M_mmap_base, this->_M_mmap_len);
    this->_M_mmap_base = nullptr;
    this->_M_mmap_len = 0;
  }
  this->_M_in_input_mode = 0;
}


// ===== 8b7bc4 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_seek_return(long,mbstate_t) =====
std::streampos *__fastcall std::wfilebuf::_M_seek_return(
        std::streampos *__return_ptr retstr,
        std::wfilebuf *const this,
        std::streamoff a3,
        mbstate_t __state)
{
  if ( a3 != -1 )
  {
    if ( this->_M_in_input_mode )
      std::wfilebuf::_M_exit_input_mode(this);
    this->_M_in_input_mode = 0;
    this->_M_in_output_mode = 0;
    this->_M_in_putback_mode = 0;
    this->_M_in_error_mode = 0;
    this->_M_gbegin = nullptr;
    this->_M_gnext = nullptr;
    this->_M_gend = nullptr;
    this->_M_pbegin = nullptr;
    this->_M_pnext = nullptr;
    this->_M_pend = nullptr;
  }
  retstr->_M_pos = a3;
  retstr->_M_st = __state;
  return retstr;
}


// ===== 8b7c08 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::seekpos(std::fpos<mbstate_t>,int) =====
std::streampos *__fastcall std::wfilebuf::seekpos(
        std::streampos *__return_ptr retstr,
        std::wfilebuf *const this,
        std::streampos __pos,
        int a4)
{
  mbstate_t v4; // r7
  std::streamoff M_pos; // r6

  v4.dummy = __pos._M_st.dummy;
  M_pos = __pos._M_pos;
  if ( !this->_M_base._M_is_open )
    goto LABEL_2;
  if ( !std::wfilebuf::_M_seek_init(this, 1) )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  if ( M_pos == -1 || std::_Filebuf_base::_M_seek(&this->_M_base, M_pos, 1) == -1 )
  {
LABEL_2:
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
  }
  else
  {
    this->_M_state = v4;
    std::wfilebuf::_M_seek_return(retstr, this, M_pos, v4);
  }
  return retstr;
}


// ===== 8b7c6c std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::seekoff(long,int,int) =====
std::streampos *__fastcall std::wfilebuf::seekoff(
        std::streampos *__return_ptr retstr,
        std::wfilebuf *const this,
        std::streamoff a3,
        int __whence,
        int a5)
{
  int M_is_open; // r3
  _BOOL4 v10; // r3
  char *M_mmap_base; // r3
  int v12; // r7
  int M_constant_width; // r2
  std::_Filebuf_base *p_M_base; // r0
  std::streamoff v16; // r1
  int v17; // r2
  std::streamoff v18; // r0
  char *M_ext_buf; // r7
  int v20; // r2
  char *M_ext_buf_end; // r3
  const std::codecvt<wchar_t,char,mbstate_t> *M_codecvt; // r0
  char *v23; // r2
  int v24; // r7
  int v25; // r7
  std::streamoff v26; // r0
  char *v27; // r2
  mbstate_t __state; // [sp+Ch] [bp-8h] BYREF

  M_is_open = this->_M_base._M_is_open;
  if ( !this->_M_base._M_is_open )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = M_is_open;
    return retstr;
  }
  v10 = a3 != 0;
  if ( a3 )
  {
    M_constant_width = this->_M_constant_width;
    if ( !this->_M_constant_width )
    {
      retstr->_M_pos = -1;
      retstr->_M_st.dummy = M_constant_width;
      return retstr;
    }
  }
  if ( !std::wfilebuf::_M_seek_init(this, __whence != 2 || v10) )
  {
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  if ( __whence == 4 || __whence == 1 || !this->_M_in_input_mode )
  {
    p_M_base = &this->_M_base;
    v16 = this->_M_width * a3;
    v17 = __whence;
LABEL_16:
    v18 = std::_Filebuf_base::_M_seek(p_M_base, v16, v17);
    std::wfilebuf::_M_seek_return(retstr, this, v18, 0);
    return retstr;
  }
  M_mmap_base = (char *)this->_M_mmap_base;
  if ( M_mmap_base )
  {
    v12 = this->_M_mmap_len - (((char *)this->_M_gnext - M_mmap_base) >> 2);
    if ( !a3 )
    {
LABEL_9:
      retstr->_M_pos = std::_Filebuf_base::_M_seek(&this->_M_base, 0, 2) - v12;
      retstr->_M_st.dummy = a3;
      return retstr;
    }
    goto LABEL_20;
  }
  if ( this->_M_constant_width )
  {
    M_ext_buf = this->_M_ext_buf;
    v20 = this->_M_width * (this->_M_gnext - this->_M_gbegin);
    M_ext_buf_end = this->_M_ext_buf_end;
    if ( v20 <= M_ext_buf_end - M_ext_buf )
    {
      v12 = M_ext_buf_end - &M_ext_buf[v20];
      if ( !a3 )
        goto LABEL_9;
LABEL_20:
      p_M_base = &this->_M_base;
      v16 = a3 - v12;
      v17 = 2;
      goto LABEL_16;
    }
LABEL_21:
    retstr->_M_pos = -1;
    retstr->_M_st.dummy = 0;
    return retstr;
  }
  M_codecvt = this->_M_codecvt;
  v23 = this->_M_ext_buf;
  v24 = this->_M_gnext - this->_M_gbegin;
  __state.dummy = this->_M_state.dummy;
  v25 = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *, mbstate_t *, char *, char *, int))M_codecvt->_vptr.facet
         + 7))(
          M_codecvt,
          &__state,
          v23,
          this->_M_ext_buf_converted,
          v24);
  v26 = std::_Filebuf_base::_M_seek(&this->_M_base, 0, 2);
  if ( v26 == -1 )
    goto LABEL_21;
  v27 = &this->_M_ext_buf[v25 + v26 - (unsigned int)this->_M_ext_buf_end];
  if ( (int)v27 < 0 )
    goto LABEL_21;
  if ( a3 )
  {
    std::wfilebuf::_M_seek_return(retstr, this, (std::streamoff)v27, __state);
  }
  else
  {
    retstr->_M_pos = (std::streamoff)v27;
    retstr->_M_st.dummy = 0;
  }
  return retstr;
}


// ===== 8b7dac std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::~basic_streambuf() =====
void __fastcall std::wstreambuf::~wstreambuf(std::wstreambuf *const this)
{
  std::wstreambuf::~wstreambuf(this);
  JUMPOUT(0x8B82B4);
}


// ===== 8b7dc0 std::basic_filebuf<char,std::char_traits<char>>::close(void) =====
std::filebuf *__fastcall std::filebuf::close(std::filebuf *const this)
{
  int v2; // r5
  std::streamoff M_in_output_mode; // r7
  std::_Filebuf_base *p_M_base; // r6
  _BOOL4 v5; // r0
  void *M_mmap_base; // r1

  v2 = this->_M_base._M_is_open != 0;
  M_in_output_mode = this->_M_in_output_mode;
  if ( this->_M_in_output_mode )
  {
    if ( this->_M_base._M_is_open )
      v2 &= -((*((int (__fastcall **)(std::filebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1) != -1);
    std::filebuf::_M_unshift(this);
    p_M_base = &this->_M_base;
  }
  else
  {
    p_M_base = &this->_M_base;
    if ( this->_M_in_input_mode )
    {
      M_mmap_base = this->_M_mmap_base;
      if ( M_mmap_base )
      {
        std::_Filebuf_base::_M_unmap(&this->_M_base, M_mmap_base, this->_M_mmap_len);
        this->_M_mmap_base = (void *)M_in_output_mode;
        this->_M_mmap_len = M_in_output_mode;
      }
      this->_M_in_input_mode = 0;
    }
  }
  v5 = std::_Filebuf_base::_M_close(p_M_base);
  this->_M_end_state.dummy = 0;
  this->_M_state.dummy = 0;
  this->_M_ext_buf_end = nullptr;
  this->_M_ext_buf_converted = nullptr;
  this->_M_mmap_base = nullptr;
  this->_M_mmap_len = 0;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  this->_M_saved_egptr = nullptr;
  this->_M_saved_gptr = nullptr;
  this->_M_saved_eback = nullptr;
  this->_M_in_putback_mode = 0;
  this->_M_in_error_mode = 0;
  this->_M_in_output_mode = 0;
  this->_M_in_input_mode = 0;
  return (v5 ? v2 : 0) != 0 ? this : nullptr;
}


// ===== 8b7e68 std::basic_filebuf<char,std::char_traits<char>>::~basic_filebuf() =====
std::filebuf *__fastcall std::filebuf::~filebuf(std::filebuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994548;
  std::filebuf::close(this);
  std::filebuf::_M_deallocate_buffers(this);
  this->_vptr.basic_streambuf = (int (**)(...))off_95B938;
  std::locale::~locale(&this->_M_locale);
  return this;
}


// ===== 8b7ea4 std::basic_filebuf<char,std::char_traits<char>>::~basic_filebuf() =====
void __fastcall std::filebuf::~filebuf(std::filebuf *const this)
{
  std::filebuf::~filebuf(this);
  JUMPOUT(0x8B82B4);
}


// ===== 8b7eb8 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::close(void) =====
std::wfilebuf *__fastcall std::wfilebuf::close(std::wfilebuf *const this)
{
  int v2; // r5
  _BOOL4 v3; // r0

  v2 = this->_M_base._M_is_open != 0;
  if ( this->_M_in_output_mode )
  {
    if ( this->_M_base._M_is_open )
      v2 &= -((*((int (__fastcall **)(std::wfilebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1) != -1);
    std::wfilebuf::_M_unshift(this);
  }
  else if ( this->_M_in_input_mode )
  {
    std::wfilebuf::_M_exit_input_mode(this);
  }
  v3 = std::_Filebuf_base::_M_close(&this->_M_base);
  this->_M_end_state.dummy = 0;
  this->_M_state.dummy = 0;
  this->_M_ext_buf_end = nullptr;
  this->_M_ext_buf_converted = nullptr;
  this->_M_mmap_base = nullptr;
  this->_M_mmap_len = 0;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  this->_M_saved_egptr = nullptr;
  this->_M_saved_gptr = nullptr;
  this->_M_saved_eback = nullptr;
  this->_M_in_putback_mode = 0;
  this->_M_in_error_mode = 0;
  this->_M_in_output_mode = 0;
  this->_M_in_input_mode = 0;
  return (v3 ? v2 : 0) != 0 ? this : nullptr;
}


// ===== 8b7f48 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::~basic_filebuf() =====
std::wfilebuf *__fastcall std::wfilebuf::~wfilebuf(std::wfilebuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994590;
  std::wfilebuf::close(this);
  std::wfilebuf::_M_deallocate_buffers(this);
  this->_vptr.basic_streambuf = (int (**)(...))&off_9945D8;
  std::locale::~locale(&this->_M_locale);
  return this;
}


// ===== 8b7f84 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::~basic_filebuf() =====
void __fastcall std::wfilebuf::~wfilebuf(std::wfilebuf *const this)
{
  std::wfilebuf::~wfilebuf(this);
  JUMPOUT(0x8B82B4);
}


// ===== 8b7f98 std::basic_filebuf<char,std::char_traits<char>>::_M_setup_codecvt(std::locale const&,bool) =====
void __fastcall std::filebuf::_M_setup_codecvt(
        std::filebuf *const this,
        const std::locale *const __loc,
        int __on_imbue)
{
  const std::codecvt<char,char,mbstate_t> *v6; // r0
  int v7; // r0
  int v8; // r3
  int v9; // r5
  const std::codecvt<char,char,mbstate_t> *M_codecvt; // r0

  if ( std::locale::_M_get_facet(__loc, &std::codecvt<char,char,mbstate_t>::id) )
  {
    v6 = (const std::codecvt<char,char,mbstate_t> *)std::locale::_M_use_facet(
                                                      __loc,
                                                      &std::codecvt<char,char,mbstate_t>::id);
    this->_M_codecvt = v6;
    v7 = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *))v6->_vptr.facet + 5))(v6);
    v8 = 1;
    v9 = v7;
    if ( v7 > 0 )
      v8 = v7;
    M_codecvt = this->_M_codecvt;
    this->_M_width = v8;
    this->_M_max_width = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *))M_codecvt->_vptr.facet + 8))(M_codecvt);
    this->_M_constant_width = (v9 >> 31) - v9 < 0;
    this->_M_always_noconv = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *))this->_M_codecvt->_vptr.facet
                              + 6))(this->_M_codecvt);
  }
  else
  {
    this->_M_max_width = 1;
    this->_M_width = 1;
    this->_M_codecvt = nullptr;
    this->_M_always_noconv = 0;
    this->_M_constant_width = 0;
    if ( __on_imbue )
      std::locale::_M_use_facet(__loc, &std::codecvt<char,char,mbstate_t>::id);
  }
}


// ===== 8b8018 std::basic_filebuf<char,std::char_traits<char>>::basic_filebuf(void) =====
std::filebuf *__fastcall std::filebuf::basic_filebuf(std::filebuf *const this)
{
  std::locale v3; // [sp+4h] [bp-4h] BYREF

  this->_vptr.basic_streambuf = (int (**)(...))off_95B938;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  std::locale::locale(&this->_M_locale);
  this->_vptr.basic_streambuf = (int (**)(...))&off_994548;
  std::_Filebuf_base::_Filebuf_base(&this->_M_base);
  this->_M_constant_width = 0;
  this->_M_always_noconv = 0;
  this->_M_int_buf_dynamic = 0;
  this->_M_in_input_mode = 0;
  this->_M_in_output_mode = 0;
  this->_M_in_error_mode = 0;
  this->_M_in_putback_mode = 0;
  this->_M_int_buf = nullptr;
  this->_M_int_buf_EOS = nullptr;
  this->_M_ext_buf = nullptr;
  this->_M_ext_buf_EOS = nullptr;
  this->_M_ext_buf_converted = nullptr;
  this->_M_ext_buf_end = nullptr;
  this->_M_state.dummy = 0;
  this->_M_end_state.dummy = 0;
  this->_M_mmap_base = nullptr;
  this->_M_mmap_len = 0;
  this->_M_saved_eback = nullptr;
  this->_M_saved_gptr = nullptr;
  this->_M_saved_egptr = nullptr;
  this->_M_codecvt = nullptr;
  this->_M_width = 1;
  this->_M_max_width = 1;
  std::locale::locale(&v3);
  std::filebuf::_M_setup_codecvt(this, &v3, 0);
  std::locale::~locale(&v3);
  return this;
}


// ===== 8b80b8 std::basic_filebuf<char,std::char_traits<char>>::imbue(std::locale const&) =====
void __fastcall std::filebuf::imbue(std::filebuf *const this, const std::locale *const __loc)
{
  if ( !this->_M_in_input_mode && !*(_WORD *)&this->_M_in_output_mode )
    std::filebuf::_M_setup_codecvt(this, __loc, 1);
}


// ===== 8b80d4 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_setup_codecvt(std::locale const&,bool) =====
void __fastcall std::wfilebuf::_M_setup_codecvt(
        std::wfilebuf *const this,
        const std::locale *const __loc,
        int __on_imbue)
{
  const std::codecvt<wchar_t,char,mbstate_t> *v6; // r0
  int v7; // r0
  int v8; // r3
  int v9; // r5
  const std::codecvt<wchar_t,char,mbstate_t> *M_codecvt; // r0

  if ( std::locale::_M_get_facet(__loc, &std::codecvt<wchar_t,char,mbstate_t>::id) )
  {
    v6 = (const std::codecvt<wchar_t,char,mbstate_t> *)std::locale::_M_use_facet(
                                                         __loc,
                                                         &std::codecvt<wchar_t,char,mbstate_t>::id);
    this->_M_codecvt = v6;
    v7 = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *))v6->_vptr.facet + 5))(v6);
    v8 = 1;
    v9 = v7;
    if ( v7 > 0 )
      v8 = v7;
    M_codecvt = this->_M_codecvt;
    this->_M_width = v8;
    this->_M_max_width = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *))M_codecvt->_vptr.facet + 8))(M_codecvt);
    this->_M_constant_width = (v9 >> 31) - v9 < 0;
    this->_M_always_noconv = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *))this->_M_codecvt->_vptr.facet
                              + 6))(this->_M_codecvt);
  }
  else
  {
    this->_M_max_width = 1;
    this->_M_width = 1;
    this->_M_codecvt = nullptr;
    this->_M_always_noconv = 0;
    this->_M_constant_width = 0;
    if ( __on_imbue )
      std::locale::_M_use_facet(__loc, &std::codecvt<wchar_t,char,mbstate_t>::id);
  }
}


// ===== 8b8154 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::basic_filebuf(void) =====
std::wfilebuf *__fastcall std::wfilebuf::basic_filebuf(std::wfilebuf *const this)
{
  std::locale v3; // [sp+4h] [bp-4h] BYREF

  this->_vptr.basic_streambuf = (int (**)(...))&off_9945D8;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  std::locale::locale(&this->_M_locale);
  this->_vptr.basic_streambuf = (int (**)(...))&off_994590;
  std::_Filebuf_base::_Filebuf_base(&this->_M_base);
  this->_M_constant_width = 0;
  this->_M_always_noconv = 0;
  this->_M_int_buf_dynamic = 0;
  this->_M_in_input_mode = 0;
  this->_M_in_output_mode = 0;
  this->_M_in_error_mode = 0;
  this->_M_in_putback_mode = 0;
  this->_M_int_buf = nullptr;
  this->_M_int_buf_EOS = nullptr;
  this->_M_ext_buf = nullptr;
  this->_M_ext_buf_EOS = nullptr;
  this->_M_ext_buf_converted = nullptr;
  this->_M_ext_buf_end = nullptr;
  this->_M_state.dummy = 0;
  this->_M_end_state.dummy = 0;
  this->_M_mmap_base = nullptr;
  this->_M_mmap_len = 0;
  this->_M_saved_eback = nullptr;
  this->_M_saved_gptr = nullptr;
  this->_M_saved_egptr = nullptr;
  this->_M_codecvt = nullptr;
  this->_M_width = 1;
  this->_M_max_width = 1;
  std::locale::locale(&v3);
  std::wfilebuf::_M_setup_codecvt(this, &v3, 0);
  std::locale::~locale(&v3);
  return this;
}


// ===== 8b81f4 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::imbue(std::locale const&) =====
void __fastcall std::wfilebuf::imbue(std::wfilebuf *const this, const std::locale *const __loc)
{
  if ( !this->_M_in_input_mode && !*(_WORD *)&this->_M_in_output_mode )
    std::wfilebuf::_M_setup_codecvt(this, __loc, 1);
}


// ===== 8b8210 std::_Stl_create_filebuf<__sFILE *>(__sFILE *,int) =====
void __fastcall std::_Stl_create_filebuf<__sFILE *>(FILE *x, int mode)
{
  JUMPOUT(0x8B888E);
}


// ===== 8b8248 std::basic_ios<char,std::char_traits<char>>::rdbuf(std::basic_streambuf<char,std::char_traits<char>> *) =====
std::streambuf *__fastcall std::ios::rdbuf(std::ios *const this, std::streambuf *__buf)
{
  std::streambuf *M_streambuf; // r4
  int M_exception_mask; // r2

  M_streambuf = this->_M_streambuf;
  this->_M_streambuf = __buf;
  if ( __buf )
  {
    this->_M_iostate = 0;
  }
  else
  {
    M_exception_mask = this->_M_exception_mask;
    this->_M_iostate = 1;
    if ( (M_exception_mask & 1) != 0 )
      std::ios_base::_M_throw_failure(this);
  }
  return M_streambuf;
}


// ===== 8b826c std::basic_ios<wchar_t,std::char_traits<wchar_t>>::rdbuf(std::basic_streambuf<wchar_t,std::char_traits<wchar_t>> *) =====
std::wstreambuf *__fastcall std::wios::rdbuf(std::wios *const this, std::wstreambuf *__buf)
{
  std::wstreambuf *M_streambuf; // r4
  int M_exception_mask; // r2

  M_streambuf = this->_M_streambuf;
  this->_M_streambuf = __buf;
  if ( __buf )
  {
    this->_M_iostate = 0;
  }
  else
  {
    M_exception_mask = this->_M_exception_mask;
    this->_M_iostate = 1;
    if ( (M_exception_mask & 1) != 0 )
      std::ios_base::_M_throw_failure(this);
  }
  return M_streambuf;
}


// ===== 8b8290 std::basic_istream<wchar_t,std::char_traits<wchar_t>>::~basic_istream() =====
std::wistream *__fastcall std::wistream::~wistream(std::wistream *const this)
{
  this->_vptr.basic_istream = (int (**)(...))&off_994624;
  *(_DWORD *)this->gap8 = &off_994650;
  std::ios_base::~ios_base((std::ios_base *const)this->gap8);
  return this;
}


// ===== 8b82c0 `virtual thunk to'std::basic_istream<wchar_t,std::char_traits<wchar_t>>::~basic_istream() =====
std::wistream *__fastcall `virtual thunk to'std::wistream::~wistream(_DWORD *a1)
{
  return std::wistream::~wistream((std::wistream *const)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 8b82d0 std::basic_ostream<wchar_t,std::char_traits<wchar_t>>::~basic_ostream() =====
std::wostream *__fastcall std::wostream::~wostream(std::wostream *const this)
{
  this->_vptr.basic_ostream = (int (**)(...))&off_994664;
  *(_DWORD *)this->gap4 = &off_994650;
  std::ios_base::~ios_base((std::ios_base *const)this->gap4);
  return this;
}


// ===== 8b82fc `virtual thunk to'std::basic_ostream<wchar_t,std::char_traits<wchar_t>>::~basic_ostream() =====
std::wostream *__fastcall `virtual thunk to'std::wostream::~wostream(_DWORD *a1)
{
  return std::wostream::~wostream((std::wostream *const)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 8b830c std::basic_ostream<wchar_t,std::char_traits<wchar_t>>::~basic_ostream() =====
void __fastcall std::wostream::~wostream(std::wostream *const this)
{
  std::wostream::~wostream(this);
  JUMPOUT(0x8B82B4);
}


// ===== 8b8320 `virtual thunk to'std::basic_ostream<wchar_t,std::char_traits<wchar_t>>::~basic_ostream() =====
void __fastcall `virtual thunk to'std::wostream::~wostream(_DWORD *a1)
{
  std::wostream::~wostream((std::wostream *const)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 8b8330 std::basic_ios<wchar_t,std::char_traits<wchar_t>>::~basic_ios() =====
std::wios *__fastcall std::wios::~wios(std::wios *const this)
{
  this->_vptr.ios_base = (int (**)(...))&off_994650;
  std::ios_base::~ios_base(this);
  return this;
}


// ===== 8b8350 std::istream::istream(std::basic_streambuf<char,std::char_traits<char>> *) =====
void __fastcall std::istream::istream(std::istream *const this, std::streambuf *__buf)
{
  _BYTE *v2; // r5

  v2 = this->gap8;
  std::ios_base::ios_base((std::ios_base *const)this->gap8);
  v2[68] = 0;
  *((_DWORD *)v2 + 18) = 0;
  *((_DWORD *)v2 + 19) = 0;
  this->_vptr.basic_istream = (int (**)(...))off_964154;
  *(_DWORD *)this->gap8 = off_964168;
  this->_M_gcount = 0;
  JUMPOUT(0x8B80A8);
}


// ===== 8b8394 std::ostream::ostream(std::basic_streambuf<char,std::char_traits<char>> *) =====
void __fastcall std::ostream::ostream(std::ostream *const this, std::streambuf *__buf)
{
  _BYTE *v2; // r4

  v2 = this->gap4;
  std::ios_base::ios_base((std::ios_base *const)this->gap4);
  v2[68] = 0;
  *((_DWORD *)v2 + 18) = 0;
  *((_DWORD *)v2 + 19) = 0;
  this->_vptr.basic_ostream = (int (**)(...))off_95B8B4;
  *(_DWORD *)this->gap4 = off_95B8C8;
  JUMPOUT(0x8B80A8);
}


// ===== 8b83d4 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::pubimbue(std::locale const&) =====
std::locale __fastcall std::wstreambuf::pubimbue(
        std::wstreambuf *const this,
        const std::locale *const __loc,
        const std::locale *a3)
{
  std::locale *v4; // r4

  v4 = (std::locale *)&__loc[7];
  (*(void (__fastcall **)(const std::locale *const, const std::locale *))&__loc->_M_impl[1].name._M_buffers._M_static_buf[4])(
    __loc,
    a3);
  std::locale::locale((std::locale *const)this, v4);
  std::locale::operator=(v4, a3);
  return (std::locale)this;
}


// ===== 8b83fc std::basic_ios<wchar_t,std::char_traits<wchar_t>>::imbue(std::locale const&) =====
std::locale __fastcall std::wios::imbue(std::wios *const this, std::ios_base *__loc, const std::locale *a3)
{
  std::_Locale_impl *M_iostate; // r1
  std::locale _4[7]; // [sp+4h] [bp-4h] BYREF

  std::ios_base::imbue(this, __loc, a3);
  M_iostate = (std::_Locale_impl *)__loc[1]._M_iostate;
  if ( M_iostate )
  {
    std::wstreambuf::pubimbue((std::wstreambuf *const)_4, (const std::locale *const)M_iostate, a3);
    std::locale::~locale(_4);
  }
  __loc[1]._vptr.ios_base = (int (**)(...))std::locale::_M_use_facet(a3, &std::ctype<wchar_t>::id);
  return (std::locale)this;
}


// ===== 8b8448 std::basic_ios<wchar_t,std::char_traits<wchar_t>>::init(std::basic_streambuf<wchar_t,std::char_traits<wchar_t>> *) =====
void __fastcall std::wios::init(std::wios *const this, std::wstreambuf *__sb)
{
  const std::ctype<wchar_t> *M_cached_ctype; // r0
  std::locale v5; // [sp+0h] [bp-Ch] BYREF
  std::locale v6[2]; // [sp+4h] [bp-8h] BYREF

  std::wios::rdbuf(this, __sb);
  std::locale::locale(v6);
  std::wios::imbue((std::wios *const)&v5, this, v6);
  std::locale::~locale(&v5);
  std::locale::~locale(v6);
  this->_M_iostate = __sb == nullptr;
  M_cached_ctype = this->_M_cached_ctype;
  this->_M_tied_ostream = nullptr;
  this->_M_exception_mask = 0;
  this->_M_width = 0;
  this->_M_fmtflags = 4104;
  this->_M_precision = 6;
  this->_M_fill = (*((int (__fastcall **)(const std::ctype<wchar_t> *, int))M_cached_ctype->_vptr.facet + 10))(
                    M_cached_ctype,
                    32);
}


// ===== 8b849c std::basic_istream<wchar_t,std::char_traits<wchar_t>>::basic_istream(std::basic_streambuf<wchar_t,std::char_traits<wchar_t>> *) =====
std::wistream *__fastcall std::wistream::basic_istream(std::wistream *const this, std::wstreambuf *__buf)
{
  std::wios *v2; // r5

  v2 = (std::wios *)this->gap8;
  std::ios_base::ios_base((std::ios_base *const)this->gap8);
  v2->_M_fill = 0;
  v2->_M_streambuf = nullptr;
  v2->_M_tied_ostream = nullptr;
  this->_vptr.basic_istream = (int (**)(...))&off_994624;
  *(_DWORD *)this->gap8 = &off_994638;
  this->_M_gcount = 0;
  std::wios::init(v2, __buf);
  return this;
}


// ===== 8b84dc std::basic_ostream<wchar_t,std::char_traits<wchar_t>>::basic_ostream(std::basic_streambuf<wchar_t,std::char_traits<wchar_t>> *) =====
std::wostream *__fastcall std::wostream::basic_ostream(std::wostream *const this, std::wstreambuf *__buf)
{
  std::wios *v2; // r4

  v2 = (std::wios *)this->gap4;
  std::ios_base::ios_base((std::ios_base *const)this->gap4);
  v2->_M_fill = 0;
  v2->_M_streambuf = nullptr;
  v2->_M_tied_ostream = nullptr;
  this->_vptr.basic_ostream = (int (**)(...))&off_994664;
  *(_DWORD *)this->gap4 = &off_994678;
  std::wios::init(v2, __buf);
  return this;
}


// ===== 8b8518 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::_M_xsputnc(wchar_t,int) =====
std::streamsize __fastcall std::wstreambuf::_M_xsputnc(std::wstreambuf *const this, wchar_t __c, std::streamsize __n)
{
  std::streamsize i; // r6

  for ( i = 0; __n > i; ++i )
  {
    if ( this->_M_pnext < this->_M_pend )
      JUMPOUT(0x8B877A);
    if ( (*((int (__fastcall **)(std::wstreambuf *const, wchar_t))this->_vptr.basic_streambuf + 13))(this, __c) == -1 )
      break;
  }
  return i;
}


// ===== 8b8574 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::xsputn(wchar_t const*,int) =====
std::streamsize __fastcall std::wstreambuf::xsputn(
        std::wstreambuf *const this,
        const wchar_t *__s,
        std::streamsize __n)
{
  std::streamsize i; // r7

  for ( i = 0; __n > i; ++__s )
  {
    if ( this->_M_pnext < this->_M_pend )
      JUMPOUT(0x8B7FFC);
    if ( (*((int (__fastcall **)(std::wstreambuf *const, _DWORD))this->_vptr.basic_streambuf + 13))(this, *__s) == -1 )
      break;
    ++i;
  }
  return i;
}


// ===== 8b85d4 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::xsgetn(wchar_t *,int) =====
std::streamsize __fastcall std::wstreambuf::xsgetn(std::wstreambuf *const this, wchar_t *__s, std::streamsize __n)
{
  std::streamsize i; // r4
  wchar_t v7; // r0

  for ( i = 0; __n > i; ++__s )
  {
    if ( this->_M_gnext < this->_M_gend )
      JUMPOUT(0x8B7FFC);
    v7 = (*((int (__fastcall **)(std::wstreambuf *const))this->_vptr.basic_streambuf + 9))(this);
    if ( v7 == -1 )
      break;
    ++i;
    *__s = v7;
  }
  return i;
}


// ===== 8b8634 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::_M_underflow_aux(void) =====
wchar_t __fastcall std::wfilebuf::_M_underflow_aux(std::wfilebuf *const this)
{
  char *M_ext_buf_end; // r5
  char *M_ext_buf_converted; // r3
  char *M_ext_buf; // r1
  int v5; // r0
  int v6; // r5
  char *v7; // r2
  char *v8; // r3
  int v9; // r0
  wchar_t *M_int_buf; // r3
  char *v11; // r1
  char *v12; // r0
  int v13; // r12
  std::_Filebuf_base *p_M_base; // [sp+10h] [bp-14h]
  mbstate_t *p_M_end_state; // [sp+14h] [bp-10h]
  wchar_t *v17; // [sp+18h] [bp-Ch]
  char *v18; // [sp+1Ch] [bp-8h]

  M_ext_buf_end = this->_M_ext_buf_end;
  this->_M_state.dummy = this->_M_end_state.dummy;
  M_ext_buf_converted = this->_M_ext_buf_converted;
  if ( M_ext_buf_end <= M_ext_buf_converted )
  {
    M_ext_buf = this->_M_ext_buf;
  }
  else
  {
    M_ext_buf = this->_M_ext_buf;
    if ( M_ext_buf_end != M_ext_buf_converted )
      JUMPOUT(0x8B7F3A);
  }
  p_M_base = &this->_M_base;
  p_M_end_state = &this->_M_end_state;
  for ( this->_M_ext_buf_end = M_ext_buf; ; M_ext_buf = this->_M_ext_buf_end )
  {
    v5 = std::_Filebuf_base::_M_read(p_M_base, M_ext_buf, this->_M_ext_buf_EOS - M_ext_buf);
    v6 = v5;
    if ( v5 < 0 )
      break;
    v7 = this->_M_ext_buf;
    v8 = &this->_M_ext_buf_end[v5];
    this->_M_ext_buf_end = v8;
    if ( v8 == v7 )
      break;
    v9 = (*((int (__fastcall **)(const std::codecvt<wchar_t,char,mbstate_t> *, mbstate_t *))this->_M_codecvt->_vptr.facet
          + 3))(
           this->_M_codecvt,
           p_M_end_state);
    if ( v9 == 3 )
      return -1;
    if ( v9 == 2 )
      goto LABEL_23;
    M_int_buf = this->_M_int_buf;
    if ( M_int_buf == v17 )
    {
      v12 = v18;
      v11 = this->_M_ext_buf;
    }
    else
    {
      v11 = this->_M_ext_buf;
      v12 = v18;
      if ( v11 == v18 )
        goto LABEL_23;
    }
    v13 = v12 - v11;
    if ( this->_M_constant_width )
    {
      v13 = (v17 - M_int_buf) * this->_M_width;
      if ( v13 != v12 - v11 )
        goto LABEL_23;
    }
    if ( M_int_buf != v17 )
    {
      this->_M_ext_buf_converted = &v11[v13];
      this->_M_gbegin = M_int_buf;
      this->_M_gnext = M_int_buf;
      this->_M_gend = v17;
      return *M_int_buf;
    }
    if ( this->_M_max_width <= v13 )
    {
LABEL_23:
      std::wfilebuf::_M_exit_input_mode(this);
      this->_M_in_output_mode = 0;
      this->_M_in_error_mode = 1;
      break;
    }
    if ( !v6 )
    {
      this->_M_gbegin = nullptr;
      this->_M_gnext = nullptr;
      this->_M_gend = nullptr;
      return -1;
    }
  }
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  return -1;
}


// ===== 8b8754 std::_Underflow<wchar_t,std::char_traits<wchar_t>>::_M_doit(std::basic_filebuf<wchar_t,std::char_traits<wchar_t>> *) =====
wchar_t __fastcall std::_Underflow<wchar_t,std::char_traits<wchar_t>>::_M_doit(std::wfilebuf *__this)
{
  wchar_t *M_saved_gptr; // r2
  wchar_t *M_saved_egptr; // r1
  wchar_t *M_saved_eback; // r0

  if ( __this->_M_in_input_mode )
  {
    if ( __this->_M_in_putback_mode )
    {
      M_saved_gptr = __this->_M_saved_gptr;
      M_saved_egptr = __this->_M_saved_egptr;
      M_saved_eback = __this->_M_saved_eback;
      __this->_M_gnext = M_saved_gptr;
      __this->_M_gend = M_saved_egptr;
      __this->_M_gbegin = M_saved_eback;
      __this->_M_in_putback_mode = 0;
      if ( M_saved_gptr != M_saved_egptr )
        return *M_saved_gptr;
    }
    return std::wfilebuf::_M_underflow_aux(__this);
  }
  if ( std::wfilebuf::_M_switch_to_input_mode(__this) )
    return std::wfilebuf::_M_underflow_aux(__this);
  return -1;
}


// ===== 8b8798 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::underflow(void) =====
wchar_t __fastcall std::wfilebuf::underflow(std::wfilebuf *const this)
{
  return std::_Underflow<wchar_t,std::char_traits<wchar_t>>::_M_doit(this);
}


// ===== 8b87a0 std::basic_ios<wchar_t,std::char_traits<wchar_t>>::~basic_ios() =====
void __fastcall std::wios::~wios(std::wios *const this)
{
  this->_vptr.ios_base = (int (**)(...))&off_994650;
  std::ios_base::~ios_base(this);
  JUMPOUT(0x8B82B4);
}


// ===== 8b87c8 std::basic_istream<wchar_t,std::char_traits<wchar_t>>::~basic_istream() =====
void __fastcall std::wistream::~wistream(std::wistream *const this)
{
  this->_vptr.basic_istream = (int (**)(...))&off_994624;
  *(_DWORD *)this->gap8 = &off_994650;
  std::ios_base::~ios_base((std::ios_base *const)this->gap8);
  JUMPOUT(0x8B82B4);
}


// ===== 8b87fc `virtual thunk to'std::basic_istream<wchar_t,std::char_traits<wchar_t>>::~basic_istream() =====
void __fastcall `virtual thunk to'std::wistream::~wistream(_DWORD *a1)
{
  std::wistream::~wistream((std::wistream *const)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 8b880c std::ios_base::_S_uninitialize(void) =====
void std::ios_base::_S_uninitialize()
{
  char *v0; // r3
  int v1; // r1
  int v2; // r2
  char *v3; // r3
  int v4; // r1
  int v5; // r2
  char *v6; // r3
  int v7; // r1
  int v8; // r2
  char *v9; // r3
  int v10; // r1
  int v11; // r2
  std::streambuf *v12; // r0
  std::streambuf *v13; // r0
  std::streambuf *v14; // r0
  std::streambuf *v15; // r0
  char *v16; // r3
  int v17; // r1
  int v18; // r2
  char *v19; // r3
  int v20; // r1
  int v21; // r2
  char *v22; // r3
  int v23; // r1
  int v24; // r2
  char *v25; // r3
  int v26; // r1
  int v27; // r2
  std::wstreambuf *v28; // r0
  std::wstreambuf *v29; // r0
  std::wstreambuf *v30; // r0
  std::wstreambuf *v31; // r0

  v0 = &std::cin.buf[*(_DWORD *)(*(_DWORD *)std::cin.buf - 12)];
  v1 = *((_DWORD *)v0 + 18);
  *((_DWORD *)v0 + 5) = 0;
  v2 = *((_DWORD *)v0 + 2);
  if ( !v1 )
    v2 |= 1u;
  *((_DWORD *)v0 + 2) = v2;
  v3 = &std::cout.buf[*(_DWORD *)(*(_DWORD *)std::cout.buf - 12)];
  v4 = *((_DWORD *)v3 + 18);
  *((_DWORD *)v3 + 5) = 0;
  v5 = *((_DWORD *)v3 + 2);
  if ( !v4 )
    v5 |= 1u;
  *((_DWORD *)v3 + 2) = v5;
  v6 = &std::cerr.buf[*(_DWORD *)(*(_DWORD *)std::cerr.buf - 12)];
  v7 = *((_DWORD *)v6 + 18);
  *((_DWORD *)v6 + 5) = 0;
  v8 = *((_DWORD *)v6 + 2);
  if ( !v7 )
    v8 |= 1u;
  *((_DWORD *)v6 + 2) = v8;
  v9 = &std::clog.buf[*(_DWORD *)(*(_DWORD *)std::clog.buf - 12)];
  v10 = *((_DWORD *)v9 + 18);
  *((_DWORD *)v9 + 5) = 0;
  v11 = *((_DWORD *)v9 + 2);
  if ( !v10 )
    v11 |= 1u;
  *((_DWORD *)v9 + 2) = v11;
  v12 = std::ios::rdbuf((std::ios *const)&std::cin.buf[*(_DWORD *)(*(_DWORD *)std::cin.buf - 12)], nullptr);
  if ( v12 )
    (*((void (__fastcall **)(std::streambuf *))v12->_vptr.basic_streambuf + 1))(v12);
  v13 = std::ios::rdbuf((std::ios *const)&std::cout.buf[*(_DWORD *)(*(_DWORD *)std::cout.buf - 12)], nullptr);
  if ( v13 )
    (*((void (__fastcall **)(std::streambuf *))v13->_vptr.basic_streambuf + 1))(v13);
  v14 = std::ios::rdbuf((std::ios *const)&std::cerr.buf[*(_DWORD *)(*(_DWORD *)std::cerr.buf - 12)], nullptr);
  if ( v14 )
    (*((void (__fastcall **)(std::streambuf *))v14->_vptr.basic_streambuf + 1))(v14);
  v15 = std::ios::rdbuf((std::ios *const)&std::clog.buf[*(_DWORD *)(*(_DWORD *)std::clog.buf - 12)], nullptr);
  if ( v15 )
    (*((void (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 1))(v15);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::istream > *))std::cin.buf)(&std::cin);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::ostream > *))std::cout.buf)(&std::cout);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::ostream > *))std::cerr.buf)(&std::cerr);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::ostream > *))std::clog.buf)(&std::clog);
  v16 = &std::wcin.buf[*(_DWORD *)(*(_DWORD *)std::wcin.buf - 12)];
  v17 = *((_DWORD *)v16 + 18);
  *((_DWORD *)v16 + 5) = 0;
  v18 = *((_DWORD *)v16 + 2);
  if ( !v17 )
    v18 |= 1u;
  *((_DWORD *)v16 + 2) = v18;
  v19 = &std::wcout.buf[*(_DWORD *)(*(_DWORD *)std::wcout.buf - 12)];
  v20 = *((_DWORD *)v19 + 18);
  *((_DWORD *)v19 + 5) = 0;
  v21 = *((_DWORD *)v19 + 2);
  if ( !v20 )
    v21 |= 1u;
  *((_DWORD *)v19 + 2) = v21;
  v22 = &std::wcerr.buf[*(_DWORD *)(*(_DWORD *)std::wcerr.buf - 12)];
  v23 = *((_DWORD *)v22 + 18);
  *((_DWORD *)v22 + 5) = 0;
  v24 = *((_DWORD *)v22 + 2);
  if ( !v23 )
    v24 |= 1u;
  *((_DWORD *)v22 + 2) = v24;
  v25 = &std::wclog.buf[*(_DWORD *)(*(_DWORD *)std::wclog.buf - 12)];
  v26 = *((_DWORD *)v25 + 18);
  *((_DWORD *)v25 + 5) = 0;
  v27 = *((_DWORD *)v25 + 2);
  if ( !v26 )
    v27 |= 1u;
  *((_DWORD *)v25 + 2) = v27;
  v28 = std::wios::rdbuf((std::wios *const)&std::wcin.buf[*(_DWORD *)(*(_DWORD *)std::wcin.buf - 12)], nullptr);
  if ( v28 )
    (*((void (__fastcall **)(std::wstreambuf *))v28->_vptr.basic_streambuf + 1))(v28);
  v29 = std::wios::rdbuf((std::wios *const)&std::wcout.buf[*(_DWORD *)(*(_DWORD *)std::wcout.buf - 12)], nullptr);
  if ( v29 )
    (*((void (__fastcall **)(std::wstreambuf *))v29->_vptr.basic_streambuf + 1))(v29);
  v30 = std::wios::rdbuf((std::wios *const)&std::wcerr.buf[*(_DWORD *)(*(_DWORD *)std::wcerr.buf - 12)], nullptr);
  if ( v30 )
    (*((void (__fastcall **)(std::wstreambuf *))v30->_vptr.basic_streambuf + 1))(v30);
  v31 = std::wios::rdbuf((std::wios *const)&std::wclog.buf[*(_DWORD *)(*(_DWORD *)std::wclog.buf - 12)], nullptr);
  if ( v31 )
    (*((void (__fastcall **)(std::wstreambuf *))v31->_vptr.basic_streambuf + 1))(v31);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::wistream > *))std::wcin.buf)(&std::wcin);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::wostream > *))std::wcout.buf)(&std::wcout);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::wostream > *))std::wcerr.buf)(&std::wcerr);
  (**(void (__fastcall ***)(std::_Stl_aligned_buffer<std::wostream > *))std::wclog.buf)(&std::wclog);
}


// ===== 8b8a6c std::ios_base::Init::~Init() =====
std::ios_base::Init *__fastcall std::ios_base::Init::~Init(std::ios_base::Init *const this)
{
  if ( !--std::ios_base::Init::_S_count )
  {
    std::ios_base::_S_uninitialize();
    Locale_final();
  }
  return this;
}


// ===== 8b8a98 std::ios_base::Init::~Init() =====
std::ios_base::Init *__fastcall std::ios_base::Init::~Init(std::ios_base::Init *const this)
{
  if ( !--std::ios_base::Init::_S_count )
  {
    std::ios_base::_S_uninitialize();
    Locale_final();
  }
  return this;
}


// ===== 8b8ac4 std::_Stl_create_wfilebuf(__sFILE *,int) =====
void __fastcall std::_Stl_create_wfilebuf(FILE *f, int mode)
{
  JUMPOUT(0x8B888E);
}


// ===== 8b8afc std::ios_base::_S_initialize(void) =====
void std::ios_base::_S_initialize()
{
  std::wstreambuf *v0; // r0
  std::wstreambuf *v1; // r8
  std::wstreambuf *v2; // r0
  std::wstreambuf *v3; // r10
  std::wstreambuf *v4; // r0
  std::wstreambuf *v5; // r11
  std::wstreambuf *v6; // r0
  std::wstreambuf *v7; // r9
  std::streambuf *v8; // r0
  std::streambuf *v9; // r11
  std::streambuf *v10; // r0
  std::streambuf *v11; // r7
  std::streambuf *v12; // r0
  std::streambuf *v13; // r6
  std::streambuf *v14; // r0
  std::streambuf *v15; // r10

  if ( std::ios_base::_S_is_synced )
    JUMPOUT(0x8B8890);
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF, 8);
  v9 = v8;
  if ( std::ios_base::_S_is_synced )
    JUMPOUT(0x8B888E);
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 1, 16);
  v11 = v10;
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 2, 16);
  v13 = v12;
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 2, 16);
  v15 = v14;
  std::istream::istream((std::istream *const)&std::cin, v9);
  std::ostream::ostream((std::ostream *const)&std::cout, v11);
  std::ostream::ostream((std::ostream *const)&std::cerr, v13);
  std::ostream::ostream((std::ostream *const)&std::clog, v15);
  *(_DWORD *)((char *)&std::cin.padding + *(_DWORD *)(*(_DWORD *)std::cin.buf - 12) + 76) = &std::cout;
  *(_DWORD *)((char *)&std::cerr.padding.a + *(_DWORD *)(*(_DWORD *)std::cerr.buf - 12) + 4) |= 0x2000u;
  std::_Stl_create_wfilebuf((FILE *)&_sF, 8);
  v1 = v0;
  std::_Stl_create_wfilebuf((FILE *)&_sF + 1, 16);
  v3 = v2;
  std::_Stl_create_wfilebuf((FILE *)&_sF + 2, 16);
  v5 = v4;
  std::_Stl_create_wfilebuf((FILE *)&_sF + 2, 16);
  v7 = v6;
  std::wistream::basic_istream((std::wistream *const)&std::wcin, v1);
  std::wostream::basic_ostream((std::wostream *const)&std::wcout, v3);
  std::wostream::basic_ostream((std::wostream *const)&std::wcerr, v5);
  std::wostream::basic_ostream((std::wostream *const)&std::wclog, v7);
  *(_DWORD *)((char *)&std::wcin.padding + *(_DWORD *)(*(_DWORD *)std::wcin.buf - 12) + 76) = &std::wcout;
  *(_DWORD *)((char *)&std::wcerr.padding.a + *(_DWORD *)(*(_DWORD *)std::wcerr.buf - 12) + 4) |= 0x2000u;
}


// ===== 8b8cd4 std::ios_base::Init::Init(void) =====
std::ios_base::Init *__fastcall std::ios_base::Init::Init(std::ios_base::Init *const this)
{
  if ( !std::ios_base::Init::_S_count++ )
  {
    Locale_init();
    std::ios_base::_S_initialize();
    std::_Filebuf_base::_S_initialize();
  }
  return this;
}


// ===== 8b8d04 std::ios_base::Init::Init(void) =====
std::ios_base::Init *__fastcall std::ios_base::Init::Init(std::ios_base::Init *const this)
{
  if ( !std::ios_base::Init::_S_count++ )
  {
    Locale_init();
    std::ios_base::_S_initialize();
    std::_Filebuf_base::_S_initialize();
  }
  return this;
}


// ===== 8b8d34 std::ios_base::sync_with_stdio(bool) =====
bool __fastcall std::ios_base::sync_with_stdio(_BOOL4 sync)
{
  _BOOL4 v1; // r5
  std::streambuf *v2; // r9
  std::streambuf *v3; // r0
  std::streambuf *v4; // r0
  std::streambuf *v5; // r0
  std::streambuf *v6; // r0
  std::streambuf *v8; // r0
  std::streambuf *v9; // r9
  std::streambuf *v10; // r0
  std::streambuf *v11; // r8
  std::streambuf *v12; // r0
  std::streambuf *v13; // r11
  std::streambuf *v14; // r0
  std::streambuf *v15; // r7
  std::streambuf *v16; // r6

  v1 = sync;
  if ( std::ios_base::_S_is_synced == sync )
    return v1;
  if ( !std::ios_base::Init::_S_count )
  {
LABEL_19:
    std::ios_base::_S_is_synced = v1;
    return v1;
  }
  if ( sync )
    JUMPOUT(0x8B8890);
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF, 8);
  v9 = v8;
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 1, 16);
  v11 = v10;
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 2, 16);
  v13 = v12;
  std::_Stl_create_filebuf<__sFILE *>((FILE *)&_sF + 2, 16);
  v15 = v14;
  v16 = v9;
  if ( !v9 || !v11 )
  {
    v2 = v13;
LABEL_22:
    v1 = std::ios_base::_S_is_synced;
    if ( v14 )
      (*((void (__fastcall **)(std::streambuf *))v14->_vptr.basic_streambuf + 1))(v14);
    goto LABEL_24;
  }
  v2 = v13;
  if ( !v13 )
    goto LABEL_22;
  if ( v14 )
  {
    v3 = std::ios::rdbuf((std::ios *const)&std::cin.buf[*(_DWORD *)(*(_DWORD *)std::cin.buf - 12)], v16);
    if ( v3 )
      (*((void (__fastcall **)(std::streambuf *))v3->_vptr.basic_streambuf + 1))(v3);
    v4 = std::ios::rdbuf((std::ios *const)&std::cout.buf[*(_DWORD *)(*(_DWORD *)std::cout.buf - 12)], v11);
    if ( v4 )
      (*((void (__fastcall **)(std::streambuf *))v4->_vptr.basic_streambuf + 1))(v4);
    v5 = std::ios::rdbuf((std::ios *const)&std::cerr.buf[*(_DWORD *)(*(_DWORD *)std::cerr.buf - 12)], v13);
    if ( v5 )
      (*((void (__fastcall **)(std::streambuf *))v5->_vptr.basic_streambuf + 1))(v5);
    v6 = std::ios::rdbuf((std::ios *const)&std::clog.buf[*(_DWORD *)(*(_DWORD *)std::clog.buf - 12)], v15);
    if ( v6 )
      (*((void (__fastcall **)(std::streambuf *))v6->_vptr.basic_streambuf + 1))(v6);
    goto LABEL_19;
  }
  v1 = std::ios_base::_S_is_synced;
LABEL_24:
  if ( v2 )
    (*((void (__fastcall **)(std::streambuf *))v2->_vptr.basic_streambuf + 1))(v2);
  if ( v11 )
    (*((void (__fastcall **)(std::streambuf *))v11->_vptr.basic_streambuf + 1))(v11);
  if ( v16 )
    (*((void (__fastcall **)(std::streambuf *))v16->_vptr.basic_streambuf + 1))(v16);
  return v1;
}


// ===== 8b8f1c std::codecvt<char,char,mbstate_t>::do_length(mbstate_t&,char const*,char const*,uint) =====
int __fastcall std::codecvt<char,char,mbstate_t>::do_length(
        const std::codecvt<char,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const char *from,
        const char *end,
        size_t mx)
{
  int result; // r0

  result = end - from;
  if ( end - from > mx )
    return mx;
  return result;
}


// ===== 8b8f28 std::codecvt<char,char,mbstate_t>::do_max_length(void) =====
int __fastcall std::codecvt<char,char,mbstate_t>::do_max_length(const std::codecvt<char,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8f2c std::codecvt<char,char,mbstate_t>::do_always_noconv(void) =====
bool __fastcall std::codecvt<char,char,mbstate_t>::do_always_noconv(
        const std::codecvt<char,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8f30 std::codecvt<char,char,mbstate_t>::do_encoding(void) =====
int __fastcall std::codecvt<char,char,mbstate_t>::do_encoding(const std::codecvt<char,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8f34 std::codecvt<char,char,mbstate_t>::do_unshift(mbstate_t&,char *,char *,char *&) =====
std::codecvt_base::result __fastcall std::codecvt<char,char,mbstate_t>::do_unshift(
        const std::codecvt<char,char,mbstate_t> *const this,
        mbstate_t *const a2,
        char *__to,
        char *a4,
        char **const __to_next)
{
  *__to_next = __to;
  return std::codecvt_base::result::noconv;
}


// ===== 8b8f3c std::codecvt<char,char,mbstate_t>::do_in(mbstate_t&,char const*,char const*,char const*&,char *,char *,char *&) =====
std::codecvt_base::result __fastcall std::codecvt<char,char,mbstate_t>::do_in(
        const std::codecvt<char,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const char *__from,
        const char *a4,
        const char **const __from_next,
        char *__to,
        char *a7,
        char **const __to_next)
{
  *__from_next = __from;
  *__to_next = __to;
  return std::codecvt_base::result::noconv;
}


// ===== 8b8f4c std::codecvt<char,char,mbstate_t>::do_out(mbstate_t&,char const*,char const*,char const*&,char *,char *,char *&) =====
std::codecvt_base::result __fastcall std::codecvt<char,char,mbstate_t>::do_out(
        const std::codecvt<char,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const char *__from,
        const char *a4,
        const char **const __from_next,
        char *__to,
        char *a7,
        char **const __to_next)
{
  *__from_next = __from;
  *__to_next = __to;
  return std::codecvt_base::result::noconv;
}


// ===== 8b8f5c std::codecvt<wchar_t,char,mbstate_t>::do_out(mbstate_t&,wchar_t const*,wchar_t const*,wchar_t const*&,char *,char *,char *&) =====
std::codecvt_base::result __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_out(
        const std::codecvt<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const wchar_t *from,
        const wchar_t *from_end,
        const wchar_t **const from_next,
        char *to,
        char *to_limit,
        char **const to_next)
{
  int v8; // r3
  int v9; // r5
  const wchar_t *v10; // r6
  int v11; // r0
  char *v12; // r0
  char *v13; // r3
  int v14; // r1

  v8 = from_end - from;
  v9 = to_limit - to;
  if ( to_limit - to > v8 )
    v9 = v8;
  v10 = &from[v9];
  v11 = (4 * v9) >> 2;
  if ( v11 > 0 )
  {
    v12 = &to[v11];
    v13 = to;
    do
    {
      v14 = *from++;
      *v13++ = v14;
    }
    while ( v13 != v12 );
  }
  *from_next = v10;
  *to_next = &to[v9];
  return std::codecvt_base::result::ok;
}


// ===== 8b8f94 std::codecvt<wchar_t,char,mbstate_t>::do_in(mbstate_t&,char const*,char const*,char const*&,wchar_t *,wchar_t *,wchar_t *&) =====
std::codecvt_base::result __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_in(
        const std::codecvt<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const char *from,
        const char *from_end,
        const char **const from_next,
        wchar_t *to,
        wchar_t *to_limit,
        wchar_t **const to_next)
{
  int v8; // r3
  int v9; // r4
  const char *v10; // r6
  const char *v11; // r0
  wchar_t *v12; // r3
  wchar_t v13; // r1

  v8 = from_end - from;
  v9 = to_limit - to;
  if ( v9 > v8 )
    v9 = v8;
  v10 = &from[v9];
  if ( v9 > 0 )
  {
    v11 = &from[v9];
    v12 = to;
    do
    {
      v13 = *(unsigned __int8 *)from++;
      *v12++ = v13;
    }
    while ( from != v11 );
  }
  *from_next = v10;
  *to_next = &to[v9];
  return std::codecvt_base::result::ok;
}


// ===== 8b8fcc std::codecvt<wchar_t,char,mbstate_t>::do_unshift(mbstate_t&,char *,char *,char *&) =====
std::codecvt_base::result __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_unshift(
        const std::codecvt<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const a2,
        char *to,
        char *a4,
        char **const to_next)
{
  *to_next = to;
  return std::codecvt_base::result::noconv;
}


// ===== 8b8fd4 std::codecvt<wchar_t,char,mbstate_t>::do_encoding(void) =====
int __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_encoding(
        const std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8fd8 std::codecvt<wchar_t,char,mbstate_t>::do_always_noconv(void) =====
bool __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_always_noconv(
        const std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8fdc std::codecvt<wchar_t,char,mbstate_t>::do_length(mbstate_t&,char const*,char const*,uint) =====
int __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_length(
        const std::codecvt<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const a2,
        const char *from,
        const char *end,
        size_t mx)
{
  int result; // r0

  result = end - from;
  if ( end - from > mx )
    return mx;
  return result;
}


// ===== 8b8fe8 std::codecvt<wchar_t,char,mbstate_t>::do_max_length(void) =====
int __fastcall std::codecvt<wchar_t,char,mbstate_t>::do_max_length(
        const std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  return 1;
}


// ===== 8b8fec std::codecvt<wchar_t,char,mbstate_t>::~codecvt() =====
std::codecvt<wchar_t,char,mbstate_t> *__fastcall std::codecvt<wchar_t,char,mbstate_t>::~codecvt(
        std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994690;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b900c std::codecvt<wchar_t,char,mbstate_t>::~codecvt() =====
void *__fastcall std::codecvt<wchar_t,char,mbstate_t>::~codecvt(std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  std::codecvt<wchar_t,char,mbstate_t>::~codecvt(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b9020 std::codecvt<wchar_t,char,mbstate_t>::~codecvt() =====
std::codecvt<wchar_t,char,mbstate_t> *__fastcall std::codecvt<wchar_t,char,mbstate_t>::~codecvt(
        std::codecvt<wchar_t,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994690;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9040 std::codecvt<char,char,mbstate_t>::~codecvt() =====
std::codecvt<char,char,mbstate_t> *__fastcall std::codecvt<char,char,mbstate_t>::~codecvt(
        std::codecvt<char,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9946C0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9060 std::codecvt<char,char,mbstate_t>::~codecvt() =====
void *__fastcall std::codecvt<char,char,mbstate_t>::~codecvt(std::codecvt<char,char,mbstate_t> *const this)
{
  std::codecvt<char,char,mbstate_t>::~codecvt(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b9074 std::codecvt<char,char,mbstate_t>::~codecvt() =====
std::codecvt<char,char,mbstate_t> *__fastcall std::codecvt<char,char,mbstate_t>::~codecvt(
        std::codecvt<char,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9946C0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9094 std::collate<char>::do_hash(char const*,char const*) =====
int __fastcall std::collate<char>::do_hash(const std::collate<char> *const this, const char *low, const char *high)
{
  int v3; // r3
  int result; // r0
  int v5; // r0

  v3 = 0;
  result = 0;
  if ( low < high )
  {
    do
    {
      v5 = *(unsigned __int8 *)low++;
      v3 = 5 * v3 + v5;
    }
    while ( low != high );
    return v3;
  }
  return result;
}


// ===== 8b90b0 std::collate<wchar_t>::do_compare(wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*) =====
int __fastcall std::collate<wchar_t>::do_compare(
        const std::collate<wchar_t> *const this,
        const wchar_t *low1,
        const wchar_t *high1,
        const wchar_t *low2,
        const wchar_t *high2)
{
  if ( low2 != high2 )
  {
    while ( low1 != high1 )
    {
      if ( *low1 < *low2 )
        return -1;
      if ( *low1 > *low2 )
        return 1;
      ++low2;
      ++low1;
      if ( high2 == low2 )
        return high1 != low1;
    }
  }
  if ( high2 == low2 )
    return high1 != low1;
  else
    return -1;
}


// ===== 8b90e8 std::collate<wchar_t>::do_hash(wchar_t const*,wchar_t const*) =====
int __fastcall std::collate<wchar_t>::do_hash(
        const std::collate<wchar_t> *const this,
        const wchar_t *low,
        const wchar_t *high)
{
  int v3; // r3
  int result; // r0
  int v5; // r0

  v3 = 0;
  result = 0;
  if ( low < high )
  {
    do
    {
      v5 = *low++;
      v3 = 5 * v3 + v5;
    }
    while ( high > low );
    return v3;
  }
  return result;
}


// ===== 8b9100 std::string::_M_range_initialize<char const*>(char const*,char const*,std::forward_iterator_tag const&) =====
void __fastcall std::string::_M_range_initialize<char const*>(
        std::string *const this,
        const char *__f,
        const char *__l,
        const std::forward_iterator_tag *const a4)
{
  JUMPOUT(0x8B9680);
}


// ===== 8b912c std::collate<char>::do_transform(char const*,char const*) =====
std::string *__fastcall std::collate<char>::do_transform(
        std::string *__return_ptr retstr,
        const std::collate<char> *const this,
        const char *low,
        const char *high)
{
  std::forward_iterator_tag v6; // [sp+4h] [bp-4h] BYREF

  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  std::string::_M_range_initialize<char const*>(retstr, low, high, &v6);
  return retstr;
}


// ===== 8b9148 std::collate<wchar_t>::~collate() =====
std::collate<wchar_t> *__fastcall std::collate<wchar_t>::~collate(std::collate<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9946F0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9168 std::collate<wchar_t>::~collate() =====
void *__fastcall std::collate<wchar_t>::~collate(std::collate<wchar_t> *const this)
{
  std::collate<wchar_t>::~collate(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b917c std::collate<wchar_t>::~collate() =====
std::collate<wchar_t> *__fastcall std::collate<wchar_t>::~collate(std::collate<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9946F0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b919c std::collate<char>::~collate() =====
std::collate<char> *__fastcall std::collate<char>::~collate(std::collate<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994710;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b91bc std::collate<char>::~collate() =====
void *__fastcall std::collate<char>::~collate(std::collate<char> *const this)
{
  std::collate<char>::~collate(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b91d0 std::collate<char>::~collate() =====
std::collate<char> *__fastcall std::collate<char>::~collate(std::collate<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994710;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b91f0 std::collate<char>::do_compare(char const*,char const*,char const*,char const*) =====
int __fastcall std::collate<char>::do_compare(
        const std::collate<char> *const this,
        const char *low1,
        const char *high1,
        const char *low2,
        const char *high2)
{
  int v5; // r5
  _BYTE *v6; // r4
  char v7; // r2

  v5 = high1 - low1;
  v6 = (_BYTE *)(high2 - low2);
  v7 = (_BYTE)high2 - (_BYTE)low2;
  if ( high2 - low2 > v5 )
    v7 = v5;
  v6[12] = (_BYTE)low1;
  v6[16] = (_BYTE)low1;
  v6[13] = (_BYTE)low2;
  v6[14] = v7;
  v6[15] = (_BYTE)low2;
  v6[17] = (_BYTE)low2;
  v6[18] = v7;
  v6[19] = (_BYTE)low2;
  return high2 - low2;
}


// ===== 8b921c std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_range_initialize<wchar_t const*>(wchar_t const*,wchar_t const*,std::forward_iterator_tag const&) =====
void __fastcall std::wstring::_M_range_initialize<wchar_t const*>(
        std::wstring *const this,
        const wchar_t *__f,
        const wchar_t *__l,
        const std::forward_iterator_tag *const a4)
{
  int v4; // r6
  wchar_t *M_data; // r3

  v4 = (char *)__l - (char *)__f;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(this, __l - __f + 1);
  M_data = this->_M_start_of_storage._M_data;
  if ( __f == __l )
  {
    this->_M_finish = M_data;
    *M_data = 0;
  }
  else
  {
    std::priv::__valid_grouping((const char *)(2 * v4), (const char *)__f, loc_8B99A4, (const char *)M_data);
  }
}


// ===== 8b9248 std::collate<wchar_t>::do_transform(wchar_t const*,wchar_t const*) =====
std::wstring *__fastcall std::collate<wchar_t>::do_transform(
        std::wstring *__return_ptr retstr,
        const std::collate<wchar_t> *const this,
        const wchar_t *low,
        const wchar_t *high)
{
  std::forward_iterator_tag v6; // [sp+4h] [bp-4h] BYREF

  retstr->_M_finish = (wchar_t *)retstr;
  retstr->_M_start_of_storage._M_data = (wchar_t *)retstr;
  std::wstring::_M_range_initialize<wchar_t const*>(retstr, low, high, &v6);
  return retstr;
}


// ===== 8b9264 std::moneypunct<char,true>::do_decimal_point(void) =====
char __fastcall std::moneypunct<char,true>::do_decimal_point(const std::moneypunct<char,true> *const this)
{
  return 32;
}


// ===== 8b9268 std::moneypunct<char,true>::do_thousands_sep(void) =====
char __fastcall std::moneypunct<char,true>::do_thousands_sep(const std::moneypunct<char,true> *const this)
{
  return 32;
}


// ===== 8b926c std::moneypunct<char,true>::do_pos_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<char,true>::do_pos_format(
        const std::moneypunct<char,true> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_pos_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_pos_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_pos_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_pos_format) << 24));
}


// ===== 8b928c std::moneypunct<char,true>::do_neg_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<char,true>::do_neg_format(
        const std::moneypunct<char,true> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_neg_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_neg_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_neg_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_neg_format) << 24));
}


// ===== 8b92ac std::moneypunct<char,true>::do_frac_digits(void) =====
int __fastcall std::moneypunct<char,true>::do_frac_digits(const std::moneypunct<char,true> *const this)
{
  return 0;
}


// ===== 8b92b0 std::moneypunct<char,false>::do_decimal_point(void) =====
char __fastcall std::moneypunct<char,false>::do_decimal_point(const std::moneypunct<char,false> *const this)
{
  return 32;
}


// ===== 8b92b4 std::moneypunct<char,false>::do_thousands_sep(void) =====
char __fastcall std::moneypunct<char,false>::do_thousands_sep(const std::moneypunct<char,false> *const this)
{
  return 32;
}


// ===== 8b92b8 std::moneypunct<char,false>::do_pos_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<char,false>::do_pos_format(
        const std::moneypunct<char,false> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_pos_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_pos_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_pos_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_pos_format) << 24));
}


// ===== 8b92d8 std::moneypunct<char,false>::do_neg_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<char,false>::do_neg_format(
        const std::moneypunct<char,false> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_neg_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_neg_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_neg_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_neg_format) << 24));
}


// ===== 8b92f8 std::moneypunct<char,false>::do_frac_digits(void) =====
int __fastcall std::moneypunct<char,false>::do_frac_digits(const std::moneypunct<char,false> *const this)
{
  return 0;
}


// ===== 8b92fc std::moneypunct<wchar_t,true>::do_decimal_point(void) =====
wchar_t __fastcall std::moneypunct<wchar_t,true>::do_decimal_point(const std::moneypunct<wchar_t,true> *const this)
{
  return 32;
}


// ===== 8b9300 std::moneypunct<wchar_t,true>::do_thousands_sep(void) =====
wchar_t __fastcall std::moneypunct<wchar_t,true>::do_thousands_sep(const std::moneypunct<wchar_t,true> *const this)
{
  return 32;
}


// ===== 8b9304 std::moneypunct<wchar_t,true>::do_frac_digits(void) =====
int __fastcall std::moneypunct<wchar_t,true>::do_frac_digits(const std::moneypunct<wchar_t,true> *const this)
{
  return 0;
}


// ===== 8b9308 std::moneypunct<wchar_t,true>::do_pos_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<wchar_t,true>::do_pos_format(
        const std::moneypunct<wchar_t,true> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_pos_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_pos_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_pos_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_pos_format) << 24));
}


// ===== 8b9328 std::moneypunct<wchar_t,true>::do_neg_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<wchar_t,true>::do_neg_format(
        const std::moneypunct<wchar_t,true> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_neg_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_neg_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_neg_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_neg_format) << 24));
}


// ===== 8b9348 std::moneypunct<wchar_t,false>::do_decimal_point(void) =====
wchar_t __fastcall std::moneypunct<wchar_t,false>::do_decimal_point(const std::moneypunct<wchar_t,false> *const this)
{
  return 32;
}


// ===== 8b934c std::moneypunct<wchar_t,false>::do_thousands_sep(void) =====
wchar_t __fastcall std::moneypunct<wchar_t,false>::do_thousands_sep(const std::moneypunct<wchar_t,false> *const this)
{
  return 32;
}


// ===== 8b9350 std::moneypunct<wchar_t,false>::do_frac_digits(void) =====
int __fastcall std::moneypunct<wchar_t,false>::do_frac_digits(const std::moneypunct<wchar_t,false> *const this)
{
  return 0;
}


// ===== 8b9354 std::moneypunct<wchar_t,false>::do_pos_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<wchar_t,false>::do_pos_format(
        const std::moneypunct<wchar_t,false> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_pos_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_pos_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_pos_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_pos_format) << 24));
}


// ===== 8b9374 std::moneypunct<wchar_t,false>::do_neg_format(void) =====
std::money_base::pattern __fastcall std::moneypunct<wchar_t,false>::do_neg_format(
        const std::moneypunct<wchar_t,false> *const this)
{
  return (std::money_base::pattern)((unsigned __int8)*(_DWORD *)&this->_M_neg_format
                                  | ((unsigned __int8)BYTE1(*(_DWORD *)&this->_M_neg_format) << 8)
                                  | ((unsigned __int8)BYTE2(*(_DWORD *)&this->_M_neg_format) << 16)
                                  | ((unsigned __int8)HIBYTE(*(_DWORD *)&this->_M_neg_format) << 24));
}


// ===== 8b9394 std::moneypunct<wchar_t,false>::~moneypunct() =====
std::moneypunct<wchar_t,false> *__fastcall std::moneypunct<wchar_t,false>::~moneypunct(
        std::moneypunct<wchar_t,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994730;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b93b4 std::moneypunct<wchar_t,false>::~moneypunct() =====
void *__fastcall std::moneypunct<wchar_t,false>::~moneypunct(std::moneypunct<wchar_t,false> *const this)
{
  std::moneypunct<wchar_t,false>::~moneypunct(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b93c8 std::moneypunct<wchar_t,false>::~moneypunct() =====
std::moneypunct<wchar_t,false> *__fastcall std::moneypunct<wchar_t,false>::~moneypunct(
        std::moneypunct<wchar_t,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994730;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b93e8 std::moneypunct<wchar_t,true>::~moneypunct() =====
std::moneypunct<wchar_t,true> *__fastcall std::moneypunct<wchar_t,true>::~moneypunct(
        std::moneypunct<wchar_t,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994768;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9408 std::moneypunct<wchar_t,true>::~moneypunct() =====
void *__fastcall std::moneypunct<wchar_t,true>::~moneypunct(std::moneypunct<wchar_t,true> *const this)
{
  std::moneypunct<wchar_t,true>::~moneypunct(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b941c std::moneypunct<wchar_t,true>::~moneypunct() =====
std::moneypunct<wchar_t,true> *__fastcall std::moneypunct<wchar_t,true>::~moneypunct(
        std::moneypunct<wchar_t,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994768;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b943c std::moneypunct<char,false>::~moneypunct() =====
std::moneypunct<char,false> *__fastcall std::moneypunct<char,false>::~moneypunct(
        std::moneypunct<char,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9947A0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b945c std::moneypunct<char,false>::~moneypunct() =====
void *__fastcall std::moneypunct<char,false>::~moneypunct(std::moneypunct<char,false> *const this)
{
  std::moneypunct<char,false>::~moneypunct(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep(this);
}


// ===== 8b9470 std::moneypunct<char,false>::~moneypunct() =====
std::moneypunct<char,false> *__fastcall std::moneypunct<char,false>::~moneypunct(
        std::moneypunct<char,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9947A0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b9490 std::moneypunct<char,true>::~moneypunct() =====
std::moneypunct<char,true> *__fastcall std::moneypunct<char,true>::~moneypunct(std::moneypunct<char,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9947D8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b94b0 std::moneypunct<char,true>::~moneypunct() =====
void *__fastcall std::moneypunct<char,true>::~moneypunct(std::moneypunct<char,true> *const this)
{
  std::moneypunct<char,true>::~moneypunct(this);
  return (void *)std::moneypunct<char,false>::do_thousands_sep((const std::moneypunct<char,false> *const)this);
}


// ===== 8b94c4 std::moneypunct<char,true>::~moneypunct() =====
std::moneypunct<char,true> *__fastcall std::moneypunct<char,true>::~moneypunct(std::moneypunct<char,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9947D8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8b94e4 std::moneypunct<char,true>::moneypunct(uint) =====
void __fastcall std::moneypunct<char,true>::moneypunct(std::moneypunct<char,true> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9528 std::string::string(std::string const&) [clone] =====
void __fastcall std::string::string(
        std::string *const this,
        const std::string *const __s,
        int a3,
        int a4,
        int a5,
        int a6)
{
  unsigned __int8 M_data; // r1

  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  M_data = (unsigned __int8)std::_S_empty_string._M_start_of_storage._M_data;
  this->_M_buffers._M_end_of_storage = &std::_S_empty_string._M_buffers._M_static_buf[8];
  this->_M_buffers._M_static_buf[12] = (char)this;
  LOBYTE(this->_M_finish) = (_BYTE)this;
  *(_WORD *)&this->_M_buffers._M_static_buf[13] = M_data;
  this->_M_buffers._M_static_buf[15] = 4;
  BYTE1(this->_M_finish) = M_data;
  BYTE2(this->_M_finish) = 0;
  HIBYTE(this->_M_finish) = 4;
  __asm { POP             {R4-R6,PC} }
}


// ===== 8b9544 std::moneypunct<char,true>::do_grouping(void) =====
std::string *__fastcall std::moneypunct<char,true>::do_grouping(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b9550 std::moneypunct<char,true>::do_curr_symbol(void) =====
std::string *__fastcall std::moneypunct<char,true>::do_curr_symbol(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b955c std::moneypunct<char,true>::do_positive_sign(void) =====
std::string *__fastcall std::moneypunct<char,true>::do_positive_sign(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b9568 std::moneypunct<char,true>::do_negative_sign(void) =====
std::string *__fastcall std::moneypunct<char,true>::do_negative_sign(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b9574 std::moneypunct<char,false>::do_grouping(void) =====
std::string *__fastcall std::moneypunct<char,false>::do_grouping(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b9580 std::moneypunct<char,false>::do_curr_symbol(void) =====
std::string *__fastcall std::moneypunct<char,false>::do_curr_symbol(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b958c std::moneypunct<char,false>::do_positive_sign(void) =====
std::string *__fastcall std::moneypunct<char,false>::do_positive_sign(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b9598 std::moneypunct<char,false>::do_negative_sign(void) =====
std::string *__fastcall std::moneypunct<char,false>::do_negative_sign(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b95a4 std::moneypunct<wchar_t,true>::do_grouping(void) =====
std::string *__fastcall std::moneypunct<wchar_t,true>::do_grouping(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b95b0 std::moneypunct<wchar_t,false>::do_grouping(void) =====
std::string *__fastcall std::moneypunct<wchar_t,false>::do_grouping(
        std::string *__return_ptr retstr,
        const std::string *this,
        int a3,
        int a4)
{
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]

  std::string::string(retstr, this, a3, a4, savedregs, savedregs_4);
  return retstr;
}


// ===== 8b95bc std::moneypunct<char,true>::moneypunct(uint) =====
void __fastcall std::moneypunct<char,true>::moneypunct(std::moneypunct<char,true> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9600 std::moneypunct<wchar_t,false>::moneypunct(uint) =====
void __fastcall std::moneypunct<wchar_t,false>::moneypunct(std::moneypunct<wchar_t,false> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9644 std::moneypunct<wchar_t,false>::moneypunct(uint) =====
void __fastcall std::moneypunct<wchar_t,false>::moneypunct(std::moneypunct<wchar_t,false> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9688 std::moneypunct<wchar_t,true>::moneypunct(uint) =====
void __fastcall std::moneypunct<wchar_t,true>::moneypunct(std::moneypunct<wchar_t,true> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b96cc std::moneypunct<wchar_t,true>::moneypunct(uint) =====
void __fastcall std::moneypunct<wchar_t,true>::moneypunct(std::moneypunct<wchar_t,true> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9710 std::moneypunct<char,false>::moneypunct(uint) =====
void __fastcall std::moneypunct<char,false>::moneypunct(std::moneypunct<char,false> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9754 std::moneypunct<char,false>::moneypunct(uint) =====
void __fastcall std::moneypunct<char,false>::moneypunct(std::moneypunct<char,false> *const this, size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8B8FB2);
}


// ===== 8b9798 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_string() =====
void __fastcall std::wstring::~wstring(std::wstring *const this)
{
  JUMPOUT(0x8B93B2);
}


// ===== 8b97a4 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_string(std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) [clone] =====
std::wstring *__fastcall std::wstring::basic_string(std::wstring *const this, const std::wstring *const __s)
{
  this->_M_finish = (wchar_t *)this;
  this->_M_start_of_storage._M_data = (wchar_t *)this;
  std::wstring::_M_range_initialize(
    this,
    std::_S_empty_wstring._M_start_of_storage._M_data,
    std::_S_empty_wstring._M_finish);
  return this;
}


// ===== 8b97c0 std::moneypunct<wchar_t,true>::do_curr_symbol(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,true>::do_curr_symbol(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b97cc std::moneypunct<wchar_t,true>::do_positive_sign(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,true>::do_positive_sign(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b97d8 std::moneypunct<wchar_t,true>::do_negative_sign(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,true>::do_negative_sign(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b97e4 std::moneypunct<wchar_t,false>::do_curr_symbol(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,false>::do_curr_symbol(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b97f0 std::moneypunct<wchar_t,false>::do_positive_sign(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,false>::do_positive_sign(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b97fc std::moneypunct<wchar_t,false>::do_negative_sign(void) =====
std::wstring *__fastcall std::moneypunct<wchar_t,false>::do_negative_sign(
        std::wstring *__return_ptr retstr,
        const std::wstring *this)
{
  std::wstring::basic_string(retstr, this);
  return retstr;
}


// ===== 8b9808 `global constructor keyed to'monetary.cpp =====
void `global constructor keyed to'monetary.cpp()
{
  std::_S_empty_string._M_finish = (char *)&std::_S_empty_string;
  std::_S_empty_string._M_start_of_storage._M_data = (char *)&std::_S_empty_string;
  JUMPOUT(0x8B9680);
}


// ===== 8b9874 std::priv::__valid_grouping(char const*,char const*,char const*,char const*) =====
int __fastcall std::priv::__valid_grouping(
        const char *first1,
        const char *last1,
        const char *first2,
        const char *last2)
{
  const char *v4; // r1
  const char *v5; // r3
  unsigned int v6; // r4

  if ( first2 == last2 || first1 == last1 )
    return 1;
  v4 = last1 - 1;
  v5 = last2 - 1;
  if ( first1 == v4 )
  {
    v6 = *(unsigned __int8 *)first2;
    return v6 >= *(unsigned __int8 *)first1;
  }
  v6 = *(unsigned __int8 *)first2;
  if ( *(unsigned __int8 *)v4 == v6 )
  {
    while ( 1 )
    {
      --v4;
      if ( first2 != v5 )
        v6 = *(unsigned __int8 *)++first2;
      if ( v4 == first1 )
        break;
      if ( *(unsigned __int8 *)v4 != v6 )
        return 0;
    }
    return v6 >= *(unsigned __int8 *)first1;
  }
  return 0;
}


// ===== 8b98bc std::priv::__digit_val_table(uint) =====
unsigned __int8 __fastcall std::priv::__digit_val_table(unsigned int __index)
{
  return std::priv::__digit_val_table(unsigned int)::__val_table[__index];
}


// ===== 8b98c8 std::priv::__narrow_atoms(void) =====
const char *std::priv::__narrow_atoms()
{
  return "+-0xX";
}


// ===== 8b98d4 std::priv::__find<wchar_t const*,wchar_t>(wchar_t const*,wchar_t const*,wchar_t const&,std::random_access_iterator_tag const&) =====
const wchar_t *__fastcall std::priv::__find<wchar_t const*,wchar_t>(
        const wchar_t *__first,
        const wchar_t *__last,
        const wchar_t *const __val,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r4
  int v6; // r3
  int v7; // r3

  v4 = __last - __first;
  v5 = ((char *)__last - (char *)__first) >> 4;
  if ( v5 <= 0 )
  {
LABEL_13:
    switch ( v4 )
    {
      case 2:
        v7 = *__val;
        break;
      case 3:
        v7 = *__val;
        if ( *__first == *__val )
          return __first;
        ++__first;
        break;
      case 1:
        v7 = *__val;
LABEL_21:
        if ( *__first != v7 )
          return __last;
        return __first;
      default:
        return __last;
    }
    if ( *__first == v7 )
      return __first;
    ++__first;
    goto LABEL_21;
  }
  v6 = *__val;
  if ( *__first != *__val && v6 != *++__first && v6 != *++__first && v6 != *++__first )
  {
    while ( 1 )
    {
      if ( !--v5 )
      {
        ++__first;
        v4 = __last - __first;
        goto LABEL_13;
      }
      if ( __first[1] == v6 )
        return ++__first;
      if ( __first[2] == v6 )
      {
        __first += 2;
        return __first;
      }
      if ( v6 == __first[3] )
        break;
      __first += 4;
      if ( v6 == *__first )
        return __first;
    }
    __first += 3;
  }
  return __first;
}


// ===== 8b9968 std::priv::__get_fdigit(wchar_t &,wchar_t const*) =====
int __fastcall std::priv::__get_fdigit(wchar_t *const c, const wchar_t *digits)
{
  const wchar_t *v3; // r5
  const wchar_t *v5; // r0
  int v6; // r3
  std::random_access_iterator_tag v8; // [sp+4h] [bp-4h] BYREF

  v3 = digits + 10;
  v5 = std::priv::__find<wchar_t const*,wchar_t>(digits, digits + 10, c, &v8);
  v6 = 0;
  if ( v3 != v5 )
  {
    *c = (unsigned __int8)(v5 - digits + 48);
    return 1;
  }
  return v6;
}


// ===== 8b999c std::priv::__get_fdigit_or_sep(wchar_t &,wchar_t,wchar_t const*) =====
int __fastcall std::priv::__get_fdigit_or_sep(wchar_t *const c, wchar_t sep, const wchar_t *digits)
{
  if ( *c != sep )
    return std::priv::__get_fdigit(c, digits);
  *c = 44;
  return 1;
}


// ===== 8b99b4 std::priv::__hex_char_table_lo(void) =====
const char *std::priv::__hex_char_table_lo()
{
  return "0123456789abcdefx";
}


// ===== 8b99c0 std::priv::__hex_char_table_hi(void) =====
const char *std::priv::__hex_char_table_hi()
{
  return "0123456789ABCDEFX";
}


// ===== 8b99cc std::priv::__insert_grouping(wchar_t *,wchar_t *,std::string const&,wchar_t,wchar_t,wchar_t,int) =====
ptrdiff_t __fastcall std::priv::__insert_grouping(
        wchar_t *first,
        wchar_t *last,
        const std::string *const grouping,
        wchar_t separator,
        wchar_t Plus,
        wchar_t Minus,
        int basechars)
{
  wchar_t *v7; // r4
  int v10; // r7
  int v11; // r11
  int v12; // r5
  wchar_t *v13; // r0
  wchar_t *v14; // r7
  unsigned int i; // r3
  char *M_data; // r2
  unsigned int v17; // r8

  v7 = last;
  v10 = 0;
  if ( first != last )
  {
    if ( Plus == *first || (v11 = 0, Minus == *first) )
    {
      ++first;
      v11 = 1;
    }
    v12 = 0;
    v13 = &first[basechars];
    v14 = last;
    for ( i = 0; ; i = v17 )
    {
      M_data = grouping->_M_start_of_storage._M_data;
      v17 = i;
      if ( grouping->_M_finish - M_data > i )
      {
        v12 = (unsigned __int8)M_data[i];
        v17 = i + 1;
      }
      if ( !v12 || v12 == 255 || v12 >= v7 - v13 )
        break;
      v7 -= v12;
      if ( (char *)++v14 - (char *)v7 > 0 )
        JUMPOUT(0x8B9F3C);
      *v7 = separator;
    }
    return basechars + v11 + v14 - v13;
  }
  return v10;
}


// ===== 8b9a6c std::priv::__insert_grouping(char *,char *,std::string const&,char,char,char,int) =====
char *__fastcall std::priv::__insert_grouping(
        char *first,
        char *last,
        const std::string *const grouping,
        char separator,
        unsigned __int8 Plus,
        unsigned __int8 Minus,
        int basechars)
{
  char *v8; // r4
  int v10; // r7
  int v11; // r3
  int v12; // r11
  char *v13; // r7
  unsigned int v14; // r3
  int v15; // r5
  char *M_data; // r2
  unsigned int v17; // r8

  v8 = last;
  v10 = 0;
  if ( first != last )
  {
    v11 = (unsigned __int8)*first;
    if ( Plus == v11 || (v12 = 0, Minus == v11) )
    {
      ++first;
      v12 = 1;
    }
    v13 = last;
    v14 = 0;
    v15 = 0;
    while ( 1 )
    {
      M_data = grouping->_M_start_of_storage._M_data;
      v17 = v14;
      if ( grouping->_M_finish - M_data > v14 )
      {
        v15 = (unsigned __int8)M_data[v14];
        v17 = v14 + 1;
      }
      if ( v15 <= 0 || v15 == 255 || v15 >= v8 - &first[basechars] )
        break;
      v8 -= v15;
      if ( ++v13 - v8 > 0 )
        JUMPOUT(0x8B9F3C);
      *v8 = separator;
      v14 = v17;
    }
    return &v13[v12 - (_DWORD)first];
  }
  return (char *)v10;
}


// ===== 8b9b08 std::priv::__write_integer(char *,int,long) =====
char *__fastcall std::priv::__write_integer(char *buf, __int16 flags, unsigned int x)
{
  int v4; // r6
  char *result; // r0
  char __buf[8]; // [sp+44h] [bp-8h] BYREF

  v4 = __buf - std::priv::__write_integer_backward<long>(__buf, flags, x);
  result = buf;
  if ( v4 )
    JUMPOUT(0x8B9F3C);
  return result;
}


// ===== 8b9b50 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(uint) [clone] =====
size_t __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        size_t __n)
{
  unsigned int v2; // r3
  int v3; // r2
  size_t result; // r0

  v2 = this->_M_finish - this->_M_start_of_storage._M_data;
  v3 = v2;
  if ( !v2 )
    v3 = 1;
  result = v2 + 1 + v3;
  if ( result > 0x3FFFFFFE || v2 > result )
    return 1073741822;
  return result;
}


// ===== 8b9b7c std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(uint) [clone] =====
size_t __fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        size_t __n)
{
  unsigned int v2; // r4
  int v3; // r3
  size_t result; // r0

  v2 = this->_M_finish - this->_M_start_of_storage._M_data;
  if ( v2 == -2 )
  {
    std::__stl_throw_length_error("basic_string");
    result = -3;
  }
  else
  {
    v3 = this->_M_finish - this->_M_start_of_storage._M_data;
    if ( !v2 )
      v3 = 1;
    result = v2 + 1 + v3;
    if ( result == -1 )
      return -2;
  }
  if ( v2 > result )
    return -2;
  return result;
}


// ===== 8b9bb8 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_insert_aux(char *,char) =====
std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_insert_aux(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *__p,
        char __c)
{
  char *M_finish; // r3
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *v7; // r6
  size_t size; // r9
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *p_M_start_of_storage; // r8
  char *M_data; // r0
  char *v12; // r3
  char *v13; // r7
  int v14; // r0
  int i; // r3
  char v16; // r1
  char *v17; // r2
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *v18; // r0
  char *v19; // r1

  if ( (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)this->_M_start_of_storage._M_data == this )
  {
    M_finish = this->_M_finish;
    if ( (unsigned int)((char *)&this->_M_finish - M_finish) > 1 )
      goto LABEL_3;
  }
  else
  {
    M_finish = this->_M_finish;
    if ( (unsigned int)(this->_M_buffers._M_end_of_storage - M_finish) > 1 )
    {
LABEL_3:
      M_finish[1] = 0;
      if ( (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)this->_M_finish != __p )
        JUMPOUT(0x8B9F3C);
      __p->_M_static_buf[0] = __c;
      v7 = __p;
      ++this->_M_finish;
      return v7;
    }
  }
  size = std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
           this,
           (size_t)__p);
  p_M_start_of_storage = &this->_M_start_of_storage;
  if ( size > 0x101 )
    JUMPOUT(0x8B9890);
  M_data = this->_M_start_of_storage._M_data;
  v7 = &this->_M_start_of_storage;
  v12 = nullptr;
  if ( (char *)__p - M_data > 0 )
  {
    do
    {
      v12[(_DWORD)p_M_start_of_storage] = v12[(_DWORD)M_data];
      ++v12;
    }
    while ( v12 != (char *)((char *)__p - M_data) );
    v7 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)&v12[(_DWORD)p_M_start_of_storage];
  }
  v7->_M_static_buf[0] = __c;
  v13 = &v7->_M_static_buf[1];
  v14 = this->_M_finish - (char *)__p;
  if ( v14 > 0 )
  {
    for ( i = 0; i != v14; ++i )
    {
      v16 = __p->_M_static_buf[i];
      v17 = &v7->_M_static_buf[i];
      v17[1] = v16;
    }
    v13 += i;
  }
  *v13 = 0;
  v18 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)this->_M_start_of_storage._M_data;
  if ( this != (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)v18
    && v18
    && v18 != &this->_M_start_of_storage )
  {
    v19 = (char *)(this->_M_buffers._M_end_of_storage - (char *)v18);
    if ( (unsigned int)v19 > 0x80 )
      JUMPOUT(0x8BA2B4);
    std::__node_alloc::_M_deallocate(v18, (size_t)v19);
  }
  this->_M_buffers._M_end_of_storage = &p_M_start_of_storage->_M_static_buf[size];
  this->_M_finish = v13;
  this->_M_start_of_storage._M_data = (char *)p_M_start_of_storage;
  return v7;
}


// ===== 8b9ca4 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_reserve(uint) =====
void __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_reserve(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        size_t __n)
{
  std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *p_M_start_of_storage; // r4
  wchar_t *M_data; // r0
  int v6; // r12
  wchar_t *v7; // r6
  int v8; // r2
  int v9; // r3

  p_M_start_of_storage = &this->_M_start_of_storage;
  if ( __n > 0x101 )
    p_M_start_of_storage = (std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *)std::allocator<wchar_t>::allocate((std::allocator<wchar_t> *const)&this->_M_start_of_storage, __n, nullptr);
  M_data = this->_M_start_of_storage._M_data;
  v6 = this->_M_finish - M_data;
  v7 = (wchar_t *)p_M_start_of_storage;
  if ( v6 > 0 )
  {
    v8 = this->_M_finish - M_data;
    v9 = 0;
    do
    {
      --v8;
      p_M_start_of_storage->_M_static_buf[v9] = M_data[v9];
      ++v9;
    }
    while ( v8 );
    v7 = &p_M_start_of_storage->_M_static_buf[v6];
  }
  *v7 = 0;
  std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_deallocate_block(this);
  this->_M_buffers._M_static_buf[0] = (wchar_t)p_M_start_of_storage + 4 * __n;
  this->_M_finish = v7;
  this->_M_start_of_storage._M_data = (wchar_t *)p_M_start_of_storage;
}


// ===== 8b9d0c std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(wchar_t) =====
void __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t __c)
{
  wchar_t *M_finish; // r3
  signed int v5; // r2
  size_t size; // r0

  M_finish = this->_M_finish;
  if ( (std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const)this->_M_start_of_storage._M_data == this )
    v5 = 16 - (((char *)M_finish - (char *)this) >> 2);
  else
    v5 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
  if ( v5 == 1 )
  {
    size = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
             this,
             __c);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_reserve(
      this,
      size);
    M_finish = this->_M_finish;
  }
  M_finish[1] = 0;
  *this->_M_finish++ = __c;
}


// ===== 8b9d58 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_insert_aux(wchar_t *,wchar_t) =====
std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_insert_aux(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__p,
        wchar_t __c)
{
  wchar_t *M_finish; // r3
  unsigned int v7; // r2
  size_t size; // r10
  std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *p_M_start_of_storage; // r7
  wchar_t *M_data; // r0
  std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *v12; // r6
  int v13; // r2
  int v14; // r3
  wchar_t *v15; // r8
  int v16; // r12
  int v17; // r2
  int v18; // r3

  M_finish = this->_M_finish;
  if ( (std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const)this->_M_start_of_storage._M_data == this )
    v7 = 16 - (((char *)M_finish - (char *)this) >> 2);
  else
    v7 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
  if ( v7 > 1 )
  {
    M_finish[1] = 0;
    JUMPOUT(0x8B96DE);
  }
  size = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
           this,
           (size_t)__p);
  p_M_start_of_storage = &this->_M_start_of_storage;
  if ( size > 0x101 )
    p_M_start_of_storage = (std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *)std::allocator<wchar_t>::allocate((std::allocator<wchar_t> *const)&this->_M_start_of_storage, size, nullptr);
  M_data = this->_M_start_of_storage._M_data;
  v12 = p_M_start_of_storage;
  if ( __p - M_data > 0 )
  {
    v13 = __p - M_data;
    v14 = 0;
    do
    {
      --v13;
      p_M_start_of_storage->_M_static_buf[v14] = M_data[v14];
      ++v14;
    }
    while ( v13 );
    v12 = (std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *)((char *)p_M_start_of_storage + 4 * (__p - M_data));
  }
  v15 = &v12->_M_static_buf[1];
  v12->_M_static_buf[0] = __c;
  v16 = this->_M_finish - __p;
  if ( v16 > 0 )
  {
    v17 = this->_M_finish - __p;
    v18 = 0;
    do
    {
      --v17;
      v12->_M_static_buf[v18 + 1] = __p[v18];
      ++v18;
    }
    while ( v17 );
    v15 += v16;
  }
  *v15 = 0;
  std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_deallocate_block(this);
  this->_M_buffers._M_static_buf[0] = (wchar_t)p_M_start_of_storage + 4 * size;
  this->_M_finish = v15;
  this->_M_start_of_storage._M_data = (wchar_t *)p_M_start_of_storage;
  return v12;
}


// ===== 8b9e54 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::insert(wchar_t *,wchar_t) =====
std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::insert(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__p,
        wchar_t __c)
{
  if ( __p != this->_M_finish )
    return std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_insert_aux(
             this,
             __p,
             __c);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(this, __c);
  return (std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *)(this->_M_finish - 1);
}


// ===== 8b9e70 std::priv::__insert_grouping(std::priv::__basic_iostring<wchar_t> &,uint,std::string const&,wchar_t,wchar_t,wchar_t,int) =====
void __fastcall std::priv::__insert_grouping(
        std::priv::__iowstring *const str,
        size_t group_pos,
        const std::string *const grouping,
        wchar_t separator,
        wchar_t Plus,
        wchar_t Minus,
        int basechars)
{
  wchar_t *M_data; // r3
  int v11; // r9
  std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *v12; // r0
  int v13; // r4
  unsigned int i; // r3
  char *v15; // r2
  unsigned int v16; // r7

  M_data = str->_M_start_of_storage._M_data;
  if ( group_pos <= str->_M_finish - M_data )
  {
    v11 = (Plus == *M_data || Minus == *M_data) + basechars;
    v12 = (std::priv::_STLP_alloc_proxy<wchar_t*,wchar_t,std::priv::__iostring_allocator<wchar_t> > *)&M_data[group_pos];
    v13 = 0;
    for ( i = 0; ; i = v16 )
    {
      v15 = grouping->_M_start_of_storage._M_data;
      v16 = i;
      if ( grouping->_M_finish - v15 > i )
      {
        v13 = (unsigned __int8)v15[i];
        v16 = i + 1;
      }
      if ( !v13 || v13 >= (((char *)v12 - (char *)str->_M_start_of_storage._M_data) >> 2) - v11 || v13 == 255 )
        break;
      v12 = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::insert(
              str,
              &v12->_M_static_buf[-v13],
              separator);
    }
  }
}


// ===== 8b9ef8 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::insert(char *,char) =====
std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::insert(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *__p,
        char __c)
{
  if ( __p != (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)this->_M_finish )
    return std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_insert_aux(
             this,
             __p,
             __c);
  std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(this, __c);
  return (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)(this->_M_finish - 1);
}


// ===== 8b9f14 std::priv::__insert_grouping(std::priv::__basic_iostring<char> &,uint,std::string const&,char,char,char,int) =====
void __fastcall std::priv::__insert_grouping(
        std::priv::__iostring *const str,
        char *group_pos,
        const std::string *const grouping,
        char separator,
        unsigned __int8 Plus,
        unsigned __int8 Minus,
        int basechars)
{
  char *M_data; // r0
  int v11; // r3
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *v12; // r0
  int v13; // r9
  unsigned int v14; // r3
  signed int v15; // r4
  char *v16; // r2
  unsigned int v17; // r7

  M_data = str->_M_start_of_storage._M_data;
  if ( group_pos <= (char *)(str->_M_finish - M_data) )
  {
    v11 = (unsigned __int8)*M_data;
    v12 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)&group_pos[(_DWORD)M_data];
    v13 = (Minus == v11 || Plus == v11) + basechars;
    v14 = 0;
    v15 = 0;
    while ( 1 )
    {
      v16 = grouping->_M_start_of_storage._M_data;
      v17 = v14;
      if ( grouping->_M_finish - v16 > v14 )
      {
        v15 = (unsigned __int8)v16[v14];
        v17 = v14 + 1;
      }
      if ( !v15 || v15 >= (char *)v12 - str->_M_start_of_storage._M_data - v13 || v15 == 255 )
        break;
      v12 = std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::insert(
              str,
              (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)((char *)v12 - v15),
              separator);
      v14 = v17;
    }
  }
}


// ===== 8b9fa0 std::priv::_Stl_norm_and_round(ulong long &,int &,ulong long,ulong long) =====
void __fastcall std::priv::_Stl_norm_and_round(
        std::priv::uint64 *const p,
        int *const norm,
        __int64 prodhi,
        std::priv::uint64 prodlo)
{
  signed __int64 v4; // kr00_8
  int v5; // r2
  int v6; // r4

  v4 = prodlo;
  *norm = 0;
  if ( prodhi < 0 )
  {
    *p = prodhi;
  }
  else
  {
    if ( prodhi == 0x7FFFFFFFFFFFFFFFLL && HIDWORD(prodlo) >> 30 == 3 )
    {
      *(_DWORD *)p = 0;
      *((_DWORD *)p + 1) = 0x80000000;
      return;
    }
    *((_DWORD *)p + 1) = prodhi >> 31;
    *(_DWORD *)p = (2 * prodhi) | (HIDWORD(prodlo) >> 31);
    *norm = 1;
    v4 = 2 * prodlo;
  }
  if ( v4 < 0 )
  {
    v5 = *(_DWORD *)p;
    if ( (*(_DWORD *)p & 1) != 0 || v4 != 0x8000000000000000LL )
    {
      v6 = __CFADD__(v5, 1) + *((_DWORD *)p + 1);
      *(_DWORD *)p = v5 + 1;
      *((_DWORD *)p + 1) = v6;
      if ( !((v5 + 1) | v6) )
        *p = 1;
    }
  }
}


// ===== 8ba038 std::priv::_Stl_tenscale(ulong long &,int,int &) =====
void __fastcall std::priv::_Stl_tenscale(std::priv::uint64 *const p, int exp, int *const bexp)
{
  int v3; // r4
  int v4; // r3
  int v5; // r4
  int v6; // r3
  int v7; // [sp+64h] [bp-10h]

  *bexp = 0;
  if ( exp )
  {
    if ( exp <= 0 )
    {
      v5 = 0;
      v6 = exp;
      do
      {
        ++v5;
        v6 += 28;
      }
      while ( v6 < 0 );
      goto LABEL_11;
    }
    v7 = exp;
    if ( exp > 27 )
    {
      v3 = 1;
      v4 = exp + 1;
      do
      {
        v4 -= 28;
        ++v3;
      }
      while ( v4 > 27 );
      v7 = v4;
      if ( v3 != 1 )
LABEL_11:
        JUMPOUT(0x8B995C);
    }
    if ( v7 )
      JUMPOUT(0x8BA95C);
  }
}


// ===== 8ba288 std::priv::_Stl_string_to_double(char const*) =====
double __fastcall std::priv::_Stl_string_to_double(const char *s)
{
  const char *v1; // r2
  int v2; // r3
  char *v3; // r1
  unsigned int v4; // r3
  int v5; // r4
  int v6; // r0
  int v7; // r3
  int v8; // r1
  int v9; // r3
  int v11; // r3
  unsigned __int8 *v12; // r2
  int v13; // r6
  unsigned int v14; // r3
  int v15; // r0
  int v16; // r3
  int v17; // r8
  double v18; // r2
  char digits[17]; // [sp+40h] [bp-1Ch] BYREF
  _BYTE v20[3]; // [sp+51h] [bp-Bh] BYREF

  v1 = s + 1;
  v2 = *(unsigned __int8 *)s;
  if ( v2 == 43 )
  {
    v2 = *((unsigned __int8 *)s + 1);
    v1 = s + 2;
    v17 = 0;
  }
  else
  {
    v17 = 0;
    if ( v2 == 45 )
    {
      v2 = *((unsigned __int8 *)s + 1);
      v1 = s + 2;
      v17 = 1;
    }
  }
  v3 = digits;
  v4 = v2 - 48;
  v5 = 0;
  v6 = 0;
  if ( v4 > 9 )
    goto LABEL_12;
LABEL_6:
  if ( v3 == v20 )
  {
    v5 += v6 ^ 1;
  }
  else
  {
    if ( v4 || v3 != digits )
      *v3++ = v4;
    v5 -= v6;
  }
  while ( 1 )
  {
    v7 = *(unsigned __int8 *)v1++;
    v4 = v7 - 48;
    if ( v4 <= 9 )
      goto LABEL_6;
LABEL_12:
    if ( v4 != -2 || v6 )
      break;
    v6 = 1;
  }
  if ( v3 == digits )
    return 0.0;
  if ( v4 != 21 && v4 != 53 )
    goto LABEL_17;
  v11 = *(unsigned __int8 *)v1;
  v12 = (unsigned __int8 *)(v1 + 1);
  if ( v11 == 32 || v11 == 43 )
  {
    v11 = *v12;
    v13 = 0;
    ++v12;
  }
  else
  {
    v13 = 0;
    if ( v11 == 45 )
    {
      v11 = *v12;
      v13 = 1;
      ++v12;
    }
  }
  v14 = v11 - 48;
  if ( v14 <= 9 )
  {
    v15 = 0;
    do
    {
      v15 = v14 + 10 * v15;
      v16 = *v12++;
      v14 = v16 - 48;
    }
    while ( v14 <= 9 );
    if ( v13 )
      v15 = -v15;
    v8 = v3 - digits;
    v9 = v15 + v5 + v8;
    if ( v9 < -306 )
      goto LABEL_18;
  }
  else
  {
LABEL_17:
    v8 = v3 - digits;
    v9 = v5 + v8;
    if ( v5 + v8 < -306 )
    {
LABEL_18:
      v18 = 0.0;
      goto LABEL_19;
    }
  }
  if ( v9 <= 309 )
  {
    if ( &digits[v8] > digits )
      JUMPOUT(0x8BA95A);
    goto LABEL_18;
  }
  v18 = INFINITY;
LABEL_19:
  if ( v17 )
    HIDWORD(v18) += 0x80000000;
  return v18;
}


// ===== 8ba6c0 std::priv::__string_to_float(std::priv::__basic_iostring<char> const&,float &) =====
void __fastcall std::priv::__string_to_float(const std::priv::__iostring *const v, float *const val)
{
  std::priv::_Stl_string_to_double(v->_M_start_of_storage._M_data);
  JUMPOUT(0x8BA6A4);
}


// ===== 8ba6d8 std::priv::__string_to_float(std::priv::__basic_iostring<char> const&,double &) =====
void __fastcall std::priv::__string_to_float(const std::priv::__iostring *const v, double *const val)
{
  *val = std::priv::_Stl_string_to_double(v->_M_start_of_storage._M_data);
}


// ===== 8ba6f0 std::priv::_Stl_atodT<long double,ieee854_long_double,16,16383>(char *,int,int) =====
double __fastcall std::priv::_Stl_atodT<long double,ieee854_long_double,16,16383>(
        char *buffer,
        ptrdiff_t ndigit,
        int dexp)
{
  char v3; // r5
  char *v4; // r4
  int v5; // r2
  unsigned int v6; // r4
  unsigned int v7; // r3
  unsigned __int64 v8; // kr00_8
  int v10; // r2
  int v11; // r2
  int v12; // r4
  __int64 v13; // r0
  __int64 v14; // r0
  uint32_t v15; // r1
  __int64 v16; // r6
  uint32_t v17; // r0
  double v_0; // [sp+30h] [bp-20h]
  _ll vv; // [sp+40h] [bp-10h] BYREF
  int v20; // [sp+4Ch] [bp-4h] BYREF

  v4 = buffer;
  if ( buffer >= &buffer[ndigit] )
    return 0.0;
  if ( 10 << v3 )
    v4 = nullptr;
  *(double *)&vv.i64 = 0.0;
  std::priv::_Stl_tenscale(&vv.i64, dexp, &v20);
  v5 = (int)&v4[v20];
  if ( (int)&v4[v20] < -1021 )
  {
    v10 = v5 + 16382;
    if ( v10 < -53 )
      return 0.0;
    v11 = 16 - v10;
    if ( v11 > 64 )
      return 0.0;
    if ( v11 == 64 )
    {
      HIDWORD(v16) = vv.i32.lo;
      LODWORD(v16) = (2 * vv.i32.hi) >> 1;
      v17 = vv.i32.hi >> 31;
      *(double *)&vv.i64 = 0.0;
    }
    else
    {
      v12 = v11 - 32;
      if ( v11 - 32 < 0 )
        HIDWORD(v13) = 1u >> (32 - v11);
      else
        HIDWORD(v13) = 1 << v12;
      LODWORD(v13) = 1 << v11;
      v14 = v13 - 2;
      HIDWORD(v16) = v14 & vv.i32.lo;
      LODWORD(v16) = HIDWORD(v14) & vv.i32.hi;
      v15 = vv.i32.hi >> v12;
      if ( v12 < 0 )
        v15 = (vv.i32.lo >> v11) | (vv.i32.hi << (32 - v11));
      v17 = (v15 - 1) & 1;
      vv.i32.lo = v15;
      vv.i32.hi >>= v11;
    }
    if ( v17 && ((vv.i64 & 1) != 0 || v16) )
    {
      if ( vv.i32.lo == -1 && (vv.i64 + 1) >> 32 == 0x100000 )
        return 0.0;
      ++vv.i64;
    }
    return *(double *)&vv.i64;
  }
  v6 = vv.i32.hi >> 15;
  v7 = vv.i64 >> 15;
  if ( (((__int64)vv.i64 >> 14) & 1) != 0 && ((vv.i64 & 0x8000) != 0 || vv.i32.lo << 21) )
  {
    v8 = __PAIR64__(v6, v7) + 1;
    v6 = (__PAIR64__(v6, v7) + 1) >> 32;
    v7 = v8;
    if ( v6 >> 21 )
    {
      v7 = __SPAIR64__(v6, v8) >> 1;
      v6 >>= 1;
      ++v5;
    }
  }
  if ( v5 > 1024 )
    return INFINITY;
  LODWORD(v_0) = v7;
  HIDWORD(v_0) = v6 & 0xFFEFFFFF;
  return v_0;
}


// ===== 8baa00 std::priv::_Stl_string_to_doubleT<long double,ieee854_long_double,16,16383>(char const*) =====
int __fastcall std::priv::_Stl_string_to_doubleT<long double,ieee854_long_double,16,16383>(const char *s)
{
  const char *v1; // r7
  int v2; // r3
  char *v3; // r1
  unsigned int v4; // r3
  int v5; // r2
  int v6; // r0
  int v7; // r3
  ptrdiff_t v8; // r1
  int v9; // r3
  int v12; // r3
  unsigned __int8 *v13; // r7
  int v14; // r12
  unsigned int v15; // r3
  int v16; // r0
  int v17; // r3
  char digits[15]; // [sp+14h] [bp-14h] BYREF
  char v19; // [sp+23h] [bp-5h] BYREF

  v1 = s + 1;
  v2 = *(unsigned __int8 *)s;
  if ( v2 == 43 )
  {
    v2 = *((unsigned __int8 *)s + 1);
    v1 = s + 2;
  }
  else if ( v2 == 45 )
  {
    v2 = *((unsigned __int8 *)s + 1);
    v1 = s + 2;
  }
  v3 = digits;
  v4 = v2 - 48;
  v5 = 0;
  v6 = 0;
  if ( v4 > 9 )
    goto LABEL_12;
LABEL_6:
  if ( v3 == &v19 )
  {
    v5 += v6 ^ 1;
  }
  else
  {
    if ( v4 || v3 != digits )
      *v3++ = v4;
    v5 -= v6;
  }
  while ( 1 )
  {
    v7 = *(unsigned __int8 *)v1++;
    v4 = v7 - 48;
    if ( v4 <= 9 )
      goto LABEL_6;
LABEL_12:
    if ( v4 != -2 || v6 )
      break;
    v6 = 1;
  }
  if ( v3 == digits )
    return 0;
  if ( v4 != 21 && v4 != 53 )
    goto LABEL_16;
  v12 = *(unsigned __int8 *)v1;
  v13 = (unsigned __int8 *)(v1 + 1);
  if ( v12 == 32 || v12 == 43 )
  {
    v12 = *v13;
    v14 = 0;
    ++v13;
  }
  else
  {
    v14 = 0;
    if ( v12 == 45 )
    {
      v12 = *v13;
      v14 = 1;
      ++v13;
    }
  }
  v15 = v12 - 48;
  if ( v15 <= 9 )
  {
    v16 = 0;
    do
    {
      v16 = v15 + 10 * v16;
      v17 = *v13++;
      v15 = v17 - 48;
    }
    while ( v15 <= 9 );
    if ( v14 )
      v16 = -v16;
    v5 += v16;
    v8 = v3 - digits;
    v9 = v5 + v8;
    if ( v5 + v8 < -306 )
      return 0;
  }
  else
  {
LABEL_16:
    v8 = v3 - digits;
    v9 = v5 + v8;
    if ( v5 + v8 < -306 )
      return 0;
  }
  if ( v9 <= 309 )
    return COERCE_UNSIGNED_INT64(std::priv::_Stl_atodT<long double,ieee854_long_double,16,16383>(digits, v8, v5));
  else
    return 0;
}


// ===== 8bab68 std::priv::__string_to_float(std::priv::__basic_iostring<char> const&,long double &) =====
void __fastcall std::priv::__string_to_float(const std::priv::__iostring *const v, double *const val)
{
  int v3; // r1

  *(_DWORD *)val = std::priv::_Stl_string_to_doubleT<long double,ieee854_long_double,16,16383>(v->_M_start_of_storage._M_data);
  *((_DWORD *)val + 1) = v3;
}


// ===== 8bab7c std::priv::_Initialize_get_float(std::ctype<wchar_t> const&,wchar_t &,wchar_t &,wchar_t &,wchar_t &,wchar_t *) =====
void __fastcall std::priv::_Initialize_get_float(
        const std::ctype<wchar_t> *const ct,
        wchar_t *const Plus,
        wchar_t *const Minus,
        wchar_t *const pow_e,
        wchar_t *const pow_E,
        wchar_t *digits)
{
  char ndigits[12]; // [sp+0h] [bp-14h] BYREF

  strcpy(ndigits, "0123456789");
  *Plus = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 43);
  *Minus = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 45);
  *pow_e = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 101);
  *pow_E = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 69);
  (*((void (__fastcall **)(const std::ctype<wchar_t> *const, char *, char *, wchar_t *))ct->_vptr.facet + 11))(
    ct,
    ndigits,
    &ndigits[10],
    digits);
}


// ===== 8bac24 std::priv::__fill_fmtbuf(char *,int,char) =====
void __fastcall std::priv::__fill_fmtbuf(char *fmtbuf, __int16 flags, int long_modifier)
{
  int v3; // r6
  int v4; // r3
  int v5; // r4
  int v6; // r12
  int v7; // r5
  char *v8; // r4
  char v9; // r2

  *fmtbuf = 37;
  if ( (flags & 0x800) != 0 )
  {
    v3 = 3;
    fmtbuf[1] = 43;
    v5 = 4;
    v4 = 5;
    v6 = 3;
    v7 = 2;
  }
  else
  {
    v3 = 2;
    v4 = 4;
    v5 = 3;
    v6 = 2;
    v7 = 1;
  }
  if ( (flags & 0x400) != 0 )
  {
    fmtbuf[v7] = 35;
    v7 = v6;
    v3 = v6 + 1;
    v5 = v6 + 2;
    v4 = v6 + 3;
  }
  fmtbuf[v7] = 46;
  fmtbuf[v3] = 42;
  if ( long_modifier )
  {
    fmtbuf[v5] = long_modifier;
    v5 = v4++;
  }
  if ( (flags & 0xC0) == 0x40 )
  {
    v8 = &fmtbuf[v5];
    v9 = 70;
    if ( (flags & 0x4000) == 0 )
      v9 = 102;
  }
  else if ( (flags & 0xC0) == 0x80 )
  {
    v8 = &fmtbuf[v5];
    v9 = 69;
    if ( (flags & 0x4000) == 0 )
      v9 = 101;
  }
  else
  {
    v8 = &fmtbuf[v5];
    v9 = 71;
    if ( (flags & 0x4000) == 0 )
      v9 = 103;
  }
  *v8 = v9;
  fmtbuf[v4] = 0;
}


// ===== 8baca4 std::priv::__find_if<char *,std::priv::GroupPos>(char *,char *,std::priv::GroupPos,std::random_access_iterator_tag const&) =====
char *__fastcall std::priv::__find_if<char *,std::priv::GroupPos>(
        char *__first,
        char *__last,
        std::priv::GroupPos __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r3
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3

  v4 = __last - __first;
  v5 = (__last - __first) >> 2;
  if ( v5 <= 0 )
  {
LABEL_25:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return __last;
        goto LABEL_37;
      }
      v11 = (unsigned __int8)*__first;
      if ( v11 == 101 || v11 == 46 || v11 == 69 )
        return __first;
      ++__first;
    }
    v12 = (unsigned __int8)*__first;
    if ( v12 == 101 || v12 == 46 || v12 == 69 )
      return __first;
    ++__first;
LABEL_37:
    v13 = (unsigned __int8)*__first;
    if ( v13 == 101 || v13 == 46 || v13 == 69 )
      return __first;
    return __last;
  }
  v6 = (unsigned __int8)*__first;
  if ( v6 != 46 && v6 != 101 && v6 != 69 )
  {
    v7 = (unsigned __int8)*++__first;
    if ( v7 != 46 && v7 != 101 )
    {
      while ( v7 != 69 )
      {
        v8 = (unsigned __int8)__first[1];
        if ( v8 == 101 || v8 == 46 || v8 == 69 )
          return ++__first;
        v9 = (unsigned __int8)__first[2];
        if ( v9 == 101 || v9 == 46 || v9 == 69 )
        {
          __first += 2;
          return __first;
        }
        if ( !--v5 )
        {
          __first += 3;
          v4 = __last - __first;
          goto LABEL_25;
        }
        v10 = (unsigned __int8)__first[3];
        if ( v10 == 101 || v10 == 46 || v10 == 69 )
        {
          __first += 3;
          return __first;
        }
        __first += 4;
        v7 = (unsigned __int8)*__first;
        if ( v7 == 101 || v7 == 46 )
          return __first;
      }
    }
  }
  return __first;
}


// ===== 8bad58 std::priv::__adjust_float_buffer(std::priv::__basic_iostring<char> &,char) =====
void __fastcall std::priv::__adjust_float_buffer(std::priv::__iostring *const str, int dot)
{
  if ( dot != 46 && str->_M_finish != str->_M_start_of_storage._M_data )
    JUMPOUT(0x8BAC06);
}


// ===== 8bad90 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char *>(char *,char *,std::forward_iterator_tag const&) =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char *>(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char *__first,
        char *__last,
        const std::forward_iterator_tag *const a4)
{
  size_t v6; // r6
  char *M_finish; // r3
  char *v8; // r1
  char *v9; // r0

  if ( __first != __last )
  {
    v6 = __last - __first;
    M_finish = this->_M_finish;
    if ( (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)this->_M_start_of_storage._M_data == this )
      v8 = (char *)((char *)&this->_M_finish - M_finish);
    else
      v8 = (char *)(this->_M_buffers._M_end_of_storage - M_finish);
    if ( v6 >= (unsigned int)v8 )
    {
      if ( std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
             this,
             v6) > 0x101 )
        JUMPOUT(0x8BA996);
      if ( this->_M_start_of_storage._M_data != this->_M_finish )
        JUMPOUT(0x8BA86C);
    }
    else
    {
      *M_finish = *__first;
      v9 = this->_M_finish;
      if ( __last == __first + 1 )
      {
        v9[v6] = 0;
        this->_M_finish += v6;
        return this;
      }
    }
    JUMPOUT(0x8BA86A);
  }
  return this;
}


// ===== 8bae70 std::priv::__convert_float_buffer(std::priv::__basic_iostring<char> const&,std::priv::__basic_iostring<wchar_t> &,std::ctype<wchar_t> const&,wchar_t,bool) =====
void __fastcall std::priv::__convert_float_buffer(
        const std::priv::__iostring *const str,
        std::priv::__iowstring *const out,
        const std::ctype<wchar_t> *const ct,
        wchar_t dot,
        bool __check_dot)
{
  char *M_data; // r4
  char *M_finish; // r6
  wchar_t v10; // r0
  wchar_t v11; // r0

  M_data = str->_M_start_of_storage._M_data;
  M_finish = str->_M_finish;
  if ( __check_dot )
  {
    while ( M_data != M_finish )
    {
      if ( *M_data == 46 )
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(
          out,
          dot);
        ++M_data;
        goto LABEL_8;
      }
      ++M_data;
      v10 = (*((int (__fastcall **)(const std::ctype<wchar_t> *const))ct->_vptr.facet + 10))(ct);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(out, v10);
    }
  }
  else
  {
LABEL_8:
    while ( M_data != M_finish )
    {
      v11 = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, _DWORD))ct->_vptr.facet + 10))(
              ct,
              (unsigned __int8)*M_data);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::push_back(out, v11);
      ++M_data;
    }
  }
}


// ===== 8baed4 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_append(char const*,char const*) =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_append(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char *__first,
        char *__last)
{
  int v5; // r6
  char *M_finish; // r7
  char *v7; // r3
  int v8; // r2
  char *v9; // r3
  int j; // r3
  char v11; // r0
  char *v12; // r1
  size_t size; // r9
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *p_M_start_of_storage; // r8
  char *M_data; // r0
  char *v17; // r3
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *v18; // r7
  char *v19; // r1
  int i; // r3
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *v21; // r0
  char *v22; // r1

  if ( __first != __last )
  {
    v5 = __last - __first;
    M_finish = this->_M_finish;
    if ( (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)this->_M_start_of_storage._M_data == this )
      v7 = (char *)((char *)&this->_M_finish - M_finish);
    else
      v7 = (char *)(this->_M_buffers._M_end_of_storage - M_finish);
    if ( v5 >= (unsigned int)v7 )
    {
      size = std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
               this,
               __last - __first);
      p_M_start_of_storage = &this->_M_start_of_storage;
      if ( size > 0x101 )
        JUMPOUT(0x8BA998);
      M_data = this->_M_start_of_storage._M_data;
      v17 = nullptr;
      v18 = &this->_M_start_of_storage;
      v19 = (char *)(this->_M_finish - M_data);
      if ( (int)v19 > 0 )
      {
        do
        {
          v17[(_DWORD)p_M_start_of_storage] = v17[(_DWORD)M_data];
          ++v17;
        }
        while ( v17 != v19 );
        v18 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)&v17[(_DWORD)p_M_start_of_storage];
      }
      if ( v5 > 0 )
      {
        for ( i = 0; i != v5; ++i )
          v18->_M_static_buf[i] = __first[i];
        v18 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)((char *)v18 + v5);
      }
      v18->_M_static_buf[0] = 0;
      v21 = (std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *)this->_M_start_of_storage._M_data;
      if ( this != (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)v21
        && v21
        && v21 != &this->_M_start_of_storage )
      {
        v22 = (char *)(this->_M_buffers._M_end_of_storage - (char *)v21);
        if ( (unsigned int)v22 > 0x80 )
          JUMPOUT(0x8BB2B4);
        std::__node_alloc::_M_deallocate(v21, (size_t)v22);
      }
      this->_M_buffers._M_end_of_storage = &p_M_start_of_storage->_M_static_buf[size];
      this->_M_finish = (char *)v18;
      this->_M_start_of_storage._M_data = (char *)p_M_start_of_storage;
    }
    else
    {
      v8 = __last - (__first + 1);
      v9 = this->_M_finish;
      if ( v8 > 0 )
      {
        for ( j = 0; j != v8; ++j )
        {
          v11 = __first[j + 1];
          v12 = &M_finish[j];
          v12[1] = v11;
        }
        v9 = this->_M_finish;
      }
      v9[v5] = 0;
      *this->_M_finish = *__first;
      this->_M_finish += v5;
    }
  }
  return this;
}


// ===== 8bafd4 std::priv::__get_floor_digits(std::priv::__basic_iostring<char> &,long double) =====
void __fastcall std::priv::__get_floor_digits(std::priv::__iostring *const out, double __x)
{
  __asm { POP             {R4,PC} }
}


// ===== 8bb044 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_assign(char const*,char const*) =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_assign(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char *__f,
        char *__l)
{
  char *M_finish; // r3
  char *M_data; // r0

  M_finish = this->_M_finish;
  M_data = this->_M_start_of_storage._M_data;
  if ( __l - __f > (unsigned int)(M_finish - M_data) )
  {
    if ( M_finish != M_data )
      JUMPOUT(0x8BB86C);
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_append(this, __f, __l);
  }
  else
  {
    if ( __l != __f )
      JUMPOUT(0x8BB86A);
    if ( M_data != M_finish )
    {
      *M_data = *M_finish;
      this->_M_finish += M_data - M_finish;
    }
  }
  return this;
}


// ===== 8bb0bc std::priv::__write_float(std::priv::__basic_iostring<char> &,int,int,double) =====
void __fastcall std::priv::__write_float(
        std::priv::__iostring *const buf,
        __int16 flags,
        int precision,
        int a4,
        double x)
{
  char v6[32]; // [sp+14Ch] [bp+0h] BYREF

  std::priv::__fill_fmtbuf(v6, flags, 0);
  __asm { POP             {R4,PC} }
}


// ===== 8bb138 std::priv::__write_float(std::priv::__basic_iostring<char> &,int,int,long double) =====
void __fastcall std::priv::__write_float(
        std::priv::__iostring *const buf,
        __int16 flags,
        int precision,
        int a4,
        double x)
{
  char v6[32]; // [sp+14Ch] [bp+0h] BYREF

  std::priv::__fill_fmtbuf(v6, flags, 76);
  __asm { POP             {R4,PC} }
}


// ===== 8bb1b4 std::numpunct<char>::do_decimal_point(void) =====
char __fastcall std::numpunct<char>::do_decimal_point(const std::numpunct<char> *const this)
{
  return 46;
}


// ===== 8bb1b8 std::numpunct<char>::do_thousands_sep(void) =====
char __fastcall std::numpunct<char>::do_thousands_sep(const std::numpunct<char> *const this)
{
  return 44;
}


// ===== 8bb1bc std::numpunct<wchar_t>::do_decimal_point(void) =====
wchar_t __fastcall std::numpunct<wchar_t>::do_decimal_point(const std::numpunct<wchar_t> *const this)
{
  return 46;
}


// ===== 8bb1c0 std::numpunct<wchar_t>::do_thousands_sep(void) =====
wchar_t __fastcall std::numpunct<wchar_t>::do_thousands_sep(const std::numpunct<wchar_t> *const this)
{
  return 44;
}


// ===== 8bb1c4 std::numpunct<wchar_t>::~numpunct() =====
std::numpunct<wchar_t> *__fastcall std::numpunct<wchar_t>::~numpunct(std::numpunct<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994810;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bb1e4 std::numpunct<wchar_t>::~numpunct() =====
void __fastcall std::numpunct<wchar_t>::~numpunct(std::numpunct<wchar_t> *const this)
{
  std::numpunct<wchar_t>::~numpunct(this);
  JUMPOUT(0x8BB2B4);
}


// ===== 8bb1f8 std::numpunct<wchar_t>::~numpunct() =====
std::numpunct<wchar_t> *__fastcall std::numpunct<wchar_t>::~numpunct(std::numpunct<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994810;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bb218 std::numpunct<char>::~numpunct() =====
std::numpunct<char> *__fastcall std::numpunct<char>::~numpunct(std::numpunct<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994838;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bb238 std::numpunct<char>::~numpunct() =====
void __fastcall std::numpunct<char>::~numpunct(std::numpunct<char> *const this)
{
  std::numpunct<char>::~numpunct(this);
  JUMPOUT(0x8BB2B4);
}


// ===== 8bb24c std::numpunct<char>::~numpunct() =====
std::numpunct<char> *__fastcall std::numpunct<char>::~numpunct(std::numpunct<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994838;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bb26c std::numpunct<wchar_t>::do_grouping(void) =====
void __fastcall std::numpunct<wchar_t>::do_grouping(
        std::string *__return_ptr retstr,
        const std::numpunct<wchar_t> *const this)
{
  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  JUMPOUT(0x8BB680);
}


// ===== 8bb284 std::numpunct<char>::do_grouping(void) =====
void __fastcall std::numpunct<char>::do_grouping(
        std::string *__return_ptr retstr,
        const std::numpunct<char> *const this)
{
  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  JUMPOUT(0x8BB680);
}


// ===== 8bb29c std::numpunct<char>::do_falsename(void) =====
void __fastcall std::numpunct<char>::do_falsename(
        std::string *__return_ptr retstr,
        const std::numpunct<char> *const this)
{
  JUMPOUT(0x8BB0EE);
}


// ===== 8bb2b8 std::numpunct<char>::do_truename(void) =====
void __fastcall std::numpunct<char>::do_truename(
        std::string *__return_ptr retstr,
        const std::numpunct<char> *const this)
{
  JUMPOUT(0x8BB0EE);
}


// ===== 8bb2d4 std::numpunct<wchar_t>::do_falsename(void) =====
std::wstring *__fastcall std::numpunct<wchar_t>::do_falsename(
        std::wstring *__return_ptr retstr,
        const std::numpunct<wchar_t> *const this,
        int a3,
        wchar_t a4)
{
  std::allocator<wchar_t> __a; // [sp+4h] [bp-4h] BYREF

  std::wstring::basic_string(retstr, (const wchar_t *)"f", &__a, a4);
  return retstr;
}


// ===== 8bb2f0 std::numpunct<wchar_t>::do_truename(void) =====
std::wstring *__fastcall std::numpunct<wchar_t>::do_truename(
        std::wstring *__return_ptr retstr,
        const std::numpunct<wchar_t> *const this,
        int a3,
        wchar_t a4)
{
  std::allocator<wchar_t> __a; // [sp+4h] [bp-4h] BYREF

  std::wstring::basic_string(retstr, (const wchar_t *)"t", &__a, a4);
  return retstr;
}


// ===== 8bb30c std::priv::__get_date_order(_Locale_time *) =====
std::time_base::dateorder __fastcall std::priv::__get_date_order(_Locale_time *time)
{
  const char *v1; // r0
  int v2; // r3
  std::time_base::dateorder result; // r0
  int v4; // r1
  _BYTE *v5; // r3
  int v6; // r2
  int v7; // r4
  _BYTE *v8; // r2
  int v9; // r3
  int v10; // r3

  v1 = Locale_d_fmt(time);
  v2 = *(unsigned __int8 *)v1;
  if ( v2 != 37 )
  {
    while ( v2 )
    {
      v2 = *(unsigned __int8 *)++v1;
      if ( v2 == 37 )
        goto LABEL_5;
    }
    return std::time_base::dateorder::no_order;
  }
LABEL_5:
  v4 = *((unsigned __int8 *)v1 + 1);
  v5 = v1 + 1;
  if ( v4 != 37 && v1[1] )
  {
    while ( 1 )
    {
      v6 = (unsigned __int8)*++v5;
      if ( v6 == 37 )
        break;
      if ( !*v5 )
        return std::time_base::dateorder::no_order;
    }
  }
  else
  {
    v6 = *((unsigned __int8 *)v1 + 1);
  }
  if ( !v6 )
    return std::time_base::dateorder::no_order;
  v7 = (unsigned __int8)v5[1];
  v8 = v5 + 1;
  if ( !v5[1] || v7 == 37 )
  {
    v9 = (unsigned __int8)v5[1];
  }
  else
  {
    while ( 1 )
    {
      v9 = (unsigned __int8)*++v8;
      if ( v9 == 37 )
        break;
      if ( !*v8 )
        return std::time_base::dateorder::no_order;
    }
  }
  if ( !v9 )
    return std::time_base::dateorder::no_order;
  v10 = (unsigned __int8)v8[1];
  switch ( v4 )
  {
    case 'm':
      if ( v10 != 121 )
        return std::time_base::dateorder::no_order;
      result = std::time_base::dateorder::mdy;
      if ( v7 != 100 )
        return std::time_base::dateorder::no_order;
      break;
    case 'y':
      if ( v7 == 100 )
      {
        result = std::time_base::dateorder::ydm;
        if ( v10 != 109 )
          return std::time_base::dateorder::no_order;
      }
      else
      {
        if ( v7 != 109 )
          return std::time_base::dateorder::no_order;
        result = std::time_base::dateorder::ymd;
        if ( v10 != 100 )
          return std::time_base::dateorder::no_order;
      }
      break;
    case 'd':
      return v10 == 121 && v7 == 109;
    default:
      return std::time_base::dateorder::no_order;
  }
  return result;
}


// ===== 8bb3b0 std::priv::__append(std::priv::__basic_iostring<char> &,std::string const&) =====
void __fastcall std::priv::__append(std::priv::__iostring *const buf, const std::string *const name)
{
  std::forward_iterator_tag v2; // [sp+4h] [bp-8h] BYREF

  std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char const*>(
    buf,
    name->_M_start_of_storage._M_data,
    name->_M_finish,
    &v2);
}


// ===== 8bb3c4 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void __fastcall std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(
        std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const this,
        size_t __n)
{
  ;
}


// ===== 8bb3c8 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(uint,wchar_t) [clone] =====
std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        size_t __n,
        wchar_t __c)
{
  wchar_t *M_finish; // r3
  unsigned int v6; // r2
  size_t size; // r0

  M_finish = this->_M_finish;
  if ( (std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const)this->_M_start_of_storage._M_data == this )
    v6 = 16 - (((char *)M_finish - (char *)this) >> 2);
  else
    v6 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
  if ( v6 <= 1 )
  {
    size = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
             this,
             1u);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_reserve(
      this,
      size);
    M_finish = this->_M_finish;
  }
  M_finish[1] = 0;
  *this->_M_finish++ = __n;
  return this;
}


// ===== 8bb418 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t *>(wchar_t *,wchar_t *,std::forward_iterator_tag const&) =====
std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t *>(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__first,
        wchar_t *__last,
        const std::forward_iterator_tag *const a4)
{
  size_t v6; // r6
  wchar_t *M_finish; // r3
  unsigned int v8; // r1
  wchar_t *v9; // r0
  int v10; // r6
  size_t size; // r8

  if ( __first != __last )
  {
    v6 = __last - __first;
    M_finish = this->_M_finish;
    if ( (std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const)this->_M_start_of_storage._M_data == this )
      v8 = 16 - (((char *)M_finish - (char *)this) >> 2);
    else
      v8 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
    if ( v6 >= v8 )
    {
      size = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
               this,
               v6);
      if ( size > 0x101 )
        std::allocator<wchar_t>::allocate((std::allocator<wchar_t> *const)&this->_M_start_of_storage, size, nullptr);
      if ( this->_M_start_of_storage._M_data == this->_M_finish )
        JUMPOUT(0x8BB86A);
    }
    else
    {
      *M_finish = *__first;
      v9 = this->_M_finish;
      if ( __last == __first + 1 )
      {
        v10 = v6;
        v9[v10] = 0;
        this->_M_finish = (wchar_t *)((char *)this->_M_finish + v10 * 4);
        return this;
      }
    }
    JUMPOUT(0x8BB86C);
  }
  return this;
}


// ===== 8bb4e0 std::priv::__append(std::priv::__basic_iostring<wchar_t> &,char *,char *,std::ctype<wchar_t> const&) =====
void __fastcall std::priv::__append(
        std::priv::__iowstring *const buf,
        char *first,
        char *last,
        const std::ctype<wchar_t> *const ct)
{
  wchar_t _wbuf[64]; // [sp+4h] [bp-108h] BYREF
  std::forward_iterator_tag v8; // [sp+104h] [bp-8h] BYREF

  (*((void (__fastcall **)(const std::ctype<wchar_t> *const, char *, char *, wchar_t *))ct->_vptr.facet + 11))(
    ct,
    first,
    last,
    _wbuf);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t *>(
    buf,
    _wbuf,
    &_wbuf[last - first],
    &v8);
}


// ===== 8bb510 std::priv::__append(std::priv::__basic_iostring<wchar_t> &,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) =====
void __fastcall std::priv::__append(std::priv::__iowstring *const buf, const std::wstring *const name)
{
  std::forward_iterator_tag v2; // [sp+4h] [bp-8h] BYREF

  std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t const*>(
    buf,
    name->_M_start_of_storage._M_data,
    &name->_M_start_of_storage._M_data[name->_M_finish - name->_M_start_of_storage._M_data],
    &v2);
}


// ===== 8bb52c std::priv::__write_formatted_timeT<wchar_t,std::priv::_WTime_Info>(std::priv::__basic_iostring<wchar_t> &,std::ctype<wchar_t> const&,char,char,std::priv::_WTime_Info const&,tm const*) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall std::priv::__write_formatted_timeT<wchar_t,std::priv::_WTime_Info>(
        std::priv::__basic_iostring<wchar_t> *const buf,
        const std::ctype<wchar_t> *const ct,
        const std::priv::_WTime_Info *format,
        _BYTE *modifier,
        const std::priv::_WTime_Info *const table,
        const tm *t)
{
  _BYTE *v9; // r3
  size_t v10; // r0
  wchar_t v11; // r2
  unsigned int v12; // r2
  char *v13; // r2
  std::string *p_M_date_format; // r2
  int tm_wday; // r3
  size_t v16; // r0
  wchar_t v17; // r2
  size_t v18; // r0
  wchar_t v19; // r2
  char *v20; // r0
  char _buf[64]; // [sp+1Ch] [bp-90h] BYREF

  v9 = (_BYTE *)(unsigned __int8)((_BYTE)format - 37);
  switch ( (char)format )
  {
    case '%':
      v16 = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 37);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(
        buf,
        v16,
        v17);
      return;
    case 'A':
      tm_wday = t->tm_wday + 7;
      goto LABEL_11;
    case 'B':
      std::priv::__append(buf, &table->_M_monthname[t->tm_mon + 12]);
      return;
    case 'C':
    case 'M':
    case 'd':
    case 'e':
    case 'k':
      goto LABEL_26;
    case 'D':
      p_M_date_format = &table->_M_date_format;
      goto LABEL_9;
    case 'H':
    case 'm':
      goto LABEL_25;
    case 'R':
    case 'T':
    case 'r':
      JUMPOUT(0x8BB0EE);
    case 'S':
      v9 = modifier;
      if ( modifier != (_BYTE *)&dword_20 + 3 )
LABEL_25:
        *v9 = -84;
      while ( 1 )
      {
LABEL_26:
        glSampleCoverage_ptr = _buf;
        fgetpos_ptr = _buf;
      }
    case 'U':
    case 'W':
    case 'p':
      JUMPOUT(0x8BB2A8);
    case 'X':
      std::priv::__subformat<wchar_t,std::priv::_WTime_Info>(buf, ct, &table->_M_time_format, table, t);
      return;
    case 'Y':
      v12 = t->tm_year + 1900;
      goto LABEL_6;
    case 'a':
      tm_wday = t->tm_wday;
LABEL_11:
      std::priv::__append(buf, &table->_M_dayname[tm_wday]);
      return;
    case 'b':
    case 'h':
      std::priv::__append(buf, &table->_M_monthname[t->tm_mon]);
      return;
    case 'c':
      p_M_date_format = &table->_M_long_date_time_format;
      if ( modifier != (_BYTE *)&dword_20 + 3 )
        goto LABEL_8;
      goto LABEL_9;
    case 'j':
      v12 = t->tm_yday + 1;
LABEL_6:
      v13 = std::priv::__write_integer(_buf, 0, v12);
      std::priv::__append(buf, _buf, v13, ct);
      return;
    case 'n':
      v18 = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 10);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(
        buf,
        v18,
        v19);
      return;
    case 's':
      goto LABEL_20;
    case 't':
      v10 = (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))ct->_vptr.facet + 10))(ct, 9);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(
        buf,
        v10,
        v11);
      return;
    case 'w':
      v20 = std::priv::__write_integer(_buf, 0, t->tm_wday);
      std::priv::__append(buf, _buf, v20, ct);
      return;
    case 'x':
      format = table;
LABEL_20:
      p_M_date_format = &format->_M_long_date_format;
      if ( modifier != (_BYTE *)&dword_20 + 3 )
LABEL_8:
        p_M_date_format -= 2;
LABEL_9:
      std::priv::__subformat<wchar_t,std::priv::_WTime_Info>(buf, ct, p_M_date_format, table, t);
      break;
    case 'y':
      JUMPOUT(0x8BB906);
    default:
      return;
  }
}


// ===== 8bba5c std::priv::__write_formatted_time(std::priv::__basic_iostring<wchar_t> &,std::ctype<wchar_t> const&,char,char,std::priv::_WTime_Info const&,tm const*) =====
void __fastcall std::priv::__write_formatted_time(
        std::priv::__iowstring *const buf,
        const std::ctype<wchar_t> *const ct,
        const std::priv::_WTime_Info *format,
        _BYTE *modifier,
        const std::priv::_WTime_Info *const table,
        const tm *t)
{
  std::priv::__write_formatted_timeT<wchar_t,std::priv::_WTime_Info>(buf, ct, format, modifier, table, t);
}


// ===== 8bba70 std::priv::__subformat<wchar_t,std::priv::_WTime_Info>(std::priv::__basic_iostring<wchar_t> &,std::ctype<wchar_t> const&,std::string const&,std::priv::_WTime_Info const&,tm const*) =====
void __fastcall std::priv::__subformat<wchar_t,std::priv::_WTime_Info>(
        std::priv::__basic_iostring<wchar_t> *const buf,
        const std::ctype<wchar_t> *const ct,
        const std::string *const format,
        const std::priv::_WTime_Info *const table,
        const tm *t)
{
  char *M_data; // r4
  char *M_finish; // r5
  size_t v10; // r1
  const std::priv::_WTime_Info *v11; // r2
  char *v12; // r1
  _BYTE *v13; // r3

  M_data = format->_M_start_of_storage._M_data;
  M_finish = format->_M_finish;
  while ( M_finish != M_data )
  {
    while ( 1 )
    {
      v10 = (unsigned __int8)*M_data;
      if ( v10 != 37 )
        break;
      v11 = (const std::priv::_WTime_Info *)(unsigned __int8)M_data[1];
      v12 = M_data + 1;
      v13 = nullptr;
      if ( v11 == (const std::priv::_WTime_Info *)((char *)&dword_20 + 3) )
      {
        v12 = M_data + 2;
        v11 = (const std::priv::_WTime_Info *)(unsigned __int8)M_data[2];
        v13 = (_BYTE *)(&dword_20 + 3);
      }
      M_data = v12 + 1;
      std::priv::__write_formatted_timeT<wchar_t,std::priv::_WTime_Info>(buf, ct, v11, v13, table, t);
      if ( M_finish == M_data )
        return;
    }
    ++M_data;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::append(
      buf,
      v10,
      (wchar_t)format);
  }
}


// ===== 8bbad0 std::priv::_Time_Info_Base::_Time_Info_Base(void) =====
void __fastcall std::priv::_Time_Info_Base::_Time_Info_Base(std::priv::_Time_Info_Base *const this)
{
  this->_M_time_format._M_finish = (char *)this;
  this->_M_time_format._M_start_of_storage._M_data = (char *)this;
  JUMPOUT(0x8BB680);
}


// ===== 8bbb30 std::priv::_Time_Info::_Time_Info(void) =====
void __fastcall std::priv::_Time_Info::_Time_Info(std::priv::_Time_Info *const this)
{
  std::priv::_Time_Info_Base::_Time_Info_Base(this);
  this->_M_dayname[0]._M_finish = (char *)this->_M_dayname;
  this->_M_dayname[0]._M_start_of_storage._M_data = (char *)this->_M_dayname;
  JUMPOUT(0x8BB680);
}


// ===== 8bbbd0 std::priv::_WTime_Info::_WTime_Info(void) =====
std::priv::_WTime_Info *__fastcall std::priv::_WTime_Info::_WTime_Info(std::priv::_WTime_Info *const this)
{
  size_t v2; // r1
  std::wstring *M_dayname; // r4
  int i; // r5
  wchar_t *M_finish; // r3
  std::wstring *M_monthname; // r4
  int j; // r5
  wchar_t *v8; // r3
  size_t v9; // r1

  std::priv::_Time_Info_Base::_Time_Info_Base(this);
  M_dayname = this->_M_dayname;
  for ( i = 0; i != 1008; i += 72 )
  {
    M_dayname->_M_finish = (wchar_t *)M_dayname;
    M_dayname->_M_start_of_storage._M_data = (wchar_t *)M_dayname;
    std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(M_dayname, v2);
    M_finish = M_dayname->_M_finish;
    ++M_dayname;
    *M_finish = 0;
  }
  M_monthname = this->_M_monthname;
  for ( j = 0; j != 1728; j += 72 )
  {
    M_monthname->_M_finish = (wchar_t *)M_monthname;
    M_monthname->_M_start_of_storage._M_data = (wchar_t *)M_monthname;
    std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(M_monthname, v2);
    v8 = M_monthname->_M_finish;
    ++M_monthname;
    *v8 = 0;
  }
  this->_M_am_pm[0]._M_finish = (wchar_t *)this->_M_am_pm;
  this->_M_am_pm[0]._M_start_of_storage._M_data = (wchar_t *)this->_M_am_pm;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(&this->_M_am_pm[0], v2);
  *this->_M_am_pm[0]._M_finish = 0;
  this->_M_am_pm[1]._M_finish = (wchar_t *)&this->_M_am_pm[1];
  this->_M_am_pm[1]._M_start_of_storage._M_data = (wchar_t *)&this->_M_am_pm[1];
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(&this->_M_am_pm[1], v9);
  *this->_M_am_pm[1]._M_finish = 0;
  return this;
}


// ===== 8bbc64 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(uint,char) [clone] =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        size_t __n,
        char __c)
{
  char *M_finish; // r3
  std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *M_data; // r2
  char v5; // r6
  char *v7; // r2
  size_t size; // r0

  M_finish = this->_M_finish;
  M_data = (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *)this->_M_start_of_storage._M_data;
  v5 = __n;
  if ( M_finish - (char *)M_data == -2 )
  {
    std::__stl_throw_length_error("basic_string");
    M_data = (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *)this->_M_start_of_storage._M_data;
    M_finish = this->_M_finish;
  }
  if ( this == M_data )
    v7 = (char *)((char *)&this->_M_finish - M_finish);
  else
    v7 = (char *)(this->_M_buffers._M_end_of_storage - M_finish);
  if ( (unsigned int)v7 <= 1 )
  {
    size = std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
             this,
             1u);
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_reserve(this, size);
    M_finish = this->_M_finish;
  }
  M_finish[1] = 0;
  *this->_M_finish++ = v5;
  return this;
}


// ===== 8bbcc4 std::priv::__write_formatted_timeT<char,std::priv::_Time_Info>(std::priv::__basic_iostring<char> &,std::ctype<char> const&,char,char,std::priv::_Time_Info const&,tm const*) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall std::priv::__write_formatted_timeT<char,std::priv::_Time_Info>(
        std::priv::__basic_iostring<char> *const buf,
        const std::ctype<char> *const ct,
        char format,
        _BYTE *modifier,
        const std::priv::_Time_Info *const table,
        const tm *t)
{
  _BYTE *v8; // r3
  int tm_mon; // r3
  size_t v10; // r0
  char v11; // r2
  char *v12; // r0
  std::string *p_M_date_format; // r2
  int tm_wday; // r3
  char *v15; // r0
  char *v16; // r7
  size_t v17; // r0
  char v18; // r2
  size_t v19; // r0
  char v20; // r2
  char *v21; // r0
  char *v22; // r0
  std::forward_iterator_tag v23; // [sp+2Ch] [bp-D0h] BYREF
  std::forward_iterator_tag v24; // [sp+38h] [bp-C4h] BYREF
  std::forward_iterator_tag v25; // [sp+4Ch] [bp-B0h] BYREF
  char _buf[64]; // [sp+6Ch] [bp-90h] BYREF
  char v27; // [sp+ACh] [bp-50h] BYREF
  char v28; // [sp+C4h] [bp-38h] BYREF
  char v29; // [sp+DCh] [bp-20h] BYREF

  v8 = (_BYTE *)(unsigned __int8)(format - 37);
  switch ( format )
  {
    case '%':
      v17 = (*((int (__fastcall **)(const std::ctype<char> *const, int))ct->_vptr.facet + 6))(ct, 37);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(buf, v17, v18);
      return;
    case 'A':
      tm_wday = t->tm_wday + 7;
      goto LABEL_11;
    case 'B':
      tm_mon = t->tm_mon + 12;
      goto LABEL_4;
    case 'C':
      v22 = _buf;
      goto LABEL_41;
    case 'D':
      p_M_date_format = &table->_M_date_format;
      goto LABEL_9;
    case 'G':
    case 'g':
      JUMPOUT(0x8BB908);
    case 'H':
      v22 = _buf;
      break;
    case 'I':
    case 'l':
    case 'u':
    case 'y':
      goto LABEL_44;
    case 'M':
      if ( modifier == (_BYTE *)&dword_20 + 3 )
      {
        v22 = _buf;
LABEL_41:
        *v8 = -84;
        break;
      }
      v22 = _buf;
      break;
    case 'R':
      v16 = &v29;
      goto LABEL_30;
    case 'S':
      v8 = modifier;
      v22 = _buf;
      goto LABEL_41;
    case 'T':
      v16 = &v27;
      goto LABEL_30;
    case 'U':
    case 'W':
    case 'p':
      JUMPOUT(0x8BC908);
    case 'X':
      std::priv::__subformat<char,std::priv::_Time_Info>(buf, ct, &table->_M_time_format, table, t);
      return;
    case 'Y':
      v15 = std::priv::__write_integer(_buf, 0, t->tm_year + 1900);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char *>(
        buf,
        _buf,
        v15,
        &v23);
      return;
    case 'a':
      tm_wday = t->tm_wday;
LABEL_11:
      std::priv::__append(buf, &table->_M_dayname[tm_wday]);
      return;
    case 'b':
    case 'h':
      tm_mon = t->tm_mon;
LABEL_4:
      std::priv::__append(buf, &table->_M_monthname[tm_mon]);
      return;
    case 'c':
      p_M_date_format = &table->_M_long_date_time_format;
      if ( modifier != (_BYTE *)&dword_20 + 3 )
        goto LABEL_8;
      goto LABEL_9;
    case 'd':
      if ( modifier == (_BYTE *)&dword_20 + 3 )
      {
        v22 = _buf;
        goto LABEL_41;
      }
      v22 = _buf;
      break;
    case 'e':
      v22 = _buf;
      break;
    case 'j':
      v12 = std::priv::__write_integer(_buf, 0, t->tm_yday + 1);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char *>(
        buf,
        _buf,
        v12,
        &v25);
      return;
    case 'k':
      v16 = _buf;
      goto LABEL_30;
    case 'm':
      if ( modifier != (_BYTE *)&dword_20 + 3 )
      {
        v22 = _buf;
        goto LABEL_41;
      }
      v22 = _buf;
      break;
    case 'n':
      v19 = (*((int (__fastcall **)(const std::ctype<char> *const, int))ct->_vptr.facet + 6))(ct, 10);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(buf, v19, v20);
      return;
    case 'r':
      v16 = &v28;
LABEL_30:
      v22 = v16;
      goto LABEL_41;
    case 's':
      JUMPOUT(0x8BB8CA);
    case 't':
      v10 = (*((int (__fastcall **)(const std::ctype<char> *const, int))ct->_vptr.facet + 6))(ct, 9);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(buf, v10, v11);
LABEL_44:
      JUMPOUT(0x8BB906);
    case 'w':
      v21 = std::priv::__write_integer(_buf, 0, t->tm_wday);
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char *>(
        buf,
        _buf,
        v21,
        &v24);
      return;
    case 'x':
      p_M_date_format = &table->_M_long_date_format;
      if ( modifier != (_BYTE *)&dword_20 + 3 )
LABEL_8:
        p_M_date_format -= 2;
LABEL_9:
      std::priv::__subformat<char,std::priv::_Time_Info>(buf, ct, p_M_date_format, table, t);
      return;
    default:
      return;
  }
  glSampleCoverage_ptr = v22;
  fgetpos_ptr = v22;
  JUMPOUT(0x8BB680);
}


// ===== 8bc310 std::priv::__write_formatted_time(std::priv::__basic_iostring<char> &,std::ctype<char> const&,char,char,std::priv::_Time_Info const&,tm const*) =====
void __fastcall std::priv::__write_formatted_time(
        std::priv::__iostring *const buf,
        const std::ctype<char> *const ct,
        char format,
        _BYTE *modifier,
        const std::priv::_Time_Info *const table,
        const tm *t)
{
  std::priv::__write_formatted_timeT<char,std::priv::_Time_Info>(buf, ct, format, modifier, table, t);
}


// ===== 8bc324 std::priv::__subformat<char,std::priv::_Time_Info>(std::priv::__basic_iostring<char> &,std::ctype<char> const&,std::string const&,std::priv::_Time_Info const&,tm const*) =====
void __fastcall std::priv::__subformat<char,std::priv::_Time_Info>(
        std::priv::__basic_iostring<char> *const buf,
        const std::ctype<char> *const ct,
        const std::string *const format,
        const std::priv::_Time_Info *const table,
        const tm *t)
{
  char *M_data; // r4
  char *M_finish; // r5
  size_t v10; // r1
  int v11; // r2
  char *v12; // r1
  _BYTE *v13; // r3

  M_data = format->_M_start_of_storage._M_data;
  M_finish = format->_M_finish;
  while ( M_finish != M_data )
  {
    while ( 1 )
    {
      v10 = (unsigned __int8)*M_data;
      if ( v10 != 37 )
        break;
      v11 = (unsigned __int8)M_data[1];
      v12 = M_data + 1;
      v13 = nullptr;
      if ( v11 == 35 )
      {
        v12 = M_data + 2;
        LOBYTE(v11) = M_data[2];
        v13 = (_BYTE *)(&dword_20 + 3);
      }
      M_data = v12 + 1;
      std::priv::__write_formatted_timeT<char,std::priv::_Time_Info>(buf, ct, v11, v13, table, t);
      if ( M_finish == M_data )
        return;
    }
    ++M_data;
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::append(buf, v10, (char)format);
  }
}


// ===== 8bc384 std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base &) =====
void __fastcall std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base *const table)
{
  JUMPOUT(0x8BCE58);
}


// ===== 8bc3c0 std::priv::_Init_timeinfo(std::priv::_WTime_Info &) =====
void __fastcall std::priv::_Init_timeinfo(std::priv::_WTime_Info *const table)
{
  JUMPOUT(0x8BBC8C);
}


// ===== 8bc484 std::priv::time_init<wchar_t>::time_init(void) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this)
{
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  this->_M_dateorder = std::time_base::dateorder::no_order;
  std::priv::_Init_timeinfo(&this->_M_timeinfo);
  return this;
}


// ===== 8bc4a0 std::priv::time_init<wchar_t>::time_init(void) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this)
{
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  this->_M_dateorder = std::time_base::dateorder::no_order;
  std::priv::_Init_timeinfo(&this->_M_timeinfo);
  return this;
}


// ===== 8bc4bc std::priv::_Init_timeinfo(std::priv::_Time_Info &) =====
void __fastcall std::priv::_Init_timeinfo(std::priv::_Time_Info *const table)
{
  JUMPOUT(0x8BBE58);
}


// ===== 8bc560 std::priv::time_init<char>::time_init(void) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(std::priv::time_init<char> *const this)
{
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  this->_M_dateorder = std::time_base::dateorder::no_order;
  std::priv::_Init_timeinfo(&this->_M_timeinfo);
  return this;
}


// ===== 8bc57c std::priv::time_init<char>::time_init(void) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(std::priv::time_init<char> *const this)
{
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  this->_M_dateorder = std::time_base::dateorder::no_order;
  std::priv::_Init_timeinfo(&this->_M_timeinfo);
  return this;
}


// ===== 8bc598 std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base &,_Locale_time *) =====
void __fastcall std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base *const table, _Locale_time *time)
{
  Locale_t_fmt(time);
  JUMPOUT(0x8BBE58);
}


// ===== 8bc68c std::priv::_Init_timeinfo(std::priv::_WTime_Info &,_Locale_time *) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall std::priv::_Init_timeinfo(std::priv::_WTime_Info *const table, _Locale_time *time)
{
  std::priv::_Messages *v2; // r5
  _Locale_messages *v3; // r2
  wchar_t buf[128]; // [sp+0h] [bp-200h] BYREF

  v2 = (std::priv::_Messages *)WLocale_abbrev_dayofweek(time, 0, (wchar_t_0 *)buf, 0x80u);
  std::priv::_Messages::_Messages(v2, 1, v3);
  *(_DWORD *)&byte_9[3] = v2;
  __asm { POP             {R4-R6,PC} }
}


// ===== 8bc7c4 std::priv::time_init<wchar_t>::time_init(_Locale_time *) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this,
        _Locale_time *__time)
{
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  std::priv::_Init_timeinfo(&this->_M_timeinfo, __time);
  this->_M_dateorder = std::priv::__get_date_order(__time);
  return this;
}


// ===== 8bc7e8 std::priv::time_init<wchar_t>::time_init(_Locale_time *) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this,
        _Locale_time *__time)
{
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  std::priv::_Init_timeinfo(&this->_M_timeinfo, __time);
  this->_M_dateorder = std::priv::__get_date_order(__time);
  return this;
}


// ===== 8bc80c std::priv::time_init<wchar_t>::time_init(char const*) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this,
        char *__name)
{
  _Locale_time *v3; // r6
  char *name; // [sp+4h] [bp-110h] BYREF
  int v6; // [sp+8h] [bp-10Ch] BYREF
  char buf[12]; // [sp+Ch] [bp-108h] BYREF

  name = __name;
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v3 = std::priv::__acquire_time((const char **const)&name, buf, nullptr, &v6);
  if ( !v3 )
    std::locale::_M_throw_on_creation_failure(v6, name, "time");
  std::priv::_Init_timeinfo(&this->_M_timeinfo, v3);
  this->_M_dateorder = std::priv::__get_date_order(v3);
  std::priv::__release_time(v3);
  return this;
}


// ===== 8bc88c std::priv::time_init<wchar_t>::time_init(char const*) =====
std::priv::time_init<wchar_t> *__fastcall std::priv::time_init<wchar_t>::time_init(
        std::priv::time_init<wchar_t> *const this,
        char *__name)
{
  _Locale_time *v3; // r6
  char *name; // [sp+4h] [bp-110h] BYREF
  int v6; // [sp+8h] [bp-10Ch] BYREF
  char buf[12]; // [sp+Ch] [bp-108h] BYREF

  name = __name;
  std::priv::_WTime_Info::_WTime_Info(&this->_M_timeinfo);
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v3 = std::priv::__acquire_time((const char **const)&name, buf, nullptr, &v6);
  if ( !v3 )
    std::locale::_M_throw_on_creation_failure(v6, name, "time");
  std::priv::_Init_timeinfo(&this->_M_timeinfo, v3);
  this->_M_dateorder = std::priv::__get_date_order(v3);
  std::priv::__release_time(v3);
  return this;
}


// ===== 8bc90c std::priv::_Init_timeinfo(std::priv::_Time_Info &,_Locale_time *) =====
void __fastcall std::priv::_Init_timeinfo(std::priv::_Time_Info *const table, _Locale_time *time)
{
  Locale_abbrev_dayofweek(time, 0);
  JUMPOUT(0x8BCE58);
}


// ===== 8bca04 std::priv::time_init<char>::time_init(_Locale_time *) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(
        std::priv::time_init<char> *const this,
        _Locale_time *__time)
{
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  std::priv::_Init_timeinfo(&this->_M_timeinfo, __time);
  this->_M_dateorder = std::priv::__get_date_order(__time);
  return this;
}


// ===== 8bca28 std::priv::time_init<char>::time_init(_Locale_time *) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(
        std::priv::time_init<char> *const this,
        _Locale_time *__time)
{
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  std::priv::_Init_timeinfo(&this->_M_timeinfo, __time);
  this->_M_dateorder = std::priv::__get_date_order(__time);
  return this;
}


// ===== 8bca4c std::priv::time_init<char>::time_init(char const*) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(
        std::priv::time_init<char> *const this,
        char *__name)
{
  _Locale_time *v3; // r6
  char *name; // [sp+4h] [bp-110h] BYREF
  int v6; // [sp+8h] [bp-10Ch] BYREF
  char buf[12]; // [sp+Ch] [bp-108h] BYREF

  name = __name;
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v3 = std::priv::__acquire_time((const char **const)&name, buf, nullptr, &v6);
  if ( !v3 )
    std::locale::_M_throw_on_creation_failure(v6, name, "time");
  std::priv::_Init_timeinfo(&this->_M_timeinfo, v3);
  this->_M_dateorder = std::priv::__get_date_order(v3);
  std::priv::__release_time(v3);
  return this;
}


// ===== 8bcac8 std::priv::time_init<char>::time_init(char const*) =====
std::priv::time_init<char> *__fastcall std::priv::time_init<char>::time_init(
        std::priv::time_init<char> *const this,
        char *__name)
{
  _Locale_time *v3; // r6
  char *name; // [sp+4h] [bp-110h] BYREF
  int v6; // [sp+8h] [bp-10Ch] BYREF
  char buf[12]; // [sp+Ch] [bp-108h] BYREF

  name = __name;
  std::priv::_Time_Info::_Time_Info(&this->_M_timeinfo);
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v3 = std::priv::__acquire_time((const char **const)&name, buf, nullptr, &v6);
  if ( !v3 )
    std::locale::_M_throw_on_creation_failure(v6, name, "time");
  std::priv::_Init_timeinfo(&this->_M_timeinfo, v3);
  this->_M_dateorder = std::priv::__get_date_order(v3);
  std::priv::__release_time(v3);
  return this;
}


// ===== 8bcb44 std::messages<char>::do_open(std::string const&,std::locale const&) =====
int __fastcall std::messages<char>::do_open(
        const std::messages<char> *const this,
        const std::string *const __fn,
        const std::locale *const __loc)
{
  return -1;
}


// ===== 8bcb4c std::messages<char>::do_close(int) =====
void __fastcall std::messages<char>::do_close(const std::messages<char> *const this, int __c)
{
  ;
}


// ===== 8bcb50 std::messages<wchar_t>::do_open(std::string const&,std::locale const&) =====
int __fastcall std::messages<wchar_t>::do_open(
        const std::messages<wchar_t> *const this,
        const std::string *const __fn,
        const std::locale *const __loc)
{
  return -1;
}


// ===== 8bcb58 std::messages<wchar_t>::do_close(int) =====
void __fastcall std::messages<wchar_t>::do_close(const std::messages<wchar_t> *const this, int __c)
{
  ;
}


// ===== 8bcb5c std::messages<wchar_t>::~messages() =====
std::messages<wchar_t> *__fastcall std::messages<wchar_t>::~messages(std::messages<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994860;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bcb7c std::messages<char>::~messages() =====
std::messages<char> *__fastcall std::messages<char>::~messages(std::messages<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994880;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bcb9c std::priv::_Messages::_Messages(bool,_Locale_messages *) =====
std::priv::_Messages *__fastcall std::priv::_Messages::_Messages(
        std::priv::_Messages *const this,
        int is_wide,
        _Locale_messages *msg)
{
  this->_M_message_obj = msg;
  if ( is_wide )
    JUMPOUT(0x8BC88E);
  this->_M_map = nullptr;
  return this;
}


// ===== 8bcbbc std::priv::_Messages::_Messages(bool,_Locale_messages *) =====
std::priv::_Messages *__fastcall std::priv::_Messages::_Messages(
        std::priv::_Messages *const this,
        int is_wide,
        _Locale_messages *msg)
{
  this->_M_message_obj = msg;
  if ( is_wide )
    JUMPOUT(0x8BC88E);
  this->_M_map = nullptr;
  return this;
}


// ===== 8bcbdc std::messages<wchar_t>::messages(uint) =====
void __fastcall std::messages<wchar_t>::messages(std::messages<wchar_t> *const this, size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8BCFB2);
}


// ===== 8bcc08 std::messages<wchar_t>::messages(uint) =====
void __fastcall std::messages<wchar_t>::messages(std::messages<wchar_t> *const this, size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8BCFB2);
}


// ===== 8bcc34 std::messages_byname<wchar_t>::messages_byname(_Locale_messages *) =====
void __fastcall std::messages_byname<wchar_t>::messages_byname(
        std::messages_byname<wchar_t> *const this,
        _Locale_messages *msg)
{
  std::messages<wchar_t>::messages(this, 0);
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  JUMPOUT(0x8BC890);
}


// ===== 8bcc6c std::messages_byname<wchar_t>::messages_byname(_Locale_messages *) =====
void __fastcall std::messages_byname<wchar_t>::messages_byname(
        std::messages_byname<wchar_t> *const this,
        _Locale_messages *msg)
{
  std::messages<wchar_t>::messages(this, 0);
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  JUMPOUT(0x8BC890);
}


// ===== 8bcca4 std::messages<char>::messages(uint) =====
void __fastcall std::messages<char>::messages(std::messages<char> *const this, size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8BCFB2);
}


// ===== 8bccd0 std::messages<char>::messages(uint) =====
void __fastcall std::messages<char>::messages(std::messages<char> *const this, size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8BCFB2);
}


// ===== 8bccfc std::messages_byname<char>::messages_byname(_Locale_messages *) =====
void __fastcall std::messages_byname<char>::messages_byname(
        std::messages_byname<char> *const this,
        _Locale_messages *msg)
{
  std::messages<char>::messages(this, 0);
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  JUMPOUT(0x8BC890);
}


// ===== 8bcd34 std::messages_byname<char>::messages_byname(_Locale_messages *) =====
void __fastcall std::messages_byname<char>::messages_byname(
        std::messages_byname<char> *const this,
        _Locale_messages *msg)
{
  std::messages<char>::messages(this, 0);
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  JUMPOUT(0x8BC890);
}


// ===== 8bcd6c std::priv::_Messages::_Messages(bool,char const*) =====
std::priv::_Messages *__fastcall std::priv::_Messages::_Messages(
        std::priv::_Messages *const this,
        int is_wide,
        char *name)
{
  _Locale_messages *v5; // r0
  char *v7; // [sp+4h] [bp-110h] BYREF
  int v8; // [sp+8h] [bp-10Ch] BYREF
  char buf[16]; // [sp+Ch] [bp-108h] BYREF

  v7 = name;
  this->_M_message_obj = nullptr;
  this->_M_map = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v5 = std::priv::__acquire_messages((const char **const)&v7, buf, nullptr, &v8);
  this->_M_message_obj = v5;
  if ( !v5 )
    std::locale::_M_throw_on_creation_failure(v8, v7, "messages");
  if ( is_wide )
    JUMPOUT(0x8BC88E);
  return this;
}


// ===== 8bcde4 std::messages_byname<wchar_t>::messages_byname(char const*,uint) =====
void __fastcall std::messages_byname<wchar_t>::messages_byname(
        std::messages_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  std::messages<wchar_t>::messages(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  JUMPOUT(0x8BC890);
}


// ===== 8bce1c std::messages_byname<wchar_t>::messages_byname(char const*,uint) =====
void __fastcall std::messages_byname<wchar_t>::messages_byname(
        std::messages_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  std::messages<wchar_t>::messages(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  JUMPOUT(0x8BC890);
}


// ===== 8bce54 std::messages_byname<char>::messages_byname(char const*,uint) =====
void __fastcall std::messages_byname<char>::messages_byname(
        std::messages_byname<char> *const this,
        const char *name,
        size_t refs)
{
  std::messages<char>::messages(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  JUMPOUT(0x8BC890);
}


// ===== 8bce8c std::messages_byname<char>::messages_byname(char const*,uint) =====
void __fastcall std::messages_byname<char>::messages_byname(
        std::messages_byname<char> *const this,
        const char *name,
        size_t refs)
{
  std::messages<char>::messages(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  JUMPOUT(0x8BC890);
}


// ===== 8bcec4 std::priv::_Messages::_Messages(bool,char const*) =====
std::priv::_Messages *__fastcall std::priv::_Messages::_Messages(
        std::priv::_Messages *const this,
        int is_wide,
        char *name)
{
  _Locale_messages *v5; // r0
  char *v7; // [sp+4h] [bp-110h] BYREF
  int v8; // [sp+8h] [bp-10Ch] BYREF
  char buf[16]; // [sp+Ch] [bp-108h] BYREF

  v7 = name;
  this->_M_message_obj = nullptr;
  this->_M_map = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  v5 = std::priv::__acquire_messages((const char **const)&v7, buf, nullptr, &v8);
  this->_M_message_obj = v5;
  if ( !v5 )
    std::locale::_M_throw_on_creation_failure(v8, v7, "messages");
  if ( is_wide )
    JUMPOUT(0x8BC88E);
  return this;
}


// ===== 8bcf3c std::priv::_Catalog_locale_map::lookup(int) =====
std::locale __fastcall std::priv::_Catalog_locale_map::lookup(
        const std::priv::_Catalog_locale_map *const this,
        _DWORD *key)
{
  const std::locale *v3; // r1

  if ( *key )
    JUMPOUT(0x8BCB2E);
  v3 = std::locale::classic();
  std::locale::locale((std::locale *const)this, v3);
  return (std::locale)this;
}


// ===== 8bcf8c std::allocator<std::priv::_Slist_node<std::pair<int const,std::locale>>>::allocate(uint,void const*) [clone] =====
void __fastcall std::allocator<std::priv::_Slist_node<std::pair<int const,std::locale>>>::allocate(
        std::allocator<std::priv::_Slist_node<std::pair<const int,std::locale> > > *const this,
        size_t __n,
        const void *a3)
{
  size_t __na[2]; // [sp+4h] [bp-8h] BYREF

  __na[0] = 12;
  std::__node_alloc::_M_allocate(__na);
}


// ===== 8bcfa0 std::messages<wchar_t>::~messages() =====
void __fastcall std::messages<wchar_t>::~messages(std::messages<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994860;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8BD2B4);
}


// ===== 8bcfc8 std::messages<char>::~messages() =====
void __fastcall std::messages<char>::~messages(std::messages<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994880;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8BD2B4);
}


// ===== 8bcff0 std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_insert_noresize(uint,std::pair<int const,std::locale> const&) =====
std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const int,std::locale>,std::_Nonconst_traits<std::pair<const int,std::locale> > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const int,std::locale> > > __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_insert_noresize(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        std::allocator<std::priv::_Slist_node<std::pair<const int,std::locale> > > *__n,
        const std::pair<const int,std::locale> *const __obj,
        const std::locale *a4)
{
  int v5; // r9
  size_t *v7; // r3
  int v8; // r8
  size_t v9; // r1
  std::_Locale_impl *i; // r2
  std::_Locale_impl **v12; // r4
  int v13; // r5
  std::allocator<std::priv::_Slist_node<std::pair<const int,std::locale> > > *v14; // r0
  std::locale *v15; // r0
  std::locale *v16; // r6
  std::locale **v17; // r5
  int v18; // r3

  v5 = 4 * (_DWORD)__obj;
  v7 = (size_t *)(*(_DWORD *)&__n[8].gap0 + 4 * (_DWORD)__obj);
  v8 = *(_DWORD *)&__n[8].gap0;
  v9 = *v7;
  i = *(std::_Locale_impl **)&__n[4].gap0;
  if ( (std::_Locale_impl *)*v7 == i )
  {
    v14 = __n + 4;
    v12 = (std::_Locale_impl **)&__n[4];
    v13 = 0;
  }
  else
  {
    do
      v12 = (std::_Locale_impl **)*--v7;
    while ( v9 == *v7 );
    for ( i = *v12; (std::_Locale_impl *)v9 != i; i = (std::_Locale_impl *)i->_M_ref_count )
      v12 = (std::_Locale_impl **)*v12;
    v13 = 4 * ((((int)v7 - v8) >> 2) + 1);
    v14 = __n + 4;
  }
  std::allocator<std::priv::_Slist_node<std::pair<int const,std::locale>>>::allocate(v14, v9, i);
  v16 = v15;
  v17 = (std::locale **)(v13 + v8);
  v15[1]._M_impl = a4->_M_impl;
  std::locale::locale(v15 + 2, a4 + 1);
  v16->_M_impl = nullptr;
  v16->_M_impl = *v12;
  v18 = (4 * ((int)&__obj->first + 1) + v8 - (int)v17) >> 2;
  *v12 = (std::_Locale_impl *)v16;
  if ( v18 > 0 )
  {
    do
    {
      --v18;
      *v17++ = v16;
    }
    while ( v18 );
  }
  ++*(_DWORD *)&__n[20].gap0;
  *(_DWORD *)&this->_M_hash.gap0 = *(_DWORD *)(*(_DWORD *)&__n[8].gap0 + v5);
  return (std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const int,std::locale>,std::_Nonconst_traits<std::pair<const int,std::locale> > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const int,std::locale> > >)this;
}


// ===== 8bd09c std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::insert_unique_noresize(std::pair<int const,std::locale> const&) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::insert_unique_noresize(
        std::pair<std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const int,std::locale>,std::_Nonconst_traits<std::pair<const int,std::locale> > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const int,std::locale> > >,bool> *__return_ptr retstr,
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        const std::pair<const int,std::locale> *const __obj)
{
  JUMPOUT(0x8BCB2E);
}


// ===== 8bd134 std::priv::_Slist_base<std::pair<int const,std::locale>,std::allocator<std::pair<int const,std::locale>>>::_M_erase_after(std::priv::_Slist_node_base *,std::priv::_Slist_node_base *) [clone] =====
std::priv::_Slist_node_base *__fastcall std::priv::_Slist_base<std::pair<int const,std::locale>,std::allocator<std::pair<int const,std::locale>>>::_M_erase_after(
        std::priv::_Slist_base<std::pair<const int,std::locale>,std::allocator<std::pair<const int,std::locale> > > *const this,
        std::priv::_Slist_node_base *__before_first,
        std::priv::_Slist_node_base *__last_node)
{
  std::priv::_Slist_node_base *M_next; // r4
  std::priv::_Slist_node_base *v5; // r5
  std::locale *v6; // r0

  M_next = __before_first->_M_next;
  while ( M_next )
  {
    v5 = M_next;
    v6 = (std::locale *)M_next;
    M_next = M_next->_M_next;
    std::locale::~locale(v6 + 2);
    std::__node_alloc::_M_deallocate(v5, 0xCu);
  }
  __before_first->_M_next = nullptr;
  return nullptr;
}


// ===== 8bd160 std::messages<wchar_t>::do_get(int,int,int,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) =====
std::wstring *__fastcall std::messages<wchar_t>::do_get(
        std::wstring *__return_ptr retstr,
        const std::messages<wchar_t> *const this,
        int __c,
        int __set,
        int __msgid,
        const std::wstring *const __dfault)
{
  retstr->_M_finish = (wchar_t *)retstr;
  retstr->_M_start_of_storage._M_data = (wchar_t *)retstr;
  std::wstring::_M_range_initialize(retstr, __dfault->_M_start_of_storage._M_data, __dfault->_M_finish);
  return retstr;
}


// ===== 8bd178 std::priv::_Messages::do_get(int,int,int,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) =====
std::wstring *__fastcall std::priv::_Messages::do_get(
        std::wstring *__return_ptr retstr,
        const std::priv::_Messages *const this,
        nl_catd_type thecat,
        int set,
        int p_id,
        const std::wstring *const dfault)
{
  const char *v10; // r0
  const char *v12; // r0
  std::priv::_Catalog_locale_map v13; // [sp+54h] [bp-8h] BYREF

  std::priv::_Catalog_locale_map::lookup(&v13, &this->_M_map->M);
  std::locale::_M_use_facet((const std::locale *const)&v13, &std::ctype<wchar_t>::id);
  std::locale::~locale((std::locale *const)&v13);
  v10 = Locale_catgets(this->_M_message_obj, thecat, set, p_id, "");
  if ( v10 )
  {
    if ( *v10
      || (v12 = Locale_catgets(this->_M_message_obj, thecat, set, p_id, "*")) != nullptr && (*v12 != 42 || v12[1]) )
    {
      JUMPOUT(0x8BCE58);
    }
  }
  retstr->_M_finish = (wchar_t *)retstr;
  retstr->_M_start_of_storage._M_data = (wchar_t *)retstr;
  std::wstring::_M_range_initialize(retstr, dfault->_M_start_of_storage._M_data, dfault->_M_finish);
  return retstr;
}


// ===== 8bd280 std::messages_byname<wchar_t>::do_get(int,int,int,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) =====
std::wstring *__fastcall std::messages_byname<wchar_t>::do_get(
        std::wstring *__return_ptr retstr,
        const std::messages_byname<wchar_t> *const this,
        nl_catd_type thecat,
        int set,
        int p_id,
        const std::wstring *const dfault)
{
  std::priv::_Messages::do_get(retstr, this->_M_impl, thecat, set, p_id, dfault);
  return retstr;
}


// ===== 8bd29c std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::clear(void) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::clear(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        int a2,
        std::priv::_Slist_node_base *a3)
{
  int v4; // r1
  std::priv::_Slist_node_base *__val; // [sp+4h] [bp-8h] BYREF

  std::priv::_Slist_base<std::pair<int const,std::locale>,std::allocator<std::pair<int const,std::locale>>>::_M_erase_after(
    &this->_M_elems,
    &this->_M_elems._M_head._M_data,
    a3);
  v4 = (char *)this->_M_buckets._M_finish - (char *)this->_M_buckets._M_start;
  __val = nullptr;
  std::vector<std::priv::_Slist_node_base *>::_M_fill_assign(&this->_M_buckets, v4 >> 2, &__val);
  this->_M_num_elements = 0;
}


// ===== 8bd2c8 std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::~hashtable() =====
std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *__fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::~hashtable(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        int a2,
        std::priv::_Slist_node_base *a3)
{
  std::priv::_Slist_node_base *v4; // r2
  std::priv::_Slist_node_base **M_start; // r0
  size_t v6; // r1

  std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::clear(
    this,
    a2,
    a3);
  M_start = this->_M_buckets._M_start;
  if ( M_start )
  {
    v6 = 4 * (this->_M_buckets._M_end_of_storage._M_data - M_start);
    if ( v6 > 0x80 )
      JUMPOUT(0x8BD2B4);
    std::__node_alloc::_M_deallocate(M_start, v6);
  }
  std::priv::_Slist_base<std::pair<int const,std::locale>,std::allocator<std::pair<int const,std::locale>>>::_M_erase_after(
    &this->_M_elems,
    &this->_M_elems._M_head._M_data,
    v4);
  return this;
}


// ===== 8bd2fc std::priv::_Messages::~_Messages() =====
std::priv::_Messages *__fastcall std::priv::_Messages::~_Messages(std::priv::_Messages *const this)
{
  int v2; // r1
  std::priv::_Slist_node_base *v3; // r2
  std::priv::_Catalog_locale_map *M_map; // r5

  std::priv::__release_messages(this->_M_message_obj);
  M_map = this->_M_map;
  if ( M_map )
  {
    if ( M_map->M )
    {
      std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::~hashtable(
        &M_map->M->_M_ht,
        v2,
        v3);
      JUMPOUT(0x8BD2B4);
    }
    JUMPOUT(0x8BD2B2);
  }
  return this;
}


// ===== 8bd328 std::priv::_Messages::~_Messages() =====
std::priv::_Messages *__fastcall std::priv::_Messages::~_Messages(std::priv::_Messages *const this)
{
  int v2; // r1
  std::priv::_Slist_node_base *v3; // r2
  std::priv::_Catalog_locale_map *M_map; // r5

  std::priv::__release_messages(this->_M_message_obj);
  M_map = this->_M_map;
  if ( M_map )
  {
    if ( M_map->M )
    {
      std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::~hashtable(
        &M_map->M->_M_ht,
        v2,
        v3);
      JUMPOUT(0x8BD2B4);
    }
    JUMPOUT(0x8BD2B2);
  }
  return this;
}


// ===== 8bd354 std::messages_byname<wchar_t>::~messages_byname() =====
std::messages_byname<wchar_t> *__fastcall std::messages_byname<wchar_t>::~messages_byname(
        std::messages_byname<wchar_t> *const this)
{
  std::priv::_Messages *M_impl; // r6

  M_impl = this->_M_impl;
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  if ( M_impl )
  {
    std::priv::_Messages::~_Messages(M_impl);
    JUMPOUT(0x8BD2B4);
  }
  this->_vptr.facet = (int (**)(...))&off_994860;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bd394 std::messages_byname<wchar_t>::~messages_byname() =====
void __fastcall std::messages_byname<wchar_t>::~messages_byname(std::messages_byname<wchar_t> *const this)
{
  std::messages_byname<wchar_t>::~messages_byname(this);
  JUMPOUT(0x8BD2B4);
}


// ===== 8bd3a8 std::messages_byname<wchar_t>::~messages_byname() =====
std::messages_byname<wchar_t> *__fastcall std::messages_byname<wchar_t>::~messages_byname(
        std::messages_byname<wchar_t> *const this)
{
  std::priv::_Messages *M_impl; // r6

  M_impl = this->_M_impl;
  this->_vptr.facet = (int (**)(...))&off_9948A0;
  if ( M_impl )
  {
    std::priv::_Messages::~_Messages(M_impl);
    JUMPOUT(0x8BD2B4);
  }
  this->_vptr.facet = (int (**)(...))&off_994860;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bd3e8 std::messages_byname<char>::~messages_byname() =====
std::messages_byname<char> *__fastcall std::messages_byname<char>::~messages_byname(
        std::messages_byname<char> *const this)
{
  std::priv::_Messages *M_impl; // r6

  M_impl = this->_M_impl;
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  if ( M_impl )
  {
    std::priv::_Messages::~_Messages(M_impl);
    JUMPOUT(0x8BD2B4);
  }
  this->_vptr.facet = (int (**)(...))&off_994880;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bd428 std::messages_byname<char>::~messages_byname() =====
void __fastcall std::messages_byname<char>::~messages_byname(std::messages_byname<char> *const this)
{
  std::messages_byname<char>::~messages_byname(this);
  JUMPOUT(0x8BD2B4);
}


// ===== 8bd43c std::messages_byname<char>::~messages_byname() =====
std::messages_byname<char> *__fastcall std::messages_byname<char>::~messages_byname(
        std::messages_byname<char> *const this)
{
  std::priv::_Messages *M_impl; // r6

  M_impl = this->_M_impl;
  this->_vptr.facet = (int (**)(...))&off_9948C0;
  if ( M_impl )
  {
    std::priv::_Messages::~_Messages(M_impl);
    JUMPOUT(0x8BD2B4);
  }
  this->_vptr.facet = (int (**)(...))&off_994880;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8bd47c std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_rehash(uint) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_rehash(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        size_t __num_buckets)
{
  std::priv::_Slist_node_base **M_start; // r0
  std::priv::_Slist_node_base **v4; // r3
  std::priv::_Slist_node_base **M_finish; // r3
  std::priv::_Slist_node_base **M_data; // r3
  std::priv::_Slist_node_base *v7; // r2
  size_t v8; // r1
  std::vector<std::priv::_Slist_node_base*> __tmp; // [sp+0h] [bp-1Ch] BYREF
  std::priv::_Slist_node_base *__val; // [sp+Ch] [bp-10h] BYREF
  std::slist<std::pair<const int,std::locale>> __tmp_elems; // [sp+10h] [bp-Ch] BYREF
  std::allocator<std::priv::_Slist_node_base*> __a; // [sp+14h] [bp-8h] BYREF

  __tmp_elems._M_head._M_data._M_next = nullptr;
  __val = nullptr;
  std::vector<std::priv::_Slist_node_base *>::vector(&__tmp, __num_buckets + 1, &__val, &__a);
  if ( this->_M_elems._M_head._M_data._M_next )
    JUMPOUT(0x8BDB2E);
  M_start = this->_M_buckets._M_start;
  this->_M_elems = __tmp_elems;
  v4 = __tmp._M_start;
  __tmp_elems._M_head._M_data._M_next = nullptr;
  __tmp._M_start = M_start;
  this->_M_buckets._M_start = v4;
  M_finish = this->_M_buckets._M_finish;
  this->_M_buckets._M_finish = __tmp._M_finish;
  __tmp._M_finish = M_finish;
  M_data = this->_M_buckets._M_end_of_storage._M_data;
  v7 = (std::priv::_Slist_node_base *)__tmp._M_end_of_storage._M_data;
  this->_M_buckets._M_end_of_storage._M_data = __tmp._M_end_of_storage._M_data;
  __tmp._M_end_of_storage._M_data = M_data;
  if ( M_start )
  {
    v8 = 4 * (M_data - M_start);
    if ( v8 > 0x80 )
      JUMPOUT(0x8BD2B4);
    std::__node_alloc::_M_deallocate(M_start, v8);
  }
  std::priv::_Slist_base<std::pair<int const,std::locale>,std::allocator<std::pair<int const,std::locale>>>::_M_erase_after(
    &__tmp_elems,
    &__tmp_elems._M_head._M_data,
    v7);
}


// ===== 8bd590 std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_reduce(void) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_reduce(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this)
{
  JUMPOUT(0x8BD2E2);
}


// ===== 8bd678 std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::erase(int const&) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::erase(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        const int *const __key)
{
  JUMPOUT(0x8BDB2E);
}


// ===== 8bd7b8 std::priv::_Catalog_locale_map::erase(int) =====
void __fastcall std::priv::_Catalog_locale_map::erase(std::priv::_Catalog_locale_map *const this, nl_catd_type key)
{
  std::hash_map<int,std::locale,std::hash<int>,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *M; // r0
  int __key; // [sp+4h] [bp-8h] BYREF

  __key = key;
  M = this->M;
  if ( M )
    std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::erase(
      &M->_M_ht,
      &__key);
}


// ===== 8bd7d0 std::priv::_Messages::do_close(int) =====
void __fastcall std::priv::_Messages::do_close(const std::priv::_Messages *const this, nl_catd_type thecat)
{
  _Locale_messages *M_message_obj; // r0
  std::priv::_Catalog_locale_map *M_map; // r0

  M_message_obj = this->_M_message_obj;
  if ( M_message_obj )
    Locale_catclose(M_message_obj, thecat);
  M_map = this->_M_map;
  if ( M_map )
    std::priv::_Catalog_locale_map::erase(M_map, thecat);
}


// ===== 8bd7f0 std::messages_byname<wchar_t>::do_close(int) =====
void __fastcall std::messages_byname<wchar_t>::do_close(
        const std::messages_byname<wchar_t> *const this,
        nl_catd_type cat)
{
  std::priv::_Messages::do_close(this->_M_impl, cat);
}


// ===== 8bd7fc std::messages_byname<char>::do_close(int) =====
void __fastcall std::messages_byname<char>::do_close(const std::messages_byname<char> *const this, nl_catd_type cat)
{
  std::priv::_Messages::do_close(this->_M_impl, cat);
}


// ===== 8bd808 std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_enlarge(uint) =====
void __fastcall std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_enlarge(
        std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *const this,
        size_t __to_size)
{
  JUMPOUT(0x8BD2E4);
}


// ===== 8bd880 std::priv::_Catalog_locale_map::insert(int,std::locale const&) =====
void __fastcall std::priv::_Catalog_locale_map::insert(
        std::priv::_Catalog_locale_map *const this,
        nl_catd_type key,
        const std::locale *const L)
{
  int v3; // r5
  std::hash_map<int,std::locale,std::hash<int>,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *M; // r4
  std::pair<std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const int,std::locale>,std::_Nonconst_traits<std::pair<const int,std::locale> > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const int,std::locale> > >,bool> v5; // [sp+4h] [bp-14h] BYREF
  std::pair<const int,std::locale> __obj; // [sp+Ch] [bp-Ch] BYREF

  v3 = 881156;
  M = this->M;
  do
    v3 += 9164948;
  while ( !M );
  __obj.first = key;
  std::locale::locale(&__obj.second, L);
  std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_enlarge(
    &M->_M_ht,
    M->_M_ht._M_num_elements + 1);
  std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::insert_unique_noresize(
    &v5,
    &M->_M_ht,
    &__obj);
  std::locale::~locale(&__obj.second);
}


// ===== 8bd91c std::priv::_Messages::do_open(std::string const&,std::locale const&) =====
nl_catd_type __fastcall std::priv::_Messages::do_open(
        const std::priv::_Messages *const this,
        const std::string *const filename,
        const std::locale *const L)
{
  _Locale_messages *M_message_obj; // r0
  nl_catd_type v6; // r4
  std::priv::_Catalog_locale_map *M_map; // r0

  M_message_obj = this->_M_message_obj;
  if ( !M_message_obj )
    return -1;
  v6 = Locale_catopen(M_message_obj, filename->_M_start_of_storage._M_data);
  if ( v6 != -1 )
  {
    M_map = this->_M_map;
    if ( M_map )
      std::priv::_Catalog_locale_map::insert(M_map, v6, L);
  }
  return v6;
}


// ===== 8bd94c std::messages_byname<wchar_t>::do_open(std::string const&,std::locale const&) =====
nl_catd_type __fastcall std::messages_byname<wchar_t>::do_open(
        const std::messages_byname<wchar_t> *const this,
        const std::string *const filename,
        const std::locale *const L)
{
  return std::priv::_Messages::do_open(this->_M_impl, filename, L);
}


// ===== 8bd958 std::messages_byname<char>::do_open(std::string const&,std::locale const&) =====
nl_catd_type __fastcall std::messages_byname<char>::do_open(
        const std::messages_byname<char> *const this,
        const std::string *const filename,
        const std::locale *const l)
{
  return std::priv::_Messages::do_open(this->_M_impl, filename, l);
}


// ===== 8bd964 std::messages<char>::do_get(int,int,int,std::string const&) =====
void __fastcall std::messages<char>::do_get(
        std::string *__return_ptr retstr,
        const std::messages<char> *const this,
        int __c,
        int __set,
        int __msgid,
        const std::string *const __dfault)
{
  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  JUMPOUT(0x8BD6EC);
}


// ===== 8bd97c std::priv::_Messages::do_get(int,int,int,std::string const&) =====
// positive sp value has been detected, the output may be wrong!
void __fastcall std::priv::_Messages::do_get(
        std::string *__return_ptr retstr,
        const std::priv::_Messages *const this,
        nl_catd_type cat,
        int set,
        int p_id,
        const std::string *const dfault,
        int a7,
        int a8,
        int a9)
{
  char *M_end_of_storage; // r7
  char *v10; // r3
  std::locale *v11; // r0
  char *v12; // r9
  _DWORD *v13; // r6
  std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *v14; // r8
  int v15; // r10
  _Locale_messages *M_message_obj; // r0
  const char *v18; // r0
  const char *v19; // r5
  int savedregs_8; // [sp+14h] [bp+8h]

  M_message_obj = this->_M_message_obj;
  if ( cat >= 0 && M_message_obj )
  {
    v18 = Locale_catgets(M_message_obj, cat, set, savedregs_8, *(const char **)(p_id + 20));
    retstr->_M_finish = (char *)retstr;
    retstr->_M_start_of_storage._M_data = (char *)retstr;
    v19 = v18;
    do
    {
      M_end_of_storage = retstr->_M_buffers._M_end_of_storage;
      v10 = *(char **)retstr->_M_buffers._M_end_of_storage;
      v11 = (std::locale *)(retstr->_M_buffers._M_end_of_storage + 8);
      retstr->_M_buffers._M_end_of_storage = v10;
      v12 = v10;
      std::locale::~locale(v11);
      std::__node_alloc::_M_deallocate(M_end_of_storage, 0xCu);
      ++v15;
    }
    while ( v19 != v12 && *((_DWORD *)v12 + 1) == *v13 );
    v14->_M_num_elements -= v15;
    std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_reduce(v14);
  }
  else
  {
    retstr->_M_finish = (char *)retstr;
    retstr->_M_start_of_storage._M_data = (char *)retstr;
  }
  __asm { POP             {R4-R7,PC} }
}


// ===== 8bd9c8 std::messages_byname<char>::do_get(int,int,int,std::string const&) =====
None

// ===== 8bd9e4 std::_Filebuf_base::_Filebuf_base(void) =====
std::_Filebuf_base *__fastcall std::_Filebuf_base::_Filebuf_base(std::_Filebuf_base *const this)
{
  this->_M_file_id = -1;
  this->_M_openmode = 0;
  this->_M_is_open = 0;
  this->_M_should_close = 0;
  return this;
}


// ===== 8bd9f4 std::_Filebuf_base::_Filebuf_base(void) =====
std::_Filebuf_base *__fastcall std::_Filebuf_base::_Filebuf_base(std::_Filebuf_base *const this)
{
  this->_M_file_id = -1;
  this->_M_openmode = 0;
  this->_M_is_open = 0;
  this->_M_should_close = 0;
  return this;
}


// ===== 8bda04 std::_Filebuf_base::_M_unmap(void *,long) =====
void __fastcall std::_Filebuf_base::_M_unmap(std::_Filebuf_base *const this, void *base, std::streamoff len)
{
  JUMPOUT(0x8BD350);
}


// ===== 8bda10 std::_Filebuf_base::_M_mmap(long,long) =====
void __fastcall std::_Filebuf_base::_M_mmap(std::_Filebuf_base *const this, std::streamoff offset, std::streamoff len)
{
  JUMPOUT(0x8BD3BA);
}


// ===== 8bda54 std::_Filebuf_base::_M_write(char *,int) =====
void __fastcall std::_Filebuf_base::_M_write(std::_Filebuf_base *const this, char *buf, ptrdiff_t n)
{
  JUMPOUT(0x8BD554);
}


// ===== 8bda8c std::_Filebuf_base::_M_read(char *,int) =====
void __fastcall std::_Filebuf_base::_M_read(std::_Filebuf_base *const this, char *buf, ptrdiff_t n)
{
  JUMPOUT(0x8BD486);
}


// ===== 8bda98 std::basic_filebuf<char,std::char_traits<char>>::_M_underflow_aux(void) =====
int __fastcall std::filebuf::_M_underflow_aux(std::filebuf *const this)
{
  char *M_ext_buf_end; // r5
  char *M_ext_buf_converted; // r3
  char *M_ext_buf; // r1
  int v5; // r0
  int v6; // r5
  char *v7; // r2
  char *v8; // r3
  int v9; // r0
  char *M_int_buf; // r3
  char *v11; // r1
  char *v12; // r0
  int v13; // r12
  void *M_mmap_base; // r1
  char *v16; // r3
  char *v17; // r2
  mbstate_t *p_M_end_state; // [sp+10h] [bp-14h]
  std::_Filebuf_base *p_M_base; // [sp+14h] [bp-10h]
  char *v20; // [sp+18h] [bp-Ch]
  char *v21; // [sp+1Ch] [bp-8h]

  M_ext_buf_end = this->_M_ext_buf_end;
  this->_M_state.dummy = this->_M_end_state.dummy;
  M_ext_buf_converted = this->_M_ext_buf_converted;
  if ( M_ext_buf_end <= M_ext_buf_converted )
  {
    M_ext_buf = this->_M_ext_buf;
  }
  else
  {
    M_ext_buf = this->_M_ext_buf;
    if ( M_ext_buf_end != M_ext_buf_converted )
      JUMPOUT(0x8BDF3C);
  }
  p_M_base = &this->_M_base;
  p_M_end_state = &this->_M_end_state;
  for ( this->_M_ext_buf_end = M_ext_buf; ; M_ext_buf = this->_M_ext_buf_end )
  {
    std::_Filebuf_base::_M_read(p_M_base, M_ext_buf, this->_M_ext_buf_EOS - M_ext_buf);
    v6 = v5;
    if ( v5 < 0 )
      goto LABEL_25;
    v7 = this->_M_ext_buf;
    v8 = &this->_M_ext_buf_end[v5];
    this->_M_ext_buf_end = v8;
    if ( v8 == v7 )
      goto LABEL_25;
    v9 = (*((int (__fastcall **)(const std::codecvt<char,char,mbstate_t> *, mbstate_t *))this->_M_codecvt->_vptr.facet
          + 3))(
           this->_M_codecvt,
           p_M_end_state);
    if ( v9 == 3 )
      break;
    if ( v9 == 2 )
      goto LABEL_22;
    M_int_buf = this->_M_int_buf;
    if ( M_int_buf == v20 )
    {
      v12 = v21;
      v11 = this->_M_ext_buf;
    }
    else
    {
      v11 = this->_M_ext_buf;
      v12 = v21;
      if ( v11 == v21 )
        goto LABEL_22;
    }
    v13 = v12 - v11;
    if ( this->_M_constant_width )
    {
      v13 = (v20 - M_int_buf) * this->_M_width;
      if ( v13 != v12 - v11 )
        goto LABEL_22;
    }
    if ( M_int_buf != v20 )
    {
      this->_M_ext_buf_converted = &v11[v13];
      this->_M_gbegin = M_int_buf;
      this->_M_gnext = M_int_buf;
      this->_M_gend = v20;
      return (unsigned __int8)*M_int_buf;
    }
    if ( this->_M_max_width <= v13 )
    {
LABEL_22:
      M_mmap_base = this->_M_mmap_base;
      if ( M_mmap_base )
      {
        std::_Filebuf_base::_M_unmap(p_M_base, M_mmap_base, this->_M_mmap_len);
        this->_M_mmap_base = nullptr;
        this->_M_mmap_len = 0;
      }
      this->_M_in_input_mode = 0;
      this->_M_in_output_mode = 0;
      this->_M_in_error_mode = 1;
LABEL_25:
      this->_M_gbegin = nullptr;
      this->_M_gnext = nullptr;
      this->_M_gend = nullptr;
      return -1;
    }
    if ( !v6 )
    {
      this->_M_gbegin = nullptr;
      this->_M_gnext = nullptr;
      this->_M_gend = nullptr;
      return -1;
    }
  }
  v16 = this->_M_ext_buf;
  v17 = this->_M_ext_buf_end;
  this->_M_gbegin = v16;
  this->_M_ext_buf_converted = v17;
  this->_M_gnext = v16;
  this->_M_gend = v17;
  return (unsigned __int8)*v16;
}


// ===== 8bdbd8 std::_Filebuf_base::_M_close(void) =====
int __fastcall std::_Filebuf_base::_M_close(std::_Filebuf_base *const this)
{
  int M_is_open; // r3
  int result; // r0

  M_is_open = this->_M_is_open;
  result = 0;
  if ( M_is_open )
  {
    if ( this->_M_should_close )
      JUMPOUT(0x8BDB8E);
    result = 1;
    this->_M_should_close = 0;
    this->_M_is_open = 0;
    this->_M_openmode = 0;
  }
  return result;
}


// ===== 8bdc08 std::_Filebuf_base::_M_open(int,int) =====
int __fastcall std::_Filebuf_base::_M_open(std::_Filebuf_base *const this, int file_no, int a3)
{
  if ( file_no >= 0 && !this->_M_is_open )
    JUMPOUT(0x8BE164);
  return 0;
}


// ===== 8bdc84 std::_Filebuf_base::_M_file_size(void) =====
void __fastcall std::_Filebuf_base::_M_file_size(std::_Filebuf_base *const this, int a2, int a3)
{
  int v3; // r3
  size_t v4; // r1
  int v5; // r4
  std::hashtable<std::pair<const int,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<const int,std::locale> >,std::priv::_Select1st<std::pair<const int,std::locale> >,std::equal_to<int>,std::allocator<std::pair<const int,std::locale> > > *v6; // r5
  size_t *v7; // r7

  v3 = *(_DWORD *)(v5 + a3);
  if ( v7 == (size_t *)(v3 + 120) )
    v4 = *(_DWORD *)(v3 + 116);
  else
    v4 = *v7;
  std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_rehash(
    v6,
    v4);
  __asm { POP             {R3-R7,PC} }
}


// ===== 8bdcbc std::_Filebuf_base::_M_seek(long,int) =====
std::streamoff __fastcall std::_Filebuf_base::_M_seek(std::_Filebuf_base *const this, std::streamoff offset, int dir)
{
  int v5; // r0

  if ( dir == 2 )
LABEL_8:
    JUMPOUT(0x8BE20C);
  if ( dir == 4 )
  {
    std::_Filebuf_base::_M_file_size(this, offset, 4);
    if ( -offset <= v5 )
      goto LABEL_8;
  }
  else if ( dir == 1 && offset >= 0 )
  {
    goto LABEL_8;
  }
  return -1;
}


// ===== 8bdcf8 std::_Filebuf_base::_M_open(char const*,int,long) =====
int __fastcall std::_Filebuf_base::_M_open(
        std::_Filebuf_base *const this,
        const char *name,
        int openmode,
        int permission)
{
  if ( !this->_M_is_open )
  {
    switch ( openmode & 0xFFFFFFF9 )
    {
      case 1u:
      case 8u:
      case 9u:
      case 0x10u:
      case 0x11u:
      case 0x18u:
      case 0x19u:
      case 0x30u:
      case 0x38u:
        JUMPOUT(0x8BDA62);
      default:
        return 0;
    }
  }
  return 0;
}


// ===== 8bddb4 std::_Filebuf_base::_M_open(char const*,int) =====
int __fastcall std::_Filebuf_base::_M_open(std::_Filebuf_base *const this, const char *name, int openmode)
{
  return std::_Filebuf_base::_M_open(this, name, openmode, 438);
}


// ===== 8bddc0 std::_Filebuf_base::_S_initialize(void) =====
void std::_Filebuf_base::_S_initialize()
{
  JUMPOUT(0x8BE43E);
}


// ===== 8bdddc std::basic_filebuf<char,std::char_traits<char>>::_M_switch_to_input_mode(void) =====
int __fastcall std::filebuf::_M_switch_to_input_mode(std::filebuf *const this)
{
  int v1; // r3
  size_t v2; // r1
  size_t *v3; // r7
  char *M_ext_buf; // r0
  int dummy; // r3

  if ( !this->_M_base._M_is_open || (this->_M_base._M_openmode & 8) == 0 || *(_WORD *)&this->_M_in_output_mode )
    return 0;
  if ( !this->_M_int_buf )
  {
    this->_vptr.basic_streambuf = nullptr;
    v1 = *((_DWORD *)this + 1664);
    if ( v3 == (size_t *)(v1 + 120) )
      v2 = *(_DWORD *)(v1 + 116);
    else
      v2 = *v3;
    std::hashtable<std::pair<int const,std::locale>,int,std::hash<int>,std::priv::_HashMapTraitsT<std::pair<int const,std::locale>>,std::priv::_Select1st<std::pair<int const,std::locale>>,std::equal_to<int>,std::allocator<std::pair<int const,std::locale>>>::_M_rehash(
      nullptr,
      v2);
    __asm { POP             {R3-R7,PC} }
  }
  M_ext_buf = this->_M_ext_buf;
  this->_M_ext_buf_end = M_ext_buf;
  dummy = this->_M_state.dummy;
  this->_M_ext_buf_converted = M_ext_buf;
  this->_M_end_state.dummy = dummy;
  this->_M_in_input_mode = 1;
  return 1;
}


// ===== 8bde88 std::_Underflow<char,std::char_traits<char>>::_M_doit(std::basic_filebuf<char,std::char_traits<char>> *) =====
int __fastcall std::_Underflow<char,std::char_traits<char>>::_M_doit(std::filebuf *__this)
{
  char *M_saved_gptr; // r2
  char *M_saved_egptr; // r1
  char *M_saved_eback; // r0
  void *M_mmap_base; // r1
  int v7; // r8
  int v8; // r1
  int v9; // r2
  int v10; // r0

  if ( __this->_M_in_input_mode )
  {
    if ( __this->_M_in_putback_mode )
    {
      M_saved_gptr = __this->_M_saved_gptr;
      M_saved_egptr = __this->_M_saved_egptr;
      M_saved_eback = __this->_M_saved_eback;
      __this->_M_gnext = M_saved_gptr;
      __this->_M_gend = M_saved_egptr;
      __this->_M_gbegin = M_saved_eback;
      __this->_M_in_putback_mode = 0;
      if ( M_saved_gptr != M_saved_egptr )
        return (unsigned __int8)*M_saved_gptr;
    }
  }
  else if ( !std::filebuf::_M_switch_to_input_mode(__this) )
  {
    return -1;
  }
  if ( __this->_M_base._M_regular_file && __this->_M_always_noconv )
  {
    M_mmap_base = __this->_M_mmap_base;
    if ( M_mmap_base )
      std::_Filebuf_base::_M_unmap(&__this->_M_base, M_mmap_base, __this->_M_mmap_len);
    v7 = std::_Filebuf_base::_M_seek(&__this->_M_base, 0, 2);
    std::_Filebuf_base::_M_file_size(&__this->_M_base, v8, v9);
    if ( v7 >= 0 && v10 > 0 && v7 < v10 )
    {
      __this->_vptr.basic_streambuf = (int (**)(...))&__GLOBAL_OFFSET_TABLE_;
      JUMPOUT(0x8BD85E);
    }
    __this->_M_mmap_base = nullptr;
    __this->_M_mmap_len = 0;
  }
  return std::filebuf::_M_underflow_aux(__this);
}


// ===== 8bdf78 std::priv::stdio_istreambuf::showmanyc(void) =====
std::streamsize __fastcall std::priv::stdio_istreambuf::showmanyc(std::priv::stdio_istreambuf *const this)
{
  return 0;
}


// ===== 8bdf7c std::priv::stdio_ostreambuf::showmanyc(void) =====
std::streamsize __fastcall std::priv::stdio_ostreambuf::showmanyc(std::priv::stdio_ostreambuf *const this)
{
  return -1;
}


// ===== 8bdf84 std::priv::stdio_streambuf_base::sync(void) =====
void __fastcall std::priv::stdio_streambuf_base::sync(std::priv::stdio_streambuf_base *const this)
{
  JUMPOUT(0x8BE4DA);
}


// ===== 8bdf94 std::priv::stdio_ostreambuf::overflow(int) =====
int __fastcall std::priv::stdio_ostreambuf::overflow(std::priv::stdio_ostreambuf *const this, int c)
{
  if ( c != -1 )
    JUMPOUT(0x8BE110);
  if ( this->_M_pnext != this->_M_pbegin )
    JUMPOUT(0x8BE4DA);
  return 0;
}


// ===== 8bdfcc std::priv::stdio_istreambuf::pbackfail(int) =====
int __fastcall std::priv::stdio_istreambuf::pbackfail(std::priv::stdio_istreambuf *const this, unsigned __int8 *c)
{
  int result; // r0
  char *M_gnext; // r2
  char *M_gbegin; // r4

  if ( c == (unsigned __int8 *)-1 )
  {
    M_gnext = this->_M_gnext;
    M_gbegin = this->_M_gbegin;
    result = -1;
    if ( M_gbegin < M_gnext )
    {
      this->_M_gnext = M_gnext - 1;
      return 0;
    }
  }
  else
  {
    this->_M_file->_p = c;
    return (int)c;
  }
  return result;
}


// ===== 8bdff4 std::priv::stdio_istreambuf::uflow(void) =====
void __fastcall std::priv::stdio_istreambuf::uflow(
        std::priv::stdio_istreambuf *const this,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  std::locale::~locale((std::locale *const)this->_M_file);
  __asm { POP             {R4-R6,PC} }
}


// ===== 8be000 std::priv::stdio_istreambuf::underflow(void) =====
void __fastcall std::priv::stdio_istreambuf::underflow(std::priv::stdio_istreambuf *const this)
{
  JUMPOUT(0x8BE0E0);
}


// ===== 8be01c std::priv::stdio_streambuf_base::seekpos(std::fpos<mbstate_t>,int) =====
void __fastcall std::priv::stdio_streambuf_base::seekpos(
        std::streampos *__return_ptr retstr,
        std::priv::stdio_streambuf_base *const this,
        std::streampos pos,
        int a4)
{
  JUMPOUT(0x8BE4E6);
}


// ===== 8be050 std::priv::stdio_streambuf_base::seekoff(long,int,int) =====
std::streampos *__fastcall std::priv::stdio_streambuf_base::seekoff(
        std::streampos *__return_ptr retstr,
        std::priv::stdio_streambuf_base *const this,
        std::streamoff off,
        int dir,
        int a5)
{
  if ( dir == 2 || dir == 4 || dir == 1 )
    JUMPOUT(0x8BE5F0);
  retstr->_M_pos = -1;
  retstr->_M_st.dummy = 0;
  return retstr;
}


// ===== 8be09c std::priv::stdio_streambuf_base::setbuf(char *,int) =====
void __fastcall std::priv::stdio_streambuf_base::setbuf(
        std::priv::stdio_streambuf_base *const this,
        char *s,
        std::streamsize n)
{
  JUMPOUT(0x8BE074);
}


// ===== 8be0bc std::priv::stdio_streambuf_base::~stdio_streambuf_base() =====
void __fastcall std::priv::stdio_streambuf_base::~stdio_streambuf_base(std::priv::stdio_streambuf_base *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994970;
  JUMPOUT(0x8BE4DC);
}


// ===== 8be0f4 std::priv::stdio_streambuf_base::~stdio_streambuf_base() =====
void __fastcall std::priv::stdio_streambuf_base::~stdio_streambuf_base(std::priv::stdio_streambuf_base *const this)
{
  std::priv::stdio_streambuf_base::~stdio_streambuf_base(this);
  JUMPOUT(0x8BE2B4);
}


// ===== 8be108 std::priv::stdio_streambuf_base::~stdio_streambuf_base() =====
void __fastcall std::priv::stdio_streambuf_base::~stdio_streambuf_base(std::priv::stdio_streambuf_base *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994970;
  JUMPOUT(0x8BE4DC);
}


// ===== 8be140 std::priv::stdio_ostreambuf::~stdio_ostreambuf() =====
std::priv::stdio_ostreambuf *__fastcall std::priv::stdio_ostreambuf::~stdio_ostreambuf(
        std::priv::stdio_ostreambuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_9948E0;
  std::priv::stdio_streambuf_base::~stdio_streambuf_base(this);
  return this;
}


// ===== 8be160 std::priv::stdio_ostreambuf::~stdio_ostreambuf() =====
void __fastcall std::priv::stdio_ostreambuf::~stdio_ostreambuf(std::priv::stdio_ostreambuf *const this)
{
  std::priv::stdio_ostreambuf::~stdio_ostreambuf(this);
  JUMPOUT(0x8BE2B4);
}


// ===== 8be174 std::priv::stdio_ostreambuf::~stdio_ostreambuf() =====
std::priv::stdio_ostreambuf *__fastcall std::priv::stdio_ostreambuf::~stdio_ostreambuf(
        std::priv::stdio_ostreambuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_9948E0;
  std::priv::stdio_streambuf_base::~stdio_streambuf_base(this);
  return this;
}


// ===== 8be194 std::priv::stdio_istreambuf::~stdio_istreambuf() =====
std::priv::stdio_istreambuf *__fastcall std::priv::stdio_istreambuf::~stdio_istreambuf(
        std::priv::stdio_istreambuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994928;
  std::priv::stdio_streambuf_base::~stdio_streambuf_base(this);
  return this;
}


// ===== 8be1b4 std::priv::stdio_istreambuf::~stdio_istreambuf() =====
void __fastcall std::priv::stdio_istreambuf::~stdio_istreambuf(std::priv::stdio_istreambuf *const this)
{
  std::priv::stdio_istreambuf::~stdio_istreambuf(this);
  JUMPOUT(0x8BE2B4);
}


// ===== 8be1c8 std::priv::stdio_istreambuf::~stdio_istreambuf() =====
std::priv::stdio_istreambuf *__fastcall std::priv::stdio_istreambuf::~stdio_istreambuf(
        std::priv::stdio_istreambuf *const this)
{
  this->_vptr.basic_streambuf = (int (**)(...))&off_994928;
  std::priv::stdio_streambuf_base::~stdio_streambuf_base(this);
  return this;
}


// ===== 8be1e8 std::priv::stdio_streambuf_base::stdio_streambuf_base(__sFILE *) =====
std::priv::stdio_streambuf_base *__fastcall std::priv::stdio_streambuf_base::stdio_streambuf_base(
        std::priv::stdio_streambuf_base *const this,
        FILE *file)
{
  this->_vptr.basic_streambuf = (int (**)(...))off_95B938;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  std::locale::locale(&this->_M_locale);
  this->_M_file = file;
  this->_vptr.basic_streambuf = (int (**)(...))&off_994970;
  return this;
}


// ===== 8be228 std::priv::stdio_streambuf_base::stdio_streambuf_base(__sFILE *) =====
std::priv::stdio_streambuf_base *__fastcall std::priv::stdio_streambuf_base::stdio_streambuf_base(
        std::priv::stdio_streambuf_base *const this,
        FILE *file)
{
  this->_vptr.basic_streambuf = (int (**)(...))off_95B938;
  this->_M_gbegin = nullptr;
  this->_M_gnext = nullptr;
  this->_M_gend = nullptr;
  this->_M_pbegin = nullptr;
  this->_M_pnext = nullptr;
  this->_M_pend = nullptr;
  std::locale::locale(&this->_M_locale);
  this->_M_file = file;
  this->_vptr.basic_streambuf = (int (**)(...))&off_994970;
  return this;
}


// ===== 8be268 __aeabi_llsr =====
// Alternative name is '__lshrdi3'
unsigned int __fastcall _aeabi_llsr(unsigned int a1, unsigned int a2, int a3)
{
  unsigned int result; // r0

  if ( a3 - 32 >= 0 )
    result = a2 >> (a3 - 32);
  else
    result = a1 >> a3;
  if ( a3 - 32 < 0 )
    result |= a2 << (32 - a3);
  return result;
}


// ===== 8be284 __aeabi_llsl =====
// Alternative name is '__ashldi3'
int __fastcall _aeabi_llsl(int a1, int a2, char a3)
{
  return a1 << a3;
}


// ===== 8be2a0 __aeabi_f2uiz =====
// Alternative name is '__fixunssfsi'
int __fastcall _aeabi_f2uiz(int a1)
{
  if ( !__CFSHL__(a1, 1) && (unsigned int)(2 * a1) >= 0x7F000000 )
    JUMPOUT(0x8BE360);
  return 0;
}


// ===== 8be2f8 ___ZSt26__stl_throw_overflow_errorPKc_veneer_0 =====
void __fastcall __ZSt26__stl_throw_overflow_errorPKc_veneer_0(const char *__msg)
{
  std::__stl_throw_overflow_error(__msg);
}


// ===== 8be308 ___ZSt24__stl_throw_length_errorPKc_veneer_0 =====
void __fastcall __ZSt24__stl_throw_length_errorPKc_veneer_0(const char *__msg)
{
  std::__stl_throw_length_error(__msg);
}


// ===== 8be318 ___ZNSt12__node_alloc11_M_allocateERj_veneer_0 =====
void __fastcall __ZNSt12__node_alloc11_M_allocateERj_veneer_0(size_t *const __n)
{
  std::__node_alloc::_M_allocate(__n);
}


// ===== 8be328 ___ZSt24__stl_throw_out_of_rangePKc_veneer_0 =====
void __fastcall __ZSt24__stl_throw_out_of_rangePKc_veneer_0(const char *__msg)
{
  std::__stl_throw_out_of_range(__msg);
}


// ===== 8be338 ___ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0 =====
void __fastcall __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(void *__p, size_t __n)
{
  std::__node_alloc::_M_deallocate(__p, __n);
}


// ===== a3642c __imp_asinf =====
None

// ===== a36430 __imp_iscntrl =====
None

// ===== a36434 __imp_glCompressedTexSubImage2D =====
None

// ===== a36438 __imp_glDrawArrays =====
None

// ===== a36440 __imp_atan2f =====
None

// ===== a36444 __imp_strncasecmp =====
None

// ===== a36448 __imp___errno =====
None

// ===== a3644c __imp_glSampleCoverage =====
None

// ===== a36450 __imp_fgetpos =====
None

// ===== a36454 __imp_glBindBuffer =====
None

// ===== a36458 __imp_iswprint =====
None

// ===== a3645c __imp_connect =====
None

// ===== a36460 __imp_towupper =====
None

// ===== a36464 strncpy =====
None

// ===== a36468 __imp_glFramebufferTexture2D =====
None

// ===== a3646c __imp_ftell =====
None

// ===== a36470 __imp_exit =====
None

// ===== a36474 strlen =====
None

// ===== a36478 __imp___aeabi_dcmpgt =====
None

// ===== a3647c __imp_select =====
None

// ===== a36480 __imp_glFrontFace =====
None

// ===== a36484 __imp_printf =====
None

// ===== a36488 __imp_sinh =====
None

// ===== a3648c __imp_strdup =====
None

// ===== a36490 __imp___cxa_pure_virtual =====
None

// ===== a36494 __imp_logf =====
None

// ===== a36498 __imp___aeabi_ui2d =====
None

// ===== a3649c __imp_glColorMask =====
None

// ===== a364a0 __imp_glEnableVertexAttribArray =====
None

// ===== a364a4 __imp_modf =====
None

// ===== a364a8 __imp_free =====
None

// ===== a364ac __imp_wcscat =====
None

// ===== a364b0 __imp_abort =====
None

// ===== a364b4 __imp_glBlendEquation =====
None

// ===== a364b8 __imp_atan2 =====
None

// ===== a364bc __imp_tanf =====
None

// ===== a364c0 __imp_memmove =====
None

// ===== a364c4 __imp_iswpunct =====
None

// ===== a364c8 __imp_glDeleteFramebuffers =====
None

// ===== a364cc __imp_glClear =====
None

// ===== a364d0 __imp_glDisable =====
None

// ===== a364d4 __imp_glViewport =====
None

// ===== a364d8 __imp_gethostbyname =====
None

// ===== a364dc __imp___aeabi_fcmpeq =====
None

// ===== a364e0 __imp_sched_get_priority_min =====
None

// ===== a364e4 __imp_uname =====
None

// ===== a364e8 __imp_pthread_mutex_init =====
None

// ===== a364ec __imp_glGetShaderInfoLog =====
None

// ===== a364f0 __imp_isupper =====
None

// ===== a364f4 __imp___aeabi_dcmple =====
None

// ===== a364f8 __imp_pthread_create =====
None

// ===== a364fc __imp_sin =====
None

// ===== a36500 __imp_wmemcpy =====
None

// ===== a36504 __imp_fprintf =====
None

// ===== a36508 __imp_glTexImage2D =====
None

// ===== a3650c __imp_glGetActiveAttrib =====
None

// ===== a36510 __imp_strtok =====
None

// ===== a36514 __imp_strpbrk =====
None

// ===== a36518 __imp_iswxdigit =====
None

// ===== a3651c __imp___aeabi_ldivmod =====
None

// ===== a36520 __imp_towlower =====
None

// ===== a36524 __imp_glFramebufferRenderbuffer =====
None

// ===== a36528 __imp_setvbuf =====
None

// ===== a3652c __imp_exp =====
None

// ===== a36530 __imp_sched_yield =====
None

// ===== a36534 atoi =====
None

// ===== a36538 __imp_glDeleteProgram =====
None

// ===== a3653c __imp_getpeername =====
None

// ===== a36540 operator delete[](void *) =====
None

// ===== a36544 __imp_puts =====
None

// ===== a36548 operator new[](uint) =====
None

// ===== a3654c __imp_getc =====
None

// ===== a36550 __imp_glBindRenderbuffer =====
None

// ===== a36554 __imp_glReadPixels =====
None

// ===== a36558 __imp___aeabi_ul2d =====
None

// ===== a3655c __imp_putc =====
None

// ===== a36560 __imp_gmtime =====
None

// ===== a36564 __imp_sqrtf =====
None

// ===== a36568 __imp_glGenBuffers =====
None

// ===== a3656c __imp_glGetUniformLocation =====
None

// ===== a36570 __imp_cos =====
None

// ===== a36574 __imp_glBindFramebuffer =====
None

// ===== a36578 __imp_fcntl =====
None

// ===== a3657c __imp_glPixelStorei =====
None

// ===== a36580 __imp_pthread_self =====
None

// ===== a36584 __imp_wcsncpy =====
None

// ===== a36588 __imp___android_log_print =====
None

// ===== a3658c __imp_pthread_key_create =====
None

// ===== a36590 __imp_glGetError =====
None

// ===== a36594 __imp_glCheckFramebufferStatus =====
None

// ===== a36598 __imp_sqrt =====
None

// ===== a3659c __imp_ioctl =====
None

// ===== a365a0 __imp_isxdigit =====
None

// ===== a365a8 __imp_glActiveTexture =====
None

// ===== a365ac __imp_iswalpha =====
None

// ===== a365b0 __imp_strlcpy =====
None

// ===== a365b4 __imp_lseek =====
None

// ===== a365b8 __imp_glGetProgramInfoLog =====
None

// ===== a365bc __imp_pthread_exit =====
None

// ===== a365c4 __imp_strcoll =====
None

// ===== a365c8 __imp_glDepthMask =====
None

// ===== a365cc __imp_snprintf =====
None

// ===== a365d0 __imp_send =====
None

// ===== a365d4 __imp_glTexParameterf =====
None

// ===== a365d8 __imp_vsprintf =====
None

// ===== a365dc __aeabi_unwind_cpp_pr0 =====
None

// ===== a365e0 __imp_sscanf =====
None

// ===== a365e4 __imp_glGetString =====
None

// ===== a365e8 __imp_glGetProgramiv =====
None

// ===== a365ec __imp_glDepthFunc =====
None

// ===== a365f0 __imp___aeabi_idiv =====
None

// ===== a365f4 operator delete(void *) =====
None

// ===== a365f8 __imp___aeabi_dcmpun =====
None

// ===== a365fc __imp_pthread_getspecific =====
None

// ===== a36600 __imp_iswspace =====
None

// ===== a36604 __imp___aeabi_ui2f =====
None

// ===== a36608 __imp_fread =====
None

// ===== a3660c __imp___aeabi_fcmpgt =====
None

// ===== a36610 __imp___aeabi_atexit =====
None

// ===== a36614 __imp___stack_chk_fail =====
None

// ===== a36618 strcmp =====
None

// ===== a3661c __imp_toupper =====
None

// ===== a36620 __imp_inet_addr =====
None

// ===== a36624 __imp___aeabi_ddiv =====
None

// ===== a36628 __imp_munmap =====
None

// ===== a36630 __imp_wcsncmp =====
None

// ===== a36634 __imp_glBlendColor =====
None

// ===== a36638 __imp_glGenerateMipmap =====
None

// ===== a3663c __imp_cosh =====
None

// ===== a36640 __imp_strncat =====
None
