// ===== 8a6884 std::_Locale_impl::insert_numeric_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_numeric_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  _Locale_name_hint *v4; // r8
  std::_Locale_impl *v5; // r5
  const char **v6; // r6
  char *v7; // r9
  std::_Locale_impl *M_impl; // r7
  const char *v9; // r3
  _Locale_numeric *v10; // r0
  int v12; // [sp+Ch] [bp-8h] BYREF

  while ( 1 )
  {
    v4 = hint;
    v5 = this;
    v6 = name;
    v7 = buf;
    if ( !**name )
      *name = Locale_numeric_default(buf);
    M_impl = std::locale::classic()->_M_impl;
    std::_Locale_impl::insert(v5, M_impl, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::_Locale_impl::insert(v5, M_impl, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    std::_Locale_impl::insert(v5, M_impl, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    std::_Locale_impl::insert(v5, M_impl, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    v9 = *v6;
    if ( !*v6 || !*v9 || *v9 == 67 && !v9[1] )
    {
      std::_Locale_impl::insert(v5, M_impl, &std::numpunct<char>::id);
      std::_Locale_impl::insert(v5, M_impl, &std::numpunct<wchar_t>::id);
      return v4;
    }
    v10 = std::priv::__acquire_numeric(v6, v7, v4, &v12);
    if ( !v10 )
      break;
    hint = v4;
    if ( !v4 )
      Locale_get_numeric_hint(v10);
    this = (std::_Locale_impl *const)&word_10;
  }
  std::locale::_M_throw_on_creation_failure(v12, *v6, "numpunct");
  return v4;
}


// ===== 8a6a0c std::_Locale_impl::insert_ctype_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_ctype_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  const char *v5; // r0
  _Locale_ctype *v9; // r0
  std::_Locale_impl *M_impl; // r6
  int v12; // [sp+Ch] [bp-8h] BYREF

  v5 = *name;
  if ( !**name )
  {
    v5 = Locale_ctype_default(buf);
    *name = v5;
  }
  if ( v5 && *v5 && (*v5 != 67 || v5[1]) )
  {
    v9 = std::priv::__acquire_ctype(name, buf, hint, &v12);
    if ( v9 )
    {
      if ( !hint )
        Locale_get_ctype_hint(v9);
      JUMPOUT(0x8A6890);
    }
    std::locale::_M_throw_on_creation_failure(v12, *name, "ctype");
  }
  else
  {
    M_impl = std::locale::classic()->_M_impl;
    std::_Locale_impl::insert(this, M_impl, &std::ctype<char>::id);
    std::_Locale_impl::insert(this, M_impl, &std::codecvt<char,char,mbstate_t>::id);
    std::_Locale_impl::insert(this, M_impl, &std::ctype<wchar_t>::id);
    std::_Locale_impl::insert(this, M_impl, &std::codecvt<wchar_t,char,mbstate_t>::id);
  }
  return hint;
}


// ===== 8a6c04 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) =====
void __fastcall std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(
        std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const this,
        size_t __n)
{
  if ( __n <= 0x3FFFFFFF && __n )
  {
    if ( __n > 0x10 )
      JUMPOUT(0x8A6474);
  }
  else
  {
    std::__stl_throw_length_error("basic_string");
  }
}


// ===== 8a6c44 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_reserve(uint) =====
void __fastcall std::wstring::_M_reserve(std::wstring *const this, size_t __n)
{
  JUMPOUT(0x8A6472);
}


// ===== 8a6c94 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::push_back(wchar_t) =====
void __fastcall std::wstring::push_back(std::wstring *const this, wchar_t __c)
{
  wchar_t *M_finish; // r3
  signed int v3; // r2

  M_finish = this->_M_finish;
  if ( (std::wstring *const)this->_M_start_of_storage._M_data == this )
    v3 = 16 - (((char *)M_finish - (char *)this) >> 2);
  else
    v3 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
  if ( v3 == 1 )
    JUMPOUT(0x8A6B8A);
  M_finish[1] = 0;
  *this->_M_finish++ = __c;
}


// ===== 8a6cdc std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::append(uint,wchar_t) =====
std::wstring *__fastcall std::wstring::append(std::wstring *const this, size_t __n, wchar_t __c)
{
  wchar_t *M_finish; // r1
  std::wstring *M_data; // r3
  unsigned int v8; // r3
  int v9; // r3
  _DWORD *v10; // r2
  size_t v11; // r6

  if ( __n )
  {
    M_finish = this->_M_finish;
    M_data = (std::wstring *)this->_M_start_of_storage._M_data;
    if ( __n > 1073741822 - (((char *)M_finish - (char *)M_data) >> 2) )
    {
      std::__stl_throw_length_error("basic_string");
      M_data = (std::wstring *)this->_M_start_of_storage._M_data;
      M_finish = this->_M_finish;
    }
    if ( this == M_data )
      v8 = 16 - (((char *)M_finish - (char *)this) >> 2);
    else
      v8 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
    if ( __n >= v8 )
      JUMPOUT(0x8A6B8A);
    v9 = (int)(4 * (__n - 1)) >> 2;
    v10 = M_finish + 1;
    if ( v9 > 0 )
    {
      do
      {
        --v9;
        *v10++ = __c;
      }
      while ( v9 );
      M_finish = this->_M_finish;
    }
    v11 = __n;
    M_finish[v11] = 0;
    *this->_M_finish = __c;
    this->_M_finish = (wchar_t *)((char *)this->_M_finish + v11 * 4);
  }
  return this;
}


// ===== 8a6d64 std::priv::__fill_n<std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,int,wchar_t>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,int,wchar_t const&) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__fill_n<std::ostreambuf_iterator<wchar_t>,int,wchar_t>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __first,
        int __n,
        const wchar_t *__val)
{
  std::wstreambuf *M_buf; // r6
  int v6; // r4
  int M_ok; // r5
  int v8; // r0
  wchar_t v9; // r1
  wchar_t *M_pnext; // r3

  M_buf = __first._M_buf;
  v6 = __n;
  M_ok = __first._M_ok;
  if ( __n > 0 )
  {
    do
    {
      v9 = *__val;
      if ( M_ok )
      {
        M_pnext = M_buf->_M_pnext;
        if ( M_pnext < M_buf->_M_pend )
        {
          *M_pnext = v9;
          M_buf->_M_pnext = M_pnext + 1;
          v8 = *M_pnext;
        }
        else
        {
          v8 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))M_buf->_vptr.basic_streambuf + 13))(M_buf, v9);
        }
        M_ok &= -(v8 != -1);
      }
      --v6;
    }
    while ( v6 );
  }
  retstr->_M_buf = M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a6dc4 std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(wchar_t const*,wchar_t const*,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::__false_type const&) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const wchar_t *__first,
        const wchar_t *__last,
        std::ostreambuf_iterator<wchar_t> __result,
        const std::__false_type *const __resulta)
{
  std::wstreambuf *M_buf; // r6
  int v6; // r4
  const wchar_t *v8; // r5
  int M_ok; // r7
  int v10; // r0
  wchar_t v11; // r1
  wchar_t *M_pnext; // r3

  M_buf = __result._M_buf;
  v6 = __last - __first;
  v8 = __first;
  M_ok = __result._M_ok;
  if ( v6 > 0 )
  {
    while ( 1 )
    {
      v11 = *v8;
      if ( M_ok )
      {
        M_pnext = M_buf->_M_pnext;
        if ( M_pnext < M_buf->_M_pend )
        {
          *M_pnext = v11;
          M_buf->_M_pnext = M_pnext + 1;
          v10 = *M_pnext;
        }
        else
        {
          v10 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))M_buf->_vptr.basic_streambuf + 13))(M_buf, v11);
        }
        M_ok &= -(v10 != -1);
      }
      if ( !--v6 )
        break;
      ++v8;
    }
  }
  retstr->_M_buf = M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a6e28 std::priv::__fill_n<std::ostreambuf_iterator<char,std::char_traits<char>>,int,char>(std::ostreambuf_iterator<char,std::char_traits<char>>,int,char const&) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __first,
        int __n,
        const char *__val)
{
  std::streambuf *M_buf; // r5
  int v6; // r4
  int M_ok; // r6
  int v8; // r1
  char *M_pnext; // r3

  M_buf = __first._M_buf;
  v6 = __n;
  M_ok = __first._M_ok;
  if ( __n > 0 )
  {
    while ( 1 )
    {
      v8 = *(unsigned __int8 *)__val;
      if ( !M_ok )
        goto LABEL_4;
      M_pnext = M_buf->_M_pnext;
      if ( M_pnext < M_buf->_M_pend )
      {
        *M_pnext = v8;
        M_buf->_M_pnext = M_pnext + 1;
LABEL_4:
        if ( !--v6 )
          break;
      }
      else
      {
        --v6;
        M_ok &= -((*((int (__fastcall **)(std::streambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v8) != -1);
        if ( !v6 )
          break;
      }
    }
  }
  retstr->_M_buf = M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a6e88 std::copy<char *,std::ostreambuf_iterator<char,std::char_traits<char>>>(char *,char *,std::ostreambuf_iterator<char,std::char_traits<char>>) =====
std::ostreambuf_iterator<char> *__fastcall std::copy<char *,std::ostreambuf_iterator<char>>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        char *__first,
        char *__last,
        std::ostreambuf_iterator<char> __result)
{
  int v6; // r8
  int M_ok; // r6
  int v8; // r4
  int v9; // r1
  char *M_pnext; // r3

  v6 = __last - __first;
  M_ok = __result._M_ok;
  if ( __last - __first > 0 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = (unsigned __int8)__first[v8];
      if ( !M_ok )
        goto LABEL_4;
      M_pnext = __result._M_buf->_M_pnext;
      if ( M_pnext < __result._M_buf->_M_pend )
      {
        *M_pnext = v9;
        __result._M_buf->_M_pnext = M_pnext + 1;
LABEL_4:
        if ( ++v8 == v6 )
          break;
      }
      else
      {
        ++v8;
        M_ok &= -((*((int (__fastcall **)(std::streambuf *, int))__result._M_buf->_vptr.basic_streambuf + 13))(
                    __result._M_buf,
                    v9) != -1);
        if ( v8 == v6 )
          break;
      }
    }
  }
  retstr->_M_buf = __result._M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a6ef4 std::priv::__copy_aux<wchar_t *,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(wchar_t *,wchar_t *,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::__false_type const&) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__copy_aux<wchar_t *,std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        wchar_t *__first,
        wchar_t *__last,
        std::ostreambuf_iterator<wchar_t> __result,
        const std::__false_type *const __resulta)
{
  std::wstreambuf *M_buf; // r6
  int v6; // r4
  wchar_t *v8; // r5
  int M_ok; // r7
  int v10; // r0
  wchar_t v11; // r1
  wchar_t *M_pnext; // r3

  M_buf = __result._M_buf;
  v6 = __last - __first;
  v8 = __first;
  M_ok = __result._M_ok;
  if ( v6 > 0 )
  {
    while ( 1 )
    {
      v11 = *v8;
      if ( M_ok )
      {
        M_pnext = M_buf->_M_pnext;
        if ( M_pnext < M_buf->_M_pend )
        {
          *M_pnext = v11;
          M_buf->_M_pnext = M_pnext + 1;
          v10 = *M_pnext;
        }
        else
        {
          v10 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))M_buf->_vptr.basic_streambuf + 13))(M_buf, v11);
        }
        M_ok &= -(v10 != -1);
      }
      if ( !--v6 )
        break;
      ++v8;
    }
  }
  retstr->_M_buf = M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a6f58 std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,tm const*,char,char) =====
void __fastcall std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t a5,
        const tm *__tmb,
        char __format,
        char __modifier)
{
  std::priv::__basic_iostring<wchar_t> __buf; // [sp+18h] [bp-864h] BYREF
  std::locale v9[3]; // [sp+870h] [bp-Ch] BYREF

  std::locale::locale(v9, &__f->_M_locale);
  std::locale::_M_use_facet(v9, &std::ctype<wchar_t>::id);
  std::locale::~locale(v9);
  __buf._M_finish = (wchar_t *)&__buf;
  JUMPOUT(0x8A6880);
}


// ===== 8a705c std::copy<char const*,std::ostreambuf_iterator<char,std::char_traits<char>>>(char const*,char const*,std::ostreambuf_iterator<char,std::char_traits<char>>) =====
std::ostreambuf_iterator<char> *__fastcall std::copy<char const*,std::ostreambuf_iterator<char>>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const char *__first,
        const char *__last,
        std::ostreambuf_iterator<char> __result)
{
  int v6; // r8
  int M_ok; // r6
  int v8; // r4
  int v9; // r1
  char *M_pnext; // r3

  v6 = __last - __first;
  M_ok = __result._M_ok;
  if ( __last - __first > 0 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = (unsigned __int8)__first[v8];
      if ( !M_ok )
        goto LABEL_4;
      M_pnext = __result._M_buf->_M_pnext;
      if ( M_pnext < __result._M_buf->_M_pend )
      {
        *M_pnext = v9;
        __result._M_buf->_M_pnext = M_pnext + 1;
LABEL_4:
        if ( ++v8 == v6 )
          break;
      }
      else
      {
        ++v8;
        M_ok &= -((*((int (__fastcall **)(std::streambuf *, int))__result._M_buf->_vptr.basic_streambuf + 13))(
                    __result._M_buf,
                    v9) != -1);
        if ( v8 == v6 )
          break;
      }
    }
  }
  retstr->_M_buf = __result._M_buf;
  retstr->_M_ok = M_ok;
  return retstr;
}


// ===== 8a70c8 std::priv::__copy_integer_and_fill<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(wchar_t const*,int,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,int,int,wchar_t,wchar_t,wchar_t) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__copy_integer_and_fill<wchar_t,std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const wchar_t *__buf,
        ptrdiff_t __len,
        std::ostreambuf_iterator<wchar_t> __oi,
        __int16 __flg,
        std::streamsize __wid,
        int __fill,
        std::streamsize __xplus,
        wchar_t __xminus)
{
  int v12; // r4
  std::wstreambuf *v13; // r6
  int v14; // r5
  int v15; // r0
  wchar_t *M_pnext; // r3
  wchar_t v18; // r1
  std::ostreambuf_iterator<wchar_t> v19; // r1
  const std::__false_type *v20; // r4
  const wchar_t *v21; // r1
  const wchar_t *v22; // r2
  std::ostreambuf_iterator<wchar_t> v23; // r1
  std::ostreambuf_iterator<wchar_t> v24; // r1
  int v25; // [sp+10h] [bp-38h]
  std::ostreambuf_iterator<wchar_t> __result; // [sp+1Ch] [bp-2Ch] BYREF
  std::ostreambuf_iterator<wchar_t> v27; // [sp+24h] [bp-24h] BYREF
  std::ostreambuf_iterator<wchar_t> __first; // [sp+2Ch] [bp-1Ch] BYREF
  std::__false_type v29; // [sp+34h] [bp-14h] BYREF
  std::__false_type v30; // [sp+38h] [bp-10h] BYREF
  char v31; // [sp+3Ch] [bp-Ch] BYREF
  std::__false_type v32; // [sp+40h] [bp-8h] BYREF
  std::__false_type v33; // [sp+44h] [bp-4h] BYREF
  std::wstreambuf *varg_r3; // [sp+6Ch] [bp+24h] BYREF
  bool M_ok; // [sp+70h] [bp+28h]
  std::ostreambuf_iterator<wchar_t> std__ostreambuf_iterator_wchar_t_a; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<wchar_t> v37; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<wchar_t> v38; // 0:r3.4,4:^0.4

  if ( __len >= __wid )
  {
    std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(retstr, __buf, &__buf[__len], __oi, &v33);
    return retstr;
  }
  v12 = __wid - __len;
  if ( (__flg & 7) == 1 )
  {
    v38._M_buf = varg_r3;
    LOBYTE(v25) = __oi._M_ok;
    *(_DWORD *)&v38._M_ok = v25;
    std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(&__first, __buf, &__buf[__len], v38, &v32);
    v24._M_buf = __first._M_buf;
    varg_r3 = __first._M_buf;
    M_ok = __first._M_ok;
    *(_DWORD *)&v24._M_ok = *(_DWORD *)&__oi._M_ok;
    std::priv::__fill_n<std::ostreambuf_iterator<wchar_t>,int,wchar_t>(retstr, v24, v12, (const wchar_t *)&__fill);
    return retstr;
  }
  if ( (__flg & 7) == 4 )
  {
    if ( __len && ((v18 = *__buf, v18 == __xplus) || v18 == __xminus) )
    {
      std::ostreambuf_iterator<wchar_t>::operator=((std::ostreambuf_iterator<wchar_t> *const)&varg_r3, v18);
      *(_DWORD *)&v23._M_ok = *(_DWORD *)&__oi._M_ok;
      v23._M_buf = varg_r3;
      std::priv::__fill_n<std::ostreambuf_iterator<wchar_t>,int,wchar_t>(&v27, v23, v12, (const wchar_t *)&__fill);
      v37._M_buf = v27._M_buf;
      varg_r3 = v27._M_buf;
      v20 = (const std::__false_type *)&v31;
      LOBYTE(v25) = v27._M_ok;
      v21 = __buf + 1;
      v22 = &__buf[__len];
    }
    else
    {
      if ( (__flg & 7) != 4 || __len <= 1 || (__flg & 0x238) != 0x210 )
        goto LABEL_6;
      std::ostreambuf_iterator<wchar_t>::operator=((std::ostreambuf_iterator<wchar_t> *const)&varg_r3, *__buf);
      std::ostreambuf_iterator<wchar_t>::operator=((std::ostreambuf_iterator<wchar_t> *const)&varg_r3, __buf[1]);
      *(_DWORD *)&v19._M_ok = *(_DWORD *)&__oi._M_ok;
      v19._M_buf = varg_r3;
      std::priv::__fill_n<std::ostreambuf_iterator<wchar_t>,int,wchar_t>(&__result, v19, v12, (const wchar_t *)&__fill);
      v37._M_buf = __result._M_buf;
      varg_r3 = __result._M_buf;
      v20 = &v30;
      LOBYTE(v25) = __result._M_ok;
      v21 = __buf + 2;
      v22 = &__buf[__len];
    }
    *(_DWORD *)&v37._M_ok = v25;
    std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(retstr, v21, v22, v37, v20);
    return retstr;
  }
LABEL_6:
  v13 = varg_r3;
  v14 = __oi._M_ok;
  if ( v12 > 0 )
  {
    do
    {
      if ( v14 )
      {
        M_pnext = v13->_M_pnext;
        if ( M_pnext < v13->_M_pend )
        {
          *M_pnext = __fill;
          v13->_M_pnext = M_pnext + 1;
          v15 = *M_pnext;
        }
        else
        {
          v15 = (*((int (__fastcall **)(std::wstreambuf *, int))v13->_vptr.basic_streambuf + 13))(v13, __fill);
        }
        v14 &= -(v15 != -1);
      }
      --v12;
    }
    while ( v12 );
  }
  varg_r3 = v13;
  LOBYTE(v25) = v14;
  *(_DWORD *)&std__ostreambuf_iterator_wchar_t_a._M_ok = v25;
  std__ostreambuf_iterator_wchar_t_a._M_buf = v13;
  std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(
    retstr,
    __buf,
    &__buf[__len],
    std__ostreambuf_iterator_wchar_t_a,
    &v29);
  return retstr;
}


// ===== 8a7294 std::priv::__put_integer<std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(char *,char *,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int,wchar_t) =====
void __fastcall std::priv::__put_integer<std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        char *__buf,
        char *__iend,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        __int16 __flags,
        std::ios_base *__fill)
{
  std::locale::facet *v9; // r5
  ptrdiff_t inserted; // r10
  std::locale::facet *v11; // r6
  int v12; // r11
  wchar_t v13; // r0
  std::streamsize M_width; // r3
  unsigned int v15; // r3
  std::streamsize basechars; // [sp+8h] [bp-144h]
  int Minus; // [sp+20h] [bp-12Ch]
  int Plus; // [sp+24h] [bp-128h]
  wchar_t v20[2]; // [sp+28h] [bp-124h] BYREF
  wchar_t __wbuf[64]; // [sp+30h] [bp-11Ch] BYREF
  int v22; // [sp+13Ch] [bp-10h]
  int v23; // [sp+140h] [bp-Ch]
  std::wstreambuf *varg_r3; // [sp+174h] [bp+28h]
  std::ostreambuf_iterator<wchar_t> std__ostreambuf_iterator_wchar_t_; // 0:r3.4,4:^0.4

  std::locale::locale((std::locale *const)&__wbuf[62], &__f->_M_locale);
  v9 = std::locale::_M_use_facet((const std::locale *const)&__wbuf[62], &std::ctype<wchar_t>::id);
  Plus = (*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 10))(v9, 43);
  Minus = (*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 10))(v9, 45);
  (*((void (__fastcall **)(std::locale::facet *, char *, char *, wchar_t *))v9->_vptr.facet + 11))(
    v9,
    __buf,
    __iend,
    v20);
  inserted = __iend - __buf;
  v11 = std::locale::_M_use_facet((const std::locale *const)&__wbuf[62], &std::numpunct<wchar_t>::id);
  (*((void (__fastcall **)(wchar_t *, std::locale::facet *))v11->_vptr.facet + 4))(&__wbuf[63], v11);
  if ( v23 != v22 )
  {
    if ( (__flags & 0x200) != 0 && (v15 = (__flags & 0x38) - 16, v15 <= 0x10) )
      v12 = CSWTCH_1372[v15];
    else
      v12 = 0;
    v13 = (*((int (__fastcall **)(std::locale::facet *))v11->_vptr.facet + 3))(v11);
    inserted = std::priv::__insert_grouping(
                 v20,
                 &v20[inserted],
                 (const std::string *const)&__wbuf[63],
                 v13,
                 Plus,
                 Minus,
                 v12);
  }
  M_width = __f->_M_width;
  __f->_M_width = 0;
  basechars = M_width;
  *(_DWORD *)&std__ostreambuf_iterator_wchar_t_._M_ok = *(_DWORD *)&__s._M_ok;
  std__ostreambuf_iterator_wchar_t_._M_buf = varg_r3;
  std::priv::__copy_integer_and_fill<wchar_t,std::ostreambuf_iterator<wchar_t>>(
    retstr,
    v20,
    inserted,
    std__ostreambuf_iterator_wchar_t_,
    __flags,
    basechars,
    (int)__fill,
    Plus,
    Minus);
  JUMPOUT(0x40AC);
}


// ===== 8a73e0 std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,ulong) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,unsigned long>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned int __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+2Ah] [bp-Ah] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<unsigned long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<wchar_t>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a744c std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,ulong) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned int __val)
{
  std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,unsigned long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a7470 std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong long>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,ulong long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,unsigned long long>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned __int64 __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+32h] [bp-Ah] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = (char *)std::priv::__write_integer_backward<unsigned long long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<wchar_t>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a74dc std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,ulong long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned __int64 __val)
{
  std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,unsigned long long>(
    retstr,
    __s,
    __f,
    __fill,
    __val);
  return retstr;
}


// ===== 8a7504 std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long long>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,long long>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        __int64 __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+32h] [bp-Ah] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<long long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<wchar_t>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a7570 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        __int64 __val)
{
  std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,long long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a7598 std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,long>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned int __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+2Ah] [bp-Ah] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<wchar_t>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a7604 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        std::ios_base *__fill,
        unsigned int __val)
{
  std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a7628 std::_Locale_impl::_Locale_impl(char const*) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, const char *s)
{
  this->_M_ref_count = 0;
  JUMPOUT(0x8A6FB4);
}


// ===== 8a767c std::_Locale_impl::make_classic_locale(void) =====
void std::_Locale_impl::make_classic_locale()
{
  std::_Locale_impl::_Locale_impl(
    (std::_Locale_impl *const)((char *)&word_28
                             + (_DWORD)&`guard variable for'std::_Locale_impl::Init::_M_count(void)::_S_count),
    "C");
  JUMPOUT(0x8A7464);
}


// ===== 8a7a94 std::_Locale_impl::_S_initialize(void) =====
void std::_Locale_impl::_S_initialize()
{
  std::money_get<char,std::istreambuf_iterator<char>>::id._M_index = 8;
  std::money_put<char,std::ostreambuf_iterator<char>>::id._M_index = 9;
  std::num_get<char,std::istreambuf_iterator<char>>::id._M_index = 10;
  std::num_put<char,std::ostreambuf_iterator<char>>::id._M_index = 11;
  std::time_get<char,std::istreambuf_iterator<char>>::id._M_index = 12;
  std::time_put<char,std::ostreambuf_iterator<char>>::id._M_index = 13;
  std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id._M_index = 21;
  std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id._M_index = 22;
  std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id._M_index = 23;
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id._M_index = 24;
  std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id._M_index = 25;
  std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id._M_index = 26;
  std::_Locale_impl::make_classic_locale();
}


// ===== 8a7b34 std::_Locale_impl::Init::Init(void) =====
void __fastcall std::_Locale_impl::Init::Init(std::_Locale_impl::Init *const this)
{
  std::_Locale_impl::Init::_M_count(this);
  JUMPOUT(0x8A75B4);
}


// ===== 8a7b64 std::_Stl_get_global_locale(void) =====
std::locale *std::_Stl_get_global_locale()
{
  if ( (`guard variable for'std::_Stl_get_global_locale(void)::init & 1) == 0 )
    JUMPOUT(0x8A6FB4);
  return std::_Stl_global_locale;
}


// ===== 8a7bbc std::_Stl_get_classic_locale(void) =====
std::locale *std::_Stl_get_classic_locale()
{
  if ( (`guard variable for'std::_Stl_get_classic_locale(void)::init & 1) == 0 )
    JUMPOUT(0x8A6FB4);
  return std::_Stl_classic_locale;
}


// ===== 8a7c14 std::_Locale_impl::_Locale_impl(uint,char const*) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, size_t n, const char *s, int a4)
{
  this->_M_ref_count = 0;
  this->_M_ref_count = a4 + 1;
  JUMPOUT(0x8A7396);
}


// ===== 8a7c58 std::_Locale_impl::_Locale_impl(uint,char const*) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, size_t n, const char *s)
{
  this->_M_ref_count = 0;
  JUMPOUT(0x8A7B48);
}


// ===== 8a7c9c std::_Locale_impl::Init::Init(void) =====
void __fastcall std::_Locale_impl::Init::Init(std::_Locale_impl::Init *const this)
{
  std::_Locale_impl::Init::_M_count(this);
  JUMPOUT(0x8A75B4);
}


// ===== 8a7ccc std::_Locale_impl::_Locale_impl(char const*) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, const char *s)
{
  this->_M_ref_count = 0;
  JUMPOUT(0x8A7FB4);
}


// ===== 8a7d20 `global constructor keyed to'locale_impl.cpp =====
void __fastcall `global constructor keyed to'locale_impl.cpp(
        int a1,
        int a2,
        int a3,
        _BYTE *a4,
        int a5,
        int a6,
        char *first1,
        _DWORD *a8)
{
  int v8; // r10
  const char *v9; // r7
  unsigned int v10; // r0
  char v11; // r8
  int vars4; // [sp+Ch] [bp+4h]
  char *last1; // [sp+10h] [bp+8h]
  char *last1a; // [sp+10h] [bp+8h]
  int varsC; // [sp+14h] [bp+Ch]

  v9 = "*";
  varsC = 970074;
  while ( 1 )
  {
    v10 = (unsigned __int8)*a4;
    if ( !vars4 || *a4 )
      break;
    *last1++ = (char)v9;
    LOBYTE(v9) = 0;
    if ( ++a4 == std::_Nameless._M_buffers._M_end_of_storage )
    {
      v11 = 0;
      goto LABEL_7;
    }
  }
  if ( v10 > 0x7F || std::priv::__digit_val_table(v10) > 9u )
  {
    v11 = (char)v9;
LABEL_7:
    if ( vars4 && last1 != first1 )
    {
      *last1 = v11;
      last1a = last1 + 1;
    }
    if ( v8 )
    {
      *a8 = -1;
      a8[1] = 2146435071;
    }
    JUMPOUT(0x8A79B0);
  }
}


// ===== 8a7d84 std::_Locale_impl::_Locale_impl(std::_Locale_impl const&) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, const std::_Locale_impl *const locimpl)
{
  this->_M_ref_count = 0;
  JUMPOUT(0x8A7B48);
}


// ===== 8a7ddc std::_copy_Nameless_Locale_impl(std::_Locale_impl *) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall std::_copy_Nameless_Locale_impl(std::_Locale_impl *loc)
{
  int v1; // r6

  *(_DWORD *)&word_30 = v1;
  JUMPOUT(0x8A7B48);
}


// ===== 8a7e14 std::_Locale_impl::_Locale_impl(std::_Locale_impl const&) =====
void __fastcall std::_Locale_impl::_Locale_impl(std::_Locale_impl *const this, const std::_Locale_impl *const locimpl)
{
  this->_M_ref_count = 0;
  JUMPOUT(0x8A7B48);
}


// ===== 8a7e70 std::priv::__get_decimal_integer<wchar_t *,long double,wchar_t>(wchar_t * &,wchar_t * &,long double &,wchar_t *) =====
void __fastcall std::priv::__get_decimal_integer<wchar_t *,long double,wchar_t>(
        wchar_t **const __first,
        wchar_t **const __last,
        double *const __val,
        wchar_t *a4)
{
  std::string __grp; // [sp+6Ch] [bp-20h] BYREF

  __grp._M_finish = (char *)&__grp;
  __grp._M_start_of_storage._M_data = (char *)&__grp;
  JUMPOUT(0x8A867E);
}


// ===== 8a8088 std::priv::__get_decimal_integer<char *,long double,char>(char * &,char * &,long double &,char *) =====
void __fastcall std::priv::__get_decimal_integer<char *,long double,char>(
        char **const __first,
        char **const __last,
        double *const __val,
        char *a4)
{
  std::string __grp; // [sp+6Ch] [bp-20h] BYREF

  __grp._M_finish = (char *)&__grp;
  __grp._M_start_of_storage._M_data = (char *)&__grp;
  JUMPOUT(0x8A867E);
}


// ===== 8a82a0 std::time_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,tm const*,char,char) =====
void __fastcall std::time_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::time_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char a5,
        const tm *__tmb,
        char __format,
        char __modifier)
{
  std::locale v8; // [sp+20h] [bp-22Ch] BYREF
  std::priv::__basic_iostring<char> __buf; // [sp+24h] [bp-228h] BYREF

  std::locale::locale(&v8, &__f->_M_locale);
  std::locale::_M_use_facet(&v8, &std::ctype<char>::id);
  std::locale::~locale(&v8);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8A886C);
}


// ===== 8a83cc std::priv::__do_put_bool<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,bool) =====
void __fastcall std::priv::__do_put_bool<wchar_t,std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        bool __x)
{
  std::locale::facet *v7; // r4
  unsigned int M_width; // r3
  unsigned int v9; // r4
  int v10; // r4
  int v11; // r5
  int v12; // r0
  wchar_t *v13; // r3
  std::wstreambuf *M_buf; // r5
  int M_ok; // r6
  int v16; // r0
  wchar_t *M_pnext; // r3
  std::wstring __str; // [sp+10h] [bp-70h] BYREF
  std::ostreambuf_iterator<wchar_t> v19; // [sp+58h] [bp-28h]
  std::wstreambuf *v20; // [sp+60h] [bp-20h]
  char v21; // [sp+64h] [bp-1Ch]
  std::ostreambuf_iterator<wchar_t> v22; // [sp+68h] [bp-18h] BYREF
  std::locale v23; // [sp+70h] [bp-10h] BYREF
  std::__false_type v24; // [sp+74h] [bp-Ch] BYREF
  std::__false_type v25; // [sp+78h] [bp-8h] BYREF
  std::__false_type v26; // [sp+7Ch] [bp-4h] BYREF
  std::ostreambuf_iterator<wchar_t> v28; // 0:r3.4,4:^0.4

  std::locale::locale(&v23, &__f->_M_locale);
  v7 = std::locale::_M_use_facet(&v23, &std::numpunct<wchar_t>::id);
  std::locale::~locale(&v23);
  if ( __x )
    (*((void (__fastcall **)(std::wstring *, std::locale::facet *))v7->_vptr.facet + 5))(&__str, v7);
  else
    (*((void (__fastcall **)(std::wstring *, std::locale::facet *))v7->_vptr.facet + 6))(&__str, v7);
  M_width = __f->_M_width;
  __f->_M_width = 0;
  v9 = __str._M_finish - __str._M_start_of_storage._M_data;
  if ( M_width <= v9 )
  {
    v19 = __s;
    std::priv::__copy_aux<wchar_t *,std::ostreambuf_iterator<wchar_t>>(
      retstr,
      __str._M_start_of_storage._M_data,
      __str._M_finish,
      __s,
      &v26);
  }
  else
  {
    v10 = M_width - v9;
    if ( (__f->_M_fmtflags & 7) == 1 )
    {
      v19 = __s;
      std::priv::__copy_aux<wchar_t *,std::ostreambuf_iterator<wchar_t>>(
        &v22,
        __str._M_start_of_storage._M_data,
        __str._M_finish,
        __s,
        &v25);
      M_buf = v22._M_buf;
      M_ok = v22._M_ok;
      if ( v10 > 0 )
      {
        do
        {
          if ( M_ok )
          {
            M_pnext = M_buf->_M_pnext;
            if ( M_pnext < M_buf->_M_pend )
            {
              *M_pnext = __fill;
              M_buf->_M_pnext = M_pnext + 1;
              v16 = *M_pnext;
            }
            else
            {
              v16 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))M_buf->_vptr.basic_streambuf + 13))(
                      M_buf,
                      __fill);
            }
            M_ok &= -(v16 != -1);
          }
          --v10;
        }
        while ( v10 );
      }
      retstr->_M_buf = M_buf;
      retstr->_M_ok = M_ok;
    }
    else
    {
      v11 = __s._M_ok;
      if ( v10 > 0 )
      {
        do
        {
          if ( v11 )
          {
            v13 = __s._M_buf->_M_pnext;
            if ( v13 < __s._M_buf->_M_pend )
            {
              *v13 = __fill;
              __s._M_buf->_M_pnext = v13 + 1;
              v12 = *v13;
            }
            else
            {
              v12 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))__s._M_buf->_vptr.basic_streambuf + 13))(
                      __s._M_buf,
                      __fill);
            }
            v11 &= -(v12 != -1);
          }
          --v10;
        }
        while ( v10 );
      }
      v21 = v11;
      v20 = __s._M_buf;
      v19._M_ok = v11;
      v19._M_buf = __s._M_buf;
      *(_DWORD *)&v28._M_ok = *(_DWORD *)&v19._M_ok;
      v28._M_buf = __s._M_buf;
      std::priv::__copy_aux<wchar_t *,std::ostreambuf_iterator<wchar_t>>(
        retstr,
        __str._M_start_of_storage._M_data,
        __str._M_finish,
        v28,
        &v24);
    }
  }
  JUMPOUT(0x8A8314);
}


// ===== 8a8554 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,bool) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        bool __val)
{
  if ( (__f->_M_fmtflags & 0x100) != 0 )
    std::priv::__do_put_bool<wchar_t,std::ostreambuf_iterator<wchar_t>>(retstr, __s, __f, __fill, __val);
  else
    (*((void (__fastcall **)(std::ostreambuf_iterator<wchar_t> *, const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const, std::wstreambuf *, _DWORD, std::ios_base *const, wchar_t, bool))this->_vptr.facet
     + 3))(
      retstr,
      this,
      __s._M_buf,
      *(_DWORD *)&__s._M_ok,
      __f,
      __fill,
      __val);
  return retstr;
}


// ===== 8a8598 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_reserve(uint) =====
void __fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_reserve(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        size_t __n)
{
  std::priv::_STLP_alloc_proxy<char*,char,std::priv::__iostring_allocator<char> > *p_M_start_of_storage; // r4
  char *M_data; // r0
  char *v6; // r3
  char *v7; // r6
  char *v8; // r1

  p_M_start_of_storage = &this->_M_start_of_storage;
  if ( __n > 0x101 )
    JUMPOUT(0x8A8890);
  M_data = this->_M_start_of_storage._M_data;
  v6 = nullptr;
  v7 = (char *)p_M_start_of_storage;
  v8 = (char *)(this->_M_finish - M_data);
  if ( (int)v8 > 0 )
  {
    do
    {
      v6[(_DWORD)p_M_start_of_storage] = v6[(_DWORD)M_data];
      ++v6;
    }
    while ( v6 != v8 );
    v7 = &v6[(_DWORD)p_M_start_of_storage];
  }
  *v7 = 0;
  std::priv::_String_base<char,std::priv::__iostring_allocator<char>>::_M_deallocate_block(this);
  this->_M_buffers._M_end_of_storage = &p_M_start_of_storage->_M_static_buf[__n];
  this->_M_finish = v7;
  this->_M_start_of_storage._M_data = (char *)p_M_start_of_storage;
}


// ===== 8a85ec std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(char) =====
void __fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char __c)
{
  char *M_finish; // r3
  char *v5; // r2
  size_t size; // r0

  M_finish = this->_M_finish;
  if ( (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)this->_M_start_of_storage._M_data == this )
    v5 = (char *)((char *)&this->_M_finish - M_finish);
  else
    v5 = (char *)(this->_M_buffers._M_end_of_storage - M_finish);
  if ( v5 == (_BYTE *)&dword_0 + 1 )
  {
    size = std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
             this,
             1u);
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_reserve(this, size);
    M_finish = this->_M_finish;
  }
  M_finish[1] = 0;
  *this->_M_finish++ = __c;
}


// ===== 8a8634 std::priv::__do_put_bool<char,std::ostreambuf_iterator<char,std::char_traits<char>>>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,bool) =====
void __fastcall std::priv::__do_put_bool<char,std::ostreambuf_iterator<char>>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        unsigned __int8 __fill,
        bool __x)
{
  std::locale::facet *v6; // r4
  unsigned int M_width; // r4
  char *M_data; // r9
  int v9; // r1
  int v10; // r8
  int v11; // r4
  int M_ok; // r7
  char *M_pnext; // r3
  int v14; // r9
  int v15; // r4
  char *v16; // r6
  int v17; // r1
  char *v18; // r3
  int v19; // r7
  int v20; // r4
  int v21; // r6
  int v22; // r1
  char *v23; // r3
  int v24; // r7
  char *v25; // r6
  int v26; // r1
  char *v27; // r3
  int v28; // r7
  char *v29; // r3
  int v31; // [sp+4h] [bp-Ch]
  std::locale v32; // [sp+28h] [bp+18h] BYREF
  std::string __str; // [sp+2Ch] [bp+1Ch] BYREF

  std::locale::locale(&v32, &__f->_M_locale);
  v6 = std::locale::_M_use_facet(&v32, &std::numpunct<char>::id);
  std::locale::~locale(&v32);
  if ( __x )
    (*((void (__fastcall **)(std::string *, std::locale::facet *))v6->_vptr.facet + 5))(&__str, v6);
  else
    (*((void (__fastcall **)(std::string *, std::locale::facet *))v6->_vptr.facet + 6))(&__str, v6);
  M_width = __f->_M_width;
  __f->_M_width = 0;
  M_data = __str._M_start_of_storage._M_data;
  v9 = __str._M_finish - __str._M_start_of_storage._M_data;
  if ( M_width > __str._M_finish - __str._M_start_of_storage._M_data )
  {
    v11 = M_width - v9;
    if ( (__f->_M_fmtflags & 7) != 1 )
    {
      M_ok = __s._M_ok;
      if ( v11 > 0 )
      {
        while ( 1 )
        {
          if ( !M_ok )
            goto LABEL_9;
          M_pnext = __s._M_buf->_M_pnext;
          if ( M_pnext < __s._M_buf->_M_pend )
          {
            *M_pnext = __fill;
            __s._M_buf->_M_pnext = M_pnext + 1;
LABEL_9:
            if ( !--v11 )
              break;
          }
          else
          {
            --v11;
            M_ok &= -((*((int (__fastcall **)(std::streambuf *, _DWORD))__s._M_buf->_vptr.basic_streambuf + 13))(
                        __s._M_buf,
                        __fill) != -1);
            if ( !v11 )
              break;
          }
        }
      }
      v14 = __str._M_finish - __str._M_start_of_storage._M_data;
      M_ok = (unsigned __int8)M_ok;
      if ( __str._M_finish - __str._M_start_of_storage._M_data > 0 )
      {
        v15 = 0;
        v16 = __str._M_start_of_storage._M_data;
        while ( 1 )
        {
          v17 = (unsigned __int8)v16[v15];
          if ( !M_ok )
            goto LABEL_16;
          v18 = __s._M_buf->_M_pnext;
          if ( v18 < __s._M_buf->_M_pend )
          {
            *v18 = v17;
            __s._M_buf->_M_pnext = v18 + 1;
LABEL_16:
            if ( ++v15 == v14 )
              break;
          }
          else
          {
            ++v15;
            M_ok &= -((*((int (__fastcall **)(std::streambuf *, int))__s._M_buf->_vptr.basic_streambuf + 13))(
                        __s._M_buf,
                        v17) != -1);
            if ( v15 == v14 )
              break;
          }
        }
      }
      retstr->_M_buf = __s._M_buf;
      retstr->_M_ok = M_ok;
LABEL_44:
      JUMPOUT(0x8A89B0);
    }
    v31 = __s._M_ok;
    if ( __str._M_finish - __str._M_start_of_storage._M_data > 0 )
    {
      v24 = 0;
      v25 = __str._M_start_of_storage._M_data;
      v10 = __str._M_finish - __str._M_start_of_storage._M_data;
      while ( 1 )
      {
        v26 = (unsigned __int8)v25[v24];
        if ( !v31 )
          goto LABEL_32;
        v27 = __s._M_buf->_M_pnext;
        if ( v27 < __s._M_buf->_M_pend )
        {
          *v27 = v26;
          __s._M_buf->_M_pnext = v27 + 1;
LABEL_32:
          if ( v10 == ++v24 )
            break;
        }
        else
        {
          ++v24;
          v31 &= -((*((int (__fastcall **)(std::streambuf *, int))__s._M_buf->_vptr.basic_streambuf + 13))(
                     __s._M_buf,
                     v26) != -1);
          if ( v10 == v24 )
            break;
        }
      }
    }
    v28 = (unsigned __int8)v31;
    if ( v11 <= 0 )
    {
LABEL_43:
      retstr->_M_buf = __s._M_buf;
      retstr->_M_ok = v28;
      goto LABEL_44;
    }
    while ( 1 )
    {
      if ( !v28 )
        goto LABEL_39;
      v29 = __s._M_buf->_M_pnext;
      if ( v29 < __s._M_buf->_M_pend )
      {
        *v29 = __fill;
        __s._M_buf->_M_pnext = v29 + 1;
LABEL_39:
        if ( !--v11 )
          goto LABEL_43;
      }
      else
      {
        --v11;
        v28 &= -((*((int (__fastcall **)(std::streambuf *, _DWORD))__s._M_buf->_vptr.basic_streambuf + 13))(
                   __s._M_buf,
                   __fill) != -1);
        if ( !v11 )
          goto LABEL_43;
      }
    }
  }
  v19 = __s._M_ok;
  if ( v9 <= 0 )
  {
LABEL_28:
    retstr->_M_buf = __s._M_buf;
    retstr->_M_ok = v19;
    goto LABEL_44;
  }
  v20 = 0;
  v21 = __str._M_finish - __str._M_start_of_storage._M_data;
  while ( 1 )
  {
    v22 = (unsigned __int8)M_data[v20];
    if ( !v19 )
      goto LABEL_24;
    v23 = __s._M_buf->_M_pnext;
    if ( v23 < __s._M_buf->_M_pend )
    {
      *v23 = v22;
      __s._M_buf->_M_pnext = v23 + 1;
LABEL_24:
      if ( v21 == ++v20 )
        goto LABEL_28;
    }
    else
    {
      ++v20;
      v19 &= -((*((int (__fastcall **)(std::streambuf *, int))__s._M_buf->_vptr.basic_streambuf + 13))(__s._M_buf, v22) != -1);
      if ( v21 == v20 )
        goto LABEL_28;
    }
  }
}


// ===== 8a88b8 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,bool) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        unsigned __int8 __fill,
        bool __val)
{
  if ( (__f->_M_fmtflags & 0x100) != 0 )
    std::priv::__do_put_bool<char,std::ostreambuf_iterator<char>>(retstr, __s, __f, __fill, __val);
  else
    (*((void (__fastcall **)(std::ostreambuf_iterator<char> *, const std::num_put<char,std::ostreambuf_iterator<char> > *const, std::streambuf *, _DWORD, std::ios_base *const, _DWORD, bool))this->_vptr.facet
     + 3))(
      retstr,
      this,
      __s._M_buf,
      *(_DWORD *)&__s._M_ok,
      __f,
      __fill,
      __val);
  return retstr;
}


// ===== 8a88fc std::priv::__put_integer<std::ostreambuf_iterator<char,std::char_traits<char>>>(char *,char *,std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int,char) =====
void __fastcall std::priv::__put_integer<std::ostreambuf_iterator<char>>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        char *__buf,
        char *__iend,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        __int16 __flags,
        unsigned __int8 __fill)
{
  char *v7; // r9
  std::ostreambuf_iterator<char> *v8; // r6
  unsigned __int8 *v9; // r10
  int v10; // r11
  std::streambuf *p_result; // r5
  std::locale::facet *v12; // r4
  char *v13; // r7
  char v14; // r0
  ptrdiff_t inserted; // r0
  int v16; // r4
  int v17; // r4
  bool M_ok; // r8
  char *v19; // r3
  std::ostreambuf_iterator<char> *v20; // r1
  int v21; // r7
  char *v22; // r8
  char *M_pnext; // r3
  char *v24; // r3
  char *v25; // r3
  int v26; // r4
  char *v27; // r7
  int v28; // r1
  char *v29; // r3
  unsigned int v30; // r3
  int v31; // r1
  const char *v32; // r1
  std::ostreambuf_iterator<char> *basechars; // [sp+18h] [bp-3Ch]
  std::ostreambuf_iterator<char> v35; // [sp+34h] [bp-20h] BYREF
  std::ostreambuf_iterator<char> __result; // [sp+3Ch] [bp-18h] BYREF
  std::ostreambuf_iterator<char> v37; // [sp+44h] [bp-10h] BYREF
  std::ostreambuf_iterator<char> __first; // [sp+4Ch] [bp-8h] BYREF
  std::locale v39; // [sp+54h] [bp+0h] BYREF
  unsigned __int8 v40; // [sp+5Bh] [bp+7h] BYREF
  char v41[8]; // [sp+5Ch] [bp+8h] BYREF
  char __grpbuf[64]; // [sp+64h] [bp+10h] BYREF
  int v43; // [sp+ACh] [bp+58h]
  int v44; // [sp+B0h] [bp+5Ch]
  std::streambuf *varg_r3; // [sp+E4h] [bp+90h]
  std::ostreambuf_iterator<char> v46; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<char> std__ostreambuf_iterator_char_; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<char> std__ostreambuf_iterator_char_a; // 0:r3.4,4:^0.4

  v7 = __buf;
  v8 = (std::ostreambuf_iterator<char> *)__fill;
  v9 = (unsigned __int8 *)__f;
  v10 = __iend - __buf;
  p_result = varg_r3;
  std::locale::locale(&v39, &__f->_M_locale);
  v12 = std::locale::_M_use_facet(&v39, &std::numpunct<char>::id);
  std::locale::~locale(&v39);
  v13 = &__grpbuf[56];
  (*((void (__fastcall **)(char *, std::locale::facet *))v12->_vptr.facet + 4))(&__grpbuf[56], v12);
  if ( v44 != v43 )
  {
    if ( (__flags & 0x200) != 0 && (v30 = (__flags & 0x38) - 16, v30 <= 0x10) )
      basechars = (std::ostreambuf_iterator<char> *)CSWTCH_1372[v30 + 17];
    else
      basechars = nullptr;
    if ( v10 )
      JUMPOUT(0x8A8F3C);
    v7 = v41;
    v14 = (*((int (__fastcall **)(std::locale::facet *))v12->_vptr.facet + 3))(v12);
    inserted = std::priv::__insert_grouping(
                 v41,
                 v41,
                 (const std::string *const)&__grpbuf[56],
                 v14,
                 43,
                 45,
                 (int)basechars);
    goto LABEL_6;
  }
LABEL_7:
  v16 = *((_DWORD *)v9 + 7);
  *((_DWORD *)v9 + 7) = 0;
  __first._M_ok = __s._M_ok;
  __first._M_buf = p_result;
  v9 = &v40;
  v40 = (unsigned __int8)v8;
  if ( v10 >= v16 )
  {
    *(_DWORD *)&std__ostreambuf_iterator_char_._M_ok = *(_DWORD *)&__first._M_ok;
    std__ostreambuf_iterator_char_._M_buf = p_result;
    std::copy<char const*,std::ostreambuf_iterator<char>>(retstr, v7, &v7[v10], std__ostreambuf_iterator_char_);
    goto LABEL_31;
  }
  v17 = v16 - v10;
  if ( (__flags & 7) == 1 )
  {
    v8 = &v37;
    *(_DWORD *)&std__ostreambuf_iterator_char_a._M_ok = *(_DWORD *)&__first._M_ok;
    std__ostreambuf_iterator_char_a._M_buf = p_result;
    std::copy<char const*,std::ostreambuf_iterator<char>>(&v37, v7, &v7[v10], std__ostreambuf_iterator_char_a);
    __first = v37;
    std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(retstr, v37, v17, (const char *)&v40);
    goto LABEL_31;
  }
  if ( v10 )
  {
    if ( (__flags & 7) == 4 )
    {
      v31 = (unsigned __int8)*v7;
      if ( v31 == 43 || v31 == 45 )
      {
        std::ostreambuf_iterator<char>::operator=(&__first, v31);
        p_result = (std::streambuf *)&__result;
        std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(&__result, __first, v17, (const char *)&v40);
        v46._M_buf = __result._M_buf;
        __first = __result;
        v32 = v7 + 1;
LABEL_38:
        *(_DWORD *)&v46._M_ok = *(_DWORD *)&__first._M_ok;
        std::copy<char const*,std::ostreambuf_iterator<char>>(retstr, v32, &v7[v10], v46);
        goto LABEL_31;
      }
    }
  }
  if ( v10 > 1 && (__flags & 7) == 4 && (__flags & 0x238) == 0x210 )
  {
    std::ostreambuf_iterator<char>::operator=(&__first, *v7);
    std::ostreambuf_iterator<char>::operator=(&__first, v7[1]);
    p_result = (std::streambuf *)&v35;
    std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(&v35, __first, v17, (const char *)&v40);
    v46._M_buf = v35._M_buf;
    __first = v35;
    v32 = v7 + 2;
    goto LABEL_38;
  }
  M_ok = __s._M_ok;
  if ( v17 <= 0 )
    goto LABEL_22;
  v19 = v13;
  v20 = v8;
  v21 = __s._M_ok;
  v22 = v19;
  while ( 1 )
  {
    if ( !v21 )
      goto LABEL_16;
    M_pnext = p_result->_M_pnext;
    if ( M_pnext < p_result->_M_pend )
      break;
    --v17;
    v21 &= -((*((int (__fastcall **)(std::streambuf *, std::ostreambuf_iterator<char> *))p_result->_vptr.basic_streambuf
              + 13))(
               p_result,
               v20) != -1);
    if ( !v17 )
    {
LABEL_21:
      v24 = v22;
      M_ok = v21;
      v13 = v24;
LABEL_22:
      __first._M_buf = p_result;
      __first._M_ok = M_ok;
      v8 = (std::ostreambuf_iterator<char> *)M_ok;
      if ( v10 <= 0 )
        goto LABEL_30;
      v25 = v13;
      v26 = 0;
      v27 = v7;
      v7 = v25;
      while ( 1 )
      {
LABEL_26:
        v28 = (unsigned __int8)v27[v26];
        if ( !v8 )
          goto LABEL_25;
        v29 = p_result->_M_pnext;
        if ( v29 < p_result->_M_pend )
          break;
        ++v26;
        v8 = (*((int (__fastcall **)(std::streambuf *, int))p_result->_vptr.basic_streambuf + 13))(p_result, v28) != -1
           ? v8
           : nullptr;
        if ( v26 == v10 )
        {
LABEL_29:
          v13 = v7;
LABEL_30:
          retstr->_M_buf = p_result;
          retstr->_M_ok = (char)v8;
LABEL_31:
          inserted = (ptrdiff_t)v13;
LABEL_6:
          v10 = inserted;
          goto LABEL_7;
        }
      }
      *v29 = v28;
      p_result->_M_pnext = v29 + 1;
LABEL_25:
      if ( ++v26 == v10 )
        goto LABEL_29;
      goto LABEL_26;
    }
LABEL_17:
    v20 = (std::ostreambuf_iterator<char> *)v40;
  }
  *M_pnext = (char)v20;
  p_result->_M_pnext = M_pnext + 1;
LABEL_16:
  if ( !--v17 )
    goto LABEL_21;
  goto LABEL_17;
}


// ===== 8a8be4 std::priv::__do_put_integer<char,std::ostreambuf_iterator<char,std::char_traits<char>>,ulong>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,ulong) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,unsigned long>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned int __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+2Ah] [bp-6h] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<unsigned long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<char>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a8c58 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,ulong) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned int __val)
{
  std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,unsigned long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a8c80 std::priv::__do_put_integer<char,std::ostreambuf_iterator<char,std::char_traits<char>>,ulong long>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,ulong long) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,unsigned long long>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned __int64 __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+32h] [bp-6h] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = (char *)std::priv::__write_integer_backward<unsigned long long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<char>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a8cf8 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,ulong long) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned __int64 __val)
{
  std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,unsigned long long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a8d24 std::priv::__do_put_integer<char,std::ostreambuf_iterator<char,std::char_traits<char>>,long long>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long long) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,long long>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        __int64 __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+32h] [bp-6h] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<long long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<char>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a8d9c std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long long) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        __int64 __val)
{
  std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,long long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a8dc8 std::priv::__do_put_integer<char,std::ostreambuf_iterator<char,std::char_traits<char>>,long>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,long>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned int __x)
{
  int M_fmtflags; // r7
  char *v8; // r0
  char v10[2]; // [sp+2Ah] [bp-6h] BYREF

  M_fmtflags = __f->_M_fmtflags;
  v8 = std::priv::__write_integer_backward<long>(v10, M_fmtflags, __x);
  std::priv::__put_integer<std::ostreambuf_iterator<char>>(retstr, v8, v10, __s, __f, M_fmtflags, __fill);
  return retstr;
}


// ===== 8a8e3c std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        unsigned int __val)
{
  std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,long>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a8e64 std::priv::__put_float<std::ostreambuf_iterator<char,std::char_traits<char>>>(std::priv::__basic_iostring<char> &,std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,char,char,uint,std::string const&) =====
std::ostreambuf_iterator<char> *__fastcall std::priv::__put_float<std::ostreambuf_iterator<char>>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::priv::__iostring *const __str,
        std::ostreambuf_iterator<char> __oi,
        std::ios_base *const __f,
        unsigned __int8 __fill,
        char __decimal_point,
        char __sep,
        char *__group_pos,
        const std::string *const __grouping)
{
  int v10; // r6
  char *M_data; // r9
  std::streambuf *M_buf; // r4
  char *v13; // r9
  char *v14; // r3
  std::streamsize M_width; // r5
  const char *v16; // r8
  int M_fmtflags; // r3
  int v18; // r10
  int v19; // r3
  int v20; // r5
  int v21; // r7
  char *v22; // r3
  int v23; // r6
  int v24; // r5
  int v25; // r1
  char *M_pnext; // r3
  int v28; // r1
  const char *__last; // [sp+14h] [bp-40h]
  _BOOL4 M_ok; // [sp+1Ch] [bp-38h]
  std::ostreambuf_iterator<char> __result; // [sp+34h] [bp-20h] BYREF
  std::ostreambuf_iterator<char> v33; // [sp+3Ch] [bp-18h] BYREF
  std::ostreambuf_iterator<char> __first; // [sp+44h] [bp-10h] BYREF
  char v35[5]; // [sp+4Fh] [bp-5h] BYREF
  std::ostreambuf_iterator<char> std__ostreambuf_iterator_char_; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<char> std__ostreambuf_iterator_char_a; // 0:r3.4,4:^0.4

  v10 = __fill;
  M_ok = __oi._M_ok;
  M_data = __str->_M_start_of_storage._M_data;
  M_buf = __oi._M_buf;
  if ( __group_pos < (char *)(__str->_M_finish - M_data) )
  {
    v13 = &__group_pos[(_DWORD)M_data];
    if ( *v13 == 46 )
      *v13 = __decimal_point;
  }
  if ( __grouping->_M_start_of_storage._M_data != __grouping->_M_finish )
    std::priv::__insert_grouping(__str, (size_t)__group_pos, __grouping, __sep, 43, 45, 0);
  v14 = __str->_M_start_of_storage._M_data;
  __last = __str->_M_finish;
  M_width = __f->_M_width;
  __f->_M_width = 0;
  v16 = v14;
  M_fmtflags = __f->_M_fmtflags;
  __first._M_ok = M_ok;
  v18 = __last - v16;
  __first._M_buf = M_buf;
  v35[0] = __fill;
  if ( M_width > __last - v16 )
  {
    v19 = M_fmtflags & 7;
    v20 = &v16[M_width] - __last;
    if ( v19 == 1 )
    {
      *(_DWORD *)&std__ostreambuf_iterator_char_a._M_ok = *(_DWORD *)&__first._M_ok;
      std__ostreambuf_iterator_char_a._M_buf = M_buf;
      std::copy<char const*,std::ostreambuf_iterator<char>>(&v33, v16, __last, std__ostreambuf_iterator_char_a);
      __first = v33;
      std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(retstr, v33, v20, v35);
      return retstr;
    }
    if ( __last != v16 && v19 == 4 )
    {
      v28 = *(unsigned __int8 *)v16;
      if ( v28 == 43 || v28 == 45 )
      {
        std::ostreambuf_iterator<char>::operator=(&__first, v28);
        std::priv::__fill_n<std::ostreambuf_iterator<char>,int,char>(&__result, __first, v20, v35);
        __first = __result;
        std::copy<char const*,std::ostreambuf_iterator<char>>(retstr, v16 + 1, __last, __result);
        return retstr;
      }
    }
    v21 = M_ok;
    if ( v20 <= 0 )
    {
LABEL_20:
      __first._M_buf = M_buf;
      __first._M_ok = v21;
      v23 = (unsigned __int8)v21;
      if ( v18 <= 0 )
      {
LABEL_27:
        retstr->_M_buf = M_buf;
        retstr->_M_ok = v23;
        return retstr;
      }
      v24 = 0;
      while ( 1 )
      {
        v25 = (unsigned __int8)v16[v24];
        if ( !v23 )
          goto LABEL_23;
        M_pnext = M_buf->_M_pnext;
        if ( M_pnext < M_buf->_M_pend )
        {
          *M_pnext = v25;
          M_buf->_M_pnext = M_pnext + 1;
LABEL_23:
          if ( ++v24 == v18 )
            goto LABEL_27;
        }
        else
        {
          ++v24;
          v23 &= -((*((int (__fastcall **)(std::streambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v25) != -1);
          if ( v24 == v18 )
            goto LABEL_27;
        }
      }
    }
    while ( 1 )
    {
      if ( !v21 )
        goto LABEL_15;
      v22 = M_buf->_M_pnext;
      if ( v22 < M_buf->_M_pend )
        break;
      --v20;
      v21 &= -((*((int (__fastcall **)(std::streambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v10) != -1);
      if ( !v20 )
        goto LABEL_20;
LABEL_16:
      v10 = (unsigned __int8)v35[0];
    }
    *v22 = v10;
    M_buf->_M_pnext = v22 + 1;
LABEL_15:
    if ( !--v20 )
      goto LABEL_20;
    goto LABEL_16;
  }
  *(_DWORD *)&std__ostreambuf_iterator_char_._M_ok = *(_DWORD *)&__first._M_ok;
  std__ostreambuf_iterator_char_._M_buf = M_buf;
  std::copy<char const*,std::ostreambuf_iterator<char>>(retstr, v16, __last, std__ostreambuf_iterator_char_);
  return retstr;
}


// ===== 8a9060 std::priv::__do_put_float<char,std::ostreambuf_iterator<char,std::char_traits<char>>,long double>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long double) =====
void __fastcall std::priv::__do_put_float<char,std::ostreambuf_iterator<char>,long double>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        double __x)
{
  std::priv::__iostring __buf; // [sp+34h] [bp+Ch] BYREF

  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8A986A);
}


// ===== 8a9170 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,long double) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        double __val)
{
  std::priv::__do_put_float<char,std::ostreambuf_iterator<char>,long double>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a919c std::priv::__do_put_float<char,std::ostreambuf_iterator<char,std::char_traits<char>>,double>(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,double) =====
void __fastcall std::priv::__do_put_float<char,std::ostreambuf_iterator<char>,double>(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        double __x)
{
  std::priv::__iostring __buf; // [sp+34h] [bp+Ch] BYREF

  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8A986A);
}


// ===== 8a92ac std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,double) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char __fill,
        double __val)
{
  std::priv::__do_put_float<char,std::ostreambuf_iterator<char>,double>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8a92d8 std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>::operator++(int) =====
void __fastcall std::istreambuf_iterator<wchar_t>::operator++(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const this,
        int a3)
{
  wchar_t *M_gnext; // r3
  int v5; // r0

  if ( !this->_M_have_c )
  {
    M_gnext = this->_M_buf->_M_gnext;
    if ( M_gnext >= this->_M_buf->_M_gend )
      v5 = (*((int (__fastcall **)(std::wstreambuf *))this->_M_buf->_vptr.basic_streambuf + 8))(this->_M_buf);
    else
      v5 = *M_gnext;
    this->_M_c = v5;
    this->_M_eof = v5 == -1;
    this->_M_have_c = 1;
  }
  JUMPOUT(0x8A8F3A);
}


// ===== 8a9330 std::istreambuf_iterator<char,std::char_traits<char>>::operator++(int) =====
void __fastcall std::istreambuf_iterator<char>::operator++(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const this,
        int a3)
{
  char *M_gnext; // r3
  int v5; // r0

  if ( !this->_M_have_c )
  {
    M_gnext = this->_M_buf->_M_gnext;
    if ( M_gnext >= this->_M_buf->_M_gend )
      v5 = (*((int (__fastcall **)(std::streambuf *))this->_M_buf->_vptr.basic_streambuf + 8))(this->_M_buf);
    else
      v5 = (unsigned __int8)*M_gnext;
    this->_M_c = v5;
    this->_M_eof = v5 == -1;
    this->_M_have_c = 1;
  }
  JUMPOUT(0x8A8F3A);
}


// ===== 8a9388 std::priv::__get_string<std::istreambuf_iterator<char,std::char_traits<char>>,char *>(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,char *,char *) =====
std::pair<std::istreambuf_iterator<char>,bool> *__fastcall std::priv::__get_string<std::istreambuf_iterator<char>,char *>(
        std::pair<std::istreambuf_iterator<char>,bool> *__return_ptr retstr,
        std::istreambuf_iterator<char> __first,
        std::istreambuf_iterator<char> __last,
        char *__str_first,
        char *__str_last)
{
  std::streambuf *M_buf; // r6
  std::streambuf *v7; // r4
  int M_eof; // r10
  _BOOL4 M_have_c; // r7
  char *M_gnext; // r3
  int v12; // r0
  int v13; // r11
  char *v14; // r3
  int v15; // r0
  char *v16; // r3
  int v17; // r0
  char *v19; // r3
  int v20; // [sp+4h] [bp-20h]
  int M_c; // [sp+8h] [bp-1Ch]
  _BOOL4 v22; // [sp+Ch] [bp-18h]
  __int16 v23; // [sp+14h] [bp-10h]
  int __first_4; // [sp+1Ch] [bp-8h]

  M_buf = __last._M_buf;
  v7 = __first._M_buf;
  M_c = (unsigned __int8)__first._M_c;
  M_eof = __first._M_eof;
  M_have_c = __first._M_have_c;
  v20 = __last._M_eof;
  v22 = __last._M_have_c;
  while ( 1 )
  {
    if ( !v7 || M_have_c )
    {
      v13 = M_c;
    }
    else
    {
      M_gnext = v7->_M_gnext;
      if ( M_gnext >= v7->_M_gend )
        v12 = (*((int (__fastcall **)(std::streambuf *))v7->_vptr.basic_streambuf + 8))(v7);
      else
        v12 = (unsigned __int8)*M_gnext;
      v13 = (unsigned __int8)v12;
      M_eof = v12 == -1;
      M_have_c = 1;
    }
    if ( M_buf && !v22 )
    {
      v14 = M_buf->_M_gnext;
      if ( v14 >= M_buf->_M_gend )
        v15 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v15 = (unsigned __int8)*v14;
      v20 = v15 == -1;
      v22 = 1;
    }
    if ( M_eof == v20 || __str_first == __str_last )
      break;
    if ( !M_have_c )
    {
      v16 = v7->_M_gnext;
      if ( v16 >= v7->_M_gend )
        v17 = (*((int (__fastcall **)(std::streambuf *))v7->_vptr.basic_streambuf + 8))(v7);
      else
        v17 = (unsigned __int8)*v16;
      v13 = (unsigned __int8)v17;
      M_eof = v17 == -1;
      LOBYTE(M_have_c) = 1;
    }
    M_c = (unsigned __int8)*__str_first;
    if ( M_c != v13 )
      break;
    v19 = v7->_M_gnext;
    if ( v19 >= v7->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v7->_vptr.basic_streambuf + 9))(v7);
    else
      v7->_M_gnext = v19 + 1;
    ++__str_first;
    M_have_c = 0;
  }
  HIBYTE(v23) = M_eof;
  LOBYTE(v23) = v13;
  LOWORD(__first_4) = v23;
  BYTE2(__first_4) = M_have_c;
  *(_DWORD *)&retstr->first._M_c = __first_4;
  retstr->first._M_buf = v7;
  retstr->second = __str_first == __str_last;
  return retstr;
}


// ===== 8a94c0 std::priv::__get_string<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t *>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t *,wchar_t *) =====
std::pair<std::istreambuf_iterator<wchar_t>,bool> *__fastcall std::priv::__get_string<std::istreambuf_iterator<wchar_t>,wchar_t *>(
        std::pair<std::istreambuf_iterator<wchar_t>,bool> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> __first,
        std::istreambuf_iterator<wchar_t> __last,
        wchar_t *__str_first,
        wchar_t *__str_last)
{
  std::wstreambuf *M_buf; // r4
  _BOOL4 M_have_c; // r8
  int M_eof; // r10
  int *M_gnext; // r3
  int v11; // r0
  wchar_t v12; // r9
  wchar_t *v13; // r3
  int v14; // r0
  int *v15; // r3
  int v16; // r0
  wchar_t *v18; // r3
  int v19; // [sp+0h] [bp-Ch]
  wchar_t M_c; // [sp+4h] [bp-8h]
  _BOOL4 v21; // [sp+8h] [bp-4h]
  __int16 __first_8; // [sp+14h] [bp+8h]
  int v23; // [sp+24h] [bp+18h]

  M_buf = __first._M_buf;
  M_c = __first._M_c;
  M_have_c = __first._M_have_c;
  M_eof = __first._M_eof;
  v19 = __last._M_eof;
  v21 = __last._M_have_c;
  while ( 1 )
  {
    if ( !M_buf || M_have_c )
    {
      v12 = M_c;
    }
    else
    {
      M_gnext = (int *)M_buf->_M_gnext;
      if ( (wchar_t *)M_gnext >= M_buf->_M_gend )
        v11 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v11 = *M_gnext;
      v12 = v11;
      M_eof = v11 == -1;
      M_have_c = 1;
    }
    if ( __last._M_buf && !v21 )
    {
      v13 = __last._M_buf->_M_gnext;
      if ( v13 >= __last._M_buf->_M_gend )
        v14 = (*((int (__fastcall **)(std::wstreambuf *))__last._M_buf->_vptr.basic_streambuf + 8))(__last._M_buf);
      else
        v14 = *v13;
      v19 = v14 == -1;
      v21 = 1;
    }
    if ( M_eof == v19 || __str_first == __str_last )
      break;
    if ( !M_have_c )
    {
      v15 = (int *)M_buf->_M_gnext;
      if ( (wchar_t *)v15 >= M_buf->_M_gend )
        v16 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v16 = *v15;
      v12 = v16;
      M_eof = v16 == -1;
      LOBYTE(M_have_c) = 1;
    }
    M_c = *__str_first;
    if ( *__str_first != v12 )
      break;
    v18 = M_buf->_M_gnext;
    if ( v18 >= M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = v18 + 1;
    ++__str_first;
    M_have_c = 0;
  }
  HIBYTE(__first_8) = M_have_c;
  LOBYTE(__first_8) = M_eof;
  LOWORD(v23) = __first_8;
  *(_DWORD *)&retstr->first._M_eof = v23;
  retstr->first._M_c = v12;
  retstr->first._M_buf = M_buf;
  retstr->second = __str_first == __str_last;
  return retstr;
}


// ===== 8a95e8 std::istreambuf_iterator<char,std::char_traits<char>>::equal(std::istreambuf_iterator<char,std::char_traits<char>> const&) =====
bool __fastcall std::istreambuf_iterator<char>::equal(
        const std::istreambuf_iterator<char> *const this,
        const std::istreambuf_iterator<char> *const __i)
{
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  int v6; // r0
  std::streambuf *v7; // r0
  char *v8; // r3
  int v9; // r0
  _BOOL4 M_eof; // r3

  M_buf = this->_M_buf;
  if ( M_buf && !this->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext >= M_buf->_M_gend )
      v6 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v6 = (unsigned __int8)*M_gnext;
    this->_M_c = v6;
    this->_M_eof = v6 == -1;
    this->_M_have_c = 1;
  }
  v7 = __i->_M_buf;
  if ( !__i->_M_buf || __i->_M_have_c )
  {
    M_eof = __i->_M_eof;
  }
  else
  {
    v8 = v7->_M_gnext;
    if ( v8 >= v7->_M_gend )
      v9 = (*((int (__fastcall **)(std::streambuf *))v7->_vptr.basic_streambuf + 8))(v7);
    else
      v9 = (unsigned __int8)*v8;
    __i->_M_c = v9;
    M_eof = v9 == -1;
    __i->_M_eof = M_eof;
    __i->_M_have_c = 1;
  }
  return this->_M_eof == M_eof;
}


// ===== 8a9654 std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ulong long,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,ulong long &,int,bool,char,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned long long,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        unsigned __int64 *const __val,
        int __got,
        bool __is_negative,
        unsigned __int8 __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  const std::istreambuf_iterator<char> *v9; // r10
  int v12; // r7
  unsigned int v13; // r5
  char v14; // r6
  unsigned int M_c; // r3
  bool v16; // r11
  bool i; // zf
  char *v18; // r3
  int v19; // r0
  int v20; // r0
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  unsigned int v23; // r3
  const char *v24; // r1
  unsigned int v25; // [sp+0h] [bp-84h]
  int v26; // [sp+4h] [bp-80h]
  Elf32_Dyn **v28; // [sp+Ch] [bp-78h]
  int v29; // [sp+10h] [bp-74h]
  int v30; // [sp+14h] [bp-70h]
  unsigned int __index; // [sp+18h] [bp-6Ch]
  int __group_sizes_48; // [sp+6Ch] [bp-18h]

  v28 = (Elf32_Dyn **)__separator;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __index = __base >> 31;
  M_c = __base >> 31;
  v16 = __grouping->_M_start_of_storage._M_data != __grouping->_M_finish;
  for ( i = 0; i || v26 != M_c; i = __base == 0 )
  {
    v20 = 255;
    if ( M_c <= 0x7F )
      v20 = std::priv::__digit_val_table(M_c);
    if ( __got <= v20 )
    {
LABEL_26:
      v24 = (const char *)v28;
      if ( __base && v28 != &__GLOBAL_OFFSET_TABLE_ )
      {
        *(_BYTE *)v28 = v14;
        v24 = (char *)v28 + 1;
      }
      if ( v12 > 0 )
      {
        if ( __last )
        {
          LOWORD(__grouping->_M_buffers._M_end_of_storage) = -1;
        }
        else
        {
          LOWORD(__grouping->_M_buffers._M_end_of_storage) = -(__int16)v13;
          if ( __base )
            std::priv::__valid_grouping(
              (const char *)&__GLOBAL_OFFSET_TABLE_,
              v24,
              *(const char **)(v30 + 20),
              *(const char **)(v30 + 16));
        }
      }
      if ( __group_sizes_48 == **(_DWORD **)(v29 + __index) )
        __asm { POP             {R4-R7,PC} }
      JUMPOUT(0x8A9312);
    }
    ++v12;
    ++v14;
    if ( v13 > v25 )
    {
      __last = (std::istreambuf_iterator<char> *const)(&dword_0 + 1);
      goto LABEL_13;
    }
    v23 = (unsigned __int16)(v20 + __got * v13);
    if ( !v13 || __last || v13 < v23 )
    {
      v13 = (unsigned __int16)(v20 + __got * v13);
      goto LABEL_13;
    }
    __last = (std::istreambuf_iterator<char> *const)(&dword_0 + 1);
    M_buf = __first->_M_buf;
    v13 = v23;
    M_gnext = __first->_M_buf->_M_gnext;
    if ( M_gnext < __first->_M_buf->_M_gend )
    {
LABEL_14:
      M_buf->_M_gnext = M_gnext + 1;
      goto LABEL_15;
    }
LABEL_22:
    (*((void (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
LABEL_15:
    __first->_M_have_c = v16;
    if ( std::istreambuf_iterator<char>::equal(__first, v9) )
      goto LABEL_26;
    if ( __first->_M_have_c )
    {
      M_c = (unsigned __int8)__first->_M_c;
    }
    else
    {
      v18 = __first->_M_buf->_M_gnext;
      if ( v18 >= __first->_M_buf->_M_gend )
        v19 = (*((int (__fastcall **)(std::streambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
      else
        v19 = (unsigned __int8)*v18;
      M_c = (unsigned __int8)v19;
      __first->_M_c = v19;
      __first->_M_eof = v19 == -1;
      __first->_M_have_c = 1;
    }
  }
  *(_BYTE *)v28 = v14;
  v28 = (Elf32_Dyn **)((char *)v28 + 1);
  v14 = 0;
LABEL_13:
  M_buf = __first->_M_buf;
  M_gnext = __first->_M_buf->_M_gnext;
  if ( M_gnext < __first->_M_buf->_M_gend )
    goto LABEL_14;
  goto LABEL_22;
}


// ===== 8a9848 std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ushort,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,ushort &,int,bool,char,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned short,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        unsigned __int16 *const __val,
        int __got,
        bool __is_negative,
        char __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8A9C50);
}


// ===== 8a99ec std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ulong,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,ulong &,int,bool,char,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned long,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        unsigned int *const __val,
        int __got,
        bool __is_negative,
        char __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8A9C4E);
}


// ===== 8a9b84 std::priv::__match<std::istreambuf_iterator<char,std::char_traits<char>>,std::string const*>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,std::string const*,std::string const*) =====
int __fastcall std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        const std::string *__name,
        const std::string *__name_end)
{
  int v5; // r11
  int v6; // r5
  int v7; // r10
  bool *v8; // r6
  int v9; // r4
  char **p_M_finish; // r7
  int i; // r8
  int v12; // r3
  char *v13; // r3
  int v14; // r0
  int v15; // r3
  char *v16; // r2
  char *v17; // r0
  int v18; // r3
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  int v22; // [sp+0h] [bp-34h]
  char *v23; // [sp+4h] [bp-30h]
  int v24; // [sp+8h] [bp-2Ch]
  bool __do_not_check[24]; // [sp+18h] [bp-1Ch] BYREF

  v5 = -1431655765 * (((char *)__name_end - (char *)__name) >> 3);
  v6 = v5;
  v22 = v5;
  memset(__do_not_check, 0, sizeof(__do_not_check));
  v23 = nullptr;
  v7 = 0;
  if ( !std::istreambuf_iterator<char>::equal(__first, __last) )
  {
    while ( 1 )
    {
      v24 = v5;
      if ( v5 > v7 )
        break;
LABEL_17:
      M_buf = __first->_M_buf;
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        (*((void (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
      else
        M_buf->_M_gnext = M_gnext + 1;
      __first->_M_have_c = 0;
      ++v23;
      v5 = v24;
      if ( std::istreambuf_iterator<char>::equal(__first, __last) )
        return v6;
    }
    v8 = &__do_not_check[v7];
    v9 = v7 + 1;
    p_M_finish = &__name[v7]._M_finish;
    for ( i = v6; ; i = v6 )
    {
      v6 = v9 - 1;
      if ( *v8 )
        break;
      if ( __first->_M_have_c )
      {
        v16 = p_M_finish[1];
        v17 = v23;
        if ( v23[(_DWORD)v16] == __first->_M_c )
          goto LABEL_22;
      }
      else
      {
        v13 = __first->_M_buf->_M_gnext;
        if ( v13 >= __first->_M_buf->_M_gend )
          v14 = (*((int (__fastcall **)(std::streambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
        else
          v14 = (unsigned __int8)*v13;
        __first->_M_eof = v14 == -1;
        v15 = (unsigned __int8)v14;
        __first->_M_c = v14;
        __first->_M_have_c = 1;
        v16 = p_M_finish[1];
        v17 = v23;
        if ( (unsigned __int8)v23[(_DWORD)v16] == v15 )
        {
LABEL_22:
          if ( v17 == (char *)(*p_M_finish - v16 - 1) )
          {
            *v8 = 1;
            if ( v7 == v6 )
              v7 = v9;
            if ( !--v22 )
            {
              std::istreambuf_iterator<char>::operator++(__first);
              return v6;
            }
          }
          else
          {
            v6 = i;
          }
          v24 = v9;
          v12 = v9;
          goto LABEL_7;
        }
      }
      if ( v7 == v6 )
      {
        v7 = v9;
        if ( !--v22 )
          return i;
      }
      else if ( !--v22 )
      {
        return i;
      }
      v18 = v9;
      *v8 = 1;
      v6 = i;
      ++v8;
      ++v9;
      p_M_finish += 6;
      if ( v5 <= v18 )
        goto LABEL_17;
LABEL_8:
      ;
    }
    if ( v7 == v6 )
      v7 = v9;
    v12 = v9;
    v6 = i;
LABEL_7:
    ++v8;
    ++v9;
    p_M_finish += 6;
    if ( v5 <= v12 )
      goto LABEL_17;
    goto LABEL_8;
  }
  return v6;
}


// ===== 8a9d00 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get_monthname(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,tm *) =====
// positive sp value has been detected, the output may be wrong!
std::istreambuf_iterator<char> *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_get_monthname(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::time_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        tm *__t)
{
  _DWORD *v8; // r6
  _DWORD *v9; // r2
  int v10; // r3
  std::istreambuf_iterator<char> v12[2]; // [sp-6Ch] [bp-74h] BYREF
  int v13; // [sp-5Ch] [bp-64h]
  std::istreambuf_iterator<char> v14; // [sp-54h] [bp-5Ch] BYREF
  _DWORD *v15; // [sp-48h] [bp-50h]
  std::istreambuf_iterator<char> __sa; // [sp+0h] [bp-8h]

  v12[0] = __s;
  v8 = v15;
  if ( std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
         v12,
         &v14,
         this->_M_timeinfo._M_monthname,
         this->_M_timeinfo._M_am_pm) != 24 )
  {
    *v9 = v10;
    if ( __sa._M_buf == **(std::streambuf ***)((char *)&v14._M_buf->_vptr.basic_streambuf + v13) )
      __asm { POP             {R4-R7,PC} }
    JUMPOUT(0x8AA314);
  }
  *v8 = 4;
  if ( std::istreambuf_iterator<char>::equal(v12, &v14) )
    *v8 |= 2u;
  *retstr = v12[0];
  return retstr;
}


// ===== 8a9d68 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get_weekday(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,tm *) =====
// positive sp value has been detected, the output may be wrong!
std::istreambuf_iterator<char> *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_get_weekday(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::time_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        tm *__t)
{
  _DWORD *v8; // r6
  _DWORD *v9; // r2
  int v10; // r3
  std::istreambuf_iterator<char> v12[2]; // [sp-6Ch] [bp-74h] BYREF
  int v13; // [sp-5Ch] [bp-64h]
  std::istreambuf_iterator<char> v14; // [sp-54h] [bp-5Ch] BYREF
  _DWORD *v15; // [sp-48h] [bp-50h]
  std::istreambuf_iterator<char> __sa; // [sp+0h] [bp-8h]

  v12[0] = __s;
  v8 = v15;
  if ( std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
         v12,
         &v14,
         this->_M_timeinfo._M_dayname,
         this->_M_timeinfo._M_monthname) != 14 )
  {
    *v9 = v10;
    if ( __sa._M_buf == **(std::streambuf ***)((char *)&v14._M_buf->_vptr.basic_streambuf + v13) )
      __asm { POP             {R4-R7,PC} }
    JUMPOUT(0x8A9B76);
  }
  *v8 = 4;
  if ( std::istreambuf_iterator<char>::equal(v12, &v14) )
    *v8 |= 2u;
  *retstr = v12[0];
  return retstr;
}


// ===== 8a9dd0 std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,long long,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,long long &,int,bool,char,std::string const&,std::__true_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,long long,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        __int64 *const __val,
        int __got,
        bool __is_negative,
        char __separator,
        const std::string *const __grouping,
        const std::__true_type *const a9)
{
  JUMPOUT(0x8AA050);
}


// ===== 8a9ff8 std::priv::__copy_grouped_digits<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>>,std::priv::__basic_iostring<char> &,char const*,char,std::string const&,bool &) =====
int __fastcall std::priv::__copy_grouped_digits<std::istreambuf_iterator<char>,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> __last,
        std::priv::__iostring *const __v,
        const char *__digits,
        unsigned __int8 __sep,
        const std::string *const __grouping,
        bool *const __grouping_ok)
{
  char v8; // r5
  char *v9; // r6
  int v10; // r11
  char *M_gnext; // r3
  int v12; // r0
  int M_c; // r1
  std::streambuf *M_buf; // r0
  char *v15; // r3
  char *v16; // r1
  std::istreambuf_iterator<char> __lasta; // [sp+18h] [bp+0h] BYREF
  char __group_sizes[64]; // [sp+24h] [bp+Ch] BYREF

  __lasta = __last;
  v8 = 0;
  v9 = __group_sizes;
  v10 = 0;
  while ( !std::istreambuf_iterator<char>::equal(__first, &__lasta) )
  {
    if ( __first->_M_have_c )
    {
      M_c = (unsigned __int8)__first->_M_c;
      if ( __sep == M_c )
        goto LABEL_12;
    }
    else
    {
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        v12 = (*((int (__fastcall **)(std::streambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
      else
        v12 = (unsigned __int8)*M_gnext;
      LOBYTE(M_c) = v12;
      __first->_M_eof = v12 == -1;
      __first->_M_c = v12;
      __first->_M_have_c = 1;
      if ( __sep == (unsigned __int8)v12 )
      {
LABEL_12:
        *v9 = v8;
        M_buf = __first->_M_buf;
        ++v9;
        v8 = 0;
        v15 = __first->_M_buf->_M_gnext;
        if ( v15 < __first->_M_buf->_M_gend )
          goto LABEL_7;
        goto LABEL_13;
      }
    }
    if ( (unsigned __int8)(M_c - 48) > 9u )
      break;
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__v, M_c);
    v10 = 1;
    M_buf = __first->_M_buf;
    v15 = __first->_M_buf->_M_gnext;
    ++v8;
    if ( v15 < __first->_M_buf->_M_gend )
    {
LABEL_7:
      M_buf->_M_gnext = v15 + 1;
      goto LABEL_8;
    }
LABEL_13:
    (*((void (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
LABEL_8:
    __first->_M_have_c = 0;
  }
  v16 = __group_sizes;
  if ( v9 != __group_sizes )
  {
    *v9 = v8;
    v16 = v9 + 1;
  }
  *__grouping_ok = std::priv::__valid_grouping(
                     __group_sizes,
                     v16,
                     __grouping->_M_start_of_storage._M_data,
                     __grouping->_M_finish);
  return v10;
}


// ===== 8aa110 std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,long,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,long &,int,bool,char,std::string const&,std::__true_type const&) =====
unsigned int __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,long,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        int *const __val,
        int __got,
        bool __is_negative,
        char __separator,
        const std::string *const __grouping,
        const std::__true_type *const a9)
{
  __first->_M_buf = (std::streambuf *)(__grouping->_M_start_of_storage._M_data - __grouping->_M_finish - 1);
  return 0x80000000;
}


// ===== 8aa2c4 std::priv::__get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,uint,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,uint &,int,bool,char,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned int,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int __base,
        unsigned int *const __val,
        int __got,
        bool __is_negative,
        char __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8A9C4E);
}


// ===== 8aa45c std::priv::__get_decimal_integer<std::istreambuf_iterator<char,std::char_traits<char>>,int,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int &,char *) =====
void __fastcall std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> *const __last,
        int *const __val,
        char *a4)
{
  std::string __grp; // [sp+5Ch] [bp-20h] BYREF

  __grp._M_finish = (char *)&__grp;
  __grp._M_start_of_storage._M_data = (char *)&__grp;
  JUMPOUT(0x8AA67E);
}


// ===== 8aa5f8 std::priv::__get_formatted_time<std::istreambuf_iterator<char,std::char_traits<char>>,char,std::priv::_Time_Info>(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,char const*,char const*,char *,std::priv::_Time_Info const&,std::ios_base const&,int &,tm *) =====
const char *__fastcall std::priv::__get_formatted_time<std::istreambuf_iterator<char>,char,std::priv::_Time_Info>(
        std::istreambuf_iterator<char> __first,
        std::istreambuf_iterator<char> __last,
        const char *__format,
        const char *__format_end,
        char *a5,
        const std::priv::_Time_Info *const __table,
        const std::ios_base *const __s,
        int *const __err,
        tm *__t)
{
  std::locale::facet *v10; // r6
  int v12; // r3
  int v13; // r3
  int v14; // r2
  int v15; // r0
  int v16; // r0
  int v17; // r0
  unsigned int v18; // r3
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int tm_mday; // r3
  int v23; // r3
  int v24; // r2
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int M_c; // r9
  char *M_gnext; // r3
  int v32; // r0
  int tm_hour; // r3
  int *__val; // [sp+0h] [bp-30h]
  std::istreambuf_iterator<char> __lasta; // [sp+28h] [bp-8h] BYREF
  std::istreambuf_iterator<char> __firsta; // [sp+30h] [bp+0h] BYREF
  std::istreambuf_iterator<char> v37; // [sp+3Ch] [bp+Ch] BYREF
  std::locale v38; // [sp+44h] [bp+14h] BYREF

  __firsta = __first;
  __lasta = __last;
  std::locale::locale(&v38, &__s->_M_locale);
  v10 = std::locale::_M_use_facet(&v38, &std::ctype<char>::id);
  std::locale::~locale(&v38);
  __val = &__t->tm_year;
  while ( !std::istreambuf_iterator<char>::equal(&__firsta, &__lasta) && __format != __format_end )
  {
    if ( *__format == 37 )
    {
      v12 = *(unsigned __int8 *)++__format;
      if ( v12 == 35 )
        LOBYTE(v12) = *++__format;
      switch ( (char)v12 )
      {
        case 'A':
          v23 = 14;
          v24 = 7;
          goto LABEL_31;
        case 'B':
          v13 = 24;
          v14 = 12;
          goto LABEL_11;
        case 'H':
        case 'I':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_hour,
            nullptr);
          if ( !v29 )
            return __format;
          ++__format;
          continue;
        case 'M':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_min,
            nullptr);
          if ( !v28 )
            return __format;
          ++__format;
          continue;
        case 'S':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_sec,
            nullptr);
          if ( !v27 )
            return __format;
          ++__format;
          continue;
        case 'Y':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(&__firsta, &__lasta, __val, nullptr);
          __t->tm_year -= 1900;
          if ( !v26 )
            return __format;
          ++__format;
          continue;
        case 'a':
          v23 = 7;
          v24 = 0;
LABEL_31:
          v25 = std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
                  &__firsta,
                  &__lasta,
                  &__table->_M_dayname[v24],
                  &__table->_M_dayname[v23]);
          if ( v25 == 7 )
            return __format;
          __t->tm_wday = v25;
          ++__format;
          continue;
        case 'b':
          v13 = 12;
          v14 = 0;
LABEL_11:
          v15 = std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
                  &__firsta,
                  &__lasta,
                  &__table->_M_monthname[v14],
                  &__table->_M_monthname[v13]);
          if ( v15 == 12 )
            return __format;
          __t->tm_mon = v15;
          goto LABEL_13;
        case 'd':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_mday,
            nullptr);
          if ( !v21 )
            goto LABEL_23;
          tm_mday = __t->tm_mday;
          if ( tm_mday <= 0 || tm_mday > 31 )
            goto LABEL_23;
          ++__format;
          continue;
        case 'j':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_yday,
            nullptr);
          if ( !v20 )
            return __format;
          ++__format;
          continue;
        case 'm':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(
            &__firsta,
            &__lasta,
            &__t->tm_mon,
            nullptr);
          v18 = __t->tm_mon - 1;
          __t->tm_mon = v18;
          if ( v19 && v18 < 0xC )
            goto LABEL_13;
LABEL_23:
          *__err |= 4u;
          return __format;
        case 'p':
          v17 = std::priv::__match<std::istreambuf_iterator<char>,std::string const*>(
                  &__firsta,
                  &__lasta,
                  __table->_M_am_pm,
                  &__table[1]._M_time_format);
          if ( v17 == 2 )
            return __format;
          if ( v17 == 1 )
          {
            tm_hour = __t->tm_hour;
            if ( tm_hour == 12 )
              goto LABEL_13;
            __t->tm_hour = tm_hour + 12;
            ++__format;
          }
          else
          {
            if ( v17 || __t->tm_hour != 12 )
            {
LABEL_13:
              ++__format;
              continue;
            }
            __t->tm_hour = 0;
            ++__format;
          }
          break;
        case 'y':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(&__firsta, &__lasta, __val, nullptr);
          if ( !v16 )
            return __format;
          ++__format;
          continue;
        default:
          goto LABEL_13;
      }
    }
    else
    {
      std::istreambuf_iterator<char>::operator++(&v37, &__firsta, 0);
      M_c = (unsigned __int8)v37._M_c;
      if ( !v37._M_have_c )
      {
        M_gnext = v37._M_buf->_M_gnext;
        if ( M_gnext >= v37._M_buf->_M_gend )
          v32 = (*((int (__fastcall **)(std::streambuf *))v37._M_buf->_vptr.basic_streambuf + 8))(v37._M_buf);
        else
          v32 = (unsigned __int8)*M_gnext;
        M_c = (unsigned __int8)v32;
        v37._M_eof = v32 == -1;
      }
      if ( (*((int (__fastcall **)(std::locale::facet *, _DWORD))v10->_vptr.facet + 6))(
             v10,
             *(unsigned __int8 *)__format) != M_c )
        return __format;
      ++__format;
    }
  }
  return __format;
}


// ===== 8aa8a8 std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>::equal(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> const&) =====
bool __fastcall std::istreambuf_iterator<wchar_t>::equal(
        const std::istreambuf_iterator<wchar_t> *const this,
        const std::istreambuf_iterator<wchar_t> *const __i)
{
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  wchar_t v6; // r0
  std::wstreambuf *v7; // r0
  wchar_t *v8; // r3
  wchar_t v9; // r0
  _BOOL4 M_eof; // r3

  M_buf = this->_M_buf;
  if ( M_buf && !this->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext >= M_buf->_M_gend )
      v6 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v6 = *M_gnext;
    this->_M_c = v6;
    this->_M_eof = v6 == -1;
    this->_M_have_c = 1;
  }
  v7 = __i->_M_buf;
  if ( !__i->_M_buf || __i->_M_have_c )
  {
    M_eof = __i->_M_eof;
  }
  else
  {
    v8 = v7->_M_gnext;
    if ( v8 >= v7->_M_gend )
      v9 = (*((int (__fastcall **)(std::wstreambuf *))v7->_vptr.basic_streambuf + 8))(v7);
    else
      v9 = *v8;
    __i->_M_c = v9;
    M_eof = v9 == -1;
    __i->_M_eof = M_eof;
    __i->_M_have_c = 1;
  }
  return this->_M_eof == M_eof;
}


// ===== 8aa914 std::priv::__match<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const*>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const*) =====
int __fastcall std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        const std::wstring *__name,
        const std::wstring *__name_end)
{
  int v5; // r11
  int v6; // r5
  int v7; // r10
  bool *v8; // r6
  int v9; // r4
  wchar_t **p_M_finish; // r7
  int i; // r8
  int v12; // r3
  wchar_t *v13; // r3
  int v14; // r0
  wchar_t *v15; // r3
  int v16; // r3
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  int v20; // [sp+4h] [bp-38h]
  int v21; // [sp+Ch] [bp-30h]
  int v22; // [sp+10h] [bp-2Ch]
  bool __do_not_check[24]; // [sp+20h] [bp-1Ch] BYREF

  v5 = 954437177 * (((char *)__name_end - (char *)__name) >> 3);
  v6 = v5;
  v20 = v5;
  memset(__do_not_check, 0, sizeof(__do_not_check));
  v21 = 0;
  v7 = 0;
  if ( !std::istreambuf_iterator<wchar_t>::equal(__first, __last) )
  {
    while ( 1 )
    {
      v22 = v5;
      if ( v5 > v7 )
        break;
LABEL_17:
      M_buf = __first->_M_buf;
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
      else
        M_buf->_M_gnext = M_gnext + 1;
      __first->_M_have_c = 0;
      ++v21;
      v5 = v22;
      if ( std::istreambuf_iterator<wchar_t>::equal(__first, __last) )
        return v6;
    }
    v8 = &__do_not_check[v7];
    v9 = v7 + 1;
    p_M_finish = &__name[v7]._M_finish;
    for ( i = v6; ; i = v6 )
    {
      v6 = v9 - 1;
      if ( *v8 )
        break;
      if ( __first->_M_have_c )
      {
        v15 = p_M_finish[1];
        if ( v15[v21] == __first->_M_c )
          goto LABEL_22;
      }
      else
      {
        v13 = __first->_M_buf->_M_gnext;
        if ( v13 >= __first->_M_buf->_M_gend )
          v14 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
        else
          v14 = *v13;
        __first->_M_c = v14;
        __first->_M_eof = v14 == -1;
        __first->_M_have_c = 1;
        v15 = p_M_finish[1];
        if ( v15[v21] == v14 )
        {
LABEL_22:
          if ( v21 == *p_M_finish - v15 - 1 )
          {
            *v8 = 1;
            if ( v7 == v6 )
              v7 = v9;
            if ( !--v20 )
            {
              std::istreambuf_iterator<wchar_t>::operator++(__first);
              return v6;
            }
          }
          else
          {
            v6 = i;
          }
          v22 = v9;
          v12 = v9;
          goto LABEL_7;
        }
      }
      if ( v7 == v6 )
      {
        v7 = v9;
        if ( !--v20 )
          return i;
      }
      else if ( !--v20 )
      {
        return i;
      }
      *v8 = 1;
      v16 = v9;
      v6 = i;
      ++v8;
      ++v9;
      p_M_finish += 18;
      if ( v5 <= v16 )
        goto LABEL_17;
LABEL_8:
      ;
    }
    if ( v7 == v6 )
      v7 = v9;
    v12 = v9;
    v6 = i;
LABEL_7:
    ++v8;
    ++v9;
    p_M_finish += 18;
    if ( v5 <= v12 )
      goto LABEL_17;
    goto LABEL_8;
  }
  return v6;
}


// ===== 8aaa98 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get_monthname(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_monthname(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        std::ios_base *__t)
{
  int *v8; // r5
  _DWORD varg_r2[2]; // [sp+10h] [bp+10h] BYREF

  v8 = __err;
  if ( std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
         (std::istreambuf_iterator<wchar_t> *const)varg_r2,
         &__end,
         this->_M_timeinfo._M_monthname,
         this->_M_timeinfo._M_am_pm) != 24 )
    JUMPOUT(0x8AAB2E);
  *v8 = 4;
  if ( std::istreambuf_iterator<wchar_t>::equal((const std::istreambuf_iterator<wchar_t> *const)varg_r2, &__end) )
    *v8 |= 2u;
  retstr->_M_buf = (std::wstreambuf *)varg_r2[0];
  retstr->_M_c = varg_r2[1];
  *(_WORD *)&retstr->_M_eof = *(_WORD *)&__s._M_eof;
  return retstr;
}


// ===== 8aab04 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get_weekday(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_weekday(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        std::ios_base *__t)
{
  int *v8; // r5
  int v9; // r3
  _DWORD varg_r2[2]; // [sp+10h] [bp+10h] BYREF

  v8 = __err;
  if ( std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
         (std::istreambuf_iterator<wchar_t> *const)varg_r2,
         &__end,
         this->_M_timeinfo._M_dayname,
         this->_M_timeinfo._M_monthname) == 14 )
  {
    *v8 = 4;
    if ( std::istreambuf_iterator<wchar_t>::equal((const std::istreambuf_iterator<wchar_t> *const)varg_r2, &__end) )
      *v8 |= 2u;
  }
  else
  {
    *(_DWORD *)(v9 + 24) = 7;
    *v8 = 0;
  }
  retstr->_M_buf = (std::wstreambuf *)varg_r2[0];
  retstr->_M_c = varg_r2[1];
  *(_WORD *)&retstr->_M_eof = *(_WORD *)&__s._M_eof;
  return retstr;
}


// ===== 8aab6c std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,long &,int,bool,wchar_t,std::string const&,std::__true_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        int *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__true_type *const a9)
{
  JUMPOUT(0x8AB2A6);
}


// ===== 8aad08 std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,long long &,int,bool,wchar_t,std::string const&,std::__true_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,long long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        __int64 *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__true_type *const a9)
{
  int v9; // r8
  int v10; // r9
  const std::istreambuf_iterator<wchar_t> *v11; // r11
  int v12; // r5
  char v16; // r6
  int v17; // r7
  wchar_t *v18; // r3
  unsigned int M_c; // r0
  const char *v20; // r1
  int v21; // r0
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  int v24; // [sp+0h] [bp-8Ch]
  char *v25; // [sp+4h] [bp-88h]
  char *first1; // [sp+10h] [bp-7Ch]

  v12 = v10;
  v16 = 0;
  v17 = 0;
  v25 = (char *)(__grouping->_M_start_of_storage._M_data != __grouping->_M_finish);
LABEL_25:
  if ( v12 < __got )
  {
    while ( 1 )
    {
      M_buf = __first->_M_buf;
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        break;
LABEL_21:
      M_buf->_M_gnext = M_gnext + 1;
LABEL_22:
      __first->_M_have_c = 0;
      v12 = __got;
      if ( std::istreambuf_iterator<wchar_t>::equal(__first, v11) )
      {
LABEL_10:
        v20 = v25;
        if ( __base && v25 != first1 )
        {
          *v25 = v16;
          v20 = v25 + 1;
        }
        if ( v17 )
        {
          if ( v24 )
          {
            __last->_M_buf = (std::wstreambuf *)0x7FFFFFFF;
          }
          else
          {
            __last->_M_buf = (std::wstreambuf *)__got;
            if ( __base )
              std::priv::__valid_grouping(first1, v20, *(const char **)(v9 + 20), *(const char **)(v9 + 16));
          }
        }
        JUMPOUT(0x8AA9B0);
      }
      if ( __first->_M_have_c )
      {
        M_c = __first->_M_c;
      }
      else
      {
        v18 = __first->_M_buf->_M_gnext;
        if ( v18 >= __first->_M_buf->_M_gend )
          M_c = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
        else
          M_c = *v18;
        __first->_M_eof = M_c == -1;
        __first->_M_c = M_c;
        __first->_M_have_c = 1;
      }
      if ( __base && !M_c )
      {
        *v25++ = v16;
        v16 = 0;
      }
      else
      {
        if ( M_c > 0x7F )
          goto LABEL_10;
        v21 = std::priv::__digit_val_table(M_c);
        if ( v21 > 9 )
          goto LABEL_10;
        ++v17;
        ++v16;
        if ( __got <= 214748364 )
        {
          __got = v21 + 10 * __got;
          if ( v12 && !v24 )
            goto LABEL_25;
        }
        else
        {
          v24 = 1;
        }
      }
    }
  }
  else
  {
    v24 = 1;
    M_buf = __first->_M_buf;
    M_gnext = __first->_M_buf->_M_gnext;
    if ( M_gnext < __first->_M_buf->_M_gend )
      goto LABEL_21;
  }
  (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
  goto LABEL_22;
}


// ===== 8aaf20 std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,int,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int &,wchar_t *) =====
void __fastcall std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int *const __val,
        wchar_t *a4)
{
  std::string __grp; // [sp+5Ch] [bp-20h] BYREF

  __grp._M_finish = (char *)&__grp;
  __grp._M_start_of_storage._M_data = (char *)&__grp;
  JUMPOUT(0x8AB67E);
}


// ===== 8ab0b4 std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ushort,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,ushort &,int,bool,wchar_t,std::string const&,std::__false_type const&) =====
bool __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned short,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        unsigned __int16 *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  wchar_t *M_gnext; // r3
  unsigned int M_c; // r0
  int v11; // r3
  int v12; // r3
  std::wstreambuf *M_buf; // r0
  wchar_t *v14; // r3
  _BOOL4 result; // r0
  int v20; // r5
  char v21; // r6
  _BOOL4 v22; // r9
  bool i; // zf
  int v24; // r1
  int v25; // [sp+4h] [bp-70h]
  char *last1; // [sp+8h] [bp-6Ch]
  int v27; // [sp+Ch] [bp-68h]
  char *first1; // [sp+1Ch] [bp-58h]

  v20 = 0;
  v21 = 0;
  v22 = __grouping->_M_start_of_storage._M_data != __grouping->_M_finish;
  v24 = (unsigned __int16)__base;
  for ( i = (unsigned __int16)__base == 0; ; i = !__first->_M_have_c )
  {
    if ( i )
    {
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        M_c = (*((int (__fastcall **)(std::wstreambuf *, int))__first->_M_buf->_vptr.basic_streambuf + 8))(
                __first->_M_buf,
                v24);
      else
        M_c = *M_gnext;
      __first->_M_eof = M_c == -1;
      __first->_M_c = M_c;
      __first->_M_have_c = 1;
    }
    else
    {
      M_c = __first->_M_c;
    }
    if ( v22 && __separator == M_c )
    {
      *last1++ = v21;
      v21 = 0;
      goto LABEL_16;
    }
    v11 = 255;
    if ( M_c <= 0x7F )
      v11 = std::priv::__digit_val_table(M_c);
    if ( __base <= v11 )
      break;
    ++__got;
    ++v21;
    if ( v20 < v25 )
      goto LABEL_15;
    v12 = __base * v20 - v11;
    if ( v20 && !v27 && v20 <= v12 )
    {
      v20 = v12;
LABEL_15:
      v27 = 1;
      goto LABEL_16;
    }
    v20 = v12;
LABEL_16:
    M_buf = __first->_M_buf;
    v14 = __first->_M_buf->_M_gnext;
    if ( v14 >= __first->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = v14 + 1;
    __first->_M_have_c = 0;
    if ( std::istreambuf_iterator<wchar_t>::equal(__first, __last) )
      break;
  }
  if ( v22 && last1 != first1 )
    *last1++ = v21;
  result = 0;
  if ( __got > 0 )
  {
    if ( v27 )
    {
      if ( __val )
      {
        *(_DWORD *)__is_negative = 0x80000000;
        return 0;
      }
      else
      {
        *(_DWORD *)__is_negative = 0x7FFFFFFF;
        return 0;
      }
    }
    else
    {
      if ( __val )
        *(_DWORD *)__is_negative = v20;
      else
        *(_DWORD *)__is_negative = -v20;
      result = 1;
      if ( v22 )
        return std::priv::__valid_grouping(
                 first1,
                 last1,
                 __grouping->_M_start_of_storage._M_data,
                 __grouping->_M_finish);
    }
  }
  return result;
}


// ===== 8ab250 std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,ulong long &,int,bool,wchar_t,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned long long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        unsigned __int64 *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8AB8D8);
}


// ===== 8ab42c std::priv::__copy_digits<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::priv::__basic_iostring<char> &,wchar_t const*) =====
int __fastcall std::priv::__copy_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> __last,
        std::priv::__iostring *const __v,
        const wchar_t *__digits)
{
  int v4; // r6
  wchar_t *M_gnext; // r3
  int v7; // r0
  std::wstreambuf *M_buf; // r0
  wchar_t *v9; // r3
  std::istreambuf_iterator<wchar_t> __lasta; // [sp+4h] [bp-10h] BYREF
  wchar_t var8[9]; // [sp+14h] [bp+0h] BYREF

  __lasta = __last;
  v4 = 0;
  while ( !std::istreambuf_iterator<wchar_t>::equal(__first, &__lasta) )
  {
    if ( __first->_M_have_c )
    {
      var8[0] = __first->_M_c;
      if ( !std::priv::__get_fdigit(var8, __digits) )
        return v4;
    }
    else
    {
      M_gnext = __first->_M_buf->_M_gnext;
      if ( M_gnext >= __first->_M_buf->_M_gend )
        v7 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
      else
        v7 = *M_gnext;
      __first->_M_eof = v7 == -1;
      __first->_M_c = v7;
      var8[0] = v7;
      __first->_M_have_c = 1;
      if ( !std::priv::__get_fdigit(var8, __digits) )
        return v4;
    }
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__v, var8[0]);
    M_buf = __first->_M_buf;
    v9 = __first->_M_buf->_M_gnext;
    if ( v9 >= __first->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = v9 + 1;
    __first->_M_have_c = 0;
    v4 = 1;
  }
  return v4;
}


// ===== 8ab4e4 std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,ulong &,int,bool,wchar_t,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        unsigned int *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8ABC50);
}


// ===== 8ab670 std::priv::__get_formatted_time<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t,std::priv::_WTime_Info>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,char const*,char const*,wchar_t *,std::priv::_WTime_Info const&,std::ios_base const&,int &,tm *) =====
const char *__fastcall std::priv::__get_formatted_time<std::istreambuf_iterator<wchar_t>,wchar_t,std::priv::_WTime_Info>(
        std::istreambuf_iterator<wchar_t> __first,
        std::istreambuf_iterator<wchar_t> __last,
        const char *__format,
        const char *__format_end,
        wchar_t *__formata,
        const std::priv::_WTime_Info *const __table,
        const std::ios_base *const __s,
        const std::priv::_WTime_Info *__err,
        const std::ios_base *__t)
{
  std::locale::facet *v10; // r6
  int v12; // r3
  int v13; // r3
  int v14; // r2
  int v15; // r0
  int v16; // r0
  int v17; // r0
  unsigned int v18; // r3
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int M_openmode; // r3
  int v23; // r3
  int v24; // r2
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // r8
  int *v31; // r3
  int v32; // r0
  int M_iostate; // r3
  int *__val; // [sp+4h] [bp-28h]
  _DWORD v35[2]; // [sp+2Ch] [bp+0h] BYREF
  std::istreambuf_iterator<wchar_t> __firsta; // [sp+34h] [bp+8h] BYREF
  bool v37; // [sp+40h] [bp+14h]
  char v38; // [sp+41h] [bp+15h]
  std::locale v39; // [sp+44h] [bp+18h] BYREF
  int varg_r3; // [sp+74h] [bp+48h] BYREF

  v35[1] = __first._M_c;
  __firsta._M_buf = *(std::wstreambuf **)&__first._M_eof;
  v35[0] = __first._M_buf;
  std::locale::locale(&v39, &__s->_M_locale);
  v10 = std::locale::_M_use_facet(&v39, &std::ctype<wchar_t>::id);
  std::locale::~locale(&v39);
  __val = &__t->_M_exception_mask;
  while ( !std::istreambuf_iterator<wchar_t>::equal(
             (const std::istreambuf_iterator<wchar_t> *const)v35,
             (const std::istreambuf_iterator<wchar_t> *const)&varg_r3)
       && __format != __format_end )
  {
    if ( *__format == 37 )
    {
      v12 = *(unsigned __int8 *)++__format;
      if ( v12 == 35 )
        LOBYTE(v12) = *++__format;
      switch ( (char)v12 )
      {
        case 'A':
          v23 = 14;
          v24 = 7;
          goto LABEL_31;
        case 'B':
          v13 = 24;
          v14 = 12;
          goto LABEL_11;
        case 'H':
        case 'I':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            &__t->_M_iostate,
            nullptr);
          if ( !v29 )
            return __format;
          ++__format;
          continue;
        case 'M':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            &__t->_M_fmtflags,
            nullptr);
          if ( !v28 )
            return __format;
          ++__format;
          continue;
        case 'S':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            (int *const)__t,
            nullptr);
          if ( !v27 )
            return __format;
          ++__format;
          continue;
        case 'Y':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            __val,
            nullptr);
          __t->_M_exception_mask -= 1900;
          if ( !v26 )
            return __format;
          ++__format;
          continue;
        case 'a':
          v23 = 7;
          v24 = 0;
LABEL_31:
          v25 = std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
                  (std::istreambuf_iterator<wchar_t> *const)v35,
                  (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
                  &__table->_M_dayname[v24],
                  &__table->_M_dayname[v23]);
          if ( v25 == 7 )
            return __format;
          __t->_M_precision = v25;
          ++__format;
          continue;
        case 'b':
          v13 = 12;
          v14 = 0;
LABEL_11:
          v15 = std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
                  (std::istreambuf_iterator<wchar_t> *const)v35,
                  (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
                  &__table->_M_monthname[v14],
                  &__table->_M_monthname[v13]);
          if ( v15 == 12 )
            return __format;
          __t->_M_seekdir = v15;
          goto LABEL_13;
        case 'd':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            &__t->_M_openmode,
            nullptr);
          if ( !v21 )
            goto LABEL_23;
          M_openmode = __t->_M_openmode;
          if ( M_openmode <= 0 || M_openmode > 31 )
            goto LABEL_23;
          ++__format;
          continue;
        case 'j':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            &__t->_M_width,
            nullptr);
          if ( !v20 )
            return __format;
          ++__format;
          continue;
        case 'm':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            &__t->_M_seekdir,
            nullptr);
          v18 = __t->_M_seekdir - 1;
          __t->_M_seekdir = v18;
          if ( v19 && v18 < 0xC )
            goto LABEL_13;
LABEL_23:
          __err->_M_time_format._M_buffers._M_end_of_storage = (char *)((int)__err->_M_time_format._M_buffers._M_end_of_storage
                                                                      | 4);
          return __format;
        case 'p':
          v17 = std::priv::__match<std::istreambuf_iterator<wchar_t>,std::wstring const*>(
                  (std::istreambuf_iterator<wchar_t> *const)v35,
                  (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
                  __table->_M_am_pm,
                  (const std::wstring *)&__table[1]);
          if ( v17 == 2 )
            return __format;
          if ( v17 == 1 )
          {
            M_iostate = __t->_M_iostate;
            if ( M_iostate == 12 )
              goto LABEL_13;
            __t->_M_iostate = M_iostate + 12;
            ++__format;
          }
          else
          {
            if ( v17 || __t->_M_iostate != 12 )
            {
LABEL_13:
              ++__format;
              continue;
            }
            __t->_M_iostate = 0;
            ++__format;
          }
          break;
        case 'y':
          std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(
            (std::istreambuf_iterator<wchar_t> *const)v35,
            (std::istreambuf_iterator<wchar_t> *const)&varg_r3,
            __val,
            nullptr);
          if ( !v16 )
            return __format;
          ++__format;
          continue;
        default:
          goto LABEL_13;
      }
    }
    else
    {
      std::istreambuf_iterator<wchar_t>::operator++(
        (std::istreambuf_iterator<wchar_t> *)&__firsta._M_c,
        (std::istreambuf_iterator<wchar_t> *const)v35,
        0);
      v30 = *(_DWORD *)&__firsta._M_eof;
      if ( !v38 )
      {
        v31 = *(int **)(__firsta._M_c + 8);
        if ( (unsigned int)v31 >= *(_DWORD *)(__firsta._M_c + 12) )
          v32 = (*(int (__fastcall **)(wchar_t))(*(_DWORD *)__firsta._M_c + 32))(__firsta._M_c);
        else
          v32 = *v31;
        v30 = v32;
        v37 = v32 == -1;
      }
      if ( (*((int (__fastcall **)(std::locale::facet *, _DWORD))v10->_vptr.facet + 10))(
             v10,
             *(unsigned __int8 *)__format) != v30 )
        return __format;
      ++__format;
    }
  }
  return __format;
}


// ===== 8ab930 std::priv::__copy_grouped_digits<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::priv::__basic_iostring<char> &,wchar_t const*,wchar_t,std::string const&,bool &) =====
int __fastcall std::priv::__copy_grouped_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> __last,
        std::priv::__iostring *const __v,
        const wchar_t *__digits,
        wchar_t __sep,
        const std::string *const __grouping,
        bool *const __grouping_ok,
        int a8,
        int a9)
{
  unsigned int *v9; // r3
  int v10; // r3
  unsigned int v11; // r7
  std::wstreambuf *v12; // r0
  wchar_t *v13; // r3
  _DWORD *v14; // r2
  unsigned int M_c; // r0
  int v17; // r1
  char **p_first1; // r2
  const std::istreambuf_iterator<wchar_t> *v19; // r4
  wchar_t v20; // r5
  wchar_t *p_c; // r6
  std::wstreambuf *M_buf; // r0
  wchar_t *v23; // r3
  char **M_gnext; // r3
  char *v25; // r0
  wchar_t *v26; // r1
  const std::istreambuf_iterator<wchar_t> *v27; // r4
  int result; // r0
  int v29; // [sp+0h] [bp-1Ch]
  const std::string *v30; // [sp+10h] [bp-Ch]
  char *v31; // [sp+14h] [bp-8h]
  std::istreambuf_iterator<wchar_t> __lasta; // [sp+1Ch] [bp+0h] BYREF
  char *first1; // [sp+28h] [bp+Ch] BYREF
  wchar_t __c; // [sp+2Ch] [bp+10h] BYREF
  _DWORD *v35; // [sp+30h] [bp+14h]
  int v36; // [sp+6Ch] [bp+50h]
  int vars8; // [sp+7Ch] [bp+60h]

  __lasta = __last;
  v17 = 4139;
  p_first1 = (char **)&__GLOBAL_OFFSET_TABLE_;
  v30 = __grouping;
  while ( 2 )
  {
    v19 = __first;
    v20 = 0;
    v36 = *(_DWORD *)p_first1[v17];
    v31 = (char *)(v17 * 4);
    p_c = &__c;
    v29 = 0;
    while ( !std::istreambuf_iterator<wchar_t>::equal(v19, &__lasta) )
    {
      if ( v19->_M_have_c )
      {
        first1 = (char *)v19->_M_c;
        if ( !std::priv::__get_fdigit_or_sep((wchar_t *const)&first1, __sep, __digits) )
          break;
      }
      else
      {
        M_gnext = (char **)v19->_M_buf->_M_gnext;
        if ( (wchar_t *)M_gnext >= v19->_M_buf->_M_gend )
          v25 = (char *)(*((int (__fastcall **)(std::wstreambuf *))v19->_M_buf->_vptr.basic_streambuf + 8))(v19->_M_buf);
        else
          v25 = *M_gnext;
        v19->_M_c = (wchar_t)v25;
        v19->_M_have_c = 1;
        v19->_M_eof = v25 + 1 == nullptr;
        first1 = v25;
        if ( !std::priv::__get_fdigit_or_sep((wchar_t *const)&first1, __sep, __digits) )
          break;
      }
      if ( first1 == (char *)&word_2C )
      {
        *(_BYTE *)p_c = v20;
        M_buf = v19->_M_buf;
        p_c = (wchar_t *)((char *)p_c + 1);
        v20 = 0;
        v23 = v19->_M_buf->_M_gnext;
        if ( v23 < v19->_M_buf->_M_gend )
          goto LABEL_4;
      }
      else
      {
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(
          __v,
          (char)first1);
        v29 = 1;
        M_buf = v19->_M_buf;
        v23 = v19->_M_buf->_M_gnext;
        v20 = (unsigned __int8)(v20 + 1);
        if ( v23 < v19->_M_buf->_M_gend )
        {
LABEL_4:
          M_buf->_M_gnext = v23 + 1;
          goto LABEL_5;
        }
      }
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
LABEL_5:
      v19->_M_have_c = 0;
    }
    v26 = &__c;
    if ( p_c != &__c )
    {
      *(_BYTE *)p_c = v20;
      v26 = (wchar_t *)((char *)p_c + 1);
    }
    *__grouping_ok = std::priv::__valid_grouping(
                       (const char *)&__c,
                       (const char *)v26,
                       v30->_M_start_of_storage._M_data,
                       v30->_M_finish);
    v27 = (const std::istreambuf_iterator<wchar_t> *)v31;
    result = v29;
    if ( v36 != **(_DWORD **)((char *)&__GLOBAL_OFFSET_TABLE_ + (_DWORD)v31) )
    {
LABEL_33:
      while ( 1 )
      {
        v11 = (unsigned int)&__lasta >> 24;
        if ( !p_c && __c >= v20 )
          break;
        v30 = (const std::string *)(&dword_0 + 1);
        while ( 1 )
        {
          v12 = v27->_M_buf;
          v13 = v27->_M_buf->_M_gnext;
          if ( v13 >= v27->_M_buf->_M_gend )
            (*((void (__fastcall **)(std::wstreambuf *))v12->_vptr.basic_streambuf + 9))(v12);
          else
            v12->_M_gnext = v13 + 1;
          v27->_M_have_c = 0;
          if ( std::istreambuf_iterator<wchar_t>::equal(v27, (const std::istreambuf_iterator<wchar_t> *const)&__c) )
            break;
          if ( v27->_M_have_c )
          {
            M_c = v27->_M_c;
          }
          else
          {
            v9 = v27->_M_buf->_M_gnext;
            if ( v9 < v27->_M_buf->_M_gend )
              M_c = *v9;
            else
              M_c = (*((int (__fastcall **)(std::wstreambuf *))v27->_M_buf->_vptr.basic_streambuf + 8))(v27->_M_buf);
            v27->_M_c = M_c;
            v27->_M_eof = M_c == -1;
            v27->_M_have_c = 1;
          }
          if ( !__sep || a9 != M_c )
          {
            v10 = 255;
            if ( M_c <= 0x7F )
              v10 = std::priv::__digit_val_table(M_c);
            if ( (int)&first1 > v10 )
            {
              __digits = (const wchar_t *)((char *)__digits + 1);
              goto LABEL_33;
            }
            break;
          }
          *v31++ = v11;
          LOBYTE(v11) = 0;
        }
        if ( __sep && v31 != first1 )
          *v31 = v11;
        if ( (int)__digits > 0 )
        {
          v14 = v35;
          *v35 = -1;
          v14[1] = -1;
        }
        v27 = (const std::istreambuf_iterator<wchar_t> *)__lasta._M_buf;
        if ( vars8 == **(_DWORD **)((char *)&__lasta._M_buf->_vptr.basic_streambuf + *(_DWORD *)&__lasta._M_eof) )
          __asm { POP             {R4-R7,PC} }
      }
      p_first1 = &first1;
      __first = (std::istreambuf_iterator<wchar_t> *const)v20;
      v17 = 0;
      continue;
    }
    return result;
  }
}


// ===== 8aba60 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,void const*) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t a5,
        const void *__val)
{
  int M_ok; // r9
  std::wstreambuf *M_buf; // r10
  std::locale::facet *v9; // r6
  int M_fmtflags; // r7
  std::ios_base *__fill; // r0
  int v13; // r0
  int *v14; // r3
  int v15; // r0
  int v16; // r0
  wchar_t *M_pnext; // r2
  int v18; // r0
  const char *v19; // [sp+Ch] [bp-10h]
  std::locale v20[2]; // [sp+1Ch] [bp+0h] BYREF
  std::ostreambuf_iterator<wchar_t> __sa; // 0:^10.8

  __sa = __s;
  M_ok = __s._M_ok;
  M_buf = __s._M_buf;
  std::locale::locale(v20, &__f->_M_locale);
  v9 = std::locale::_M_use_facet(v20, &std::ctype<wchar_t>::id);
  std::locale::~locale(v20);
  M_fmtflags = __f->_M_fmtflags;
  __f->_M_fmtflags = M_fmtflags & 0xFFFFFDC0 | 0x214;
  __f->_M_width = 10;
  if ( !__val )
  {
    if ( (M_fmtflags & 0x4000) != 0 )
      v19 = std::priv::__hex_char_table_hi();
    else
      v19 = std::priv::__hex_char_table_lo();
    v13 = (*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 10))(v9, 48);
    if ( !M_ok
      || ((v14 = (int *)M_buf->_M_pnext, (wchar_t *)v14 >= M_buf->_M_pend)
        ? (v15 = (*((int (__fastcall **)(std::wstreambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v13))
        : (*v14 = v13, M_buf->_M_pnext = (wchar_t *)(v14 + 1), v15 = *v14),
          v15 == -1) )
    {
      (*((void (__fastcall **)(std::locale::facet *, _DWORD))v9->_vptr.facet + 10))(v9, *((unsigned __int8 *)v19 + 16));
      LOBYTE(M_ok) = 0;
    }
    else
    {
      v16 = (*((int (__fastcall **)(std::locale::facet *, _DWORD))v9->_vptr.facet + 10))(
              v9,
              *((unsigned __int8 *)v19 + 16));
      M_pnext = M_buf->_M_pnext;
      if ( M_pnext >= M_buf->_M_pend )
      {
        v18 = (*((int (__fastcall **)(std::wstreambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v16);
      }
      else
      {
        *M_pnext = v16;
        M_buf->_M_pnext = M_pnext + 1;
        v18 = *M_pnext;
      }
      M_ok &= -(v18 != -1);
    }
    __f->_M_width = 8;
  }
  __fill = (std::ios_base *)(*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 10))(v9, 48);
  __sa._M_ok = M_ok;
  std::priv::__do_put_integer<wchar_t,std::ostreambuf_iterator<wchar_t>,unsigned long>(
    retstr,
    __sa,
    __f,
    __fill,
    (unsigned int)__val);
  __f->_M_fmtflags = M_fmtflags;
  return retstr;
}


// ===== 8abb9c std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,char,void const*) =====
std::ostreambuf_iterator<char> *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::num_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        std::ios_base *const __f,
        char a5,
        const void *__val)
{
  std::streambuf *M_buf; // r11
  int M_ok; // r9
  std::locale::facet *v9; // r6
  int M_fmtflags; // r7
  char __fill; // r0
  int v13; // r1
  char *M_pnext; // r3
  int v15; // r0
  char *v16; // r3
  const char *v17; // [sp+Ch] [bp-10h]
  std::locale v18[2]; // [sp+1Ch] [bp+0h] BYREF
  std::ostreambuf_iterator<char> __sa; // 0:^10.8

  __sa = __s;
  M_buf = __s._M_buf;
  M_ok = __s._M_ok;
  std::locale::locale(v18, &__f->_M_locale);
  v9 = std::locale::_M_use_facet(v18, &std::ctype<char>::id);
  std::locale::~locale(v18);
  M_fmtflags = __f->_M_fmtflags;
  __f->_M_fmtflags = M_fmtflags & 0xFFFFFDC0 | 0x214;
  __f->_M_width = 10;
  if ( !__val )
  {
    if ( (M_fmtflags & 0x4000) != 0 )
      v17 = std::priv::__hex_char_table_hi();
    else
      v17 = std::priv::__hex_char_table_lo();
    v13 = (*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 6))(v9, 48);
    if ( M_ok )
    {
      M_pnext = M_buf->_M_pnext;
      if ( M_pnext < M_buf->_M_pend )
      {
        *M_pnext = v13;
        M_buf->_M_pnext = M_pnext + 1;
        goto LABEL_8;
      }
      if ( (*((int (__fastcall **)(std::streambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v13) != -1 )
      {
LABEL_8:
        v15 = (*((int (__fastcall **)(std::locale::facet *, _DWORD))v9->_vptr.facet + 6))(
                v9,
                *((unsigned __int8 *)v17 + 16));
        v16 = M_buf->_M_pnext;
        if ( v16 >= M_buf->_M_pend )
        {
          M_ok &= -((*((int (__fastcall **)(std::streambuf *, int))M_buf->_vptr.basic_streambuf + 13))(M_buf, v15) != -1);
        }
        else
        {
          *v16 = v15;
          M_buf->_M_pnext = v16 + 1;
        }
        goto LABEL_12;
      }
    }
    (*((void (__fastcall **)(std::locale::facet *, _DWORD))v9->_vptr.facet + 6))(v9, *((unsigned __int8 *)v17 + 16));
    LOBYTE(M_ok) = 0;
LABEL_12:
    __f->_M_width = 8;
  }
  __fill = (*((int (__fastcall **)(std::locale::facet *, int))v9->_vptr.facet + 6))(v9, 48);
  __sa._M_ok = M_ok;
  std::priv::__do_put_integer<char,std::ostreambuf_iterator<char>,unsigned long>(
    retstr,
    __sa,
    __f,
    __fill,
    (unsigned int)__val);
  __f->_M_fmtflags = M_fmtflags;
  return retstr;
}


// ===== 8abcd4 std::priv::__copy_sign<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::priv::__basic_iostring<char> &,char,char) =====
std::istreambuf_iterator<char> *__fastcall std::priv::__copy_sign<std::istreambuf_iterator<char>,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> __first,
        std::istreambuf_iterator<char> __last,
        std::priv::__iostring *const __v,
        unsigned __int8 __xplus,
        unsigned __int8 __xminus)
{
  char *M_gnext; // r3
  int v9; // r0
  int M_c; // r3
  std::istreambuf_iterator<char> varC[4]; // [sp+0h] [bp-Ch] BYREF
  int varg_r3; // [sp+24h] [bp+18h] BYREF

  varC[0] = __first;
  if ( !std::istreambuf_iterator<char>::equal(varC, (const std::istreambuf_iterator<char> *const)&varg_r3) )
  {
    if ( varC[0]._M_have_c )
    {
      M_c = (unsigned __int8)varC[0]._M_c;
    }
    else
    {
      M_gnext = varC[0]._M_buf->_M_gnext;
      if ( M_gnext >= varC[0]._M_buf->_M_gend )
        v9 = (*((int (__fastcall **)(std::streambuf *))varC[0]._M_buf->_vptr.basic_streambuf + 8))(varC[0]._M_buf);
      else
        v9 = (unsigned __int8)*M_gnext;
      M_c = (unsigned __int8)v9;
      varC[0]._M_eof = v9 == -1;
      varC[0]._M_c = v9;
      varC[0]._M_have_c = 1;
    }
    if ( __xplus != M_c )
    {
      if ( __xminus != M_c )
        goto LABEL_2;
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__v, 45);
    }
    std::istreambuf_iterator<char>::operator++(varC);
  }
LABEL_2:
  *retstr = varC[0];
  return retstr;
}


// ===== 8abd60 std::priv::__copy_sign<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::priv::__basic_iostring<char> &,wchar_t,wchar_t) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::priv::__copy_sign<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> __first,
        std::istreambuf_iterator<wchar_t> __last,
        std::priv::__iostring *const __v,
        wchar_t __xplus,
        wchar_t __xminus)
{
  wchar_t *M_gnext; // r3
  int M_c; // r0
  std::istreambuf_iterator<wchar_t> __firsta; // [sp+4h] [bp-10h] BYREF

  __firsta = __first;
  if ( !std::istreambuf_iterator<wchar_t>::equal(&__firsta, &__last) )
  {
    if ( __firsta._M_have_c )
    {
      M_c = __firsta._M_c;
    }
    else
    {
      M_gnext = __firsta._M_buf->_M_gnext;
      if ( M_gnext >= __firsta._M_buf->_M_gend )
        M_c = (*((int (__fastcall **)(std::wstreambuf *))__firsta._M_buf->_vptr.basic_streambuf + 8))(__firsta._M_buf);
      else
        M_c = *M_gnext;
      __firsta._M_eof = M_c == -1;
      __firsta._M_c = M_c;
      __firsta._M_have_c = 1;
    }
    if ( __xplus != M_c )
    {
      if ( __xminus != M_c )
        goto LABEL_2;
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__v, 45);
    }
    std::istreambuf_iterator<wchar_t>::operator++(&__firsta);
  }
LABEL_2:
  *retstr = __firsta;
  return retstr;
}


// ===== 8abdd8 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get_year(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_year(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __end_4,
        int *const __err,
        std::ios_base *__t)
{
  int *v8; // r6
  tm *v9; // r7
  wchar_t *M_gnext; // r3
  int v11; // r0
  wchar_t *v12; // r3
  int v13; // r0
  int v14; // r0

  v8 = __err;
  v9 = (tm *)__t;
  if ( __s._M_buf && !__s._M_have_c )
  {
    M_gnext = __s._M_buf->_M_gnext;
    if ( M_gnext >= __s._M_buf->_M_gend )
      v11 = (*((int (__fastcall **)(std::wstreambuf *, const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const))__s._M_buf->_vptr.basic_streambuf
             + 8))(
              __s._M_buf,
              this);
    else
      v11 = *M_gnext;
    __s._M_c = v11;
    __s._M_eof = v11 == -1;
    __s._M_have_c = 1;
  }
  if ( __end._M_buf && !__end._M_have_c )
  {
    v12 = __end._M_buf->_M_gnext;
    if ( v12 >= __end._M_buf->_M_gend )
      v13 = (*((int (__fastcall **)(std::wstreambuf *))__end._M_buf->_vptr.basic_streambuf + 8))(__end._M_buf);
    else
      v13 = *v12;
    __end._M_c = v13;
    __end._M_have_c = 1;
    __end._M_eof = v13 == -1;
    if ( __s._M_eof != __end._M_eof )
      goto LABEL_11;
LABEL_14:
    *v8 = 6;
    goto LABEL_15;
  }
  if ( __s._M_eof == __end._M_eof )
    goto LABEL_14;
LABEL_11:
  std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t>,int,wchar_t>(&__s, &__end, &v9->tm_year, nullptr);
  v9->tm_year -= 1900;
  *v8 = 4 * (v14 == 0);
  if ( std::istreambuf_iterator<wchar_t>::equal(&__s, &__end) )
    *v8 |= 2u;
LABEL_15:
  *retstr = __s;
  return retstr;
}


// ===== 8abeac std::priv::__copy_float_and_fill<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(wchar_t const*,wchar_t const*,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,int,int,wchar_t,wchar_t,wchar_t) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::priv::__copy_float_and_fill<wchar_t,std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const wchar_t *__first,
        const wchar_t *__last,
        std::ostreambuf_iterator<wchar_t> __oi,
        char __flags,
        std::streamsize __width,
        int __fill,
        std::streamsize __xplus,
        wchar_t __xminus)
{
  std::streamsize v10; // r4
  const wchar_t *v11; // r7
  int v13; // r4
  std::wstreambuf *v14; // r6
  int v15; // r5
  int v16; // r0
  wchar_t *v17; // r3
  const std::__false_type *v18; // r2
  wchar_t v20; // r1
  std::wstreambuf *v21; // r0
  int *M_pnext; // r3
  int v23; // r0
  int v24; // r5
  int v25; // r0
  wchar_t *v26; // r3
  std::ostreambuf_iterator<wchar_t> v27; // r1
  int v28; // [sp+Ch] [bp-2Ch]
  std::ostreambuf_iterator<wchar_t> v29; // [sp+20h] [bp-18h] BYREF
  std::__false_type v30; // [sp+28h] [bp-10h] BYREF
  char v31; // [sp+2Ch] [bp-Ch] BYREF
  std::__false_type v32; // [sp+30h] [bp-8h] BYREF
  std::__false_type v33; // [sp+34h] [bp-4h] BYREF
  std::wstreambuf *varg_r3; // [sp+5Ch] [bp+24h]
  bool M_ok; // [sp+60h] [bp+28h]
  std::ostreambuf_iterator<wchar_t> std__ostreambuf_iterator_wchar_t_b; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<wchar_t> v37; // 0:r3.4,4:^0.4
  std::ostreambuf_iterator<wchar_t> v38; // 0:r3.4,4:^0.4

  v10 = __last - __first;
  v11 = __first;
  if ( v10 < __width )
  {
    v13 = __width - v10;
    if ( (__flags & 7) == 1 )
    {
      v38._M_buf = varg_r3;
      LOBYTE(v28) = __oi._M_ok;
      *(_DWORD *)&v38._M_ok = v28;
      std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(&v29, __first, __last, v38, &v32);
      v27._M_buf = v29._M_buf;
      varg_r3 = v29._M_buf;
      M_ok = v29._M_ok;
      *(_DWORD *)&v27._M_ok = *(_DWORD *)&__oi._M_ok;
      std::priv::__fill_n<std::ostreambuf_iterator<wchar_t>,int,wchar_t>(retstr, v27, v13, (const wchar_t *)&__fill);
    }
    else
    {
      if ( (__flags & 7) == 4 && __first != __last && ((v20 = *__first, v20 == __xplus) || v20 == __xminus) )
      {
        ++v11;
        if ( !__oi._M_ok
          || ((v21 = varg_r3, M_pnext = (int *)varg_r3->_M_pnext, (wchar_t *)M_pnext >= varg_r3->_M_pend)
            ? (v23 = (*((int (__fastcall **)(std::wstreambuf *))varg_r3->_vptr.basic_streambuf + 13))(varg_r3))
            : (*M_pnext = v20, v21->_M_pnext = (wchar_t *)(M_pnext + 1), v23 = *M_pnext),
              v24 = 1,
              v23 == -1) )
        {
          v24 = 0;
        }
        v14 = varg_r3;
        if ( v13 > 0 )
        {
          do
          {
            if ( v24 )
            {
              v26 = v14->_M_pnext;
              if ( v26 < v14->_M_pend )
              {
                *v26 = __fill;
                v14->_M_pnext = v26 + 1;
                v25 = *v26;
              }
              else
              {
                v25 = (*((int (__fastcall **)(std::wstreambuf *, int))v14->_vptr.basic_streambuf + 13))(v14, __fill);
              }
              v24 &= -(v25 != -1);
            }
            --v13;
          }
          while ( v13 );
        }
        varg_r3 = v14;
        LOBYTE(v28) = v24;
        v18 = (const std::__false_type *)&v31;
      }
      else
      {
        v14 = varg_r3;
        v15 = __oi._M_ok;
        if ( v13 > 0 )
        {
          do
          {
            if ( v15 )
            {
              v17 = v14->_M_pnext;
              if ( v17 < v14->_M_pend )
              {
                *v17 = __fill;
                v14->_M_pnext = v17 + 1;
                v16 = *v17;
              }
              else
              {
                v16 = (*((int (__fastcall **)(std::wstreambuf *, int))v14->_vptr.basic_streambuf + 13))(v14, __fill);
              }
              v15 &= -(v16 != -1);
            }
            --v13;
          }
          while ( v13 );
        }
        varg_r3 = v14;
        LOBYTE(v28) = v15;
        v18 = &v30;
      }
      *(_DWORD *)&std__ostreambuf_iterator_wchar_t_b._M_ok = v28;
      std__ostreambuf_iterator_wchar_t_b._M_buf = v14;
      std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(
        retstr,
        v11,
        __last,
        std__ostreambuf_iterator_wchar_t_b,
        v18);
    }
  }
  else
  {
    v37._M_buf = varg_r3;
    LOBYTE(v28) = __oi._M_ok;
    *(_DWORD *)&v37._M_ok = v28;
    std::priv::__copy_aux<wchar_t const*,std::ostreambuf_iterator<wchar_t>>(retstr, __first, __last, v37, &v33);
  }
  return retstr;
}


// ===== 8ac04c std::priv::__put_float<std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>(std::priv::__basic_iostring<char> &,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,wchar_t,wchar_t,uint,std::string const&) =====
void __fastcall std::priv::__put_float<std::ostreambuf_iterator<wchar_t>>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::priv::__iostring *const __str,
        std::ostreambuf_iterator<wchar_t> __oi,
        std::ios_base *const __f,
        wchar_t __fill,
        wchar_t __decimal_point,
        wchar_t __sep,
        size_t __group_pos,
        const std::string *const __grouping)
{
  std::priv::__iowstring __wbuf; // [sp+2Ch] [bp-87Ch] BYREF
  std::locale v10[2]; // [sp+87Ch] [bp-2Ch] BYREF

  std::locale::locale(v10, &__f->_M_locale);
  std::locale::_M_use_facet(v10, &std::ctype<wchar_t>::id);
  std::locale::~locale(v10);
  __wbuf._M_finish = (wchar_t *)&__wbuf;
  JUMPOUT(0x8AC86C);
}


// ===== 8ac1c0 std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long double>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long double) =====
void __fastcall std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t>,long double>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        double __x)
{
  std::priv::__iostring __buf; // [sp+2Ch] [bp+Ch] BYREF

  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8AC86C);
}


// ===== 8ac2cc std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,long double) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        double __val)
{
  std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t>,long double>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8ac2f4 std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,double>(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,double) =====
void __fastcall std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t>,double>(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        double __x)
{
  std::priv::__iostring __buf; // [sp+2Ch] [bp+Ch] BYREF

  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8AC86C);
}


// ===== 8ac400 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,wchar_t,double) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        std::ios_base *const __f,
        wchar_t __fill,
        double __val)
{
  std::priv::__do_put_float<wchar_t,std::ostreambuf_iterator<wchar_t>,double>(retstr, __s, __f, __fill, __val);
  return retstr;
}


// ===== 8ac428 std::priv::__get_base_or_zero<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,int,std::ctype<char> const&) =====
int __fastcall std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        char __flags,
        const std::ctype<char> *const __c_type)
{
  const char *v8; // r7
  const char *v9; // r0
  char *v10; // r3
  int v11; // r0
  int v12; // r2
  int M_c; // r3
  int v14; // r6
  int v15; // r3
  int v16; // r3
  int v17; // r0
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v21; // r0
  char *v22; // r3
  int v23; // r0
  std::streambuf *v24; // r0
  char *v25; // r3
  int v26; // r0
  _BOOL4 M_eof; // r3
  std::streambuf *v28; // r0
  char *v29; // r3
  char __atoms[12]; // [sp+0h] [bp-Ch] BYREF

  v8 = std::priv::__narrow_atoms();
  v9 = std::priv::__narrow_atoms();
  (*((void (__fastcall **)(const std::ctype<char> *const, const char *, const char *, char *))__c_type->_vptr.facet + 7))(
    __c_type,
    v8,
    v9 + 5,
    __atoms);
  if ( __in_ite->_M_have_c )
  {
    M_c = (unsigned __int8)__in_ite->_M_c;
    if ( (unsigned __int8)__atoms[1] != M_c )
      goto LABEL_5;
LABEL_13:
    M_buf = __in_ite->_M_buf;
    M_gnext = __in_ite->_M_buf->_M_gnext;
    if ( M_gnext >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = M_gnext + 1;
    __in_ite->_M_have_c = 0;
    v15 = __flags & 0x38;
    v14 = 2;
    if ( v15 != 16 )
      goto LABEL_7;
LABEL_16:
    if ( std::istreambuf_iterator<char>::equal(__in_ite, __end)
      || (std::istreambuf_iterator<char>::_M_getc(__in_ite), __atoms[2] != __in_ite->_M_c) )
    {
      v16 = 64;
      v17 = 0;
    }
    else
    {
      std::istreambuf_iterator<char>::operator++(__in_ite);
      v21 = __in_ite->_M_buf;
      if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
      {
        v22 = v21->_M_gnext;
        if ( v22 >= v21->_M_gend )
          v23 = (*((int (__fastcall **)(std::streambuf *))v21->_vptr.basic_streambuf + 8))(v21);
        else
          v23 = (unsigned __int8)*v22;
        __in_ite->_M_c = v23;
        __in_ite->_M_eof = v23 == -1;
        __in_ite->_M_have_c = 1;
      }
      v24 = __end->_M_buf;
      if ( __end->_M_buf )
      {
        if ( __end->_M_have_c )
        {
          M_eof = __end->_M_eof;
        }
        else
        {
          v25 = v24->_M_gnext;
          if ( v25 >= v24->_M_gend )
            v26 = (*((int (__fastcall **)(std::streambuf *))v24->_vptr.basic_streambuf + 8))(v24);
          else
            v26 = (unsigned __int8)*v25;
          __end->_M_c = v26;
          M_eof = v26 == -1;
          __end->_M_eof = M_eof;
          __end->_M_have_c = 1;
        }
      }
      else
      {
        M_eof = __end->_M_eof;
      }
      if ( __in_ite->_M_eof != M_eof )
      {
        std::istreambuf_iterator<char>::_M_getc(__in_ite);
        if ( __atoms[3] == __in_ite->_M_c )
          goto LABEL_43;
        std::istreambuf_iterator<char>::_M_getc(__in_ite);
        if ( __atoms[4] == __in_ite->_M_c )
          goto LABEL_43;
      }
      v16 = 64;
      v17 = 1;
    }
    return v17 | v16 | v14;
  }
  v10 = __in_ite->_M_buf->_M_gnext;
  if ( v10 >= __in_ite->_M_buf->_M_gend )
    v11 = (*((int (__fastcall **)(std::streambuf *))__in_ite->_M_buf->_vptr.basic_streambuf + 8))(__in_ite->_M_buf);
  else
    v11 = (unsigned __int8)*v10;
  __in_ite->_M_eof = v11 == -1;
  __in_ite->_M_have_c = 1;
  v12 = (unsigned __int8)__atoms[1];
  M_c = (unsigned __int8)v11;
  __in_ite->_M_c = v11;
  if ( v12 == (unsigned __int8)v11 )
    goto LABEL_13;
LABEL_5:
  v14 = 0;
  if ( (unsigned __int8)__atoms[0] == M_c )
  {
    v28 = __in_ite->_M_buf;
    v29 = __in_ite->_M_buf->_M_gnext;
    if ( v29 >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v28->_vptr.basic_streambuf + 9))(v28);
    else
      v28->_M_gnext = v29 + 1;
    __in_ite->_M_have_c = 0;
    v14 = 0;
  }
  v15 = __flags & 0x38;
  if ( v15 == 16 )
    goto LABEL_16;
LABEL_7:
  if ( v15 == 32 )
  {
    v16 = 32;
    v17 = 0;
  }
  else if ( v15 == 8
         || std::istreambuf_iterator<char>::equal(__in_ite, __end)
         || (std::istreambuf_iterator<char>::_M_getc(__in_ite), __atoms[2] != __in_ite->_M_c) )
  {
    v16 = 40;
    v17 = 0;
  }
  else
  {
    std::istreambuf_iterator<char>::operator++(__in_ite);
    if ( !std::istreambuf_iterator<char>::equal(__in_ite, __end) )
    {
      std::istreambuf_iterator<char>::_M_getc(__in_ite);
      if ( __atoms[3] == __in_ite->_M_c
        || (std::istreambuf_iterator<char>::_M_getc(__in_ite), __atoms[4] == __in_ite->_M_c) )
      {
LABEL_43:
        std::istreambuf_iterator<char>::operator++(__in_ite);
        v16 = 64;
        v17 = 0;
        return v17 | v16 | v14;
      }
    }
    v16 = 32;
    v17 = 1;
  }
  return v17 | v16 | v14;
}


// ===== 8ac61c std::priv::__read_float<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::priv::__basic_iostring<char> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::ctype<wchar_t> const&,std::numpunct<wchar_t> const&) =====
void __fastcall std::priv::__read_float<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::priv::__iostring *const __buf,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        const std::ctype<wchar_t> *const __ct,
        const std::numpunct<wchar_t> *const __numpunct,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10,
        int a11,
        int a12,
        int a13,
        const std::numpunct<wchar_t> *__numpunct_0,
        int a15,
        char a16,
        int a17,
        int a18,
        int a19,
        char *a20)
{
  wchar_t *p_M_c; // r6
  int v26; // r0
  wchar_t *v27; // r2
  int M_c; // r0
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r2
  std::wstreambuf *v31; // r0
  wchar_t *v32; // r3
  wchar_t v33; // r0
  int M_c_low; // r3
  wchar_t v35; // r0
  wchar_t v36; // r2
  std::istreambuf_iterator<wchar_t> pow_E; // [sp+0h] [bp-84h] BYREF
  std::priv::__iostring *__v; // [sp+Ch] [bp-78h]
  wchar_t v39; // [sp+10h] [bp-74h]
  wchar_t v40; // [sp+14h] [bp-70h]
  int v41; // [sp+18h] [bp-6Ch]
  bool *__grouping_ok; // [sp+1Ch] [bp-68h]
  wchar_t *v43; // [sp+20h] [bp-64h]
  int v44; // [sp+24h] [bp-60h]
  wchar_t __sep; // [sp+28h] [bp-5Ch]
  int (**v46)(int); // [sp+2Ch] [bp-58h]
  wchar_t __digits[10]; // [sp+30h] [bp-54h] BYREF
  std::istreambuf_iterator<wchar_t> v48; // [sp+58h] [bp-2Ch] BYREF
  std::istreambuf_iterator<wchar_t> v49; // [sp+64h] [bp-20h] BYREF
  wchar_t v50; // [sp+70h] [bp-14h] BYREF
  wchar_t pow_e; // [sp+74h] [bp-10h] BYREF
  wchar_t Minus; // [sp+78h] [bp-Ch] BYREF
  wchar_t Plus; // [sp+7Ch] [bp-8h] BYREF
  char v54; // [sp+83h] [bp-1h] BYREF
  wchar_t __pow_e[2]; // [sp+84h] [bp+0h] BYREF
  wchar_t __pow_E; // [sp+94h] [bp+10h]
  wchar_t __pow_e_0; // [sp+98h] [bp+14h]
  std::istreambuf_iterator<wchar_t> v58; // 0:r1.12

  v44 = 16556;
  (*((void (__fastcall **)(wchar_t *, const std::numpunct<wchar_t> *const))__numpunct->_vptr.facet + 4))(
    __pow_e,
    __numpunct);
  __grouping_ok = (bool *)&v54;
  v54 = 1;
  v46 = (int (**)(int))(*((int (__fastcall **)(const std::numpunct<wchar_t> *const, char *))__numpunct->_vptr.facet + 2))(
                         __numpunct,
                         &v54);
  __sep = (*((int (__fastcall **)(const std::numpunct<wchar_t> *const))__numpunct->_vptr.facet + 3))(__numpunct);
  v43 = __digits;
  std::priv::_Initialize_get_float(__ct, &Plus, &Minus, &pow_e, &v50, __digits);
  p_M_c = &__end->_M_c;
  pow_E = *__end;
  __v = __buf;
  v39 = Plus;
  v40 = Minus;
  std::priv::__copy_sign<std::istreambuf_iterator<wchar_t>,wchar_t>(&v49, *__in_ite, pow_E, __buf, Plus, Minus);
  *__in_ite = v49;
  pow_E._M_buf = (std::wstreambuf *)__buf;
  pow_E._M_c = (wchar_t)v43;
  if ( __pow_e_0 == __pow_E )
  {
    __grouping_ok = (bool *)std::priv::__copy_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(
                              __in_ite,
                              *__end,
                              __buf,
                              v43);
  }
  else
  {
    *(_DWORD *)&pow_E._M_eof = __sep;
    v39 = (wchar_t)__grouping_ok;
    __grouping_ok = (bool *)std::priv::__copy_grouped_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(
                              __in_ite,
                              *__end,
                              __buf,
                              v43,
                              __sep,
                              (const std::string *const)__pow_e,
                              __grouping_ok,
                              v40,
                              v41);
  }
  if ( std::istreambuf_iterator<wchar_t>::equal(__in_ite, __end)
    || (__in_ite->_M_have_c
      ? (M_c = __in_ite->_M_c)
      : ((v27 = __in_ite->_M_buf->_M_gnext, v27 >= __in_ite->_M_buf->_M_gend)
       ? (M_c = (*((int (__fastcall **)(std::wstreambuf *))__in_ite->_M_buf->_vptr.basic_streambuf + 8))(__in_ite->_M_buf))
       : (M_c = *v27),
         __in_ite->_M_c = M_c,
         __in_ite->_M_eof = M_c == -1,
         __in_ite->_M_have_c = 1),
        v46 != (int (**)(int))M_c) )
  {
    v26 = 0;
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__buf, 46);
    M_buf = __in_ite->_M_buf;
    M_gnext = __in_ite->_M_buf->_M_gnext;
    if ( M_gnext >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = M_gnext + 1;
    __in_ite->_M_have_c = 0;
    pow_E._M_buf = (std::wstreambuf *)__buf;
    pow_E._M_c = (wchar_t)v43;
    v26 = std::priv::__copy_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(__in_ite, *__end, __buf, v43);
  }
  if ( __grouping_ok || (__grouping_ok = nullptr, v26) )
  {
    if ( !std::istreambuf_iterator<wchar_t>::equal(__in_ite, __end)
      && ((std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite), pow_e == __in_ite->_M_c)
       || (std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite), v50 == __in_ite->_M_c)) )
    {
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__buf, 101);
      v31 = __in_ite->_M_buf;
      v32 = __in_ite->_M_buf->_M_gnext;
      if ( v32 >= __in_ite->_M_buf->_M_gend )
        (*((void (__fastcall **)(std::wstreambuf *))v31->_vptr.basic_streambuf + 9))(v31);
      else
        v31->_M_gnext = v32 + 1;
      __in_ite->_M_have_c = 0;
      pow_E = *__end;
      __v = __buf;
      v39 = Plus;
      v40 = Minus;
      std::priv::__copy_sign<std::istreambuf_iterator<wchar_t>,wchar_t>(&v48, *__in_ite, pow_E, __buf, Plus, Minus);
      *__in_ite = v48;
      pow_E._M_buf = (std::wstreambuf *)__buf;
      v58._M_buf = __end->_M_buf;
      pow_E._M_c = (wchar_t)v43;
      *(_QWORD *)&v58._M_c = *(_QWORD *)&__end->_M_c;
      __grouping_ok = (bool *)std::priv::__copy_digits<std::istreambuf_iterator<wchar_t>,wchar_t>(
                                __in_ite,
                                v58,
                                __buf,
                                v43);
    }
    else
    {
      __grouping_ok = (_BYTE *)(&dword_0 + 1);
    }
  }
  v43 = (wchar_t *)&__cxa_guard_release;
  __sep = (wchar_t)&strncpy;
  if ( &__cxa_guard_release == (void (**)(__guard *))&strncpy )
  {
    v33 = __digits[3];
    *(_DWORD *)__digits[3] = STACK[0x1214];
    M_c_low = LOBYTE(__in_ite->_M_c);
    *(_BYTE *)(v33 + 4) = M_c_low;
    __digits[1] = __digits[2];
    __digits[2] = (wchar_t)&pow_E + M_c_low;
    ((void (__fastcall *)(char *, std::istreambuf_iterator<wchar_t> *const))__in_ite->_M_buf->_M_pnext)(
      (char *)&pow_E + M_c_low,
      __in_ite);
    v40 = (wchar_t)&getpeername;
    v46 = &iscntrl;
    if ( &getpeername == (int (**)(int, struct sockaddr *, socklen_t *))&iscntrl )
    {
      v36 = __digits[3];
      *(_DWORD *)__digits[3] = a7;
      *(_BYTE *)(v36 + 4) = pow_E._M_eof;
      JUMPOUT(0x8AD9B0);
    }
    v35 = *(unsigned __int8 *)v40 == __digits[0];
    v40 += v35;
    __sep = v35;
    if ( v43 )
    {
      if ( v35 )
        (*(void (__fastcall **)(unsigned int *, unsigned int *))(STACK[0x1214] + 28))(&STACK[0x534], &STACK[0x1214]);
      else
        (*(void (__fastcall **)(unsigned int *, unsigned int *))(STACK[0x1214] + 24))(&STACK[0x534], &STACK[0x1214]);
    }
    else if ( __sep )
    {
      ((void (__fastcall *)(unsigned int *, std::istreambuf_iterator<wchar_t> *const))__in_ite->_M_buf->_M_locale._M_impl)(
        &STACK[0x534],
        __in_ite);
    }
    else
    {
      ((void (__fastcall *)(unsigned int *, std::istreambuf_iterator<wchar_t> *const))__in_ite->_M_buf->_M_pend)(
        &STACK[0x534],
        __in_ite);
    }
    a20 = &a16;
    JUMPOUT(0x8AD86C);
  }
  v44 = *v43 == (_DWORD)v46;
  if ( v44 )
    ++v43;
  if ( __grouping_ok )
  {
    if ( v44 )
      (*(void (__fastcall **)(unsigned int *, wchar_t *))(*p_M_c + 28))(&STACK[0x112C], p_M_c);
    else
      (*(void (__fastcall **)(unsigned int *, wchar_t *))(*p_M_c + 24))(&STACK[0x112C], p_M_c);
  }
  else if ( v44 )
  {
    (*(void (__fastcall **)(unsigned int *, wchar_t *))(pow_E._M_c + 28))(&STACK[0x112C], &pow_E._M_c);
  }
  else
  {
    (*(void (__fastcall **)(unsigned int *, wchar_t *))(pow_E._M_c + 24))(&STACK[0x112C], &pow_E._M_c);
  }
  JUMPOUT(0x8AC86C);
}


// ===== 8ac868 std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,bool,std::ios_base &,wchar_t,long double) =====
void __fastcall __noreturn std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        bool __intl,
        std::ios_base *const __str,
        wchar_t __fill,
        double __units)
{
  std::priv::__basic_iostring<wchar_t> __digits; // [sp+4D8h] [bp-D9Ch] BYREF

  while ( 1 )
    __digits._M_finish = (wchar_t *)&__digits;
}


// ===== 8ad0a0 std::money_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,bool,std::ios_base &,char,long double) =====
void __fastcall std::money_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::money_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        bool __intl,
        std::ios_base *const __str,
        char __fill,
        double __units)
{
  std::priv::__basic_iostring<char> __digits; // [sp+210h] [bp-374h] BYREF

  __digits._M_finish = (char *)&__digits;
  JUMPOUT(0x8AD86A);
}


// ===== 8ad7e0 std::money_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::do_put(std::ostreambuf_iterator<char,std::char_traits<char>>,bool,std::ios_base &,char,std::string const&) =====
void __fastcall __noreturn std::money_put<char,std::ostreambuf_iterator<char>>::do_put(
        std::ostreambuf_iterator<char> *__return_ptr retstr,
        const std::money_put<char,std::ostreambuf_iterator<char> > *const this,
        std::ostreambuf_iterator<char> __s,
        bool __intl,
        std::ios_base *const __str,
        char __fill,
        const std::string *const __digits)
{
  std::locale::facet *v8; // r4
  std::locale::facet *v9; // r5
  std::locale::facet *v10; // r0
  int (**v11)(...); // r3
  char *v12; // r1
  std::locale::facet *v13; // r6
  const std::string *M_data; // r0
  const std::string *i; // r11
  const std::string *v16; // r11
  int (**v17)(...); // r2
  int (*v18)(...); // r3
  _BYTE *v19; // r0
  int (**M_ok)(...); // r3
  char v21[4]; // [sp+2Ch] [bp-330h]
  std::locale v23; // [sp+E4h] [bp-278h] BYREF
  char v24; // [sp+EBh] [bp-271h]
  _BYTE v25[16]; // [sp+ECh] [bp-270h] BYREF
  _BYTE *v26; // [sp+FCh] [bp-260h]
  char v27; // [sp+100h] [bp-25Ch] BYREF
  char v28; // [sp+208h] [bp-154h] BYREF
  _BYTE v29[24]; // [sp+30Ch] [bp-50h] BYREF
  _BYTE v30[24]; // [sp+324h] [bp-38h] BYREF
  int v31; // [sp+33Ch] [bp-20h] BYREF

  v24 = __fill;
  std::locale::locale(&v23, &__str->_M_locale);
  v8 = std::locale::_M_use_facet(&v23, &std::ctype<char>::id);
  v9 = std::locale::_M_use_facet(&v23, &std::moneypunct<char,false>::id);
  v10 = std::locale::_M_use_facet(&v23, &std::moneypunct<char,true>::id);
  v11 = v8->_vptr.facet;
  v12 = (_BYTE *)(&word_2C + 1);
  while ( 1 )
  {
    v13 = v10;
    *(_DWORD *)v21 = v11[6](v8, v12);
    (*((void (__fastcall **)(std::locale::facet *, int))v8->_vptr.facet + 6))(v8, 43);
    (*((void (__fastcall **)(std::locale::facet *, int))v8->_vptr.facet + 6))(v8, 32);
    (*((void (__fastcall **)(std::locale::facet *, int))v8->_vptr.facet + 6))(v8, 48);
    if ( !__intl )
      break;
    (*((void (__fastcall **)(std::locale::facet *))v13->_vptr.facet + 2))(v13);
    (*((void (__fastcall **)(std::locale::facet *))v13->_vptr.facet + 3))(v13);
    (*((void (**)(void))v13->_vptr.facet + 4))();
    (*((void (__fastcall **)(std::locale::facet *))v13->_vptr.facet + 8))(v13);
    (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v13->_vptr.facet + 5))(v30, v13);
    M_data = (const std::string *)__digits->_M_start_of_storage._M_data;
    __digits = (const std::string *const)__digits->_M_finish;
    for ( i = M_data; M_data == __digits; i = M_data )
    {
      *retstr = __s;
      M_ok = (int (**)(...))__s._M_ok;
      v19 = v30;
LABEL_12:
      v18 = M_ok[5];
LABEL_13:
      v18(v19);
      M_data = (const std::string *)__digits->_M_start_of_storage._M_data;
      __digits = (const std::string *const)__digits->_M_finish;
    }
    v16 = (const std::string *)((char *)i + ((unsigned __int8)M_data->_M_buffers._M_static_buf[0] == *(_DWORD *)v21));
    if ( __intl )
    {
      if ( (unsigned __int8)M_data->_M_buffers._M_static_buf[0] == *(_DWORD *)v21 )
        (*((void (**)(void))v13->_vptr.facet + 7))();
      else
        (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v13->_vptr.facet + 6))(v29, v13);
    }
    else if ( (unsigned __int8)M_data->_M_buffers._M_static_buf[0] == *(_DWORD *)v21 )
    {
      (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v9->_vptr.facet + 7))(v29, v9);
    }
    else
    {
      (*((void (**)(void))v9->_vptr.facet + 6))();
    }
    if ( __digits == v16 )
      goto LABEL_10;
    v17 = v8[1]._vptr.facet;
    v11 = (int (**)(...))v17[(unsigned __int8)v16->_M_buffers._M_static_buf[0]];
    v8 = (std::locale::facet *)((_DWORD)v11 << 25);
    if ( ((unsigned __int8)v11 & 0x40) == 0 )
      goto LABEL_10;
    v8 = (std::locale::facet *)v16;
    do
    {
      v8 = (std::locale::facet *)((char *)v8 + 1);
      if ( v8 == (std::locale::facet *)__digits )
        goto LABEL_22;
      v11 = (int (**)(...))v17[LOBYTE(v8->_vptr.facet)];
    }
    while ( ((unsigned __int8)v11 & 0x40) != 0 );
    if ( v8 == (std::locale::facet *)v16 )
    {
LABEL_10:
      *retstr = __s;
      v18 = (int (*)(...))__s._M_ok;
      v19 = v29;
      goto LABEL_13;
    }
LABEL_22:
    __digits = (const std::string *const)v25;
    v12 = &v28;
    v26 = v25;
    v10 = (std::locale::facet *)&v27;
  }
  (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 2))(v9);
  (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 3))(v9);
  (*((void (__fastcall **)(int *, std::locale::facet *))v9->_vptr.facet + 4))(&v31, v9);
  (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 8))(v9);
  M_ok = v9->_vptr.facet;
  v19 = v30;
  goto LABEL_12;
}


// ===== 8adeec std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_put(std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,bool,std::ios_base &,wchar_t,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> const&) =====
void __fastcall std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(
        std::ostreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this,
        std::ostreambuf_iterator<wchar_t> __s,
        bool __intl,
        std::ios_base *const __str,
        std::_Locale_impl *__fill,
        const std::wstring *const __digits)
{
  std::locale::facet *v7; // r5
  std::locale::facet *v8; // r6
  std::locale::facet *v9; // r7
  wchar_t *M_data; // r2
  wchar_t *v11; // r9
  wchar_t *M_finish; // r11
  wchar_t *v13; // r4
  wchar_t v14; // [sp+2Ch] [bp-9F0h]
  char v16; // [sp+84h] [bp-998h] BYREF
  char *v17; // [sp+C4h] [bp-958h]
  std::ostreambuf_iterator<wchar_t> v18[9]; // [sp+8D4h] [bp-148h] BYREF
  _BYTE v19[160]; // [sp+91Ch] [bp-100h] BYREF
  std::ostreambuf_iterator<wchar_t> v20; // [sp+9BCh] [bp-60h] BYREF
  std::locale v21[9]; // [sp+9D8h] [bp-44h] BYREF
  int v22; // [sp+9FCh] [bp-20h] BYREF

  v20 = __s;
  v21[1]._M_impl = __fill;
  std::locale::locale(v21, &__str->_M_locale);
  v7 = std::locale::_M_use_facet(v21, &std::ctype<wchar_t>::id);
  v8 = std::locale::_M_use_facet(v21, &std::moneypunct<wchar_t,false>::id);
  v9 = std::locale::_M_use_facet(v21, &std::moneypunct<wchar_t,true>::id);
  v14 = (*((int (__fastcall **)(std::locale::facet *, int))v7->_vptr.facet + 10))(v7, 45);
  (*((void (__fastcall **)(std::locale::facet *, int))v7->_vptr.facet + 10))(v7, 43);
  (*((void (__fastcall **)(std::locale::facet *, int))v7->_vptr.facet + 10))(v7, 32);
  (*((void (__fastcall **)(std::locale::facet *, int))v7->_vptr.facet + 10))(v7, 48);
  if ( __intl )
  {
    (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 2))(v9);
    (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 3))(v9);
    (*((void (__fastcall **)(int *, std::locale::facet *))v9->_vptr.facet + 4))(&v22, v9);
    (*((void (__fastcall **)(std::locale::facet *))v9->_vptr.facet + 8))(v9);
    (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v9->_vptr.facet + 5))(v19, v9);
    M_data = __digits->_M_start_of_storage._M_data;
    v11 = M_data;
    M_finish = __digits->_M_finish;
    if ( M_data == M_finish )
      goto LABEL_16;
  }
  else
  {
    (*((void (__fastcall **)(std::locale::facet *))v8->_vptr.facet + 2))(v8);
    (*((void (__fastcall **)(std::locale::facet *))v8->_vptr.facet + 3))(v8);
    (*((void (**)(void))v8->_vptr.facet + 4))();
    (*((void (__fastcall **)(std::locale::facet *))v8->_vptr.facet + 8))(v8);
    (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v8->_vptr.facet + 5))(v19, v8);
    M_data = __digits->_M_start_of_storage._M_data;
    v11 = M_data;
    M_finish = __digits->_M_finish;
    if ( M_data == M_finish )
    {
LABEL_16:
      *retstr = v20;
      JUMPOUT(0x8AE3B4);
    }
  }
  if ( *M_data == v14 )
    ++v11;
  if ( __intl )
  {
    if ( *M_data == v14 )
    {
      (*((void (**)(void))v9->_vptr.facet + 7))();
      if ( M_finish == v11 )
        goto LABEL_19;
LABEL_11:
      v13 = v11;
      while ( (*((int (__fastcall **)(std::locale::facet *, int, wchar_t))v7->_vptr.facet + 2))(v7, 64, *v13) )
      {
        if ( M_finish == ++v13 )
          goto LABEL_14;
      }
      if ( v13 != v11 )
      {
LABEL_14:
        v17 = &v16;
        JUMPOUT(0x8AE86C);
      }
LABEL_19:
      *retstr = v20;
      std::ostreambuf_iterator<wchar_t>::operator=(v18, (wchar_t)&v20);
      JUMPOUT(0x8AE3B6);
    }
    (*((void (__fastcall **)(std::ostreambuf_iterator<wchar_t> *, std::locale::facet *))v9->_vptr.facet + 6))(v18, v9);
  }
  else if ( v14 == 1179403647 )
  {
    (*((void (__fastcall **)(std::ostreambuf_iterator<wchar_t> *, std::locale::facet *))v8->_vptr.facet + 7))(v18, v8);
  }
  else
  {
    (*((void (**)(void))v8->_vptr.facet + 6))();
  }
  if ( M_finish == v11 )
    goto LABEL_19;
  goto LABEL_11;
}


// ===== 8ae718 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get_time(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_time(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        std::priv::_WTime_Info *__err,
        const std::ios_base *__t)
{
  std::wstreambuf *M_buf; // r5
  wchar_t M_c; // r8
  int M_eof; // r9
  char M_have_c; // r10
  char *M_finish; // r11
  int *M_gnext; // r3
  int v14; // r0
  wchar_t *v15; // r3
  int v16; // r0
  int v18; // [sp+28h] [bp-Ch]

  M_buf = __s._M_buf;
  M_c = __s._M_c;
  M_eof = __s._M_eof;
  M_have_c = __s._M_have_c;
  v18 = __end._M_eof;
  M_finish = this->_M_timeinfo._M_time_format._M_finish;
  __err->_M_time_format._M_buffers._M_end_of_storage = (char *)(4
                                                              * (std::priv::__get_formatted_time<std::istreambuf_iterator<wchar_t>,wchar_t,std::priv::_WTime_Info>(
                                                                   __s,
                                                                   __end,
                                                                   this->_M_timeinfo._M_time_format._M_start_of_storage._M_data,
                                                                   M_finish,
                                                                   nullptr,
                                                                   &this->_M_timeinfo,
                                                                   __str,
                                                                   __err,
                                                                   __t) != M_finish));
  if ( M_buf && !__s._M_have_c )
  {
    M_gnext = (int *)M_buf->_M_gnext;
    if ( (wchar_t *)M_gnext >= M_buf->_M_gend )
      v14 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v14 = *M_gnext;
    M_c = v14;
    M_eof = v14 == -1;
    M_have_c = 1;
  }
  if ( __end._M_buf && !__end._M_have_c )
  {
    v15 = __end._M_buf->_M_gnext;
    if ( v15 >= __end._M_buf->_M_gend )
      v16 = (*((int (__fastcall **)(std::wstreambuf *))__end._M_buf->_vptr.basic_streambuf + 8))(__end._M_buf);
    else
      v16 = *v15;
    v18 = v16 == -1;
  }
  if ( v18 == M_eof )
    __err->_M_time_format._M_buffers._M_end_of_storage = (char *)((int)__err->_M_time_format._M_buffers._M_end_of_storage
                                                                | 2);
  retstr->_M_eof = M_eof;
  retstr->_M_buf = M_buf;
  retstr->_M_c = M_c;
  retstr->_M_have_c = M_have_c;
  return retstr;
}


// ===== 8ae810 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get_year(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<char> *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_get_year(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::time_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const a5,
        int *const __err,
        tm *__t)
{
  int *v8; // r6
  tm *v9; // r7
  char *M_gnext; // r3
  int v11; // r0
  char *v12; // r3
  int v13; // r0
  int v14; // r0
  std::istreambuf_iterator<char> __sa; // [sp+0h] [bp-Ch] BYREF

  __sa = __s;
  v8 = __err;
  v9 = __t;
  if ( __s._M_buf && !__sa._M_have_c )
  {
    M_gnext = __s._M_buf->_M_gnext;
    if ( M_gnext >= __s._M_buf->_M_gend )
      v11 = (*((int (__fastcall **)(std::streambuf *, const std::time_get<char,std::istreambuf_iterator<char> > *const))__s._M_buf->_vptr.basic_streambuf
             + 8))(
              __s._M_buf,
              this);
    else
      v11 = (unsigned __int8)*M_gnext;
    __sa._M_c = v11;
    __sa._M_eof = v11 == -1;
    __sa._M_have_c = 1;
  }
  if ( __end._M_buf && !__end._M_have_c )
  {
    v12 = __end._M_buf->_M_gnext;
    if ( v12 >= __end._M_buf->_M_gend )
      v13 = (*((int (**)(void))__end._M_buf->_vptr.basic_streambuf + 8))();
    else
      v13 = (unsigned __int8)*v12;
    __end._M_c = v13;
    __end._M_eof = v13 == -1;
    __end._M_have_c = 1;
    if ( __sa._M_eof != __end._M_eof )
      goto LABEL_11;
LABEL_14:
    *v8 = 6;
    goto LABEL_15;
  }
  if ( __sa._M_eof == __end._M_eof )
    goto LABEL_14;
LABEL_11:
  std::priv::__get_decimal_integer<std::istreambuf_iterator<char>,int,char>(&__sa, &__end, &v9->tm_year, nullptr);
  v9->tm_year -= 1900;
  *v8 = 4 * (v14 == 0);
  if ( std::istreambuf_iterator<char>::equal(&__sa, &__end) )
    *v8 |= 2u;
LABEL_15:
  *retstr = __sa;
  return retstr;
}


// ===== 8ae8e0 std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,std::ctype<wchar_t> const&) =====
int __fastcall std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        char __flags,
        const std::ctype<wchar_t> *const __c_type)
{
  const char *v8; // r7
  const char *v9; // r0
  wchar_t *v10; // r3
  int M_c; // r0
  wchar_t v12; // r3
  int v13; // r6
  int v14; // r3
  int v15; // r3
  int v16; // r0
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  std::wstreambuf *v23; // r0
  wchar_t *v24; // r3
  wchar_t v25; // r0
  _BOOL4 M_eof; // r3
  std::wstreambuf *v27; // r0
  wchar_t *v28; // r3
  wchar_t __atoms[6]; // [sp+4h] [bp-18h] BYREF

  v8 = std::priv::__narrow_atoms();
  v9 = std::priv::__narrow_atoms();
  (*((void (__fastcall **)(const std::ctype<wchar_t> *const, const char *, const char *, wchar_t *))__c_type->_vptr.facet
   + 11))(
    __c_type,
    v8,
    v9 + 5,
    __atoms);
  if ( __in_ite->_M_have_c )
  {
    M_c = __in_ite->_M_c;
    if ( __atoms[1] != M_c )
      goto LABEL_5;
LABEL_13:
    M_buf = __in_ite->_M_buf;
    M_gnext = __in_ite->_M_buf->_M_gnext;
    if ( M_gnext >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
    else
      M_buf->_M_gnext = M_gnext + 1;
    __in_ite->_M_have_c = 0;
    v14 = __flags & 0x38;
    v13 = 2;
    if ( v14 != 16 )
      goto LABEL_7;
    goto LABEL_16;
  }
  v10 = __in_ite->_M_buf->_M_gnext;
  if ( v10 >= __in_ite->_M_buf->_M_gend )
    M_c = (*((int (__fastcall **)(std::wstreambuf *))__in_ite->_M_buf->_vptr.basic_streambuf + 8))(__in_ite->_M_buf);
  else
    M_c = *v10;
  __in_ite->_M_eof = M_c == -1;
  __in_ite->_M_have_c = 1;
  v12 = __atoms[1];
  __in_ite->_M_c = M_c;
  if ( v12 == M_c )
    goto LABEL_13;
LABEL_5:
  v13 = 0;
  if ( __atoms[0] == M_c )
  {
    v27 = __in_ite->_M_buf;
    v28 = __in_ite->_M_buf->_M_gnext;
    if ( v28 >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))v27->_vptr.basic_streambuf + 9))(v27);
    else
      v27->_M_gnext = v28 + 1;
    __in_ite->_M_have_c = 0;
    v13 = 0;
  }
  v14 = __flags & 0x38;
  if ( v14 != 16 )
  {
LABEL_7:
    if ( v14 == 32 )
    {
      v15 = 32;
      v16 = 0;
    }
    else if ( v14 == 8
           || std::istreambuf_iterator<wchar_t>::equal(__in_ite, __end)
           || (std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite), __atoms[2] != __in_ite->_M_c) )
    {
      v15 = 40;
      v16 = 0;
    }
    else
    {
      std::istreambuf_iterator<wchar_t>::operator++(__in_ite);
      v20 = __in_ite->_M_buf;
      if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
      {
        v21 = v20->_M_gnext;
        if ( v21 >= v20->_M_gend )
          v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
        else
          v22 = *v21;
        __in_ite->_M_c = v22;
        __in_ite->_M_eof = v22 == -1;
        __in_ite->_M_have_c = 1;
      }
      v23 = __end->_M_buf;
      if ( __end->_M_buf )
      {
        if ( __end->_M_have_c )
        {
          M_eof = __end->_M_eof;
        }
        else
        {
          v24 = v23->_M_gnext;
          if ( v24 >= v23->_M_gend )
            v25 = (*((int (__fastcall **)(std::wstreambuf *))v23->_vptr.basic_streambuf + 8))(v23);
          else
            v25 = *v24;
          __end->_M_c = v25;
          M_eof = v25 == -1;
          __end->_M_eof = M_eof;
          __end->_M_have_c = 1;
        }
      }
      else
      {
        M_eof = __end->_M_eof;
      }
      if ( __in_ite->_M_eof != M_eof )
      {
        std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite);
        if ( __atoms[3] == __in_ite->_M_c )
          goto LABEL_43;
        std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite);
        if ( __atoms[4] == __in_ite->_M_c )
          goto LABEL_43;
      }
      v15 = 32;
      v16 = 1;
    }
    return v16 | v15 | v13;
  }
LABEL_16:
  if ( std::istreambuf_iterator<wchar_t>::equal(__in_ite, __end)
    || (std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite), __atoms[2] != __in_ite->_M_c) )
  {
    v15 = 64;
    v16 = 0;
  }
  else
  {
    std::istreambuf_iterator<wchar_t>::operator++(__in_ite);
    if ( !std::istreambuf_iterator<wchar_t>::equal(__in_ite, __end) )
    {
      std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite);
      if ( __atoms[3] == __in_ite->_M_c
        || (std::istreambuf_iterator<wchar_t>::_M_getc(__in_ite), __atoms[4] == __in_ite->_M_c) )
      {
LABEL_43:
        std::istreambuf_iterator<wchar_t>::operator++(__in_ite);
        v15 = 64;
        v16 = 0;
        return v16 | v15 | v13;
      }
    }
    v15 = 64;
    v16 = 1;
  }
  return v16 | v15 | v13;
}


// ===== 8aead0 std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,ulong long &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned long long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int64 *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned long long,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8AE9AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8AEF3A);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8aecbc std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,ulong long &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int64 *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned long long,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8aecec std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,void *&) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        std::ios_base *__p)
{
  int *v7; // r5
  unsigned __int64 __val; // [sp+10h] [bp-Ch] BYREF
  int varg_r2; // [sp+28h] [bp+Ch] BYREF

  v7 = __err;
  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned long long,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    &__val,
    nullptr);
  if ( (*v7 & 4) == 0 )
    __p->_vptr.ios_base = (int (**)(...))__val;
  return retstr;
}


// ===== 8aed28 std::priv::__get_monetary_value<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::back_insert_iterator<std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::back_insert_iterator<std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>>,std::ctype<wchar_t> const&,wchar_t,int,wchar_t,std::string const&,bool &) =====
int __fastcall std::priv::__get_monetary_value<std::istreambuf_iterator<wchar_t>,std::back_insert_iterator<std::wstring>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> __last,
        std::back_insert_iterator<std::wstring > __out_ite,
        const std::ctype<wchar_t> *const _c_type,
        wchar_t __point,
        int __frac_digits,
        wchar_t __sep,
        const std::string *const __grouping,
        bool *const __syntax_ok)
{
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  wchar_t *v12; // r3
  wchar_t *v14; // r3
  char *v15; // r5
  char v16; // r7
  wchar_t *v17; // r3
  wchar_t *v18; // r3
  int v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  char *M_data; // r2
  char *M_finish; // r3
  char *v24; // r1
  int i; // r4
  int M_c; // r1
  wchar_t *v27; // r3
  int v28; // r2
  wchar_t *v29; // r3
  std::wstreambuf *v30; // r0
  wchar_t *v31; // r3
  int j; // r5
  bool v33; // r2
  wchar_t *v34; // r3
  int v35; // r2
  int v36; // r1
  wchar_t *v37; // r3
  int v38; // r0
  wchar_t v39; // r0
  int v40; // r0
  int v41; // r2
  std::istreambuf_iterator<wchar_t> __lasta; // [sp+14h] [bp+0h] BYREF
  std::istreambuf_iterator<wchar_t> v43; // [sp+24h] [bp+10h] BYREF
  std::istreambuf_iterator<wchar_t> v44; // [sp+30h] [bp+1Ch] BYREF
  char __group_sizes[128]; // [sp+3Ch] [bp+28h] BYREF

  __lasta = __last;
  M_buf = __first->_M_buf;
  if ( M_buf && !__first->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v39 = *M_gnext;
    else
      v39 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __first->_M_c = v39;
    __first->_M_eof = v39 == -1;
    __first->_M_have_c = 1;
  }
  if ( !__lasta._M_buf || __lasta._M_have_c )
  {
    if ( __first->_M_eof == __lasta._M_eof )
      return 0;
  }
  else
  {
    v12 = __lasta._M_buf->_M_gnext;
    if ( v12 < __lasta._M_buf->_M_gend )
      v38 = *v12;
    else
      v38 = (*((int (**)(void))__lasta._M_buf->_vptr.basic_streambuf + 8))();
    __lasta._M_c = v38;
    __lasta._M_eof = v38 == -1;
    __lasta._M_have_c = 1;
    if ( __first->_M_eof == __lasta._M_eof )
      return 0;
  }
  if ( !__first->_M_have_c )
  {
    v14 = __first->_M_buf->_M_gnext;
    if ( v14 < __first->_M_buf->_M_gend )
      v41 = *v14;
    else
      v41 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
    __first->_M_eof = v41 == -1;
    __first->_M_c = v41;
    __first->_M_have_c = 1;
  }
  if ( !(*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))_c_type->_vptr.facet + 2))(_c_type, 64) )
    return 0;
  v15 = __grouping->_M_start_of_storage._M_data != __grouping->_M_finish ? __group_sizes : nullptr;
  v16 = 0;
LABEL_22:
  if ( !std::istreambuf_iterator<wchar_t>::equal(__first, &__lasta) )
  {
    while ( 1 )
    {
      if ( __first->_M_have_c )
      {
        if ( (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int, wchar_t))_c_type->_vptr.facet + 2))(
               _c_type,
               64,
               __first->_M_c) )
        {
          goto LABEL_47;
        }
      }
      else
      {
        v17 = __first->_M_buf->_M_gnext;
        if ( v17 < __first->_M_buf->_M_gend )
          v28 = *v17;
        else
          v28 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
        __first->_M_have_c = 1;
        __first->_M_c = v28;
        __first->_M_eof = v28 == -1;
        if ( (*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))_c_type->_vptr.facet + 2))(_c_type, 64) )
        {
LABEL_47:
          std::istreambuf_iterator<wchar_t>::operator++(&v44, __first, 0);
          ++v16;
          M_c = v44._M_c;
          if ( !v44._M_have_c )
          {
            v27 = v44._M_buf->_M_gnext;
            if ( v27 >= v44._M_buf->_M_gend )
              M_c = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))v44._M_buf->_vptr.basic_streambuf + 8))(
                      v44._M_buf,
                      v44._M_c);
            else
              M_c = *v27;
            v44._M_eof = M_c == -1;
          }
          std::wstring::push_back(__out_ite.container, M_c);
          goto LABEL_22;
        }
      }
      if ( v15 )
      {
        if ( __first->_M_have_c )
        {
          v19 = __first->_M_c;
        }
        else
        {
          v18 = __first->_M_buf->_M_gnext;
          v19 = v18 >= __first->_M_buf->_M_gend
              ? (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf)
              : *v18;
          __first->_M_eof = v19 == -1;
          __first->_M_c = v19;
          __first->_M_have_c = 1;
        }
        if ( __sep == v19 )
        {
          *v15 = v16;
          v20 = __first->_M_buf;
          ++v15;
          v21 = __first->_M_buf->_M_gnext;
          if ( v21 >= __first->_M_buf->_M_gend )
            (*((void (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 9))(v20);
          else
            v20->_M_gnext = v21 + 1;
          __first->_M_have_c = 0;
          v16 = 0;
          if ( !std::istreambuf_iterator<wchar_t>::equal(__first, &__lasta) )
            continue;
        }
      }
      break;
    }
  }
  M_data = __grouping->_M_start_of_storage._M_data;
  M_finish = __grouping->_M_finish;
  if ( M_data == M_finish )
  {
    *__syntax_ok = 1;
    goto LABEL_63;
  }
  v24 = __group_sizes;
  if ( v15 != __group_sizes )
  {
    *v15 = v16;
    v24 = v15 + 1;
    M_data = __grouping->_M_start_of_storage._M_data;
    M_finish = __grouping->_M_finish;
  }
  *__syntax_ok = std::priv::__valid_grouping(__group_sizes, v24, M_data, M_finish);
  if ( std::istreambuf_iterator<wchar_t>::equal(__first, &__lasta)
    || (!__first->_M_have_c
      ? ((v29 = __first->_M_buf->_M_gnext, v29 < __first->_M_buf->_M_gend)
       ? (v40 = *v29)
       : (v40 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf)),
         __first->_M_eof = v40 == -1,
         __first->_M_c = v40,
         __first->_M_have_c = 1)
      : (v40 = __first->_M_c),
        __point != v40) )
  {
    if ( __frac_digits )
    {
      for ( i = 0; i != __frac_digits; ++i )
        std::wstring::push_back(__out_ite.container, 0x30u);
    }
    return 1;
  }
  else
  {
LABEL_63:
    v30 = __first->_M_buf;
    v31 = __first->_M_buf->_M_gnext;
    if ( v31 >= __first->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))v30->_vptr.basic_streambuf + 9))(v30);
    else
      v30->_M_gnext = v31 + 1;
    __first->_M_have_c = 0;
    for ( j = 0; !std::istreambuf_iterator<wchar_t>::equal(__first, &__lasta); ++j )
    {
      if ( !__first->_M_have_c )
      {
        v34 = __first->_M_buf->_M_gnext;
        if ( v34 >= __first->_M_buf->_M_gend )
          v35 = (*((int (__fastcall **)(std::wstreambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
        else
          v35 = *v34;
        __first->_M_eof = v35 == -1;
        __first->_M_c = v35;
        __first->_M_have_c = 1;
      }
      if ( !(*((int (__fastcall **)(const std::ctype<wchar_t> *const, int))_c_type->_vptr.facet + 2))(_c_type, 64) )
        break;
      std::istreambuf_iterator<wchar_t>::operator++(&v43, __first, 0);
      v36 = v43._M_c;
      if ( !v43._M_have_c )
      {
        v37 = v43._M_buf->_M_gnext;
        if ( v37 >= v43._M_buf->_M_gend )
          v36 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))v43._M_buf->_vptr.basic_streambuf + 8))(
                  v43._M_buf,
                  v43._M_c);
        else
          v36 = *v37;
        v43._M_eof = v36 == -1;
      }
      std::wstring::push_back(__out_ite.container, v36);
    }
    v33 = 0;
    if ( *__syntax_ok )
      v33 = __frac_digits == j;
    *__syntax_ok = v33;
    return 1;
  }
}


// ===== 8af0b8 std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,long long &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,long long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        __int64 *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__true_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,long long,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8AF9AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8AEF3A);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8af2a4 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,long long &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        __int64 *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,long long,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8af2d4 std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,long &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        int *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__true_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,long,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8AF9AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8AEF3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8af4b8 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,long &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        int *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,long,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8af4e8 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get_time(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<char> *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_get_time(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::time_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        tm *__t)
{
  std::streambuf *M_buf; // r5
  int M_eof; // r8
  _BOOL4 M_have_c; // r9
  int v11; // r11
  char *M_finish; // r10
  char *M_gnext; // r3
  int v14; // r0
  char *v15; // r3
  int v16; // r0
  char M_c; // [sp+20h] [bp-14h]

  M_buf = __s._M_buf;
  M_c = __s._M_c;
  M_eof = __s._M_eof;
  M_have_c = __s._M_have_c;
  v11 = __end._M_eof;
  M_finish = this->_M_timeinfo._M_time_format._M_finish;
  *__err = 4
         * (std::priv::__get_formatted_time<std::istreambuf_iterator<char>,char,std::priv::_Time_Info>(
              __s,
              __end,
              this->_M_timeinfo._M_time_format._M_start_of_storage._M_data,
              M_finish,
              nullptr,
              &this->_M_timeinfo,
              __str,
              __err,
              __t) != M_finish);
  if ( M_buf && !M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext >= M_buf->_M_gend )
      v14 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v14 = (unsigned __int8)*M_gnext;
    M_c = v14;
    M_eof = v14 == -1;
    LOBYTE(M_have_c) = 1;
  }
  if ( __end._M_buf && !__end._M_have_c )
  {
    v15 = __end._M_buf->_M_gnext;
    if ( v15 >= __end._M_buf->_M_gend )
      v16 = (*((int (__fastcall **)(std::streambuf *))__end._M_buf->_vptr.basic_streambuf + 8))(__end._M_buf);
    else
      v16 = (unsigned __int8)*v15;
    v11 = v16 == -1;
  }
  if ( v11 == M_eof )
    *__err |= 2u;
  retstr->_M_eof = M_eof;
  retstr->_M_buf = M_buf;
  retstr->_M_c = M_c;
  retstr->_M_have_c = M_have_c;
  return retstr;
}


// ===== 8af5d4 std::priv::__do_get_alphabool<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,bool &,wchar_t *) =====
void __fastcall __noreturn std::priv::__do_get_alphabool<std::istreambuf_iterator<wchar_t>,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::wstring *__in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        unsigned int *__err,
        bool *const __x,
        wchar_t *a7)
{
  std::locale::facet *v9; // r8
  int v10; // r8
  unsigned int v11; // r10
  _BOOL4 v12; // r11
  _BOOL4 v13; // r9
  std::wstreambuf *v14; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *M_buf; // r0
  wchar_t *v17; // r3
  _BOOL4 M_eof; // r3
  wchar_t *v19; // r3
  wchar_t *v20; // r3
  std::wstreambuf *v21; // r0
  wchar_t *v22; // r3
  std::wstreambuf *v23; // r0
  wchar_t *v24; // r3
  wchar_t v25; // r0
  unsigned int v26; // r3
  wchar_t *v27; // r3
  int v28; // r3
  std::wstreambuf *v29; // r0
  wchar_t v30; // r0
  wchar_t v31; // r0
  unsigned int v32; // r2
  bool v33; // cf
  std::wstring *p_truename; // r1
  int v35; // r2
  std::istreambuf_iterator<wchar_t> *i; // r0
  wchar_t v37; // r0
  int v38; // r0
  int v39; // r0
  std::wstring __falsename; // [sp+Ch] [bp-90h] BYREF
  std::wstring __truename; // [sp+54h] [bp-48h] BYREF
  std::locale v43; // [sp+9Ch] [bp+0h] BYREF

  std::locale::locale(&v43, &__str->_M_locale);
  v9 = std::locale::_M_use_facet(&v43, &std::numpunct<wchar_t>::id);
  std::locale::~locale(&v43);
  (*((void (__fastcall **)(std::wstring *))v9->_vptr.facet + 5))(&__truename);
  (*((void (__fastcall **)(std::wstring *, std::locale::facet *))v9->_vptr.facet + 6))(&__falsename, v9);
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 1;
  while ( 1 )
  {
    v14 = (std::wstreambuf *)__in_ite->_M_buffers._M_static_buf[0];
    if ( __in_ite->_M_buffers._M_static_buf[0] && !BYTE1(__in_ite->_M_buffers._M_static_buf[2]) )
    {
      M_gnext = v14->_M_gnext;
      if ( M_gnext < v14->_M_gend )
        v31 = *M_gnext;
      else
        v31 = (*((int (__fastcall **)(std::wstreambuf *))v14->_vptr.basic_streambuf + 8))(v14);
      __in_ite->_M_buffers._M_static_buf[1] = v31;
      LOBYTE(__in_ite->_M_buffers._M_static_buf[2]) = v31 == -1;
      BYTE1(__in_ite->_M_buffers._M_static_buf[2]) = 1;
    }
    M_buf = __end->_M_buf;
    if ( !__end->_M_buf || __end->_M_have_c )
    {
      M_eof = __end->_M_eof;
    }
    else
    {
      v17 = M_buf->_M_gnext;
      if ( v17 < M_buf->_M_gend )
        v30 = *v17;
      else
        v30 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      __end->_M_c = v30;
      M_eof = v30 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
    }
    if ( LOBYTE(__in_ite->_M_buffers._M_static_buf[2]) == M_eof )
      goto LABEL_30;
    if ( BYTE1(__in_ite->_M_buffers._M_static_buf[2]) )
    {
      v28 = __in_ite->_M_buffers._M_static_buf[1];
      v29 = (std::wstreambuf *)__in_ite->_M_buffers._M_static_buf[0];
    }
    else
    {
      v29 = (std::wstreambuf *)__in_ite->_M_buffers._M_static_buf[0];
      v19 = *(wchar_t **)(__in_ite->_M_buffers._M_static_buf[0] + 8);
      if ( (unsigned int)v19 < *(_DWORD *)(__in_ite->_M_buffers._M_static_buf[0] + 12) )
      {
        v28 = *v19;
      }
      else
      {
        v28 = (*((int (__fastcall **)(std::wstreambuf *))v29->_vptr.basic_streambuf + 8))(v29);
        v29 = (std::wstreambuf *)__in_ite->_M_buffers._M_static_buf[0];
      }
      LOBYTE(__in_ite->_M_buffers._M_static_buf[2]) = v28 == -1;
      __in_ite->_M_buffers._M_static_buf[1] = v28;
      BYTE1(__in_ite->_M_buffers._M_static_buf[2]) = 1;
    }
    if ( v13 )
      v13 = __truename._M_start_of_storage._M_data[v10] == v28;
    if ( v12 )
      v12 = __falsename._M_start_of_storage._M_data[v10] == v28;
    ++v11;
    if ( v13 )
    {
      if ( v11 >= __truename._M_finish - __truename._M_start_of_storage._M_data )
        goto LABEL_27;
      if ( !v12 )
        goto LABEL_55;
    }
    else if ( !v12 )
    {
LABEL_27:
      v20 = v29->_M_gnext;
      if ( v20 >= v29->_M_gend )
        goto LABEL_53;
      goto LABEL_28;
    }
    if ( v11 >= __falsename._M_finish - __falsename._M_start_of_storage._M_data )
    {
      v20 = v29->_M_gnext;
      v12 = 1;
      if ( v20 >= v29->_M_gend )
      {
LABEL_53:
        (*((void (__fastcall **)(std::wstreambuf *))v29->_vptr.basic_streambuf + 9))(v29);
        goto LABEL_29;
      }
LABEL_28:
      v29->_M_gnext = v20 + 1;
LABEL_29:
      BYTE1(__in_ite->_M_buffers._M_static_buf[2]) = 0;
LABEL_30:
      if ( v13 )
        v13 = v11 >= __truename._M_finish - __truename._M_start_of_storage._M_data;
      if ( v12 )
        v12 = v11 >= __falsename._M_finish - __falsename._M_start_of_storage._M_data;
      if ( v13 || v12 )
      {
        *__err = 0;
        *__x = v13;
      }
      else
      {
        *__err = 4;
      }
      v21 = (std::wstreambuf *)__in_ite->_M_buffers._M_static_buf[0];
      if ( __in_ite->_M_buffers._M_static_buf[0] && !BYTE1(__in_ite->_M_buffers._M_static_buf[2]) )
      {
        v22 = v21->_M_gnext;
        if ( v22 < v21->_M_gend )
          v37 = *v22;
        else
          v37 = (*((int (__fastcall **)(std::wstreambuf *))v21->_vptr.basic_streambuf + 8))(v21);
        __in_ite->_M_buffers._M_static_buf[1] = v37;
        LOBYTE(__in_ite->_M_buffers._M_static_buf[2]) = v37 == -1;
        BYTE1(__in_ite->_M_buffers._M_static_buf[2]) = 1;
      }
      v23 = __end->_M_buf;
      if ( !__end->_M_buf || __end->_M_have_c )
      {
        v26 = __end->_M_eof;
      }
      else
      {
        v24 = v23->_M_gnext;
        if ( v24 >= v23->_M_gend )
          v25 = (*((int (__fastcall **)(std::wstreambuf *))v23->_vptr.basic_streambuf + 8))(v23);
        else
          v25 = *v24;
        __end->_M_c = v25;
        v26 = v25 == -1;
        __end->_M_eof = v26;
        __end->_M_have_c = 1;
      }
      v32 = LOBYTE(__in_ite->_M_buffers._M_static_buf[2]);
      v33 = v32 >= v26;
      if ( v32 == v26 )
      {
        v26 = *__err | 2;
        *__err = v26;
      }
      p_truename = __in_ite;
      v35 = 10;
      for ( i = retstr; ; i = (std::istreambuf_iterator<wchar_t> *)v11 )
      {
        if ( v33 )
          v38 = ((int (__fastcall *)(std::istreambuf_iterator<wchar_t> *, std::wstring *, int))i->_M_buf[1]._vptr.basic_streambuf)(
                  i,
                  p_truename,
                  v35);
        else
          v38 = *(unsigned __int8 *)v26;
        LOBYTE(__falsename._M_buffers._M_static_buf[1]) = v38;
        v39 = v38 + 1;
        v26 = v39 == 0;
        BYTE1(__falsename._M_buffers._M_static_buf[1]) = v39 == 0;
        BYTE2(__falsename._M_buffers._M_static_buf[1]) = 1;
        v33 = __PAIR64__(BYTE1(__truename._M_buffers._M_static_buf[1]), v39) != 0;
        if ( BYTE1(__truename._M_buffers._M_static_buf[1]) == v26 )
        {
          v26 = *(_DWORD *)(v10 * 4) | 2;
          *(_DWORD *)(v10 * 4) = v26;
        }
        v35 = 7;
        p_truename = &__truename;
      }
    }
LABEL_55:
    v27 = v29->_M_gnext;
    if ( v27 >= v29->_M_gend )
      (*((void (__fastcall **)(std::wstreambuf *))v29->_vptr.basic_streambuf + 9))(v29);
    else
      v29->_M_gnext = v27 + 1;
    BYTE1(__in_ite->_M_buffers._M_static_buf[2]) = 0;
    ++v10;
  }
}


// ===== 8af858 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,bool &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __s,
        unsigned int *__err,
        bool *const __x)
{
  unsigned int *v8; // r5
  bool *v9; // r6
  std::istreambuf_iterator<wchar_t> v11; // [sp+10h] [bp-10h] BYREF
  unsigned int __val; // [sp+1Ch] [bp-4h] BYREF
  int varg_r2; // [sp+30h] [bp+10h] BYREF

  v8 = __err;
  v9 = __x;
  if ( (__s->_M_fmtflags & 0x100) != 0 )
    std::priv::__do_get_alphabool<std::istreambuf_iterator<wchar_t>,wchar_t>(
      retstr,
      (std::wstring *)&varg_r2,
      &__end,
      __s,
      __err,
      __x,
      nullptr);
  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,long,wchar_t>(
    &v11,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __s,
    (int *const)__err,
    (int *const)&__val,
    nullptr);
  if ( (*v8 & 4) == 0 )
  {
    if ( __val < 2 )
      *v9 = __val;
    else
      *v8 |= 4u;
  }
  *retstr = v11;
  return retstr;
}


// ===== 8af8d0 std::priv::__do_get_alphabool<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,bool &,char *) =====
void __fastcall std::priv::__do_get_alphabool<std::istreambuf_iterator<char>,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        bool *const __x,
        char *a7)
{
  std::locale::facet *v9; // r8
  unsigned int v10; // r8
  _BOOL4 v11; // r10
  _BOOL4 v12; // r9
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 M_eof; // r3
  char *v18; // r3
  char *v19; // r3
  std::streambuf *v20; // r0
  char *v21; // r3
  std::streambuf *v22; // r0
  char *v23; // r3
  int v24; // r0
  _BOOL4 v25; // r3
  char *v26; // r3
  int M_c; // r3
  std::streambuf *v28; // r0
  int v29; // r1
  int v30; // r0
  int v31; // r0
  int v32; // r0
  std::locale v33; // [sp+18h] [bp-3Ch] BYREF
  std::string __falsename; // [sp+1Ch] [bp-38h] BYREF
  std::string __truename; // [sp+34h] [bp-20h] BYREF

  std::locale::locale(&v33, &__str->_M_locale);
  v9 = std::locale::_M_use_facet(&v33, &std::numpunct<char>::id);
  std::locale::~locale(&v33);
  (*((void (__fastcall **)(std::string *, std::locale::facet *))v9->_vptr.facet + 5))(&__truename, v9);
  (*((void (__fastcall **)(std::string *))v9->_vptr.facet + 6))(&__falsename);
  v10 = 0;
  v11 = 1;
  v12 = 1;
  while ( 1 )
  {
    M_buf = __in_ite->_M_buf;
    if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
    {
      M_gnext = M_buf->_M_gnext;
      if ( M_gnext < M_buf->_M_gend )
        v31 = (unsigned __int8)*M_gnext;
      else
        v31 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      __in_ite->_M_c = v31;
      __in_ite->_M_eof = v31 == -1;
      __in_ite->_M_have_c = 1;
    }
    v15 = __end->_M_buf;
    if ( !__end->_M_buf || __end->_M_have_c )
    {
      M_eof = __end->_M_eof;
    }
    else
    {
      v16 = v15->_M_gnext;
      if ( v16 < v15->_M_gend )
        v30 = (unsigned __int8)*v16;
      else
        v30 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
      __end->_M_c = v30;
      M_eof = v30 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
    }
    if ( __in_ite->_M_eof == M_eof )
      goto LABEL_30;
    if ( __in_ite->_M_have_c )
    {
      M_c = (unsigned __int8)__in_ite->_M_c;
      v28 = __in_ite->_M_buf;
    }
    else
    {
      v28 = __in_ite->_M_buf;
      v18 = __in_ite->_M_buf->_M_gnext;
      if ( v18 < __in_ite->_M_buf->_M_gend )
      {
        v29 = (unsigned __int8)*v18;
      }
      else
      {
        v29 = (*((int (__fastcall **)(std::streambuf *))v28->_vptr.basic_streambuf + 8))(v28);
        v28 = __in_ite->_M_buf;
      }
      M_c = (unsigned __int8)v29;
      __in_ite->_M_c = v29;
      __in_ite->_M_eof = v29 == -1;
      __in_ite->_M_have_c = 1;
    }
    if ( v12 )
      v12 = (unsigned __int8)__truename._M_start_of_storage._M_data[v10] == M_c;
    if ( v11 )
      v11 = (unsigned __int8)__falsename._M_start_of_storage._M_data[v10] == M_c;
    ++v10;
    if ( v12 )
    {
      if ( v10 >= __truename._M_finish - __truename._M_start_of_storage._M_data )
        goto LABEL_27;
      if ( !v11 )
        goto LABEL_55;
    }
    else if ( !v11 )
    {
LABEL_27:
      v19 = v28->_M_gnext;
      if ( v19 >= v28->_M_gend )
        goto LABEL_53;
      goto LABEL_28;
    }
    if ( v10 >= __falsename._M_finish - __falsename._M_start_of_storage._M_data )
    {
      v19 = v28->_M_gnext;
      v11 = 1;
      if ( v19 >= v28->_M_gend )
      {
LABEL_53:
        (*((void (__fastcall **)(std::streambuf *))v28->_vptr.basic_streambuf + 9))(v28);
        goto LABEL_29;
      }
LABEL_28:
      v28->_M_gnext = v19 + 1;
LABEL_29:
      __in_ite->_M_have_c = 0;
LABEL_30:
      if ( v12 )
        v12 = v10 >= __truename._M_finish - __truename._M_start_of_storage._M_data;
      if ( v11 )
        v11 = v10 >= __falsename._M_finish - __falsename._M_start_of_storage._M_data;
      if ( v12 || v11 )
      {
        *__err = 0;
        *__x = v12;
      }
      else
      {
        *__err = 4;
      }
      v20 = __in_ite->_M_buf;
      if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
      {
        v21 = v20->_M_gnext;
        if ( v21 < v20->_M_gend )
          v32 = (unsigned __int8)*v21;
        else
          v32 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
        __in_ite->_M_c = v32;
        __in_ite->_M_eof = v32 == -1;
        __in_ite->_M_have_c = 1;
      }
      v22 = __end->_M_buf;
      if ( !__end->_M_buf || __end->_M_have_c )
      {
        v25 = __end->_M_eof;
      }
      else
      {
        v23 = v22->_M_gnext;
        if ( v23 >= v22->_M_gend )
          v24 = (*((int (__fastcall **)(std::streambuf *))v22->_vptr.basic_streambuf + 8))(v22);
        else
          v24 = (unsigned __int8)*v23;
        __end->_M_c = v24;
        v25 = v24 == -1;
        __end->_M_eof = v25;
        __end->_M_have_c = 1;
      }
      if ( __in_ite->_M_eof == v25 )
        *__err |= 2u;
      JUMPOUT(0x8AFF3C);
    }
LABEL_55:
    v26 = v28->_M_gnext;
    if ( v26 >= v28->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v28->_vptr.basic_streambuf + 9))(v28);
    else
      v28->_M_gnext = v26 + 1;
    __in_ite->_M_have_c = 0;
  }
}


// ===== 8afb78 std::priv::__copy_digits<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>>,std::priv::__basic_iostring<char> &,char const*) =====
int __fastcall std::priv::__copy_digits<std::istreambuf_iterator<char>,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> __last,
        std::priv::__iostring *const __v,
        const char *__digits)
{
  int v5; // r9
  std::streambuf *M_buf; // r5
  _BOOL4 M_eof; // r6
  _BOOL4 M_have_c; // r7
  char *v10; // r3
  int v11; // r0
  char M_c; // r1
  std::streambuf *v13; // r0
  char *v14; // r3
  std::streambuf *v15; // r0
  char *M_gnext; // r3
  int v17; // r0
  char *v18; // r3
  int v19; // r0

  v5 = 0;
  M_buf = __last._M_buf;
  M_eof = __last._M_eof;
  M_have_c = __last._M_have_c;
  while ( 1 )
  {
    v15 = __first->_M_buf;
    if ( __first->_M_buf && !__first->_M_have_c )
    {
      M_gnext = v15->_M_gnext;
      if ( M_gnext >= v15->_M_gend )
        v17 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
      else
        v17 = (unsigned __int8)*M_gnext;
      __first->_M_c = v17;
      __first->_M_eof = v17 == -1;
      __first->_M_have_c = 1;
    }
    if ( M_buf && !M_have_c )
    {
      v18 = M_buf->_M_gnext;
      if ( v18 >= M_buf->_M_gend )
        v19 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v19 = (unsigned __int8)*v18;
      M_eof = v19 == -1;
      M_have_c = 1;
    }
    if ( __first->_M_eof == M_eof )
      break;
    if ( __first->_M_have_c )
    {
      M_c = __first->_M_c;
      if ( (unsigned __int8)(M_c - 48) > 9u )
        return v5;
    }
    else
    {
      v10 = __first->_M_buf->_M_gnext;
      if ( v10 >= __first->_M_buf->_M_gend )
        v11 = (*((int (__fastcall **)(std::streambuf *))__first->_M_buf->_vptr.basic_streambuf + 8))(__first->_M_buf);
      else
        v11 = (unsigned __int8)*v10;
      M_c = v11;
      __first->_M_eof = v11 == -1;
      __first->_M_have_c = 1;
      __first->_M_c = v11;
      if ( (unsigned __int8)(v11 - 48) > 9u )
        return v5;
    }
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__v, M_c);
    v13 = __first->_M_buf;
    v14 = __first->_M_buf->_M_gnext;
    if ( v14 >= __first->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v13->_vptr.basic_streambuf + 9))(v13);
    else
      v13->_M_gnext = v14 + 1;
    __first->_M_have_c = 0;
    v5 = 1;
  }
  return v5;
}


// ===== 8afc74 std::priv::__read_float<std::istreambuf_iterator<char,std::char_traits<char>>,char>(std::priv::__basic_iostring<char> &,std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>> &,std::ctype<char> const&,std::numpunct<char> const&) =====
// local variable allocation has failed, the output may be wrong!
void __fastcall std::priv::__read_float<std::istreambuf_iterator<char>,char>(
        std::priv::__iostring *const __buf,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        const std::ctype<char> *const __ct,
        const std::numpunct<char> *const __numpunct)
{
  unsigned __int8 v9; // r6
  int v10; // r0
  char *v11; // r3
  int v12; // r0
  int M_c; // r3
  std::streambuf *v14; // r0
  char *M_gnext; // r3
  std::streambuf *v16; // r0
  char *v17; // r3
  std::streambuf *M_buf; // r1 OVERLAPPED
  int v19; // r2 OVERLAPPED
  int v20; // r6
  int v21; // [sp+14h] [bp-1Ch]
  std::istreambuf_iterator<char> v22; // [sp+1Ch] [bp-14h] BYREF
  std::istreambuf_iterator<char> v23; // [sp+24h] [bp-Ch] BYREF
  char v24; // [sp+2Fh] [bp-1h] BYREF
  std::string __grouping; // [sp+30h] [bp+0h] BYREF
  char __digits[12]; // [sp+48h] [bp+18h] BYREF

  (*((void (__fastcall **)(std::string *, const std::numpunct<char> *const))__numpunct->_vptr.facet + 4))(
    &__grouping,
    __numpunct);
  v24 = 1;
  v21 = (*((int (__fastcall **)(const std::numpunct<char> *const))__numpunct->_vptr.facet + 2))(__numpunct);
  v9 = (*((int (__fastcall **)(const std::numpunct<char> *const))__numpunct->_vptr.facet + 3))(__numpunct);
  std::priv::__copy_sign<std::istreambuf_iterator<char>,char>(&v23, *__in_ite, *__end, __buf, 0x2Bu, 0x2Du);
  *__in_ite = v23;
  M_buf = __end->_M_buf;
  v19 = *(_DWORD *)&__end->_M_c;
  if ( __grouping._M_start_of_storage._M_data == __grouping._M_finish )
    v20 = std::priv::__copy_digits<std::istreambuf_iterator<char>,char>(
            __in_ite,
            *(std::istreambuf_iterator<char> *)&M_buf,
            __buf,
            __digits);
  else
    v20 = std::priv::__copy_grouped_digits<std::istreambuf_iterator<char>,char>(
            __in_ite,
            *(std::istreambuf_iterator<char> *)&M_buf,
            __buf,
            __digits,
            v9,
            &__grouping,
            (bool *const)&v24);
  if ( std::istreambuf_iterator<char>::equal(__in_ite, __end)
    || (__in_ite->_M_have_c
      ? (M_c = (unsigned __int8)__in_ite->_M_c)
      : ((v11 = __in_ite->_M_buf->_M_gnext, v11 >= __in_ite->_M_buf->_M_gend)
       ? (v12 = (*((int (__fastcall **)(std::streambuf *))__in_ite->_M_buf->_vptr.basic_streambuf + 8))(__in_ite->_M_buf))
       : (v12 = (unsigned __int8)*v11),
         M_c = (unsigned __int8)v12,
         __in_ite->_M_eof = v12 == -1,
         __in_ite->_M_c = v12,
         __in_ite->_M_have_c = 1),
        v21 != M_c) )
  {
    v10 = 0;
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__buf, 46);
    v14 = __in_ite->_M_buf;
    M_gnext = __in_ite->_M_buf->_M_gnext;
    if ( M_gnext >= __in_ite->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v14->_vptr.basic_streambuf + 9))(v14);
    else
      v14->_M_gnext = M_gnext + 1;
    __in_ite->_M_have_c = 0;
    v10 = std::priv::__copy_digits<std::istreambuf_iterator<char>,char>(__in_ite, *__end, __buf, __digits);
  }
  if ( (v20 || v10) && !std::istreambuf_iterator<char>::equal(__in_ite, __end) )
  {
    std::istreambuf_iterator<char>::_M_getc(__in_ite);
    if ( __in_ite->_M_c == 101 || (std::istreambuf_iterator<char>::_M_getc(__in_ite), __in_ite->_M_c == 69) )
    {
      std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::push_back(__buf, 101);
      v16 = __in_ite->_M_buf;
      v17 = __in_ite->_M_buf->_M_gnext;
      if ( v17 >= __in_ite->_M_buf->_M_gend )
        (*((void (__fastcall **)(std::streambuf *))v16->_vptr.basic_streambuf + 9))(v16);
      else
        v16->_M_gnext = v17 + 1;
      __in_ite->_M_have_c = 0;
      std::priv::__copy_sign<std::istreambuf_iterator<char>,char>(&v22, *__in_ite, *__end, __buf, 0x2Bu, 0x2Du);
      *__in_ite = v22;
      std::priv::__copy_digits<std::istreambuf_iterator<char>,char>(__in_ite, *__end, __buf, __digits);
    }
  }
  JUMPOUT(0x8AF9B0);
}


// ===== 8afe78 std::priv::__do_get_float<std::istreambuf_iterator<char,std::char_traits<char>>,long double,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,long double &,char *) =====
void __fastcall std::priv::__do_get_float<std::istreambuf_iterator<char>,long double,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val,
        char *a7)
{
  std::locale __loc; // [sp+18h] [bp-22Ch] BYREF
  std::priv::__iostring __buf; // [sp+1Ch] [bp-228h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8AF86A);
}


// ===== 8affd4 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,long double &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_float<std::istreambuf_iterator<char>,long double,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8afffc std::priv::__do_get_float<std::istreambuf_iterator<char,std::char_traits<char>>,double,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,double &,char *) =====
void __fastcall std::priv::__do_get_float<std::istreambuf_iterator<char>,double,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val,
        char *a7)
{
  std::locale __loc; // [sp+18h] [bp-22Ch] BYREF
  std::priv::__iostring __buf; // [sp+1Ch] [bp-228h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8AF86A);
}


// ===== 8b0158 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,double &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_float<std::istreambuf_iterator<char>,double,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b0180 std::priv::__get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,uint,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,uint &,int,bool,wchar_t,std::string const&,std::__false_type const&) =====
void __fastcall std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned int,wchar_t>(
        std::istreambuf_iterator<wchar_t> *const __first,
        std::istreambuf_iterator<wchar_t> *const __last,
        int __base,
        unsigned int *const __val,
        int __got,
        bool __is_negative,
        wchar_t __separator,
        const std::string *const __grouping,
        const std::__false_type *const a9)
{
  JUMPOUT(0x8AFC50);
}


// ===== 8b0364 std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,uint,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,uint &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned int,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned int,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B09AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8AFF3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b0548 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,uint &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned int,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b0578 std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,uint,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,uint &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned int,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val,
        char *a7)
{
  const std::ctype<char> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::streambuf *v19; // r0
  std::streambuf *v20; // r0
  char *v21; // r3
  int v22; // r0
  _BOOL4 M_eof; // r3
  char *v24; // r3
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  char __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = (unsigned __int8)*M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = (unsigned __int8)*v16;
    else
      v26 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned int,char>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B09AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::streambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = (unsigned __int8)*v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = (unsigned __int8)*v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8AFF3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b075c std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,uint &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned int,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b0784 std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,bool,std::ios_base &,int &,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> &,bool &,wchar_t *) =====
std::wstreambuf *__fastcall __spoils<R1,R2,R3,R12,LR> std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        bool __intl,
        std::locale *__str,
        int *const __err,
        std::wstring *const __digits,
        bool *const __is_positive,
        wchar_t *a9)
{
  Elf32_Dyn **v9; // r5
  std::locale *v10; // r10
  int *v11; // r7
  wchar_t *M_gnext; // r3
  std::wstreambuf *result; // r0
  wchar_t *v14; // r3
  int v15; // r8
  std::string *p_grouping; // r9
  const std::ctype<wchar_t> *_c_type; // r6
  int v18; // r2
  std::wstring *M_impl_low; // r3
  std::wstreambuf **v20; // r3
  char v21; // r1
  std::string *v22; // r0
  std::wstring *v23; // r2
  std::money_base::pattern *p_format; // r3
  char container; // r1
  wchar_t *v26; // r3
  wchar_t *v27; // r3
  wchar_t v28; // r0
  int v29; // r0
  wchar_t *M_finish; // r3
  wchar_t *M_data; // r2
  int v32; // r3
  std::wstreambuf **v33; // r3
  char *p_curs; // r0
  bool *v35; // r2
  wchar_t *v36; // r3
  int v37; // r2
  wchar_t *v38; // r3
  wchar_t *v39; // r2
  wchar_t *v40; // r9
  int v41; // r3
  int v42; // r9
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *v43; // r0
  std::pair<std::istreambuf_iterator<wchar_t>,bool> *v44; // r3
  int v45; // r0
  int v46; // r2
  std::money_base::pattern *v47; // r3
  std::wstreambuf **v48; // r3
  std::wstreambuf *M_buf; // r2
  _DWORD *v50; // r0
  int *v51; // r3
  int v52; // r0
  int v53; // r3
  std::istreambuf_iterator<wchar_t> __out_ite; // [sp+0h] [bp-22Ch] BYREF
  std::wstreambuf **v55; // [sp+24h] [bp-208h]
  std::locale *p_loc; // [sp+28h] [bp-204h]
  std::pair<std::istreambuf_iterator<wchar_t>,bool> *p_result; // [sp+30h] [bp-1FCh]
  char *v58; // [sp+34h] [bp-1F8h]
  std::back_insert_iterator<std::wstring > v59; // [sp+38h] [bp-1F4h]
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *p_ps; // [sp+3Ch] [bp-1F0h]
  _BOOL4 v61; // [sp+40h] [bp-1ECh]
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *p_ns; // [sp+44h] [bp-1E8h]
  bool *v63; // [sp+48h] [bp-1E4h]
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *v64; // [sp+4Ch] [bp-1E0h]
  bool *v65; // [sp+50h] [bp-1DCh]
  wchar_t *v66; // [sp+54h] [bp-1D8h]
  wchar_t *v67; // [sp+58h] [bp-1D4h]
  Elf32_Dyn **v68; // [sp+5Ch] [bp-1D0h]
  wchar_t *p_M_c; // [sp+60h] [bp-1CCh]
  bool *v70; // [sp+64h] [bp-1C8h]
  bool *p_M_eof; // [sp+68h] [bp-1C4h]
  int v72; // [sp+6Ch] [bp-1C0h]
  int __frac_digits; // [sp+70h] [bp-1BCh]
  wchar_t __point; // [sp+74h] [bp-1B8h]
  std::money_base::pattern v75; // [sp+78h] [bp-1B4h]
  std::istreambuf_iterator<wchar_t> __sa; // [sp+84h] [bp-1A8h] BYREF
  std::pair<std::istreambuf_iterator<wchar_t>,bool> __result; // [sp+90h] [bp-19Ch] BYREF
  std::pair<std::istreambuf_iterator<wchar_t>,bool> *v78; // [sp+D0h] [bp-15Ch]
  std::pair<std::istreambuf_iterator<wchar_t>,bool> *v79; // [sp+D4h] [bp-158h]
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type __curs; // [sp+D8h] [bp-154h] BYREF
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type __buf; // [sp+120h] [bp-10Ch] BYREF
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type __ps; // [sp+168h] [bp-C4h] BYREF
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type __ns; // [sp+1B0h] [bp-7Ch] BYREF
  std::money_base::pattern v84; // [sp+1F8h] [bp-34h]
  std::string *v85; // [sp+1FCh] [bp-30h]
  std::money_base::pattern __format; // [sp+200h] [bp-2Ch] BYREF
  std::locale __loc; // [sp+204h] [bp-28h] BYREF
  char v88; // [sp+20Bh] [bp-21h] BYREF
  std::string __grouping; // [sp+20Ch] [bp-20h] BYREF

  __sa = __s;
  v63 = __is_positive;
  v64 = __digits;
  v9 = &__GLOBAL_OFFSET_TABLE_;
  v61 = __intl;
  v10 = __str;
  v11 = __err;
  if ( __s._M_buf && !__sa._M_have_c )
  {
    M_gnext = __sa._M_buf->_M_gnext;
    if ( M_gnext < __sa._M_buf->_M_gend )
      v45 = *M_gnext;
    else
      v45 = (*((int (**)(void))__sa._M_buf->_vptr.basic_streambuf + 8))();
    __sa._M_c = v45;
    __sa._M_eof = v45 == -1;
    __sa._M_have_c = 1;
  }
  result = __end._M_buf;
  if ( !__end._M_buf || __end._M_have_c )
  {
    if ( __sa._M_eof != __end._M_eof )
    {
LABEL_13:
      p_loc = &__loc;
      std::locale::locale(&__loc, v10 + 8);
      v15 = (int)std::locale::_M_use_facet(&__loc, &std::moneypunct<wchar_t,false>::id);
      p_grouping = (std::string *)std::locale::_M_use_facet(&__loc, &std::moneypunct<wchar_t,true>::id);
      _c_type = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
      if ( !v61 )
      {
        v75 = (std::money_base::pattern)(*(int (__fastcall **)(int))(*(_DWORD *)v15 + 40))(v15);
        v84 = v75;
        v59.container = (std::wstring *)(unsigned __int8)v75.field[0];
        __format = v75;
        p_ns = &__ns;
        (*(void (__fastcall **)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *))(*(_DWORD *)v15 + 28))(&__ns);
        p_ps = &__ps;
        (*(void (__fastcall **)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *))(*(_DWORD *)v15 + 24))(&__ps);
        goto LABEL_16;
      }
      v22 = (std::string *)(*((int (__fastcall **)(std::string *))p_grouping->_M_buffers._M_end_of_storage + 10))(p_grouping);
      v75 = (std::money_base::pattern)v22;
      v85 = v22;
      v21 = BYTE2(v22);
      LOBYTE(v22) = BYTE1(v22);
      v59.container = (std::wstring *)(unsigned __int8)v85;
      LOBYTE(v23) = HIBYTE(v22);
LABEL_20:
      p_format = &__format;
LABEL_21:
      p_format->field[2] = v21;
      p_format->field[3] = (char)v23;
      container = (char)v59.container;
      p_ns = &__ns;
      p_format->field[1] = (char)v22;
      p_format->field[0] = container;
      (*((void (__fastcall **)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *))p_grouping->_M_buffers._M_end_of_storage
       + 7))(&__ns);
      p_ps = &__ps;
      (*((void (__fastcall **)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *))p_grouping->_M_buffers._M_end_of_storage
       + 6))(&__ps);
LABEL_16:
      v18 = (int)v10[1]._M_impl & 0x200;
      __buf._M_finish = (wchar_t *)&__buf;
      __buf._M_start_of_storage._M_data = (wchar_t *)&__buf;
      v72 = v18;
      std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(&__buf, 0x10u);
      *__buf._M_finish = 0;
      p_M_c = &__sa._M_c;
      p_result = (std::pair<std::istreambuf_iterator<wchar_t>,bool> *)((char *)&__format + 1);
      v58 = (char *)&__format + 1;
      v67 = &__end._M_c;
      p_M_eof = &__end._M_eof;
      M_impl_low = v59.container;
      v59.container = &__buf;
      v65 = &__sa._M_eof;
      v66 = &__out_ite._M_c;
      v68 = v9;
      v70 = &__out_ite._M_eof;
      v9 = (Elf32_Dyn **)v15;
      v10 = (std::locale *)((char *)&__format + 1);
      v15 = (int)v11;
      v11 = (int *)p_grouping;
      while ( 1 )
      {
        switch ( (unsigned int)M_impl_low )
        {
          case 0u:
            goto LABEL_33;
          case 1u:
            if ( !__sa._M_have_c )
            {
              v26 = __sa._M_buf->_M_gnext;
              if ( v26 < __sa._M_buf->_M_gend )
                v46 = *v26;
              else
                v46 = (*((int (__fastcall **)(std::wstreambuf *))__sa._M_buf->_vptr.basic_streambuf + 8))(__sa._M_buf);
              __sa._M_eof = v46 == -1;
              __sa._M_c = v46;
              __sa._M_have_c = 1;
            }
            if ( !(*((int (__fastcall **)(const std::ctype<wchar_t> *, int))_c_type->_vptr.facet + 2))(_c_type, 1) )
            {
              *(_DWORD *)v15 = 4;
              goto LABEL_55;
            }
            v27 = __sa._M_buf->_M_gnext;
            if ( v27 < __sa._M_buf->_M_gend )
              __sa._M_buf->_M_gnext = v27 + 1;
            else
              (*((void (__fastcall **)(std::wstreambuf *))__sa._M_buf->_vptr.basic_streambuf + 9))(__sa._M_buf);
            __sa._M_have_c = 0;
LABEL_33:
            while ( !std::istreambuf_iterator<wchar_t>::equal(&__sa, &__end) )
            {
              if ( !__sa._M_have_c )
              {
                v36 = __sa._M_buf->_M_gnext;
                if ( v36 >= __sa._M_buf->_M_gend )
                  v37 = (*((int (__fastcall **)(std::wstreambuf *))__sa._M_buf->_vptr.basic_streambuf + 8))(__sa._M_buf);
                else
                  v37 = *v36;
                __sa._M_eof = v37 == -1;
                __sa._M_c = v37;
                __sa._M_have_c = 1;
              }
              if ( !(*((int (__fastcall **)(const std::ctype<wchar_t> *, int))_c_type->_vptr.facet + 2))(_c_type, 1) )
                break;
              v38 = __sa._M_buf->_M_gnext;
              if ( v38 >= __sa._M_buf->_M_gend )
                (*((void (__fastcall **)(std::wstreambuf *))__sa._M_buf->_vptr.basic_streambuf + 9))(__sa._M_buf);
              else
                __sa._M_buf->_M_gnext = v38 + 1;
              __sa._M_have_c = 0;
            }
            goto LABEL_34;
          case 2u:
            if ( v61 )
              (*((void (__fastcall **)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *, std::string *))p_grouping->_M_buffers._M_end_of_storage
               + 5))(
                &__curs,
                p_grouping);
            else
              ((void (__fastcall *)(std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring >::string_type *, Elf32_Dyn **))(*v9)[2].d_un.d_val)(
                &__curs,
                v9);
            __out_ite._M_buf = __end._M_buf;
            p_result = &__result;
            *v66 = *v67;
            *(_DWORD *)v70 = *(_DWORD *)p_M_eof;
            std::priv::__get_string<std::istreambuf_iterator<wchar_t>,wchar_t *>(
              p_result,
              __sa,
              __out_ite,
              __curs._M_start_of_storage._M_data,
              __curs._M_finish);
            if ( !p_result->second && v72 )
              *(_DWORD *)v15 = 4;
            p_curs = (char *)&__curs;
            v35 = v65;
            __sa._M_buf = p_result->first._M_buf;
            *p_M_c = __result.first._M_c;
            *(_WORD *)v35 = *(_WORD *)&__result.first._M_eof;
            goto LABEL_101;
          case 3u:
            if ( std::istreambuf_iterator<wchar_t>::equal(&__sa, &__end) )
            {
              if ( p_ps->_M_start_of_storage._M_data != p_ps->_M_finish )
              {
                if ( p_ns->_M_start_of_storage._M_data != p_ns->_M_finish )
                {
                  *(_DWORD *)v15 = 4;
                  v48 = v55;
                  M_buf = __sa._M_buf;
                  goto LABEL_99;
                }
                *v63 = 0;
              }
            }
            else if ( p_ps->_M_start_of_storage._M_data == p_ps->_M_finish )
            {
              if ( p_ns->_M_start_of_storage._M_data != p_ns->_M_finish )
              {
                std::istreambuf_iterator<wchar_t>::_M_getc(&__sa);
                if ( *p_ns->_M_start_of_storage._M_data == __sa._M_c )
                  goto LABEL_93;
              }
            }
            else
            {
              std::istreambuf_iterator<wchar_t>::_M_getc(&__sa);
              if ( *p_ps->_M_start_of_storage._M_data != __sa._M_c )
              {
                if ( p_ns->_M_start_of_storage._M_data == p_ns->_M_finish )
                  goto LABEL_34;
                std::istreambuf_iterator<wchar_t>::_M_getc(&__sa);
                if ( *p_ns->_M_start_of_storage._M_data != __sa._M_c )
                {
                  *(_DWORD *)v15 = 4;
                  M_buf = __sa._M_buf;
                  v48 = v55;
LABEL_99:
                  *v48 = M_buf;
                  v55[1] = (std::wstreambuf *)__sa._M_c;
                  *((_WORD *)v48 + 4) = *(_WORD *)v65;
LABEL_111:
                  JUMPOUT(0x8B03B2);
                }
LABEL_93:
                std::istreambuf_iterator<wchar_t>::operator++(&__sa);
                *v63 = 0;
                goto LABEL_34;
              }
              std::istreambuf_iterator<wchar_t>::operator++(&__sa);
            }
LABEL_34:
            if ( p_loc == v10 )
            {
              v11 = (int *)v15;
              if ( *v63 )
              {
                M_finish = p_ps->_M_finish;
                M_data = p_ps->_M_start_of_storage._M_data;
                if ( (unsigned int)(M_finish - M_data) <= 1
                  || (std::priv::__get_string<std::istreambuf_iterator<wchar_t>,wchar_t *>(
                        &__result,
                        __sa,
                        __end,
                        M_data + 1,
                        M_finish),
                      __sa._M_buf = __result.first._M_buf,
                      __sa._M_c = __result.first._M_c,
                      *(_WORD *)v65 = *(_WORD *)&__result.first._M_eof,
                      __result.second) )
                {
                  v32 = *(_DWORD *)v15;
                }
                else
                {
                  v32 = *(_DWORD *)v15 | 4;
                  *(_DWORD *)v15 = v32;
                }
                if ( (v32 & 4) == 0 )
                  JUMPOUT(0x8B1148);
              }
              else
              {
                v39 = p_ns->_M_start_of_storage._M_data;
                v40 = p_ns->_M_finish;
                if ( (unsigned int)(v40 - v39) <= 1
                  || (std::priv::__get_string<std::istreambuf_iterator<wchar_t>,wchar_t *>(
                        &__result,
                        __sa,
                        __end,
                        v39 + 1,
                        v40),
                      __sa._M_buf = __result.first._M_buf,
                      __sa._M_c = __result.first._M_c,
                      *(_WORD *)v65 = *(_WORD *)&__result.first._M_eof,
                      __result.second) )
                {
                  v41 = *(_DWORD *)v15;
                }
                else
                {
                  v41 = *(_DWORD *)v15 | 4;
                  *(_DWORD *)v15 = v41;
                }
                if ( (v41 & 4) == 0 )
                {
                  v42 = (*((int (__fastcall **)(const std::ctype<wchar_t> *, int, int))_c_type->_vptr.facet + 10))(
                          _c_type,
                          45,
                          v41 << 29);
                  v43 = (std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *)v64->_M_start_of_storage._M_data;
                  v15 = ((char *)v64->_M_finish - (char *)v43) >> 2;
                  if ( v15
                    || v43 == v64
                    || (unsigned int)(((signed int)(v64->_M_buffers._M_static_buf[0] - (int)v43) >> 2) - 1) > 1 )
                  {
                    JUMPOUT(0x8B077A);
                  }
                  _c_type = (const std::ctype<wchar_t> *)&__result;
                  v78 = &__result;
                  v79 = &__result;
                  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(
                    (std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const)&__result,
                    2u);
                  v44 = v79;
                  v79->first._M_buf = (std::wstreambuf *)v42;
                  v78 = (std::pair<std::istreambuf_iterator<wchar_t>,bool> *)&v44->first._M_c;
                  v44->first._M_c = 0;
                  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_swap(
                    v64,
                    (std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const)&__result);
                  p_curs = (char *)&__result;
LABEL_101:
                  _c_type->_M_ref_count = (volatile __stl_atomic_t)p_curs;
                  LOBYTE(_c_type->_M_mutex._M_lock.value) = p_curs + 1 == nullptr;
                  BYTE1(_c_type->_M_mutex._M_lock.value) = 1;
                  v50 = (_DWORD *)*v11;
                  if ( !*v11 || *((_BYTE *)v11 + 9) )
                  {
                    v53 = *((unsigned __int8 *)v11 + 8);
                  }
                  else
                  {
                    v51 = (int *)v50[2];
                    if ( (unsigned int)v51 >= v50[3] )
                      v52 = (*(int (__fastcall **)(_DWORD *))(*v50 + 32))(v50);
                    else
                      v52 = *v51;
                    v11[1] = v52;
                    v53 = v52 == -1;
                    *((_BYTE *)v11 + 8) = v53;
                    *((_BYTE *)v11 + 9) = 1;
                  }
                  if ( LOBYTE(_c_type->_M_mutex._M_lock.value) == v53 )
                    *(_DWORD *)v15 |= 2u;
                  JUMPOUT(0x8B0F3A);
                }
              }
              if ( std::istreambuf_iterator<wchar_t>::equal(&__sa, &__end) )
                *(_DWORD *)v15 |= 2u;
LABEL_55:
              v33 = v55;
              *v55 = __sa._M_buf;
              v55[1] = (std::wstreambuf *)__sa._M_c;
              *((_WORD *)v33 + 4) = *(_WORD *)v65;
              goto LABEL_111;
            }
            M_impl_low = (std::wstring *)LOBYTE(v10->_M_impl);
            v10 = (std::locale *)((char *)v10 + 1);
            break;
          case 4u:
            if ( v61 )
            {
              __point = (*((int (__fastcall **)(std::string *))p_grouping->_M_buffers._M_end_of_storage + 2))(p_grouping);
              __frac_digits = (*((int (__fastcall **)(std::string *))p_grouping->_M_buffers._M_end_of_storage + 8))(p_grouping);
              p_grouping = &__grouping;
              (*(void (__fastcall **)(std::string *, int *))(*v11 + 16))(&__grouping, v11);
            }
            else
            {
              __point = ((int (__fastcall *)(Elf32_Dyn **))(*v9)[1].d_tag)(v9);
              __frac_digits = ((int (__fastcall *)(Elf32_Dyn **))(*v9)[4].d_tag)(v9);
              p_grouping = &__grouping;
              ((void (__fastcall *)(std::string *, Elf32_Dyn **))(*v9)[2].d_tag)(&__grouping, v9);
            }
            v88 = 1;
            p_result = (std::pair<std::istreambuf_iterator<wchar_t>,bool> *)&v88;
            v28 = 0;
            if ( __grouping._M_start_of_storage._M_data != __grouping._M_finish )
            {
              if ( v61 )
                v28 = (*(int (__fastcall **)(int *))(*v11 + 12))(v11);
              else
                v28 = ((int (__fastcall *)(Elf32_Dyn **))(*v9)[1].d_un.d_val)(v9);
            }
            v29 = std::priv::__get_monetary_value<std::istreambuf_iterator<wchar_t>,std::back_insert_iterator<std::wstring>,wchar_t>(
                    &__sa,
                    __end,
                    v59,
                    _c_type,
                    __point,
                    __frac_digits,
                    v28,
                    &__grouping,
                    (bool *const)p_result);
            v21 = (char)p_result;
            if ( !LOBYTE(p_result->first._M_buf) )
            {
              v23 = *(std::wstring **)v15;
              v21 = v15;
              *(_DWORD *)v15 |= 4u;
            }
            if ( v29 )
            {
              v22 = &__grouping;
              goto LABEL_20;
            }
            v23 = v59.container;
            v11 = (int *)v15;
            v9 = v68;
            *(_DWORD *)v15 = 4;
            v47 = (std::money_base::pattern *)v55;
            v10 = (std::locale *)v23;
            v22 = &__grouping;
            *v55 = __sa._M_buf;
            p_format = v47 + 1;
            _c_type = (const std::ctype<wchar_t> *)v55;
            v55[1] = (std::wstreambuf *)__sa._M_c;
            v21 = (char)v65;
            LOWORD(v23) = *(_WORD *)v65;
            *(_WORD *)p_format[1].field = *(_WORD *)v65;
            goto LABEL_21;
          default:
            goto LABEL_34;
        }
      }
    }
  }
  else
  {
    v14 = __end._M_buf->_M_gnext;
    if ( v14 < __end._M_buf->_M_gend )
      result = (std::wstreambuf *)*v14;
    else
      result = (std::wstreambuf *)(*((int (**)(void))__end._M_buf->_vptr.basic_streambuf + 8))();
    __end._M_c = (wchar_t)result;
    __end._M_eof = (int (***)(...))((char *)&result->_vptr.basic_streambuf + 1) == nullptr;
    __end._M_have_c = 1;
    if ( __sa._M_eof != __end._M_eof )
      goto LABEL_13;
  }
  *v11 |= 2u;
  v20 = v55;
  *v55 = __sa._M_buf;
  v55[1] = (std::wstreambuf *)__sa._M_c;
  *((_WORD *)v20 + 4) = *(_WORD *)&__sa._M_eof;
  return result;
}


// ===== 8b0f2c std::money_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,bool,std::ios_base &,int &,std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>> &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        bool __intl,
        std::locale *__str,
        int *const __err,
        std::wstring *const __digits)
{
  char __is_positive; // [sp+2Fh] [bp-1h] BYREF

  __is_positive = 1;
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring>(
    retstr,
    __s,
    __end,
    __intl,
    __str,
    __err,
    __digits,
    (bool *const)&__is_positive,
    nullptr);
  return retstr;
}


// ===== 8b0f80 std::money_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,bool,std::ios_base &,int &,long double &) =====
void __fastcall std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        bool __intl,
        std::locale *__str,
        int *const __err,
        double *const __units)
{
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > __digits; // [sp+28h] [bp-64h] BYREF
  std::istreambuf_iterator<wchar_t> v10; // [sp+70h] [bp-1Ch] BYREF
  wchar_t *__last; // [sp+7Ch] [bp-10h] BYREF
  wchar_t *__first; // [sp+80h] [bp-Ch] BYREF
  char v13; // [sp+87h] [bp-5h] BYREF
  std::wstreambuf *varg_r2; // [sp+A8h] [bp+1Ch]
  wchar_t varg_r3; // [sp+ACh] [bp+20h]
  __int16 __sa; // [sp+B0h] [bp+24h]
  std::istreambuf_iterator<wchar_t> v17; // 0:r1.12

  __digits._M_finish = (wchar_t *)&__digits;
  __digits._M_start_of_storage._M_data = (wchar_t *)&__digits;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(&__digits, 0x10u);
  *__digits._M_finish = 0;
  v13 = 1;
  v17._M_buf = varg_r2;
  *(_QWORD *)&v17._M_c = __PAIR64__(*(unsigned int *)&__s._M_eof, varg_r3);
  std::priv::__money_do_get<wchar_t,std::istreambuf_iterator<wchar_t>,std::wstring>(
    &v10,
    v17,
    __end,
    __intl,
    __str,
    __err,
    (std::wstring *const)&__digits,
    (bool *const)&v13,
    nullptr);
  varg_r2 = v10._M_buf;
  varg_r3 = v10._M_c;
  __sa = *(_WORD *)&v10._M_eof;
  if ( *__err == 2 || !*__err )
  {
    __last = __digits._M_finish;
    __first = __digits._M_start_of_storage._M_data;
    if ( !v13 )
      __first = __digits._M_start_of_storage._M_data + 1;
    std::priv::__get_decimal_integer<wchar_t *,long double,wchar_t>(&__first, &__last, __units, nullptr);
    if ( !v13 )
      *((_DWORD *)__units + 1) += 0x80000000;
  }
  retstr->_M_buf = varg_r2;
  retstr->_M_c = varg_r3;
  *(_WORD *)&retstr->_M_eof = __sa;
  JUMPOUT(0x8B1312);
}


// ===== 8b105c std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ushort,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,ushort &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned short,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int16 *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned short,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B09AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8B0F3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b1240 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,ushort &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int16 *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned short,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b1270 std::priv::__do_get_float<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,double,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,double &,wchar_t *) =====
void __fastcall std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,double,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val,
        wchar_t *a7)
{
  std::locale __loc; // [sp+18h] [bp-22Ch] BYREF
  std::priv::__iostring __buf; // [sp+1Ch] [bp-228h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8B186A);
}


// ===== 8b13cc std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,double &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,double,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b13fc std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ulong long,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,ulong long &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned long long,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int64 *const __val,
        char *a7)
{
  const std::ctype<char> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::streambuf *v19; // r0
  std::streambuf *v20; // r0
  char *v21; // r3
  int v22; // r0
  _BOOL4 M_eof; // r3
  char *v24; // r3
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  unsigned __int8 __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = (unsigned __int8)*M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = (unsigned __int8)*v16;
    else
      v26 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned long long,char>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B19AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::streambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = (unsigned __int8)*v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = (unsigned __int8)*v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8B0F3A);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b15e8 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,ulong long &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int64 *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned long long,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b1610 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,void *&) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        void **const __p)
{
  int *v7; // r5
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-14h] BYREF
  unsigned __int64 __val; // [sp+18h] [bp-Ch] BYREF

  __in_itea = __in_ite;
  v7 = __err;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned long long,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    &__val,
    nullptr);
  if ( (*v7 & 4) == 0 )
    *__p = (void *)__val;
  return retstr;
}


// ===== 8b1644 std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,long long,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,long long &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,long long,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        __int64 *const __val,
        char *a7)
{
  const std::ctype<char> *v11; // r0
  int v12; // r0
  char v13; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v16; // r0
  char *v17; // r3
  _BOOL4 v18; // r3
  std::locale::facet *v19; // r9
  std::streambuf *v20; // r0
  std::streambuf *v21; // r0
  char *v22; // r3
  int v23; // r0
  _BOOL4 M_eof; // r3
  char *v25; // r3
  int v26; // r0
  std::istreambuf_iterator<char> *i; // r0
  int v28; // r0
  int v29; // r0
  int v30; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  char __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__true_type v34; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v11 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v12 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v11);
  v13 = v12;
  v30 = v12;
  M_buf = __in_ite->_M_buf;
  __got = v13 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v29 = (unsigned __int8)*M_gnext;
    else
      v29 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v29;
    __in_ite->_M_eof = v29 == -1;
    __in_ite->_M_have_c = 1;
  }
  v16 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v17 = v16->_M_gnext;
    if ( v17 < v16->_M_gend )
      v28 = (unsigned __int8)*v17;
    else
      v28 = (*((int (__fastcall **)(std::streambuf *))v16->_vptr.basic_streambuf + 8))(v16);
    __end->_M_c = v28;
    v18 = v28 == -1;
    __end->_M_eof = v18;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v18 )
    {
LABEL_13:
      v19 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v19->_vptr.facet + 3))(v19);
      (*((void (__fastcall **)(std::string *))v19->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,long long,char>(
        __in_ite,
        __end,
        (unsigned __int64)v30 >> 2,
        __val,
        __got,
        (v30 & 2) != 0,
        __separator,
        &__grouping,
        &v34);
      JUMPOUT(0x8B19AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v20 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v20 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v25 = v20->_M_gnext;
    if ( v25 >= v20->_M_gend )
      v26 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
    else
      v26 = (unsigned __int8)*v25;
    __in_ite->_M_c = v26;
    __in_ite->_M_eof = v26 == -1;
    __in_ite->_M_have_c = 1;
    v21 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v22 = v21->_M_gnext;
      if ( v22 >= v21->_M_gend )
        v23 = (*((int (__fastcall **)(std::streambuf *))v21->_vptr.basic_streambuf + 8))(v21);
      else
        v23 = (unsigned __int8)*v22;
      __end->_M_c = v23;
      M_eof = v23 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
LABEL_28:
      if ( __in_ite->_M_eof == M_eof )
        *__err |= 2u;
      for ( i = retstr; ; i = retstr )
      {
        *((_BYTE *)__err + 5) = i == nullptr;
        *((_BYTE *)__err + 6) = 1;
        if ( i )
          __loc._M_impl = (std::_Locale_impl *)((unsigned int)__loc._M_impl | 2);
      }
    }
LABEL_27:
    M_eof = __end->_M_eof;
    goto LABEL_28;
  }
LABEL_15:
  v21 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b1830 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,long long &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        __int64 *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,long long,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b1858 std::priv::__do_get_float<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,float,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,float &,wchar_t *) =====
void __fastcall __noreturn std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,float,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        float *const __val,
        wchar_t *a7)
{
  int i; // r5
  std::locale::facet *varsC; // [sp+238h] [bp+Ch]
  std::locale::facet *vars10; // [sp+23Ch] [bp+10h]
  unsigned int vars14; // [sp+240h] [bp+14h]
  std::locale vars18; // [sp+244h] [bp+18h] BYREF

  for ( i = 930334; ; vars10 = std::locale::_M_use_facet(&vars18, *(const std::locale::id *const *)(i + 6488)) )
  {
    i += 9115770;
    vars14 = STACK[0x498];
    STACK[0x468] = **(_DWORD **)(i + 16556);
    std::locale::locale(&vars18, &__str->_M_locale);
    varsC = std::locale::_M_use_facet(&vars18, *(const std::locale::id *const *)(i + 7748));
  }
}


// ===== 8b19b4 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,float &) =====
void __fastcall __noreturn std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        float *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,float,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
}


// ===== 8b19e4 std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ushort,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,ushort &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned short,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int16 *const __val,
        char *a7)
{
  const std::ctype<char> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::streambuf *v19; // r0
  std::streambuf *v20; // r0
  char *v21; // r3
  int v22; // r0
  _BOOL4 M_eof; // r3
  char *v24; // r3
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  char __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = (unsigned __int8)*M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = (unsigned __int8)*v16;
    else
      v26 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned short,char>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B19AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::streambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = (unsigned __int8)*v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = (unsigned __int8)*v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8B1F3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b1bc8 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,ushort &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned __int16 *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned short,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b1bf0 std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,long,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,long &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,long,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        int *const __val,
        char *a7)
{
  const std::ctype<char> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::streambuf *v19; // r0
  std::streambuf *v20; // r0
  char *v21; // r3
  int v22; // r0
  _BOOL4 M_eof; // r3
  char *v24; // r3
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  char __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__true_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = (unsigned __int8)*M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = (unsigned __int8)*v16;
    else
      v26 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,long,char>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B19AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::streambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = (unsigned __int8)*v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = (unsigned __int8)*v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8B1F3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b1dd4 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,long &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        int *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,long,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b1dfc std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,bool &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __s,
        int *const __err,
        bool *const __x)
{
  int *v8; // r5
  bool *v9; // r6
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-18h] BYREF
  std::istreambuf_iterator<char> __tmp; // [sp+1Ch] [bp-Ch] BYREF
  int __val; // [sp+24h] [bp-4h] BYREF

  __in_itea = __in_ite;
  v8 = __err;
  v9 = __x;
  if ( (__s->_M_fmtflags & 0x100) != 0 )
  {
    std::priv::__do_get_alphabool<std::istreambuf_iterator<char>,char>(
      retstr,
      &__in_itea,
      &__end,
      __s,
      __err,
      __x,
      nullptr);
  }
  else
  {
    std::priv::__do_get_integer<std::istreambuf_iterator<char>,long,char>(
      &__tmp,
      &__in_itea,
      &__end,
      __s,
      __err,
      &__val,
      nullptr);
    if ( (*v8 & 4) == 0 )
    {
      if ( (unsigned int)__val < 2 )
        *v9 = __val;
      else
        *v8 |= 4u;
    }
    *retstr = __tmp;
  }
  return retstr;
}


// ===== 8b1e70 std::priv::__do_get_float<std::istreambuf_iterator<char,std::char_traits<char>>,float,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,float &,char *) =====
void __fastcall __noreturn std::priv::__do_get_float<std::istreambuf_iterator<char>,float,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        float *const __val,
        char *a7)
{
  std::locale __loc; // [sp+18h] [bp-22Ch] BYREF
  std::priv::__iostring __buf; // [sp+1Ch] [bp-228h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8B186A);
}


// ===== 8b1fcc std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,float &) =====
void __fastcall __noreturn std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        float *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_float<std::istreambuf_iterator<char>,float,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
}


// ===== 8b1ff4 std::priv::__get_monetary_value<std::istreambuf_iterator<char,std::char_traits<char>>,std::back_insert_iterator<std::string>,char>(std::istreambuf_iterator<char,std::char_traits<char>> &,std::istreambuf_iterator<char,std::char_traits<char>>,std::back_insert_iterator<std::string>,std::ctype<char> const&,char,int,char,std::string const&,bool &) =====
int __fastcall std::priv::__get_monetary_value<std::istreambuf_iterator<char>,std::back_insert_iterator<std::string>,char>(
        std::istreambuf_iterator<char> *const __first,
        std::istreambuf_iterator<char> __last,
        std::back_insert_iterator<std::string > __out_ite,
        std::istreambuf_iterator<char> *_c_type,
        unsigned __int8 __point,
        std::istreambuf_iterator<char> *__frac_digits,
        unsigned __int8 __sep,
        const std::string *const __grouping,
        bool *const __syntax_ok)
{
  std::istreambuf_iterator<char> *v9; // r6
  std::istreambuf_iterator<char> *v10; // r4
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  char *v13; // r3
  char *v15; // r3
  char *i; // r5
  char *v17; // r3
  int v18; // r3
  char *v19; // r3
  int v20; // r0
  std::streambuf *v21; // r0
  char *v22; // r3
  char *M_data; // r2
  std::istreambuf_iterator<char> *p_lasta; // r7
  char *M_finish; // r3
  char *v26; // r1
  int v27; // r1
  int M_c; // r3
  char *v29; // r3
  int v30; // r0
  int v31; // r0
  char *v32; // r3
  std::streambuf *v33; // r0
  char *v34; // r3
  std::istreambuf_iterator<char> *v35; // r5
  const std::istreambuf_iterator<char> *v36; // r8
  bool v37; // r2
  char *v38; // r3
  int v39; // r0
  int v40; // r3
  char *v41; // r3
  int v42; // r0
  int v43; // r0
  int v44; // r0
  int v45; // r3
  int v46; // r0
  int v47; // r0
  std::istreambuf_iterator<char> __lasta; // [sp+20h] [bp+0h] BYREF
  std::istreambuf_iterator<char> v49; // [sp+2Ch] [bp+Ch] BYREF
  std::istreambuf_iterator<char> v50; // [sp+34h] [bp+14h] BYREF
  char __group_sizes[128]; // [sp+3Ch] [bp+1Ch] BYREF

  __lasta = __last;
  v9 = _c_type;
  v10 = __first;
  M_buf = __first->_M_buf;
  if ( M_buf && !v10->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v44 = (unsigned __int8)*M_gnext;
    else
      v44 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    v10->_M_c = v44;
    v10->_M_eof = v44 == -1;
    v10->_M_have_c = 1;
  }
  if ( !__lasta._M_buf || __lasta._M_have_c )
  {
    if ( v10->_M_eof == __lasta._M_eof )
      return 0;
  }
  else
  {
    v13 = __lasta._M_buf->_M_gnext;
    if ( v13 < __lasta._M_buf->_M_gend )
      v43 = (unsigned __int8)*v13;
    else
      v43 = (*((int (**)(void))__lasta._M_buf->_vptr.basic_streambuf + 8))();
    __lasta._M_c = v43;
    __lasta._M_eof = v43 == -1;
    __lasta._M_have_c = 1;
    if ( v10->_M_eof == __lasta._M_eof )
      return 0;
  }
  if ( v10->_M_have_c )
  {
    M_c = (unsigned __int8)v10->_M_c;
  }
  else
  {
    v15 = v10->_M_buf->_M_gnext;
    if ( v15 < v10->_M_buf->_M_gend )
      v46 = (unsigned __int8)*v15;
    else
      v46 = (*((int (__fastcall **)(std::streambuf *))v10->_M_buf->_vptr.basic_streambuf + 8))(v10->_M_buf);
    M_c = (unsigned __int8)v46;
    v10->_M_eof = v46 == -1;
    v10->_M_c = v46;
    v10->_M_have_c = 1;
  }
  if ( (*(_DWORD *)(4 * M_c + *(_DWORD *)&_c_type[1]._M_c) & 0x40) == 0 )
    return 0;
  for ( i = __grouping->_M_start_of_storage._M_data != __grouping->_M_finish ? __group_sizes : nullptr;
        !std::istreambuf_iterator<char>::equal(v10, &__lasta);
        v10->_M_have_c = 0 )
  {
    if ( v10->_M_have_c )
    {
      v18 = (unsigned __int8)v10->_M_c;
      if ( (*(_DWORD *)(4 * v18 + *(_DWORD *)&_c_type[1]._M_c) & 0x40) != 0 )
        goto LABEL_46;
    }
    else
    {
      v17 = v10->_M_buf->_M_gnext;
      if ( v17 < v10->_M_buf->_M_gend )
        v31 = (unsigned __int8)*v17;
      else
        v31 = (*((int (__fastcall **)(std::streambuf *))v10->_M_buf->_vptr.basic_streambuf + 8))(v10->_M_buf);
      v10->_M_eof = v31 == -1;
      v18 = (unsigned __int8)v31;
      v10->_M_c = v31;
      v10->_M_have_c = 1;
      if ( (*(_DWORD *)(4 * (unsigned __int8)v31 + *(_DWORD *)&_c_type[1]._M_c) & 0x40) != 0 )
      {
LABEL_46:
        std::istreambuf_iterator<char>::operator++(&v50, v10, 0);
        p_lasta = (std::istreambuf_iterator<char> *)(&dword_0 + 1);
        v27 = (unsigned __int8)v50._M_c;
        if ( !v50._M_have_c )
        {
          v29 = v50._M_buf->_M_gnext;
          if ( v29 >= v50._M_buf->_M_gend )
            v30 = (*((int (__fastcall **)(std::streambuf *, _DWORD))v50._M_buf->_vptr.basic_streambuf + 8))(
                    v50._M_buf,
                    (unsigned __int8)v50._M_c);
          else
            v30 = (unsigned __int8)*v29;
          v27 = (unsigned __int8)v30;
          v50._M_eof = v30 == -1;
        }
        goto LABEL_54;
      }
    }
    if ( !i )
      break;
    if ( !v10->_M_have_c )
    {
      v19 = v10->_M_buf->_M_gnext;
      if ( v19 >= v10->_M_buf->_M_gend )
        v20 = (*((int (__fastcall **)(std::streambuf *))v10->_M_buf->_vptr.basic_streambuf + 8))(v10->_M_buf);
      else
        v20 = (unsigned __int8)*v19;
      v18 = (unsigned __int8)v20;
      v10->_M_c = v20;
      v10->_M_eof = v20 == -1;
      v10->_M_have_c = 1;
    }
    if ( __sep != v18 )
      break;
    *i = 0;
    v21 = v10->_M_buf;
    ++i;
    v22 = v10->_M_buf->_M_gnext;
    if ( v22 >= v10->_M_buf->_M_gend )
      (*((void (__fastcall **)(std::streambuf *))v21->_vptr.basic_streambuf + 9))(v21);
    else
      v21->_M_gnext = v22 + 1;
  }
  M_data = __grouping->_M_start_of_storage._M_data;
  p_lasta = &__lasta;
  M_finish = __grouping->_M_finish;
  if ( M_data == M_finish )
  {
    *__syntax_ok = 1;
  }
  else
  {
    v26 = __group_sizes;
    if ( i != __group_sizes )
    {
      *i = 0;
      v26 = i + 1;
      M_data = __grouping->_M_start_of_storage._M_data;
      M_finish = __grouping->_M_finish;
    }
    *__syntax_ok = std::priv::__valid_grouping(__group_sizes, v26, M_data, M_finish);
    if ( std::istreambuf_iterator<char>::equal(v10, &__lasta) )
      goto LABEL_42;
LABEL_54:
    while ( 1 )
    {
      if ( v10->_M_have_c )
      {
        v45 = (unsigned __int8)v10->_M_c;
      }
      else
      {
        v32 = v10->_M_buf->_M_gnext;
        v47 = v32 < v10->_M_buf->_M_gend
            ? (unsigned __int8)*v32
            : (*((int (__fastcall **)(std::streambuf *, int))v10->_M_buf->_vptr.basic_streambuf + 8))(v10->_M_buf, v27);
        v45 = (unsigned __int8)v47;
        v10->_M_eof = v47 == -1;
        v10->_M_c = v47;
        v10->_M_have_c = 1;
      }
      if ( __point == v45 )
        break;
LABEL_42:
      if ( !__frac_digits )
        return 1;
      v9 = __frac_digits;
      v27 = 48;
      v10 = (std::istreambuf_iterator<char> *)(&dword_0 + 1);
    }
  }
  v33 = v10->_M_buf;
  v34 = v10->_M_buf->_M_gnext;
  if ( v34 >= v10->_M_buf->_M_gend )
    (*((void (__fastcall **)(std::streambuf *))v33->_vptr.basic_streambuf + 9))(v33);
  else
    v33->_M_gnext = v34 + 1;
  v10->_M_have_c = 0;
  v35 = v10;
  v10 = nullptr;
  v36 = p_lasta;
  p_lasta = v9;
  v9 = &v49;
  if ( !std::istreambuf_iterator<char>::equal(v35, v36) )
  {
    if ( v35->_M_have_c )
    {
      v40 = (unsigned __int8)v35->_M_c;
    }
    else
    {
      v38 = v35->_M_buf->_M_gnext;
      v39 = v38 >= v35->_M_buf->_M_gend
          ? (*((int (__fastcall **)(std::streambuf *))v35->_M_buf->_vptr.basic_streambuf + 8))(v35->_M_buf)
          : (unsigned __int8)*v38;
      v40 = (unsigned __int8)v39;
      v35->_M_c = v39;
      v35->_M_eof = v39 == -1;
      v35->_M_have_c = 1;
    }
    if ( (*(_DWORD *)(4 * v40 + *(_DWORD *)&p_lasta[1]._M_c) & 0x40) != 0 )
    {
      std::istreambuf_iterator<char>::operator++(&v49, v35, 0);
      v27 = (unsigned __int8)v49._M_c;
      if ( !v49._M_have_c )
      {
        v41 = v49._M_buf->_M_gnext;
        if ( v41 >= v49._M_buf->_M_gend )
          v42 = (*((int (__fastcall **)(std::streambuf *, _DWORD))v49._M_buf->_vptr.basic_streambuf + 8))(
                  v49._M_buf,
                  (unsigned __int8)v49._M_c);
        else
          v42 = (unsigned __int8)*v41;
        v27 = (unsigned __int8)v42;
        v49._M_eof = v42 == -1;
      }
      goto LABEL_54;
    }
  }
  v37 = 0;
  if ( *__syntax_ok )
    v37 = __frac_digits == nullptr;
  *__syntax_ok = v37;
  return 1;
}


// ===== 8b239c std::priv::__money_do_get<char,std::istreambuf_iterator<char,std::char_traits<char>>,std::string>(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,bool,std::ios_base &,int &,std::string &,bool &,char *) =====
std::istreambuf_iterator<char> *__fastcall std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        bool __intl,
        std::ios_base *const __str,
        int *const __err,
        std::pair<std::istreambuf_iterator<char>,bool> *__digits,
        bool *const __is_positive,
        std::string *__digitsa)
{
  std::istreambuf_iterator<char> *p_first; // r4
  Elf32_Dyn **v10; // r7
  char *M_gnext; // r3
  char *v12; // r3
  std::locale *v13; // r9
  std::locale::facet *v14; // r10
  std::istreambuf_iterator<char> *p_M_c; // r6
  unsigned int M_impl_low; // r3
  std::locale *p_loc; // r0
  const std::string *container; // r11
  char *M_data; // r3
  char *M_finish; // r2
  unsigned __int8 v22; // r0
  std::istreambuf_iterator<char> v23; // r1
  int v24; // r0
  int v25; // r3
  std::istreambuf_iterator<char> v26; // r1
  int v27; // r3
  std::istreambuf_iterator<char> v28; // r1
  std::istreambuf_iterator<char> v29; // r1
  int v30; // r3
  int v31; // r0
  std::string *v32; // r1
  char *v33; // r2
  int v34; // r0
  int v35; // r0
  std::string *v36; // r3
  char *v37; // r1
  char *v38; // r2
  _BYTE _c_type[3]; // [sp+0h] [bp-12Ch]
  char *__point; // [sp+4h] [bp-128h]
  char *__frac_digits; // [sp+8h] [bp-124h]
  int v44; // [sp+2Ch] [bp-100h]
  std::back_insert_iterator<std::string > __out_ite; // [sp+30h] [bp-FCh]
  _WORD *__last_4; // [sp+48h] [bp-E4h]
  bool *v47; // [sp+4Ch] [bp-E0h]
  bool *v48; // [sp+50h] [bp-DCh]
  Elf32_Dyn **v49; // [sp+54h] [bp-D8h]
  int v50; // [sp+58h] [bp-D4h]
  unsigned __int8 v51; // [sp+5Ch] [bp-D0h]
  std::istreambuf_iterator<char> __first; // [sp+68h] [bp-C4h] BYREF
  std::istreambuf_iterator<char> __sa; // [sp+70h] [bp-BCh] BYREF
  __int16 v54; // [sp+78h] [bp-B4h]
  bool v55; // [sp+7Ah] [bp-B2h]
  std::pair<std::istreambuf_iterator<char>,bool> __result; // [sp+7Ch] [bp-B0h]
  int v57; // [sp+88h] [bp-A4h]
  std::locale v58; // [sp+8Ch] [bp-A0h] BYREF
  std::locale __loc; // [sp+94h] [bp-98h] BYREF
  std::locale *v60; // [sp+A4h] [bp-88h]
  std::locale *v61; // [sp+A8h] [bp-84h]
  _BYTE v62[8]; // [sp+ACh] [bp-80h] BYREF
  std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string >::string_type __curs; // [sp+CCh] [bp-60h] BYREF
  std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string >::string_type __buf; // [sp+E4h] [bp-48h] BYREF
  std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string >::string_type __ps; // [sp+FCh] [bp-30h] BYREF
  std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string >::string_type __ns; // [sp+114h] [bp-18h]
  std::streambuf *varg_r3; // [sp+154h] [bp+28h] BYREF
  std::istreambuf_iterator<char> v68; // 0:kr00_8.8
  std::istreambuf_iterator<char> std__istreambuf_iterator_char_; // 0:r3.4,4:^0.4
  std::istreambuf_iterator<char> std__istreambuf_iterator_char_b; // 0:r3.4,4:^0.4

  p_first = &__first;
  __first = __s;
  v10 = &__GLOBAL_OFFSET_TABLE_;
  if ( __s._M_buf && !__first._M_have_c )
  {
    M_gnext = __first._M_buf->_M_gnext;
    if ( M_gnext < __first._M_buf->_M_gend )
      v35 = (unsigned __int8)*M_gnext;
    else
      v35 = (*((int (**)(void))__first._M_buf->_vptr.basic_streambuf + 8))();
    __first._M_c = v35;
    __first._M_eof = v35 == -1;
    __first._M_have_c = 1;
  }
  if ( !varg_r3 || __end._M_have_c )
  {
    if ( __first._M_eof != __end._M_eof )
    {
LABEL_13:
      std::locale::locale(&v58, &__str->_M_locale);
      v13 = (std::locale *)std::locale::_M_use_facet(&v58, &std::moneypunct<char,false>::id);
      v14 = std::locale::_M_use_facet(&v58, &std::moneypunct<char,true>::id);
      p_M_c = (std::istreambuf_iterator<char> *)std::locale::_M_use_facet(&v58, &std::ctype<char>::id);
      if ( __intl )
      {
        *(_DWORD *)&__result.second = (*((int (__fastcall **)(std::locale::facet *))v14->_vptr.facet + 10))(v14);
        __out_ite.container = (std::string *)__result.second;
        v57 = *(_DWORD *)&__result.second;
        (*((void (__fastcall **)(char **, std::locale::facet *))v14->_vptr.facet + 7))(&__ps._M_finish, v14);
        (*((void (__fastcall **)(char **, std::locale::facet *))v14->_vptr.facet + 6))(&__buf._M_finish, v14);
      }
      else
      {
        *(_DWORD *)&__result.first._M_c = ((int (__fastcall *)(std::locale *))v13->_M_impl->facets_vec._M_end_of_storage._M_data)(v13);
        __out_ite.container = (std::string *)(unsigned __int8)__result.first._M_c;
        v57 = *(_DWORD *)&__result.first._M_c;
        ((void (__fastcall *)(char **, std::locale *))v13->_M_impl->name._M_start_of_storage._M_data)(
          &__ps._M_finish,
          v13);
        ((void (__fastcall *)(char **, std::locale *))v13->_M_impl->name._M_finish)(&__buf._M_finish, v13);
      }
      v50 = __str->_M_fmtflags & 0x200;
      *(_DWORD *)&__buf._M_buffers._M_static_buf[8] = &__curs._M_finish;
      *(_DWORD *)&__buf._M_buffers._M_static_buf[12] = &__curs._M_finish;
      p_loc = (std::locale *)((int (__fastcall *)(char **, int))&elf_hash_bucket[73])(&__curs._M_finish, 16);
      while ( 1 )
      {
        v44 = (int)p_loc;
        container = (const std::string *)v62;
        (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v14->_vptr.facet + 4))(v62, v14);
        while ( 1 )
        {
          M_data = container->_M_start_of_storage._M_data;
          M_finish = container->_M_finish;
          *v48 = 1;
          v22 = 0;
          if ( M_data != M_finish )
          {
            if ( __intl )
              v22 = (*((int (__fastcall **)(std::locale::facet *))v14->_vptr.facet + 3))(v14);
            else
              v22 = ((int (__fastcall *)(Elf32_Dyn **))(*v10)[1].d_un.d_val)(v10);
          }
          v23._M_buf = varg_r3;
          *(_DWORD *)&v23._M_c = *(_DWORD *)&__end._M_c;
          v24 = std::priv::__get_monetary_value<std::istreambuf_iterator<char>,std::back_insert_iterator<std::string>,char>(
                  p_first,
                  v23,
                  __out_ite,
                  p_M_c,
                  v51,
                  (std::istreambuf_iterator<char> *)v44,
                  v22,
                  container,
                  v48);
          v25 = *v48;
          if ( !*v48 )
          {
            v25 = *__err | 4;
            *__err = v25;
          }
          if ( !v24 )
          {
            *__err = 4;
            p_first = (std::istreambuf_iterator<char> *)container;
            LOBYTE(container) = __out_ite.container;
            retstr->_M_buf = __first._M_buf;
            *(_WORD *)&retstr->_M_c = *__last_4;
            retstr->_M_have_c = *v47;
LABEL_57:
            v25 = (int)__is_positive;
          }
LABEL_58:
          *(_BYTE *)v25 = (_BYTE)container;
          while ( &v58 != v13 )
          {
            M_impl_low = LOBYTE(v13->_M_impl);
            v13 = (std::locale *)((char *)v13 + 1);
            if ( M_impl_low <= 4 )
              __asm { MOV             PC, R3 }
          }
          v10 = v49;
          container = __out_ite.container;
          if ( !*__is_positive )
            break;
          if ( (unsigned int)(*(_DWORD *)&__ps._M_buffers._M_static_buf[8]
                            - *(_DWORD *)&__ps._M_buffers._M_static_buf[12]) <= 1 )
            goto LABEL_56;
          p_M_c = (std::istreambuf_iterator<char> *)&__sa._M_c;
          *(_DWORD *)&std__istreambuf_iterator_char_._M_c = *(_DWORD *)&__end._M_c;
          v26._M_buf = __first._M_buf;
          std__istreambuf_iterator_char_._M_buf = varg_r3;
          *(_DWORD *)&v26._M_c = *(_DWORD *)&p_first->_M_c;
          std::priv::__get_string<std::istreambuf_iterator<char>,char *>(
            (std::pair<std::istreambuf_iterator<char>,bool> *)&__sa._M_c,
            v26,
            std__istreambuf_iterator_char_,
            (char *)(*(_DWORD *)&__ps._M_buffers._M_static_buf[12] + 1),
            *(char **)&__ps._M_buffers._M_static_buf[8]);
          __first._M_buf = *(std::streambuf **)&__sa._M_c;
          *__last_4 = v54;
          *v47 = v55;
          if ( LOBYTE(__result.first._M_buf) )
          {
LABEL_56:
            v27 = *__err;
          }
          else
          {
            v27 = *__err | 4;
            *__err = v27;
          }
          if ( (v27 & 4) != 0 )
            goto LABEL_39;
          (*(void (__fastcall **)(std::pair<std::istreambuf_iterator<char>,bool> *, Elf32_Dyn **, char *))(v27 + 16))(
            __digits,
            v49,
            __out_ite.container->_M_finish);
        }
        if ( (unsigned int)(*(_DWORD *)&__ns._M_buffers._M_static_buf[8] - *(_DWORD *)&__ns._M_buffers._M_static_buf[12]) <= 1 )
          goto LABEL_55;
        v29._M_buf = __first._M_buf;
        *(_DWORD *)&std__istreambuf_iterator_char_b._M_c = *(_DWORD *)&__end._M_c;
        *(_DWORD *)&v29._M_c = *(_DWORD *)&p_first->_M_c;
        std__istreambuf_iterator_char_b._M_buf = varg_r3;
        std::priv::__get_string<std::istreambuf_iterator<char>,char *>(
          (std::pair<std::istreambuf_iterator<char>,bool> *)&__sa._M_c,
          v29,
          std__istreambuf_iterator_char_b,
          (char *)(*(_DWORD *)&__ns._M_buffers._M_static_buf[12] + 1),
          *(char **)&__ns._M_buffers._M_static_buf[8]);
        __first._M_buf = *(std::streambuf **)&__sa._M_c;
        *__last_4 = v54;
        *v47 = v55;
        if ( LOBYTE(__result.first._M_buf) )
        {
LABEL_55:
          v30 = *__err;
        }
        else
        {
          v30 = *__err | 4;
          *__err = v30;
        }
        v13 = (std::locale *)(v30 & 4);
        if ( (v30 & 4) != 0 )
        {
LABEL_39:
          if ( std::istreambuf_iterator<char>::equal(p_first, (const std::istreambuf_iterator<char> *const)&varg_r3) )
            *__err |= 2u;
          retstr->_M_buf = __first._M_buf;
          *(_WORD *)&retstr->_M_c = *__last_4;
          v25 = *v47;
          retstr->_M_have_c = v25;
          goto LABEL_58;
        }
        v31 = ((int (__fastcall *)(std::istreambuf_iterator<char> *, int))p_M_c->_M_buf->_M_pend)(p_M_c, 45);
        v14 = (std::locale::facet *)v31;
        v32 = *(std::string **)&__digits[1].first._M_c;
        v33 = *(char **)&__digits[1].second;
        if ( v32 != (std::string *)v33 )
        {
          *v33 = v31;
          v36 = (std::string *)__digits;
          v37 = *(char **)&__digits[1].second;
          v38 = *(char **)&__digits[1].first._M_c;
          if ( v37 + 1 != v38 )
          {
            v37[1] = *v38;
            v36 = (std::string *)(*(_DWORD *)&__digits[1].first._M_c + v37 + 1 - v38);
            *(_DWORD *)&__digits[1].first._M_c = v36;
          }
          *(_DWORD *)&v28._M_c = *(_DWORD *)&p_first->_M_c;
          v28._M_buf = (std::streambuf *)__out_ite.container->_M_start_of_storage._M_data;
          v68._M_buf = (std::streambuf *)v36;
          v68._M_c = _c_type[0];
          v68._M_eof = _c_type[1];
          v68._M_have_c = _c_type[2];
          std::priv::__get_string<std::istreambuf_iterator<char>,char *>(__digits, v28, v68, __point, __frac_digits);
          if ( !*(_BYTE *)(v44 + 8) && v50 )
            *__err = 4;
          p_first->_M_buf = *(std::streambuf **)v44;
          *__last_4 = v54;
          *v47 = v55;
          goto LABEL_57;
        }
        if ( v32 == (std::string *)__digits || (unsigned int)((char *)__digits->first._M_buf - (char *)v32 - 1) > 1 )
          JUMPOUT(0x8B238A);
        p_M_c = (std::istreambuf_iterator<char> *)&__loc;
        p_loc = &__loc;
        v60 = &__loc;
        v61 = &__loc;
      }
    }
  }
  else
  {
    v12 = varg_r3->_M_gnext;
    if ( v12 < varg_r3->_M_gend )
      v34 = (unsigned __int8)*v12;
    else
      v34 = (*((int (**)(void))varg_r3->_vptr.basic_streambuf + 8))();
    __end._M_c = v34;
    __end._M_eof = v34 == -1;
    __end._M_have_c = 1;
    if ( __first._M_eof != __end._M_eof )
      goto LABEL_13;
  }
  *__err |= 2u;
  *retstr = __first;
  return retstr;
}


// ===== 8b2af0 std::money_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,bool,std::ios_base &,int &,std::string &) =====
std::istreambuf_iterator<char> *__fastcall std::money_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::money_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        bool __intl,
        std::ios_base *const __str,
        int *const __err,
        std::pair<std::istreambuf_iterator<char>,bool> *__digits)
{
  char __is_positive; // [sp+2Fh] [bp-5h] BYREF

  __is_positive = 1;
  std::priv::__money_do_get<char,std::istreambuf_iterator<char>,std::string>(
    retstr,
    __s,
    __end,
    __intl,
    __str,
    __err,
    __digits,
    (bool *const)&__is_positive,
    nullptr);
  return retstr;
}


// ===== 8b2b30 std::money_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,bool,std::ios_base &,int &,long double &) =====
void __fastcall std::money_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::money_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        bool __intl,
        std::ios_base *const __str,
        int *const __err,
        double *const __units)
{
  std::string __buf; // [sp+44h] [bp+1Ch] BYREF

  __buf._M_finish = (char *)&__buf;
  __buf._M_start_of_storage._M_data = (char *)&__buf;
  JUMPOUT(0x8B267E);
}


// ===== 8b2c44 std::priv::__do_get_float<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,long double,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,long double &,wchar_t *) =====
void __fastcall std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,long double,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val,
        wchar_t *a7)
{
  std::locale __loc; // [sp+18h] [bp-22Ch] BYREF
  std::priv::__iostring __buf; // [sp+1Ch] [bp-228h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8B286A);
}


// ===== 8b2da0 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,long double &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        double *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_float<std::istreambuf_iterator<wchar_t>,long double,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b2dd0 std::priv::__do_get_integer<std::istreambuf_iterator<char,std::char_traits<char>>,ulong,char>(std::istreambuf_iterator<char,std::char_traits<char>>&,std::istreambuf_iterator<char,std::char_traits<char>>&,std::ios_base &,int &,ulong &,char *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned long,char>(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        std::istreambuf_iterator<char> *const __in_ite,
        std::istreambuf_iterator<char> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val,
        char *a7)
{
  const std::ctype<char> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  std::streambuf *v15; // r0
  char *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::streambuf *v19; // r0
  std::streambuf *v20; // r0
  char *v21; // r3
  int v22; // r0
  int M_eof; // r3
  char *v24; // r3
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  char __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<char> *)std::locale::_M_use_facet(&__loc, &std::ctype<char>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<char>,char>(__in_ite, __end, __str->_M_fmtflags, v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = (unsigned __int8)*M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = (unsigned __int8)*v16;
    else
      v26 = (*((int (__fastcall **)(std::streambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<char>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<char>,unsigned long,char>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B29AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::streambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = (unsigned __int8)*v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    LOBYTE(M_eof) = 1;
    while ( 1 )
    {
      __in_ite->_M_have_c = M_eof;
      v20 = __end->_M_buf;
      if ( !__end->_M_buf )
        break;
LABEL_16:
      if ( __end->_M_have_c )
        break;
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::streambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = (unsigned __int8)*v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
LABEL_29:
      if ( __in_ite->_M_eof == M_eof )
      {
        M_eof = *__err | 2;
        *__err = M_eof;
      }
    }
LABEL_28:
    M_eof = __end->_M_eof;
    goto LABEL_29;
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_28;
  goto LABEL_16;
}


// ===== 8b2fb4 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,ulong &) =====
std::istreambuf_iterator<char> *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::do_get(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::num_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __in_ite,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val)
{
  std::istreambuf_iterator<char> __in_itea; // [sp+10h] [bp-8h] BYREF

  __in_itea = __in_ite;
  std::priv::__do_get_integer<std::istreambuf_iterator<char>,unsigned long,char>(
    retstr,
    &__in_itea,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b2fdc std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,ulong,wchar_t>(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>&,std::ios_base &,int &,ulong &,wchar_t *) =====
void __fastcall std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned long,wchar_t>(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        std::istreambuf_iterator<wchar_t> *const __in_ite,
        std::istreambuf_iterator<wchar_t> *const __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val,
        wchar_t *a7)
{
  const std::ctype<wchar_t> *v10; // r0
  int v11; // r0
  char v12; // r2
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  std::wstreambuf *v15; // r0
  wchar_t *v16; // r3
  _BOOL4 v17; // r3
  std::locale::facet *v18; // r9
  std::wstreambuf *v19; // r0
  std::wstreambuf *v20; // r0
  wchar_t *v21; // r3
  wchar_t v22; // r0
  _BOOL4 M_eof; // r3
  wchar_t *v24; // r3
  wchar_t v25; // r0
  wchar_t v26; // r0
  wchar_t v27; // r0
  int v28; // [sp+1Ch] [bp-40h]
  int __got; // [sp+20h] [bp-3Ch]
  int __separator; // [sp+2Ch] [bp-30h]
  std::locale __loc; // [sp+34h] [bp-28h] BYREF
  std::__false_type v32; // [sp+38h] [bp-24h] BYREF
  std::string __grouping; // [sp+3Ch] [bp-20h] BYREF

  std::locale::locale(&__loc, &__str->_M_locale);
  v10 = (const std::ctype<wchar_t> *)std::locale::_M_use_facet(&__loc, &std::ctype<wchar_t>::id);
  v11 = std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t>,wchar_t>(
          __in_ite,
          __end,
          __str->_M_fmtflags,
          v10);
  v12 = v11;
  v28 = v11;
  M_buf = __in_ite->_M_buf;
  __got = v12 & 1;
  if ( __in_ite->_M_buf && !__in_ite->_M_have_c )
  {
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext < M_buf->_M_gend )
      v27 = *M_gnext;
    else
      v27 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    __in_ite->_M_c = v27;
    __in_ite->_M_eof = v27 == -1;
    __in_ite->_M_have_c = 1;
  }
  v15 = __end->_M_buf;
  if ( !__end->_M_buf || __end->_M_have_c )
  {
    if ( __in_ite->_M_eof != __end->_M_eof )
      goto LABEL_13;
  }
  else
  {
    v16 = v15->_M_gnext;
    if ( v16 < v15->_M_gend )
      v26 = *v16;
    else
      v26 = (*((int (__fastcall **)(std::wstreambuf *))v15->_vptr.basic_streambuf + 8))(v15);
    __end->_M_c = v26;
    v17 = v26 == -1;
    __end->_M_eof = v17;
    __end->_M_have_c = 1;
    if ( __in_ite->_M_eof != v17 )
    {
LABEL_13:
      v18 = std::locale::_M_use_facet(&__loc, &std::numpunct<wchar_t>::id);
      __separator = (*((int (__fastcall **)(std::locale::facet *))v18->_vptr.facet + 3))(v18);
      (*((void (__fastcall **)(std::string *))v18->_vptr.facet + 4))(&__grouping);
      std::priv::__get_integer<std::istreambuf_iterator<wchar_t>,unsigned long,wchar_t>(
        __in_ite,
        __end,
        (unsigned __int64)v28 >> 2,
        __val,
        __got,
        (v28 & 2) != 0,
        __separator,
        &__grouping,
        &v32);
      JUMPOUT(0x8B29AE);
    }
  }
  if ( __got == 1 )
  {
    *__val = 0;
    *__err = 0;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  else
  {
    *__err = 4;
    v19 = __in_ite->_M_buf;
    if ( !__in_ite->_M_buf )
      goto LABEL_15;
  }
  if ( !__in_ite->_M_have_c )
  {
    v24 = v19->_M_gnext;
    if ( v24 >= v19->_M_gend )
      v25 = (*((int (__fastcall **)(std::wstreambuf *))v19->_vptr.basic_streambuf + 8))(v19);
    else
      v25 = *v24;
    __in_ite->_M_c = v25;
    __in_ite->_M_eof = v25 == -1;
    __in_ite->_M_have_c = 1;
    v20 = __end->_M_buf;
    if ( !__end->_M_buf )
      goto LABEL_27;
LABEL_16:
    if ( !__end->_M_have_c )
    {
      v21 = v20->_M_gnext;
      if ( v21 >= v20->_M_gend )
        v22 = (*((int (__fastcall **)(std::wstreambuf *))v20->_vptr.basic_streambuf + 8))(v20);
      else
        v22 = *v21;
      __end->_M_c = v22;
      M_eof = v22 == -1;
      __end->_M_eof = M_eof;
      __end->_M_have_c = 1;
      goto LABEL_28;
    }
LABEL_27:
    M_eof = __end->_M_eof;
LABEL_28:
    if ( __in_ite->_M_eof == M_eof )
      *__err |= 2u;
    JUMPOUT(0x8B2F3C);
  }
LABEL_15:
  v20 = __end->_M_buf;
  if ( !__end->_M_buf )
    goto LABEL_27;
  goto LABEL_16;
}


// ===== 8b31c0 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,ulong &) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __in_ite,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        int *const __err,
        unsigned int *const __val)
{
  int varg_r2; // [sp+18h] [bp+8h] BYREF

  std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t>,unsigned long,wchar_t>(
    retstr,
    (std::istreambuf_iterator<wchar_t> *const)&varg_r2,
    &__end,
    __str,
    __err,
    __val,
    nullptr);
  return retstr;
}


// ===== 8b31f0 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_get_date(std::istreambuf_iterator<char,std::char_traits<char>>,std::istreambuf_iterator<char,std::char_traits<char>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<char> *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_get_date(
        std::istreambuf_iterator<char> *__return_ptr retstr,
        const std::time_get<char,std::istreambuf_iterator<char> > *const this,
        std::istreambuf_iterator<char> __s,
        std::istreambuf_iterator<char> __end,
        std::ios_base *const __str,
        int *const __err,
        tm *__t)
{
  std::streambuf *M_buf; // r5
  int M_eof; // r8
  char M_c; // r11
  _BOOL4 M_have_c; // r10
  char *M_finish; // r9
  char *M_gnext; // r3
  int v14; // r0
  char *v15; // r3
  int v16; // r0
  int v18; // [sp+20h] [bp-14h]

  M_buf = __s._M_buf;
  M_eof = __s._M_eof;
  M_c = __s._M_c;
  M_have_c = __s._M_have_c;
  v18 = __end._M_eof;
  M_finish = this->_M_timeinfo._M_date_format._M_finish;
  if ( std::priv::__get_formatted_time<std::istreambuf_iterator<char>,char,std::priv::_Time_Info>(
         __s,
         __end,
         this->_M_timeinfo._M_date_format._M_start_of_storage._M_data,
         M_finish,
         nullptr,
         &this->_M_timeinfo,
         __str,
         __err,
         __t) == M_finish )
  {
    *__err = 0;
  }
  else
  {
    *__err = 4;
    if ( M_buf && !M_have_c )
    {
      M_gnext = M_buf->_M_gnext;
      if ( M_gnext >= M_buf->_M_gend )
        v14 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v14 = (unsigned __int8)*M_gnext;
      M_c = v14;
      M_eof = v14 == -1;
      LOBYTE(M_have_c) = 1;
    }
    if ( __end._M_buf && !__end._M_have_c )
    {
      v15 = __end._M_buf->_M_gnext;
      if ( v15 >= __end._M_buf->_M_gend )
        v16 = (*((int (__fastcall **)(std::streambuf *))__end._M_buf->_vptr.basic_streambuf + 8))(__end._M_buf);
      else
        v16 = (unsigned __int8)*v15;
      v18 = v16 == -1;
    }
    if ( v18 == M_eof )
      *__err |= 2u;
  }
  retstr->_M_eof = M_eof;
  retstr->_M_buf = M_buf;
  retstr->_M_c = M_c;
  retstr->_M_have_c = M_have_c;
  return retstr;
}


// ===== 8b32e0 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_get_date(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>,std::ios_base &,int &,tm *) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_date(
        std::istreambuf_iterator<wchar_t> *__return_ptr retstr,
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this,
        std::istreambuf_iterator<wchar_t> __s,
        std::istreambuf_iterator<wchar_t> __end,
        std::ios_base *const __str,
        std::priv::_WTime_Info *__err,
        const std::ios_base *__t)
{
  std::wstreambuf *M_buf; // r5
  wchar_t M_c; // r8
  int M_eof; // r9
  char M_have_c; // r11
  char *M_finish; // r10
  int *M_gnext; // r3
  int v14; // r0
  wchar_t *v15; // r3
  int v16; // r0
  int v18; // [sp+28h] [bp-Ch]

  M_buf = __s._M_buf;
  M_c = __s._M_c;
  M_eof = __s._M_eof;
  M_have_c = __s._M_have_c;
  v18 = __end._M_eof;
  M_finish = this->_M_timeinfo._M_date_format._M_finish;
  if ( std::priv::__get_formatted_time<std::istreambuf_iterator<wchar_t>,wchar_t,std::priv::_WTime_Info>(
         __s,
         __end,
         this->_M_timeinfo._M_date_format._M_start_of_storage._M_data,
         M_finish,
         nullptr,
         &this->_M_timeinfo,
         __str,
         __err,
         __t) == M_finish )
  {
    __err->_M_time_format._M_buffers._M_end_of_storage = nullptr;
  }
  else
  {
    __err->_M_time_format._M_buffers._M_end_of_storage = byte_4;
    if ( M_buf && !__s._M_have_c )
    {
      M_gnext = (int *)M_buf->_M_gnext;
      if ( (wchar_t *)M_gnext >= M_buf->_M_gend )
        v14 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
      else
        v14 = *M_gnext;
      M_c = v14;
      M_eof = v14 == -1;
      M_have_c = 1;
    }
    if ( __end._M_buf && !__end._M_have_c )
    {
      v15 = __end._M_buf->_M_gnext;
      if ( v15 >= __end._M_buf->_M_gend )
        v16 = (*((int (__fastcall **)(std::wstreambuf *))__end._M_buf->_vptr.basic_streambuf + 8))(__end._M_buf);
      else
        v16 = *v15;
      v18 = v16 == -1;
    }
    if ( v18 == M_eof )
      __err->_M_time_format._M_buffers._M_end_of_storage = (char *)((int)__err->_M_time_format._M_buffers._M_end_of_storage
                                                                  | 2);
  }
  retstr->_M_eof = M_eof;
  retstr->_M_buf = M_buf;
  retstr->_M_c = M_c;
  retstr->_M_have_c = M_have_c;
  return retstr;
}


// ===== 8b33dc std::priv::_Stl_prime<bool>::_S_prev_sizes(uint,uint const*&,uint const*&) =====
void __fastcall std::priv::_Stl_prime<bool>::_S_prev_sizes(
        size_t __n,
        const size_t **const __begin,
        const size_t **const __pos)
{
  int v4; // r7
  const size_t *v5; // r2
  int v6; // r4
  const size_t *v7; // r5

  v4 = 30;
  v5 = (const size_t *)"\a";
  *__begin = (const size_t *)"\a";
  while ( 1 )
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    if ( __n <= *v7 )
      break;
LABEL_5:
    v4 = v4 - 1 - v6;
    v5 = v7 + 1;
    if ( v4 <= 0 )
      goto LABEL_6;
  }
  while ( 1 )
  {
    v4 = v6;
    if ( v6 <= 0 )
      break;
    v6 >>= 1;
    v7 = &v5[v6];
    if ( *v7 < __n )
      goto LABEL_5;
  }
LABEL_6:
  *__pos = v5;
  if ( v5 == (const size_t *)&jpt_8B4448 )
  {
    *__pos = (const size_t *)&unk_915CA4;
  }
  else if ( *v5 == __n && *__begin != v5 )
  {
    *__pos = v5 - 1;
  }
}


// ===== 8b3454 std::priv::_Loc_messages_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_messages_name(const _Locale_messages *l, char *s)
{
  return Locale_messages_name(l, s);
}


// ===== 8b345c std::priv::_Loc_messages_destroy(void *) =====
void __fastcall std::priv::_Loc_messages_destroy(_Locale_messages *p)
{
  Locale_messages_destroy(p);
}


// ===== 8b3464 std::priv::_Loc_monetary_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_monetary_name(const _Locale_monetary *l, char *s)
{
  return Locale_monetary_name(l, s);
}


// ===== 8b346c std::priv::_Loc_monetary_destroy(void *) =====
void __fastcall std::priv::_Loc_monetary_destroy(_Locale_monetary *p)
{
  Locale_monetary_destroy(p);
}


// ===== 8b3474 std::priv::_Loc_collate_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_collate_name(const _Locale_collate *l, char *s)
{
  return Locale_collate_name(l, s);
}


// ===== 8b347c std::priv::_Loc_collate_destroy(void *) =====
void __fastcall std::priv::_Loc_collate_destroy(_Locale_collate *p)
{
  Locale_collate_destroy(p);
}


// ===== 8b3484 std::priv::_Loc_time_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_time_name(const _Locale_time *l, char *s)
{
  return Locale_time_name(l, s);
}


// ===== 8b348c std::priv::_Loc_time_destroy(void *) =====
void __fastcall std::priv::_Loc_time_destroy(_Locale_time *p)
{
  Locale_time_destroy(p);
}


// ===== 8b3494 std::priv::_Loc_numeric_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_numeric_name(const _Locale_numeric *l, char *s)
{
  return Locale_numeric_name(l, s);
}


// ===== 8b349c std::priv::_Loc_numeric_destroy(void *) =====
void __fastcall std::priv::_Loc_numeric_destroy(_Locale_numeric *p)
{
  Locale_numeric_destroy(p);
}


// ===== 8b34a4 std::priv::_Loc_codecvt_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_codecvt_name(const _Locale_codecvt *l, char *s)
{
  return Locale_codecvt_name(l, s);
}


// ===== 8b34ac std::priv::_Loc_codecvt_destroy(void *) =====
void __fastcall std::priv::_Loc_codecvt_destroy(_Locale_codecvt *p)
{
  Locale_codecvt_destroy(p);
}


// ===== 8b34b4 std::priv::_Loc_ctype_name(void *,char *) =====
const char *__fastcall std::priv::_Loc_ctype_name(const _Locale_ctype *l, char *s)
{
  return Locale_ctype_name(l, s);
}


// ===== 8b34bc std::priv::_Loc_ctype_destroy(void *) =====
void __fastcall std::priv::_Loc_ctype_destroy(_Locale_ctype *p)
{
  Locale_ctype_destroy(p);
}


// ===== 8b34c4 std::priv::_Loc_messages_default(char *) =====
const char *__fastcall std::priv::_Loc_messages_default(char *p)
{
  return Locale_messages_default(p);
}


// ===== 8b34cc std::priv::_Loc_messages_create(char const*,_Locale_name_hint *,int *) =====
_Locale_messages *__fastcall std::priv::_Loc_messages_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_messages_create(s, hint, __err_code);
}


// ===== 8b34d4 std::priv::_Loc_monetary_default(char *) =====
const char *__fastcall std::priv::_Loc_monetary_default(char *p)
{
  return Locale_monetary_default(p);
}


// ===== 8b34dc std::priv::_Loc_monetary_create(char const*,_Locale_name_hint *,int *) =====
_Locale_monetary *__fastcall std::priv::_Loc_monetary_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_monetary_create(s, hint, __err_code);
}


// ===== 8b34e4 std::priv::_Loc_collate_default(char *) =====
const char *__fastcall std::priv::_Loc_collate_default(char *p)
{
  return Locale_collate_default(p);
}


// ===== 8b34ec std::priv::_Loc_collate_create(char const*,_Locale_name_hint *,int *) =====
_Locale_collate *__fastcall std::priv::_Loc_collate_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_collate_create(s, hint, __err_code);
}


// ===== 8b34f4 std::priv::_Loc_time_default(char *) =====
const char *__fastcall std::priv::_Loc_time_default(char *p)
{
  return Locale_time_default(p);
}


// ===== 8b34fc std::priv::_Loc_time_create(char const*,_Locale_name_hint *,int *) =====
_Locale_time *__fastcall std::priv::_Loc_time_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_time_create(s, hint, __err_code);
}


// ===== 8b3504 std::priv::_Loc_numeric_default(char *) =====
const char *__fastcall std::priv::_Loc_numeric_default(char *p)
{
  return Locale_numeric_default(p);
}


// ===== 8b350c std::priv::_Loc_numeric_create(char const*,_Locale_name_hint *,int *) =====
_Locale_numeric *__fastcall std::priv::_Loc_numeric_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_numeric_create(s, hint, __err_code);
}


// ===== 8b3514 std::priv::_Loc_ctype_default(char *) =====
const char *__fastcall std::priv::_Loc_ctype_default(char *p)
{
  return Locale_ctype_default(p);
}


// ===== 8b351c std::priv::_Loc_codecvt_create(char const*,_Locale_name_hint *,int *) =====
_Locale_codecvt *__fastcall std::priv::_Loc_codecvt_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_codecvt_create(s, hint, __err_code);
}


// ===== 8b3524 std::priv::_Loc_ctype_create(char const*,_Locale_name_hint *,int *) =====
_Locale_ctype *__fastcall std::priv::_Loc_ctype_create(const char *s, _Locale_name_hint *hint, int *__err_code)
{
  return Locale_ctype_create(s, hint, __err_code);
}


// ===== 8b352c std::vector<std::priv::_Slist_node_base *,std::allocator<std::priv::_Slist_node_base *>>::~vector() =====
std::vector<std::priv::_Slist_node_base*> *__fastcall std::vector<std::priv::_Slist_node_base *>::~vector(
        std::vector<std::priv::_Slist_node_base*> *const this)
{
  std::priv::_Slist_node_base **M_start; // r0
  size_t v3; // r1

  M_start = this->_M_start;
  if ( M_start )
  {
    v3 = 4 * (this->_M_end_of_storage._M_data - M_start);
    if ( v3 > 0x80 )
      JUMPOUT(0x8B32B4);
    std::__node_alloc::_M_deallocate(M_start, v3);
  }
  return this;
}


// ===== 8b3550 std::allocator<std::priv::_Slist_node_base *>::_M_allocate(uint,uint &) =====
// positive sp value has been detected, the output may be wrong!
std::priv::_Slist_node_base **__fastcall std::allocator<std::priv::_Slist_node_base *>::_M_allocate(
        std::allocator<std::priv::_Slist_node_base*> *const this,
        size_t __n,
        size_t *const __allocated_n,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9)
{
  std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *v9; // r5
  std::priv::_Slist_node_base **result; // r0
  int v12; // [sp-4h] [bp-Ch]
  size_t v13; // [sp+0h] [bp-8h] BYREF

  if ( __n > 0x3FFFFFFF )
    JUMPOUT(0x8B30C8);
  result = nullptr;
  if ( __n )
  {
    v13 = 4 * __n;
    if ( 4 * __n > 0x80 )
    {
      if ( v12 != 0x3FFFFFFF )
        JUMPOUT(0x8B32E2);
      if ( MEMORY[0x3FFFFFFF] < (unsigned int)__allocated_n )
        std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_rehash(
          v9,
          MEMORY[0x3FFFFFFF]);
      __asm { POP             {R4-R7,PC} }
    }
    result = (std::priv::_Slist_node_base **)std::__node_alloc::_M_allocate(&v13);
    *__allocated_n = v13 >> 2;
  }
  return result;
}


// ===== 8b3598 std::vector<std::priv::_Slist_node_base *,std::allocator<std::priv::_Slist_node_base *>>::vector(uint,std::priv::_Slist_node_base * const&,std::allocator<std::priv::_Slist_node_base *> const&) =====
std::vector<std::priv::_Slist_node_base*> *__fastcall std::vector<std::priv::_Slist_node_base *>::vector(
        std::vector<std::priv::_Slist_node_base*> *const this,
        size_t __n,
        std::priv::_Slist_node_base **__val,
        const std::allocator<std::priv::_Slist_node_base*> *const __a)
{
  int v6; // r6
  std::priv::_Slist_node_base **v7; // r0
  std::priv::_Slist_node_base **v8; // r2
  std::priv::_Slist_node_base **v9; // r3
  int v10; // r6
  int v12; // [sp+0h] [bp-8h]
  size_t __allocated_n; // [sp+4h] [bp-4h] BYREF
  int savedregs[4]; // [sp+8h] [bp+0h]

  __allocated_n = __n;
  this->_M_start = nullptr;
  this->_M_finish = nullptr;
  this->_M_end_of_storage._M_data = nullptr;
  v6 = __n;
  v7 = std::allocator<std::priv::_Slist_node_base *>::_M_allocate(
         (std::allocator<std::priv::_Slist_node_base*> *const)&this->_M_end_of_storage,
         __n,
         &__allocated_n,
         0,
         v12,
         __allocated_n,
         savedregs[0],
         savedregs[1],
         savedregs[2]);
  v6 *= 4;
  v8 = (std::priv::_Slist_node_base **)((char *)v7 + v6);
  v9 = &v7[__allocated_n];
  v10 = v6 >> 2;
  this->_M_start = v7;
  this->_M_finish = v7;
  this->_M_end_of_storage._M_data = v9;
  if ( v10 > 0 )
  {
    do
    {
      --v10;
      *v7++ = *__val;
    }
    while ( v10 );
  }
  this->_M_finish = v8;
  return this;
}


// ===== 8b35dc std::vector<std::priv::_Slist_node_base *,std::allocator<std::priv::_Slist_node_base *>>::_M_fill_assign(uint,std::priv::_Slist_node_base * const&) =====
void __fastcall std::vector<std::priv::_Slist_node_base *>::_M_fill_assign(
        std::vector<std::priv::_Slist_node_base*> *const this,
        size_t __n,
        std::priv::_Slist_node_base **__val)
{
  std::priv::_Slist_node_base **M_data; // r3
  std::priv::_Slist_node_base **M_start; // r0
  std::priv::_Slist_node_base **v6; // r5
  int v7; // r3
  signed int v8; // r6
  size_t v9; // r3
  std::priv::_Slist_node_base **v10; // r5
  signed int v11; // r1
  int v12; // r1
  std::priv::_Slist_node_base **v13; // r2
  std::priv::_Slist_node_base **M_finish; // r2
  std::priv::_Slist_node_base **v15; // r2
  std::vector<std::priv::_Slist_node_base*> __tmp; // [sp+0h] [bp-10h] BYREF
  std::allocator<std::priv::_Slist_node_base*> __a; // [sp+Ch] [bp-4h] BYREF

  M_data = this->_M_end_of_storage._M_data;
  M_start = this->_M_start;
  if ( __n > M_data - M_start )
  {
    std::vector<std::priv::_Slist_node_base *>::vector(&__tmp, __n, __val, &__a);
    v13 = this->_M_start;
    this->_M_start = __tmp._M_start;
    __tmp._M_start = v13;
    M_finish = this->_M_finish;
    this->_M_finish = __tmp._M_finish;
    __tmp._M_finish = M_finish;
    v15 = this->_M_end_of_storage._M_data;
    this->_M_end_of_storage._M_data = __tmp._M_end_of_storage._M_data;
    __tmp._M_end_of_storage._M_data = v15;
    std::vector<std::priv::_Slist_node_base *>::~vector(&__tmp);
    return;
  }
  v6 = this->_M_finish;
  v7 = v6 - M_start;
  v8 = v7;
  if ( __n > v7 )
  {
    if ( v7 > 0 )
    {
      do
      {
        --v7;
        *M_start++ = *__val;
      }
      while ( v7 );
      v6 = this->_M_finish;
      v8 = v6 - this->_M_start;
    }
    v11 = __n - v8;
    M_start = &v6[v11];
    v12 = (v11 * 4) >> 2;
    if ( v12 > 0 )
    {
      do
      {
        --v12;
        *v6++ = *__val;
      }
      while ( v12 );
    }
    goto LABEL_8;
  }
  if ( __n )
  {
    v9 = __n;
    v10 = M_start;
    do
    {
      --v9;
      *v10++ = *__val;
    }
    while ( v9 );
    v6 = this->_M_finish;
    M_start += __n;
  }
  if ( M_start != v6 )
LABEL_8:
    this->_M_finish = M_start;
}


// ===== 8b3674 std::vector<std::priv::_Slist_node_base *,std::allocator<std::priv::_Slist_node_base *>>::_M_allocate_and_copy<std::priv::_Slist_node_base **>(uint &,std::priv::_Slist_node_base **,std::priv::_Slist_node_base **) =====
None

// ===== 8b3698 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_rehash(uint) =====
void __fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_rehash(
        std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this,
        size_t __num_buckets)
{
  std::priv::_Slist_node_base *M_next; // r7
  std::priv::_Slist_node_base *v4; // r6
  char *v5; // r5
  char *v6; // r3
  int v7; // r0
  int v8; // r2
  std::priv::_Slist_node_base *v9; // r4
  std::priv::_Slist_node_base **M_start; // r0
  std::priv::_Slist_node_base **v11; // r2
  std::priv::_Slist_node_base *v12; // r4
  int v13; // r2
  std::priv::_Slist_node_base *i; // r1
  std::priv::_Slist_node_base *v15; // r1
  std::priv::_Slist_node_base **v16; // r0
  int v17; // r2
  std::priv::_Slist_node_base **v18; // r0
  std::priv::_Slist_node_base **M_finish; // r3
  std::priv::_Slist_node_base **M_data; // r3
  size_t v21; // r1
  std::priv::_Slist_node_base *v22; // r4
  std::priv::_Slist_node_base *v23; // r5
  std::priv::_Slist_node_base *v24; // r3
  std::priv::_Slist_node_base *v25; // r0
  size_t v26; // r1
  int v27; // r2
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *p_tmp_elems; // r3
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *p_M_elems; // [sp+8h] [bp-8h]
  std::vector<std::priv::_Slist_node_base*> __tmp; // [sp+10h] [bp+0h] BYREF
  std::priv::_Slist_node_base *__val; // [sp+1Ch] [bp+Ch] BYREF
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> __tmp_elems; // [sp+20h] [bp+10h] BYREF
  std::allocator<std::priv::_Slist_node_base*> __a; // [sp+24h] [bp+14h] BYREF

  __tmp_elems._M_head._M_data._M_next = nullptr;
  __val = nullptr;
  std::vector<std::priv::_Slist_node_base *>::vector(&__tmp, __num_buckets + 1, &__val, &__a);
  p_M_elems = &this->_M_elems;
  while ( 1 )
  {
    M_next = this->_M_elems._M_head._M_data._M_next;
    if ( !M_next )
      break;
    while ( 1 )
    {
      v4 = M_next[6]._M_next;
      v5 = (char *)((char *)M_next[5]._M_next - (char *)v4);
      if ( M_next[5]._M_next != v4 )
      {
        v6 = nullptr;
        v7 = 0;
        do
        {
          v8 = (unsigned __int8)(v6++)[(_DWORD)v4];
          v7 += 4 * v7 + v8;
        }
        while ( v5 != v6 );
        __asm { POP             {R4-R7,PC} }
      }
      v9 = M_next->_M_next;
      if ( v9 && v5 == (char *)((char *)v9[5]._M_next - (char *)v9[6]._M_next) )
        JUMPOUT(0x8B35E4);
      M_start = __tmp._M_start;
      v11 = __tmp._M_start;
      v12 = *__tmp._M_start;
      if ( *__tmp._M_start == __tmp_elems._M_head._M_data._M_next )
      {
        v27 = 0;
        p_tmp_elems = &__tmp_elems;
      }
      else
      {
        do
          p_tmp_elems = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)*--v11;
        while ( v12 == *v11 );
        v13 = v11 - __tmp._M_start + 1;
        for ( i = p_tmp_elems->_M_head._M_data._M_next; v12 != i; i = i->_M_next )
          p_tmp_elems = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)p_tmp_elems->_M_head._M_data._M_next;
        v27 = v13;
      }
      if ( p_M_elems != (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)M_next
        && p_tmp_elems != (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)M_next
        && p_M_elems != p_tmp_elems )
      {
        v15 = p_tmp_elems->_M_head._M_data._M_next;
        this->_M_elems._M_head._M_data = (std::priv::_Slist_node_base)M_next->_M_next;
        p_tmp_elems->_M_head._M_data._M_next = M_next;
        M_next->_M_next = v15;
        M_start = __tmp._M_start;
      }
      v16 = &M_start[v27];
      v17 = (4 - v27 * 4) >> 2;
      if ( v17 <= 0 )
        break;
      do
      {
        --v17;
        *v16++ = M_next;
      }
      while ( v17 );
      M_next = this->_M_elems._M_head._M_data._M_next;
      if ( !M_next )
        goto LABEL_24;
    }
  }
LABEL_24:
  this->_M_elems = __tmp_elems;
  __tmp_elems._M_head._M_data._M_next = M_next;
  v18 = this->_M_buckets._M_start;
  this->_M_buckets._M_start = __tmp._M_start;
  __tmp._M_start = v18;
  M_finish = this->_M_buckets._M_finish;
  this->_M_buckets._M_finish = __tmp._M_finish;
  __tmp._M_finish = M_finish;
  M_data = this->_M_buckets._M_end_of_storage._M_data;
  this->_M_buckets._M_end_of_storage._M_data = __tmp._M_end_of_storage._M_data;
  __tmp._M_end_of_storage._M_data = M_data;
  if ( v18 )
  {
    v21 = 4 * (M_data - v18);
    if ( v21 > 0x80 )
      JUMPOUT(0x8B32B4);
    std::__node_alloc::_M_deallocate(v18, v21);
  }
  v22 = __tmp_elems._M_head._M_data._M_next;
  while ( v22 )
  {
    v23 = v22;
    v24 = v22 + 1;
    v25 = v22[6]._M_next;
    v22 = v22->_M_next;
    if ( v25 != v24 && v25 )
    {
      v26 = (char *)v23[1]._M_next - (char *)v25;
      if ( v26 > 0x80 )
        JUMPOUT(0x8B32B2);
      std::__node_alloc::_M_deallocate(v25, v26);
    }
    std::__node_alloc::_M_deallocate(v23, 0x24u);
  }
}


// ===== 8b3834 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_reduce(void) =====
void __fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_reduce(
        std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this)
{
  JUMPOUT(0x8B32E2);
}


// ===== 8b391c std::vector<std::priv::_Slist_node_base *,std::allocator<std::priv::_Slist_node_base *>>::reserve(uint) =====
void __fastcall std::vector<std::priv::_Slist_node_base *>::reserve(
        std::vector<std::priv::_Slist_node_base*> *const this,
        size_t __n)
{
  std::priv::_Slist_node_base **M_start; // r2
  std::priv::_Slist_node_base **M_finish; // r3
  int v5; // r6
  std::priv::_Slist_node_base **v6; // r5
  std::priv::_Slist_node_base **v7; // r0
  size_t v8; // r1
  size_t v9; // r3
  int v10; // [sp+0h] [bp-8h]
  size_t __allocated_n; // [sp+4h] [bp-4h] BYREF
  int savedregs[4]; // [sp+8h] [bp+0h]

  __allocated_n = __n;
  M_start = this->_M_start;
  if ( __n > this->_M_end_of_storage._M_data - this->_M_start )
  {
    if ( __n > 0x3FFFFFFF )
    {
      std::__stl_throw_length_error("vector");
      M_start = this->_M_start;
    }
    M_finish = this->_M_finish;
    v5 = M_finish - M_start;
    if ( M_start )
    {
      v6 = std::vector<std::priv::_Slist_node_base *>::_M_allocate_and_copy<std::priv::_Slist_node_base **>(
             this,
             &__allocated_n,
             M_start,
             M_finish);
      v7 = this->_M_start;
      if ( this->_M_start )
      {
        v8 = 4 * (this->_M_end_of_storage._M_data - v7);
        if ( v8 > 0x80 )
          JUMPOUT(0x8B32B4);
        std::__node_alloc::_M_deallocate(v7, v8);
      }
    }
    else
    {
      v6 = std::allocator<std::priv::_Slist_node_base *>::_M_allocate(
             (std::allocator<std::priv::_Slist_node_base*> *const)&this->_M_end_of_storage,
             __allocated_n,
             &__allocated_n,
             (int)M_finish,
             v10,
             __allocated_n,
             savedregs[0],
             savedregs[1],
             savedregs[2]);
    }
    v9 = __allocated_n;
    this->_M_start = v6;
    this->_M_finish = &v6[v5];
    this->_M_end_of_storage._M_data = &v6[v9];
  }
}


// ===== 8b39a0 std::slist<std::pair<std::string const,std::pair<void *,uint>>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::erase_after(std::priv::_Slist_iterator<std::pair<std::string const,std::pair<void *,uint>>,std::_Nonconst_traits<std::pair<std::string const,std::pair<void *,uint>>>>) =====
std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > > __fastcall std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::erase_after(
        std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *const this,
        std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > > __pos,
        std::priv::_Slist_node_base ****a3)
{
  std::priv::_Slist_node_base ***v3; // r2
  std::priv::_Slist_node_base **v5; // r4
  int v6; // r3
  std::priv::_Slist_node_base *v7; // r6
  _BYTE *v8; // r0
  size_t v9; // r1

  v3 = *a3;
  v5 = *v3;
  v7 = **v3;
  v6 = (int)(*v3 + 1);
  *v3 = &v7->_M_next;
  v8 = *(_BYTE **)(v6 + 20);
  if ( v8 != (_BYTE *)v6 && v8 )
  {
    v9 = (char *)v5[1] - v8;
    if ( v9 > 0x80 )
      JUMPOUT(0x8B32B4);
    std::__node_alloc::_M_deallocate(v8, v9);
  }
  std::__node_alloc::_M_deallocate(v5, 0x24u);
  this->_M_head._M_data._M_next = v7;
  return (std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >)this;
}


// ===== 8b39d8 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::erase(std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<std::string const,std::pair<void *,uint>>,std::_Nonconst_traits<std::pair<std::string const,std::pair<void *,uint>>>>,std::priv::_ConstNonLocalHashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>>) =====
void __fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::erase(
        std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this,
        std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >,std::priv::_ConstNonLocalHashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > > > __it)
{
  std::priv::_Slist_node_base *M_next; // r4
  std::priv::_Slist_node_base *v3; // r6
  char *v5; // r1
  std::priv::_Slist_node_base **M_start; // r9
  char *v7; // r3
  int v8; // r0
  int v9; // r2
  std::priv::_Slist_node_base ***v10; // r2
  std::priv::_Slist_node_base **j; // r3
  int v12; // r2
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> **v13; // r1
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *v14; // r3
  int v15; // r4
  std::priv::_Slist_node_base **i; // r1
  int v17; // r4
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *p_M_elems; // r1
  std::priv::_Slist_node_base **v19; // r4
  int v20; // r6
  std::priv::_Slist_node_base *v21; // r3
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> v22; // [sp+0h] [bp-1Ch] BYREF
  std::priv::_Slist_node_base ***v23; // [sp+Ch] [bp-10h] BYREF
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> v24; // [sp+10h] [bp-Ch] BYREF
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *v25; // [sp+14h] [bp-8h] BYREF

  M_next = __it._M_ite._M_node->_M_next;
  v3 = __it._M_ite._M_node->_M_next[6]._M_next;
  v5 = (char *)((char *)__it._M_ite._M_node->_M_next[5]._M_next - (char *)v3);
  M_start = this->_M_buckets._M_start;
  if ( v5 )
  {
    v7 = nullptr;
    v8 = 0;
    do
    {
      v9 = (unsigned __int8)(v7++)[(_DWORD)v3];
      v8 += 4 * v8 + v9;
    }
    while ( v5 != v7 );
    JUMPOUT(0x8B3B30);
  }
  v10 = (std::priv::_Slist_node_base ***)*M_start;
  if ( *M_start == M_next )
  {
    if ( M_next == this->_M_elems._M_head._M_data._M_next )
    {
      p_M_elems = &this->_M_elems;
      v14 = &this->_M_elems;
      v17 = 0;
    }
    else
    {
      v13 = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> **)(M_start - 1);
      v14 = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)*(M_start - 1);
      if ( M_next == (std::priv::_Slist_node_base *)v14 )
      {
        do
          v14 = *--v13;
        while ( v10 == (std::priv::_Slist_node_base ***)*v13 );
      }
      v15 = (((char *)v13 - (char *)M_start) >> 2) + 1;
      for ( i = &v14->_M_head._M_data._M_next->_M_next;
            v10 != (std::priv::_Slist_node_base ***)i;
            i = (std::priv::_Slist_node_base **)*i )
      {
        v14 = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)v14->_M_head._M_data._M_next;
      }
      v17 = v15;
      p_M_elems = &this->_M_elems;
    }
    v19 = &M_start[v17];
    v20 = M_start + 1 - v19;
    v25 = v14;
    std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::erase_after(
      &v24,
      (std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >)p_M_elems,
      (std::priv::_Slist_node_base ****)&v25);
    v21 = v24._M_head._M_data._M_next;
    if ( v20 > 0 )
    {
      do
      {
        --v20;
        *v19++ = v21;
      }
      while ( v20 );
    }
    v12 = 1;
  }
  else
  {
    for ( j = *v10; ; j = (std::priv::_Slist_node_base **)*j )
    {
      if ( M_start[1] == (std::priv::_Slist_node_base *)j )
      {
        v12 = 0;
        goto LABEL_11;
      }
      if ( M_next == (std::priv::_Slist_node_base *)j )
        break;
      v10 = (std::priv::_Slist_node_base ***)*v10;
    }
    v23 = v10;
    std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::erase_after(
      &v22,
      (std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >)&this->_M_elems,
      &v23);
    v12 = 1;
  }
LABEL_11:
  this->_M_num_elements -= v12;
  std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_reduce(this);
}


// ===== 8b3ac4 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_bkt_num_key<char const*>(char const* const&,uint) =====
_Locale_messages *__fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_bkt_num_key<char const*>(
        const std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this,
        char **__key,
        size_t __n)
{
  int v4; // [sp+0h] [bp-20h] BYREF
  char *name; // [sp+4h] [bp-1Ch] BYREF

  return std::priv::__acquire_messages((const char **const)&name, *__key, (_Locale_name_hint *)&v4, _stack_chk_guard);
}


// ===== 8b3b4c std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_find<char const*>(char const* const&) =====
std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > > __fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_find<char const*>(
        const std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this,
        const std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *__key,
        char **a3)
{
  _Locale_messages *v5; // r0
  int __err_code; // [sp+8h] [bp-24h] BYREF
  const char *v9; // [sp+Ch] [bp-20h] BYREF

  v5 = std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_bkt_num_key<char const*>(
         __key,
         a3,
         __key->_M_buckets._M_finish - __key->_M_buckets._M_start - 1);
  if ( __key->_M_buckets._M_start[(_DWORD)v5 + 1] != __key->_M_buckets._M_start[(_DWORD)v5] )
    return (std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >)std::priv::__acquire_messages(&v9, *a3, (_Locale_name_hint *)&__err_code, &__err_code);
  *(_DWORD *)&this->_M_hash.gap0 = 0;
  return (std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >)this;
}


// ===== 8b3c28 std::priv::__release_category(void *,void (*)(void *),char const* (*)(void *,char *),std::hash_map<std::string,std::pair<void *,uint>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>> **) =====
void __fastcall std::priv::__release_category(
        void *cat,
        std::priv::loc_destroy_func_t destroy_fun,
        std::priv::loc_name_func_t get_name,
        std::priv::Category_Map **M)
{
  std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > v4; // [sp+8h] [bp-110h] BYREF

  if ( *M && cat )
  {
    if ( get_name(cat, (char *)&v4._M_buckets) )
      JUMPOUT(0x8B35B4);
  }
}


// ===== 8b3cb4 std::priv::__release_messages(_Locale_messages *) =====
void __fastcall std::priv::__release_messages(_Locale_messages *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_messages_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_messages_name,
    &std::priv::messages_hash(void)::_S_messages_hash);
}


// ===== 8b3cd8 std::priv::__release_monetary(_Locale_monetary *) =====
void __fastcall std::priv::__release_monetary(_Locale_monetary *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_monetary_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_monetary_name,
    &std::priv::monetary_hash(void)::_S_monetary_hash);
}


// ===== 8b3cfc std::priv::__release_collate(_Locale_collate *) =====
void __fastcall std::priv::__release_collate(_Locale_collate *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_collate_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_collate_name,
    &std::priv::collate_hash(void)::_S_collate_hash);
}


// ===== 8b3d20 std::priv::__release_time(_Locale_time *) =====
void __fastcall std::priv::__release_time(_Locale_time *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_time_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_time_name,
    &std::priv::time_hash(void)::_S_time_hash);
}


// ===== 8b3d44 std::priv::__release_numeric(_Locale_numeric *) =====
void __fastcall std::priv::__release_numeric(_Locale_numeric *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_numeric_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_numeric_name,
    &std::priv::numeric_hash(void)::_S_numeric_hash);
}


// ===== 8b3d68 std::priv::__release_codecvt(_Locale_codecvt *) =====
void __fastcall std::priv::__release_codecvt(_Locale_codecvt *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_codecvt_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_codecvt_name,
    &std::priv::codecvt_hash(void)::_S_codecvt_hash);
}


// ===== 8b3d8c std::priv::__release_ctype(_Locale_ctype *) =====
void __fastcall std::priv::__release_ctype(_Locale_ctype *cat)
{
  std::priv::__release_category(
    cat,
    (std::priv::loc_destroy_func_t)std::priv::_Loc_ctype_destroy,
    (std::priv::loc_name_func_t)std::priv::_Loc_ctype_name,
    &std::priv::ctype_hash(void)::_S_ctype_hash);
}


// ===== 8b3db0 std::slist<std::pair<std::string const,std::pair<void *,uint>>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_create_node(std::pair<std::string const,std::pair<void *,uint>> const&) =====
void __fastcall std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::_M_create_node(
        std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *const this,
        const std::pair<const std::string,std::pair<void*,unsigned int> > *const __x)
{
  _DWORD *v2; // r4
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  __n[0] = 36;
  v2 = std::__node_alloc::_M_allocate(__n);
  v2[5] = v2 + 1;
  v2[6] = v2 + 1;
  JUMPOUT(0x8B36EA);
}


// ===== 8b3de4 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::_M_insert_noresize(uint,std::pair<std::string const,std::pair<void *,uint>> const&) =====
std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > > > __fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_insert_noresize(
        std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > *const this,
        std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *__n,
        const std::pair<const std::string,std::pair<void*,unsigned int> > *const __obj,
        const std::pair<const std::string,std::pair<void*,unsigned int> > *a4)
{
  std::priv::_Slist_node_base *M_next; // r0
  int v6; // r7
  std::priv::_Slist_node_base *v8; // r1
  std::priv::_Slist_node_base *v9; // r12
  std::priv::_Slist_node_base *v10; // r5
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *v11; // r4
  int v12; // r1
  std::priv::_Slist_node_base *i; // r0
  int v14; // r5
  std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *v15; // r0
  std::priv::_Slist_node_base *v16; // r5
  std::priv::_Slist_node_base *v17; // r9
  std::priv::_Slist_node_base *v18; // r0
  int v19; // r3

  M_next = __n[2]._M_head._M_data._M_next;
  v6 = (int)__obj;
  v8 = &M_next[(_DWORD)__obj];
  v9 = M_next;
  v10 = v8->_M_next;
  if ( v8->_M_next == __n[1]._M_head._M_data._M_next )
  {
    v15 = __n + 1;
    v11 = __n + 1;
    v14 = 0;
  }
  else
  {
    do
    {
      --v8;
      v11 = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)v8->_M_next;
    }
    while ( v10 == v8->_M_next );
    v12 = v8 - M_next + 1;
    for ( i = v11->_M_head._M_data._M_next; v10 != i; i = i->_M_next )
      v11 = (std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *)v11->_M_head._M_data._M_next;
    v14 = v12;
    v15 = __n + 1;
  }
  v16 = &v9[v14];
  v17 = &v9[(_DWORD)&__obj->first._M_buffers._M_end_of_storage + 1];
  std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::_M_create_node(v15, a4);
  v18->_M_next = (std::priv::_Slist_node_base *)v11->_M_head._M_data;
  v19 = v17 - v16;
  v11->_M_head._M_data._M_next = v18;
  if ( v19 > 0 )
  {
    do
    {
      --v19;
      v16->_M_next = v18;
      ++v16;
    }
    while ( v19 );
  }
  ++__n[5]._M_head._M_data._M_next;
  *(_DWORD *)&this->_M_hash.gap0 = __n[2]._M_head._M_data._M_next[v6]._M_next;
  return (std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > > >)this;
}


// ===== 8b3e68 std::hashtable<std::pair<std::string const,std::pair<void *,uint>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,uint>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,uint>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>>::insert_unique_noresize(std::pair<std::string const,std::pair<void *,uint>> const&) =====
std::pair<std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > > >,bool> *__fastcall std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::insert_unique_noresize(
        std::pair<std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<const std::string,std::pair<void*,unsigned int> >,std::_Nonconst_traits<std::pair<const std::string,std::pair<void*,unsigned int> > > >,std::priv::_NonLocalHashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > > >,bool> *__return_ptr retstr,
        std::slist<std::pair<const std::string,std::pair<void*,unsigned int> >> *this,
        const std::pair<const std::string,std::pair<void*,unsigned int> > *const __obj)
{
  char *M_data; // r6
  char *v5; // r5
  std::priv::_Slist_node_base **v7; // r4
  char *v8; // r3
  int v9; // r0
  int v10; // r2
  std::priv::_Slist_node_base *v11; // r7
  std::priv::_Slist_node_base *v12; // r10
  std::priv::_Slist_node_base *v13; // r4
  std::priv::_Slist_node_base *v14; // r0
  std::hashtable<std::pair<const std::string,std::pair<void*,unsigned int> >,std::string,std::hash<std::string >,std::priv::_HashMapTraitsT<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::priv::_Select1st<std::pair<const std::string,std::pair<void*,unsigned int> > >,std::equal_to<std::string >,std::allocator<std::pair<const std::string,std::pair<void*,unsigned int> > > > var8; // [sp+4h] [bp-8h] BYREF

  M_data = __obj->first._M_start_of_storage._M_data;
  v5 = (char *)(__obj->first._M_finish - M_data);
  v7 = *((std::priv::_Slist_node_base ***)this + 2);
  if ( v5 )
  {
    v8 = nullptr;
    v9 = 0;
    do
    {
      v10 = (unsigned __int8)(v8++)[(_DWORD)M_data];
      v9 += 4 * v9 + v10;
    }
    while ( v5 != v8 );
    JUMPOUT(0x8B3B30);
  }
  v11 = v7[1];
  v12 = *v7;
  v13 = v12;
  if ( v12 == v11 )
  {
    std::hashtable<std::pair<std::string const,std::pair<void *,unsigned int>>,std::string,std::hash<std::string>,std::priv::_HashMapTraitsT<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::priv::_Select1st<std::pair<std::string const,std::pair<void *,unsigned int>>>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,unsigned int>>>>::_M_insert_noresize(
      &var8,
      this,
      nullptr,
      __obj);
    retstr->first._M_ite._M_node = *(std::priv::_Slist_node_base **)&var8._M_hash.gap0;
    retstr->second = 1;
  }
  else
  {
    do
    {
      if ( v13[5]._M_next == v13[6]._M_next )
        JUMPOUT(0x8B45E4);
      v13 = v13->_M_next;
    }
    while ( v11 != v13 );
    std::slist<std::pair<std::string const,std::pair<void *,unsigned int>>>::_M_create_node(this + 1, __obj);
    v14->_M_next = v12->_M_next;
    v12->_M_next = v14;
    ++*((_DWORD *)this + 5);
    retstr->first._M_ite._M_node = v14;
    retstr->second = 1;
  }
  return retstr;
}


// ===== 8b3f38 std::priv::__acquire_category(char const*&,char *,_Locale_name_hint *,char const* (*)(char const*,char *,_Locale_name_hint *,int *),void * (*)(char const*,_Locale_name_hint *,int *),char const* (*)(char *),std::hash_map<std::string,std::pair<void *,uint>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::pair<void *,uint>>>> **,int *) =====
_Locale_messages *__fastcall std::priv::__acquire_category(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        std::priv::loc_extract_name_func_t extract_name,
        std::priv::loc_create_func_t create_obj,
        std::priv::loc_default_name_func_t default_name,
        std::priv::Category_Map **M,
        int *__err_code)
{
  const char *v9; // r0
  const char *v10; // r0
  char *v11; // r1
  const char *v13; // r0
  int *v14; // r3
  _BYTE v15[4]; // [sp+30h] [bp-44h] BYREF
  char *v16; // [sp+54h] [bp-20h] BYREF

  *__err_code = 0;
  v9 = *name;
  if ( !**name )
  {
    v10 = default_name(buf);
    v11 = (char *)v10;
    *name = v10;
    if ( !v10 || (v14 = (int *)*(unsigned __int8 *)v10, !*v10) )
    {
      v11 = "C";
      *name = "C";
    }
    return std::priv::__acquire_messages((const char **const)&v16, v11, (_Locale_name_hint *)v15, v14);
  }
  v13 = extract_name(v9, buf, hint, __err_code);
  v11 = (char *)v13;
  if ( v13 )
  {
    *name = v13;
    return std::priv::__acquire_messages((const char **const)&v16, v11, (_Locale_name_hint *)v15, v14);
  }
  return nullptr;
}


// ===== 8b40f0 std::priv::__acquire_messages(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_messages *__fastcall std::priv::__acquire_messages(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_messages_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_messages_create,
           std::priv::_Loc_messages_default,
           &std::priv::messages_hash(void)::_S_messages_hash,
           __err_code);
}


// ===== 8b4130 std::priv::__acquire_monetary(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_monetary *__fastcall std::priv::__acquire_monetary(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_monetary_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_monetary_create,
           std::priv::_Loc_monetary_default,
           &std::priv::monetary_hash(void)::_S_monetary_hash,
           __err_code);
}


// ===== 8b4170 std::priv::__acquire_collate(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_collate *__fastcall std::priv::__acquire_collate(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_collate_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_collate_create,
           std::priv::_Loc_collate_default,
           &std::priv::collate_hash(void)::_S_collate_hash,
           __err_code);
}


// ===== 8b41b0 std::priv::__acquire_time(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_time *__fastcall std::priv::__acquire_time(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_time_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_time_create,
           std::priv::_Loc_time_default,
           &std::priv::time_hash(void)::_S_time_hash,
           __err_code);
}


// ===== 8b41f0 std::priv::__acquire_numeric(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_numeric *__fastcall std::priv::__acquire_numeric(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_numeric_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_numeric_create,
           std::priv::_Loc_numeric_default,
           &std::priv::numeric_hash(void)::_S_numeric_hash,
           __err_code);
}


// ===== 8b4230 std::priv::__acquire_codecvt(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_codecvt *__fastcall std::priv::__acquire_codecvt(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_ctype_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_codecvt_create,
           std::priv::_Loc_ctype_default,
           &std::priv::codecvt_hash(void)::_S_codecvt_hash,
           __err_code);
}


// ===== 8b4270 std::priv::__acquire_ctype(char const*&,char *,_Locale_name_hint *,int *) =====
_Locale_ctype *__fastcall std::priv::__acquire_ctype(
        const char **const name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  return std::priv::__acquire_category(
           name,
           buf,
           hint,
           Locale_extract_ctype_name,
           (std::priv::loc_create_func_t)std::priv::_Loc_ctype_create,
           std::priv::_Loc_ctype_default,
           &std::priv::ctype_hash(void)::_S_ctype_hash,
           __err_code);
}


// ===== 8b42b0 std::codecvt_byname<wchar_t,char,mbstate_t>::do_always_noconv(void) =====
bool __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_always_noconv(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  return 0;
}


// ===== 8b42b4 std::moneypunct_byname<wchar_t,false>::do_frac_digits(void) =====
int __fastcall std::moneypunct_byname<wchar_t,false>::do_frac_digits(
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  return Locale_frac_digits(this->_M_monetary);
}


// ===== 8b42c0 std::moneypunct_byname<char,false>::do_frac_digits(void) =====
int __fastcall std::moneypunct_byname<char,false>::do_frac_digits(const std::moneypunct_byname<char,false> *const this)
{
  return Locale_frac_digits(this->_M_monetary);
}


// ===== 8b42cc std::moneypunct_byname<wchar_t,false>::do_grouping(void) =====
std::string *__fastcall std::moneypunct_byname<wchar_t,false>::do_grouping(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  char *v3; // r0
  int *v4; // r3
  _BYTE v6[4]; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)Locale_mon_grouping(this->_M_monetary);
  return (std::string *)std::priv::__acquire_messages(
                          (const char **const)&retstr->_M_buffers._M_end_of_storage,
                          v3,
                          (_Locale_name_hint *)v6,
                          v4);
}


// ===== 8b42e8 std::moneypunct_byname<wchar_t,true>::do_grouping(void) =====
std::string *__fastcall std::moneypunct_byname<wchar_t,true>::do_grouping(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  char *v3; // r0
  int *v4; // r3
  _BYTE v6[4]; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)Locale_mon_grouping(this->_M_monetary);
  return (std::string *)std::priv::__acquire_messages(
                          (const char **const)&retstr->_M_buffers._M_end_of_storage,
                          v3,
                          (_Locale_name_hint *)v6,
                          v4);
}


// ===== 8b4304 std::moneypunct_byname<char,false>::do_grouping(void) =====
std::string *__fastcall std::moneypunct_byname<char,false>::do_grouping(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,false> *const this)
{
  char *v3; // r0
  int *v4; // r3
  _BYTE v6[4]; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)Locale_mon_grouping(this->_M_monetary);
  return (std::string *)std::priv::__acquire_messages(
                          (const char **const)&retstr->_M_buffers._M_end_of_storage,
                          v3,
                          (_Locale_name_hint *)v6,
                          v4);
}


// ===== 8b4320 std::moneypunct_byname<char,true>::do_grouping(void) =====
std::string *__fastcall std::moneypunct_byname<char,true>::do_grouping(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,true> *const this)
{
  char *v3; // r0
  int *v4; // r3
  _BYTE v6[4]; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)Locale_mon_grouping(this->_M_monetary);
  return (std::string *)std::priv::__acquire_messages(
                          (const char **const)&retstr->_M_buffers._M_end_of_storage,
                          v3,
                          (_Locale_name_hint *)v6,
                          v4);
}


// ===== 8b433c std::moneypunct_byname<wchar_t,false>::do_thousands_sep(void) =====
wchar_t __fastcall std::moneypunct_byname<wchar_t,false>::do_thousands_sep(
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  return Locale_mon_thousands_sep(this->_M_monetary);
}


// ===== 8b4348 std::moneypunct_byname<wchar_t,true>::do_thousands_sep(void) =====
wchar_t __fastcall std::moneypunct_byname<wchar_t,true>::do_thousands_sep(
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  return Locale_mon_thousands_sep(this->_M_monetary);
}


// ===== 8b4354 std::moneypunct_byname<char,false>::do_thousands_sep(void) =====
int __fastcall std::moneypunct_byname<char,false>::do_thousands_sep(
        const std::moneypunct_byname<char,false> *const this)
{
  return Locale_mon_thousands_sep(this->_M_monetary);
}


// ===== 8b4360 std::moneypunct_byname<char,true>::do_thousands_sep(void) =====
int __fastcall std::moneypunct_byname<char,true>::do_thousands_sep(const std::moneypunct_byname<char,true> *const this)
{
  return Locale_mon_thousands_sep(this->_M_monetary);
}


// ===== 8b436c std::moneypunct_byname<wchar_t,false>::do_decimal_point(void) =====
wchar_t __fastcall std::moneypunct_byname<wchar_t,false>::do_decimal_point(
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  return Locale_mon_decimal_point(this->_M_monetary);
}


// ===== 8b4378 std::moneypunct_byname<wchar_t,true>::do_decimal_point(void) =====
wchar_t __fastcall std::moneypunct_byname<wchar_t,true>::do_decimal_point(
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  return Locale_mon_decimal_point(this->_M_monetary);
}


// ===== 8b4384 std::moneypunct_byname<char,false>::do_decimal_point(void) =====
int __fastcall std::moneypunct_byname<char,false>::do_decimal_point(
        const std::moneypunct_byname<char,false> *const this)
{
  return Locale_mon_decimal_point(this->_M_monetary);
}


// ===== 8b4390 std::moneypunct_byname<char,true>::do_decimal_point(void) =====
int __fastcall std::moneypunct_byname<char,true>::do_decimal_point(const std::moneypunct_byname<char,true> *const this)
{
  return Locale_mon_decimal_point(this->_M_monetary);
}


// ===== 8b439c std::moneypunct_byname<wchar_t,false>::~moneypunct_byname() =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994308;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<wchar_t,false>::~moneypunct(this);
  return this;
}


// ===== 8b43c4 std::moneypunct_byname<wchar_t,false>::~moneypunct_byname() =====
int __fastcall std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this)
{
  std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(this);
  return std::moneypunct_byname<wchar_t,false>::do_frac_digits(this);
}


// ===== 8b43d8 std::moneypunct_byname<wchar_t,false>::~moneypunct_byname() =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994308;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<wchar_t,false>::~moneypunct(this);
  return this;
}


// ===== 8b4400 std::priv::_Init_monetary_formats_int(std::money_base::pattern &,std::money_base::pattern &,_Locale_monetary *) =====
void __fastcall std::priv::_Init_monetary_formats_int(
        std::money_base::pattern *const pos_format,
        std::money_base::pattern *const neg_format,
        _Locale_monetary *monetary)
{
  switch ( Locale_p_sign_posn(monetary) )
  {
    case 0:
    case 1:
      pos_format->field[0] = 2;
      pos_format->field[1] = 3;
      pos_format->field[2] = 4;
      pos_format->field[3] = 0;
      break;
    case 2:
      pos_format->field[0] = 2;
      pos_format->field[1] = 4;
      pos_format->field[2] = 3;
      pos_format->field[3] = 0;
      break;
    case 3:
    case 4:
      pos_format->field[0] = 2;
      if ( Locale_p_cs_precedes(monetary) )
      {
        pos_format->field[1] = 3;
        pos_format->field[2] = 4;
      }
      else
      {
        pos_format->field[1] = 4;
        pos_format->field[2] = 3;
      }
      pos_format->field[3] = 0;
      break;
    default:
      pos_format->field[0] = 2;
      pos_format->field[1] = 3;
      pos_format->field[2] = 0;
      pos_format->field[3] = 4;
      break;
  }
  switch ( Locale_n_sign_posn(monetary) )
  {
    case 0:
    case 1:
      neg_format->field[0] = 2;
      neg_format->field[1] = 3;
      neg_format->field[2] = 4;
      neg_format->field[3] = 0;
      break;
    case 2:
      neg_format->field[0] = 2;
      neg_format->field[1] = 4;
      neg_format->field[2] = 3;
      neg_format->field[3] = 0;
      break;
    case 3:
    case 4:
      neg_format->field[0] = 2;
      if ( Locale_n_cs_precedes(monetary) )
      {
        neg_format->field[1] = 3;
        neg_format->field[2] = 4;
      }
      else
      {
        neg_format->field[1] = 4;
        neg_format->field[2] = 3;
      }
      neg_format->field[3] = 0;
      break;
    default:
      neg_format->field[0] = 2;
      neg_format->field[1] = 3;
      neg_format->field[2] = 0;
      neg_format->field[3] = 4;
      break;
  }
}


// ===== 8b44f4 std::priv::_Init_monetary_formats(std::money_base::pattern &,std::money_base::pattern &,_Locale_monetary *) =====
void __fastcall std::priv::_Init_monetary_formats(
        std::money_base::pattern *const pos_format,
        std::money_base::pattern *const neg_format,
        _Locale_monetary *monetary)
{
  int v6; // r0
  int v7; // r0

  switch ( Locale_p_sign_posn(monetary) )
  {
    case 0:
    case 1:
      pos_format->field[0] = 3;
      if ( Locale_p_cs_precedes(monetary) )
        goto LABEL_15;
      pos_format->field[1] = 4;
      v6 = Locale_p_sep_by_space(monetary);
      if ( !v6 )
        goto LABEL_9;
      pos_format->field[2] = 1;
      pos_format->field[3] = 2;
      break;
    case 2:
      if ( !Locale_p_cs_precedes(monetary) )
        goto LABEL_32;
      pos_format->field[0] = 2;
      if ( Locale_p_sep_by_space(monetary) )
      {
        pos_format->field[1] = 1;
        pos_format->field[2] = 4;
        pos_format->field[3] = 3;
      }
      else
      {
        pos_format->field[1] = 4;
        pos_format->field[2] = 3;
        pos_format->field[3] = 0;
      }
      break;
    case 3:
      v6 = Locale_p_cs_precedes(monetary);
      if ( v6 )
      {
        pos_format->field[0] = 3;
LABEL_15:
        pos_format->field[1] = 2;
        if ( Locale_p_sep_by_space(monetary) )
        {
          pos_format->field[2] = 1;
          pos_format->field[3] = 4;
        }
        else
        {
          pos_format->field[2] = 4;
          pos_format->field[3] = 0;
        }
      }
      else
      {
        pos_format->field[0] = 4;
        pos_format->field[1] = 3;
LABEL_9:
        pos_format->field[2] = 2;
        pos_format->field[3] = v6;
      }
      break;
    case 4:
      if ( Locale_p_cs_precedes(monetary) )
      {
        pos_format->field[0] = 2;
        pos_format->field[1] = 3;
        pos_format->field[2] = 4;
        pos_format->field[3] = 0;
      }
      else
      {
LABEL_32:
        pos_format->field[0] = 4;
        if ( Locale_p_sep_by_space(monetary) )
        {
          pos_format->field[1] = 1;
          pos_format->field[2] = 2;
          pos_format->field[3] = 3;
        }
        else
        {
          pos_format->field[1] = 2;
          pos_format->field[2] = 3;
          pos_format->field[3] = 0;
        }
      }
      break;
    default:
      pos_format->field[0] = 2;
      pos_format->field[1] = 3;
      pos_format->field[2] = 0;
      pos_format->field[3] = 4;
      break;
  }
  switch ( Locale_n_sign_posn(monetary) )
  {
    case 0:
    case 1:
      neg_format->field[0] = 3;
      if ( Locale_n_cs_precedes(monetary) )
        goto LABEL_27;
      neg_format->field[1] = 4;
      v7 = Locale_n_sep_by_space(monetary);
      if ( !v7 )
        goto LABEL_22;
      neg_format->field[2] = 1;
      neg_format->field[3] = 2;
      break;
    case 2:
      if ( !Locale_n_cs_precedes(monetary) )
        goto LABEL_30;
      neg_format->field[0] = 2;
      if ( Locale_n_sep_by_space(monetary) )
      {
        neg_format->field[1] = 1;
        neg_format->field[2] = 4;
        neg_format->field[3] = 3;
      }
      else
      {
        neg_format->field[1] = 4;
        neg_format->field[2] = 3;
        neg_format->field[3] = 0;
      }
      break;
    case 3:
      v7 = Locale_n_cs_precedes(monetary);
      if ( v7 )
      {
        neg_format->field[0] = 3;
LABEL_27:
        neg_format->field[1] = 2;
        if ( Locale_n_sep_by_space(monetary) )
        {
          neg_format->field[2] = 1;
          neg_format->field[3] = 4;
        }
        else
        {
          neg_format->field[2] = 4;
          neg_format->field[3] = 0;
        }
      }
      else
      {
        neg_format->field[0] = 4;
        neg_format->field[1] = 3;
LABEL_22:
        neg_format->field[2] = 2;
        neg_format->field[3] = v7;
      }
      break;
    case 4:
      if ( Locale_n_cs_precedes(monetary) )
        goto LABEL_3;
LABEL_30:
      neg_format->field[0] = 4;
      if ( Locale_n_sep_by_space(monetary) )
      {
        neg_format->field[1] = 1;
        neg_format->field[2] = 2;
        neg_format->field[3] = 3;
      }
      else
      {
        neg_format->field[1] = 2;
        neg_format->field[2] = 3;
        neg_format->field[3] = 0;
      }
      break;
    default:
LABEL_3:
      neg_format->field[0] = 2;
      neg_format->field[1] = 3;
      neg_format->field[2] = 0;
      neg_format->field[3] = 4;
      break;
  }
}


// ===== 8b4704 std::moneypunct_byname<wchar_t,false>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<wchar_t,false>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994308;
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4738 std::moneypunct_byname<wchar_t,false>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<wchar_t,false>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994308;
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b476c std::moneypunct_byname<wchar_t,false>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<wchar_t,false>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994308;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b47f0 std::moneypunct_byname<wchar_t,false>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<wchar_t,false> *__fastcall std::moneypunct_byname<wchar_t,false>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,false> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<wchar_t,false>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994308;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4874 std::moneypunct_byname<wchar_t,true>::do_frac_digits(void) =====
int __fastcall std::moneypunct_byname<wchar_t,true>::do_frac_digits(
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  return Locale_int_frac_digits(this->_M_monetary);
}


// ===== 8b4880 std::moneypunct_byname<char,true>::do_frac_digits(void) =====
int __fastcall std::moneypunct_byname<char,true>::do_frac_digits(const std::moneypunct_byname<char,true> *const this)
{
  return Locale_int_frac_digits(this->_M_monetary);
}


// ===== 8b488c std::moneypunct_byname<wchar_t,true>::~moneypunct_byname() =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994340;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<wchar_t,true>::~moneypunct(this);
  return this;
}


// ===== 8b48b4 std::moneypunct_byname<wchar_t,true>::~moneypunct_byname() =====
int __fastcall std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this)
{
  std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(this);
  return std::moneypunct_byname<wchar_t,false>::do_frac_digits((const std::moneypunct_byname<wchar_t,false> *const)this);
}


// ===== 8b48c8 std::moneypunct_byname<wchar_t,true>::~moneypunct_byname() =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994340;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<wchar_t,true>::~moneypunct(this);
  return this;
}


// ===== 8b48f0 std::moneypunct_byname<wchar_t,true>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<wchar_t,true>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994340;
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4924 std::moneypunct_byname<wchar_t,true>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<wchar_t,true>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994340;
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4958 std::moneypunct_byname<wchar_t,true>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<wchar_t,true>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994340;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b49dc std::moneypunct_byname<wchar_t,true>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<wchar_t,true> *__fastcall std::moneypunct_byname<wchar_t,true>::moneypunct_byname(
        std::moneypunct_byname<wchar_t,true> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<wchar_t,true>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994340;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4a60 std::moneypunct_byname<char,false>::do_negative_sign(void) =====
void __fastcall std::moneypunct_byname<char,false>::do_negative_sign(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,false> *const this)
{
  Locale_negative_sign(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4a7c std::moneypunct_byname<char,true>::do_negative_sign(void) =====
void __fastcall std::moneypunct_byname<char,true>::do_negative_sign(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,true> *const this)
{
  Locale_negative_sign(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4a98 std::moneypunct_byname<char,false>::do_positive_sign(void) =====
void __fastcall std::moneypunct_byname<char,false>::do_positive_sign(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,false> *const this)
{
  Locale_positive_sign(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4ab4 std::moneypunct_byname<char,true>::do_positive_sign(void) =====
void __fastcall std::moneypunct_byname<char,true>::do_positive_sign(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,true> *const this)
{
  Locale_positive_sign(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4ad0 std::moneypunct_byname<char,false>::do_curr_symbol(void) =====
void __fastcall std::moneypunct_byname<char,false>::do_curr_symbol(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,false> *const this)
{
  Locale_currency_symbol(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4aec std::moneypunct_byname<char,false>::~moneypunct_byname() =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::~moneypunct_byname(
        std::moneypunct_byname<char,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994378;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<char,false>::~moneypunct(this);
  return this;
}


// ===== 8b4b14 std::moneypunct_byname<char,false>::~moneypunct_byname() =====
void __fastcall std::moneypunct_byname<char,false>::~moneypunct_byname(std::moneypunct_byname<char,false> *const this)
{
  std::moneypunct_byname<char,false>::~moneypunct_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b4b28 std::moneypunct_byname<char,false>::~moneypunct_byname() =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::~moneypunct_byname(
        std::moneypunct_byname<char,false> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994378;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<char,false>::~moneypunct(this);
  return this;
}


// ===== 8b4b50 std::moneypunct_byname<char,false>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::moneypunct_byname(
        std::moneypunct_byname<char,false> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<char,false>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994378;
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4b84 std::moneypunct_byname<char,false>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::moneypunct_byname(
        std::moneypunct_byname<char,false> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<char,false>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_994378;
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4bb8 std::moneypunct_byname<char,false>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::moneypunct_byname(
        std::moneypunct_byname<char,false> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<char,false>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994378;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4c3c std::moneypunct_byname<char,false>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<char,false> *__fastcall std::moneypunct_byname<char,false>::moneypunct_byname(
        std::moneypunct_byname<char,false> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<char,false>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_994378;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4cc0 std::moneypunct_byname<char,true>::do_curr_symbol(void) =====
void __fastcall std::moneypunct_byname<char,true>::do_curr_symbol(
        std::string *__return_ptr retstr,
        const std::moneypunct_byname<char,true> *const this)
{
  Locale_int_curr_symbol(this->_M_monetary);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4cdc std::moneypunct_byname<char,true>::~moneypunct_byname() =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::~moneypunct_byname(
        std::moneypunct_byname<char,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<char,true>::~moneypunct(this);
  return this;
}


// ===== 8b4d04 std::moneypunct_byname<char,true>::~moneypunct_byname() =====
void __fastcall std::moneypunct_byname<char,true>::~moneypunct_byname(std::moneypunct_byname<char,true> *const this)
{
  std::moneypunct_byname<char,true>::~moneypunct_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b4d18 std::moneypunct_byname<char,true>::~moneypunct_byname() =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::~moneypunct_byname(
        std::moneypunct_byname<char,true> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  std::priv::__release_monetary(this->_M_monetary);
  std::moneypunct<char,true>::~moneypunct(this);
  return this;
}


// ===== 8b4d40 std::moneypunct_byname<char,true>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::moneypunct_byname(
        std::moneypunct_byname<char,true> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<char,true>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4d74 std::moneypunct_byname<char,true>::moneypunct_byname(_Locale_monetary *) =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::moneypunct_byname(
        std::moneypunct_byname<char,true> *const this,
        _Locale_monetary *__mon)
{
  std::moneypunct<char,true>::moneypunct(this, 0);
  this->_M_monetary = __mon;
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, __mon);
  return this;
}


// ===== 8b4da8 std::moneypunct_byname<char,true>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::moneypunct_byname(
        std::moneypunct_byname<char,true> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<char,true>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4e2c std::moneypunct_byname<char,true>::moneypunct_byname(char const*,uint) =====
std::moneypunct_byname<char,true> *__fastcall std::moneypunct_byname<char,true>::moneypunct_byname(
        std::moneypunct_byname<char,true> *const this,
        char *name,
        size_t refs)
{
  _Locale_monetary *M_monetary; // r2
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::moneypunct<char,true>::moneypunct(this, refs);
  this->_vptr.facet = (int (**)(...))&off_9943B0;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  M_monetary = std::priv::__acquire_monetary((const char **const)&v6, buf, nullptr, &v7);
  this->_M_monetary = M_monetary;
  if ( !M_monetary )
  {
    std::locale::_M_throw_on_creation_failure(v7, v6, "moneypunct");
    M_monetary = this->_M_monetary;
  }
  std::priv::_Init_monetary_formats_int(&this->_M_pos_format, &this->_M_neg_format, M_monetary);
  return this;
}


// ===== 8b4eb0 std::numpunct_byname<wchar_t>::do_grouping(void) =====
void __fastcall std::numpunct_byname<wchar_t>::do_grouping(
        std::string *__return_ptr retstr,
        const std::numpunct_byname<wchar_t> *const this)
{
  Locale_grouping(this->_M_numeric);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4ee0 std::numpunct_byname<char>::do_grouping(void) =====
void __fastcall std::numpunct_byname<char>::do_grouping(
        std::string *__return_ptr retstr,
        const std::numpunct_byname<char> *const this)
{
  Locale_grouping(this->_M_numeric);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4f10 std::numpunct_byname<wchar_t>::do_thousands_sep(void) =====
wchar_t __fastcall std::numpunct_byname<wchar_t>::do_thousands_sep(const std::numpunct_byname<wchar_t> *const this)
{
  return WLocale_thousands_sep(this->_M_numeric);
}


// ===== 8b4f1c std::numpunct_byname<wchar_t>::do_decimal_point(void) =====
wchar_t __fastcall std::numpunct_byname<wchar_t>::do_decimal_point(const std::numpunct_byname<wchar_t> *const this)
{
  return WLocale_decimal_point(this->_M_numeric);
}


// ===== 8b4f28 std::numpunct_byname<wchar_t>::~numpunct_byname() =====
std::numpunct_byname<wchar_t> *__fastcall std::numpunct_byname<wchar_t>::~numpunct_byname(
        std::numpunct_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9943E8;
  std::priv::__release_numeric(this->_M_numeric);
  std::numpunct<wchar_t>::~numpunct(this);
  return this;
}


// ===== 8b4f50 std::numpunct_byname<wchar_t>::~numpunct_byname() =====
void __fastcall std::numpunct_byname<wchar_t>::~numpunct_byname(std::numpunct_byname<wchar_t> *const this)
{
  std::numpunct_byname<wchar_t>::~numpunct_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b4f64 std::numpunct_byname<wchar_t>::~numpunct_byname() =====
std::numpunct_byname<wchar_t> *__fastcall std::numpunct_byname<wchar_t>::~numpunct_byname(
        std::numpunct_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9943E8;
  std::priv::__release_numeric(this->_M_numeric);
  std::numpunct<wchar_t>::~numpunct(this);
  return this;
}


// ===== 8b4f8c std::numpunct_byname<char>::do_falsename(void) =====
void __fastcall std::numpunct_byname<char>::do_falsename(
        std::string *__return_ptr retstr,
        const std::numpunct_byname<char> *const this)
{
  Locale_false(this->_M_numeric);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4fa8 std::numpunct_byname<char>::do_truename(void) =====
void __fastcall std::numpunct_byname<char>::do_truename(
        std::string *__return_ptr retstr,
        const std::numpunct_byname<char> *const this)
{
  Locale_true(this->_M_numeric);
  JUMPOUT(0x8B50F0);
}


// ===== 8b4fc4 std::numpunct_byname<char>::do_thousands_sep(void) =====
int __fastcall std::numpunct_byname<char>::do_thousands_sep(const std::numpunct_byname<char> *const this)
{
  return Locale_thousands_sep(this->_M_numeric);
}


// ===== 8b4fd0 std::numpunct_byname<char>::do_decimal_point(void) =====
int __fastcall std::numpunct_byname<char>::do_decimal_point(const std::numpunct_byname<char> *const this)
{
  return Locale_decimal_point(this->_M_numeric);
}


// ===== 8b4fdc std::numpunct_byname<char>::~numpunct_byname() =====
std::numpunct_byname<char> *__fastcall std::numpunct_byname<char>::~numpunct_byname(
        std::numpunct_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994410;
  std::priv::__release_numeric(this->_M_numeric);
  std::numpunct<char>::~numpunct(this);
  return this;
}


// ===== 8b5004 std::numpunct_byname<char>::~numpunct_byname() =====
void __fastcall std::numpunct_byname<char>::~numpunct_byname(std::numpunct_byname<char> *const this)
{
  std::numpunct_byname<char>::~numpunct_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5018 std::numpunct_byname<char>::~numpunct_byname() =====
std::numpunct_byname<char> *__fastcall std::numpunct_byname<char>::~numpunct_byname(
        std::numpunct_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994410;
  std::priv::__release_numeric(this->_M_numeric);
  std::numpunct<char>::~numpunct(this);
  return this;
}


// ===== 8b5040 std::codecvt_byname<wchar_t,char,mbstate_t>::do_max_length(void) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_max_length(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  return WLocale_mb_cur_max(this->_M_codecvt);
}


// ===== 8b504c std::codecvt_byname<wchar_t,char,mbstate_t>::do_length(mbstate_t&,char const*,char const*,uint) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_length(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const state,
        const char *from,
        const char *end,
        size_t mx)
{
  const char *v8; // r4
  size_t v9; // r7
  int v10; // r5
  size_t v11; // r0
  wchar_t __dummy; // [sp+Ch] [bp-4h] BYREF

  v8 = from;
  if ( from == end || !mx )
    return 0;
  v9 = mx - 1;
  v10 = 0;
  while ( 1 )
  {
    v11 = WLocale_mbtowc(this->_M_codecvt, (wchar_t_0 *)&__dummy, v8, end - v8, state);
    if ( v11 + 2 <= 1 )
      break;
    v8 += v11;
    v10 += v11;
    if ( end == v8 || !v9 )
      break;
    --v9;
  }
  return v10;
}


// ===== 8b50ac std::codecvt_byname<wchar_t,char,mbstate_t>::do_in(mbstate_t&,char const*,char const*,char const*&,wchar_t *,wchar_t *,wchar_t *&) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_in(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const state,
        const char *from,
        const char *from_end,
        const char **const from_next,
        wchar_t *to,
        wchar_t *to_end,
        wchar_t_0 **to_next)
{
  wchar_t_0 *v10; // r5
  size_t v13; // r0

  v10 = (wchar_t_0 *)to;
  if ( to != to_end )
  {
    while ( from != from_end )
    {
      v13 = WLocale_mbtowc(this->_M_codecvt, v10, from, from_end - from, state);
      if ( v13 == -1 )
      {
        *from_next = from;
        *to_next = v10;
        return 2;
      }
      if ( v13 == -2 )
      {
        *from_next = from;
        *to_next = v10;
        return 1;
      }
      v10 += 4;
      from += v13;
      if ( to_end == (wchar_t *)v10 )
        break;
    }
  }
  *from_next = from;
  *to_next = v10;
  return 0;
}


// ===== 8b5128 std::codecvt_byname<wchar_t,char,mbstate_t>::do_encoding(void) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_encoding(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  int v3; // r5
  int v4; // r0

  if ( !WLocale_is_stateless(this->_M_codecvt) )
    return -1;
  v3 = WLocale_mb_cur_max(this->_M_codecvt);
  v4 = WLocale_mb_cur_min(this->_M_codecvt);
  return v3 == v4 ? v4 : 0;
}


// ===== 8b5158 std::codecvt_byname<wchar_t,char,mbstate_t>::do_unshift(mbstate_t&,char *,char *,char *&) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_unshift(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const state,
        char *to,
        char *to_limit,
        char **const to_next)
{
  size_t v6; // r0
  int v7; // r3

  *to_next = to;
  v6 = WLocale_unshift(this->_M_codecvt, state, to, to_limit - to, to_next);
  v7 = 2;
  if ( v6 != -1 )
  {
    v7 = 1;
    if ( v6 != -2 )
      return *to_next == to ? 3 : 0;
  }
  return v7;
}


// ===== 8b518c std::codecvt_byname<wchar_t,char,mbstate_t>::do_out(mbstate_t&,wchar_t const*,wchar_t const*,wchar_t const*&,char *,char *,char *&) =====
int __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::do_out(
        const std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        mbstate_t *const state,
        const wchar_t *from,
        const wchar_t *from_end,
        const wchar_t **const from_next,
        char *to,
        char *to_limit,
        char **const to_next)
{
  char *v10; // r4
  size_t v13; // r0

  v10 = to;
  if ( to != to_limit )
  {
    while ( from != from_end )
    {
      v13 = WLocale_wctomb(this->_M_codecvt, v10, to_limit - v10, *from, state);
      if ( v13 == -1 )
      {
        *from_next = from;
        *to_next = v10;
        return 2;
      }
      if ( v13 == -2 )
      {
        *from_next = from;
        *to_next = v10;
        return 1;
      }
      v10 += v13;
      ++from;
      if ( to_limit == v10 )
        break;
    }
  }
  *from_next = from;
  *to_next = v10;
  return 0;
}


// ===== 8b5208 std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname() =====
std::codecvt_byname<wchar_t,char,mbstate_t> *__fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994478;
  std::priv::__release_codecvt(this->_M_codecvt);
  std::codecvt<wchar_t,char,mbstate_t>::~codecvt(this);
  return this;
}


// ===== 8b5230 std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname() =====
void __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5244 std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname() =====
std::codecvt_byname<wchar_t,char,mbstate_t> *__fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<wchar_t,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994478;
  std::priv::__release_codecvt(this->_M_codecvt);
  std::codecvt<wchar_t,char,mbstate_t>::~codecvt(this);
  return this;
}


// ===== 8b526c std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname() =====
std::codecvt_byname<char,char,mbstate_t> *__fastcall std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<char,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9944A8;
  std::codecvt<char,char,mbstate_t>::~codecvt(this);
  return this;
}


// ===== 8b528c std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname() =====
void __fastcall std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<char,char,mbstate_t> *const this)
{
  std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b52a0 std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname() =====
std::codecvt_byname<char,char,mbstate_t> *__fastcall std::codecvt_byname<char,char,mbstate_t>::~codecvt_byname(
        std::codecvt_byname<char,char,mbstate_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9944A8;
  std::codecvt<char,char,mbstate_t>::~codecvt(this);
  return this;
}


// ===== 8b52c0 std::collate_byname<wchar_t>::do_compare(wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*) =====
int __fastcall std::collate_byname<wchar_t>::do_compare(
        const std::collate_byname<wchar_t> *const this,
        const wchar_t_0 *low1,
        const wchar_t *high1,
        const wchar_t_0 *low2,
        const wchar_t *high2)
{
  return WLocale_strcmp(
           this->_M_collate,
           low1,
           ((char *)high1 - (char *)low1) >> 2,
           low2,
           ((char *)high2 - (char *)low2) >> 2);
}


// ===== 8b52dc std::collate_byname<wchar_t>::~collate_byname() =====
std::collate_byname<wchar_t> *__fastcall std::collate_byname<wchar_t>::~collate_byname(
        std::collate_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994438;
  std::priv::__release_collate(this->_M_collate);
  std::collate<wchar_t>::~collate(this);
  return this;
}


// ===== 8b5304 std::collate_byname<wchar_t>::~collate_byname() =====
void __fastcall std::collate_byname<wchar_t>::~collate_byname(std::collate_byname<wchar_t> *const this)
{
  std::collate_byname<wchar_t>::~collate_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5318 std::collate_byname<wchar_t>::~collate_byname() =====
std::collate_byname<wchar_t> *__fastcall std::collate_byname<wchar_t>::~collate_byname(
        std::collate_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994438;
  std::priv::__release_collate(this->_M_collate);
  std::collate<wchar_t>::~collate(this);
  return this;
}


// ===== 8b5340 std::collate_byname<char>::do_transform(char const*,char const*) =====
void __fastcall std::collate_byname<char>::do_transform(
        std::string *__return_ptr retstr,
        const std::collate_byname<char> *const this,
        const char *low,
        const char *high)
{
  std::string buf; // [sp+14h] [bp-20h] BYREF

  if ( low == high )
  {
    retstr->_M_finish = (char *)retstr;
    retstr->_M_start_of_storage._M_data = (char *)retstr;
  }
  else
  {
    Locale_strxfrm(this->_M_collate, nullptr, 0, low, high - low);
    buf._M_finish = (char *)&buf;
    buf._M_start_of_storage._M_data = (char *)&buf;
  }
  JUMPOUT(0x8B567E);
}


// ===== 8b5424 std::collate_byname<char>::do_compare(char const*,char const*,char const*,char const*) =====
int __fastcall std::collate_byname<char>::do_compare(
        const std::collate_byname<char> *const this,
        const char *__low1,
        const char *__high1,
        const char *__low2,
        const char *__high2)
{
  return Locale_strcmp(this->_M_collate, __low1, __high1 - __low1, __low2, __high2 - __low2);
}


// ===== 8b543c std::collate_byname<char>::~collate_byname() =====
std::collate_byname<char> *__fastcall std::collate_byname<char>::~collate_byname(std::collate_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994458;
  std::priv::__release_collate(this->_M_collate);
  std::collate<char>::~collate(this);
  return this;
}


// ===== 8b5464 std::collate_byname<char>::~collate_byname() =====
void __fastcall std::collate_byname<char>::~collate_byname(std::collate_byname<char> *const this)
{
  std::collate_byname<char>::~collate_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5478 std::collate_byname<char>::~collate_byname() =====
std::collate_byname<char> *__fastcall std::collate_byname<char>::~collate_byname(std::collate_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994458;
  std::priv::__release_collate(this->_M_collate);
  std::collate<char>::~collate(this);
  return this;
}


// ===== 8b54a0 std::ctype_byname<wchar_t>::do_tolower(wchar_t *,wchar_t const*) =====
wchar_t *__fastcall std::ctype_byname<wchar_t>::do_tolower(
        const std::ctype_byname<wchar_t> *const this,
        wchar_t *low,
        wchar_t *high)
{
  wint_t *v5; // r4

  v5 = (wint_t *)low;
  if ( low < high )
  {
    do
    {
      *v5 = WLocale_tolower(this->_M_ctype, *v5);
      ++v5;
    }
    while ( high > (wchar_t *)v5 );
  }
  return high;
}


// ===== 8b54c0 std::ctype_byname<wchar_t>::do_tolower(wchar_t) =====
wint_t __fastcall std::ctype_byname<wchar_t>::do_tolower(const std::ctype_byname<wchar_t> *const this, wint_t c)
{
  return WLocale_tolower(this->_M_ctype, c);
}


// ===== 8b54cc std::ctype_byname<wchar_t>::do_toupper(wchar_t *,wchar_t const*) =====
wchar_t *__fastcall std::ctype_byname<wchar_t>::do_toupper(
        const std::ctype_byname<wchar_t> *const this,
        wchar_t *low,
        wchar_t *high)
{
  wint_t *v5; // r4

  v5 = (wint_t *)low;
  if ( low < high )
  {
    do
    {
      *v5 = WLocale_toupper(this->_M_ctype, *v5);
      ++v5;
    }
    while ( high > (wchar_t *)v5 );
  }
  return high;
}


// ===== 8b54ec std::ctype_byname<wchar_t>::do_toupper(wchar_t) =====
wint_t __fastcall std::ctype_byname<wchar_t>::do_toupper(const std::ctype_byname<wchar_t> *const this, wint_t c)
{
  return WLocale_toupper(this->_M_ctype, c);
}


// ===== 8b54f8 std::priv::__find_if<wchar_t const*,std::unary_negate<std::priv::_Ctype_byname_w_is_mask>>(wchar_t const*,wchar_t const*,std::unary_negate<std::priv::_Ctype_byname_w_is_mask>,std::random_access_iterator_tag const&) =====
const wchar_t *__fastcall std::priv::__find_if<wchar_t const*,std::unary_negate<std::priv::_Ctype_byname_w_is_mask>>(
        wchar_t *__first,
        const wchar_t *__last,
        std::unary_negate<std::priv::_Ctype_byname_w_is_mask> __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r6
  wint_t *v6; // r5
  int v8; // r4

  v4 = __last - __first;
  v5 = ((char *)__last - (char *)__first) >> 4;
  v6 = (wint_t *)__first;
  v8 = *(_DWORD *)__pred.gap0;
  if ( v5 <= 0 )
  {
LABEL_10:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return __last;
        goto LABEL_19;
      }
      if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 8), *v6, *(_WORD *)(v8 + 4)) )
        return (const wchar_t *)v6;
      ++v6;
    }
    if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 8), *v6, *(_WORD *)(v8 + 4)) )
      return (const wchar_t *)v6;
    ++v6;
LABEL_19:
    if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 8), *v6, *(_WORD *)(v8 + 4)) )
      return __last;
    return (const wchar_t *)v6;
  }
  while ( WLocale_ctype(*(_Locale_ctype **)(v8 + 8), *v6, *(_WORD *)(v8 + 4)) )
  {
    if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 8), v6[1], *(_WORD *)(v8 + 4)) )
      return (const wchar_t *)++v6;
    if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 8), v6[2], *(_WORD *)(v8 + 4)) )
    {
      v6 += 2;
      return (const wchar_t *)v6;
    }
    if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 8), v6[3], *(_WORD *)(v8 + 4)) )
    {
      v6 += 3;
      return (const wchar_t *)v6;
    }
    --v5;
    v6 += 4;
    if ( !v5 )
    {
      v4 = ((char *)__last - (char *)v6) >> 2;
      goto LABEL_10;
    }
  }
  return (const wchar_t *)v6;
}


// ===== 8b55a4 std::ctype_byname<wchar_t>::do_scan_not(std::ctype_base::mask,wchar_t const*,wchar_t const*) =====
const wchar_t *__fastcall std::ctype_byname<wchar_t>::do_scan_not(
        const std::ctype_byname<wchar_t> *const this,
        std::ctype_base::mask m,
        wchar_t *low,
        const wchar_t *high)
{
  std::random_access_iterator_tag *v7; // [sp+4h] [bp-Ch]
  _Locale_ctype *M_ctype; // [sp+8h] [bp-8h]
  char v9; // [sp+Ch] [bp-4h] BYREF
  std::unary_negate<std::priv::_Ctype_byname_w_is_mask> v10; // 0:r2.8,8:^0.4 BYREF

  *(_DWORD *)v10.gap0 = &v10._M_pred.M_ctp;
  M_ctype = this->_M_ctype;
  LOWORD(v7) = m;
  *(_DWORD *)&v10._M_pred.M = &v9;
  return std::priv::__find_if<wchar_t const*,std::unary_negate<std::priv::_Ctype_byname_w_is_mask>>(low, high, v10, v7);
}


// ===== 8b55c0 std::priv::__find_if<wchar_t const*,std::priv::_Ctype_byname_w_is_mask>(wchar_t const*,wchar_t const*,std::priv::_Ctype_byname_w_is_mask,std::random_access_iterator_tag const&) =====
const wchar_t *__fastcall std::priv::__find_if<wchar_t const*,std::priv::_Ctype_byname_w_is_mask>(
        wchar_t *__first,
        const wchar_t *__last,
        std::priv::_Ctype_byname_w_is_mask __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r6
  wint_t *v6; // r5
  int v8; // r4

  v4 = __last - __first;
  v5 = ((char *)__last - (char *)__first) >> 4;
  v6 = (wint_t *)__first;
  v8 = *(_DWORD *)&__pred.M;
  if ( v5 <= 0 )
  {
LABEL_10:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return __last;
        goto LABEL_19;
      }
      if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 4), *v6, *(_WORD *)v8) )
        return (const wchar_t *)v6;
      ++v6;
    }
    if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 4), *v6, *(_WORD *)v8) )
      return (const wchar_t *)v6;
    ++v6;
LABEL_19:
    if ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 4), *v6, *(_WORD *)v8) )
      return __last;
    return (const wchar_t *)v6;
  }
  while ( !WLocale_ctype(*(_Locale_ctype **)(v8 + 4), *v6, *(_WORD *)v8) )
  {
    if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 4), v6[1], *(_WORD *)v8) )
      return (const wchar_t *)++v6;
    if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 4), v6[2], *(_WORD *)v8) )
    {
      v6 += 2;
      return (const wchar_t *)v6;
    }
    if ( WLocale_ctype(*(_Locale_ctype **)(v8 + 4), v6[3], *(_WORD *)v8) )
    {
      v6 += 3;
      return (const wchar_t *)v6;
    }
    --v5;
    v6 += 4;
    if ( !v5 )
    {
      v4 = ((char *)__last - (char *)v6) >> 2;
      goto LABEL_10;
    }
  }
  return (const wchar_t *)v6;
}


// ===== 8b566c std::ctype_byname<wchar_t>::do_scan_is(std::ctype_base::mask,wchar_t const*,wchar_t const*) =====
const wchar_t *__fastcall std::ctype_byname<wchar_t>::do_scan_is(
        const std::ctype_byname<wchar_t> *const this,
        std::ctype_base::mask m,
        wchar_t *low,
        const wchar_t *high)
{
  std::priv::_Ctype_byname_w_is_mask v5; // r2
  const std::random_access_iterator_tag *v8; // [sp+0h] [bp-10h]
  __int16 v9; // [sp+4h] [bp-Ch] BYREF
  _Locale_ctype *M_ctype; // [sp+8h] [bp-8h]
  char v11; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)&v5.M = &v9;
  M_ctype = this->_M_ctype;
  v9 = m;
  v5.M_ctp = (_Locale_ctype *)&v11;
  return std::priv::__find_if<wchar_t const*,std::priv::_Ctype_byname_w_is_mask>(low, high, v5, v8);
}


// ===== 8b5688 std::ctype_byname<wchar_t>::do_is(wchar_t const*,wchar_t const*,std::ctype_base::mask *) =====
const wchar_t *__fastcall std::ctype_byname<wchar_t>::do_is(
        const std::ctype_byname<wchar_t> *const this,
        wchar_t *low,
        const wchar_t *high,
        std::ctype_base::mask *m)
{
  wint_t *v6; // r4
  wint_t v8; // r1

  v6 = (wint_t *)low;
  if ( low < high )
  {
    do
    {
      v8 = *v6++;
      *m++ = WLocale_ctype(this->_M_ctype, v8, 0x1FFu);
    }
    while ( high > (const wchar_t *)v6 );
  }
  return high;
}


// ===== 8b56b0 std::ctype_byname<wchar_t>::do_is(std::ctype_base::mask,wchar_t) =====
bool __fastcall std::ctype_byname<wchar_t>::do_is(
        const std::ctype_byname<wchar_t> *const this,
        std::ctype_base::mask m,
        wint_t c)
{
  return WLocale_ctype(this->_M_ctype, c, m) != 0;
}


// ===== 8b56c8 std::ctype_byname<wchar_t>::~ctype_byname() =====
std::ctype_byname<wchar_t> *__fastcall std::ctype_byname<wchar_t>::~ctype_byname(
        std::ctype_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9944D8;
  std::priv::__release_ctype(this->_M_ctype);
  std::ctype<wchar_t>::~ctype(this);
  return this;
}


// ===== 8b56f0 std::ctype_byname<wchar_t>::~ctype_byname() =====
void __fastcall std::ctype_byname<wchar_t>::~ctype_byname(std::ctype_byname<wchar_t> *const this)
{
  std::ctype_byname<wchar_t>::~ctype_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5704 std::ctype_byname<wchar_t>::~ctype_byname() =====
std::ctype_byname<wchar_t> *__fastcall std::ctype_byname<wchar_t>::~ctype_byname(
        std::ctype_byname<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9944D8;
  std::priv::__release_ctype(this->_M_ctype);
  std::ctype<wchar_t>::~ctype(this);
  return this;
}


// ===== 8b572c std::ctype_byname<wchar_t>::ctype_byname(char const*,uint) =====
void __fastcall std::ctype_byname<wchar_t>::ctype_byname(
        std::ctype_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B4FB4);
}


// ===== 8b57a8 std::ctype_byname<char>::do_tolower(char *,char const*) =====
char *__fastcall std::ctype_byname<char>::do_tolower(
        const std::ctype_byname<char> *const this,
        char *first,
        char *last)
{
  char *v5; // r4
  char *result; // r0

  v5 = first;
  result = first;
  if ( first != last )
  {
    do
    {
      *v5 = Locale_tolower(this->_M_ctype, (unsigned __int8)*v5);
      ++v5;
    }
    while ( v5 != last );
    return v5;
  }
  return result;
}


// ===== 8b57d0 std::ctype_byname<char>::do_tolower(char) =====
int __fastcall std::ctype_byname<char>::do_tolower(const std::ctype_byname<char> *const this, char c)
{
  return (unsigned __int8)Locale_tolower(this->_M_ctype, c);
}


// ===== 8b57e4 std::ctype_byname<char>::do_toupper(char *,char const*) =====
char *__fastcall std::ctype_byname<char>::do_toupper(
        const std::ctype_byname<char> *const this,
        char *first,
        char *last)
{
  char *v5; // r4
  char *result; // r0

  v5 = first;
  result = first;
  if ( first != last )
  {
    do
    {
      *v5 = Locale_toupper(this->_M_ctype, (unsigned __int8)*v5);
      ++v5;
    }
    while ( v5 != last );
    return v5;
  }
  return result;
}


// ===== 8b580c std::ctype_byname<char>::do_toupper(char) =====
int __fastcall std::ctype_byname<char>::do_toupper(const std::ctype_byname<char> *const this, char c)
{
  return (unsigned __int8)Locale_toupper(this->_M_ctype, c);
}


// ===== 8b5820 std::ctype_byname<char>::~ctype_byname() =====
std::ctype_byname<char> *__fastcall std::ctype_byname<char>::~ctype_byname(std::ctype_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994518;
  std::priv::__release_ctype(this->_M_ctype);
  std::ctype<char>::~ctype(this);
  return this;
}


// ===== 8b5850 std::ctype_byname<char>::~ctype_byname() =====
void __fastcall std::ctype_byname<char>::~ctype_byname(std::ctype_byname<char> *const this)
{
  std::ctype_byname<char>::~ctype_byname(this);
  JUMPOUT(0x8B52B4);
}


// ===== 8b5864 std::ctype_byname<char>::~ctype_byname() =====
std::ctype_byname<char> *__fastcall std::ctype_byname<char>::~ctype_byname(std::ctype_byname<char> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994518;
  std::priv::__release_ctype(this->_M_ctype);
  std::ctype<char>::~ctype(this);
  return this;
}


// ===== 8b5894 std::ctype_byname<char>::_M_init(void) =====
void __fastcall std::ctype_byname<char>::_M_init(std::ctype_byname<char> *const this)
{
  std::ctype_byname<char> *v1; // r4
  const _Locale_mask_t *v2; // r0
  int i; // r3
  std::ctype_base::mask v4; // r2

  this->_M_ctype_table = this->_M_byname_table;
  v1 = this;
  v2 = Locale_ctype_table(this->_M_ctype);
  for ( i = 0; i != 256; ++i )
  {
    v4 = v2[i];
    v1->_M_byname_table[0] = v4;
    v1 = (std::ctype_byname<char> *)((char *)v1 + 4);
  }
}


// ===== 8b58c0 std::ctype_byname<char>::ctype_byname(char const*,uint) =====
std::ctype_byname<char> *__fastcall std::ctype_byname<char>::ctype_byname(
        std::ctype_byname<char> *const this,
        char *name,
        size_t refs)
{
  _Locale_ctype *v4; // r0
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::ctype<char>::ctype(this, nullptr, 0, refs);
  this->_vptr.facet = (int (**)(...))&off_994518;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  v4 = std::priv::__acquire_ctype((const char **const)&v6, buf, nullptr, &v7);
  this->_M_ctype = v4;
  if ( !v4 )
    std::locale::_M_throw_on_creation_failure(v7, v6, "ctype");
  std::ctype_byname<char>::_M_init(this);
  return this;
}


// ===== 8b5944 std::ctype_byname<char>::ctype_byname(char const*,uint) =====
std::ctype_byname<char> *__fastcall std::ctype_byname<char>::ctype_byname(
        std::ctype_byname<char> *const this,
        char *name,
        size_t refs)
{
  _Locale_ctype *v4; // r0
  char *v6; // [sp+4h] [bp-10Ch] BYREF
  int v7; // [sp+8h] [bp-108h] BYREF
  char buf[8]; // [sp+Ch] [bp-104h] BYREF

  v6 = name;
  std::ctype<char>::ctype(this, nullptr, 0, refs);
  this->_vptr.facet = (int (**)(...))&off_994518;
  if ( !v6 )
    std::locale::_M_throw_on_null_name();
  v4 = std::priv::__acquire_ctype((const char **const)&v6, buf, nullptr, &v7);
  this->_M_ctype = v4;
  if ( !v4 )
    std::locale::_M_throw_on_creation_failure(v7, v6, "ctype");
  std::ctype_byname<char>::_M_init(this);
  return this;
}


// ===== 8b59c8 std::ctype_byname<wchar_t>::ctype_byname(char const*,uint) =====
void __fastcall std::ctype_byname<wchar_t>::ctype_byname(
        std::ctype_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5a44 std::numpunct_byname<wchar_t>::numpunct_byname(char const*,uint) =====
void __fastcall std::numpunct_byname<wchar_t>::numpunct_byname(
        std::numpunct_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5ac0 std::numpunct_byname<wchar_t>::numpunct_byname(char const*,uint) =====
void __fastcall std::numpunct_byname<wchar_t>::numpunct_byname(
        std::numpunct_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5b3c std::numpunct_byname<char>::numpunct_byname(char const*,uint) =====
void __fastcall std::numpunct_byname<char>::numpunct_byname(
        std::numpunct_byname<char> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5bb8 std::numpunct_byname<char>::numpunct_byname(char const*,uint) =====
void __fastcall std::numpunct_byname<char>::numpunct_byname(
        std::numpunct_byname<char> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5c34 std::codecvt_byname<char,char,mbstate_t>::codecvt_byname(char const*,uint) =====
void __fastcall std::codecvt_byname<char,char,mbstate_t>::codecvt_byname(
        std::codecvt_byname<char,char,mbstate_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5c6c std::codecvt_byname<char,char,mbstate_t>::codecvt_byname(char const*,uint) =====
void __fastcall std::codecvt_byname<char,char,mbstate_t>::codecvt_byname(
        std::codecvt_byname<char,char,mbstate_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5ca4 std::codecvt_byname<wchar_t,char,mbstate_t>::codecvt_byname(char const*,uint) =====
void __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::codecvt_byname(
        std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5d20 std::codecvt_byname<wchar_t,char,mbstate_t>::codecvt_byname(char const*,uint) =====
void __fastcall std::codecvt_byname<wchar_t,char,mbstate_t>::codecvt_byname(
        std::codecvt_byname<wchar_t,char,mbstate_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5d9c std::collate_byname<wchar_t>::collate_byname(char const*,uint) =====
void __fastcall std::collate_byname<wchar_t>::collate_byname(
        std::collate_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5e18 std::collate_byname<wchar_t>::collate_byname(char const*,uint) =====
void __fastcall std::collate_byname<wchar_t>::collate_byname(
        std::collate_byname<wchar_t> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5e94 std::collate_byname<char>::collate_byname(char const*,uint) =====
void __fastcall std::collate_byname<char>::collate_byname(
        std::collate_byname<char> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5f10 std::collate_byname<char>::collate_byname(char const*,uint) =====
void __fastcall std::collate_byname<char>::collate_byname(
        std::collate_byname<char> *const this,
        const char *name,
        size_t refs)
{
  this->_M_ref_count = refs != 0;
  JUMPOUT(0x8B5FB4);
}


// ===== 8b5f8c std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_range_initialize(wchar_t const*,wchar_t const*) =====
void __fastcall std::wstring::_M_range_initialize(std::wstring *const this, const wchar_t *__f, const wchar_t *__l)
{
  wchar_t *M_data; // r3

  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(this, __l - __f + 1);
  M_data = this->_M_start_of_storage._M_data;
  if ( __l != __f )
    JUMPOUT(0x8B586C);
  this->_M_finish = M_data;
  *M_data = 0;
}


// ===== 8b5fb8 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_string(wchar_t const*,std::allocator<wchar_t> const&) =====
std::wstring *__fastcall std::wstring::basic_string(
        std::wstring *const this,
        const wchar_t *__s,
        const std::allocator<wchar_t> *const __a,
        wchar_t a4)
{
  int v5; // r6

  this->_M_finish = (wchar_t *)this;
  this->_M_start_of_storage._M_data = (wchar_t *)this;
  this->_M_buffers._M_static_buf[0] = a4;
  if ( !v5 )
    std::locale::_M_throw_on_null_name();
  return this;
}


// ===== 8b5fd8 std::moneypunct_byname<wchar_t,false>::do_negative_sign(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,false>::do_negative_sign(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_negative_sign(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b5ff8 std::moneypunct_byname<wchar_t,true>::do_negative_sign(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,true>::do_negative_sign(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_negative_sign(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b6018 std::moneypunct_byname<wchar_t,false>::do_positive_sign(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,false>::do_positive_sign(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_positive_sign(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b6038 std::moneypunct_byname<wchar_t,true>::do_positive_sign(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,true>::do_positive_sign(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_positive_sign(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b6058 std::moneypunct_byname<wchar_t,false>::do_curr_symbol(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,false>::do_curr_symbol(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,false> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_currency_symbol(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b6078 std::moneypunct_byname<wchar_t,true>::do_curr_symbol(void) =====
std::wstring *__fastcall std::moneypunct_byname<wchar_t,true>::do_curr_symbol(
        std::wstring *__return_ptr retstr,
        const std::moneypunct_byname<wchar_t,true> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_int_curr_symbol(this->_M_monetary, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b6098 std::numpunct_byname<wchar_t>::do_falsename(void) =====
std::wstring *__fastcall std::numpunct_byname<wchar_t>::do_falsename(
        std::wstring *__return_ptr retstr,
        const std::numpunct_byname<wchar_t> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_false(this->_M_numeric, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b60b8 std::numpunct_byname<wchar_t>::do_truename(void) =====
std::wstring *__fastcall std::numpunct_byname<wchar_t>::do_truename(
        std::wstring *__return_ptr retstr,
        const std::numpunct_byname<wchar_t> *const this)
{
  const wchar_t *v3; // r0
  wchar_t v4; // r3
  wchar_t buf[16]; // [sp+4h] [bp-44h] BYREF
  std::allocator<wchar_t> __a; // [sp+44h] [bp-4h] BYREF

  v3 = (const wchar_t *)WLocale_true(this->_M_numeric, (wchar_t_0 *)buf, 0x10u);
  std::wstring::basic_string(retstr, v3, &__a, v4);
  return retstr;
}


// ===== 8b60d8 std::collate_byname<wchar_t>::do_transform(wchar_t const*,wchar_t const*) =====
std::wstring *__fastcall std::collate_byname<wchar_t>::do_transform(
        std::wstring *__return_ptr retstr,
        const std::collate_byname<wchar_t> *const this,
        const wchar_t_0 *low,
        const wchar_t_0 *high)
{
  size_t src_n; // r9
  size_t v8; // r8
  wchar_t *M_data; // r2
  wchar_t *v10; // r0
  int v11; // r3
  std::wstring buf; // [sp+8h] [bp-48h] BYREF

  if ( low != high )
  {
    src_n = (high - low) >> 2;
    v8 = WLocale_strxfrm(this->_M_collate, nullptr, 0, low, src_n);
    buf._M_finish = (wchar_t *)&buf;
    buf._M_start_of_storage._M_data = (wchar_t *)&buf;
    std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(&buf, v8 + 1);
    M_data = buf._M_start_of_storage._M_data;
    v10 = &buf._M_start_of_storage._M_data[v8];
    v11 = (int)(4 * v8) >> 2;
    if ( v11 > 0 )
    {
      do
      {
        --v11;
        *M_data++ = 0;
      }
      while ( v11 );
    }
    buf._M_finish = v10;
    *v10 = 0;
    WLocale_strxfrm(this->_M_collate, (wchar_t_0 *)buf._M_start_of_storage._M_data, v8 + 1, low, src_n);
    retstr->_M_finish = (wchar_t *)retstr;
    retstr->_M_start_of_storage._M_data = (wchar_t *)retstr;
    std::wstring::_M_range_initialize(retstr, buf._M_start_of_storage._M_data, buf._M_finish);
    JUMPOUT(0x8B63B4);
  }
  retstr->_M_finish = (wchar_t *)retstr;
  retstr->_M_start_of_storage._M_data = (wchar_t *)retstr;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(retstr, 0x10u);
  *retstr->_M_finish = 0;
  return retstr;
}


// ===== 8b617c std::_STLP_mutex::~_STLP_mutex() =====
void __fastcall std::_STLP_mutex::~_STLP_mutex(std::_STLP_mutex *const this)
{
  JUMPOUT(0x8B66BA);
}


// ===== 8b6188 std::priv::_Pthread_alloc_impl::deallocate(void *,uint,std::priv::_Pthread_alloc_per_thread_state *) =====
void __fastcall std::priv::_Pthread_alloc_impl::deallocate(
        void *__p,
        size_t __n,
        std::priv::_Pthread_alloc_per_thread_state *__a)
{
  _Locale_collate *v3; // r0
  char *name; // [sp+4h] [bp+0h] BYREF
  int __err_code; // [sp+8h] [bp+4h] BYREF
  char buf; // [sp+Ch] [bp+8h] BYREF

  if ( __n > 0x80 )
  {
    std::locale::_M_throw_on_null_name();
    v3 = std::priv::__acquire_collate((const char **const)&name, &buf, nullptr, &__err_code);
    *(_DWORD *)(__n + 12) = v3;
    if ( !v3 )
    {
      std::locale::_M_throw_on_creation_failure(__err_code, name, "collate");
      JUMPOUT(0x8B5EF2);
    }
    JUMPOUT(0x8B5ED6);
  }
  JUMPOUT(0x8B65B2);
}


// ===== 8b61bc std::priv::_Pthread_alloc::deallocate(void *,uint,std::priv::_Pthread_alloc_per_thread_state *) =====
void __fastcall std::priv::_Pthread_alloc::deallocate(
        void *__p,
        size_t __n,
        std::priv::_Pthread_alloc_per_thread_state *__a)
{
  std::priv::_Pthread_alloc_impl::deallocate(__p, __n, __a);
}


// ===== 8b61c4 std::__malloc_alloc::set_malloc_handler(void (*)(void)) =====
void __fastcall std::__malloc_alloc::set_malloc_handler(std::__oom_handler_type __f)
{
  JUMPOUT(0x8B65B4);
}


// ===== 8b61f4 std::priv::_Pthread_alloc_impl::_S_destructor(void *) =====
void __fastcall std::priv::_Pthread_alloc_impl::_S_destructor(void *__instance)
{
  JUMPOUT(0x8B65B4);
}


// ===== 8b6224 std::__node_alloc_impl::_M_deallocate(void *,uint) =====
void __fastcall std::__node_alloc_impl::_M_deallocate(void *__p, size_t __n)
{
  JUMPOUT(0x8B65B4);
}


// ===== 8b625c std::__node_alloc::_M_deallocate(void *,uint) =====
void __fastcall std::__node_alloc::_M_deallocate(void *__p, size_t __n)
{
  std::__node_alloc_impl::_M_deallocate(__p, __n);
}


// ===== 8b6264 std::__node_alloc_impl::_S_chunk_alloc(uint,int &) =====
// write access to const memory has been detected, the output may be wrong!
char *__fastcall std::__node_alloc_impl::_S_chunk_alloc(size_t _p_size, int *const __nobjs)
{
  int v2; // r9
  char *result; // r0
  std::_Node_alloc_obj *volatile *v5; // r7
  unsigned int v6; // r7
  size_t v7; // r3

  result = std::__node_alloc_impl::_S_start_free;
  v6 = std::__node_alloc_impl::_S_end_free - std::__node_alloc_impl::_S_start_free;
  v7 = _p_size * *__nobjs;
  if ( std::__node_alloc_impl::_S_end_free == std::__node_alloc_impl::_S_start_free )
    goto LABEL_11;
  if ( v7 > v6 )
  {
    if ( v6 >= _p_size )
    {
      __GLOBAL_OFFSET_TABLE_ = (Elf32_Dyn *)(*(_DWORD *)(v2 + v7) + 8);
      if ( !__nobjs )
        std::locale::_M_throw_on_null_name();
      __asm { POP             {R4-R6,PC} }
    }
    v5 = &std::__node_alloc_impl::_S_free_list[(v6 - 1) >> 3];
    *(std::_Node_alloc_obj **)std::__node_alloc_impl::_S_start_free = *v5;
    *v5 = (std::_Node_alloc_obj *volatile)std::__node_alloc_impl::_S_start_free;
    std::__node_alloc_impl::_S_start_free = nullptr;
    std::__node_alloc_impl::_S_end_free = nullptr;
LABEL_11:
    JUMPOUT(0x8B688E);
  }
  std::__node_alloc_impl::_S_start_free += v7;
  return result;
}


// ===== 8b6340 std::__node_alloc_impl::_S_refill(uint) =====
std::_Node_alloc_obj *__fastcall std::__node_alloc_impl::_S_refill(_DWORD *__n)
{
  std::_Node_alloc_obj *result; // r0
  _DWORD *v3; // r3
  int v4; // [sp+4h] [bp-8h] BYREF

  v4 = 20;
  result = (std::_Node_alloc_obj *)std::__node_alloc_impl::_S_chunk_alloc((size_t)__n, &v4);
  if ( v4 != 1 )
  {
    v3 = (_DWORD *)((char *)__n + (_DWORD)result);
    std::__node_alloc_impl::_S_free_list[((unsigned int)__n - 1) >> 3] = (std::_Node_alloc_obj *volatile)((char *)__n + (_DWORD)result);
    v4 -= 2;
    if ( v4 )
    {
      while ( 1 )
      {
        *v3 = (char *)__n + (_DWORD)v3;
        if ( !--v4 )
          break;
        v3 = (_DWORD *)((char *)__n + (_DWORD)v3);
      }
      v3 = __n;
    }
    *v3 = 0;
  }
  return result;
}


// ===== 8b6398 std::__node_alloc_impl::_M_allocate(uint &) =====
void __fastcall std::__node_alloc_impl::_M_allocate(size_t *const __n)
{
  *__n = (*__n + 7) & 0xFFFFFFF8;
  JUMPOUT(0x8B65B2);
}


// ===== 8b63f4 std::__node_alloc::_M_allocate(uint &) =====
void __fastcall std::__node_alloc::_M_allocate(size_t *const __n)
{
  std::__node_alloc_impl::_M_allocate(__n);
}


// ===== 8b63fc std::priv::_Pthread_alloc_impl::_S_new_per_thread_state(void) =====
std::priv::_Pthread_alloc_per_thread_state *std::priv::_Pthread_alloc_impl::_S_new_per_thread_state()
{
  std::priv::_Pthread_alloc_per_thread_state *v0; // r4

  v0 = std::priv::_Pthread_alloc_impl::_S_free_per_thread_states;
  if ( !std::priv::_Pthread_alloc_impl::_S_free_per_thread_states )
    return (std::priv::_Pthread_alloc_per_thread_state *)Locale_messages_default((char *)&dword_48);
  std::priv::_Pthread_alloc_impl::_S_free_per_thread_states = std::priv::_Pthread_alloc_impl::_S_free_per_thread_states->__next;
  return v0;
}


// ===== 8b643c std::priv::_Pthread_alloc_impl::_S_get_per_thread_state(void) =====
void std::priv::_Pthread_alloc_impl::_S_get_per_thread_state()
{
  if ( !std::priv::_Pthread_alloc_impl::_S_key_initialized )
    JUMPOUT(0x8B65B2);
  JUMPOUT(0x8B62CA);
}


// ===== 8b64ec std::priv::_Pthread_alloc::_S_get_per_thread_state(void) =====
void std::priv::_Pthread_alloc::_S_get_per_thread_state()
{
  std::priv::_Pthread_alloc_impl::_S_get_per_thread_state();
}


// ===== 8b64f4 std::priv::_Pthread_alloc_impl::deallocate(void *,uint) =====
// positive sp value has been detected, the output may be wrong!
void __fastcall std::priv::_Pthread_alloc_impl::deallocate(
        char *__p,
        size_t __n,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8)
{
  int v8; // r6
  int v11; // r0
  _DWORD *v12; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  if ( __n > 0x80 )
  {
    if ( savedregs_12 == **(_DWORD **)&__p[v8] )
      __asm { POP             {R4-R6,PC} }
    JUMPOUT(0x8B6314);
  }
  std::priv::_Pthread_alloc_impl::_S_get_per_thread_state();
  v12 = (_DWORD *)(v11 + 4 * (((__n + 7) >> 3) - 1));
  *(_DWORD *)__p = *v12;
  *v12 = __p;
}


// ===== 8b651c std::priv::_Pthread_alloc::deallocate(void *,uint) =====
None

// ===== 8b6524 std::__malloc_alloc::allocate(uint) =====
void __fastcall std::__malloc_alloc::allocate(size_t __n)
{
  JUMPOUT(0x8B66F6);
}


// ===== 8b657c std::priv::_Pthread_alloc_impl::_S_chunk_alloc(uint,uint &,std::priv::_Pthread_alloc_per_thread_state *) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall std::priv::_Pthread_alloc_impl::_S_chunk_alloc(
        size_t __p_size,
        size_t *const __nobjs,
        std::priv::_Pthread_alloc_per_thread_state *__a)
{
  size_t v3; // r7
  int *v4; // r3
  char *v5; // r0

  v3 = ((std::priv::_Pthread_alloc_impl::_S_heap_size + 7) & 0xFFFFFFF8) + 1684;
  if ( &std::priv::_Pthread_alloc_impl::_S_chunk_allocator_lock )
  {
    v4 = (int *)&__a->__free_list[((unsigned int)&algn_A34FA9[2] >> 3) - 1];
    elf_hash_bucket[2612] = *v4;
    *v4 = *__nobjs;
  }
  std::__malloc_alloc::allocate(v3);
  std::priv::_Pthread_alloc_impl::_S_start_free = v5;
  std::priv::_Pthread_alloc_impl::_S_heap_size += v3 >> 4;
  std::priv::_Pthread_alloc_impl::_S_end_free = &v5[v3];
  std::__node_alloc_impl::_M_allocate((size_t *const)&std::priv::_Pthread_alloc_impl::_S_chunk_allocator_lock);
}


// ===== 8b666c std::priv::_Pthread_alloc_per_thread_state::_M_refill(uint) =====
void __fastcall std::priv::_Pthread_alloc_per_thread_state::_M_refill(
        std::priv::_Pthread_alloc_per_thread_state *const this,
        size_t __n)
{
  int v4; // r0
  size_t v5; // r3
  _DWORD *v6; // r1
  _DWORD *v7; // r3
  int v8; // r2
  size_t v9[2]; // [sp+4h] [bp-8h] BYREF

  v9[0] = 128;
  std::priv::_Pthread_alloc_impl::_S_chunk_alloc(__n, v9, this);
  v5 = v9[0];
  if ( v9[0] != 1 )
  {
    v6 = (_DWORD *)(v4 + __n);
    this->__free_list[((__n + 7) >> 3) - 1] = (std::priv::_Pthread_alloc_obj *volatile)(v4 + __n);
    if ( v5 != 2 )
    {
      v7 = (_DWORD *)((char *)v6 + __n);
      v8 = 1;
      do
      {
        *v6 = v7;
        ++v8;
        v6 = v7;
        v7 = (_DWORD *)((char *)v7 + __n);
      }
      while ( v9[0] - 1 != v8 );
    }
    *v6 = 0;
  }
}


// ===== 8b66b8 std::priv::_Pthread_alloc_impl::allocate(uint &,std::priv::_Pthread_alloc_per_thread_state *) =====
void __fastcall std::priv::_Pthread_alloc_impl::allocate(
        size_t *const __n,
        std::priv::_Pthread_alloc_per_thread_state *__a)
{
  size_t v3; // r0

  v3 = *__n;
  if ( v3 <= 0x80 )
  {
    *__n = (v3 + 7) & 0xFFFFFFF8;
    JUMPOUT(0x8B65B4);
  }
  std::__malloc_alloc::allocate(v3);
}


// ===== 8b6708 std::priv::_Pthread_alloc::allocate(uint &,std::priv::_Pthread_alloc_per_thread_state *) =====
void __fastcall std::priv::_Pthread_alloc::allocate(size_t *const __n, std::priv::_Pthread_alloc_per_thread_state *__a)
{
  std::priv::_Pthread_alloc_impl::allocate(__n, __a);
}


// ===== 8b6710 std::priv::_Pthread_alloc_impl::allocate(uint &) =====
void __fastcall std::priv::_Pthread_alloc_impl::allocate(size_t *const __n)
{
  size_t v2; // r0
  std::priv::_Pthread_alloc_per_thread_state *v3; // r0
  std::priv::_Pthread_alloc_obj *volatile *v4; // r2

  v2 = *__n;
  if ( v2 > 0x80 )
  {
    std::__malloc_alloc::allocate(v2);
  }
  else
  {
    *__n = (v2 + 7) & 0xFFFFFFF8;
    std::priv::_Pthread_alloc_impl::_S_get_per_thread_state();
    v4 = &v3->__free_list[((*__n + 7) >> 3) - 1];
    if ( *v4 )
      *v4 = **(std::priv::_Pthread_alloc_obj *volatile **)v4;
    else
      std::priv::_Pthread_alloc_per_thread_state::_M_refill(v3, *__n);
  }
}


// ===== 8b674c std::priv::_Pthread_alloc::allocate(uint &) =====
void __fastcall std::priv::_Pthread_alloc::allocate(size_t *const __n)
{
  std::priv::_Pthread_alloc_impl::allocate(__n);
}


// ===== 8b6754 std::priv::_Pthread_alloc_impl::reallocate(void *,uint,uint &) =====
void __fastcall std::priv::_Pthread_alloc_impl::reallocate(void *__p, size_t __old_sz, size_t *const __new_sz)
{
  size_t v4; // r1
  char *v5; // r0

  if ( __old_sz <= 0x80 )
  {
    v4 = *__new_sz;
  }
  else
  {
    v4 = *__new_sz;
    if ( *__new_sz > 0x80 )
      JUMPOUT(0x8B6C06);
  }
  if ( ((__old_sz + 7) & 0xFFFFFFF8) != ((v4 + 7) & 0xFFFFFFF8) )
  {
    std::priv::_Pthread_alloc_impl::allocate(__new_sz);
    Locale_time_default(v5);
  }
}


// ===== 8b67a8 std::priv::_Pthread_alloc::reallocate(void *,uint,uint &) =====
void __fastcall std::priv::_Pthread_alloc::reallocate(void *__p, size_t __old_sz, size_t *const __new_sz)
{
  std::priv::_Pthread_alloc_impl::reallocate(__p, __old_sz, __new_sz);
}


// ===== 8b67b0 `global constructor keyed to'allocators.cpp =====
void `global constructor keyed to'allocators.cpp()
{
  JUMPOUT(0x8B6FB4);
}


// ===== 8b67e4 _Locale_final =====
void Locale_final()
{
  ;
}


// ===== 8b67e8 _Locale_create =====
void *__fastcall Locale_create(const char *name, int *__err_code)
{
  int v2; // r3
  void *result; // r0

  if ( *name != 67 || (v2 = *((unsigned __int8 *)name + 1), result = &dword_0 + 1, v2) )
  {
    *__err_code = 3;
    return nullptr;
  }
  return result;
}


// ===== 8b6800 _Locale_ctype_create =====
_Locale_ctype *__fastcall Locale_ctype_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_ctype *)Locale_create(name, __err_code);
}


// ===== 8b680c _Locale_codecvt_create =====
_Locale_codecvt *__fastcall Locale_codecvt_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_codecvt *)Locale_create(name, __err_code);
}


// ===== 8b6818 _Locale_numeric_create =====
_Locale_numeric *__fastcall Locale_numeric_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_numeric *)Locale_create(name, __err_code);
}


// ===== 8b6824 _Locale_time_create =====
_Locale_time *__fastcall Locale_time_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_time *)Locale_create(name, __err_code);
}


// ===== 8b6830 _Locale_collate_create =====
_Locale_collate *__fastcall Locale_collate_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_collate *)Locale_create(name, __err_code);
}


// ===== 8b683c _Locale_monetary_create =====
_Locale_monetary *__fastcall Locale_monetary_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_monetary *)Locale_create(name, __err_code);
}


// ===== 8b6848 _Locale_messages_create =====
_Locale_messages *__fastcall Locale_messages_create(const char *name, _Locale_name_hint *hint, int *__err_code)
{
  return (_Locale_messages *)Locale_create(name, __err_code);
}


// ===== 8b6854 _Locale_ctype_default =====
const char *__fastcall Locale_ctype_default(char *buf)
{
  return "C";
}


// ===== 8b6860 _Locale_numeric_default =====
const char *__fastcall Locale_numeric_default(char *buf)
{
  return "C";
}


// ===== 8b686c _Locale_time_default =====
const char *__fastcall Locale_time_default(char *buf)
{
  return "C";
}


// ===== 8b6878 _Locale_collate_default =====
const char *__fastcall Locale_collate_default(char *buf)
{
  return "C";
}


// ===== 8b6884 _Locale_monetary_default =====
const char *__fastcall Locale_monetary_default(char *buf)
{
  return "C";
}


// ===== 8b6890 _Locale_messages_default =====
const char *__fastcall Locale_messages_default(char *buf)
{
  return "C";
}


// ===== 8b689c _Locale_ctype_name =====
const char *__fastcall Locale_ctype_name(const _Locale_ctype *lctype, char *buf)
{
  return "C";
}


// ===== 8b68a8 _Locale_codecvt_name =====
const char *__fastcall Locale_codecvt_name(const _Locale_codecvt *lcodecvt, char *buf)
{
  return "C";
}


// ===== 8b68b4 _Locale_numeric_name =====
const char *__fastcall Locale_numeric_name(const _Locale_numeric *lnum, char *buf)
{
  return "C";
}


// ===== 8b68c0 _Locale_time_name =====
const char *__fastcall Locale_time_name(const _Locale_time *ltime, char *buf)
{
  return "C";
}


// ===== 8b68cc _Locale_collate_name =====
const char *__fastcall Locale_collate_name(const _Locale_collate *lcol, char *buf)
{
  return "C";
}


// ===== 8b68d8 _Locale_monetary_name =====
const char *__fastcall Locale_monetary_name(const _Locale_monetary *lmon, char *buf)
{
  return "C";
}


// ===== 8b68e4 _Locale_messages_name =====
const char *__fastcall Locale_messages_name(const _Locale_messages *lmes, char *buf)
{
  return "C";
}


// ===== 8b68f0 _Locale_ctype_destroy =====
void __fastcall Locale_ctype_destroy(_Locale_ctype *lctype)
{
  ;
}


// ===== 8b68f4 _Locale_codecvt_destroy =====
void __fastcall Locale_codecvt_destroy(_Locale_codecvt *lcodecvt)
{
  ;
}


// ===== 8b68f8 _Locale_numeric_destroy =====
void __fastcall Locale_numeric_destroy(_Locale_numeric *lnum)
{
  ;
}


// ===== 8b68fc _Locale_time_destroy =====
void __fastcall Locale_time_destroy(_Locale_time *ltime)
{
  ;
}


// ===== 8b6900 _Locale_collate_destroy =====
void __fastcall Locale_collate_destroy(_Locale_collate *lcol)
{
  ;
}


// ===== 8b6904 _Locale_monetary_destroy =====
void __fastcall Locale_monetary_destroy(_Locale_monetary *lmon)
{
  ;
}


// ===== 8b6908 _Locale_messages_destroy =====
void __fastcall Locale_messages_destroy(_Locale_messages *lmes)
{
  ;
}


// ===== 8b690c _Locale_extract_ctype_name =====
const char *__fastcall Locale_extract_ctype_name(const char *name, char *buf, _Locale_name_hint *hint, int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b6930 _Locale_extract_numeric_name =====
const char *__fastcall Locale_extract_numeric_name(
        const char *name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b6954 _Locale_extract_time_name =====
const char *__fastcall Locale_extract_time_name(const char *name, char *buf, _Locale_name_hint *hint, int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b6978 _Locale_extract_collate_name =====
const char *__fastcall Locale_extract_collate_name(
        const char *name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b699c _Locale_extract_monetary_name =====
const char *__fastcall Locale_extract_monetary_name(
        const char *name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b69c0 _Locale_extract_messages_name =====
const char *__fastcall Locale_extract_messages_name(
        const char *name,
        char *buf,
        _Locale_name_hint *hint,
        int *__err_code)
{
  if ( !*name || *name == 67 && !name[1] )
    return "C";
  *__err_code = 3;
  return nullptr;
}


// ===== 8b69e4 _Locale_get_ctype_hint =====
_Locale_name_hint *__fastcall Locale_get_ctype_hint(_Locale_ctype *ctype)
{
  return nullptr;
}


// ===== 8b69e8 _Locale_get_numeric_hint =====
_Locale_name_hint *__fastcall Locale_get_numeric_hint(_Locale_numeric *numeric)
{
  return nullptr;
}


// ===== 8b69ec _Locale_get_time_hint =====
_Locale_name_hint *__fastcall Locale_get_time_hint(_Locale_time *time)
{
  return nullptr;
}


// ===== 8b69f0 _Locale_get_collate_hint =====
_Locale_name_hint *__fastcall Locale_get_collate_hint(_Locale_collate *collate)
{
  return nullptr;
}


// ===== 8b69f4 _Locale_get_monetary_hint =====
_Locale_name_hint *__fastcall Locale_get_monetary_hint(_Locale_monetary *monetary)
{
  return nullptr;
}


// ===== 8b69f8 _Locale_get_messages_hint =====
_Locale_name_hint *__fastcall Locale_get_messages_hint(_Locale_messages *messages)
{
  return nullptr;
}


// ===== 8b69fc _Locale_ctype_table =====
const _Locale_mask_t *__fastcall Locale_ctype_table(_Locale_ctype *lctype)
{
  return ctable;
}


// ===== 8b6a08 _Locale_toupper =====
int __fastcall Locale_toupper(_Locale_ctype *lctype, int c)
{
  if ( (unsigned int)c <= 0xFF )
    return *(__int16 *)(2 * (c + 1) + toupper_tab_);
  return c;
}


// ===== 8b6a28 _Locale_tolower =====
int __fastcall Locale_tolower(_Locale_ctype *lctype, int c)
{
  if ( (unsigned int)c <= 0xFF )
    return *(__int16 *)(2 * (c + 1) + tolower_tab_);
  return c;
}


// ===== 8b6a48 _WLocale_mb_cur_max =====
int __fastcall WLocale_mb_cur_max(_Locale_codecvt *lcodecvt)
{
  return 1;
}


// ===== 8b6a4c _WLocale_mb_cur_min =====
int __fastcall WLocale_mb_cur_min(_Locale_codecvt *lcodecvt)
{
  return 1;
}


// ===== 8b6a50 _WLocale_is_stateless =====
int __fastcall WLocale_is_stateless(_Locale_codecvt *lcodecvt)
{
  return 1;
}


// ===== 8b6a54 _WLocale_mbtowc =====
size_t __fastcall WLocale_mbtowc(_Locale_codecvt *lcodecvt, wchar_t_0 *to, const char *from, size_t n, mbstate_t *st)
{
  *to = *from;
  return 1;
}


// ===== 8b6a5c _WLocale_wctomb =====
size_t __fastcall WLocale_wctomb(_Locale_codecvt *lcodecvt, char *to, size_t n, const wchar_t_0 c, mbstate_t *st)
{
  *to = c;
  return 1;
}


// ===== 8b6a64 _WLocale_unshift =====
size_t __fastcall WLocale_unshift(_Locale_codecvt *lcodecvt, mbstate_t *st, char *buf, size_t n, char **next)
{
  *next = buf;
  return 0;
}


// ===== 8b6a6c _Locale_decimal_point =====
char __fastcall Locale_decimal_point(_Locale_numeric *lnum)
{
  return 46;
}


// ===== 8b6a70 _Locale_thousands_sep =====
char __fastcall Locale_thousands_sep(_Locale_numeric *lnum)
{
  return 44;
}


// ===== 8b6a74 _Locale_grouping =====
const char *__fastcall Locale_grouping(_Locale_numeric *lnum)
{
  return "";
}


// ===== 8b6a80 _Locale_true =====
const char *__fastcall Locale_true(_Locale_numeric *lnum)
{
  return "true";
}


// ===== 8b6a8c _Locale_false =====
const char *__fastcall Locale_false(_Locale_numeric *lnum)
{
  return "false";
}


// ===== 8b6a98 _WLocale_decimal_point =====
wchar_t_0 __fastcall WLocale_decimal_point(_Locale_numeric *lnum)
{
  return 46;
}


// ===== 8b6a9c _WLocale_thousands_sep =====
wchar_t_0 __fastcall WLocale_thousands_sep(_Locale_numeric *lnum)
{
  return 44;
}


// ===== 8b6aa0 _WLocale_true =====
const wchar_t_0 *__fastcall WLocale_true(_Locale_numeric *lnum, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"true";
}


// ===== 8b6aac _WLocale_false =====
const wchar_t_0 *__fastcall WLocale_false(_Locale_numeric *lnum, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"false";
}


// ===== 8b6ab8 _Locale_int_curr_symbol =====
const char *__fastcall Locale_int_curr_symbol(_Locale_monetary *lmon)
{
  return "";
}


// ===== 8b6ac4 _Locale_currency_symbol =====
const char *__fastcall Locale_currency_symbol(_Locale_monetary *lmon)
{
  return "";
}


// ===== 8b6ad0 _Locale_mon_decimal_point =====
char __fastcall Locale_mon_decimal_point(_Locale_monetary *lmon)
{
  return 46;
}


// ===== 8b6ad4 _Locale_mon_thousands_sep =====
char __fastcall Locale_mon_thousands_sep(_Locale_monetary *lmon)
{
  return 44;
}


// ===== 8b6ad8 _Locale_mon_grouping =====
const char *__fastcall Locale_mon_grouping(_Locale_monetary *lmon)
{
  return "";
}


// ===== 8b6ae4 _Locale_positive_sign =====
const char *__fastcall Locale_positive_sign(_Locale_monetary *lmon)
{
  return "";
}


// ===== 8b6af0 _Locale_negative_sign =====
const char *__fastcall Locale_negative_sign(_Locale_monetary *lmon)
{
  return "";
}


// ===== 8b6afc _Locale_int_frac_digits =====
char __fastcall Locale_int_frac_digits(_Locale_monetary *lmon)
{
  return 0;
}


// ===== 8b6b00 _Locale_frac_digits =====
char __fastcall Locale_frac_digits(_Locale_monetary *lmon)
{
  return 0;
}


// ===== 8b6b04 _Locale_p_cs_precedes =====
int __fastcall Locale_p_cs_precedes(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b08 _Locale_p_sep_by_space =====
int __fastcall Locale_p_sep_by_space(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b0c _Locale_p_sign_posn =====
int __fastcall Locale_p_sign_posn(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b10 _Locale_n_cs_precedes =====
int __fastcall Locale_n_cs_precedes(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b14 _Locale_n_sep_by_space =====
int __fastcall Locale_n_sep_by_space(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b18 _Locale_n_sign_posn =====
int __fastcall Locale_n_sign_posn(_Locale_monetary *lmon)
{
  return 255;
}


// ===== 8b6b1c _WLocale_int_curr_symbol =====
const wchar_t_0 *__fastcall WLocale_int_curr_symbol(_Locale_monetary *lmon, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"";
}


// ===== 8b6b28 _WLocale_currency_symbol =====
const wchar_t_0 *__fastcall WLocale_currency_symbol(_Locale_monetary *lmon, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"";
}


// ===== 8b6b34 _WLocale_mon_decimal_point =====
wchar_t_0 __fastcall WLocale_mon_decimal_point(_Locale_monetary *lmon)
{
  return 46;
}


// ===== 8b6b38 _WLocale_mon_thousands_sep =====
wchar_t_0 __fastcall WLocale_mon_thousands_sep(_Locale_monetary *lmon)
{
  return 44;
}


// ===== 8b6b3c _WLocale_positive_sign =====
const wchar_t_0 *__fastcall WLocale_positive_sign(_Locale_monetary *lmon, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"";
}


// ===== 8b6b48 _WLocale_negative_sign =====
const wchar_t_0 *__fastcall WLocale_negative_sign(_Locale_monetary *lmon, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"";
}


// ===== 8b6b54 _Locale_full_monthname =====
const char *__fastcall Locale_full_monthname(_Locale_time *ltime, int n)
{
  return (&C_name)[n + 3];
}


// ===== 8b6b64 _Locale_abbrev_monthname =====
const char *__fastcall Locale_abbrev_monthname(_Locale_time *ltime, int n)
{
  return (&C_name)[n + 15];
}


// ===== 8b6b74 _Locale_full_dayofweek =====
const char *__fastcall Locale_full_dayofweek(_Locale_time *ltime, int n)
{
  return (&C_name)[n + 27];
}


// ===== 8b6b84 _Locale_abbrev_dayofweek =====
const char *__fastcall Locale_abbrev_dayofweek(_Locale_time *ltime, int n)
{
  return full_dayname[n + 7];
}


// ===== 8b6b94 _Locale_d_t_fmt =====
const char *__fastcall Locale_d_t_fmt(_Locale_time *ltime)
{
  return "%m/%d/%y";
}


// ===== 8b6ba0 _Locale_d_fmt =====
const char *__fastcall Locale_d_fmt(_Locale_time *ltime)
{
  return "%m/%d/%y";
}


// ===== 8b6bac _Locale_t_fmt =====
const char *__fastcall Locale_t_fmt(_Locale_time *ltime)
{
  return "%H:%M:%S";
}


// ===== 8b6bb8 _Locale_long_d_t_fmt =====
const char *__fastcall Locale_long_d_t_fmt(_Locale_time *ltime)
{
  return "";
}


// ===== 8b6bc4 _Locale_long_d_fmt =====
const char *__fastcall Locale_long_d_fmt(_Locale_time *ltime)
{
  return "";
}


// ===== 8b6bd0 _Locale_am_str =====
const char *__fastcall Locale_am_str(_Locale_time *ltime)
{
  return "AM";
}


// ===== 8b6bdc _Locale_pm_str =====
const char *__fastcall Locale_pm_str(_Locale_time *ltime)
{
  return "PM";
}


// ===== 8b6be8 _WLocale_full_monthname =====
const wchar_t_0 *__fastcall WLocale_full_monthname(_Locale_time *ltime, int n, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)full_dayname[n + 14];
}


// ===== 8b6bf8 _WLocale_abbrev_monthname =====
const wchar_t_0 *__fastcall WLocale_abbrev_monthname(_Locale_time *ltime, int n, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)full_dayname[n + 26];
}


// ===== 8b6c08 _WLocale_full_dayofweek =====
const wchar_t_0 *__fastcall WLocale_full_dayofweek(_Locale_time *ltime, int n, wchar_t_0 *buf, size_t bufSize)
{
  return abbrev_wmonthname[n + 12];
}


// ===== 8b6c18 _WLocale_abbrev_dayofweek =====
const wchar_t_0 *__fastcall WLocale_abbrev_dayofweek(_Locale_time *ltime, int n, wchar_t_0 *buf, size_t bufSize)
{
  return abbrev_wmonthname[n + 19];
}


// ===== 8b6c28 _WLocale_am_str =====
const wchar_t_0 *__fastcall WLocale_am_str(_Locale_time *ltime, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"AM";
}


// ===== 8b6c34 _WLocale_pm_str =====
const wchar_t_0 *__fastcall WLocale_pm_str(_Locale_time *ltime, wchar_t_0 *buf, size_t bufSize)
{
  return (const wchar_t_0 *)"PM";
}


// ===== 8b6c40 _Locale_catopen =====
nl_catd_type __fastcall Locale_catopen(_Locale_messages *lmes, const char *name)
{
  return -1;
}


// ===== 8b6c48 _Locale_catclose =====
void __fastcall Locale_catclose(_Locale_messages *lmes, nl_catd_type cat)
{
  ;
}


// ===== 8b6c4c _Locale_catgets =====
const char *__fastcall Locale_catgets(
        _Locale_messages *lmes,
        nl_catd_type cat,
        int setid,
        int msgid,
        const char *dfault)
{
  return dfault;
}


// ===== 8b6c50 _WLocale_strxfrm =====
size_t __fastcall WLocale_strxfrm(
        _Locale_collate *lcol,
        wchar_t_0 *dest,
        size_t dest_n,
        const wchar_t_0 *src,
        size_t src_n)
{
  if ( dest )
    JUMPOUT(0x8B7188);
  return src_n;
}


// ===== 8b6c70 _Locale_strxfrm =====
size_t __fastcall Locale_strxfrm(
        _Locale_collate *lcol,
        _Locale_ctype *dest,
        size_t dest_n,
        const char *src,
        size_t src_n)
{
  if ( dest )
    return WLocale_ctype(dest, (wint_t)src, dest_n - 1);
  else
    return src_n;
}


// ===== 8b6c90 _WLocale_strcmp =====
int __fastcall WLocale_strcmp(_Locale_collate *lcol, const wchar_t_0 *s1, size_t n1, const wchar_t_0 *s2, size_t n2)
{
  if ( n2 || n1 )
    JUMPOUT(0x8B7186);
  return 0;
}


// ===== 8b6d50 _Locale_strcmp =====
int __fastcall Locale_strcmp(_Locale_collate *lcol, const char *s1, size_t n1, const char *s2, size_t n2)
{
  _Locale_mask_t v5; // r5
  char buf1[64]; // [sp+4Ch] [bp-48h] BYREF

  if ( !n2 && !n1 )
    return 0;
  v5 = n1;
  if ( n1 > 0x3F )
    v5 = 63;
  return WLocale_ctype((_Locale_ctype *)buf1, (wint_t)s1, v5);
}


// ===== 8b6e10 _WLocale_toupper =====
wint_t __fastcall WLocale_toupper(_Locale_ctype *lctype, _Locale_ctype *wc)
{
  return WLocale_tolower(wc, (wint_t)wc);
}


// ===== 8b6e1c _WLocale_tolower =====
void __fastcall WLocale_tolower(_Locale_ctype *lctype, wint_t wc)
{
  JUMPOUT(0x8B705A);
}


// ===== 8b6e28 _WLocale_ctype =====
const char *__fastcall WLocale_ctype(_Locale_ctype *lctype, char *wc, int mask)
{
  int v3; // r3

  v3 = mask << 26;
  if ( (mask & 0x20) != 0 )
  {
    *(_DWORD *)(mask + 60) = v3;
    *(_DWORD *)(mask + 64) = v3;
    __asm { POP             {R4,PC} }
  }
  if ( (mask & 4) != 0 )
    JUMPOUT(0x8B67AA);
  if ( (mask & 0x40) != 0 )
    return Locale_ctype_default(wc);
  if ( (mask & 2) != 0 )
    JUMPOUT(0x8B6E02);
  if ( (mask & 0x80) != 0 )
    JUMPOUT(0x8B6F48);
  if ( (mask & 1) != 0 )
    JUMPOUT(0x8B72D8);
  if ( (mask & 0x100) != 0 )
    JUMPOUT(0x8B7044);
  if ( (mask & 8) != 0 )
    JUMPOUT(0x8B6DDA);
  if ( (mask & 0x10) != 0 )
    JUMPOUT(0x8B744C);
  return nullptr;
}


// ===== 8b6f04 _Locale_init =====
void Locale_init()
{
  char *v0; // r1
  _Locale_mask_t *v1; // r3
  unsigned int i; // r0
  char v3; // r2
  char v4; // r2

  v0 = (char *)(ctype_ + 1);
  v1 = ctable;
  for ( i = -48; ; ++i )
  {
    v3 = *v0;
    if ( (*v0 & 3) != 0 )
    {
      *v1 |= 0x20u;
      v3 = *v0;
    }
    if ( (v3 & 0x20) != 0 )
      *v1 |= 4u;
    if ( i <= 9 )
      *v1 |= 0x40u;
    v4 = *v0;
    if ( (*v0 & 0x97) != 0 )
    {
      *v1 |= 2u;
      v4 = *v0;
    }
    if ( (v4 & 0x10) != 0 )
    {
      *v1 |= 0x80u;
      v4 = *v0;
    }
    if ( (v4 & 8) != 0 )
    {
      *v1 |= 1u;
      v4 = *v0;
    }
    if ( (v4 & 0x44) != 0 )
    {
      *v1 |= 0x100u;
      v4 = *v0;
    }
    if ( (v4 & 1) != 0 )
    {
      *v1 |= 8u;
      v4 = *v0;
    }
    if ( (v4 & 2) != 0 )
      *v1 |= 0x10u;
    ++v1;
    ++v0;
    if ( v1 == &ctable[128] )
      JUMPOUT(0x8B7464);
  }
}


// ===== 8b7008 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::imbue(std::locale const&) =====
void __fastcall std::wstreambuf::imbue(std::wstreambuf *const this, const std::locale *const a2)
{
  ;
}


// ===== 8b700c std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::sync(void) =====
int __fastcall std::wfilebuf::sync(std::wfilebuf *const this)
{
  int result; // r0

  if ( !this->_M_in_output_mode )
    return 0;
  result = (*((int (__fastcall **)(std::wfilebuf *const, int))this->_vptr.basic_streambuf + 13))(this, -1);
  if ( result != -1 )
    return 0;
  return result;
}


// ===== 8b702c std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::uflow(void) =====
wchar_t __fastcall std::wstreambuf::uflow(std::wstreambuf *const this)
{
  wchar_t result; // r0
  wchar_t *M_gnext; // r3

  result = (*((int (__fastcall **)(std::wstreambuf *const))this->_vptr.basic_streambuf + 8))(this);
  if ( result != -1 )
  {
    M_gnext = this->_M_gnext;
    this->_M_gnext = M_gnext + 1;
    return *M_gnext;
  }
  return result;
}


// ===== 8b7048 std::basic_filebuf<wchar_t,std::char_traits<wchar_t>>::pbackfail(int) =====
int __fastcall std::wfilebuf::pbackfail(std::wfilebuf *const this, wchar_t __c)
{
  wchar_t *M_gnext; // r3
  wchar_t *M_gbegin; // r2
  wchar_t *v4; // r4
  wchar_t *v5; // r6
  wchar_t *v6; // r3
  wchar_t *v7; // r3
  int result; // r0
  wchar_t *v9; // r3
  wchar_t *M_gend; // r3

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
    v9 = M_gnext - 1;
    this->_M_gnext = v9;
    return *v9;
  }
  v4 = M_gnext - 1;
  if ( __c != *(M_gnext - 1) && this->_M_mmap_base )
  {
LABEL_6:
    v5 = (wchar_t *)(this + 1);
    if ( !this->_M_in_putback_mode )
    {
      this->_M_saved_gptr = M_gnext;
      M_gend = this->_M_gend;
      this->_M_saved_eback = M_gbegin;
      this->_M_saved_egptr = M_gend;
      v7 = &this->_M_pback_buf[7];
      this->_M_gbegin = &this->_M_pback_buf[7];
      this->_M_gnext = &this->_M_pback_buf[7];
      this->_M_gend = v5;
      this->_M_in_putback_mode = 1;
      goto LABEL_13;
    }
    if ( this->_M_pback_buf != M_gbegin )
    {
      v6 = this->_M_gend;
      this->_M_gend = v5;
      v7 = v6 - 1;
      this->_M_gbegin = v7;
      this->_M_gnext = v7;
LABEL_13:
      *v7 = __c;
      return __c;
    }
    return -1;
  }
  this->_M_gnext = v4;
  result = *v4;
  v7 = M_gnext - 1;
  if ( __c != *v4 )
    goto LABEL_13;
  return result;
}


// ===== 8b70c8 std::basic_streambuf<wchar_t,std::char_traits<wchar_t>>::setbuf(wchar_t *,int) =====
std::wstreambuf *__fastcall std::wstreambuf::setbuf(std::wstreambuf *const this, wchar_t *a2, std::streamsize a3)
{
  return this;
}

