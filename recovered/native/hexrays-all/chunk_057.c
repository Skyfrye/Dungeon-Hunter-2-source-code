// ===== 84d618 luaL_checktype =====
int __fastcall luaL_checktype(_DWORD *a1, int a2, int a3)
{
  int result; // r0

  result = lua_type(a1, a2);
  if ( result != a3 )
    tag_error(a1, a2, a3);
  return result;
}


// ===== 84d64c luaL_checkudata =====
int __fastcall luaL_checkudata(_DWORD *a1, int a2, char *a3)
{
  int v6; // r5

  v6 = lua_touserdata(a1, a2);
  if ( !v6 || !lua_getmetatable(a1, a2) || (lua_getfield(a1, -10000, a3), !lua_rawequal(a1, -1, -2)) )
    luaL_typerror(a1, a2, a3);
  lua_settop((int)a1, -3);
  return v6;
}


// ===== 84d6d8 luaL_checkoption =====
int __fastcall luaL_checkoption(_DWORD *a1, int a2, const char *a3, const char **a4)
{
  const char *v7; // r8
  const char *v8; // r0
  int v9; // r7
  const char *v11; // r0

  if ( a3 )
    v7 = (const char *)luaL_optlstring(a1, a2, a3, nullptr);
  else
    v7 = (const char *)luaL_checklstring(a1, a2, nullptr);
  v8 = *a4;
  if ( !*a4 )
  {
LABEL_8:
    v11 = (const char *)lua_pushfstring((int)a1, (int)"invalid option '%s'", v7);
    luaL_argerror((int)a1, a2, v11);
  }
  v9 = 0;
  while ( LC_API_STRCMP_0(v8, v7) )
  {
    v8 = a4[++v9];
    if ( !v8 )
      goto LABEL_8;
  }
  return v9;
}


// ===== 84d770 luaB_yield =====
int __fastcall luaB_yield(int a1)
{
  int v2; // r1

  v2 = lua_gettop(a1);
  return lua_yield(a1, v2);
}


// ===== 84d78c costatus =====
int __fastcall costatus(int a1, int a2)
{
  int v4; // r0
  int v5; // [sp+0h] [bp-68h] BYREF

  if ( a2 == a1 )
    return 0;
  v4 = lua_status(a2);
  if ( !v4 )
  {
    if ( lua_getstack(a2, 0, &v5) > 0 )
      return 2;
    if ( lua_gettop(a2) )
      return 1;
    return 3;
  }
  if ( v4 != 1 )
    return 3;
  return 1;
}


// ===== 84d834 auxresume =====
int __fastcall auxresume(_DWORD *a1, _DWORD *a2, int a3)
{
  int v6; // r7
  int v7; // r6

  v6 = costatus((int)a1, (int)a2);
  if ( !lua_checkstack(a2, a3) )
    luaL_error((int)a1, (int)"too many arguments to resume");
  if ( v6 == 1 )
  {
    lua_xmove((int)a1, (int)a2, a3);
    lua_setlevel((int)a1, (int)a2);
    if ( (unsigned int)lua_resume((int)a2) > 1 )
    {
      lua_xmove((int)a2, (int)a1, 1);
      return -1;
    }
    else
    {
      v7 = lua_gettop((int)a2);
      if ( !lua_checkstack(a1, v7 + 1) )
        luaL_error((int)a1, (int)"too many results to resume");
      lua_xmove((int)a2, (int)a1, v7);
    }
  }
  else
  {
    lua_pushfstring((int)a1, (int)"cannot resume %s coroutine", statnames[v6]);
    return -1;
  }
  return v7;
}


// ===== 84d944 luaB_auxwrap =====
int __fastcall luaB_auxwrap(_DWORD *a1)
{
  _DWORD *v2; // r5
  int v3; // r0
  int result; // r0

  v2 = (_DWORD *)lua_tothread(a1, -10003);
  v3 = lua_gettop((int)a1);
  result = auxresume(a1, v2, v3);
  if ( result < 0 )
  {
    if ( lua_isstring(a1, -1) )
    {
      luaL_where((int)a1, 1);
      lua_insert(a1, -2);
      lua_concat((int)a1, 2);
    }
    lua_error();
  }
  return result;
}


// ===== 84d9d0 luaB_costatus =====
int __fastcall luaB_costatus(_DWORD *a1)
{
  int v2; // r0
  int v3; // r0

  v2 = lua_tothread(a1, 1);
  if ( !v2 )
    luaL_argerror((int)a1, 1, "coroutine expected");
  v3 = costatus((int)a1, v2);
  lua_pushstring((int)a1, statnames[v3]);
  return 1;
}


// ===== 84da30 luaB_corunning =====
int __fastcall luaB_corunning(int a1)
{
  if ( lua_pushthread(a1) )
    lua_pushnil(a1);
  return 1;
}


// ===== 84da54 load_aux =====
int __fastcall load_aux(_DWORD *a1, int a2)
{
  if ( !a2 )
    return 1;
  lua_pushnil((int)a1);
  lua_insert(a1, -2);
  return 2;
}


// ===== 84da84 luaB_coresume =====
int __fastcall luaB_coresume(int a1)
{
  _DWORD *v2; // r5
  int v3; // r0
  int v4; // r5

  v2 = (_DWORD *)lua_tothread((_DWORD *)a1, 1);
  if ( !v2 )
    luaL_argerror(a1, 1, "coroutine expected");
  v3 = lua_gettop(a1);
  v4 = auxresume((_DWORD *)a1, v2, v3 - 1);
  if ( v4 < 0 )
  {
    lua_pushboolean((unsigned int)a1);
    lua_insert((_DWORD *)a1, -2);
    return 2;
  }
  else
  {
    lua_pushboolean((unsigned int)a1 | 0x100000000LL);
    lua_insert((_DWORD *)a1, ~v4);
    return v4 + 1;
  }
}


// ===== 84db18 luaB_cocreate =====
int __fastcall luaB_cocreate(_DWORD *a1)
{
  int v2; // r5

  v2 = lua_newthread((int)a1);
  if ( lua_type(a1, 1) != 6 || lua_iscfunction(a1, 1) )
    luaL_argerror((int)a1, 1, "Lua function expected");
  lua_pushvalue(a1, 1);
  lua_xmove((int)a1, v2, 1);
  return 1;
}


// ===== 84db90 luaB_cowrap =====
int __fastcall luaB_cowrap(_DWORD *a1)
{
  luaB_cocreate(a1);
  lua_pushcclosure(a1, (int)luaB_auxwrap, 1);
  return 1;
}


// ===== 84dbbc auxopen =====
int __fastcall auxopen(_DWORD *a1, char *a2, int a3, int a4)
{
  lua_pushcclosure(a1, a4, 0);
  lua_pushcclosure(a1, a3, 1);
  return lua_setfield(a1, -2, a2);
}


// ===== 84dbfc luaopen_base =====
int __fastcall luaopen_base(_DWORD *a1)
{
  lua_pushvalue(a1, -10002);
  lua_setfield(a1, -10002, "_G");
  luaL_register(a1, "_G", (int *)&base_funcs);
  lua_pushlstring((int)a1, "Lua 5.1", 7u);
  lua_setfield(a1, -10002, "_VERSION");
  auxopen(a1, "ipairs", (int)luaB_ipairs, (int)ipairsaux);
  auxopen(a1, "pairs", (int)luaB_pairs, (int)luaB_next);
  lua_createtable((int)a1, 0, 1);
  lua_pushvalue(a1, -1);
  lua_setmetatable(a1, -2);
  lua_pushlstring((int)a1, "kv", 2u);
  lua_setfield(a1, -2, "__mode");
  lua_pushcclosure(a1, (int)luaB_newproxy, 1);
  lua_setfield(a1, -10002, "newproxy");
  luaL_register(a1, "coroutine", (int *)&co_funcs);
  return 2;
}


// ===== 84dd7c luaB_pcall =====
int __fastcall luaB_pcall(_DWORD *a1)
{
  int v2; // r0
  __int64 v3; // r0

  luaL_checkany(a1, 1);
  v2 = lua_gettop((int)a1);
  HIDWORD(v3) = lua_pcall(a1, v2 - 1, -1, 0) == 0;
  LODWORD(v3) = a1;
  lua_pushboolean(v3);
  lua_insert(a1, 1);
  return lua_gettop((int)a1);
}


// ===== 84ddd0 luaB_xpcall =====
int __fastcall luaB_xpcall(_DWORD *a1)
{
  __int64 v2; // r0

  luaL_checkany(a1, 2);
  lua_settop((int)a1, 2);
  lua_insert(a1, 1);
  HIDWORD(v2) = lua_pcall(a1, 0, -1, 1) == 0;
  LODWORD(v2) = a1;
  lua_pushboolean(v2);
  lua_replace(a1, 1);
  return lua_gettop((int)a1);
}


// ===== 84de34 luaB_pairs =====
int __fastcall luaB_pairs(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  lua_pushvalue(a1, -10003);
  lua_pushvalue(a1, 1);
  lua_pushnil((int)a1);
  return 3;
}


// ===== 84de74 luaB_error =====
void __fastcall __noreturn luaB_error(_DWORD *a1)
{
  int v2; // r5

  v2 = luaL_optinteger(a1, 2, 1);
  lua_settop((int)a1, 1);
  if ( lua_isstring(a1, 1) && v2 > 0 )
  {
    luaL_where((int)a1, v2);
    lua_pushvalue(a1, 1);
    lua_concat((int)a1, 2);
  }
  lua_error();
}


// ===== 84dee4 luaB_unpack =====
int __fastcall luaB_unpack(_DWORD *a1)
{
  int v2; // r4
  int v3; // r6
  int v4; // r7
  int v5; // r4
  int v6; // r6
  int v7; // r2

  luaL_checktype(a1, 1, 5);
  v2 = luaL_optinteger(a1, 2, 1);
  if ( lua_type(a1, 3) <= 0 )
    v3 = lua_objlen(a1, 1);
  else
    v3 = luaL_checkinteger(a1, 3);
  if ( v3 < v2 )
    return 0;
  v4 = 1 - v2 + v3;
  if ( v4 <= 0 || !lua_checkstack(a1, 1 - v2 + v3) )
    luaL_error((int)a1, (int)"too many results to unpack");
  lua_rawgeti(a1, 1, v2);
  if ( v3 > v2 )
  {
    v5 = v2 + 1;
    v6 = v3 + 1;
    do
    {
      v7 = v5++;
      lua_rawgeti(a1, 1, v7);
    }
    while ( v5 != v6 );
  }
  return v4;
}


// ===== 84dfd0 luaB_type =====
int __fastcall luaB_type(_DWORD *a1)
{
  int v2; // r0
  char *v3; // r0

  luaL_checkany(a1, 1);
  v2 = lua_type(a1, 1);
  v3 = (char *)lua_typename((int)a1, v2);
  lua_pushstring((int)a1, v3);
  return 1;
}


// ===== 84e00c luaB_tostring =====
int __fastcall luaB_tostring(_DWORD *a1)
{
  char *v3; // r0
  char *v4; // r1
  int v5; // r0
  const char *v6; // r5
  const void *v7; // r0

  luaL_checkany(a1, 1);
  if ( !luaL_callmeta(a1, 1, "__tostring") )
  {
    switch ( lua_type(a1, 1) )
    {
      case 0:
        lua_pushlstring((int)a1, "nil", 3u);
        break;
      case 1:
        if ( lua_toboolean(a1, 1) )
          v4 = "true";
        else
          v4 = "false";
        lua_pushstring((int)a1, v4);
        break;
      case 3:
        v3 = (char *)lua_tolstring(a1, 1, nullptr);
        lua_pushstring((int)a1, v3);
        break;
      case 4:
        lua_pushvalue(a1, 1);
        break;
      default:
        v5 = lua_type(a1, 1);
        v6 = lua_typename((int)a1, v5);
        v7 = (const void *)lua_topointer(a1, 1);
        lua_pushfstring((int)a1, (int)"%s: %p", v6, v7);
        break;
    }
  }
  return 1;
}


// ===== 84e140 luaB_tonumber =====
int __fastcall luaB_tonumber(_DWORD *a1)
{
  int v2; // r5
  const char *v3; // r0
  char *v4; // r6
  unsigned int v5; // r0
  char *v6; // r5
  unsigned int v7; // r7
  int v8; // r6
  int v9; // t1
  int v11; // r0
  char *v12; // [sp+4h] [bp-8h] BYREF

  v2 = luaL_optinteger(a1, 2, 10);
  if ( v2 == 10 )
  {
    luaL_checkany(a1, 1);
    if ( lua_isnumber(a1, 1) )
    {
      v11 = lua_tonumber(a1, 1);
      lua_pushnumber((int)a1, v11);
      return 1;
    }
  }
  else
  {
    v3 = (const char *)luaL_checklstring(a1, 1, nullptr);
    v4 = (char *)v3;
    if ( (unsigned int)(v2 - 2) > 0x22 )
      luaL_argerror((int)a1, 2, "base out of range");
    v5 = strtoul(v3, &v12, v2);
    v6 = v12;
    v7 = v5;
    if ( v4 != v12 )
    {
      while ( 1 )
      {
        v9 = (unsigned __int8)*v6++;
        v8 = v9;
        if ( !isspace(v9) )
          break;
        v12 = v6;
      }
      if ( !v8 )
      {
        lua_pushnumber((int)a1, COERCE_INT((float)v7));
        return 1;
      }
    }
  }
  lua_pushnil((int)a1);
  return 1;
}


// ===== 84e24c luaB_setmetatable =====
int __fastcall luaB_setmetatable(_DWORD *a1)
{
  int v2; // r5
  bool v3; // zf

  v2 = lua_type(a1, 2);
  luaL_checktype(a1, 1, 5);
  v3 = v2 == 0;
  if ( v2 )
    v3 = v2 == 5;
  if ( !v3 )
    luaL_argerror((int)a1, 2, "nil or table expected");
  if ( luaL_getmetafield(a1, 1, "__metatable") )
    luaL_error((int)a1, (int)"cannot change a protected metatable");
  lua_settop((int)a1, 2);
  lua_setmetatable(a1, 1);
  return 1;
}


// ===== 84e2ec getfunc =====
_DWORD *__fastcall getfunc(_DWORD *a1, int a2)
{
  int v4; // r6
  _DWORD *result; // r0
  int v6; // [sp+0h] [bp-68h] BYREF

  if ( lua_type(a1, 1) == 6 )
    return lua_pushvalue(a1, 1);
  if ( a2 )
  {
    v4 = luaL_optinteger(a1, 1, 1);
    if ( v4 >= 0 )
      goto LABEL_4;
LABEL_9:
    luaL_argerror((int)a1, 1, "level must be non-negative");
  }
  v4 = luaL_checkinteger(a1, 1);
  if ( v4 < 0 )
    goto LABEL_9;
LABEL_4:
  if ( !lua_getstack(a1, v4, &v6) )
    luaL_argerror((int)a1, 1, "invalid level");
  lua_getinfo((int)a1, "f");
  result = (_DWORD *)lua_type(a1, -1);
  if ( !result )
    luaL_error((int)a1, (int)"no function environment for tail call at level %d", v4);
  return result;
}


// ===== 84e448 luaB_setfenv =====
int __fastcall luaB_setfenv(_DWORD *a1)
{
  luaL_checktype(a1, 2, 5);
  getfunc(a1, 0);
  lua_pushvalue(a1, 2);
  if ( lua_isnumber(a1, 1) && COERCE_FLOAT(lua_tonumber(a1, 1)) == 0.0 )
  {
    lua_pushthread((int)a1);
    lua_insert(a1, -2);
    lua_setfenv(a1, -2);
    return 0;
  }
  else
  {
    if ( lua_iscfunction(a1, -2) || !lua_setfenv(a1, -2) )
      luaL_error((int)a1, (int)"'setfenv' cannot change environment of given object");
    return 1;
  }
}


// ===== 84e518 luaB_select =====
int __fastcall luaB_select(_DWORD *a1)
{
  int v2; // r5
  int v3; // r0
  int v4; // r6

  v2 = lua_gettop((int)a1);
  if ( lua_type(a1, 1) == 4 && *(_BYTE *)lua_tolstring(a1, 1, nullptr) == 35 )
  {
    lua_pushinteger((int)a1, v2 - 1);
    return 1;
  }
  else
  {
    v3 = luaL_checkinteger(a1, 1);
    if ( v3 >= 0 )
    {
      if ( v3 >= v2 )
        v4 = v2;
      else
        v4 = v3;
    }
    else
    {
      v4 = v3 + v2;
    }
    if ( v4 <= 0 )
      luaL_argerror((int)a1, 1, "index out of range");
    return v2 - v4;
  }
}


// ===== 84e5c0 ipairsaux =====
int __fastcall ipairsaux(_DWORD *a1)
{
  int v2; // r5

  v2 = luaL_checkinteger(a1, 2) + 1;
  luaL_checktype(a1, 1, 5);
  lua_pushinteger((int)a1, v2);
  lua_rawgeti(a1, 1, v2);
  if ( lua_type(a1, -1) )
    return 2;
  else
    return 0;
}


// ===== 84e620 luaB_ipairs =====
int __fastcall luaB_ipairs(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  lua_pushvalue(a1, -10003);
  lua_pushvalue(a1, 1);
  lua_pushinteger((int)a1, 0);
  return 3;
}


// ===== 84e664 luaB_rawset =====
int __fastcall luaB_rawset(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  luaL_checkany(a1, 3);
  lua_settop((int)a1, 3);
  lua_rawset(a1, 1);
  return 1;
}


// ===== 84e6b0 luaB_rawget =====
int __fastcall luaB_rawget(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  lua_settop((int)a1, 2);
  lua_rawget(a1, 1);
  return 1;
}


// ===== 84e6f0 luaB_rawequal =====
int __fastcall luaB_rawequal(_DWORD *a1)
{
  __int64 v2; // r0

  luaL_checkany(a1, 1);
  luaL_checkany(a1, 2);
  v2 = __PAIR64__(lua_rawequal(a1, 1, 2), (unsigned int)a1);
  lua_pushboolean(v2);
  return 1;
}


// ===== 84e730 luaB_print =====
int __fastcall luaB_print(_DWORD *a1)
{
  int v2; // r8
  int i; // r5
  const char *v4; // r10

  v2 = lua_gettop((int)a1);
  lua_getfield(a1, -10002, "tostring");
  if ( v2 > 0 )
  {
    for ( i = 1; i <= v2; ++i )
    {
      lua_pushvalue(a1, -1);
      lua_pushvalue(a1, i);
      lua_call((int)a1, 1, 1);
      v4 = (const char *)lua_tolstring(a1, -1, nullptr);
      if ( !v4 )
        luaL_error((int)a1, (int)"'tostring' must return a string to 'print'");
      if ( i != 1 )
        fputc(9, (FILE *)&_sF + 1);
      fputs(v4, (FILE *)&_sF + 1);
      lua_settop((int)a1, -2);
    }
  }
  fputc(10, (FILE *)&_sF + 1);
  return 0;
}


// ===== 84e83c luaB_assert =====
int __fastcall luaB_assert(_DWORD *a1)
{
  const char *v3; // r2

  luaL_checkany(a1, 1);
  if ( !lua_toboolean(a1, 1) )
  {
    v3 = (const char *)luaL_optlstring(a1, 2, "assertion failed!", nullptr);
    luaL_error((int)a1, (int)"%s", v3);
  }
  return lua_gettop((int)a1);
}


// ===== 84e8a0 luaB_loadstring =====
int __fastcall luaB_loadstring(_DWORD *a1)
{
  const char *v2; // r5
  const char *v3; // r0
  int v4; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  v2 = (const char *)luaL_checklstring(a1, 1, &v6);
  v3 = (const char *)luaL_optlstring(a1, 2, v2, nullptr);
  v4 = luaL_loadbuffer((int)a1, (int)v2, v6, v3);
  return load_aux(a1, v4);
}


// ===== 84e8f8 luaB_load =====
int __fastcall luaB_load(_DWORD *a1)
{
  const char *v2; // r5
  int v3; // r1

  v2 = (const char *)luaL_optlstring(a1, 2, "=(load)", nullptr);
  luaL_checktype(a1, 1, 6);
  lua_settop((int)a1, 3);
  v3 = lua_load((int)a1, (int)generic_reader, 0, v2);
  return load_aux(a1, v3);
}


// ===== 84e964 generic_reader =====
int __fastcall generic_reader(_DWORD *a1, int a2, _DWORD *a3)
{
  int result; // r0

  luaL_checkstack(a1, 2, "too many nested functions");
  lua_pushvalue(a1, 1);
  lua_call((int)a1, 0, 1);
  result = lua_type(a1, -1);
  if ( result )
  {
    if ( !lua_isstring(a1, -1) )
      luaL_error((int)a1, (int)"reader function must return a string");
    lua_replace(a1, 3);
    return lua_tolstring(a1, 3, a3);
  }
  else
  {
    *a3 = 0;
  }
  return result;
}


// ===== 84ea0c luaB_getmetatable =====
int __fastcall luaB_getmetatable(_DWORD *a1)
{
  luaL_checkany(a1, 1);
  if ( lua_getmetatable(a1, 1) )
    luaL_getmetafield(a1, 1, "__metatable");
  else
    lua_pushnil((int)a1);
  return 1;
}


// ===== 84ea60 luaB_getfenv =====
int __fastcall luaB_getfenv(_DWORD *a1)
{
  getfunc(a1, 1);
  if ( lua_iscfunction(a1, -1) )
    lua_pushvalue(a1, -10002);
  else
    lua_getfenv(a1, -1);
  return 1;
}


// ===== 84eab0 luaB_gcinfo =====
int __fastcall luaB_gcinfo(int a1)
{
  int v2; // r0

  v2 = lua_gc(a1, 3, 0);
  lua_pushinteger(a1, v2);
  return 1;
}


// ===== 84ead8 luaB_collectgarbage =====
int __fastcall luaB_collectgarbage(_DWORD *a1)
{
  int v2; // r5
  int v3; // r0
  int v4; // r5
  int v5; // r0
  int v6; // r6
  int v8; // r0

  v2 = luaL_checkoption(a1, 1, "collect", (const char **)&opts_2819);
  v3 = luaL_optinteger(a1, 2, 0);
  v4 = optsnum_2820[v2];
  v5 = lua_gc((int)a1, v4, v3);
  v6 = v5;
  if ( v4 == 3 )
  {
    v8 = lua_gc((int)a1, 4, 0);
    lua_pushnumber((int)a1, COERCE_INT((float)v6 + (float)((float)v8 * 0.00097656)));
    return 1;
  }
  else
  {
    if ( v4 == 5 )
      lua_pushboolean(__SPAIR64__(v5, (unsigned int)a1));
    else
      lua_pushnumber((int)a1, COERCE_INT((float)v5));
    return 1;
  }
}


// ===== 84ebc8 luaB_newproxy =====
int __fastcall luaB_newproxy(int a1)
{
  __int64 v1; // r4

  LODWORD(v1) = a1;
  lua_settop(a1, 1);
  lua_newuserdata((_DWORD *)v1, 0);
  if ( !lua_toboolean((_DWORD *)v1, 1) )
    return 1;
  HIDWORD(v1) = lua_type((_DWORD *)v1, 1);
  if ( HIDWORD(v1) == 1 )
  {
    lua_createtable(v1, 0, 0);
    lua_pushvalue((_DWORD *)v1, -1);
    lua_pushboolean(v1);
    lua_rawset((_DWORD *)v1, -10003);
  }
  else
  {
    if ( !lua_getmetatable((_DWORD *)v1, 1)
      || (lua_rawget((_DWORD *)v1, -10003),
          HIDWORD(v1) = lua_toboolean((_DWORD *)v1, -1),
          lua_settop(v1, -2),
          !HIDWORD(v1)) )
    {
      luaL_argerror(v1, 1, "boolean or proxy expected");
    }
    lua_getmetatable((_DWORD *)v1, 1);
  }
  lua_setmetatable((_DWORD *)v1, 2);
  return 1;
}


// ===== 84ecd8 luaB_next =====
int __fastcall luaB_next(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  lua_settop((int)a1, 2);
  if ( lua_next(a1, 1) )
    return 2;
  lua_pushnil((int)a1);
  return 1;
}


// ===== 84ed24 luaopen_debug =====
int __fastcall luaopen_debug(_DWORD *a1)
{
  luaL_register(a1, "debug", (int *)&dblib);
  return 1;
}


// ===== 84ed4c getthread =====
int __fastcall getthread(_DWORD *a1, _DWORD *a2)
{
  if ( lua_type(a1, 1) == 8 )
  {
    *a2 = 1;
    return lua_tothread(a1, 1);
  }
  else
  {
    *a2 = 0;
    return (int)a1;
  }
}


// ===== 84ed8c db_errorfb =====
int __fastcall db_errorfb(_DWORD *a1)
{
  int v2; // r6
  int v3; // r0
  int v4; // r1
  int v5; // r10
  char v7; // r8
  int v8; // r3
  int v9; // r7
  int v10; // r0
  int v11; // r0
  int v13; // r3
  bool v14; // zf
  int v15; // r0
  int v16; // r0
  int v17; // [sp+1Ch] [bp-70h] BYREF
  _BYTE v18[4]; // [sp+20h] [bp-6Ch] BYREF
  const char *v19; // [sp+24h] [bp-68h]
  _BYTE *v20; // [sp+28h] [bp-64h]
  char *v21; // [sp+2Ch] [bp-60h]
  int v22; // [sp+34h] [bp-58h]
  int v23; // [sp+3Ch] [bp-50h]
  _BYTE v24[64]; // [sp+44h] [bp-48h] BYREF

  v2 = getthread(a1, &v17);
  if ( lua_isnumber(a1, v17 + 2) )
  {
    v5 = lua_tointeger(a1, v17 + 2);
    lua_settop((int)a1, -2);
    v16 = lua_gettop((int)a1);
    v4 = v17;
    if ( v16 != v17 )
      goto LABEL_3;
LABEL_29:
    lua_pushlstring((int)a1, "", 0);
    goto LABEL_6;
  }
  v3 = lua_gettop((int)a1);
  v4 = v17;
  v5 = a1 == (_DWORD *)v2;
  if ( v3 == v17 )
    goto LABEL_29;
LABEL_3:
  if ( !lua_isstring(a1, v4 + 1) )
    return 1;
  lua_pushlstring((int)a1, "\n", 1u);
LABEL_6:
  lua_pushlstring((int)a1, "stack traceback:", 0x10u);
  v7 = 1;
  while ( lua_getstack(v2, v5, v18) )
  {
    if ( v5 + 1 > 12 )
      v8 = v7 & 1;
    else
      v8 = 0;
    if ( v8 )
    {
      v9 = v5 + 11;
      v10 = lua_getstack(v2, v5 + 11, v18);
      v7 = v10;
      if ( v10 )
      {
        lua_pushlstring((int)a1, "\n\t...", 5u);
        while ( lua_getstack(v2, v9++, v18) )
          ;
        v7 = 0;
        v5 = v9 - 11;
      }
    }
    else
    {
      lua_pushlstring((int)a1, "\n\t", 2u);
      lua_getinfo(v2, "Snl");
      lua_pushfstring((int)a1, (int)"%s:", v24);
      if ( v22 > 0 )
        lua_pushfstring((int)a1, (int)"%d:", v22);
      if ( *v20 )
      {
        lua_pushfstring((int)a1, (int)" in function '%s'", v19);
      }
      else
      {
        v13 = *v21;
        if ( v13 == 109 )
        {
          lua_pushfstring((int)a1, (int)" in main chunk");
        }
        else
        {
          v14 = v13 == 67;
          if ( v13 != 67 )
            v14 = v13 == 116;
          if ( v14 )
            lua_pushlstring((int)a1, " ?", 2u);
          else
            lua_pushfstring((int)a1, (int)" in function <%s:%d>", v24, v23);
        }
      }
      v15 = lua_gettop((int)a1);
      ++v5;
      lua_concat((int)a1, v15 - v17);
    }
  }
  v11 = lua_gettop((int)a1);
  lua_concat((int)a1, v11 - v17);
  return 1;
}


// ===== 84f0d4 auxupvalue =====
int __fastcall auxupvalue(_DWORD *a1, int a2)
{
  int v4; // r6
  char *v5; // r0

  v4 = luaL_checkinteger(a1, 2);
  luaL_checktype(a1, 1, 6);
  if ( lua_iscfunction(a1, 1) )
    return 0;
  v5 = a2 ? lua_getupvalue(a1, 1, v4) : lua_setupvalue(a1, 1, v4);
  if ( !v5 )
    return 0;
  lua_pushstring((int)a1, v5);
  lua_insert(a1, ~a2);
  return a2 + 1;
}


// ===== 84f16c db_setupvalue =====
int __fastcall db_setupvalue(_DWORD *a1)
{
  luaL_checkany(a1, 3);
  return auxupvalue(a1, 0);
}


// ===== 84f18c db_getupvalue =====
int __fastcall db_getupvalue(_DWORD *a1)
{
  return auxupvalue(a1, 1);
}


// ===== 84f194 db_setmetatable =====
int __fastcall db_setmetatable(_DWORD *a1)
{
  int v2; // r0
  bool v3; // zf
  __int64 v4; // r0

  v2 = lua_type(a1, 2);
  v3 = v2 == 0;
  if ( v2 )
    v3 = v2 == 5;
  if ( !v3 )
    luaL_argerror((int)a1, 2, "nil or table expected");
  lua_settop((int)a1, 2);
  v4 = __PAIR64__(lua_setmetatable(a1, 1), (unsigned int)a1);
  lua_pushboolean(v4);
  return 1;
}


// ===== 84f1f4 db_setlocal =====
int __fastcall db_setlocal(_DWORD *a1)
{
  int v2; // r6
  int v3; // r0
  int v4; // r0
  char *v5; // r0
  int v7; // [sp+4h] [bp-6Ch] BYREF
  _BYTE v8[100]; // [sp+8h] [bp-68h] BYREF

  v2 = getthread(a1, &v7);
  v3 = luaL_checkinteger(a1, v7 + 1);
  if ( !lua_getstack(v2, v3, v8) )
    luaL_argerror((int)a1, v7 + 1, "level out of range");
  luaL_checkany(a1, v7 + 3);
  lua_settop((int)a1, v7 + 3);
  lua_xmove((int)a1, v2, 1);
  v4 = luaL_checkinteger(a1, v7 + 2);
  v5 = (char *)lua_setlocal(v2, v8, v4);
  lua_pushstring((int)a1, v5);
  return 1;
}


// ===== 84f2f8 db_getregistry =====
int __fastcall db_getregistry(_DWORD *a1)
{
  lua_pushvalue(a1, -10000);
  return 1;
}


// ===== 84f310 gethooktable =====
char *__fastcall gethooktable(_DWORD *a1)
{
  char *result; // r0

  lua_pushlightuserdata((int)a1, (int)"h");
  lua_rawget(a1, -10000);
  result = (char *)lua_type(a1, -1);
  if ( result != &byte_5 )
  {
    lua_settop((int)a1, -2);
    lua_createtable((int)a1, 0, 1);
    lua_pushlightuserdata((int)a1, (int)"h");
    lua_pushvalue(a1, -2);
    return (char *)lua_rawset(a1, -10000);
  }
  return result;
}


// ===== 84f39c db_sethook =====
int __fastcall db_sethook(_DWORD *a1)
{
  int v2; // r6
  const char *v3; // r5
  int v4; // r7
  int v5; // r8
  int (*v6)(); // r5
  int v8; // [sp+4h] [bp-4h] BYREF

  v2 = getthread(a1, &v8);
  if ( lua_type(a1, v8 + 1) <= 0 )
  {
    v6 = nullptr;
    lua_settop((int)a1, v8 + 1);
    v4 = 0;
    v5 = 0;
  }
  else
  {
    v3 = (const char *)luaL_checklstring(a1, v8 + 2, nullptr);
    luaL_checktype(a1, v8 + 1, 6);
    v4 = luaL_optinteger(a1, v8 + 3, 0);
    v5 = strchr(v3, 99) != nullptr;
    if ( strchr(v3, 114) )
      v5 |= 2u;
    if ( strchr(v3, 108) )
      v5 |= 4u;
    if ( v4 > 0 )
      v5 |= 8u;
    v6 = hookf;
  }
  gethooktable(a1);
  lua_pushlightuserdata((int)a1, v2);
  lua_pushvalue(a1, v8 + 1);
  lua_rawset(a1, -3);
  lua_settop((int)a1, -2);
  lua_sethook(v2, v6, v5, v4);
  return 0;
}


// ===== 84f4dc hookf =====
int __fastcall hookf(_DWORD *a1, _DWORD *a2)
{
  int result; // r0
  int v5; // r1

  lua_pushlightuserdata((int)a1, (int)"h");
  lua_rawget(a1, -10000);
  lua_pushlightuserdata((int)a1, (int)a1);
  lua_rawget(a1, -2);
  result = lua_type(a1, -1);
  if ( result == 6 )
  {
    lua_pushstring((int)a1, (&dblib)[*a2 + 30]);
    v5 = a2[5];
    if ( v5 < 0 )
      lua_pushnil((int)a1);
    else
      lua_pushinteger((int)a1, v5);
    return lua_call((int)a1, 2, 0);
  }
  return result;
}


// ===== 84f58c db_setfenv =====
int __fastcall db_setfenv(_DWORD *a1)
{
  luaL_checktype(a1, 2, 5);
  lua_settop((int)a1, 2);
  if ( !lua_setfenv(a1, 1) )
    luaL_error((int)a1, (int)"'setfenv' cannot change environment of given object");
  return 1;
}


// ===== 84f5dc db_getmetatable =====
int __fastcall db_getmetatable(_DWORD *a1)
{
  luaL_checkany(a1, 1);
  if ( !lua_getmetatable(a1, 1) )
    lua_pushnil((int)a1);
  return 1;
}


// ===== 84f610 db_getlocal =====
int __fastcall db_getlocal(_DWORD *a1)
{
  int v2; // r6
  int v3; // r0
  int v4; // r0
  char *v5; // r8
  int v7; // [sp+4h] [bp-6Ch] BYREF
  _BYTE v8[100]; // [sp+8h] [bp-68h] BYREF

  v2 = getthread(a1, &v7);
  v3 = luaL_checkinteger(a1, v7 + 1);
  if ( !lua_getstack(v2, v3, v8) )
    luaL_argerror((int)a1, v7 + 1, "level out of range");
  v4 = luaL_checkinteger(a1, v7 + 2);
  v5 = (char *)lua_getlocal(v2, v8, v4);
  if ( v5 )
  {
    lua_xmove(v2, (int)a1, 1);
    lua_pushstring((int)a1, v5);
    lua_pushvalue(a1, -2);
    return 2;
  }
  else
  {
    lua_pushnil((int)a1);
    return 1;
  }
}


// ===== 84f718 settabsi =====
int __fastcall settabsi(_DWORD *a1, char *a2, int a3)
{
  lua_pushinteger((int)a1, a3);
  return lua_setfield(a1, -2, a2);
}


// ===== 84f740 settabss =====
int __fastcall settabss(_DWORD *a1, char *a2, char *a3)
{
  lua_pushstring((int)a1, a3);
  return lua_setfield(a1, -2, a2);
}


// ===== 84f768 treatstackoption =====
int __fastcall treatstackoption(_DWORD *a1, int a2, char *a3)
{
  if ( a1 == (_DWORD *)a2 )
  {
    lua_pushvalue(a1, -2);
    lua_remove(a1, -3);
  }
  else
  {
    lua_xmove(a2, (int)a1, 1);
  }
  return lua_setfield(a1, -2, a3);
}


// ===== 84f7b8 db_getinfo =====
int __fastcall db_getinfo(_DWORD *a1)
{
  int v2; // r7
  char *v3; // r8
  int v4; // r0
  int v6; // [sp+4h] [bp-70h] BYREF
  _BYTE v7[4]; // [sp+8h] [bp-6Ch] BYREF
  char *v8; // [sp+Ch] [bp-68h]
  char *v9; // [sp+10h] [bp-64h]
  char *v10; // [sp+14h] [bp-60h]
  char *v11; // [sp+18h] [bp-5Ch]
  int v12; // [sp+1Ch] [bp-58h]
  int v13; // [sp+20h] [bp-54h]
  int v14; // [sp+24h] [bp-50h]
  int v15; // [sp+28h] [bp-4Ch]
  char v16[64]; // [sp+2Ch] [bp-48h] BYREF

  v2 = getthread(a1, &v6);
  v3 = (char *)luaL_optlstring(a1, v6 + 2, "flnSu", nullptr);
  if ( !lua_isnumber(a1, v6 + 1) )
  {
    if ( lua_type(a1, v6 + 1) != 6 )
      luaL_argerror((int)a1, v6 + 1, "function or level expected");
    lua_pushfstring((int)a1, (int)">%s", v3);
    v3 = (char *)lua_tolstring(a1, -1, nullptr);
    lua_pushvalue(a1, v6 + 1);
    lua_xmove((int)a1, v2, 1);
    if ( lua_getinfo(v2, v3) )
      goto LABEL_4;
LABEL_19:
    luaL_argerror((int)a1, v6 + 2, "invalid option");
  }
  v4 = lua_tointeger(a1, v6 + 1);
  if ( !lua_getstack(v2, v4, v7) )
  {
    lua_pushnil((int)a1);
    return 1;
  }
  if ( !lua_getinfo(v2, v3) )
    goto LABEL_19;
LABEL_4:
  lua_createtable((int)a1, 0, 2);
  if ( strchr(v3, 83) )
  {
    settabss(a1, "source", v11);
    settabss(a1, "short_src", v16);
    settabsi(a1, "linedefined", v14);
    settabsi(a1, "lastlinedefined", v15);
    settabss(a1, "what", v10);
  }
  if ( strchr(v3, 108) )
    settabsi(a1, "currentline", v12);
  if ( strchr(v3, 117) )
    settabsi(a1, "nups", v13);
  if ( strchr(v3, 110) )
  {
    settabss(a1, "name", v8);
    settabss(a1, "namewhat", v9);
  }
  if ( strchr(v3, 76) )
    treatstackoption(a1, v2, "activelines");
  if ( strchr(v3, 102) )
    treatstackoption(a1, v2, "func");
  return 1;
}


// ===== 84faf8 db_gethook =====
int __fastcall db_gethook(_DWORD *a1)
{
  int v2; // r6
  char v3; // r5
  int (__fastcall *v4)(_DWORD *, _DWORD *); // r0
  int v5; // r2
  char *v6; // r3
  int v7; // r0
  char v9; // [sp+4h] [bp-Ch] BYREF
  _BYTE v10[3]; // [sp+5h] [bp-Bh] BYREF
  int v11; // [sp+Ch] [bp-4h] BYREF

  v2 = getthread(a1, &v11);
  v3 = lua_gethookmask();
  v4 = (int (__fastcall *)(_DWORD *, _DWORD *))lua_gethook(v2);
  if ( !v4 || v4 == hookf )
  {
    gethooktable(a1);
    lua_pushlightuserdata((int)a1, v2);
    lua_rawget(a1, -2);
    lua_remove(a1, -2);
  }
  else
  {
    lua_pushlstring((int)a1, "external hook", 0xDu);
  }
  v5 = v3 & 1;
  if ( (v3 & 1) != 0 )
  {
    v6 = (_BYTE *)(&dword_60 + 3);
    v9 = 99;
  }
  else
  {
    v6 = &v9;
  }
  if ( (v3 & 1) != 0 )
  {
    v6 = v10;
    v5 = 1;
  }
  if ( (v3 & 2) != 0 )
  {
    ++v5;
    *v6 = 114;
    v6 = &v10[v5 - 1];
  }
  if ( (v3 & 4) != 0 )
  {
    *v6 = 108;
    v6 = &v10[v5];
  }
  *v6 = 0;
  lua_pushstring((int)a1, &v9);
  v7 = lua_gethookcount(v2);
  lua_pushinteger((int)a1, v7);
  return 3;
}


// ===== 84fbfc db_getfenv =====
int __fastcall db_getfenv(_DWORD *a1)
{
  lua_getfenv(a1, 1);
  return 1;
}


// ===== 84fc10 db_debug =====
int __fastcall db_debug(_DWORD *a1)
{
  size_t v2; // r0
  const char *v3; // r0
  char v5[252]; // [sp+10h] [bp-104h] BYREF

  while ( 1 )
  {
    fwrite("lua_debug> ", 1u, 0xBu, (FILE *)&_sF + 2);
    if ( !fgets(v5, 250, (FILE *)&_sF) || !LC_API_STRCMP_0(v5, "cont\n") )
      break;
    v2 = LC_API_STRLEN_0(v5);
    if ( luaL_loadbuffer((int)a1, (int)v5, v2, "=(debug command)") || lua_pcall(a1, 0, 0, 0) )
    {
      v3 = (const char *)lua_tolstring(a1, -1, nullptr);
      fputs(v3, (FILE *)&_sF + 2);
      fputc(10, (FILE *)&_sF + 2);
    }
    lua_settop((int)a1, 0);
  }
  return 0;
}


// ===== 84fd68 currentpc =====
int __fastcall currentpc(int a1, int a2)
{
  _DWORD *v2; // r3
  int v4; // r2

  v2 = *(_DWORD **)(a2 + 4);
  if ( v2[1] != 6 )
    return -1;
  v4 = *v2;
  if ( *(_BYTE *)(*v2 + 6) )
    return -1;
  if ( *(_DWORD *)(a1 + 20) == a2 )
  {
    *(_DWORD *)(a2 + 12) = *(_DWORD *)(a1 + 24);
    v4 = *v2;
  }
  return ((*(_DWORD *)(a2 + 12) - *(_DWORD *)(*(_DWORD *)(v4 + 16) + 12)) >> 2) - 1;
}


// ===== 84fdc0 lua_sethook =====
int __fastcall lua_sethook(int a1, int a2, int a3, int a4)
{
  bool v4; // zf

  v4 = a2 == 0;
  if ( a2 )
    v4 = a3 == 0;
  if ( v4 )
  {
    LOBYTE(a3) = 0;
    a2 = 0;
  }
  *(_BYTE *)(a1 + 56) = a3;
  *(_DWORD *)(a1 + 68) = a2;
  *(_DWORD *)(a1 + 64) = a4;
  *(_DWORD *)(a1 + 60) = a4;
  return 1;
}


// ===== 84fdec lua_gethook =====
int __fastcall lua_gethook(int a1)
{
  return *(_DWORD *)(a1 + 68);
}


// ===== 84fdf4 lua_gethookmask =====
int __fastcall lua_gethookmask(int a1)
{
  return *(unsigned __int8 *)(a1 + 56);
}


// ===== 84fdfc lua_gethookcount =====
int __fastcall lua_gethookcount(int a1)
{
  return *(_DWORD *)(a1 + 60);
}


// ===== 84fe04 lua_getstack =====
int __fastcall lua_getstack(int a1, int a2, int a3)
{
  unsigned int v3; // r3
  int v4; // r12
  bool v5; // zf
  unsigned int v7; // r1

  v3 = *(_DWORD *)(a1 + 20);
  if ( a2 > 0 )
  {
    while ( v3 > *(_DWORD *)(a1 + 40) )
    {
      --a2;
      v4 = *(unsigned __int8 *)(**(_DWORD **)(v3 + 4) + 6);
      v5 = v4 == 0;
      if ( !*(_BYTE *)(**(_DWORD **)(v3 + 4) + 6) )
        v4 = *(_DWORD *)(v3 + 20);
      v3 -= 24;
      if ( v5 )
        a2 -= v4;
      if ( a2 <= 0 )
        goto LABEL_10;
    }
    return 0;
  }
LABEL_10:
  if ( a2 )
  {
    *(_DWORD *)(a3 + 96) = 0;
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(a1 + 40);
    if ( v7 >= v3 )
      return 0;
    *(_DWORD *)(a3 + 96) = -1431655765 * ((int)(v3 - v7) >> 3);
    return 1;
  }
}


// ===== 84fea0 luaG_checkopenop =====
bool __fastcall luaG_checkopenop(unsigned int a1)
{
  unsigned int v1; // r3

  v1 = (a1 & 0x3F) - 28;
  return v1 <= 6 && ((1 << v1) & 0x47) != 0 && a1 >> 23 == 0;
}


// ===== 84fed8 symbexec =====
unsigned int __fastcall symbexec(int a1, int a2, int a3)
{
  int v3; // r3
  char v4; // r2
  int v6; // r12
  unsigned int *v7; // r9
  int v8; // r11
  unsigned int v9; // r7
  unsigned int v10; // r4
  int v11; // r5
  int v12; // r12
  unsigned int v13; // r2
  int v14; // r0
  bool v15; // cf
  int v16; // r6
  int v17; // r0
  unsigned int v18; // r8
  int v19; // r7
  int v20; // r6
  int v21; // r0
  int v22; // r7
  int v23; // r0
  bool v24; // cc
  int v25; // r6
  int v26; // r5
  int v27; // r6
  int v28; // r2
  bool v29; // zf
  int *v30; // r5
  int v31; // r4
  char v32; // r0
  int v33; // t1
  char v34; // r2
  int v35; // r0
  bool v36; // cc
  int v37; // r10
  int v38; // r6
  int v39; // r8
  unsigned int v40; // r3
  _BOOL4 v41; // r6
  _BOOL4 v42; // r8
  unsigned int v43; // r0
  unsigned int v44; // r4
  int v46; // [sp+Ch] [bp-1Ch]
  int v48; // [sp+18h] [bp-10h]
  int v49; // [sp+1Ch] [bp-Ch]
  int v50; // [sp+20h] [bp-8h]

  v3 = *(unsigned __int8 *)(a1 + 75);
  v46 = *(_DWORD *)(a1 + 44);
  if ( (unsigned int)v3 > 0xFA )
    return 0;
  v4 = *(_BYTE *)(a1 + 74);
  if ( (v4 & 1) + *(unsigned __int8 *)(a1 + 73) > v3 )
    return 0;
  if ( (v4 & 5) == 4 )
    return 0;
  v49 = *(unsigned __int8 *)(a1 + 72);
  if ( *(_DWORD *)(a1 + 36) > v49 )
    return 0;
  v6 = *(_DWORD *)(a1 + 48);
  if ( v46 != v6 )
  {
    if ( v6 )
      return 0;
  }
  if ( v46 <= 0 )
    return 0;
  v7 = *(unsigned int **)(a1 + 12);
  if ( (v7[v46 - 1] & 0x3F) != 0x1E )
    return 0;
  v8 = v46 - 1;
  if ( a2 > 0 )
  {
    v9 = *v7;
    v10 = *v7 & 0x3F;
    if ( v10 <= 0x25 )
    {
      v11 = (unsigned __int8)(v9 >> 6);
      if ( v3 > v11 )
      {
        v48 = v4 & 6;
        v12 = 0;
        v13 = luaP_opmodes[v10];
        v14 = v13 & 3;
        v15 = v14 != 0;
        if ( v14 == 1 )
          goto LABEL_37;
        while ( 2 )
        {
          if ( v15 )
          {
            if ( v14 != 2 )
            {
              v20 = 0;
              v17 = 0;
              goto LABEL_23;
            }
            v17 = (v9 >> 14) - 0x1FFFF;
            if ( ((v13 >> 4) & 3) != 2 )
              goto LABEL_39;
            v37 = v12 + 1 + v17;
            if ( v37 >= 0 && v46 > v37 )
            {
              if ( v37 )
              {
                v38 = 0;
                v39 = 0;
                v50 = v3;
                do
                {
                  v40 = v7[v37 - 1 + v38--];
                  if ( (v40 & 0x3F) != 0x22 )
                    break;
                  if ( ((v40 >> 14) & 0x1FF) != 0 )
                    break;
                  ++v39;
                }
                while ( v37 > v39 );
                v3 = v50;
                if ( (v39 & 1) == 0 )
                {
                  v20 = 0;
                  goto LABEL_23;
                }
              }
              else
              {
LABEL_39:
                v20 = 0;
LABEL_23:
                if ( (v13 & 0x40) != 0 && v11 == a3 )
                  v8 = v12;
                if ( (v13 & 0x80) == 0 || v46 > v12 + 2 && (v7[v12 + 1] & 0x3F) == 0x16 )
                {
                  switch ( v10 )
                  {
                    case 2u:
                      if ( v20 != 1 )
                        goto LABEL_32;
                      if ( v46 <= v12 + 2 )
                        return 0;
                      v22 = v12 + 1;
                      if ( (v7[v12 + 1] & 0x3F) == 0x22 && ((v7[v12 + 1] >> 14) & 0x1FF) == 0 )
                        return 0;
                      goto LABEL_33;
                    case 3u:
                      v36 = a3 <= v17;
                      if ( a3 <= v17 )
                        v36 = v11 <= a3;
                      if ( !v36 )
                        goto LABEL_32;
                      goto LABEL_62;
                    case 4u:
                    case 8u:
                      if ( v17 >= v49 )
                        return 0;
                      goto LABEL_32;
                    case 5u:
                    case 7u:
                      if ( *(_DWORD *)(*(_DWORD *)(a1 + 8) + 8 * v17 + 4) != 4 )
                        return 0;
                      goto LABEL_32;
                    case 0xBu:
                      v26 = v11 + 1;
                      if ( v26 >= v3 )
                        return 0;
                      if ( a3 == v26 )
                        goto LABEL_62;
                      goto LABEL_32;
                    case 0x15u:
                      if ( v17 >= v20 )
                        return 0;
                      goto LABEL_32;
                    case 0x16u:
                      goto LABEL_41;
                    case 0x1Cu:
                    case 0x1Du:
                      if ( v17 && v17 + v11 > v3 )
                        return 0;
                      v15 = v20 != 0;
                      v25 = v20 - 1;
                      if ( v15 )
                      {
                        if ( v25 && v25 + v11 > v3 )
                          return 0;
                        v22 = v12 + 1;
                      }
                      else
                      {
                        v22 = v12 + 1;
                        v43 = (v7[v12 + 1] & 0x3F) - 28;
                        if ( v43 > 6 || ((1 << v43) & 0x47) == 0 || v7[v12 + 1] >> 23 )
                          return 0;
                      }
                      if ( a3 >= v11 )
                        v8 = v12;
LABEL_33:
                      if ( a2 <= v22 )
                        return v7[v8];
                      v12 = v22;
                      v9 = v7[v22];
                      v10 = v9 & 0x3F;
                      if ( v10 <= 0x25 )
                      {
                        v11 = (unsigned __int8)(v9 >> 6);
                        if ( v11 < v3 )
                        {
                          v13 = luaP_opmodes[v10];
                          v14 = v13 & 3;
                          v15 = v14 != 0;
                          if ( v14 != 1 )
                            continue;
LABEL_37:
                          v17 = v9 >> 14;
                          if ( ((v13 >> 4) & 3) != 3 || v17 < *(_DWORD *)(a1 + 40) )
                            goto LABEL_39;
                        }
                      }
                      return 0;
                    case 0x1Eu:
                      v21 = v17 - 1;
                      if ( v21 <= 0 )
                        goto LABEL_32;
                      goto LABEL_31;
                    case 0x1Fu:
                    case 0x20u:
                      if ( v11 + 3 >= v3 )
                        return 0;
LABEL_41:
                      v22 = v12 + 1;
                      v23 = v17 + v12 + 1;
                      v24 = a3 < 255;
                      if ( a3 != 255 )
                        v24 = v12 < v23;
                      if ( v24 && a2 >= v23 )
                        v22 = v23;
                      goto LABEL_33;
                    case 0x21u:
                      if ( !v20 || v11 + 2 + v20 >= v3 )
                        return 0;
                      if ( a3 <= v11 + 1 )
                        goto LABEL_32;
LABEL_62:
                      v8 = v12;
                      v22 = v12 + 1;
                      goto LABEL_33;
                    case 0x22u:
                      if ( v17 > 0 && v17 + v11 >= v3 )
                        return 0;
                      if ( v20 )
                        goto LABEL_32;
                      if ( v46 - 1 <= v12 + 1 )
                        return 0;
                      v22 = v12 + 2;
                      goto LABEL_33;
                    case 0x24u:
                      if ( v17 >= *(_DWORD *)(a1 + 52) )
                        return 0;
                      v27 = *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v17) + 72);
                      if ( v46 <= v12 + v27 )
                        return 0;
                      if ( !*(_BYTE *)(*(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v17) + 72) )
                        goto LABEL_78;
                      v28 = v7[v12 + 1] & 0x3F;
                      v29 = v28 == 4;
                      if ( v28 != 4 )
                        v29 = v28 == 0;
                      if ( !v29 )
                        return 0;
                      v30 = (int *)&v7[v12 + 2];
                      v31 = 1;
                      while ( v27 >= ++v31 )
                      {
                        v33 = *v30++;
                        v32 = v33;
                        v34 = v33 & 0x3F;
                        if ( (v33 & 0x3F) != 0 )
                          v34 = 1;
                        if ( (v32 & 0x3F) == 4 )
                          v35 = 0;
                        else
                          v35 = v34 & 1;
                        if ( v35 )
                          return 0;
                      }
LABEL_78:
                      if ( a3 == 255 )
LABEL_32:
                        v22 = v12 + 1;
                      else
                        v22 = v12 + v27 + 1;
                      goto LABEL_33;
                    case 0x25u:
                      if ( v48 != 2 )
                        return 0;
                      v15 = v17 != 0;
                      v21 = v17 - 1;
                      if ( !v15 )
                      {
                        v44 = (v7[v12 + 1] & 0x3F) - 28;
                        if ( v44 > 6 || ((1 << v44) & 0x47) == 0 || v7[v12 + 1] >> 23 )
                          return 0;
                      }
LABEL_31:
                      if ( v21 + v11 <= v3 )
                        goto LABEL_32;
                      return 0;
                    default:
                      goto LABEL_32;
                  }
                }
              }
            }
            return 0;
          }
          break;
        }
        v16 = (v13 >> 4) & 3;
        v17 = v9 >> 23;
        if ( v16 == 2 )
        {
          if ( v17 < v3 )
            goto LABEL_19;
        }
        else if ( v16 == 3 )
        {
          if ( (v17 & 0x100) != 0 )
            v41 = (int)(v17 & 0xFFFFFEFF) >= *(_DWORD *)(a1 + 40);
          else
            v41 = v17 >= v3;
          if ( !v41 )
          {
            v18 = v9 >> 14;
            v19 = (v13 >> 2) & 3;
            v20 = v18 & 0x1FF;
            if ( v19 != 2 )
            {
LABEL_20:
              if ( v19 == 3 )
              {
                if ( (v18 & 0x100) != 0 )
                  v42 = (int)(unsigned __int8)v18 >= *(_DWORD *)(a1 + 40);
                else
                  v42 = v20 >= v3;
                if ( !v42 )
                  goto LABEL_23;
              }
              else if ( v19 == 1 || !v20 )
              {
                goto LABEL_23;
              }
              return 0;
            }
            goto LABEL_123;
          }
        }
        else if ( v16 == 1 || !v17 )
        {
LABEL_19:
          v18 = v9 >> 14;
          v19 = (v13 >> 2) & 3;
          v20 = v18 & 0x1FF;
          if ( v19 != 2 )
            goto LABEL_20;
LABEL_123:
          if ( v20 < v3 )
            goto LABEL_23;
        }
      }
    }
    return 0;
  }
  return v7[v8];
}


// ===== 850594 luaG_checkcode =====
bool __fastcall luaG_checkcode(int a1)
{
  return symbexec(a1, *(_DWORD *)(a1 + 44), 255) != 0;
}


// ===== 8505b0 luaG_errormsg =====
void __fastcall __noreturn luaG_errormsg(_DWORD *a1)
{
  int v1; // r5
  int v3; // r7
  _DWORD *v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r1

  v1 = a1[25];
  if ( v1 )
  {
    v3 = a1[8];
    if ( *(_DWORD *)(v3 + v1 + 4) != 6 )
      luaD_throw(a1, 5);
    v4 = (_DWORD *)a1[2];
    v5 = *(v4 - 1);
    *v4 = *(v4 - 2);
    v4[1] = v5;
    v6 = a1[2];
    *(_DWORD *)(v6 - 8) = *(_DWORD *)(v3 + v1);
    *(_DWORD *)(v6 - 4) = *(_DWORD *)(v3 + v1 + 4);
    v7 = a1[2];
    if ( a1[7] - v7 <= 8 )
    {
      luaD_growstack(a1, 1);
      v7 = a1[2];
    }
    a1[2] = v7 + 8;
    luaD_call(a1, v7 - 8, 1);
  }
  luaD_throw(a1, 2);
}


// ===== 850650 luaG_runerror =====
void __noreturn luaG_runerror(_DWORD *a1, int a2, ...)
{
  int v3; // r0
  int v4; // r8
  const char *v5; // r7
  _DWORD *v6; // r3
  int v7; // r0
  _DWORD *v8; // r3
  int v9; // r10
  int v10; // r3
  int v11; // r3
  char v12[60]; // [sp+10h] [bp-40h] BYREF
  va_list varg_r2; // [sp+70h] [bp+20h] BYREF

  va_start(varg_r2, a2);
  v3 = luaO_pushvfstring(a1, a2, (char *)&varg_r2);
  v4 = a1[5];
  v5 = (const char *)v3;
  v6 = *(_DWORD **)(v4 + 4);
  if ( v6[1] == 6 && !*(_BYTE *)(*v6 + 6) )
  {
    v7 = currentpc((int)a1, a1[5]);
    if ( v7 < 0 )
    {
      v8 = *(_DWORD **)(v4 + 4);
      v9 = -1;
    }
    else
    {
      v8 = *(_DWORD **)(v4 + 4);
      v9 = *(_DWORD *)(*(_DWORD *)(*v8 + 16) + 20);
      if ( v9 )
        v9 = *(_DWORD *)(v9 + 4 * v7);
    }
    if ( v8[1] != 6 || (v11 = *v8, *(_BYTE *)(v11 + 6)) )
      v10 = 0;
    else
      v10 = *(_DWORD *)(v11 + 16);
    luaO_chunkid((int)v12, (char *)(*(_DWORD *)(v10 + 32) + 16));
    luaO_pushfstring(a1, "%s:%d: %s", v12, v9, v5);
  }
  luaG_errormsg(a1);
}


// ===== 850788 luaG_ordererror =====
void __fastcall __noreturn luaG_ordererror(_DWORD *a1, int a2, int a3)
{
  int v3; // r12
  char *v4; // r2
  char *v5; // r3

  v3 = *(_DWORD *)(a3 + 4);
  v4 = luaT_typenames[*(_DWORD *)(a2 + 4)];
  v5 = luaT_typenames[v3];
  if ( v4[2] != v5[2] )
    luaG_runerror(a1, (int)"attempt to compare %s with %s", v4, v5);
  luaG_runerror(a1, (int)"attempt to compare two %s values", v4);
}


// ===== 8507e8 getobjname =====
const char *__fastcall getobjname(int a1, int a2, int a3, _DWORD *a4)
{
  int *v8; // r3
  int v9; // r3
  int v10; // r7
  int v11; // r8
  int v12; // r0
  unsigned int v13; // r0
  const char *result; // r0
  unsigned int v15; // r0
  const char *v16; // r3
  unsigned int v17; // r0
  int v18; // r3
  const char *v19; // r3
  int v20; // r3
  const char *v21; // r3
  int v22; // r3

  while ( 2 )
  {
    v8 = *(int **)(a2 + 4);
    if ( v8[1] != 6 )
      return nullptr;
    v9 = *v8;
    if ( *(_BYTE *)(v9 + 6) )
      return nullptr;
    v10 = *(_DWORD *)(v9 + 16);
    v11 = currentpc(a1, a2);
    v12 = luaF_getlocalname(v10, a3 + 1, v11);
    *a4 = v12;
    if ( v12 )
      return "local";
    v13 = symbexec(v10, v11, a3);
    switch ( v13 & 0x3F )
    {
      case 0u:
        a3 = v13 >> 23;
        if ( (unsigned __int8)(v13 >> 6) <= (int)(v13 >> 23) )
          return nullptr;
        continue;
      case 4u:
        v20 = *(_DWORD *)(v10 + 28);
        if ( v20 )
          v21 = (const char *)(*(_DWORD *)(v20 + 4 * (v13 >> 23)) + 16);
        else
          v21 = "?";
        *a4 = v21;
        result = "upvalue";
        break;
      case 5u:
        *a4 = *(_DWORD *)(*(_DWORD *)(v10 + 8) + 8 * (v13 >> 14)) + 16;
        result = "global";
        break;
      case 6u:
        v17 = v13 >> 14;
        if ( (v17 & 0x100) != 0 )
        {
          v18 = *(_DWORD *)(v10 + 8);
          if ( *(_DWORD *)(v18 + 8 * (unsigned __int8)v17 + 4) == 4 )
            v19 = (const char *)(*(_DWORD *)(v18 + 8 * (unsigned __int8)v17) + 16);
          else
            v19 = "?";
        }
        else
        {
          v19 = "?";
        }
        *a4 = v19;
        result = "field";
        break;
      case 0xBu:
        v15 = v13 >> 14;
        if ( (v15 & 0x100) != 0 )
        {
          v22 = *(_DWORD *)(v10 + 8);
          if ( *(_DWORD *)(v22 + 8 * (unsigned __int8)v15 + 4) == 4 )
            v16 = (const char *)(*(_DWORD *)(v22 + 8 * (unsigned __int8)v15) + 16);
          else
            v16 = "?";
        }
        else
        {
          v16 = "?";
        }
        *a4 = v16;
        result = "method";
        break;
      default:
        return nullptr;
    }
    break;
  }
  return result;
}


// ===== 8509e4 luaG_typeerror =====
void __fastcall __noreturn luaG_typeerror(_DWORD *a1, int a2, const char *a3)
{
  unsigned int *v4; // r0
  unsigned int v6; // r12
  unsigned int v7; // r1
  const char *v8; // r5
  const char *v10; // r3
  const char *v11; // [sp+Ch] [bp-4h] BYREF

  v4 = (unsigned int *)a1[5];
  v11 = nullptr;
  v6 = v4[2];
  v7 = *v4;
  v8 = luaT_typenames[*(_DWORD *)(a2 + 4)];
  if ( *v4 < v6 )
  {
    while ( a2 != v7 )
    {
      v7 += 8;
      if ( v7 >= v6 )
        goto LABEL_7;
    }
    v10 = getobjname((int)a1, (int)v4, (a2 - a1[3]) >> 3, &v11);
    if ( v10 )
      luaG_runerror(a1, (int)"attempt to %s %s '%s' (a %s value)", a3, v10, v11, v8);
  }
LABEL_7:
  luaG_runerror(a1, (int)"attempt to %s a %s value", a3, v8);
}


// ===== 850ab0 luaG_aritherror =====
void __fastcall __noreturn luaG_aritherror(_DWORD *a1, int a2, int a3, int a4)
{
  int v6; // r6
  int v7; // [sp+0h] [bp-8h] BYREF

  v6 = a3;
  if ( !luaV_tonumber(a2, &v7, a3, a4) )
    v6 = a2;
  luaG_typeerror(a1, v6, "perform arithmetic on");
}


// ===== 850af8 luaG_concaterror =====
void __fastcall __noreturn luaG_concaterror(_DWORD *a1, int a2, int a3)
{
  if ( (unsigned int)(*(_DWORD *)(a2 + 4) - 3) <= 1 )
    a2 = a3;
  luaG_typeerror(a1, a2, "concatenate");
}


// ===== 850b18 findlocal =====
const char *__fastcall findlocal(int a1, _DWORD *a2, int a3)
{
  int *v3; // r3
  int v7; // r2
  const char *result; // r0
  int v10; // r3
  int v11; // r7
  int v12; // r0

  v3 = (int *)a2[1];
  if ( v3[1] != 6
    || (v10 = *v3, *(_BYTE *)(v10 + 6))
    || (v11 = *(_DWORD *)(v10 + 16)) == 0
    || (v12 = currentpc(a1, (int)a2), (result = (const char *)luaF_getlocalname(v11, a3, v12)) == nullptr) )
  {
    if ( *(_DWORD **)(a1 + 20) == a2 )
      v7 = *(_DWORD *)(a1 + 8);
    else
      v7 = a2[7];
    if ( a3 > 0 && a3 <= (v7 - *a2) >> 3 )
      return "(*temporary)";
    else
      return nullptr;
  }
  return result;
}


// ===== 850bc4 lua_setlocal =====
const char *__fastcall lua_setlocal(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r5
  const char *result; // r0
  int v8; // r3
  _DWORD *v9; // r1

  v3 = *(_DWORD *)(a1 + 40);
  v4 = 24 * *(_DWORD *)(a2 + 96);
  result = findlocal(a1, (_DWORD *)(v3 + v4), a3);
  if ( result )
  {
    v8 = *(_DWORD *)(a1 + 8);
    v9 = (_DWORD *)(*(_DWORD *)(v3 + v4) + 8 * (a3 - 1));
    *v9 = *(_DWORD *)(v8 - 8);
    v9[1] = *(_DWORD *)(v8 - 4);
  }
  *(_DWORD *)(a1 + 8) -= 8;
  return result;
}


// ===== 850c20 lua_getinfo =====
int __fastcall lua_getinfo(_DWORD *a1, char *a2, _DWORD *a3)
{
  char *v3; // r10
  int v6; // r3
  int v7; // r8
  int v8; // r7
  char v9; // r3
  char *v10; // r4
  int v11; // r9
  _DWORD *v12; // r3
  int v13; // t1
  int v14; // r2
  _DWORD *v15; // r3
  int v16; // r3
  int v17; // r4
  int v18; // r3
  int v20; // t1
  int v21; // t1
  int v22; // r0
  int v23; // r3
  int v24; // t1
  char *v25; // r1
  int v26; // r3
  const char *v27; // r2
  int v28; // t1
  int *v29; // r2
  int v30; // r2
  int v31; // r11
  unsigned int v32; // r2
  bool v33; // cc
  const char *v34; // r0
  int *v35; // r2
  int v36; // r0
  int v37; // r3
  int v38; // r8
  int v39; // r10
  _DWORD *v40; // r0
  int *v41; // r3

  v3 = a2;
  if ( *a2 == 62 )
  {
    v3 = a2 + 1;
    v7 = 0;
    v35 = (int *)(a1[2] - 8);
    v8 = *v35;
    a1[2] = v35;
  }
  else
  {
    v6 = a3[24];
    if ( !v6 )
    {
LABEL_63:
      a3[3] = "tail";
      a3[8] = -1;
      a3[5] = -1;
      a3[7] = -1;
      a3[1] = "";
      a3[2] = "";
      a3[4] = "=(tail call)";
      v8 = 0;
      luaO_chunkid((int)(a3 + 9), "=(tail call)");
      a3[6] = 0;
      goto LABEL_64;
    }
    v7 = a1[10] + 24 * v6;
    v8 = **(_DWORD **)(v7 + 4);
  }
  if ( !v8 )
    goto LABEL_63;
  v9 = *v3;
  if ( *v3 )
  {
    v10 = v3;
    v11 = 1;
    while ( 1 )
    {
      switch ( v9 )
      {
        case 'L':
        case 'f':
          goto LABEL_14;
        case 'S':
          if ( *(_BYTE *)(v8 + 6) )
          {
            a3[8] = -1;
            a3[3] = "C";
            a3[7] = -1;
            a3[4] = "=[C]";
            v25 = "=[C]";
          }
          else
          {
            v25 = (char *)(*(_DWORD *)(*(_DWORD *)(v8 + 16) + 32) + 16);
            a3[4] = v25;
            v26 = *(_DWORD *)(*(_DWORD *)(v8 + 16) + 60);
            a3[7] = v26;
            v27 = "main";
            a3[8] = *(_DWORD *)(*(_DWORD *)(v8 + 16) + 64);
            if ( v26 )
              v27 = "Lua";
            a3[3] = v27;
          }
          luaO_chunkid((int)(a3 + 9), v25);
          v28 = (unsigned __int8)*++v10;
          v9 = v28;
          if ( v28 )
            continue;
          goto LABEL_15;
        case 'l':
          if ( v7 && (v22 = currentpc((int)a1, v7), v22 >= 0) )
          {
            v23 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(v7 + 4) + 16) + 20);
            if ( v23 )
              v23 = *(_DWORD *)(v23 + 4 * v22);
            a3[5] = v23;
          }
          else
          {
            a3[5] = -1;
          }
          v24 = (unsigned __int8)*++v10;
          v9 = v24;
          if ( v24 )
            continue;
          goto LABEL_15;
        case 'n':
          if ( !v7 )
          {
            a3[2] = 0;
            goto LABEL_13;
          }
          v12 = *(_DWORD **)(v7 + 4);
          if ( v12[1] == 6 && !*(_BYTE *)(*v12 + 6) && *(int *)(v7 + 20) > 0 )
            goto LABEL_12;
          v29 = *(int **)(v7 - 20);
          if ( v29[1] != 6 )
            goto LABEL_12;
          v30 = *v29;
          if ( *(_BYTE *)(v30 + 6) )
            goto LABEL_12;
          v31 = *(_DWORD *)(*(_DWORD *)(v30 + 16) + 12);
          v32 = *(_DWORD *)(v31 + 4 * currentpc((int)a1, v7 - 24));
          v33 = (v32 & 0x3F) > 0x21;
          if ( (v32 & 0x3F) != 0x21 )
            v33 = (v32 & 0x3F) - 28 > 1;
          if ( v33 )
          {
LABEL_12:
            a3[2] = 0;
LABEL_13:
            a3[1] = 0;
            a3[2] = "";
            goto LABEL_14;
          }
          v34 = getobjname((int)a1, v7 - 24, (unsigned __int8)(v32 >> 6), a3 + 1);
          a3[2] = v34;
          if ( !v34 )
            goto LABEL_13;
LABEL_14:
          v13 = (unsigned __int8)*++v10;
          v9 = v13;
          if ( !v13 )
            goto LABEL_15;
          break;
        case 'u':
          a3[6] = *(unsigned __int8 *)(v8 + 7);
          v21 = (unsigned __int8)*++v10;
          v9 = v21;
          if ( v21 )
            continue;
          goto LABEL_15;
        default:
          v20 = (unsigned __int8)*++v10;
          v9 = v20;
          v11 = 0;
          if ( v20 )
            continue;
          goto LABEL_15;
      }
    }
  }
LABEL_64:
  v11 = 1;
LABEL_15:
  if ( strchr(v3, 102) )
  {
    v15 = (_DWORD *)a1[2];
    if ( v8 )
      v14 = 6;
    else
      v15[1] = 0;
    if ( v8 )
    {
      v15[1] = v14;
      *v15 = v8;
    }
    v16 = a1[2];
    if ( a1[7] - v16 <= 8 )
    {
      luaD_growstack(a1, 1);
      v16 = a1[2];
    }
    a1[2] = v16 + 8;
  }
  if ( strchr(v3, 76) )
  {
    if ( v8 && (v17 = *(unsigned __int8 *)(v8 + 6), !*(_BYTE *)(v8 + 6)) )
    {
      v36 = luaH_new(a1, *(unsigned __int8 *)(v8 + 6), *(unsigned __int8 *)(v8 + 6));
      v37 = *(_DWORD *)(v8 + 16);
      v38 = v36;
      v39 = *(_DWORD *)(v37 + 20);
      if ( *(int *)(v37 + 48) > 0 )
      {
        do
        {
          v40 = (_DWORD *)luaH_setnum(a1, v38, *(_DWORD *)(v39 + 4 * v17));
          v40[1] = 1;
          *v40 = 1;
          ++v17;
        }
        while ( v17 < *(_DWORD *)(*(_DWORD *)(v8 + 16) + 48) );
      }
      v41 = (int *)a1[2];
      v41[1] = 5;
      *v41 = v38;
    }
    else
    {
      *(_DWORD *)(a1[2] + 4) = 0;
    }
    v18 = a1[2];
    if ( a1[7] - v18 <= 8 )
    {
      luaD_growstack(a1, 1);
      v18 = a1[2];
    }
    a1[2] = v18 + 8;
  }
  return v11;
}


// ===== 851124 lua_getlocal =====
const char *__fastcall lua_getlocal(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r5
  const char *v7; // r8

  v3 = *(_DWORD *)(a1 + 40);
  v4 = 24 * *(_DWORD *)(a2 + 96);
  v7 = findlocal(a1, (_DWORD *)(v3 + v4), a3);
  if ( v7 )
    luaA_pushobject(a1, (_DWORD *)(*(_DWORD *)(v3 + v4) + 8 * (a3 - 1)));
  return v7;
}


// ===== 85116c lua_yield =====
int __fastcall lua_yield(int a1, int a2)
{
  int v2; // r3

  if ( *(unsigned __int16 *)(a1 + 52) > (unsigned int)*(unsigned __int16 *)(a1 + 54) )
    luaG_runerror((_DWORD *)a1, (int)"attempt to yield across metamethod/C-call boundary");
  v2 = *(_DWORD *)(a1 + 8);
  *(_BYTE *)(a1 + 6) = 1;
  *(_DWORD *)(a1 + 12) = v2 - 8 * a2;
  return -1;
}


// ===== 8511b4 luaD_seterrorobj =====
int __fastcall luaD_seterrorobj(int result, int a2, int *a3)
{
  int v3; // r5
  int v5; // r3

  v3 = result;
  switch ( a2 )
  {
    case 2:
    case 3:
      v5 = *(_DWORD *)(result + 8);
      *a3 = *(_DWORD *)(v5 - 8);
      a3[1] = *(_DWORD *)(v5 - 4);
      goto LABEL_3;
    case 4:
      result = luaS_newlstr(result, "not enough memory", 0x11u);
      *a3 = result;
      a3[1] = 4;
      *(_DWORD *)(v3 + 8) = a3 + 2;
      break;
    case 5:
      result = luaS_newlstr(result, "error in error handling", 0x17u);
      *a3 = result;
      a3[1] = 4;
      *(_DWORD *)(v3 + 8) = a3 + 2;
      break;
    default:
LABEL_3:
      *(_DWORD *)(result + 8) = a3 + 2;
      break;
  }
  return result;
}


// ===== 851250 luaD_reallocCI =====
int __fastcall luaD_reallocCI(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r6
  int result; // r0
  int v7; // r0

  v4 = a1[10];
  if ( (unsigned int)(a2 + 1) > 0xAAAAAAA )
    luaM_toobig();
  v7 = luaM_realloc_(a1, a1[10], 24 * a1[12], 24 * a2);
  v5 = (a1[5] - v4) >> 3;
  a1[10] = v7;
  a1[9] = v7 + 24 * (a2 - 1);
  a1[12] = a2;
  result = v7 + 8 * v5;
  a1[5] = result;
  return result;
}


// ===== 8512d8 luaD_reallocstack =====
unsigned int __fastcall luaD_reallocstack(_DWORD *a1, int a2)
{
  int v4; // r5
  int v5; // r7
  _DWORD *v6; // r3
  unsigned int v7; // r2
  int v8; // r0
  unsigned int v9; // r3
  unsigned int v10; // r3
  int v11; // r1
  int v12; // r2
  unsigned int v13; // r2
  unsigned int result; // r0

  v4 = a1[8];
  v5 = a2 + 6;
  if ( (unsigned int)(a2 + 7) > 0x1FFFFFFF )
    luaM_toobig();
  v8 = luaM_realloc_(a1, a1[8], 8 * a1[11], 8 * v5);
  v6 = (_DWORD *)a1[22];
  v7 = v8 + ((a1[2] - v4) & 0xFFFFFFF8);
  a1[11] = v5;
  a1[7] = v8 + 8 * a2;
  a1[2] = v7;
  a1[8] = v8;
  if ( v6 )
  {
    while ( 1 )
    {
      v6[2] = v8 + ((v6[2] - v4) & 0xFFFFFFF8);
      v6 = (_DWORD *)*v6;
      if ( !v6 )
        break;
      v8 = a1[8];
    }
    v8 = a1[8];
  }
  v9 = a1[10];
  if ( a1[5] >= v9 )
  {
    v10 = v9 + 24;
    while ( 1 )
    {
      v11 = *(_DWORD *)(v10 - 24);
      v12 = *(_DWORD *)(v10 - 20);
      *(_DWORD *)(v10 - 16) = v8 + ((*(_DWORD *)(v10 - 16) - v4) & 0xFFFFFFF8);
      *(_DWORD *)(v10 - 24) = a1[8] + ((v11 - v4) & 0xFFFFFFF8);
      *(_DWORD *)(v10 - 20) = a1[8] + ((v12 - v4) & 0xFFFFFFF8);
      v13 = v10;
      v10 += 24;
      if ( a1[5] < v13 )
        break;
      v8 = a1[8];
    }
    v8 = a1[8];
  }
  result = v8 + ((a1[3] - v4) & 0xFFFFFFF8);
  a1[3] = result;
  return result;
}


// ===== 8513fc luaD_growstack =====
unsigned int __fastcall luaD_growstack(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r1

  v2 = a1[11];
  if ( v2 >= a2 )
    v3 = 2 * v2;
  else
    v3 = a2 + v2;
  return luaD_reallocstack(a1, v3);
}


// ===== 851418 f_parser =====
unsigned int __fastcall f_parser(_DWORD *a1, int *a2)
{
  int v4; // r0
  int v5; // r6
  int v6; // r0
  int v7; // r5
  unsigned int result; // r0
  unsigned int v9; // r8
  unsigned int v10; // r7
  int v11; // r6
  unsigned int *v12; // r3
  int v13; // r3

  v4 = luaZ_lookahead(*a2);
  v5 = v4;
  if ( *(_DWORD *)(a1[4] + 68) >= *(_DWORD *)(a1[4] + 64) )
  {
    luaC_step(a1);
    if ( v5 != 27 )
      goto LABEL_3;
  }
  else if ( v4 != 27 )
  {
LABEL_3:
    v6 = luaY_parser((int)a1, *a2, (int)(a2 + 1), (char *)a2[4]);
    goto LABEL_4;
  }
  v6 = ((int (__fastcall *)(int, int, int, char *))luaU_undump)((int)a1, *a2, (int)(a2 + 1), (char *)a2[4]);
LABEL_4:
  v7 = v6;
  result = luaF_newLclosure(a1, *(unsigned __int8 *)(v6 + 72), a1[18]);
  *(_DWORD *)(result + 16) = v7;
  v9 = result;
  if ( *(_BYTE *)(v7 + 72) )
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = luaF_newupval(a1);
      *(_DWORD *)(v10 + 20) = result;
      ++v11;
      v10 += 4;
    }
    while ( *(unsigned __int8 *)(v7 + 72) > v11 );
  }
  v12 = (unsigned int *)a1[2];
  v12[1] = 6;
  *v12 = v9;
  v13 = a1[2];
  if ( a1[7] - v13 <= 8 )
  {
    result = luaD_growstack(a1, 1);
    v13 = a1[2];
  }
  a1[2] = v13 + 8;
  return result;
}


// ===== 85151c resume_error =====
int __fastcall resume_error(_DWORD *a1, char *a2)
{
  _DWORD **v2; // r3
  _DWORD *v4; // r5
  size_t v6; // r0
  int v7; // r3

  v2 = (_DWORD **)a1[5];
  v4 = *v2;
  a1[2] = *v2;
  v6 = LC_API_STRLEN_0(a2);
  *v4 = luaS_newlstr((int)a1, a2, v6);
  v4[1] = 4;
  v7 = a1[2];
  if ( a1[7] - v7 <= 8 )
  {
    luaD_growstack(a1, 1);
    v7 = a1[2];
  }
  a1[2] = v7 + 8;
  return 2;
}


// ===== 851588 luaD_callhook =====
int __fastcall luaD_callhook(int result, int a2, int a3)
{
  int (__fastcall *v3)(int, _DWORD *); // r7
  int v4; // r4
  int v5; // r3
  int v6; // r8
  int v7; // r10
  int v8; // r0
  int v9; // r2
  int v10; // r10
  int v11; // r8
  int v12; // r2
  int v13; // r3
  int v14; // r10
  _DWORD v15[25]; // [sp+0h] [bp-6Ch] BYREF

  v3 = *(int (__fastcall **)(int, _DWORD *))(result + 68);
  v4 = result;
  if ( v3 && *(_BYTE *)(result + 57) )
  {
    v5 = *(_DWORD *)(result + 20);
    v6 = *(_DWORD *)(result + 32);
    v7 = *(_DWORD *)(v5 + 8);
    v8 = *(_DWORD *)(result + 8);
    v15[5] = a3;
    v15[0] = a2;
    if ( a2 == 4 )
      v9 = 0;
    else
      v9 = *(_DWORD *)(v4 + 40);
    v10 = v7 - v6;
    if ( a2 != 4 )
      v9 = (v5 - v9) >> 3;
    v11 = v8 - v6;
    if ( a2 != 4 )
      v9 *= -1431655765;
    v15[24] = v9;
    v12 = v8;
    if ( *(_DWORD *)(v4 + 28) - v8 <= 160 )
    {
      luaD_growstack((_DWORD *)v4, 20);
      v12 = *(_DWORD *)(v4 + 8);
      v5 = *(_DWORD *)(v4 + 20);
    }
    *(_DWORD *)(v5 + 8) = v12 + 160;
    *(_BYTE *)(v4 + 57) = 0;
    result = v3(v4, v15);
    v13 = *(_DWORD *)(v4 + 20);
    v14 = *(_DWORD *)(v4 + 32) + v10;
    *(_BYTE *)(v4 + 57) = 1;
    *(_DWORD *)(v13 + 8) = v14;
    *(_DWORD *)(v4 + 8) = *(_DWORD *)(v4 + 32) + v11;
  }
  return result;
}


// ===== 8516a4 luaD_poscall =====
int __fastcall luaD_poscall(int a1, char *a2)
{
  char *v3; // r3
  int v4; // r2
  int v5; // r1
  int v6; // r12
  int v7; // r0
  _DWORD *v8; // r2
  int v9; // r1
  int v10; // r12
  int i; // r3
  _DWORD *v13; // r12
  char *v14; // r5
  int v15; // r3
  int v16; // r3
  int v17; // r2

  v3 = a2;
  if ( (*(_BYTE *)(a1 + 56) & 2) != 0 )
  {
    v14 = &a2[-*(_DWORD *)(a1 + 32)];
    luaD_callhook(a1, 1, -1);
    v4 = *(_DWORD *)(a1 + 20);
    if ( !*(_BYTE *)(**(_DWORD **)(v4 + 4) + 6) && (*(_BYTE *)(a1 + 56) & 2) != 0 )
    {
      v15 = *(_DWORD *)(v4 + 20);
      *(_DWORD *)(v4 + 20) = v15 - 1;
      if ( v15 )
      {
        do
        {
          luaD_callhook(a1, 4, -1);
          if ( (*(_BYTE *)(a1 + 56) & 2) == 0 )
            break;
          v16 = *(_DWORD *)(a1 + 20);
          v17 = *(_DWORD *)(v16 + 20);
          *(_DWORD *)(v16 + 20) = v17 - 1;
        }
        while ( v17 );
      }
      v4 = *(_DWORD *)(a1 + 20);
    }
    v3 = &v14[*(_DWORD *)(a1 + 32)];
  }
  else
  {
    v4 = *(_DWORD *)(a1 + 20);
  }
  v5 = v4 - 24;
  *(_DWORD *)(a1 + 20) = v4 - 24;
  v6 = *(_DWORD *)(v4 - 24);
  v7 = *(_DWORD *)(v4 + 16);
  v8 = *(_DWORD **)(v4 + 4);
  *(_DWORD *)(a1 + 12) = v6;
  *(_DWORD *)(a1 + 24) = *(_DWORD *)(v5 + 12);
  if ( !v7 )
  {
LABEL_9:
    *(_DWORD *)(a1 + 8) = v8;
    return v7 + 1;
  }
  if ( (unsigned int)v3 < *(_DWORD *)(a1 + 8) )
  {
    v9 = v7;
    while ( 1 )
    {
      --v9;
      *v8 = *(_DWORD *)v3;
      v8 += 2;
      v10 = *((_DWORD *)v3 + 1);
      v3 += 8;
      *(v8 - 1) = v10;
      if ( !v9 )
        goto LABEL_9;
      if ( *(_DWORD *)(a1 + 8) <= (unsigned int)v3 )
        goto LABEL_11;
    }
  }
  v9 = v7;
LABEL_11:
  if ( v9 <= 0 )
    goto LABEL_9;
  for ( i = 0; i != v9; ++i )
  {
    v13 = &v8[2 * i];
    v13[1] = 0;
  }
  *(_DWORD *)(a1 + 8) = &v8[2 * i];
  return v7 + 1;
}


// ===== 8517fc luaD_rawrunprotected =====
int __fastcall luaD_rawrunprotected(int a1, void (__fastcall *a2)(int, int), int a3)
{
  int result; // r0
  int v7; // [sp+10h] [bp-10Ch] BYREF
  struct __jmp_buf_tag v8; // [sp+14h] [bp-108h] BYREF
  int v9; // [sp+114h] [bp-8h]

  v7 = *(_DWORD *)(a1 + 96);
  *(_DWORD *)(a1 + 96) = &v7;
  v9 = 0;
  if ( !setjmp(&v8) )
    a2(a1, a3);
  result = v9;
  *(_DWORD *)(a1 + 96) = v7;
  return result;
}


// ===== 851860 luaD_pcall =====
int __fastcall luaD_pcall(int a1, void (__fastcall *a2)(int, int), int a3, int a4, int a5)
{
  int v5; // r5
  __int16 v8; // r9
  int v9; // r8
  int v10; // r7
  char v11; // r11
  int v12; // r6
  int v14; // r7
  int *v15; // r10
  int v16; // r3
  int v17; // r12
  int v18; // r0

  v5 = *(_DWORD *)(a1 + 100);
  *(_DWORD *)(a1 + 100) = a5;
  v8 = *(_WORD *)(a1 + 52);
  v9 = *(_DWORD *)(a1 + 20);
  v10 = *(_DWORD *)(a1 + 40);
  v11 = *(_BYTE *)(a1 + 57);
  v12 = luaD_rawrunprotected(a1, a2, a3);
  if ( v12 )
  {
    v14 = v9 - v10;
    v15 = (int *)(*(_DWORD *)(a1 + 32) + a4);
    luaF_close(a1, v15);
    luaD_seterrorobj(a1, v12, v15);
    v16 = *(_DWORD *)(a1 + 40);
    *(_WORD *)(a1 + 52) = v8;
    v17 = *(_DWORD *)(a1 + 48);
    *(_DWORD *)(a1 + 20) = v16 + v14;
    *(_DWORD *)(a1 + 12) = *(_DWORD *)(v16 + v14);
    v18 = *(_DWORD *)(v16 + v14 + 12);
    *(_BYTE *)(a1 + 57) = v11;
    *(_DWORD *)(a1 + 24) = v18;
    if ( v17 > 20000 && v14 <= (int)&stru_752D8.st_shndx + 1 )
      luaD_reallocCI((_DWORD *)a1, 20000);
  }
  *(_DWORD *)(a1 + 100) = v5;
  return v12;
}


// ===== 85191c luaD_protectedparser =====
int __fastcall luaD_protectedparser(_DWORD *a1, int a2, int a3)
{
  int v3; // lr
  int v4; // r12
  int v5; // r3
  int v7; // r6
  int v9; // [sp+Ch] [bp-14h] BYREF
  int v10; // [sp+10h] [bp-10h]
  int v11; // [sp+18h] [bp-8h]
  int v12; // [sp+1Ch] [bp-4h]

  v3 = a1[2];
  v4 = a1[25];
  v5 = a1[8];
  v9 = a2;
  v12 = a3;
  v10 = 0;
  v11 = 0;
  v7 = luaD_pcall((int)a1, (void (__fastcall *)(int, int))f_parser, (int)&v9, v3 - v5, v4);
  luaM_realloc_(a1, v10, v11, 0);
  return v7;
}


// ===== 851988 lua_resume =====
int __fastcall lua_resume(int a1, int a2)
{
  char *v3; // r1
  unsigned int v4; // r3
  __int16 v5; // r3
  int v6; // r2
  int v7; // r0
  int v8; // r5
  int *v9; // r2

  if ( *(_BYTE *)(a1 + 6) != 1 && (*(_BYTE *)(a1 + 6) || *(_DWORD *)(a1 + 20) != *(_DWORD *)(a1 + 40)) )
  {
    v3 = "cannot resume non-suspended coroutine";
    return resume_error((_DWORD *)a1, v3);
  }
  v4 = *(unsigned __int16 *)(a1 + 52);
  if ( v4 > 0xC7 )
  {
    v3 = "C stack overflow";
    return resume_error((_DWORD *)a1, v3);
  }
  v5 = v4 + 1;
  v6 = *(_DWORD *)(a1 + 8) - 8 * a2;
  *(_WORD *)(a1 + 54) = v5;
  *(_WORD *)(a1 + 52) = v5;
  v7 = luaD_rawrunprotected(a1, (void (__fastcall *)(int, int))resume, v6);
  v8 = v7;
  if ( v7 )
  {
    v9 = *(int **)(a1 + 8);
    *(_BYTE *)(a1 + 6) = v7;
    luaD_seterrorobj(a1, v7, v9);
    *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8) = *(_DWORD *)(a1 + 8);
  }
  else
  {
    v8 = *(unsigned __int8 *)(a1 + 6);
  }
  --*(_WORD *)(a1 + 52);
  return v8;
}


// ===== 851a60 luaD_throw =====
void __fastcall __noreturn luaD_throw(int a1, int a2)
{
  int v2; // r3
  int v5; // r3
  int *v6; // r3
  int v7; // r1
  int v8; // r3

  v2 = *(_DWORD *)(a1 + 96);
  if ( v2 )
  {
    *(_DWORD *)(v2 + 260) = a2;
    longjmp((struct __jmp_buf_tag *)(*(_DWORD *)(a1 + 96) + 4), 1);
  }
  v5 = *(_DWORD *)(a1 + 16);
  *(_BYTE *)(a1 + 6) = a2;
  if ( *(_DWORD *)(v5 + 88) )
  {
    v6 = *(int **)(a1 + 40);
    *(_DWORD *)(a1 + 20) = v6;
    v7 = *v6;
    *(_DWORD *)(a1 + 12) = *v6;
    luaF_close(a1, v7);
    luaD_seterrorobj(a1, a2, *(int **)(a1 + 12));
    v8 = *(_DWORD *)(a1 + 48);
    *(_BYTE *)(a1 + 57) = 1;
    *(_WORD *)(a1 + 52) = *(_WORD *)(a1 + 54);
    if ( v8 > 20000 && *(_DWORD *)(a1 + 20) - *(_DWORD *)(a1 + 40) <= 479975 )
      luaD_reallocCI((_DWORD *)a1, 20000);
    *(_DWORD *)(a1 + 96) = 0;
    *(_DWORD *)(a1 + 100) = 0;
    (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 16) + 88))(a1);
  }
  exit(1);
}


// ===== 851b2c growCI =====
int __fastcall growCI(_DWORD *a1)
{
  int v1; // r1
  int result; // r0

  v1 = a1[12];
  if ( v1 > 20000 )
    luaD_throw((int)a1, 5);
  luaD_reallocCI(a1, 2 * v1);
  if ( (int)a1[12] > 20000 )
    luaG_runerror(a1, (int)"stack overflow");
  result = a1[5] + 24;
  a1[5] = result;
  return result;
}


// ===== 851ba4 luaD_precall =====
int __fastcall luaD_precall(int a1, char *a2, char *a3)
{
  char *v3; // r5
  _DWORD *v6; // r6
  char *v7; // r7
  char *v8; // r3
  int v9; // t1
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r6
  char *v14; // r6
  int v15; // r0
  _DWORD *v16; // r0
  char *v17; // r6
  int v18; // r2
  int v19; // r3
  int result; // r0
  int v21; // r7
  unsigned int v22; // r3
  int v23; // r1
  char v24; // r2
  char *v25; // r5
  char *v26; // r10
  unsigned int v27; // r2
  int v28; // r0
  char **v29; // r0
  unsigned int v30; // r3
  unsigned int i; // r2
  char v32; // r0
  int v33; // r0
  int v34; // r5
  int v35; // r0
  int v36; // r2
  char *v37; // r12
  int v38; // r0
  _DWORD *v39; // r2
  int v40; // r1
  int v41; // r11
  char *v42; // r3
  int v43; // r7
  int *v44; // r3
  int v45; // r0
  int v46; // r10
  char *v47; // r11
  int v48; // r9
  int v49; // r6
  int v50; // r5
  _DWORD *v51; // r0
  int v52; // r3
  int v53; // r0
  int v54; // r10
  int v55; // [sp+4h] [bp-18h]
  int v56; // [sp+8h] [bp-14h]
  int v57; // [sp+Ch] [bp-10h]
  int v58; // [sp+10h] [bp-Ch]

  v3 = a2;
  if ( *((_DWORD *)a2 + 1) != 6 )
  {
    v6 = (_DWORD *)luaT_gettmbyobj(a1);
    v7 = &v3[-*(_DWORD *)(a1 + 32)];
    if ( v6[1] != 6 )
      luaG_typeerror((_DWORD *)a1, (int)v3, "call");
    v8 = *(char **)(a1 + 8);
    if ( v3 < v8 )
    {
      do
      {
        v9 = *((_DWORD *)v8 - 2);
        v8 -= 8;
        v10 = *((_DWORD *)v8 + 1);
        *((_DWORD *)v8 + 2) = v9;
        *((_DWORD *)v8 + 3) = v10;
      }
      while ( v3 < v8 );
      v8 = *(char **)(a1 + 8);
    }
    if ( *(_DWORD *)(a1 + 28) - (int)v8 <= 8 )
    {
      luaD_growstack((_DWORD *)a1, 1);
      v8 = *(char **)(a1 + 8);
    }
    *(_DWORD *)(a1 + 8) = v8 + 8;
    v11 = *(_DWORD *)(a1 + 32);
    *(_DWORD *)&v7[v11] = *v6;
    v3 = &v7[v11];
    *(_DWORD *)&v7[v11 + 4] = v6[1];
  }
  v12 = *(_DWORD *)v3;
  v13 = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(*(_DWORD *)(a1 + 20) + 12) = *(_DWORD *)(a1 + 24);
  v14 = &v3[-v13];
  if ( *(_BYTE *)(v12 + 6) )
  {
    if ( *(_DWORD *)(a1 + 28) - *(_DWORD *)(a1 + 8) <= 160 )
      luaD_growstack((_DWORD *)a1, 20);
    v15 = *(_DWORD *)(a1 + 20);
    if ( v15 == *(_DWORD *)(a1 + 36) )
    {
      v16 = (_DWORD *)growCI((_DWORD *)a1);
    }
    else
    {
      v16 = (_DWORD *)(v15 + 24);
      *(_DWORD *)(a1 + 20) = v16;
    }
    v17 = &v14[*(_DWORD *)(a1 + 32)];
    *v16 = v17 + 8;
    v16[1] = v17;
    v18 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 12) = v17 + 8;
    v16[4] = a3;
    v16[2] = v18 + 160;
    if ( (*(_BYTE *)(a1 + 56) & 1) != 0 )
      luaD_callhook(a1, 0, -1);
    v19 = (*(int (__fastcall **)(int))(**(_DWORD **)(*(_DWORD *)(a1 + 20) + 4) + 16))(a1);
    if ( v19 >= 0 )
    {
      luaD_poscall(a1, (char *)(*(_DWORD *)(a1 + 8) - 8 * v19));
      return 1;
    }
    else
    {
      return 2;
    }
  }
  else
  {
    v21 = *(_DWORD *)(v12 + 16);
    v22 = *(_DWORD *)(a1 + 8);
    v23 = *(unsigned __int8 *)(v21 + 75);
    if ( (int)(*(_DWORD *)(a1 + 28) - v22) <= 8 * v23 )
    {
      luaD_growstack((_DWORD *)a1, v23);
      v22 = *(_DWORD *)(a1 + 8);
    }
    v24 = *(_BYTE *)(v21 + 74);
    v25 = &v14[*(_DWORD *)(a1 + 32)];
    if ( v24 )
    {
      v33 = v22 - (_DWORD)v25;
      v34 = *(unsigned __int8 *)(v21 + 73);
      v35 = v33 >> 3;
      v55 = v35 - 1;
      if ( v35 - 1 < v34 )
      {
        v36 = v35 - 1;
        do
        {
          ++v36;
          *(_DWORD *)(v22 + 4) = 0;
          v22 += 8;
          *(_DWORD *)(a1 + 8) = v22;
        }
        while ( v34 > v36 );
        v24 = *(_BYTE *)(v21 + 74);
        v55 = v34;
      }
      if ( (v24 & 4) != 0 )
      {
        v57 = v55 - v34;
        if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
          luaC_step(a1);
        v45 = luaH_new(a1, v57, 1);
        v56 = v45;
        if ( v57 > 0 )
        {
          v46 = -8 * v57;
          v47 = v14;
          v48 = 0;
          v58 = v34;
          v49 = v45;
          do
          {
            ++v48;
            v50 = *(_DWORD *)(a1 + 8);
            v51 = (_DWORD *)luaH_setnum(a1, v49, v48);
            *v51 = *(_DWORD *)(v50 + v46);
            v52 = *(_DWORD *)(v50 + v46 + 4);
            v46 += 8;
            v51[1] = v52;
          }
          while ( v48 != v57 );
          v34 = v58;
          v14 = v47;
        }
        v53 = luaS_newlstr(a1, "n", 1u);
        v54 = luaH_setstr(a1, v56, v53);
        *(_DWORD *)(v54 + 4) = 3;
        *(float *)v54 = (float)v57;
      }
      else
      {
        v56 = 0;
      }
      v26 = *(char **)(a1 + 8);
      v37 = &v26[-8 * v55];
      if ( v34 )
      {
        v38 = 0;
        v39 = *(_DWORD **)(a1 + 8);
        v40 = 0;
        v41 = v21;
        while ( 1 )
        {
          *(_DWORD *)(a1 + 8) = v39 + 2;
          v42 = &v37[v38];
          ++v40;
          *v39 = *(_DWORD *)&v37[v38];
          v43 = *(_DWORD *)&v37[v38 + 4];
          v38 += 8;
          v39[1] = v43;
          *((_DWORD *)v42 + 1) = 0;
          if ( v34 <= v40 )
            break;
          v39 = *(_DWORD **)(a1 + 8);
        }
        v21 = v41;
      }
      if ( v56 )
      {
        v44 = *(int **)(a1 + 8);
        *(_DWORD *)(a1 + 8) = v44 + 2;
        *v44 = v56;
        v44[1] = 5;
      }
      v25 = &v14[*(_DWORD *)(a1 + 32)];
    }
    else
    {
      v26 = v25 + 8;
      v27 = (unsigned int)&v25[8 * *(unsigned __int8 *)(v21 + 73) + 8];
      if ( v27 < v22 )
        *(_DWORD *)(a1 + 8) = v27;
    }
    v28 = *(_DWORD *)(a1 + 20);
    if ( v28 == *(_DWORD *)(a1 + 36) )
    {
      v29 = (char **)growCI((_DWORD *)a1);
    }
    else
    {
      v29 = (char **)(v28 + 24);
      *(_DWORD *)(a1 + 20) = v29;
    }
    *v29 = v26;
    v29[1] = v25;
    *(_DWORD *)(a1 + 12) = v26;
    v29[2] = &v26[8 * *(unsigned __int8 *)(v21 + 75)];
    *(_DWORD *)(a1 + 24) = *(_DWORD *)(v21 + 12);
    v29[4] = a3;
    v29[5] = nullptr;
    v30 = *(_DWORD *)(a1 + 8);
    for ( i = (unsigned int)v29[2]; i > v30; v30 += 8 )
    {
      *(_DWORD *)(v30 + 4) = 0;
      i = (unsigned int)v29[2];
    }
    v32 = *(_BYTE *)(a1 + 56);
    *(_DWORD *)(a1 + 8) = i;
    result = v32 & 1;
    if ( result )
    {
      *(_DWORD *)(a1 + 24) += 4;
      luaD_callhook(a1, 0, -1);
      *(_DWORD *)(a1 + 24) -= 4;
      return 0;
    }
  }
  return result;
}


// ===== 852044 resume =====
int __fastcall resume(int a1, char *a2)
{
  int v3; // r3
  int result; // r0

  v3 = *(_DWORD *)(a1 + 20);
  if ( *(_BYTE *)(a1 + 6) )
  {
    *(_BYTE *)(a1 + 6) = 0;
    if ( !*(_BYTE *)(**(_DWORD **)(v3 + 4) + 6) )
    {
      *(_DWORD *)(a1 + 12) = *(_DWORD *)v3;
      return luaV_execute(a1, -1431655765 * ((v3 - *(_DWORD *)(a1 + 40)) >> 3));
    }
    if ( luaD_poscall(a1, a2) )
    {
      v3 = *(_DWORD *)(a1 + 20);
      *(_DWORD *)(a1 + 8) = *(_DWORD *)(v3 + 8);
      return luaV_execute(a1, -1431655765 * ((v3 - *(_DWORD *)(a1 + 40)) >> 3));
    }
LABEL_6:
    v3 = *(_DWORD *)(a1 + 20);
    return luaV_execute(a1, -1431655765 * ((v3 - *(_DWORD *)(a1 + 40)) >> 3));
  }
  result = luaD_precall(a1, a2 - 8, (char *)0xFFFFFFFF);
  if ( !result )
    goto LABEL_6;
  return result;
}


// ===== 8520e8 luaD_call =====
int __fastcall luaD_call(int a1, char *a2, char *a3)
{
  unsigned int v4; // r3
  int result; // r0
  int v6; // r3

  v4 = (unsigned __int16)(*(_WORD *)(a1 + 52) + 1);
  *(_WORD *)(a1 + 52) = v4;
  if ( v4 > 0xC7 )
  {
    if ( v4 == 200 )
      luaG_runerror((_DWORD *)a1, (int)"C stack overflow");
    if ( v4 > 0xE0 )
      luaD_throw(a1, 5);
  }
  result = luaD_precall(a1, a2, a3);
  if ( !result )
    result = luaV_execute(a1, 1);
  v6 = *(_DWORD *)(a1 + 16);
  --*(_WORD *)(a1 + 52);
  if ( *(_DWORD *)(v6 + 68) >= *(_DWORD *)(v6 + 64) )
    return luaC_step(a1);
  return result;
}


// ===== 8521ac DumpBlock =====
int __fastcall DumpBlock(int result, int a2, int a3)
{
  if ( !*(_DWORD *)(a3 + 16) )
  {
    result = (*(int (__fastcall **)(_DWORD, int, int, _DWORD))(a3 + 4))(*(_DWORD *)a3, result, a2, *(_DWORD *)(a3 + 8));
    *(_DWORD *)(a3 + 16) = result;
  }
  return result;
}


// ===== 8521e0 DumpString =====
int __fastcall DumpString(int a1, int a2)
{
  int v3; // r5
  int v5; // [sp+4h] [bp-8h] BYREF

  if ( !a1 || (v3 = a1 + 16, a1 == -16) )
  {
    v5 = 0;
    return DumpBlock((int)&v5, 4, a2);
  }
  else
  {
    v5 = *(_DWORD *)(a1 + 12) + 1;
    DumpBlock((int)&v5, 4, a2);
    return DumpBlock(v3, v5, a2);
  }
}


// ===== 85224c DumpVector.clone.0 =====
int __fastcall DumpVector_clone_0(int a1, int a2, int a3)
{
  int v7; // [sp+4h] [bp-4h] BYREF

  v7 = a2;
  DumpBlock((int)&v7, 4, a3);
  return DumpBlock(a1, 4 * a2, a3);
}


// ===== 85228c DumpFunction =====
int __fastcall DumpFunction(int a1, int a2, int a3)
{
  int v4; // r0
  int v6; // r11
  int i; // r7
  int v8; // r10
  int v9; // r8
  int v10; // r1
  int v11; // r3
  int v12; // r8
  int j; // r7
  int v14; // r0
  int v15; // r1
  int v16; // r7
  int v17; // r10
  int v18; // r8
  int v19; // r3
  int v20; // r8
  int v21; // r7
  int result; // r0
  int v23; // r0
  int v24; // [sp+4h] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 32);
  if ( v4 == a2 || *(_DWORD *)(a3 + 12) )
    v4 = 0;
  DumpString(v4, a3);
  v24 = *(_DWORD *)(a1 + 60);
  DumpBlock((int)&v24, 4, a3);
  v24 = *(_DWORD *)(a1 + 64);
  DumpBlock((int)&v24, 4, a3);
  LOBYTE(v24) = *(_BYTE *)(a1 + 72);
  DumpBlock((int)&v24, 1, a3);
  LOBYTE(v24) = *(_BYTE *)(a1 + 73);
  DumpBlock((int)&v24, 1, a3);
  LOBYTE(v24) = *(_BYTE *)(a1 + 74);
  DumpBlock((int)&v24, 1, a3);
  LOBYTE(v24) = *(_BYTE *)(a1 + 75);
  DumpBlock((int)&v24, 1, a3);
  DumpVector_clone_0(*(_DWORD *)(a1 + 12), *(_DWORD *)(a1 + 44), a3);
  v24 = *(_DWORD *)(a1 + 40);
  v6 = v24;
  DumpBlock((int)&v24, 4, a3);
  if ( v6 > 0 )
  {
    for ( i = 0; i != v6; ++i )
    {
      while ( 1 )
      {
        v8 = *(_DWORD *)(a1 + 8);
        v9 = v8 + 8 * i;
        LOBYTE(v24) = *(_DWORD *)(v9 + 4);
        DumpBlock((int)&v24, 1, a3);
        v10 = *(_DWORD *)(v9 + 4);
        if ( v10 != 3 )
          break;
        v11 = *(_DWORD *)(v8 + 8 * i++);
        v24 = v11;
        DumpBlock((int)&v24, 4, a3);
        if ( i == v6 )
          goto LABEL_11;
      }
      if ( v10 == 4 )
      {
        DumpString(*(_DWORD *)(v8 + 8 * i), a3);
      }
      else if ( v10 == 1 )
      {
        LOBYTE(v24) = *(_DWORD *)(v8 + 8 * i);
        DumpBlock((int)&v24, 1, a3);
      }
    }
  }
LABEL_11:
  v24 = *(_DWORD *)(a1 + 52);
  v12 = v24;
  DumpBlock((int)&v24, 4, a3);
  if ( v12 > 0 )
  {
    for ( j = 0; j != v12; ++j )
    {
      v14 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * j);
      DumpFunction(v14, *(_DWORD *)(a1 + 32), a3);
    }
  }
  if ( *(_DWORD *)(a3 + 12) )
    v15 = 0;
  else
    v15 = *(_DWORD *)(a1 + 48);
  DumpVector_clone_0(*(_DWORD *)(a1 + 20), v15, a3);
  v16 = *(_DWORD *)(a3 + 12);
  if ( v16 )
  {
    v24 = 0;
    DumpBlock((int)&v24, 4, a3);
  }
  else
  {
    v24 = *(_DWORD *)(a1 + 56);
    v17 = v24;
    DumpBlock((int)&v24, 4, a3);
    if ( v17 > 0 )
    {
      v18 = 0;
      do
      {
        ++v18;
        DumpString(*(_DWORD *)(*(_DWORD *)(a1 + 24) + v16), a3);
        v24 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v16 + 4);
        DumpBlock((int)&v24, 4, a3);
        v19 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v16 + 8);
        v16 += 12;
        v24 = v19;
        DumpBlock((int)&v24, 4, a3);
      }
      while ( v18 != v17 );
    }
  }
  v20 = *(_DWORD *)(a3 + 12);
  if ( v20 )
  {
    v24 = 0;
    return DumpBlock((int)&v24, 4, a3);
  }
  else
  {
    v24 = *(_DWORD *)(a1 + 36);
    v21 = v24;
    result = DumpBlock((int)&v24, 4, a3);
    if ( v21 > 0 )
    {
      do
      {
        v23 = *(_DWORD *)(*(_DWORD *)(a1 + 28) + 4 * v20++);
        result = DumpString(v23, a3);
      }
      while ( v20 != v21 );
    }
  }
  return result;
}


// ===== 85259c luaU_dump =====
int __fastcall luaU_dump(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD v7[4]; // [sp+4h] [bp-14h] BYREF
  int v8; // [sp+14h] [bp-4h]
  _BYTE v9[12]; // [sp+18h] [bp+0h] BYREF

  v7[2] = a4;
  v7[0] = a1;
  v7[3] = a5;
  v7[1] = a3;
  v8 = 0;
  luaU_header(v9);
  DumpBlock((int)v9, 12, (int)v7);
  DumpFunction(a2, 0, (int)v7);
  return v8;
}


// ===== 852634 luaF_getlocalname =====
int __fastcall luaF_getlocalname(int a1, int a2, int a3)
{
  int v3; // r3
  _DWORD *v4; // r4
  _DWORD *v5; // r0
  int v6; // r12

  v3 = *(_DWORD *)(a1 + 56);
  if ( v3 <= 0 )
    return 0;
  v4 = *(_DWORD **)(a1 + 24);
  if ( a3 < v4[1] )
    return 0;
  v5 = v4 + 3;
  v6 = 0;
  while ( 1 )
  {
    ++v6;
    if ( a3 < v4[2] && !--a2 )
      break;
    v4 = v5;
    v5 += 3;
    if ( v6 == v3 || *(v5 - 2) > a3 )
      return 0;
  }
  return *v4 + 16;
}


// ===== 8526ac luaF_freeclosure =====
int __fastcall luaF_freeclosure(int a1, int a2)
{
  int v2; // r2
  int v3; // r2
  int v4; // r2

  v2 = *(unsigned __int8 *)(a2 + 7);
  if ( *(_BYTE *)(a2 + 6) )
    v3 = 8 * v2;
  else
    v3 = v2 + 5;
  if ( *(_BYTE *)(a2 + 6) )
    v4 = v3 + 20;
  else
    v4 = 4 * v3;
  return luaM_realloc_(a1, a2, v4, 0);
}


// ===== 8526d0 luaF_freeproto =====
int __fastcall luaF_freeproto(int a1, _DWORD *a2)
{
  luaM_realloc_(a1, a2[3], 4 * a2[11], 0);
  luaM_realloc_(a1, a2[4], 4 * a2[13], 0);
  luaM_realloc_(a1, a2[2], 8 * a2[10], 0);
  luaM_realloc_(a1, a2[5], 4 * a2[12], 0);
  luaM_realloc_(a1, a2[6], 12 * a2[14], 0);
  luaM_realloc_(a1, a2[7], 4 * a2[9], 0);
  return luaM_realloc_(a1, a2, 76, 0);
}


// ===== 852784 luaF_freeupval =====
int __fastcall luaF_freeupval(int a1, _DWORD *a2)
{
  if ( (_DWORD *)a2[2] != a2 + 3 )
  {
    *(_DWORD *)(a2[4] + 12) = a2[3];
    *(_DWORD *)(a2[3] + 16) = a2[4];
  }
  return luaM_realloc_(a1, a2, 20, 0);
}


// ===== 8527b8 luaF_findupval =====
int __fastcall luaF_findupval(int a1, unsigned int a2)
{
  int v2; // r3
  int v4; // r6
  int *v5; // r5
  unsigned int v6; // r2
  int v7; // r1
  unsigned int v8; // r2
  int result; // r0
  char v10; // r2
  int v11; // r3
  unsigned __int8 v12; // r2

  v2 = *(_DWORD *)(a1 + 88);
  v4 = *(_DWORD *)(a1 + 16);
  v5 = (int *)(a1 + 88);
  if ( !v2 || (v6 = *(_DWORD *)(v2 + 8), a2 > v6) )
  {
LABEL_9:
    result = luaM_realloc_(a1, 0, 0, 20);
    *(_BYTE *)(result + 4) = 10;
    v10 = *(_BYTE *)(v4 + 20);
    *(_DWORD *)(result + 8) = a2;
    *(_BYTE *)(result + 5) = v10 & 3;
    *(_DWORD *)result = *v5;
    *v5 = result;
    *(_DWORD *)(result + 12) = v4 + 104;
    v11 = *(_DWORD *)(v4 + 120);
    *(_DWORD *)(result + 16) = v11;
    *(_DWORD *)(v11 + 12) = result;
    *(_DWORD *)(v4 + 120) = result;
    return result;
  }
  if ( v6 != a2 )
  {
    while ( 1 )
    {
      v5 = (int *)v2;
      v2 = *(_DWORD *)v2;
      if ( !v2 )
        goto LABEL_9;
      v8 = *(_DWORD *)(v2 + 8);
      v7 = v2;
      if ( v8 < a2 )
        goto LABEL_9;
      if ( v8 == a2 )
        goto LABEL_10;
    }
  }
  v7 = *(_DWORD *)(a1 + 88);
LABEL_10:
  v12 = *(_BYTE *)(v2 + 5);
  if ( (v12 & (unsigned __int8)~*(_BYTE *)(v4 + 20) & 3) != 0 )
    *(_BYTE *)(v2 + 5) = v12 ^ 3;
  return v7;
}


// ===== 85288c luaF_newproto =====
int __fastcall luaF_newproto(int a1)
{
  int v2; // r5

  v2 = luaM_realloc_(a1, 0, 0, 76);
  luaC_link(a1, v2, 9);
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 8) = 0;
  *(_DWORD *)(v2 + 40) = 0;
  *(_DWORD *)(v2 + 16) = 0;
  *(_DWORD *)(v2 + 52) = 0;
  *(_DWORD *)(v2 + 12) = 0;
  *(_DWORD *)(v2 + 44) = 0;
  *(_DWORD *)(v2 + 48) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_BYTE *)(v2 + 72) = 0;
  *(_DWORD *)(v2 + 28) = 0;
  *(_BYTE *)(v2 + 73) = 0;
  *(_BYTE *)(v2 + 74) = 0;
  *(_BYTE *)(v2 + 75) = 0;
  *(_DWORD *)(v2 + 20) = 0;
  *(_DWORD *)(v2 + 56) = 0;
  *(_DWORD *)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 60) = 0;
  *(_DWORD *)(v2 + 64) = 0;
  return v2;
}


// ===== 852910 luaF_newupval =====
int __fastcall luaF_newupval(int a1)
{
  int v2; // r5

  v2 = luaM_realloc_(a1, 0, 0, 20);
  luaC_link(a1, v2, 10);
  *(_DWORD *)(v2 + 8) = v2 + 12;
  *(_DWORD *)(v2 + 16) = 0;
  return v2;
}


// ===== 852954 luaF_newLclosure =====
int __fastcall luaF_newLclosure(int a1, int a2, int a3)
{
  int v6; // r7
  int v7; // r3
  int v8; // r2

  v6 = luaM_realloc_(a1, 0, 0, 4 * (a2 + 5));
  luaC_link(a1, v6, 6);
  v7 = 0;
  *(_DWORD *)(v6 + 12) = a3;
  *(_BYTE *)(v6 + 6) = 0;
  *(_BYTE *)(v6 + 7) = a2;
  if ( a2 )
  {
    v8 = v6 + 4 * a2 + 20;
    do
    {
      ++v7;
      *(_DWORD *)(v8 - 4) = 0;
      v8 -= 4;
    }
    while ( v7 != a2 );
  }
  return v6;
}


// ===== 8529c8 luaF_newCclosure =====
int __fastcall luaF_newCclosure(int a1, int a2, int a3)
{
  char v3; // r4
  int v6; // r7

  v3 = a2;
  v6 = luaM_realloc_(a1, 0, 0, 8 * a2 + 20);
  luaC_link(a1, v6, 6);
  *(_BYTE *)(v6 + 6) = 1;
  *(_DWORD *)(v6 + 12) = a3;
  *(_BYTE *)(v6 + 7) = v3;
  return v6;
}


// ===== 852a18 luaF_close =====
int __fastcall luaF_close(int a1, unsigned int a2)
{
  int v2; // r6
  int v5; // r3
  int result; // r0
  int v7; // r12
  int v8; // r1
  _DWORD *v9; // r2
  int v10; // r2

  v2 = *(_DWORD *)(a1 + 16);
LABEL_2:
  v5 = *(_DWORD *)(a1 + 88);
  result = a1;
  v7 = v5 + 12;
  v8 = v5;
  if ( v5 )
  {
    while ( *(_DWORD *)(v5 + 8) >= a2 )
    {
      *(_DWORD *)(a1 + 88) = *(_DWORD *)v5;
      if ( (*(_BYTE *)(v5 + 5) & (unsigned __int8)~*(_BYTE *)(v2 + 20) & 3) == 0 )
      {
        *(_DWORD *)(*(_DWORD *)(v5 + 16) + 12) = *(_DWORD *)(v5 + 12);
        *(_DWORD *)(*(_DWORD *)(v5 + 12) + 16) = *(_DWORD *)(v5 + 16);
        v9 = *(_DWORD **)(v5 + 8);
        *(_DWORD *)(v5 + 12) = *v9;
        v10 = v9[1];
        *(_DWORD *)(v5 + 8) = v7;
        *(_DWORD *)(v5 + 16) = v10;
        luaC_linkupval(result, v8);
        goto LABEL_2;
      }
      luaF_freeupval(a1, (_DWORD *)v5);
      v5 = *(_DWORD *)(a1 + 88);
      result = a1;
      v7 = v5 + 12;
      v8 = v5;
      if ( !v5 )
        return result;
    }
  }
  return result;
}


// ===== 852ac8 reallymarkobject =====
int __fastcall reallymarkobject(int result, int a2)
{
  char v2; // r3
  int v3; // r4
  int v4; // r5
  int v5; // r2
  char v6; // r3
  int *v7; // r3
  int v8; // r1

  v2 = *(_BYTE *)(a2 + 5);
  v3 = a2;
  v4 = result;
  while ( 2 )
  {
    v5 = *(unsigned __int8 *)(v3 + 4);
    v6 = v2 & 0xFC;
    *(_BYTE *)(v3 + 5) = v6;
    switch ( v5 )
    {
      case 5:
        *(_DWORD *)(v3 + 24) = *(_DWORD *)(v4 + 36);
        *(_DWORD *)(v4 + 36) = v3;
        break;
      case 6:
        *(_DWORD *)(v3 + 8) = *(_DWORD *)(v4 + 36);
        *(_DWORD *)(v4 + 36) = v3;
        break;
      case 7:
        v8 = *(_DWORD *)(v3 + 8);
        *(_BYTE *)(v3 + 5) = v6 | 4;
        if ( v8 )
        {
          if ( (*(_BYTE *)(v8 + 5) & 3) != 0 )
            result = reallymarkobject(v4);
        }
        v3 = *(_DWORD *)(v3 + 12);
        v2 = *(_BYTE *)(v3 + 5);
        if ( (v2 & 3) != 0 )
          continue;
        break;
      case 8:
        *(_DWORD *)(v3 + 92) = *(_DWORD *)(v4 + 36);
        *(_DWORD *)(v4 + 36) = v3;
        break;
      case 9:
        *(_DWORD *)(v3 + 68) = *(_DWORD *)(v4 + 36);
        *(_DWORD *)(v4 + 36) = v3;
        break;
      case 10:
        v7 = *(int **)(v3 + 8);
        if ( v7[1] > 3 && (*(_BYTE *)(*v7 + 5) & 3) != 0 )
        {
          result = reallymarkobject(v4);
          v7 = *(int **)(v3 + 8);
        }
        if ( v7 == (int *)(v3 + 12) )
          *(_BYTE *)(v3 + 5) |= 4u;
        break;
      default:
        return result;
    }
    break;
  }
  return result;
}


// ===== 852bd8 markroot =====
int __fastcall markroot(int result)
{
  int v1; // r5
  int v2; // r4
  int v3; // r1
  int v4; // r1
  int v5; // r3
  int v6; // r1
  int v7; // r4
  int v8; // r6
  int v9; // r1

  v1 = *(_DWORD *)(result + 16);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 100);
  *(_DWORD *)(v1 + 44) = 0;
  *(_DWORD *)(v1 + 36) = 0;
  *(_DWORD *)(v1 + 40) = 0;
  if ( (*(_BYTE *)(v3 + 5) & 3) != 0 )
  {
    result = reallymarkobject(v1, v3);
    v3 = *(_DWORD *)(v1 + 100);
  }
  if ( *(int *)(v3 + 76) > 3 )
  {
    v4 = *(_DWORD *)(v3 + 72);
    if ( (*(_BYTE *)(v4 + 5) & 3) != 0 )
      result = reallymarkobject(v1, v4);
  }
  v5 = *(_DWORD *)(v2 + 16);
  if ( *(int *)(v5 + 96) > 3 )
  {
    v6 = *(_DWORD *)(v5 + 92);
    if ( (*(_BYTE *)(v6 + 5) & 3) != 0 )
      result = reallymarkobject(v1, v6);
  }
  v7 = v1;
  v8 = v1 + 36;
  do
  {
    while ( 1 )
    {
      v9 = *(_DWORD *)(v7 + 124);
      v7 += 4;
      if ( v9 )
      {
        if ( (*(_BYTE *)(v9 + 5) & 3) != 0 )
          break;
      }
      if ( v7 == v8 )
        goto LABEL_14;
    }
    result = reallymarkobject(v1, v9);
  }
  while ( v7 != v8 );
LABEL_14:
  *(_BYTE *)(v1 + 21) = 1;
  return result;
}


// ===== 852cb4 luaC_barrierf =====
int __fastcall luaC_barrierf(int a1, int a2, int a3)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 16);
  if ( *(_BYTE *)(result + 21) == 1 )
    return reallymarkobject(result, a3);
  *(_BYTE *)(a2 + 5) = *(_BYTE *)(result + 20) & 3 | *(_BYTE *)(a2 + 5) & 0xF8;
  return result;
}


// ===== 852ce8 luaC_barrierback =====
int __fastcall luaC_barrierback(int result, int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(result + 16);
  *(_BYTE *)(a2 + 5) &= ~4u;
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(v2 + 40);
  *(_DWORD *)(v2 + 40) = a2;
  return result;
}


// ===== 852d08 luaC_link =====
int __fastcall luaC_link(int a1, int a2, char a3)
{
  int v3; // r3
  char v4; // r0
  int result; // r0

  v3 = *(_DWORD *)(a1 + 16);
  *(_DWORD *)a2 = *(_DWORD *)(v3 + 28);
  v4 = *(_BYTE *)(v3 + 20);
  *(_DWORD *)(v3 + 28) = a2;
  *(_BYTE *)(a2 + 4) = a3;
  result = v4 & 3;
  *(_BYTE *)(a2 + 5) = result;
  return result;
}


// ===== 852d2c luaC_linkupval =====
int __fastcall luaC_linkupval(int result, int a2)
{
  int v2; // r2
  char v3; // r12
  int *v4; // r2
  char v5; // r12
  int v6; // r2

  v2 = *(_DWORD *)(result + 16);
  *(_DWORD *)a2 = *(_DWORD *)(v2 + 28);
  *(_DWORD *)(v2 + 28) = a2;
  v3 = *(_BYTE *)(a2 + 5);
  if ( (v3 & 7) == 0 )
  {
    if ( *(_BYTE *)(v2 + 21) == 1 )
    {
      v4 = *(int **)(a2 + 8);
      v5 = v3 | 4;
      *(_BYTE *)(a2 + 5) = v5;
      if ( v4[1] > 3 )
      {
        v6 = *v4;
        if ( (*(_BYTE *)(v6 + 5) & 3) != 0 && (v5 & 4) != 0 )
          return luaC_barrierf(result, a2, v6);
      }
    }
    else
    {
      *(_BYTE *)(a2 + 5) = *(_BYTE *)(v2 + 20) & 3 | v3 & 0xF8;
    }
  }
  return result;
}


// ===== 852dac luaC_separateudata =====
int __fastcall luaC_separateudata(int a1, int a2)
{
  int v2; // r7
  int **v5; // r5
  int v6; // r8
  int *v7; // r4
  char v8; // r3
  int v9; // r0
  int *v11; // r3
  int v12; // r2
  _DWORD *v13; // r3
  bool v14; // zf

  v2 = *(_DWORD *)(a1 + 16);
  v5 = *(int ***)(v2 + 100);
  v6 = 0;
  while ( 1 )
  {
    v7 = *v5;
    if ( !*v5 )
      return v6;
    while ( 1 )
    {
      v8 = *((_BYTE *)v7 + 5);
      if ( !(a2 | v8 & 3) || (*((_BYTE *)v7 + 5) & 8) != 0 )
        goto LABEL_8;
      v9 = v7[2];
      if ( v9 )
      {
        if ( (*(_BYTE *)(v9 + 6) & 4) == 0 )
          break;
      }
LABEL_7:
      *((_BYTE *)v7 + 5) = v8 | 8;
LABEL_8:
      v5 = (int **)v7;
      v7 = (int *)*v7;
      if ( !v7 )
        return v6;
    }
    if ( !luaT_gettm(v9, 2, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 168)) )
    {
      v8 = *((_BYTE *)v7 + 5);
      goto LABEL_7;
    }
    v11 = (int *)*v7;
    v12 = v7[4];
    *((_BYTE *)v7 + 5) |= 8u;
    *v5 = v11;
    v13 = *(_DWORD **)(v2 + 48);
    v6 += v12 + 24;
    v14 = v13 == nullptr;
    if ( v13 )
      v13 = (_DWORD *)*v13;
    else
      *v7 = (int)v7;
    if ( !v14 )
    {
      *v7 = (int)v13;
      **(_DWORD **)(v2 + 48) = v7;
    }
    *(_DWORD *)(v2 + 48) = v7;
  }
}


// ===== 852e84 propagatemark =====
int __fastcall propagatemark(_DWORD *a1)
{
  int v1; // r4
  int v3; // r3
  int v4; // r3
  int v5; // r6
  int v6; // r3
  int v7; // r1
  int v8; // r3
  int v9; // r2
  int v10; // r6
  int v11; // r1
  int v12; // r3
  int v13; // r2
  int v14; // r1
  int v15; // r3
  int v17; // r3
  int v18; // r2
  int v19; // r1
  unsigned int v20; // r3
  unsigned int v21; // r1
  unsigned int v22; // r7
  unsigned int v23; // r2
  int *i; // r6
  int v25; // r3
  int v26; // r5
  int v27; // r1
  int v28; // r1
  int v29; // r11
  _BOOL4 v30; // r10
  int v31; // r9
  int v32; // r6
  int v33; // r3
  int v34; // r1
  int v35; // r1
  int v36; // r0
  int v37; // r6
  int v38; // r7
  int v39; // r1
  int v40; // r1
  int v41; // r7
  int v42; // r6
  int v43; // r1
  int v44; // r7
  int v45; // r8
  int v46; // r3
  int *v47; // r6
  int v48; // r1
  _DWORD *v49; // r0
  const char *v50; // r6
  _BOOL4 v51; // r0
  int v52; // [sp+4h] [bp-8h]
  int v53; // [sp+4h] [bp-8h]

  v1 = a1[9];
  v3 = *(unsigned __int8 *)(v1 + 4) - 5;
  *(_BYTE *)(v1 + 5) |= 4u;
  switch ( v3 )
  {
    case 0:
      a1[9] = *(_DWORD *)(v1 + 24);
      v28 = *(_DWORD *)(v1 + 8);
      if ( v28
        && ((*(_BYTE *)(v28 + 5) & 3) == 0 || (reallymarkobject((int)a1, v28), (v28 = *(_DWORD *)(v1 + 8)) != 0))
        && (*(_BYTE *)(v28 + 6) & 8) == 0
        && (v49 = (_DWORD *)luaT_gettm(v28, 3, a1[43])) != nullptr
        && v49[1] == 4
        && (v50 = (const char *)(*v49 + 16),
            v30 = strchr(v50, 107) != nullptr,
            v51 = strchr(v50, 118) != nullptr,
            v51 || v30) )
      {
        *(_BYTE *)(v1 + 5) = (8 * v30) | (16 * v51) | *(_BYTE *)(v1 + 5) & 0xE7;
        *(_DWORD *)(v1 + 24) = a1[11];
        a1[11] = v1;
        if ( v51 && v30 )
        {
LABEL_91:
          *(_BYTE *)(v1 + 5) &= ~4u;
          return (20 << *(_BYTE *)(v1 + 7)) + 8 * (*(_DWORD *)(v1 + 28) + 4);
        }
        if ( v51 )
        {
          v29 = 1;
          v31 = 1;
          goto LABEL_84;
        }
        v29 = 1;
      }
      else
      {
        v29 = 0;
        v30 = 0;
      }
      v31 = *(_DWORD *)(v1 + 28);
      v32 = 8 * (v31 - 1);
      while ( v31 )
      {
        v33 = *(_DWORD *)(v1 + 12);
        --v31;
        if ( *(int *)(v33 + v32 + 4) > 3 && (v34 = *(_DWORD *)(v33 + v32), (*(_BYTE *)(v34 + 5) & 3) != 0) )
        {
          reallymarkobject((int)a1, v34);
          v32 -= 8;
        }
        else
        {
          v32 -= 8;
        }
      }
LABEL_84:
      v44 = 1 << *(_BYTE *)(v1 + 7);
      v45 = 20 * (v44 - 1);
      v46 = 11;
      while ( v44 )
      {
        --v44;
        v47 = (int *)(*(_DWORD *)(v1 + 16) + v45);
        if ( v47[1] )
        {
          if ( !v30 && v47[3] > 3 )
          {
            v48 = v47[2];
            if ( (*(_BYTE *)(v48 + 5) & 3) != 0 )
            {
              v53 = v46;
              reallymarkobject((int)a1, v48);
              v46 = v53;
            }
          }
          if ( !v31 && v47[1] > 3 && (*(_BYTE *)(*v47 + 5) & 3) != 0 )
          {
            v52 = v46;
            v45 -= 20;
            reallymarkobject((int)a1, *v47);
            v46 = v52;
            continue;
          }
        }
        else if ( v47[3] > 3 )
        {
          v47[3] = v46;
        }
        v45 -= 20;
      }
      if ( v29 )
        goto LABEL_91;
      return (20 << *(_BYTE *)(v1 + 7)) + 8 * (*(_DWORD *)(v1 + 28) + 4);
    case 1:
      a1[9] = *(_DWORD *)(v1 + 8);
      v35 = *(_DWORD *)(v1 + 12);
      if ( (*(_BYTE *)(v35 + 5) & 3) != 0 )
        reallymarkobject((int)a1, v35);
      if ( *(_BYTE *)(v1 + 6) )
      {
        if ( !*(_BYTE *)(v1 + 7) )
        {
          v36 = *(unsigned __int8 *)(v1 + 7);
          return 8 * v36 + 20;
        }
        v37 = v1;
        v38 = 0;
        do
        {
          ++v38;
          if ( *(int *)(v37 + 24) > 3 )
          {
            v39 = *(_DWORD *)(v37 + 20);
            if ( (*(_BYTE *)(v39 + 5) & 3) != 0 )
              reallymarkobject((int)a1, v39);
          }
          v37 += 8;
        }
        while ( v38 < *(unsigned __int8 *)(v1 + 7) );
      }
      else
      {
        v40 = *(_DWORD *)(v1 + 16);
        if ( (*(_BYTE *)(v40 + 5) & 3) != 0 )
          reallymarkobject((int)a1, v40);
        if ( *(_BYTE *)(v1 + 7) )
        {
          v41 = v1;
          v42 = 0;
          do
          {
            v43 = *(_DWORD *)(v41 + 20);
            ++v42;
            v41 += 4;
            if ( (*(_BYTE *)(v43 + 5) & 3) != 0 )
              reallymarkobject((int)a1, v43);
          }
          while ( v42 < *(unsigned __int8 *)(v1 + 7) );
        }
      }
      if ( *(_BYTE *)(v1 + 6) )
      {
        v36 = *(unsigned __int8 *)(v1 + 7);
        return 8 * v36 + 20;
      }
      return 4 * (*(unsigned __int8 *)(v1 + 7) + 5);
    case 3:
      v17 = a1[10];
      a1[9] = *(_DWORD *)(v1 + 92);
      *(_DWORD *)(v1 + 92) = v17;
      a1[10] = v1;
      v18 = *(_DWORD *)(v1 + 76);
      *(_BYTE *)(v1 + 5) &= ~4u;
      if ( v18 > 3 )
      {
        v19 = *(_DWORD *)(v1 + 72);
        if ( (*(_BYTE *)(v19 + 5) & 3) != 0 )
          reallymarkobject((int)a1, v19);
      }
      v20 = *(_DWORD *)(v1 + 40);
      v21 = *(_DWORD *)(v1 + 20);
      if ( v21 >= v20 )
      {
        v22 = *(_DWORD *)(v1 + 8);
        do
        {
          v23 = *(_DWORD *)(v20 + 8);
          v20 += 24;
          if ( v22 < v23 )
            v22 = v23;
        }
        while ( v21 >= v20 );
      }
      else
      {
        v22 = *(_DWORD *)(v1 + 8);
      }
      for ( i = *(int **)(v1 + 32); (unsigned int)i < *(_DWORD *)(v1 + 8); i += 2 )
      {
        if ( i[1] > 3 && (*(_BYTE *)(*i + 5) & 3) != 0 )
          reallymarkobject((int)a1, *i);
      }
      for ( ; (unsigned int)i <= v22; i += 2 )
        i[1] = 0;
      v25 = *(_DWORD *)(v1 + 48);
      v26 = *(_DWORD *)(v1 + 32);
      if ( v25 > 20000 )
        goto LABEL_79;
      if ( v25 > -1431655764 * ((*(_DWORD *)(v1 + 20) - *(_DWORD *)(v1 + 40)) >> 3) && v25 > 16 )
        luaD_reallocCI((_DWORD *)v1, v25 >> 1);
      v27 = *(_DWORD *)(v1 + 44);
      if ( v27 > 4 * ((int)(v22 - v26) >> 3) && v27 > 90 )
      {
        luaD_reallocstack((_DWORD *)v1, v27 >> 1);
        v25 = *(_DWORD *)(v1 + 48);
LABEL_79:
        v27 = *(_DWORD *)(v1 + 44);
      }
      else
      {
        v25 = *(_DWORD *)(v1 + 48);
      }
      return 8 * (v27 + 13 + 3 * v25);
    case 4:
      a1[9] = *(_DWORD *)(v1 + 68);
      v4 = *(_DWORD *)(v1 + 32);
      if ( v4 )
        *(_BYTE *)(v4 + 5) &= 0xFCu;
      if ( *(int *)(v1 + 40) <= 0 )
        goto LABEL_10;
      v5 = 0;
      do
      {
        while ( 1 )
        {
          v6 = *(_DWORD *)(v1 + 8);
          if ( *(int *)(v6 + 8 * v5 + 4) > 3 )
          {
            v7 = *(_DWORD *)(v6 + 8 * v5);
            if ( (*(_BYTE *)(v7 + 5) & 3) != 0 )
              break;
          }
          if ( ++v5 >= *(_DWORD *)(v1 + 40) )
            goto LABEL_10;
        }
        reallymarkobject((int)a1, v7);
        ++v5;
      }
      while ( v5 < *(_DWORD *)(v1 + 40) );
LABEL_10:
      if ( *(int *)(v1 + 36) > 0 )
      {
        v8 = 0;
        do
        {
          v9 = *(_DWORD *)(*(_DWORD *)(v1 + 28) + 4 * v8++);
          if ( v9 )
            *(_BYTE *)(v9 + 5) &= 0xFCu;
        }
        while ( v8 < *(_DWORD *)(v1 + 36) );
      }
      if ( *(int *)(v1 + 52) > 0 )
      {
        v10 = 0;
        do
        {
          while ( 1 )
          {
            v11 = *(_DWORD *)(*(_DWORD *)(v1 + 16) + 4 * v10++);
            if ( v11 )
            {
              if ( (*(_BYTE *)(v11 + 5) & 3) != 0 )
                break;
            }
            if ( v10 >= *(_DWORD *)(v1 + 52) )
              goto LABEL_21;
          }
          reallymarkobject((int)a1, v11);
        }
        while ( v10 < *(_DWORD *)(v1 + 52) );
      }
LABEL_21:
      v12 = *(_DWORD *)(v1 + 56);
      if ( v12 > 0 )
      {
        v13 = 0;
        v14 = 0;
        do
        {
          ++v14;
          v15 = *(_DWORD *)(*(_DWORD *)(v1 + 24) + v13);
          v13 += 12;
          if ( v15 )
            *(_BYTE *)(v15 + 5) &= 0xFCu;
          v12 = *(_DWORD *)(v1 + 56);
        }
        while ( v14 < v12 );
      }
      return 4
           * (*(_DWORD *)(v1 + 44)
            + *(_DWORD *)(v1 + 52)
            + 19
            + *(_DWORD *)(v1 + 48)
            + *(_DWORD *)(v1 + 36)
            + 2 * *(_DWORD *)(v1 + 40)
            + 3 * v12);
    default:
      return 0;
  }
}


// ===== 853518 sweeplist =====
int *__fastcall sweeplist(int a1, int *a2, int a3)
{
  int v3; // r7
  int *v4; // r6
  int v5; // r4
  int i; // r8
  int v9; // r3

  v3 = *(_DWORD *)(a1 + 16);
  v4 = a2;
  v5 = *a2;
  for ( i = *(unsigned __int8 *)(v3 + 20) ^ 3; *v4; v5 = *v4 )
  {
    if ( !a3 )
      break;
    if ( *(_BYTE *)(v5 + 4) == 8 )
      sweeplist(a1, v5 + 88, -3);
    v9 = *(unsigned __int8 *)(v5 + 5);
    if ( ((v9 ^ 3) & i) != 0 )
    {
      v4 = (int *)v5;
      *(_BYTE *)(v5 + 5) = *(_BYTE *)(v3 + 20) & 3 | v9 & 0xF8;
LABEL_7:
      --a3;
    }
    else
    {
      *v4 = *(_DWORD *)v5;
      if ( *(_DWORD *)(v3 + 28) == v5 )
        *(_DWORD *)(v3 + 28) = *(_DWORD *)v5;
      switch ( *(_BYTE *)(v5 + 4) )
      {
        case 4:
          --a3;
          --*(_DWORD *)(*(_DWORD *)(a1 + 16) + 4);
          luaM_realloc_(a1, v5, *(_DWORD *)(v5 + 12) + 17, 0);
          break;
        case 5:
          luaH_free(a1, v5);
          --a3;
          break;
        case 6:
          luaF_freeclosure(a1, v5);
          --a3;
          break;
        case 7:
          luaM_realloc_(a1, v5, *(_DWORD *)(v5 + 16) + 24, 0);
          --a3;
          break;
        case 8:
          luaE_freethread(a1, v5);
          --a3;
          break;
        case 9:
          luaF_freeproto(a1, (_DWORD *)v5);
          --a3;
          break;
        case 0xA:
          luaF_freeupval(a1, (_DWORD *)v5);
          --a3;
          break;
        default:
          goto LABEL_7;
      }
    }
  }
  return v4;
}


// ===== 8536a4 luaC_freeall =====
int *__fastcall luaC_freeall(int a1)
{
  int v1; // r5
  int *result; // r0
  int v4; // r4

  v1 = *(_DWORD *)(a1 + 16);
  *(_BYTE *)(v1 + 20) = 67;
  result = sweeplist(a1, (int *)(v1 + 28), -3);
  if ( *(int *)(v1 + 8) > 0 )
  {
    v4 = 0;
    do
      result = sweeplist(a1, (int *)(*(_DWORD *)v1 + 4 * v4++), -3);
    while ( *(_DWORD *)(v1 + 8) > v4 );
  }
  return result;
}


// ===== 8536fc GCTM =====
int __fastcall GCTM(int a1, int a2, int a3)
{
  int v3; // r6
  _DWORD *v5; // r3
  _DWORD *v6; // r4
  bool v7; // zf
  int result; // r0
  char *v9; // r7
  int v10; // r8
  char v11; // r10
  _DWORD *v12; // r1
  int v13; // r3
  char *v14; // r1

  v3 = *(_DWORD *)(a1 + 16);
  v5 = *(_DWORD **)(v3 + 48);
  v6 = (_DWORD *)*v5;
  v7 = v5 == (_DWORD *)*v5;
  if ( v5 == (_DWORD *)*v5 )
  {
    v5 = nullptr;
    *(_DWORD *)(v3 + 48) = 0;
  }
  else
  {
    a3 = *v6;
  }
  if ( !v7 )
    *v5 = a3;
  *v6 = **(_DWORD **)(v3 + 100);
  **(_DWORD **)(v3 + 100) = v6;
  result = v6[2];
  *((_BYTE *)v6 + 5) = *(_BYTE *)(v3 + 20) & 3 | *((_BYTE *)v6 + 5) & 0xF8;
  if ( result )
  {
    v9 = (char *)(*(_BYTE *)(result + 6) & 4);
    if ( (*(_BYTE *)(result + 6) & 4) == 0 )
    {
      result = luaT_gettm(result, 2, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 168));
      if ( result )
      {
        v10 = *(_DWORD *)(v3 + 64);
        v11 = *(_BYTE *)(a1 + 57);
        *(_BYTE *)(a1 + 57) = (_BYTE)v9;
        *(_DWORD *)(v3 + 64) = 2 * *(_DWORD *)(v3 + 68);
        v12 = *(_DWORD **)(a1 + 8);
        *v12 = *(_DWORD *)result;
        v12[1] = *(_DWORD *)(result + 4);
        v13 = *(_DWORD *)(a1 + 8);
        *(_DWORD *)(v13 + 12) = 7;
        *(_DWORD *)(v13 + 8) = v6;
        v14 = *(char **)(a1 + 8);
        *(_DWORD *)(a1 + 8) = v14 + 16;
        result = luaD_call(a1, v14, v9);
        *(_BYTE *)(a1 + 57) = v11;
        *(_DWORD *)(v3 + 64) = v10;
      }
    }
  }
  return result;
}


// ===== 8537e4 singlestep =====
int __fastcall singlestep(int a1, int a2, int a3)
{
  int v3; // r4
  int result; // r0
  unsigned int v6; // r3
  int v7; // r3
  int v8; // r1
  int v9; // r5
  int v10; // r5
  int *v11; // r0
  int v12; // r5
  int *v13; // r3
  int v14; // r3
  int v15; // r5
  int v16; // r1
  int v17; // r3
  int v18; // r0
  int v19; // r5
  int v20; // r11
  int v21; // r5
  int v22; // r12
  int v23; // r3
  int v24; // r2
  int v25; // r2
  int v26; // r1
  _DWORD *v27; // r3
  int v28; // r0
  int v29; // r9
  int v30; // r5
  char v31; // r2
  _DWORD *v32; // r1
  int v33; // r0
  int v34; // r0
  _DWORD *v35; // r6
  int v36; // r1
  int v37; // r2
  unsigned int v38; // r2
  unsigned int v39; // r7
  int v40; // r0

  v3 = *(_DWORD *)(a1 + 16);
  switch ( *(_BYTE *)(v3 + 21) )
  {
    case 0:
      markroot(a1);
      return 0;
    case 1:
      if ( *(_DWORD *)(v3 + 36) )
        return propagatemark(*(_DWORD **)(a1 + 16));
      v12 = *(_DWORD *)(v3 + 120);
      if ( v12 != v3 + 104 )
      {
        do
        {
          if ( (*(_BYTE *)(v12 + 5) & 7) == 0 )
          {
            v13 = *(int **)(v12 + 8);
            if ( v13[1] > 3 && (*(_BYTE *)(*v13 + 5) & 3) != 0 )
              reallymarkobject(v3, *v13);
          }
          v12 = *(_DWORD *)(v12 + 16);
        }
        while ( v12 != v3 + 104 );
        while ( *(_DWORD *)(v3 + 36) )
          propagatemark((_DWORD *)v3);
      }
      v14 = *(_DWORD *)(v3 + 44);
      *(_DWORD *)(v3 + 44) = 0;
      *(_DWORD *)(v3 + 36) = v14;
      if ( (*(_BYTE *)(a1 + 5) & 3) != 0 )
        reallymarkobject(v3, a1);
      v15 = v3;
      do
      {
        v16 = *(_DWORD *)(v15 + 124);
        v15 += 4;
        if ( v16 && (*(_BYTE *)(v16 + 5) & 3) != 0 )
          reallymarkobject(v3, v16);
      }
      while ( v15 != v3 + 36 );
      while ( *(_DWORD *)(v3 + 36) )
        propagatemark((_DWORD *)v3);
      v17 = *(_DWORD *)(v3 + 40);
      *(_DWORD *)(v3 + 40) = 0;
      *(_DWORD *)(v3 + 36) = v17;
      while ( *(_DWORD *)(v3 + 36) )
        propagatemark((_DWORD *)v3);
      v18 = luaC_separateudata(a1, 0);
      v19 = *(_DWORD *)(v3 + 48);
      v20 = v18;
      if ( v19 )
      {
        do
        {
          v19 = *(_DWORD *)v19;
          *(_BYTE *)(v19 + 5) = *(_BYTE *)(v3 + 20) & 3 | *(_BYTE *)(v19 + 5) & 0xF8;
          reallymarkobject(v3, v19);
        }
        while ( v19 != *(_DWORD *)(v3 + 48) );
      }
      v21 = *(_DWORD *)(v3 + 36);
      if ( v21 )
      {
        v21 = 0;
        do
          v21 += propagatemark((_DWORD *)v3);
        while ( *(_DWORD *)(v3 + 36) );
      }
      v22 = *(_DWORD *)(v3 + 44);
      if ( !v22 )
        goto LABEL_56;
      break;
    case 2:
      v7 = *(_DWORD *)(v3 + 24);
      v8 = *(_DWORD *)v3;
      v9 = *(_DWORD *)(v3 + 68);
      *(_DWORD *)(v3 + 24) = v7 + 1;
      sweeplist(a1, (int *)(v8 + 4 * v7), -3);
      result = 10;
      if ( *(_DWORD *)(v3 + 24) >= *(_DWORD *)(v3 + 8) )
        *(_BYTE *)(v3 + 21) = 3;
      *(_DWORD *)(v3 + 72) = *(_DWORD *)(v3 + 68) + *(_DWORD *)(v3 + 72) - v9;
      return result;
    case 3:
      v10 = *(_DWORD *)(v3 + 68);
      v11 = sweeplist(a1, *(int **)(v3 + 32), 40);
      *(_DWORD *)(v3 + 32) = v11;
      if ( !*v11 )
      {
        v35 = *(_DWORD **)(a1 + 16);
        v36 = v35[2];
        v37 = v36 + 3;
        if ( v36 >= 0 )
          v37 = v35[2];
        if ( v35[1] < (unsigned int)(v37 >> 2) && v36 > 64 )
          luaS_resize(a1, v36 >> 1);
        v38 = v35[15];
        if ( v38 > 0x40 )
        {
          v39 = v38 >> 1;
          v40 = luaM_realloc_(a1, v35[13], v38, v38 >> 1);
          v35[15] = v39;
          v35[13] = v40;
        }
        *(_BYTE *)(v3 + 21) = 4;
      }
      *(_DWORD *)(v3 + 72) = *(_DWORD *)(v3 + 68) + *(_DWORD *)(v3 + 72) - v10;
      return 400;
    case 4:
      result = *(_DWORD *)(v3 + 48);
      if ( result )
      {
        GCTM(a1, a2, a3);
        v6 = *(_DWORD *)(v3 + 72);
        result = 100;
        if ( v6 > 0x64 )
          *(_DWORD *)(v3 + 72) = v6 - 100;
      }
      else
      {
        *(_DWORD *)(v3 + 76) = 0;
        *(_BYTE *)(v3 + 21) = 0;
      }
      return result;
    default:
      return 0;
  }
  do
  {
    v23 = *(_DWORD *)(v22 + 28);
    if ( (*(_BYTE *)(v22 + 5) & 0x10) != 0 )
    {
      v24 = 8 * (v23 - 1);
      while ( v23 )
      {
        --v23;
        v32 = (_DWORD *)(*(_DWORD *)(v22 + 12) + v24);
        v33 = v32[1];
        if ( v33 <= 3 )
          goto LABEL_58;
        if ( v33 == 4 )
        {
          *(_BYTE *)(*v32 + 5) &= 0xFCu;
          goto LABEL_58;
        }
        if ( (*(_BYTE *)(*v32 + 5) & 3) != 0 || v33 == 7 && (*(_BYTE *)(*v32 + 5) & 8) != 0 )
        {
          v32[1] = 0;
          v24 -= 8;
        }
        else
        {
LABEL_58:
          v24 -= 8;
        }
      }
    }
    v25 = 1 << *(_BYTE *)(v22 + 7);
    v26 = 20 * (v25 - 1);
    while ( v25 )
    {
      --v25;
      v27 = (_DWORD *)(*(_DWORD *)(v22 + 16) + v26);
      v28 = v27[1];
      if ( v28 )
      {
        v29 = v27[3];
        if ( v29 > 3 )
        {
          if ( v29 == 4 )
          {
            *(_BYTE *)(v27[2] + 5) &= 0xFCu;
            v28 = v27[1];
          }
          else if ( (*(_BYTE *)(v27[2] + 5) & 3) != 0 )
          {
            goto LABEL_67;
          }
        }
        if ( v28 > 3 )
        {
          if ( v28 == 4 )
          {
            v26 -= 20;
            *(_BYTE *)(*v27 + 5) &= 0xFCu;
            continue;
          }
          if ( (*(_BYTE *)(*v27 + 5) & 3) != 0 || v28 == 7 && (*(_BYTE *)(*v27 + 5) & 8) != 0 )
          {
LABEL_67:
            v34 = v27[3];
            v27[1] = 0;
            v26 -= 20;
            if ( v34 > 3 )
              v27[3] = 11;
            continue;
          }
        }
      }
      v26 -= 20;
    }
    v22 = *(_DWORD *)(v22 + 24);
  }
  while ( v22 );
LABEL_56:
  v30 = *(_DWORD *)(v3 + 68) - v20 - v21;
  v31 = *(_BYTE *)(v3 + 20) ^ 3;
  *(_DWORD *)(v3 + 32) = v3 + 28;
  *(_DWORD *)(v3 + 72) = v30;
  *(_BYTE *)(v3 + 20) = v31;
  *(_BYTE *)(v3 + 21) = 2;
  *(_DWORD *)(v3 + 24) = 0;
  return 0;
}


// ===== 853cb4 luaC_fullgc =====
int __fastcall luaC_fullgc(int a1, int a2, int a3)
{
  int v3; // r4
  unsigned int v5; // r3
  int result; // r0
  int v7; // r1
  int v8; // r2

  v3 = *(_DWORD *)(a1 + 16);
  v5 = *(unsigned __int8 *)(v3 + 21);
  if ( v5 > 1 )
    goto LABEL_4;
  *(_DWORD *)(v3 + 32) = v3 + 28;
  a3 = 2;
  *(_DWORD *)(v3 + 44) = 0;
  *(_BYTE *)(v3 + 21) = 2;
  *(_DWORD *)(v3 + 24) = 0;
  *(_DWORD *)(v3 + 36) = 0;
  *(_DWORD *)(v3 + 40) = 0;
  do
  {
    singlestep(a1, a2, a3);
    v5 = *(unsigned __int8 *)(v3 + 21);
LABEL_4:
    ;
  }
  while ( v5 != 4 );
  for ( result = markroot(a1); *(_BYTE *)(v3 + 21); result = singlestep(a1, v7, v8) )
    ;
  *(_DWORD *)(v3 + 64) = *(_DWORD *)(v3 + 72) / 0x64u * *(_DWORD *)(v3 + 80);
  return result;
}


// ===== 853d58 luaC_step =====
int __fastcall luaC_step(int a1)
{
  int v1; // r5
  int v3; // r1
  int v4; // r4
  int v5; // r2
  int result; // r0
  unsigned int v7; // r3
  int v8; // r2

  v1 = *(_DWORD *)(a1 + 16);
  v3 = *(_DWORD *)(v1 + 68);
  v4 = 10 * *(_DWORD *)(v1 + 84);
  v5 = *(_DWORD *)(v1 + 64);
  if ( !v4 )
    v4 = 2147483646;
  *(_DWORD *)(v1 + 76) = v3 + *(_DWORD *)(v1 + 76) - v5;
  do
  {
    result = singlestep(a1, v3, v5);
    v4 -= result;
    if ( !*(_BYTE *)(v1 + 21) )
    {
      *(_DWORD *)(v1 + 64) = *(_DWORD *)(v1 + 72) / 0x64u * *(_DWORD *)(v1 + 80);
      return result;
    }
  }
  while ( v4 > 0 );
  v7 = *(_DWORD *)(v1 + 76);
  if ( v7 >= 0x400 )
  {
    v8 = *(_DWORD *)(v1 + 68);
    *(_DWORD *)(v1 + 76) = v7 - 1024;
    *(_DWORD *)(v1 + 64) = v8;
  }
  else
  {
    *(_DWORD *)(v1 + 64) = *(_DWORD *)(v1 + 68) + 1024;
  }
  return result;
}


// ===== 853e04 luaC_callGCTM =====
int __fastcall luaC_callGCTM(int result, int a2, int a3)
{
  int i; // r4

  for ( i = result; *(_DWORD *)(*(_DWORD *)(i + 16) + 48); result = GCTM(i, a2, a3) )
    ;
  return result;
}


// ===== 853e38 luaopen_math =====
int __fastcall luaopen_math(_DWORD *a1)
{
  luaL_register(a1, "math", (int *)&mathlib);
  lua_pushnumber((int)a1, 1078530011);
  lua_setfield(a1, -2, "pi");
  lua_pushnumber((int)a1, 2139095040);
  lua_setfield(a1, -2, "huge");
  lua_getfield(a1, -1, "fmod");
  lua_setfield(a1, -2, "mod");
  return 1;
}


// ===== 853ee4 math_rad =====
int __fastcall math_rad(_DWORD *a1)
{
  float v2; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  lua_pushnumber((int)a1, COERCE_INT(v2 * 0.017453));
  return 1;
}


// ===== 853f14 math_deg =====
int __fastcall math_deg(_DWORD *a1)
{
  float v2; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  lua_pushnumber((int)a1, COERCE_INT(v2 / 0.017453));
  return 1;
}


// ===== 853f44 math_abs =====
int __fastcall math_abs(_DWORD *a1)
{
  int v2; // r0

  v2 = luaL_checknumber(a1, 1);
  lua_pushnumber((int)a1, v2 & 0x7FFFFFFF);
  return 1;
}


// ===== 853f68 math_tan =====
int __fastcall math_tan(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = tan(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 853f98 math_tanh =====
int __fastcall math_tanh(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = tanh(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 853fc8 math_sqrt =====
int __fastcall math_sqrt(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = sqrt(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 853ff8 math_sin =====
int __fastcall math_sin(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = sin(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 854028 math_sinh =====
int __fastcall math_sinh(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = sinh(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 854058 math_randomseed =====
int __fastcall math_randomseed(_DWORD *a1)
{
  int v1; // r0

  v1 = luaL_checkinteger(a1, 1);
  srand48(v1);
  return 0;
}


// ===== 854070 math_min =====
int __fastcall math_min(_DWORD *a1)
{
  int v2; // r8
  float v3; // r6
  int i; // r4
  float v5; // r5

  v2 = lua_gettop((int)a1);
  v3 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  if ( v2 > 1 )
  {
    for ( i = 2; i <= v2; ++i )
    {
      v5 = COERCE_FLOAT(luaL_checknumber(a1, i));
      if ( v3 > v5 )
        v3 = v5;
    }
  }
  lua_pushnumber((int)a1, SLODWORD(v3));
  return 1;
}


// ===== 8540e0 math_max =====
int __fastcall math_max(_DWORD *a1)
{
  int v2; // r8
  float v3; // r6
  int i; // r4
  float v5; // r5

  v2 = lua_gettop((int)a1);
  v3 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  if ( v2 > 1 )
  {
    for ( i = 2; i <= v2; ++i )
    {
      v5 = COERCE_FLOAT(luaL_checknumber(a1, i));
      if ( v3 < v5 )
        v3 = v5;
    }
  }
  lua_pushnumber((int)a1, SLODWORD(v3));
  return 1;
}


// ===== 854150 math_floor =====
int __fastcall math_floor(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = floor(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 854180 math_random =====
int __fastcall math_random(_DWORD *a1)
{
  int v2; // r5
  int v3; // r0
  int v4; // r8
  int v6; // r6
  int v7; // r0
  double v8; // r0
  double v9; // r2
  int v10; // r0
  int v11; // r0

  *(float *)&v2 = (float)(lrand48() % 0x7FFFFFFF) * 4.6566e-10;
  v3 = lua_gettop((int)a1);
  v4 = v3;
  if ( v3 == 1 )
  {
    v11 = luaL_checkinteger(a1, 1);
    if ( v11 <= 0 )
      luaL_argerror((int)a1, 1, "interval is empty");
    v8 = floor((float)((float)v11 * *(float *)&v2));
    v9 = 1.0;
    goto LABEL_8;
  }
  if ( v3 == 2 )
  {
    v6 = luaL_checkinteger(a1, 1);
    v7 = luaL_checkinteger(a1, v4);
    if ( v6 > v7 )
      luaL_argerror((int)a1, v4, "interval is empty");
    v8 = floor((float)((float)(v7 + 1 - v6) * *(float *)&v2));
    v9 = (double)v6;
LABEL_8:
    *(float *)&v10 = v8 + v9;
    lua_pushnumber((int)a1, v10);
    return 1;
  }
  if ( v3 )
    luaL_error((int)a1, (int)"wrong number of arguments");
  lua_pushnumber((int)a1, v2);
  return 1;
}


// ===== 8542f8 math_pow =====
int __fastcall math_pow(_DWORD *a1)
{
  float v2; // r6
  double v3; // r0
  int v4; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  v3 = COERCE_FLOAT(luaL_checknumber(a1, 2));
  *(float *)&v4 = pow(v2, v3);
  lua_pushnumber((int)a1, v4);
  return 1;
}


// ===== 854360 math_modf =====
int __fastcall math_modf(_DWORD *a1)
{
  double v2; // r0
  double v3; // r6
  int v4; // r0
  int v5; // r0
  double v7; // [sp+0h] [bp-8h] BYREF

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  v3 = modf(v2, &v7);
  *(float *)&v4 = v7;
  lua_pushnumber((int)a1, v4);
  *(float *)&v5 = v3;
  lua_pushnumber((int)a1, v5);
  return 2;
}


// ===== 8543c0 math_log =====
int __fastcall math_log(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = log(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 8543f0 math_log10 =====
int __fastcall math_log10(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = log10(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 854420 math_ldexp =====
int __fastcall math_ldexp(_DWORD *a1)
{
  float v2; // r6
  int v3; // r5
  int v4; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  v3 = luaL_checkinteger(a1, 2);
  *(float *)&v4 = ldexp(v2, v3);
  lua_pushnumber((int)a1, v4);
  return 1;
}


// ===== 85446c math_frexp =====
int __fastcall math_frexp(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0
  int exponent; // [sp+4h] [bp-4h] BYREF

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = frexp(v2, &exponent);
  lua_pushnumber((int)a1, v3);
  lua_pushinteger((int)a1, exponent);
  return 2;
}


// ===== 8544b4 math_fmod =====
int __fastcall math_fmod(_DWORD *a1)
{
  float v2; // r6
  double v3; // r0
  int v4; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  v3 = COERCE_FLOAT(luaL_checknumber(a1, 2));
  *(float *)&v4 = fmod(v2, v3);
  lua_pushnumber((int)a1, v4);
  return 1;
}


// ===== 85451c math_exp =====
int __fastcall math_exp(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = exp(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 85454c math_cos =====
int __fastcall math_cos(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = cos(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 85457c math_cosh =====
int __fastcall math_cosh(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = cosh(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 8545ac math_ceil =====
int __fastcall math_ceil(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = ceil(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 8545dc math_atan =====
int __fastcall math_atan(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = atan(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 85460c math_atan2 =====
int __fastcall math_atan2(_DWORD *a1)
{
  float v2; // r6
  double v3; // r0
  int v4; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  v3 = COERCE_FLOAT(luaL_checknumber(a1, 2));
  *(float *)&v4 = atan2(v2, v3);
  lua_pushnumber((int)a1, v4);
  return 1;
}


// ===== 854674 math_asin =====
int __fastcall math_asin(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = asin(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 8546a4 math_acos =====
int __fastcall math_acos(_DWORD *a1)
{
  double v2; // r0
  int v3; // r0

  v2 = COERCE_FLOAT(luaL_checknumber(a1, 1));
  *(float *)&v3 = acos(v2);
  lua_pushnumber((int)a1, v3);
  return 1;
}


// ===== 8546d4 luaM_realloc_ =====
int __fastcall luaM_realloc_(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int result; // r0
  _BOOL4 v9; // r3

  v4 = *(_DWORD *)(a1 + 16);
  result = (*(int (__fastcall **)(_DWORD))(v4 + 12))(*(_DWORD *)(v4 + 16));
  v9 = result == 0;
  if ( !a4 )
    v9 = 0;
  if ( v9 )
    luaD_throw(a1, 4);
  *(_DWORD *)(v4 + 68) += a4 - a3;
  return result;
}


// ===== 854734 luaM_toobig =====
void __fastcall __noreturn luaM_toobig(_DWORD *a1)
{
  luaG_runerror(a1, (int)"memory allocation error: block too big");
}


// ===== 854750 luaM_growaux_ =====
int __fastcall luaM_growaux_(_DWORD *a1, int a2, int *a3, unsigned int a4, int a5, int a6)
{
  int v6; // r6
  int v8; // r6
  unsigned int v9; // r4
  int result; // r0

  v6 = *a3;
  if ( *a3 < a5 / 2 )
  {
    v8 = 2 * v6;
    if ( v8 > 3 )
    {
      v9 = v8 + 1;
    }
    else
    {
      v9 = 5;
      v8 = 4;
    }
    if ( 0xFFFFFFFD / a4 < v9 )
      goto LABEL_4;
  }
  else
  {
    if ( v6 >= a5 )
      luaG_runerror(a1, a6);
    v8 = a5;
    if ( 0xFFFFFFFD / a4 < a5 + 1 )
LABEL_4:
      luaM_toobig(a1);
  }
  result = luaM_realloc_((int)a1, a2, *a3 * a4, a4 * v8);
  *a3 = v8;
  return result;
}


// ===== 854800 luaO_int2fb =====
unsigned int __fastcall luaO_int2fb(unsigned int result)
{
  int v1; // r3

  if ( result > 0xF )
  {
    v1 = 0;
    do
    {
      result = (result + 1) >> 1;
      ++v1;
    }
    while ( result > 0xF );
  }
  else
  {
    v1 = 0;
  }
  if ( result > 7 )
    return (result - 8) | (8 * (v1 + 1));
  return result;
}


// ===== 854838 luaO_fb2int =====
int __fastcall luaO_fb2int(int result)
{
  if ( (unsigned __int8)result >> 3 )
    return ((result & 7) + 8) << (((unsigned __int8)result >> 3) - 1);
  return result;
}


// ===== 854854 luaO_log2 =====
int __fastcall luaO_log2(unsigned int a1)
{
  int v1; // r3

  if ( a1 > 0xFF )
  {
    v1 = -1;
    do
    {
      a1 >>= 8;
      v1 += 8;
    }
    while ( a1 > 0xFF );
  }
  else
  {
    v1 = -1;
  }
  return log_2_3390[a1] + v1;
}


// ===== 85488c luaO_rawequalObj =====
bool __fastcall luaO_rawequalObj(float *a1, float *a2)
{
  int v2; // r3
  _BOOL4 result; // r0

  v2 = *((_DWORD *)a1 + 1);
  if ( v2 != *((_DWORD *)a2 + 1) )
    return 0;
  switch ( v2 )
  {
    case 0:
      result = 1;
      break;
    case 1:
    case 2:
      result = *(_DWORD *)a1 == *(_DWORD *)a2;
      break;
    case 3:
      result = *a1 == *a2;
      break;
    default:
      result = *(_DWORD *)a1 == *(_DWORD *)a2;
      break;
  }
  return result;
}


// ===== 854914 luaO_chunkid =====
char *__fastcall luaO_chunkid(char *a1, char *a2, size_t a3)
{
  int v3; // r3
  size_t v7; // r6
  size_t v8; // r0
  char *result; // r0
  const char *v10; // r5
  size_t v11; // r6
  size_t v12; // r0

  v3 = *a2;
  if ( v3 == 61 )
  {
    result = LC_API_STRNCPY_0(a1, a2 + 1, a3);
    a1[a3 - 1] = 0;
  }
  else if ( v3 == 64 )
  {
    v10 = a2 + 1;
    v11 = a3 - 8;
    v12 = LC_API_STRLEN_0(a2 + 1);
    *a1 = 0;
    if ( v11 < v12 )
    {
      v10 += v12 - v11;
      strcpy(&a1[LC_API_STRLEN_0(a1)], "...");
    }
    return LC_API_STRCAT_0(a1, v10);
  }
  else
  {
    v7 = a3 - 17;
    v8 = strcspn(a2, "\n\r");
    if ( v8 < v7 )
      v7 = v8;
    strcpy(a1, "[string \"");
    if ( a2[v7] )
    {
      strncat(a1, a2, v7);
      strcpy(&a1[LC_API_STRLEN_0(a1)], "...");
    }
    else
    {
      LC_API_STRCAT_0(a1, a2);
    }
    result = (char *)LC_API_STRLEN_0(a1);
    result[(_DWORD)a1] = 34;
    result[(_DWORD)a1 + 1] = 93;
    result[(_DWORD)a1 + 2] = 0;
  }
  return result;
}


// ===== 854a58 pushstr =====
unsigned int __fastcall pushstr(_DWORD *a1, char *a2)
{
  size_t v4; // r0
  char *v5; // r1
  unsigned int *v6; // r5
  unsigned int result; // r0
  int v8; // r3

  v4 = LC_API_STRLEN_0(a2);
  v5 = a2;
  v6 = (unsigned int *)a1[2];
  result = luaS_newlstr((int)a1, v5, v4);
  *v6 = result;
  v6[1] = 4;
  v8 = a1[2];
  if ( a1[7] - v8 <= 8 )
  {
    result = luaD_growstack(a1, 1);
    v8 = a1[2];
  }
  a1[2] = v8 + 8;
  return result;
}


// ===== 854ab8 luaO_pushvfstring =====
int __fastcall luaO_pushvfstring(_DWORD *a1, char *a2, char **a3)
{
  int i; // r8
  char *v7; // r0
  char *v8; // r5
  char *v9; // r1
  size_t v10; // r2
  _DWORD *v11; // r6
  int v12; // r6
  int v13; // r6
  int v14; // r3
  bool v15; // cc
  char *v16; // r1
  float v17; // r0
  int v18; // r3
  int v19; // r8
  unsigned __int8 v21; // [sp+18h] [bp-24h] BYREF
  char v22; // [sp+19h] [bp-23h]
  char v23; // [sp+1Ah] [bp-22h]
  char v24[24]; // [sp+1Ch] [bp-20h] BYREF

  pushstr(a1, "");
  for ( i = 1; ; i += 2 )
  {
    v7 = strchr(a2, 37);
    v8 = v7;
    if ( !v7 )
      break;
    v9 = a2;
    v10 = v7 - a2;
    v11 = (_DWORD *)a1[2];
    *v11 = luaS_newlstr((int)a1, v9, v10);
    v11[1] = 4;
    v12 = a1[2];
    if ( a1[7] - v12 <= 8 )
    {
      luaD_growstack(a1, 1);
      v13 = a1[2] + 8;
      a1[2] = v13;
      v14 = v8[1];
      v15 = v14 <= 102;
      if ( v14 == 102 )
LABEL_17:
        abort();
    }
    else
    {
      v13 = v12 + 8;
      a1[2] = v13;
      v14 = v8[1];
      v15 = v14 <= 102;
      if ( v14 == 102 )
        goto LABEL_17;
    }
    if ( v15 )
    {
      switch ( v14 )
      {
        case 'c':
          v21 = (unsigned __int8)*a3;
          v22 = 0;
          ++a3;
          pushstr(a1, (char *)&v21);
          break;
        case 'd':
          v17 = (float)(int)*a3;
          *(_DWORD *)(v13 + 4) = 3;
          *(float *)v13 = v17;
          v18 = a1[2];
          ++a3;
          if ( a1[7] - v18 <= 8 )
          {
            luaD_growstack(a1, 1);
            v18 = a1[2];
          }
          a1[2] = v18 + 8;
          break;
        case '%':
          pushstr(a1, "%");
          break;
        default:
          goto LABEL_5;
      }
    }
    else if ( v14 == 112 )
    {
      sprintf(v24, "%p", *a3++);
      pushstr(a1, v24);
    }
    else
    {
      if ( v14 != 115 )
      {
LABEL_5:
        v21 = 37;
        v22 = v8[1];
        v23 = 0;
        pushstr(a1, (char *)&v21);
        goto LABEL_6;
      }
      v16 = *a3;
      if ( !*a3 )
        v16 = "(null)";
      ++a3;
      pushstr(a1, v16);
    }
LABEL_6:
    a2 = v8 + 2;
  }
  pushstr(a1, a2);
  luaV_concat(a1, i + 1, ((a1[2] - a1[3]) >> 3) - 1);
  v19 = a1[2] - 8 * i;
  a1[2] = v19;
  return *(_DWORD *)(v19 - 8) + 16;
}


// ===== 854d44 luaO_pushfstring =====
int luaO_pushfstring(_DWORD *a1, char *a2, ...)
{
  va_list varg_r2; // [sp+10h] [bp+8h] BYREF

  va_start(varg_r2, a2);
  return luaO_pushvfstring(a1, a2, (char **)&varg_r2);
}


// ===== 854d74 luaO_str2d =====
bool __fastcall luaO_str2d(const char *a1, float *a2)
{
  float v4; // r0
  char *v5; // r3
  int v7; // r7
  bool v8; // zf
  char *i; // r4
  unsigned int v10; // r0
  char *v11[2]; // [sp+4h] [bp-8h] BYREF

  v4 = strtod(a1, v11);
  v5 = v11[0];
  *a2 = v4;
  if ( v5 == a1 )
    return 0;
  v7 = (unsigned __int8)*v5;
  v8 = v7 == 120;
  if ( v7 != 120 )
    v8 = v7 == 88;
  if ( v8 )
  {
    v10 = strtoul(a1, v11, 16);
    v5 = v11[0];
    *a2 = (float)v10;
    v7 = (unsigned __int8)*v5;
  }
  if ( !v7 )
    return 1;
  for ( i = v5; ; v7 = (unsigned __int8)*i )
  {
    ++i;
    if ( !isspace(v7) )
      break;
    v11[0] = i;
  }
  return v7 == 0;
}


// ===== 854e1c testnext =====
int __fastcall testnext(int a1, int a2)
{
  if ( *(_DWORD *)(a1 + 12) != a2 )
    return 0;
  luaX_next();
  return 1;
}


// ===== 854e40 open_func =====
unsigned int __fastcall open_func(_DWORD *a1, int a2)
{
  _DWORD *v2; // r5
  int v5; // r0
  int v6; // r6
  unsigned int result; // r0
  unsigned int *v8; // r3
  int v9; // r3
  int v10; // r3

  v2 = (_DWORD *)a1[8];
  v5 = luaF_newproto((int)v2);
  *(_DWORD *)a2 = v5;
  v6 = v5;
  *(_DWORD *)(a2 + 8) = a1[7];
  *(_DWORD *)(a2 + 12) = a1;
  *(_DWORD *)(a2 + 16) = v2;
  a1[7] = a2;
  *(_DWORD *)(a2 + 32) = -1;
  *(_BYTE *)(a2 + 50) = 0;
  *(_DWORD *)(a2 + 24) = 0;
  *(_DWORD *)(a2 + 28) = -1;
  *(_DWORD *)(a2 + 36) = 0;
  *(_DWORD *)(a2 + 40) = 0;
  *(_DWORD *)(a2 + 44) = 0;
  *(_WORD *)(a2 + 48) = 0;
  *(_DWORD *)(a2 + 20) = 0;
  *(_DWORD *)(v5 + 32) = a1[11];
  *(_BYTE *)(v5 + 75) = 2;
  result = luaH_new(v2, 0, 0);
  *(_DWORD *)(a2 + 4) = result;
  v8 = (unsigned int *)v2[2];
  *v8 = result;
  v8[1] = 5;
  v9 = v2[2];
  if ( v2[7] - v9 <= 8 )
  {
    result = luaD_growstack(v2, 1);
    v9 = v2[2];
  }
  v2[2] = v9 + 8;
  *(_DWORD *)(v9 + 8) = v6;
  *(_DWORD *)(v9 + 12) = 9;
  v10 = v2[2];
  if ( v2[7] - v10 <= 8 )
  {
    result = luaD_growstack(v2, 1);
    v10 = v2[2];
  }
  v2[2] = v10 + 8;
  return result;
}


// ===== 854f38 leaveblock =====
int __fastcall leaveblock(int a1)
{
  int v1; // r5
  int v2; // r3
  int v4; // r3
  int v5; // r6
  int i; // r2
  int v7; // r2
  int v8; // r0

  v1 = *(_DWORD *)(a1 + 20);
  v2 = *(_DWORD *)(a1 + 12);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)v1;
  v4 = *(_DWORD *)(v2 + 28);
  v5 = *(unsigned __int8 *)(v1 + 8);
  for ( i = *(unsigned __int8 *)(v4 + 50); v5 < i; i = *(unsigned __int8 *)(v4 + 50) )
  {
    v7 = (unsigned __int8)(i - 1);
    v8 = *(_DWORD *)(*(_DWORD *)v4 + 24);
    *(_BYTE *)(v4 + 50) = v7;
    *(_DWORD *)(v8 + 12 * *(unsigned __int16 *)(v4 + 2 * v7 + 172) + 8) = *(_DWORD *)(v4 + 24);
  }
  if ( *(_BYTE *)(v1 + 9) )
    luaK_codeABC(a1, 35, *(unsigned __int8 *)(v1 + 8), 0, 0);
  *(_DWORD *)(a1 + 36) = *(unsigned __int8 *)(a1 + 50);
  return luaK_patchtohere(a1, *(_DWORD *)(v1 + 4));
}


// ===== 854fe4 breakstat =====
int __fastcall breakstat(int a1)
{
  int v1; // r5
  int *v2; // r4
  int v3; // r6
  int v4; // r3
  int v5; // r0

  v1 = *(_DWORD *)(a1 + 28);
  v2 = *(int **)(v1 + 20);
  if ( !v2 )
LABEL_6:
    luaX_syntaxerror();
  v3 = *((unsigned __int8 *)v2 + 10);
  if ( !*((_BYTE *)v2 + 10) )
  {
    do
    {
      v4 = *((unsigned __int8 *)v2 + 9);
      v2 = (int *)*v2;
      v3 |= v4;
      if ( !v2 )
        goto LABEL_6;
    }
    while ( !*((_BYTE *)v2 + 10) );
    if ( v3 )
      luaK_codeABC(*(_DWORD *)(a1 + 28), 35, *((unsigned __int8 *)v2 + 8), 0, 0);
  }
  v5 = luaK_jump(v1);
  return luaK_concat(v1, v2 + 1, v5);
}


// ===== 855090 errorlimit =====
void __fastcall __noreturn errorlimit(int a1, int a2, const char *a3)
{
  int v5; // r2
  int v6; // r1

  v5 = *(_DWORD *)(*(_DWORD *)a1 + 60);
  if ( v5 )
    v6 = luaO_pushfstring(*(_DWORD **)(a1 + 16), "function at line %d has more than %d %s", v5, a2, a3);
  else
    v6 = luaO_pushfstring(*(_DWORD **)(a1 + 16), "main function has more than %d %s", a2, a3);
  luaX_lexerror(*(_DWORD *)(a1 + 12), v6, 0);
}


// ===== 855108 new_localvar =====
int __fastcall new_localvar(int result, int a2, int a3)
{
  int v3; // r7
  int v4; // r9
  int v6; // r8
  int v7; // r5
  int v8; // r3
  int v9; // r4
  __int16 v10; // r3
  int v11; // r3
  int v12; // r3

  v3 = *(_DWORD *)(result + 28);
  v4 = result;
  v6 = a3 + *(unsigned __int8 *)(v3 + 50);
  if ( v6 > 199 )
    errorlimit(*(_DWORD *)(result + 28), 200, "local variables");
  v7 = *(_DWORD *)v3;
  v8 = *(__int16 *)(v3 + 48);
  v9 = *(_DWORD *)(*(_DWORD *)v3 + 56);
  if ( v9 <= v8 )
  {
    result = luaM_growaux_(
               *(_DWORD **)(result + 32),
               *(_DWORD *)(v7 + 24),
               (int *)(v7 + 56),
               0xCu,
               0x7FFF,
               (int)"too many local variables");
    v11 = *(_DWORD *)(v7 + 56);
    *(_DWORD *)(v7 + 24) = result;
    if ( v9 < v11 )
    {
      v12 = 12 * v9;
      while ( 1 )
      {
        *(_DWORD *)(result + v12) = 0;
        ++v9;
        v12 += 12;
        if ( v9 >= *(_DWORD *)(v7 + 56) )
          break;
        result = *(_DWORD *)(v7 + 24);
      }
    }
    v8 = *(__int16 *)(v3 + 48);
  }
  *(_DWORD *)(*(_DWORD *)(v7 + 24) + 12 * v8) = a2;
  if ( (*(_BYTE *)(a2 + 5) & 3) != 0 && (*(_BYTE *)(v7 + 5) & 4) != 0 )
    result = luaC_barrierf(*(_DWORD *)(v4 + 32), v7, a2);
  v10 = *(_WORD *)(v3 + 48);
  *(_WORD *)(v3 + 48) = v10 + 1;
  *(_WORD *)(v3 + 2 * v6 + 172) = v10;
  return result;
}


// ===== 855234 singlevaraux =====
int __fastcall singlevaraux(int a1, int a2, _DWORD *a3, int a4)
{
  int v7; // r2
  int v8; // r1
  int v9; // r12
  int v10; // r2
  int v11; // r7
  int v12; // r0
  int result; // r0
  int v14; // r7
  int v15; // r10
  int v16; // r8
  int v17; // r3
  int v18; // r2
  int v19; // r2
  int v20; // r3
  int v21; // r0
  int v22; // r3
  int *v23; // r3

  if ( !a1 )
  {
    a3[1] = 255;
    a3[4] = -1;
    a3[3] = -1;
    *a3 = 8;
    return 8;
  }
  v7 = *(unsigned __int8 *)(a1 + 50);
  v8 = v7 - 1;
  if ( !*(_BYTE *)(a1 + 50) )
    goto LABEL_8;
  v9 = *(_DWORD *)(*(_DWORD *)a1 + 24);
  if ( a2 != *(_DWORD *)(v9 + 12 * *(unsigned __int16 *)(a1 + 2 * v7 + 170)) )
  {
    v10 = a1 + 2 * v7 + 172;
    v11 = a1 + 174;
    while ( 1 )
    {
      --v8;
      if ( v10 == v11 )
        break;
      v12 = *(unsigned __int16 *)(v10 - 4);
      v10 -= 2;
      if ( a2 == *(_DWORD *)(v9 + 12 * v12) )
        goto LABEL_29;
    }
LABEL_8:
    result = singlevaraux(*(_DWORD *)(a1 + 8), a2, a3, 0);
    if ( result != 8 )
    {
      v14 = *(_DWORD *)a1;
      v15 = *(unsigned __int8 *)(*(_DWORD *)a1 + 72);
      v16 = *(_DWORD *)(*(_DWORD *)a1 + 36);
      if ( *(_BYTE *)(*(_DWORD *)a1 + 72) )
      {
        v17 = a1;
        v18 = 1;
        do
        {
          if ( *(unsigned __int8 *)(v17 + 51) == *a3 && *(unsigned __int8 *)(v17 + 52) == a3[1] )
          {
            v19 = v18 - 1;
            goto LABEL_27;
          }
          ++v18;
          v17 += 2;
        }
        while ( v18 != v15 + 1 );
        if ( *(unsigned __int8 *)(*(_DWORD *)a1 + 72) > 0x3Bu )
          errorlimit(a1, 60, "upvalues");
      }
      v20 = *(_DWORD *)(*(_DWORD *)a1 + 36);
      if ( v15 >= v16 )
      {
        v21 = luaM_growaux_(*(_DWORD **)(a1 + 16), *(_DWORD *)(v14 + 28), (int *)(v14 + 36), 4u, 2147483645, (int)"");
        v20 = *(_DWORD *)(v14 + 36);
        *(_DWORD *)(v14 + 28) = v21;
      }
      else
      {
        v21 = *(_DWORD *)(v14 + 28);
      }
      if ( v16 < v20 )
      {
        v22 = 4 * v16;
        while ( 1 )
        {
          *(_DWORD *)(v21 + v22) = 0;
          ++v16;
          v22 += 4;
          if ( v16 >= *(_DWORD *)(v14 + 36) )
            break;
          v21 = *(_DWORD *)(v14 + 28);
        }
      }
      *(_DWORD *)(*(_DWORD *)(v14 + 28) + 4 * *(unsigned __int8 *)(v14 + 72)) = a2;
      if ( (*(_BYTE *)(a2 + 5) & 3) != 0 && (*(_BYTE *)(v14 + 5) & 4) != 0 )
        luaC_barrierf(*(_DWORD *)(a1 + 16), v14, a2);
      *(_BYTE *)(a1 + 2 * *(unsigned __int8 *)(v14 + 72) + 51) = *a3;
      *(_BYTE *)(a1 + 2 * *(unsigned __int8 *)(v14 + 72) + 52) = a3[1];
      v19 = *(unsigned __int8 *)(v14 + 72);
      *(_BYTE *)(v14 + 72) = v19 + 1;
LABEL_27:
      result = 7;
      *a3 = 7;
      a3[1] = v19;
    }
    return result;
  }
LABEL_29:
  a3[4] = -1;
  *a3 = 6;
  a3[1] = v8;
  a3[3] = -1;
  if ( a4 )
    return 6;
  v23 = *(int **)(a1 + 20);
  if ( !v23 )
    return 6;
  while ( v8 < *((unsigned __int8 *)v23 + 8) )
  {
    v23 = (int *)*v23;
    if ( !v23 )
      return 6;
  }
  *((_BYTE *)v23 + 9) = 1;
  return 6;
}


// ===== 8554c0 error_expected =====
void __fastcall __noreturn error_expected(int a1, int a2)
{
  _DWORD *v3; // r5
  const char *v4; // r0
  int v5; // r1

  v3 = *(_DWORD **)(a1 + 32);
  v4 = (const char *)luaX_token2str(a1, a2);
  v5 = luaO_pushfstring(v3, "'%s' expected", v4);
  luaX_syntaxerror(a1, v5);
}


// ===== 8554f8 str_checkname =====
int __fastcall str_checkname(int a1)
{
  int v1; // r4

  if ( *(_DWORD *)(a1 + 12) != 285 )
    error_expected(a1, 285);
  v1 = *(_DWORD *)(a1 + 16);
  luaX_next(a1);
  return v1;
}


// ===== 855528 checkname =====
int __fastcall checkname(int a1, _DWORD *a2)
{
  int v4; // r0
  int result; // r0

  v4 = str_checkname(a1);
  result = luaK_stringK(*(_DWORD *)(a1 + 28), v4);
  a2[1] = result;
  a2[4] = -1;
  *a2 = 4;
  a2[3] = -1;
  return result;
}


// ===== 855560 field =====
int __fastcall field(int a1, int a2)
{
  int v2; // r6
  _DWORD v6[6]; // [sp+4h] [bp-18h] BYREF

  v2 = *(_DWORD *)(a1 + 28);
  luaK_exp2anyreg(v2);
  luaX_next(a1);
  checkname(a1, v6);
  return luaK_indexed(v2, a2, v6);
}


// ===== 8555ac singlevar =====
int __fastcall singlevar(int a1, _DWORD *a2)
{
  int v4; // r0
  int v5; // r6
  int v6; // r5
  int result; // r0

  v4 = str_checkname(a1);
  v5 = *(_DWORD *)(a1 + 28);
  v6 = v4;
  result = singlevaraux(v5, v4, a2, 1);
  if ( result == 8 )
  {
    result = luaK_stringK(v5, v6);
    a2[1] = result;
  }
  return result;
}


// ===== 8555f8 checknext =====
int __fastcall checknext(int a1, int a2)
{
  if ( a2 != *(_DWORD *)(a1 + 12) )
    error_expected(a1, a2);
  return luaX_next(a1);
}


// ===== 85561c check_match =====
int __fastcall check_match(int a1, int a2, int a3, int a4)
{
  int result; // r0
  _DWORD *v9; // r8
  const char *v10; // r7
  const char *v11; // r0
  int v12; // r1

  result = testnext(a1, a2);
  if ( !result )
  {
    if ( *(_DWORD *)(a1 + 4) != a4 )
    {
      v9 = *(_DWORD **)(a1 + 32);
      v10 = (const char *)luaX_token2str(a1, a2);
      v11 = (const char *)luaX_token2str(a1, a3);
      v12 = luaO_pushfstring(v9, "'%s' expected (to close '%s' at line %d)", v10, v11, a4);
      luaX_syntaxerror(a1, v12);
    }
    error_expected(a1, a2);
  }
  return result;
}


// ===== 8556bc adjust_assign =====
int __fastcall adjust_assign(int result, int a2, int a3, _DWORD *a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r6

  v4 = a2 - a3;
  v5 = *(_DWORD *)(result + 28);
  if ( (unsigned int)(*a4 - 13) <= 1 )
  {
    if ( v4 + 1 < 0 )
    {
      return luaK_setreturns(*(_DWORD *)(result + 28), a4, 0);
    }
    else
    {
      result = luaK_setreturns(*(_DWORD *)(result + 28), a4, v4 + 1);
      if ( v4 + 1 > 1 )
        return luaK_reserveregs(v5, v4);
    }
  }
  else
  {
    if ( *a4 )
      result = luaK_exp2nextreg(*(_DWORD *)(result + 28), a4);
    if ( v4 > 0 )
    {
      v6 = *(_DWORD *)(v5 + 36);
      luaK_reserveregs(v5, v4);
      return luaK_nil(v5, v6, v4);
    }
  }
  return result;
}


// ===== 855764 close_func =====
int __fastcall close_func(_DWORD *a1)
{
  int *v1; // r4
  _DWORD *v3; // r6
  char v4; // r3
  int v5; // r5
  int i; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r3
  __int16 v13; // r3
  int v14; // r2
  int v15; // r3
  int result; // r0
  int v17; // r3

  v1 = (int *)a1[7];
  v3 = (_DWORD *)a1[8];
  v4 = *((_BYTE *)v1 + 50);
  v5 = *v1;
  if ( v4 )
  {
    for ( i = *v1; ; i = *v1 )
    {
      v7 = (unsigned __int8)(v4 - 1);
      v8 = *(_DWORD *)(i + 24);
      *((_BYTE *)v1 + 50) = v7;
      *(_DWORD *)(v8 + 12 * *((unsigned __int16 *)v1 + v7 + 86) + 8) = v1[6];
      v4 = *((_BYTE *)v1 + 50);
      if ( !v4 )
        break;
    }
  }
  luaK_ret(v1, 0, 0);
  v9 = v1[6];
  if ( (unsigned int)(v9 + 1) > 0x3FFFFFFF )
    luaM_toobig(v3);
  *(_DWORD *)(v5 + 12) = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 12), 4 * *(_DWORD *)(v5 + 44), 4 * v9);
  *(_DWORD *)(v5 + 44) = v1[6];
  v10 = v1[6];
  if ( (unsigned int)(v10 + 1) > 0x3FFFFFFF )
    luaM_toobig(v3);
  *(_DWORD *)(v5 + 20) = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 20), 4 * *(_DWORD *)(v5 + 48), 4 * v10);
  *(_DWORD *)(v5 + 48) = v1[6];
  v11 = v1[10];
  if ( (unsigned int)(v11 + 1) > 0x1FFFFFFF )
    luaM_toobig(v3);
  *(_DWORD *)(v5 + 8) = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 8), 8 * *(_DWORD *)(v5 + 40), 8 * v11);
  *(_DWORD *)(v5 + 40) = v1[10];
  v12 = v1[11];
  if ( (unsigned int)(v12 + 1) > 0x3FFFFFFF )
    luaM_toobig(v3);
  *(_DWORD *)(v5 + 16) = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 16), 4 * *(_DWORD *)(v5 + 52), 4 * v12);
  *(_DWORD *)(v5 + 52) = v1[11];
  v13 = *((_WORD *)v1 + 24);
  if ( (unsigned int)(v13 + 1) > 0x15555555 )
    luaM_toobig(v3);
  *(_DWORD *)(v5 + 24) = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 24), 12 * *(_DWORD *)(v5 + 56), 12 * v13);
  v14 = *(_DWORD *)(v5 + 36);
  v15 = *(unsigned __int8 *)(v5 + 72);
  *(_DWORD *)(v5 + 56) = *((__int16 *)v1 + 24);
  result = luaM_realloc_((int)v3, *(_DWORD *)(v5 + 28), 4 * v14, 4 * v15);
  v17 = *(unsigned __int8 *)(v5 + 72);
  *(_DWORD *)(v5 + 28) = result;
  *(_DWORD *)(v5 + 36) = v17;
  a1[7] = v1[2];
  v3[2] -= 16;
  if ( (unsigned int)(a1[3] - 285) <= 1 )
    return luaX_newstring(a1, a1[4] + 16, *(_DWORD *)(a1[4] + 12));
  return result;
}


// ===== 8559dc body =====
int __fastcall body(_DWORD *a1, _DWORD *a2, int a3, int a4)
{
  int v7; // r0
  int *v8; // r3
  int v9; // r0
  int v10; // r1
  int v11; // r2
  _BYTE *v12; // r9
  int v13; // r6
  int v14; // r7
  int v15; // r3
  int v16; // r0
  int v17; // r3
  int v18; // r5
  int v19; // r2
  int v20; // r0
  int *v21; // r5
  int v22; // r7
  int v23; // r2
  int v24; // r6
  int v25; // r3
  int result; // r0
  int v27; // r2
  int *v28; // r4
  int v29; // r6
  int v30; // r1
  int v31; // r0
  int v32; // r0
  int v33; // r3
  int v34; // r3
  int v36[144]; // [sp+14h] [bp-240h] BYREF

  open_func(a1, (int)v36);
  *(_DWORD *)(v36[0] + 60) = a4;
  checknext((int)a1, 40);
  if ( a3 )
  {
    v7 = luaX_newstring(a1, "self", 4);
    new_localvar((int)a1, v7, 0);
    v8 = (int *)a1[7];
    v9 = *v8;
    v10 = v8[6];
    v11 = (unsigned __int8)(*((_BYTE *)v8 + 50) + 1);
    *((_BYTE *)v8 + 50) = v11;
    *(_DWORD *)(*(_DWORD *)(v9 + 24) + 12 * *((unsigned __int16 *)v8 + v11 + 85) + 4) = v10;
  }
  v12 = (_BYTE *)a1[7];
  v13 = 0;
  v14 = *(_DWORD *)v12;
  *(_BYTE *)(*(_DWORD *)v12 + 74) = 0;
  v15 = a1[3];
  if ( v15 != 41 )
  {
    while ( 1 )
    {
      if ( v15 == 279 )
      {
        luaX_next(a1);
        v16 = luaX_newstring(a1, "arg", 3);
        new_localvar((int)a1, v16, v13);
        *(_BYTE *)(v14 + 74) = 7;
        v17 = a1[7];
        v18 = v13 + 1;
        v19 = (unsigned __int8)(v13 + 1 + *(_BYTE *)(v17 + 50));
        *(_BYTE *)(v17 + 50) = v19;
        goto LABEL_14;
      }
      if ( v15 != 285 )
        luaX_syntaxerror(a1, "<name> or '...' expected");
      v31 = str_checkname((int)a1);
      v18 = v13 + 1;
      new_localvar((int)a1, v31, v13++);
      if ( *(_BYTE *)(v14 + 74) || !testnext((int)a1, 44) )
        break;
      v15 = a1[3];
    }
    v17 = a1[7];
    v19 = (unsigned __int8)(v18 + *(_BYTE *)(v17 + 50));
    *(_BYTE *)(v17 + 50) = v19;
    if ( !v18 )
      goto LABEL_15;
LABEL_14:
    while ( 1 )
    {
      v20 = *(unsigned __int16 *)(v17 + 2 * (v19 - v18--) + 172);
      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v17 + 24) + 12 * v20 + 4) = *(_DWORD *)(v17 + 24);
      if ( !v18 )
        break;
      v19 = *(unsigned __int8 *)(v17 + 50);
    }
LABEL_15:
    LOBYTE(v13) = *(_BYTE *)(v14 + 74) & 1;
  }
  *(_BYTE *)(v14 + 73) = v12[50] - v13;
  luaK_reserveregs(v12, (unsigned __int8)v12[50]);
  checknext((int)a1, 41);
  chunk(a1);
  *(_DWORD *)(v36[0] + 64) = a1[1];
  check_match((int)a1, 262, 265, a4);
  close_func(a1);
  v21 = (int *)a1[7];
  v22 = *v21;
  v23 = v21[11];
  v24 = *(_DWORD *)(*v21 + 52);
  if ( v24 <= v23 )
  {
    v32 = luaM_growaux_(
            (_DWORD *)a1[8],
            *(_DWORD *)(v22 + 16),
            (int *)(v22 + 52),
            4u,
            0x3FFFF,
            (int)"constant table overflow");
    v33 = *(_DWORD *)(v22 + 52);
    *(_DWORD *)(v22 + 16) = v32;
    if ( v24 < v33 )
    {
      v34 = 4 * v24;
      while ( 1 )
      {
        *(_DWORD *)(v32 + v34) = 0;
        ++v24;
        v34 += 4;
        if ( v24 >= *(_DWORD *)(v22 + 52) )
          break;
        v32 = *(_DWORD *)(v22 + 16);
      }
    }
    v23 = v21[11];
  }
  v25 = v23 + 1;
  *(_DWORD *)(*(_DWORD *)(v22 + 16) + 4 * v23) = v36[0];
  v21[11] = v23 + 1;
  if ( (*(_BYTE *)(v36[0] + 5) & 3) != 0 && (*(_BYTE *)(v22 + 5) & 4) != 0 )
  {
    luaC_barrierf(a1[8], v22, v36[0]);
    v25 = v21[11];
  }
  result = luaK_codeABx(v21, 36, 0, v25 - 1);
  v27 = v36[0];
  a2[1] = result;
  a2[4] = -1;
  *a2 = 11;
  a2[3] = -1;
  if ( *(_BYTE *)(v27 + 72) )
  {
    v28 = v36;
    v29 = 0;
    do
    {
      if ( *((_BYTE *)v28 + 51) == 6 )
        v30 = 0;
      else
        v30 = 4;
      result = luaK_codeABC(v21, v30, 0, *((unsigned __int8 *)v28 + 52), 0);
      ++v29;
      v28 = (int *)((char *)v28 + 2);
    }
    while ( v29 < *(unsigned __int8 *)(v36[0] + 72) );
  }
  return result;
}


// ===== 855d6c subexpr =====
int __fastcall subexpr(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  int v3; // r3
  unsigned int v7; // r2
  int v8; // r3
  int v9; // r4
  int v10; // r3
  int v11; // r4
  int v13; // r0
  int v14; // r1
  int v15; // r6
  int v16; // r0
  int v17; // r4
  int v18; // r0
  int v19; // r0
  _BYTE v20[20]; // [sp+Ch] [bp-14h] BYREF

  v3 = a1[8];
  v7 = (unsigned __int16)(*(_WORD *)(v3 + 52) + 1);
  *(_WORD *)(v3 + 52) = v7;
  if ( v7 > 0xC8 )
    luaX_lexerror(a1, "chunk has too many syntax levels", 0);
  v8 = a1[3];
  switch ( v8 )
  {
    case 45:
      v9 = 0;
      goto LABEL_12;
    case 270:
      v9 = 1;
      goto LABEL_12;
    case 35:
      v9 = 2;
LABEL_12:
      luaX_next(a1);
      subexpr(a1, a2, 8);
      luaK_prefix(a1[7], v9, a2);
      goto LABEL_13;
    case 269:
      *a2 = 1;
      a2[4] = -1;
      a2[1] = 0;
      a2[3] = -1;
LABEL_62:
      luaX_next(a1);
      goto LABEL_13;
  }
  if ( v8 > 269 )
  {
    if ( v8 == 279 )
    {
      v17 = a1[7];
      if ( !*(_BYTE *)(*(_DWORD *)v17 + 74) )
        luaX_syntaxerror(a1, "cannot use '...' outside a vararg function");
      v18 = a1[7];
      *(_BYTE *)(*(_DWORD *)v17 + 74) &= ~4u;
      v19 = luaK_codeABC(v18, 37, 0, 1, 0);
      a2[4] = -1;
      *a2 = 14;
      a2[1] = v19;
      a2[3] = -1;
    }
    else if ( v8 <= 279 )
    {
      if ( v8 != 275 )
        goto LABEL_10;
      *a2 = 2;
      a2[4] = -1;
      a2[1] = 0;
      a2[3] = -1;
    }
    else if ( v8 == 284 )
    {
      a2[1] = 0;
      a2[4] = -1;
      *a2 = 5;
      a2[3] = -1;
      a2[1] = a1[4];
    }
    else
    {
      if ( v8 != 286 )
        goto LABEL_10;
      v16 = luaK_stringK(a1[7], a1[4]);
      a2[4] = -1;
      *a2 = 4;
      a2[1] = v16;
      a2[3] = -1;
    }
    goto LABEL_62;
  }
  switch ( v8 )
  {
    case 263:
      *a2 = 3;
      a2[4] = -1;
      a2[1] = 0;
      a2[3] = -1;
      goto LABEL_62;
    case 265:
      luaX_next(a1);
      body(a1, a2, 0, a1[1]);
      break;
    case 123:
      constructor(a1, a2);
      break;
    default:
LABEL_10:
      primaryexp(a1, a2);
      break;
  }
LABEL_13:
  v10 = a1[3];
  if ( v10 == 94 )
  {
    v11 = 5;
  }
  else if ( v10 > 94 )
  {
    if ( v10 == 280 )
    {
      v11 = 8;
    }
    else if ( v10 > 280 )
    {
      if ( v10 == 282 )
      {
        v11 = 10;
      }
      else if ( v10 >= 282 )
      {
        if ( v10 != 283 )
          goto LABEL_20;
        v11 = 7;
      }
      else
      {
        v11 = 12;
      }
    }
    else
    {
      switch ( v10 )
      {
        case 271:
          v11 = 14;
          break;
        case 278:
          v11 = 6;
          break;
        case 257:
          v11 = 13;
          break;
        default:
          goto LABEL_20;
      }
    }
  }
  else if ( v10 == 45 )
  {
    v11 = 1;
  }
  else if ( v10 <= 45 )
  {
    switch ( v10 )
    {
      case '*':
        v11 = 2;
        break;
      case '+':
        v11 = 0;
        break;
      case '%':
        v11 = 4;
        break;
      default:
        goto LABEL_20;
    }
  }
  else
  {
    switch ( v10 )
    {
      case '<':
        v11 = 9;
        break;
      case '>':
        v11 = 11;
        break;
      case '/':
        v11 = 3;
        break;
      default:
        goto LABEL_20;
    }
  }
  if ( a3 >= priority[2 * v11] )
    goto LABEL_21;
  while ( 1 )
  {
    luaX_next(a1);
    luaK_infix(a1[7], v11, a2);
    v13 = subexpr(a1, v20, priority[2 * v11 + 1]);
    v14 = v11;
    v15 = v13;
    v11 = v13;
    luaK_posfix(a1[7], v14, a2, v20);
    if ( v15 == 15 )
      break;
    if ( priority[2 * v15] <= a3 )
      goto LABEL_21;
  }
LABEL_20:
  v11 = 15;
LABEL_21:
  --*(_WORD *)(a1[8] + 52);
  return v11;
}


// ===== 85618c cond =====
int __fastcall cond(_DWORD *a1)
{
  _DWORD v3[6]; // [sp+4h] [bp-18h] BYREF

  subexpr(a1, v3, 0);
  if ( v3[0] == 1 )
    v3[0] = 3;
  luaK_goiftrue(a1[7], v3);
  return v3[4];
}


// ===== 8561d0 yindex =====
int __fastcall yindex(_DWORD *a1, _DWORD *a2)
{
  luaX_next(a1);
  subexpr(a1, a2, 0);
  luaK_exp2val(a1[7], a2);
  return checknext((int)a1, 93);
}


// ===== 85620c recfield =====
int __fastcall recfield(_DWORD *a1, int a2)
{
  int v2; // r4
  int v5; // r5
  int v6; // r10
  int v7; // r6
  int v8; // r0
  int result; // r0
  _DWORD v10[5]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v11[6]; // [sp+1Ch] [bp-18h] BYREF

  v2 = a1[7];
  v5 = *(_DWORD *)(v2 + 36);
  if ( a1[3] == 285 )
  {
    if ( *(int *)(a2 + 24) > 2147483645 )
      errorlimit(a1[7], 2147483645, "items in a constructor");
    checkname((int)a1, v11);
  }
  else
  {
    yindex(a1, v11);
  }
  ++*(_DWORD *)(a2 + 24);
  checknext((int)a1, 61);
  v6 = luaK_exp2RK(v2, v11);
  subexpr(a1, v10, 0);
  v7 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 4);
  v8 = luaK_exp2RK(v2, v10);
  result = luaK_codeABC(v2, 9, v7, v6, v8);
  *(_DWORD *)(v2 + 36) = v5;
  return result;
}


// ===== 8562ec listfield =====
int __fastcall listfield(_DWORD *a1, _DWORD *a2)
{
  int result; // r0
  int v5; // r3
  int v6; // r2

  result = subexpr(a1, a2, 0);
  v5 = a2[7];
  if ( v5 > 2147483645 )
    errorlimit(a1[7], 2147483645, "items in a constructor");
  v6 = a2[8];
  a2[7] = v5 + 1;
  a2[8] = v6 + 1;
  return result;
}


// ===== 856340 constructor =====
unsigned int __fastcall constructor(_DWORD *a1, _DWORD *a2)
{
  int v2; // r6
  int v5; // r9
  int v6; // r0
  int v7; // r10
  int v8; // r0
  int v9; // r3
  unsigned int v10; // r0
  int v11; // r4
  int v12; // r5
  int v13; // r4
  int v14; // r5
  unsigned int result; // r0
  _DWORD v16[5]; // [sp+Ch] [bp-24h] BYREF
  _DWORD *v17; // [sp+20h] [bp-10h]
  unsigned int v18; // [sp+24h] [bp-Ch]
  unsigned int v19; // [sp+28h] [bp-8h]
  int v20; // [sp+2Ch] [bp-4h]

  v2 = a1[7];
  v5 = a1[1];
  v6 = luaK_codeABC(v2, 10, 0, 0, 0);
  *a2 = 11;
  a2[3] = -1;
  a2[4] = -1;
  a2[1] = v6;
  v7 = v6;
  v8 = a1[7];
  v16[4] = -1;
  v17 = a2;
  v16[3] = -1;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16[0] = 0;
  v16[1] = 0;
  luaK_exp2nextreg(v8, a2);
  checknext((int)a1, 123);
  while ( 1 )
  {
    v9 = a1[3];
    if ( v9 == 125 )
      break;
    if ( !v16[0] )
      goto LABEL_2;
    luaK_exp2nextreg(v2, v16);
    v16[0] = 0;
    if ( v20 == 50 )
    {
      luaK_setlist(v2, v17[1], v19);
      v9 = a1[3];
      v20 = 0;
      if ( v9 != 91 )
        goto LABEL_3;
LABEL_10:
      recfield(a1, (int)v16);
      if ( !testnext((int)a1, 44) )
        goto LABEL_11;
    }
    else
    {
      v9 = a1[3];
LABEL_2:
      if ( v9 == 91 )
        goto LABEL_10;
LABEL_3:
      if ( v9 == 285 )
      {
        luaX_lookahead(a1);
        if ( a1[5] == 61 )
          goto LABEL_10;
      }
      listfield(a1, v16);
      if ( !testnext((int)a1, 44) )
      {
LABEL_11:
        if ( !testnext((int)a1, 59) )
          break;
      }
    }
  }
  check_match((int)a1, 125, 123, v5);
  if ( !v20 )
    goto LABEL_17;
  if ( (unsigned int)(v16[0] - 13) <= 1 )
  {
    luaK_setreturns(v2, v16, -1);
    luaK_setlist(v2, v17[1], v19);
    v10 = --v19;
  }
  else
  {
    if ( v16[0] )
      luaK_exp2nextreg(v2, v16);
    luaK_setlist(v2, v17[1], v19);
LABEL_17:
    v10 = v19;
  }
  v11 = *(_DWORD *)(*(_DWORD *)v2 + 12);
  v12 = *(_DWORD *)(v11 + 4 * v7);
  *(_DWORD *)(v11 + 4 * v7) = v12 & 0x7FFFFF | (luaO_int2fb(v10) << 23);
  v13 = *(_DWORD *)(*(_DWORD *)v2 + 12);
  v14 = *(_DWORD *)(v13 + 4 * v7);
  result = luaO_int2fb(v18);
  *(_DWORD *)(v13 + 4 * v7) = (result << 14) & 0x7FFFC0 | v14 & 0xFF803FFF;
  return result;
}


// ===== 8565c0 explist1 =====
int __fastcall explist1(_DWORD *a1, _DWORD *a2)
{
  int v4; // r5

  v4 = 1;
  subexpr(a1, a2, 0);
  while ( testnext((int)a1, 44) )
  {
    luaK_exp2nextreg(a1[7], a2);
    subexpr(a1, a2, 0);
    ++v4;
  }
  return v4;
}


// ===== 856618 funcargs =====
int __fastcall funcargs(_DWORD *a1, _DWORD *a2)
{
  int v2; // r3
  int v5; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r3
  int result; // r0
  _DWORD v10[5]; // [sp+Ch] [bp-14h] BYREF

  v2 = a1[3];
  v5 = a1[7];
  v6 = a1[1];
  switch ( v2 )
  {
    case 123:
      constructor(a1, v10);
      break;
    case 286:
      v10[1] = luaK_stringK(a1[7], a1[4]);
      v10[4] = -1;
      v10[0] = 4;
      v10[3] = -1;
      luaX_next(a1);
      break;
    case 40:
      if ( a1[2] != v6 )
        luaX_syntaxerror(a1, "ambiguous syntax (function call x new statement)");
      luaX_next(a1);
      if ( a1[3] == 41 )
      {
        v10[0] = 0;
      }
      else
      {
        explist1(a1, v10);
        luaK_setreturns(v5, v10, -1);
      }
      check_match((int)a1, 41, 40, v6);
      break;
    default:
      luaX_syntaxerror(a1, "function arguments expected");
  }
  v7 = a2[1];
  if ( (unsigned int)(v10[0] - 13) > 1 )
  {
    if ( v10[0] )
      luaK_exp2nextreg(v5, v10);
    v8 = *(_DWORD *)(v5 + 36) - v7;
  }
  else
  {
    v8 = 0;
  }
  a2[1] = luaK_codeABC(v5, 28, v7, v8, 2);
  a2[4] = -1;
  *a2 = 13;
  a2[3] = -1;
  result = luaK_fixline(v5, v6);
  *(_DWORD *)(v5 + 36) = v7 + 1;
  return result;
}


// ===== 856790 primaryexp =====
int __fastcall primaryexp(_DWORD *a1, _DWORD *a2)
{
  int v2; // r7
  int v5; // r6
  int v6; // r3
  bool v7; // cc
  int result; // r0
  int v9; // r8
  _DWORD v10[5]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v11[6]; // [sp+14h] [bp-18h] BYREF

  v2 = a1[3];
  v5 = a1[7];
  if ( v2 == 40 )
  {
    v9 = a1[1];
    luaX_next(a1);
    subexpr(a1, a2, 0);
    check_match((int)a1, 41, 40, v9);
    result = luaK_dischargevars(a1[7], a2);
  }
  else
  {
    if ( v2 != 285 )
      luaX_syntaxerror(a1, "unexpected symbol");
    result = singlevar((int)a1, a2);
  }
LABEL_4:
  while ( 2 )
  {
    while ( 1 )
    {
      v6 = a1[3];
      v7 = v6 <= 58;
      if ( v6 != 58 )
        break;
LABEL_14:
      luaX_next(a1);
      checkname((int)a1, v10);
      luaK_self(v5, a2, v10);
      result = funcargs(a1, a2);
    }
    while ( !v7 )
    {
      if ( v6 == 123 || v6 == 286 )
      {
LABEL_16:
        luaK_exp2nextreg(v5, a2);
        result = funcargs(a1, a2);
        goto LABEL_4;
      }
      if ( v6 != 91 )
        return result;
      luaK_exp2anyreg(v5);
      yindex(a1, v11);
      result = luaK_indexed(v5, a2, v11);
      v6 = a1[3];
      v7 = v6 <= 58;
      if ( v6 == 58 )
        goto LABEL_14;
    }
    if ( v6 == 40 )
      goto LABEL_16;
    if ( v6 == 46 )
    {
      result = field((int)a1, (int)a2);
      continue;
    }
    return result;
  }
}


// ===== 8568f0 assignment =====
int __fastcall assignment(_DWORD *a1, _DWORD *a2, int a3)
{
  int v6; // r1
  int v7; // r0
  int v8; // r12
  int v10; // r8
  int v11; // r8
  _DWORD *v12; // r12
  int v13; // r1
  int v14; // r0
  int v15; // r3
  _DWORD *v16; // [sp+Ch] [bp-2Ch] BYREF
  int v17; // [sp+10h] [bp-28h] BYREF
  int v18; // [sp+14h] [bp-24h]
  _DWORD v19[5]; // [sp+24h] [bp-14h] BYREF

  if ( (unsigned int)(a2[1] - 6) > 3 )
    luaX_syntaxerror(a1, "syntax error");
  if ( testnext((int)a1, 44) )
  {
    v16 = a2;
    primaryexp(a1, &v17);
    if ( v17 == 6 )
    {
      v11 = a1[7];
      v12 = a2;
      v13 = 0;
      v14 = *(_DWORD *)(v11 + 36);
      do
      {
        if ( v12[1] == 9 )
        {
          v15 = v18;
          if ( v12[2] == v18 )
          {
            v12[2] = v14;
            v15 = v18;
            v13 = 1;
          }
          if ( v15 == v12[3] )
          {
            v12[3] = v14;
            v13 = 1;
          }
        }
        v12 = (_DWORD *)*v12;
      }
      while ( v12 );
      if ( v13 )
      {
        luaK_codeABC(v11, 0, *(_DWORD *)(v11 + 36), v18, 0);
        luaK_reserveregs(v11, 1);
      }
    }
    v6 = 200 - *(unsigned __int16 *)(a1[8] + 52);
    if ( v6 < a3 )
      errorlimit(a1[7], v6, "variables in assignment");
    assignment(a1, &v16, a3 + 1);
LABEL_6:
    v7 = a1[7];
    v8 = *(_DWORD *)(v7 + 36) - 1;
    v19[4] = -1;
    v19[0] = 12;
    v19[1] = v8;
    v19[3] = -1;
    return luaK_storevar(v7, a2 + 1, v19);
  }
  checknext((int)a1, 61);
  v10 = explist1(a1, v19);
  if ( a3 != v10 )
  {
    adjust_assign((int)a1, a3, v10, v19);
    if ( a3 < v10 )
      *(_DWORD *)(a1[7] + 36) = a3 + *(_DWORD *)(a1[7] + 36) - v10;
    goto LABEL_6;
  }
  luaK_setoneret(a1[7], v19);
  return luaK_storevar(a1[7], a2 + 1, v19);
}


// ===== 856ad8 exp1 =====
int __fastcall exp1(_DWORD *a1)
{
  int v2; // r4
  _DWORD v4[6]; // [sp+4h] [bp-18h] BYREF

  subexpr(a1, v4, 0);
  v2 = v4[0];
  luaK_exp2nextreg(a1[7], v4);
  return v2;
}


// ===== 856b10 chunk =====
int __fastcall chunk(int result)
{
  int v1; // r3
  _DWORD *v2; // r4
  unsigned int v3; // r2
  int v4; // r3
  int v5; // r7
  int v6; // r5
  int v7; // r10
  int v8; // r0
  char v9; // r3
  int v10; // r8
  int v11; // r0
  unsigned __int8 *v12; // r6
  int v13; // r3
  int v14; // r5
  int v15; // r1
  int v16; // r5
  int v17; // r8
  char v18; // r3
  char v19; // r2
  int v20; // r7
  int v21; // r7
  int v22; // r0
  int v23; // r5
  int v24; // r5
  int v25; // r0
  int v26; // r2
  int *v27; // r3
  int v28; // r1
  int v29; // r12
  int v30; // r2
  int v31; // r0
  int v32; // r2
  int v33; // r3
  int v34; // r2
  int v35; // r0
  int v36; // r5
  int v37; // r0
  int v38; // r3
  int j; // r8
  int v40; // r0
  int v41; // r0
  int i; // r3
  int v43; // r2
  int v44; // r8
  char v45; // r3
  int v46; // r0
  int v47; // r5
  int v48; // r7
  int v49; // r0
  int v50; // r5
  int v51; // r0
  int v52; // r0
  int v53; // r0
  int v54; // r0
  int v55; // r0
  int v56; // r0
  int v57; // r0
  int v58; // r0
  int v59; // r5
  int v60; // r0
  int v61; // r0
  bool v62; // zf
  int v63; // [sp+Ch] [bp-C8h]
  int v64; // [sp+Ch] [bp-C8h]
  int v65; // [sp+10h] [bp-C4h]
  int v66; // [sp+10h] [bp-C4h]
  int v67; // [sp+20h] [bp-B4h]
  int v68; // [sp+20h] [bp-B4h]
  int v69; // [sp+24h] [bp-B0h]
  int v70; // [sp+28h] [bp-ACh] BYREF
  int v71; // [sp+2Ch] [bp-A8h] BYREF
  int v72; // [sp+30h] [bp-A4h]
  int v73; // [sp+40h] [bp-94h] BYREF
  int v74; // [sp+44h] [bp-90h]
  _DWORD v75[5]; // [sp+54h] [bp-80h] BYREF
  _DWORD v76[5]; // [sp+68h] [bp-6Ch] BYREF
  _DWORD v77[5]; // [sp+7Ch] [bp-58h] BYREF
  int v78; // [sp+90h] [bp-44h] BYREF
  int v79; // [sp+94h] [bp-40h]
  char v80; // [sp+98h] [bp-3Ch]
  char v81; // [sp+99h] [bp-3Bh]
  char v82; // [sp+9Ah] [bp-3Ah]
  _DWORD v83[2]; // [sp+A4h] [bp-30h] BYREF
  char v84; // [sp+ACh] [bp-28h]
  char v85; // [sp+ADh] [bp-27h]
  char v86; // [sp+AEh] [bp-26h]
  _DWORD v87[5]; // [sp+B8h] [bp-1Ch] BYREF
  int v88; // [sp+CCh] [bp-8h] BYREF

  v1 = *(_DWORD *)(result + 32);
  v2 = (_DWORD *)result;
  v3 = (unsigned __int16)(*(_WORD *)(v1 + 52) + 1);
  *(_WORD *)(v1 + 52) = v3;
  if ( v3 > 0xC8 )
    luaX_lexerror(result, "chunk has too many syntax levels", 0);
  while ( 2 )
  {
    v4 = v2[3];
    if ( (unsigned int)(v4 - 260) > 0x1B || !*(_DWORD *)&priority[4 * v4 - 1008] )
    {
      v5 = v2[1];
      switch ( v4 )
      {
        case 258:
          luaX_next(v2);
          breakstat((int)v2);
          goto LABEL_44;
        case 259:
          luaX_next(v2);
          block(v2);
          check_match((int)v2, 262, 259, v5);
          goto LABEL_6;
        case 264:
          v44 = v2[7];
          v79 = -1;
          v82 = 1;
          v45 = *(_BYTE *)(v44 + 50);
          v81 = 0;
          v80 = v45;
          v78 = *(_DWORD *)(v44 + 20);
          *(_DWORD *)(v44 + 20) = &v78;
          luaX_next(v2);
          v46 = str_checkname((int)v2);
          v47 = v2[3];
          if ( v47 == 61 )
          {
            v64 = v2[7];
            v68 = *(_DWORD *)(v64 + 36);
            v66 = v46;
            v56 = luaX_newstring(v2, "(for index)", 11);
            new_localvar((int)v2, v56, 0);
            v57 = luaX_newstring(v2, "(for limit)", 11);
            new_localvar((int)v2, v57, 1);
            v58 = luaX_newstring(v2, "(for step)", 10);
            new_localvar((int)v2, v58, 2);
            new_localvar((int)v2, v66, 3);
            checknext((int)v2, 61);
            exp1(v2);
            checknext((int)v2, 44);
            exp1(v2);
            if ( testnext((int)v2, 44) )
            {
              exp1(v2);
            }
            else
            {
              v59 = *(_DWORD *)(v64 + 36);
              v60 = luaK_numberK(v64, 1065353216);
              luaK_codeABx(v64, 1, v59, v60);
              luaK_reserveregs(v64, 1);
            }
            forbody(v2, v68, v5, 1, 1);
          }
          else
          {
            if ( v47 != 267 && v47 != 44 )
              luaX_syntaxerror(v2, "'=' or 'in' expected");
            v67 = v2[7];
            v50 = 4;
            v65 = v46;
            v69 = *(_DWORD *)(v67 + 36);
            v51 = luaX_newstring(v2, "(for generator)", 15);
            new_localvar((int)v2, v51, 0);
            v52 = luaX_newstring(v2, "(for state)", 11);
            new_localvar((int)v2, v52, 1);
            v53 = luaX_newstring(v2, "(for control)", 13);
            new_localvar((int)v2, v53, 2);
            new_localvar((int)v2, v65, 3);
            while ( testnext((int)v2, 44) )
            {
              v54 = str_checkname((int)v2);
              new_localvar((int)v2, v54, v50++);
            }
            checknext((int)v2, 267);
            v63 = v2[1];
            v55 = explist1(v2, v87);
            adjust_assign((int)v2, 3, v55, v87);
            luaK_checkstack(v67, 3);
            forbody(v2, v69, v63, v50 - 3, 0);
          }
          check_match((int)v2, 262, 264, v5);
          leaveblock(v44);
          goto LABEL_6;
        case 265:
          luaX_next(v2);
          singlevar((int)v2, v83);
          for ( i = v2[3]; i == 46; i = v2[3] )
            field((int)v2, (int)v83);
          if ( i == 58 )
          {
            field((int)v2, (int)v83);
            v43 = 1;
          }
          else
          {
            v43 = 0;
          }
          body(v2, &v78, v43, v5);
          luaK_storevar(v2[7], v83, &v78);
          luaK_fixline(v2[7], v5);
          goto LABEL_6;
        case 266:
          v88 = -1;
          v36 = v2[7];
          v37 = test_then_block(v2);
          v38 = v2[3];
          for ( j = v37; v38 == 261; j = v41 )
          {
            v40 = luaK_jump(v36);
            luaK_concat(v36, &v88, v40);
            luaK_patchtohere(v36, j);
            v41 = test_then_block(v2);
            v38 = v2[3];
          }
          if ( v38 == 260 )
          {
            v61 = luaK_jump(v36);
            luaK_concat(v36, &v88, v61);
            luaK_patchtohere(v36, j);
            luaX_next(v2);
            block(v2);
          }
          else
          {
            luaK_concat(v36, &v88, j);
          }
          luaK_patchtohere(v36, v88);
          check_match((int)v2, 262, 266, v5);
          goto LABEL_6;
        case 268:
          luaX_next(v2);
          v23 = testnext((int)v2, 265);
          if ( v23 )
          {
            v24 = v2[7];
            v25 = str_checkname((int)v2);
            new_localvar((int)v2, v25, 0);
            v26 = *(_DWORD *)(v24 + 36);
            v77[4] = -1;
            v77[0] = 6;
            v77[1] = v26;
            v77[3] = -1;
            luaK_reserveregs(v24, 1);
            v27 = (int *)v2[7];
            v28 = *v27;
            v29 = v27[6];
            v30 = (unsigned __int8)(*((_BYTE *)v27 + 50) + 1);
            *((_BYTE *)v27 + 50) = v30;
            *(_DWORD *)(*(_DWORD *)(v28 + 24) + 12 * *((unsigned __int16 *)v27 + v30 + 85) + 4) = v29;
            body(v2, v76, 0, v2[1]);
            luaK_storevar(v24, v77, v76);
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v24 + 24)
                      + 12 * *(unsigned __int16 *)(v24 + 2 * *(unsigned __int8 *)(v24 + 50) + 170)
                      + 4) = *(_DWORD *)(v24 + 24);
          }
          else
          {
            do
            {
              v31 = str_checkname((int)v2);
              new_localvar((int)v2, v31, v23++);
            }
            while ( testnext((int)v2, 44) );
            v32 = testnext((int)v2, 61);
            if ( v32 )
              v32 = explist1(v2, v75);
            else
              v75[0] = 0;
            adjust_assign((int)v2, v23, v32, v75);
            v33 = v2[7];
            v34 = (unsigned __int8)(v23 + *(_BYTE *)(v33 + 50));
            for ( *(_BYTE *)(v33 + 50) = v34; ; v34 = *(unsigned __int8 *)(v33 + 50) )
            {
              v35 = *(unsigned __int16 *)(v33 + 2 * (v34 - v23--) + 172);
              *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v33 + 24) + 12 * v35 + 4) = *(_DWORD *)(v33 + 24);
              if ( !v23 )
                break;
            }
          }
          goto LABEL_6;
        case 272:
          v16 = v2[7];
          v17 = luaK_getlabel(v16);
          v79 = -1;
          v82 = 1;
          v18 = *(_BYTE *)(v16 + 50);
          v81 = 0;
          v80 = v18;
          v78 = *(_DWORD *)(v16 + 20);
          *(_DWORD *)(v16 + 20) = &v78;
          v86 = 0;
          v83[1] = -1;
          v19 = *(_BYTE *)(v16 + 50);
          v85 = 0;
          v84 = v19;
          v83[0] = *(_DWORD *)(v16 + 20);
          *(_DWORD *)(v16 + 20) = v83;
          luaX_next(v2);
          chunk(v2);
          check_match((int)v2, 276, 272, v5);
          v20 = cond(v2);
          if ( v85 )
          {
            breakstat((int)v2);
            luaK_patchtohere(v2[7], v20);
            leaveblock(v16);
            v21 = v2[7];
            v22 = luaK_jump(v16);
            luaK_patchlist(v21, v22, v17);
          }
          else
          {
            leaveblock(v16);
            luaK_patchlist(v2[7], v20, v17);
          }
          leaveblock(v16);
          goto LABEL_6;
        case 273:
          v12 = (unsigned __int8 *)v2[7];
          luaX_next(v2);
          v13 = v2[3];
          if ( (unsigned int)(v13 - 260) > 0x1B )
          {
            if ( v13 == 59 )
              goto LABEL_9;
          }
          else if ( *(_DWORD *)&priority[4 * v13 - 1008] )
          {
LABEL_9:
            v14 = 0;
            v15 = 0;
            goto LABEL_10;
          }
          v49 = explist1(v2, &v73);
          v14 = v49;
          if ( (unsigned int)(v73 - 13) <= 1 )
          {
            luaK_setreturns(v12, &v73, -1);
            v62 = v14 == 1;
            if ( v14 == 1 )
              v62 = v73 == 13;
            if ( v62 )
              *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v12 + 12) + 4 * v74) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v12 + 12)
                                                                                  + 4 * v74)
                                                                      & 0xFFFFFFC0
                                                                      | 0x1D;
            v15 = v12[50];
            v14 = -1;
          }
          else if ( v49 == 1 )
          {
            v15 = luaK_exp2anyreg(v12);
          }
          else
          {
            luaK_exp2nextreg(v12, &v73);
            v15 = v12[50];
          }
LABEL_10:
          luaK_ret(v12, v15, v14);
LABEL_44:
          result = testnext((int)v2, 59);
          *(_DWORD *)(v2[7] + 36) = *(unsigned __int8 *)(v2[7] + 50);
          break;
        case 277:
          v6 = v2[7];
          luaX_next(v2);
          v7 = luaK_getlabel(v6);
          v8 = cond(v2);
          v79 = -1;
          v82 = 1;
          v9 = *(_BYTE *)(v6 + 50);
          v81 = 0;
          v80 = v9;
          v78 = *(_DWORD *)(v6 + 20);
          *(_DWORD *)(v6 + 20) = &v78;
          v10 = v8;
          checknext((int)v2, 259);
          block(v2);
          v11 = luaK_jump(v6);
          luaK_patchlist(v6, v11, v7);
          check_match((int)v2, 262, 277, v5);
          leaveblock(v6);
          luaK_patchtohere(v6, v10);
          goto LABEL_6;
        default:
          v48 = v2[7];
          primaryexp(v2, &v71);
          if ( v71 == 13 )
          {
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v48 + 12) + 4 * v72) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v48 + 12)
                                                                                + 4 * v72)
                                                                    & 0xFF803FFF
                                                                    | 0x4000;
          }
          else
          {
            v70 = 0;
            assignment(v2, &v70, 1);
          }
LABEL_6:
          result = testnext((int)v2, 59);
          *(_DWORD *)(v2[7] + 36) = *(unsigned __int8 *)(v2[7] + 50);
          continue;
      }
    }
    break;
  }
  --*(_WORD *)(v2[8] + 52);
  return result;
}


// ===== 8575b0 block =====
int __fastcall block(int a1)
{
  int v1; // r4
  char v2; // r2
  _DWORD v4[2]; // [sp+4h] [bp-Ch] BYREF
  char v5; // [sp+Ch] [bp-4h]
  char v6; // [sp+Dh] [bp-3h]
  char v7; // [sp+Eh] [bp-2h]

  v1 = *(_DWORD *)(a1 + 28);
  v7 = 0;
  v4[1] = -1;
  v2 = *(_BYTE *)(v1 + 50);
  v6 = 0;
  v5 = v2;
  v4[0] = *(_DWORD *)(v1 + 20);
  *(_DWORD *)(v1 + 20) = v4;
  chunk(a1);
  return leaveblock(v1);
}


// ===== 8575fc test_then_block =====
int __fastcall test_then_block(_DWORD *a1)
{
  int v2; // r5

  luaX_next(a1);
  v2 = cond(a1);
  checknext((int)a1, 274);
  block((int)a1);
  return v2;
}


// ===== 857630 forbody =====
int __fastcall forbody(int a1, int a2, int a3, int a4, int a5)
{
  int v5; // r4
  int v6; // lr
  int v7; // r5
  int v9; // lr
  int v13; // r7
  char v14; // r2
  int v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // lr
  int v19; // r5
  _DWORD v21[2]; // [sp+Ch] [bp-Ch] BYREF
  char v22; // [sp+14h] [bp-4h]
  char v23; // [sp+15h] [bp-3h]
  char v24; // [sp+16h] [bp-2h]

  v5 = *(_DWORD *)(a1 + 28);
  v6 = *(_DWORD *)v5;
  v7 = (unsigned __int8)(*(_BYTE *)(v5 + 50) + 3);
  *(_BYTE *)(v5 + 50) = v7;
  v9 = *(_DWORD *)(v6 + 24) + 12 * *(unsigned __int16 *)(v5 + 2 * v7 + 166);
  *(_DWORD *)(v9 + 4) = *(_DWORD *)(v5 + 24);
  *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v5 + 24)
            + 12 * *(unsigned __int16 *)(v5 + 2 * *(unsigned __int8 *)(v5 + 50) + 168)
            + 4) = *(_DWORD *)(v5 + 24);
  *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v5 + 24)
            + 12 * *(unsigned __int16 *)(v5 + 2 * *(unsigned __int8 *)(v5 + 50) + 170)
            + 4) = *(_DWORD *)(v5 + 24);
  checknext(a1, 259);
  if ( a5 )
    v13 = luaK_codeABx(v5, 32, a2, 131070);
  else
    v13 = luaK_jump(v5);
  v24 = 0;
  v21[1] = -1;
  v14 = *(_BYTE *)(v5 + 50);
  v23 = 0;
  v22 = v14;
  v21[0] = *(_DWORD *)(v5 + 20);
  *(_DWORD *)(v5 + 20) = v21;
  v15 = *(_DWORD *)(a1 + 28);
  v16 = (unsigned __int8)(a4 + *(_BYTE *)(v15 + 50));
  *(_BYTE *)(v15 + 50) = v16;
  if ( a4 )
  {
    v17 = a4;
    while ( 1 )
    {
      v18 = *(unsigned __int16 *)(v15 + 2 * (v16 - v17--) + 172);
      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v15 + 24) + 12 * v18 + 4) = *(_DWORD *)(v15 + 24);
      if ( !v17 )
        break;
      v16 = *(unsigned __int8 *)(v15 + 50);
    }
  }
  luaK_reserveregs(v5, a4);
  block(a1);
  leaveblock(v5);
  luaK_patchtohere(v5, v13);
  if ( a5 )
  {
    v19 = luaK_codeABx(v5, 31, a2, 131070);
    luaK_fixline(v5, a3);
  }
  else
  {
    luaK_codeABC(v5, 33, a2, 0, a4);
    luaK_fixline(v5, a3);
    v19 = luaK_jump(v5);
  }
  return luaK_patchlist(v5, v19, v13 + 1);
}


// ===== 857820 luaY_parser =====
int __fastcall luaY_parser(int a1, int a2, int a3, char *a4)
{
  size_t v7; // r0
  int v8; // r0
  _DWORD v10[143]; // [sp+0h] [bp-270h] BYREF
  _DWORD v11[13]; // [sp+23Ch] [bp-34h] BYREF

  v11[10] = a3;
  v7 = LC_API_STRLEN_0(a4);
  v8 = luaS_newlstr(a1, a4, v7);
  luaX_setinput(a1, v11, a2, v8);
  open_func(v11, (int)v10);
  *(_BYTE *)(v10[0] + 74) = 2;
  luaX_next(v11);
  chunk((int)v11);
  if ( v11[3] != 287 )
    error_expected((int)v11, 287);
  close_func(v11);
  return v10[0];
}


// ===== 8578bc freestack =====
int __fastcall freestack(int a1, int *a2)
{
  luaM_realloc_(a1, a2[10], 24 * a2[12], 0);
  return luaM_realloc_(a1, a2[8], 8 * a2[11], 0);
}


// ===== 8578fc close_state =====
int __fastcall close_state(int a1)
{
  int v2; // r5

  v2 = *(_DWORD *)(a1 + 16);
  luaF_close(a1, *(_DWORD *)(a1 + 32));
  luaC_freeall(a1);
  luaM_realloc_(a1, **(_DWORD **)(a1 + 16), 4 * *(_DWORD *)(*(_DWORD *)(a1 + 16) + 8), 0);
  *(_DWORD *)(v2 + 52) = luaM_realloc_(a1, *(_DWORD *)(v2 + 52), *(_DWORD *)(v2 + 60), 0);
  *(_DWORD *)(v2 + 60) = 0;
  freestack(a1, (int *)a1);
  return (*(int (__fastcall **)(_DWORD, int, int, _DWORD))(v2 + 12))(*(_DWORD *)(v2 + 16), a1, 332, 0);
}


// ===== 85797c lua_close =====
int __fastcall lua_close(int a1)
{
  int v1; // r4
  int *v2; // r3
  int v3; // r3

  v1 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 100);
  luaF_close(v1, *(_DWORD *)(v1 + 32));
  luaC_separateudata(v1, 1);
  *(_DWORD *)(v1 + 100) = 0;
  do
  {
    v2 = *(int **)(v1 + 40);
    *(_DWORD *)(v1 + 20) = v2;
    v3 = *v2;
    *(_WORD *)(v1 + 54) = 0;
    *(_WORD *)(v1 + 52) = 0;
    *(_DWORD *)(v1 + 12) = v3;
    *(_DWORD *)(v1 + 8) = v3;
  }
  while ( luaD_rawrunprotected(v1, (void (__fastcall *)(int, int))callallgcTM, 0) );
  return close_state(v1);
}


// ===== 8579f8 lua_newstate =====
int __fastcall lua_newstate(int (__fastcall *a1)(int, _DWORD, _DWORD, int), int a2)
{
  int v4; // r0
  int v5; // r6
  int v6; // r5
  int v7; // r2
  int v8; // r3

  v4 = a1(a2, 0, 0, 332);
  v5 = v4;
  if ( !v4 )
    return 0;
  *(_BYTE *)(v4 + 4) = 8;
  *(_BYTE *)(v4 + 124) = 33;
  *(_BYTE *)(v4 + 5) = 97;
  v7 = 0;
  *(_DWORD *)(v4 + 116) = a1;
  *(_DWORD *)(v4 + 120) = a2;
  *(_DWORD *)v4 = 0;
  *(_DWORD *)(v4 + 32) = 0;
  *(_DWORD *)(v4 + 44) = 0;
  *(_DWORD *)(v4 + 96) = 0;
  *(_DWORD *)(v4 + 68) = 0;
  *(_BYTE *)(v4 + 56) = 0;
  *(_DWORD *)(v4 + 60) = 0;
  *(_DWORD *)(v4 + 64) = 0;
  *(_DWORD *)(v4 + 88) = 0;
  *(_DWORD *)(v4 + 48) = 0;
  *(_WORD *)(v4 + 54) = 0;
  *(_WORD *)(v4 + 52) = 0;
  *(_BYTE *)(v4 + 6) = 0;
  *(_DWORD *)(v4 + 20) = 0;
  *(_DWORD *)(v4 + 40) = 0;
  *(_DWORD *)(v4 + 24) = 0;
  *(_DWORD *)(v4 + 100) = 0;
  *(_DWORD *)(v4 + 76) = 0;
  *(_DWORD *)(v4 + 168) = 0;
  *(_DWORD *)(v4 + 112) = 0;
  *(_DWORD *)(v4 + 108) = 0;
  *(_DWORD *)(v4 + 104) = 0;
  *(_BYTE *)(v4 + 57) = 1;
  *(_DWORD *)(v4 + 224) = v4 + 208;
  *(_DWORD *)(v4 + 16) = v4 + 104;
  *(_DWORD *)(v4 + 204) = v4;
  *(_DWORD *)(v4 + 220) = v4 + 208;
  v6 = v4;
  *(_DWORD *)(v4 + 200) = 0;
  *(_DWORD *)(v4 + 156) = 0;
  *(_BYTE *)(v4 + 125) = 0;
  *(_DWORD *)(v4 + 164) = 0;
  *(_DWORD *)(v4 + 192) = 0;
  *(_DWORD *)(v4 + 128) = 0;
  *(_DWORD *)(v4 + 140) = 0;
  *(_DWORD *)(v4 + 144) = 0;
  *(_DWORD *)(v4 + 148) = 0;
  *(_DWORD *)(v4 + 152) = 0;
  *(_DWORD *)(v4 + 180) = 0;
  *(_DWORD *)(v4 + 136) = v4 + 132;
  *(_DWORD *)(v4 + 172) = 332;
  *(_DWORD *)(v4 + 188) = 200;
  *(_DWORD *)(v4 + 132) = v4;
  *(_DWORD *)(v4 + 184) = 200;
  v8 = v4;
  do
  {
    ++v7;
    *(_DWORD *)(v8 + 228) = 0;
    v8 += 4;
  }
  while ( v7 != 9 );
  if ( !luaD_rawrunprotected(v4, (void (__fastcall *)(int, int))f_luaopen, 0) )
    return v6;
  close_state(v5);
  return 0;
}


// ===== 857b6c stack_init =====
int __fastcall stack_init(_DWORD *a1, int a2)
{
  int v4; // r0
  int result; // r0
  int v6; // r3
  int v7; // r3
  _DWORD *v8; // r2
  int v9; // r1
  int v10; // r2

  v4 = luaM_realloc_(a2, 0, 0, 192);
  a1[12] = 8;
  a1[9] = v4 + 168;
  a1[10] = v4;
  a1[5] = v4;
  result = luaM_realloc_(a2, 0, 0, 360);
  v6 = a1[5];
  a1[2] = result;
  a1[11] = 45;
  a1[7] = result + 312;
  a1[8] = result;
  *(_DWORD *)(v6 + 4) = result;
  v7 = a1[2];
  *(_DWORD *)(v7 + 4) = 0;
  v8 = (_DWORD *)a1[5];
  v7 += 8;
  a1[2] = v7;
  *v8 = v7;
  v9 = a1[2];
  v10 = a1[5];
  a1[3] = v7;
  *(_DWORD *)(v10 + 8) = v9 + 160;
  return result;
}


// ===== 857c0c luaE_freethread =====
int __fastcall luaE_freethread(int a1, int a2)
{
  luaF_close(a2, *(_DWORD *)(a2 + 32));
  freestack(a1, (int *)a2);
  return luaM_realloc_(a1, a2, 104, 0);
}


// ===== 857c48 callallgcTM =====
// attributes: thunk
int __fastcall callallgcTM(int result, int a2, int a3)
{
  return luaC_callGCTM(result, a2, a3);
}


// ===== 857c4c f_luaopen =====
int __fastcall f_luaopen(_DWORD *a1)
{
  int v2; // r5
  int v3; // r6
  int result; // r0

  v2 = a1[4];
  stack_init(a1, (int)a1);
  a1[18] = luaH_new(a1, 0, 2);
  a1[19] = 5;
  v3 = a1[4];
  *(_DWORD *)(v3 + 92) = luaH_new(a1, 0, 2);
  *(_DWORD *)(v3 + 96) = 5;
  luaS_resize(a1, 32);
  luaT_init(a1);
  luaX_init(a1);
  result = luaS_newlstr((int)a1, "not enough memory", 0x11u);
  *(_BYTE *)(result + 5) |= 0x20u;
  *(_DWORD *)(v2 + 64) = 4 * *(_DWORD *)(v2 + 68);
  return result;
}


// ===== 857ce8 luaE_newthread =====
int __fastcall luaE_newthread(int a1)
{
  int v2; // r5
  int v3; // r1
  int v5; // r3
  int v6; // r2

  v2 = luaM_realloc_(a1, 0, 0, 104);
  luaC_link(a1, v2, 8);
  v3 = *(_DWORD *)(a1 + 16);
  *(_BYTE *)(v2 + 6) = 0;
  *(_DWORD *)(v2 + 16) = v3;
  *(_BYTE *)(v2 + 57) = 1;
  *(_DWORD *)(v2 + 76) = 0;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 44) = 0;
  *(_DWORD *)(v2 + 96) = 0;
  *(_DWORD *)(v2 + 68) = 0;
  *(_BYTE *)(v2 + 56) = 0;
  *(_DWORD *)(v2 + 60) = 0;
  *(_DWORD *)(v2 + 64) = 0;
  *(_DWORD *)(v2 + 88) = 0;
  *(_DWORD *)(v2 + 48) = 0;
  *(_WORD *)(v2 + 54) = 0;
  *(_WORD *)(v2 + 52) = 0;
  *(_DWORD *)(v2 + 20) = 0;
  *(_DWORD *)(v2 + 40) = 0;
  *(_DWORD *)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 100) = 0;
  stack_init((_DWORD *)v2, a1);
  *(_DWORD *)(v2 + 72) = *(_DWORD *)(a1 + 72);
  *(_DWORD *)(v2 + 76) = *(_DWORD *)(a1 + 76);
  *(_BYTE *)(v2 + 56) = *(_BYTE *)(a1 + 56);
  v5 = *(_DWORD *)(a1 + 60);
  *(_DWORD *)(v2 + 60) = v5;
  v6 = *(_DWORD *)(a1 + 68);
  *(_DWORD *)(v2 + 64) = v5;
  *(_DWORD *)(v2 + 68) = v6;
  return v2;
}


// ===== 857dac luaS_newudata =====
int __fastcall luaS_newudata(_DWORD *a1, unsigned int a2, int a3)
{
  int result; // r0
  char v7; // r2

  if ( a2 > 0xFFFFFFE5 )
    luaM_toobig(a1);
  result = luaM_realloc_((int)a1, 0, 0, a2 + 24);
  v7 = *(_BYTE *)(a1[4] + 20);
  *(_BYTE *)(result + 4) = 7;
  *(_DWORD *)(result + 16) = a2;
  *(_BYTE *)(result + 5) = v7 & 3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = a3;
  *(_DWORD *)result = **(_DWORD **)(a1[4] + 100);
  **(_DWORD **)(a1[4] + 100) = result;
  return result;
}


// ===== 857e24 luaS_resize =====
_DWORD *__fastcall luaS_resize(_DWORD *result, int a2)
{
  int v2; // r7
  int *v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r1
  int i; // lr
  _DWORD *v9; // r3
  _DWORD *v10; // r2
  int v11; // r1
  int v12; // r0
  int v13; // r4

  v2 = (int)result;
  if ( *(_BYTE *)(result[4] + 21) != 2 )
  {
    if ( (unsigned int)(a2 + 1) > 0x3FFFFFFF )
      luaM_toobig(result);
    v12 = luaM_realloc_((int)result, 0, 0, 4 * a2);
    v13 = v12;
    v4 = *(int **)(v2 + 16);
    if ( a2 > 0 )
    {
      v5 = 0;
      do
        *(_DWORD *)(v12 + 4 * v5++) = 0;
      while ( v5 != a2 );
    }
    v6 = v4[2];
    if ( v6 > 0 )
    {
      v7 = *v4;
      for ( i = 0; i < v6; ++i )
      {
        v9 = *(_DWORD **)(v7 + 4 * i);
        if ( v9 )
        {
          do
          {
            v10 = (_DWORD *)*v9;
            v11 = (a2 - 1) & v9[2];
            *v9 = *(_DWORD *)(v12 + 4 * v11);
            *(_DWORD *)(v12 + 4 * v11) = v9;
            v9 = v10;
          }
          while ( v10 );
          v7 = *v4;
          v6 = v4[2];
        }
      }
    }
    else
    {
      v7 = *v4;
    }
    result = (_DWORD *)luaM_realloc_(v2, v7, 4 * v6, 0);
    *v4 = v13;
    v4[2] = a2;
  }
  return result;
}


// ===== 857f08 luaS_newlstr =====
_DWORD *__fastcall luaS_newlstr(_DWORD *a1, char *a2, size_t a3)
{
  size_t v4; // r2
  size_t v5; // r3
  size_t v8; // r4
  size_t v9; // r2
  char *v10; // r1
  int v11; // r10
  int *v12; // r7
  _DWORD *v13; // r8
  unsigned __int8 v14; // r3
  int v16; // r0
  char v17; // r3
  _DWORD *v18; // r3
  int v19; // r4
  int v20; // r1
  unsigned int v21; // r2

  v4 = a3 >> 5;
  v5 = v4 + 1;
  if ( a3 >= v4 + 1 )
  {
    v9 = ~v4 + a3;
    v10 = &a2[a3 - 1];
    v8 = a3;
    do
    {
      v9 -= v5;
      v8 ^= 32 * v8 + (v8 >> 2) + (unsigned __int8)*v10;
      v10 -= v5;
    }
    while ( !__CFADD__(v9, v5) );
  }
  else
  {
    v8 = a3;
  }
  v11 = a1[4];
  v12 = *(int **)(*(_DWORD *)v11 + 4 * (v8 & (*(_DWORD *)(v11 + 8) - 1)));
  if ( v12 )
  {
    while ( 1 )
    {
      if ( v12[3] == a3 )
      {
        v13 = v12;
        if ( !memcmp(a2, v12 + 4, a3) )
          break;
      }
      v12 = (int *)*v12;
      if ( !v12 )
        goto LABEL_14;
    }
    v14 = *((_BYTE *)v12 + 5);
    if ( (v14 & (unsigned __int8)~*(_BYTE *)(v11 + 20) & 3) != 0 )
      *((_BYTE *)v12 + 5) = v14 ^ 3;
    return v13;
  }
LABEL_14:
  if ( a3 + 1 > 0xFFFFFFED )
    luaM_toobig(a1);
  v16 = luaM_realloc_((int)a1, 0, 0, a3 + 17);
  *(_DWORD *)(v16 + 12) = a3;
  *(_DWORD *)(v16 + 8) = v8;
  v13 = (_DWORD *)v16;
  v17 = *(_BYTE *)(a1[4] + 20);
  *(_BYTE *)(v16 + 4) = 4;
  *(_BYTE *)(v16 + 5) = v17 & 3;
  *(_BYTE *)(v16 + 6) = 0;
  memcpy((void *)(v16 + 16), a2, a3);
  *((_BYTE *)v13 + a3 + 16) = 0;
  v18 = (_DWORD *)a1[4];
  v19 = v8 & (v18[2] - 1);
  *v13 = *(_DWORD *)(*v18 + 4 * v19);
  *(_DWORD *)(*v18 + 4 * v19) = v13;
  v20 = v18[2];
  v21 = v18[1] + 1;
  v18[1] = v21;
  if ( v21 <= v20 || v20 > 1073741822 )
    return v13;
  luaS_resize(a1, 2 * v20);
  return v13;
}


// ===== 8580a4 str_upper =====
int __fastcall str_upper(_DWORD *a1)
{
  int v2; // r8
  int *v3; // r7
  unsigned int v4; // r10
  char v5; // r0
  int v6; // r7
  unsigned int v8; // [sp+4h] [bp-414h] BYREF
  _DWORD v9[258]; // [sp+8h] [bp-410h] BYREF
  int v10; // [sp+414h] [bp-4h] BYREF

  v2 = luaL_checklstring(a1, 1, &v8);
  luaL_buffinit((int)a1, v9);
  if ( v8 )
  {
    v3 = (int *)v9[0];
    v4 = 0;
    do
    {
      while ( v3 < &v10 )
      {
        *(_BYTE *)v3 = toupper(*(unsigned __int8 *)(v2 + v4));
        v3 = (int *)((char *)v3 + 1);
        ++v4;
        v9[0] = v3;
        if ( v8 <= v4 )
          goto LABEL_6;
      }
      luaL_prepbuffer(v9);
      v5 = toupper(*(unsigned __int8 *)(v2 + v4));
      v6 = v9[0];
      ++v4;
      *(_BYTE *)v9[0] = v5;
      v3 = (int *)(v6 + 1);
      v9[0] = v3;
    }
    while ( v8 > v4 );
  }
LABEL_6:
  luaL_pushresult(v9);
  return 1;
}


// ===== 858198 str_reverse =====
int __fastcall str_reverse(_DWORD *a1)
{
  int v2; // r8
  bool v3; // zf
  int v4; // r3
  int *v5; // r2
  int v6; // r2
  int v8; // [sp+4h] [bp-414h] BYREF
  _DWORD v9[258]; // [sp+8h] [bp-410h] BYREF
  int v10; // [sp+414h] [bp-4h] BYREF

  v2 = luaL_checklstring(a1, 1, &v8);
  luaL_buffinit((int)a1, v9);
  v3 = v8 == 0;
  v4 = --v8;
  if ( !v3 )
  {
    v5 = (int *)v9[0];
    do
    {
      while ( v5 < &v10 )
      {
        *(_BYTE *)v5 = *(_BYTE *)(v2 + v4);
        v5 = (int *)((char *)v5 + 1);
        v9[0] = v5;
        v3 = v8 == 0;
        v4 = --v8;
        if ( v3 )
          goto LABEL_7;
      }
      luaL_prepbuffer(v9);
      v6 = v9[0];
      *(_BYTE *)v9[0] = *(_BYTE *)(v2 + v8);
      v5 = (int *)(v6 + 1);
      v9[0] = v5;
      v3 = v8 == 0;
      v4 = --v8;
    }
    while ( !v3 );
  }
LABEL_7:
  luaL_pushresult(v9);
  return 1;
}


// ===== 858294 str_sub =====
int __fastcall str_sub(_DWORD *a1)
{
  int v2; // r6
  int v3; // r0
  int v4; // r4
  int v5; // r0
  int v6; // r4
  int v7; // r2
  int v9; // [sp+4h] [bp-4h] BYREF

  v2 = luaL_checklstring(a1, 1, &v9);
  v3 = luaL_checkinteger(a1, 2);
  v4 = v3;
  if ( v3 < 0 )
    v4 = v3 + v9 + 1;
  v5 = luaL_optinteger(a1, 3, -1);
  v6 = v4 & ~(v4 >> 31);
  if ( v5 < 0 )
    v5 += v9 + 1;
  v7 = v5 & ~(v5 >> 31);
  if ( v7 >= v9 )
    v7 = v9;
  if ( !v6 )
    v6 = 1;
  if ( v6 <= v7 )
    lua_pushlstring((int)a1, (void *)(v2 + v6 - 1), v7 + 1 - v6);
  else
    lua_pushlstring((int)a1, "", 0);
  return 1;
}


// ===== 85834c str_rep =====
int __fastcall str_rep(_DWORD *a1)
{
  int v2; // r7
  int v3; // r6
  int i; // r4
  int v6; // [sp+4h] [bp-418h] BYREF
  _DWORD v7[259]; // [sp+8h] [bp-414h] BYREF

  v2 = luaL_checklstring(a1, 1, &v6);
  v3 = luaL_checkinteger(a1, 2);
  luaL_buffinit((int)a1, v7);
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
      luaL_addlstring(v7, v2, v6);
  }
  luaL_pushresult(v7);
  return 1;
}


// ===== 858404 writer =====
int __fastcall writer(int a1, int a2, int a3, _DWORD *a4)
{
  luaL_addlstring(a4, a2, a3);
  return 0;
}


// ===== 858418 str_len =====
int __fastcall str_len(_DWORD *a1)
{
  int v3; // [sp+4h] [bp-4h] BYREF

  luaL_checklstring(a1, 1, &v3);
  lua_pushinteger((int)a1, v3);
  return 1;
}


// ===== 858448 classend =====
char *__fastcall classend(int a1, char *a2)
{
  int v2; // r3
  _BYTE *v3; // r4
  int v5; // r3

  v2 = *a2;
  v3 = a2 + 1;
  if ( v2 != 37 )
  {
    if ( v2 != 91 )
      return a2 + 1;
    v5 = (unsigned __int8)a2[1];
    if ( v5 == 94 )
    {
      v3 = a2 + 2;
      v5 = (unsigned __int8)a2[2];
    }
    if ( !v5 )
LABEL_12:
      luaL_error(*(_DWORD *)(a1 + 8), (int)"malformed pattern (missing ']')");
    while ( 1 )
    {
      ++v3;
      if ( v5 != 37 )
        goto LABEL_10;
      if ( *v3 )
        break;
LABEL_11:
      v5 = (unsigned __int8)*v3;
      if ( !*v3 )
        goto LABEL_12;
    }
    ++v3;
LABEL_10:
    if ( *v3 == 93 )
      return v3 + 1;
    goto LABEL_11;
  }
  if ( !a2[1] )
    luaL_error(*(_DWORD *)(a1 + 8), (int)"malformed pattern (ends with '%%')");
  return v3 + 1;
}


// ===== 858518 push_onecapture =====
float __fastcall push_onecapture(_DWORD *a1, int a2, void *a3, int a4)
{
  int v4; // r0
  void *v5; // r1
  size_t v6; // r2
  int v7; // r5

  if ( a1[3] <= a2 )
  {
    if ( a2 )
      luaL_error(a1[2], (int)"invalid capture index");
    v4 = a1[2];
    v5 = a3;
    v6 = a4 - (_DWORD)a3;
    return COERCE_FLOAT(lua_pushlstring(v4, v5, v6));
  }
  v7 = a2 + 2;
  v6 = a1[2 * a2 + 5];
  if ( v6 == -1 )
    luaL_error(a1[2], (int)"unfinished capture");
  if ( v6 != -2 )
  {
    v5 = (void *)a1[2 * v7];
    v4 = a1[2];
    return COERCE_FLOAT(lua_pushlstring(v4, v5, v6));
  }
  return lua_pushinteger(a1[2], a1[2 * v7] + 1 - *a1);
}


// ===== 8585dc gfind_nodef =====
void __fastcall __noreturn gfind_nodef(int a1)
{
  luaL_error(a1, (int)"'string.gfind' was renamed to 'string.gmatch'");
}


// ===== 8585ec str_lower =====
int __fastcall str_lower(_DWORD *a1)
{
  int v2; // r8
  int *v3; // r7
  unsigned int v4; // r10
  char v5; // r0
  int v6; // r7
  unsigned int v8; // [sp+4h] [bp-414h] BYREF
  _DWORD v9[258]; // [sp+8h] [bp-410h] BYREF
  int v10; // [sp+414h] [bp-4h] BYREF

  v2 = luaL_checklstring(a1, 1, &v8);
  luaL_buffinit((int)a1, v9);
  if ( v8 )
  {
    v3 = (int *)v9[0];
    v4 = 0;
    do
    {
      while ( v3 < &v10 )
      {
        *(_BYTE *)v3 = tolower(*(unsigned __int8 *)(v2 + v4));
        v3 = (int *)((char *)v3 + 1);
        ++v4;
        v9[0] = v3;
        if ( v8 <= v4 )
          goto LABEL_6;
      }
      luaL_prepbuffer(v9);
      v5 = tolower(*(unsigned __int8 *)(v2 + v4));
      v6 = v9[0];
      ++v4;
      *(_BYTE *)v9[0] = v5;
      v3 = (int *)(v6 + 1);
      v9[0] = v3;
    }
    while ( v8 > v4 );
  }
LABEL_6:
  luaL_pushresult(v9);
  return 1;
}


// ===== 8586e0 match_class =====
int __fastcall match_class(int a1, unsigned int a2)
{
  int v4; // r5

  switch ( tolower(a2) )
  {
    case 'a':
      v4 = isalpha(a1);
      goto LABEL_3;
    case 'c':
      v4 = iscntrl(a1);
      goto LABEL_3;
    case 'd':
      v4 = (unsigned int)(a1 - 48) <= 9;
      goto LABEL_3;
    case 'l':
      v4 = islower(a1);
      goto LABEL_3;
    case 'p':
      v4 = ispunct(a1);
      goto LABEL_3;
    case 's':
      v4 = isspace(a1);
      goto LABEL_3;
    case 'u':
      v4 = isupper(a1);
      goto LABEL_3;
    case 'w':
      v4 = isalnum(a1);
      goto LABEL_3;
    case 'x':
      v4 = isxdigit(a1);
      goto LABEL_3;
    case 'z':
      v4 = a1 == 0;
LABEL_3:
      if ( !islower(a2) )
        v4 = v4 == 0;
      break;
    default:
      v4 = a2 == a1;
      break;
  }
  return v4;
}


// ===== 858838 matchbracketclass =====
int __fastcall matchbracketclass(int a1, unsigned __int8 *a2, unsigned int a3)
{
  int v3; // r7
  int v4; // r3
  unsigned __int8 *v7; // r5
  unsigned __int8 *v8; // r3
  int v9; // r2

  v4 = (char)a2[1];
  if ( v4 == 94 )
  {
    v7 = a2 + 1;
    v3 = 0;
  }
  else
  {
    v7 = a2;
  }
  if ( v4 != 94 )
    v3 = 1;
LABEL_6:
  while ( 2 )
  {
    v8 = v7 + 1;
    if ( (unsigned int)(v7 + 1) >= a3 )
      return v3 ^ 1;
    while ( 1 )
    {
      v9 = v7[1];
      if ( v9 == 37 )
      {
        v7 = v8 + 1;
        if ( !match_class(a1, v8[1]) )
          goto LABEL_6;
        return v3;
      }
      if ( v8[1] == 45 )
      {
        v7 += 3;
        if ( a3 > (unsigned int)v7 )
          break;
      }
      if ( v9 == a1 )
        return v3;
      v7 = v8++;
      if ( (unsigned int)v8 >= a3 )
        return v3 ^ 1;
    }
    if ( a1 < *(v7 - 2) || a1 > *v7 )
      continue;
    return v3;
  }
}


// ===== 8588e8 singlematch =====
int __fastcall singlematch(int a1, unsigned __int8 *a2, int a3)
{
  int v3; // r3

  v3 = *a2;
  switch ( (char)v3 )
  {
    case '.':
      return 1;
    case '[':
      return matchbracketclass(a1, a2, a3 - 1);
    case '%':
      return match_class(a1, a2[1]);
  }
  return v3 == a1;
}


// ===== 858944 max_expand =====
int __fastcall max_expand(int a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  unsigned __int8 *v8; // r8
  int v9; // r7
  unsigned __int8 *v10; // r3
  int v11; // r10
  int v12; // r7
  int v13; // r5
  int result; // r0

  if ( (unsigned int)a2 < *(_DWORD *)(a1 + 4) )
  {
    v10 = a2;
    v9 = 0;
    while ( singlematch(*v10, a3, a4) )
    {
      v10 = &a2[++v9];
      v8 = &a2[v9];
      if ( *(_DWORD *)(a1 + 4) <= (unsigned int)&a2[v9] )
        goto LABEL_7;
    }
    v8 = &a2[v9];
  }
  else
  {
    v8 = a2;
    v9 = 0;
  }
LABEL_7:
  v11 = a4 + 1;
  v12 = v9 + 1;
  v13 = 0;
  do
    result = match(a1, &v8[-v13++], v11);
  while ( !result && v13 != v12 );
  return result;
}


// ===== 8589e0 match =====
int __fastcall match(unsigned __int8 **a1, unsigned __int8 *a2, char *a3)
{
  int v3; // r3
  char *v4; // r6
  char *v7; // r8
  _BOOL4 v8; // r1
  int v9; // r7
  unsigned __int8 *v11; // r3
  char *v12; // r6
  unsigned __int8 *v13; // r0
  unsigned __int8 **v14; // r3
  bool v15; // cf
  _DWORD *v16; // r8
  unsigned __int8 v17; // r2
  int v18; // r2
  int v19; // r0
  size_t v20; // r7
  int v21; // t1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // t1
  unsigned __int8 *v26; // r7
  char *v27; // r8
  unsigned int v28; // r6
  int v29; // r0
  int v30; // r0

  v3 = *a3;
  v4 = a3;
  while ( 2 )
  {
    switch ( v3 )
    {
      case 0:
        return (int)a2;
      case 36:
        if ( v4[1] )
          goto LABEL_4;
        if ( a1[1] != a2 )
          return 0;
        return (int)a2;
      case 37:
        v17 = v4[1];
        if ( v17 != 98 )
        {
          if ( v17 == 102 )
          {
            v26 = (unsigned __int8 *)(v4 + 2);
            if ( v4[2] != 91 )
              luaL_error((int)a1[2], (int)"missing '[' after '%%f' in pattern");
            v27 = classend((int)a1, v4 + 2);
            v28 = (unsigned int)(v27 - 1);
            if ( *a1 == a2 )
              v29 = 0;
            else
              v29 = *(a2 - 1);
            if ( matchbracketclass(v29, v26, v28) || !matchbracketclass(*a2, v26, v28) )
              return 0;
            v4 = v27;
            v3 = *v27;
          }
          else if ( (unsigned int)v17 - 48 > 9 )
          {
LABEL_4:
            v7 = classend((int)a1, v4);
            v8 = a2 < a1[1] && singlematch(*a2, (unsigned __int8 *)v4, (int)v7);
            v3 = *v7;
            switch ( *v7 )
            {
              case '*':
                return max_expand((int)a1, a2, (unsigned __int8 *)v4, (int)v7);
              case '+':
                if ( !v8 )
                  return 0;
                return max_expand((int)a1, a2 + 1, (unsigned __int8 *)v4, (int)v7);
              case '-':
                while ( 1 )
                {
                  v9 = match(a1, a2, v7 + 1);
                  if ( v9 || a2 >= a1[1] || !singlematch(*a2, (unsigned __int8 *)v4, (int)v7) )
                    break;
                  ++a2;
                }
                return v9;
              case '?':
                if ( v8 )
                {
                  v4 = v7 + 1;
                  v30 = match(a1, a2 + 1, v7 + 1);
                  if ( v30 )
                    return v30;
                }
                else
                {
                  v4 = v7 + 1;
                }
                v3 = *v4;
                break;
              default:
                if ( !v8 )
                  return 0;
                v4 = v7;
                ++a2;
                continue;
            }
          }
          else
          {
            v18 = v17 - 49;
            if ( v18 < 0 || v18 >= (int)a1[3] || (v19 = v18 + 2, a1[2 * v18 + 5] == (unsigned __int8 *)-1) )
              luaL_error((int)a1[2], (int)"invalid capture index");
            v20 = (size_t)a1[2 * v19 + 1];
            if ( v20 > a1[1] - a2 || memcmp(a1[2 * v19], a2, v20) )
              return 0;
            v9 = (int)&a2[v20];
            if ( !v9 )
              return v9;
            v21 = v4[2];
            v4 += 2;
            v3 = v21;
            a2 = (unsigned __int8 *)v9;
          }
          continue;
        }
        if ( !v4[2] || !v4[3] )
          luaL_error((int)a1[2], (int)"unbalanced pattern");
        v22 = (char)*a2;
        if ( v4[2] == v22 )
        {
          v23 = 1;
          do
          {
            while ( 1 )
            {
              if ( ++a2 >= a1[1] )
                return 0;
              v24 = (char)*a2;
              if ( v4[3] == v24 )
                break;
              if ( v22 == v24 )
                ++v23;
            }
            --v23;
          }
          while ( v23 );
          v9 = (int)(a2 + 1);
          if ( a2 == (unsigned __int8 *)-1 )
            return v9;
          v25 = v4[4];
          v4 += 4;
          v3 = v25;
          ++a2;
          continue;
        }
        return 0;
      case 40:
        if ( v4[1] == 41 )
          return start_capture(a1, a2, v4 + 2, -2);
        else
          return start_capture(a1, a2, v4 + 1, -1);
      case 41:
        v11 = a1[3];
        v12 = v4 + 1;
        v13 = v11 - 1;
        if ( (int)(v11 - 1) < 0 )
          goto LABEL_16;
        if ( a1[2 * (_DWORD)v11 + 3] != (unsigned __int8 *)-1 )
        {
          v14 = &a1[2 * (_DWORD)(v11 + 2)];
          do
          {
            v15 = v13-- != nullptr;
            v14 -= 2;
            if ( !v15 )
LABEL_16:
              luaL_error((int)a1[2], (int)"invalid pattern capture");
          }
          while ( *(v14 - 1) != (unsigned __int8 *)-1 );
        }
        v16 = &a1[2 * (_DWORD)(v13 + 2)];
        v16[1] = &a2[-*v16];
        v9 = match(a1, a2, v12);
        if ( !v9 )
          v16[1] = -1;
        return v9;
      default:
        goto LABEL_4;
    }
  }
}


// ===== 858f0c start_capture =====
int __fastcall start_capture(int a1, unsigned __int8 *a2, char *a3, int a4)
{
  int v4; // r5
  int result; // r0

  v4 = *(_DWORD *)(a1 + 12);
  if ( v4 > 31 )
    luaL_error(*(_DWORD *)(a1 + 8), (int)"too many captures");
  *(_DWORD *)(a1 + 8 * (v4 + 2)) = a2;
  *(_DWORD *)(a1 + 8 * (v4 + 2) + 4) = a4;
  *(_DWORD *)(a1 + 12) = v4 + 1;
  result = match((unsigned __int8 **)a1, a2, a3);
  if ( !result )
    --*(_DWORD *)(a1 + 12);
  return result;
}


// ===== 858f88 push_captures =====
int __fastcall push_captures(int a1, void *a2, int a3)
{
  int v3; // r5
  int v6; // r3
  int i; // r4
  int v9; // r1

  v3 = *(_DWORD *)(a1 + 12);
  v6 = v3;
  if ( v3 )
    v6 = 1;
  if ( !a2 )
    v6 |= 1u;
  if ( v6 )
  {
    luaL_checkstack(*(_DWORD **)(a1 + 8), v3, "too many captures");
    if ( v3 <= 0 )
      return v3;
  }
  else
  {
    luaL_checkstack(*(_DWORD **)(a1 + 8), 1, "too many captures");
    v3 = 1;
  }
  for ( i = 0; i < v3; ++i )
  {
    v9 = i;
    push_onecapture((_DWORD *)a1, v9, a2, a3);
  }
  return v3;
}


// ===== 859020 str_find_aux =====
int __fastcall str_find_aux(_DWORD *a1, int a2)
{
  unsigned __int8 *v3; // r9
  char *v4; // r5
  int v5; // r0
  unsigned int v6; // r3
  int v7; // r4
  bool v8; // cf
  unsigned int v9; // r4
  int v10; // r2
  int v11; // r10
  unsigned __int8 *v12; // r4
  int v13; // r11
  unsigned __int8 *v15; // r6
  unsigned __int8 *v16; // r4
  int v17; // r4
  unsigned int v18; // r3
  size_t v19; // r11
  size_t v20; // r7
  const void *v21; // r10
  unsigned __int8 *i; // r0
  int v23; // r6
  void *v24; // r5
  bool v25; // zf
  const void *v26; // r0
  int v28; // [sp+4h] [bp-120h]
  unsigned __int8 *v29; // [sp+8h] [bp-11Ch] BYREF
  unsigned __int8 *v30; // [sp+Ch] [bp-118h]
  _DWORD *v31; // [sp+10h] [bp-114h]
  int v32; // [sp+14h] [bp-110h]
  unsigned int v33; // [sp+118h] [bp-Ch] BYREF
  unsigned int v34; // [sp+11Ch] [bp-8h] BYREF

  v3 = (unsigned __int8 *)luaL_checklstring(a1, 1, &v34);
  v4 = (char *)luaL_checklstring(a1, 2, &v33);
  v5 = luaL_optinteger(a1, 3, 1);
  v6 = v34;
  if ( v5 < 0 )
    v5 += v34 + 1;
  v7 = v5 & ~(v5 >> 31);
  v8 = v7 != 0;
  v9 = v7 - 1;
  if ( v8 )
  {
    if ( v9 >= v34 )
      v9 = v34;
  }
  else
  {
    v9 = 0;
  }
  if ( !a2 )
  {
LABEL_8:
    v10 = *v4;
    v30 = &v3[v6];
    if ( v10 == 94 )
    {
      ++v4;
      v11 = 1;
    }
    else
    {
      v11 = 0;
    }
    v12 = &v3[v9];
    v31 = a1;
    v29 = v3;
    while ( 1 )
    {
      v32 = 0;
      v13 = match(&v29, v12, v4);
      if ( v13 )
        break;
      if ( v12 >= v30 || v11 )
        goto LABEL_16;
      ++v12;
    }
    if ( !a2 )
      return push_captures((int)&v29, v12, v13);
    lua_pushinteger((int)a1, (int)&v12[1 - (_DWORD)v3]);
    lua_pushinteger((int)a1, v13 - (_DWORD)v3);
    return push_captures((int)&v29, nullptr, 0) + 2;
  }
  if ( !lua_toboolean(a1, 4) && strpbrk(v4, "^$*+?.([%-") )
  {
    v6 = v34;
    goto LABEL_8;
  }
  v15 = &v3[v9];
  if ( v33 )
  {
    v18 = v34 - v9;
    if ( v34 - v9 >= v33 )
    {
      v19 = v33 - 1;
      v20 = v18 - (v33 - 1);
      if ( v18 != v33 - 1 )
      {
        v21 = v4 + 1;
        v28 = *v4;
        for ( i = (unsigned __int8 *)memchr(v15, v28, v20); ; i = (unsigned __int8 *)memchr(v24, v28, v20) )
        {
          v16 = i;
          v24 = i + 1;
          v25 = i == nullptr;
          v26 = i + 1;
          if ( v25 )
            break;
          v23 = v15 - (_BYTE *)v24;
          if ( !memcmp(v26, v21, v19) )
            goto LABEL_23;
          v20 += v23;
          if ( !v20 )
            break;
          v15 = (unsigned __int8 *)v24;
        }
      }
    }
    goto LABEL_16;
  }
  if ( !v15 )
  {
LABEL_16:
    lua_pushnil((int)a1);
    return 1;
  }
  v16 = &v3[v9];
LABEL_23:
  v17 = v16 - v3;
  lua_pushinteger((int)a1, v17 + 1);
  lua_pushinteger((int)a1, v17 + v33);
  return 2;
}


// ===== 859258 str_match =====
int __fastcall str_match(_DWORD *a1)
{
  return str_find_aux(a1, 0);
}


// ===== 859260 str_find =====
int __fastcall str_find(_DWORD *a1)
{
  return str_find_aux(a1, 1);
}


// ===== 859268 str_byte =====
int __fastcall str_byte(_DWORD *a1)
{
  int v2; // r7
  int v3; // r0
  int v4; // r6
  int v5; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r4
  int v9; // r6
  int i; // r8
  unsigned int v12; // [sp+4h] [bp-4h] BYREF

  v2 = luaL_checklstring(a1, 1, &v12);
  v3 = luaL_optinteger(a1, 2, 1);
  if ( v3 < 0 )
    v3 += v12 + 1;
  v4 = v3 & ~(v3 >> 31);
  v5 = luaL_optinteger(a1, 3, v4);
  v6 = v5;
  if ( v5 < 0 )
    v6 = v5 + v12 + 1;
  v7 = v6 & ~(v6 >> 31);
  if ( v7 >= v12 )
    v7 = v12;
  if ( !v4 )
    v4 = 1;
  if ( v4 > v7 )
    return 0;
  v8 = 1 - v4 + v7;
  if ( __OFSUB__(v7, v7 + 1) )
    luaL_error((int)a1, (int)"string slice too long");
  luaL_checkstack(a1, 1 - v4 + v7, "string slice too long");
  if ( v8 > 0 )
  {
    v9 = v2 + v4;
    for ( i = 0; i != v8; ++i )
      lua_pushinteger((int)a1, *(unsigned __int8 *)(v9++ - 1));
  }
  return v8;
}


// ===== 859364 str_gsub =====
int __fastcall str_gsub(_DWORD *a1)
{
  int v1; // r8
  unsigned __int8 *v2; // r5
  unsigned int v3; // r4
  int v4; // r2
  char *v5; // r3
  bool v6; // zf
  bool v7; // cc
  unsigned __int8 *v8; // r2
  unsigned int v9; // r7
  _DWORD *v10; // r4
  int v11; // r2
  int v12; // r3
  int v14; // r0
  int v15; // r0
  const char *v16; // r0
  int v17; // r6
  unsigned int i; // r4
  _BYTE *v19; // r1
  _BYTE *v20; // r3
  _BYTE *v21; // r3
  char v22; // t1
  int v23; // r2
  _BYTE *v24; // [sp+0h] [bp-554h]
  char *v25; // [sp+4h] [bp-550h]
  int v27; // [sp+Ch] [bp-548h]
  int v28; // [sp+10h] [bp-544h]
  unsigned __int8 *v29; // [sp+28h] [bp-52Ch] BYREF
  unsigned __int8 *v30; // [sp+2Ch] [bp-528h]
  _DWORD *v31; // [sp+30h] [bp-524h]
  int v32; // [sp+34h] [bp-520h]
  unsigned int v33; // [sp+138h] [bp-41Ch] BYREF
  int v34; // [sp+13Ch] [bp-418h] BYREF
  _DWORD v35[259]; // [sp+140h] [bp-414h] BYREF
  _DWORD v36[2]; // [sp+54Ch] [bp-8h] BYREF

  v2 = (unsigned __int8 *)luaL_checklstring(a1, 1, &v34);
  v25 = (char *)luaL_checklstring(a1, 2, nullptr);
  v3 = lua_type(a1, 3);
  v27 = luaL_optinteger(a1, 4, v34 + 1);
  v5 = (char *)*v25;
  v6 = v5 == (_BYTE *)&dword_5C + 2;
  if ( v5 == (_BYTE *)&dword_5C + 2 )
    v5 = v25;
  else
    v4 = 0;
  if ( v6 )
  {
    v25 = v5 + 1;
    v28 = 1;
  }
  else
  {
    v28 = v4;
  }
  v7 = v3 > 6;
  if ( v3 != 6 )
    v7 = v3 - 3 > 1;
  if ( v7 && v3 != 5 )
    luaL_argerror((int)a1, 3, "string/function/table expected");
  luaL_buffinit((int)a1, v35);
  v29 = v2;
  v31 = a1;
  if ( v27 <= 0 )
    v1 = 0;
  v8 = &v2[v34];
  v30 = &v2[v34];
  if ( v27 > 0 )
  {
    v1 = 0;
    do
    {
      v32 = 0;
      v9 = match(&v29, v2, v25);
      if ( v9 )
      {
        v10 = v31;
        ++v1;
        switch ( lua_type(v31, 3) )
        {
          case 3:
          case 4:
            v17 = lua_tolstring(v31, 3, &v33);
            if ( v33 )
            {
              for ( i = 0; i < v33; ++i )
              {
                v23 = *(unsigned __int8 *)(v17 + i);
                v20 = (_BYTE *)(v17 + i);
                if ( v23 == 37
                  && (++i, v23 = *(unsigned __int8 *)(v17 + i), v20 = (_BYTE *)(v17 + i), (unsigned int)(v23 - 48) <= 9) )
                {
                  if ( (char)v23 == 48 )
                  {
                    luaL_addlstring(v35, (int)v2, v9 - (_DWORD)v2);
                  }
                  else
                  {
                    push_onecapture(&v29, (char)v23 - 49, v2, v9);
                    luaL_addvalue((int)v35);
                  }
                }
                else
                {
                  v19 = (_BYTE *)v35[0];
                  if ( v35[0] >= (unsigned int)v36 )
                  {
                    v24 = v20;
                    luaL_prepbuffer(v35);
                    v19 = (_BYTE *)v35[0];
                    LOBYTE(v23) = *v24;
                  }
                  *v19 = v23;
                  v35[0] = v19 + 1;
                }
              }
            }
            goto LABEL_23;
          case 5:
            push_onecapture(&v29, 0, v2, v9);
            lua_gettable(v10, 3, v11, v12, (int)v24, (int)v25);
            goto LABEL_20;
          case 6:
            lua_pushvalue(v10, 3);
            v14 = push_captures((int)&v29, v2, v9);
            lua_call((int)v10, v14, 1);
            if ( lua_toboolean(v10, -1) )
              goto LABEL_31;
            goto LABEL_21;
          default:
LABEL_20:
            if ( lua_toboolean(v10, -1) )
            {
LABEL_31:
              if ( !lua_isstring(v10, -1) )
              {
                v15 = lua_type(v10, -1);
                v16 = lua_typename((int)v10, v15);
                luaL_error((int)v10, (int)"invalid replacement value (a %s)", v16);
              }
            }
            else
            {
LABEL_21:
              lua_settop((int)v10, -2);
              lua_pushlstring((int)v10, v2, v9 - (_DWORD)v2);
            }
            luaL_addvalue((int)v35);
LABEL_23:
            if ( (unsigned int)v2 >= v9 )
              goto LABEL_43;
            v2 = (unsigned __int8 *)v9;
            break;
        }
      }
      else
      {
LABEL_43:
        v8 = v30;
        if ( v30 <= v2 )
          goto LABEL_29;
        v21 = (_BYTE *)v35[0];
        if ( v35[0] >= (unsigned int)v36 )
        {
          luaL_prepbuffer(v35);
          v21 = (_BYTE *)v35[0];
        }
        v22 = *v2++;
        *v21 = v22;
        v35[0] = v21 + 1;
      }
    }
    while ( !v28 && v27 > v1 );
    v8 = v30;
  }
LABEL_29:
  luaL_addlstring(v35, (int)v2, v8 - v2);
  luaL_pushresult(v35);
  lua_pushinteger((int)a1, v1);
  return 2;
}


// ===== 85975c gmatch =====
int __fastcall gmatch(_DWORD *a1)
{
  luaL_checklstring(a1, 1, nullptr);
  luaL_checklstring(a1, 2, nullptr);
  lua_settop((int)a1, 2);
  lua_pushinteger((int)a1, 0);
  lua_pushcclosure(a1, (int)gmatch_aux, 3);
  return 1;
}


// ===== 8597b8 gmatch_aux =====
int __fastcall gmatch_aux(_DWORD *a1)
{
  unsigned __int8 *v2; // r10
  char *v3; // r6
  unsigned __int8 *v4; // r4
  int v5; // r0
  int v6; // r9
  int v7; // r1
  unsigned __int8 *v9; // [sp+4h] [bp-114h] BYREF
  unsigned __int8 *v10; // [sp+8h] [bp-110h]
  _DWORD *v11; // [sp+Ch] [bp-10Ch]
  int v12; // [sp+10h] [bp-108h]
  int v13; // [sp+114h] [bp-4h] BYREF

  v2 = (unsigned __int8 *)lua_tolstring(a1, -10003, &v13);
  v3 = (char *)lua_tolstring(a1, -10004, nullptr);
  v10 = &v2[v13];
  v11 = a1;
  v9 = v2;
  v4 = &v2[lua_tointeger(a1, -10005)];
  if ( v4 > v10 )
    return 0;
  while ( 1 )
  {
    v12 = 0;
    v5 = match(&v9, v4, v3);
    v6 = v5;
    if ( v5 )
      break;
    if ( v10 < ++v4 )
      return 0;
  }
  v7 = v5 - (_DWORD)v2;
  if ( v4 == (unsigned __int8 *)v5 )
    ++v7;
  lua_pushinteger((int)a1, v7);
  lua_replace(a1, -10005);
  return push_captures((int)&v9, v4, v6);
}


// ===== 8598a0 addintlen =====
size_t __fastcall addintlen(const char *a1)
{
  size_t result; // r0
  size_t v3; // r2
  char v4; // r12

  result = LC_API_STRLEN_0(a1);
  v3 = result - 1;
  v4 = a1[result - 1];
  a1[v3] = 108;
  a1[v3 + 1] = 0;
  a1[result] = v4;
  a1[result + 1] = 0;
  return result;
}


// ===== 8598d8 str_format =====
int __fastcall str_format(_DWORD *a1)
{
  const char *v1; // r4
  unsigned int v2; // r7
  char *v3; // r2
  int v4; // r3
  const char *v5; // r11
  int v6; // r1
  char *v7; // r3
  int v9; // r3
  int v10; // t1
  int v11; // t1
  char v12; // t1
  int v13; // r2
  int v14; // t1
  int v15; // t1
  int v16; // t1
  char v17; // t1
  int v18; // r11
  size_t v19; // r0
  int v20; // r0
  char *v21; // r3
  int v22; // r10
  char *v23; // r3
  bool v24; // zf
  int v25; // r8
  char *v26; // r3
  char *v27; // r3
  char *v28; // r3
  char v29; // r2
  double v30; // r0
  _DWORD *v31; // r0
  int v32; // r1
  float v33; // r0
  float v34; // r0
  char v35; // r2
  int v36; // [sp+0h] [bp-64Ch]
  unsigned int v38; // [sp+1Ch] [bp-630h] BYREF
  int v39; // [sp+20h] [bp-62Ch] BYREF
  char *v40; // [sp+24h] [bp-628h] BYREF
  char s[512]; // [sp+430h] [bp-21Ch] BYREF
  char v42; // [sp+630h] [bp-1Ch] BYREF
  char v43[15]; // [sp+631h] [bp-1Bh] BYREF

  v1 = (const char *)luaL_checklstring(a1, 1, &v39);
  v2 = (unsigned int)&v1[v39];
  luaL_buffinit((int)a1, &v40);
  if ( (unsigned int)v1 < v2 )
  {
    v36 = 1;
    while ( 1 )
    {
      while ( 1 )
      {
        v9 = *(unsigned __int8 *)v1;
        if ( v9 == 37 )
          break;
        v3 = v40;
        if ( v40 >= s )
        {
          luaL_prepbuffer(&v40);
          v3 = v40;
          LOBYTE(v9) = *v1;
        }
        *v3 = v9;
        v40 = v3 + 1;
        ++v1;
LABEL_6:
        if ( v2 <= (unsigned int)v1 )
          goto LABEL_12;
      }
      v4 = *((unsigned __int8 *)v1 + 1);
      v5 = v1 + 1;
      v6 = (char)v4;
      if ( (char)v4 != 37 )
        break;
      v7 = v40;
      if ( v40 >= s )
      {
        luaL_prepbuffer(&v40);
        v7 = v40;
        LOBYTE(v6) = *v5;
      }
      v1 += 2;
      *v7 = v6;
      v40 = v7 + 1;
      if ( v2 <= (unsigned int)(v5 + 1) )
        goto LABEL_12;
    }
    if ( !v1[1] )
      ++v1;
    ++v36;
    if ( v4 )
    {
      v1 = v5;
      while ( strchr("-+ #0", v6) )
      {
        v10 = *(unsigned __int8 *)++v1;
        LOBYTE(v6) = v10;
        if ( !v10 )
          break;
        v6 = (char)v6;
      }
      if ( (unsigned int)(v1 - v5) > 5 )
        luaL_error((int)a1, (int)"invalid format (repeated flags)");
      v4 = *(unsigned __int8 *)v1;
      if ( (unsigned int)(v4 - 48) <= 9 )
      {
        v11 = *(unsigned __int8 *)++v1;
        LOBYTE(v4) = v11;
        if ( (unsigned int)(v11 - 48) <= 9 )
        {
          v12 = *++v1;
          LOBYTE(v4) = v12;
        }
      }
    }
    if ( (char)v4 == 46 )
    {
      v15 = *(unsigned __int8 *)++v1;
      if ( (unsigned int)(v15 - 48) > 9 || (v16 = *((unsigned __int8 *)v1 + 1), ++v1, (unsigned int)(v16 - 48) > 9) )
      {
LABEL_27:
        v42 = 37;
        LC_API_STRNCPY_0(v43, v5, v1 - v5 + 1);
        v43[v1 - v5 + 1] = 0;
        v14 = *v1++;
        v13 = v14;
        switch ( v14 )
        {
          case 'E':
          case 'G':
          case 'e':
          case 'f':
          case 'g':
            v30 = COERCE_FLOAT(luaL_checknumber(a1, v36));
            sprintf(s, &v42, v30);
            goto LABEL_34;
          case 'X':
          case 'o':
          case 'u':
          case 'x':
            addintlen(&v42);
            v34 = COERCE_FLOAT(luaL_checknumber(a1, v36));
            sprintf(s, &v42, (unsigned int)v34);
            goto LABEL_34;
          case 'c':
            v32 = v36;
            v31 = a1;
            goto LABEL_62;
          case 'd':
          case 'i':
            addintlen(&v42);
            v31 = a1;
            v32 = v36;
LABEL_62:
            v33 = COERCE_FLOAT(luaL_checknumber(v31, v32));
            sprintf(s, &v42, (int)v33);
            goto LABEL_34;
          case 'q':
            v20 = luaL_checklstring(a1, v36, &v38);
            v21 = v40;
            v22 = v20;
            if ( v40 >= s )
            {
              luaL_prepbuffer(&v40);
              v21 = v40;
            }
            *v21 = 34;
            v23 = v21 + 1;
            v40 = v23;
            v24 = v38-- == 0;
            if ( v24 )
              goto LABEL_56;
            v25 = 0;
            break;
          case 's':
            v18 = luaL_checklstring(a1, v36, &v38);
            if ( strchr(&v42, 46) || v38 <= 0x63 )
            {
              sprintf(s, &v42, v18);
LABEL_34:
              v19 = LC_API_STRLEN_0(s);
              luaL_addlstring(&v40, (int)s, v19);
            }
            else
            {
              lua_pushvalue(a1, v36);
              luaL_addvalue((int)&v40);
            }
            goto LABEL_6;
          default:
            luaL_error((int)a1, (int)"invalid option '%%%c' to 'format'", v13);
        }
        while ( 1 )
        {
          while ( 1 )
          {
            v35 = *(_BYTE *)(v22 + v25);
            if ( v35 != 13 )
              break;
            luaL_addlstring(&v40, (int)"\\r", 2);
LABEL_44:
            ++v25;
            v24 = v38-- == 0;
            if ( v24 )
              goto LABEL_55;
          }
          if ( v35 > 13 )
          {
            if ( v35 == 34 || v35 == 92 )
              goto LABEL_49;
LABEL_41:
            v26 = v40;
            if ( v40 >= s )
            {
              luaL_prepbuffer(&v40);
              v26 = v40;
              v35 = *(_BYTE *)(v22 + v25);
            }
            *v26 = v35;
            v40 = v26 + 1;
            goto LABEL_44;
          }
          if ( !v35 )
          {
            luaL_addlstring(&v40, (int)"\\000", 4);
            goto LABEL_44;
          }
          if ( v35 != 10 )
            goto LABEL_41;
LABEL_49:
          v27 = v40;
          if ( v40 >= s )
          {
            luaL_prepbuffer(&v40);
            v27 = v40;
          }
          *v27 = 92;
          v28 = v27 + 1;
          v40 = v28;
          if ( v28 >= s )
          {
            luaL_prepbuffer(&v40);
            v28 = v40;
          }
          v29 = *(_BYTE *)(v22 + v25++);
          *v28 = v29;
          v40 = v28 + 1;
          v24 = v38-- == 0;
          if ( v24 )
          {
LABEL_55:
            v23 = v40;
LABEL_56:
            if ( v23 >= s )
            {
              luaL_prepbuffer(&v40);
              v23 = v40;
              *v40 = 34;
            }
            else
            {
              *v23 = 34;
            }
            v40 = v23 + 1;
            goto LABEL_6;
          }
        }
      }
      v17 = *++v1;
      LOBYTE(v4) = v17;
    }
    if ( (unsigned int)(unsigned __int8)v4 - 48 <= 9 )
      luaL_error((int)a1, (int)"invalid format (width or precision too long)");
    goto LABEL_27;
  }
LABEL_12:
  luaL_pushresult(&v40);
  return 1;
}


// ===== 859f10 str_dump =====
int __fastcall str_dump(_DWORD *a1)
{
  _DWORD v3[259]; // [sp+0h] [bp-414h] BYREF

  luaL_checktype(a1, 1, 6);
  lua_settop((int)a1, 1);
  luaL_buffinit((int)a1, v3);
  if ( lua_dump((int)a1) )
    luaL_error((int)a1, (int)"unable to dump given function");
  luaL_pushresult(v3);
  return 1;
}


// ===== 859fcc str_char =====
int __fastcall str_char(_DWORD *a1)
{
  int v2; // r7
  int i; // r4
  int v4; // r0
  char v5; // r5
  int v6; // r3
  int v7; // r3
  _DWORD v9[258]; // [sp+8h] [bp-414h] BYREF
  int v10; // [sp+414h] [bp-8h] BYREF

  v2 = lua_gettop((int)a1);
  luaL_buffinit((int)a1, v9);
  if ( v2 > 0 )
  {
    for ( i = 1; i <= v2; ++i )
    {
      while ( 1 )
      {
        v4 = luaL_checkinteger(a1, i);
        v5 = v4;
        if ( v4 != (unsigned __int8)v4 )
          luaL_argerror((int)a1, i, "invalid value");
        v6 = v9[0];
        if ( v9[0] >= (unsigned int)&v10 )
          break;
        ++i;
        *(_BYTE *)v9[0] = v4;
        v9[0] = v6 + 1;
        if ( v2 < i )
          goto LABEL_8;
      }
      luaL_prepbuffer(v9);
      v7 = v9[0];
      *(_BYTE *)v9[0] = v5;
      v9[0] = v7 + 1;
    }
  }
LABEL_8:
  luaL_pushresult(v9);
  return 1;
}


// ===== 85a0dc luaopen_string =====
int __fastcall luaopen_string(_DWORD *a1)
{
  luaL_register(a1, "string", (int *)&strlib);
  lua_getfield(a1, -1, "gmatch");
  lua_setfield(a1, -2, "gfind");
  lua_createtable((int)a1, 0, 1);
  lua_pushlstring((int)a1, "", 0);
  lua_pushvalue(a1, -2);
  lua_setmetatable(a1, -2);
  lua_settop((int)a1, -2);
  lua_pushvalue(a1, -2);
  lua_setfield(a1, -2, "__index");
  lua_settop((int)a1, -2);
  return 1;
}


// ===== 85a1b4 mainposition =====
int __fastcall mainposition(int a1, _DWORD *a2)
{
  int result; // r0
  char v4; // r3
  float v5; // r0

  switch ( a2[1] )
  {
    case 1:
      result = *(_DWORD *)(a1 + 16) + 20 * (*a2 & ~(-1 << *(_BYTE *)(a1 + 7)));
      break;
    case 2:
      v4 = *(_BYTE *)(a1 + 7);
      v5 = *(float *)a2;
      goto LABEL_6;
    case 3:
      if ( *(float *)a2 == 0.0 )
      {
        result = *(_DWORD *)(a1 + 16);
      }
      else
      {
        v4 = *(_BYTE *)(a1 + 7);
        v5 = *(float *)a2;
LABEL_6:
        result = *(_DWORD *)(a1 + 16) + 20 * (LODWORD(v5) % (~(-1 << v4) | 1u));
      }
      break;
    case 4:
      result = *(_DWORD *)(a1 + 16) + 20 * (*(_DWORD *)(*a2 + 8) & ~(-1 << *(_BYTE *)(a1 + 7)));
      break;
    default:
      result = *(_DWORD *)(a1 + 16) + 20 * (*a2 % (~(-1 << *(_BYTE *)(a1 + 7)) | 1u));
      break;
  }
  return result;
}


// ===== 85a2a0 luaH_getnum =====
void *__fastcall luaH_getnum(int a1, int a2)
{
  float v2; // r6
  unsigned int v3; // r4

  if ( (unsigned int)(a2 - 1) < *(_DWORD *)(a1 + 28) )
    return (void *)(*(_DWORD *)(a1 + 12) + 8 * (a2 - 1));
  v2 = (float)a2;
  if ( (float)a2 != 0.0 )
  {
    v3 = *(_DWORD *)(a1 + 16) + 20 * (LODWORD(v2) % (~(-1 << *(_BYTE *)(a1 + 7)) | 1u));
    if ( *(_DWORD *)(v3 + 12) == 3 )
      goto LABEL_7;
    goto LABEL_5;
  }
  v3 = *(_DWORD *)(a1 + 16);
  do
  {
    if ( *(_DWORD *)(v3 + 12) == 3 )
    {
LABEL_7:
      if ( *(float *)(v3 + 8) == v2 )
        return (void *)v3;
    }
LABEL_5:
    v3 = *(_DWORD *)(v3 + 16);
  }
  while ( v3 );
  return &luaO_nilobject_;
}


// ===== 85a358 luaH_getstr =====
_DWORD *__fastcall luaH_getstr(int a1, int a2)
{
  _DWORD *result; // r0

  result = (_DWORD *)(*(_DWORD *)(a1 + 16) + 20 * (*(_DWORD *)(a2 + 8) & ~(-1 << *(_BYTE *)(a1 + 7))));
  do
  {
    while ( result[3] != 4 )
    {
      result = (_DWORD *)result[4];
      if ( !result )
        return &luaO_nilobject_;
    }
    if ( result[2] == a2 )
      return result;
    result = (_DWORD *)result[4];
  }
  while ( result );
  return &luaO_nilobject_;
}


// ===== 85a3b8 luaH_getn =====
unsigned int __fastcall luaH_getn(int a1)
{
  unsigned int v1; // r4
  unsigned int result; // r0
  int v4; // r1
  unsigned int i; // r5
  int j; // r4

  result = *(_DWORD *)(a1 + 28);
  v1 = result;
  if ( !result || (v4 = *(_DWORD *)(a1 + 12), *(_DWORD *)(v4 + 8 * result - 4)) )
  {
    if ( *(_UNKNOWN **)(a1 + 16) != &dummynode_ )
    {
      for ( i = result + 1; *((_DWORD *)luaH_getnum(a1, i) + 1); i *= 2 )
      {
        if ( 2 * i > 0x7FFFFFFD )
        {
          for ( j = 1; *((_DWORD *)luaH_getnum(a1, j) + 1); ++j )
            ;
          return j - 1;
        }
        v1 = i;
      }
      while ( i - v1 > 1 )
      {
        if ( *((_DWORD *)luaH_getnum(a1, (i + v1) >> 1) + 1) )
          v1 = (i + v1) >> 1;
        else
          i = (i + v1) >> 1;
      }
      return v1;
    }
  }
  else
  {
    result = 0;
    while ( v1 - result > 1 )
    {
      if ( *(_DWORD *)(v4 + 8 * ((v1 + result) >> 1) - 4) )
        result = (v1 + result) >> 1;
      else
        v1 = (v1 + result) >> 1;
    }
  }
  return result;
}


// ===== 85a4c4 countint =====
int __fastcall countint(int a1, int a2)
{
  int v4; // r5
  int v5; // r3

  if ( *(_DWORD *)(a1 + 4) != 3 )
    return 0;
  v4 = (int)*(float *)a1;
  if ( *(float *)a1 != (float)v4 || (unsigned int)(v4 - 1) > 0x3FFFFFF )
    return 0;
  v5 = luaO_log2(v4 - 1) + 1;
  ++*(_DWORD *)(a2 + 4 * v5);
  return 1;
}


// ===== 85a530 luaH_free =====
int __fastcall luaH_free(int a1, int a2)
{
  void *v3; // r1

  v3 = *(void **)(a2 + 16);
  if ( v3 != &dummynode_ )
    luaM_realloc_(a1, (int)v3, 20 << *(_BYTE *)(a2 + 7), 0);
  luaM_realloc_(a1, *(_DWORD *)(a2 + 12), 8 * *(_DWORD *)(a2 + 28), 0);
  return luaM_realloc_(a1, a2, 32, 0);
}


// ===== 85a598 setarrayvector =====
int __fastcall setarrayvector(_DWORD *a1, int a2, int a3)
{
  int result; // r0
  int v6; // r3
  int v7; // r2

  if ( (unsigned int)(a3 + 1) > 0x1FFFFFFF )
    luaM_toobig(a1);
  result = luaM_realloc_((int)a1, *(_DWORD *)(a2 + 12), 8 * *(_DWORD *)(a2 + 28), 8 * a3);
  v6 = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a2 + 12) = result;
  if ( a3 > v6 )
  {
    v7 = 8 * v6;
    while ( 1 )
    {
      ++v6;
      result += v7;
      *(_DWORD *)(result + 4) = 0;
      v7 += 8;
      if ( v6 == a3 )
        break;
      result = *(_DWORD *)(a2 + 12);
    }
  }
  *(_DWORD *)(a2 + 28) = a3;
  return result;
}


// ===== 85a60c setnodevector =====
_DWORD *__fastcall setnodevector(_DWORD *result, int a2, int a3)
{
  int v3; // r5
  _DWORD *v4; // r7
  char v6; // r6
  int v7; // r2
  int v8; // r0
  int v9; // r5
  int v10; // r3
  int v11; // r2
  int v12; // r1
  int v13; // r5
  int v14; // r2

  v3 = a3;
  v4 = result;
  if ( !a3 )
  {
    v6 = 0;
    *(_DWORD *)(a2 + 16) = &dummynode_;
LABEL_3:
    v7 = *(_DWORD *)(a2 + 16);
    *(_BYTE *)(a2 + 7) = v6;
    *(_DWORD *)(a2 + 20) = v7 + v3;
    return result;
  }
  v8 = luaO_log2(a3 - 1);
  v6 = v8 + 1;
  if ( v8 + 1 > 26 )
    luaG_runerror(v4, (int)"table overflow");
  v9 = 1 << v6;
  if ( (unsigned int)((1 << v6) + 1) > 0xCCCCCCC )
    luaM_toobig(v4);
  result = (_DWORD *)luaM_realloc_((int)v4, 0, 0, 20 * v9);
  if ( v9 > 0 )
    v10 = 0;
  *(_DWORD *)(a2 + 16) = result;
  if ( v9 <= 0 )
  {
    v3 = 20 * v9;
    goto LABEL_3;
  }
  v11 = v10;
  v12 = v10;
  while ( 1 )
  {
    ++v11;
    result = (_DWORD *)((char *)result + v10);
    result[1] = v12;
    result[4] = v12;
    result[3] = v12;
    v10 += 20;
    if ( v11 == v9 )
      break;
    result = *(_DWORD **)(a2 + 16);
  }
  v13 = 20 * v11;
  v14 = *(_DWORD *)(a2 + 16);
  *(_BYTE *)(a2 + 7) = v6;
  *(_DWORD *)(a2 + 20) = v14 + v13;
  return result;
}


// ===== 85a724 luaH_get =====
_DWORD *__fastcall luaH_get(int a1, float *a2)
{
  int v2; // r3
  int v4; // r4
  _DWORD *result; // r0

  v2 = *((_DWORD *)a2 + 1);
  if ( v2 == 3 )
  {
    if ( *a2 == (float)(int)*a2 )
      return luaH_getnum(a1, (int)*a2);
    goto LABEL_4;
  }
  if ( v2 != 4 )
  {
    if ( !v2 )
      return &luaO_nilobject_;
LABEL_4:
    v4 = mainposition(a1, a2);
    while ( !luaO_rawequalObj((float *)(v4 + 8), a2) )
    {
      v4 = *(_DWORD *)(v4 + 16);
      if ( !v4 )
        return &luaO_nilobject_;
    }
    return (_DWORD *)v4;
  }
  result = (_DWORD *)(*(_DWORD *)(a1 + 16) + 20 * (*(_DWORD *)(*(_DWORD *)a2 + 8) & ~(-1 << *(_BYTE *)(a1 + 7))));
  while ( 1 )
  {
    while ( result[3] != 4 )
    {
      result = (_DWORD *)result[4];
      if ( !result )
        return &luaO_nilobject_;
    }
    if ( *(_DWORD *)a2 == result[2] )
      break;
    result = (_DWORD *)result[4];
    if ( !result )
      return &luaO_nilobject_;
  }
  return result;
}


// ===== 85a840 luaH_set =====
_DWORD *__fastcall luaH_set(_DWORD *a1, int a2, int a3)
{
  _DWORD *result; // r0

  result = luaH_get(a2, (float *)a3);
  *(_BYTE *)(a2 + 6) = 0;
  if ( result == (_DWORD *)&luaO_nilobject_ )
  {
    if ( !*(_DWORD *)(a3 + 4) )
      luaG_runerror(a1, (int)"table index is nil");
    return (_DWORD *)newkey(a1, a2, a3);
  }
  return result;
}


// ===== 85a8e8 newkey =====
_DWORD *__fastcall newkey(_DWORD *a1, int a2, _DWORD *a3)
{
  int v6; // r0
  _DWORD *v7; // r5
  unsigned int v9; // r2
  unsigned int v10; // r10
  _DWORD *v11; // r4
  int v12; // r3
  int v13; // r0
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // lr
  int v20; // r9
  int v21; // r3
  int v22; // r10
  int v23; // r5
  int v24; // r12
  int v25; // r0
  int *v26; // r2
  int v27; // r1
  int v28; // r11
  int v29; // r10
  int v30; // r9
  int v31; // r3
  int v32; // r0
  int v33; // r9
  int v34; // r11
  int v35; // r5
  int v36; // r0
  int v37; // lr
  int v38; // r12
  int v39; // r1
  int v40; // [sp+4h] [bp-78h]
  _BYTE v41[112]; // [sp+Ch] [bp-70h] BYREF

  v6 = mainposition(a2, a3);
  v7 = (_DWORD *)v6;
  if ( !*(_DWORD *)(v6 + 4) && (_UNKNOWN *)v6 != &dummynode_ )
    goto LABEL_3;
  v9 = *(_DWORD *)(a2 + 16);
  v10 = *(_DWORD *)(a2 + 20);
  do
  {
    v11 = (_DWORD *)(v10 - 20);
    *(_DWORD *)(a2 + 20) = v10 - 20;
    if ( v9 >= v10 )
      goto LABEL_17;
    v12 = *(_DWORD *)(v10 - 8);
    v10 -= 20;
  }
  while ( v12 );
  if ( v11 )
  {
    v13 = mainposition(a2, (_DWORD *)(v6 + 8));
    if ( v7 != (_DWORD *)v13 )
    {
      do
      {
        v14 = v13;
        v13 = *(_DWORD *)(v13 + 16);
      }
      while ( v7 != (_DWORD *)v13 );
      *(_DWORD *)(v14 + 16) = v11;
      v15 = v7[1];
      v16 = v7[2];
      v17 = v7[3];
      *v11 = *v7;
      v11[1] = v15;
      v11[2] = v16;
      v11[3] = v17;
      v11[4] = v7[4];
      v7[1] = 0;
      v7[4] = 0;
      v7[2] = *a3;
      v7[3] = a3[1];
      if ( (int)a3[1] <= 3 )
        return v7;
      goto LABEL_4;
    }
    v11[4] = v7[4];
    v7[4] = v11;
    v7 = v11;
LABEL_3:
    v7[2] = *a3;
    v7[3] = a3[1];
    if ( (int)a3[1] <= 3 )
      return v7;
LABEL_4:
    if ( (*(_BYTE *)(*a3 + 5) & 3) != 0 && (*(_BYTE *)(a2 + 5) & 4) != 0 )
      luaC_barrierback((int)a1, a2);
    return v7;
  }
LABEL_17:
  v18 = 0;
  v19 = 0;
  do
  {
    *(_DWORD *)&v41[v18] = 0;
    v18 += 4;
  }
  while ( v18 != 108 );
  v20 = *(_DWORD *)(a2 + 28);
  v21 = 1;
  v22 = 1;
  v23 = 0;
  v24 = v20;
  if ( v20 >= 1 )
    goto LABEL_27;
LABEL_20:
  if ( v20 >= v21 )
  {
LABEL_21:
    v25 = 0;
    v26 = (int *)(*(_DWORD *)(a2 + 12) + 8 * (v21 - 1) + 4);
    do
    {
      v27 = *v26;
      ++v21;
      v26 += 2;
      if ( v27 )
        ++v25;
    }
    while ( v21 <= v24 );
    while ( 1 )
    {
      v23 += v25;
      *(_DWORD *)&v41[v19] += v25;
      v19 += 4;
      if ( v19 == 108 )
        break;
      v22 *= 2;
      v24 = v20;
      if ( v20 < v22 )
        goto LABEL_20;
LABEL_27:
      if ( v22 >= v21 )
      {
        v24 = v22;
        goto LABEL_21;
      }
      v25 = 0;
    }
  }
  v28 = 0;
  v29 = 1 << *(_BYTE *)(a2 + 7);
  v30 = 20 * (v29 - 1);
  v31 = 0;
  while ( v29 )
  {
    --v29;
    v32 = *(_DWORD *)(a2 + 16) + v30;
    v30 -= 20;
    if ( *(_DWORD *)(v32 + 4) )
    {
      v40 = v31;
      v28 += countint(v32 + 8, (int)v41);
      v31 = v40 + 1;
    }
  }
  v33 = countint((int)a3, (int)v41) + v28 + v23;
  if ( v33 > 0 )
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = 0;
    while ( 1 )
    {
      v38 = *(_DWORD *)&v41[v29];
      v39 = v37 + v38;
      if ( v38 <= 0 )
        goto LABEL_40;
      if ( v39 <= v35 )
        break;
      v37 += v38;
LABEL_41:
      v36 *= 2;
      v35 = v36 >> 1;
      if ( v33 == v37 )
        goto LABEL_44;
      v29 += 4;
      if ( v33 <= v35 )
        goto LABEL_44;
      v34 = v39;
    }
    v37 += v38;
LABEL_40:
    v39 = v34;
    goto LABEL_41;
  }
LABEL_44:
  resize(a1, a2);
  return luaH_set(a1, a2, (int)a3);
}


// ===== 85abf4 luaH_setstr =====
_DWORD *__fastcall luaH_setstr(_DWORD *a1, int a2, int a3)
{
  int v4; // r2
  _DWORD v6[3]; // [sp+0h] [bp-Ch] BYREF

  v4 = *(_DWORD *)(a2 + 16) + 20 * (*(_DWORD *)(a3 + 8) & ~(-1 << *(_BYTE *)(a2 + 7)));
  while ( *(_DWORD *)(v4 + 12) != 4 || a3 != *(_DWORD *)(v4 + 8) )
  {
    v4 = *(_DWORD *)(v4 + 16);
    if ( !v4 )
      goto LABEL_7;
  }
  if ( (_UNKNOWN *)v4 != &luaO_nilobject_ )
    return (_DWORD *)v4;
LABEL_7:
  v6[0] = a3;
  v6[1] = 4;
  return newkey(a1, a2, v6);
}


// ===== 85ac80 luaH_setnum =====
_DWORD *__fastcall luaH_setnum(_DWORD *a1, int a2, int a3)
{
  _DWORD *result; // r0
  float v7[2]; // [sp+0h] [bp-8h] BYREF

  result = luaH_getnum(a2, a3);
  if ( result == (_DWORD *)&luaO_nilobject_ )
  {
    v7[0] = (float)a3;
    LODWORD(v7[1]) = 3;
    return newkey(a1, a2, v7);
  }
  return result;
}


// ===== 85ace4 resize =====
_DWORD *__fastcall resize(_DWORD *a1, int a2, int a3, int a4)
{
  int v5; // r5
  char *v9; // r11
  _DWORD *result; // r0
  int v11; // r6
  int v12; // r7
  int v13; // r10
  int v14; // r3
  _DWORD *v15; // r0
  bool v16; // cc
  int v17; // r2
  int v18; // r7
  int v19; // r6
  char *v20; // r5
  int v21; // r3
  char v22; // [sp+4h] [bp-10h]
  unsigned int v23; // [sp+8h] [bp-Ch]
  int v24; // [sp+Ch] [bp-8h]

  v5 = *(_DWORD *)(a2 + 28);
  v22 = *(_BYTE *)(a2 + 7);
  v9 = *(char **)(a2 + 16);
  if ( v5 < a3 )
  {
    setarrayvector(a1, a2, a3);
    result = setnodevector(a1, a2, a4);
  }
  else
  {
    result = setnodevector(a1, a2, a4);
    if ( v5 > a3 )
    {
      v23 = a3 + 1;
      v24 = 8 * a3;
      *(_DWORD *)(a2 + 28) = a3;
      v11 = a3 + 1;
      v12 = v24;
      do
      {
        while ( 1 )
        {
          v13 = *(_DWORD *)(a2 + 12);
          v14 = v11;
          if ( *(_DWORD *)(v13 + v12 + 4) )
            break;
          v12 += 8;
          ++v11;
          if ( v5 <= v14 )
            goto LABEL_8;
        }
        v15 = luaH_setnum(a1, a2, v11);
        v16 = v5 <= v11;
        *v15 = *(_DWORD *)(v13 + v12);
        v17 = *(_DWORD *)(v13 + v12 + 4);
        v12 += 8;
        ++v11;
        v15[1] = v17;
      }
      while ( !v16 );
LABEL_8:
      if ( v23 > 0x1FFFFFFF )
        luaM_toobig(a1);
      result = (_DWORD *)luaM_realloc_((int)a1, *(_DWORD *)(a2 + 12), 8 * v5, v24);
      *(_DWORD *)(a2 + 12) = result;
    }
  }
  v18 = 1 << v22;
  if ( (1 << v22) - 1 >= 0 )
  {
    v19 = 0;
    v20 = &v9[20 * (1 << v22) - 16];
    do
    {
      while ( 1 )
      {
        ++v19;
        if ( *(_DWORD *)v20 )
          break;
        v20 -= 20;
        if ( v19 == v18 )
          goto LABEL_15;
      }
      result = luaH_set(a1, a2, (int)(v20 + 4));
      *result = *((_DWORD *)v20 - 1);
      v21 = *(_DWORD *)v20;
      v20 -= 20;
      result[1] = v21;
    }
    while ( v19 != v18 );
  }
LABEL_15:
  if ( v9 != (char *)&dummynode_ )
    return (_DWORD *)luaM_realloc_((int)a1, (int)v9, 20 << v22, 0);
  return result;
}


// ===== 85ae9c luaH_resizearray =====
_DWORD *__fastcall luaH_resizearray(_DWORD *a1, int a2, int a3)
{
  int v3; // r12
  bool v4; // zf
  int v5; // r3

  v3 = *(_DWORD *)(a2 + 16);
  v4 = v3 == (_DWORD)&dummynode_;
  if ( (_UNKNOWN *)v3 == &dummynode_ )
  {
    v5 = 0;
  }
  else
  {
    v5 = *(unsigned __int8 *)(a2 + 7);
    v3 = 1;
  }
  if ( !v4 )
    v5 = v3 << v5;
  return resize(a1, a2, a3, v5);
}


// ===== 85aec4 luaH_next =====
int __fastcall luaH_next(_DWORD *a1, int a2, float *a3)
{
  int v3; // r4
  int v7; // r5
  int v8; // r1
  int v9; // r5
  int v10; // r0
  int v11; // r3
  int v12; // r2
  int v13; // r4
  int v14; // r0
  int v15; // r3
  int v16; // r2
  float *v17; // r1
  int v18; // r4
  int v19; // r3
  int v21; // r3
  int v22; // r3

  v3 = *((_DWORD *)a3 + 1);
  if ( v3 )
  {
    if ( v3 != 3 || (v3 = (int)*a3, *a3 != (float)v3) || v3 <= 0 || (v8 = *(_DWORD *)(a2 + 28), v3 > v8) )
    {
      v7 = mainposition(a2, a3);
      while ( !luaO_rawequalObj((float *)(v7 + 8), a3)
           && (*(_DWORD *)(v7 + 12) != 11 || *((int *)a3 + 1) <= 3 || *(_DWORD *)(v7 + 8) != *(_DWORD *)a3) )
      {
        v7 = *(_DWORD *)(v7 + 16);
        if ( !v7 )
          luaG_runerror(a1, (int)"invalid key to 'next'");
      }
      v8 = *(_DWORD *)(a2 + 28);
      v3 = v8 + 1 - 858993459 * ((v7 - *(_DWORD *)(a2 + 16)) >> 2);
    }
  }
  else
  {
    v8 = *(_DWORD *)(a2 + 28);
  }
  if ( v8 > v3 )
  {
    v9 = 8 * v3;
    v10 = *(_DWORD *)(a2 + 12) + 8 * v3;
    v11 = *(_DWORD *)(v10 + 4);
    if ( v11 )
    {
LABEL_25:
      *a3 = (float)(v3 + 1);
      *((_DWORD *)a3 + 1) = 3;
      v21 = *(_DWORD *)(a2 + 12);
      a3[2] = *(float *)(v21 + v9);
      a3[3] = *(float *)(v21 + v9 + 4);
      return 1;
    }
    while ( ++v3 != v8 )
    {
      v12 = *(_DWORD *)(v10 + v11 + 12);
      v11 += 8;
      if ( v12 )
      {
        v9 = 8 * v3;
        goto LABEL_25;
      }
    }
  }
  v13 = v3 - v8;
  v14 = 1 << *(_BYTE *)(a2 + 7);
  if ( v13 >= v14 )
    return 0;
  v15 = *(_DWORD *)(a2 + 16);
  v16 = 20 * v13;
  v17 = (float *)(v15 + 20 * v13);
  if ( !*((_DWORD *)v17 + 1) )
  {
    v18 = v13 + 1;
    v19 = v15 + 20 * v18;
    while ( 1 )
    {
      v19 += 20;
      if ( v18 == v14 )
        return 0;
      if ( *(_DWORD *)(v19 - 16) )
      {
        v16 = 20 * v18;
        v17 = (float *)(v19 - 20);
        break;
      }
      ++v18;
    }
  }
  *a3 = v17[2];
  a3[1] = v17[3];
  v22 = *(_DWORD *)(a2 + 16);
  a3[2] = *(float *)(v22 + v16);
  a3[3] = *(float *)(v22 + v16 + 4);
  return 1;
}


// ===== 85b0ec luaH_new =====
int __fastcall luaH_new(_DWORD *a1, int a2, int a3)
{
  int v6; // r7

  v6 = luaM_realloc_((int)a1, 0, 0, 32);
  luaC_link((int)a1, v6, 5);
  *(_BYTE *)(v6 + 6) = -1;
  *(_BYTE *)(v6 + 7) = 0;
  *(_DWORD *)(v6 + 16) = &dummynode_;
  *(_DWORD *)(v6 + 8) = 0;
  *(_DWORD *)(v6 + 12) = 0;
  *(_DWORD *)(v6 + 28) = 0;
  setarrayvector(a1, v6, a2);
  setnodevector(a1, v6, a3);
  return v6;
}


// ===== 85b174 luaopen_table =====
int __fastcall luaopen_table(_DWORD *a1)
{
  luaL_register(a1, "table", (int *)&tab_funcs);
  return 1;
}


// ===== 85b19c setn =====
void __fastcall __noreturn setn(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_error((int)a1, (int)"'setn' is obsolete");
}


// ===== 85b1d8 sort_comp =====
int __fastcall sort_comp(_DWORD *a1, int a2, int a3)
{
  _BOOL4 v7; // r5

  if ( !lua_type(a1, 2) )
    return lua_lessthan(a1, a2, a3);
  lua_pushvalue(a1, 2);
  lua_pushvalue(a1, a2 - 1);
  lua_pushvalue(a1, a3 - 2);
  lua_call((int)a1, 2, 1);
  v7 = lua_toboolean(a1, -1);
  lua_settop((int)a1, -2);
  return v7;
}


// ===== 85b264 set2 =====
_DWORD *__fastcall set2(_DWORD *a1, int a2, int a3)
{
  lua_rawseti(a1, 1, a2);
  return lua_rawseti(a1, 1, a3);
}


// ===== 85b290 auxsort =====
_DWORD *__fastcall auxsort(_DWORD *result, int a2, int a3)
{
  int v3; // r6
  int v4; // r9
  _DWORD *i; // r5
  int v6; // r4
  int j; // r8
  int v8; // r7
  int v9; // r1
  int v10; // r3

  v3 = a2;
  v4 = a3;
  for ( i = result; v3 < v4; result = (_DWORD *)auxsort(i, v9, j) )
  {
    lua_rawgeti(i, 1, v3);
    lua_rawgeti(i, 1, v4);
    if ( sort_comp(i, -1, -2) )
      result = set2(i, v3, v4);
    else
      result = (_DWORD *)lua_settop((int)i, -3);
    if ( v4 - v3 == 1 )
      break;
    lua_rawgeti(i, 1, (v4 + v3) / 2);
    lua_rawgeti(i, 1, v3);
    if ( sort_comp(i, -2, -1) )
    {
      result = set2(i, (v4 + v3) / 2, v3);
    }
    else
    {
      lua_settop((int)i, -2);
      lua_rawgeti(i, 1, v4);
      result = sort_comp(i, -1, -2) ? set2(i, (v4 + v3) / 2, v4) : (_DWORD *)lua_settop((int)i, -3);
    }
    if ( v4 - v3 == 2 )
      break;
    lua_rawgeti(i, 1, (v4 + v3) / 2);
    lua_pushvalue(i, -1);
    lua_rawgeti(i, 1, v4 - 1);
    set2(i, (v4 + v3) / 2, v4 - 1);
    v6 = v4 - 1;
    for ( j = v3; ; ++j )
    {
      while ( 1 )
      {
        v8 = j + 1;
        lua_rawgeti(i, 1, j + 1);
        if ( !sort_comp(i, -1, -2) )
          break;
        if ( v8 > v4 )
          luaL_error((int)i, (int)"invalid order function for sorting");
        lua_settop((int)i, -2);
        ++j;
      }
      while ( 1 )
      {
        lua_rawgeti(i, 1, --v6);
        if ( !sort_comp(i, -3, -1) )
          break;
        if ( v6 < v3 )
          luaL_error((int)i, (int)"invalid order function for sorting");
        lua_settop((int)i, -2);
      }
      if ( v6 < v8 )
        break;
      set2(i, j + 1, v6);
    }
    lua_settop((int)i, -4);
    lua_rawgeti(i, 1, v4 - 1);
    lua_rawgeti(i, 1, j + 1);
    set2(i, v4 - 1, j + 1);
    if ( v8 - v3 >= v4 - v8 )
    {
      v10 = v4;
      v9 = j + 2;
      v4 = j;
      j = v10;
    }
    else
    {
      v9 = v3;
      v3 = j + 2;
    }
  }
  return result;
}


// ===== 85b570 sort =====
int __fastcall sort(_DWORD *a1)
{
  int v2; // r5

  luaL_checktype(a1, 1, 5);
  v2 = lua_objlen(a1, 1);
  luaL_checkstack(a1, 40, "");
  if ( lua_type(a1, 2) > 0 )
    luaL_checktype(a1, 2, 6);
  lua_settop((int)a1, 2);
  auxsort(a1, 1, v2);
  return 0;
}


// ===== 85b5f4 tremove =====
int __fastcall tremove(_DWORD *a1)
{
  int v2; // r7
  int v3; // r0
  bool v4; // cc
  int v5; // r5

  luaL_checktype(a1, 1, 5);
  v2 = lua_objlen(a1, 1);
  v3 = luaL_optinteger(a1, 2, v2);
  v4 = v2 <= v3;
  if ( v2 >= v3 )
    v4 = v3 <= 0;
  v5 = v3;
  if ( v4 )
    return 0;
  lua_rawgeti(a1, 1, v3);
  if ( v2 > v5 )
  {
    while ( 1 )
    {
      lua_rawgeti(a1, 1, v5 + 1);
      lua_rawseti(a1, 1, v5);
      if ( v2 == v5 + 1 )
        break;
      ++v5;
    }
  }
  lua_pushnil((int)a1);
  lua_rawseti(a1, 1, v2);
  return 1;
}


// ===== 85b6ac tinsert =====
int __fastcall tinsert(_DWORD *a1)
{
  int v2; // r6
  int v3; // r0
  int v4; // r7
  int v5; // r0

  luaL_checktype(a1, 1, 5);
  v2 = lua_objlen(a1, 1) + 1;
  v3 = lua_gettop((int)a1);
  if ( v3 == 2 )
  {
    v4 = v2;
  }
  else
  {
    if ( v3 != 3 )
      luaL_error((int)a1, (int)"wrong number of arguments to 'insert'");
    v5 = luaL_checkinteger(a1, 2);
    v4 = v5;
    if ( v2 >= v5 && v2 > v5 )
    {
      while ( 1 )
      {
        lua_rawgeti(a1, 1, v2 - 1);
        lua_rawseti(a1, 1, v2);
        if ( v4 >= v2 - 1 )
          break;
        --v2;
      }
    }
  }
  lua_rawseti(a1, 1, v4);
  return 0;
}


// ===== 85b784 foreach =====
int __fastcall foreach(_DWORD *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checktype(a1, 2, 6);
  lua_pushnil((int)a1);
  while ( lua_next(a1, 1) )
  {
    lua_pushvalue(a1, 2);
    lua_pushvalue(a1, -3);
    lua_pushvalue(a1, -3);
    lua_call((int)a1, 2, 1);
    if ( lua_type(a1, -1) )
      return 1;
    lua_settop((int)a1, -3);
  }
  return 0;
}


// ===== 85b82c maxn =====
int __fastcall maxn(_DWORD *a1)
{
  float v2; // r5
  bool v3; // zf
  int v4; // r0
  float v5; // r6

  luaL_checktype(a1, 1, 5);
  lua_pushnil((int)a1);
  v2 = 0.0;
  while ( 1 )
  {
    v3 = lua_next(a1, 1) == 0;
    v4 = (int)a1;
    if ( v3 )
      break;
    while ( 1 )
    {
      lua_settop(v4, -2);
      if ( lua_type(a1, -1) != 3 )
        break;
      v5 = COERCE_FLOAT(lua_tonumber(a1, -1));
      if ( v5 > v2 )
        v2 = v5;
      v3 = lua_next(a1, 1) == 0;
      v4 = (int)a1;
      if ( v3 )
        goto LABEL_8;
    }
  }
LABEL_8:
  lua_pushnumber(v4, SLODWORD(v2));
  return 1;
}


// ===== 85b8cc getn =====
int __fastcall getn(_DWORD *a1)
{
  int v2; // r0

  luaL_checktype(a1, 1, 5);
  v2 = lua_objlen(a1, 1);
  lua_pushinteger((int)a1, v2);
  return 1;
}


// ===== 85b900 foreachi =====
int __fastcall foreachi(_DWORD *a1)
{
  int v2; // r6
  int v3; // r5

  luaL_checktype(a1, 1, 5);
  v2 = lua_objlen(a1, 1);
  luaL_checktype(a1, 2, 6);
  if ( v2 <= 0 )
    return 0;
  v3 = 1;
  while ( 1 )
  {
    lua_pushvalue(a1, 2);
    lua_pushinteger((int)a1, v3);
    lua_rawgeti(a1, 1, v3);
    lua_call((int)a1, 2, 1);
    ++v3;
    if ( lua_type(a1, -1) )
      break;
    lua_settop((int)a1, -2);
    if ( v2 < v3 )
      return 0;
  }
  return 1;
}


// ===== 85b9b8 addfield =====
int __fastcall addfield(_DWORD *a1, int a2, int a3)
{
  int v6; // r0
  const char *v7; // r0

  lua_rawgeti(a1, 1, a3);
  if ( !lua_isstring(a1, -1) )
  {
    v6 = lua_type(a1, -1);
    v7 = lua_typename((int)a1, v6);
    luaL_error((int)a1, (int)"invalid value (%s) at index %d in table for 'concat'", v7, a3);
  }
  return luaL_addvalue(a2);
}


// ===== 85ba24 tconcat =====
int __fastcall tconcat(_DWORD *a1)
{
  int v2; // r8
  int v3; // r10
  int v4; // r7
  int v5; // r6
  int v7; // [sp+4h] [bp-418h] BYREF
  _DWORD v8[259]; // [sp+8h] [bp-414h] BYREF

  v2 = luaL_optlstring(a1, 2, "", (size_t *)&v7);
  luaL_checktype(a1, 1, 5);
  v3 = luaL_optinteger(a1, 3, 1);
  if ( lua_type(a1, 4) <= 0 )
    v4 = lua_objlen(a1, 1);
  else
    v4 = luaL_checkinteger(a1, 4);
  luaL_buffinit((int)a1, v8);
  if ( v4 > v3 )
  {
    v5 = v3;
    do
    {
      addfield(a1, (int)v8, v5++);
      luaL_addlstring(v8, v2, v7);
    }
    while ( v5 != v4 );
    v3 += 1 + v4 + ~v3;
  }
  if ( v3 == v4 )
    addfield(a1, (int)v8, v3);
  luaL_pushresult(v8);
  return 1;
}


// ===== 85bb70 luaT_gettmbyobj =====
_DWORD *__fastcall luaT_gettmbyobj(int a1, _DWORD *a2, int a3)
{
  int v3; // r3
  int v4; // r1

  v3 = a2[1];
  if ( v3 == 5 || v3 == 7 )
  {
    v4 = *(_DWORD *)(*a2 + 8);
    if ( v4 )
      return luaH_getstr(v4, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * (a3 + 40)));
  }
  else
  {
    v4 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v3 + 124);
    if ( v4 )
      return luaH_getstr(v4, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * (a3 + 40)));
  }
  return &luaO_nilobject_;
}


// ===== 85bbcc luaT_gettm =====
_DWORD *__fastcall luaT_gettm(int a1, char a2, int a3)
{
  _DWORD *result; // r0

  result = luaH_getstr(a1, a3);
  if ( !result[1] )
  {
    *(_BYTE *)(a1 + 6) |= 1 << a2;
    return nullptr;
  }
  return result;
}


// ===== 85bc00 luaT_init =====
_DWORD *__fastcall luaT_init(_DWORD *a1)
{
  int i; // r4
  char *v3; // r8
  int v4; // r6
  size_t v5; // r0
  _DWORD *result; // r0
  int v7; // r3
  int v8; // r3

  for ( i = 0; i != 17; ++i )
  {
    v3 = luaT_eventname_2803[i];
    v4 = a1[4];
    v5 = LC_API_STRLEN_0(v3);
    result = luaS_newlstr(a1, v3, v5);
    v7 = i + 40;
    *(_DWORD *)(v4 + 4 * (i + 40)) = result;
    v8 = *(_DWORD *)(a1[4] + 4 * v7);
    *(_BYTE *)(v8 + 5) |= 0x20u;
  }
  return result;
}


// ===== 85bc64 luaU_header =====
int __fastcall luaU_header(_BYTE *a1)
{
  memcpy(a1, "\x1BLua", 4u);
  a1[10] = 4;
  a1[4] = 81;
  a1[6] = 1;
  a1[5] = 0;
  a1[7] = 4;
  a1[8] = 4;
  a1[9] = 4;
  a1[11] = 0;
  return 81;
}


// ===== 85bcc8 error =====
void __fastcall __noreturn error(int *a1, const char *a2)
{
  luaO_pushfstring((_DWORD *)*a1, "%s: %s in precompiled chunk", (const char *)a1[3], a2);
  luaD_throw(*a1, 3);
}


// ===== 85bcfc LoadBlock =====
int __fastcall LoadBlock(int *a1)
{
  int result; // r0

  result = luaZ_read(a1[1]);
  if ( result )
    error(a1, "unexpected end");
  return result;
}


// ===== 85bd30 LoadInt =====
int __fastcall LoadInt(int *a1)
{
  int result; // r0
  int v3; // [sp+4h] [bp-4h]

  LoadBlock(a1);
  result = v3;
  if ( v3 < 0 )
    error(a1, "bad integer");
  return result;
}


// ===== 85bd78 LoadString =====
_DWORD *__fastcall LoadString(int *a1)
{
  char *v3; // r5
  int v4; // [sp+4h] [bp-8h]

  LoadBlock(a1);
  if ( !v4 )
    return nullptr;
  v3 = (char *)luaZ_openspace(*a1, a1[2]);
  LoadBlock(a1);
  return luaS_newlstr((_DWORD *)*a1, v3, v4 - 1);
}


// ===== 85bddc LoadFunction =====
int __fastcall LoadFunction(int *a1, _DWORD *a2)
{
  unsigned int v4; // r2
  int v5; // r4
  int *v6; // r3
  _DWORD *v7; // r0
  int v8; // r3
  _DWORD *String; // r0
  int Int; // r0
  int v11; // r6
  int v12; // r6
  int v13; // r0
  int v14; // r3
  int v15; // r7
  int v16; // r0
  int v17; // r10
  int v18; // r8
  int v19; // r4
  int v20; // r6
  int v21; // r6
  int v22; // r0
  int v23; // r3
  int v24; // r7
  int v25; // r8
  int v26; // r0
  int v27; // r6
  int v28; // r0
  int v29; // r0
  int v30; // r6
  int v31; // r0
  int v32; // r3
  int v33; // r2
  int v34; // r7
  int i; // r8
  int v36; // r10
  int v37; // r10
  int v38; // r10
  int v39; // r6
  int v40; // r0
  int v41; // r3
  int v42; // r7
  int v43; // r8
  int v45; // r3
  int v46; // r0
  int v47; // [sp+Ch] [bp-8h]

  v4 = (unsigned __int16)(*(_WORD *)(*a1 + 52) + 1);
  *(_WORD *)(*a1 + 52) = v4;
  if ( v4 > 0xC8 )
    error(a1, "code too deep");
  v5 = luaF_newproto(*a1);
  v6 = *(int **)(*a1 + 8);
  *v6 = v5;
  v6[1] = 9;
  v7 = (_DWORD *)*a1;
  v8 = *(_DWORD *)(*a1 + 8);
  if ( *(_DWORD *)(*a1 + 28) - v8 <= 8 )
  {
    luaD_growstack(v7, 1);
    v7 = (_DWORD *)*a1;
    v8 = *(_DWORD *)(*a1 + 8);
  }
  v7[2] = v8 + 8;
  String = LoadString(a1);
  if ( !String )
    String = a2;
  *(_DWORD *)(v5 + 32) = String;
  *(_DWORD *)(v5 + 60) = LoadInt(a1);
  *(_DWORD *)(v5 + 64) = LoadInt(a1);
  LoadBlock(a1);
  *(_BYTE *)(v5 + 72) = v47;
  LoadBlock(a1);
  *(_BYTE *)(v5 + 73) = v47;
  LoadBlock(a1);
  *(_BYTE *)(v5 + 74) = v47;
  LoadBlock(a1);
  *(_BYTE *)(v5 + 75) = v47;
  Int = LoadInt(a1);
  v11 = Int;
  if ( (unsigned int)(Int + 1) > 0x3FFFFFFF )
    luaM_toobig((_DWORD *)*a1);
  v46 = luaM_realloc_(*a1, 0, 0, 4 * Int);
  *(_DWORD *)(v5 + 44) = v11;
  *(_DWORD *)(v5 + 12) = v46;
  LoadBlock(a1);
  v12 = LoadInt(a1);
  if ( (unsigned int)(v12 + 1) > 0x1FFFFFFF )
    luaM_toobig((_DWORD *)*a1);
  v13 = luaM_realloc_(*a1, 0, 0, 8 * v12);
  *(_DWORD *)(v5 + 8) = v13;
  *(_DWORD *)(v5 + 40) = v12;
  if ( v12 > 0 )
  {
    v14 = 0;
    v15 = 0;
    while ( 1 )
    {
      v16 = v13 + 8 * v14++;
      *(_DWORD *)(v16 + 4) = 0;
      if ( v14 == v12 )
        break;
      v13 = *(_DWORD *)(v5 + 8);
    }
    v17 = v12;
    v18 = v5;
    do
    {
      v19 = *(_DWORD *)(v18 + 8);
      LoadBlock(a1);
      v20 = v19 + 8 * v15;
      switch ( (char)v47 )
      {
        case 0:
          *(_DWORD *)(v20 + 4) = 0;
          break;
        case 1:
          LoadBlock(a1);
          v45 = (char)v47;
          if ( (_BYTE)v47 )
            v45 = 1;
          *(_DWORD *)(v19 + 8 * v15) = v45;
          *(_DWORD *)(v20 + 4) = 1;
          break;
        case 3:
          LoadBlock(a1);
          *(_DWORD *)(v19 + 8 * v15) = v47;
          *(_DWORD *)(v20 + 4) = 3;
          break;
        case 4:
          *(_DWORD *)(v19 + 8 * v15) = LoadString(a1);
          *(_DWORD *)(v20 + 4) = 4;
          break;
        default:
          error(a1, "bad constant");
      }
      ++v15;
    }
    while ( v15 != v17 );
    v5 = v18;
  }
  v21 = LoadInt(a1);
  if ( (unsigned int)(v21 + 1) > 0x3FFFFFFF )
    luaM_toobig((_DWORD *)*a1);
  v22 = luaM_realloc_(*a1, 0, 0, 4 * v21);
  *(_DWORD *)(v5 + 16) = v22;
  *(_DWORD *)(v5 + 52) = v21;
  if ( v21 > 0 )
  {
    v23 = 0;
    v24 = 0;
    while ( 1 )
    {
      *(_DWORD *)(v22 + 4 * v23++) = 0;
      if ( v23 == v21 )
        break;
      v22 = *(_DWORD *)(v5 + 16);
    }
    do
    {
      v25 = *(_DWORD *)(v5 + 16);
      *(_DWORD *)(v25 + 4 * v24++) = LoadFunction(a1, *(_DWORD *)(v5 + 32));
    }
    while ( v24 != v21 );
  }
  v26 = LoadInt(a1);
  v27 = v26;
  if ( (unsigned int)(v26 + 1) > 0x3FFFFFFF )
    luaM_toobig((_DWORD *)*a1);
  v28 = luaM_realloc_(*a1, 0, 0, 4 * v26);
  *(_DWORD *)(v5 + 48) = v27;
  *(_DWORD *)(v5 + 20) = v28;
  LoadBlock(a1);
  v29 = LoadInt(a1);
  v30 = v29;
  if ( (unsigned int)(v29 + 1) > 0x15555555 )
    luaM_toobig((_DWORD *)*a1);
  v31 = luaM_realloc_(*a1, 0, 0, 12 * v29);
  *(_DWORD *)(v5 + 24) = v31;
  *(_DWORD *)(v5 + 56) = v30;
  if ( v30 > 0 )
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    while ( 1 )
    {
      ++v33;
      *(_DWORD *)(v31 + v32) = 0;
      v32 += 12;
      if ( v33 == v30 )
        break;
      v31 = *(_DWORD *)(v5 + 24);
    }
    for ( i = 0; i != v30; ++i )
    {
      v36 = *(_DWORD *)(v5 + 24);
      *(_DWORD *)(v36 + v34) = LoadString(a1);
      v37 = *(_DWORD *)(v5 + 24);
      *(_DWORD *)(v37 + v34 + 4) = LoadInt(a1);
      v38 = *(_DWORD *)(v5 + 24);
      *(_DWORD *)(v38 + v34 + 8) = LoadInt(a1);
      v34 += 12;
    }
  }
  v39 = LoadInt(a1);
  if ( (unsigned int)(v39 + 1) > 0x3FFFFFFF )
    luaM_toobig((_DWORD *)*a1);
  v40 = luaM_realloc_(*a1, 0, 0, 4 * v39);
  *(_DWORD *)(v5 + 28) = v40;
  *(_DWORD *)(v5 + 36) = v39;
  if ( v39 > 0 )
  {
    v41 = 0;
    v42 = 0;
    while ( 1 )
    {
      *(_DWORD *)(v40 + 4 * v41++) = 0;
      if ( v41 == v39 )
        break;
      v40 = *(_DWORD *)(v5 + 28);
    }
    do
    {
      v43 = *(_DWORD *)(v5 + 28);
      *(_DWORD *)(v43 + 4 * v42++) = LoadString(a1);
    }
    while ( v42 != v39 );
  }
  if ( !luaG_checkcode(v5) )
    error(a1, "bad code");
  *(_DWORD *)(*a1 + 8) -= 8;
  --*(_WORD *)(*a1 + 52);
  return v5;
}


// ===== 85c320 luaU_undump =====
int __fastcall luaU_undump(_DWORD *a1, int a2, int a3, const char *a4)
{
  int v4; // r12
  bool v6; // zf
  _DWORD *v7; // r0
  int v9[3]; // [sp+4h] [bp-30h] BYREF
  const char *v10; // [sp+10h] [bp-24h]
  _BYTE v11[12]; // [sp+14h] [bp-20h] BYREF
  _BYTE v12[12]; // [sp+20h] [bp-14h] BYREF

  v4 = *a4;
  v6 = v4 == 64;
  if ( v4 != 64 )
    v6 = v4 == 61;
  if ( v6 )
  {
    v10 = a4 + 1;
  }
  else if ( v4 == 27 )
  {
    v10 = "binary string";
  }
  else
  {
    v10 = a4;
  }
  v9[1] = a2;
  v9[2] = a3;
  v9[0] = (int)a1;
  luaU_header(v12);
  LoadBlock(v9);
  if ( memcmp(v12, v11, 0xCu) )
    error(v9, "bad header");
  v7 = luaS_newlstr(a1, "=?", 2u);
  return LoadFunction(v9, v7);
}


// ===== 85c424 callTMres =====
int __fastcall callTMres(_DWORD *a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  _DWORD *v5; // lr
  int v6; // r5
  int v7; // r5
  int v9; // r2
  int v10; // r3
  char *v11; // r1
  int v12; // r2
  int *v13; // r3
  int result; // r0

  v5 = (_DWORD *)a1[2];
  v6 = a1[8];
  *v5 = *a3;
  v7 = a2 - v6;
  v5[1] = a3[1];
  v9 = a1[2];
  *(_DWORD *)(v9 + 8) = *a4;
  *(_DWORD *)(v9 + 12) = a4[1];
  v10 = a1[2];
  *(_DWORD *)(v10 + 16) = *a5;
  *(_DWORD *)(v10 + 20) = a5[1];
  v11 = (char *)a1[2];
  if ( a1[7] - (int)v11 <= 24 )
  {
    luaD_growstack(a1, 3);
    v11 = (char *)a1[2];
  }
  a1[2] = v11 + 24;
  luaD_call((int)a1, v11, (_BYTE *)&dword_0 + 1);
  v12 = a1[8];
  v13 = (int *)(a1[2] - 8);
  a1[2] = v13;
  result = *v13;
  *(_DWORD *)(v12 + v7) = *v13;
  *(_DWORD *)(v12 + v7 + 4) = v13[1];
  return result;
}


// ===== 85c4d0 call_binTM =====
int __fastcall call_binTM(_DWORD *a1, _DWORD *a2, _DWORD *a3, int a4, int a5)
{
  _DWORD *v9; // r2
  int result; // r0

  v9 = luaT_gettmbyobj((int)a1, a2, a5);
  if ( v9[1] || (v9 = luaT_gettmbyobj((int)a1, a3, a5), (result = v9[1]) != 0) )
  {
    callTMres(a1, a4, v9, a2, a3);
    return 1;
  }
  return result;
}


// ===== 85c548 l_strcmp =====
int __fastcall l_strcmp(int a1, int a2)
{
  const char *v2; // r4
  int v3; // r7
  int v4; // r6
  const char *i; // r5
  size_t v6; // r0
  size_t v7; // r0
  int v8; // r3

  v2 = (const char *)(a1 + 16);
  v3 = *(_DWORD *)(a1 + 12);
  v4 = *(_DWORD *)(a2 + 12);
  for ( i = (const char *)(a2 + 16); ; i += v7 )
  {
    v8 = strcoll(v2, i);
    if ( v8 )
      return v8;
    v6 = LC_API_STRLEN_0(v2);
    if ( v6 == v4 )
      return v4 != v3;
    if ( v6 == v3 )
      break;
    v7 = v6 + 1;
    v4 -= v7;
    v2 += v7;
    v3 -= v7;
  }
  return -1;
}


// ===== 85c5c4 call_orderTM =====
int __fastcall call_orderTM(_DWORD *a1, _DWORD *a2, _DWORD *a3, int a4)
{
  float *v8; // r6
  int result; // r0
  float *v10; // r0
  int *v11; // r3

  v8 = (float *)luaT_gettmbyobj((int)a1, a2, a4);
  if ( !*((_DWORD *)v8 + 1) )
    return -1;
  v10 = (float *)luaT_gettmbyobj((int)a1, a3, a4);
  if ( !luaO_rawequalObj(v8, v10) )
    return -1;
  callTMres(a1, a1[2], v8, a2, a3);
  v11 = (int *)a1[2];
  result = v11[1];
  if ( result )
  {
    if ( result == 1 )
    {
      result = *v11;
      if ( *v11 )
        return 1;
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 85c668 luaV_lessthan =====
unsigned int __fastcall luaV_lessthan(_DWORD *a1, int *a2, int *a3)
{
  int v3; // r3
  int *v4; // r5
  int *v5; // r4
  _DWORD *v6; // r6
  unsigned int result; // r0

  v3 = a2[1];
  v4 = a2;
  v5 = a3;
  v6 = a1;
  if ( v3 != a3[1] )
LABEL_6:
    luaG_ordererror(a1, (int)a2, (int)a3);
  if ( v3 == 3 )
    return *(float *)a2 < *(float *)a3;
  if ( v3 == 4 )
    return (unsigned int)l_strcmp(*a2, *a3) >> 31;
  result = call_orderTM(a1, a2, a3, 13);
  if ( result == -1 )
  {
    a1 = v6;
    a2 = v4;
    a3 = v5;
    goto LABEL_6;
  }
  return result;
}


// ===== 85c6ec luaV_settable =====
_DWORD *__fastcall luaV_settable(_DWORD *a1, int *a2, _DWORD *a3, _DWORD *a4)
{
  int v4; // r12
  int *v5; // r4
  int v8; // r6
  int *v9; // r0
  int *v10; // r7
  int v11; // r8
  _DWORD *result; // r0
  _DWORD *v13; // r10
  int *v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r3
  char *v18; // r1

  v4 = a2[1];
  v5 = a2;
  v8 = 0;
  while ( v4 != 5 )
  {
    v9 = luaT_gettmbyobj((int)a1, v5, 1);
    v4 = v9[1];
    v10 = v9;
    if ( !v4 )
      luaG_typeerror(a1, (int)v5, "index");
    ++v8;
    if ( v4 == 6 )
    {
LABEL_15:
      v14 = (int *)a1[2];
      *v14 = *v10;
      v14[1] = v10[1];
      v15 = a1[2];
      *(_DWORD *)(v15 + 8) = *v5;
      *(_DWORD *)(v15 + 12) = v5[1];
      v16 = a1[2];
      *(_DWORD *)(v16 + 16) = *a3;
      *(_DWORD *)(v16 + 20) = a3[1];
      v17 = a1[2];
      *(_DWORD *)(v17 + 24) = *a4;
      *(_DWORD *)(v17 + 28) = a4[1];
      v18 = (char *)a1[2];
      if ( a1[7] - (int)v18 <= 32 )
      {
        luaD_growstack(a1, 4);
        v18 = (char *)a1[2];
      }
      a1[2] = v18 + 32;
      return (_DWORD *)luaD_call((int)a1, v18, nullptr);
    }
LABEL_4:
    v5 = v10;
    if ( v8 == 100 )
      luaG_runerror(a1, (int)"loop in settable");
  }
  v11 = *v5;
  result = luaH_set(a1, *v5, (int)a3);
  v13 = result;
  if ( !result[1] )
  {
    result = *(_DWORD **)(v11 + 8);
    if ( result )
    {
      if ( (*((_BYTE *)result + 6) & 2) == 0 )
      {
        result = luaT_gettm((int)result, 1, *(_DWORD *)(a1[4] + 164));
        v10 = result;
        if ( result )
        {
          v4 = result[1];
          ++v8;
          if ( v4 == 6 )
            goto LABEL_15;
          goto LABEL_4;
        }
      }
    }
  }
  *v13 = *a4;
  v13[1] = a4[1];
  if ( (int)a4[1] > 3 && (*(_BYTE *)(*a4 + 5) & 3) != 0 && (*(_BYTE *)(v11 + 5) & 4) != 0 )
    return (_DWORD *)luaC_barrierback((int)a1, v11);
  return result;
}


// ===== 85c8dc luaV_gettable =====
_DWORD *__fastcall luaV_gettable(_DWORD *a1, int *a2, float *a3, _DWORD *a4)
{
  int *v4; // r4
  int v5; // r12
  int v9; // r7
  int *v10; // r0
  int *v11; // r8
  int v12; // r8
  _DWORD *result; // r0
  _DWORD *v14; // r10

  v4 = a2;
  v5 = a2[1];
  v9 = 0;
  while ( v5 != 5 )
  {
    v10 = luaT_gettmbyobj((int)a1, v4, 0);
    v5 = v10[1];
    v11 = v10;
    if ( !v5 )
      luaG_typeerror(a1, (int)v4, "index");
    ++v9;
    if ( v5 == 6 )
      return (_DWORD *)callTMres(a1, (int)a4, v11, v4, a3);
LABEL_4:
    v4 = v11;
    if ( v9 == 100 )
      luaG_runerror(a1, (int)"loop in gettable");
  }
  v12 = *v4;
  result = luaH_get(*v4, a3);
  v14 = result;
  if ( result[1]
    || (result = *(_DWORD **)(v12 + 8)) == nullptr
    || (*((_BYTE *)result + 6) & 1) != 0
    || (result = luaT_gettm((int)result, 0, *(_DWORD *)(a1[4] + 160)), (v11 = result) == nullptr) )
  {
    *a4 = *v14;
    a4[1] = v14[1];
    return result;
  }
  v5 = result[1];
  ++v9;
  if ( v5 != 6 )
    goto LABEL_4;
  return (_DWORD *)callTMres(a1, (int)a4, v11, v4, a3);
}


// ===== 85ca10 luaV_tostring =====
int __fastcall luaV_tostring(_DWORD *a1, int a2)
{
  size_t v5; // r0
  char s[32]; // [sp+4h] [bp-28h] BYREF

  if ( *(_DWORD *)(a2 + 4) != 3 )
    return 0;
  sprintf(s, "%.14g", *(float *)a2);
  v5 = LC_API_STRLEN_0(s);
  *(_DWORD *)a2 = luaS_newlstr(a1, s, v5);
  *(_DWORD *)(a2 + 4) = 4;
  return 1;
}


// ===== 85cac4 luaV_concat =====
_DWORD *__fastcall luaV_concat(_DWORD *result, int a2, int a3)
{
  _DWORD *v3; // r10
  _DWORD *v4; // r4
  int v7; // r8
  int v8; // r6
  _DWORD *v9; // r9
  int v10; // r7
  int v11; // r7
  unsigned int v12; // r9
  int v13; // r7
  size_t v14; // r8
  int v15; // r1
  size_t v16; // r4
  char *v17; // [sp+Ch] [bp-10h]
  _DWORD *v18; // [sp+14h] [bp-8h]

  v4 = result;
  while ( 1 )
  {
    v7 = v4[3] + 8 * (a3 + 1);
    v8 = v7 - 16;
    if ( (unsigned int)(*(_DWORD *)(v7 - 12) - 3) > 1 )
    {
      v9 = (_DWORD *)(v7 - 8);
LABEL_5:
      result = (_DWORD *)call_binTM(v4, (_DWORD *)(v7 - 16), v9, v7 - 16, 15);
      if ( !result )
        luaG_concaterror(v4, v7 - 16, (int)v9);
LABEL_6:
      v10 = -1;
      goto LABEL_7;
    }
    v9 = (_DWORD *)(v7 - 8);
    if ( *(_DWORD *)(v7 - 4) != 4 )
    {
      result = (_DWORD *)luaV_tostring(v4, v7 - 8);
      if ( !result )
        goto LABEL_5;
    }
    v11 = *(_DWORD *)(*(_DWORD *)(v7 - 8) + 12);
    if ( v11 )
    {
      if ( a2 <= 1 )
        v8 = 1;
      else
        v3 = (_DWORD *)(v7 - 16);
      if ( a2 > 1 )
      {
        v8 = 1;
        do
        {
          if ( v3[1] != 4 && !luaV_tostring(v4, (int)v3) )
            break;
          v12 = *(_DWORD *)(*v3 + 12);
          ++v8;
          if ( v12 >= -3 - v11 )
            luaG_runerror(v4, (int)"string length overflow");
          v11 += v12;
          v3 -= 2;
        }
        while ( v8 != a2 );
        v9 = (_DWORD *)(v7 - 8 * v8);
      }
      v3 = (_DWORD *)(v7 - 8 * v8);
      v13 = 0;
      v17 = (char *)luaZ_openspace(v4, v4[4] + 52);
      v14 = 0;
      v18 = v4;
      do
      {
        v15 = v3[2 * v13++];
        v16 = *(_DWORD *)(v15 + 12);
        memcpy(&v17[v14], (const void *)(v15 + 16), v16);
        v14 += v16;
      }
      while ( v13 != v8 );
      v4 = v18;
      result = luaS_newlstr(v18, v17, v14);
      *v9 = result;
      v9[1] = 4;
      v10 = 1 - v13;
    }
    else
    {
      if ( *(_DWORD *)(v7 - 12) == 4 )
        goto LABEL_6;
      result = (_DWORD *)luaV_tostring(v4, v7 - 16);
      v10 = -1;
    }
LABEL_7:
    a2 += v10;
    if ( a2 <= 1 )
      return result;
    a3 += v10;
  }
}


// ===== 85ccd8 luaV_tonumber =====
_DWORD *__fastcall luaV_tonumber(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // [sp+4h] [bp-4h] BYREF

  v2 = result[1];
  if ( v2 != 3 )
  {
    if ( v2 == 4 && luaO_str2d((const char *)(*result + 16), (float *)&v5) )
    {
      v4 = v5;
      a2[1] = 3;
      *a2 = v4;
      return a2;
    }
    else
    {
      return nullptr;
    }
  }
  return result;
}


// ===== 85cd38 Arith =====
float __fastcall Arith(_DWORD *a1, int a2, _DWORD *a3, _DWORD *a4, int a5)
{
  float *v9; // r10
  float result; // r0
  float v11; // r5
  float v12; // r10
  int v13; // r3
  int v14; // [sp+8h] [bp-10h] BYREF
  int v15; // [sp+10h] [bp-8h] BYREF

  v9 = (float *)luaV_tonumber(a3, &v15);
  if ( !v9 || (result = COERCE_FLOAT(luaV_tonumber(a4, &v14)), result == 0.0) )
  {
    result = COERCE_FLOAT(call_binTM(a1, a3, a4, a2, a5));
    if ( result == 0.0 )
      luaG_aritherror(a1, (int)a3, (int)a4, v13);
  }
  else
  {
    v11 = *v9;
    v12 = *(float *)LODWORD(result);
    switch ( a5 )
    {
      case 5:
        result = v11 + v12;
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = v11 + v12;
        break;
      case 6:
        result = v11 - v12;
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = v11 - v12;
        break;
      case 7:
        result = v11 * v12;
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = v11 * v12;
        break;
      case 8:
        result = v11 / v12;
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = v11 / v12;
        break;
      case 9:
        result = v11 - floor((float)(v11 / v12)) * v12;
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = result;
        break;
      case 10:
        result = pow(v11, v12);
        *(_DWORD *)(a2 + 4) = 3;
        *(float *)a2 = result;
        break;
      case 11:
        *(_DWORD *)(a2 + 4) = 3;
        *(_DWORD *)a2 = LODWORD(v11) + 0x80000000;
        break;
      default:
        return result;
    }
  }
  return result;
}


// ===== 85cf1c get_compTM.clone.0 =====
float *__fastcall get_compTM_clone_0(int a1, int a2, int a3)
{
  float *v6; // r6
  float *v8; // r1

  if ( !a2 )
    return nullptr;
  if ( (*(_BYTE *)(a2 + 6) & 0x10) != 0 )
    return nullptr;
  v6 = (float *)luaT_gettm(a2, 4, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 176));
  if ( v6 )
  {
    if ( a2 != a3 )
    {
      if ( !a3 )
        return nullptr;
      if ( (*(_BYTE *)(a3 + 6) & 0x10) != 0 )
        return nullptr;
      v8 = (float *)luaT_gettm(a3, 4, *(_DWORD *)(*(_DWORD *)(a1 + 16) + 176));
      if ( !v8 || !luaO_rawequalObj(v6, v8) )
        return nullptr;
    }
  }
  return v6;
}


// ===== 85cfb0 luaV_equalval =====
int __fastcall luaV_equalval(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  int result; // r0
  float *compTM_clone_0; // r0
  int *v8; // r2
  int v9; // r3

  switch ( a2[1] )
  {
    case 0:
      return 1;
    case 3:
      return *(float *)a2 == *(float *)a3;
    case 5:
    case 7:
      if ( *a2 == *a3 )
        return 1;
      compTM_clone_0 = get_compTM_clone_0((int)a1, *(_DWORD *)(*a2 + 8), *(_DWORD *)(*a3 + 8));
      if ( !compTM_clone_0 )
        return 0;
      callTMres(a1, a1[2], compTM_clone_0, a2, a3);
      v8 = (int *)a1[2];
      v9 = v8[1];
      if ( !v9 )
        return 0;
      if ( v9 != 1 )
        return 1;
      result = *v8;
      if ( *v8 )
        return 1;
      return result;
    default:
      return *a2 == *a3;
  }
}


// ===== 85d09c luaV_execute =====
float __fastcall luaV_execute(int a1, int a2)
{
  int v2; // r12
  int v4; // r3
  float result; // r0
  unsigned int *v6; // r10
  int *v7; // r6
  unsigned int v8; // r2
  unsigned int *v9; // r5
  unsigned int v10; // r8
  int v11; // r3
  int v12; // r7
  unsigned int v13; // r6
  int v14; // r3
  int v15; // r3
  bool v16; // cc
  int v17; // r9
  int v18; // r11
  unsigned int v19; // r3
  int *v20; // r7
  int v21; // r3
  int *v22; // r1
  unsigned int v23; // r8
  int v24; // r3
  float *v25; // r2
  int *v26; // r9
  int v27; // r8
  int v28; // r10
  int v29; // r2
  int v30; // r3
  unsigned int *v31; // r11
  bool v32; // cc
  int v33; // r8
  float v34; // r9
  int v35; // r11
  int v36; // r8
  unsigned int v37; // r3
  int v38; // r3
  int v39; // r9
  int v40; // r8
  int v41; // r9
  int v42; // t1
  int v43; // r10
  int v44; // r8
  int *v45; // r7
  int v46; // r9
  int v47; // r11
  int v48; // r0
  int v49; // r2
  int v50; // r3
  int v51; // r2
  int v52; // r9
  int *v53; // r3
  int v54; // r2
  int v55; // r5
  float *v56; // r10
  float v57; // r0
  float v58; // r10
  float v59; // r1
  char v60; // r3
  unsigned int v61; // r2
  bool v62; // zf
  unsigned int v63; // r8
  float *v64; // r2
  unsigned int v65; // r3
  unsigned int v66; // r2
  bool v67; // zf
  unsigned int v68; // r8
  float *v69; // r2
  float *v70; // r3
  unsigned int v71; // r2
  bool v72; // zf
  unsigned int v73; // r8
  float *v74; // r2
  unsigned int v75; // r3
  unsigned int v76; // r2
  bool v77; // zf
  unsigned int v78; // r8
  float *v79; // r2
  unsigned int v80; // r3
  int v81; // r10
  int v82; // r0
  int v83; // r3
  unsigned int v84; // r2
  bool v85; // zf
  unsigned int v86; // r8
  int *v87; // r2
  unsigned int v88; // r3
  _DWORD *v89; // r3
  int v90; // r12
  unsigned int v91; // r3
  int v92; // r12
  int *v93; // r3
  int *v94; // r8
  unsigned int v95; // r8
  unsigned int v96; // r8
  unsigned int v97; // r1
  bool v98; // zf
  unsigned int v99; // r8
  unsigned int v100; // r2
  int v101; // r3
  int *v102; // r3
  int v103; // r2
  int v104; // r2
  int v105; // r3
  int v106; // r3
  unsigned int v107; // r7
  bool v108; // zf
  unsigned int v109; // r8
  signed int v110; // r7
  bool v111; // zf
  int v112; // r3
  int *v113; // r8
  int v114; // r3
  int v115; // r2
  unsigned int v116; // r8
  int *v117; // r2
  unsigned int v118; // r8
  _DWORD *v119; // r8
  int v120; // r6
  int *v121; // r5
  unsigned int v122; // r3
  unsigned int v123; // r2
  int v124; // r3
  int v125; // r2
  int v126; // r0
  int v127; // r2
  int v128; // r3
  int v129; // r2
  int v130; // r3
  bool v131; // zf
  int *v132; // r3
  int v133; // r8
  char *v134; // r8
  unsigned int v135; // r8
  unsigned int v136; // r1
  bool v137; // zf
  unsigned int v138; // r8
  int *v139; // r1
  unsigned int v140; // r2
  int v141; // r2
  unsigned int v142; // r8
  unsigned int v143; // r2
  bool v144; // zf
  unsigned int v145; // r8
  float *v146; // r2
  unsigned int v147; // r3
  unsigned int v148; // r2
  bool v149; // zf
  unsigned int v150; // r8
  float *v151; // r2
  float *v152; // r3
  unsigned int v153; // r8
  int *v154; // r10
  int v155; // r3
  float v156; // r10
  float v157; // r9
  int v158; // r2
  int v159; // r2
  int v160; // r3
  int v161; // r2
  int v162; // r0
  int v163; // [sp+10h] [bp-44h]
  float v164; // [sp+14h] [bp-40h]
  int v165; // [sp+18h] [bp-3Ch]
  int v166; // [sp+24h] [bp-30h]
  int v167; // [sp+28h] [bp-2Ch]
  int v168[2]; // [sp+40h] [bp-14h] BYREF
  int v169[3]; // [sp+48h] [bp-Ch] BYREF

  v166 = a2;
  v4 = *(_DWORD *)(a1 + 20);
LABEL_2:
  result = COERCE_FLOAT("sure");
  v6 = *(unsigned int **)(a1 + 24);
  v7 = *(int **)(a1 + 12);
  v163 = **(_DWORD **)(v4 + 4);
  v164 = *(float *)(*(_DWORD *)(v163 + 16) + 8);
  while ( 1 )
  {
    v8 = *(unsigned __int8 *)(a1 + 56);
    v9 = v6 + 1;
    v10 = *v6;
    if ( (v8 & 0xC) == 0 )
      goto LABEL_24;
    v11 = *(_DWORD *)(a1 + 64) - 1;
    v62 = *(_DWORD *)(a1 + 64) == 1;
    *(_DWORD *)(a1 + 64) = v11;
    if ( v62 )
      break;
    v12 = v8 & 4;
    if ( (v8 & 4) != 0 )
      goto LABEL_7;
LABEL_24:
    v17 = (unsigned __int8)(v10 >> 6);
    v18 = 2 * v17;
    v19 = v10 & 0x3F;
    v20 = &v7[2 * v17];
    switch ( v10 & 0x3F )
    {
      case 0u:
        v96 = v10 >> 23;
        ++v6;
        v7[2 * v17] = v7[2 * v96];
        v20[1] = v7[2 * v96 + 1];
        continue;
      case 1u:
        a2 = LODWORD(v164);
        v95 = v10 >> 14;
        ++v6;
        v7[2 * v17] = *(_DWORD *)(LODWORD(v164) + 8 * v95);
        v20[1] = *(_DWORD *)(LODWORD(v164) + 8 * v95 + 4);
        continue;
      case 2u:
        v7[2 * v17] = v10 >> 23;
        v20[1] = 1;
        if ( ((v10 >> 14) & 0x1FF) == 0 )
          goto LABEL_34;
        v55 = (int)(v6 + 2);
        goto LABEL_77;
      case 3u:
        v94 = &v7[2 * (v10 >> 23)];
        do
        {
          v94[1] = 0;
          v94 -= 2;
        }
        while ( v20 <= v94 );
        ++v6;
        continue;
      case 4u:
        ++v6;
        v93 = *(int **)(*(_DWORD *)(v163 + 4 * (v10 >> 23) + 20) + 8);
        v7[2 * v17] = *v93;
        v20[1] = v93[1];
        continue;
      case 5u:
        v92 = *(_DWORD *)(v163 + 12);
        *(_DWORD *)(a1 + 24) = v9;
        v169[0] = v92;
        v169[1] = 5;
        ++v6;
        result = COERCE_FLOAT(luaV_gettable((_DWORD *)a1, v169, (float *)(LODWORD(v164) + 8 * (v10 >> 14)), &v7[2 * v17]));
        v7 = *(int **)(a1 + 12);
        continue;
      case 6u:
        v91 = v10 >> 14;
        if ( ((v10 >> 14) & 0x100) == 0 )
          v91 <<= 23;
        *(_DWORD *)(a1 + 24) = v9;
        if ( ((v10 >> 14) & 0x100) != 0 )
        {
          v2 = LODWORD(v164);
          v91 = (unsigned __int8)v91;
        }
        else
        {
          v91 >>= 23;
        }
        v22 = &v7[2 * (v10 >> 23)];
        if ( ((v10 >> 14) & 0x100) != 0 )
          v25 = (float *)(v2 + 8 * v91);
        else
          v25 = (float *)&v7[2 * v91];
        goto LABEL_33;
      case 7u:
        v90 = *(_DWORD *)(v163 + 12);
        *(_DWORD *)(a1 + 24) = v9;
        v168[0] = v90;
        v168[1] = 5;
        ++v6;
        result = COERCE_FLOAT(luaV_settable((_DWORD *)a1, v168, (_DWORD *)(LODWORD(v164) + 8 * (v10 >> 14)), &v7[2 * v17]));
        v7 = *(int **)(a1 + 12);
        continue;
      case 8u:
        a2 = *(_DWORD *)(v163 + 4 * (v10 >> 23) + 20);
        v89 = *(_DWORD **)(a2 + 8);
        *v89 = v7[2 * v17];
        v89[1] = v20[1];
        if ( v20[1] <= 3 || (*(_BYTE *)(*v20 + 5) & 3) == 0 || (*(_BYTE *)(a2 + 5) & 4) == 0 )
          goto LABEL_34;
        result = COERCE_FLOAT(luaC_barrierf(a1, a2, *v20));
        ++v6;
        continue;
      case 9u:
        v84 = v10 >> 23;
        v85 = ((v10 >> 23) & 0x100) == 0;
        *(_DWORD *)(a1 + 24) = v9;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          v2 = LODWORD(v164);
          v84 &= ~0x100u;
        }
        v86 = v10 >> 14;
        if ( v85 )
          v87 = &v7[2 * v84];
        else
          v87 = (int *)(v2 + 8 * v84);
        if ( (v86 & 0x100) != 0 )
          result = v164;
        else
          v19 = v86 << 23;
        if ( (v86 & 0x100) != 0 )
          v88 = LODWORD(result) + 8 * (unsigned __int8)v86;
        else
          v88 = v19 >> 23;
        if ( (v86 & 0x100) == 0 )
          v88 = (unsigned int)&v7[2 * v88];
        result = COERCE_FLOAT(luaV_settable((_DWORD *)a1, &v7[2 * v17], v87, (_DWORD *)v88));
        ++v6;
        v7 = *(int **)(a1 + 12);
        continue;
      case 0xAu:
        v81 = luaO_fb2int(v10 >> 23);
        v82 = luaO_fb2int((v10 >> 14) & 0x1FF);
        result = COERCE_FLOAT(luaH_new((_DWORD *)a1, v81, v82));
        *(float *)&v7[2 * v17] = result;
        v20[1] = 5;
        v83 = *(_DWORD *)(a1 + 16);
        *(_DWORD *)(a1 + 24) = v9;
        if ( *(_DWORD *)(v83 + 68) >= *(_DWORD *)(v83 + 64) )
          goto LABEL_148;
        goto LABEL_55;
      case 0xBu:
        v21 = v7[2 * (v10 >> 23)];
        v22 = &v7[2 * (v10 >> 23)];
        v23 = v10 >> 14;
        v20[2] = v21;
        v24 = v22[1];
        if ( (v23 & 0x100) == 0 )
          v8 = v23 << 23;
        v20[3] = v24;
        *(_DWORD *)(a1 + 24) = v9;
        if ( (v23 & 0x100) != 0 )
          v24 = LODWORD(v164);
        else
          v8 >>= 23;
        if ( (v23 & 0x100) != 0 )
          v25 = (float *)(v24 + 8 * (unsigned __int8)v23);
        else
          v25 = (float *)&v7[2 * v8];
LABEL_33:
        result = COERCE_FLOAT(luaV_gettable((_DWORD *)a1, v22, v25, &v7[2 * v17]));
        v7 = *(int **)(a1 + 12);
        goto LABEL_34;
      case 0xCu:
        v76 = v10 >> 23;
        v77 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          v2 = LODWORD(v164);
          v76 &= ~0x100u;
        }
        v78 = v10 >> 14;
        if ( v77 )
          v79 = (float *)&v7[2 * v76];
        else
          v79 = (float *)(v2 + 8 * v76);
        if ( (v78 & 0x100) != 0 )
          result = v164;
        else
          v19 = v78 << 23;
        if ( (v78 & 0x100) != 0 )
          v80 = LODWORD(result) + 8 * (unsigned __int8)v78;
        else
          v80 = v19 >> 23;
        if ( (v78 & 0x100) == 0 )
          v80 = (unsigned int)&v7[2 * v80];
        if ( *((_DWORD *)v79 + 1) == 3 && *(_DWORD *)(v80 + 4) == 3 )
        {
          result = *v79 + *(float *)v80;
          ++v6;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v79, (_DWORD *)v80, 5);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0xDu:
        v71 = v10 >> 23;
        v72 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          a2 = LODWORD(v164);
          v71 &= ~0x100u;
        }
        v73 = v10 >> 14;
        if ( v72 )
          v74 = (float *)&v7[2 * v71];
        else
          v74 = (float *)(a2 + 8 * v71);
        if ( (v73 & 0x100) != 0 )
          v2 = LODWORD(v164);
        else
          v19 = v73 << 23;
        if ( (v73 & 0x100) != 0 )
          v75 = v2 + 8 * (unsigned __int8)v73;
        else
          v75 = v19 >> 23;
        if ( (v73 & 0x100) == 0 )
          v75 = (unsigned int)&v7[2 * v75];
        if ( *((_DWORD *)v74 + 1) == 3 && *(_DWORD *)(v75 + 4) == 3 )
        {
          result = *v74 - *(float *)v75;
          ++v6;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v74, (_DWORD *)v75, 6);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0xEu:
        v66 = v10 >> 23;
        v67 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          result = v164;
          v66 &= ~0x100u;
        }
        v68 = v10 >> 14;
        if ( v67 )
          v69 = (float *)&v7[2 * v66];
        else
          v69 = (float *)(LODWORD(result) + 8 * v66);
        if ( (v68 & 0x100) != 0 )
          a2 = LODWORD(v164);
        else
          v19 = v68 << 23;
        if ( (v68 & 0x100) != 0 )
          v70 = (float *)(a2 + 8 * (unsigned __int8)v68);
        else
          v70 = (float *)&v7[2 * (v19 >> 23)];
        if ( *((_DWORD *)v69 + 1) == 3 && *((_DWORD *)v70 + 1) == 3 )
        {
          result = *v69 * *v70;
          ++v6;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v69, v70, 7);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0xFu:
        v61 = v10 >> 23;
        v62 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          v19 = LODWORD(v164);
          v61 &= ~0x100u;
        }
        v63 = v10 >> 14;
        if ( v62 )
          v64 = (float *)&v7[2 * v61];
        else
          v64 = (float *)(v19 + 8 * v61);
        if ( (v63 & 0x100) != 0 )
          v2 = LODWORD(v164);
        else
          v19 = v63 << 23;
        if ( (v63 & 0x100) != 0 )
          v65 = v2 + 8 * (unsigned __int8)v63;
        else
          v65 = v19 >> 23;
        if ( (v63 & 0x100) == 0 )
          v65 = (unsigned int)&v7[2 * v65];
        if ( *((_DWORD *)v64 + 1) == 3 && *(_DWORD *)(v65 + 4) == 3 )
        {
          result = *v64 / *(float *)v65;
          ++v6;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v64, (_DWORD *)v65, 8);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0x10u:
        v148 = v10 >> 23;
        v149 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          result = v164;
          v148 &= ~0x100u;
        }
        v150 = v10 >> 14;
        if ( v149 )
          v151 = (float *)&v7[2 * v148];
        else
          v151 = (float *)(LODWORD(result) + 8 * v148);
        if ( (v150 & 0x100) != 0 )
          a2 = LODWORD(v164);
        else
          v19 = v150 << 23;
        if ( (v150 & 0x100) != 0 )
          v152 = (float *)(a2 + 8 * (unsigned __int8)v150);
        else
          v152 = (float *)&v7[2 * (v19 >> 23)];
        if ( *((_DWORD *)v151 + 1) == 3 && *((_DWORD *)v152 + 1) == 3 )
        {
          v156 = *v151;
          v157 = *v152;
          result = v156 - floor((float)(*v151 / *v152)) * v157;
          v6 = v9;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v151, v152, 9);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0x11u:
        v143 = v10 >> 23;
        v144 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          v19 = LODWORD(v164);
          v143 &= ~0x100u;
        }
        v145 = v10 >> 14;
        if ( v144 )
          v146 = (float *)&v7[2 * v143];
        else
          v146 = (float *)(v19 + 8 * v143);
        if ( (v145 & 0x100) != 0 )
          v2 = LODWORD(v164);
        else
          v19 = v145 << 23;
        if ( (v145 & 0x100) != 0 )
          v147 = v2 + 8 * (unsigned __int8)v145;
        else
          v147 = v19 >> 23;
        if ( (v145 & 0x100) == 0 )
          v147 = (unsigned int)&v7[2 * v147];
        if ( *((_DWORD *)v146 + 1) == 3 && *(_DWORD *)(v147 + 4) == 3 )
        {
          result = pow(*v146, *(float *)v147);
          ++v6;
          v20[1] = 3;
          *(float *)v20 = result;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v146, (_DWORD *)v147, 10);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0x12u:
        v116 = v10 >> 23;
        v117 = &v7[2 * v116];
        if ( v117[1] == 3 )
        {
          v158 = v7[2 * v116];
          ++v6;
          v20[1] = 3;
          *v20 = v158 + 0x80000000;
        }
        else
        {
          *(_DWORD *)(a1 + 24) = v9;
          ++v6;
          result = Arith((_DWORD *)a1, (int)&v7[2 * v17], v117, &v7[2 * v116], 11);
          v7 = *(int **)(a1 + 12);
        }
        continue;
      case 0x13u:
        v113 = &v7[2 * (v10 >> 23)];
        v114 = v113[1];
        if ( v114 )
        {
          if ( v114 == 1 )
          {
            v161 = *v113;
            v20[1] = 1;
            *v20 = v161 == 0;
            goto LABEL_240;
          }
          v115 = 0;
        }
        else
        {
          v115 = 1;
        }
        *v20 = v115;
        v20[1] = 1;
LABEL_240:
        ++v6;
        continue;
      case 0x14u:
        v153 = v10 >> 23;
        v154 = &v7[2 * v153];
        v155 = v154[1];
        if ( v155 == 4 )
        {
          v6 = v9;
          result = (float)*(unsigned int *)(v7[2 * v153] + 12);
          v20[1] = 3;
          *(float *)v20 = result;
          continue;
        }
        if ( v155 == 5 )
        {
          result = (float)(int)luaH_getn(*v154);
          v20[1] = 3;
          *(float *)v20 = result;
          v6 = v9;
          continue;
        }
        *(_DWORD *)(a1 + 24) = v9;
        result = COERCE_FLOAT(call_binTM((_DWORD *)a1, &v7[2 * v153], luaO_nilobject_, (int)&v7[2 * v17], 12));
        if ( result == 0.0 )
          luaG_typeerror((_DWORD *)a1, (int)&v7[2 * v153], "get length of");
        goto LABEL_55;
      case 0x15u:
        v141 = (v10 >> 14) & 0x1FF;
        v142 = v10 >> 23;
        *(_DWORD *)(a1 + 24) = v9;
        result = COERCE_FLOAT(luaV_concat((_DWORD *)a1, v141 - v142 + 1, v141));
        if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
          result = COERCE_FLOAT(luaC_step(a1));
        v7 = *(int **)(a1 + 12);
        ++v6;
        v7[2 * v17] = v7[2 * v142];
        v7[v18 + 1] = v7[2 * v142 + 1];
        continue;
      case 0x16u:
        v6 = &v9[(v10 >> 14) - 0x1FFFF];
        continue;
      case 0x17u:
        v97 = v10 >> 23;
        v98 = ((v10 >> 23) & 0x100) == 0;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          result = v164;
          v97 &= ~0x100u;
        }
        v99 = v10 >> 14;
        if ( v98 )
          a2 = (int)&v7[2 * v97];
        else
          a2 = LODWORD(result) + 8 * v97;
        if ( (v99 & 0x100) != 0 )
          v19 = LODWORD(v164);
        else
          v8 = v99 << 23;
        if ( (v99 & 0x100) != 0 )
          v100 = v19 + 8 * (unsigned __int8)v99;
        else
          v100 = v8 >> 23;
        if ( (v99 & 0x100) == 0 )
          v100 = (unsigned int)&v7[2 * v100];
        *(_DWORD *)(a1 + 24) = v9;
        result = *(float *)(a2 + 4);
        v101 = false;
        if ( LODWORD(result) == *(_DWORD *)(v100 + 4) )
        {
          result = COERCE_FLOAT(luaV_equalval((_DWORD *)a1, (_DWORD *)a2, (_DWORD *)v100));
          if ( result != 0.0 )
            v101 = true;
        }
        if ( v101 == v17 )
          goto LABEL_201;
        goto LABEL_281;
      case 0x18u:
        v136 = v10 >> 23;
        v137 = ((v10 >> 23) & 0x100) == 0;
        *(_DWORD *)(a1 + 24) = v9;
        if ( ((v10 >> 23) & 0x100) != 0 )
        {
          v2 = LODWORD(v164);
          v136 &= ~0x100u;
        }
        v138 = v10 >> 14;
        if ( v137 )
          v139 = &v7[2 * v136];
        else
          v139 = (int *)(v2 + 8 * v136);
        if ( (v138 & 0x100) != 0 )
          result = v164;
        else
          v8 = v138 << 23;
        if ( (v138 & 0x100) != 0 )
          v140 = LODWORD(result) + 8 * (unsigned __int8)v138;
        else
          v140 = v8 >> 23;
        if ( (v138 & 0x100) == 0 )
          v140 = (unsigned int)&v7[2 * v140];
        result = COERCE_FLOAT(luaV_lessthan((_DWORD *)a1, v139, (int *)v140));
        if ( LODWORD(result) != v17 )
          goto LABEL_281;
LABEL_201:
        v9 += (*v9 >> 14) - 0x1FFFF;
        goto LABEL_281;
      case 0x19u:
        v107 = v10 >> 23;
        v108 = ((v10 >> 23) & 0x100) == 0;
        *(_DWORD *)(a1 + 24) = v9;
        if ( ((v10 >> 23) & 0x100) != 0 )
          a2 = LODWORD(v164);
        v109 = v10 >> 14;
        if ( v108 )
          v110 = (signed int)&v7[2 * v107];
        else
          v110 = v107 & 0xFFFFFEFF;
        if ( !v108 )
          v110 = a2 + 8 * v110;
        v111 = (v109 & 0x100) == 0;
        if ( (v109 & 0x100) != 0 )
          v8 = LODWORD(v164);
        else
          v109 <<= 23;
        if ( v111 )
          v109 >>= 23;
        else
          v7 = (int *)(v8 + 8 * (unsigned __int8)v109);
        if ( v111 )
          v7 += 2 * v109;
        v112 = *(_DWORD *)(v110 + 4);
        if ( v112 != v7[1] )
          goto LABEL_345;
        if ( v112 == 3 )
        {
          LODWORD(result) = *(float *)v110 <= *(float *)v7;
        }
        else if ( v112 == 4 )
        {
          LODWORD(result) = l_strcmp(*(_DWORD *)v110, *v7) <= 0;
        }
        else
        {
          result = COERCE_FLOAT(call_orderTM((_DWORD *)a1, (_DWORD *)v110, v7, 14));
          if ( result == NAN )
          {
            v162 = call_orderTM((_DWORD *)a1, v7, (_DWORD *)v110, 13);
            if ( v162 == -1 )
LABEL_345:
              luaG_ordererror((_DWORD *)a1, v110, (int)v7);
            LODWORD(result) = v162 == 0;
          }
        }
        if ( v17 == LODWORD(result) )
          v9 += (*v9 >> 14) - 0x1FFFF;
LABEL_281:
        v7 = *(int **)(a1 + 12);
        v6 = v9 + 1;
        continue;
      case 0x1Au:
        v105 = v20[1];
        if ( v105 )
          v106 = v105 == 1 && *v20 == 0;
        else
          v106 = 1;
        if ( v106 != ((v10 >> 14) & 0x1FF) )
          goto LABEL_212;
        goto LABEL_76;
      case 0x1Bu:
        v102 = &v7[2 * (v10 >> 23)];
        v103 = v102[1];
        if ( v103 )
          v104 = v103 == 1 && *v102 == 0;
        else
          v104 = 1;
        if ( v104 == ((v10 >> 14) & 0x1FF) )
          goto LABEL_76;
        *v20 = *v102;
        v20[1] = v102[1];
LABEL_212:
        v55 = (int)&v9[(*v9 >> 14) - 131070];
        goto LABEL_77;
      case 0x1Cu:
        v132 = (int *)(v10 >> 23);
        v131 = v10 >> 23 == 0;
        v133 = (v10 >> 14) & 0x1FF;
        if ( !v131 )
          v132 = &v20[2 * (_DWORD)v132];
        v134 = (char *)(v133 - 1);
        if ( !v131 )
          *(_DWORD *)(a1 + 8) = v132;
        *(_DWORD *)(a1 + 24) = v9;
        result = COERCE_FLOAT(luaD_precall(a1, (char *)&v7[2 * v17], v134));
        if ( result == 0.0 )
        {
          ++v166;
          v4 = *(_DWORD *)(a1 + 20);
          goto LABEL_2;
        }
        if ( LODWORD(result) != 1 )
          return result;
        if ( v134 == (char *)-1 )
          goto LABEL_55;
        v7 = *(int **)(a1 + 12);
        *(_DWORD *)(a1 + 8) = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8);
        goto LABEL_56;
      case 0x1Du:
        v118 = v10 >> 23;
        *(_DWORD *)(a1 + 24) = v9;
        if ( v118 )
          *(_DWORD *)(a1 + 8) = &v20[2 * v118];
        result = COERCE_FLOAT(luaD_precall(a1, (char *)&v7[2 * v17], (char *)0xFFFFFFFF));
        if ( result == 0.0 )
        {
          v119 = *(_DWORD **)(a1 + 20);
          v120 = *(v119 - 5);
          v121 = (int *)v119[1];
          if ( *(_DWORD *)(a1 + 88) )
            luaF_close(a1, *(v119 - 6));
          v122 = *(v119 - 5) + ((*v119 - (_DWORD)v121) & 0xFFFFFFF8);
          *(v119 - 6) = v122;
          v123 = *(_DWORD *)(a1 + 8);
          *(_DWORD *)(a1 + 12) = v122;
          if ( (unsigned int)v121 < v123 )
          {
            a2 = (int)(v121 + 2);
            v124 = 8;
            v125 = 0;
            while ( 1 )
            {
              v2 = *v121;
              v126 = v120 + v125;
              *(_DWORD *)(v120 + v125) = *v121;
              v127 = v121[1];
              v121 = (int *)a2;
              a2 += 8;
              *(_DWORD *)(v126 + 4) = v127;
              v125 = v124;
              if ( *(_DWORD *)(a1 + 8) <= (unsigned int)v121 )
                break;
              v124 += 8;
            }
          }
          else
          {
            v124 = 0;
          }
          v128 = v120 + v124;
          *(_DWORD *)(a1 + 8) = v128;
          v129 = *(v119 - 1);
          *(v119 - 4) = v128;
          v130 = *(_DWORD *)(a1 + 24);
          *(v119 - 1) = v129 + 1;
          *(v119 - 3) = v130;
          v4 = *(_DWORD *)(a1 + 20) - 24;
          *(_DWORD *)(a1 + 20) = v4;
          goto LABEL_2;
        }
        if ( LODWORD(result) != 1 )
          return result;
LABEL_55:
        v7 = *(int **)(a1 + 12);
LABEL_56:
        v6 = v9;
        break;
      case 0x1Eu:
        v135 = v10 >> 23;
        if ( v135 )
          *(_DWORD *)(a1 + 8) = &v20[2 * v135 - 2];
        if ( *(_DWORD *)(a1 + 88) )
          luaF_close(a1, (unsigned int)v7);
        *(_DWORD *)(a1 + 24) = v9;
        result = COERCE_FLOAT(luaD_poscall(a1, (char *)&v7[2 * v17]));
        v2 = --v166;
        if ( !v166 )
          return result;
        v4 = *(_DWORD *)(a1 + 20);
        if ( result != 0.0 )
          *(_DWORD *)(a1 + 8) = *(_DWORD *)(v4 + 8);
        goto LABEL_2;
      case 0x1Fu:
        v57 = *((float *)v20 + 4) + *(float *)&v7[2 * v17];
        v58 = v57;
        v59 = *((float *)v20 + 2);
        if ( *((float *)v20 + 4) <= 0.0 )
        {
          LODWORD(result) = v59 <= v57;
          v60 = 0;
          if ( result == 0.0 )
            goto LABEL_87;
        }
        else
        {
          LODWORD(result) = v57 <= v59;
          v60 = 0;
          if ( result == 0.0 )
            goto LABEL_87;
        }
        v60 = 1;
LABEL_87:
        if ( v60 )
        {
          *((float *)v20 + 6) = v58;
          *(float *)v20 = v58;
          v20[7] = 3;
          v20[1] = 3;
          v6 = &v9[(v10 >> 14) - 0x1FFFF];
        }
        else
        {
LABEL_34:
          v6 = v9;
        }
        continue;
      case 0x20u:
        *(_DWORD *)(a1 + 24) = v9;
        v56 = (float *)(v20 + 4);
        if ( v20[1] != 3 && !luaV_tonumber(&v7[2 * v17], &v7[2 * v17]) )
          luaG_runerror((_DWORD *)a1, (int)"'for' initial value must be a number");
        if ( v20[3] != 3 && !luaV_tonumber(v20 + 2, v20 + 2) )
          luaG_runerror((_DWORD *)a1, (int)"'for' limit must be a number");
        if ( v20[5] != 3 )
        {
          v56 = (float *)luaV_tonumber(v20 + 4, v20 + 4);
          if ( !v56 )
            luaG_runerror((_DWORD *)a1, (int)"'for' step must be a number");
        }
        result = *(float *)v20 - *v56;
        v20[1] = 3;
        *(float *)v20 = result;
        v6 = &v9[(v10 >> 14) - 0x1FFFF];
        continue;
      case 0x21u:
        v48 = v20[4];
        v49 = v20[2];
        v50 = v20[3];
        v20[11] = v20[5];
        v20[8] = v49;
        v20[9] = v50;
        v20[10] = v48;
        v51 = v20[1];
        v20[6] = v7[2 * v17];
        v20[7] = v51;
        *(_DWORD *)(a1 + 8) = v20 + 12;
        *(_DWORD *)(a1 + 24) = v9;
        result = COERCE_FLOAT(luaD_call(a1, (char *)v20 + 24, (char *)((v10 >> 14) & 0x1FF)));
        v7 = *(int **)(a1 + 12);
        v52 = v17 + 3;
        v53 = &v7[2 * v52];
        *(_DWORD *)(a1 + 8) = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8);
        v54 = v53[1];
        if ( v54 )
        {
          a2 = v7[2 * v52];
          *(v53 - 2) = a2;
          *(v53 - 1) = v54;
          v9 += (*v9 >> 14) - 0x1FFFF;
        }
LABEL_76:
        v55 = (int)(v9 + 1);
LABEL_77:
        v6 = (unsigned int *)v55;
        continue;
      case 0x22u:
        v39 = v10 >> 23;
        v62 = v10 >> 23 == 0;
        v40 = (v10 >> 14) & 0x1FF;
        if ( v62 )
        {
          v41 = (*(_DWORD *)(a1 + 8) - (int)v20) >> 3;
          *(_DWORD *)(a1 + 8) = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 8);
          v39 = v41 - 1;
        }
        if ( !v40 )
        {
          v42 = *v9;
          v9 = v6 + 2;
          v40 = v42;
        }
        if ( v20[1] != 5 )
          goto LABEL_34;
        v43 = *v20;
        v44 = v39 + 50 * (v40 - 1);
        if ( v44 > *(_DWORD *)(*v20 + 28) )
          result = COERCE_FLOAT(luaH_resizearray((_DWORD *)a1, *v20, v44));
        if ( v39 <= 0 )
          goto LABEL_34;
        v45 = &v20[2 * v39];
        v46 = v44 - v39;
        do
        {
          result = COERCE_FLOAT(luaH_setnum((_DWORD *)a1, v43, v44));
          v47 = --v44;
          *(_DWORD *)LODWORD(result) = *v45;
          *(_DWORD *)(LODWORD(result) + 4) = v45[1];
          if ( v45[1] > 3 && (*(_BYTE *)(*v45 + 5) & 3) != 0 && (*(_BYTE *)(v43 + 5) & 4) != 0 )
            result = COERCE_FLOAT(luaC_barrierback(a1, v43));
          v45 -= 2;
        }
        while ( v47 != v46 );
        v6 = v9;
        continue;
      case 0x23u:
        result = COERCE_FLOAT(luaF_close(a1, (unsigned int)&v7[2 * v17]));
        ++v6;
        continue;
      case 0x24u:
        v33 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v163 + 16) + 16) + 4 * (v10 >> 14));
        v165 = *(unsigned __int8 *)(v33 + 72);
        result = COERCE_FLOAT(luaF_newLclosure(a1, v165, *(_DWORD *)(v163 + 12)));
        v167 = LODWORD(result);
        *(_DWORD *)(LODWORD(result) + 16) = v33;
        if ( *(float *)&v165 == 0.0 )
          goto LABEL_54;
        v34 = result;
        v35 = v165 + 1;
        v36 = 1;
        do
        {
          while ( 1 )
          {
            v37 = v6[v36];
            if ( (v37 & 0x3F) != 4 )
              break;
            v2 = v163;
            ++v36;
            *(_DWORD *)(LODWORD(v34) + 20) = *(_DWORD *)(v163 + 4 * ((v37 >> 23) + 4) + 4);
            LODWORD(v34) += 4;
            if ( v36 == v35 )
              goto LABEL_53;
          }
          ++v36;
          *(_DWORD *)(LODWORD(v34) + 20) = luaF_findupval(a1, (unsigned int)&v7[2 * (v37 >> 23)]);
          LODWORD(v34) += 4;
        }
        while ( v36 != v35 );
LABEL_53:
        result = *(float *)&v165;
        v9 += v165;
LABEL_54:
        v20[1] = 6;
        a2 = v167;
        *v20 = v167;
        v38 = *(_DWORD *)(a1 + 16);
        *(_DWORD *)(a1 + 24) = v9;
        if ( *(_DWORD *)(v38 + 68) < *(_DWORD *)(v38 + 64) )
          goto LABEL_55;
LABEL_148:
        result = COERCE_FLOAT(luaC_step(a1));
        v7 = *(int **)(a1 + 12);
        goto LABEL_56;
      case 0x25u:
        v26 = *(int **)(a1 + 20);
        a2 = *v26;
        v27 = (v10 >> 23) - 1;
        v28 = ~*(unsigned __int8 *)(*(_DWORD *)(v163 + 16) + 73) + ((*v26 - v26[1]) >> 3);
        if ( v27 == -1 )
        {
          a2 = *(_DWORD *)(a1 + 28);
          v159 = *(_DWORD *)(a1 + 8);
          v160 = 2 * v28;
          *(_DWORD *)(a1 + 24) = v9;
          if ( a2 - v159 <= 8 * v28 )
          {
            result = COERCE_FLOAT(luaD_growstack((_DWORD *)a1, v28));
            v160 = 2 * v28;
          }
          v7 = *(int **)(a1 + 12);
          v27 = v28;
          v20 = &v7[v18];
          *(_DWORD *)(a1 + 8) = &v7[v18 + v160];
        }
        if ( v27 <= 0 )
          goto LABEL_34;
        v29 = -8 * v28;
        a2 = 0;
        v30 = 0;
        v31 = v9;
        do
        {
          v32 = v28 <= v30;
          if ( v28 > v30 )
          {
            v2 = *v26;
            result = *(float *)&v20;
          }
          ++v30;
          if ( v32 )
          {
            LODWORD(result) = (char *)v20 + a2;
          }
          else
          {
            v9 = *(unsigned int **)(v2 + v29);
            v2 += v29;
          }
          if ( v32 )
          {
            v2 = 0;
          }
          else
          {
            *(_DWORD *)(LODWORD(result) + a2) = v9;
            LODWORD(result) += a2;
            v2 = *(_DWORD *)(v2 + 4);
          }
          *(_DWORD *)(LODWORD(result) + 4) = v2;
          v29 += 8;
          a2 += 8;
        }
        while ( v30 != v27 );
        v6 = v31;
        continue;
      default:
        goto LABEL_34;
    }
  }
  v12 = v8 & 4;
LABEL_7:
  v13 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 24) = v9;
  if ( (v8 & 8) != 0 && !v11 )
  {
    *(_DWORD *)(a1 + 64) = *(_DWORD *)(a1 + 60);
    result = COERCE_FLOAT(luaD_callhook(a1, 3, -1));
  }
  if ( v12 )
  {
    v14 = *(_DWORD *)(**(_DWORD **)(*(_DWORD *)(a1 + 20) + 4) + 16);
    result = *(float *)(v14 + 12);
    v15 = *(_DWORD *)(v14 + 20);
    a2 = (((int)v9 - LODWORD(result)) >> 2) - 1;
    if ( v15 )
      v8 = *(_DWORD *)(v15 + 4 * a2);
    else
      v8 = 0;
    v16 = ((int)v9 - LODWORD(result)) >> 2 != 1;
    if ( ((int)v9 - LODWORD(result)) >> 2 != 1 )
      v16 = (unsigned int)v9 > v13;
    if ( !v16 )
      goto LABEL_21;
    if ( v15 )
    {
      LODWORD(result) = ((int)(v13 - LODWORD(result)) >> 2) - 1;
      v15 = *(_DWORD *)(v15 + 4 * LODWORD(result));
    }
    if ( v15 != v8 )
LABEL_21:
      result = COERCE_FLOAT(luaD_callhook(a1, 2, v8));
  }
  if ( *(_BYTE *)(a1 + 6) != 1 )
  {
    v7 = *(int **)(a1 + 12);
    goto LABEL_24;
  }
  *(_DWORD *)(a1 + 24) = v6;
  return result;
}


// ===== 85e440 luaZ_fill =====
int __fastcall luaZ_fill(int a1)
{
  unsigned __int8 *v2; // r0
  int result; // r0
  unsigned __int8 *v4; // r3
  int v5; // [sp+4h] [bp-4h] BYREF

  v2 = (unsigned __int8 *)(*(int (__fastcall **)(_DWORD, _DWORD, int *))(a1 + 8))(
                            *(_DWORD *)(a1 + 16),
                            *(_DWORD *)(a1 + 12),
                            &v5);
  if ( !v2 || !v5 )
    return -1;
  *(_DWORD *)a1 = v5 - 1;
  *(_DWORD *)(a1 + 4) = v2;
  v4 = v2 + 1;
  result = *v2;
  *(_DWORD *)(a1 + 4) = v4;
  return result;
}


// ===== 85e49c luaZ_lookahead =====
int __fastcall luaZ_lookahead(_DWORD *a1)
{
  unsigned __int8 *v2; // r3
  int result; // r0

  if ( *a1 )
  {
    v2 = (unsigned __int8 *)a1[1];
    return *v2;
  }
  result = luaZ_fill((int)a1);
  if ( result != -1 )
  {
    v2 = (unsigned __int8 *)(a1[1] - 1);
    ++*a1;
    a1[1] = v2;
    return *v2;
  }
  return result;
}


// ===== 85e4dc luaZ_init =====
int __fastcall luaZ_init(int result, _DWORD *a2, int a3, int a4)
{
  a2[1] = 0;
  a2[4] = result;
  a2[2] = a3;
  a2[3] = a4;
  *a2 = 0;
  return result;
}


// ===== 85e4f8 luaZ_openspace =====
int __fastcall luaZ_openspace(_DWORD *a1, int *a2, unsigned int a3)
{
  unsigned int v3; // r3
  int v4; // r4
  int result; // r0

  v3 = a2[2];
  v4 = a3;
  if ( v3 >= a3 )
    return *a2;
  if ( a3 > 0x1F )
  {
    if ( a3 + 1 > 0xFFFFFFFD )
      luaM_toobig(a1);
  }
  else
  {
    v4 = 32;
  }
  result = luaM_realloc_((int)a1, *a2, v3, v4);
  a2[2] = v4;
  *a2 = result;
  return result;
}


// ===== 85e564 luaZ_read =====
size_t __fastcall luaZ_read(int a1, char *a2, size_t a3)
{
  size_t v3; // r6
  size_t v6; // r5
  size_t v7; // r3

  v3 = a3;
  if ( a3 )
  {
    while ( luaZ_lookahead((_DWORD *)a1) != -1 )
    {
      v6 = *(_DWORD *)a1;
      if ( v3 < *(_DWORD *)a1 )
        v6 = v3;
      memcpy(a2, *(const void **)(a1 + 4), v6);
      v3 -= v6;
      v7 = *(_DWORD *)(a1 + 4) + v6;
      *(_DWORD *)a1 -= v6;
      *(_DWORD *)(a1 + 4) = v7;
      if ( !v3 )
        break;
      a2 += v6;
    }
  }
  return v3;
}


// ===== 85e5cc luaK_getlabel =====
int __fastcall luaK_getlabel(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 28) = v1;
  return v1;
}


// ===== 85e5dc luaK_setoneret =====
int __fastcall luaK_setoneret(int result, _DWORD *a2)
{
  int v2; // r2
  int v3; // r3

  if ( *a2 == 13 )
  {
    *a2 = 12;
    a2[1] = (unsigned __int8)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 12) + 4 * a2[1]) >> 6);
  }
  else if ( *a2 == 14 )
  {
    v2 = a2[1];
    v3 = *(_DWORD *)(*(_DWORD *)result + 12);
    result = *(_DWORD *)(v3 + 4 * v2) & 0x7FFFFF | 0x1000000;
    *(_DWORD *)(v3 + 4 * v2) = result;
    *a2 = 11;
  }
  return result;
}


// ===== 85e640 luaK_fixline =====
_DWORD *__fastcall luaK_fixline(_DWORD *result, int a2)
{
  *(_DWORD *)(*(_DWORD *)(*result + 20) + 4 * (result[6] - 1)) = a2;
  return result;
}


// ===== 85e658 fixjump =====
_DWORD *__fastcall fixjump(_DWORD *result, int a2, int a3)
{
  int v3; // r6

  v3 = a3 + ~a2;
  if ( (int)abs32(v3) >= 0x20000 )
    luaX_syntaxerror(result[3], "control structure too long");
  *(_DWORD *)(*(_DWORD *)(*result + 12) + 4 * a2) = *(_DWORD *)(*(_DWORD *)(*result + 12) + 4 * a2) & 0x3FFF
                                                  | ((v3 + 0x1FFFF) << 14);
  return result;
}


// ===== 85e6b4 patchlistaux =====
_DWORD *__fastcall patchlistaux(_DWORD *result, int a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r4
  int v8; // r9
  int v9; // r0
  unsigned int v10; // r3
  unsigned int *v11; // r0
  int v12; // r5
  unsigned int v13; // r12
  unsigned int *v14; // lr
  int v15; // r2
  unsigned int v16; // r3

  v5 = result;
  if ( a2 != -1 )
  {
    v8 = ((_WORD)a4 << 6) & 0x3FC0;
    while ( 1 )
    {
      while ( 1 )
      {
        v9 = *(_DWORD *)(*v5 + 12);
        v10 = *(_DWORD *)(v9 + 4 * a2);
        v11 = (unsigned int *)(v9 + 4 * a2);
        v12 = (v10 >> 14) - 0x1FFFF;
        if ( v10 >> 14 != 131070 )
          v12 += a2 + 1;
        if ( a2 <= 0 || (v13 = *(v11 - 1), v14 = v11 - 1, v15 = v13 & 0x3F, (luaP_opmodes[v15] & 0x80u) == 0) )
        {
          v13 = v10;
          v14 = v11;
          v15 = v10 & 0x3F;
        }
        if ( v15 == 27 )
          break;
        result = fixjump(v5, a2, a5);
        a2 = v12;
        if ( v12 == -1 )
          return result;
      }
      if ( a4 == 255 )
        break;
      v16 = v13 >> 23;
      if ( a4 == v13 >> 23 )
        goto LABEL_18;
      *v14 = v13 & 0xFFFFC03F | v8;
LABEL_14:
      result = fixjump(v5, a2, a3);
      a2 = v12;
      if ( v12 == -1 )
        return result;
    }
    v16 = v13 >> 23;
LABEL_18:
    *v14 = v13 & 0x7FC000 | 0x1A | (v16 << 6);
    goto LABEL_14;
  }
  return result;
}


// ===== 85e7bc luaK_code =====
int __fastcall luaK_code(int a1, int a2, int a3)
{
  int *v3; // r5
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r0
  int result; // r0

  v3 = *(int **)a1;
  patchlistaux((_DWORD *)a1, *(_DWORD *)(a1 + 32), *(_DWORD *)(a1 + 24), 255, *(_DWORD *)(a1 + 24));
  *(_DWORD *)(a1 + 32) = -1;
  v7 = *(_DWORD *)(a1 + 24);
  if ( v7 >= v3[11] )
  {
    v8 = luaM_growaux_(*(_DWORD **)(a1 + 16), v3[3], v3 + 11, 4u, 2147483645, (int)"code size overflow");
    v3[3] = v8;
    v7 = *(_DWORD *)(a1 + 24);
  }
  else
  {
    v8 = v3[3];
  }
  *(_DWORD *)(v8 + 4 * v7) = a2;
  v9 = *(_DWORD *)(a1 + 24);
  if ( v9 >= v3[12] )
  {
    v10 = luaM_growaux_(*(_DWORD **)(a1 + 16), v3[5], v3 + 12, 4u, 2147483645, (int)"code size overflow");
    v3[5] = v10;
    v9 = *(_DWORD *)(a1 + 24);
  }
  else
  {
    v10 = v3[5];
  }
  *(_DWORD *)(v10 + 4 * v9) = a3;
  result = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 24) = result + 1;
  return result;
}


// ===== 85e8a8 luaK_codeABx =====
int __fastcall luaK_codeABx(int a1, int a2, int a3, int a4)
{
  return luaK_code(a1, (a4 << 14) | (a3 << 6) | a2, *(_DWORD *)(*(_DWORD *)(a1 + 12) + 8));
}


// ===== 85e8c0 luaK_codeABC =====
int __fastcall luaK_codeABC(int a1, int a2, int a3, int a4, int a5)
{
  return luaK_code(a1, a2 | (a3 << 6) | (a4 << 23) | (a5 << 14), *(_DWORD *)(*(_DWORD *)(a1 + 12) + 8));
}


// ===== 85e8dc luaK_dischargevars =====
int __fastcall luaK_dischargevars(int result, _DWORD *a2)
{
  int v3; // r12
  int v4; // r3
  int v5; // r1
  int v6; // r3

  switch ( *a2 )
  {
    case 6:
      *a2 = 12;
      break;
    case 7:
      v3 = 0;
      v4 = a2[1];
      v5 = 4;
      goto LABEL_3;
    case 8:
      result = luaK_codeABx(result, 5, 0, a2[1]);
      *a2 = 11;
      a2[1] = result;
      break;
    case 9:
      v6 = a2[2];
      if ( (v6 & 0x100) == 0 && v6 >= *(unsigned __int8 *)(result + 50) )
        --*(_DWORD *)(result + 36);
      v4 = a2[1];
      if ( (v4 & 0x100) == 0 && v4 >= *(unsigned __int8 *)(result + 50) )
      {
        --*(_DWORD *)(result + 36);
        v4 = a2[1];
      }
      v3 = a2[2];
      v5 = 6;
LABEL_3:
      result = luaK_codeABC(result, v5, 0, v4, v3);
      *a2 = 11;
      a2[1] = result;
      break;
    case 0xD:
    case 0xE:
      result = luaK_setoneret(result, a2);
      break;
    default:
      return result;
  }
  return result;
}


// ===== 85e9d8 luaK_ret =====
int __fastcall luaK_ret(int a1, int a2, int a3)
{
  return luaK_codeABC(a1, 30, a2, a3 + 1, 0);
}


// ===== 85ea00 luaK_nil =====
int __fastcall luaK_nil(int result, int a2, int a3)
{
  int v3; // r12
  int v4; // r12
  int v5; // r4
  unsigned int v6; // r3
  int v7; // r2

  v3 = *(_DWORD *)(result + 24);
  if ( v3 <= *(_DWORD *)(result + 28) )
    return luaK_codeABC(result, 3, a2, a2 - 1 + a3, 0);
  if ( !v3 )
  {
    if ( *(unsigned __int8 *)(result + 50) <= a2 )
      return result;
    return luaK_codeABC(result, 3, a2, a2 - 1 + a3, 0);
  }
  v4 = v3 - 1;
  v5 = *(_DWORD *)(*(_DWORD *)result + 12);
  v6 = *(_DWORD *)(v5 + 4 * v4);
  if ( (v6 & 0x3F) != 3 || a2 < (unsigned __int8)(v6 >> 6) || a2 > (int)((v6 >> 23) + 1) )
    return luaK_codeABC(result, 3, a2, a2 - 1 + a3, 0);
  v7 = a2 - 1 + a3;
  if ( (int)(v6 >> 23) < v7 )
    *(_DWORD *)(v5 + 4 * v4) = v6 & 0x7FFFFF | (v7 << 23);
  return result;
}


// ===== 85eaac luaK_setlist =====
int __fastcall luaK_setlist(int a1, int a2, int a3, int a4)
{
  int v4; // r6
  int result; // r0

  v4 = (a3 - 1) / 50 + 1;
  if ( a4 == -1 )
    a4 = 0;
  if ( v4 < 512 )
  {
    result = luaK_codeABC(a1, 34, a2, a4, v4);
  }
  else
  {
    luaK_codeABC(a1, 34, a2, a4, 0);
    result = luaK_code(a1, v4, *(_DWORD *)(*(_DWORD *)(a1 + 12) + 8));
  }
  *(_DWORD *)(a1 + 36) = a2 + 1;
  return result;
}


// ===== 85eb34 luaK_concat =====
_DWORD *__fastcall luaK_concat(_DWORD *result, int *a2, int a3)
{
  int v3; // r3
  int v4; // r4
  int v5; // r12
  int v6; // r1

  if ( a3 != -1 )
  {
    v3 = *a2;
    if ( *a2 == -1 )
    {
      *a2 = a3;
    }
    else
    {
      v4 = *(_DWORD *)(*result + 12);
      v5 = (*(_DWORD *)(v4 + 4 * v3) >> 14) - 131070 + v3;
      if ( *(_DWORD *)(v4 + 4 * v3) >> 14 != 131070 )
      {
        do
        {
          if ( v5 == -1 )
            break;
          v3 = v5;
          v6 = (*(_DWORD *)(v4 + 4 * v5) >> 14) - 0x1FFFF;
          v5 += (*(_DWORD *)(v4 + 4 * v5) >> 14) - 131070;
        }
        while ( v6 != -1 );
      }
      return fixjump(result, v3, a3);
    }
  }
  return result;
}


// ===== 85ebb8 luaK_patchtohere =====
_DWORD *__fastcall luaK_patchtohere(_DWORD *a1, int a2)
{
  a1[7] = a1[6];
  return luaK_concat(a1, a1 + 8, a2);
}


// ===== 85ebcc luaK_patchlist =====
_DWORD *__fastcall luaK_patchlist(_DWORD *a1, int a2, int a3)
{
  if ( a1[6] == a3 )
    return luaK_patchtohere(a1, a2);
  else
    return patchlistaux(a1, a2, a3, 255, a3);
}


// ===== 85ec00 luaK_jump =====
int __fastcall luaK_jump(_DWORD *a1)
{
  int v1; // r5
  int v4; // [sp+4h] [bp-8h] BYREF

  v1 = a1[8];
  a1[8] = -1;
  v4 = luaK_codeABx((int)a1, 22, 0, 131070);
  luaK_concat(a1, &v4, v1);
  return v4;
}


// ===== 85ec4c condjump =====
int __fastcall condjump(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  luaK_codeABC((int)a1, a2, a3, a4, a5);
  return luaK_jump(a1);
}


// ===== 85ec74 luaK_checkstack =====
_DWORD *__fastcall luaK_checkstack(_DWORD *result, int a2)
{
  int v2; // r5

  v2 = a2 + result[9];
  if ( v2 > *(unsigned __int8 *)(*result + 75) )
  {
    if ( v2 > 249 )
      luaX_syntaxerror(result[3], "function or expression too complex");
    *(_BYTE *)(*result + 75) = v2;
  }
  return result;
}


// ===== 85ecc0 luaK_reserveregs =====
_DWORD *__fastcall luaK_reserveregs(_DWORD *a1, int a2)
{
  _DWORD *result; // r0

  result = luaK_checkstack(a1, a2);
  a1[9] += a2;
  return result;
}


// ===== 85ece0 luaK_setreturns =====
int __fastcall luaK_setreturns(int result, int *a2, int a3)
{
  int v4; // r1
  int v5; // r1
  int v6; // r3

  v4 = *a2;
  if ( v4 == 13 )
  {
    v5 = a2[1];
    v6 = *(_DWORD *)(*(_DWORD *)result + 12);
    result = ((a3 + 1) << 14) & 0x7FFFC0;
    *(_DWORD *)(v6 + 4 * v5) = result | *(_DWORD *)(v6 + 4 * v5) & 0xFF803FFF;
  }
  else if ( v4 == 14 )
  {
    *(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 12) + 4 * a2[1]) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 12)
                                                                             + 4 * a2[1])
                                                                 & 0x7FFFFF
                                                                 | ((a3 + 1) << 23);
    *(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 12) + 4 * a2[1]) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 12)
                                                                             + 4 * a2[1])
                                                                 & 0xFFFFC03F
                                                                 | (*(_WORD *)(result + 36) << 6) & 0x3FC0;
    return (int)luaK_reserveregs((_DWORD *)result, 1);
  }
  return result;
}


// ===== 85ed90 addk =====
int __fastcall addk(int *a1, int a2, int *a3)
{
  _DWORD *v3; // r8
  float *v6; // r0
  int v7; // r5
  float *v8; // r10
  int v9; // r4
  float v10; // r0
  int v11; // r3
  int v12; // r0
  int v13; // r3
  int *v14; // r2
  int result; // r0

  v3 = (_DWORD *)a1[4];
  v6 = (float *)luaH_set(v3, a1[1], a2);
  v7 = *a1;
  v8 = v6;
  v9 = *(_DWORD *)(*a1 + 40);
  if ( *((_DWORD *)v6 + 1) == 3 )
    return (int)*v6;
  v10 = (float)a1[10];
  *((_DWORD *)v8 + 1) = 3;
  *v8 = v10;
  v11 = *(_DWORD *)(v7 + 40);
  if ( a1[10] >= v11 )
  {
    v12 = luaM_growaux_(v3, *(_DWORD *)(v7 + 8), (int *)(v7 + 40), 8u, 0x3FFFF, (int)"constant table overflow");
    v11 = *(_DWORD *)(v7 + 40);
    *(_DWORD *)(v7 + 8) = v12;
  }
  else
  {
    v12 = *(_DWORD *)(v7 + 8);
  }
  if ( v9 < v11 )
  {
    v13 = 8 * v9;
    while ( 1 )
    {
      *(_DWORD *)(v12 + v13 + 4) = 0;
      ++v9;
      v13 += 8;
      if ( *(_DWORD *)(v7 + 40) <= v9 )
        break;
      v12 = *(_DWORD *)(v7 + 8);
    }
    v12 = *(_DWORD *)(v7 + 8);
  }
  v14 = (int *)(v12 + 8 * a1[10]);
  *v14 = *a3;
  v14[1] = a3[1];
  if ( a3[1] > 3 && (*(_BYTE *)(*a3 + 5) & 3) != 0 && (*(_BYTE *)(v7 + 5) & 4) != 0 )
    luaC_barrierf((int)v3, v7, *a3);
  result = a1[10];
  a1[10] = result + 1;
  return result;
}


// ===== 85eed4 luaK_numberK =====
int __fastcall luaK_numberK(int *a1, int a2)
{
  int v3[3]; // [sp+0h] [bp-Ch] BYREF

  v3[0] = a2;
  v3[1] = 3;
  return addk(a1, (int)v3, v3);
}


// ===== 85eefc discharge2reg =====
int __fastcall discharge2reg(int *a1, _DWORD *a2, int a3)
{
  int result; // r0
  int v7; // r3
  int v8; // r0

  result = luaK_dischargevars((int)a1, a2);
  switch ( *a2 )
  {
    case 1:
      result = luaK_nil((int)a1, a3, 1);
      goto LABEL_4;
    case 2:
    case 3:
      result = luaK_codeABC((int)a1, 2, a3, *a2 == 2, 0);
      goto LABEL_4;
    case 4:
      result = luaK_codeABx((int)a1, 1, a3, a2[1]);
      goto LABEL_4;
    case 5:
      v8 = luaK_numberK(a1, a2[1]);
      result = luaK_codeABx((int)a1, 1, a3, v8);
      goto LABEL_4;
    case 0xB:
      result = ((_WORD)a3 << 6) & 0x3FC0;
      *(_DWORD *)(*(_DWORD *)(*a1 + 12) + 4 * a2[1]) = result
                                                     | *(_DWORD *)(*(_DWORD *)(*a1 + 12) + 4 * a2[1]) & 0xFFFFC03F;
      goto LABEL_4;
    case 0xC:
      v7 = a2[1];
      if ( v7 != a3 )
        result = luaK_codeABC((int)a1, 0, a3, v7, 0);
LABEL_4:
      *a2 = 12;
      a2[1] = a3;
      break;
    default:
      return result;
  }
  return result;
}


// ===== 85f02c discharge2anyreg =====
int *__fastcall discharge2anyreg(int *result, _DWORD *a2)
{
  int *v3; // r5

  v3 = result;
  if ( *a2 != 12 )
  {
    luaK_reserveregs(result, 1);
    return (int *)discharge2reg(v3, a2, v3[9] - 1);
  }
  return result;
}


// ===== 85f068 jumponcond =====
int __fastcall jumponcond(int a1, _DWORD *a2, int a3)
{
  int v6; // r3
  unsigned int v8; // r2

  if ( *a2 != 11 || (v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)a1 + 12) + 4 * a2[1]), (v8 & 0x3F) != 0x13) )
  {
    discharge2anyreg((int *)a1, a2);
    if ( *a2 == 12 )
    {
      v6 = a2[1];
      if ( (v6 & 0x100) != 0 || v6 < *(unsigned __int8 *)(a1 + 50) )
        return condjump((_DWORD *)a1, 27, 255, v6, a3);
      --*(_DWORD *)(a1 + 36);
    }
    v6 = a2[1];
    return condjump((_DWORD *)a1, 27, 255, v6, a3);
  }
  --*(_DWORD *)(a1 + 24);
  return condjump((_DWORD *)a1, 26, v8 >> 23, 0, a3 == 0);
}


// ===== 85f130 luaK_goiftrue =====
_DWORD *__fastcall luaK_goiftrue(_DWORD *a1, _DWORD *a2)
{
  int v4; // r2
  int v5; // r12
  int v6; // r1
  unsigned int v7; // r3
  unsigned int *v8; // lr
  int v9; // r2
  int v10; // r2
  _DWORD *result; // r0

  luaK_dischargevars((int)a1, a2);
  switch ( *a2 )
  {
    case 2:
    case 4:
    case 5:
      v10 = -1;
      break;
    case 3:
      v10 = luaK_jump(a1);
      break;
    case 0xA:
      v4 = a2[1];
      v5 = *(_DWORD *)(*a1 + 12);
      v6 = v5 + 4 * v4;
      if ( v4 <= 0 || (v7 = *(_DWORD *)(v6 - 4), v8 = (unsigned int *)(v6 - 4), (luaP_opmodes[v7 & 0x3F] & 0x80u) == 0) )
      {
        v7 = *(_DWORD *)(v5 + 4 * v4);
        v8 = (unsigned int *)(v5 + 4 * v4);
      }
      if ( (unsigned __int8)(v7 >> 6) )
        v9 = 0;
      else
        v9 = 64;
      *v8 = v9 | v7 & 0xFFFFC03F;
      v10 = a2[1];
      break;
    default:
      v10 = jumponcond((int)a1, a2, 0);
      break;
  }
  luaK_concat(a1, a2 + 4, v10);
  result = luaK_patchtohere(a1, a2[3]);
  a2[3] = -1;
  return result;
}


// ===== 85f230 exp2reg =====
_DWORD *__fastcall exp2reg(int *a1, _DWORD *a2, int a3)
{
  _DWORD *result; // r0
  int v7; // r3
  int v8; // r2
  int v9; // r12
  int v10; // r1
  int v11; // r0
  int v12; // r3
  int v13; // r8
  int v14; // r10
  int v15; // r7
  int v16; // r9

  result = (_DWORD *)discharge2reg(a1, a2, a3);
  if ( *a2 == 10 )
    result = luaK_concat(a1, a2 + 3, a2[1]);
  v7 = a2[3];
  v8 = a2[4];
  if ( v7 != v8 )
  {
    while ( v7 != -1 )
    {
      v9 = *(_DWORD *)(*a1 + 12);
      if ( v7 > 0 )
      {
        v10 = *(_DWORD *)(v9 + 4 * v7 - 4) & 0x3F;
        if ( (luaP_opmodes[v10] & 0x80u) == 0 )
          v10 = *(_DWORD *)(v9 + 4 * v7) & 0x3F;
      }
      else
      {
        v10 = *(_DWORD *)(v9 + 4 * v7) & 0x3F;
      }
      if ( v10 != 27 )
      {
LABEL_23:
        if ( *a2 == 10 )
          v16 = -1;
        else
          v16 = luaK_jump(a1);
        a1[7] = a1[6];
        v14 = luaK_codeABC((int)a1, 2, a3, 0, 1);
        a1[7] = a1[6];
        v13 = luaK_codeABC((int)a1, 2, a3, 1, 0);
        luaK_patchtohere(a1, v16);
        goto LABEL_19;
      }
      if ( *(_DWORD *)(v9 + 4 * v7) >> 14 == 131070 )
        break;
      v7 += (*(_DWORD *)(v9 + 4 * v7) >> 14) - 131070;
    }
    while ( v8 != -1 )
    {
      v11 = *(_DWORD *)(*a1 + 12);
      if ( v8 > 0 )
      {
        v12 = *(_DWORD *)(v11 + 4 * v8 - 4) & 0x3F;
        if ( (luaP_opmodes[v12] & 0x80u) == 0 )
          v12 = *(_DWORD *)(v11 + 4 * v8) & 0x3F;
      }
      else
      {
        v12 = *(_DWORD *)(v11 + 4 * v8) & 0x3F;
      }
      if ( v12 != 27 )
        goto LABEL_23;
      if ( *(_DWORD *)(v11 + 4 * v8) >> 14 == 131070 )
        break;
      v8 += (*(_DWORD *)(v11 + 4 * v8) >> 14) - 131070;
    }
    v13 = -1;
    v14 = -1;
LABEL_19:
    v15 = a1[6];
    a1[7] = v15;
    patchlistaux(a1, a2[4], v15, a3, v14);
    result = patchlistaux(a1, a2[3], v15, a3, v13);
  }
  *a2 = 12;
  a2[4] = -1;
  a2[1] = a3;
  a2[3] = -1;
  return result;
}


// ===== 85f444 luaK_exp2nextreg =====
_DWORD *__fastcall luaK_exp2nextreg(int a1, _DWORD *a2)
{
  int v5; // r3

  luaK_dischargevars(a1, a2);
  if ( *a2 == 12 )
  {
    v5 = a2[1];
    if ( (v5 & 0x100) == 0 && v5 >= *(unsigned __int8 *)(a1 + 50) )
      --*(_DWORD *)(a1 + 36);
  }
  luaK_reserveregs((_DWORD *)a1, 1);
  return exp2reg((int *)a1, a2, *(_DWORD *)(a1 + 36) - 1);
}


// ===== 85f4a8 luaK_exp2anyreg =====
int __fastcall luaK_exp2anyreg(int a1, _DWORD *a2)
{
  int v5; // r2

  luaK_dischargevars(a1, a2);
  if ( *a2 != 12 )
    goto LABEL_2;
  if ( a2[3] != a2[4] )
  {
    v5 = a2[1];
    if ( v5 < *(unsigned __int8 *)(a1 + 50) )
    {
LABEL_2:
      luaK_exp2nextreg(a1, a2);
      return a2[1];
    }
    exp2reg((int *)a1, a2, v5);
  }
  return a2[1];
}


// ===== 85f50c luaK_exp2val =====
int __fastcall luaK_exp2val(int a1, _DWORD *a2)
{
  if ( a2[3] == a2[4] )
    return luaK_dischargevars(a1, a2);
  else
    return luaK_exp2anyreg(a1, a2);
}


// ===== 85f524 luaK_exp2RK =====
int __fastcall luaK_exp2RK(int *a1, int *a2)
{
  int v4; // r3
  int v5; // r0
  int result; // r0
  int v7; // r0
  int v8[2]; // [sp+0h] [bp-1Ch] BYREF
  int v9[2]; // [sp+8h] [bp-14h] BYREF
  _DWORD v10[3]; // [sp+10h] [bp-Ch] BYREF

  luaK_exp2val((int)a1, a2);
  v4 = *a2;
  switch ( *a2 )
  {
    case 1:
    case 2:
    case 3:
    case 5:
      if ( a1[10] > 255 )
        goto LABEL_4;
      if ( v4 == 1 )
      {
        v10[0] = a1[1];
        v9[1] = 0;
        v10[1] = 5;
        v7 = addk(a1, (int)v10, v9);
      }
      else if ( v4 == 5 )
      {
        v7 = luaK_numberK(a1, a2[1]);
      }
      else
      {
        v8[0] = v4 == 2;
        v8[1] = 1;
        v7 = addk(a1, (int)v8, v8);
      }
      a2[1] = v7;
      *a2 = 4;
      result = v7 | 0x100;
      break;
    case 4:
      v5 = a2[1];
      if ( v5 > 255 )
        goto LABEL_4;
      result = v5 | 0x100;
      break;
    default:
LABEL_4:
      result = luaK_exp2anyreg((int)a1, a2);
      break;
  }
  return result;
}


// ===== 85f618 codearith =====
int *__fastcall codearith(int *result, int a2, int *a3, int *a4)
{
  int v5; // r6
  bool v8; // zf
  int v9; // r8
  int v10; // r3
  int v11; // r2
  float v12; // r9
  float v13; // r8
  int v14; // r2
  int v15; // r2
  float v16; // r8
  float v17; // r0
  float v18; // r0

  v5 = (int)result;
  if ( *a3 != 5 || a3[3] != -1 || a3[4] != -1 || *a4 != 5 || a4[3] != -1 || a4[4] != -1 )
  {
LABEL_2:
    v8 = a2 == 20;
    if ( a2 != 20 )
      v8 = a2 == 18;
    if ( v8 )
      v9 = 0;
    else
      v9 = luaK_exp2RK(result, a4);
    v10 = luaK_exp2RK((int *)v5, a3);
    if ( v9 < v10 )
    {
      if ( *a3 == 12 )
      {
        v14 = a3[1];
        if ( (v14 & 0x100) == 0 && v14 >= *(unsigned __int8 *)(v5 + 50) )
          --*(_DWORD *)(v5 + 36);
      }
      if ( *a4 != 12 )
        goto LABEL_10;
      v11 = a4[1];
      if ( (v11 & 0x100) != 0 )
        goto LABEL_10;
    }
    else
    {
      if ( *a4 == 12 )
      {
        v15 = a4[1];
        if ( (v15 & 0x100) == 0 && v15 >= *(unsigned __int8 *)(v5 + 50) )
          --*(_DWORD *)(v5 + 36);
      }
      if ( *a3 != 12 )
        goto LABEL_10;
      v11 = a3[1];
      if ( (v11 & 0x100) != 0 )
        goto LABEL_10;
    }
    if ( v11 >= *(unsigned __int8 *)(v5 + 50) )
      --*(_DWORD *)(v5 + 36);
LABEL_10:
    result = (int *)luaK_codeABC(v5, a2, 0, v10, v9);
    *a3 = 11;
    a3[1] = (int)result;
    return result;
  }
  v12 = *((float *)a3 + 1);
  v13 = *((float *)a4 + 1);
  switch ( a2 )
  {
    case 12:
      v16 = v12 + v13;
      goto LABEL_35;
    case 13:
      v16 = v12 - v13;
      goto LABEL_35;
    case 14:
      v16 = v12 * v13;
      goto LABEL_35;
    case 15:
      if ( v13 == 0.0 )
        goto LABEL_2;
      v16 = v12 / v13;
      goto LABEL_35;
    case 16:
      if ( v13 == 0.0 )
        goto LABEL_2;
      v18 = v12 - floor((float)(v12 / v13)) * v13;
      v16 = v18;
      goto LABEL_35;
    case 17:
      v17 = pow(v12, v13);
      v16 = v17;
      goto LABEL_35;
    case 18:
      LODWORD(v16) = LODWORD(v12) + 0x80000000;
LABEL_35:
      *((float *)a3 + 1) = v16;
      result = &dword_0 + 1;
      break;
    case 20:
      goto LABEL_2;
    default:
      a3[1] = 0;
      break;
  }
  return result;
}


// ===== 85f904 luaK_prefix =====
int __fastcall luaK_prefix(int result, int a2, int *a3)
{
  int v4; // r5
  int v5; // r2
  int v6; // r0
  int v7; // r1
  unsigned int v8; // r3
  unsigned int *v9; // r6
  int v10; // r2
  int v11; // r2
  int v12; // r12
  int v13; // r6
  int *v14; // r3
  unsigned int v15; // r2
  int *v16; // r8
  int v17; // r1
  int v18; // r3
  int v19; // r12
  int v20; // r4
  int *v21; // r3
  unsigned int v22; // r1
  int *v23; // r7
  int v24; // r3
  int v25; // r3
  int v26[6]; // [sp+Ch] [bp-18h] BYREF

  v26[0] = 5;
  v26[3] = -1;
  v26[1] = 0;
  v26[4] = -1;
  v4 = result;
  if ( a2 != 1 )
  {
    if ( a2 )
    {
      if ( a2 == 2 )
      {
        luaK_exp2anyreg(result, a3);
        return (int)codearith((int *)v4, 20, a3, v26);
      }
    }
    else
    {
      if ( *a3 != 5 || a3[3] != -1 || a3[4] != -1 )
        luaK_exp2anyreg(result, a3);
      return (int)codearith((int *)v4, 18, a3, v26);
    }
    return result;
  }
  luaK_dischargevars(result, a3);
  switch ( *a3 )
  {
    case 1:
    case 3:
      *a3 = 2;
      goto LABEL_17;
    case 2:
    case 4:
    case 5:
      *a3 = 3;
      goto LABEL_17;
    case 10:
      v5 = a3[1];
      v6 = *(_DWORD *)(*(_DWORD *)v4 + 12);
      v7 = v6 + 4 * v5;
      if ( v5 <= 0 || (v8 = *(_DWORD *)(v7 - 4), v9 = (unsigned int *)(v7 - 4), (luaP_opmodes[v8 & 0x3F] & 0x80u) == 0) )
      {
        v8 = *(_DWORD *)(v6 + 4 * v5);
        v9 = (unsigned int *)(v6 + 4 * v5);
      }
      if ( (unsigned __int8)(v8 >> 6) )
        v10 = 0;
      else
        v10 = 64;
      *v9 = v10 | v8 & 0xFFFFC03F;
      goto LABEL_17;
    case 11:
    case 12:
      discharge2anyreg((int *)v4, a3);
      if ( *a3 != 12 )
        goto LABEL_42;
      v25 = a3[1];
      if ( (v25 & 0x100) == 0 && v25 >= *(unsigned __int8 *)(v4 + 50) )
      {
        --*(_DWORD *)(v4 + 36);
LABEL_42:
        v25 = a3[1];
      }
      a3[1] = luaK_codeABC(v4, 19, 0, v25, 0);
      *a3 = 11;
LABEL_17:
      result = a3[3];
      v11 = a3[4];
      a3[4] = result;
      a3[3] = v11;
      if ( result != -1 )
      {
        v12 = 4 * result;
        v13 = *(_DWORD *)(*(_DWORD *)v4 + 12);
        v14 = (int *)(v13 + 4 * result);
        if ( result > 0 )
          goto LABEL_19;
LABEL_36:
        v15 = *(_DWORD *)(v13 + 4 * result);
        v16 = v14;
        if ( (v15 & 0x3F) == 0x1B )
        {
LABEL_37:
          *v16 = v15 & 0x7FC000 | 0x1A | (v15 >> 23 << 6);
          v13 = *(_DWORD *)(*(_DWORD *)v4 + 12);
          v14 = (int *)(v13 + v12);
        }
        while ( 1 )
        {
          v18 = ((unsigned int)*v14 >> 14) - 0x1FFFF;
          if ( v18 == -1 )
            break;
          result += v18 + 1;
          if ( result == -1 )
            break;
          v12 = 4 * result;
          v14 = (int *)(v13 + 4 * result);
          if ( result <= 0 )
            goto LABEL_36;
LABEL_19:
          v15 = *(v14 - 1);
          v16 = v14 - 1;
          v17 = v15 & 0x3F;
          if ( (luaP_opmodes[v17] & 0x80u) == 0 )
          {
            v15 = *v14;
            v16 = v14;
            v17 = *v14 & 0x3F;
          }
          if ( v17 == 27 )
            goto LABEL_37;
        }
        v11 = a3[3];
      }
      if ( v11 != -1 )
      {
        v19 = 4 * v11;
        v20 = *(_DWORD *)(*(_DWORD *)v4 + 12);
        v21 = (int *)(v20 + 4 * v11);
        if ( v11 > 0 )
          goto LABEL_26;
LABEL_32:
        v22 = *(_DWORD *)(v20 + 4 * v11);
        v23 = v21;
        result = v22 & 0x3F;
        if ( result == 27 )
        {
LABEL_33:
          *v23 = v22 & 0x7FC000 | 0x1A | (v22 >> 23 << 6);
          v20 = *(_DWORD *)(*(_DWORD *)v4 + 12);
          v21 = (int *)(v20 + v19);
        }
        while ( 1 )
        {
          v24 = ((unsigned int)*v21 >> 14) - 0x1FFFF;
          if ( v24 == -1 )
            break;
          v11 += v24 + 1;
          if ( v11 == -1 )
            break;
          v19 = 4 * v11;
          v21 = (int *)(v20 + 4 * v11);
          if ( v11 <= 0 )
            goto LABEL_32;
LABEL_26:
          v22 = *(v21 - 1);
          v23 = v21 - 1;
          result = v22 & 0x3F;
          if ( (luaP_opmodes[result] & 0x80u) == 0 )
          {
            v22 = *v21;
            v23 = v21;
            result = *v21 & 0x3F;
          }
          if ( result == 27 )
            goto LABEL_33;
        }
      }
      return result;
    default:
      goto LABEL_17;
  }
}


// ===== 85fc90 codecomp =====
int __fastcall codecomp(int a1, int a2, int a3, int *a4, int *a5)
{
  int v9; // r7
  int v10; // r0
  int v11; // r12
  _BOOL4 v12; // r3
  int v13; // r3
  int result; // r0
  int v15; // r3
  int v16; // r3

  v9 = luaK_exp2RK((int *)a1, a4);
  v10 = luaK_exp2RK((int *)a1, a5);
  v11 = v10;
  if ( *a5 != 12 || (v15 = a5[1], (v15 & 0x100) != 0) )
  {
    if ( *a4 != 12 )
      goto LABEL_3;
    goto LABEL_12;
  }
  if ( v15 >= *(unsigned __int8 *)(a1 + 50) )
    --*(_DWORD *)(a1 + 36);
  if ( *a4 == 12 )
  {
LABEL_12:
    v16 = a4[1];
    if ( (v16 & 0x100) == 0 && v16 >= *(unsigned __int8 *)(a1 + 50) )
      --*(_DWORD *)(a1 + 36);
  }
LABEL_3:
  v12 = a3 == 0;
  if ( a2 == 23 )
    v12 = 0;
  if ( v12 )
  {
    v13 = v9;
    a3 = 1;
    v9 = v10;
    v11 = v13;
  }
  result = condjump((_DWORD *)a1, a2, a3, v9, v11);
  *a4 = 10;
  a4[1] = result;
  return result;
}


// ===== 85fd80 luaK_posfix =====
int __fastcall luaK_posfix(int result, int a2, int *a3, int *a4)
{
  int v4; // r6
  int v7; // r2
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r1
  int *v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r3

  v4 = result;
  switch ( a2 )
  {
    case 0:
      v11 = 12;
      goto LABEL_9;
    case 1:
      v11 = 13;
      goto LABEL_9;
    case 2:
      v11 = 14;
      goto LABEL_9;
    case 3:
      v11 = 15;
      goto LABEL_9;
    case 4:
      v11 = 16;
      goto LABEL_9;
    case 5:
      v11 = 17;
LABEL_9:
      result = (int)codearith((int *)result, v11, a3, a4);
      break;
    case 6:
      luaK_exp2val(result, a4);
      if ( *a4 == 11
        && (result = *(_DWORD *)v4,
            v12 = a4[1],
            v13 = *(_DWORD *)(*(_DWORD *)v4 + 12),
            v14 = *(_DWORD *)(v13 + 4 * v12),
            v15 = (int *)(v13 + 4 * v12),
            (v14 & 0x3F) == 0x15) )
      {
        if ( *a3 == 12 )
        {
          v7 = a3[1];
          if ( (v7 & 0x100) == 0 && v7 >= *(unsigned __int8 *)(v4 + 50) )
          {
            --*(_DWORD *)(v4 + 36);
            v19 = *(_DWORD *)(result + 12);
            result = a4[1];
            v7 = a3[1];
            v14 = *(_DWORD *)(v19 + 4 * result);
            v15 = (int *)(v19 + 4 * result);
          }
        }
        else
        {
          v7 = a3[1];
        }
        *v15 = v14 & 0x7FFFFF | (v7 << 23);
        *a3 = 11;
        a3[1] = a4[1];
      }
      else
      {
        luaK_exp2nextreg(v4, a4);
        result = (int)codearith((int *)v4, 21, a3, a4);
      }
      break;
    case 7:
      result = codecomp(result, 23, 0, a3, a4);
      break;
    case 8:
      result = codecomp(result, 23, 1, a3, a4);
      break;
    case 9:
      result = codecomp(result, 24, 1, a3, a4);
      break;
    case 10:
      result = codecomp(result, 25, 1, a3, a4);
      break;
    case 11:
      result = codecomp(result, 24, 0, a3, a4);
      break;
    case 12:
      result = codecomp(result, 25, 0, a3, a4);
      break;
    case 13:
      luaK_dischargevars(result, a4);
      luaK_concat((_DWORD *)v4, a4 + 4, a3[4]);
      result = *a4;
      v16 = a4[1];
      v17 = a4[2];
      v18 = a4[3];
      *a3 = *a4;
      a3[1] = v16;
      a3[2] = v17;
      a3[3] = v18;
      a3[4] = a4[4];
      break;
    case 14:
      luaK_dischargevars(result, a4);
      luaK_concat((_DWORD *)v4, a4 + 3, a3[3]);
      result = *a4;
      v8 = a4[1];
      v9 = a4[2];
      v10 = a4[3];
      *a3 = *a4;
      a3[1] = v8;
      a3[2] = v9;
      a3[3] = v10;
      a3[4] = a4[4];
      break;
    default:
      return result;
  }
  return result;
}


// ===== 85fff8 luaK_infix =====
_DWORD *__fastcall luaK_infix(_DWORD *result, int a2, int *a3)
{
  _DWORD *v3; // r5
  int v5; // r2

  v3 = result;
  switch ( a2 )
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      if ( *a3 != 5 || a3[3] != -1 || a3[4] != -1 )
        goto LABEL_4;
      break;
    case 6:
      result = luaK_exp2nextreg((int)result, a3);
      break;
    case 13:
      result = luaK_goiftrue(result, a3);
      break;
    case 14:
      luaK_dischargevars((int)result, a3);
      switch ( *a3 )
      {
        case 1:
        case 3:
          v5 = -1;
          break;
        case 2:
          v5 = luaK_jump(v3);
          break;
        case 10:
          v5 = a3[1];
          break;
        default:
          v5 = jumponcond((int)v3, a3, 1);
          break;
      }
      luaK_concat(v3, a3 + 3, v5);
      result = luaK_patchtohere(v3, a3[4]);
      a3[4] = -1;
      break;
    default:
LABEL_4:
      result = (_DWORD *)luaK_exp2RK(result, a3);
      break;
  }
  return result;
}


// ===== 860138 luaK_indexed =====
int __fastcall luaK_indexed(int *a1, _DWORD *a2, int *a3)
{
  int result; // r0

  result = luaK_exp2RK(a1, a3);
  *a2 = 9;
  a2[2] = result;
  return result;
}


// ===== 860158 luaK_self =====
int __fastcall luaK_self(int a1, _DWORD *a2, int *a3)
{
  int v6; // r7
  int v7; // r8
  int v8; // r0
  int result; // r0
  int v10; // r3
  int v11; // r3

  luaK_exp2anyreg(a1, a2);
  if ( *a2 != 12 || (v10 = a2[1], (v10 & 0x100) != 0) || v10 < *(unsigned __int8 *)(a1 + 50) )
  {
    v6 = *(_DWORD *)(a1 + 36);
  }
  else
  {
    v6 = *(_DWORD *)(a1 + 36) - 1;
    *(_DWORD *)(a1 + 36) = v6;
  }
  luaK_reserveregs((_DWORD *)a1, 2);
  v7 = a2[1];
  v8 = luaK_exp2RK((int *)a1, a3);
  result = luaK_codeABC(a1, 11, v6, v7, v8);
  if ( *a3 == 12 )
  {
    v11 = a3[1];
    if ( (v11 & 0x100) == 0 && v11 >= *(unsigned __int8 *)(a1 + 50) )
      --*(_DWORD *)(a1 + 36);
  }
  *a2 = 12;
  a2[1] = v6;
  return result;
}


// ===== 86021c luaK_storevar =====
int *__fastcall luaK_storevar(int *result, _DWORD *a2, int *a3)
{
  int v4; // r5
  int v6; // r0
  int v7; // r3
  int v8; // r0
  int v9; // r0
  int v10; // r3

  v4 = (int)result;
  switch ( *a2 )
  {
    case 6:
      if ( *a3 == 12 )
      {
        v10 = a3[1];
        if ( (v10 & 0x100) == 0 && v10 >= *((unsigned __int8 *)result + 50) )
          --result[9];
      }
      return exp2reg(result, a3, a2[1]);
    case 7:
      v6 = luaK_exp2anyreg((int)result, a3);
      result = (int *)luaK_codeABC(v4, 8, v6, a2[1], 0);
      goto LABEL_3;
    case 8:
      v9 = luaK_exp2anyreg((int)result, a3);
      result = (int *)luaK_codeABx(v4, 7, v9, a2[1]);
      if ( *a3 == 12 )
        goto LABEL_5;
      return result;
    case 9:
      v8 = luaK_exp2RK(result, a3);
      result = (int *)luaK_codeABC(v4, 9, a2[1], a2[2], v8);
      if ( *a3 == 12 )
        goto LABEL_5;
      return result;
    default:
LABEL_3:
      if ( *a3 != 12 )
        return result;
LABEL_5:
      v7 = a3[1];
      if ( (v7 & 0x100) == 0 && v7 >= *(unsigned __int8 *)(v4 + 50) )
        --*(_DWORD *)(v4 + 36);
      return result;
  }
}


// ===== 860350 luaK_stringK =====
int __fastcall luaK_stringK(int *a1, int a2)
{
  int v3[3]; // [sp+0h] [bp-Ch] BYREF

  v3[0] = a2;
  v3[1] = 4;
  return addk(a1, (int)v3, v3);
}


// ===== 860378 luaX_setinput =====
int __fastcall luaX_setinput(int a1, int a2, int a3, int a4)
{
  int *v5; // r5
  _DWORD *v6; // r3
  int v8; // r2
  unsigned __int8 *v9; // r3
  int result; // r0

  v5 = *(int **)(a2 + 40);
  *(_DWORD *)(a2 + 44) = a4;
  *(_BYTE *)(a2 + 48) = 46;
  *(_DWORD *)(a2 + 20) = 287;
  *(_DWORD *)(a2 + 28) = 0;
  *(_DWORD *)(a2 + 36) = a3;
  *(_DWORD *)(a2 + 8) = 1;
  *(_DWORD *)(a2 + 32) = a1;
  *(_DWORD *)(a2 + 4) = 1;
  *v5 = luaM_realloc_(a1, *v5, v5[2], 32);
  *(_DWORD *)(*(_DWORD *)(a2 + 40) + 8) = 32;
  v6 = *(_DWORD **)(a2 + 36);
  if ( (*v6)-- == 0 )
  {
    result = luaZ_fill(*(_DWORD *)(a2 + 36));
  }
  else
  {
    v8 = *(_DWORD *)(a2 + 36);
    v9 = *(unsigned __int8 **)(v8 + 4);
    result = *v9;
    *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *(_DWORD *)a2 = result;
  return result;
}


// ===== 860414 luaX_newstring =====
_DWORD *__fastcall luaX_newstring(int a1, char *a2, size_t a3)
{
  _DWORD *v3; // r5
  _DWORD *v5; // r4
  _DWORD *v6; // r0

  v3 = *(_DWORD **)(a1 + 32);
  v5 = luaS_newlstr(v3, a2, a3);
  v6 = luaH_setstr(v3, *(_DWORD *)(*(_DWORD *)(a1 + 28) + 4), (int)v5);
  if ( !v6[1] )
  {
    v6[1] = 1;
    *v6 = 1;
  }
  return v5;
}


// ===== 86045c luaX_token2str =====
int __fastcall luaX_token2str(int a1, int a2)
{
  if ( a2 > 256 )
    return (int)*(&luaX_tokens + a2 - 257);
  if ( iscntrl(a2) )
    return luaO_pushfstring(*(_DWORD **)(a1 + 32), "char(%d)", a2);
  return luaO_pushfstring(*(_DWORD **)(a1 + 32), "%c", a2);
}


// ===== 8604d4 luaX_lexerror =====
void __fastcall __noreturn luaX_lexerror(int a1, const char *a2, int a3)
{
  const char *v6; // r8
  _DWORD *v7; // r10
  const char *v8; // r3
  char v9[80]; // [sp+Ch] [bp-58h] BYREF

  luaO_chunkid(v9, (char *)(*(_DWORD *)(a1 + 44) + 16), 0x50u);
  v6 = (const char *)luaO_pushfstring(*(_DWORD **)(a1 + 32), "%s:%d: %s", v9, *(_DWORD *)(a1 + 4), a2);
  if ( a3 )
  {
    v7 = *(_DWORD **)(a1 + 32);
    if ( (unsigned int)(a3 - 284) <= 2 )
    {
      save(a1, 0);
      v8 = **(const char ***)(a1 + 40);
    }
    else
    {
      v8 = (const char *)luaX_token2str(a1, a3);
    }
    luaO_pushfstring(v7, "%s near '%s'", v6, v8);
  }
  luaD_throw(*(_DWORD *)(a1 + 32), 3);
}


// ===== 8605cc save =====
int __fastcall save(int a1, char a2)
{
  int *v2; // r4
  int v4; // r3
  unsigned int v5; // r2
  int v6; // r1
  int result; // r0
  int v8; // r5

  v2 = *(int **)(a1 + 40);
  v4 = v2[1];
  v5 = v2[2];
  v6 = v4 + 1;
  if ( v4 + 1 > v5 )
  {
    if ( v5 > 0x7FFFFFFD )
      luaX_lexerror(a1, "lexical element too long", 0);
    v8 = 2 * v5;
    if ( 2 * v5 + 1 > 0xFFFFFFFD )
      luaM_toobig(*(_DWORD **)(a1 + 32));
    result = luaM_realloc_(*(_DWORD *)(a1 + 32), *v2, v5, 2 * v5);
    v4 = v2[1];
    v2[2] = v8;
    *v2 = result;
    v6 = v4 + 1;
  }
  else
  {
    result = *v2;
  }
  *(_BYTE *)(result + v4) = a2;
  v2[1] = v6;
  return result;
}


// ===== 860670 skip_sep =====
int __fastcall skip_sep(int *a1)
{
  int v1; // r6
  _DWORD *v3; // r3
  bool v4; // zf
  int v5; // r2
  unsigned __int8 *v6; // r3
  int v7; // r0
  int v8; // r5
  int v9; // r2
  unsigned __int8 *v10; // r3
  _DWORD *v11; // r3

  v1 = *a1;
  save((int)a1, *a1);
  v3 = (_DWORD *)a1[9];
  v4 = (*v3)-- == 0;
  if ( v4 )
  {
    v7 = luaZ_fill(a1[9]);
  }
  else
  {
    v5 = a1[9];
    v6 = *(unsigned __int8 **)(v5 + 4);
    v7 = *v6;
    *(_DWORD *)(v5 + 4) = v6 + 1;
  }
  *a1 = v7;
  if ( v7 == 61 )
  {
    v8 = 0;
    do
    {
      while ( 1 )
      {
        save((int)a1, 61);
        v11 = (_DWORD *)a1[9];
        v4 = (*v11)-- == 0;
        if ( v4 )
          break;
        v9 = a1[9];
        ++v8;
        v10 = *(unsigned __int8 **)(v9 + 4);
        v7 = *v10;
        *(_DWORD *)(v9 + 4) = v10 + 1;
        *a1 = v7;
        if ( v7 != 61 )
          goto LABEL_10;
      }
      v7 = luaZ_fill(a1[9]);
      *a1 = v7;
      ++v8;
    }
    while ( v7 == 61 );
  }
  else
  {
    v8 = 0;
  }
LABEL_10:
  if ( v1 != v7 )
    return ~v8;
  return v8;
}


// ===== 86073c check_next =====
char *__fastcall check_next(int *a1, char *a2)
{
  int v2; // r5
  char *result; // r0
  _DWORD *v5; // r3
  int v7; // r2
  unsigned __int8 *v8; // r3
  int v9; // r0

  v2 = *a1;
  result = strchr(a2, *a1);
  if ( result )
  {
    save((int)a1, v2);
    v5 = (_DWORD *)a1[9];
    if ( (*v5)-- == 0 )
    {
      v9 = luaZ_fill(a1[9]);
    }
    else
    {
      v7 = a1[9];
      v8 = *(unsigned __int8 **)(v7 + 4);
      v9 = *v8;
      *(_DWORD *)(v7 + 4) = v8 + 1;
    }
    *a1 = v9;
    return (_BYTE *)(&dword_0 + 1);
  }
  return result;
}


// ===== 8607a8 read_numeral =====
bool __fastcall read_numeral(int a1, float *a2)
{
  unsigned int v4; // r0
  int v5; // r2
  unsigned __int8 *v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  bool v9; // zf
  bool v10; // cc
  int i; // r5
  int v12; // r0
  _DWORD *v13; // r3
  int v14; // r2
  unsigned __int8 *v15; // r3
  int *v16; // r3
  char v17; // r0
  int v18; // r1
  int v19; // r3
  _BOOL4 result; // r0
  char v21; // r0
  int *v22; // r3
  int v23; // r1
  int v24; // r3
  int *v25; // r3
  int v26; // r0
  int v27; // r1
  int v28; // r3

  v4 = *(_DWORD *)a1;
  do
  {
    while ( 1 )
    {
      save(a1, v4);
      v8 = *(_DWORD **)(a1 + 36);
      v9 = (*v8)-- == 0;
      if ( v9 )
        break;
      v5 = *(_DWORD *)(a1 + 36);
      v6 = *(unsigned __int8 **)(v5 + 4);
      v4 = *v6;
      *(_DWORD *)(v5 + 4) = v6 + 1;
      v7 = v4 > 0x2E;
      if ( v4 != 46 )
        v7 = v4 - 48 > 9;
      *(_DWORD *)a1 = v4;
      if ( v7 )
        goto LABEL_11;
    }
    v4 = luaZ_fill(*(_DWORD *)(a1 + 36));
    v10 = v4 > 0x2E;
    if ( v4 != 46 )
      v10 = v4 - 48 > 9;
    *(_DWORD *)a1 = v4;
  }
  while ( !v10 );
LABEL_11:
  if ( check_next((int *)a1, "Ee") )
    check_next((int *)a1, "+-");
  for ( i = *(_DWORD *)a1; ; *(_DWORD *)a1 = i )
  {
    v12 = isalnum(i);
    if ( !v12 && i != 95 )
      break;
    save(a1, i);
    v13 = *(_DWORD **)(a1 + 36);
    v9 = (*v13)-- == 0;
    if ( v9 )
    {
      i = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v14 = *(_DWORD *)(a1 + 36);
      v15 = *(unsigned __int8 **)(v14 + 4);
      i = *v15;
      *(_DWORD *)(v14 + 4) = v15 + 1;
    }
  }
  save(a1, v12);
  v16 = *(int **)(a1 + 40);
  v17 = *(_BYTE *)(a1 + 48);
  v18 = *v16;
  v19 = v16[1];
  while ( 1 )
  {
    v9 = v19-- == 0;
    if ( v9 )
      break;
    if ( *(_BYTE *)(v18 + v19) == 46 )
      *(_BYTE *)(v18 + v19) = v17;
  }
  result = luaO_str2d(**(const char ***)(a1 + 40), a2);
  if ( !result )
  {
    v21 = *(_BYTE *)(a1 + 48);
    v22 = *(int **)(a1 + 40);
    *(_BYTE *)(a1 + 48) = 46;
    v23 = *v22;
    v24 = v22[1];
    while ( 1 )
    {
      v9 = v24-- == 0;
      if ( v9 )
        break;
      if ( *(char *)(v23 + v24) == v21 )
        *(_BYTE *)(v23 + v24) = 46;
    }
    result = luaO_str2d(**(const char ***)(a1 + 40), a2);
    if ( !result )
    {
      v25 = *(int **)(a1 + 40);
      v26 = *(char *)(a1 + 48);
      v27 = *v25;
      v28 = v25[1];
      while ( 1 )
      {
        v9 = v28-- == 0;
        if ( v9 )
          break;
        if ( *(char *)(v27 + v28) == v26 )
          *(_BYTE *)(v27 + v28) = 46;
      }
      luaX_lexerror(a1, "malformed number", 284);
    }
  }
  return result;
}


// ===== 8609a4 luaX_syntaxerror =====
void __fastcall __noreturn luaX_syntaxerror(int a1, const char *a2)
{
  luaX_lexerror(a1, a2, *(_DWORD *)(a1 + 12));
}


// ===== 8609ac inclinenumber =====
int __fastcall inclinenumber(int *a1)
{
  _DWORD *v1; // r3
  int v2; // r5
  int v4; // r2
  unsigned __int8 *v5; // r3
  int result; // r0
  bool v7; // zf
  _DWORD *v8; // r3
  int v9; // r2
  unsigned __int8 *v10; // r3
  int v11; // r3
  bool v12; // nf

  v1 = (_DWORD *)a1[9];
  v2 = *a1;
  v7 = (*v1)-- == 0;
  if ( v7 )
  {
    result = luaZ_fill(a1[9]);
  }
  else
  {
    v4 = a1[9];
    v5 = *(unsigned __int8 **)(v4 + 4);
    result = *v5;
    *(_DWORD *)(v4 + 4) = v5 + 1;
  }
  v7 = result == 10;
  if ( result != 10 )
    v7 = result == 13;
  *a1 = result;
  if ( v7 && result != v2 )
  {
    v8 = (_DWORD *)a1[9];
    v7 = (*v8)-- == 0;
    if ( v7 )
    {
      result = luaZ_fill(a1[9]);
    }
    else
    {
      v9 = a1[9];
      v10 = *(unsigned __int8 **)(v9 + 4);
      result = *v10;
      *(_DWORD *)(v9 + 4) = v10 + 1;
    }
    *a1 = result;
  }
  v11 = a1[1] + 1;
  v12 = a1[1] - 2147483643 < 0;
  a1[1] = v11;
  if ( !(v12 ^ __OFSUB__(v11, 2147483644) | (v11 == 2147483644)) )
    luaX_syntaxerror((int)a1, "chunk has too many lines");
  return result;
}


// ===== 860a70 read_long_string =====
int __fastcall read_long_string(int *a1, int *a2, int a3)
{
  _DWORD *v6; // r3
  int v7; // r2
  unsigned __int8 *v8; // r3
  int v9; // r1
  bool v10; // zf
  bool v11; // cc
  _DWORD *v12; // r3
  int v13; // r2
  unsigned __int8 *v14; // r3
  int v15; // r0
  _DWORD *v16; // r3
  int v17; // r2
  unsigned __int8 *v18; // r3
  int result; // r0
  _DWORD *v20; // r3
  int v21; // r2
  unsigned __int8 *v22; // r3
  int v23; // r0
  const char *v24; // r1

  save((int)a1, *a1);
  v6 = (_DWORD *)a1[9];
  v10 = (*v6)-- == 0;
  if ( v10 )
  {
    v9 = luaZ_fill(a1[9]);
  }
  else
  {
    v7 = a1[9];
    v8 = *(unsigned __int8 **)(v7 + 4);
    v9 = *v8;
    *(_DWORD *)(v7 + 4) = v8 + 1;
  }
  v10 = v9 == 10;
  if ( v9 != 10 )
    v10 = v9 == 13;
  *a1 = v9;
  if ( v10 )
  {
    inclinenumber(a1);
    v9 = *a1;
  }
  v11 = v9 <= 13;
  if ( v9 == 13 )
    goto LABEL_18;
LABEL_8:
  if ( v11 )
  {
    if ( v9 == -1 )
    {
      if ( a2 )
        v24 = "unfinished long string";
      else
        v24 = "unfinished long comment";
      luaX_lexerror((int)a1, v24, 287);
    }
    if ( v9 == 10 )
    {
LABEL_18:
      while ( 1 )
      {
        save((int)a1, 10);
        inclinenumber(a1);
        if ( a2 )
          break;
        *(_DWORD *)(a1[10] + 4) = 0;
        v9 = *a1;
LABEL_17:
        v11 = v9 <= 13;
        if ( v9 != 13 )
          goto LABEL_8;
      }
LABEL_16:
      v9 = *a1;
      goto LABEL_17;
    }
LABEL_12:
    if ( a2 )
      save((int)a1, v9);
    v12 = (_DWORD *)a1[9];
    v10 = (*v12)-- == 0;
    if ( v10 )
    {
      *a1 = luaZ_fill(a1[9]);
    }
    else
    {
      v13 = a1[9];
      v14 = *(unsigned __int8 **)(v13 + 4);
      v15 = *v14;
      *(_DWORD *)(v13 + 4) = v14 + 1;
      *a1 = v15;
    }
    goto LABEL_16;
  }
  if ( v9 == 91 )
  {
    if ( skip_sep(a1) == a3 )
    {
      save((int)a1, *a1);
      v20 = (_DWORD *)a1[9];
      v10 = (*v20)-- == 0;
      if ( v10 )
      {
        v23 = luaZ_fill(a1[9]);
      }
      else
      {
        v21 = a1[9];
        v22 = *(unsigned __int8 **)(v21 + 4);
        v23 = *v22;
        *(_DWORD *)(v21 + 4) = v22 + 1;
      }
      *a1 = v23;
      if ( !a3 )
        luaX_lexerror((int)a1, "nesting of [[...]] is deprecated", 91);
    }
    goto LABEL_16;
  }
  if ( v9 != 93 )
    goto LABEL_12;
  if ( skip_sep(a1) != a3 )
    goto LABEL_16;
  save((int)a1, *a1);
  v16 = (_DWORD *)a1[9];
  v10 = (*v16)-- == 0;
  if ( v10 )
  {
    result = luaZ_fill(a1[9]);
    *a1 = result;
    if ( a2 )
      goto LABEL_25;
  }
  else
  {
    v17 = a1[9];
    v18 = *(unsigned __int8 **)(v17 + 4);
    result = *v18;
    *(_DWORD *)(v17 + 4) = v18 + 1;
    *a1 = result;
    if ( a2 )
    {
LABEL_25:
      result = (int)luaX_newstring(
                      (int)a1,
                      (char *)(*(_DWORD *)a1[10] + a3 + 2),
                      *(_DWORD *)(a1[10] + 4) + 2 * (-2 - a3));
      *a2 = result;
    }
  }
  return result;
}


// ===== 860ce0 llex =====
int __fastcall llex(int a1, float *a2)
{
  int v2; // r5
  bool v5; // cc
  _DWORD *v6; // r3
  int v7; // r2
  unsigned __int8 *v8; // r3
  _DWORD *v9; // r3
  int v10; // r2
  unsigned __int8 *v11; // r3
  int v12; // r1
  _DWORD *v13; // r3
  int v14; // r2
  unsigned __int8 *v15; // r3
  int v16; // r0
  _DWORD *v17; // r3
  int v18; // r2
  unsigned __int8 *v19; // r3
  int v20; // r0
  _DWORD *v21; // r3
  _DWORD *v22; // r3
  int v23; // r2
  unsigned __int8 *v24; // r3
  int v25; // r0
  _DWORD *v27; // r3
  int v28; // r2
  unsigned __int8 *v29; // r3
  int v30; // r0
  _DWORD *v31; // r3
  int v32; // r2
  unsigned __int8 *v33; // r3
  bool v34; // zf
  int v35; // r2
  unsigned __int8 *v36; // r3
  bool v37; // zf
  _DWORD *v38; // r3
  _DWORD *v39; // r3
  int v40; // r2
  unsigned __int8 *v41; // r3
  int v42; // r0
  unsigned int v43; // r2
  int v44; // r11
  unsigned int v45; // r10
  int v46; // r3
  _DWORD *v47; // r1
  int v48; // r1
  unsigned __int8 *v49; // r2
  int v50; // r0
  _DWORD *v51; // r3
  int v52; // r2
  unsigned __int8 *v53; // r3
  int v54; // r0
  _DWORD *v55; // r3
  int v56; // r2
  unsigned __int8 *v57; // r3
  int v58; // r0
  _DWORD *v59; // r3
  int v60; // r2
  unsigned __int8 *v61; // r3
  int v62; // r0
  _DWORD *v63; // r3
  int v64; // r2
  unsigned __int8 *v65; // r3
  int v66; // r0
  int v67; // r0
  _DWORD *v68; // r3
  int v69; // r2
  unsigned __int8 *v70; // r3
  int v71; // r0
  _DWORD *v72; // r3
  int v73; // r2
  unsigned __int8 *v74; // r3
  int v75; // r0
  _DWORD *v76; // r3
  int v77; // r2
  unsigned __int8 *v78; // r3
  int v79; // r0
  _DWORD *v80; // r3
  int v81; // r2
  unsigned __int8 *v82; // r3
  int v83; // r0
  _DWORD *v84; // r3
  int v85; // r2
  unsigned __int8 *v86; // r3
  int v87; // r0
  int v88; // r2
  unsigned __int8 *v89; // r3
  _DWORD *v90; // r3
  _DWORD *v91; // r0
  int v92; // r2
  int v93; // [sp+4h] [bp-8h]

  *(_DWORD *)(*(_DWORD *)(a1 + 40) + 4) = 0;
  v2 = *(_DWORD *)a1;
LABEL_2:
  while ( 1 )
  {
    v5 = v2 <= 45;
    if ( v2 != 45 )
      break;
LABEL_39:
    v27 = *(_DWORD **)(a1 + 36);
    v34 = (*v27)-- == 0;
    if ( v34 )
    {
      v30 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v28 = *(_DWORD *)(a1 + 36);
      v29 = *(unsigned __int8 **)(v28 + 4);
      v30 = *v29;
      *(_DWORD *)(v28 + 4) = v29 + 1;
    }
    *(_DWORD *)a1 = v30;
    if ( v30 != 45 )
      return v2;
    v31 = *(_DWORD **)(a1 + 36);
    v34 = (*v31)-- == 0;
    if ( v34 )
    {
      v2 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v32 = *(_DWORD *)(a1 + 36);
      v33 = *(unsigned __int8 **)(v32 + 4);
      v2 = *v33;
      *(_DWORD *)(v32 + 4) = v33 + 1;
    }
    *(_DWORD *)a1 = v2;
    if ( v2 == 91 )
    {
      v92 = skip_sep((int *)a1);
      *(_DWORD *)(*(_DWORD *)(a1 + 40) + 4) = 0;
      if ( v92 >= 0 )
      {
        read_long_string((int *)a1, nullptr, v92);
        *(_DWORD *)(*(_DWORD *)(a1 + 40) + 4) = 0;
        v2 = *(_DWORD *)a1;
        continue;
      }
      v2 = *(_DWORD *)a1;
    }
    v34 = v2 == 10;
    if ( v2 != 10 )
      v34 = v2 == 13;
    if ( !v34 )
    {
      do
      {
        if ( v2 == -1 )
          break;
        v38 = *(_DWORD **)(a1 + 36);
        v34 = (*v38)-- == 0;
        if ( v34 )
        {
          v2 = luaZ_fill(*(_DWORD *)(a1 + 36));
        }
        else
        {
          v35 = *(_DWORD *)(a1 + 36);
          v36 = *(unsigned __int8 **)(v35 + 4);
          v2 = *v36;
          *(_DWORD *)(v35 + 4) = v36 + 1;
        }
        v37 = v2 == 13;
        if ( v2 != 13 )
          v37 = v2 == 10;
        *(_DWORD *)a1 = v2;
      }
      while ( !v37 );
    }
  }
  while ( v5 )
  {
    if ( v2 != 13 )
    {
      if ( v2 > 13 )
      {
        if ( v2 == 34 || v2 == 39 )
        {
          save(a1, v2);
          v9 = *(_DWORD **)(a1 + 36);
          v34 = (*v9)-- == 0;
          if ( v34 )
          {
            v12 = luaZ_fill(*(_DWORD *)(a1 + 36));
          }
          else
          {
            v10 = *(_DWORD *)(a1 + 36);
            v11 = *(unsigned __int8 **)(v10 + 4);
            v12 = *v11;
            *(_DWORD *)(v10 + 4) = v11 + 1;
          }
          *(_DWORD *)a1 = v12;
          if ( v2 == v12 )
          {
LABEL_26:
            save(a1, v2);
            v17 = *(_DWORD **)(a1 + 36);
            v34 = (*v17)-- == 0;
            if ( v34 )
            {
              v20 = luaZ_fill(*(_DWORD *)(a1 + 36));
            }
            else
            {
              v18 = *(_DWORD *)(a1 + 36);
              v19 = *(unsigned __int8 **)(v18 + 4);
              v20 = *v19;
              *(_DWORD *)(v18 + 4) = v19 + 1;
            }
            v21 = *(_DWORD **)(a1 + 40);
            *(_DWORD *)a1 = v20;
            v2 = 286;
            *(_DWORD *)a2 = luaX_newstring(a1, (char *)(*v21 + 1), v21[1] - 2);
            return v2;
          }
          while ( 2 )
          {
            if ( v12 == 10 )
LABEL_75:
              luaX_lexerror(a1, "unfinished string", 286);
            if ( v12 <= 10 )
            {
              if ( v12 == -1 )
                luaX_lexerror(a1, "unfinished string", 287);
              goto LABEL_22;
            }
            if ( v12 == 13 )
              goto LABEL_75;
            if ( v12 != 92 )
            {
LABEL_22:
              save(a1, v12);
              v13 = *(_DWORD **)(a1 + 36);
              v34 = (*v13)-- == 0;
              if ( v34 )
              {
                *(_DWORD *)a1 = luaZ_fill(*(_DWORD *)(a1 + 36));
              }
              else
              {
                v14 = *(_DWORD *)(a1 + 36);
                v15 = *(unsigned __int8 **)(v14 + 4);
                v16 = *v15;
                *(_DWORD *)(v14 + 4) = v15 + 1;
                *(_DWORD *)a1 = v16;
              }
              goto LABEL_24;
            }
            v39 = *(_DWORD **)(a1 + 36);
            v34 = (*v39)-- == 0;
            if ( v34 )
            {
              v42 = luaZ_fill(*(_DWORD *)(a1 + 36));
            }
            else
            {
              v40 = *(_DWORD *)(a1 + 36);
              v41 = *(unsigned __int8 **)(v40 + 4);
              v42 = *v41;
              *(_DWORD *)(v40 + 4) = v41 + 1;
            }
            *(_DWORD *)a1 = v42;
            if ( v42 == 98 )
            {
              LOBYTE(v12) = 8;
              goto LABEL_22;
            }
            if ( v42 > 98 )
            {
              if ( v42 == 114 )
              {
                LOBYTE(v12) = 13;
                goto LABEL_22;
              }
              if ( v42 <= 114 )
              {
                if ( v42 == 102 )
                {
                  LOBYTE(v12) = 12;
                  goto LABEL_22;
                }
                if ( v42 == 110 )
                {
                  LOBYTE(v12) = 10;
                  goto LABEL_22;
                }
              }
              else
              {
                if ( v42 == 116 )
                {
                  LOBYTE(v12) = 9;
                  goto LABEL_22;
                }
                if ( v42 == 118 )
                {
                  LOBYTE(v12) = 11;
                  goto LABEL_22;
                }
              }
            }
            else
            {
              if ( v42 == 10 )
                goto LABEL_152;
              if ( v42 <= 10 )
              {
                if ( v42 != -1 )
                  break;
LABEL_24:
                v12 = *(_DWORD *)a1;
LABEL_25:
                if ( v2 == v12 )
                  goto LABEL_26;
                continue;
              }
              if ( v42 == 13 )
              {
LABEL_152:
                save(a1, 10);
                inclinenumber((int *)a1);
                v12 = *(_DWORD *)a1;
                goto LABEL_25;
              }
              if ( v42 == 97 )
              {
                LOBYTE(v12) = 7;
                goto LABEL_22;
              }
            }
            break;
          }
          v43 = v42 - 48;
          if ( (unsigned int)(v42 - 48) > 9 )
          {
            LOBYTE(v12) = v42;
            goto LABEL_22;
          }
          v44 = 0;
          v45 = 0;
          v46 = 10;
          do
          {
            v47 = *(_DWORD **)(a1 + 36);
            v45 = v43 + v46 * v45;
            v34 = (*v47)-- == 0;
            if ( v34 )
            {
              v93 = v46;
              v50 = luaZ_fill(*(_DWORD *)(a1 + 36));
              v46 = v93;
            }
            else
            {
              v48 = *(_DWORD *)(a1 + 36);
              v49 = *(unsigned __int8 **)(v48 + 4);
              v50 = *v49;
              *(_DWORD *)(v48 + 4) = v49 + 1;
            }
            ++v44;
            v43 = v50 - 48;
            *(_DWORD *)a1 = v50;
          }
          while ( v44 != 3 && v43 <= 9 );
          if ( v45 > 0xFF )
            luaX_lexerror(a1, "escape sequence too large", 286);
          save(a1, v45);
          v12 = *(_DWORD *)a1;
          goto LABEL_25;
        }
LABEL_8:
        if ( isspace(v2) )
        {
          v6 = *(_DWORD **)(a1 + 36);
          v34 = (*v6)-- == 0;
          if ( v34 )
          {
            v2 = luaZ_fill(*(_DWORD *)(a1 + 36));
          }
          else
          {
            v7 = *(_DWORD *)(a1 + 36);
            v8 = *(unsigned __int8 **)(v7 + 4);
            v2 = *v8;
            *(_DWORD *)(v7 + 4) = v8 + 1;
          }
          *(_DWORD *)a1 = v2;
          goto LABEL_2;
        }
        if ( (unsigned int)(v2 - 48) > 9 )
        {
          if ( isalpha(v2) || v2 == 95 )
          {
            do
            {
              save(a1, v2);
              v90 = *(_DWORD **)(a1 + 36);
              v34 = (*v90)-- == 0;
              if ( v34 )
              {
                v2 = luaZ_fill(*(_DWORD *)(a1 + 36));
              }
              else
              {
                v88 = *(_DWORD *)(a1 + 36);
                v89 = *(unsigned __int8 **)(v88 + 4);
                v2 = *v89;
                *(_DWORD *)(v88 + 4) = v89 + 1;
              }
              *(_DWORD *)a1 = v2;
            }
            while ( isalnum(v2) || v2 == 95 );
            v91 = luaX_newstring(a1, **(char ***)(a1 + 40), *(_DWORD *)(*(_DWORD *)(a1 + 40) + 4));
            if ( *((_BYTE *)v91 + 6) )
            {
              return *((unsigned __int8 *)v91 + 6) + 256;
            }
            else
            {
              *(_DWORD *)a2 = v91;
              return 285;
            }
          }
          else
          {
            v84 = *(_DWORD **)(a1 + 36);
            v34 = (*v84)-- == 0;
            if ( v34 )
            {
              *(_DWORD *)a1 = luaZ_fill(*(_DWORD *)(a1 + 36));
            }
            else
            {
              v85 = *(_DWORD *)(a1 + 36);
              v86 = *(unsigned __int8 **)(v85 + 4);
              v87 = *v86;
              *(_DWORD *)(v85 + 4) = v86 + 1;
              *(_DWORD *)a1 = v87;
            }
          }
          return v2;
        }
LABEL_106:
        read_numeral(a1, a2);
        return 284;
      }
      if ( v2 == -1 )
        return 287;
      if ( v2 != 10 )
        goto LABEL_8;
    }
    inclinenumber((int *)a1);
    v2 = *(_DWORD *)a1;
    v5 = *(_DWORD *)a1 <= 45;
    if ( *(_DWORD *)a1 == 45 )
      goto LABEL_39;
  }
  if ( v2 == 61 )
  {
    v51 = *(_DWORD **)(a1 + 36);
    v34 = (*v51)-- == 0;
    if ( v34 )
    {
      v54 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v52 = *(_DWORD *)(a1 + 36);
      v53 = *(unsigned __int8 **)(v52 + 4);
      v54 = *v53;
      *(_DWORD *)(v52 + 4) = v53 + 1;
    }
    *(_DWORD *)a1 = v54;
    if ( v54 != 61 )
      return 61;
    v55 = *(_DWORD **)(a1 + 36);
    v34 = (*v55)-- == 0;
    if ( v34 )
    {
      v58 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v56 = *(_DWORD *)(a1 + 36);
      v57 = *(unsigned __int8 **)(v56 + 4);
      v58 = *v57;
      *(_DWORD *)(v56 + 4) = v57 + 1;
    }
    *(_DWORD *)a1 = v58;
    return 280;
  }
  if ( v2 > 61 )
  {
    switch ( v2 )
    {
      case '[':
        v67 = skip_sep((int *)a1);
        if ( v67 < 0 )
        {
          if ( v67 != -1 )
            luaX_lexerror(a1, "invalid long string delimiter", 286);
        }
        else
        {
          read_long_string((int *)a1, (int *)a2, v67);
          return 286;
        }
        break;
      case '~':
        v59 = *(_DWORD **)(a1 + 36);
        v34 = (*v59)-- == 0;
        if ( v34 )
        {
          v62 = luaZ_fill(*(_DWORD *)(a1 + 36));
        }
        else
        {
          v60 = *(_DWORD *)(a1 + 36);
          v61 = *(unsigned __int8 **)(v60 + 4);
          v62 = *v61;
          *(_DWORD *)(v60 + 4) = v61 + 1;
        }
        *(_DWORD *)a1 = v62;
        if ( v62 == 61 )
        {
          v63 = *(_DWORD **)(a1 + 36);
          v34 = (*v63)-- == 0;
          if ( v34 )
          {
            v66 = luaZ_fill(*(_DWORD *)(a1 + 36));
          }
          else
          {
            v64 = *(_DWORD *)(a1 + 36);
            v65 = *(unsigned __int8 **)(v64 + 4);
            v66 = *v65;
            *(_DWORD *)(v64 + 4) = v65 + 1;
          }
          *(_DWORD *)a1 = v66;
          return 283;
        }
        break;
      case '>':
        v22 = *(_DWORD **)(a1 + 36);
        v34 = (*v22)-- == 0;
        if ( v34 )
        {
          v25 = luaZ_fill(*(_DWORD *)(a1 + 36));
        }
        else
        {
          v23 = *(_DWORD *)(a1 + 36);
          v24 = *(unsigned __int8 **)(v23 + 4);
          v25 = *v24;
          *(_DWORD *)(v23 + 4) = v24 + 1;
        }
        *(_DWORD *)a1 = v25;
        if ( v25 == 61 )
        {
          v80 = *(_DWORD **)(a1 + 36);
          v34 = (*v80)-- == 0;
          if ( v34 )
          {
            v83 = luaZ_fill(*(_DWORD *)(a1 + 36));
          }
          else
          {
            v81 = *(_DWORD *)(a1 + 36);
            v82 = *(unsigned __int8 **)(v81 + 4);
            v83 = *v82;
            *(_DWORD *)(v81 + 4) = v82 + 1;
          }
          *(_DWORD *)a1 = v83;
          return 281;
        }
        break;
      default:
        goto LABEL_8;
    }
  }
  else if ( v2 == 46 )
  {
    save(a1, 46);
    v76 = *(_DWORD **)(a1 + 36);
    v34 = (*v76)-- == 0;
    if ( v34 )
    {
      v79 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v77 = *(_DWORD *)(a1 + 36);
      v78 = *(unsigned __int8 **)(v77 + 4);
      v79 = *v78;
      *(_DWORD *)(v77 + 4) = v78 + 1;
    }
    *(_DWORD *)a1 = v79;
    if ( !check_next((int *)a1, ".") )
    {
      if ( (unsigned int)(*(_DWORD *)a1 - 48) > 9 )
        return v2;
      goto LABEL_106;
    }
    v2 = 279;
    if ( !check_next((int *)a1, ".") )
      return 278;
  }
  else
  {
    if ( v2 != 60 )
      goto LABEL_8;
    v68 = *(_DWORD **)(a1 + 36);
    v34 = (*v68)-- == 0;
    if ( v34 )
    {
      v71 = luaZ_fill(*(_DWORD *)(a1 + 36));
    }
    else
    {
      v69 = *(_DWORD *)(a1 + 36);
      v70 = *(unsigned __int8 **)(v69 + 4);
      v71 = *v70;
      *(_DWORD *)(v69 + 4) = v70 + 1;
    }
    *(_DWORD *)a1 = v71;
    if ( v71 == 61 )
    {
      v72 = *(_DWORD **)(a1 + 36);
      v34 = (*v72)-- == 0;
      if ( v34 )
      {
        v75 = luaZ_fill(*(_DWORD *)(a1 + 36));
      }
      else
      {
        v73 = *(_DWORD *)(a1 + 36);
        v74 = *(unsigned __int8 **)(v73 + 4);
        v75 = *v74;
        *(_DWORD *)(v73 + 4) = v74 + 1;
      }
      *(_DWORD *)a1 = v75;
      return 282;
    }
  }
  return v2;
}


// ===== 8615f4 luaX_lookahead =====
int __fastcall luaX_lookahead(int a1)
{
  int result; // r0

  result = llex(a1, (float *)(a1 + 24));
  *(_DWORD *)(a1 + 20) = result;
  return result;
}


// ===== 86160c luaX_next =====
int __fastcall luaX_next(int result)
{
  int v1; // r3
  int v2; // r4
  int v3; // r1

  v1 = *(_DWORD *)(result + 20);
  v2 = result;
  *(_DWORD *)(result + 8) = *(_DWORD *)(result + 4);
  if ( v1 == 287 )
  {
    result = llex(result, (float *)(result + 16));
    *(_DWORD *)(v2 + 12) = result;
  }
  else
  {
    v3 = *(_DWORD *)(result + 24);
    *(_DWORD *)(result + 20) = 287;
    *(_DWORD *)(result + 12) = v1;
    *(_DWORD *)(result + 16) = v3;
  }
  return result;
}


// ===== 861650 luaX_init =====
_DWORD *__fastcall luaX_init(_DWORD *a1)
{
  int v2; // r4
  int v3; // r5
  char *v4; // r8
  size_t v5; // r0
  _DWORD *result; // r0
  char v7; // r3

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(char **)((char *)&luaX_tokens + v2);
    v2 += 4;
    v5 = LC_API_STRLEN_0(v4);
    result = luaS_newlstr(a1, v4, v5);
    v7 = *((_BYTE *)result + 5);
    *((_BYTE *)result + 6) = v3;
    *((_BYTE *)result + 5) = v7 | 0x20;
    ++v3;
  }
  while ( v2 != 84 );
  return result;
}


// ===== 8616ac GetTimeDT(double,double) =====
__int64 __fastcall GetTimeDT(double a1, double a2)
{
  double v2; // r4

  v2 = a2 - a1;
  if ( a2 - a1 < 0.0 )
    v2 = 0.0;
  return *(_QWORD *)&v2;
}


// ===== 8616f8 vox::VoxEngine::SuspendEngine(void) =====
int __fastcall vox::VoxEngine::SuspendEngine(vox::VoxEngine *this)
{
  int result; // r0

  if ( vox::VoxEngine::m_internal )
    return (*(int (__fastcall **)(int))(*(_DWORD *)vox::VoxEngine::m_internal + 12))(vox::VoxEngine::m_internal);
  return result;
}


// ===== 861734 vox::VoxEngine::ResumeEngine(void) =====
int __fastcall vox::VoxEngine::ResumeEngine(vox::VoxEngine *this)
{
  int result; // r0

  if ( vox::VoxEngine::m_internal )
    return (*(int (__fastcall **)(int))(*(_DWORD *)vox::VoxEngine::m_internal + 16))(vox::VoxEngine::m_internal);
  return result;
}


// ===== 861770 vox::VoxEngine::IsEngineSuspended(void) =====
int __fastcall vox::VoxEngine::IsEngineSuspended(vox::VoxEngine *this)
{
  if ( vox::VoxEngine::m_internal )
    return (*(int (__fastcall **)(int))(*(_DWORD *)vox::VoxEngine::m_internal + 20))(vox::VoxEngine::m_internal);
  else
    return 1;
}


// ===== 8617b4 vox::VoxEngine::Update(float) =====
void __fastcall vox::VoxEngine::Update(vox::VoxEngine *this, float a2)
{
  ;
}


// ===== 8617b8 vox::VoxEngine::UpdateSources(void) =====
void __fastcall vox::VoxEngine::UpdateSources(vox::VoxEngine *this)
{
  ;
}


// ===== 8617bc vox::VoxEngine::UpdateEmitters(float) =====
void __fastcall vox::VoxEngine::UpdateEmitters(vox::VoxEngine *this, float a2)
{
  ;
}


// ===== 8617c0 vox::VoxEngine::SetMasterGain(float,float) =====
int *__fastcall vox::VoxEngine::SetMasterGain(vox::VoxEngine *this, float a2, float a3)
{
  int *result; // r0

  result = &vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return (int *)(*(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)vox::VoxEngine::m_internal + 40))(
                    vox::VoxEngine::m_internal,
                    LODWORD(a2),
                    LODWORD(a3));
  return result;
}


// ===== 8617fc vox::VoxEngine::SetGroupGain(uint,float,float) =====
Elf32_Dyn **__fastcall vox::VoxEngine::SetGroupGain(vox::VoxEngine *this, unsigned int a2, float a3, float a4)
{
  Elf32_Dyn **result; // r0

  result = &__GLOBAL_OFFSET_TABLE_;
  if ( vox::VoxEngine::m_internal )
    return (Elf32_Dyn **)(*(int (__fastcall **)(int, unsigned int, _DWORD, _DWORD))(*(_DWORD *)vox::VoxEngine::m_internal
                                                                                  + 36))(
                           vox::VoxEngine::m_internal,
                           a2,
                           LODWORD(a3),
                           LODWORD(a4));
  return result;
}


// ===== 861838 vox::VoxEngine::RegisterForEmitterStateChangeNotification(vox::EmitterHandle &,void (*)(vox::EmitterHandle &,void *,vox::EmitterExternState),void *) =====
void vox::VoxEngine::RegisterForEmitterStateChangeNotification()
{
  ;
}


// ===== 86183c vox::VoxEngine::UnregisterForEmitterStateChangeNotification(vox::EmitterHandle &) =====
void vox::VoxEngine::UnregisterForEmitterStateChangeNotification()
{
  ;
}


// ===== 861840 vox::VoxEngine::UpdateSourcesThreaded(void) =====
int __fastcall vox::VoxEngine::UpdateSourcesThreaded(vox::VoxEngine *this)
{
  int result; // r0

  if ( vox::VoxEngine::m_internal )
    return (*(int (__fastcall **)(int))(*(_DWORD *)vox::VoxEngine::m_internal + 24))(vox::VoxEngine::m_internal);
  return result;
}


// ===== 86187c vox::VoxEngine::UpdateSourcesThreaded(void *,void *) =====
// attributes: thunk
int __fastcall vox::VoxEngine::UpdateSourcesThreaded(vox::VoxEngine *this, void *a2, void *a3)
{
  return _ZN3vox9VoxEngine21UpdateSourcesThreadedEv(this);
}


// ===== 861880 vox::VoxEngine::GetDebugInfo(vox::DebugInfo &) =====
int vox::VoxEngine::GetDebugInfo()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetDebugInfo();
  return result;
}


// ===== 8618a8 vox::VoxEngine::PrintDebug(void) =====
int __fastcall vox::VoxEngine::PrintDebug(vox::VoxEngine *this)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::PrintDebug((vox::VoxEngineInternal *)vox::VoxEngine::m_internal);
  return result;
}


// ===== 8618d0 vox::VoxEngine::SetOutputMode(vox::VoxOutputMode) =====
int vox::VoxEngine::SetOutputMode()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetOutputMode();
  return result;
}


// ===== 8618f8 vox::VoxEngine::GetOutputMode(void) =====
int __fastcall vox::VoxEngine::GetOutputMode(vox::VoxEngine *this)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetOutputMode((vox::VoxEngineInternal *)vox::VoxEngine::m_internal);
  else
    return -1;
}


// ===== 861928 vox::VoxEngine::SetInteractiveMusicState(vox::EmitterHandle &,char const*) =====
int __fastcall vox::VoxEngine::SetInteractiveMusicState(vox::VoxEngine *this, vox::EmitterHandle *a2, const char *a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetInteractiveMusicState(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3);
  return result;
}


// ===== 861950 vox::VoxEngine::SetDSPEmitterParameter(vox::EmitterHandle &,int,void *) =====
int __fastcall vox::VoxEngine::SetDSPEmitterParameter(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3, void *a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetDSPEmitterParameter(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861978 vox::VoxEngine::SetSFXPresetActive(int,bool,float) =====
int __fastcall vox::VoxEngine::SetSFXPresetActive(vox::VoxEngine *this, int a2, bool a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetSFXPresetActive((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3, a4);
  return result;
}


// ===== 8619a0 vox::VoxEngine::SetRoutingVolume(char *,char *,vox::VoxDSPGeneralParameter::BusRoutingType,float,float,float) =====
int vox::VoxEngine::SetRoutingVolume()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetRoutingVolume();
  return result;
}


// ===== 8619e0 vox::VoxEngine::SetDynamicBusRouting(char *) =====
int __fastcall vox::VoxEngine::SetDynamicBusRouting(vox::VoxEngine *this, char *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetDynamicBusRouting((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861a08 vox::VoxEngine::SetStaticBusRouting(char *) =====
int __fastcall vox::VoxEngine::SetStaticBusRouting(vox::VoxEngine *this, char *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetStaticBusRouting((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861a30 vox::VoxEngine::Get3DGeneralParameteri(int,int &) =====
int __fastcall vox::VoxEngine::Get3DGeneralParameteri(vox::VoxEngine *this, int a2, int *a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DGeneralParameteri((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 861a58 vox::VoxEngine::Get3DGeneralParameterf(int,float &) =====
int __fastcall vox::VoxEngine::Get3DGeneralParameterf(vox::VoxEngine *this, int a2, float *a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DGeneralParameterf((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 861a80 vox::VoxEngine::Get3DGeneralParameter(vox::Vox3DGeneralParameters &) =====
int vox::VoxEngine::Get3DGeneralParameter()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DGeneralParameter();
  return result;
}


// ===== 861aa8 vox::VoxEngine::Get3DListenerOrientation(float &,float &,float &,float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DListenerOrientation(
        vox::VoxEngine *this,
        float *a2,
        float *a3,
        float *a4,
        float *a5,
        float *a6,
        float *a7)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DListenerOrientation(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5,
             a6,
             a7);
  return result;
}


// ===== 861ae8 vox::VoxEngine::Get3DListenerVelocity(float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DListenerVelocity(vox::VoxEngine *this, float *a2, float *a3, float *a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DListenerVelocity(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861b10 vox::VoxEngine::Get3DListenerPosition(float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DListenerPosition(vox::VoxEngine *this, float *a2, float *a3, float *a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DListenerPosition(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861b38 vox::VoxEngine::Set3DGeneralParameteri(int,int) =====
int __fastcall vox::VoxEngine::Set3DGeneralParameteri(vox::VoxEngine *this, int a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DGeneralParameteri((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 861b60 vox::VoxEngine::Set3DGeneralParameterf(int,float) =====
int __fastcall vox::VoxEngine::Set3DGeneralParameterf(vox::VoxEngine *this, int a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DGeneralParameterf((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 861b88 vox::VoxEngine::Set3DGeneralParameter(vox::Vox3DGeneralParameters const&) =====
int vox::VoxEngine::Set3DGeneralParameter()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DGeneralParameter();
  return result;
}


// ===== 861bb0 vox::VoxEngine::Set3DListenerOrientation(float,float,float,float,float,float) =====
int __fastcall vox::VoxEngine::Set3DListenerOrientation(
        vox::VoxEngine *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float a6,
        float a7)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DListenerOrientation(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5,
             a6,
             a7);
  return result;
}


// ===== 861bf0 vox::VoxEngine::Set3DListenerVelocity(float,float,float) =====
int __fastcall vox::VoxEngine::Set3DListenerVelocity(vox::VoxEngine *this, float a2, float a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DListenerVelocity(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861c18 vox::VoxEngine::Set3DListenerPosition(float,float,float) =====
int __fastcall vox::VoxEngine::Set3DListenerPosition(vox::VoxEngine *this, float a2, float a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DListenerPosition(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861c40 vox::VoxEngine::Get3DEmitterParameteri(vox::EmitterHandle &,int,int &) =====
int __fastcall vox::VoxEngine::Get3DEmitterParameteri(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3, int *a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterParameteri(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861c68 vox::VoxEngine::Get3DEmitterParameterf(vox::EmitterHandle &,int,float &) =====
int __fastcall vox::VoxEngine::Get3DEmitterParameterf(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3, float *a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterParameterf(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861c90 vox::VoxEngine::Get3DEmitterParameters(vox::EmitterHandle &,vox::Vox3DEmitterParameters &) =====
int vox::VoxEngine::Get3DEmitterParameters()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterParameters();
  return result;
}


// ===== 861cb8 vox::VoxEngine::Get3DEmitterDirection(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DEmitterDirection(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float *a3,
        float *a4,
        float *a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterDirection(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861cf0 vox::VoxEngine::Get3DEmitterVelocity(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DEmitterVelocity(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float *a3,
        float *a4,
        float *a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterVelocity(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861d28 vox::VoxEngine::Get3DEmitterPosition(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngine::Get3DEmitterPosition(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float *a3,
        float *a4,
        float *a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Get3DEmitterPosition(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861d60 vox::VoxEngine::Set3DEmitterParameteri(vox::EmitterHandle &,int,int) =====
int __fastcall vox::VoxEngine::Set3DEmitterParameteri(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3, int a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterParameteri(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861d88 vox::VoxEngine::Set3DEmitterParameterf(vox::EmitterHandle &,int,float) =====
int __fastcall vox::VoxEngine::Set3DEmitterParameterf(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterParameterf(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4);
  return result;
}


// ===== 861db0 vox::VoxEngine::Set3DEmitterParameters(vox::EmitterHandle &,vox::Vox3DEmitterParameters const&) =====
int vox::VoxEngine::Set3DEmitterParameters()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterParameters();
  return result;
}


// ===== 861dd8 vox::VoxEngine::Set3DEmitterDirection(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngine::Set3DEmitterDirection(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float a3,
        float a4,
        float a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterDirection(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861e10 vox::VoxEngine::Set3DEmitterVelocity(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngine::Set3DEmitterVelocity(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float a3,
        float a4,
        float a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterVelocity(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861e48 vox::VoxEngine::Set3DEmitterPosition(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngine::Set3DEmitterPosition(
        vox::VoxEngine *this,
        vox::EmitterHandle *a2,
        float a3,
        float a4,
        float a5)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Set3DEmitterPosition(
             (vox::VoxEngineInternal *)vox::VoxEngine::m_internal,
             a2,
             a3,
             a4,
             a5);
  return result;
}


// ===== 861e80 vox::VoxEngine::GetGroupGain(int) =====
int __fastcall vox::VoxEngine::GetGroupGain(vox::VoxEngine *this, int a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetGroupGain((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 0;
}


// ===== 861eb0 vox::VoxEngine::GetMasterGain(void) =====
int __fastcall vox::VoxEngine::GetMasterGain(vox::VoxEngine *this)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetMasterGain((vox::VoxEngineInternal *)vox::VoxEngine::m_internal);
  else
    return 0;
}


// ===== 861ee0 vox::VoxEngine::GetStatus(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetStatus(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetStatus((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861f08 vox::VoxEngine::IsDone(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::IsDone(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsDone((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 1;
}


// ===== 861f38 vox::VoxEngine::IsPlaying(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::IsPlaying(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsPlaying((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861f60 vox::VoxEngine::IsAlive(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::IsAlive(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsAlive((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861f88 vox::VoxEngine::IsValid(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::IsValid(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsValid((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861fb0 vox::VoxEngine::IsReady(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::IsReady(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsReady((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 861fd8 vox::VoxEngine::SetPlayCursor(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngine::SetPlayCursor(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetPlayCursor((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862000 vox::VoxEngine::GetPlayCursor(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetPlayCursor(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetPlayCursor((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 0;
}


// ===== 862030 vox::VoxEngine::GetGroup(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetGroup(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetGroup((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 862058 vox::VoxEngine::SetGroup(vox::EmitterHandle &,int) =====
int __fastcall vox::VoxEngine::SetGroup(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetGroup((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862080 vox::VoxEngine::ResumeAllEmitters(uint,float) =====
int __fastcall vox::VoxEngine::ResumeAllEmitters(vox::VoxEngine *this, unsigned int a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::ResumeAllEmitters((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 8620a8 vox::VoxEngine::PauseAllEmitters(uint,float) =====
int __fastcall vox::VoxEngine::PauseAllEmitters(vox::VoxEngine *this, unsigned int a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::PauseAllEmitters((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 8620d0 vox::VoxEngine::StopAllEmitters(uint,float) =====
int __fastcall vox::VoxEngine::StopAllEmitters(vox::VoxEngine *this, unsigned int a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::StopAllEmitters((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 8620f8 vox::VoxEngine::PlayAllEmitters(uint,float) =====
int __fastcall vox::VoxEngine::PlayAllEmitters(vox::VoxEngine *this, unsigned int a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::PlayAllEmitters((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862120 vox::VoxEngine::GetAllEmitters(vox::EmitterHandle *,int) =====
int __fastcall vox::VoxEngine::GetAllEmitters(vox::VoxEngine *this, vox::EmitterHandle *a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetAllEmitters((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862148 vox::VoxEngine::Resume(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngine::Resume(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Resume((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862170 vox::VoxEngine::Pause(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngine::Pause(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Pause((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862198 vox::VoxEngine::Stop(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngine::Stop(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Stop((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 8621c0 vox::VoxEngine::Play(vox::EmitterHandle &,bool,float) =====
int __fastcall vox::VoxEngine::Play(vox::VoxEngine *this, vox::EmitterHandle *a2, bool a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::Play((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3, a4);
  return result;
}


// ===== 8621e8 vox::VoxEngine::GetPitch(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetPitch(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetPitch((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 0;
}


// ===== 862218 vox::VoxEngine::SetPitch(vox::EmitterHandle &,float,float) =====
int __fastcall vox::VoxEngine::SetPitch(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetPitch((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3, a4);
  return result;
}


// ===== 862240 vox::VoxEngine::SetLoop(vox::EmitterHandle &,bool) =====
int __fastcall vox::VoxEngine::SetLoop(vox::VoxEngine *this, vox::EmitterHandle *a2, bool a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetLoop((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862268 vox::VoxEngine::GetGain(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetGain(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetGain((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 0;
}


// ===== 862298 vox::VoxEngine::SetGain(vox::EmitterHandle &,float,float) =====
int __fastcall vox::VoxEngine::SetGain(vox::VoxEngine *this, vox::EmitterHandle *a2, float a3, float a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetGain((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3, a4);
  return result;
}


// ===== 8622c0 vox::VoxEngine::SetAutoKillAfterDone(vox::EmitterHandle &,bool) =====
int __fastcall vox::VoxEngine::SetAutoKillAfterDone(vox::VoxEngine *this, vox::EmitterHandle *a2, bool a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetAutoKillAfterDone((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 8622e8 vox::VoxEngine::GetData(vox::EmitterHandle &) =====
vox::VoxEngine *__fastcall vox::VoxEngine::GetData(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::GetData(this, (vox::EmitterHandle *)vox::VoxEngine::m_internal);
  else
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 862348 vox::VoxEngine::KillEmitter(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::KillEmitter(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::KillEmitter((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 862370 vox::VoxEngine::GetUserData(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngine::GetUserData(vox::VoxEngine *this, vox::EmitterHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetUserData((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return -1;
}


// ===== 8623a8 vox::VoxEngine::SetUserData(vox::EmitterHandle &,vox::EmitterHandleUserData &) =====
int vox::VoxEngine::SetUserData()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetUserData();
  return result;
}


// ===== 8623d0 vox::VoxEngine::CreateEmitterAsync(vox::DataHandle &,int,void *) =====
vox::VoxEngine *__fastcall vox::VoxEngine::CreateEmitterAsync(
        vox::VoxEngine *this,
        vox::DataHandle *a2,
        int a3,
        void *a4)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::CreateEmitterAsync(this, (vox::DataHandle *)vox::VoxEngine::m_internal, a3, a4);
  else
    vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 862438 vox::VoxEngine::CreateEmitter(vox::DataHandle &,int,void *) =====
vox::VoxEngine *__fastcall vox::VoxEngine::CreateEmitter(vox::VoxEngine *this, vox::DataHandle *a2, int a3, void *a4)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::CreateEmitter(this, (vox::DataHandle *)vox::VoxEngine::m_internal, a3, a4);
  else
    vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 8624a0 vox::VoxEngine::GetDuration(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::GetDuration(vox::VoxEngine *this, vox::DataHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetDuration((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return 0;
}


// ===== 8624d0 vox::VoxEngine::IsValid(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::IsValid(vox::VoxEngine *this, vox::DataHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsValid((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 8624f8 vox::VoxEngine::IsReady(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::IsReady(vox::VoxEngine *this, vox::DataHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::IsReady((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 862520 vox::VoxEngine::GetAllDataSources(vox::DataHandle *,int) =====
int __fastcall vox::VoxEngine::GetAllDataSources(vox::VoxEngine *this, vox::DataHandle *a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetAllDataSources((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862548 vox::VoxEngine::GetEmitterHandles(vox::DataHandle &,vox::EmitterHandle *,int) =====
int __fastcall vox::VoxEngine::GetEmitterHandles(
        vox::VoxEngine *this,
        vox::DataHandle *a2,
        vox::EmitterHandle *a3,
        int a4)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetEmitterHandles((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3, a4);
  return result;
}


// ===== 862570 vox::VoxEngine::ReleaseDatasource(uint) =====
int __fastcall vox::VoxEngine::ReleaseDatasource(vox::VoxEngine *this, unsigned int a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::ReleaseDatasource((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 862598 vox::VoxEngine::ReleaseDatasource(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::ReleaseDatasource(vox::VoxEngine *this, vox::DataHandle *a2)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::ReleaseDatasource((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  return result;
}


// ===== 8625c0 vox::VoxEngine::GetUid(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::GetUid(vox::VoxEngine *this, vox::DataHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetUid((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return -1;
}


// ===== 8625f0 vox::VoxEngine::SetUid(vox::DataHandle &,int) =====
int __fastcall vox::VoxEngine::SetUid(vox::VoxEngine *this, vox::DataHandle *a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetUid((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862618 vox::VoxEngine::SetPriorityBankId(vox::DataHandle &,int) =====
int __fastcall vox::VoxEngine::SetPriorityBankId(vox::VoxEngine *this, vox::DataHandle *a2, int a3)
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetPriorityBankId((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2, a3);
  return result;
}


// ===== 862640 vox::VoxEngine::GetUserData(vox::DataHandle &) =====
int __fastcall vox::VoxEngine::GetUserData(vox::VoxEngine *this, vox::DataHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::GetUserData((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return -1;
}


// ===== 862678 vox::VoxEngine::SetUserData(vox::DataHandle &,vox::DataHandleUserData &) =====
int vox::VoxEngine::SetUserData()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetUserData();
  return result;
}


// ===== 8626a0 vox::VoxEngine::ConvertToRamBufferSource(vox::DataHandle &) =====
vox::VoxEngine *__fastcall vox::VoxEngine::ConvertToRamBufferSource(vox::VoxEngine *this, vox::DataHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::ConvertToRamBufferSource(this, (vox::DataHandle *)vox::VoxEngine::m_internal);
  else
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 862700 vox::VoxEngine::ConvertToRawSource(vox::DataHandle &) =====
vox::VoxEngine *__fastcall vox::VoxEngine::ConvertToRawSource(vox::VoxEngine *this, vox::DataHandle *a2)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::ConvertToRawSource(this, (vox::DataHandle *)vox::VoxEngine::m_internal);
  else
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 862760 vox::VoxEngine::LoadDataSourceAsync(int,void *,int,void *,int,vox::VoxSourceLoadingFlags) =====
vox::DataHandle *__fastcall vox::VoxEngine::LoadDataSourceAsync(
        vox::DataHandle *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        __int16 a8)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::LoadDataSourceAsync(a1, vox::VoxEngine::m_internal, a3, a4, a5, a6, a7, a8);
  else
    vox::DataHandle::DataHandle(a1, -1, nullptr, nullptr, 0, 0);
  return a1;
}


// ===== 8627e0 vox::VoxEngine::LoadDataSource(int,void *,int,void *,int) =====
vox::VoxEngine *__fastcall vox::VoxEngine::LoadDataSource(
        vox::VoxEngine *this,
        int a2,
        void *a3,
        int a4,
        void *a5,
        int a6)
{
  if ( vox::VoxEngine::m_internal )
    vox::VoxEngineInternal::LoadDataSource(this, vox::VoxEngine::m_internal, a3, a4, a5, a6);
  else
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 862858 vox::VoxEngine::SetPriorityBank(int,int,int,vox::PriorityBankBehavior) =====
int vox::VoxEngine::SetPriorityBank()
{
  int result; // r0

  result = vox::VoxEngine::m_internal;
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::SetPriorityBank();
  return result;
}


// ===== 862898 vox::VoxEngine::RegisterDecoderType(vox::DecoderInterface * (*)(void *)) =====
int __fastcall vox::VoxEngine::RegisterDecoderType(vox::VoxEngine *this, vox::DecoderInterface *(*a2)(void *))
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::RegisterDecoderType((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return -1;
}


// ===== 8628c8 vox::VoxEngine::RegisterStreamType(vox::StreamInterface * (*)(void *)) =====
int __fastcall vox::VoxEngine::RegisterStreamType(vox::VoxEngine *this, vox::StreamInterface *(*a2)(void *))
{
  if ( vox::VoxEngine::m_internal )
    return vox::VoxEngineInternal::RegisterStreamType((vox::VoxEngineInternal *)vox::VoxEngine::m_internal, a2);
  else
    return -1;
}


// ===== 8628f8 vox::VoxEngine::DestroyVoxEngine(void) =====
void __fastcall vox::VoxEngine::DestroyVoxEngine(vox::VoxEngine *this)
{
  if ( vox::VoxEngine::s_voxEngine )
  {
    (**(void (__fastcall ***)(int))vox::VoxEngine::s_voxEngine)(vox::VoxEngine::s_voxEngine);
    VoxFree((void *)vox::VoxEngine::s_voxEngine);
    vox::VoxEngine::s_voxEngine = 0;
  }
}


// ===== 862944 vox::VoxEngine::Shutdown(void) =====
void __fastcall vox::VoxEngine::Shutdown(vox::VoxEngine *this)
{
  vox::VoxThread *v2; // r0
  vox::VoxThread *v3; // r0

  v2 = *((vox::VoxThread **)this + 1);
  if ( v2 )
  {
    vox::VoxThread::~VoxThread(v2);
    VoxFree(*((void **)this + 1));
    *((_DWORD *)this + 1) = 0;
  }
  v3 = *((vox::VoxThread **)this + 2);
  if ( v3 )
  {
    vox::VoxThread::~VoxThread(v3);
    VoxFree(*((void **)this + 2));
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 862990 vox::VoxEngine::~VoxEngine() =====
void __fastcall vox::VoxEngine::~VoxEngine(void **this)
{
  vox::Mutex *v2; // r0

  *this = off_993448;
  vox::VoxEngine::Shutdown((vox::VoxEngine *)this);
  if ( vox::VoxEngine::m_internal )
  {
    (**(void (__fastcall ***)(int))vox::VoxEngine::m_internal)(vox::VoxEngine::m_internal);
    VoxFree((void *)vox::VoxEngine::m_internal);
  }
  vox::VoxEngine::m_internal = 0;
  v2 = (vox::Mutex *)*(this + 6);
  if ( v2 )
  {
    vox::Mutex::~Mutex(v2);
    VoxFree(*(this + 6));
  }
}


// ===== 862a18 vox::VoxEngine::~VoxEngine() =====
void __fastcall vox::VoxEngine::~VoxEngine(void **this)
{
  vox::VoxEngine::~VoxEngine(this);
  LC_API_FREE_0(this);
}


// ===== 862a34 vox::VoxEngine::~VoxEngine() =====
void __fastcall vox::VoxEngine::~VoxEngine(void **this)
{
  vox::Mutex *v2; // r0

  *this = off_993448;
  vox::VoxEngine::Shutdown((vox::VoxEngine *)this);
  if ( vox::VoxEngine::m_internal )
  {
    (**(void (__fastcall ***)(int))vox::VoxEngine::m_internal)(vox::VoxEngine::m_internal);
    VoxFree((void *)vox::VoxEngine::m_internal);
  }
  vox::VoxEngine::m_internal = 0;
  v2 = (vox::Mutex *)*(this + 6);
  if ( v2 )
  {
    vox::Mutex::~Mutex(v2);
    VoxFree(*(this + 6));
  }
}


// ===== 862abc vox::VoxEngine::VoxEngine(void) =====
vox::VoxEngine *__fastcall vox::VoxEngine::VoxEngine(vox::VoxEngine *this)
{
  vox::Mutex *v2; // r6
  vox::VoxEngineInternal *v3; // r0

  *(_DWORD *)this = off_993448;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_QWORD *)this + 2) = 0;
  v2 = (vox::Mutex *)VoxAlloc(4u, 0);
  v3 = (vox::VoxEngineInternal *)vox::Mutex::Mutex(v2);
  *((_DWORD *)this + 6) = v2;
  vox::VoxEngine::m_internal = vox::VoxEngineInternal::GetVoxEngineInternal(v3);
  return this;
}


// ===== 862b30 vox::VoxEngine::GetVoxEngine(void) =====
int __fastcall vox::VoxEngine::GetVoxEngine(vox::VoxEngine *this)
{
  vox::VoxEngine *v2; // r5

  if ( vox::VoxEngine::s_voxEngine )
    return vox::VoxEngine::s_voxEngine;
  v2 = (vox::VoxEngine *)VoxAlloc(0x20u, 0);
  vox::VoxEngine::VoxEngine(v2);
  vox::VoxEngine::s_voxEngine = (int)v2;
  return (int)v2;
}


// ===== 862b80 vox::VoxEngine::VoxEngine(void) =====
vox::VoxEngine *__fastcall vox::VoxEngine::VoxEngine(vox::VoxEngine *this)
{
  vox::Mutex *v2; // r6
  vox::VoxEngineInternal *v3; // r0

  *(_DWORD *)this = off_993448;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_QWORD *)this + 2) = 0;
  v2 = (vox::Mutex *)VoxAlloc(4u, 0);
  v3 = (vox::VoxEngineInternal *)vox::Mutex::Mutex(v2);
  *((_DWORD *)this + 6) = v2;
  vox::VoxEngine::m_internal = vox::VoxEngineInternal::GetVoxEngineInternal(v3);
  return this;
}


// ===== 862bf4 _GetTime(void) =====
double _GetTime()
{
  struct timeval v1; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v1, nullptr);
  return (double)v1.tv_usec / 1000000.0 + (double)v1.tv_sec;
}


// ===== 862c4c vox::VoxEngine::UpdateEmittersThreaded(void) =====
int __fastcall vox::VoxEngine::UpdateEmittersThreaded(int this)
{
  int v1; // r5
  double Time; // r8
  double v3; // r10
  float v4; // r0
  double v5; // [sp+0h] [bp-8h]

  v1 = this;
  if ( vox::VoxEngine::m_internal )
  {
    Time = _GetTime();
    v5 = COERCE_DOUBLE(GetTimeDT(*(double *)(v1 + 16), Time));
    v3 = *(double *)(v1 + 16);
    if ( Time < v3 )
      Time = v3;
    *(double *)(v1 + 16) = Time;
    v4 = v5;
    return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)vox::VoxEngine::m_internal + 28))(
             vox::VoxEngine::m_internal,
             LODWORD(v4));
  }
  return this;
}


// ===== 862cf0 vox::VoxEngine::UpdateThreaded(void) =====
int __fastcall vox::VoxEngine::UpdateThreaded(vox::VoxEngine *this)
{
  vox::VoxEngine::UpdateSourcesThreaded(this);
  return vox::VoxEngine::UpdateEmittersThreaded((int)this);
}


// ===== 862d08 vox::VoxEngine::UpdateThreaded(void *,void *) =====
// attributes: thunk
int __fastcall vox::VoxEngine::UpdateThreaded(vox::VoxEngine *this, void *a2, void *a3)
{
  return _ZN3vox9VoxEngine14UpdateThreadedEv(this);
}


// ===== 862d0c vox::VoxEngine::UpdateEmittersThreaded(void *,void *) =====
// attributes: thunk
int __fastcall vox::VoxEngine::UpdateEmittersThreaded(int this, void *a2, void *a3)
{
  return _ZN3vox9VoxEngine22UpdateEmittersThreadedEv(this);
}


// ===== 862d10 vox::VoxEngine::Initialize(void) =====
int __fastcall vox::VoxEngine::Initialize(double this)
{
  int v1; // r5
  vox::VoxThread *v2; // r6
  vox::VoxThread *v3; // r6

  v1 = LODWORD(this);
  if ( vox::VoxEngine::m_internal )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)vox::VoxEngine::m_internal + 8))(vox::VoxEngine::m_internal);
    vox::VoxEngine::RegisterStreamType(
      (vox::VoxEngine *)v1,
      (vox::StreamInterface *(*)(void *))vox::StreamMemoryBufferFactory);
    vox::VoxEngine::RegisterStreamType((vox::VoxEngine *)v1, (vox::StreamInterface *(*)(void *))vox::StreamCFileFactory);
    vox::VoxEngine::RegisterDecoderType(
      (vox::VoxEngine *)v1,
      (vox::DecoderInterface *(*)(void *))vox::DecoderRawFactory);
    vox::VoxEngine::RegisterDecoderType(
      (vox::VoxEngine *)v1,
      (vox::DecoderInterface *(*)(void *))vox::DecoderMSWavFactory);
    vox::VoxEngine::RegisterDecoderType(
      (vox::VoxEngine *)v1,
      (vox::DecoderInterface *(*)(void *))vox::DecoderStbVorbisFactory);
    vox::VoxEngine::RegisterDecoderType(
      (vox::VoxEngine *)v1,
      (vox::DecoderInterface *(*)(void *))vox::DecoderMPC8Factory);
    vox::VoxEngine::RegisterDecoderType(
      (vox::VoxEngine *)v1,
      (vox::DecoderInterface *(*)(void *))vox::DecoderNativeFactory);
    vox::VoxEngine::RegisterDecoderType((vox::VoxEngine *)v1, nullptr);
    v2 = (vox::VoxThread *)VoxAlloc(0x68u, 0);
    vox::VoxThread::VoxThread(
      v2,
      (void (*)(void *, void *))vox::VoxEngine::UpdateEmittersThreaded,
      (void *)v1,
      nullptr,
      "VoxEngine::UpdateEmitters");
    *(_DWORD *)(v1 + 4) = v2;
    v3 = (vox::VoxThread *)VoxAlloc(0x68u, 0);
    vox::VoxThread::VoxThread(
      v3,
      (void (*)(void *, void *))vox::VoxEngine::UpdateSourcesThreaded,
      (void *)v1,
      nullptr,
      "VoxEngine::UpdateSources");
    *(_DWORD *)(v1 + 8) = v3;
    this = _GetTime();
    *(double *)(v1 + 16) = this;
  }
  return LODWORD(this);
}


// ===== 862e70 vox::VoxEngineInternal::RegisterStreamType(vox::StreamInterface * (*)(void *)) =====
int __fastcall vox::VoxEngineInternal::RegisterStreamType(int a1, int a2, int a3)
{
  int v3; // r3
  bool v4; // cc

  v3 = *(_DWORD *)(a1 + 1220);
  v4 = v3 <= 30;
  if ( v3 > 30 )
    v3 = -1;
  else
    a3 = a1 + 4 * v3;
  if ( v4 )
  {
    *(_DWORD *)(a1 + 1220) = v3 + 1;
    *(_DWORD *)(a3 + 1092) = a2;
  }
  return v3;
}


// ===== 862e94 vox::VoxEngineInternal::RegisterDecoderType(vox::DecoderInterface * (*)(void *)) =====
int __fastcall vox::VoxEngineInternal::RegisterDecoderType(int a1, int a2, int a3)
{
  int v3; // r3
  bool v4; // cc

  v3 = *(_DWORD *)(a1 + 1352);
  v4 = v3 <= 30;
  if ( v3 > 30 )
    v3 = -1;
  else
    a3 = v3 + 304;
  if ( v4 )
  {
    *(_DWORD *)(a1 + 1352) = v3 + 1;
    *(_DWORD *)(a1 + 4 * (a3 + 2)) = a2;
  }
  return v3;
}


// ===== 862ebc vox::VoxEngineInternal::UpdateDebugServer(void) =====
void __fastcall vox::VoxEngineInternal::UpdateDebugServer(vox::VoxEngineInternal *this)
{
  ;
}


// ===== 862ec0 vox::VoxEngineInternal::Update3D(void) =====
int __fastcall vox::VoxEngineInternal::Update3D(int this)
{
  int v1; // r3
  int v2; // r4
  int v3; // lr
  int v4; // r7
  int v5; // r12
  int v6; // r6
  int v7; // r5
  int v8; // r3
  _DWORD v9[6]; // [sp+0h] [bp-18h] BYREF

  v1 = *(_DWORD *)(this + 1356);
  v2 = this;
  if ( v1 )
  {
    if ( *(_BYTE *)(this + 1076) )
    {
      this = (*(int (__fastcall **)(_DWORD, _DWORD, int))(*(_DWORD *)v1 + 36))(*(_DWORD *)(this + 1356), 0, this + 1064);
      *(_BYTE *)(v2 + 1076) = 0;
      if ( !*(_BYTE *)(v2 + 1077) )
      {
LABEL_4:
        if ( !*(_BYTE *)(v2 + 1078) )
          goto LABEL_5;
        goto LABEL_12;
      }
    }
    else if ( !*(_BYTE *)(this + 1077) )
    {
      goto LABEL_4;
    }
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v2 + 1356) + 36))(
             *(_DWORD *)(v2 + 1356),
             1,
             v2 + 1068);
    *(_BYTE *)(v2 + 1077) = 0;
    if ( !*(_BYTE *)(v2 + 1078) )
    {
LABEL_5:
      if ( !*(_BYTE *)(v2 + 1079) )
        goto LABEL_6;
      goto LABEL_13;
    }
LABEL_12:
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v2 + 1356) + 36))(
             *(_DWORD *)(v2 + 1356),
             2,
             v2 + 1072);
    *(_BYTE *)(v2 + 1078) = 0;
    if ( !*(_BYTE *)(v2 + 1079) )
    {
LABEL_6:
      if ( !*(_BYTE *)(v2 + 1080) )
        goto LABEL_7;
LABEL_14:
      this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v2 + 1356) + 36))(
               *(_DWORD *)(v2 + 1356),
               4,
               v2 + 1028);
      *(_BYTE *)(v2 + 1080) = 0;
LABEL_7:
      if ( *(_BYTE *)(v2 + 1081) )
      {
        v3 = *(_DWORD *)(v2 + 1040);
        v4 = *(_DWORD *)(v2 + 1056);
        v5 = *(_DWORD *)(v2 + 1052);
        v6 = *(_DWORD *)(v2 + 1048);
        v7 = *(_DWORD *)(v2 + 1060);
        v8 = *(_DWORD *)(v2 + 1356);
        v9[1] = *(_DWORD *)(v2 + 1044);
        v9[4] = v4;
        v9[2] = v6;
        v9[5] = v7;
        v9[0] = v3;
        v9[3] = v5;
        this = (*(int (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)v8 + 36))(v8, 5, v9);
        *(_BYTE *)(v2 + 1081) = 0;
      }
      return this;
    }
LABEL_13:
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v2 + 1356) + 36))(
             *(_DWORD *)(v2 + 1356),
             3,
             v2 + 1016);
    *(_BYTE *)(v2 + 1079) = 0;
    if ( !*(_BYTE *)(v2 + 1080) )
      goto LABEL_7;
    goto LABEL_14;
  }
  return this;
}


// ===== 86308c vox::VoxEngineInternal::UpdateDSP(float) =====
int __fastcall vox::VoxEngineInternal::UpdateDSP(int this, float a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 1356);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v2 + 32))(*(_DWORD *)(this + 1356), LODWORD(a2));
  return this;
}


// ===== 8630b0 vox::VoxEngineInternal::_SetDefault3DParameters(void) =====
void __fastcall vox::VoxEngineInternal::_SetDefault3DParameters(vox::VoxEngineInternal *this)
{
  ;
}


// ===== 8630b4 vox::VoxEngineInternal::SetRoutingVolume(char *,char *,vox::VoxDSPGeneralParameter::BusRoutingType,float,float,float) =====
void vox::VoxEngineInternal::SetRoutingVolume()
{
  ;
}


// ===== 8630b8 vox::VoxEngineInternal::GetOutputMode(void) =====
int __fastcall vox::VoxEngineInternal::GetOutputMode(vox::VoxEngineInternal *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 339);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 60))(*((_DWORD *)this + 339));
  else
    return -1;
}


// ===== 8630e4 vox::VoxEngineInternal::SetOutputMode(vox::VoxOutputMode) =====
int __fastcall vox::VoxEngineInternal::SetOutputMode(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 1356);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 56))(*(_DWORD *)(a1 + 1356));
  else
    return 0;
}


// ===== 863110 vox::Handle::operator==(vox::Handle const&) =====
bool __fastcall vox::Handle::operator==(int a1, int a2)
{
  return *(_DWORD *)(a1 + 8) == *(_DWORD *)(a2 + 8) && *(_DWORD *)(a1 + 12) == *(_DWORD *)(a2 + 12);
}


// ===== 863144 vox::HandlableContainer::Find(long long) =====
int __fastcall vox::HandlableContainer::Find(vox::HandlableContainer *this, __int64 a2)
{
  vox::HandlableContainer *v3; // r1
  vox::HandlableContainer *v4; // r4
  vox::HandlableContainer *v5; // r12

  v3 = *((vox::HandlableContainer **)this + 1);
  if ( !v3 )
  {
LABEL_9:
    v3 = this;
    goto LABEL_10;
  }
  v4 = this;
  while ( *((_QWORD *)v3 + 2) >= a2 )
  {
    v5 = *((vox::HandlableContainer **)v3 + 2);
    v4 = v3;
    if ( !v5 )
      goto LABEL_7;
LABEL_4:
    v3 = v5;
  }
  v5 = *((vox::HandlableContainer **)v3 + 3);
  v3 = v4;
  if ( v5 )
    goto LABEL_4;
LABEL_7:
  if ( this == v3 )
    return 0;
  if ( *((_QWORD *)v3 + 2) > a2 )
    goto LABEL_9;
LABEL_10:
  if ( this == v3 )
    return 0;
  else
    return *((_DWORD *)v3 + 6);
}


// ===== 8631e8 vox::HandlableContainer::GetFreeHandleId(void) =====
__int64 __fastcall vox::HandlableContainer::GetFreeHandleId(vox::HandlableContainer *this)
{
  __int64 v1; // r2

  v1 = *((_QWORD *)this + 3);
  *((_QWORD *)this + 3) = v1 + 1;
  return v1;
}


// ===== 863214 vox::HandlableContainer::begin(void) =====
_DWORD *__fastcall vox::HandlableContainer::begin(_DWORD *this, int a2)
{
  *this = *(_DWORD *)(a2 + 8);
  return this;
}


// ===== 863220 vox::HandlableContainer::end(void) =====
_DWORD *__fastcall vox::HandlableContainer::end(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}


// ===== 863228 vox::EmitterObj::ProcessNonNativeData(float) =====
int __fastcall vox::EmitterObj::ProcessNonNativeData(vox::EmitterObj *this, float a2)
{
  int result; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r2
  int v8; // r1
  int v9; // r0

  result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 68) + 36))(*((_DWORD *)this + 68), LODWORD(a2));
  if ( result )
  {
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 24))(*((_DWORD *)this + 69));
    if ( result )
    {
      v4 = *((_DWORD *)this + 64);
      v5 = *((_DWORD *)this + 61);
      v6 = *(_DWORD *)(v5 + 4 * v4);
      v7 = v5 + 4 * v4;
      if ( !v6 )
      {
        result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 52))(*((_DWORD *)this + 69));
        if ( !result )
        {
          *((_DWORD *)this + 37) = -1;
          return result;
        }
        v7 = *((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64);
      }
      result = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 69) + 20))(
                 *((_DWORD *)this + 69),
                 v7,
                 *((_DWORD *)this + 66));
      if ( result > 0 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 68) + 40))(
          *((_DWORD *)this + 68),
          *(_DWORD *)(*((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64)),
          result);
        v8 = *((_DWORD *)this + 65);
        v9 = *((_DWORD *)this + 64) + 1;
        *((_DWORD *)this + 64) = v9;
        *((_DWORD *)this + 64) = v9 % v8;
        return v9 / v8;
      }
    }
  }
  return result;
}


// ===== 863318 vox::EmitterObj::Update3D(void) =====
int __fastcall vox::EmitterObj::Update3D(int this)
{
  int v1; // r4

  v1 = this;
  if ( *(_BYTE *)(this + 224) )
  {
    this = (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(this + 272) + 60))(
             *(_DWORD *)(this + 272),
             0,
             this + 192);
    *(_BYTE *)(v1 + 224) = 0;
  }
  if ( *(_BYTE *)(v1 + 225) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 1, v1 + 196);
    *(_BYTE *)(v1 + 225) = 0;
  }
  if ( *(_BYTE *)(v1 + 226) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 2, v1 + 200);
    *(_BYTE *)(v1 + 226) = 0;
  }
  if ( *(_BYTE *)(v1 + 227) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 3, v1 + 204);
    *(_BYTE *)(v1 + 227) = 0;
  }
  if ( *(_BYTE *)(v1 + 228) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 4, v1 + 208);
    *(_BYTE *)(v1 + 228) = 0;
  }
  if ( *(_BYTE *)(v1 + 229) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 5, v1 + 212);
    *(_BYTE *)(v1 + 229) = 0;
  }
  if ( *(_BYTE *)(v1 + 230) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 6, v1 + 216);
    *(_BYTE *)(v1 + 230) = 0;
  }
  if ( *(_BYTE *)(v1 + 232) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 8, v1 + 156);
    *(_BYTE *)(v1 + 232) = 0;
  }
  if ( *(_BYTE *)(v1 + 233) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 9, v1 + 180);
    *(_BYTE *)(v1 + 233) = 0;
  }
  if ( *(_BYTE *)(v1 + 234) )
  {
    this = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 272) + 60))(*(_DWORD *)(v1 + 272), 10, v1 + 168);
    *(_BYTE *)(v1 + 234) = 0;
  }
  return this;
}


// ===== 863528 vox::EmitterObj::SetGainModifier(float) =====
int __fastcall vox::EmitterObj::SetGainModifier(int this, float a2)
{
  *(float *)(this + 68) = a2;
  return this;
}


// ===== 863530 vox::EmitterObj::IsReady(void) =====
int __fastcall vox::EmitterObj::IsReady(vox::EmitterObj *this)
{
  return *((unsigned __int8 *)this + 28) ^ 1;
}


// ===== 86353c vox::EmitterObj::_IsDone(void) =====
bool __fastcall vox::EmitterObj::_IsDone(vox::EmitterObj *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 36);
  if ( v1 == 3 )
    return *((_DWORD *)this + 37) == 3;
  if ( v1 )
    return 0;
  return *((_DWORD *)this + 37) == 0;
}


// ===== 863578 vox::PriorityBankManager::_CanAddEmitter(int,int) =====
int __fastcall vox::PriorityBankManager::_CanAddEmitter(vox::PriorityBankManager *this, unsigned int a2, int a3)
{
  unsigned int v3; // r3
  int v4; // r1
  int v5; // r0
  int v6; // r12
  _DWORD *v7; // r1
  int v8; // r12
  int v9; // r0
  int v10; // r1

  v3 = (*(_DWORD *)this <= (int)a2) | (a2 >> 31);
  if ( v3 )
    return 0;
  v4 = 24 * a2;
  v5 = *((_DWORD *)this + 1);
  v6 = *(_DWORD *)(v5 + v4);
  v7 = (_DWORD *)(v5 + v4);
  if ( v6 > a3 )
    return 0;
  v8 = v7[3];
  v9 = (v7[4] - v8) >> 3;
  if ( v7[1] <= v9 )
  {
    v10 = v7[2];
    if ( v10 == 1 )
    {
      if ( v9 <= 0 )
        return 0;
      if ( a3 <= *(_DWORD *)(v8 + 4) )
      {
        while ( ++v3 != v9 )
        {
          if ( a3 > *(_DWORD *)(v8 + 8 * v3 + 4) )
            return 1;
        }
        return 0;
      }
    }
    else if ( v10 == 2 )
    {
      if ( v9 <= 0 )
        return 0;
      if ( a3 < *(_DWORD *)(v8 + 4) )
      {
        while ( ++v3 != v9 )
        {
          if ( a3 >= *(_DWORD *)(v8 + 8 * v3 + 4) )
            return 1;
        }
        return 0;
      }
    }
    else if ( v10 )
    {
      return 0;
    }
  }
  return 1;
}


// ===== 86366c Destruct<vox::StreamInterface>(vox::StreamInterface *) =====
int __fastcall Destruct<vox::StreamInterface>(int (__fastcall ***a1)(_DWORD))
{
  return (**a1)(a1);
}


// ===== 863680 std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::erase(vox::PriorityBankElement*) =====
_DWORD *__fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::erase(
        int a1,
        _DWORD *a2)
{
  char *v2; // r3
  int v3; // r12
  _DWORD *v4; // r3
  int v5; // r4

  v2 = *(char **)(a1 + 4);
  if ( a2 + 2 != (_DWORD *)v2 )
  {
    v3 = (v2 - (char *)(a2 + 2)) >> 3;
    if ( v3 > 0 )
    {
      v4 = a2;
      do
      {
        v5 = v4[3];
        --v3;
        *v4 = v4[2];
        v4[1] = v5;
        v4 += 2;
      }
      while ( v3 );
      v2 = *(char **)(a1 + 4);
    }
  }
  *(_DWORD *)(a1 + 4) = v2 - 8;
  return a2;
}


// ===== 8636e0 vox::Handlable::~Handlable() =====
void __fastcall vox::Handlable::~Handlable(vox::Handlable *this)
{
  *(_DWORD *)this = off_9934D8;
  vox::Mutex::~Mutex((vox::Handlable *)((char *)this + 24));
}


// ===== 863714 vox::VoxCallbackManager::SendAll(void) =====
vox::VoxCallbackManager *__fastcall vox::VoxCallbackManager::SendAll(vox::VoxCallbackManager *this)
{
  vox::VoxCallbackManager *result; // r0
  vox::VoxCallbackManager *v3; // r3
  _DWORD *v4; // r2
  int v5; // r3
  void *v6; // r5

  result = *(vox::VoxCallbackManager **)this;
  if ( result != this )
  {
    do
    {
      v3 = result;
      do
        v3 = *(vox::VoxCallbackManager **)v3;
      while ( this != v3 );
      v4 = *((_DWORD **)result + 1);
      v5 = *(_DWORD *)result;
      v6 = *((void **)result + 2);
      *v4 = *(_DWORD *)result;
      *(_DWORD *)(v5 + 4) = v4;
      VoxFree(result);
      (*(void (__fastcall **)(void *))(*(_DWORD *)v6 + 8))(v6);
      (**(void (__fastcall ***)(void *))v6)(v6);
      VoxFree(v6);
      result = *(vox::VoxCallbackManager **)this;
    }
    while ( *(vox::VoxCallbackManager **)this != this );
  }
  return result;
}

